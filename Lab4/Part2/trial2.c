#include <mcs51/8051.h>

// Pin definitions - using P1.0, P1.1, P1.2 as they worked on your friend's board
#define LCD_DATA P0       // LCD data port
#define RS P1_5           // Register Select
#define RW P1_6           // Read/Write
#define EN P1_7           // Enable

// Function declarations
void delay(unsigned int);
void lcd_command(unsigned char);
void lcd_data(unsigned char);
void lcd_init(void);
void lcd_string(char *);

// Basic delay function
void delay(unsigned int count) {
    unsigned int i, j;
    for(i = 0; i < count; i++)
        for(j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
}

// Send command to LCD
void lcd_command(unsigned char command) {
    RS = 0;                // Command mode
    RW = 0;                // Write mode
    EN = 0;                // Enable low

    LCD_DATA = command;    // Put command on data bus
    delay(1);              // Wait for data to stabilize

    EN = 1;                // Enable pulse
    delay(1);              // Wait
    EN = 0;                // Complete Enable pulse
    delay(2);              // Wait for command to complete
}

// Send data to LCD
void lcd_data(unsigned char dat) {
    RS = 1;                // Data mode
    RW = 0;                // Write mode
    EN = 0;                // Enable low

    LCD_DATA = dat;        // Put data on data bus
    delay(1);              // Wait for data to stabilize

    EN = 1;                // Enable pulse
    delay(1);              // Wait
    EN = 0;                // Complete Enable pulse
    delay(2);              // Wait for data to complete
}

// Initialize LCD
void lcd_init(void) {
    // Set ports as outputs
    P0 = 0x00;            // Set P0 as output for data
    P1 = 0x00;            // Set P1 as output for control

    delay(20);            // Wait after power-up

    // Initialize LCD in steps
    // First Function Set
    lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
    delay(5);

    // Second Function Set
    lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
    delay(1);

    // Third Function Set
    lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
    delay(1);

    lcd_command(0x0C);    // Display ON, cursor OFF
    delay(1);

    lcd_command(0x01);    // Clear display
    delay(2);

    lcd_command(0x06);    // Entry mode: increment cursor, no shift
    delay(2);

    lcd_command(0x80);    // Set cursor to beginning of first line
    delay(2);
}

// Send string to LCD
void lcd_string(char *str) {
    while(*str) {
        lcd_data(*str++);
        delay(1);
    }
}

// Main function with test sequence
void main(void) {
    char testStr[] = "LCD Test";
    unsigned char i;

    // Power-up delay
    delay(100);

    // Initialize LCD
    lcd_init();
    delay(10);

    // Test 1: Write individual characters
    lcd_data('A');
    delay(200);
    lcd_data('B');
    delay(200);
    lcd_data('C');
    delay(1000);

    // Test 2: Clear display
    lcd_command(0x01);    // Clear display
    delay(10);

    // Test 3: Write string
    lcd_string(testStr);
    delay(1000);

    // Test 4: Move cursor to second line
    lcd_command(0xC0);    // Move to second line
    delay(2);

    // Write numbers 0-9 on second line
    for(i = 0; i < 10; i++) {
        lcd_data('0' + i);
        delay(200);
    }

    // Main loop
    while(1) {
        // Optional: Add blinking effects or more tests here
        lcd_command(0x08);    // Display OFF
        delay(500);
        lcd_command(0x0C);    // Display ON
        delay(500);
    }
}
