/**
 * @file main.c
 * @brief ESD LAB 3 PART 3 - Main Program Implementation
 *
 * Main program implementing PWM control, UART, button interrupts,
 * and watchdog timer functionality
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */

#include "delay.h"
#include "clock_config.h"
#include "led.h"
#include "interrupt.h"
#include "stm32f4xx.h"
#include "uart.h"
#include "pwm.h"
#include <stdio.h>

/* Function prototypes for watchdog-related functions */
void maximize_watchdog_timeout(void);
void service_watchdog(void);
void disable_watchdog(void);
int was_watchdog_reset(void);

/* State Variables */
volatile int timer_interrupt_occurred = 0;
volatile int led_toggling_enabled = 1;  // Start with toggling enabled
volatile char recieved_command;
volatile int button_interrupt_flag = 0;
volatile int usart2_interrupt_flag = 0;

/**
 * @brief EXTI Line 0 Interrupt Handler for button press
 */
void EXTI0_IRQHandler(void) {
    if (EXTI->PR & (1<<0)) {
        EXTI->PR |= (1<<0);  // Clear the interrupt flag
        bled_on();
        button_interrupt_flag = 1;
    }
}

/**
 * @brief USART2 Interrupt Handler for UART communications
 */
void USART2_IRQHandler(void)
{
    if(USART2 -> SR & USART_SR_RXNE)
    {
        char recieved = getchar();
        recieved_command = recieved;
        putchar(recieved);
        usart2_interrupt_flag = 1;
        gled_on();
    }
}

void print_string(const char *ch) {
    while (*ch) {
        while (!(USART2->SR & USART_SR_TXE)) {
            // Wait until TXE (Transmit Data Register Empty) flag is set
        }
        USART2->DR = *ch++; // Transmit character
    }
}

/**
 * @brief Main program entry
 */
int main(void)
{
    /* Initialize all peripherals */
    clock_config();
    PWM_init();
    led_init();
    PushButoon_ISR_Config();
    _uart_tx_init();

     print_string("\r\n**** STM32 PWM UART MODES ****\r\n");
     print_string("---------------------------\r\n");
     print_string("Current Settings:\r\n");
     print_string("- Initial duty cycle: 153 (60% of 255)\r\n");
     print_string("- Maximum duty cycle: 255 (100%)\r\n");
     print_string("\r\nControl Commands:\r\n");
     print_string("P: Print current duty cycle\r\n");
     print_string("A: Increase duty cycle by 5%\r\n");
     print_string("B: Decrease duty cycle by 5%\r\n");
     print_string("\r\nHardware Control:\r\n");
     print_string("Button Press: Increase duty cycle by 10%\r\n");
     print_string("---------------------------\r\n");

    while(1)
    {
        pwm_timer_execution();

        /* Handle button press interrupt */
        if(button_interrupt_flag)
        {
            DUTY_CYCLE = DUTY_CYCLE + DUTY_CYCLE*0.1;  // Increase duty cycle by 10%
            bled_on();
            for(int i = 0; i<1000000; i++){} // Delay
            bled_off();
            button_interrupt_flag = 0;
        }

        /* Handle UART command interrupt */
        if(usart2_interrupt_flag)
        {
            gled_on();
            for(int i = 0; i<1000000; i++){} // Delay
            gled_off();
            usart2_interrupt_flag = 0;
            if(recieved_command == 'P')
            {
                // Print current duty cycle value
                putchar('Z');
                putchar('\r');
                putchar('\n');
                putchar(DUTY_CYCLE/100 + '0');
                putchar((DUTY_CYCLE/10)%10 + '0');
                putchar(DUTY_CYCLE%10 + '0');
                putchar('\r');
                putchar('\n');
            }
            if(recieved_command == 'A')
            {
                // Increase duty cycle by 5%
                DUTY_CYCLE = DUTY_CYCLE + DUTY_CYCLE*0.05;
                if(DUTY_CYCLE >= 255) DUTY_CYCLE = 12;
                if(DUTY_CYCLE <= 0) DUTY_CYCLE = 12;
            }
            if(recieved_command == 'B')
            {
                // Decrease duty cycle by 5%
                DUTY_CYCLE = DUTY_CYCLE - DUTY_CYCLE*0.05;
                if(DUTY_CYCLE >= 255) DUTY_CYCLE = 12;
                if(DUTY_CYCLE <= 0) DUTY_CYCLE = 12;
            }
        }
    }
    return 0;
}

/**
 * @brief Configure watchdog timer with maximum timeout
 * Sets prescaler to maximum (256) and reload value to maximum (4095)
 */
void maximize_watchdog_timeout()
{
    // Check if the system has been reset by the watchdog
    if (RCC->CSR & RCC_CSR_IWDGRSTF)
    {
        // Clear the reset flags
        RCC->CSR |= RCC_CSR_RMVF;
    }

    // Watchdog can't be fully disabled if it's enabled in hardware
    // We'll set it to its maximum timeout
    IWDG->KR = 0x5555;    // Enable write access to IWDG_PR and IWDG_RLR
    IWDG->PR = 7;         // Set prescaler to maximum (256)
    IWDG->RLR = 0xFFF;    // Set reload value to maximum (4095)
    IWDG->KR = 0xAAAA;    // Reload the watchdog
    IWDG->KR = 0xCCCC;    // Start the watchdog
}

/**
 * @brief Service the watchdog timer
 * Must be called periodically to prevent system reset
 */
void service_watchdog()
{
    IWDG->KR = 0xAAAA;    // Reload the watchdog
}

/**
 * @brief Attempt to disable watchdog timer
 * Note: Only works if watchdog is not enabled in hardware option bytes
 */
void disable_watchdog()
{
    // Unfortunately, if IWDG is started by hardware, it cannot be disabled by software
    // The following code attempts to disable it, but will only work if it's not hardware-enabled

    // Disable IWDG by stopping the LSI oscillator
    RCC->CSR &= ~RCC_CSR_LSION;

    // Wait for LSI to stop
    while(RCC->CSR & RCC_CSR_LSIRDY);
    // Note: If IWDG is hardware-enabled, this won't stop it and may cause issues
}

/**
 * @brief Check if watchdog caused the last reset
 * @return 1 if watchdog reset occurred, 0 otherwise
 */
int was_watchdog_reset()
{
    if (RCC->CSR & RCC_CSR_IWDGRSTF)
    {
        // Clear the reset flags
        RCC->CSR |= RCC_CSR_RMVF;
        return 1;    // Watchdog reset occurred
    }
    return 0;    // No watchdog reset
}
