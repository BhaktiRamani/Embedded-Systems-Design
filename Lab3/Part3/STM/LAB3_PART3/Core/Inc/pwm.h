/**
 * @file pwm.h
 * @brief PES Assignment 4: Airport Trains - PWM Function Declarations
 *
 * This header file contains the declarations of functions related to
 * Pulse Width Modulation (PWM) operations in the Airport Train Control System.
 * These functions are responsible for initializing, starting, stopping,
 * and executing PWM operations.
 *
 * @author Bhakti Ramani
 * @date 16/10/2024
 *
 * @copyright Copyright (c) 2024 Bhakti Ramani. All rights reserved.
 */

#ifndef PWM_H_
#define PWM_H_
#include "stm32f4xx.h"
#define TOTAL_PERIOD 255
#define PRESCALER 149
extern volatile int DUTY_CYCLE;

/**
 * @brief Initializes the PWM functionality
 *
 * This function sets up the necessary hardware and configurations
 * for PWM operation.
 */
void PWM_init(void);

/**
 * @brief Starts the PWM timer
 *
 * This function begins the PWM signal generation.
 */
void pwm_timer_start(void);

/**
 * @brief Stops the PWM timer
 *
 * This function halts the PWM signal generation.
 */
void pwm_timer_stop(void);

/**
 * @brief Executes a PWM sequence
 *
 * @param n The number of PWM cycles or the duration of PWM execution
 *
 * This function runs a specific PWM sequence or pattern for a given
 * number of cycles or duration.
 */
void pwm_timer_execution();

#endif /* PWM_H_ */
