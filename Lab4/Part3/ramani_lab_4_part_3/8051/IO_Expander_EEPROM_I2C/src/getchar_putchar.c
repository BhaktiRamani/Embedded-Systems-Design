/**
 * @file getchar_putchar.c
 * @author Bhakti Ramani
 * @brief UART interface implementation
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements character-level UART communication functions.
 * Provides standard I/O interface for serial communication.
 * Uses AT89C51ED2 UART hardware.
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#include "getchar_putchar.h"

int putchar(int charToSend)
{
    SBUF = charToSend;   /* Load character into transmit buffer */
    while (!TI);         /* Wait for transmission complete flag */
    TI = 0;              /* Clear transmission flag */
    return charToSend;   /* Return transmitted character */
}

int getchar(void)
{
    while (!RI);         /* Wait for reception complete flag */
    RI = 0;              /* Clear reception flag */
    return SBUF;         /* Return received character from buffer */
}