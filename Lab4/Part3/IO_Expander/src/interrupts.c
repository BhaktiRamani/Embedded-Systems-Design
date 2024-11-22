/**
 * @file interrupts.c
 * @author Bhakti Ramani
 * @brief External interrupt configuration implementation
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements configuration functions for external interrupt 0.
 * Controls interrupt triggering mode and global interrupt state.
 * 
 * @copyright Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#include "interrupts.h"

void disable_interrupt0(void)
{
    IT0 = 0;     /* Set INT0 to level-triggered mode */
    EX0 = 0;     /* Disable INT0 interrupt source */
    EA = 0;      /* Disable global interrupt system */
}

void enable_interrupt0(void)
{
    IT0 = 1;     /* Set INT0 to edge-triggered mode */
    EX0 = 1;     /* Enable INT0 interrupt source */
    EA = 1;      /* Enable global interrupt system */
}