/****************************************************************************
 * @file debugger.h
 * @author Bhakti Ramani
 * @brief Command handler functions for memory operations.
 * @date Fall 2024
 * @course ECEN 5613, University of Colorado at Boulder
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#include <stdint.h>

static inline void dataout(uint16_t address, uint8_t value) {
    __xdata unsigned char *data_ptr = (__xdata unsigned char *)(address); // Ensure proper casting
   *data_ptr = value; // Write the value to the specified address
}

/* 
 * DEBUG macro for debugging by writing to specific address location
 */
#ifdef DEBUG
#define DEBUGPORT(x) dataout(0xFEFE,x);
#else
#define DEBUGPORT(x)
#endif