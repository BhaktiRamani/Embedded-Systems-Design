/* Standard library includes */
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdint.h>

/* I2C Pin Definitions */
#define SCL P1_6         /* SCK */
#define SDA P1_7         /* MOSI */
#define SS  P1_1         /*Chip Select*/

int spi_write(uint8_t data);
// void i2c_delay();

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

int main()
{

    SS = 1;  // Set SS high (inactive state)
    SDA = 0; // Initialize SDA to low
    SCL = 0; // Initialize SCL to low
    printf("  SPI BIT BANGING PROGRAM\n\r");
    // spi_write(0x1F);
    while(1)
    {
        printf("r\n\r");
        spi_write(0x1F);
        spi_write(0xF0);
        delay_ms(500);
        spi_write(0x10);
        spi_write(0x00);
    }



    
}

int spi_write(uint8_t data)
{
    
  SS = 0;
  unsigned int i;
  for(i=0;i<=7;i++)
  {
    SDA = (data & 0x80) ? 1 : 0;    //msb first
    SCL=1;
    //some 
    for (int j = 0; j != 63; j++);
    SCL=0;
    //some delay
    for (int j = 0; j != 63; j++);
    data = data << 1;
  }
  SS = 1;

  return 1;           // Success

}

// void i2c_delay() 
// {
//     for(int i = 0; i<500; i++);
// }