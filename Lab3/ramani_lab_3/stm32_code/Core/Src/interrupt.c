/**
 * @file interrupt.c
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Configuration of external interrupts
 *
 * ESD Lab 3 Part 3
 * This file contains the configuration for external interrupts,
 * specifically for EXTI line 0 on Port A.
 */


#include "interrupt.h"

#define SYSCFG_CLOCK_ENABLE (1U << 14)
#define EXTI_LINE0_MASK     (0xFU << 4)
#define EXTI_LINE0_ENABLE   (1U << 0)
#define EXTI_RTSR_PORTA0    (1U << 0)
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


void PushButoon_ISR_Config(void)
{
    /* Enable SYSCFG clock */
    RCC->APB2ENR |= SYSCFG_CLOCK_ENABLE;

    /* Configure EXTI0 for PA0 */
    SYSCFG->EXTICR[0] &= ~EXTI_LINE0_MASK;

    /* Configure EXTI line 0 */
    EXTI->IMR |= EXTI_LINE0_ENABLE;
    EXTI->RTSR |= EXTI_RTSR_PORTA0;

    /* NVIC Configuration */
    NVIC_SetPriority(EXTI0_IRQn, 2);
    NVIC_ClearPendingIRQ(EXTI0_IRQn);
    NVIC_EnableIRQ(EXTI0_IRQn);
}

