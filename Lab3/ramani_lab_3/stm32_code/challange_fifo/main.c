/**
 * @file main.c
 * @brief ESD LAB 3 PART 3 - Main Program Implementation
 *
 * Main program implementing PWM control, UART, button interrupts,
 * and watchdog timer functionality
 *
 * @author Bhakti Ramani
 * @date 1/11/2024
 */

//#include "delay.h"
#include "clock_config.h"
//#include "led.h"
//#include "interrupt.h"
#include "stm32f4xx.h"
#include "uart.h"
//#include "pwm.h"
#include <stdio.h>
#include <string.h>

/* Function prototypes for watchdog-related functions */
void maximize_watchdog_timeout(void);
void service_watchdog(void);
void disable_watchdog(void);
int was_watchdog_reset(void);
void force_disable_watchdogs(void);
void print_string(const char *ch);
volatile char recieved_command;
volatile usart2_interrupt_flag = 0;
void USART2_IRQHandler(void)
{
    if(USART2 -> SR & USART_SR_RXNE)
    {
        char recieved = getchar();
        recieved_command = recieved;
        print_string(" $ ");
        putchar(recieved);
        print_string("\n\r");
        usart2_interrupt_flag = 1;
        //gled_on();
    }
}

void UsageFault_Handler(void)
{
	print_string("DO NOTHING");
}

//
void print_string(const char *ch) {
    while (*ch) {
        while (!(USART2->SR & USART_SR_TXE)) {
            // Wait until TXE (Transmit Data Register Empty) flag is set
        }
        USART2->DR = *ch++; // Transmit character
    }
}

void WWDG_IRQHandler(void)
{
	print_string("DO NOTHING\n\r");
}

/**
 * @brief Main program entry
 */
int main(void)
{
    clock_config();
    _uart_tx_init();
    // Try all approaches to disable watchdog
//    disable_watchdog();
//    force_disable_watchdogs();
//    maximize_watchdog_timeout();  // As a fallback if disable fails

    // Enhanced header display
    print_string("+=============================================================+\n\r");
    print_string("|                     FIFO BUFFER PROGRAM                      |\n\r");
    print_string("+=============================================================+\n\r");

    int size = 5;
    int array[size];
    char print_buffer[32];
    int index = 0;
    int head_index = 0;

    print_string("+----------------------------- MENU -----------------------------+\n\r");
    print_string("| [E] Enter element | [F] Display FIFO | [R] Reset Buffer      |\n\r");
    print_string("+-------------------------------------------------------------+\n\r");
    print_string("Command > ");

    while(1)
    {
    	// Temporary array to hold values
		int temp[size];

    	//service_watchdog();
        if(usart2_interrupt_flag)
        {
            usart2_interrupt_flag = 0;
            print_string("\r\n");

            switch (recieved_command)
            {
                case 'E':
                    print_string("+------------------- ENTER ELEMENT -------------------------+\n\r");
                    print_string("| Input (0-9): ");
                    print_string("\n\r");
                    while(!usart2_interrupt_flag);
                    usart2_interrupt_flag = 0;

                    int array_element = recieved_command - '0';

                    if(array_element >= 0 && array_element <= 9)
                    {
                        if(index < size)
                        {
                            array[index] = array_element;
                            index++;
                            print_string("| [SUCCESS] Element added to buffer                          |\n\r");
                        }
                        else  // Buffer is full
                        {
                            // array[0] = array[1];
                            // array[1] = array[2];
                            // array[2] = array[3];
                            // array[3] = array[4];
                            // array[4] = array_element;
                            print_string("| [ALERT] Buffer Full - FIFO Rotation                        |\n\r");
                            //print_string("| [ALERT] Buffer Full - FIFO Rotation                        |\n\r");
                            sprintf(print_buffer, "| Removed: [%d]          \n\r", array[0]);
                            //print_string(print_buffer);
                            //infinite loop
                            for(int i = 0; i < (size - 1); i++)
                            {
                                int temp = array[i + 1];        // This could cause array out of bounds
                                array[i] = temp;
                            }
                            array[size - 1] = array_element;
                        }
                    }
                    else
                    {
                        print_string("| [ERROR] Invalid input - Please enter single digit (0-9)      |\n\r");
                    }
                    print_string("+-------------------------------------------------------------+\n\r");
                    break;

                case 'F':
                    //while(!usart2_interrupt_flag);
                    usart2_interrupt_flag = 0;
                    print_string("+-------------------- FIFO CONTENTS -------------------------+\n\r");
                    if(index == 0)
                    {
                        print_string("| [STATUS] Buffer is empty                                  |\n\r");
                    }
                    else
                    {
                        print_string("| Elements: [");
                        for(int i = head_index; i < index; i++)
                        {
                            sprintf(print_buffer, "%d", array[i]);
                            print_string(print_buffer);
                            if(i < index - 1) print_string(" ");
                        }
                        print_string("]                                        |\n\r");
                    }
                    print_string("+-------------------------------------------------------------+\n\r");
                    break;

                case 'R':
                    //while(!usart2_interrupt_flag);
                    usart2_interrupt_flag = 0;
                    print_string("+---------------------- RESET BUFFER ------------------------+\n\r");
                    print_string("| [STATUS] Clearing buffer...                               |\n\r");
                    for(int i = 0; i<size; i++)
                    {
                        array[i] = 0;
                    }
                    index = 0; // Reset index as well
                    print_string("| [SUCCESS] Buffer reset complete                           |\n\r");
                    print_string("+-------------------------------------------------------------+\n\r");
                    break;

                default:
                    //while(!usart2_interrupt_flag);
                    usart2_interrupt_flag = 0;
                    print_string("+------------------------ ERROR ----------------------------+\n\r");
                    print_string("| Invalid command! Use: [E]nter, [F]display, or [R]eset    |\n\r");
                    print_string("+-------------------------------------------------------------+\n\r");
                    break;
            }
            print_string("\n\r");
            print_string("+----------------------------- MENU -----------------------------+\n\r");
            print_string("| [E] Enter element | [F] Display FIFO | [R] Reset Buffer      |\n\r");
            print_string("+-------------------------------------------------------------+\n\r");
            print_string("Command > ");
        }

    }
}

