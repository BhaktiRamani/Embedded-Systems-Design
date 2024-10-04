/**
 * @file led.c
 * @author Bhakti Ramani
 * @date October 4, 2024
 * @brief LED control functions
 *
 * ESD Lab 2 Part 2
 * This file contains functions to initialize and control LEDs on the STM32F4 board.
 */

#include "led.h"

#define GPIODEN (1U << 3)
#define GPIOAEN (1U << 0)
#define GPIOD_PIN (1U << 13)
#define BLUE_LED (1 << 15)
#define GREEN_LED (1 << 12)

int isr_flag;

/**
 * @brief Initialize LED GPIO pins
 *
 * This function configures the GPIO pins for the LEDs and button:
 * - Enables clock for GPIOD and GPIOA
 * - Sets PD13, PD12 (green LED), and PD15 (blue LED) as outputs
 * - Sets PA0 as input for the button
 */
void led_init(void)
{
    // Enable clock access for Port A and D
    RCC->AHB1ENR |= GPIODEN;
    RCC->AHB1ENR |= GPIOAEN;

    // Configure PD13 as output
    GPIOD->MODER |= (1U << 26);
    GPIOD->MODER &= ~(1U << 27);

    // Configure PD12 (green LED) as output
    GPIOD->MODER |= (1U << 24);
    GPIOD->MODER &= ~(1U << 25);

    // Configure PD15 (blue LED) as output
    GPIOD->MODER |= (1U << 30);
    GPIOD->MODER &= ~(1U << 31);

    // Configure PA0 as input
    GPIOA->MODER &= ~(3 << (0 * 2));
}

/**
 * @brief Turn on the LED on PD13
 */
void led_on(void)
{
    GPIOD->ODR |= GPIOD_PIN;
}

/**
 * @brief Turn off the LED on PD13
 */
void led_off(void)
{
    GPIOD->ODR &= ~GPIOD_PIN;
}

/**
 * @brief Turn on the blue LED (PD15)
 */
void bled_on(void)
{
    GPIOD->ODR |= BLUE_LED;
}

/**
 * @brief Turn off the blue LED (PD15)
 */
void bled_off(void)
{
    GPIOD->ODR &= ~BLUE_LED;
}

/**
 * @brief Turn on the green LED (PD12)
 */
void gled_on(void)
{
    GPIOD->ODR |= GREEN_LED;
}

/**
 * @brief Turn off the green LED (PD12)
 */
void gled_off(void)
{
    GPIOD->ODR &= ~GREEN_LED;
}
