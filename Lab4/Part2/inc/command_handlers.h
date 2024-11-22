/****************************************************************************
 * @file command_handler.c
 * @author Bhakti Ramani
 * @brief Command handler functions for memory operations.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 * @details
 * This file contains the implementation of command handlers that manage 
 * different actions triggered by user input commands. It provides a state 
 * machine to handle different user input cases and memory operations.
 * 
 * @hardware_configuration
 * - MCU: [Microcontroller details]
 * - Connection Details: [Specify hardware configuration]
 *
 * @features
 * - Command parsing and memory allocation handling
 * - Hex dump display functionality
 * - Handling of user inputs including string and numeric data
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <stdbool.h>
#include <stdint.h>

/** 
 * @brief Specifies different states in the + and - commands
 * 
 * Enum defines various states for handling memory operations and user input
 * in the state machine.
 */
typedef enum getting_input_and_allocate_memory_s
{
    GET_STRING_INPUT_FROM_USER,       /**< Get string input from the user */
    PUT_DATA_TO_LCD,                  /**< Send data to the LCD */
    GET_ROW_INPUT_FROM_USER,          /**< Get row input from the user */
    GET_COLUMN_INPUT_FROM_USER,       /**< Get column input from the user */
    PARSE_ROW_INPUT,                  /**< Parse row input */
    PARSE_COLUMN_INPUT,               /**< Parse column input */
    GET_CHAR_CODE_INPUT_FROM_USER,    /**< Get character code input from the user */
    PARSE_CHAR_CODE_INPUT,            /**< Parse character code input */
    GET_ROW_VALUE_AND_PARSE,          /**< Get row value and parse it */
    CREATE_CGRAM_CHAR,                /**< Create CGRAM character */
    DISPLAY_CGRAM_CHAR,               /**< Display CGRAM character */
    EXIT,                             /**< Exit the process */
} get_in_mem_state;

/**
 * @brief Parses input command and takes action.
 * 
 * This function handles the parsing of input commands and takes the necessary
 * action based on the user input. It interacts with memory handler functionality.
 * 
 * @param cmd Input command character to be handled.
 * @return None
 */
void command_parser(char cmd);


/**
 * @brief Action for write command in a state machine.
 * 
 * This function executes actions for the write command in the state machine,
 * performing necessary operations such as memory allocation and data storage.
 * 
 * @param None
 * @return None
 */
void action_for_write_command(void);


/**
 * @brief Action for hex dump command.
 * 
 * This function prints the hex dump of memory or data contents to the console.
 * It is used for debugging and inspecting memory contents in a human-readable format.
 * 
 * @param None
 * @return None
 */
void action_for_hexdump_command(void);


/**
 * @brief Checks the input buffer for a number string and extracts it.
 * 
 * This function checks the provided input buffer for a numeric string and extracts
 * the number from it. It also handles errors and changes the state of execution
 * accordingly.
 * 
 * @param input_buffer Buffer holding the input string.
 * @param buffer_len Length of the input buffer.
 * @param current_state Pointer to the current state of execution.
 * @param input_number Pointer to the variable to hold the extracted number.
 * @param next_state_on_error Pointer to the state to transition on error.
 * @return None
 */
void check_input_buffer_and_extract_number(char *input_buffer, uint16_t buffer_len, get_in_mem_state *current_state, uint8_t *input_number, get_in_mem_state *next_state_on_error);


/**
 * @brief Checks if the character is a digit.
 * 
 * This function checks if a given character is a valid digit (0-9).
 * 
 * @param c The character to be checked.
 * @return true if the character is a digit, false otherwise.
 */
bool is_digit(char c);

