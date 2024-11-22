/**
 * @file dac.h
 * @author Bhakti Ramani
 * @brief PCF8574A I2C I/O Expander Interface
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides interface for PCF8574A 8-bit I/O expander over I2C.
 * Implements pin-level and port-level read/write operations.
 * Used for LED control and switch input handling.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - PCF8574A I/O expander
 * - I2C interface for communication
 * - LED on pin 7
 * - Switch on pin 0
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _DAC_H_
#define _DAC_H_

#include <stdio.h>          /* Standard I/O functions */
#include <stdint.h>         /* Standard integer types */
#include <mcs51/8051.h>     /* 8051 specific definitions */
#include <at89c51ed2.h>     /* AT89C51ED2 specific definitions */
#include "i2c.h"           /* I2C communication interface */

/* PCF8574A I2C Address Configuration */
#define PCF8574_I2C_ADDRESS         0x38    /* 7-bit base address for PCF8574A */
#define PCF8574_I2C_WRITE_ADDRESS   (PCF8574_I2C_ADDRESS << 1)     /* 0x70 */
#define PCF8574_I2C_READ_ADDRESS    ((PCF8574_I2C_ADDRESS << 1) | 1) /* 0x71 */

/* Pin Assignments */
#define SWITCH_PIN           0     /* Input switch connected to pin 0 */
#define LED_PIN              7     /* Output LED connected to pin 7 */

/**
 * @brief Reads the state of a specific pin
 * @param pin Pin number (0-7) to read
 * @return uint8_t Pin state (0 or 1)
 * @note Uses I2C read operation to get pin status
 */
uint8_t pcf8574_read_pin(uint8_t pin);

/**
 * @brief Reads the entire 8-bit port state
 * @return uint8_t Current state of all pins
 * @note Performs complete I2C read transaction
 */
uint8_t pcf8574_read_port(void);

/**
 * @brief Writes value to entire 8-bit port
 * @param value Byte to write to port
 * @note Updates all pins simultaneously
 */
void pcf8574_write_port(uint8_t value);

/**
 * @brief Sets state of individual pin
 * @param pin Pin number (0-7) to modify
 * @param value Desired pin state (0 or 1)
 * @note Preserves other pin states
 */
void pcf8574_set_pin(uint8_t pin, uint8_t value);

/**
 * @brief Initializes PCF8574A I/O expander
 * @note Sets up initial port configuration
 */
void pcf8574_init();

#endif /* _DAC_H_ */