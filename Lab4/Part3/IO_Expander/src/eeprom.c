/**
 * @file eeprom.c
 * @author Bhakti Ramani
 * @brief eeprom integration with 8051 microcontroller using i2c protocol
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements character-level UART communication functions.
 * Uses i2c bit banging
 * Uses AT89C51ED2 UART hardware.
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */
#include "eeprom.h"
/**
 * @brief Writes a byte to the EEPROM at specified address
 * @param address Memory location to write to (0x000-0x7FF)
 * @param data Byte to write
 * @return 1 if successful, 0 if failed
 * @details Implements I2C write sequence for EEPROM:
 *          1. Start condition
 *          2. Device address + Write bit
 *          3. Memory address
 *          4. Data byte
 *          5. Stop condition
 */

int eeprom_write(unsigned int address, unsigned char data) 
{

        i2c_start();
        
        // Send device address with write bit
        if(!i2c_write(EEPROM_ID | block | WRITE)) {
            printf("Error: No ACK for device address (write)\n\r");
            i2c_stop();
            return 0;
        }
        
        // Send memory address
        if(!i2c_write((unsigned char)address)) {
            printf("Error: No ACK for memory address\n\r");
            i2c_stop();
            return 0;
        }
        
        // Send data
        if(!i2c_write(data)) {
            printf("Error: No ACK for data\n\r");
            i2c_stop();
            return 0;
        }
        
        i2c_stop();
        //delay_ms(5);  // Wait for write to complete
        for(int i = 0; i<10; i++)
        {
            i2c_delay();
        }
        //printf("checkpoint 4\n\r");
        printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
        printf("│ Write successful!                             │\n\r");
        printf("└───────────────────────────────────────────────┘\n\r");
        return 1;  // Success


}

/**
 * @brief Reads a byte from the EEPROM at specified address
 * @param address Memory location to read from (0x000-0x7FF)
 * @return Read byte value or -1 if error
 * @details Implements I2C read sequence for EEPROM:
 *          1. Start condition
 *          2. Device address + Write bit
 *          3. Memory address
 *          4. Repeated start
 *          5. Device address + Read bit
 *          6. Read data byte
 *          7. Send NACK
 *          8. Stop condition
 */
int eeprom_read(unsigned int address)
{

    unsigned char result;

    // Start for address setting
    i2c_start();

    // Send device address with write bit
    if(!i2c_write(EEPROM_ID | WRITE)) {
        printf("Error: No ACK for device address (write mode)\n\r");
        i2c_stop();
        return -1;
    }

    // Send memory address
    if(!i2c_write((unsigned char)address)) {
        printf("Error: No ACK for memory address\n\r");
        i2c_stop();
        return -1;
    }

    // Repeated start for reading
    i2c_start();

    // Send device address with read bit
    if(!i2c_write(EEPROM_ID | READ)) {
        printf("Error: No ACK for device address (read mode)\n\r");
        i2c_stop();
        return -1;
    }

    // Read data (send NACK after as it's the last byte)
    result = i2c_read(0);  // 0 means send NACK
    //printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
    printf("| 0x%03X : 0x%02X \n\r", address, result);
    printf("│ Read successful!                 │\n\r");
    printf("└───────────────────────────────────────────────┘\n\r");
    i2c_stop();
    return result;
}







/**
 * @brief Displays hex dump of EEPROM memory range
 * @param start_address Beginning address for dump
 * @param end_address Ending address for dump
 * @details Formats output as 16-byte lines with address prefix
 */
 
 int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
    // Print header
    printf("\r\n----------------------------------------------------------------\r\n");
    printf("                    EEPROM Hex Dump                               \r\n");
    printf("----------------------------------------------------------------\r\n");
    printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
    
    // Calculate number of complete rows and remaining bytes
    uint16_t num_bytes = end_address - start_address + 1;
    uint16_t current_address = start_address;
    
    // Process each row
    while (current_address <= end_address) {
        // Print address at start of line
        printf("%03X: ", current_address & 0xFFF0);
        
        // Print hex values
        for (uint8_t i = 0; i < 16; i++) {
            if (current_address + i <= end_address) {
                // Start condition for each byte read
                i2c_start();
                
                // Send device address with write bit
                if (!i2c_write(EEPROM_ID | WRITE)) {
                    printf("Error: Device not responding\r\n");
                    i2c_stop();
                    return 0;
                }
                
                // Send memory address
                if (!i2c_write((unsigned char)(current_address + i))) {
                    printf("Error: Address write failed\r\n");
                    i2c_stop();
                    return 0;
                }
                
                // Repeated start for reading
                i2c_start();
                
                // Send device address with read bit
                if (!i2c_write(EEPROM_ID | READ)) {
                    printf("Error: Device not responding in read mode\r\n");
                    i2c_stop();
                    return 0;
                }
                
                // Read byte (send NACK as we're reading single bytes)
                unsigned char data = i2c_read(0);
                printf("%02X ", data);
                
                i2c_stop();
                i2c_delay(); // Small delay between reads
            } else {
                printf("   "); // Print spaces for addresses beyond end_address
            }
        }
        
        // Print ASCII representation
        printf(" | ");
        for (uint8_t i = 0; i < 16; i++) {
            if (current_address + i <= end_address) {
                // Read byte again for ASCII display
                i2c_start();
                i2c_write(EEPROM_ID | WRITE);
                i2c_write((unsigned char)(current_address + i));
                i2c_start();
                i2c_write(EEPROM_ID | READ);
                unsigned char data = i2c_read(0);
                i2c_stop();
                
                // Print printable characters, dots for non-printable
                if (data >= 32 && data <= 126) {
                    putchar(data);
                } else {
                    putchar('.');
                }
            } else {
                putchar(' ');
            }
        }
        
        printf("\r\n");
        current_address += 16;
    }
    
    printf("----------------------------------------------------------------\r\n");
    return 1;
}

// Updated handler function
void handler_EEPROM_hexdump(void) {
    printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
    uint16_t start_addr = take_address();
    
    if (start_addr > ADDR_MAX) {
        printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
        return;
    }
    
    printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
    uint16_t end_addr = take_address();
    
    if (end_addr > ADDR_MAX || end_addr < start_addr) {
        printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
        return;
    }
    
    EEPROM_hexdump(start_addr, end_addr);
}




/**
 * @brief Resets the EEPROM device
 * @details Implements software reset sequence:
 *          1. Start condition
 *          2. Clock pulses
 *          3. Start condition
 *          4. Stop condition
 */
void eeprom_reset()
{
    i2c_start();
    SDA = 0;
    SDA = 1;
    for(int i = 0; i<10; i++)
    {
        SCL = 0;
        SCL = 1;
    }
    i2c_start();
    SDA = 0;
    i2c_stop();
    SDA = 1;
}