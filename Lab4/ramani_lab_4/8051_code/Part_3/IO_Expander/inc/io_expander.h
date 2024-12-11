/**
 * @file dac.h
 * @author Bhakti Ramani
 * @brief io_expanderA I2C I/O Expander Interface
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides interface for io_expanderA 8-bit I/O expander over I2C.
 * Implements pin-level and port-level read/write operations.
 * Used for LED control and switch input handling.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - io_expanderA I/O expander
 * - I2C interface for communication
 * - LED on pin 7
 * - Switch on pin 0
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _IO_EXPANDER_H_
#define _IO_EXPANDER_H_

#include <stdio.h>          /* Standard I/O functions */
#include <stdint.h>         /* Standard integer types */
#include <mcs51/8051.h>     /* 8051 specific definitions */
#include <at89c51ed2.h>     /* AT89C51ED2 specific definitions */
#include "i2c.h"           /* I2C communication interface */

/* io_expanderA I2C Address Configuration */
#define io_expander_I2C_ADDRESS         0x38    /* 7-bit base address for io_expanderA */
#define io_expander_I2C_WRITE_ADDRESS   (io_expander_I2C_ADDRESS << 1)     /* 0x70 */
#define io_expander_I2C_READ_ADDRESS    ((io_expander_I2C_ADDRESS << 1) | 1) /* 0x71 */

/* Pin Assignments */
#define SWITCH_PIN           0     /* Input switch connected to pin 0 */
#define LED_PIN              7     /* Output LED connected to pin 7 */

/**
 * @brief Reads the state of a specific pin
 * @param pin Pin number (0-7) to read
 * @return uint8_t Pin state (0 or 1)
 * @note Uses I2C read operation to get pin status
 */
uint8_t io_expander_read_pin(uint8_t pin);

/**
 * @brief Reads the entire 8-bit port state
 * @return uint8_t Current state of all pins
 * @note Performs complete I2C read transaction
 */
uint8_t io_expander_read_port(void);

/**
 * @brief Writes value to entire 8-bit port
 * @param value Byte to write to port
 * @note Updates all pins simultaneously
 */
void io_expander_write_port(uint8_t value);

/**
 * @brief Sets state of individual pin
 * @param pin Pin number (0-7) to modify
 * @param value Desired pin state (0 or 1)
 * @note Preserves other pin states
 */
void io_expander_set_pin(uint8_t pin, uint8_t value);

/**
 * @brief Initializes io_expanderA I/O expander
 * @note Sets up initial port configuration
 */
void io_expander_init();

#endif /* _DAC_H_ */