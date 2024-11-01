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



/* PCA Configuration Constants */
#define PCA_WDT_ENABLE    0x40    // Enable bit for PCA WDT
#define PCA_INT_ENABLE    0x02    // Enable PCA interrupt
#define PCA_WDTE         0x40    // PCA watchdog timer enable
#define SYSCLK_DIV_12    0x00    // System clock/12
#define SYSCLK_DIV_4     0x82    // System clock/4
#define WDT_TIMEOUT      0xFF    // Watchdog timeout value

/* Function Prototypes */
void wdt_init(void);
void wdt_feed(void);
void wdt_disable(void);

/**
 * @brief Initialize PCA watchdog timer
 * Configures PCA for watchdog operation with interrupt
 */
void wdt_init(void)
{
    // Clear PCA counter
    CH = 0;
    CL = 0;

    // Configure PCA module
    CMOD = SYSCLK_DIV_4;     // Set PCA clock source as Sysclk/4

    // Enable watchdog and configure for interrupt mode
    CCON = PCA_WDT_ENABLE;   // Enable PCA module

    // Enable interrupts
    EA = 1;                  // Enable global interrupts
    EC = 1;                  // Enable PCA interrupt

    // Enable watchdog timer
    WDTRST = WDT_TIMEOUT;    // Set watchdog timeout period
    CMOD |= PCA_WDTE;        // Enable watchdog timer
}

/**
 * @brief Feed/Service the watchdog timer
 * Resets the watchdog timer to prevent system reset
 */
void wdt_feed(void)
{
    // Clear watchdog by toggling CR
    CR = !CR;
}

/**
 * @brief Disable watchdog timer
 */
void wdt_disable(void)
{
    CMOD &= ~PCA_WDTE;       // Disable watchdog timer
}

/**
 * @brief PCA Interrupt Service Routine
 * Handles watchdog timer overflow
 */
void pca_isr(void) __interrupt(6)
{
    if (CF)                  // Check for PCA overflow
    {
        CF = 0;              // Clear overflow flag
        printf("WATCHDOG\n\r");
    }

    if (CCF0)               // Check module 0 interrupt
    {
        CCF0 = 0;           // Clear module 0 interrupt flag
        printf("CCF\n\r");
    }
}

// Example usage in main program:

void main(void)
{
    wdt_init();             // Initialize watchdog

    while(1)
    {
        // Your main program code

        wdt_feed();         // Feed watchdog periodically
        printf("- - -");
        for(int i = 0; i<10000; i++){}

        // If watchdog is not fed in time,
        // pca_isr will be called
    }
}


