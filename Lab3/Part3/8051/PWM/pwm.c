#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
void pwm_stop();
void pwm_init();
void pwm_start();
void freq_max();
void freq_min();

void power_down_mode();
void idle_mode();

void init_uart(void)
{
     SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
     TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
     TH1 = 0xFD;                // 9600 baud rate
     TR1 = 1;                   // Start timer 1
}

int putchar(int chr)
{
    SBUF = chr;                 // Load character to send
    while(!TI);                 // Wait for transmission complete
    //DEBUGPORT(55);              // Debug marker for transmission
    TI = 0;                     // Clear transmission flag
    return 1;
}

int getchar(void){
    while(!RI);                 // Wait for character reception
    int a = SBUF;               // Get received character
    //DEBUGPORT(10);              // Debug marker for reception
    RI = 0;                     // Clear reception flag
    return a;
}


void external_ISR(void) __interrupt (0)
{
    printf("EXIT FROM IDEL MODE\n\r");
}

void main(void)
{
    CKCON0 |= 0x09;
    init_uart();
    printf("X2 mode initialized\n\r");
    pwm_init();
    printf("PCA MODE : PWM\n\r");
    //Entering in X2 mode
 
   
    printf("COMMANDS :\n\r");
    printf(" R - RUN PWM\n\r");
    printf(" S - STOP PWM\n\r");
    printf(" F - MAX FREQUENCY MODE\n\r");
    printf(" M - MIN FREQUENCY MODE\n\r");
    printf(" I - IDLE MODE\n\r");
    printf(" P - POWER DOWN MODE\n\r");
    
    TCON = 0x01;
    IE = 0x81;
    while(1)
    {
        char command = getchar();
        if(command == 'R')
        {
            //run pwm
            pwm_start();
        }
        if(command == 'S')
        {
            //stop pwm
            pwm_stop();
        }
        if(command == 'F')
        {
            //freq = fast
            freq_max();
        }
        if(command == 'M')
        {
            //freq = fast
            freq_min();
        }
        if(command == 'I')
        {
            idle_mode();
        }
        if(command == 'P')
        {
            power_down_mode();
        }
    }

}
// Formula for Clock Division:
// System Clock = Oscillator Clock / (12 * (256-CKRL))

// Example settings:
// CKRL = 0x00;   // Maximum division: Fosc/12 (default)
// CKRL = 0xFF;   // Minimum division: Fosc/12/1 = Fosc/12
// CKRL = 0xF0;   // Division: Fosc/12/16

void idle_mode()
{
    printf("IDLE MODE\n\r");
    PCON = 0x01;
}

void power_down_mode()
{
    printf("POWER DOWN MODE\n\r");
    PCON = 0x02;
}
void freq_max()
{
    printf("MAXIMUM FREQUENCY\n\r");
    CKRL = 0xFF;
}

void freq_min()
{
    printf("MINIMUM FREQUENCY\n\r");
    CKRL = 0x00;
}
void pwm_init()
{
    CMOD = 0X82;
    CL = 0X00;
    CH = 0X00;
    
    CCAP0L = 0X1C;
    CCAP0H = 0X1C;
    CCAPM0 = 0X42;
}

void pwm_start()
{
    printf("PWM START\n\r");
    CCON = 0x40;
}

void pwm_stop()
{
    printf("PWM STOP\n\r");
    CCON = 0x00;
}