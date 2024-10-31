/**
 * @file interrupt.c
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Configuration of external interrupts
 *
 * ESD Lab 2 Part 2
 * This file contains the configuration for external interrupts,
 * specifically for EXTI line 0 on Port A.
 */

#include "interrupt.h"

#define EXTI_RTSR_PORTA0 (1U << 0)
/**
 * @brief Configures the external interrupt for PA0
 *
 * This function sets up the external interrupt for PA0 with the following steps:
 * 1. Enable SYSCFG clock
 * 2. Configure EXTI line for PA0
 * 3. Unmask EXTI line 0
 * 4. Configure for rising edge trigger
 * 5. Set interrupt priority
 * 6. Enable the interrupt in NVIC
 */
void Interrupt_Config(void)
{
    // 1. Enable the SYSCFG clock
    RCC->APB2ENR |= (1<<14);  // Enable SYSCFG

    // 2. Configure the EXTI configuration Register in SYSCFG
    SYSCFG->EXTICR[1] &= ~(0xf<<4);  // Configure EXTI0 line for PA0

    // 3. Unmask EXTI line 0
    EXTI->IMR |= (1<<0);  // Unmask EXTI line 0

    // 4. Configure for rising edge trigger
    EXTI->RTSR |= EXTI_RTSR_PORTA0;  // Enable rising edge trigger for PA0

    // 5. Set interrupt priority
    NVIC_SetPriority(EXTI0_IRQn, 1);  // Set priority for EXTI0 interrupt

    // 6. Enable the interrupt
    NVIC_EnableIRQ(EXTI0_IRQn);  // Enable EXTI0 interrupt in NVIC
}
