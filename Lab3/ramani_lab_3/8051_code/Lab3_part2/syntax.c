/*********************************************************************
 * File Name: syntax.c
 *
 * Purpose:
 *     Buffer Management System implementation for ESD Lab 3 Part 2.
 *     Provides dynamic buffer allocation, management and monitoring
 *     capabilities with UART interface.
 *
 * Features:
 *     - Dynamic buffer creation/deletion
 *     - Memory allocation tracking
 *     - Resource usage statistics
 *     - UART-based user interface
 *     - Debug capability via port 0xFEFE
 *
 * Author: Bhakti Ramani
 * Tools: SDCC, VS Code
 * Date: October 25, 2024
 *********************************************************************/

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* Buffer Constraints */
#define BUFFER_SIZE_MAX        5120    // Maximum default buffer size
#define BUFFER_SIZE_MIN        32      // Minimum default buffer size
#define HEAP_SIZE             5120     // Total heap size
#define SMALL_BUFFER_MAX      500      // Max small buffer size
#define SMALL_BUFFER_MIN      50       // Min small buffer size
#define BUFFER_ALIGN          16       // Buffer size alignment requirement
#define MAX_BUFFERS           100      // Maximum number of buffers
#define BUFFER_0_INDEX        0        // Index for main buffer
#define BYTES_PER_LINE        16       // Number of bytes to display per line
#define MAX_INPUT_DIGITS      4        // Maximum input digits allowed
#define DECIMAL_BASE          10       // For decimal conversion

/* ASCII Values */
#define ASCII_CHAR_0          '0'      // ASCII value for '0'
#define ASCII_CHAR_9          '9'      // ASCII value for '9'
#define ASCII_ENTER           0x0D     // ASCII value for Enter
#define ASCII_UPPER_A         65       // ASCII value for 'A'
#define ASCII_UPPER_Z         90       // ASCII value for 'Z'

/* UART Configuration */
#define UART_MODE_1           0x50     // 8-bit UART mode
#define TIMER_MODE_2          0x20     // 8-bit auto-reload
#define BAUD_9600            0xFD      // Value for 9600 baud

/* Debug Port Address */
#define DEBUG_PORT_ADDR       0xFEFE   // Debug port address

/* Command Characters */
#define CMD_RESET            '@'       // System reset command
#define CMD_STATUS           '?'       // System status command
#define CMD_CREATE           '+'       // Create buffer command
#define CMD_DELETE           '-'       // Delete buffer command
#define CMD_DISPLAY          '='       // Display buffer command

/* Debug Values */
#define DBG_CREATE           0x01      // Debug code for create
#define DBG_DELETE           0x02      // Debug code for delete
#define DBG_DISPLAY          0x03      // Debug code for display
#define DBG_STATUS           0x04      // Debug code for status
#define DBG_RESET           0x05       // Debug code for reset
#define DBG_TX              0x55       // Debug code for TX
#define DBG_RX              0x10       // Debug code for RX
#define DBG_CMD             0xAA       // Debug code for command

/* Debug configuration */
#define DEBUG
#ifdef DEBUG
#define DEBUGPORT(x) dataout(DEBUG_PORT_ADDR,x);
void dataout(uint16_t address, uint8_t value)
{
    __xdata unsigned char * debug_add = (__xdata unsigned char*)address;
    *debug_add = value;
}
#else
#define DEBUGPORT(x)
#endif

/* Function prototypes */
void print_prompt(const char * string);
int getchar(void);
int putchar(int);
int get_buf_value(const char * string, int UPPER, int LOWER);
void buffer0_dump(void);
void init_uart(void);

__idata int temp_buffer_size = 0;
uint8_t * wr = 0;

/**
 * @struct node_s
 * @brief Buffer node structure for managing allocated buffers
 *
 * @param index        Unique identifier for the buffer
 * @param data_pointer Pointer to allocated memory
 * @param size         Size of allocated buffer in bytes
 */
