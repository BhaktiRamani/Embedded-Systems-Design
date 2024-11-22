/****************************************************************************
 * @file main.c
 * @author Bhakti Ramani
 * @brief Main program for LCD demo with timer and command handling.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file demonstrates the usage of an LCD, timer interrupts, and command 
 * handling. It initializes the LCD, starts a timer interrupt, and listens for 
 * user commands to perform various actions such as writing to the LCD, controlling 
 * the timer, or dumping memory contents.
 * 
 * @hardware_configuration
 * - MCU: 8051 (AT89C51ED2)
 * - LCD: [Specify the LCD model]
 * - Timer: Timer 0 for 50ms interrupt
 *
 * @features
 * - Timer-based interrupts to keep track of seconds and minutes
 * - LCD display for user interaction
 * - Command parser for handling user inputs
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/
#include <string.h>
#include <stdint.h>
#include "at89c51ed2.h"
#include <mcs51reg.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include "lcd.h"
#include "timer.h"
#include "command_handlers.h"

// Volatile variables for timekeeping
volatile uint8_t one_twentyth_of_Second = 0;  /**< Holds the 1/20th of a second value */
volatile uint8_t one_tenth_of_second = 0;     /**< Holds the 1/10th of a second value */
volatile uint8_t seconds = 0;                 /**< Holds the current seconds value */
volatile uint8_t minutes = 0;                 /**< Holds the current minutes value */

// Define positions on the LCD for displaying time
#define ONE_TENTH_OF_SECOND_ROW_COLUMN  3,15
#define LSB_OF_SECOND 3,13
#define MSB_OF_SECOND 3,12
#define LSB_OF_MINUTE 3,10
#define MSB_OF_MINUTE 3,9

/**
 * @brief Timer 0 Interrupt Service Routine
 * 
 * This function handles the Timer 0 interrupt, which occurs every 50ms.
 * It updates the time values (seconds and minutes) and refreshes the display
 * every 1/10th of a second.
 * 
 * @return None
 */
void timer0_isr(void) __interrupt (1) {
    TH0 = TH0_FOR_50MS;       // High byte for 50ms delay
    TL0 = TL0_FOR_50MS;       // Low byte for 50ms delay
    one_twentyth_of_Second++; // Increment 1/20th of a second counter
    TR0 = 1;                  // Restart the timer

    // If 1 second has passed, update the seconds counter
    if (one_twentyth_of_Second == 20) {
        one_twentyth_of_Second = 0;
        seconds++;
        
        // If 60 seconds have passed, reset seconds and increment minutes
        if (seconds == 60) {
            seconds = 0;
            minutes++;
        }
    }

    // Display the time every 1/10th of a second
    if (one_twentyth_of_Second % 2 == 0) {
        one_tenth_of_second = one_twentyth_of_Second / 2;
        current_time_display(); // Update time display on LCD
    }
}

/**
 * @brief Main function of the program.
 * 
 * This function initializes the LCD, the timer, and sets up the command menu.
 * It then enters an infinite loop, waiting for user input to execute various
 * commands, such as starting the timer, clearing the display, or displaying
 * memory contents.
 * 
 * @return None
 */
void main() {
    char char_received;

    // Initialize LCD, time counters, and timer interrupt
    lcd_init();
    one_twentyth_of_Second = 0;
    seconds = 0;
    minutes = 0;
    timer0_init();

    // Display welcome and usage messages
    printf("╔════════════════════════════════════════════════════════════════╗\n\r");
    printf("║                     Welcome to LCD Demo                        ║\n\r");
    printf("╠═══════════╦════════════════════════════════════════════════════╣\n\r");
    printf("║ Command   ║                    Description                     ║\n\r");
    printf("╠═══════════╬════════════════════════════════════════════════════╣\n\r");
    printf("║    W      ║ Write a string                                     ║\n\r");
    printf("║    T      ║ Write to a specific position in the LCD            ║\n\r");
    printf("║    E      ║ Clear the display                                  ║\n\r");
    printf("║    P      ║ Pause the Timer                                    ║\n\r\r");
    printf("║    S      ║ Start the Timer                                    ║\n\r\r");
    printf("║    R      ║ Stop and reset the Timer                           ║\n\r\r");
    printf("║    H      ║ Hexdump of DDRAM contents                          ║\n\r\r");
    printf("║    C      ║ Hexdump of CGRAM contents                          ║\n\r\r");
    printf("║    A      ║ Create a CGRAM character                           ║\n\r\r");
    printf("║    D      ║ Display a CGRAM character                          ║\n\r\r");
    printf("║    ?      ║ Help menu                                          ║\n\r");
    printf("╚═══════════╩════════════════════════════════════════════════════╝\n\r");

    while(1) {
        // Main loop for waiting for user input
        printf("\r\n\r >> Enter Command:");

        char_received = getchar();  // Get user input

        putchar(char_received);     // Echo the received character
        command_parser(char_received);  // Parse the command and take appropriate action
    }
}
