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

//#include "delay.h"
#include "clock_config.h"
//#include "led.h"
//#include "interrupt.h"
#include "stm32f4xx.h"
#include "uart.h"
//#include "pwm.h"
#include <stdio.h>

/* Function prototypes for watchdog-related functions */
//void maximize_watchdog_timeout(void);
//void service_watchdog(void);
//void disable_watchdog(void);
//int was_watchdog_reset(void);

extern int calculate_mod_product(int param1, int param2, int param3);
extern int global_var;

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
    _uart_tx_init();
    char buffer[30];
    // Create a nice UI display for the result
    print_string("+=============================================+\n\r");
    print_string("|         MODULO PRODUCT CALCULATOR          |\n\r");
    print_string("+=============================================+\n\r");
    print_string("| Operation: (param2 * param3) % param1             |\n\r");
    print_string("+---------------------------------------------+\n\r");

    // Calculate and display result
    int result = calculate_mod_product(5, 6, 7);

    print_string("| Result:                                    |\n\r");
    sprintf(buffer, "| >> %d  \n\r", result);
    print_string(buffer);
    print_string("\n\r");
    print_string("| Global variable :                                    |\n\r");
    sprintf(buffer, "| >> %d  \n\r", global_var);
    print_string(buffer);
    print_string("+===============================================+\n\r");



    return 0;
}

///**
// * @brief Configure watchdog timer with maximum timeout
// * Sets prescaler to maximum (256) and reload value to maximum (4095)
// */
//void maximize_watchdog_timeout()
//{
//    // Check if the system has been reset by the watchdog
//    if (RCC->CSR & RCC_CSR_IWDGRSTF)
//    {
//        // Clear the reset flags
//        RCC->CSR |= RCC_CSR_RMVF;
//    }
//
//    // Watchdog can't be fully disabled if it's enabled in hardware
//    // We'll set it to its maximum timeout
//    IWDG->KR = 0x5555;    // Enable write access to IWDG_PR and IWDG_RLR
//    IWDG->PR = 7;         // Set prescaler to maximum (256)
//    IWDG->RLR = 0xFFF;    // Set reload value to maximum (4095)
//    IWDG->KR = 0xAAAA;    // Reload the watchdog
//    IWDG->KR = 0xCCCC;    // Start the watchdog
//}
//
///**
// * @brief Service the watchdog timer
// * Must be called periodically to prevent system reset
// */
//void service_watchdog()
//{
//    IWDG->KR = 0xAAAA;    // Reload the watchdog
//}
//
///**
// * @brief Attempt to disable watchdog timer
// * Note: Only works if watchdog is not enabled in hardware option bytes
// */
//void disable_watchdog()
//{
//    // Unfortunately, if IWDG is started by hardware, it cannot be disabled by software
//    // The following code attempts to disable it, but will only work if it's not hardware-enabled
//
//    // Disable IWDG by stopping the LSI oscillator
//    RCC->CSR &= ~RCC_CSR_LSION;
//
//    // Wait for LSI to stop
//    while(RCC->CSR & RCC_CSR_LSIRDY);
//    // Note: If IWDG is hardware-enabled, this won't stop it and may cause issues
//}
//
///**
// * @brief Check if watchdog caused the last reset
// * @return 1 if watchdog reset occurred, 0 otherwise
// */
//int was_watchdog_reset()
//{
//    if (RCC->CSR & RCC_CSR_IWDGRSTF)
//    {
//        // Clear the reset flags
//        RCC->CSR |= RCC_CSR_RMVF;
//        return 1;    // Watchdog reset occurred
//    }
//    return 0;    // No watchdog reset
//}
