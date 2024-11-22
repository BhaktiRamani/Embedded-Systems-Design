/****************************************************************************
 * @file 8051_i2c_eeprom.c
 * @brief I2C EEPROM Driver Implementation for 8051 Microcontroller
 *
 * @details This file implements a bit-banged I2C driver for interfacing with
 *          an X24C02 EEPROM device using an 8051 microcontroller. It provides
 *          functions for reading, writing, and managing EEPROM memory through
 *          a command-line interface.
 *
 * @author Bhakti Ramani
 * @date 15/11/2024
 *
 * @course Embedded System Design Lab 4 Part 1
 *
 * @copyright Copyright (c) 2024
 * All rights reserved.
 ****************************************************************************/

/* Standard library includes */
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdint.h>

/* I2C Operation Mode Definitions */
#define READ 0x01        /* I2C Read operation bit */
#define WRITE 0x00       /* I2C Write operation bit */
#define EEPROM_ID 0xA0   /* Device identifier for X24C02 EEPROM */

/* I2C Pin Definitions */
#define SCL P1_3         /* Serial Clock Line on P1.3 */
#define SDA P1_4         /* Serial Data Line on P1.4 */

/* EEPROM Memory Constants */
#define MAX_HEX_CHAR_IN_SINGLE_LINE 16  /* Maximum characters per line in hex dump */
#define ADDR_MAX 0x7ff                  /* Maximum EEPROM address (2KB - 1) */

#define PCF8574_I2C_ADDRESS         0x38  // 7-bit base address for PCF8574A
#define PCF8574_I2C_WRITE_ADDRESS   (PCF8574_I2C_ADDRESS << 1) // 0x70
#define PCF8574_I2C_READ_ADDRESS    ((PCF8574_I2C_ADDRESS << 1) | 1) // 0x71
#define SWITCH_PIN           0     // Pin 0 for the switch
#define LED_PIN              7     // Pin 7 for the LED

/* Global Variables */
static int address_range_flag = 1;      /* Flag for valid address range */
static int data_range_flag = 1;         /* Flag for valid data range */
static unsigned int block = 0;          /* Current memory block */
int ACK;                               /* Acknowledgment flag */

/* Function Prototypes */
void i2c_start(void);
void i2c_stop(void);
void i2c_delay();
int i2c_write(unsigned char data);
int i2c_read(int ACK);
int eeprom_write(unsigned int address, unsigned char data);
int eeprom_read(unsigned int address);
unsigned char take_data();
unsigned int take_address();
void eeprom_reset();
void handler_EEPROM_hexdump(void);
int EEPROM_hexump(uint16_t start_address, uint16_t end_address);
uint8_t pcf8574_read_pin(uint8_t pin);
uint8_t pcf8574_read_port(void) ;
void pcf8574_write_port(uint8_t value);
void pcf8574_set_pin(uint8_t pin, uint8_t value);
void pcf8574_init();
void enable_interrupt0(void);

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
 * @brief Displays the user interface header
 */
void ui()
{
    printf("\n╔════════════════════════════════════════════════════════╗\n\r");
    printf("║           I2C Memory Management System v1.0            ║\n\r");
    printf("╚════════════════════════════════════════════════════════╝\n\r");

}

/**
 * @brief Displays the command menu with available options
 */
void command_menu()
{
    printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
    printf("│  Command   │               Description                  │\n\r");
    printf("├────────────┼────────────────────────────────────────────┤\n\r");
    printf("│     R      │ Read from address                          │\n\r");
    printf("│     W      │ Write data to address                      │\n\r");
    printf("│     H      │ Display hex dump                           │\n\r");
    printf("│     X      │ Reset memory system                        │\n\r");
    printf("│     ?      │ Display this help menu                     │\n\r");
    printf("│     I      │ IO Expander                                │\n\r");
    printf("│     L      │ Leave IO Expander                          │\n\r");
    printf("└────────────┴────────────────────────────────────────────┘\n\r");


}

void external_ISR0(void) __interrupt (0)
{

    uint8_t data = 0;
    //Read Pin 0
    data=pcf8574_read_pin(0);
    //Write Pin7
    pcf8574_set_pin(7,data);


}

void disable_interrupt0(void)
{
    // Configure INT0
    IT0 = 0;           // Set INT0 to be edge-triggered
    EX0 = 0;          // Enable INT0 interrupt
    EA = 0;           // Enable global interrupts
}
/**
 * @brief Main program entry point
 * @return Program exit status
 */
