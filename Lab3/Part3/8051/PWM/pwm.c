/**
 * @file pwm_control.c
 * @brief PWM Control Program for AT89C51ED2 Microcontroller
 * @details This program implements PWM control and various operating modes
 *          for the AT89C51ED2 microcontroller using PCA (Programmable Counter Array)
 * @author [Bhakti Ramani]
 * @date [1/11/24]
 */

#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

/* Clock Control Bits */
#define CKCON0_X2_BIT (1)          // X2 mode bit in CKCON0
#define CKCON0_TIX2_BIT (1<<2)     // Timer X2 mode bit in CKCON0

/* PCON Mode Bits */
#define PCON_IDLE_BIT     (0x01)    // Idle mode bit in PCON
#define PCON_POWERDOWN_BIT (0x02)   // Power-down mode bit in PCON

/* PCA Control Values */
#define PCA_PWM_COMPARE_VALUE (0xFF) // PWM compare value for 50% duty cycle
#define PCA_COUNTER_INIT     (0x00)  // Initial counter value
#define PCA_PWM_START_VALUE  (0x40)  // Value to start PWM
#define PCA_HSO_START_VALUE  (0x4C)  // Value for High-Speed Output mode

/* Clock Frequency Settings */
#define CLOCK_MAX_FREQ     (0xFF)    // Maximum frequency setting
#define CLOCK_MIN_FREQ     (0x01)    // Minimum frequency setting

/* Function Prototypes */
void pwm_stop(void);
void pwm_init(void);
void pwm_start(void);
void freq_max(void);
void freq_min(void);
void HS0_mode_on(void);
void HS0_mode_off(void);
void set_x2_mode(void);
void power_down_mode(void);
void idle_mode(void);

/**
 * @brief External interrupt for EXTI0
 * @param none
 * @return return to main loop
 */
void external_ISR(void) __interrupt (0)
{
    printf("EXIT FROM IDEL MODE\n\r");
    return;
}
/**
 * @brief Sends a character through UART
 * @param charToSend Character to be transmitted
 * @return The transmitted character
 */
int putchar(int charToSend) {
    SBUF = charToSend;      // Send character to serial buffer
    while (!TI);            // Wait for transmission to complete
    TI = 0;                 // Clear transmission interrupt flag
    return charToSend;
}

/**
 * @brief Receives a character through UART
 * @return The received character
 */
int getchar(void) {
    while (!RI);            // Wait for reception to complete
    RI = 0;                 // Clear reception interrupt flag
    return SBUF;            // Return received character
}

/**
 * @brief Main program entry point
 */
void main(void) {
    pwm_init();
    
    // Print menu options
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

    // Enable external interrupt 0
    TCON |= 0x01;
    IE |= 0x81;

    while(1) {
        char command;
        command = getchar();    // Wait for input
        
        // Echo the received character
        putchar(command);
        printf("\n\r");        // New line after command
        
        switch(command) {
            case 'R': pwm_start(); break;
            case 'S': pwm_stop(); break;
            case 'F': freq_max(); break;
            case 'M': freq_min(); break;
            case 'I': idle_mode(); break;
            case 'P': power_down_mode(); break;
            case 'H': HS0_mode_on(); break;
            case 'Q': HS0_mode_off(); break;
            default: printf("Invalid Command\n\r");
        }
    }
}

/**
 * @brief Sets X2 mode for clock operation
 * @details Configures CKCON0 register for X2 mode and Timer X2 mode
 */
void set_x2_mode(void) {
    CKCON0 = 0x00;
    CKCON0 |= CKCON0_X2_BIT;
    CKCON0 |= CKCON0_TIX2_BIT;
}

/**
 * @brief Enters idle mode
 * @details Sets PCON register to enter idle mode where CPU is stopped but peripherals continue
 */
void idle_mode(void) {
    printf("IDLE MODE\n\r");
    PCON |= PCON_IDLE_BIT;
}

/**
 * @brief Enters power-down mode
 * @details Sets PCON register to enter power-down mode where both CPU and peripherals are stopped
 */
void power_down_mode(void) {
    printf("POWER DOWN MODE\n\r");
    PCON |= PCON_POWERDOWN_BIT;
}

/**
 * @brief Sets maximum operating frequency
 */
void freq_max(void) {
    printf("MAXIMUM FREQUENCY\n\r");
    CKRL = CLOCK_MAX_FREQ;
}

/**
 * @brief Sets minimum operating frequency
 */
void freq_min(void) {
    printf("MINIMUM FREQUENCY\n\r");
    CKRL = CLOCK_MIN_FREQ;
}

/**
 * @brief Initializes PWM module
 * @details Configures PCA module for PWM operation with 50% duty cycle
 */
void pwm_init(void) {
    CCAPM0 = 0x00;                     // Clear all mode bits
    CMOD = 0X82;                       // Set PCA timer mode
    CL = PCA_COUNTER_INIT;             // Initialize counter low byte
    CH = PCA_COUNTER_INIT;             // Initialize counter high byte
    
    CCAP0L = PCA_PWM_COMPARE_VALUE;    // Set PWM compare value low byte
    CCAP0H = PCA_PWM_COMPARE_VALUE;    // Set PWM compare value high byte
    CCAPM0 = 0X42;                     // Enable PWM mode
}

/**
 * @brief Starts PWM operation
 */
void pwm_start(void) {
    printf("PWM START\n\r");
    CCON |= PCA_PWM_START_VALUE;
}

/**
 * @brief Stops PWM operation
 */
void pwm_stop(void) {
    printf("PWM STOP\n\r");
    CCON |= PCA_COUNTER_INIT;
}

/**
 * @brief Enables High-Speed Output mode
 * @details Configures PCA for high-speed operation with specific frequency
 */
void HS0_mode_on(void) {
    printf("HIGH SPEED MODE ON\n\r");
    CCON |= PCA_HSO_START_VALUE;
    CMOD |= 0x02;                      // Fclk/2 freq set for PCA mode
    CCAPM0 = PCA_HSO_START_VALUE;      // Compare mode + HSO, no interrupt
    CL = PCA_COUNTER_INIT;             // Clear PCA counter
    CH = PCA_COUNTER_INIT;
    
    // Load maximum frequency value
    CCAP0L = PCA_PWM_COMPARE_VALUE;    // Load compare low byte
    CCAP0H = PCA_PWM_COMPARE_VALUE;    // Load compare high byte
}

/**
 * @brief Disables High-Speed Output mode
 */
void HS0_mode_off(void) {
    printf("HIGH SPEED MODE OFF\n\r");
    CCAPM0 = 0x00;
}
