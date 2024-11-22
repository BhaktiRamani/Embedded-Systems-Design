/******************************************************************************
* File Name: spi_dac.c
* Description: This file implements SPI communication with DAC to generate 
*              a 20Hz sine wave using 8-bit DAC with 1000Hz sampling rate.
* 
* Author: Bhakti Ramani
* Date: 11/19/2024
* 
* Hardware Configuration:
* - MCU: 8051 (AT89C51ED2)
* - DAC: [DAC Model Number]
* - Connection Details:
*   - P1.1: Slave Select (SS)
*   - P1.5: MOSI
*   - P1.6: MISO
*   - P1.7: SCK
*
* Features:
* - 20Hz Sine Wave Generation
* - 1000Hz Sampling Rate (1ms interval)
* - 8-bit Resolution (0-255)
* - SPI Master Mode Configuration
******************************************************************************/

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include<stdio.h>
#include<stdint.h>

/* SPI Register Bit Definitions */
#define SPI_MASTER_MODE    (1<<4)  // Master mode select bit
#define SPI_CPOL_HIGH      (1<<3)  // Clock polarity select bit (1 = active high)
#define SPI_CPHA_FIRST     (1<<2)  // Clock phase select bit (0 = sample on first edge)
#define SPI_ENABLE         (1<<6)  // SPI enable bit
#define SPI_SSDIS          (1<<5)  // SSDIS bit

/* Clock Configuration */
#define SPI_CLK_DIV_2    0x00    // Frequency divider for fclk/128

/* Interrupt Configuration */
#define SPI_INT_ENABLE     (1<<3)  // SPI interrupt enable bit in IEN1
#define GLOBAL_INT_ENABLE  1       // Global interrupt enable bit

/* DAC Configuration for MCP4802 */
#define DAC_CHANNEL_A    0x00    // 0 for DAC A, 1 for DAC B
#define DAC_CHANNEL_B    0x80    // Bit 7 of high byte
#define DAC_GAIN_1X     0x20    // Bit 5 of high byte
#define DAC_GAIN_2X     0x00    // Default gain
#define DAC_ACTIVE      0x10    // Bit 4 of high byte (SHDN)

/* Sine Wave Parameters */
#define SINE_SAMPLES      256      // Number of samples per sine wave cycle
#define SINE_MAX_INDEX    256         // Maximum index for sine table (SINE_SAMPLES - 1)

/* Timer0 Configuration for 1ms */
#define TIMER0_VALUE  (0xFC66)     // Negative of number of machine cycles for 1ms
#define TH0_RELOAD    ((TIMER0_VALUE >> 8) & 0xFF)
#define TL0_RELOAD    (TIMER0_VALUE & 0xFF)

/* Timer Control Bits */
#define TIMER0_MODE1  0x01    // Mode 1 (16-bit)
#define TIMER0_RUN    0x10    // Start timer
#define TIMER0_INT    0x02    // Timer0 interrupt enable

volatile unsigned char ms_flag = 0;  // Flag for 1ms interval

/* Pin State Definitions */
#define CLOCK_HIGH       1
#define CLOCK_LOW        0
#define DATA_HIGH        1
#define DATA_LOW         0
#define SLAVE_SELECT_ACTIVE    0
#define SLAVE_SELECT_INACTIVE  1

/* SPI Configuration */
#define SPI_DATA_WIDTH   16      /* Width of SPI data in bits */
#define MSB_FIRST_MASK   0x8000  /* Mask for MSB in 16-bit data */
#define SPI_INIT_VALUE   0       /* Initial value for SPI control register */

/* Timing Constants */
#define CRYSTAL_FREQ     12000000    /* Crystal frequency in Hz */
#define DELAY_LOOP_COUNT 123         /* Delay loop count for 1ms at 12MHz */
#define TEST_DATA        0x1FF0      /* Test data pattern */
#define IDLE_DATA        0x1000      /* Idle data pattern */
#define DELAY_PERIOD     500          /* Delay period in milliseconds */

#define TRIG_SAMPLES 512

/* Pin Definitions */
#define SCL P1_6         /* Serial Clock Line */
#define SDA P1_7         /* Serial Data Line */
#define SS  P1_1         /* Slave Select (Chip Select) */

/* Function Prototypes */
void spi_init(void);
void spi_transmission_start(void);
void spi_transmission_stop(void);
void timer0_init(void);

/* Global Variables */
volatile int transmission_complete = 0;  // Flag for SPI transmission status