int main()
{

  P1 &= ~(1<<3);  // Set P1.3 as output
  P1 &= ~(1<<4);  // Set P1.4 as output
  ui();
  command_menu();
  i2c_start();
  while(1)
  {
      char user_input = getchar();
      printf("| $ %c\n\r", user_input);
      printf("\n\r");
      switch(user_input)
      {
            case 'W':
            {
                printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
                unsigned int addr;
                addr = take_address();
                if(!address_range_flag) 
                {
                    address_range_flag = 1;
                    break;
                }
                unsigned char data; 
                data = take_data();
                if(!data_range_flag) 
                {
                    data_range_flag = 1;
                    break;
                }
                //printf("check point 1 \n\r");
                eeprom_write(addr, data);
                break;
            }
            case 'R':
            {
                printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
                unsigned int addr;
                addr = take_address(); 
                if(!address_range_flag) 
                {
                    address_range_flag = 1;
                    break;
                }
                printf("| Reading from Address 0x%03X           |\n\r", addr);
                eeprom_read(addr);
                break;
            }

            case '?':
                 command_menu();
                 break;
            
            case 'X':
                printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
                eeprom_reset();
                break;
                
            case 'H':
                printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");

                handler_EEPROM_hexdump();

            case 'I':
                printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
                enable_interrupt0();
                pcf8574_init();

            case 'L':
                printf("\n┌───────────── IO EXPANDER LEAVE ───────────────┐\n\r");
                disable_interrupt0();

            
            default:
                printf("INVALID INPUT\n\r");
                break;
      }
  }
 
}

void pcf8574_init()
{
    i2c_start();
    i2c_write(PCF8574_I2C_WRITE_ADDRESS);
    i2c_write(0xFF);
    i2c_stop();
}
uint8_t pcf8574_read_port(void) {
    uint8_t data=0;
    i2c_start();
    i2c_write(PCF8574_I2C_READ_ADDRESS);
    data = i2c_read(0);
    i2c_stop();
    return data;
}

uint8_t pcf8574_read_pin(uint8_t pin) {
    uint8_t port_state = pcf8574_read_port();
    return (port_state >> pin) & 0x01;
}

void pcf8574_write_port(uint8_t value)
{
    i2c_start();
    i2c_write(PCF8574_I2C_WRITE_ADDRESS);
    i2c_write(value);
    i2c_stop();
}

void pcf8574_set_pin(uint8_t pin, uint8_t value) {
    uint8_t port_state = pcf8574_read_port();
    if (value) {
        port_state |= (1 << pin);  // Set pin high
    } else {
        port_state &= ~(1 << pin); // Set pin low
    }
    pcf8574_write_port(port_state);
}

void enable_interrupt0(void)
{
    // Configure INT0
    IT0 = 1;           // Set INT0 to be edge-triggered
    EX0 = 1;          // Enable INT0 interrupt
    EA = 1;           // Enable global interrupts
}


/**
 * @brief Gets a valid EEPROM address from user input
 * @return The validated address or 0 if invalid
 * @details Accepts 3-digit hex input and validates against ADDR_MAX
 */
unsigned int take_address() 
{
    printf("│ Enter address (hex, up to 3 characters): \n\r|");
    char input[4] = {0};  // Array for 3 hex chars + null terminator
    int i = 0;
    char c;

    printf("| $ ");
    // Read characters until Enter/Return is pressed or buffer is full
    while (i < 3) {
    
        c = getchar();
        
        // Check for Enter/Return key
        if (c == '\r' || c == '\n') {
            break;
        }
        
        // Check if character is valid hex
        if ((c >= '0' && c <= '9') || 
            (c >= 'a' && c <= 'f') || 
            (c >= 'A' && c <= 'F')) {
            
            input[i] = c;
            putchar(c);  // Echo character back
            i++;
        }
    }
    
    input[i] = '\0';  // Null-terminate the string

    // Convert hex string to integer
    unsigned int address = 0;
    for(i = 0; input[i] != '\0'; i++) {
        address = address * 16;
        if(input[i] >= '0' && input[i] <= '9')
            address += input[i] - '0';
        else if(input[i] >= 'A' && input[i] <= 'F')
            address += input[i] - 'A' + 10;
        else if(input[i] >= 'a' && input[i] <= 'f')
            address += input[i] - 'a' + 10;
    }

    printf("\n\r│ Entered address: 0x%03X\n\r", address);
    if(address > 0x7ff) 
    {
       printf("╔══════════════════════════════════════════╗\n\r");
       printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
       printf("║     Please Enter Valid Address         ║\n\r");
       printf("╚══════════════════════════════════════════╝\n\r");
       address_range_flag = 0;
       return 0;
    }
    unsigned int block = address/256;       //block address
    printf("| Block number %d                            \n\r", block);
    address = address%256;     //word address
    //printf("address now  0x%03X\n\r", address);

    return address;
}

