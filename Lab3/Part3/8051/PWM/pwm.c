#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#define CKCON0_X2_BIT (1)
#define CKCON0_TIX2_BIT (1<<2)

void pwm_stop();
void pwm_init();
void pwm_start();
void freq_max();
void freq_min();
void HS0_mode_on(void);
void HS0_mode_off(void);
void set_x2_mode(void);


void power_down_mode();
void idle_mode();


int putchar(int charToSend) {
    SBUF = charToSend;  // Send character to serial buffer
    while (!TI);        // Wait for transmission to complete
    TI = 0;            // Clear transmission interrupt flag
    return charToSend;
}

/*
* This function receives a character via UART
*/

int getchar(void) 
{
    while (!RI);        // Wait for reception to complete
    RI = 0;            // Clear reception interrupt flag
    return SBUF;       // Return received character
}

void main(void)
{
    //init_uart();
    pwm_init();
    
    printf("PCA DEMO\n\r");
    set_x2_mode();
    printf("in X2 MODE\n\r");
    printf("ENTER COMMANDS\n\r");
    printf("COMMAND MENU :\n\r");
    printf(" R - RUN PWM\n\r");
    printf(" S - STOP PWM\n\r");
    printf(" F - MAX FREQUENCY MODE\n\r");
    printf(" M - MIN FREQUENCY MODE\n\r");
    printf(" I - IDLE MODE\n\r");
    printf(" P - POWER DOWN MODE\n\r");
    printf(" H - HIGH SPEED MODE ON\n\r");
    printf(" Q - HIGH SPEED MODE OFF\n\r");

    TCON |= 0x01;
    IE |= 0x81;

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
            case 'H':
                HS0_mode_on();
                break;
            case 'Q':
                HS0_mode_off();
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
void set_x2_mode(void)
{
    CKCON0 = 0x00;
    CKCON0 |= CKCON0_X2_BIT;
    CKCON0 |= CKCON0_TIX2_BIT;
}

void idle_mode()
{
    printf("IDLE MODE\n\r");
    PCON |= 0x01;
}

void power_down_mode()
{
    printf("POWER DOWN MODE\n\r");
    PCON |= 0x02;
}
void freq_max()
{
    printf("MAXIMUM FREQUENCY\n\r");
    CKRL = 0xFF;
}

void freq_min()
{
    printf("MINIMUM FREQUENCY\n\r");
    CKRL = 0x01;
}

void pwm_init()
{
    CCAPM0 = 0x00;
    CMOD = 0X82;
    CL = 0X00;
    CH = 0X00;
    
    CCAP0L = 0XAC;
    CCAP0H = 0XAC;
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

void HS0_mode_on(void)
{
    printf("HIGH SPEED MODE ON\n\r");
    CCON |= 0x4C;
    CMOD |= 0x02;     // Fclk/2 freq set for PCA mode
    CCAPM0 = 0x4C;   // Compare mode + HSO, no interrupt
    CL = 0x00;       // Clear PCA counter
    CH = 0x00;
    
    // Load maximum frequency value
    CCAP0L = 0xAC;   // Load compare low byte
    CCAP0H = 0xAC;   // Load compare high byte
}

void HS0_mode_off(void)
{
    printf("HIGH SPEED MODE OFF\n\r");
    CCAPM0 = 0x00;
    return;
}
