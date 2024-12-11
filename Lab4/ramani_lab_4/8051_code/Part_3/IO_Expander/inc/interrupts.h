/**
 * @file interrupts.h
 * @author Bhakti Ramani
 * @brief Interrupt configuration for AT89C51ED2
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides functions for configuring and managing external interrupt 0
 * on the AT89C51ED2 microcontroller. Used for handling asynchronous
 * events in the EEPROM interface.
 * 
 * @hardware
 * - AT89C51ED2 microcontroller
 * - INT0 external interrupt pin
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#ifndef _INTERRUPTS_H_
#define _INTERRUPTS_H_

#include <stdio.h>               /* Standard I/O functions */
#include <mcs51/8051.h>         /* 8051 specific definitions */
#include <at89c51ed2.h>         /* AT89C51ED2 specific definitions */

/**
 * @brief Enables external interrupt 0
 * @note Configures INT0 for interrupt-driven operations
 */
void enable_interrupt0(void);

/**
 * @brief Disables external interrupt 0
 * @note Used to temporarily suspend interrupt handling
 */
void disable_interrupt0(void);

#endif /* _INTERRUPTS_H_ */