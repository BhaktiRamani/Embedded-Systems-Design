
#include<stdint.h>
#include<mcs51reg.h>

void putchar(char c);
void uart(void);
char getchar(void);

void putchar(char c)
{
    while(!TI);
    while(TI==0);
    while((SCON & 0x02) == 0);
    TI = 0;
    SBUF = c;
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

void main(void)
{
    char recieved;
    uart();
    while(1)
    {
        recieved = getchar();
        putchar(recieved);
    }
}
