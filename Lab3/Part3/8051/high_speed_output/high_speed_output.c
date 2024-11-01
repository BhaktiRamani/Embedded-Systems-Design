// Maximum possible frequency = Fosc/2 = 5.529MHz/2 = 2.7645MHz
    

// Calculate reload value for maximum frequency:
// Reload Value = 65536 - (Fosc/2*Required_Frequency)
// For max frequency, we want smallest possible reload value
// Reload Value = 65536 - (5529000/2*2764500)
// Reload Value = 65536 - 1 = 65535 (FFFFh)
#include <at89c51ed2.h> //also includes 8052.h and 8051.h
#include <mcs51reg.h>

void init_PCA_HSO(void) {
    CMOD = 0x02;     // Fclk/2 freq set for PCA mode
    CCAPM0 = 0x4C;   // Compare mode + HSO, no interrupt
    CL = 0x00;       // Clear PCA counter
    CH = 0x00;
    
    // Load maximum frequency value
    CCAP0L = 0xFF;   // Load compare low byte
    CCAP0H = 0xFF;   // Load compare high byte
}

void main(void) {

    CCON = 0x40;
    init_PCA_HSO();
    
    while(1) {
      
        if(CCAP0L != 0xFF)
        {
            CCAP0L = 0xFF;
            CCAP0H = 0xFF;
        }
    }
}