void force_disable_watchdogs(void)
{
    // Disable all watchdog-related clocks
    RCC->APB1ENR &= ~(RCC_APB1ENR_WWDGEN);  // Disable WWDG clock

    // Disable LSI clock (used by IWDG)
    RCC->CSR &= ~RCC_CSR_LSION;

    // Clear any pending watchdog interrupts
    NVIC->ICER[0] = (1 << WWDG_IRQn);
    NVIC->ICPR[0] = (1 << WWDG_IRQn);

    // Try to disable both watchdogs
    IWDG->KR = 0x0000;
    WWDG->CR = 0x0000;

    // Clear any reset flags
    RCC->CSR |= RCC_CSR_RMVF;
}
///**
// * @brief Configure watchdog timer with maximum timeout
// * Sets prescaler to maximum (256) and reload value to maximum (4095)
// */
void maximize_watchdog_timeout()
{
    // Check if the system has been reset by the watchdog
    if (RCC->CSR & RCC_CSR_IWDGRSTF)
    {
        // Clear the reset flags
        RCC->CSR |= RCC_CSR_RMVF;
    }

    // Watchdog can't be fully disabled if it's enabled in hardware
    // We'll set it to its maximum timeout
    IWDG->KR = 0x5555;    // Enable write access to IWDG_PR and IWDG_RLR
    IWDG->PR = 7;         // Set prescaler to maximum (256)
    IWDG->RLR = 0xFFF;    // Set reload value to maximum (4095)
    IWDG->KR = 0xAAAA;    // Reload the watchdog
    IWDG->KR = 0xCCCC;    // Start the watchdog
}

/**
 * @brief Service the watchdog timer
 * Must be called periodically to prevent system reset
 */
void service_watchdog()
{
    IWDG->KR = 0xAAAA;    // Reload the watchdog
}

/**
 * @brief Attempt to disable watchdog timer
 * Note: Only works if watchdog is not enabled in hardware option bytes
 */
void disable_watchdog()
{
    // Unfortunately, if IWDG is started by hardware, it cannot be disabled by software
    // The following code attempts to disable it, but will only work if it's not hardware-enabled

    // Disable IWDG by stopping the LSI oscillator
    RCC->CSR &= ~RCC_CSR_LSION;

    // Wait for LSI to stop
    while(RCC->CSR & RCC_CSR_LSIRDY);
    // Note: If IWDG is hardware-enabled, this won't stop it and may cause issues
}

/**
 * @brief Check if watchdog caused the last reset
 * @return 1 if watchdog reset occurred, 0 otherwise
 */
int was_watchdog_reset()
{
    if (RCC->CSR & RCC_CSR_IWDGRSTF)
    {
        // Clear the reset flags
        RCC->CSR |= RCC_CSR_RMVF;
        return 1;    // Watchdog reset occurred
    }
    return 0;    // No watchdog reset
}