typedef struct node_s {
    uint8_t index;           /* Buffer identifier */
    uint8_t * data_pointer; /* Pointer to buffer memory */
    int size;               /* Buffer size in bytes */
} node_t;

/* Global tracking variables */
static uint8_t index_of_buffers = 0;        /* Current buffer count */
uint8_t total_number_of_commands = 0;       /* Total commands processed */
uint8_t total_number_of_storage = 0;        /* Total bytes stored */
uint8_t recent_commands = 0;                /* Recent command count */
uint8_t recent_storage = 0;                 /* Recent storage count */
uint8_t recived_bytes = 0;                  /* Bytes received via UART */

/* Buffer management arrays and pointers */
node_t array_for_nodes[MAX_BUFFERS];
__xdata uint8_t* pointer1 = NULL;
__xdata uint8_t* pointer2 = NULL;


/*******************************************************************************
* Function: init_uart
*
* Purpose:
*     Initializes the UART interface with specific settings for serial
*     communication.
*
* Parameters:
*     None
*
* Returns:
*     None
*
* Configuration:
*     - Mode: UART Mode 1 (8-bit UART)
*     - Timer: Mode 2 (8-bit auto-reload)
*     - Baud Rate: 9600 bps
*
* Notes:
*     - Uses Timer 1 for baud rate generation
*     - Must be called before any UART communication
*******************************************************************************/
void init_uart(void)
{
     SCON = UART_MODE_1;    /* Set UART mode 1 - 8-bit UART */
     TMOD = TIMER_MODE_2;   /* Set Timer 1 mode 2 for baud rate generation */
     TH1 = BAUD_9600;       /* Load timer value for 9600 baud */
     TR1 = 1;               /* Start Timer 1 */
}

/*******************************************************************************
* Function: putchar
*
* Purpose:
*     Transmits a single character through UART
*
* Parameters:
*     chr: Character to transmit
*
* Returns:
*     1: Always returns 1 to indicate successful transmission
*
* Notes:
*     - Blocks until transmission is complete
*     - Used by printf for string output
*******************************************************************************/
int putchar(int chr)
{
    DEBUGPORT(DBG_TX);      /* Signal transmission start */
    SBUF = chr;             /* Load character into transmit buffer */
    while(!TI);             /* Wait for transmission complete */
    TI = 0;                 /* Clear transmit interrupt flag */
    return 1;
}

/*******************************************************************************
* Function: getchar
*
* Purpose:
*     Receives a single character through UART
*
* Parameters:
*     None
*
* Returns:
*     int: Received character
*
* Side Effects:
*     - Increments recived_bytes counter
*     - Blocks until character is received
*******************************************************************************/
int getchar(void)
{
    DEBUGPORT(DBG_RX);      /* Signal receive start */
    while(!RI);             /* Wait for character reception */
    int a = SBUF;           /* Read received character */
    RI = 0;                 /* Clear receive interrupt flag */
    recived_bytes++;        /* Update received byte count */
    return a;
}

