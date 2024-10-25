#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include "/usr/share/sdcc/include/stdlib.h"
#include "/usr/share/sdcc/include/stdio.h"
#include "/usr/share/sdcc/include/stdint.h"

#define upper_default 4800
#define LOWER_DEFAULT 32
#define HEAP_SIZE 5000

#define DEBUG

#ifdef DEBUG
#define DEBUGPORT(x) dataout(0xFFFF,x);
void dataout(uint16_t val1, uint8_t x){
    DPL = val1 & 0xFF;
    DPH = (val1 >> 8) & 0xFF;
    ACC = x;
    __asm__("movx @dptr, a");
}
 // generates a MOVX 0FFFFh,x where x is an 8-bitvalue
#else
#define DEBUGPORT(x)
 // empty statement, nothing passed on from the preprocessor to the compiler
#endif

#define UPPER_SMALL_BUFFERS 400
#define LOWER_SMALL_BUFFERS 20


static uint8_t index_of_buffers = 0;


uint8_t total_number_of_commands = 0;
uint8_t total_number_of_storage = 0;
uint8_t recent_commands = 0;
uint8_t recent_storage = 0;
uint8_t recived_bytes = 0;

void print_prompt(const char * string);
int getchar(void);
int putchar(int);
void sendUint32ToUART(uint32_t value);
int get_buf_value(const char * string, int UPPER, int LOWER);
void buffer0_dump();

static uint8_t node_count;
typedef struct node_s{
    uint8_t index;
    uint8_t * data_pointer;
    int size;
}node_t;

node_t array_for_nodes[100];

__xdata uint8_t* pointer1 = NULL;
__xdata uint8_t* pointer2 = NULL;

unsigned char __sdcc_external_startup(void){
    AUXR |= (XRS1 | XRS0);
    AUXR &= ~(XRS2);
    return 0;
}

void init_uart(){
     SCON = 0x50;
     TMOD = 0x20;
     TH1 = 0xFD;
     TR1 = 1;
}

int putchar(int chr){
    SBUF = chr;
    while(!TI);
    TI = 0;
    return 1;

}

int getchar(){

    while(!RI);
    int a = SBUF;
    RI = 0;
    recived_bytes++;
    return a;

}


