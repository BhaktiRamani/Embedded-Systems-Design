#include<stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>

#define READ 0x01
#define WRITE 0x00
#define EEPROM_ID 0xA0    // Device identifier of the eeprom (X24C02)

#define SCL P1_3
#define SDA P1_4

int ACK;
//ACK = 0;

void i2c_start(void);
void i2c_stop(void);
void i2c_delay();
int i2c_write(unsigned char data);
int  i2c_read(int ACK);
int eeprom_write(unsigned int address, unsigned char data);
int eeprom_read(unsigned int address);


int putchar(int charToSend) {
    SBUF = charToSend;  // Send character to serial buffer
    while (!TI);        // Wait for transmission to complete
    TI = 0;            // Clear transmission interrupt flag
    return charToSend;
}

int getchar(void) {
    while (!RI);        // Wait for reception to complete
    RI = 0;            // Clear reception interrupt flag
    return SBUF;       // Return received character
}

int main()
{

  P1 &= ~(1<<3);  // Set P1.3 as output
  P1 &= ~(1<<4);  // Set P1.4 as output
  i2c_start();
  i2c_delay();
  //i2c_stop();
    unsigned char test_data = 0x26;  // Easy bit pattern to verify (0101 0101)
    unsigned char address = 0x02;    // Start with first address
    
    // Write data
    printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
    eeprom_write(address, test_data);
    i2c_stop();
    
    // for(int i = 0; i<100; i++)
    // {
    //     i2c_delay();
    // }
    
    // // Read back
    // unsigned char read_data = eeprom_read(address);
    // printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
    
    // // Verify
    // if(read_data == test_data) {
    //     printf("MATCH - Write/Read successful!\n\r");
    // } else {
    //     printf("ERROR - Data mismatch!\n\r");
    // }
//   eeprom_write(0x48, 00);
//   int read_value_int = eeprom_read(0x48);
//   unsigned char read_value_char = eeprom_read(0x48);
//   printf("address 0x48 read_value_int %d\n\r", read_value_int);
//   printf("address 0x48 read_value_char %c\n\r", read_value_char);
  
//   eeprom_write(00, 'A');
//   int read_value = eeprom_read(00);
//   unsigned char read_value_c = eeprom_read(00);
//   printf("address 00 read_value %d\n\r", read_value);
//   printf("address 00 read_value_c %d\n\r", read_value_c);
  
  return 0;
}

int eeprom_write(unsigned int address, unsigned char data) {
    i2c_start();
    
    // Send device address with write bit
    if(!i2c_write(EEPROM_ID | WRITE)) {
        printf("Error: No ACK for device address (write)\n\r");
        i2c_stop();
        return 0;
    }
    
    // Send memory address
    if(!i2c_write((unsigned char)address)) {
        printf("Error: No ACK for memory address\n\r");
        i2c_stop();
        return 0;
    }
    
    // Send data
    if(!i2c_write(data)) {
        printf("Error: No ACK for data\n\r");
        i2c_stop();
        return 0;
    }
    
    i2c_stop();
    //delay_ms(5);  // Wait for write to complete
    for(int i = 0; i<100; i++)
    {
        i2c_delay();
    }
    return 1;  // Success
}

int eeprom_read(unsigned int address) {
    unsigned char result;
    
    // Start for address setting
    i2c_start();
    
    // Send device address with write bit
    if(!i2c_write(EEPROM_ID | WRITE)) {
        printf("Error: No ACK for device address (write mode)\n\r");
        i2c_stop();
        return -1;
    }
    
    // Send memory address
    if(!i2c_write((unsigned char)address)) {
        printf("Error: No ACK for memory address\n\r");
        i2c_stop();
        return -1;
    }
    
    // Repeated start for reading
    i2c_start();
    
    // Send device address with read bit
    if(!i2c_write(EEPROM_ID | READ)) {
        printf("Error: No ACK for device address (read mode)\n\r");
        i2c_stop();
        return -1;
    }
    
    // Read data (send NACK after as it's the last byte)
    result = i2c_read(0);  // 0 means send NACK
    
    i2c_stop();
    return result;
}

// int eeprom_read(unsigned int address)
// {
//       unsigned char result = 0;
      
//       i2c_start();
      
//       i2c_write(EEPROM_ID|WRITE);
//       i2c_write(address);
      
//       i2c_start();
//       i2c_write(EEPROM_ID|READ);
//       result = i2c_read(0);
      
//       i2c_stop();
//       return result;
// }

// int eeprom_write(unsigned int address, unsigned char data)
// {
//     i2c_start();
//     i2c_write(EEPROM_ID | WRITE);
//     i2c_write((unsigned char)(address >> 8));
//     i2c_write((unsigned char)address);
//     i2c_write(data);    // No start condition here
//     i2c_stop();
//     return 0;
// }


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
    printf("Transmission successfull\n\r");
    return 1;           // Success

}
int i2c_read(int ACK)
{
	 unsigned char buff=0;
	 
	 for(int i=0;i<8;i++)
	 {
	   SDA = 1;
	   SCL = 1;
	   i2c_delay();
	   buff = buff << 1;
		 if(SDA) buff |=0x80>>i;
		 SCL=0;
	 }
    
    // Send ACK/NACK
    SDA = !ACK;         // ACK = 0, NACK = 1
    SCL = 1;
    i2c_delay();
    SCL = 0;
    
	return buff;
}
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

void i2c_stop(void)
{
    SDA = 0;
    i2c_delay();
    SCL = 1;
    i2c_delay();
    SDA = 1; 
}

void i2c_delay() 
{
    //unsigned char i;
    // for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
    //     __asm
    //         nop  // 1 µs delay per NOP at 11.0592 MHz clock
    //     __endasm;
    // }
    for(int i = 0; i<500; i++);
}

