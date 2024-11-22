/****************************************************************************
 * @file timer.c
 * @author Bhakti Ramani
 * @brief Timer utility functions for timekeeping and control.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file provides functions for timer control (start, stop, pause) and
 * updating the current time display. It uses Timer 0 of the 8051 microcontroller
 * to maintain time with an interrupt-based approach, updating the time every 
 * 50ms to track seconds and minutes.
 * 
 * @hardware_configuration
 * - MCU: 8051 (AT89C51ED2)
 * - Timer: Timer 0 for timekeeping
 *
 * @features
 * - Timer initialization and control
 * - Timekeeping with seconds and minutes
 * - Displaying current time on LCD
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/
#define TH0_FOR_50MS 0x4B
#define TL0_FOR_50MS 0x1C

/**
 * @brief Starts the timer by enabling the Timer 0 interrupt.
 * 
 * This function starts Timer 0, which is used to keep track of time, 
 * by enabling the timer and allowing interrupts to be triggered for 
 * time updates.
 * 
 * @param None
 * @return None
 */
void timer_start(void);


/**
 * @brief Pauses the timer by disabling the Timer 0 interrupt.
 * 
 * This function stops the timer by disabling interrupts and halting 
 * Timer 0. The time counter will freeze when paused.
 * 
 * @param None
 * @return None
 */
void timer_pause(void);

/**
 * @brief Stops the timer and resets the time values.
 * 
 * This function stops Timer 0, disables its interrupt, and resets the 
 * time values for seconds and minutes to zero.
 * 
 * @param None
 * @return None
 */
void timer_stop(void);

/**
 * @brief Initializes Timer 0 to generate a 50ms interrupt.
 * 
 * This function configures Timer 0 to generate an interrupt every 50ms.
 * The interrupt handler will update the time counters every 50ms.
 * 
 * @param None
 * @return None
 */
void timer0_init(void);

/**
 * @brief Displays the current time on the LCD.
 * 
 * This function formats and displays the current time (minutes and seconds)
 * on the LCD, updating the display every 50ms.
 * 
 * @param None
 * @return None
 */
void current_time_display(void);