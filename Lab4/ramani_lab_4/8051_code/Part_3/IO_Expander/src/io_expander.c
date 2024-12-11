/**
 * @file dac.c
 * @author Bhakti Ramani
 * @brief io_expander GPIO expander integration with 8051 microcontroller using I2C protocol.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides functions to initialize, read, and write to the io_expander GPIO expander.
 * Implements basic I2C communication using bit-banging.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 */

#include "dac.h"

/**
 * @brief Initializes the io_expander GPIO expander.
 * 
 * Sets all GPIO pins to high (0xFF) during initialization.
 */
void io_expander_init() {
    i2c_start();
    i2c_write(io_expander_I2C_WRITE_ADDRESS);
    i2c_write(0xFF);
    i2c_stop();
}

/**
 * @brief Reads the current state of the entire GPIO port.
 * 
 * @return uint8_t Current state of all pins on the io_expander.
 */
uint8_t io_expander_read_port(void) {
    uint8_t data = 0;
    i2c_start();
    i2c_write(io_expander_I2C_READ_ADDRESS);
    data = i2c_read(0);
    i2c_stop();
    return data;
}

/**
 * @brief Reads the state of a specific pin.
 * 
 * @param pin Pin number to read (0-7).
 * @return uint8_t State of the specified pin (1 for high, 0 for low).
 */
uint8_t io_expander_read_pin(uint8_t pin) {
    uint8_t port_state = io_expander_read_port();
    return (port_state >> pin) & 0x01;
}

/**
 * @brief Writes a value to the entire GPIO port.
 * 
 * @param value Value to write to all pins (8 bits).
 */
void io_expander_write_port(uint8_t value) {
    i2c_start();
    i2c_write(io_expander_I2C_WRITE_ADDRESS);
    i2c_write(value);
    i2c_stop();
}

/**
 * @brief Sets or clears a specific GPIO pin.
 * 
 * @param pin Pin number to modify (0-7).
 * @param value Desired state of the pin (1 for high, 0 for low).
 */
void io_expander_set_pin(uint8_t pin, uint8_t value) {
    uint8_t port_state = io_expander_read_port();
    if (value) {
        port_state |= (1 << pin);  // Set pin high
    } else {
        port_state &= ~(1 << pin); // Set pin low
    }
    io_expander_write_port(port_state);
}
