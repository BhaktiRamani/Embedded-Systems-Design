/****************************************************************************
 * @file user_input.h
 * @author Bhakti Ramani
 * @brief Header file for user input handling in the command-line interface.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Defines prototypes for functions to handle user input, such as taking
 * data input and displaying a menu for the command-line interface in an
 * embedded system application.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#ifndef _USER_INPUT_H_
#define _USER_INPUT_H_

#include <stdio.h>

/**
 * @brief Prompts the user to enter a data byte.
 * 
 * This function handles user input for data entry and ensures that the data
 * entered by the user is valid for the application.
 * 
 * @return unsigned char The data byte entered by the user.
 */
unsigned char take_data();

/**
 * @brief Displays the command menu.
 * 
 * This function provides a visual menu of available commands for the user.
 * It is typically called at the start of the program or when requested by the user.
 */
void display_menu(void);

#endif /* _USER_INPUT_H_ */