/* Sine Wave Lookup Table - Could be used instead of real-time calculation */
const int dac_values[SINE_SAMPLES] = {
    128, 131, 134, 137, 140, 144, 147, 150, 153, 156,     // 0-9
    159, 162, 165, 168, 171, 174, 177, 179, 182, 185,     // 10-19
    188, 191, 193, 196, 199, 201, 204, 206, 209, 211,     // 20-29
    213, 216, 218, 220, 222, 224, 226, 228, 230, 232,     // 30-39
    234, 235, 237, 239, 240, 241, 243, 244, 245, 246,     // 40-49
    248, 249, 250, 250, 251, 252, 253, 253, 254, 254,     // 50-59   (Approaching Peak)
    254, 255, 255, 255, 255, 255, 255, 255, 254, 254,     // 60-69   (Peak)
    254, 253, 253, 252, 251, 250, 250, 249, 248, 246,     // 70-79
    245, 244, 243, 241, 240, 239, 237, 235, 234, 232,     // 80-89
    230, 228, 226, 224, 222, 220, 218, 216, 213, 211,     // 90-99
    209, 206, 204, 201, 199, 196, 193, 191, 188, 185,     // 100-109
    182, 179, 177, 174, 171, 168, 165, 162, 159, 156,     // 110-119
    153, 150, 147, 144, 140, 137, 134, 131, 128, 125,     // 120-129 (Middle)
    122, 119, 116, 112, 109, 106, 103, 100,  97,  94,     // 130-139
     91,  88,  85,  82,  79,  77,  74,  71,  68,  65,     // 140-149
     63,  60,  57,  55,  52,  50,  47,  45,  43,  40,     // 150-159
     38,  36,  34,  32,  30,  28,  26,  24,  22,  21,     // 160-169
     19,  17,  16,  15,  13,  12,  11,  10,   8,   7,     // 170-179
      6,   6,   5,   4,   3,   3,   2,   2,   2,   1,     // 180-189 (Approaching Valley)
      1,   1,   1,   1,   1,   1,   2,   2,   2,   3,     // 190-199 (Valley)
      3,   4,   5,   6,   6,   7,   8,  10,  11,  12,     // 200-209
     13,  15,  16,  17,  19,  21,  22,  24,  26,  28,     // 210-219
     30,  32,  34,  36,  38,  40,  43,  45,  47,  50,     // 220-229
     52,  55,  57,  60,  63,  65,  68,  71,  74,  77,     // 230-239
     79,  82,  85,  88,  91,  94,  97, 100, 103, 106,     // 240-249
    109, 112, 116, 119, 122, 125                          // 250-255
};