/*******************************************************************************
* Function: get_buf_value
*
* Purpose:
*     Gets and validates a buffer size from user input
*
* Parameters:
*     string: Prompt message to display
*     UPPER: Maximum allowed value
*     LOWER: Minimum allowed value
*
* Returns:
*     int: Validated buffer size or -1 if invalid
*
* Constraints:
*     - Input must be numeric
*     - Value must be within UPPER and LOWER bounds
*     - Value must be multiple of BUFFER_ALIGN
*
* Error Handling:
*     - Invalid characters trigger error message
*     - Out of range values trigger error message
*     - Misaligned values trigger error message
*******************************************************************************/
int get_buf_value(const char* string, int UPPER, int LOWER) {
    int buffer_size = 0;
    char input[MAX_INPUT_DIGITS + 1];
    int valid_input = 0;

    while (!valid_input) {
        print_prompt("\n\r+--------------------------------------------------+");
        print_prompt(string);

        buffer_size = 0;
        int digit_count = 0;
        int i = 0;
        char c;

        /* Process input digits */
        while ((c = getchar()) != ASCII_ENTER && digit_count < MAX_INPUT_DIGITS) {
            /* Validate numeric input */
            if (c < ASCII_CHAR_0 || c > ASCII_CHAR_9) {
                printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
                printf("\n\r+--------------------------------------------------+\n\r");
                while (getchar() != ASCII_ENTER); /* Clear input buffer */
                buffer_size = -1;
                break;
            }

            putchar(c);                 /* Echo character */
            input[i++] = c;             /* Store digit */
            digit_count++;
            /* Build number from digits */
            buffer_size = buffer_size * DECIMAL_BASE + (c - ASCII_CHAR_0);
        }

        /* Handle invalid input */
        if (buffer_size == -1) {
            continue;
        }

        /* Validate range and alignment */
        if ((buffer_size % BUFFER_ALIGN) != 0 ||
            (buffer_size < LOWER) ||
            (buffer_size > UPPER)) {
            printf("\n\r| ERROR: Invalid buffer size                          |");
            printf("\n\r| - Must be between %d and %d                       |",
                   LOWER, UPPER);
            printf("\n\r| - Must be multiple of %d                          |",
                   BUFFER_ALIGN);
            printf("\n\r+--------------------------------------------------+\n\r");
            continue;
        }

        /* Display final value */
        printf("\n\r| Input size: %-39d |", buffer_size);
        printf("\n\r+--------------------------------------------------+\n\r");
        valid_input = 1;
    }

    return buffer_size;
}

/*******************************************************************************
* Function: print_prompt
* Description: Displays a string message through UART
* Parameters: string - Message to display
* Returns: void
*******************************************************************************/
void print_prompt(const char * string){
   while(*string != '\0'){
       putchar(*string);
       string++;
   }
}

/*******************************************************************************
* Function: get_number
* Description: Gets and validates a number from user input
* Parameters: prompt - Message to display for input
* Returns: Valid number or -1 if invalid
*******************************************************************************/
int get_number(const char* prompt)
{
    int buffer_size = 0;
    char c;
    int index = 100;            // Start with highest place value for 3 digits

    print_prompt("\n\r+--------------------------------------------------+");
    print_prompt(prompt);

    while (index >= 1 && (c = getchar()) != 0x0d) {
        if (c < '0' || c > '9') {
            printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
            printf("\n\r+--------------------------------------------------+\n\r");
            return -1;
        }
        
        putchar(c);
        buffer_size += (c - '0') * index;
        index = index/10;
    }
    
    printf("\n\r| Input size: %-39d |", buffer_size);
    printf("\n\r+--------------------------------------------------+\n\r");
    
    return buffer_size;
}



