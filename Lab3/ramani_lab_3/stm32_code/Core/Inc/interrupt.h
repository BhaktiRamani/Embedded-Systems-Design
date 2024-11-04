/**
 * @file interrupt.h
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Interrupt configuration function declaration
 *
 * ESD Lab 3 Part 3
 * This file contains the declaration for interrupt configuration function.
 */

#ifndef _INTERRUPT_H_
#define _INTERRUPT_H_

#include "stm32f4xx.h"
#include "led.h"

// Define EXTI_RTSR_PORTA0 (added based on previous discussion)
#define EXTI_RTSR_PORTA0 (1U << 0)

extern int isr_flag;

/**
 * @brief Configure external interrupt for PA0
 */
void PushButoon_ISR_Config(void);

#endif /* _INTERRUPT_H_ */
