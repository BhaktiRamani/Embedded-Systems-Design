/**
 * @file timer.c
 * @brief Timer-related functionality for 8051 microcontroller.
 *
 * This file implements functions for initializing, starting, stopping, pausing,
 * and resuming Timer 0 on the 8051 microcontroller. It also includes a function
 * to display the current time on an LCD screen.
 *
 * @author Bhakti Ramani
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado Boulder
 */

#include "at89c51ed2.h"
#include <mcs51reg.h>
#include "../inc/lcd.h"
#include "../inc/timer.h"
#include <stdio.h>


#define ROW_COL_TENTH_SEC   3,15
#define ROW_COL_SEC_LSB     3,13
#define ROW_COL_SEC_MSB     3,12
#define ROW_COL_MIN_LSB     3,10
#define ROW_COL_MIN_MSB     3,9

extern volatile uint8_t g_tenth_sec_counter;
extern volatile uint8_t g_seconds_counter;
extern volatile uint8_t g_minutes_counter;

/**
 * @brief Initializes Timer 0 for generating a delay of 100 ms using Mode 1 (16-bit timer).
 *
 * Configures the necessary registers and enables interrupts to start Timer 0.
 * Displays the initial time on the LCD.
 *
 * @param None
 * @return None
 */
void timer_initialize() {
    TR0 = 0;                // Stop Timer 0
    display_current_time(); // Display initial time on the LCD
    IEN0 |= 0x82;           // Enable Timer 0 interrupt and global interrupt
    TMOD &= 0xF0;           // Clear the upper 4 bits for Timer 0
    TMOD |= 0x01;           // Timer 0 in Mode 1 (16-bit timer)
    TH0 = TH0_FOR_50MS;     // Load high byte for 100 ms delay
    TL0 = TL0_FOR_50MS;     // Load low byte for 100 ms delay
    ET0 = 1;                // Enable Timer 0 interrupt
    EA = 1;                 // Enable global interrupts
    TR0 = 1;                // Start Timer 0
}

/**
 * @brief Stops Timer 0 and resets all time-tracking variables.
 *
 * Disables the timer and resets the counters for minutes, seconds, and tenths of a second.
 * Updates the current time display on the LCD.
 *
 * @param None
 * @return None
 */
void timer_stop() {
    EA = 0;                     // Disable global interrupts
    TR0 = 0;                    // Stop Timer 0
    g_minutes_counter = 0;      // Reset minutes
    g_seconds_counter = 0;      // Reset seconds
    g_tenth_sec_counter = 0;    // Reset tenths of a second
    display_current_time();     // Update time display on the LCD
}

/**
 * @brief Pauses Timer 0 without resetting its values.
 *
 * Temporarily halts the timer by disabling interrupts and stopping its operation.
 * The timer values remain intact.
 *
 * @param None
 * @return None
 */
void timer_pause() {
    ET0 = 0;  // Disable Timer 0 interrupt
    EA = 0;   // Disable global interrupts
    TR0 = 0;  // Stop Timer 0
}

/**
 * @brief Resumes Timer 0 from its initial state.
 *
 * Restarts the timer by reinitializing the timer registers and enabling interrupts.
 * The timer resumes counting from its initial state.
 *
 * @param None
 * @return None
 */
void timer_resume() {
    TH0 = TH0_FOR_50MS;     // Load high byte for 100 ms delay
    TL0 = TL0_FOR_50MS;     // Load low byte for 100 ms delay
    ET0 = 1;                // Enable Timer 0 interrupt
    EA = 1;                 // Enable global interrupts
    TR0 = 1;                // Start Timer 0
}

/**
 * @brief Displays the current time on the LCD.
 *
 * Updates the LCD with the current time values, including minutes, seconds,
 * and tenths of a second in a predefined format.
 *
 * @param None
 * @return None
 */
void display_current_time() __critical {
    lcd_go_toxy(ROW_COL_MIN_MSB);
    lcd_put_char((g_minutes_counter / 10) + '0');  // Display tens place of minutes
    lcd_put_char((g_minutes_counter % 10) + '0');  // Display ones place of minutes
    lcd_put_char(':');                             // Display colon
    lcd_put_char((g_seconds_counter / 10) + '0');  // Display tens place of seconds
    lcd_put_char((g_seconds_counter % 10) + '0');  // Display ones place of seconds
    lcd_put_char('.');                             // Display decimal point
    lcd_put_char(g_tenth_sec_counter + '0');       // Display tenths of a second
}

