/****************************************************************************
 * @file delay_ms.h
 * @author Bhakti Ramani
 * @brief Header file for millisecond delay implementation.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Declares the function for generating a delay in milliseconds. This delay 
 * is typically implemented using timer-based functions in embedded systems.
 * 
 * @note
 * The actual implementation of the delay function depends on the system clock
 * frequency and timer configurations of the microcontroller.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#ifndef _DELAY_MS_H_
#define _DELAY_MS_H_

#include <stdio.h>

/**
 * @brief Generates a delay of the specified duration in milliseconds.
 * 
 * This function uses a timer or busy-wait loop to create a delay. The duration
 * of the delay is specified in milliseconds.
 * 
 * @param ms The number of milliseconds to delay.
 */
void delay_ms(unsigned int ms);

#endif /* _DELAY_MS_H_ */
