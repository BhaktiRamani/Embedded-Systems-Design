/**
 * @file ui_user_input.h
 * @author Bhakti Ramani
 * @brief User interface handling for EEPROM operations
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This header provides interfaces for handling user input and menu operations
 * for EEPROM interaction. Includes functions for data input validation,
 * address range checking, and command menu display.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - Serial interface for user interaction
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _USER_INPUT_H_
#define _USER_INPUT_H_

#include "stdio.h"    /* Standard I/O functions */
#include "stdint.h"   /* Standard integer types */
#include "getchar_putchar.h"  /* Custom UART I/O functions */

/**
 * @brief Captures and validates user input for EEPROM data
 * @return unsigned char Valid data byte for EEPROM
 * @note Handles data validation within acceptable range
 */
unsigned char take_data();

/**
 * @brief Captures and validates EEPROM address input
 * @return unsigned int Valid EEPROM address
 * @note Ensures address is within EEPROM bounds
 */
unsigned int take_address();

/**
 * @brief Displays available command menu options
 * @note Presents user with valid operation choices
 */
void command_menu();

/**
 * @brief Main user interface handler
 * @note Manages user interaction flow
 */
void ui();

/* Global State Variables */
extern int address_range_flag;  /* Tracks if address is within valid range */
extern int data_range_flag;     /* Tracks if data is within valid range */
extern unsigned int block;      /* Current memory block being accessed */

#endif /* _USER_INPUT_H_ */