/*******************************************************************************
* Function: get_command
*
* Purpose:
*     Processes user commands for buffer operations and system control
*
* Parameters:
*     command: Character representing the command to execute
*
* Returns:
*     0: Command executed successfully
*     -1: Command execution failed or invalid input
*
* Supported Commands:
*     '@' (CMD_RESET): Reset system and deallocate buffers
*     '?' (CMD_STATUS): Display system status and buffer info
*     '+' (CMD_CREATE): Create new buffer
*     '-' (CMD_DELETE): Delete existing buffer
*     '=' (CMD_DISPLAY): Display Buffer 0 contents
*
* Notes:
*     - Uses pragma less_pedantic for compiler optimization
*******************************************************************************/
#pragma less_pedantic
int get_command(int command)
{
    int temp_value = 0;
    __xdata uint8_t* pointer = NULL;

    switch(command)
    {
        case CMD_RESET:
            DEBUGPORT(DBG_RESET);
            printf("\n\r| BUFFER DEALLOCATION STATUS                      |");
            printf("\n\r|------------------------------------------------|");

              /* Count total active buffers */
            int total_buffers = 0;
            for(int i = 0; i < MAX_BUFFERS; i++) {
                if(array_for_nodes[i].data_pointer != NULL) {
                    total_buffers++;
                }
            }
            /* Free all allocated buffers */
            printf("\n\r| Buffers to Free  | %-28d |", total_buffers);

            for(int i = 0; i < MAX_BUFFERS; i++) {
                if(array_for_nodes[i].data_pointer != NULL) {
                    free(array_for_nodes[i].data_pointer);
                    array_for_nodes[i].data_pointer = NULL;
                }
            }

            printf("\n\r+--------------------------------------------------+\n\r");
            printf("\n\r| All buffers successfully deallocated            |");
            printf("\n\r+--------------------------------------------------+\n\r");
            break;

        case CMD_STATUS:
            DEBUGPORT(DBG_STATUS);
            printf("\n\r+------------------SYSTEM STATUS-------------------+");
            printf("\n\r| COMMAND STATISTICS                              |");
            printf("\n\r|------------------------------------------------|");
            printf("\n\r| Total Commands   | %-28d |", total_number_of_commands);
            printf("\n\r| Recent Commands  | %-28d |", recent_commands);
            printf("\n\r|------------------------------------------------|");
            printf("\n\r| STORAGE STATISTICS                             |");
            printf("\n\r|------------------------------------------------|");
            printf("\n\r| Total Storage    | %-28d |", total_number_of_storage);
            printf("\n\r| Recent Storage   | %-28d |", recent_storage);
            printf("\n\r+--------------------------------------------------+");
            printf("\n\r| TOTAL BUFFERS IN HEAP                           |");
            printf("\n\r|------------------------------------------------|");
            printf("\n\r| Total Buffers    | %-28d |", index_of_buffers);
            printf("\n\r+--------------------------------------------------+");

            printf("\n\r+------------------BUFFER INFO--------------------+");
            printf("\n\r| ID | Start Addr  | End Addr    | Size (bytes) |");
            printf("\n\r|----|-------------|-------------|--------------|");

            for(int i = 1; i < MAX_BUFFERS; i++) {
                if(array_for_nodes[i].data_pointer) {
                    printf("\n\r| %-2d | %-10p | %-10p | %-11d |",
                        i, array_for_nodes[i].data_pointer,
                        array_for_nodes[i].data_pointer + array_for_nodes[i].size,
                        array_for_nodes[i].size);
                }
            }

            printf("\n\r|------------------------------------------------|");
            printf("\n\r| MEMORY ALLOCATION STATUS BUFFER 0              |");
            printf("\n\r|------------------------------------------------|");
            printf("\n\r| Total Space      | %-28d |", array_for_nodes[0].size);
            printf("\n\r| Occupied Space   | %-28d |", total_number_of_storage);
            printf("\n\r| Free Space       | %-28d |", array_for_nodes[0].size - total_number_of_storage);
            printf("\n\r+--------------------------------------------------+");

            buffer0_dump();
            printf("\n\r| BUFFER 0 CLEAR STATUS                           |");
            printf("\n\r|------------------------------------------------|");

            if(array_for_nodes[0].data_pointer == NULL) {
                printf("\n\r| Buffer 0 is not initialized                     |");
                printf("\n\r+--------------------------------------------------+\n\r");
                return -1;
            }

            uint16_t buffer_size = array_for_nodes[0].size;
            memset(array_for_nodes[0].data_pointer, 0, buffer_size);
            array_for_nodes[0].index = BUFFER_0_INDEX;
            temp_buffer_size = buffer_size;
            wr = array_for_nodes[0].data_pointer;
            total_number_of_storage = 0;

            printf("\n\r| Buffer Size      | %-28d |", buffer_size);
            printf("\n\r| Status          | %-28s |", "Data Erased");
            printf("\n\r+--------------------------------------------------+\n\r");
            recent_commands = 0;
            recent_storage = 0;
            break;

        case CMD_CREATE:
            DEBUGPORT(DBG_CREATE);
            printf("\n\r+----------------BUFFER CREATION------------------+");
           /* Get and validate buffer size */
            temp_value = get_number("\n\r| Enter buffer size (50-500): ");
            if(temp_value < SMALL_BUFFER_MIN || temp_value > SMALL_BUFFER_MAX) {
                printf("\n\r ERROR : Invalid request\n\r");
                return -1;
            }
            else {/* Attempt buffer allocation */
                printf("\n\r| Requested Size: %-32d |", temp_value);
                pointer = (__xdata uint8_t *) malloc(temp_value);
                if (pointer == NULL) {
                    printf("\n\r| ERROR: Memory allocation failed                  |");
                    printf("\n\r| Try smaller size with '+' command                |");
                } else {
                    printf("\n\r| SUCCESS: Buffer created successfully            |");
                }
                printf("\n\r+--------------------------------------------------+\n\r");
             /* Update buffer tracking */
                node_t node = {index_of_buffers, pointer, temp_value};
                array_for_nodes[index_of_buffers] = node;
                index_of_buffers++;
            }
            break;

        case CMD_DELETE:
            DEBUGPORT(DBG_DELETE);
            printf("\n\r+----------------BUFFER DELETION------------------+");
            temp_value = get_number("\n\r| Enter buffer number (0-102): ");

            if(temp_value == BUFFER_0_INDEX) {
                printf("\n\r| ERROR: Cannot delete Buffer 0                    |");
                return -1;
            }
            if(temp_value < 0 || temp_value > MAX_BUFFERS) {
                printf("\n\r| ERROR: Invalid delete request                    |");
                return -1;
            }
            else {
                array_for_nodes[temp_value].size = 0;
                free(array_for_nodes[temp_value].data_pointer);
                printf("\n\r| SUCCESS: Buffer %-2d deleted                     |", temp_value);
            }
            printf("\n\r+--------------------------------------------------+\n\r");
            break;

        case CMD_DISPLAY:
            DEBUGPORT(DBG_DISPLAY);
            buffer0_dump();
            break;
    }
    return 0;
}

