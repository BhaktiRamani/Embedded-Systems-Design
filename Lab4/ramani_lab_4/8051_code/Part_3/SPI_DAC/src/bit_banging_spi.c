/****************************************************************************
 * @file bit_banging_spi.c
 * @author Bhakti Ramani
 * @brief Bit-banging SPI communication implementation.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file provides SPI communication through bit-banging, where the
 * communication is manually handled using general-purpose I/O pins instead
 * of the microcontroller's dedicated SPI hardware. The functions here 
 * include initializing the SPI bus, sending data, and generating a square wave.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <mcs51/8051.h>         // Include 8051 specific header for register definitions
#include <at89c51ed2.h>         // Include specific header for AT89C51ED2 microcontroller
#include <stdio.h>              // Standard input/output for printf
#include <stdint.h>             // Standard integer types for proper data sizes
#include "bit_banging_spi.h"    // Header file for SPI communication via bit-banging

/**
 * @brief Sends a square wave using SPI bit-banging.
 * 
 * This function sends a square wave by writing a test pattern to the SPI bus
 * repeatedly with a delay between each transmission. The transmission is done
 * using bit-banging (manual control of the clock and data lines).
 * 
 * @param number The number of square waves to generate and send.
 */
void bit_bang_spi(unsigned char number)
{
    while (number > 0)
    {
        // Send a square wave by transmitting the TEST_DATA pattern
        bit_bang_spi_write(TEST_DATA);
        delay_ms(DELAY_PERIOD);  // Wait for a delay period
        
        // Send idle data to set the line to idle state
        bit_bang_spi_write(IDLE_DATA);
        delay_ms(DELAY_PERIOD);  // Wait for a delay period
        
        // Decrement the counter for the next wave
        number = number - 1;
    }    
}

/**
 * @brief Initializes the SPI bus for bit-banging communication.
 * 
 * This function configures the SPI bus for bit-banging by setting the clock
 * and data lines to their initial states and deactivating the slave select.
 */
void bit_bang_spi_init(void) 
{
    SPCON = SPI_INIT_VALUE;          // Clear the SPI control register
    SDA = DATA_HIGH;                 // Set data line high (idle state)
    SCL = CLOCK_LOW;                 // Set clock line low (idle state)
    SS = SLAVE_SELECT_INACTIVE;      // Set slave select inactive (high)
}

/**
 * @brief Writes 16 bits of data to the SPI bus using bit-banging.
 * 
 * This function sends 16 bits of data to the SPI bus, sending each bit one-by-one
 * with the most significant bit (MSB) first. It manually controls the clock and
 * data lines for each bit transmitted.
 * 
 * @param data The 16-bit data to be transmitted.
 * @return int Returns 0 after the operation is completed.
 */
int bit_bang_spi_write(uint16_t data) 
{
    unsigned int i;
    
    // Assert slave select (active low)
    SS = SLAVE_SELECT_ACTIVE;        
    
    /* Transmit data bits (MSB first) */
    for (i = 0; i < SPI_DATA_WIDTH; i++) 
    {
        // Set the data line to the MSB (most significant bit)
        SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    // MSB first
        
        // Generate clock pulses (clock high and then clock low)
        SCL = CLOCK_HIGH;            // Clock high
        SCL = CLOCK_LOW;             // Clock low
        
        // Shift data to send the next bit
        data <<= 1;                  // Shift data to the left (next bit)
    }
    
    // Set stop/idle condition after transmission is done
    SS = SLAVE_SELECT_INACTIVE;      // Deassert slave select (inactive)
    SCL = CLOCK_LOW;                 // Ensure clock is low after the transmission
    SDA = DATA_HIGH;                 // Set data line back to idle state (high)
    
    return 0;
}
