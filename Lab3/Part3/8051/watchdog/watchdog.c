#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdio.h>
/*
* This function send a character via UART
*/
int putchar(int charToSend) {
    SBUF = charToSend;  // Send character to serial buffer
    while (!TI);        // Wait for transmission to complete
    TI = 0;            // Clear transmission interrupt flag
    return charToSend;
}

/*
* This function receives a character via UART
*/

int getchar(void)
{
    while (!RI);        // Wait for reception to complete
    RI = 0;            // Clear reception interrupt flag
    return SBUF;       // Return received character
}
/**
 * @file pca_watchdog.c
 * @brief Watchdog Timer Implementation using PCA
 *
 * Implements watchdog functionality using PCA with interrupt handling
 * for system reset
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */

/**
 * @file pca_watchdog.c
 * @brief Watchdog Timer Implementation with System Reset
 *
 * Demonstrates watchdog reset functionality using PCA timer.
 * Main program enters infinite loop, watchdog ISR triggers
 * system reset if timer overflows.
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */



/* PCA Configuration */
#define PCA_WDT_ENABLE    0x40    // Enable PCA
#define PCA_WDTE         0x40    // Enable WDT
#define SYSCLK_DIV_4     0x82    // System clock/4
#define WDT_TIMEOUT      0xFF    // Watchdog timeout value

/**
 * @brief Initialize PCA watchdog timer
 */
void wdt_init(void)
{
    printf("Initializing Watchdog Timer...\n\r");

    // Configure PCA for watchdog operation
    CH = 0;
    CL = 0;
    CMOD = SYSCLK_DIV_4;        // Set clock source as Sysclk/4
    CCON = PCA_WDT_ENABLE;      // Enable PCA module

    // Enable PCA interrupt
    EA = 1;                     // Global interrupt enable
    EC = 1;                     // PCA interrupt enable

    // Configure and enable watchdog
    WDTRST = WDT_TIMEOUT;       // Set timeout period
    CMOD |= PCA_WDTE;          // Enable watchdog

    printf("Watchdog Timer Initialized\n\r");
}

/**
 * @brief PCA Interrupt Service Routine
 * Handles watchdog timeout by triggering system reset
 */
void pca_isr(void) __interrupt(6)
{
    if (CF)              // PCA overflow - watchdog timeout
    {
        printf("Watchdog Timer Overflow! Resetting System...\n\r");

        // Add some delay to allow UART to send message
        for(int i = 0; i < 1000; i++);

        // Force system reset by entering infinite loop
        // This will cause the watchdog to reset the system
        while(1);
    }

    CF = 0;              // Clear overflow flag
}

/**
 * @brief Main program
 */
void main(void)
{


    printf("Starting Watchdog Demo...\n\r");

    // Initialize watchdog
    wdt_init();

    printf("Entering infinite loop...\n\r");

    // Enter infinite loop - will trigger watchdog reset
    while(1)
    {
        // Infinite loop without feeding the watchdog
        // This will cause watchdog timeout
    }
}


