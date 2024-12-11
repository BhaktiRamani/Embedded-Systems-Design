/**
 * @file i2c.h
 * @author Bhakti Ramani
 * @brief I2C protocol implementation for EEPROM communication
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements bit-banged I2C protocol for communication with EEPROM.
 * Provides low-level I2C bus operations including start/stop conditions,
 * byte read/write with acknowledgment handling.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - I2C bus on P1.3 (SCL) and P1.4 (SDA)
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _I2C_H_
#define _I2C_H_

#include <stdio.h>           /* Standard I/O functions */
#include <mcs51/8051.h>     /* 8051 specific definitions */
#include <at89c51ed2.h>     /* AT89C51ED2 specific definitions */
#include "eeprom.h"         /* EEPROM specific definitions */

/* I2C Pin Definitions */
#define SCL P1_3    /* Serial Clock Line on P1.3 */
#define SDA P1_4    /* Serial Data Line on P1.4 */

/**
 * @brief Writes a byte to the I2C bus
 * @param data Byte to be transmitted
 * @return int 0 on success, non-zero on failure
 * @note Handles bit-banged transmission with acknowledgment check
 */
int i2c_write(unsigned char data);

/**
 * @brief Reads a byte from the I2C bus
 * @param ACK Acknowledgment bit to send after reading
 * @return int Read byte value
 * @note Handles bit-banged reception with optional ACK/NACK
 */
int i2c_read(int ACK);

/**
 * @brief Generates I2C start condition
 * @note Ensures proper timing for bus state changes
 */
void i2c_start(void);

/**
 * @brief Generates I2C stop condition
 * @note Ensures proper timing for bus release
 */
void i2c_stop(void);

/**
 * @brief Provides timing delay for I2C operations
 * @note Ensures proper I2C bus timing requirements
 */
void i2c_delay();

#endif /* _I2C_H_ */