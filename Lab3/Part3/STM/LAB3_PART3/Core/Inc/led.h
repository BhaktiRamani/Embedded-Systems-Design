/**
 * @file led.h
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief LED control function declarations
 *
 * ESD Lab 2 Part 2
 * This file contains function declarations for LED initialization and control.
 */

#ifndef _LED_H_
#define _LED_H_

#include "stm32f4xx.h"
#include "delay.h"
#include "interrupt.h"

#define GPIOD_PIN (1U << 13)
#define BLUE_LED (1 << 15)
#define GREEN_LED (1 << 12)

/**
 * @brief Initialize LED GPIO pins
 */
void led_init(void);

/**
 * @brief Turn on the LED on PD13
 */
void led_on(void);

/**
 * @brief Turn off the LED on PD13
 */
void led_off(void);

/**
 * @brief Turn on the blue LED (PD15)
 */
void bled_on(void);

/**
 * @brief Turn on the green LED (PD12)
 */
void gled_on(void);

/**
 * @brief Turn off the green LED (PD12)
 */
void gled_off(void);

/**
 * @brief Turn off the blue LED (PD15)
 */
void bled_off(void);

#endif /* _LED_H_ */
