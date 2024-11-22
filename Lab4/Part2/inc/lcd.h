/****************************************************************************
 * @file lcd_commands.c
 * @author Bhakti Ramani
 * @brief LCD command handler functions.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file contains functions for handling LCD operations, including sending
 * commands, displaying characters, and creating custom characters. The functions
 * interact with the LCD through various commands to control its display and cursor.
 * 
 * @hardware_configuration
 * - MCU: 8051 (AT89C51ED2)
 * - LCD: [Specify LCD model and connection details]
 *
 * @features
 * - LCD initialization and control
 * - Displaying characters and strings
 * - Creating and displaying custom characters
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <stdint.h>


void lcd_wait(void);


void lcd_init(void);

void lcd_put_char(uint8_t c);

void lcd_put_string(char *str,uint8_t row,uint8_t column);

void lcd_clear(void);

void lcd_go_toxy(uint8_t row,uint8_t column);

void lcd_go_to_ddram_addr(uint8_t addr);

void lcd_create_char(unsigned char ccode, unsigned char row_vals[]);
void display_custom_char(unsigned char ccode);