/**
 * @brief Gets data byte input from user in hex format
 * @return Valid data byte or 0 if invalid
 * @details Accepts 2-digit hex input and validates range (0x00-0xFE)
 *          Sets data_range_flag to 0 if input is invalid
 */
unsigned char take_data()
{
    printf("│ Enter data (hex, up to 2 characters): \n\r|");
    char input[4] = {0};  // Array for 3 hex chars + null terminator
    int i = 0;
    char c;

    printf("$ ");
    // Read characters until Enter/Return is pressed or buffer is full
    while (i < 3) {

        c = getchar();

        // Check for Enter/Return key
        if (c == '\r' || c == '\n') {
            break;
        }

        // Check if character is valid hex
        if ((c >= '0' && c <= '9') ||
            (c >= 'a' && c <= 'f') ||
            (c >= 'A' && c <= 'F')) {

            input[i] = c;
            putchar(c);  // Echo character back
            i++;
        }
    }

    input[i] = '\0';  // Null-terminate the string

    // Convert hex string to an unsigned char
    unsigned char data = 0;
    for (i = 0; input[i] != '\0'; i++) {
        data = data * 16;
        if (input[i] >= '0' && input[i] <= '9')
            data += input[i] - '0';
        else if (input[i] >= 'A' && input[i] <= 'F')
            data += input[i] - 'A' + 10;
        else if (input[i] >= 'a' && input[i] <= 'f')
            data += input[i] - 'a' + 10;
    }

    printf("\n\r│ Entered data: 0x%02X\n\r", data);
    if(data > 0xfe)
    {
        printf("Data out of Range\n\r");
        data_range_flag = 0;
        return 0;
    }
    return data;

}


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
    // }
    // //printf("checkpoint 5\n\r");
    // return 0;
    // else
    // {
    //     printf("| CAN NOT WRITE                   |\n\r", address);
    //     return 0;
    // }

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
 * @brief Writes a byte to the I2C bus
 * @param data Byte to write
 * @return 1 if ACK received, 0 if NACK
 * @details Implements bit-banged I2C write protocol:
 *          - Sends 8 bits MSB first
 *          - Releases SDA for ACK
 *          - Checks for ACK from slave
 */
int i2c_write(unsigned char data)
{
    
  unsigned int i;
  for(i=0;i<=7;i++)
  {
    SDA = (data & 0x80) ? 1 : 0;    //msb first
    i2c_delay();        // Setup time for data
    SCL=1;
    i2c_delay();        // Hold time for clock
    SCL=0;
    data = data << 1;
  }
     
    // Check for ACK
    SDA = 1;            // Release SDA for slave
    SCL = 1;            // 9th clock pulse for ACK
    i2c_delay();
    if(SDA == 1)        // If SDA is still high, no ACK received
    {
        // Handle no ACK error
        printf("ACK DID NOT ARRIVE\n\r");
        return 0;       // Error
    }
    SCL = 0;
    //printf("Transmission successfull\n\r");
    return 1;           // Success

}

/**
 * @brief Reads a byte from the I2C bus
 * @param ACK 1 to send ACK, 0 to send NACK
 * @return Byte read from bus
 * @details Implements bit-banged I2C read protocol:
 *          - Reads 8 bits MSB first
 *          - Sends ACK/NACK based on parameter
 */
int i2c_read(int ACK)
{
	 unsigned char buff=0;
	 SCL = 0;
	 for(int i=0;i<8;i++)
	 {
	   SCL = 1;
	   i2c_delay();
	   buff |= (SDA << (7 - i));
	   i2c_delay();
	   SCL=0;
	 }
    
    // Send ACK/NACK
    SDA = !ACK;         // ACK = 0, NACK = 1
    SCL = 1;
    i2c_delay();
    SCL = 0;
    
	return buff;
}

/**
 * @brief Generates I2C start condition
 * @details Sequence: SDA high → SCL high → SDA low → SCL low
 *          Ensures proper setup and hold times
 */
