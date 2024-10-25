//#include <malloc.h>
#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>
// #include <8052.h>   // also included in at89c51ed2.h
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

char getchar();
void putchar(char c);
void heap_init_trial();
int get_buf_value(const char * string, int UPPER, int LOWER);
void get_commands();
void serial_init();
char *buffer_0 = NULL;
char *buffer_1 = NULL;
// array of pointers, it will have address location where each malloc buffers are located
char *buffer_n[50];
int i = 2;
int count=0;
unsigned int buffer_size = 0;
unsigned int buffer0_index = 0;
unsigned int total_char = 0;   // Total number of char received
unsigned int storage_char = 0; // Total number of storage char received
unsigned int buff_0_count;     // to display the contents present in buffer 0 at any moment
unsigned int total_buff_count; // Total buffer count
unsigned int buff_size[50];    // array for storing size of each buffer
uint16_t Buffer_0temp;         // stores address of buffer 0
uint16_t Buffer_1temp;
int t=2;                        //number of new buffer example: t=2 refers to buffer 2
int m=0;                        //counter variable

void main(void) {
    serial_init();
    get_buffer_size(buffer_size);

    // Initialize primary buffers
    buffer_0 = (char *)malloc(buffer_size);
    Buffer_0temp = (uint16_t)buffer_0;
    printf_tiny("Buffer 0 initialized successfully (%d bytes)\n\r", buffer_size);
    buff_size[0] = buffer_size;

    buffer_1 = (char *)malloc(buffer_size);
    buff_size[1] = buffer_size;
    printf_tiny("Buffer 1 initialized successfully (%d bytes)\n\r", buffer_size);

    if (buffer_0 == NULL || buffer_1 == NULL) {
        printf_tiny("ERROR: Failed to initialize buffers - Memory allocation failed\n\r");
        get_buffer_size(buffer_size);
    }

    printf_tiny("\n\rSystem ready. Enter commands:\n\r");
    while(1) {
        get_commands();
    }
}

void get_commands()
{
    printf_tiny("\n\r> ");  // Simple prompt for better UI

    char user_input_char = getchar();
    putchar(user_input_char);

    // Handle storage characters (A-Z)
    if (user_input_char >= 'A' && user_input_char <= 'Z') {
        if (buffer0_index >= buffer_size) {
            printf_tiny("\n\rWARNING: Buffer 0 is full. Data not stored.\n\r");
            return;
        }
        buffer_0[buffer0_index] = user_input_char;
        buffer0_index++;
        storage_char++;
    }

    // Create new buffer (+)
    if (user_input_char == '+') {
        printf_tiny("\n\rCreate new buffer\n\r");
        printf_tiny("Size (50-500): ");

        unsigned int a = getchar(); putchar(a);
        unsigned int b = getchar(); putchar(b);
        unsigned int c = getchar(); putchar(c);
        unsigned int num = (((a - '0') * 100) + ((b - '0') * 10) + ((c - '0') * 1));

        if (!(buffer_size >= 50 && buffer_size <= 500)) {
            printf_tiny("\n\rERROR: Invalid buffer size. Must be between 50-500 bytes\n\r");
            return;
        }

        buffer_n[i] = (char *)malloc(num);
        buff_size[t] = num;

        if (buffer_n[i] == NULL) {
            printf_tiny("\n\rERROR: Failed to create buffer - Memory allocation failed\n\r");
        } else {
            printf_tiny("\n\rBuffer %d created successfully (%d bytes)\n\r", i, num);
            i++;
        }
    }

    // Delete buffer (-)
    if(user_input_char == '-') {
        printf_tiny("\n\rDelete buffer\n\r");
        printf_tiny("Buffer number: ");
        unsigned int a = getchar(); putchar(a);
        unsigned int b = getchar(); putchar(b);

        int num_del = (((a - '0') * 10) + ((b - '0') * 1));

        if (num_del == 0) {
            printf_tiny("\n\rERROR: Buffer 0 is protected and cannot be deleted\n\r");
        } else if (num_del == 1) {
            free(buffer_1);
            printf_tiny("\n\rBuffer 1 deleted successfully\n\r");
        } else if (num_del > 1 && num_del <= (i + 2)) {
            printf_tiny("\n\rDeleting buffer %d...\n\r", num_del);
            free(buffer_n[num_del]);
            printf_tiny("Buffer %d deleted successfully\n\r", num_del);
            buffer_n[num_del] = 0;
        } else {
            printf_tiny("\n\rERROR: Invalid buffer number. Valid range: 1-%d\n\r", i+1);
        }
    }

    // Modified heap report (?) for better readability
    if (user_input_char == '?') {
        printf_tiny("\n\r============== HEAP REPORT ==============\n\r");

        // Buffer 0 Status
        printf_tiny("Buffer 0:\n\r");
        printf_tiny("  Address: 0x%x - 0x%x\n\r", Buffer_0temp, Buffer_0temp + buffer_size);
        printf_tiny("  Size: %d bytes\n\r", buffer_size);
        printf_tiny("  Used: %d bytes\n\r", storage_char);
        printf_tiny("  Free: %d bytes\n\r", buffer_size - storage_char);
        printf_tiny("----------------------------------------\n\r");

        // Only show Buffer 1 if it exists
        if (buffer_1 != 0) {
            printf_tiny("Buffer 1:\n\r");
            printf_tiny("  Address: 0x%x - 0x%x\n\r", Buffer_1temp, Buffer_1temp + buffer_size);
            printf_tiny("  Size: %d bytes\n\r", buffer_size);
            printf_tiny("  Used: 0 bytes\n\r");
            printf_tiny("  Free: %d bytes\n\r", buffer_size);
            printf_tiny("----------------------------------------\n\r");
        }

        // [Rest of the heap report remains similar but formatted]
    }

    // Help menu (added new command)
    if (user_input_char == 'h' || user_input_char == 'H') {
        printf_tiny("\n\rAvailable Commands:\n\r");
        printf_tiny("  +  Create new buffer\n\r");
        printf_tiny("  -  Delete buffer\n\r");
        printf_tiny("  ?  Display heap report\n\r");
        printf_tiny("  =  Show Buffer 0 contents\n\r");
        printf_tiny("  &  Show heap contents\n\r");
        printf_tiny("  @  Reset system\n\r");
        printf_tiny("  h  Show this help menu\n\r");
        printf_tiny("A-Z  Store character in Buffer 0\n\r");
    }
}


