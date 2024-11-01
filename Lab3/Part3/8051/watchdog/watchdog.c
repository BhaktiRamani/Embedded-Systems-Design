// #include <at89c51ed2.h>
// #include <mcs51reg.h>
//
// void PCA_ISR(void) __interrupt 6
// {
//     printf("RESET RESET\n\r");
//     // Reset watchdog timer by writing to CCAP4L and CCAP4H
//     CCAP4L = 0x00;
//     CCAP4H = 0x00;
// }
//
// void main(void)
// {
//     printf(" WATCHDOG TIMER MODE\n\r");
//     // CMOD |= 0x40;       // Enable WDT, set PCA clock division
//     // CCAPM4 = 0x4C;     // Enable PCA Module 4 as watchdog mode
//     // CCAP4L = 0xFF;
//     // CCAP4H = 0xFF;
//         // Set watchdog timer to use external oscillator with a 65,536 cycle timeout
//     CMOD |= 0x42;   // set the watchdog timer to use external oscillator
//     CCAP4L |= 0xff; // load the low byte of the capture and compare register 4 with 0xff
//     CCAP4H |= 0xff; // load the high byte of the capture and compare register 4 with 0xff
//     CCAPM4 = 0x48;  // set capture and compare mode for register 4 to high-byte-only mode with edge detection
//
//     while(1)
//     {
//         printf("- - -");
//         for(int i = 0; i<1024; i++){}
//         // Main loop can perform other tasks without calling refresh_wdt
//     }
// }
#include <at89c51ed2.h>  // Includes 8051/8052 definitions
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
void enable_wdt()
{
    printf("WARCHDOG\n\r");
    // Enable the WDT by writing the required sequence to WDTRST
    WDTRST = 0x1E;
    WDTRST = 0xE1;
}

void main(void)
{
    enable_wdt();  // Start the WDT

    while (1)
    {
        printf("- - - -");
        // Main loop - WDT will reset the system automatically if not serviced
        for ( volatile int i = 0; i < 50000; i++) {}  // Simulate delay


        // Do not call a function to reset the WDT; let it overflow
    }
}
