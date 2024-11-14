/* ---------------------------------------------------------------------------------
 * @Author: Induja Narayanan <Induja.Narayanan@in.bosch.com>
 * ECEN 5613, Memory Allocator Utility
 * Fall 2024, Prof.McClure
 * University of Colorado at Boulder
 *  --------------------------------------------------------------------------------
 * This file contains the main function for the memory allocator uitlity as described
 * in Lab3 Part 2 question. Has a state machine implemented to handle the various inputs
 * from users , parse and take necessary actions.
 * ---------------------------------------------------------------------------------*/

#include <string.h>
#include <stdint.h>
#include "at89c51ed2.h"
#include <mcs51reg.h>

// Pin definitions for LCD interface

#define LCD_RS  P1_5
#define LCD_RW  P1_6
#define LCD_EN  P1_7
#define LCD_DATA P0    // LCD data pins connected to Port 0


// Delay function (approximately 1ms at 12MHz)
void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
}


// LCD commands
#define LCD_CLEAR           0x01    // Clear display
#define LCD_HOME            0x02    // Return home
#define LCD_ENTRY_MODE      0x06    // Increment cursor, no display shift
#define LCD_DISPLAY_ON      0x0F    // Display on, cursor on, blink on
#define LCD_FUNCTION_SET    0x38    // 8-bit mode, 2 lines, 5x7 dots
#define LCD_SET_CURSOR      0x80    // Set DDRAM address command



// Function to check if LCD is busy
void lcd_wait(void) {
    unsigned char busy;

    //give port 0 a 0xFF data
    LCD_DATA = 0xFF;           // Set LCD data port as input

    //command mode
    LCD_RS = 0;               // Command mode
    LCD_RW = 1;               // Read mode

    do {
        LCD_EN = 1;           // Enable high
        delay_ms(1);          // Small delay
        busy = LCD_DATA;      // Read busy flag
        LCD_EN = 0;           // Enable low
        delay_ms(1);          // Small delay
    } while (busy & 0x80);    // Check busy flag

    LCD_DATA = 0x00;
    LCD_RW = 0;               // Write mode
}

// Function to send instruction to LCD
void lcd_instruction(unsigned char command)
{
    lcd_wait();               // Wait until LCD is ready
    P0 = command;       // Send command
    LCD_RS = 0;              // Select command register
    LCD_RW = 0;              // Write mode
    LCD_EN = 1; 
    delay_ms(1);
    LCD_EN = 0;              // Enable low

    // delay_ms(1);             // Small delay
}

// Function to print character on LCD
void print_char(unsigned char c) {
    lcd_wait();               // Wait until LCD is ready
    P0 =  c;            // Send character
    LCD_RS = 1;              // Select data register
    LCD_RW = 0;              // Write mode

    //LCD_EN = 0;
    
    LCD_EN = 1;              // Enable high
    delay_ms(1);             // Small delay
    LCD_EN = 0;              // Enable low
    //delay_ms(5);             // Small delay
}

// Function to print string on LCD
void print_string(char *str)
{
    while (*str) print_char(*str++);
}

// Function to initialize LCD
void lcd_init(void) {
    delay_ms(20);            // Power-on delay

    //lcd_instruction(LCD_CLEAR);           // Clear display
    lcd_instruction(LCD_FUNCTION_SET);    // 8-bit mode, 2 lines, 5x7 dots
    // delay_ms(5);
    // lcd_instruction(LCD_FUNCTION_SET);    // Repeat command
    // delay_ms(1);
    // lcd_instruction(LCD_FUNCTION_SET);    // Repeat command

    lcd_instruction(LCD_DISPLAY_ON);      // Display ON, cursor ON, blink ON
    lcd_instruction(LCD_ENTRY_MODE);      // Entry mode set
    lcd_instruction(LCD_CLEAR);           // Clear display
    lcd_instruction(LCD_SET_CURSOR);

}

// Main function example
void main(void) {
    delay_ms(40);
    // Initialize LCD
    lcd_init();
    
    print_char('H');
    // Print "Hello World!"
    // print_string("Hello World!");

    // Main loop
    while(1) 
    {
        // Your main program loop here
    }
}
