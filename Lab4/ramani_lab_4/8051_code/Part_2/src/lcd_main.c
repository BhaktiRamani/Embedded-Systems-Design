/**
 * @file timer.c
 * @brief Timer-related functionality for 8051 microcontroller.
 *
 * This file implements functions for initializing, starting, stopping, pausing,
 * and resuming Timer 0 , string written , character generation on the 8051 microcontroller. It also includes a function
 * to display the current time on an LCD screen.
 *
 * @author Bhakti Ramani
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado Boulder
 */

#include <string.h>
#include <stdint.h>
#include "at89c51ed2.h"
#include <mcs51reg.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include "lcd.h"
#include "timer.h"
#include "command_handlers.h"

// Timer variables
volatile uint8_t tick_counter = 0;          // Counts 1/20th of a second
volatile uint8_t tenth_second_counter = 0;  // Counts 1/10th of a second
volatile uint8_t second_counter = 0;        // Counts seconds
volatile uint8_t minute_counter = 0;        // Counts minutes

// LCD display positions
#define TENTH_SECOND_POSITION  3, 15
#define SECOND_LSB_POSITION    3, 13
#define SECOND_MSB_POSITION    3, 12
#define MINUTE_LSB_POSITION    3, 10
#define MINUTE_MSB_POSITION    3, 9

/**
 * @brief Timer0 Interrupt Service Routine
 * Handles the timer logic to update time counters and refresh the display.
 */
void timer0_isr(void) __interrupt (1) {
    // Reload Timer0 for 50 ms delay
    TH0 = TH0_FOR_50MS;
    TL0 = TL0_FOR_50MS;

    tick_counter++;
    TR0 = 1;  // Restart Timer0

    // Update time every 1/20th second
    if (tick_counter == 20) {
        tick_counter = 0;
        second_counter++;

        if (second_counter == 60) {
            second_counter = 0;
            minute_counter++;
        }
    }

    // Update display every 1/10th second
    if (tick_counter % 2 == 0) {
        tenth_second_counter = tick_counter / 2;
        update_current_time_display();  // Refresh LCD with the current time
    }
}

/**
 * @brief Main program entry point
 * Initializes peripherals and handles user commands in an infinite loop.
 */
void main() {
    char received_command;

    // Initialize the LCD and Timer0
    lcd_initialize();
    tick_counter = 0;
    second_counter = 0;
    minute_counter = 0;
    timer0_initialize();

    // Display welcome and command usage menu
    printf("╔════════════════════════════════════════════════════════════════╗\n\r");
    printf("║                     Welcome to LCD Demo                         ║\n\r");
    printf("╠═══════════╦════════════════════════════════════════════════════╣\n\r");
    printf("║ Command   ║                    Description                      ║\n\r");
    printf("╠═══════════╬════════════════════════════════════════════════════╣\n\r");
    printf("║    W      ║ Write a string                                     ║\n\r");
    printf("║    T      ║ Write to a specific position in the LCD           ║\n\r");
    printf("║    E      ║ Clear the display                                 ║\n\r");
    printf("║    P      ║ Pause the Timer                                   ║\n\r");
    printf("║    S      ║ Start the Timer                                   ║\n\r");
    printf("║    R      ║ Stop and reset the Timer                          ║\n\r");
    printf("║    H      ║ Hexdump of DDRAM contents                         ║\n\r");
    printf("║    C      ║ Hexdump of CGRAM contents                         ║\n\r");
    printf("║    A      ║ Create a CGRAM character                          ║\n\r");
    printf("║    D      ║ Display a CGRAM character                         ║\n\r");
    printf("║    ?      ║ Help menu                                         ║\n\r");
    printf("╚═══════════╩════════════════════════════════════════════════════╝\n\r");

    // Main command loop
    while (1) {
        printf("\r\n\r >> Enter Command: ");
        received_command = getchar();  // Get user input
        putchar(received_command);    // Echo the command back to the user
        process_command(received_command);  // Handle the command
    }
}
