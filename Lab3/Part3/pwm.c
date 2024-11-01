/* ---------------------------------------------------------------------------------
 * @Author: Induja Narayanan <Induja.Narayanan@in.bosch.com>
 * ECEN 5613, Memory Allocator Utility
 * Fall 2024, Prof.McClure
 * University of Colorado at Boulder
 *  --------------------------------------------------------------------------------
 * This file contains the 8051 code for Lab3 Part3 for demo of PCA mode
 * ---------------------------------------------------------------------------------*/


#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
//#include "getchar_putchar.h"

#define CCAPM0_PWM_ENABLE_BIT (1<<1)
#define CCAPM0_ECOM_ENABLE_BIT (1<<6)
#define CMOD_CPS0_BIT (1<<1)
#define CMOD_CPS1_BIT (1<<2)
#define CMOD_WDOG_ENABLE_BIT (1<<6)
#define CMOD_CIDL_BIT (1<<7)
#define CCON_CR_BIT (1<<6)
#define PCON_IDLE_MODE_BIT (1)
#define PCON_POWER_DOWN_BIT (1<<1)
#define CKCON0_X2_BIT (1)
#define CKCON0_TIX2_BIT (1<<2)
#define CCAPM1_ECOM_BIT (1<<6)
#define CCAPM1_MAT_BIT  (1<<3)
#define CCAPM1_CCF1_BIT (1<<1)
#define CCON_CCF1_BIT (1<<1)
#define CMOD_ECF_BIT (1)
#define CCAPM4_ECOM_BIT (1<<6)
#define CCAPM4_MAT_BIT  (1<<3)

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
/*
* This function starts PWM
*/
void PWM_start(void)
{
    //Module 0 is selected for PWM which uses P1.3 pin

    CCAP0L = 0x00;  // Clear low byte of PCA module 0
    CCAP0H = 0x00;  // Clear high byte of PCA module 0
    CCAPM0 = 0x00;  // Clear PCA module 0 control register
    //Set PWM and ECOM bit to 1 in CCAPM0 register

    //Set the PWM duty cycle to 33%
    CCAP0L = 0xAC;
    CCAP0H = 0xAC;

    //Clear CIDL to continue PCA during IDLE mode
    CMOD &= ~(CMOD_CIDL_BIT);
    //Select Module 0 in CCON register
    CCON |= CCON_CR_BIT;

       // Bit 1 and Bit6
    CCAPM0 |= CCAPM0_ECOM_ENABLE_BIT |CCAPM0_PWM_ENABLE_BIT;
}
/*
* This function stops PWM
*/
void PWM_stop(void)
{
    //Clear PWM and ECOM bit to 0 in CCAPM0 register
    //Bit 1 and Bit6
    CCAPM0 &= ~(CCAPM0_ECOM_ENABLE_BIT);
    CCAPM0 &= ~(CCAPM0_PWM_ENABLE_BIT);


}
/*
* This function initializes all registers
*/

void init_registers(void)
{
    // Initializing the low and high bytes of PCA timer
    CMOD = 0x00;    // Clear control mode register
    CL = 0x00;      // Clear low byte of PCA timer
    CH = 0x00;      // Clear high byte of PCA timer
    CCON = 0x00;    // Clear control register
}

/*
* This function sets Fclk to max value
*/
void set_fclk_to_max(void)
{
    CKRL = 0xFF;
}

/*
* This function sets Fclk to min value
*/

void set_fclk_to_min(void)
{
    CKRL = 0x01;
}

/*
* This function makes MCU go to idle mode
*/
void enter_idle_mode(void)
{
    PCON |= PCON_IDLE_MODE_BIT;
}
/*
* This function makes MCU go to power down mode
*/
void enter_power_down_mode(void)
{
    PCON |= PCON_POWER_DOWN_BIT;
}
/*
* This function initializes watch dog
*/
void init_watchdog(void)
{
    // Set watchdog timer to use external oscillator with a 65,536 cycle timeout
    CMOD |= CMOD_WDOG_ENABLE_BIT;   // set the watchdog timer to use external oscillator
    CCAP4L = 0x80; // Initialise the low byte of the capture and compare register 4 with 0xff
    CCAP4H = 0xFF; // Initialise the high byte of the capture and compare register 4 with 0xff
    CCAPM4 |= CCAPM4_MAT_BIT| CCAPM4_ECOM_BIT;  // set capture and compare mode for register 4 to high-byte-only mode with edge detection
    CR=1;
}
/*
* This function enables interrupt 0
*/

