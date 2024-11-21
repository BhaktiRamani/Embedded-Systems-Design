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

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include<stdio.h>
#include<stdint.h>

/* SPI Register Bit Definitions */
#define SPI_MASTER_MODE    (1<<4)  // Master mode select bit
#define SPI_CPOL_HIGH      (1<<3)  // Clock polarity select bit (1 = active high)
#define SPI_CPHA_FIRST     (1<<2)  // Clock phase select bit (0 = sample on first edge)
#define SPI_ENABLE         (1<<6)  // SPI enable bit
#define SPI_SSDIS          (1<<5)  // SSDIS bit

/* Clock Configuration */
#define SPI_CLK_DIV_2    0x00    // Frequency divider for fclk/128

/* Interrupt Configuration */
#define SPI_INT_ENABLE     (1<<3)  // SPI interrupt enable bit in IEN1
#define GLOBAL_INT_ENABLE  1       // Global interrupt enable bit

/* DAC Configuration for MCP4802 */
#define DAC_CHANNEL_A    0x00    // 0 for DAC A, 1 for DAC B
#define DAC_CHANNEL_B    0x80    // Bit 7 of high byte
#define DAC_GAIN_1X     0x20    // Bit 5 of high byte
#define DAC_GAIN_2X     0x00    // Default gain
#define DAC_ACTIVE      0x10    // Bit 4 of high byte (SHDN)

/* Sine Wave Parameters */
#define SINE_SAMPLES      50      // Number of samples per sine wave cycle
#define SINE_MAX_INDEX    49      // Maximum index for sine table (SINE_SAMPLES - 1)

/* Timer0 Configuration for 1ms */
#define TIMER0_VALUE  (0xFC66)     // Negative of number of machine cycles for 1ms
#define TH0_RELOAD    ((TIMER0_VALUE >> 8) & 0xFF)
#define TL0_RELOAD    (TIMER0_VALUE & 0xFF)

/* Timer Control Bits */
#define TIMER0_MODE1  0x01    // Mode 1 (16-bit)
#define TIMER0_RUN    0x10    // Start timer
#define TIMER0_INT    0x02    // Timer0 interrupt enable

volatile unsigned char ms_flag = 0;  // Flag for 1ms interval

/* Function Prototypes */
void spi_init(void);
void spi_transmission_start(void);
void spi_transmission_stop(void);
void timer0_init(void);

/* Global Variables */
volatile int transmission_complete = 0;  // Flag for SPI transmission status

/* Sine Wave Lookup Table - Could be used instead of real-time calculation */
const int dac_values[SINE_SAMPLES] = {
    128, 143, 159, 174, 189, 202, 215, 226, 235, 243,
    249, 253, 255, 255, 253, 249, 243, 235, 226, 215,
    202, 189, 174, 159, 143, 128, 112, 96,  81,  66,
    53,  40,  29,  20,  12,  6,   2,   0,   0,   2,
    6,   12,  20,  29,  40,  53,  66,  81,  96,  112
};

/**
 * @brief Sends a character to the serial port
 * @param charToSend Character to be transmitted
 * @return The character that was sent
 */
int putchar(int charToSend) {
    SBUF = charToSend;       /* Load character into serial buffer */
    while (!TI);             /* Wait for transmission completion */
    TI = 0;                  /* Clear transmission flag */
    return charToSend;
}

/**
 * @brief Receives a character from the serial port
 * @return The received character
 */
