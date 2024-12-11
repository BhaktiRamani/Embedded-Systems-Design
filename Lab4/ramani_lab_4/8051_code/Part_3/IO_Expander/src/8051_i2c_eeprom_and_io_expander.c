/****************************************************************************
 * @file 8051_i2c_eeprom_and_io_expander.c
 * @author Bhakti Ramani
 * @brief I2C EEPROM and io_expander IO Expander Driver Implementation for 8051 Microcontroller
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Implements bit-banged I2C communication for interfacing with an X24C02 EEPROM 
 * and a PCF8574 IO Expander. Provides a command-line interface to perform 
 * read, write, and hexdump operations on EEPROM and GPIO operations with the expander.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdint.h>

#include "interrupts.h"
#include "dac.h"
#include "eeprom.h"
#include "i2c.h"
#include "ui_user_input.h"
#include "getchar_putchar.h"

/**
 * @brief External Interrupt Service Routine 0
 * 
 * Reads the state of Pin 0 from the PCF8574 IO Expander and mirrors it to Pin 7.
 */
void external_ISR0(void) __interrupt (0) {
    uint8_t data = 0;
    // Read Pin 0
    data = io_expander_read_pin(0);
    // Write Pin 7
    io_expander_set_pin(7, data);
}

/**
 * @brief Main program entry point.
 * 
 * Initializes required peripherals and runs a command-line interface for
 * EEPROM and IO expander operations.
 * 
 * @return int Program exit status (0 for success).
 */
int main() {
    // Configure P1.3 and P1.4 as output
    P1 &= ~(1 << 3);
    P1 &= ~(1 << 4);

    // Initialize UI and command menu
    ui();
    command_menu();

    // Start I2C communication
    i2c_start();

    // Main loop
    while (1) {
        char user_input = getchar();
        printf("| $ %c\n\r", user_input);
        printf("\n\r");
        switch (user_input) {
            case 'W': {
                printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
                unsigned int addr = take_address();
                if (!address_range_flag) {
                    address_range_flag = 1;
                    break;
                }
                unsigned char data = take_data();
                if (!data_range_flag) {
                    data_range_flag = 1;
                    break;
                }
                eeprom_write(addr, data);
                break;
            }
            case 'R': {
                printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
                unsigned int addr = take_address();
                if (!address_range_flag) {
                    address_range_flag = 1;
                    break;
                }
                printf("| Reading from Address 0x%03X           |\n\r", addr);
                eeprom_read(addr);
                break;
            }
            case '?':
                command_menu();
                break;
            case 'X':
                printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
                eeprom_reset();
                break;
            case 'H':
                printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
                handler_EEPROM_hexdump();
                break;
            case 'I':
                printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
                enable_interrupt0();
                io_expander_init();
                break;
            case 'L':
                printf("\n┌───────────── EXIT IO EXPANDER ───────────────┐\n\r");
                disable_interrupt0();
                break;
            default:
                printf("INVALID INPUT\n\r");
                break;
        }
    }

    return 0;
}
