/****************************************************************************
 * @file getchar_putchar.c
 * @author Bhakti Ramani
 * @brief UART character and string handling functions.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 *
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <ctype.h>
#include <limits.h>
#include "../inc/command_handlers.h"
#include "../inc/getchar_putchar.h"
#include "../inc/timer.h"
#include "lcd.h"


#define WRITE_DATA_BUFFER_LEN 100
#define ROW_COLUMN_NUMBER_LEN 3


void command_parser(char cmd)
{
    switch (cmd)
    {
    case 'W':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                        WRITE MENU                              ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        action_for_write_command();
        printf("\r\nExiting write menu...");
        break;

    case 'E':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                    CLEARING THE DISPLAY                        ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        __critical {
            lcd_clear();
            current_time_display();
        }
        printf("\r\nExiting clear menu...");
        break;

    case 'P':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                     PAUSING THE TIMER                          ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        timer_pause();
        printf("\r\nExiting pause menu...");
        break;

    case 'S':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                     START THE TIMER                            ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        timer_start();
        printf("\r\nExiting start timer menu...");
        break;

    case 'R':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                      STOP THE TIMER                            ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        timer_stop();
        printf("\r\nExiting stop timer menu...");
        break;

    case 'T':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                WRITE TO SPECIFIC POSITION                      ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        action_for_write_to_specific_position();
        printf("\r\nExiting write menu...");
        break;

    case 'H':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                 HEXDUMP OF DDRAM CONTENTS                      ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        __critical {
            lcd_ddram_dump_16x4();
        }
        printf("\r\nExiting hexdump menu...");
        break;

    case 'C':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                 HEXDUMP OF CGRAM CONTENTS                      ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        __critical {
            lcd_cgram_dump();
        }
        printf("\r\nExiting hexdump menu...");
        break;

    case 'A':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                   CREATE A CHARACTER                           ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        action_for_character_creation();
        printf("\r\nExiting character creation menu...");
        break;

    case 'D':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                  DISPLAY CUSTOM CHAR                           ║");
        printf("\r\n╚════════════════════════════════════════════════════════════════╝");
        action_for_display_custom_char();
        break;

    case '?':
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                         HELP MENU                              ║");
        printf("\r\n╠═══════════╦════════════════════════════════════════════════════╣");
        printf("\r\n║ Command   ║                    Description                     ║");
        printf("\r\n╠═══════════╬════════════════════════════════════════════════════╣");
        printf("\r\n║    W      ║ Write a string                                     ║");
        printf("\r\n║    T      ║ Write to a specific position in the LCD            ║");
        printf("\r\n║    E      ║ Clear the display                                  ║");
        printf("\r\n║    P      ║ Pause the Timer                                    ║");
        printf("\r\n║    S      ║ Start the Timer                                    ║");
        printf("\r\n║    R      ║ Stop and reset the Timer                           ║");
        printf("\r\n║    H      ║ Hexdump of DDRAM contents                          ║");
        printf("\r\n║    C      ║ Hexdump of CGRAM contents                          ║");
        printf("\r\n║    A      ║ Create a CGRAM character                           ║");
        printf("\r\n║    D      ║ Display a CGRAM character                          ║");
        printf("\r\n║    ?      ║ Help menu                                          ║");
        printf("\r\n╚═══════════╩════════════════════════════════════════════════════╝");
        break;

    default:
        printf("\r\n╔════════════════════════════════════════════════════════════════╗");
        printf("\r\n║                      INVALID INPUT                             ║");
        printf("\r\n╠═══════════╦════════════════════════════════════════════════════╣");
        printf("\r\n║ Command   ║                    Description                     ║");
        printf("\r\n╠═══════════╬════════════════════════════════════════════════════╣");
        printf("\r\n║    W      ║ Write a string                                     ║");
        printf("\r\n║    T      ║ Write to a specific position in the LCD            ║");
        printf("\r\n║    E      ║ Clear the display                                  ║");
        printf("\r\n║    P      ║ Pause the Timer                                    ║");
        printf("\r\n║    S      ║ Start the Timer                                    ║");
        printf("\r\n║    R      ║ Stop and reset the Timer                           ║");
        printf("\r\n║    H      ║ Hexdump of DDRAM contents                          ║");
        printf("\r\n║    C      ║ Hexdump of CGRAM contents                          ║");
        printf("\r\n║    A      ║ Create a CGRAM character                           ║");
        printf("\r\n║    D      ║ Display a CGRAM character                          ║");
        printf("\r\n║    ?      ║ Help menu                                          ║");
        printf("\r\n╚═══════════╩════════════════════════════════════════════════════╝");
        break;
    }
}

bool is_digit(char c)
{
    //Check If the character is digit
    return (c >= '0' && c <= '9');
}


void action_for_write_command(void)
{
    // Action for + command. Get input and allocate memory
    char input_buffer[WRITE_DATA_BUFFER_LEN]; // Inputs can range between 50 and 500
    char *error_message = "\r\nOut of range\r\n";
    uint16_t address_location = 0;
    uint16_t write_data = 0;
    get_in_mem_state current_state = GET_STRING_INPUT_FROM_USER;
    bool wait_for_input = true;
    // Check if input is valid

    while (wait_for_input)
    {
        switch (current_state)
        {
        case GET_STRING_INPUT_FROM_USER:
            printf("\r\nEnter the string and press enter:");
            if (!getstr(input_buffer, sizeof(input_buffer), error_message))
            {
                current_state = PUT_DATA_TO_LCD;
            }
            break;
        case PUT_DATA_TO_LCD:
        //Check and extract the number
        __critical{
            lcd_clear();
            lcd_put_string(input_buffer,0,0);
            current_time_display();
        }
            current_state = EXIT;
            break;
        case EXIT:
            wait_for_input = false;
            break;
        default:
            break;
        }
    }
}

void check_input_buffer_and_extract_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint8_t *input_number,get_in_mem_state *next_state_on_error)
{

    *input_number=0;
    get_in_mem_state temp_current_state = *current_state;
    // Check if the input is to quit from this menu, then go to exit
    if (*input_buffer == 'q' || *input_buffer == 'Q')
    {
        *current_state = EXIT;
        return;

    }
    // Extract the input number
    for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
    {
        if (is_digit(input_buffer[i]))
        {
            //If digit add to number creation
            *input_number = (*input_number) * 10 + (input_buffer[i] - '0'); // Build the number
        }
        else
        {
            printf("\r\nInvalid input");
            *current_state = *next_state_on_error;
            break;
        }
    }
    return;
}

bool is_valid_hex(const char *str) {
    // Check for empty string
    if (*str == '\0') {
        return false;
    }

    // Optional: Allow "0x" or "0X" prefix
    if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X')) {
        str += 2;
    }

    // Check each character to ensure it's a hex digit
    while (*str) {
        if (!isxdigit((unsigned char)*str)) {
            return false; // Invalid character found
        }
        str++;
    }

    return true; // All characters are valid hex digits
}

uint16_t hex_to_uint16(const char *hex_str) {
    uint16_t result = 0;

    // Skip optional "0x" or "0X" prefix
    if (hex_str[0] == '0' && (hex_str[1] == 'x' || hex_str[1] == 'X')) {
        hex_str += 2;
    }

    // Iterate over each character in the hex string
    while (*hex_str) {
        result <<= 4; // Shift result left by 4 bits to make room for the next hex digit

        // Convert current hex character to its integer value
        if (*hex_str >= '0' && *hex_str <= '9') {
            result += *hex_str - '0';
        } else if (*hex_str >= 'A' && *hex_str <= 'F') {
            result += *hex_str - 'A' + 10;
        } else if (*hex_str >= 'a' && *hex_str <= 'f') {
            result += *hex_str - 'a' + 10;
        }

        hex_str++; // Move to the next character
    }

    return result;
}


void check_input_buffer_and_extract_hex_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint16_t *input_number,get_in_mem_state *next_state_on_error)
{

    *input_number=0;
    long int value;
    char *endptr;
    get_in_mem_state temp_current_state = *current_state;
    // Check if the input is to quit from this menu, then go to exit
    if (*input_buffer == 'q' || *input_buffer == 'Q')
    {
        *current_state = EXIT;
        return;

    }
    if(is_valid_hex(input_buffer))
    {
        // Extract hex string to number
         value = hex_to_uint16(input_buffer);
         *input_number = value;
    }
    else
    {
        *current_state = *next_state_on_error;
    }
 
    return;
}

void action_for_write_to_specific_position(void)
{
    // Action for + command. Get input and allocate memory
    char input_buffer[ROW_COLUMN_NUMBER_LEN]; // Inputs can range between 1 and 16
     char input_buffer_string[WRITE_DATA_BUFFER_LEN]; // Inputs can range between 50 and 500
    char *error_message = "\r\nOut of range\r\n";
    uint8_t row_number = 0;
    uint8_t column_number = 0;
    get_in_mem_state current_state = GET_ROW_INPUT_FROM_USER;
    bool wait_for_input = true;
    // Check if input is valid

    get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
    while (wait_for_input)
    {
        switch (current_state)
        {
        case GET_ROW_INPUT_FROM_USER:
            printf("\r\nEnter the row number(between 1 and 4):");
            if (!getstr(input_buffer, sizeof(input_buffer), error_message))
            {
                current_state = PARSE_ROW_INPUT;
            }
            break;
        case PARSE_ROW_INPUT:
            state_on_error = GET_ROW_INPUT_FROM_USER;
            check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&row_number,&state_on_error);
            if(current_state==PARSE_ROW_INPUT)
            {
                if(row_number<=4)
                {
                    row_number-=1;
                    current_state=GET_COLUMN_INPUT_FROM_USER;
                }
                else
                {
                    printf("\r\nInvalid Input:");
                    current_state = GET_ROW_INPUT_FROM_USER;
                }
            }

            break;
        case GET_COLUMN_INPUT_FROM_USER:
        //Check and extract the number
            printf("\r\nEnter the column number(between 1 and 16):");
            if (!getstr(input_buffer, sizeof(input_buffer), error_message))
            {
                current_state = PARSE_COLUMN_INPUT;
            }
            break;
        case PARSE_COLUMN_INPUT:
            state_on_error = GET_COLUMN_INPUT_FROM_USER;
            check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&column_number,&state_on_error);
            if(current_state==PARSE_COLUMN_INPUT)
            {
                if(row_number<=16)
                {
                    column_number-=1;
                    current_state = GET_STRING_INPUT_FROM_USER;
                }
                else
                {
                    printf("\r\nInvalid Input:");
                    current_state = GET_COLUMN_INPUT_FROM_USER;
                }
            }

            break;
        case GET_STRING_INPUT_FROM_USER:
            printf("\r\nEnter the string and press enter:");
            if (!getstr(input_buffer_string, sizeof(input_buffer_string), error_message))
            {
                current_state = PUT_DATA_TO_LCD;
            }
            break;
        case PUT_DATA_TO_LCD:
        //Check and extract the number
        __critical{
            lcd_clear();
            lcd_put_string(input_buffer_string,row_number,column_number);
            current_time_display();
        }

            current_state = EXIT;
            break;
        case EXIT:
            wait_for_input = false;
            break;
        default:
            break;
        }
    } 
}
void action_for_display_custom_char(void)
{    // Action for + command. Get input and allocate memory
    char input_buffer[ROW_COLUMN_NUMBER_LEN]; // Inputs can range between 1 and 16
    char *error_message = "\r\nOut of range\r\n";
    uint8_t char_code_row_value = 0;
    uint8_t char_code_number = 0;
    get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
    bool wait_for_input = true;
    uint8_t char_code_row_values[8];
    // Check if input is valid

    get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
    while (wait_for_input)
    {
        switch (current_state)
        {
        case GET_CHAR_CODE_INPUT_FROM_USER:
            printf("\r\nEnter the char code to display (between 1 and 8):");
            if (!getstr(input_buffer, sizeof(input_buffer), error_message))
            {
                current_state = PARSE_CHAR_CODE_INPUT;
            }
            break;
        case PARSE_CHAR_CODE_INPUT:
            state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
            check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
            if(current_state==PARSE_CHAR_CODE_INPUT)
            {
                printf("\r\nCharcode to display is %d:",char_code_number);
                if(char_code_number>0 && char_code_number<=8)
                {
                    char_code_number-=1;
                    current_state=DISPLAY_CGRAM_CHAR;
                }
                else
                {
                    printf("\r\nInvalid Input:");
                    current_state = GET_CHAR_CODE_INPUT_FROM_USER;
                }
            }

            break;
        case DISPLAY_CGRAM_CHAR:
             printf("\r\nDisplay custom char:");
            //Check and extract the number
            __critical{
                lcd_clear();
                display_custom_char(char_code_number);
                current_time_display();
            }
            current_state = EXIT;
            break;
        case EXIT:
            wait_for_input = false;
            break;
        default:
            break;
        }
    }

}

void action_for_character_creation(void)
{
    // Action for + command. Get input and allocate memory
    char input_buffer[ROW_COLUMN_NUMBER_LEN]; // Inputs can range between 1 and 16
    char *error_message = "\r\nOut of range\r\n";
    uint8_t char_code_row_value = 0;
    uint8_t char_code_number = 0;
    get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
    bool wait_for_input = true;
    uint8_t char_code_row_values[8];
    // Check if input is valid

    get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
    while (wait_for_input)
    {
        switch (current_state)
        {
        case GET_CHAR_CODE_INPUT_FROM_USER:
            printf("\r\nEnter the char code to create (between 1 and 8):");
            if (!getstr(input_buffer, sizeof(input_buffer), error_message))
            {
                current_state = PARSE_CHAR_CODE_INPUT;
            }
            break;
        case PARSE_CHAR_CODE_INPUT:
            state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
            check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
            if(current_state==PARSE_CHAR_CODE_INPUT)
            {
                if(char_code_number>0 && char_code_number<=8)
                {
                    char_code_number-=1;
                    current_state=GET_ROW_VALUE_AND_PARSE;
                }
                else
                {
                    printf("\r\nInvalid Input:");
                    current_state = GET_CHAR_CODE_INPUT_FROM_USER;
                }
            }

            break;
        case GET_ROW_VALUE_AND_PARSE:
        //Check and extract the number
            for(int8_t i=0;i<8;i++)
            {
                printf("\r\nEnter the value for row %d in hex without 0x prefix:",i+1);
                if (!getstr(input_buffer, sizeof(input_buffer), error_message))
                {
                    check_input_buffer_and_extract_hex_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_row_value,&state_on_error);
                    if(current_state!=GET_ROW_VALUE_AND_PARSE )
                    {
                        current_state = GET_ROW_VALUE_AND_PARSE;
                        i--;
                    }
                    else if(char_code_row_value > 0x1F)
                    {
                        printf("\r\nRow value out of range. Must be between 0x00 and 0x1F.\r\n");
                        current_state = GET_ROW_VALUE_AND_PARSE;
                        i--;
                    }
                    else
                    {
                        char_code_row_values[i]=char_code_row_value;
                    }
                }
            }
            current_state = CREATE_CGRAM_CHAR;
            break;
        case CREATE_CGRAM_CHAR:
        //Check and extract the number
        __critical{
            lcd_clear();
            lcd_create_char(char_code_number,char_code_row_values);
            current_time_display();
        }

            current_state = EXIT;
            break;
        case EXIT:
            wait_for_input = false;
            break;
        default:
            break;
        }
    } 
}

