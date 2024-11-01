//watchdog timer
#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>

void refresh_wdt();
void main(void)
{
    CMOD = CMOD | 0X42;
    
    CCAPM4 = 0x44;
    CCAP4L = 0XFF;
    CCAP4H = 0XFF;
    
    while(1)
    {
        refresh_wdt();
        for(int i = 0; i< 195; i++) {}
    }

}

void refresh_wdt()
{
    CCAP4L = 0X00;
    CCAP4H = 0X00;
}
