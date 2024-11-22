/****************************************************************************
 * @file mannual_spi.h
 * @author Bhakti Ramani
 * @brief Header file for SPI communication in manual mode using 8051.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Defines prototypes for SPI initialization and data transmission functions.
 * Includes configurations and constants for generating sine waveforms using SPI.
 * 
 * @note
 * - Uses manual SPI bit-banging.
 * - Integrates with `waves.h` for sine waveform data.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#ifndef _MANNUAL_SPI_H_
#define _MANNUAL_SPI_H_

#include "waves.h"
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdio.h>
#include <stdint.h>

/** Maximum index for sine table (SINE_SAMPLES - 1) */
#define SINE_MAX_INDEX 256

/**
 * @brief Sends a single byte of data over SPI in manual mode.
 * 
 * Implements SPI communication using software bit-banging to transfer
 * data to a connected SPI device.
 * 
 * @param number The data byte to be transmitted.
 */
void mannual_spi(unsigned char number);

/**
 * @brief Initializes SPI in manual mode.
 * 
 * Configures GPIO pins for SPI communication. Sets up the 8051 microcontroller
 * to perform software SPI with connected peripherals.
 */
void spi_init(void);

#endif /* _MANNUAL_SPI_H_ */
