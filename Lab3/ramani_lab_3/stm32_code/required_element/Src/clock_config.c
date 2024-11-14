/********************************************************
* File:    clock_config.c
* Author:  Bhakti Ramani
* Class:   ECEN 5613 - Embedded System Design
* Project: Lab 3 - STM32 Clock Configuration
* Create:  October 7, 2024
* Brief:   Configures system clock using PLL with HSE
*         Final Frequencies:
*         - SYSCLK: 38.4 MHz
*         - AHB1/APB1/APB2: 38.4 MHz
********************************************************/

#include"clock_config.h"
#include "stm32f4xx.h"
/*# Clock Frequency Summary

- System Clock (SYSCLK): 38.4 MHz
- AHB1 Clock: 38.4 MHz
- APB1 Clock: 38.4 MHz
- APB2 Clock: 38.4 MHz

These values are based on:
- HSE frequency: 8 MHz (assumed)
- PLL_M: 20
- PLL_N: 192
- PLL_P: 2 (derived from PLL_P definition of 8)
- AHB prescaler: 1
- APB1 prescaler: 1
- APB2 prescaler: 1


/*Steps to change clock frequency*/

/*
 	1. ENABLE HSE and wait for the HSE to become Ready
 		HSE - High Speed  External Oscillator

	2. Set the POWER ENABLE CLOCK and VOLTAGE REGULATOR
		Turning on Power for External clock source

	3. Configure the FLASH PREFETCH and the LATENCY Related Settings
		- FLASH PREFATCH - Flash prefetch is a feature that predicts and retrieves instructions
		  from Flash memory before they are needed, reducing the delay between instruction fetches and execution.
		- FLASH LATANCY - Flash latency is the delay in accessing data stored in Flash memory,
		  particularly relevant at higher clock frequencies. It's mitigated by adjusting wait states between Flash memory accesses.

	4. Configure the PRESCALARS HCLK, PCLK1, PCLK2
		HCLK (AHB clock), PCLK1 (APB1 clock), and PCLK2 (APB2 clock).

	5. Configure the MAIN PLL
		To generate the stable clock source using multipliers and divisors.

	6. Enable the PLL and wait for it to become ready

	7. Select the Clock Source and wait for it to be set
*/


/* PLL Configuration Values */
#define PLL_M   20      /* PLL Input Divider */
#define PLL_N   192     /* PLL Multiplier */
#define PLL_P   8       /* PLL Output Divider (P = 2) */

/* Flash Latency Configuration */
#define FLASH_PREFETCH_ENABLE     (1U<<8)
#define FLASH_INSTRUCTION_CACHE   (1U<<9)
#define FLASH_DATA_CACHE         (1U<<10)
#define FLASH_LATENCY_5WS        (5U<<0)

/* PLL Configuration Register bit positions */
#define PLL_M_BIT_POS      0U     /* PLLM bits position */
#define PLL_N_BIT_POS      6U     /* PLLN bits position */
#define PLL_P_BIT_POS      16U    /* PLLP bits position */
#define PLL_SRC_BIT_POS    22U    /* PLL source bit position */

/* PLL Source options */
#define PLL_SRC_HSE        1U     /* HSE selected as PLL source */
#define PLL_SRC_HSI        0U     /* HSI selected as PLL source */

/**
* @brief Configure system clock using PLL with HSE
* Steps:
* 1. Enable HSE and wait for ready
* 2. Enable power interface clock and set voltage regulator
* 3. Configure Flash prefetch and latency
* 4. Set bus prescalers
* 5. Configure and enable PLL
* 6. Select PLL as system clock
*/
void clock_config(void)
{
   /* 1. Enable HSE */
   RCC->CR |= RCC_CR_HSEON;
   while(!(RCC->CR & RCC_CR_HSERDY));

   /* 2. Enable power interface */
   RCC->APB1ENR |= RCC_APB1ENR_PWREN;
   PWR->CR |= PWR_CR_VOS;

   /* 3. Configure Flash */
   FLASH->ACR |= FLASH_PREFETCH_ENABLE;
   FLASH->ACR |= FLASH_INSTRUCTION_CACHE;
   FLASH->ACR |= FLASH_DATA_CACHE;
   FLASH->ACR |= FLASH_LATENCY_5WS;

   /* 4. Configure prescalers */
   RCC->CFGR |= RCC_CFGR_HPRE_DIV1;    /* AHB prescaler */
   RCC->CFGR |= RCC_CFGR_PPRE1_DIV1;   /* APB1 prescaler */
   RCC->CFGR |= RCC_CFGR_PPRE2_DIV1;   /* APB2 prescaler */

   /* 5. Configure PLL */
  /* Configure PLL parameters */
  RCC->PLLCFGR = (PLL_M << PLL_M_BIT_POS) |      /* Set PLLM division factor */
              (PLL_N << PLL_N_BIT_POS) |      /* Set PLLN multiplication factor */
              (PLL_P << PLL_P_BIT_POS) |      /* Set PLLP division factor */
              (PLL_SRC_HSE << PLL_SRC_BIT_POS); /* Select HSE as PLL source */

   /* 6. Enable PLL */
   RCC->CR |= RCC_CR_PLLON;
   while(!(RCC->CR & RCC_CR_PLLRDY));

   /* 7. Select PLL as system clock */
   RCC->CFGR |= RCC_CFGR_SW_PLL;
   while((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL);
}
