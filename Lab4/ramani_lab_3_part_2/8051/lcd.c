/****************************************************************************
 * @file lcd.c
 * @author Bhakti Ramani
 * @brief LCD driver functions for controlling the LCD display.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file provides functions to control an LCD display, including
 * sending commands, writing data, moving the cursor, clearing the display,
 * and creating and displaying custom characters. It also contains utilities
 * for reading and dumping the contents of DDRAM and CGRAM.
 * 
 * @hardware_configuration
 * - MCU: 8051 (AT89C51ED2)
 * - LCD: 16x2 or 20x4 LCD (character display)
 * - Connection Details:
 *   - Control pins: RS (Register Select), RW (Read/Write), EN (Enable)
 *   - Data pins: D0-D7 (Data bus)
 *
 * @features
 * - LCD initialization and setup
 * - Displaying characters and strings
 * - Creating custom characters
 * - Reading DDRAM and CGRAM contents
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <string.h>
#include <stdint.h>
#include "at89c51ed2.h"
#include <mcs51reg.h>
#include "lcd.h"
#include <stdio.h>

#define LCD_WRITE_CMD  0xF000 // Base address for writing commands (RS = 0)
#define LCD_READ_CMD  0xF100 // Base address for writing commands (RS = 0)
#define LCD_WRITE_DATA 0xF200 // Base address for writing data (RS = 1)
#define LCD_READ_DATA 0xF300 // Base address for writing data (RS = 1)
#define ROW1_ADDR 0x00
#define ROW2_ADDR 0x40
#define ROW3_ADDR 0x10
#define ROW4_ADDR 0x50

// A9 and A8 are used for RS and R/W respectively
__xdata unsigned char *write_control_register = (__xdata unsigned char *)(LCD_WRITE_CMD); // Ensure proper casting
__xdata unsigned char *read_control_register = (__xdata unsigned char *)(LCD_READ_CMD);
__xdata unsigned char *write_data_register = (__xdata unsigned char *)(LCD_WRITE_DATA);
__xdata unsigned char *read_data_register = (__xdata unsigned char *)(LCD_READ_DATA);

#define CHAR_IN_FIRST_THREE_ROWS 16
#define CHAR_IN_LAST_ROW 8

#define LCD_INIT_SYNC_CMD 0x38
#define LCD_INIT_SYNC 0x30
#define LCD_CLEAR_CMD 0x01
#define LCD_HOME_CMD  0x02
#define LCD_ENTRY_MODE_CMD 0x06 // Cursor moves to the right
#define LCD_DISPLAY_ON_CMD 0x0C // Display ON, Cursor OFF
#define LCD_DISPLAY_OFF_CMD 0x08 // Display OFF, Cursor OFF
#define LCD_BUSY_FLAG 0x80
#define LCD_CLEAR_AND_SETDDRAM_TO_INIT 0x00

/**
 * @brief Creates a delay of approximately 1ms at a 12MHz crystal frequency.
 * 
 * This function is used to introduce delays between commands and operations.
 * 
 * @param ms The number of milliseconds to delay.
 * @return None
 */
void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
}

/**
 * @brief Waits for the LCD to become ready by checking the busy flag.
 * 
 * This function checks the busy flag of the LCD to ensure that it is not
 * busy before sending further commands or data.
 * 
 * @param None
 * @return None
 */
void lcd_wait(void) {
    while ((*read_control_register) & LCD_BUSY_FLAG)
    {
        // Delay for a short period before reading the status register again
        delay_ms(1);
    }
}

/**
 * @brief Reads data from the LCD data register.
 * 
 * This function reads a byte of data from the LCD's data register.
 * 
 * @param None
 * @return uint8_t The data byte read from the LCD.
 */
uint8_t read_lcd_data() {
    return *read_data_register;
}

/**
 * @brief Sends a command to the LCD to control its behavior.
 * 
 * This function writes a command to the LCD, allowing control over the
 * display (e.g., clearing the screen, turning the display on/off, etc.).
 * 
 * @param command The command byte to send to the LCD.
 * @return None
 */
void write_lcd_command(unsigned char command) {
    *write_control_register = command;
}

/**
 * @brief Sends data to the LCD to be displayed at the current cursor position.
 * 
 * This function sends a byte of data to the LCD, which is displayed at the
 * current cursor position.
 * 
 * @param data The data byte to send to the LCD.
 * @return None
 */
void write_lcd_data(unsigned char data) {
    *write_data_register = data;
}

/**
 * @brief Initializes the LCD with specific settings (e.g., display on, cursor off).
 * 
 * This function initializes the LCD to a known state by sending the necessary
 * initialization commands.
 * 
 * @param None
 * @return None
 */
