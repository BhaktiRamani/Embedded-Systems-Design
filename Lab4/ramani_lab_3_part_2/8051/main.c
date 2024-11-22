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
volatile uint8_t frame_tick = 0;       /**< Holds the 1/20th of a second value */
volatile uint8_t pulse_tick = 0;       /**< Holds the 1/10th of a second value */
volatile uint8_t chrono_seconds = 0;   /**< Holds the current seconds value */
volatile uint8_t chrono_minutes = 0;   /**< Holds the current minutes value */

// Define positions on the LCD for displaying time
#define LCD_POSITION_TICK_TENTH      3, 15
#define LCD_POSITION_SEC_UNITS       3, 13
#define LCD_POSITION_SEC_TENS        3, 12
#define LCD_POSITION_MIN_UNITS       3, 10
#define LCD_POSITION_MIN_TENS        3, 9




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
    frame_tick = 0;
    chrono_seconds = 0;
    chrono_minutes = 0;

    timer0_init();

    // Display welcome and usage messages
    printf("╔════════════════════════════════════════════════════════════════╗\n");
    printf("║                     Welcome to LCD Demo                         ║\n");
    printf("╠═══════════╦════════════════════════════════════════════════════╣\n");
    printf("║ Command   ║                    Description                      ║\n");
    printf("╠═══════════╬════════════════════════════════════════════════════╣\n");
    printf("║    W      ║ Write a string                                     ║\n");
    printf("║    T      ║ Write to a specific position in the LCD           ║\n");
    printf("║    E      ║ Clear the display                                 ║\n");
    printf("║    P      ║ Pause the Timer                                   ║\n");
    printf("║    S      ║ Start the Timer                                   ║\n");
    printf("║    R      ║ Stop and reset the Timer                          ║\n");
    printf("║    H      ║ Hexdump of DDRAM contents                         ║\n");
    printf("║    C      ║ Hexdump of CGRAM contents                         ║\n");
    printf("║    A      ║ Create a CGRAM character                          ║\n");
    printf("║    D      ║ Display a CGRAM character                         ║\n");
    printf("║    ?      ║ Help menu                                         ║\n");
    printf("╚═══════════╩════════════════════════════════════════════════════╝\n");

    while(1) {
        // Main loop for waiting for user input
        printf("\r\n >> Enter Command:");
        char_received = getchar();  // Get user input
        printf("$$ ");
        putchar(char_received);     // Echo the received character
        command_parser(char_received);  // Parse the command and take appropriate action
    }
}

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
    if (frame_tick == 20) {
        frame_tick = 0;
        chrono_seconds++;

        // If 60 seconds have passed, reset seconds and increment minutes
        if (chrono_seconds == 60) {
            chrono_seconds = 0;
            chrono_minutes++;
        }
    }

    // Display the time every 1/10th of a second
    if (frame_tick % 2 == 0) {
        pulse_tick = frame_tick / 2;
        current_time_display(); // Update time display on LCD
    }

}