/*******************************************************************************
* Function: buffer0_dump
*
* Purpose:
*     Displays contents of Buffer 0 in hexadecimal format with addressing
*
* Parameters:
*     None
*
* Returns:
*     None
*
* Display Format:
*     - Shows 16 bytes per line with corresponding address
*     - Displays in hexadecimal format
*     - Handles partial lines at end of buffer
*
* Notes:
*     - Checks for NULL buffer before display
*     - Uses formatted output for clean display
*******************************************************************************/
void buffer0_dump(void) {
    printf("\n\r+---------------BUFFER 0 CONTENTS-----------------+");
    printf("\n\r| Address    | Data                               |");
    printf("\n\r|------------|---------------------------------------|");
    printf("\n\r");

    if(array_for_nodes[BUFFER_0_INDEX].data_pointer == NULL) {
        printf("BUFFER 0 DOES NOT EXIST\n\r");
        return;
    }
     /* Setup pointers and counters */
    uint8_t *rd_ptr = array_for_nodes[BUFFER_0_INDEX].data_pointer;
    uint16_t remaining_bytes = array_for_nodes[BUFFER_0_INDEX].size;

     /* Display buffer contents */
    for (uint16_t offset = 0; offset < total_number_of_storage; offset += BYTES_PER_LINE) {
        printf("\n\r| %04X      |", (uint16_t)(uintptr_t)rd_ptr);

        /* Display address */
        for (int i = 0; i < BYTES_PER_LINE && (offset + i) < remaining_bytes; i++) {
            printf(" %02X", rd_ptr[i]);
        }

        /* Display hex values */
        for (int i = remaining_bytes - offset; i < BYTES_PER_LINE; i++) {
            printf("   ");
        }
        /* Pad partial lines */
        printf(" |");
        rd_ptr += BYTES_PER_LINE;
    }

    printf("\n\r+--------------------------------------------------+\n\r");
}

