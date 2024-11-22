/**
 * @file spi_driver.c
 * @brief SPI Bit-Banging Implementation for 8051 Microcontroller
 * @author Bhakti Ramani
 * @date 11/21/2024
 * 
 * This file implements a software SPI (bit-banging) driver for the 8051 microcontroller.
 * It provides basic SPI communication functionality using GPIO pins.
 */

/* Standard library includes */
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdint.h>

/* Pin Definitions */
#define SCL P1_6         /* Serial Clock Line */
#define SDA P1_7         /* Serial Data Line */
#define SS  P1_1         /* Slave Select (Chip Select) */

/* Pin State Definitions */
#define CLOCK_HIGH       1
#define CLOCK_LOW        0
#define DATA_HIGH        1
#define DATA_LOW         0
#define SLAVE_SELECT_ACTIVE    0
#define SLAVE_SELECT_INACTIVE  1

/* SPI Configuration */
#define SPI_DATA_WIDTH   16      /* Width of SPI data in bits */
#define MSB_FIRST_MASK   0x8000  /* Mask for MSB in 16-bit data */
#define SPI_INIT_VALUE   0       /* Initial value for SPI control register */

/* Timing Constants */
#define CRYSTAL_FREQ     12000000    /* Crystal frequency in Hz */
#define DELAY_LOOP_COUNT 123         /* Delay loop count for 1ms at 12MHz */
#define TEST_DATA        0x1FF0      /* Test data pattern */
#define IDLE_DATA        0x1000      /* Idle data pattern */
#define DELAY_PERIOD     500          /* Delay period in milliseconds */

/* Function Prototypes */
int spi_write(uint16_t data);
void spi_init(void);
void delay_ms(unsigned int ms);
int putchar(int charToSend);
int getchar(void);

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

/**
 * @brief Implements a millisecond delay
 * @param ms Number of milliseconds to delay
 * @note Delay is calibrated for 12MHz crystal frequency
 */
void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < DELAY_LOOP_COUNT; j++);
}

/**
 * @brief Main program entry point
 * @return Program exit status (never returns in this implementation)
 */
int main(void) {
    spi_init();
    printf("SPI BIT BANGING PROGRAM\n\r");
    
    while(1) {
        printf("r\n\r");
        spi_write(TEST_DATA);
        delay_ms(DELAY_PERIOD);
        spi_write(IDLE_DATA);
        delay_ms(DELAY_PERIOD);
    }    
}

/**
 * @brief Initializes the SPI interface
 * @details Sets up the initial state of SPI pins and control registers
 */
void spi_init(void) {
    SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
    SDA = DATA_HIGH;                 /* Set data line high */
    SCL = CLOCK_LOW;                 /* Set clock line low */
    SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
}

/**
 * @brief Writes data to the SPI interface
 * @param data 16-bit data to be transmitted
 * @return Always returns 0 (could be modified to return status)
 */
int spi_write(uint16_t data) {
    unsigned int i;
    
    SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
    
    /* Transmit data bits */
    for(i = 0; i < SPI_DATA_WIDTH; i++) {
        SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
        SCL = CLOCK_HIGH;            /* Clock high */
        SCL = CLOCK_LOW;             /* Clock low */
        data <<= 1;                  /* Shift to next bit */
    }
    
    /* Set stop/idle condition */
    SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
    SCL = CLOCK_LOW;                 /* Clock low */
    SDA = DATA_HIGH;                 /* Data high */
    
    return 0;
}
