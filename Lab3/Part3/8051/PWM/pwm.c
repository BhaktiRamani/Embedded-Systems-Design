#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>

void main(void)
{
    CMOD = 0X02;
    CL = 0X00;
    CH = 0X00;
    
    CCAP0L = 0X40;
    CCAP0H = 0X40;
    CCAPM0 = 0X42;
    
    CCON = 0x40;
    
  
    while(1)
    {
        
    }


}
