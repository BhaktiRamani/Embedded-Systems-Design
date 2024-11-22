/****************************************************************************
 * @file getchar_putchar.c
 * @author Bhakti Ramani
 * @brief UART character and string handling functions.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 * @details
 * This file contains functions for handling UART communication. It includes
 * functions to send and receive single characters via UART, as well as to
 * receive a string of characters terminated by a carriage return or line feed.
 * It also provides error handling for buffer overflow situations when 
 * receiving input.
 * 
 * @hardware_configuration
 * - MCU: AT89C51Rc2
 * - UART: 
 *
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/
#include "at89c51ed2.h"
#include <mcs51reg.h>
#include "../inc/lcd.h"
#include "../inc/timer.h"
#include <stdio.h>


#define ONE_TENTH_OF_SECOND_ROW_COLUMN  3,15
#define LSB_OF_SECOND 3,13
#define MSB_OF_SECOND 3,12
#define LSB_OF_MINUTE 3,10
#define MSB_OF_MINUTE 3,9


extern volatile uint8_t one_twentyth_of_Second;
extern volatile uint8_t one_tenth_of_second;
extern volatile uint8_t seconds;
extern volatile uint8_t minutes;


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


void timer_stop() {
    EA = 0;                   // Disable global interrupts
    TR0 = 0;                  // Stop Timer 0
    minutes = 0;              // Reset minutes
    seconds = 0;              // Reset seconds
    one_twentyth_of_Second = 0;  // Reset tenths of a second
    one_tenth_of_second=0; //Reset tenths of a second
    current_time_display();   // Update time display on the LCD
}

void timer_pause() {
    ET0 = 0;  // Disable Timer 0 interrupt
    EA = 0;   // Disable global interrupts
    TR0 = 0;  // Stop Timer 0
}

void timer_start() {
    TH0 = 0x98;  // Load high byte for 100 ms delay
    TL0 = 0x00;  // Load low byte for 100 ms delay
    ET0 = 1;     // Enable Timer 0 interrupt
    EA = 1;      // Enable global interrupts
    TR0 = 1;     // Start Timer 0
}

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
