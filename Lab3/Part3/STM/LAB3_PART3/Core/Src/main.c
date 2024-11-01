/**
 * @file main.c
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Main program for ESD Lab 2 Part 2
 *
 * This file contains the main program logic for the embedded system,
 * including watchdog timer configuration, LED control, and interrupt handling.
 */

/* Includes ------------------------------------------------------------------*/
#include "delay.h"
#include "clock_config.h"
#include "led.h"
#include "interrupt.h"
#include "stm32f4xx.h"
#include "uart.h"
#include "pwm.h"
#include <stdio.h>

// Function prototypes for watchdog-related functions
void maximize_watchdog_timeout(void);
void service_watchdog(void);
void disable_watchdog(void);
int was_watchdog_reset(void);

volatile int timer_interrupt_occurred = 0;
volatile int led_toggling_enabled = 1;  // Start with toggling enabled
volatile char recieved_command;
volatile int button_interrupt_flag = 0;
volatile int usart2_interrupt_flag = 0;
/**
 * @brief Timer 3 Interrupt Handler
 *
 * This function is called when Timer 3 generates an update interrupt.
 * It sets a flag to indicate that the timer interrupt has occurred.
 */
//void TIM3_IRQHandler(void) {
//    if (TIM3->SR & TIM_SR_UIF) {
//        TIM3->SR &= ~TIM_SR_UIF;  // Clear the update interrupt flag
//        timer_interrupt_occurred = 1;
//    }
//}

/**
 * @brief EXTI Line 0 Interrupt Handler
 *
 * This function is called when an external interrupt occurs on line 0.
 * It toggles the LED toggling state and provides visual feedback.
 */
void EXTI0_IRQHandler(void) {
    if (EXTI->PR & (1<<0)) {
        EXTI->PR |= (1<<0);  // Clear the interrupt flag
//        DUTY_CYCLE = DUTY_CYCLE + 17;
        bled_on();
        button_interrupt_flag = 1;

    }
}


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
/**
 * @brief Main function
 *
 * This is the entry point of the program. It initializes the system,
 * configures peripherals, and contains the main application loop.
 *
 * @return int This function should never return
 */
int main(void)
{

    clock_config();
    PWM_init();
    led_init();
//    TIM3Config();
    PushButoon_ISR_Config();
	_uart_tx_init();
//	char a = 'a';
//	putchar(a);
//   int hundreds = DUTY_CYCLE / 100;
//   int tens = (DUTY_CYCLE / 10) % 10;
//   int units = DUTY_CYCLE % 10;


    while(1)
    {

        pwm_timer_execution();


        if(button_interrupt_flag)
        {
        	 DUTY_CYCLE = DUTY_CYCLE + DUTY_CYCLE*0.1;
        	 bled_on();
        	 for(int i = 0; i<1000000; i++){}
        	 bled_off();
        	 button_interrupt_flag = 0;
        }
        if(usart2_interrupt_flag)
        {
    		gled_on();
    		for(int i = 0; i<1000000; i++){}
    		gled_off();
        	usart2_interrupt_flag = 0;
        	if(recieved_command == 'P')
        	{
        		//print DUTY_CYCLE
        	    // Convert each digit to its ASCII character and print with putchar
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
        		DUTY_CYCLE = DUTY_CYCLE + DUTY_CYCLE*0.05;
        		if(DUTY_CYCLE >= 255) DUTY_CYCLE = 12;
        	    if(DUTY_CYCLE <= 0) DUTY_CYCLE = 12;
        	}
        	if(recieved_command == 'B')
        	{
        		DUTY_CYCLE = DUTY_CYCLE - DUTY_CYCLE*0.05;
        		if(DUTY_CYCLE >= 255) DUTY_CYCLE = 12;
        	    if(DUTY_CYCLE <= 0) DUTY_CYCLE = 12;
        	}
        }
    }




    return 0;
}

// Watchdog-related function implementations...
// (maximize_watchdog_timeout, service_watchdog, disable_watchdog, was_watchdog_reset)

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

	IWDG->KR = 0x5555; // Enable write access to IWDG_PR and IWDG_RLR

	IWDG->PR = 7; // Set prescaler to maximum (256)

	IWDG->RLR = 0xFFF; // Set reload value to maximum (4095)

	IWDG->KR = 0xAAAA; // Reload the watchdog

	IWDG->KR = 0xCCCC; // Start the watchdog

}

// 2. Servicing the Watchdog Timer

// Call this periodically in your main loop or a timer interrupt

void service_watchdog()
{

	IWDG->KR = 0xAAAA; // Reload the watchdog

}

// 3. Completely Disabling Watchdog (if possible)

// Note: This only works if the watchdog is not enabled in hardware option bytes

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

// 4. Checking if Watchdog caused the reset

// Call this in your initialization to check if watchdog triggered a reset

int was_watchdog_reset() {

	if (RCC->CSR & RCC_CSR_IWDGRSTF)
	{

	// Clear the reset flags

	RCC->CSR |= RCC_CSR_RMVF;

	return 1; // Watchdog reset occurred

	}

	return 0; // No watchdog reset

}
