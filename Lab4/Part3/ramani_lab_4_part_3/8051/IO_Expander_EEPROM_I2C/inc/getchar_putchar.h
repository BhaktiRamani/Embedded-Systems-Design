/**
 * @file getchar_putchar.h
 * @author Bhakti Ramani
 * @brief UART communication interface functions
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides character-level UART communication functions for
 * serial interface with host system. Implements standard
 * input/output operations for AT89C51ED2 microcontroller.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - UART interface (TxD, RxD pins)
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _GETCHAR_PUTCHAR_H_
#define _GETCHAR_PUTCHAR_H_

#include <mcs51/8051.h>     /* 8051 specific definitions */
#include <at89c51ed2.h>     /* AT89C51ED2 specific definitions */
#include <stdio.h>          /* Standard I/O functions */
#include <stdint.h>         /* Standard integer types */

/**
 * @brief Transmits a character via UART
 * @param charToSend Character to transmit
 * @return int Transmitted character or error code
 * @note Implements putchar for stdio compatibility
 */
int putchar(int charToSend);

/**
 * @brief Receives a character via UART
 * @return int Received character or error code
 * @note Implements getchar for stdio compatibility
 */
int getchar(void);

#endif /* _GETCHAR_PUTCHAR_H_ */