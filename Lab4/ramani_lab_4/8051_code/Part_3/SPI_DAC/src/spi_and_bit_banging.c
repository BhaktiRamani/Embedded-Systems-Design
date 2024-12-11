/******************************************************************************
* File Name: spi_dac.c
* Description: This file implements SPI communication with DAC to generate 
*              a 20Hz sine wave using 8-bit DAC with 1000Hz sampling rate.
* 
* Author: Bhakti Ramani
* Date: 11/19/2024
* 
* Hardware Configuration:
* - MCU: 8051 (AT89C51ED2)
* - DAC: [DAC Model Number]
* - Connection Details:
*   - P1.1: Slave Select (SS)
*   - P1.5: MOSI
*   - P1.6: MISO
*   - P1.7: SCK
*
* Features:
* - 20Hz Sine Wave Generation
* - 1000Hz Sampling Rate (1ms interval)
* - 8-bit Resolution (0-255)
* - SPI Master Mode Configuration
******************************************************************************/

#include <mcs51/8051.h>        // Include the 8051 specific header for register definitions
#include <at89c51ed2.h>        // Include specific header for AT89C51ED2 microcontroller
#include <stdio.h>             // Standard input/output for printf
#include <stdint.h>            // Standard integer types for proper data sizes

#include "mannual_spi.h"       // Header file for manual SPI functions
#include "bit_banging_spi.h"   // Header file for SPI using bit-banging
#include "ui_user_input.h"     // Header file for user input functions
#include "waves.h"             // Header file for waveform generation data
#include "getchar_putchar.h"   // Header file for getchar/putchar handling

/**
 * @brief Main function to drive the SPI DAC communication and waveform generation.
 * 
 * The function displays the menu for user input, processes user commands,
 * and executes corresponding SPI-based operations to generate waveforms 
 * (sine or square wave) using the DAC.
 */
int main(void)
{
    // Display the menu to the user for selecting an operation
    display_menu();
    
    while(1)
    {
        // Get user input for selecting the waveform generation mode
        char user_input = getchar();
        printf("| $ %c\n\r", user_input);  // Display the selected option
        printf("\n\r");

        // Process the user input and perform corresponding operations
        switch(user_input)
        {
            case 'M':
                // Manual SPI mode (direct register control)
                spi_init();  // Initialize SPI for manual operation

                // Take user input for sine wave generation data
                unsigned char result = take_data();

                // Generate sine wave using manual SPI mode
                mannual_spi(result);
                printf(">> SIN WAVE GENERATION COMPLETE\n\r");  // Confirm completion
                break;
                    
            case 'B':
                // Bit-banging SPI mode (software SPI)
                bit_bang_spi_init();  // Initialize SPI for bit-banging

                // Take user input for square wave generation data
                unsigned char result2 = take_data();

                // Generate square wave using bit-banging SPI mode
                bit_bang_spi(result2);
                printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");  // Confirm completion

                // Re-initialize SPI for further operations
                spi_init();
                break;
                
                            case 'S':
                {
                    spi_init();
                    unsigned char result3 = take_data();
                    mannual_spi(result3);
                    printf(">> SIN WAVE GENERATION COMPLETE\n\r");
                    break;
                }

                    
                case 'T':
                {
                    spi_init();
                    unsigned char result4 = take_data();
                    spi_triangular_wave(result4);
                    printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
                    break;
                }
                    
                case 'R':
                {
                    unsigned char result5 = take_data();
                    spi_ramp_signal(result5);
                    printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
                    break;
                }

                case '?':
                    display_menu();
                    break;  
                
                default:
                    printf(">> INVALID INPUT\n\r");
                    break;
                    
            default:
                // Handle any other invalid input or menu options here
                printf("Invalid Option. Please try again.\n\r");
                break;
        }
    }
}

void display_menu(void) {
    printf(" ───────────┴───────────────────────────────────────────────\n\r");
    printf("│                        SPI PROGRAM                        │\n\r");
    printf("├───────────────────────────────────────────────────────────┤\n\r");
    printf("│  Command   │               Description                    │\n\r");
    printf("├───────────────────────────────────────────────────────────┤\n\r");
    printf("│    M      │ Manual SPI Mode (Direct Register Control)     │\n\r");
    printf("│    S      │ Generate Sine Wave                            │\n\r");
    printf("│    T      │ Generate Triangular Wave                      │\n\r");
    printf("│    R      │ Ramp wave                                     │\n\r");
    printf("│    ?      │ Display this help menu                        │\n\r");
    printf("└───────────┴───────────────────────────────────────────────┘\n\r");
    printf("\n\r>> Enter command: ");
}
