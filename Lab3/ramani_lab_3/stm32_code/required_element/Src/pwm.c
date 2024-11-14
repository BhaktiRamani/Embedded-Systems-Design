/**
 * @file pwm.c
 * @brief ESD LAB 3 PART 3 - PWM Implementation
 *
 * Implementation of PWM functionality for LED brightness control using
 * Timer 1 on STM32F4 microcontroller.
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */

#include "pwm.h"

/* PWM Constants */
#define PWM_MIN_DUTY_CYCLE    0
#define PWM_MAX_DUTY_CYCLE    255
#define PWM_RESET_DUTY_CYCLE  12
#define PWM_DELAY_COUNT       100000

/* GPIO Configuration Constants */
#define GPIO_AF1_MASK         0xF
#define GPIO_AF1_SHIFT        28
#define GPIO_SPEED_MASK       GPIO_OSPEEDER_OSPEEDR7
#define GPIO_PUPD_MASK        GPIO_PUPDR_PUPD7_Msk

/* Pin configuration constants */
#define GPIO_AF_PIN_31     31     /* GPIO Alternate Function Pin 31 */
#define GPIO_AF_PIN_30     30     /* GPIO Alternate Function Pin 30 */
#define GPIO_AF_PIN_29     29     /* GPIO Alternate Function Pin 29 */
#define GPIO_AF_PIN_28     28     /* GPIO Alternate Function Pin 28 */

/* Bit mask for clearing/setting pins */
#define GPIO_PIN_CLEAR     0U     /* Value to clear a GPIO pin */
#define GPIO_PIN_SET       1U     /* Value to set a GPIO pin */

volatile int DUTY_CYCLE = 153;

void PWM_init(void)
{
    /* Clock Enable */
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    /* Configure PA7 for TIM1_CH1N */
    GPIOA->MODER &= ~GPIO_MODER_MODER7_Msk;
    GPIOA->MODER |= GPIO_MODER_MODER7_1;  // Alternate function mode

    /* Configure GPIO Alternate Function Register */
    GPIOA->AFR[0] &= ~(GPIO_PIN_SET << GPIO_AF_PIN_31);  /* Clear AF31 */
    GPIOA->AFR[0] &= ~(GPIO_PIN_SET << GPIO_AF_PIN_30);  /* Clear AF30 */
    GPIOA->AFR[0] &= ~(GPIO_PIN_SET << GPIO_AF_PIN_29);  /* Clear AF29 */
    GPIOA->AFR[0] |= (GPIO_PIN_SET << GPIO_AF_PIN_28);   /* Set AF28 */

    /* GPIO Speed and Pull Configuration */
    GPIOA->OSPEEDR |= GPIO_SPEED_MASK;
    GPIOA->PUPDR &= ~GPIO_PUPD_MASK;

    /* Timer Configuration */
    TIM1->PSC = PRESCALER;
    TIM1->ARR = TOTAL_PERIOD;

    /* PWM Configuration */
    TIM1->CCER |= TIM_CCER_CC1NE;
    TIM1->CCMR1 &= ~TIM_CCMR1_OC1M_Msk;
    TIM1->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2;
    TIM1->CCMR1 |= TIM_CCMR1_OC1PE;
    TIM1->EGR |= TIM_EGR_UG;
}

void pwm_timer_start(void)
{
    TIM1->BDTR |= TIM_BDTR_MOE;
    TIM1->CR1 |= TIM_CR1_CEN;
}

void pwm_timer_stop(void)
{
    TIM1->BDTR &= ~TIM_BDTR_MOE;
    TIM1->CR1 &= ~TIM_CR1_CEN;
}

void pwm_timer_execution(void)
{
    pwm_timer_start();

    /* Reset duty cycle if out of bounds */
    if(DUTY_CYCLE >= PWM_MAX_DUTY_CYCLE || DUTY_CYCLE <= PWM_MIN_DUTY_CYCLE) {
        DUTY_CYCLE = PWM_RESET_DUTY_CYCLE;
    }

    TIM1->CCR1 = DUTY_CYCLE;

    /* Delay loop */
    for (volatile int j = 0; j < PWM_DELAY_COUNT; j++);

    pwm_timer_stop();
}