const int trig_dac_values[TRIG_SAMPLES] = {
    // Up (0 to 255)
    0,   1,   2,   3,   4,   5,   6,   7,   // 0-7
    8,   9,   10,  11,  12,  13,  14,  15,  // 8-15
    16,  17,  18,  19,  20,  21,  22,  23,  // 16-23
    24,  25,  26,  27,  28,  29,  30,  31,  // 24-31
    32,  33,  34,  35,  36,  37,  38,  39,  // 32-39
    40,  41,  42,  43,  44,  45,  46,  47,  // 40-47
    48,  49,  50,  51,  52,  53,  54,  55,  // 48-55
    56,  57,  58,  59,  60,  61,  62,  63,  // 56-63
    64,  65,  66,  67,  68,  69,  70,  71,  // 64-71
    72,  73,  74,  75,  76,  77,  78,  79,  // 72-79
    80,  81,  82,  83,  84,  85,  86,  87,  // 80-87
    88,  89,  90,  91,  92,  93,  94,  95,  // 88-95
    96,  97,  98,  99,  100, 101, 102, 103, // 96-103
    104, 105, 106, 107, 108, 109, 110, 111, // 104-111
    112, 113, 114, 115, 116, 117, 118, 119, // 112-119
    120, 121, 122, 123, 124, 125, 126, 127, // 120-127
    128, 129, 130, 131, 132, 133, 134, 135, // 128-135
    136, 137, 138, 139, 140, 141, 142, 143, // 136-143
    144, 145, 146, 147, 148, 149, 150, 151, // 144-151
    152, 153, 154, 155, 156, 157, 158, 159, // 152-159
    160, 161, 162, 163, 164, 165, 166, 167, // 160-167
    168, 169, 170, 171, 172, 173, 174, 175, // 168-175
    176, 177, 178, 179, 180, 181, 182, 183, // 176-183
    184, 185, 186, 187, 188, 189, 190, 191, // 184-191
    192, 193, 194, 195, 196, 197, 198, 199, // 192-199
    200, 201, 202, 203, 204, 205, 206, 207, // 200-207
    208, 209, 210, 211, 212, 213, 214, 215, // 208-215
    216, 217, 218, 219, 220, 221, 222, 223, // 216-223
    224, 225, 226, 227, 228, 229, 230, 231, // 224-231
    232, 233, 234, 235, 236, 237, 238, 239, // 232-239
    240, 241, 242, 243, 244, 245, 246, 247, // 240-247
    248, 249, 250, 251, 252, 253, 254, 255, // 248-255

    // Down (255 to 0)
    255, 254, 253, 252, 251, 250, 249, 248, // 256-263
    247, 246, 245, 244, 243, 242, 241, 240, // 264-271
    239, 238, 237, 236, 235, 234, 233, 232, // 272-279
    231, 230, 229, 228, 227, 226, 225, 224, // 280-287
    223, 222, 221, 220, 219, 218, 217, 216, // 288-295
    215, 214, 213, 212, 211, 210, 209, 208, // 296-303
    207, 206, 205, 204, 203, 202, 201, 200, // 304-311
    199, 198, 197, 196, 195, 194, 193, 192, // 312-319
    191, 190, 189, 188, 187, 186, 185, 184, // 320-327
    183, 182, 181, 180, 179, 178, 177, 176, // 328-335
    175, 174, 173, 172, 171, 170, 169, 168, // 336-343
    167, 166, 165, 164, 163, 162, 161, 160, // 344-351
    159, 158, 157, 156, 155, 154, 153, 152, // 352-359
    151, 150, 149, 148, 147, 146, 145, 144, // 360-367
    143, 142, 141, 140, 139, 138, 137, 136, // 368-375
    135, 134, 133, 132, 131, 130, 129, 128, // 376-383
    127, 126, 125, 124, 123, 122, 121, 120, // 384-391
    119, 118, 117, 116, 115, 114, 113, 112, // 392-399
    111, 110, 109, 108, 107, 106, 105, 104, // 400-407
    103, 102, 101, 100, 99,  98,  97,  96,  // 408-415
    95,  94,  93,  92,  91,  90,  89,  88,  // 416-423
    87,  86,  85,  84,  83,  82,  81,  80,  // 424-431
    79,  78,  77,  76,  75,  74,  73,  72,  // 432-439
    71,  70,  69,  68,  67,  66,  65,  64,  // 440-447
    63,  62,  61,  60,  59,  58,  57,  56,  // 448-455
    55,  54,  53,  52,  51,  50,  49,  48,  // 456-463
    47,  46,  45,  44,  43,  42,  41,  40,  // 464-471
    39,  38,  37,  36,  35,  34,  33,  32,  // 472-479
    31,  30,  29,  28,  27,  26,  25,  24,  // 480-487
    23,  22,  21,  20,  19,  18,  17,  16,  // 488-495
    15,  14,  13,  12,  11,  10,  9,   8,   // 496-503
    7,   6,   5,   4,   3,   2,   1,   0    // 504-511
};

/**
 * @brief Sends a character to the serial port
 * @param charToSend Character to be transmitted
 * @return The character that was sent
 */
int putchar(int charToSend) {
    SBUF = charToSend;       /* Load character into serial buffer */
    while (!TI);             /* Wait for transmission completion */
    TI = 0;                  /* Clear transmission flag */
    return charToSend;
}

/**
 * @brief Receives a character from the serial port
 * @return The received character
 */
int getchar(void) {
    while (!RI);             /* Wait for reception completion */
    RI = 0;                  /* Clear reception flag */
    return SBUF;             /* Return received character */
}

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
}
void mannual_spi(unsigned char number);
unsigned char take_data();

