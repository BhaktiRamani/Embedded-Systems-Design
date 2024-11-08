/******************************************************************************
* File Name: syntax.c
* Description: Buffer Management System implementation for ESD Lab 3 Part 2
* Author: Bhakti Ramani
* Tools: SDCC, VS Code
* Date: October 25, 2024
*******************************************************************************/

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* Buffer size constraints */
#define upper_default 5600        // Maximum default buffer size
#define LOWER_DEFAULT 32          // Minimum default buffer size
#define HEAP_SIZE 5600           // Total heap size available
#define UPPER_SMALL_BUFFERS 800  // Upper limit for small buffer allocation
#define LOWER_SMALL_BUFFERS 50   // Lower limit for small buffer allocation

/* Debug configuration for development use */
#define DEBUG
#ifdef DEBUG
#define DEBUGPORT(x) dataout(0xFEFE,x);
void dataout(uint16_t address, uint8_t value)
{
    __xdata unsigned char * debug_add = (__xdata unsigned char*)address;
    *debug_add = value; 
}
#else
#define DEBUGPORT(x)
#endif

/* Global tracking variables */
static uint8_t index_of_buffers = 0;        // Tracks number of buffers created
uint8_t total_number_of_commands = 0;      // Total commands received
uint8_t total_number_of_storage = 0;       // Total storage operations
uint8_t recent_commands = 0;               // Commands since last reset
uint8_t recent_storage = 0;                // Storage ops since last reset
uint8_t recived_bytes = 0;                // Bytes received through UART

/* Function prototypes */
void print_prompt(const char * string);
int getchar(void);
int putchar(int);
int get_buf_value(const char * string, int UPPER, int LOWER);
void buffer0_dump(void);
void init_uart(void);

__idata int temp_buffer_size = 0;
uint8_t * wr = 0;

/* Node structure for buffer management */
typedef struct node_s{
    uint8_t index;               // Buffer identifier
    uint8_t * data_pointer;      // Pointer to buffer data
    int size;                    // Size of buffer
}node_t;

/* Buffer management arrays and pointers */
node_t array_for_nodes[100];                // Array to store buffer information
__xdata uint8_t* pointer1 = NULL;          // Primary buffer pointer
__xdata uint8_t* pointer2 = NULL;          // Secondary buffer pointer

/*******************************************************************************
* Function: init_uart
* Description: Initializes UART with 9600 baud rate
* Parameters: None
* Returns: void
*******************************************************************************/
void init_uart(void)
{
     SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
     TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
     TH1 = 0xFD;                // 9600 baud rate
     TR1 = 1;                   // Start timer 1
}

/*******************************************************************************
* Function: putchar
* Description: Transmits a character through UART
* Parameters: int chr - Character to transmit
* Returns: 1 on successful transmission
*******************************************************************************/
int putchar(int chr)
{
    SBUF = chr;                 // Load character to send
    while(!TI);                 // Wait for transmission complete
    //DEBUGPORT(55);              // Debug marker for transmission
    TI = 0;                     // Clear transmission flag
    return 1;
}

/*******************************************************************************
* Function: getchar
* Description: Receives a character through UART
* Parameters: None
* Returns: Received character
*******************************************************************************/
int getchar(void){
    while(!RI);                 // Wait for character reception
    int a = SBUF;               // Get received character
    //DEBUGPORT(10);              // Debug marker for reception
    RI = 0;                     // Clear reception flag
    recived_bytes++;            // Update received byte count
    return a;
}

