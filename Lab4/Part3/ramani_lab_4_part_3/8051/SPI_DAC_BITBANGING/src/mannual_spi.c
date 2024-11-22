/****************************************************************************
 * @file mannual_spi.c
 * @author Bhakti Ramani
 * @brief Manual SPI communication implementation for DAC control.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file provides the implementation of SPI communication using manual
 * control of the clock and data lines (bit-banging). The communication is
 * used to send data to a DAC for generating waveforms (e.g., sine wave) with 
 * 8-bit resolution.
 * 
 * The functions in this file manage the transmission of data, including
 * setting the SPI control signals and transmitting both the high and low 
 * bytes of data for each waveform sample.
 * 
 * @hardware_configuration
 * - MCU: 8051 (AT89C51ED2)
 * - DAC: [DAC Model Number]
 * - Connection Details:
 *   - P1.1: Slave Select (SS)
 *   - P1.5: MOSI
 *   - P1.6: MISO
 *   - P1.7: SCK
 *
 * @features
 * - Manual SPI Mode (bit-banging)
 * - Sine Wave Generation using DAC
 * - 8-bit Resolution (0-255)
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/
#include "mannual_spi.h"

/**
 * @brief Generates a sine wave and sends the corresponding data to the DAC.
 * 
 * This function generates a sine wave using the precomputed lookup table
 * (`dac_values`) and sends the data to the DAC via SPI. The data is sent in 
 * two-byte chunks: the high byte and the low byte.
 * 
 * The waveform generation operates in cycles, and the DAC is updated with
 * each new value from the sine wave lookup table.
 * 
 * @param number The number of times to generate the sine wave (determines the duration of the output).
 */
void mannual_spi(unsigned char number)
{
    int dac_value_index = 0;   // Index for the sine wave lookup table
    int dac_data = 0;          // Holds the current sine wave data value
    int high_byte, low_byte;   // Holds the formatted high and low bytes for SPI transmission
    
    // Loop for generating the sine wave and sending data
    while (number > 0)
    {
        // Generate the sine wave and send data in 256 samples
        for (int i = 0; i < 256; i++)
        {
            /* Calculate or lookup the next sine wave value */
            if (dac_value_index < SINE_MAX_INDEX)
            {
                // Lookup the sine wave value from the precomputed table
                dac_data = dac_values[dac_value_index];
            }
            else
            {
                // Reset the index to start the next cycle
                dac_value_index = 0;
            }

            // Format the high byte: Channel A, 1x gain, active mode
            high_byte = 0x10 | ((dac_data >> 4) & 0x0F);

            // Format the low byte: Lower 4 bits of data, shifted left by 4 positions
            low_byte = (dac_data & 0x0F) << 4;

            // Begin transmission to the DAC
            P1_1 = 0;  // Activate the DAC by setting Slave Select (SS) low

            // Send the high byte (most significant bits)
            SPDAT = high_byte;  // Write high byte to SPI data register
            while (!(SPSTA & (1 << 7)));  // Wait for transmission to complete

            // Send the low byte (least significant bits)
            SPDAT = low_byte;  // Write low byte to SPI data register
            while (!(SPSTA & (1 << 7)));  // Wait for transmission to complete

            P1_1 = 1;  // Deactivate the DAC by setting Slave Select (SS) high

            // Increment the DAC index for the next cycle
            dac_value_index++;
        }

        // Decrement the number of iterations
        number = number - 1;
    }
}

/**
 * @brief Initializes the SPI peripheral.
 * 
 * Configures the SPI peripheral with the following settings:
 * - Master mode: The 8051 microcontroller acts as the SPI master.
 * - Clock polarity: Active high.
 * - Data sampled on the first clock edge.
 * - Clock frequency: fclk/128.
 * - SPI interrupts enabled (if applicable).
 */
void spi_init(void)
{
    // Reset SPI control register (currently commented out as it's not needed)
    // SPCON = 0;

    // Set SPI configurations using the SPI control register (SPCON)
    SPCON |= 0x10;  // Enable SPI, set master mode
    SPCON |= 0x20;  // Set clock polarity (CPOL), active high
    SPCON |= 0x40;  // Enable the SPI clock (fclk/128)
    
    // Additional configuration for SPI if necessary (commented out for now)
    // SPCON |= 0x82;  // Configure other SPI settings like phase and clock polarity
    // SPCON |= 0x40;  // Enable SPI interrupts (if applicable)
}
