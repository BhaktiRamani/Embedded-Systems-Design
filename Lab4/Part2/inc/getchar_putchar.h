/****************************************************************************
 * @file getchar_putchar.h
 * @author Bhakti Ramani
 * @brief UART character and string handling functions header.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 * @details
 * This header file contains the function prototypes for handling UART communication. 
 * It includes functions to receive a character, receive a string, and handle UART 
 * communication via functions `getchar()` and `getstr()`. It also provides error 
 * handling for cases like buffer overflow during string input.
 * 
 *
 * @features
 * - Functions for receiving and

   
/**
 * @brief Gets a character via UART.
 * 
 * This function waits for a character to be received via UART and returns it.
 * 
 * @param None
 * @return The character received from UART.
 */
int getchar(void);


/**
 * @brief Gets a string via UART until carriage return or line feed is received.
 * 
 * This function receives a string of characters via UART and stores it in the provided buffer.
 * It stops when a carriage return or line feed is received, and the string is null-terminated.
 * 
 * @param buffer The buffer to store the received string.
 * @param buffer_len The length of the buffer.
 * @param error_string The error message to print if an error occurs.
 * @return Returns false if an error occurs, otherwise true.
 */
bool getstr(char *buffer, int buffer_len, char *error_string);