/*******************************************************************************
* Function: get_buf_value
* Description: Gets and validates buffer size from user input
* Parameters: 
*   string - Prompt message to display
*   UPPER - Maximum allowed value
*   LOWER - Minimum allowed value
* Returns: Valid buffer size or -1 if invalid
*******************************************************************************/
int get_buf_value(const char* string, int UPPER, int LOWER) {
    int buffer_size = 0;
    char input[5];              // 4 digits + null terminator
    int valid_input = 0;
    
    while (!valid_input) {
        print_prompt("\n\r+--------------------------------------------------+");
        print_prompt(string);
        
        // Reset variables for new attempt
        buffer_size = 0;
        int digit_count = 0;
        int i = 0;
        char c;
        
        // Read input until Enter is pressed
        while ((c = getchar()) != 0x0d && digit_count < 4) {
            // Validate numeric input
            if (c < '0' || c > '9') {
                printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
                printf("\n\r+--------------------------------------------------+\n\r");
                
                while (getchar() != 0x0d);  // Clear input buffer
                buffer_size = -1;
                break;
            }
            
            putchar(c);
            input[i++] = c;
            digit_count++;
            buffer_size = buffer_size * 10 + (c - '0');
        }
        
        // Skip if invalid character received
        if (buffer_size == -1) {
            continue;
        }
        
        // Validate size constraints
        if ((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
            printf("\n\r| ERROR: Invalid buffer size                          |");
            printf("\n\r| - Must be between %d and %d                       |", LOWER, UPPER);
            printf("\n\r| - Must be multiple of 16                           |");
            printf("\n\r+--------------------------------------------------+\n\r");
            continue;
        }
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
* Description: Processes user commands for buffer operations
* Parameters: command - User command character
* Returns: 0 on success, -1 on failure
*******************************************************************************/
#pragma less_pedantic
int get_command(int command)
{
    int temp_value = 0;
    __xdata uint8_t* pointer = NULL;
    int array_index_temp = 0;

    switch(command)
    {
        case '@':// Reset system command
        {    
            DEBUGPORT(0x05);
            int total_buffers = 0;
            int buffers_freed = 0;
            int failed_frees = 0;

            printf("\n\r| BUFFER DEALLOCATION STATUS                      |");
            printf("\n\r|------------------------------------------------|");

            // Count buffers to free
            for(int i = 0; i < 100; i++) 
            {
                if(array_for_nodes[i].data_pointer != NULL)
                {
                    total_buffers++;
                }
            }

            printf("\n\r| Buffers to Free  | %-28d |", total_buffers);

            // Free all buffers
            for(int i = 0; i < 100; i++) 
            {
                if(array_for_nodes[i].data_pointer != NULL) 
                {
                    free(array_for_nodes[i].data_pointer);
                    array_for_nodes[i].data_pointer = NULL;
                }
            }

            printf("\n\r+--------------------------------------------------+\n\r");

            if(failed_frees == 0)
            {
                printf("\n\r| All buffers successfully deallocated            |");
            } else {
                printf("\n\r| WARNING: Some buffers failed to deallocate      |");
            }
            printf("\n\r+--------------------------------------------------+\n\r");
            // break;



   
        }

        case '?':               // Show system status
            DEBUGPORT(0x04);
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
        
            for(int i=1; i<100; i++){
                if(array_for_nodes[i]){
                    printf("\n\r| %-2d | %-10p | %-10p | %-11d |",
                        i, array_for_nodes[i].data_pointer,
                        array_for_nodes[i].data_pointer+array_for_nodes[i].size,
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
            printf("\n\r+--------------------------------------------------+");

            buffer0_dump();
            printf("\n\r| BUFFER 0 CLEAR STATUS                           |");
            printf("\n\r|------------------------------------------------|");
            
            // Validate buffer existence
            if(array_for_nodes[0].data_pointer == NULL) {
                printf("\n\r| Buffer 0 is not initialized                     |");
                printf("\n\r+--------------------------------------------------+\n\r");
                return;
            }
            
            uint16_t buffer_size = array_for_nodes[0].size;
            
            // Clear buffer data
            memset(array_for_nodes[0].data_pointer, 0, buffer_size);
            array_for_nodes[0].index = 0;
       
            temp_buffer_size = buffer_size;    // Reset available space
            wr = array_for_nodes[0].data_pointer;  // Reset write pointer to start
            total_number_of_storage = 0;       // Reset storage counters
            
            printf("\n\r| Buffer Size      | %-28d |", buffer_size);
            printf("\n\r| Status          | %-28s |", "Data Erased");
            printf("\n\r+--------------------------------------------------+\n\r");
            recent_commands = 0;
            recent_storage = 0;
            break;

        case '+':               // Create new buffer
            DEBUGPORT(0x01);
            printf("\n\r+----------------BUFFER CREATION------------------+");
            temp_value = get_number("\n\r| Enter buffer size (50-500): ");
            if(temp_value < 50 || temp_value > 500)
            {
                    printf("\n\r ERROR : Invalid request\n\r"); 
                    return -1;
            }
            else
            {
                printf("\n\r| Requested Size: %-32d |", temp_value);

                pointer = (__xdata uint8_t *) malloc(temp_value);
                if (pointer == NULL){
                    printf("\n\r| ERROR: Memory allocation failed                  |");
                    printf("\n\r| Try smaller size with '+' command                |");
                } else {
                    printf("\n\r| SUCCESS: Buffer created successfully            |");
                }
                printf("\n\r+--------------------------------------------------+\n\r");

                node_t node = {index_of_buffers, pointer, temp_value};
                array_for_nodes[index_of_buffers] = node;
                index_of_buffers++;
            }
            break;

        case '-':               // Delete buffer
            DEBUGPORT(0x02);
            printf("\n\r+----------------BUFFER DELETION------------------+");
            temp_value = get_number("\n\r| Enter buffer number (0-102): ");

            if(temp_value <= 0) 
            {
                printf("\n\r| ERROR: Cannot delete Buffer 0                    |");
                return -1;
            } 
            if(temp_value < 0 || temp_value > 102) 
            {
                printf("\n\r| ERROR: Invalid delete request                  |");
                return -1;
            }
            else
            {
                array_for_nodes[temp_value].size = 0;
                free(array_for_nodes[temp_value].data_pointer);
                printf("\n\r| SUCCESS: Buffer %-2d deleted                     |", temp_value);
            }
            printf("\n\r+--------------------------------------------------+\n\r");
            break;

        case '=':               // Display Buffer 0
            DEBUGPORT(0x03);
            buffer0_dump();
            break;
    }
    return 0;
}

/*******************************************************************************
* Function: buffer0_dump
* Description: Displays contents of Buffer 0 in hexadecimal format
* Parameters: None
* Returns: void
*******************************************************************************/
void buffer0_dump(void) {
    printf("\n\r+---------------BUFFER 0 CONTENTS-----------------+");
    printf("\n\r| Address    | Data                               |");
    printf("\n\r|------------|---------------------------------------|");
    printf("\n\r");
    
    if(array_for_nodes[0].data_pointer == NULL) 
    {printf("BUFFER 0 DOES NOT EXIST\n\r");
        return;
    }
    uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
    uint16_t remaining_bytes = array_for_nodes[0].size;
    
    // Process and display 16 bytes at a time
    for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
        // Print address in AAAA format
        printf("\n\r| %04X      |", (uint16_t)(uintptr_t)rd_ptr);
        
        // Display 16 bytes in hex format
        for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
            printf(" %02X", rd_ptr[i]);
        }
        
        // Pad remaining space if less than 16 bytes
        for (int i = remaining_bytes - offset; i < 16; i++) {
            printf("   ");
        }
        
        printf(" |");
        rd_ptr += 16;
    }
    
    printf("\n\r+--------------------------------------------------+\n\r");
}

/*******************************************************************************
* Function: main
* Description: Main program entry, implements buffer management system
* Parameters: void
* Returns: void
*******************************************************************************/
void main(void)
{
    // Display welcome banner
    printf("\n\r+==================================================+");
    printf("\n\r|           BUFFER MANAGEMENT SYSTEM                |");
    printf("\n\r+==================================================+");

    // Initialize variables
    int buffer_size = 0;
    index_of_buffers = 0;
    total_number_of_commands = 0;
    total_number_of_storage = 0;
    recent_commands = 0;
    recent_storage = 0;
    recived_bytes = 0;

    // Initial buffer allocation loop
    do{
        // Get initial buffer size from user
        buffer_size = get_buf_value("\n\r| Enter initial buffer size (32-5120): ", upper_default, LOWER_DEFAULT);
        
        if(buffer_size == -1) continue;

        // Allocate first buffer
        pointer1 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer1 == NULL){
            printf("\n\r| ERROR: Buffer 1 allocation failed                |");
            printf("\n\r| Try smaller size                                |");
            printf("\n\r+------------------------------------------------+\n\r");
            continue;
        }

        // Allocate second buffer
        pointer2 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer2 == NULL){
            free(pointer1);
            printf("\n\r| ERROR: Buffer 2 allocation failed                |");
            printf("\n\r| Try smaller size                                |");
            printf("\n\r+------------------------------------------------+\n\r");
            continue;
        }

        // Display buffer allocation status
        printf("\n\r+----------------BUFFER STATUS--------------------+");
        printf("\n\r| Buffer 1 | Addr: %-10p | Size: %-6d   |", pointer1, buffer_size);
        printf("\n\r| Buffer 2 | Addr: %-10p | Size: %-6d   |", pointer2, buffer_size);
        printf("\n\r+------------------------------------------------+\n\r");

    }while(pointer2 == NULL || pointer1 == NULL);

    // Initialize buffer management nodes
    index_of_buffers = 0;

    // Setup first buffer node
    node_t node1 = { index_of_buffers, pointer1, buffer_size};
    array_for_nodes[index_of_buffers] = node1;
    index_of_buffers++;

    // Setup second buffer node
    node_t node2 = { index_of_buffers, pointer2, buffer_size};
    array_for_nodes[index_of_buffers] = node2;
    index_of_buffers++;

    // Display command menu
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

    // Initialize buffer writing variables
    __idata int temp_buffer_size = array_for_nodes[0].size;
    __idata int index_for_write = 0;
    uint8_t * wr = array_for_nodes[0].data_pointer;

    // Main input processing loop
    do{
        int ch = getchar();
        putchar(ch);
        
        // Process command if not A-Z
        if(ch < 65 || ch > 90) {
            total_number_of_commands+=1;
            recent_commands+=1;
            printf("\n\r| Command received: %-31c |", ch);
            printf("\n\r+--------------------------------------------------+\n\r");
            get_command(ch);
            continue;
        }

        // Store character in buffer
        total_number_of_storage = total_number_of_storage + 1;
        recent_storage = recent_storage + 1;

        *wr = ch;
        wr++;
        printf("\n\r| Storage: Total=%-4d Recent=%-4d Addr=%-10p |\n\r", 
               total_number_of_storage, recent_storage, wr);
        temp_buffer_size -= 1;
        index_for_write += 1;
    }while(temp_buffer_size>0);
    
    // Buffer full notification
    printf("\n\r+--------------------------------------------------+");
    printf("\n\r| NOTICE: Buffer 0 is full - Storage stopped        |");
    printf("\n\r+--------------------------------------------------+\n\r");

    // Command processing loop after buffer is full
    while(1)
    {
        printf("\n\r| Enter command (+, -, ?, =, @):                   |");
        printf("\n\r+--------------------------------------------------+\n\r");
        int cha = getchar();
        if(cha < 65 || cha > 90) {
            DEBUGPORT(0xAA);
            total_number_of_commands+=1;
            recent_commands+=1;
            printf("\n\r| Command received: %-31c |", cha);
        }
        else{
            total_number_of_storage = total_number_of_storage + 1;
            recent_storage = recent_storage + 1;
        }
        get_command(cha);
    }
}