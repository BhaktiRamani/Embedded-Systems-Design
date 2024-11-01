/**
 * @file pwm.c
 * @brief PES Assignment 4: Airport Trains - PWM Implementation
 *
 * This file implements the PWM (Pulse Width Modulation) functionality for
 * the Airport Train Control System, managing LED brightness and potentially
 * motor control.
 *
 * @author Bhakti Ramani
 * @date 16/10/2024
 *
 * @copyright Copyright (c) 2024 Bhakti Ramani. All rights reserved.
 */

#include "pwm.h"

volatile int DUTY_CYCLE = 153;

/**
 * @brief Initializes the PWM functionality
 *
 * This function sets up Timer 1 for PWM output on PA7 (TIM1_CH1N).
 * It configures the GPIO, sets up the timer, and prepares the PWM output.
 */
void PWM_init(void)
{
    // Enable TIM1 clock
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;

//    // Enable GPIOA clock if not already enabled
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // Configure PA7 for TIM1_CH1N
    GPIOA->MODER &= ~GPIO_MODER_MODER7_Msk;
    GPIOA->MODER |= GPIO_MODER_MODER7_1;  // Alternate function mode

    // Set PA7 to AF01 for TIM1_CH1N
	GPIOA -> AFR[0] &= ~(1U << 31);
	GPIOA -> AFR[0] &= ~(1U << 30);
	GPIOA -> AFR[0] &= ~(1U << 29);
	GPIOA -> AFR[0] |= (1U << 28);

    // Set PA7 to high speed
    GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR7;

    // No pull-up or pull-down
    GPIOA->PUPDR &= ~GPIO_PUPDR_PUPD7_Msk;

    // Timer configuration
    TIM1->PSC = PRESCALER;
    TIM1->ARR = TOTAL_PERIOD;
    //TIM1->CCR1 = DUTY_CYCLE;  // Set the duty cycle value


    // Enable the complementary output of Channel 1
    TIM1->CCER |= TIM_CCER_CC1NE;

    // Configure Channel 1 as PWM mode 1
    TIM1->CCMR1 &= ~TIM_CCMR1_OC1M_Msk;
    TIM1->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2;

    // Enable auto-reload preload
    //TIM1->CR1 |= TIM_CR1_ARPE;

    // Enable preload for Channel 1
    TIM1->CCMR1 |= TIM_CCMR1_OC1PE;

    // Generate an update event to load the registers
    TIM1->EGR |= TIM_EGR_UG;


}


/**
 * @brief Starts the PWM timer
 *
 * This function enables the PWM output and starts the timer.
 */
void pwm_timer_start(void)
{
    TIM1->BDTR |= TIM_BDTR_MOE;
    TIM1->CR1 |= TIM_CR1_CEN;
}

/**
 * @brief Stops the PWM timer
 *
 * This function disables the PWM output and stops the timer.
 */
void pwm_timer_stop(void)
{
    TIM1->BDTR &= ~TIM_BDTR_MOE;
    TIM1->CR1 &= ~TIM_CR1_CEN;
}

/**
 * @brief Executes the PWM timer for a specific duration
 *
 * @param n Number of 500ms intervals to run the PWM
 *
 * This function manages the PWM execution for different states,
 * adjusting the duty cycle and duration based on the current state.
 */
void pwm_timer_execution()
{
    pwm_timer_start();
	if(DUTY_CYCLE >= 255) DUTY_CYCLE = 12;
    if(DUTY_CYCLE <= 0) DUTY_CYCLE = 12;
    TIM1->CCR1 = DUTY_CYCLE;
    for (volatile int j = 0; j < 100000; j++);
    pwm_timer_stop();
//    for(int i = 0; i<= 255; i+=17)
//    {
//
//    	TIM1->CCR1 = i;
//    	//DUTY_CYCLE = DUTY_CYCLE + 17;
//    	for (volatile int j = 0; j < 100000; j++);
//
//    }
//    for(int i = 255; i>=0; i-=17)
//    {
//
//    	TIM1->CCR1 = i;
//    	//DUTY_CYCLE = DUTY_CYCLE + 17;
//    	for (volatile int j = 0; j < 100000; j++);
//
//    }

//    for(int i = 0; i<= 255; i++)
//     {
//
//    	if(DUTY_CYCLE >= 255) DUTY_CYCLE = 0;
//    	if(DUTY_CYCLE < 0) DUTY_CYCLE = 0;
//     	TIM1->CCR1 = DUTY_CYCLE;
////     	DUTY_CYCLE = DUTY_CYCLE + 17;
//     	for (volatile int j = 0; j < 100000; j++);
//
//     }



}