void i2c_start(void)
{
    i2c_delay();
    SDA = 1;
    i2c_delay();
    SCL = 1;
    i2c_delay();
    SDA = 0;
    i2c_delay();
    SCL = 0;
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
// int EEPROM_hexump(uint16_t start_address, uint16_t end_address)
// {
//     // printf_tiny("\033[1;34m\n\rI2C EEPROM DUMP!!\r\n");
//     //
//     // __xdata uint8_t count = 0, i = 0, temp_storage = 0, data_byte = 0;
//     // __xdata uint16_t address = start_address;
//     //
//     // while (address <= end_address) {
//     //     if (count % DIVIDE_BY_16 == 0) {
//     //         putchar('\n');
//     //         putchar('\r');
//     //         print_hex_number(address, 3);
//     //         putchar(':');
//     //     }
//     //     putchar(ASCII_SPACE);//space
//     //     data_byte = i2c_eeprom_read(address);
//     //     print_hex_number(data_byte, 2);
//     //
//     //     address++;
//     //     count++;
//     // }
//     // printf("\033[0m\r\n");
//     // return;

//     printf("\r\n");
//     printf("\r\n----------------------------------------------------------------");
//     printf("\r\n                    EEPROM Hex Dump                             ");
//     printf("\r\n----------------------------------------------------------------\r\n");
//     // Loop through the EEPROM addresses from start to end
//     for (unsigned int address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
//         // Print the address (starting address for each line)
//         printf("%03X: ", address);

//         // Print up to 16 bytes of data in hex
//         for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
//             unsigned int current_address = address + offset;

//             if (current_address <= end_address) 
//             {
//                 // Read data from EEPROM and print it
//                 //uint8_t data = eeprom_read(current_address);
//                     unsigned char result;

//                     // Start for address setting
//                     i2c_start();
                
//                     // Send device address with write bit
//                     if(!i2c_write(EEPROM_ID | WRITE)) {
//                         printf("Error: No ACK for device address (write mode)\n\r");
//                         i2c_stop();
//                         return -1;
//                     }
                
//                     // Send memory address
//                     if(!i2c_write((unsigned char)address)) {
//                         printf("Error: No ACK for memory address\n\r");
//                         i2c_stop();
//                         return -1;
//                     }
                
//                     // Repeated start for reading
//                     i2c_start();
                
//                     // Send device address with read bit
//                     if(!i2c_write(EEPROM_ID | READ)) {
//                         printf("Error: No ACK for device address (read mode)\n\r");
//                         i2c_stop();
//                         return -1;
//                     }
                
//                     // Read data (send NACK after as it's the last byte)
//                     result = i2c_read(0);  // 0 means send NACK
//                     printf("%02X ", result);
//                     result = 0;
//                     i2c_stop();
//             } 
//             else 
//             {
//                 printf("   "); // Space for missing bytes if end_address reached mid-line
//             }
//         }

//         // Print a newline after each line of data
//         printf("\r\n");
//     }
//     printf("\r\n");
//     return 1;
// }

// /**
//  * @brief Handles user interface for hex dump operation
//  * @details Prompts for start and end addresses, validates range,
//  *          and calls EEPROM_hexump for actual dump
//  */
// void handler_EEPROM_hexdump(void)
// {
//     __xdata uint32_t start_addr = 0;
//     printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
//     start_addr = take_address();

//     if(start_addr >= 0 && start_addr <= ADDR_MAX)
//     {
//         // correct address range
//     }
//     else{
//         printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
//         return;
//     }

//     __xdata uint16_t end_addr = 0;

//     printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
//     end_addr = take_address();

//     if(end_addr >= 0 && end_addr <= ADDR_MAX)
//     {
//         // correct address range
//     }
//     else{
//         printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
//         return;
//     }

//     EEPROM_hexump(start_addr,end_addr);
// }

/**
 * @brief Generates I2C stop condition
 * @details Sequence: SDA low → SCL high → SDA high
 *          Ensures proper setup and hold times
 */
void i2c_stop(void)
{
    SDA = 0;
    i2c_delay();
    SCL = 1;
    i2c_delay();
    SDA = 1; 
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

/**
 * @brief Provides I2C bus timing delay
 * @details Implements delay for I2C timing requirements:
 *          - Data setup time
 *          - Clock high/low time
 *          - Start/Stop setup and hold times
 */
void i2c_delay() 
{
    //unsigned char i;
    // for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
    //     __asm
    //         nop  // 1 µs delay per NOP at 11.0592 MHz clock
    //     __endasm;
    // }
    for(int i = 0; i<500; i++);
}

void test_function()
{
  i2c_start();
  i2c_delay();
  //i2c_stop();
    unsigned char test_data = 0x26;  // Easy bit pattern to verify (0101 0101)
    unsigned char address = 0x02;    // Start with first address
    
    // Write data
    printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
    eeprom_write(address, test_data);
    i2c_stop();
    
    for(int i = 0; i<100; i++)
    {
        i2c_delay();
    }
    
    // Read back
    unsigned char read_data = eeprom_read(address);
    printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
    
    // Verify
    if(read_data == test_data) {
        printf("MATCH - Write/Read successful!\n\r");
    } else {
        printf("ERROR - Data mismatch!\n\r");
    }


}
