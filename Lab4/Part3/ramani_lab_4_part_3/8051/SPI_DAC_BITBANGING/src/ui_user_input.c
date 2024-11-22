/****************************************************************************
 * @file ui_user_input.c
 * @author Bhakti Ramani
 * @brief User input handling for SPI program.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * This file contains functions that handle user input for the SPI program.
 * The functions display a menu and read the user's command to select various 
 * modes and operations, such as generating different waveforms or configuring
 * SPI parameters.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include "ui_user_input.h"
#include "getchar_putchar.h"

/**
 * @brief Displays the command menu for the SPI program.
 * 
 * This function prints a menu of available commands to the user. The menu 
 * provides options for selecting different SPI modes, waveform generation, 
 * and other actions within the program.
 */
void display_menu(void) {
    printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
    printf("│                        SPI PROGRAM                           │\n\r");
    printf("├──────────────────────────────────────────────────────────────┤\n\r");
    printf("│  Command   │               Description                       │\n\r");
    printf("├───────────┼───────────────────────────────────────────────┤\n\r");
    printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
    printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
    printf("│    S      │ Generate Sine Wave                            │\n\r");
    printf("│    Q      │ Generate Square Wave                          │\n\r");
    printf("│    T      │ Generate Triangular Wave                      │\n\r");
    printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
    printf("│    C      │ Configure SPI Parameters                      │\n\r");
    printf("│    R      │ Read SPI Data                                 │\n\r");
    printf("│    W      │ Write SPI Data                                │\n\r");
    printf("│    ?      │ Display this help menu                        │\n\r");
    printf("│    X      │ Exit Program                                  │\n\r");
    printf("└───────────┴───────────────────────────────────────────────┘\n\r");
    printf("\n\rEnter command: ");
}


unsigned char take_data()
{
    printf("│ Enter number (hex, up to 2 characters): \n\r|");
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
    // if(data > 0xfe)
    // {
    //     printf("Data out of Range\n\r");
    //     data_range_flag = 0;
    //     return 0;
    // }
    return data;

}