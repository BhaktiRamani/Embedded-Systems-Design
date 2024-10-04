/**
 * @file delay.c
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief Implementation of delay functions using Timer 3
 *
 * ESD Lab 2 Part 2
 * This file contains the implementation of delay functions using Timer 3
 * for microsecond and millisecond delays.
 */

#include "delay.h"
#include "led.h"
#include <stdbool.h>

#define TIM3_SR_UIF (0b01)

/**
 * @brief Configures Timer 3 for delay operations
 *
 * This function sets up Timer 3 with appropriate prescaler and auto-reload values
 * to achieve microsecond-level timing accuracy.
 */
void TIM3Config(void)
{
    // 1. Enable Timer clock
    RCC->APB1ENR |= (1<<1);  // Enable the timer3 clock

    // 2. Set the prescalar and the ARR
    TIM3->PSC = 37;  // Set prescaler
    TIM3->ARR = 0xffff;  // Set auto-reload register to maximum value
    TIM3->DIER |= TIM_DIER_UIE;  // Enable update interrupt

    // 3. Enable the Timer, and wait for the update Flag to set
    TIM3->CR1 |= (1<<0);  // Enable the Counter
    while (!(TIM3->SR & (1<<0)));  // Wait for update interrupt flag to set
    NVIC_EnableIRQ(TIM3_IRQn);  // Enable Timer 3 interrupt in NVIC
}

/**
 * @brief Provides a delay in microseconds
 * @param us Number of microseconds to delay
 *
 * This function uses Timer 3 to create a precise microsecond delay.
 */
void Delay_us(uint16_t us)
{
    TIM3->CNT = 0;  // Reset the Counter
    while (TIM3->CNT < us);  // Wait until the counter reaches the specified value
}

/**
 * @brief Provides a delay in milliseconds
 * @param ms Number of milliseconds to delay
 *
 * This function uses the Delay_us function to create millisecond delays.
 */
void Delay_ms(uint16_t ms)
{
    for (uint16_t i=0; i<ms; i++)
    {
        Delay_us(1000);  // Delay of 1 ms
    }
}
