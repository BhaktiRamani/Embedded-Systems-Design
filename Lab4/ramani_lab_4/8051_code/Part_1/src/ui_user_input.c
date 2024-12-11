/**
 * @file ui_user_input.c
 * @author Bhakti Ramani
 * @brief User interface implementation for EEPROM operations
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements console-based user interface for EEPROM operations.
 * Handles user input validation, command menu display, and address/data
 * input processing.
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#include "ui_user_input.h"

/* Global state flags */
int address_range_flag = 1;      /* Address validation state (1=valid, 0=invalid) */
int data_range_flag = 1;         /* Data validation state (1=valid, 0=invalid) */
unsigned int block = 0;          /* Current EEPROM block selector */

void ui(void)
{
    /* Display main interface header with decorative borders */
    printf("\n╔════════════════════════════════════════════════════════╗\n\r");
    printf("║           I2C Memory Management System v1.0            ║\n\r");
    printf("╚════════════════════════════════════════════════════════╝\n\r");
}

void command_menu(void)
{
    /* Display formatted command menu with table borders */
    printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
    printf("│  Command   │               Description                  │\n\r");
    printf("├────────────┼────────────────────────────────────────────┤\n\r");
    printf("│     R      │ Read from address                          │\n\r");
    printf("│     W      │ Write data to address                      │\n\r");
    printf("│     H      │ Display hex dump                           │\n\r");
    printf("│     X      │ Reset memory system                        │\n\r");
    printf("│     ?      │ Display this help menu                     │\n\r");
    printf("└────────────┴────────────────────────────────────────────┘\n\r");
}

unsigned int take_address(void)
{
    char input[4] = {0};         /* Buffer for hex input (3 chars + null) */
    int i = 0;
    char c;
    unsigned int address = 0;

    printf("│ Enter address (hex, up to 3 characters): \n\r|");
    printf("| $ ");

    /* Read and validate hex input characters */
    while (i < 3) {
        c = getchar();
        
        if (c == '\r' || c == '\n') {
            break;
        }
        
        /* Validate hex character input */
        if ((c >= '0' && c <= '9') || 
            (c >= 'a' && c <= 'f') || 
            (c >= 'A' && c <= 'F')) {
            input[i] = c;
            putchar(c);          /* Echo valid character */
            i++;
        }
    }
    
    input[i] = '\0';            /* Null-terminate input string */

    /* Convert hex string to integer */
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

    /* Validate address range */
    if(address > 0x7ff) {
       printf("╔══════════════════════════════════════════╗\n\r");
       printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
       printf("║     Please Enter Valid Address         ║\n\r");
       printf("╚══════════════════════════════════════════╝\n\r");
       address_range_flag = 0;
       return 0;
    }

    /* Calculate block and word address */
    unsigned int block = address/256;    /* Extract block address */
    printf("| Block number %d                            \n\r", block);
    address = address%256;               /* Extract word address */

    return address;
}

unsigned char take_data(void)
{
    char input[4] = {0};         /* Buffer for hex input (2 chars + null) */
    int i = 0;
    char c;
    unsigned char data = 0;

    printf("│ Enter data (hex, up to 2 characters): \n\r|");
    printf("$ ");

    /* Read and validate hex input characters */
    while (i < 3) {
        c = getchar();

        if (c == '\r' || c == '\n') {
            break;
        }

        /* Validate hex character input */
        if ((c >= '0' && c <= '9') ||
            (c >= 'a' && c <= 'f') ||
            (c >= 'A' && c <= 'F')) {
            input[i] = c;
            putchar(c);          /* Echo valid character */
            i++;
        }
    }

    input[i] = '\0';            /* Null-terminate input string */

    /* Convert hex string to byte */
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

    /* Validate data range */
    if(data > 0xfe) {
        printf("Data out of Range\n\r");
        data_range_flag = 0;
        return 0;
    }

    return data;
}
