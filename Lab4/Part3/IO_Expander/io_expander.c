#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>

/* I2C Operation Mode Definitions */
#define READ 0x01        /* I2C Read operation bit */
#define WRITE 0x00       /* I2C Write operation bit */
#define IO_EXPANDER_ID 0x40   
#define INPUT_OUTPUT 0x03
#define INPUT_MASK 0x03


/* I2C Pin Definitions */
#define SCL P1_3         /* Serial Clock Line on P1.3 */
#define SDA P1_4         /* Serial Data Line on P1.4 */

void i2c_start(void);
void i2c_stop(void);
void i2c_delay();
int i2c_write(unsigned char data);
int i2c_read(int ACK);

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

int main()
{
    P1 &= ~(1<<3);  // Set P1.3 as output
    P1 &= ~(1<<4);  // Set P1.4 as output
    
    printf("IO EXPANDER PROGRAM\n\r");
    
    /*Configuration of io expander pins as inputs and outputs*/
    i2c_start();
    i2c_write(IO_EXPANDER_ID | WRITE);
    i2c_write(INPUT_OUTPUT);
    
    /*Reading the pin 0 and 1*/
    i2c_start();
    i2c_write(IO_EXPANDER_ID | READ);
    unsigned char read_value = i2c_read(0);
    
	if(read_value == 0)
	{
	    //write all output pins as 1
	    i2c_start();
	    i2c_write(IO_EXPANDER_ID | WRITE);
        i2c_write(INPUT_MASK | 0xFF);
           
         
	    
	}
    else
    {
        //write all output pins as 0 
	    i2c_start();
	    i2c_write(IO_EXPANDER_ID | WRITE);
	    i2c_write(INPUT_MASK | 0x00);
    }
    return 0;
    
    
}


/**
 * @brief Writes a byte to the I2C bus
 * @param data Byte to write
 * @return 1 if ACK received, 0 if NACK
 * @details Implements bit-banged I2C write protocol:
 *          - Sends 8 bits MSB first
 *          - Releases SDA for ACK
 *          - Checks for ACK from slave
 */
int i2c_write(unsigned char data)
{
    
  unsigned int i;
  for(i=0;i<=7;i++)
  {
    SDA = (data & 0x80) ? 1 : 0;    //msb first
    i2c_delay();        // Setup time for data
    SCL=1;
    i2c_delay();        // Hold time for clock
    SCL=0;
    data = data << 1;
  }
     
    // Check for ACK
    SDA = 1;            // Release SDA for slave
    SCL = 1;            // 9th clock pulse for ACK
    i2c_delay();
    if(SDA == 1)        // If SDA is still high, no ACK received
    {
        // Handle no ACK error
        printf("ACK DID NOT ARRIVE\n\r");
        return 0;       // Error
    }
    SCL = 0;
    //printf("Transmission successfull\n\r");
    return 1;           // Success

}

/**
 * @brief Reads a byte from the I2C bus
 * @param ACK 1 to send ACK, 0 to send NACK
 * @return Byte read from bus
 * @details Implements bit-banged I2C read protocol:
 *          - Reads 8 bits MSB first
 *          - Sends ACK/NACK based on parameter
 */
int i2c_read(int ACK)
{
	 unsigned char buff=0;
	 SCL = 0;
	 for(int i=0;i<8;i++)
	 {
	   SCL = 1;
	   i2c_delay();
	   buff |= (SDA << (7 - i));
	   i2c_delay();
	   SCL=0;
	 }
    
    // Send ACK/NACK
    SDA = !ACK;         // ACK = 0, NACK = 1
    SCL = 1;
    i2c_delay();
    SCL = 0;
    
	return buff;
}

/**
 * @brief Generates I2C start condition
 * @details Sequence: SDA high → SCL high → SDA low → SCL low
 *          Ensures proper setup and hold times
 */
void i2c_start(void)
{
    i2c_delay();
    SDA = 1;
    i2c_delay();
    SCL = 1;
    i2c_delay();
    SDA = 0;
    i2c_delay();
    SCL = 0;
}

/**
 * @brief Generates I2C stop condition
 * @details Sequence: SDA low → SCL high → SDA high
 *          Ensures proper setup and hold times
 */
void i2c_stop(void)
{
    SDA = 0;
    i2c_delay();
    SCL = 1;
    i2c_delay();
    SDA = 1; 
}

/**
 * @brief Provides I2C bus timing delay
 * @details Implements delay for I2C timing requirements:
 *          - Data setup time
 *          - Clock high/low time
 *          - Start/Stop setup and hold times
 */
void i2c_delay() 
{
    for(int i = 0; i<500; i++);
}