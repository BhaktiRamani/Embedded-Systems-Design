#include <malloc.h>
#include <at89c51ed2.h>  //also includes 8052.h and 8051.h
#include <mcs51reg.h>
//#include <8052.h>   // also included in at89c51ed2.h
#include <stdio.h>

//#define HEAP_SIZE 2048   // size must be smaller than available XRAM
//__xdata unsigned char heap[HEAP_SIZE];


void main(void)
{
    __xdata char *ptr;
    int i, count = 0;  // Initialize count to 0
    
    //init_dynamic_memory((MEMHEADER __xdata *)heap, HEAP_SIZE);
    // Allocate 2048 bytes from the heap
    ptr = (__xdata char*)malloc(1000);

    if(ptr == NULL)
    {
        printf("Heap allocation failed\n");
    }
    else
    {
        printf("Heap allocation of 2048 bytes successful\n");

        // Write 55 to every allocated byte
        for(i = 0; i < 1000; i++)
        {
            ptr[i] = 55;
        }

        // Check if all bytes were written correctly
        for(i = 0; i < 1000; i++)
        {
            if(ptr[i] == 55)
            {
                count++;
            }
        }

        // Verify that the count matches the number of allocated bytes
        if(count == 1000)
        {
            printf("Successfully wrote 2048 bytes in memory\n");
        }
        else
        {
            printf("Error writing to memory\n");
        }

        // Free the allocated memory (optional in embedded systems)
        //free((__xdata char*)(ptr));
    }

    while(1);  // Infinite loop to keep the program running
}

// void main()
// {
//     xdata char *ptr;
//     int count, i = 0;
//     ptr = malloc(2048);

//     if(ptr == NULL)
//     {
//         printf("Heap allocation fail\n");
//     }
//     else
//     {
//         printf("Heap allocation of 2048 bytes successful\n");

//         for(int i = 0; i< 2048; i++)
//         {
//             ptr[i] = 55;
//         }

//         for(int i = 0; i< 2048; i++)
//         {
//             if(ptr[i]==55)
//             {
//                 count++;
//             }
//         }
//         if(count == 2048)
//         {
//             printf("Successfull write in memory\n");
//         }
//         free(ptr);
//     }

// }
