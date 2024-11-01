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
     SCON = 0x50;    // Serial mode 1, 8-bit UART, enable receiver
     TMOD = 0x20;    // Timer 1, mode 2 (8-bit auto-reload)
     TH1 = 0xFD;     // For 9600 baud rate with 11.059MHz crystal
     TR1 = 1;        // Start timer 1
     TI = 1;         // Set TI for first transmission
}

// Modified putchar function
int putchar(int chr)
{
    while(!TI);      // Wait until TI is set
    TI = 0;          // Clear TI flag
    SBUF = chr;      // Load data into buffer
    return chr;
}

// Modified getchar function
int getchar(void)
{
    char c;
    while(!RI);      // Wait until RI is set
    c = SBUF;        // Read received data
    RI = 0;          // Clear RI flag
    return c;
}

void main(void)
{
    init_uart();
    pwm_init();
    
    printf("PCA MODE : PWM\n\r");
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
        char command;
        command = getchar();    // Wait for input
        
        // Echo the received character
        putchar(command);
        printf("\n\r");        // New line after command
        
        switch(command)
        {
            case 'R':
                pwm_start();
                break;
            case 'S':
                pwm_stop();
                break;
            case 'F':
                freq_max();
                break;
            case 'M':
                freq_min();
                break;
            case 'I':
                idle_mode();
                break;
            case 'P':
                power_down_mode();
                break;
            default:
                printf("Invalid Command\n\r");
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