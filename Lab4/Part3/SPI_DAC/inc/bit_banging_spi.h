/****************************************************************************
 * @file bit_banging.h
 * @author Bhakti Ramani
 * @brief Header file for SPI communication using bit-banging technique.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements SPI communication using the bit-banging method. This allows 
 * for serial data transfer using general-purpose I/O pins instead of relying 
 * on dedicated hardware SPI peripherals. It includes configuration for timing, 
 * data width, and pin definitions.
 * 
 * @note
 * - Assumes a 12 MHz crystal frequency.
 * - Implements a 16-bit SPI data width, with MSB first transmission.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#ifndef BIT_BANGING_H_
#define BIT_BANGING_H_

#include "delay_ms.h"

/* Pin State Definitions */
/** Defines the state of the clock line as HIGH */
#define CLOCK_HIGH       1
/** Defines the state of the clock line as LOW */
#define CLOCK_LOW        0
/** Defines the state of the data line as HIGH */
#define DATA_HIGH        1
/** Defines the state of the data line as LOW */
#define DATA_LOW         0
/** Defines the slave select line as active */
#define SLAVE_SELECT_ACTIVE    0
/** Defines the slave select line as inactive */
#define SLAVE_SELECT_INACTIVE  1

/* SPI Configuration */
/** Defines the width of SPI data in bits (16 bits) */
#define SPI_DATA_WIDTH   16
/** Mask for the most significant bit (MSB) in a 16-bit data */
#define MSB_FIRST_MASK   0x8000
/** Initial value for the SPI control register */
#define SPI_INIT_VALUE   0

/* Timing Constants */
/** Defines the crystal frequency in Hz (12 MHz) */
#define CRYSTAL_FREQ     12000000
/** Defines the delay loop count for 1ms at a 12 MHz crystal */
#define DELAY_LOOP_COUNT 123
/** Test data pattern for SPI communication */
#define TEST_DATA        0x1FF0
/** Idle data pattern when no transmission is taking place */
#define IDLE_DATA        0x1000
/** Defines the delay period in milliseconds */
#define DELAY_PERIOD     500

/* Pin Definitions */
/** Pin for Serial Clock Line (SCL) */
#define SCL P1_6
/** Pin for Serial Data Line (SDA) */
#define SDA P1_7
/** Pin for Slave Select (Chip Select) */
#define SS  P1_1

/**
 * @brief Transmits a byte of data using SPI in bit-banging mode.
 * 
 * This function manually sends a single byte of data bit-by-bit, controlling 
 * the clock and data lines as necessary.
 * 
 * @param number The byte of data to be transmitted.
 */
void bit_bang_spi(unsigned char number);

/**
 * @brief Initializes the SPI communication in bit-banging mode.
 * 
 * This function configures the necessary pins and prepares the microcontroller 
 * for manual SPI data transmission.
 */
void bit_bang_spi_init(void);

/**
 * @brief Writes 16 bits of data to the SPI bus in bit-banging mode.
 * 
 * This function transmits a 16-bit data value, one bit at a time, using the 
 * configured clock and data lines.
 * 
 * @param data The 16-bit data to be written to the SPI bus.
 * @return int Status of the write operation (0 for success).
 */
int bit_bang_spi_write(uint16_t data);

#endif /* BIT_BANGING_H_ */
