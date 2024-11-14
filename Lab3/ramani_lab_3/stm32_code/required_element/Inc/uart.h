/********************************************************
* File:    uart.h
* Author:  Bhakti Ramani
* Class:   ECEN 5613 - Embedded System Design
* Project: Lab 3 - UART Implementation
* Create:  October 7, 2024
* Brief:   Header file for UART configuration and operations
********************************************************/

#ifndef UART_H_
#define UART_H_

/**
* @brief Initialize UART for transmission
* @return void
*/
void uart_tx_init(void);

/**
* @brief Send a character over UART
* @param ch Character to transmit
* @return Character that was transmitted
*/
int putchar(int ch);

/**
* @brief Read a character from UART
* @return Character received from UART
*/
int uart_read(void);

#endif  /* UART_H_ */
