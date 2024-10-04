/**
 * @file delay.h
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Delay function declarations
 *
 * ESD Lab 2 Part 2
 * This file contains function declarations for delay operations using Timer 3.
 */

#ifndef _DELAY_H_
#define _DELAY_H_

#include "stm32f4xx.h"

/**
 * @brief Configure Timer 3 for delay operations
 */
void TIM3Config(void);

/**
 * @brief Provide a delay in microseconds
 * @param us Number of microseconds to delay
 */
void Delay_us(uint16_t us);

/**
 * @brief Provide a delay in milliseconds
 * @param ms Number of milliseconds to delay
 */
void Delay_ms(uint16_t ms);

/**
 * @brief Timer 3 Interrupt Handler
 */
void TIM3_IRQHandler(void);

#endif /* _DELAY_H_ */
