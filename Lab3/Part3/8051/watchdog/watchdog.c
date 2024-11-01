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


/**
 * @brief Main program
 */
void main(void)
{

    CKCON0=0x01;
    IEN0|=0x80;
    TMOD |= 0x20; //TIMER 1, MODE 2
    SCON |= 0x50; //8 BIT, 1 STOP , REN ENABLED
    TCON |= 0x40; 	//START TIMER1
    TH1 = 0xFD;
    TI = 1;

        CCAP4L = 0x00;
        CCAP4H = 0xFF;
        CMOD |= 0x40;
        CCON = 0x40;
        CCAPM4 |= 0x4C;

    while(1)
    {

    }

}