int get_buf_value(const char * string, int UPPER, int LOWER){
    int data_from_serial = 0;
    int buffer_size = 0;
    int index = 1000;


    print_prompt(string);


    while(index >= 1 & data_from_serial != 0x0d){
        data_from_serial = getchar();
        if((data_from_serial < '0' || data_from_serial > '9') && data_from_serial != 0x0d) {
            print_prompt("\nEnter valid input\n");
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

void sendUint32ToUART(uint32_t value) {
    int byte = 0;
    int i = 0;
    while (value > 1) {
        int byte = value % 10; // Extract one byte at a time
        putchar(byte);
        value = value / 10;
    }
}



void print_prompt(const char * string){
   while(*string != '\0'){
       putchar(*string);
       string++;
   }
}



//void buffer_dump(node_t node){

//}

#pragma less_pedantic
int get_command(int command){

    int temp_value = 0;
    __xdata uint8_t* pointer = NULL;
    int array_index_temp = 0;

    //node_t temp_node;

    switch(command){
        case '@':
            break;
        case '?':
            print_prompt("Total number of commands from the start: ");
            printf("%d",total_number_of_commands);
            print_prompt("\n\r");
            print_prompt("Recent number of commands from the last ?: ");
            printf("%d",recent_commands);
            print_prompt("\n\r");
            print_prompt("\n\r");

            print_prompt("Total number of storage chars from the start: ");
            printf("%d",total_number_of_storage);
            print_prompt("\n\r");
            print_prompt("Recent number of storage chars from the last ?: ");
            printf("%d",recent_storage);
            print_prompt("\n\r");
            print_prompt("\n\r");

            for(int i=0; i<99; i++){
                if(array_for_nodes[i]){
                    printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);

                }
            }



            uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
            uint8_t *wr_ptr = array_for_nodes[0].data_pointer;
            uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
            printf("....... Dumping Buffer0 ......\r\n");
            while(temp){
                printf("%p: ", rd_ptr);
                for(int i=15; i>=0;i--){
                    printf("%d ",(*rd_ptr & (0x00FF)));
                    printf("%d ",((*rd_ptr & (0xFF00))>>8U));
                    *wr_ptr = 0;
                    rd_ptr++;
                    temp--;
                }
                printf("\r\n");
            }


            recent_commands = 0;
            recent_storage = 0;
            break;

        case '+':
            temp_value = get_buf_value("\n\rEnter buffer size between 20 to 400: ", UPPER_SMALL_BUFFERS, LOWER_SMALL_BUFFERS);
            print_prompt("Buffer size you entered is : ");
            printf("%d \n\r", temp_value);

            pointer = (__xdata uint8_t *) malloc(temp_value);
            if (pointer == NULL){
                print_prompt("\n\rFailed to get malloc try to enter smaller size by again entering +");

            }

            node_t node = {index_of_buffers, pointer, temp_value};
            array_for_nodes[index_of_buffers] = node;
            index_of_buffers++;
            break;

        case '-':
            print_prompt("\n\rEnter Number to delete between 0 to 127 for buffer:");
            temp_value = getchar();
            putchar(temp_value);
            if(temp_value <= 0) break;
            if(array_for_nodes[temp_value]){
                array_for_nodes[temp_value].size = 0;
                free(array_for_nodes[temp_value].data_pointer);
            }
            break;

        case '=':
            buffer0_dump();
            break;
        default:
            break;
    }

    return 0;
}

void buffer0_dump(){
    uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
    uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
    printf("....... Dumping Buffer0 ......\r\n");
    while(temp){
        printf("%p: ", rd_ptr);
        for(int i=15; i>=0;i--){
            printf("%d ",(*rd_ptr & (0x00FF)));
            printf("%d ",((*rd_ptr & (0xFF00))>>8U));
            rd_ptr++;
            temp--;
        }
        printf("\r\n");
    }
}


void main(void)
{
    //init_uart();

    int buffer_size = 0;

    do{
        buffer_size  = get_buf_value("Enter buffer size between 32 and 4800 bytes (buffer size must be evenly divisible by 16): ", upper_default, LOWER_DEFAULT);

        print_prompt("Buffer you entered is : 0x");
        printf("%d \n\r", buffer_size);

        if(buffer_size == -1) continue;

        pointer1 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer1 == NULL){
            print_prompt("Failed to get malloc try to enter smaller size for buf 1\n\r");
            continue;

        }


        pointer2 = (__xdata uint8_t *) malloc(buffer_size);
        if (pointer2 == NULL){
            free(pointer1);

           print_prompt("Failed to get malloc try to enter smaller size for buf 2\n\r");
           continue;
        }


    printf("pointer_value : %p %p\n\r", pointer1, pointer2);
    }while( pointer2 == NULL || pointer1 == NULL);

    index_of_buffers = 0;

    node_t node1 = { index_of_buffers, pointer1, buffer_size};
    array_for_nodes[index_of_buffers] = node1;
    printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
    index_of_buffers++;

    node_t node2 = { index_of_buffers, pointer2, buffer_size};
    array_for_nodes[index_of_buffers] = node2;
    printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
    index_of_buffers++;

    print_prompt("Enter Uppercase char to save in buffer 0: \n\r");

    __idata int temp_buffer_size = array_for_nodes[0].size;
    __idata int index_for_write = 0;

    uint8_t * wr = array_for_nodes[0].data_pointer;

    do{
        int ch = getchar();
        putchar(ch);
        if(ch < 65 || ch > 90) {
            total_number_of_commands+=1;
            recent_commands+=1;
            print_prompt("Command recived ! \n\r");
            get_command(ch);
            continue;
        }
        total_number_of_storage = total_number_of_storage + 1;
        recent_storage = recent_storage + 1;

        *wr = ch;
        wr++;
        printf("total storage %d recent storage %d pointer %p \n\r", total_number_of_storage, recent_storage, wr);
        temp_buffer_size -= 1;
        index_for_write += 1;
    }while(temp_buffer_size>0);
    printf("buffer0 got full nothing to write !");


    // Insert code

    while(1)
    {
        print_prompt("Please enter An command (+) (-) (?) (=) (@): \n");
        int cha = getchar();
        if(cha < 65 || cha > 90) {
            total_number_of_commands+=1;
            recent_commands+=1;
            print_prompt("Command recived ! \n\r");
        }
        else{
            total_number_of_storage = total_number_of_storage + 1;
            recent_storage = recent_storage + 1;
        }

        get_command(cha);


    }



}

