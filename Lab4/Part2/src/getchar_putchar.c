/****************************************************************************
 * @file getchar_putchar.c
 * @author Bhakti Ramani
 * @brief UART character and string handling functions.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 * @details
 * This file contains functions for handling UART communication. It includes
 * functions to send and receive single characters via UART, as well as to
 * receive a string of characters terminated by a carriage return or line feed.
 * It also provides error handling for buffer overflow situations when 
 * receiving input.
 * 
 * @hardware_configuration
 * - MCU: [Microcontroller details]
 * - UART: [UART configuration details]
 *
 * @features
 * - Sending and receiving characters via UART
 * - Handling backspace and other control characters
 * - Receiving a string from the user with error checking for buffer overflows
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

/* -------------------------------------------------- */
//          INCLUDES & DEFINES
/* -------------------------------------------------- */
#include <mcs51reg.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "getchar_putchar.h"

#define BACKSPACE_DEC_VALUE 127

/**
 * @brief Sends a character via UART.
 * 
 * This function transmits a single character to the UART serial buffer.
 * It waits for the transmission to complete before returning.
 * 
 * @param charToSend The character to be transmitted.
 * @return int The character that was sent.
 */
int putchar(int charToSend) {
    SBUF = charToSend;  // Send character to serial buffer
    while (!TI);        // Wait for transmission to complete
    TI = 0;             // Clear transmission interrupt flag
    return charToSend;
}

/**
 * @brief Receives a character via UART.
 * 
 * This function waits for a character to be received via UART and returns it.
 * 
 * @return int The character received.
 */
int getchar(void) {
    while (!RI);        // Wait for reception to complete
    RI = 0;             // Clear reception interrupt flag
    return SBUF;        // Return received character
}

/**
 * @brief Receives a string of characters via UART until carriage return or line feed is encountered.
 * 
 * This function collects characters entered by the user and stores them in the
 * provided buffer. It terminates when either a carriage return (CR) or line feed
 * (LF) is received. It also handles backspace and ensures the buffer does not 
 * overflow.
 * 
 * @param buffer The buffer to store the received string.
 * @param buffer_len The maximum length of the buffer.
 * @param error_string The error message to be displayed if an overflow occurs.
 * @return bool Returns false if no error occurred, true if an error occurred (e.g., buffer overflow).
 */
bool getstr(char *buffer, int buffer_len, char *error_string) {
    char c;
    int index = 0;
    bool is_error_set = false;

    while (1) {
        c = getchar();  // Receive a character
        putchar(c);     // Echo the received character back to the user
        
        // Handle backspace or delete (ASCII 127)
        if (c == '\b' || c == BACKSPACE_DEC_VALUE) {
            if (index > 0) {
                index--;  // Remove last character if there's any
            }
            continue;
        }

        // Check for CR or LF to terminate the string
        if (c == '\r' || c == '\n') {
            buffer[index] = '\0';  // Null-terminate the string
            break;                 // Exit the loop
        }

        // Store the character in the buffer if there's space
        if (index < buffer_len - 1) {
            buffer[index++] = c;  // Save character and increment index
        } else {
            is_error_set = true;   // Set error flag if buffer is full
            printf("%s\n", error_string);  // Print error message
            break;
        }
    }
    return is_error_set;  // Return whether there was an error
}