int get_buf_value(const char * string, int UPPER, int LOWER){
    int data_from_serial = 0;
    int buffer_size = 0;
    int index = 1000;


    printf_tiny(string);


    while(index >= 1 & data_from_serial != 0x0d){
        data_from_serial = getchar();
        if((data_from_serial < '0' || data_from_serial > '9') && data_from_serial != 0x0d) {
            printf("\nEnter valid input\n");
            return -1;
        }

        if(data_from_serial == 0x0d){
            break;
        }

        putchar(data_from_serial);
        buffer_size += (data_from_serial-48)*index;
        index=index/10;
    }


    if((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
            return -1;
    }


    return buffer_size;

}


void serial_init()
{
    SCON = 0X50;
    TMOD = 0X20;
    TH1 = 0X0FD;
    TR1 = 1;
   // TI = 1;
}
// to transmit via UART
void putchar(char c)
{
    while (!TI); // compare asm code generated for these three lines
    while (TI == 0);
    //while ((SCON & 0x02) == 0);     // wait for TX ready, spin on TI
    SBUF = c; // load serial port with transmit value
    TI = 0;   // clear TI flag
    return 1;
}

// to recieve via UART
char getchar()
{
    //	char cc;
    while (!RI); // compare asm code generated for these three lines
    //while ((SCON & 0x01) == 0); // wait for character to be received, spin on RI
    while (RI == 0);
    RI = 0; // clear RI flag
    // c = SBUF;
    // return c; // return character from SBUF
    return SBUF;
}

void heap_init_trial()
{
    char *ptr;

    ptr = (char *)malloc(1500);

    memset(ptr, 0xB6, 1500 * sizeof(char));
}


/*
void main(void)
{

    serial_init();
    get_buffer_size(buffer_size);
    buffer_0 = (char *)malloc(buffer_size);
    Buffer_0temp=(uint16_t)buffer_0;
    printf("Buffer 0 done\n\r");
    buff_size[0] = buffer_size;
    buffer_1 = (char *)malloc(buffer_size);
    buff_size[1] = buffer_size;
    printf("Buffer 1 done\n\r");

    if (buffer_0 == NULL || buffer_1 == NULL)
    {
        printf_tiny("Error initializing the buffer_0 or buffer_1\n\r");
        // free(buffer_0);
        // free(buffer_1);
        get_buffer_size(buffer_size);
    }

    while(1)
    {
        get_commands();
    }
}

void get_commands()
{
    printf_tiny("*******************COMMANDS SECTION*********************\n\r");
    printf_tiny("Enter any command or char : ");

    // get the character from user
    char user_input_char = getchar();

    // transmit (echo) it back
    putchar(user_input_char);

    // Storage characters entered into buffer
    if (user_input_char >= 'A' && user_input_char <= 'Z')
    {
        buffer_0[buffer0_index] = user_input_char;
        buffer0_index++;
        storage_char++;

    }
    if (user_input_char == '+')
    {

        printf_tiny("Enter buffer size between 50 to 500 :");

        // variables for conversion of ASCII to INT
        unsigned int a = 0;
        unsigned int b = 0;
        unsigned int c = 0;
        unsigned int num = 0;

        a = getchar();
        putchar(a);
        b = getchar();
        putchar(b);
        c = getchar();
        putchar(c);

        num = (((a - '0') * 100) + ((b - '0') * 10) + ((c - '0') * 1));

        if (!(buffer_size >= 50 && buffer_size <= 500))
        {

            printf_tiny("E\n\r");
            return;
        }

        buffer_n[i] = (char *)malloc(num);
        buff_size[t]=num;

        if (buffer_n[i] == NULL)
        {
            printf_tiny("Error\n\r");
        }
        else
        {
            printf_tiny("Sucess in generatig the buffer\n\r");
            i++;
        }
    }

    if(user_input_char == '-')
    {
        char c;
        printf_tiny("Enter a buffer number to be deleted : ");
        unsigned int a = 0;
        unsigned int b = 0;
        // echo it back as wqell
        a = getchar();
        putchar(a);
        b = getchar();
        putchar(b);

        int num_del = (((a - '0') * 10) + ((b - '0') * 1));

        if (num_del == 0)
        {
            printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
        }
        else if (num_del == 1)
        {
            free(buffer_1);
            printf_tiny("Buffer 1 deleted");
        }
        else if (num_del > 1 && num_del <= (i + 2))
        {
            printf_tiny("\n\rDeleting buffer_%d.........\n\r", num_del);
            free(buffer_n[num_del]);
            printf_tiny("\n\rBuffer %d  Freed\n\r", num_del);
            buffer_n[num_del] = 0;
        }
        else
        {
            printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
        }
    }
    if (user_input_char == '?')
    {
        printf_tiny("************************ HEAP REPORT ************************");

        printf_tiny("\n\rBUFFER 0\n\r");
        printf_tiny("\n\rStart Address>>>>>>>>>>>>>>>>>>0x%x\n\r", Buffer_0temp);
        printf_tiny("\n\rEnding Address>>>>>>>>>>>>>>>>0x%x\n\r", (Buffer_0temp) + (buffer_size));
        printf_tiny("\n\rBuffer Size>>>>>>>>>>>>>>>>>>>>%d\n\r", buffer_size);
        printf_tiny("\n\rStorage characters in buffer>>>%d\n\r", storage_char);
        printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r", (buffer_size - storage_char));
        printf_tiny("\n\r*********************************************************\n\r");

        if (buffer_1 != 0)
        {
            printf_tiny("\n\rBUFFER 1\n\r");
            printf_tiny("\n\rStart Address>>>>>>>>>>>>>>>>>>0x%x\n\r", Buffer_1temp);
            printf_tiny("\n\rEnding Address>>>>>>>>>>>>>>>>>0x%x\n\r", Buffer_1temp + buffer_size);
            printf_tiny("\n\rBuffer Size>>>>>>>>>>>>>>>>>>>>%d\n\r", buffer_size);
            printf_tiny("\n\rStorage characters in buffer>>>0\n\r");
            printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r", (buffer_size));
            printf_tiny("\n\r*********************************************************\n\r");
        }

        for (m = 2; m <= (i + 2); m++)
        {
            if (buffer_n[m - 2] != 0)
            {
                printf_tiny("\n\rBUFFER %d\n\r", m);
                printf_tiny("\n\rStart Address>>>>>>>>>>>>>>>>>>0x%x\n\r", (uint16_t)buffer_n[m - 2]);
                printf_tiny("\n\rEnding Address>>>>>>>>>>>>>>>>>0x%x\n\r", (uint16_t)(buffer_n[m - 2]) + (uint16_t)(buff_size[m]));
                printf_tiny("\n\rBuffer Size>>>>>>>>>>>>>>>>>>>>%d\n\r", buff_size[m]);
                printf_tiny("\n\rStorage characters in buffer>>>0\n\r");
                printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r", (buff_size[m]));
            }
        }
        printf_tiny("\n\r*********************************************************\n\r");
        printf_tiny("\n\rNumber of storage characters = %d\n\r", storage_char);
        printf_tiny("\n\rTotal number of characters received = %d\n\r", total_char);
        printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r", (i + 2));
        printf_tiny("\n\rContents in Buffer 0\n\r");

        for ((buff_0_count) = 0; (buff_0_count) < storage_char; (buff_0_count)++)
        {
            if (buff_0_count == 0)
            {
                printf_tiny("0x%x>> %d", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
            else if ((buff_0_count % 16) != 0)
            {
                printf_tiny(" %d", *((buffer_0) + (buff_0_count)));
            }
            else if (buff_0_count % 16 == 0)
            {
                printf_tiny("\n\r0x%x>> %d", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
        }

        printf_tiny("\n\rTotal storage characters stored since last '?' = %d\n\r", storage_char);
        storage_char = 0;
        count = 0;
        buffer_0 = Buffer_0temp;
    }
    else if (user_input_char == '=')
    {
        printf_tiny("\n\rContents in Buffer 0\n\r");

        for ((buff_0_count) = 0; (buff_0_count) < storage_char; (buff_0_count)++)
        {
            if (buff_0_count == 0)
            {
                printf_tiny("0x%x>> %x", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
            else if ((buff_0_count % 16) != 0)
            {
                printf_tiny(" %x", *((buffer_0) + (buff_0_count)));
            }
            else if (buff_0_count % 16 == 0)
            {
                printf_tiny("\n\r0x%x>> %x", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
        }
    }
    else if (user_input_char == '&')
    {
        printf_tiny("\n\rContents in heap\n\r");
        for ((buff_0_count) = 0; (buff_0_count) <= 256; (buff_0_count)++)
        {
            if (buff_0_count == 0)
            {
                printf_tiny("0x%x>> %x", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
            else if ((buff_0_count % 16) != 0)
            {
                printf_tiny(" %x", *((buffer_0) + (buff_0_count)));
            }
            else if (buff_0_count % 16 == 0)
            {
                printf_tiny("\n\r0x%x>> %x", (uint16_t)(buffer_0 + buff_0_count), *((buffer_0) + (buff_0_count)));
            }
        }
    }
    else if (user_input_char == '@')
    {
        printf_tiny("\n\rFreeing Buffer 0.........\n\r");
        free(buffer_0);
        printf_tiny("\n\rBuffer 1 freed\n\r");

        printf_tiny("\n\rFreeing Buffer 1......... \n\r");
        free(buffer_1);
        printf_tiny("\n\rBuffer 1 freed\n\r");

        for (total_buff_count = 2; (total_buff_count) < (i + 2); (total_buff_count)++)
        {
            printf_tiny("\n\rFreeing buffer_%d.......\n\r", total_buff_count);
            free(buffer_n[total_buff_count]);
            printf_tiny("\n\rBuffer %d freed \n\r", total_buff_count);
        }
        main();
    }
}

void get_buffer_size(unsigned int buffer_size)
{
    int size_validation_flag = 1;
    while (size_validation_flag)
    {
        printf_tiny("Enter buffer size for buffer 0 : \r");
        unsigned int a = 0;
        unsigned int b = 0;
        unsigned int c = 0;
        unsigned int d = 0;

        a = getchar();
        putchar(a);
        b = getchar();
        putchar(b);
        c = getchar();
        putchar(c);
        d = getchar();
        putchar(d);

        buffer_size = (((a - 48) * 1000) + ((b - 48) * 100) + ((c - 48) * 10) + ((d - 48) * 1));

        if (!(buffer_size >= 32 && buffer_size <= 5120 && buffer_size % 16 == 0))
        {
            printf_tiny("Enter valid buffer size\n");
        }
        else
        {
            size_validation_flag = 0;
            return;
        }
    }
}
*/