void bit_bang_spi(unsigned char number);
int bit_bang_spi_write(uint16_t data);
void bit_bang_spi_init(void);
void spi_ramp_signal(int number);
void spi_triangular_wave(int number);
void display_menu(void) {
    printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
    printf("│                        SPI PROGRAM                           │\n\r");
    printf("├──────────────────────────────────────────────────────────────┤\n\r");
    printf("│  Command   │               Description                       │\n\r");
    printf("├───────────┼───────────────────────────────────────────────┤\n\r");
    printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
    printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
    printf("│    S      │ Generate Sine Wave                            │\n\r");
    printf("│    T      │ Generate Triangular Wave                      │\n\r");
    printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
    printf("│    R      │ Ramp wave                                     │\n\r");
    printf("│    ?      │ Display this help menu                        │\n\r");
    printf("└───────────┴───────────────────────────────────────────────┘\n\r");
    printf("\n\rEnter command: ");
}
void demo_mode();
#define SPI_ENABLE (1<<6)
void spi_transmission_stop(void) 
{
    SPCON &= ~SPI_ENABLE;          // Disable SPI
}
int main(void)
{
  display_menu();
    
  while(1)
  {
      char user_input = getchar();
      printf("| $ %c\n\r", user_input);
      printf("\n\r");
      switch(user_input)
      {
                case 'M':
                    spi_init();
                    unsigned char result = take_data();
                    mannual_spi(result);
                    printf(">> SIN WAVE GENERATION COMPLETE\n\r");
                    spi_transmission_stop();
                    break;
                    
                case 'B':
                {
                    bit_bang_spi_init();
                    unsigned char result2 = take_data();
                    bit_bang_spi(result2);
                    printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
                    
                    break;
                }
                    
                // case 'S':
                // {
                //     spi_init();
                //     unsigned char result3 = take_data();
                //     mannual_spi(result3);
                //     printf(">> SIN WAVE GENERATION COMPLETE\n\r");
                //     break;
                // }

                    
                // case 'T':
                // {
                //     spi_init();
                //     unsigned char result4 = take_data();
                //     spi_triangular_wave(result4);
                //     printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
                //     break;
                // }
                    
                // case 'R':
                // {
                //     unsigned char result5 = take_data();
                //     spi_ramp_signal(result5);
                //     printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
                //     break;
                // }
                    
                // case 'D':
                // {
                //     demo_mode();
                //     printf(">> DEMO COMPLETE\n\r");
                //     break;
                // }
                // case '?':
                //     display_menu();
                //     break;  
                
                default:
                    printf(">> INVALID INPUT\n\r");
                    break;
                    
                
                    
      }
    }
  }



 
 
void demo_mode()
{
    mannual_spi(7);
    bit_bang_spi(7);
    spi_ramp_signal(7);
    spi_triangular_wave(7);
}



void bit_bang_spi(unsigned char number)
{
    while(number > 0)
    {
        bit_bang_spi_write(TEST_DATA);
        delay_ms(DELAY_PERIOD);
        bit_bang_spi_write(IDLE_DATA);
        delay_ms(DELAY_PERIOD);
        number = number - 1;
    }    
}
unsigned char take_data()
{
    printf("│ Enter number (up to 2 characters): \n\r|");
    char input[4] = {0};  // Array for 3 hex chars + null terminator
    int i = 0;
    char c;

    printf("$ ");
    // Read characters until Enter/Return is pressed or buffer is full
    while (i < 3) {

        c = getchar();

        // Check for Enter/Return key
        if (c == '\r' || c == '\n') {
            break;
        }

        // Check if character is valid hex
        if ((c >= '0' && c <= '9') ||
            (c >= 'a' && c <= 'f') ||
            (c >= 'A' && c <= 'F')) {

            input[i] = c;
            putchar(c);  // Echo character back
            i++;
        }
    }

    input[i] = '\0';  // Null-terminate the string

    // Convert hex string to an unsigned char
    unsigned char data = 0;
    for (i = 0; input[i] != '\0'; i++) {
        data = data * 16;
        if (input[i] >= '0' && input[i] <= '9')
            data += input[i] - '0';
        else if (input[i] >= 'A' && input[i] <= 'F')
            data += input[i] - 'A' + 10;
        else if (input[i] >= 'a' && input[i] <= 'f')
            data += input[i] - 'a' + 10;
    }

    printf("\n\r│ Entered data: 0x%02X\n\r", data);
    // if(data > 0xfe)
    // {
    //     printf("Data out of Range\n\r");
    //     data_range_flag = 0;
    //     return 0;
    // }
    return data;

}

void mannual_spi(unsigned char number)
{
    int dac_value_index = 0;
    int dac_data = 0;
    int high_byte, low_byte;
    while(number > 0)
    {
        
        for(int i = 0; i<256; i++)
        {
                    /* Calculate or lookup next sine wave value */
            if(dac_value_index < SINE_MAX_INDEX)
            {
    
                /* Alternatively, use lookup table:*/
                dac_data = dac_values[dac_value_index];
            }
            else
            {
                dac_value_index = 0;  // Reset index for next cycle
    
            }
    
            
                        //Format high byte: Channel A, 1x gain, Active
            high_byte = 0x10 | 
                           ((dac_data >> 4) & 0x0F);
    
                // Format low byte: Lower 4 bits of data, shifted left 4 positions
            low_byte = (dac_data & 0x0F) << 4;
    
    
            // Begin transmission
            P1_1 = 0;  // Select DAC
    
            // Send high byte
            SPDAT = high_byte;
            while (!(SPSTA & (1<<7))); 
    
    
            // Send low byte
            SPDAT = low_byte;
            while (!(SPSTA & (1<<7))); 
    
            P1_1 = 1;  // Deselect DAC
    
            dac_value_index++;
        }

        number = number - 1;
    }
}
/**
 * @brief Initializes the SPI peripheral
 * 
 * Configures SPI with the following settings:
 * - Master mode
 * - Clock polarity active high
 * - Data sampled on first clock edge
 * - Clock frequency = fclk/128
 * - Enables SPI interrupts
 */
