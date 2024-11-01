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

void refresh_wdt();

void main(void)
{
    printf("WATCHDOG TIMER MODE\n\r");
    // Configure PCA to act as a Watchdog Timer with interrupt
    CMOD |= 0x42;       // PCA counter is clocked by Fosc/6, enable watchdog mode

    CCAPM4 = 0x4C;      // Enable WDT mode and interrupt for PCA Module 4
    CCAP4L = 0xFF;      // Set low byte of compare/capture register
    CCAP4H = 0xFF;      // Set high byte of compare/capture register

    // Enable PCA interrupt
    EA = 1;             // Enable global interrupts
    EC = 1;             // Enable PCA interrupt

    while (1)
    {
        // Simulated work
        printf("- - - - ");
        for (int i = 0; i < 10000; i++) {}

        //refresh_wdt();  // Reset the watchdog timer periodically

        // If refresh_wdt is not called within the timeout, WDT will trigger an interrupt
    }
}

// Function to reset the WDT
void refresh_wdt()
{
    // Reset PCA WDT by writing 0 to CCAP4L and CCAP4H
    CCAP4L = 0x00;
    CCAP4H = 0x00;
}

// PCA ISR to handle WDT timeout
void PCA_ISR(void) __interrupt 6
{
    if (CCF4) {           // Check if the interrupt is from Module 4 (WDT)
        CCF4 = 0;         // Clear the interrupt flag for Module 4

        // Optional: Indicate WDT interrupt occurrence (e.g., toggle an LED or reset a flag)

        // Reset PCA WDT if desired (or let it reset the system)
        CCAP4L = 0x00;
        CCAP4H = 0x00;
        printf("WATCHDOG TRIGGERED\n\r");
    }
}
