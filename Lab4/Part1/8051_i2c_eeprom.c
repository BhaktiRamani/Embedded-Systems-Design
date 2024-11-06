#include<stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>

#define READ 0x01
#define WRITE 0x00
#define EEPROM_ID 0xA0    // Device identifier of the eeprom (X24C02)

#define SDA P1_0
#define SCL P1_1

int eeprom_write(unsigned char address, unsigned char data);
int eeprom_read(unsigned int address);
void i2c_write(unsigned char data);
int i2c_read();
void i2c_start(void);
void i2c_stop(void);
void i2c_delay();


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
  eeprom_write(0x48, 32);
  int read_value_int = eeprom_read(0x48);
  unsigned char read_value_char = eeprom_read(0x48);
  printf("address 0x48 read_value_int %d\n\r", read_value_int);
  printf("address 0x48 read_value_char %c\n\r", read_value_char);
  
  eeprom_write(00, 32);
  int read_value = eeprom_read(00);
  printf("address 00 read_value %d\n\r", read_value);
  
  return 0;
}

int eeprom_read(unsigned int address)
{
      unsigned char result = 0;
      
      i2c_start();
      
      i2c_write(EEPROM_ID|WRITE);
      i2c_write(address);
      
      i2c_start();
      i2c_write(EEPROM_ID|READ);
      result = i2c_read();
      
      i2c_stop();
      return result;
}

int eeprom_write(unsigned char address, unsigned char data)
{
    i2c_start();
    i2c_write(EEPROM_ID | WRITE);
    i2c_write(address);
    i2c_write(data);
    i2c_stop();
    return 0;
    
}

void i2c_write(unsigned char data)
{
    
  unsigned int i;
  for(i=0;i<=7;i++)
  {
    SDA = (data & 0x80) ? 1 : 0;
    SCL=1;
    i2c_delay();
    SCL=0;
    data = data << 1;
  }
  // while(SDA!=0);
  // SCL=1;
  // SCL=0;

}
int i2c_read()
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
	 return buff;
}
void i2c_start(void)
{
    SDA = 1;
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
    unsigned char i;
    for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
        __asm
            nop  // 1 µs delay per NOP at 11.0592 MHz clock
        __endasm;
    }
}

