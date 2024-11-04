/********************************************************
* File:    led.c
* Author:  Bhakti Ramani
* Class:   ECEN 5613 - Embedded System Design
* Project: Lab 3 - LED GPIO Configuration
* Create:  October 7, 2024
* Brief:   GPIO initialization for LEDs and button
********************************************************/

#include "led.h"
#include "stm32f4xx.h"

#define GPIODEN (1U << 3)
#define GPIOAEN (1U << 0)
#define GPIOD_PIN (1U << 13)
#define BLUE_LED (1 << 15)
#define GREEN_LED (1 << 12)

int isr_flag;



/* GPIO Pin Definitions */
#define LED_ORANGE_PIN       13
#define LED_GREEN_PIN        12
#define LED_BLUE_PIN         15
#define BUTTON_PIN           0

/* GPIO Mode Bit Positions */
#define GPIO_MODER_ORANGE    (2 * LED_ORANGE_PIN)
#define GPIO_MODER_GREEN     (2 * LED_GREEN_PIN)
#define GPIO_MODER_BLUE      (2 * LED_BLUE_PIN)
#define GPIO_MODER_BUTTON    (2 * BUTTON_PIN)

/* GPIO Mode Values */
#define GPIO_MODE_OUTPUT     1U
#define GPIO_MODE_INPUT      0U
#define GPIO_MODE_MASK       3U

/* Clock Enable */
#define GPIOD_CLOCK_ENABLE  (1U << 3)

/**
* @brief Initialize LED pins and button
*/
void led_init(void)
{
   /* Enable clock access for Port D */
   RCC->AHB1ENR |= GPIOD_CLOCK_ENABLE;

   /* Configure PD13 (Orange LED) as output */
   GPIOD->MODER |= (GPIO_MODE_OUTPUT << GPIO_MODER_ORANGE);
   GPIOD->MODER &= ~(GPIO_MODE_OUTPUT << (GPIO_MODER_ORANGE + 1));

   /* Configure PD12 (Green LED) as output */
   GPIOD->MODER |= (GPIO_MODE_OUTPUT << GPIO_MODER_GREEN);
   GPIOD->MODER &= ~(GPIO_MODE_OUTPUT << (GPIO_MODER_GREEN + 1));

   /* Configure PD15 (Blue LED) as output */
   GPIOD->MODER |= (GPIO_MODE_OUTPUT << GPIO_MODER_BLUE);
   GPIOD->MODER &= ~(GPIO_MODE_OUTPUT << (GPIO_MODER_BLUE + 1));

   /* Configure PA0 (Button) as input */
   GPIOA->MODER &= ~(GPIO_MODE_MASK << GPIO_MODER_BUTTON);
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
