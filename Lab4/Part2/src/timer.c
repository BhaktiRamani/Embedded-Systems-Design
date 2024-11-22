/* ---------------------------------------------------------------------------------
 * @Author: Induja Narayanan <Induja.Narayanan@in.bosch.com>
 * ECEN 5613, Command handler functions
 * Fall 2024, Prof.McClure
 * University of Colorado at Boulder
 *  ------------------------------------------------------------------------------------
 * This file Implements timer-related functionality for an 8051 microcontroller,
 *          including initialization, starting, stopping, pausing, and displaying
 *          the current timer value on an LCD.
 * --------------------------------------------------------------------------------------*/
#include "at89c51ed2.h"
#include <mcs51reg.h>
#include "../inc/lcd.h"
#include "../inc/timer.h"
#include <stdio.h>

/* -------------------------------------------------------------------------------------
 * Macros
 *-------------------------------------------------------------------------------------*/
#define ONE_TENTH_OF_SECOND_ROW_COLUMN  3,15
#define LSB_OF_SECOND 3,13
#define MSB_OF_SECOND 3,12
#define LSB_OF_MINUTE 3,10
#define MSB_OF_MINUTE 3,9

/* -------------------------------------------------------------------------------------
 * External Variables
 *-------------------------------------------------------------------------------------*/
extern volatile uint8_t one_twentyth_of_Second;
extern volatile uint8_t one_tenth_of_second;
extern volatile uint8_t seconds;
extern volatile uint8_t minutes;

/* -------------------------------------------------------------------------------------
 * timer0_init
 * ------------------------------------------------------------------------------------
 * Purpose: Initializes Timer 0 for generating a 100 ms delay using Mode 1 (16-bit timer)
 *          and configures the necessary registers and interrupts.
 * Param   : None
 * Return  : None
 *-------------------------------------------------------------------------------------*/
void timer0_init() {
    TR0 = 0;                 // Stop Timer 0
    current_time_display();  // Display initial time on the LCD
    IEN0 |= 0x82;            // Enable Timer 0 interrupt and global interrupt
    TMOD &= 0xF0;            // Clear the upper 4 bits for Timer 0
    TMOD |= 0x01;            // Timer 0 in Mode 1 (16-bit timer)
    TH0 = TH0_FOR_50MS;              // Load high byte for 100 ms delay
    TL0 = TL0_FOR_50MS;              // Load low byte for 100 ms delay
    ET0 = 1;                 // Enable Timer 0 interrupt
    EA = 1;                  // Enable global interrupts
    TR0 = 1;                 // Start Timer 0
}

/* -------------------------------------------------------------------------------------
 * timer_stop
 * ------------------------------------------------------------------------------------
 * Purpose: Stops Timer 0, resets all time-tracking variables (minutes, seconds, and 
 *          tenths of a second), and updates the current time display on the LCD.
 * Param   : None
 * Return  : None
 *-------------------------------------------------------------------------------------*/
void timer_stop() {
    EA = 0;                   // Disable global interrupts
    TR0 = 0;                  // Stop Timer 0
    minutes = 0;              // Reset minutes
    seconds = 0;              // Reset seconds
    one_twentyth_of_Second = 0;  // Reset tenths of a second
    one_tenth_of_second=0; //Reset tenths of a second
    current_time_display();   // Update time display on the LCD
}

/* -------------------------------------------------------------------------------------
 * timer_pause
 * ------------------------------------------------------------------------------------
 * Purpose: Pauses Timer 0 by disabling its interrupts and stopping its operation. 
 *          The current timer values remain intact.
 * Param   : None
 * Return  : None
 *-------------------------------------------------------------------------------------*/
void timer_pause() {
    ET0 = 0;  // Disable Timer 0 interrupt
    EA = 0;   // Disable global interrupts
    TR0 = 0;  // Stop Timer 0
}

/* -------------------------------------------------------------------------------------
 * timer_start
 * ------------------------------------------------------------------------------------
 * Purpose: Restarts Timer 0 by reinitializing the timer registers for a 100 ms delay 
 *          and enabling interrupts. The timer resumes counting from its initial state.
 * Param   : None
 * Return  : None
 *-------------------------------------------------------------------------------------*/
void timer_start() {
    TH0 = 0x98;  // Load high byte for 100 ms delay
    TL0 = 0x00;  // Load low byte for 100 ms delay
    ET0 = 1;     // Enable Timer 0 interrupt
    EA = 1;      // Enable global interrupts
    TR0 = 1;     // Start Timer 0
}

/* -------------------------------------------------------------------------------------
 * current_time_display
 * ------------------------------------------------------------------------------------
 * Purpose: Updates the current time on the LCD, displaying minutes, seconds, and tenths 
 *          of a second in a predefined format.
 * Param   : None
 * Return  : None
 *-------------------------------------------------------------------------------------*/
void current_time_display() __critical {
    lcd_go_toxy(MSB_OF_MINUTE);
    lcd_put_char((minutes / 10) + '0');  // Display tens place of minutes
    lcd_put_char((minutes % 10) + '0');  // Display ones place of minutes
    lcd_put_char(':');                   // Display colon
    lcd_put_char((seconds / 10) + '0');  // Display tens place of seconds
    lcd_put_char((seconds % 10) + '0');  // Display ones place of seconds
    lcd_put_char('.');                   // Display decimal point
    lcd_put_char(one_tenth_of_second + '0');  // Display tenths of a second
}
