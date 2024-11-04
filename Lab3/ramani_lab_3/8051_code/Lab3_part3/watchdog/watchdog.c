/******************************************************************************
* File Name: pca_watchdog.c
* Description: PCA Module 4 Watchdog Timer Implementation
* Author: Bhakti Ramani
* Tools: SDCC, VS Code
* Date: November 1, 2024
*
* This program implements:
* - UART initialization at 9600 baud
* - PCA Module 4 as watchdog timer
* - System clock in X2 mode
*******************************************************************************/

#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdio.h>

/* Register Value Definitions */
#define UART_MODE_8BIT      0x50    // 8-bit UART, 1 stop bit, REN enabled
#define TIMER_MODE_2        0x20    // Timer 1 Mode 2 (8-bit auto-reload)
#define BAUD_9600          0xFD     // Value for 9600 baud rate
#define WDT_ENABLE         0x40     // Enable watchdog timer
#define PCA_ENABLE         0x40     // Enable PCA counter
#define WDT_MODE           0x4C     // Watchdog timer mode with interrupt
#define X2_MODE            0x01     // X2 mode for clock
#define GLOBAL_INT_EN      0x80     // Enable global interrupts
#define TIMER1_START       0x40     // Start Timer 1
#define WDT_LOW_VAL       0x00     // Watchdog timer low byte
#define WDT_HIGH_VAL      0xFF     // Watchdog timer high byte

/*******************************************************************************
* Function: putchar
* Description: Transmits character via UART
* Parameters: charToSend - Character to transmit
* Returns: Transmitted character
*******************************************************************************/
int putchar(int charToSend) {
   SBUF = charToSend;
   while (!TI);
   TI = 0;
   return charToSend;
}

/*******************************************************************************
* Function: getchar
* Description: Receives character via UART
* Parameters: None
* Returns: Received character
*******************************************************************************/
int getchar(void)
{
   while (!RI);
   RI = 0;
   return SBUF;
}

/*******************************************************************************
* Function: main
* Description: Main program entry
* - Initializes system clock in X2 mode
* - Configures UART for 9600 baud
* - Sets up PCA Module 4 as watchdog timer
*******************************************************************************/
void main(void)
{
   // System Clock Configuration - X2 Mode
   CKCON0 = X2_MODE;

   // Enable Global Interrupts
   IEN0 |= GLOBAL_INT_EN;

   // UART Configuration
   TMOD |= TIMER_MODE_2;
   SCON |= UART_MODE_8BIT;
   TCON |= TIMER1_START;
   TH1 = BAUD_9600;
   TI = 1;

   // Watchdog Timer Configuration
   CCAP4L = WDT_LOW_VAL;
   CCAP4H = WDT_HIGH_VAL;
   CMOD |= WDT_ENABLE;
   CCON = PCA_ENABLE;
   CCAPM4 |= WDT_MODE;

   while(1)
   {
       // Main program loop
   }
}
