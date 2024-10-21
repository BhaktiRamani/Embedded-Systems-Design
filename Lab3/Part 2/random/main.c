#include<stdio.h>
#include<stdlib.h>
#include<mcs51reg.h>

int main()
{
    int *a = malloc(5200);
    
    int user_input;
    
    printf("Enter the buffer size between 32 and 5120 : ");
    scanf("%d", &user_input);
    
    if((user_input < 0) || (user_input > 5120) || ((user_input % 16) != 0))
    {
        printf("yoo put something different\n");
        return -1;
        
    }
    
    int *buffer_0 = malloc(user_input);
    int *buffer_1 = malloc(user_input);
  
    if(buffer_0 == NULL || buffer_1 == NULL)
    {
        printf("Please enter a smaller size");
        free(buffer_0);
        free(buffer_1);

    }
    
    buffer_0[3] = 1;
    printf("buffer_0 %d\n", buffer_0[3]);
    printf("Buffers created\n");
    free(a);
    free(buffer_0);
    free(buffer_1);

}

void uart(void)
{
    SCON = 0x50;
    TMOD = 0x20;
    TH1 = 0xFA;
    TL1 = 0xFA;
    TR1 = 1;
}

char getchar(void)
{
    while(!RI);
    while((SCON & 0x01) == 0);
    while(RI == 0);
    RI = 0;
    return SBUF;
}