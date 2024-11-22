/****************************************************************************
 * @file waves.h
 * @author Bhakti Ramani
 * @brief Header file defining waveform lookup tables for DAC output.
 * @date 2024-11-22
 * @course Embedded System Design Lab 4 Part 3
 * 
 * @details
 * Provides precomputed lookup tables for sine, ramp, and triangular waveforms.
 * These tables are intended for efficient DAC waveform generation, avoiding
 * real-time calculations in performance-critical applications.
 * 
 * @copyright
 * Copyright (c) 2024 Bhakti Ramani
 * All rights reserved.
 ****************************************************************************/

#ifndef _WAVES_H_
#define _WAVES_H_

/** Number of samples in the ramp waveform lookup table */
#define RAMP_SAMPLES 256

/** Number of samples in the sine waveform lookup table */
#define SINE_SAMPLES 256

/** Number of samples in the triangular waveform lookup table */
#define TRIG_SAMPLES 512

/**
 * @brief Precomputed sine wave values for DAC output.
 * 
 * The sine wave lookup table contains `SINE_SAMPLES` entries and can be used
 * to generate sine wave signals for DAC output without real-time computation.
 */
extern const int dac_values[SINE_SAMPLES];

/**
 * @brief Precomputed ramp wave values for DAC output.
 * 
 * The ramp wave lookup table contains `RAMP_SAMPLES` entries and can be used
 * for DAC waveform generation in embedded systems.
 */
extern const int ramp_dac_values[RAMP_SAMPLES];

/**
 * @brief Precomputed triangular wave values for DAC output.
 * 
 * The triangular wave lookup table contains `TRIG_SAMPLES` entries and is
 * suitable for generating triangular signals using a DAC.
 */
extern const int trig_dac_values[TRIG_SAMPLES];

#endif /* _WAVES_H_ */