void enable_interrupt0(void)
{
    // Configure INT0
    IT0 = 1;           // Set INT0 to be edge-triggered
    EX0 = 1;          // Enable INT0 interrupt
    EA = 1;           // Enable global interrupts

}
/*
* This function sets X2 mode
*/
void set_x2_mode(void)
{
    CKCON0 = 0x00;
    CKCON0 |= CKCON0_X2_BIT;
    CKCON0 |= CKCON0_TIX2_BIT;
}
// PCA1 Interrupt Service Routine
// PCA1 CCF1 Interrupt Service Routine
void PCA_ISR(void) __interrupt (7){
    if (CCON & CCON_CCF1_BIT) {       // Check if PCA Module 1 triggered the interrupt
        CCON &= ~(CCON_CCF1_BIT);       // Clear the interrupt flag for PCA Module 1

        //Reset WatchDog
        CCAP4H = 0xFF;           // Set high byte of the compare value
        CCAP4L = 0x80;           // Set low byte of the compare value (e.g., 0xFF80)
        printf("WR");
    }
    printf("V");
}

/*
* This function initialize PCA SW timer in Module1
*/
void init_pca_sw_timer()
{
    CCAP1L |= 0xFF; // load the low byte of the capture and compare register 4 with 0xff
    CCAP1H |= 0x50; // load the high byte of the capture and compare register 4 with 0x50
    //Select Counter On on PCA
    CCON |= CCON_CR_BIT;

    CMOD |=CMOD_ECF_BIT; //Enable PCA Counter flow interrupt ,if set it enables the CF bit in CCON to generate an interrupt
    //In CMOD set the the CPS0 and CPS1 to 01 to select Fclkperi/2
    CMOD |= CMOD_CPS0_BIT ;
    CMOD &= ~(CMOD_CPS1_BIT);
    CH = 0x00;
    CL = 0x00;
    //Enable PCA Interrupt
    IEN0 |= (1<<6);
    // Enable Comparator and Match bit
    CCAPM1 |= CCAPM1_CCF1_BIT |CCAPM1_MAT_BIT |CCAPM1_ECOM_BIT  ;



    EA = 1;              // Enable global interrupts
    EC = 1;              // Enable PCA interrupt
    CR = 1;              // Start PCA by setting CR bit in CCON

}
/*
* This function starts high speed mode
*/
void init_high_speed_mode(void)
{
   // Using module 2 for High Speed mode
    //In CMOD set the the CPS0 and CPS1 to 01 to select Fclkperi/2
    CMOD |= CMOD_CPS0_BIT ;
    CMOD &= ~(CMOD_CPS1_BIT);
    CCAP2L = 0xAC;
    CCAP2H = 0xAC;

    //Select Counter On on PCA
    CCON |= CCON_CR_BIT;

    CCAPM2 = 0x4C; // Set capture/compare register mode to set toggle, MAT and ECOM register
}
/*
* This function stops the high speed mode
*/
void stop_high_speed_mode(void)
{
    // Reset CCAPM0 to default value
    CCAPM0 = 0x00;

    return;
}
/* This is the main function to wait for user inputs
*/
void main(void)
{


    printf("--------------------------------------------------------------------------------------------\r\n");
    printf("                           Welcome to PCA demo  Lab 3 Part3                                 \r\n");
    printf("--------------------------------------------------------------------------------------------\r\n");
    printf("Press A : To Run PWM\r\n");
    printf("Press B : To Stop PWM\r\n");
    printf("Press C : To set Fclk Peripheral to minimum frequency\r\n");
    printf("Press D : To set Fclk Peripheral to maximum frequency\r\n");
    printf("Press E : To enter IDLE mode\r\n");
    printf("Press F : To enter power down mode\r\n");
    printf("Press G : To activate watchdog timer\r\n");
    printf("Press H : To activate High speed mode\r\n");
    printf("Press I : To deactivate High speed mode\r\n");
    int8_t cmd_received =  0;
    init_registers();
    set_x2_mode();
 //   init_pca_sw_timer();

  //  init_watchdog();
    // Assembly instruction to jump to address 0x0000
    while (1)
    {
        printf("\r\n Enter the command:");
        cmd_received= getchar();
        printf("%c\r\n",cmd_received);
        switch (cmd_received)
        {
        case 'A':
            PWM_start();
            printf("Started PWM \r\n");
            break;
        case 'B':
            PWM_stop();
            printf("Stopped PWM\r\n");
            break;
        case 'C':
            set_fclk_to_min();
            printf("Fclk peripheral is set to minimum frequency\r\n");
            break;
        case 'D':
            set_fclk_to_max();
            printf("Fclk peripheral is set to maximum frequency\r\n");
            break;
        case 'E':
            printf("Enabling INT0. To exit IDLE mode connect INT0 line to GND\r\n");
            enable_interrupt0();
            printf("Entering IDLE mode\r\n");
            enter_idle_mode();
            break;
        case 'F':
            printf("Entering power down mode\r\n");
            enter_power_down_mode();
            break;
        case 'G':
            printf("Activating watchdog\r\n");
            init_watchdog();
            break;
        case 'H':
            printf("Activating High speed mode");
            init_high_speed_mode();
            break;
        case 'I':
            printf("Deactivating High speed mode");
            stop_high_speed_mode();
        default:
            printf("Invalid input\r\n");
            break;
        }
    }
}