/*******************************************************************************
* Function: main
* Description: Main program entry, implements buffer management system
*******************************************************************************/
void main(void)
{
    printf("\n\r+==================================================+");
    printf("\n\r|           BUFFER MANAGEMENT SYSTEM                |");
    printf("\n\r+==================================================+");

    int buffer_size = 0;
    index_of_buffers = 0;
    total_number_of_commands = 0;
    total_number_of_storage = 0;
    recent_commands = 0;
    recent_storage = 0;
    recived_bytes = 0;

    do {
        buffer_size = get_buf_value("\n\r| Enter initial buffer size (32-5120): ",
                                  BUFFER_SIZE_MAX, BUFFER_SIZE_MIN);

        if(buffer_size == -1) continue;

        pointer1 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer1 == NULL) {
            printf("\n\r| ERROR: Buffer 1 allocation failed                |");
            printf("\n\r| Try smaller size                                |");
            printf("\n\r+------------------------------------------------+\n\r");
            continue;
        }

        pointer2 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer2 == NULL) {
            free(pointer1);
            printf("\n\r| ERROR: Buffer 2 allocation failed                |");
            printf("\n\r| Try smaller size                                |");
            printf("\n\r+------------------------------------------------+\n\r");
            continue;
        }

        printf("\n\r+----------------BUFFER STATUS--------------------+");
        printf("\n\r| Buffer 1 | Addr: %-10p | Size: %-6d   |", pointer1, buffer_size);
        printf("\n\r| Buffer 2 | Addr: %-10p | Size: %-6d   |", pointer2, buffer_size);
        printf("\n\r+------------------------------------------------+\n\r");

    } while(pointer2 == NULL || pointer1 == NULL);

    index_of_buffers = 0;

    node_t node1 = { index_of_buffers, pointer1, buffer_size};
    array_for_nodes[index_of_buffers] = node1;
    index_of_buffers++;

    node_t node2 = { index_of_buffers, pointer2, buffer_size};
    array_for_nodes[index_of_buffers] = node2;
    index_of_buffers++;

    printf("\n\r+------------------COMMANDS----------------------+");
    printf("\n\r| [A-Z] : Store character in Buffer 0           |");
    printf("\n\r| +     : Create new buffer                     |");
    printf("\n\r| -     : Delete buffer                         |");
    printf("\n\r| ?     : Show system status                    |");
    printf("\n\r| =     : Display Buffer 0 contents             |");
    printf("\n\r| @     : Reset system                          |");
    printf("\n\r+--------------------------------------------------+");
    printf("\n\r| Ready for input. Enter uppercase chars (A-Z):    |\n\r");
    printf("\n\r+--------------------------------------------------+\n\r");

    __idata int temp_buffer_size = array_for_nodes[0].size;
    __idata int index_for_write = 0;
    uint8_t * wr = array_for_nodes[0].data_pointer;

    do {
        int ch = getchar();
        putchar(ch);

        if(ch < ASCII_UPPER_A || ch > ASCII_UPPER_Z) {
            total_number_of_commands += 1;
            recent_commands += 1;
            printf("\n\r| Command received: %-31c |", ch);
            printf("\n\r+--------------------------------------------------+\n\r");
            get_command(ch);
            continue;
        }

        total_number_of_storage = total_number_of_storage + 1;
        recent_storage = recent_storage + 1;

        *wr = ch;
        wr++;
        printf("\n\r| Storage: Total=%-4d Recent=%-4d Addr=%-10p |\n\r",
               total_number_of_storage, recent_storage, wr);
        temp_buffer_size -= 1;
        index_for_write += 1;
    } while(temp_buffer_size > 0);

    printf("\n\r+--------------------------------------------------+");
    printf("\n\r| NOTICE: Buffer 0 is full - Storage stopped        |");
    printf("\n\r+--------------------------------------------------+\n\r");

    while(1) {
        printf("\n\r| Enter command (+, -, ?, =, @):                   |");
        printf("\n\r+--------------------------------------------------+\n\r");
        int cha = getchar();
        if(cha < ASCII_UPPER_A || cha > ASCII_UPPER_Z) {
            DEBUGPORT(DBG_CMD);
            total_number_of_commands += 1;
            recent_commands += 1;
            printf("\n\r| Command received: %-31c |", cha);
        }
        else {
            total_number_of_storage = total_number_of_storage + 1;
            recent_storage = recent_storage + 1;
        }
        get_command(cha);
    }
}
