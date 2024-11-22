/**
 * @file eeprom.h
 * @author Bhakti Ramani
 * @brief EEPROM interface and operations
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Defines interfaces for X24C02 EEPROM operations including read,
 * write, reset, and memory dump functions. Handles I2C communication
 * and memory address management for 2KB EEPROM.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - X24C02 EEPROM (2KB)
 * - I2C interface
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _EEPROM_H_
#define _EEPROM_H_

/* I2C Operation Mode Definitions */
#define READ 0x01           /* I2C Read operation bit */
#define WRITE 0x00          /* I2C Write operation bit */
#define EEPROM_ID 0xA0      /* Device identifier for X24C02 EEPROM */

/* EEPROM Memory Constants */
#define MAX_HEX_CHAR_IN_SINGLE_LINE 16   /* Maximum characters per line in hex dump */
#define ADDR_MAX 0x7ff                   /* Maximum EEPROM address (2KB - 1) */

#include "stdint.h"              /* Standard integer types */
#include <mcs51/8051.h>         /* 8051 specific definitions */
#include <at89c51ed2.h>         /* AT89C51ED2 specific definitions */
#include <stdio.h>              /* Standard I/O functions */
#include "i2c.h"               /* I2C communication interface */
#include "ui_user_input.h"     /* User interface functions */
#include "getchar_putchar.h"   /* UART interface functions */

/**
 * @brief Writes a byte to specified EEPROM address
 * @param address Target EEPROM address (0x000 to 0x7FF)
 * @param data Byte to write
 * @return int 0 on success, non-zero on failure
 * @note Handles I2C communication and address validation
 */
int eeprom_write(unsigned int address, unsigned char data);

/**
 * @brief Reads a byte from specified EEPROM address
 * @param address Target EEPROM address (0x000 to 0x7FF)
 * @return int Read byte value or error code
 * @note Handles I2C communication and address validation
 */
int eeprom_read(unsigned int address);

/**
 * @brief Resets EEPROM to initial state
 * @note Performs full memory reset operation
 */
void eeprom_reset();

/**
 * @brief Handles EEPROM hexadecimal dump operation
 * @note Manages user interface for memory dump
 */
void handler_EEPROM_hexdump(void);

/**
 * @brief Performs hexadecimal dump of EEPROM memory range
 * @param start_address Starting memory address
 * @param end_address Ending memory address
 * @return int 0 on success, non-zero on failure
 * @note Displays memory contents in formatted hex output
 */
int EEPROM_hexump(uint16_t start_address, uint16_t end_address);

#endif /* _EEPROM_H_ */