int getchar(void) {
    while (!RI);             /* Wait for reception completion */
    RI = 0;                  /* Clear reception flag */
    return SBUF;             /* Return received character */
}

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
}
int main(void)
{
    printf(" SPI DAC PROGRAM\n\r");
    /* Initialize variables */
    int dac_value_index = 0;
    int dac_data = 0;


    EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts

    /* Initialize SPI */
    spi_init();
    //spi_transmission_start();

    printf("SPI TRANSMISSION STARTED\n\r");


    int high_byte, low_byte;
    //timer0_init();

    while(1)
    {
        printf("while start\n\r");
        /* Calculate or lookup next sine wave value */
        if(dac_value_index < SINE_MAX_INDEX)
        {

            /* Alternatively, use lookup table:*/
            dac_data = dac_values[dac_value_index];
        }
        else
        {
            dac_value_index = 0;  // Reset index for next cycle

        }

                    // Format high byte: Channel A, 1x gain, Active
        high_byte = DAC_CHANNEL_A | DAC_GAIN_1X | DAC_ACTIVE |
                       ((dac_data >> 4) & 0x0F);

            // Format low byte: Lower 4 bits of data, shifted left 4 positions
        low_byte = (dac_data & 0x0F) << 4;

        // while(!ms_flag);
        // ms_flag = 0;

        delay_ms(10);
        
        // Begin transmission
        P1_1 = 0;  // Select DAC

        printf("Low byte %d\n\r", low_byte);
        printf("High byte %d\n\r", high_byte);

        // Send high byte
        SPDAT = high_byte;
        while(!transmission_complete);
        transmission_complete = 0;

            // Send low byte
        SPDAT = low_byte;
        while(!transmission_complete);
        transmission_complete = 0;

        P1_1 = 1;  // Deselect DAC
        while(!transmission_complete);
        transmission_complete = 0;

        dac_value_index++;
    }
}

void timer0_init(void)
{
    TMOD &= 0xF0;    // Clear Timer0 mode bits
    TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
    
    // Load Timer0 values for 1ms
    TH0 = TH0_RELOAD;
    TL0 = TL0_RELOAD;
    
    ET0 = 1;         // Enable Timer0 interrupt
    TR0 = 1;         // Start Timer0
}

// Timer0 ISR
void timer0_isr(void) __interrupt 1
{
    // Reload timer values
    TH0 = 0x4B;
    TL0 = 0x1C;
    
    ms_flag = 1;     // Set 1ms flag
    //P1_0 = !P1_0;    // Toggle P1.0 for verification
    printf("T \n\r");
    

}

/**
 * @brief SPI Interrupt Service Routine
 * 
 * Handles SPI transmission completion interrupt
 * SPSTA value of 0x80 indicates successful transmission
 */
void spi_isr(void) __interrupt 9
{
    if(SPSTA == 0x80)  // Check for successful transmission
    {
        transmission_complete = 1;
        printf("spi isr \n\r");
    }
    
}

/**
 * @brief Initializes the SPI peripheral
 * 
 * Configures SPI with the following settings:
 * - Master mode
 * - Clock polarity active high
 * - Data sampled on first clock edge
 * - Clock frequency = fclk/128
 * - Enables SPI interrupts
 */
void spi_init(void) 
{
    // Reset SPI control register
    SPCON = 0;
    
    // //enable master by slave select
    // P1_1 = 1;
    
    // Configure SPI mode and clock settings
   /* SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
    SPCON |= SPI_MASTER_MODE;      // Set as master
    SPCON |= SPI_CPOL_HIGH;        // Clock polarity active high
    SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge */
    SPCON &= ~SPI_SSDIS;
    
    SPCON |= 0x10;
    P1_1 = 1;
    SPCON |= 0x82;
    SPCON &= ~0x08;
    SPCON |= 0x40;
    

    
    // Enable interrupts
    IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt

}

/**
 * @brief Starts SPI transmission
 * 
 * Sets the SPI enable bit to begin transmission
 */
void spi_transmission_start(void)
{
    SPCON |= SPI_ENABLE;           // Enable SPI
    P1_1 = 0;
}

/**
 * @brief Stops SPI transmission
 * 
 * Clears the SPI enable bit to stop transmission
 */
void spi_transmission_stop(void) 
{
    SPCON &= ~SPI_ENABLE;          // Disable SPI
}
