//writing code to only transmit data using USART2 of stm32446RE
#include "uart.h"
#include "stm32f4xx.h"

#include <stdint.h>

#define GPIOAEN (1U<<0)
#define UART2EN (1U<<17)

#define SYS_FREQ 38400000
#define APB1_CLK SYS_FREQ
#define UART_BAUDRATE 9600

#define CR1_TE (1<<3)
#define UARTEN (1<<13)

static uint16_t _compute_uart_bd(uint32_t periph_clk, uint32_t baudrate);
static void uart_set_baudrate(uint32_t periph_clk, uint32_t baudrate);
static void uart_write(int ch);

int putchar(int ch)
{
	uart_write(ch);
	return ch;
}

int getchar()
{
	int recieved = uart_read();
	return recieved;
}

void _uart_tx_init(void)
{
	/*Enable clock access for PORT A because USART2 pins are in PORT A DS_pg_16*/
	RCC -> AHB1ENR |= GPIOAEN;	//setting bit 1 of register RCC_AHB1ENR as high (RM_pg_144)

	/*Set PA2 (USART2_Tx) as alternate function mode (Direction Register)*/
	GPIOA -> MODER |= (1U<<5);
	GPIOA -> MODER &= ~(1U<<4);

	/*Set PA3 (USART2_Rx) as alternate function mode (Direction Register)*/
	GPIOA -> MODER |= (1U<<7);
	GPIOA -> MODER &= ~(1U<<6);

	/*Define af as AF07 DS_pg_48*/
	GPIOA -> AFR[0] |= (1U << 8);
	GPIOA -> AFR[0] |= (1U << 9);
	GPIOA -> AFR[0] |= (1U << 10);
	GPIOA -> AFR[0] &= ~(1U << 11);		//GPIOX_AFRL register RM_pg_191, setting AF7 = 0111
	//for pin PA3
	GPIOA -> AFR[0] |= (1U << 12);
	GPIOA -> AFR[0] |= (1U << 13);
	GPIOA -> AFR[0] |= (1U << 14);
	GPIOA -> AFR[0] &= ~(1U << 15);		//GPIOX_AFRL register RM_pg_191, setting AF7 = 0111


	/*Enable clock access to USART2 (APB1 bus)*/
	RCC -> APB1ENR |= UART2EN;

	/*Configure baud rate*/
	uart_set_baudrate(APB1_CLK, UART_BAUDRATE);
	//USART2->BRR = 0x0FA0;

	/*Enable UART module*/
	USART2 -> CR1 = 0;
	USART2 -> CR1 |= USART_CR1_UE;

	/*Enable USART Tx and Rx*/
	USART2->CR1 |= USART_CR1_TE | USART_CR1_RE;

	/*Enable USART2 interrupts for Tx and Rx both*/
	USART2 -> CR1 |= USART_CR1_RXNEIE;

	/*Configure PA2 and PA3 as external interrupts */
	//SYSCFG -> EXTICR[0] |= SYSCFG_EXTICR1_EXTI2_PA | SYSCFG_EXTICR1_EXTI3_PA;

	/*Enable Interrupt for PA2(tx) and PA3(rx) */
//	EXTI -> IMR |= EXTI_IMR_MR2 | EXTI_IMR_MR3;
//	EXTI -> EMR |= EXTI_EMR_MR2 | EXTI_EMR_MR3;

    NVIC_SetPriority(USART2_IRQn, 3);  // Lower priority than button
    NVIC_ClearPendingIRQ(USART2_IRQn);
	NVIC_EnableIRQ(USART2_IRQn);




}


static void uart_write(int ch) {

    /* Wait until the transmit data register is empty (TXE = 1) */
    while ((USART2->SR & USART_SR_TXE) == 0) {}

    /* Write the character to the data register to begin transmission */
    USART2->DR = (ch & 0xFF);  // Mask to 8 bits in case ch > 255
}

int uart_read(void)
{
    // Wait until RXNE is set (meaning data is ready to be read)
    while (!(USART2->SR & USART_SR_RXNE)) {}

    // Read the received character from the DR register
    return USART2->DR & 0xFF;
}


static uint16_t _compute_uart_bd(uint32_t periph_clk, uint32_t baudrate)
{
	return ((periph_clk + (baudrate/2U))/baudrate);
	  //return (periph_clk / baudrate);
}

static void uart_set_baudrate(uint32_t periph_clk, uint32_t baudrate)
{
	USART2 -> BRR = _compute_uart_bd(periph_clk, baudrate);
}