void lcd_init() {
    write_control_register = (__xdata unsigned char *)(LCD_WRITE_CMD); // Ensure proper casting
    read_control_register = (__xdata unsigned char *)(LCD_READ_CMD);
    write_data_register = (__xdata unsigned char *)(LCD_WRITE_DATA);
    read_data_register = (__xdata unsigned char *)(LCD_READ_DATA);
    delay_ms(40);
    write_lcd_command(LCD_INIT_SYNC);
    delay_ms(5);
    write_lcd_command(LCD_INIT_SYNC);
    delay_ms(1);
    write_lcd_command(LCD_INIT_SYNC);
    delay_ms(2);
    write_lcd_command(LCD_INIT_SYNC_CMD);

    lcd_wait();
    write_lcd_command(LCD_DISPLAY_OFF_CMD);
    lcd_wait();
    write_lcd_command(LCD_DISPLAY_ON_CMD);
    lcd_wait();
    write_lcd_command(LCD_ENTRY_MODE_CMD);
    lcd_wait();
    write_lcd_command(LCD_CLEAR_CMD);
    lcd_wait();
}

/**
 * @brief Writes a single character to the LCD at the current cursor position.
 * 
 * This function writes a character to the LCD, advancing the cursor as needed.
 * 
 * @param c The character to display.
 * @return None
 */
void lcd_put_char(uint8_t c) {
    write_lcd_data(c);
    lcd_wait();
}

/**
 * @brief Clears the LCD display and resets the cursor to the home position.
 * 
 * This function clears the display and resets the cursor to the home position.
 * 
 * @param None
 * @return None
 */
void lcd_clear() {
    write_lcd_command(LCD_CLEAR_CMD);
    lcd_wait();
}

/**
 * @brief Reads and returns the current cursor position from the LCD.
 * 
 * This function reads the current cursor position (DDRAM address) from the LCD.
 * 
 * @param None
 * @return uint8_t The address of the cursor position.
 */
uint8_t lcd_get_cursor_position() {
    uint8_t address;
    lcd_wait(); // Ensure LCD is not busy
    address = *read_control_register & 0x7F; // Mask to get the lower 7 bits
    return address;
}

/**
 * @brief Displays a string on the LCD starting at the specified row and column.
 * 
 * This function writes a string to the LCD, starting at the specified row and
 * column. It handles the wrapping of the string across multiple rows if necessary.
 * 
 * @param str The string to display.
 * @param row The row index (0-3) where the string should start.
 * @param column The column index where the string should start.
 * @return None
 */
void lcd_put_string(char *str, uint8_t row, uint8_t column) __critical {
    uint8_t current_row = row;
    uint8_t char_count = 0;
    uint8_t char_count_to_check = CHAR_IN_FIRST_THREE_ROWS - column;

    lcd_go_toxy(row, column);
    while (*str) {
        if (char_count == char_count_to_check) { // Move to the next row after 16 characters
            char_count = 0;
            current_row = (current_row + 1) % 4;
            if (current_row == 3) {
                char_count_to_check = CHAR_IN_LAST_ROW;
            } else {
                char_count_to_check = CHAR_IN_FIRST_THREE_ROWS;
            }
            lcd_go_toxy(current_row, 0); // Set to beginning of next row
        }

        lcd_put_char(*str++); // Write the character
        char_count++;
    }
}

/**
 * @brief Sets the cursor to a specific DDRAM address on the LCD.
 * 
 * This function moves the cursor to the specified DDRAM address.
 * 
 * @param addr The DDRAM address to set.
 * @return None
 */
void lcd_go_to_ddram_addr(uint8_t addr) {
    write_lcd_command(0x80 | addr);
    lcd_wait();
}

/**
 * @brief Sets the cursor to a specific CGRAM address on the LCD.
 * 
 * This function moves the cursor to the specified CGRAM address.
 * 
 * @param addr The CGRAM address to set.
 * @return None
 */
void lcd_go_to_cgram_addr(uint8_t addr) {
    write_lcd_command(0x40 | addr);
    lcd_wait();
}

/**
 * @brief Moves the cursor to a specific row and column on the LCD.
 * 
 * This function moves the cursor to the specified row and column, allowing text
 * to be written at the desired position.
 * 
 * @param row The row index (0-3) where the cursor should move.
 * @param column The column index where the cursor should move.
 * @return None
 */
void lcd_go_toxy(uint8_t row, uint8_t column) {
    unsigned char address;

    if (row == 0) {
        address = ROW1_ADDR + column;  // First row
    } else if (row == 1) {
        address = ROW2_ADDR + column;  // Second row
    } else if (row == 2) {
        address = ROW3_ADDR + column;  // Third row (for Ds)
    } else {
        address = ROW4_ADDR + column;  // Fourth row (for 20x4 LCDs)
    }
    lcd_go_to_ddram_addr(address);
}
