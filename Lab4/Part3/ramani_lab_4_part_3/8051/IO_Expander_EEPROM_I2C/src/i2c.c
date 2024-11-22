/**
 * @file i2c.c
 * @author Bhakti Ramani
 * @brief Bit-banged I2C protocol implementation
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Software implementation of I2C protocol using GPIO pins.
 * Provides basic I2C operations: start, stop, read, write.
 * Implements timing delays for proper I2C bus operation.
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#include "i2c.h"

void i2c_delay(void)
{
    /* Software delay for I2C timing requirements */
    for(int i = 0; i < 500; i++);
}

void i2c_stop(void)
{
    SDA = 0;         /* Pull SDA low while SCL is low */
    i2c_delay();
    SCL = 1;         /* Raise SCL high */
    i2c_delay();
    SDA = 1;         /* Generate stop condition by raising SDA */
}

void i2c_start(void)
{
    i2c_delay();
    SDA = 1;         /* Ensure SDA is high */
    i2c_delay();
    SCL = 1;         /* Ensure SCL is high */
    i2c_delay();
    SDA = 0;         /* Generate start condition by lowering SDA */
    i2c_delay();
    SCL = 0;         /* Lower SCL for data transmission */
}

int i2c_read(int ACK)
{
    unsigned char buff = 0;
    SCL = 0;         /* Ensure clock is low before reading */

    /* Read 8 bits MSB first */
    for(int i = 0; i < 8; i++) {
        SCL = 1;     /* Raise clock to read bit */
        i2c_delay();
        buff |= (SDA << (7 - i));    /* Sample SDA and shift into buffer */
        i2c_delay();
        SCL = 0;     /* Lower clock for next bit */
    }
    
    /* Send ACK/NACK */
    SDA = !ACK;      /* Set ACK level (0=ACK, 1=NACK) */
    SCL = 1;         /* Clock ACK/NACK bit */
    i2c_delay();
    SCL = 0;         /* Complete ACK/NACK cycle */
    
    return buff;
}

int i2c_write(unsigned char data)
{
    /* Transmit 8 bits MSB first */
    for(int i = 0; i <= 7; i++) {
        SDA = (data & 0x80) ? 1 : 0;    /* Set SDA to MSB */
        i2c_delay();        /* Data setup time */
        SCL = 1;           /* Clock high */
        i2c_delay();        /* Clock high time */
        SCL = 0;           /* Clock low */
        data <<= 1;        /* Shift to next bit */
    }
     
    /* Check for ACK */
    SDA = 1;            /* Release SDA for ACK */
    SCL = 1;            /* Clock ACK bit */
    i2c_delay();
    
    if(SDA == 1) {      /* Check ACK level */
        printf("ACK DID NOT ARRIVE\n\r");
        return 0;       /* No ACK received */
    }
    
    SCL = 0;            /* Complete ACK cycle */
    return 1;           /* ACK received */
}

void test_function(void)
{
    i2c_start();
    i2c_delay();
    
    /* Test data patterns */
    unsigned char test_data = 0x26;    /* Test pattern */
    unsigned char address = 0x02;      /* Test address */
    
    /* Write test sequence */
    printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
    eeprom_write(address, test_data);
    i2c_stop();
    
    /* Delay for write completion */
    for(int i = 0; i < 100; i++) {
        i2c_delay();
    }
    
    /* Read and verify */
    unsigned char read_data = eeprom_read(address);
    printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
    
    if(read_data == test_data) {
        printf("MATCH - Write/Read successful!\n\r");
    } else {
        printf("ERROR - Data mismatch!\n\r");
    }
}