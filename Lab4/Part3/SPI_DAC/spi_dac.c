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
// const int dac_values[SINE_SAMPLES] = {
//     // Up (0 to 255)
//     0,   1,   2,   3,   4,   5,   6,   7,   // 0-7
//     8,   9,   10,  11,  12,  13,  14,  15,  // 8-15
//     16,  17,  18,  19,  20,  21,  22,  23,  // 16-23
//     24,  25,  26,  27,  28,  29,  30,  31,  // 24-31
//     32,  33,  34,  35,  36,  37,  38,  39,  // 32-39
//     40,  41,  42,  43,  44,  45,  46,  47,  // 40-47
//     48,  49,  50,  51,  52,  53,  54,  55,  // 48-55
//     56,  57,  58,  59,  60,  61,  62,  63,  // 56-63
//     64,  65,  66,  67,  68,  69,  70,  71,  // 64-71
//     72,  73,  74,  75,  76,  77,  78,  79,  // 72-79
//     80,  81,  82,  83,  84,  85,  86,  87,  // 80-87
//     88,  89,  90,  91,  92,  93,  94,  95,  // 88-95
//     96,  97,  98,  99,  100, 101, 102, 103, // 96-103
//     104, 105, 106, 107, 108, 109, 110, 111, // 104-111
//     112, 113, 114, 115, 116, 117, 118, 119, // 112-119
//     120, 121, 122, 123, 124, 125, 126, 127, // 120-127
//     128, 129, 130, 131, 132, 133, 134, 135, // 128-135
//     136, 137, 138, 139, 140, 141, 142, 143, // 136-143
//     144, 145, 146, 147, 148, 149, 150, 151, // 144-151
//     152, 153, 154, 155, 156, 157, 158, 159, // 152-159
//     160, 161, 162, 163, 164, 165, 166, 167, // 160-167
//     168, 169, 170, 171, 172, 173, 174, 175, // 168-175
//     176, 177, 178, 179, 180, 181, 182, 183, // 176-183
//     184, 185, 186, 187, 188, 189, 190, 191, // 184-191
//     192, 193, 194, 195, 196, 197, 198, 199, // 192-199
//     200, 201, 202, 203, 204, 205, 206, 207, // 200-207
//     208, 209, 210, 211, 212, 213, 214, 215, // 208-215
//     216, 217, 218, 219, 220, 221, 222, 223, // 216-223
//     224, 225, 226, 227, 228, 229, 230, 231, // 224-231
//     232, 233, 234, 235, 236, 237, 238, 239, // 232-239
//     240, 241, 242, 243, 244, 245, 246, 247, // 240-247
//     248, 249, 250, 251, 252, 253, 254, 255, // 248-255

//     // Down (255 to 0)
//     255, 254, 253, 252, 251, 250, 249, 248, // 256-263
//     247, 246, 245, 244, 243, 242, 241, 240, // 264-271
//     239, 238, 237, 236, 235, 234, 233, 232, // 272-279
//     231, 230, 229, 228, 227, 226, 225, 224, // 280-287
//     223, 222, 221, 220, 219, 218, 217, 216, // 288-295
//     215, 214, 213, 212, 211, 210, 209, 208, // 296-303
//     207, 206, 205, 204, 203, 202, 201, 200, // 304-311
//     199, 198, 197, 196, 195, 194, 193, 192, // 312-319
//     191, 190, 189, 188, 187, 186, 185, 184, // 320-327
//     183, 182, 181, 180, 179, 178, 177, 176, // 328-335
//     175, 174, 173, 172, 171, 170, 169, 168, // 336-343
//     167, 166, 165, 164, 163, 162, 161, 160, // 344-351
//     159, 158, 157, 156, 155, 154, 153, 152, // 352-359
//     151, 150, 149, 148, 147, 146, 145, 144, // 360-367
//     143, 142, 141, 140, 139, 138, 137, 136, // 368-375
//     135, 134, 133, 132, 131, 130, 129, 128, // 376-383
//     127, 126, 125, 124, 123, 122, 121, 120, // 384-391
//     119, 118, 117, 116, 115, 114, 113, 112, // 392-399
//     111, 110, 109, 108, 107, 106, 105, 104, // 400-407
//     103, 102, 101, 100, 99,  98,  97,  96,  // 408-415
//     95,  94,  93,  92,  91,  90,  89,  88,  // 416-423
//     87,  86,  85,  84,  83,  82,  81,  80,  // 424-431
//     79,  78,  77,  76,  75,  74,  73,  72,  // 432-439
//     71,  70,  69,  68,  67,  66,  65,  64,  // 440-447
//     63,  62,  61,  60,  59,  58,  57,  56,  // 448-455
//     55,  54,  53,  52,  51,  50,  49,  48,  // 456-463
//     47,  46,  45,  44,  43,  42,  41,  40,  // 464-471
//     39,  38,  37,  36,  35,  34,  33,  32,  // 472-479
//     31,  30,  29,  28,  27,  26,  25,  24,  // 480-487
//     23,  22,  21,  20,  19,  18,  17,  16,  // 488-495
//     15,  14,  13,  12,  11,  10,  9,   8,   // 496-503
//     7,   6,   5,   4,   3,   2,   1,   0    // 504-511
// };

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


    //EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts

    /* Initialize SPI */
    spi_init();
    //spi_transmission_start();

    printf("SPI TRANSMISSION STARTED\n\r");


    int high_byte, low_byte;
    // //timer0_init();
    

    while(1)
    {
        printf("w\n\r");
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

        
                    //Format high byte: Channel A, 1x gain, Active
        high_byte = 0x10 | 
                       ((dac_data >> 4) & 0x0F);

            // Format low byte: Lower 4 bits of data, shifted left 4 positions
        low_byte = (dac_data & 0x0F) << 4;

        // while(!ms_flag);
        // ms_flag = 0;

        
        printf("Low byte %d\n\r", low_byte);
        printf("High byte %d\n\r", high_byte);
        // Begin transmission
        P1_1 = 0;  // Select DAC

        // Send high byte
        SPDAT = high_byte;
        while (!(SPSTA & (1<<7))); 


        // Send low byte
        SPDAT = low_byte;
        while (!(SPSTA & (1<<7))); 

        P1_1 = 1;  // Deselect DAC

    
        printf("E\n\r");
        printf("\n\r");
        

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
    //SPCON = 0;
    
    // //enable master by slave select
    // P1_1 = 1;
    
    // Configure SPI mode and clock settings
   /* SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
    SPCON |= SPI_MASTER_MODE;      // Set as master*/
    // SPCON &= ~SPI_CPOL_HIGH;        // Clock polarity active high
    // SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge 
    // SPCON &= ~SPI_SSDIS;
    
    // SPCON |= 0x10;
    // P1_1 = 1;
    // SPCON |= 0x82;
    // //SPCON &= ~0x08;
    // SPCON |= 0x40;
    
    SPCON |= 0x10;
    SPCON |= 0x20;
    SPCON |= 0x40;
    

    
    // // Enable interrupts
    // IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt

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