void spi_init(void) 
{
    // Reset SPI control register
    //SPCON = 0;
    
    // //enable master by slave select
    // P1_1 = 1;
    
    // Configure SPI mode and clock settings
   /* SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
    SPCON |= SPI_MASTER_MODE;      // Set as master*/
    // SPCON &= ~SPI_CPOL_HIGH;        // Clock polarity active high
    // SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge 
    // SPCON &= ~SPI_SSDIS;
    
    // SPCON |= 0x10;
    // P1_1 = 1;
    // SPCON |= 0x82;
    // //SPCON &= ~0x08;
    // SPCON |= 0x40;
    
    SPCON |= 0x10;
    SPCON |= 0x20;
    SPCON |= 0x40;
    

    
    // // Enable interrupts
    // IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt

}

void bit_bang_spi_init(void) {
    SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
    SDA = DATA_HIGH;                 /* Set data line high */
    SCL = CLOCK_LOW;                 /* Set clock line low */
    SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
}

int bit_bang_spi_write(uint16_t data) {
    unsigned int i;
    
    SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
    
    /* Transmit data bits */
    for(i = 0; i < SPI_DATA_WIDTH; i++) {
        SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
        SCL = CLOCK_HIGH;            /* Clock high */
        SCL = CLOCK_LOW;             /* Clock low */
        data <<= 1;                  /* Shift to next bit */
    }
    
    /* Set stop/idle condition */
    SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
    SCL = CLOCK_LOW;                 /* Clock low */
    SDA = DATA_HIGH;                 /* Data high */
    
    return 0;
}

/**
 * @brief Starts SPI transmission
 * 
 * Sets the SPI enable bit to begin transmission
 */
void spi_transmission_start(void)
{
    SPCON |= SPI_ENABLE;           // Enable SPI
    P1_1 = 0;
}

void spi_triangular_wave(int number)
{
    int dac_value_index = 0;
    int dac_data = 0;
    int high_byte, low_byte;
    while(number>0)
    {
            for(int i = 0; i<512; i++)
        {
                    /* Calculate or lookup next sine wave value */
            if(dac_value_index < 512)
            {
    
                /* Alternatively, use lookup table:*/
                dac_data = trig_dac_values[dac_value_index];
            }
            else
            {
                dac_value_index = 0;  // Reset index for next cycle
    
            }
    
            
                        //Format high byte: Channel A, 1x gain, Active
            high_byte = 0x10 | 
                           ((dac_data >> 4) & 0x0F);
    
                // Format low byte: Lower 4 bits of data, shifted left 4 positions
            low_byte = (dac_data & 0x0F) << 4;
    
    
            // Begin transmission
            P1_1 = 0;  // Select DAC
    
            // Send high byte
            SPDAT = high_byte;
            while (!(SPSTA & (1<<7))); 
    
    
            // Send low byte
            SPDAT = low_byte;
            while (!(SPSTA & (1<<7))); 
    
            P1_1 = 1;  // Deselect DAC
    
            dac_value_index++;
        }

        number = number - 1;
    }

}

void spi_ramp_signal(int number)
{
    int dac_value_index = 0;
    int dac_data = 0;
    int high_byte, low_byte;
    while(number>0)
    {
            for(int i = 0; i<256; i++)
        {
                    /* Calculate or lookup next sine wave value */
            if(dac_value_index < 256)
            {
    
                /* Alternatively, use lookup table:*/
                dac_data = trig_dac_values[dac_value_index];
            }
            else
            {
                dac_value_index = 0;  // Reset index for next cycle
    
            }
    
            
                        //Format high byte: Channel A, 1x gain, Active
            high_byte = 0x10 | 
                           ((dac_data >> 4) & 0x0F);
    
                // Format low byte: Lower 4 bits of data, shifted left 4 positions
            low_byte = (dac_data & 0x0F) << 4;
    
    
            // Begin transmission
            P1_1 = 0;  // Select DAC
    
            // Send high byte
            SPDAT = high_byte;
            while (!(SPSTA & (1<<7))); 
    
    
            // Send low byte
            SPDAT = low_byte;
            while (!(SPSTA & (1<<7))); 
    
            P1_1 = 1;  // Deselect DAC
    
            dac_value_index++;
        }

        number = number - 1;
    }
    
}

