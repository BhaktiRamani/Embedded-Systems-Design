/**
 * @file uart.c
 * @brief ESD LAB 3 PART 3 - UART Configuration and Implementation
 *
 * UART2 implementation for STM32F446RE using PA2 (TX) and PA3 (RX)
 * Configured for 9600 baud rate with interrupt capabilities
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */

#include "uart.h"
#include "stm32f4xx.h"
#include <stdint.h>
/* GPIO Mode definitions */
#define GPIO_MODE_MASK        3U    /* Mask for clearing mode bits (0b11) */
#define GPIO_MODE_AF          1U    /* Alternate function mode */

/* GPIO Pin positions */
#define GPIO_PIN2_MODE_POS    4U    /* PA2 mode position */
#define GPIO_PIN2_AF_POS      5U    /* PA2 alternate function position */
#define GPIO_PIN3_MODE_POS    6U    /* PA3 mode position */
#define GPIO_PIN3_AF_POS      7U    /* PA3 alternate function position */

/* Alternate Function register bit positions */
#define GPIO_AF_PIN2_BIT0     8U    /* AF bit 0 position for PA2 */
#define GPIO_AF_PIN2_BIT1     9U    /* AF bit 1 position for PA2 */
#define GPIO_AF_PIN2_BIT2     10U   /* AF bit 2 position for PA2 */
#define GPIO_AF_PIN2_BIT3     11U   /* AF bit 3 position for PA2 */
#define GPIO_AF_PIN3_BIT0     12U   /* AF bit 0 position for PA3 */
#define GPIO_AF_PIN3_BIT1     13U   /* AF bit 1 position for PA3 */
#define GPIO_AF_PIN3_BIT2     14U   /* AF bit 2 position for PA3 */
#define GPIO_AF_PIN3_BIT3     15U   /* AF bit 3 position for PA3 */

/* Clock Enable Bits */
#define GPIOAEN         (1U << 0)    // Enable clock for GPIOA
#define UART2EN         (1U << 17)   // Enable clock for UART2

/* UART Configuration */
#define SYS_FREQ        38400000     // System clock frequency
#define APB1_CLK        SYS_FREQ     // APB1 bus clock
#define UART_BAUDRATE   9600         // UART baud rate

/* UART Control Bits */
#define CR1_TE          (1U << 3)    // Transmitter enable
#define UARTEN          (1U << 13)   // UART enable

/* GPIO Pin Configuration */
#define GPIO_PIN2_AF_SHIFT   8       // Shift for AF bits of pin 2
#define GPIO_PIN3_AF_SHIFT   12      // Shift for AF bits of pin 3
#define GPIO_AF_MASK         0xF     // Mask for AF bits

static uint16_t _compute_uart_bd(uint32_t periph_clk, uint32_t baudrate);
static void uart_set_baudrate(uint32_t periph_clk, uint32_t baudrate);
static void uart_write(int ch);

/**
 * @brief Transmit a character over UART
 * @param ch Character to transmit
 * @return Transmitted character
 */
int putchar(int ch)
{
    uart_write(ch);
    return ch;
}

/**
 * @brief Receive a character from UART
 * @return Received character
 */
int getchar(void)
{
    return uart_read();
}

/**
 * @brief Initialize UART2 for transmission and reception
 * Configures PA2 as TX and PA3 as RX with interrupt capability
 */
void _uart_tx_init(void)
{
    /* Enable clock access for GPIOA */
    RCC->AHB1ENR |= GPIOAEN;

    /* Configure PA2 (TX) mode */
    GPIOA->MODER &= ~(GPIO_MODE_MASK << GPIO_PIN2_MODE_POS);    /* Clear mode bits */
    GPIOA->MODER |= (GPIO_MODE_AF << GPIO_PIN2_AF_POS);         /* Set alternate function mode */

    /* Configure PA3 (RX) mode */
    GPIOA->MODER &= ~(GPIO_MODE_MASK << GPIO_PIN3_MODE_POS);    /* Clear mode bits */
    GPIOA->MODER |= (GPIO_MODE_AF << GPIO_PIN3_AF_POS);         /* Set alternate function mode */

    /* Set alternate function 7 (UART2) for PA2 (0b0111) */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN2_BIT0);    /* Set bit 0 */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN2_BIT1);    /* Set bit 1 */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN2_BIT2);    /* Set bit 2 */
    GPIOA->AFR[0] &= ~(1U << GPIO_AF_PIN2_BIT3);   /* Clear bit 3 */

    /* Set alternate function 7 (UART2) for PA3 (0b0111) */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN3_BIT0);    /* Set bit 0 */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN3_BIT1);    /* Set bit 1 */
    GPIOA->AFR[0] |= (1U << GPIO_AF_PIN3_BIT2);    /* Set bit 2 */
    GPIOA->AFR[0] &= ~(1U << GPIO_AF_PIN3_BIT3);   /* Clear bit 3 */
    /* Enable clock access to UART2 */
    RCC->APB1ENR |= UART2EN;

    /* Configure baudrate */
    uart_set_baudrate(APB1_CLK, UART_BAUDRATE);

    /* Configure UART */
    USART2->CR1 = 0;                        // Clear control register
    USART2->CR1 |= USART_CR1_UE;           // Enable UART
    USART2->CR1 |= USART_CR1_TE |          // Enable transmitter
                   USART_CR1_RE;            // Enable receiver
    USART2->CR1 |= USART_CR1_RXNEIE;       // Enable RX interrupt

    /* Configure NVIC for UART2 */
    //NVIC_SetPriority(USART2_IRQn, 3);      // Set lower priority than button
    //NVIC_ClearPendingIRQ(USART2_IRQn);
    NVIC_EnableIRQ(USART2_IRQn);
}

/**
 * @brief Write a character to UART
 * @param ch Character to write
 */
static void uart_write(int ch)
{
    while (!(USART2->SR & USART_SR_TXE)){}    // Wait until TX buffer empty
    USART2->DR = (ch & 0xFF);                 // Write data
}

/**
 * @brief Read a character from UART
 * @return Received character
 */
int uart_read(void)
{
    while (!(USART2->SR & USART_SR_RXNE)){}   // Wait until data ready
    return USART2->DR & 0xFF;                 // Return received data
}

/**
 * @brief Compute UART baudrate value
 * @param periph_clk Peripheral clock frequency
 * @param baudrate Desired baudrate
 * @return Computed baudrate register value
 */
static uint16_t _compute_uart_bd(uint32_t periph_clk, uint32_t baudrate)
{
    return ((periph_clk + (baudrate/2U))/baudrate);
}

/**
 * @brief Set UART baudrate
 * @param periph_clk Peripheral clock frequency
 * @param baudrate Desired baudrate
 */
static void uart_set_baudrate(uint32_t periph_clk, uint32_t baudrate)
{
    USART2->BRR = _compute_uart_bd(periph_clk, baudrate);
}
