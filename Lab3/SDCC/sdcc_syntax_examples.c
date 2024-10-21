// Last Revision:  October 4, 2009
#include <at89c51ed2.h>  //also includes 8052.h and 8051.h
#include <mcs51reg.h>
//#include <8052.h>   // also included in at89c51ed2.h
#include <stdio.h>

int putstr (char *s); 

volatile int gg;  // global  

#include <malloc.h> 
#define HEAP_SIZE 0x300   // size must be smaller than available XRAM
unsigned char xdata heap[HEAP_SIZE];

// compiler flags
// -c -mmcs51 --std-sdcc99 --verbose --model-large

// linker flags for C501 with code in SRAM at 0x6000 and data in SRAM at 0xC000
// --code-loc 0x6000 --code-size 0x6000 --xram-loc 0xC000 --xram-size 0x0400 --model-large --out-fmt-ihx

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x400 --model-large --out-fmt-ihx 

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal/external XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x8400 --model-large --out-fmt-ihx 

// All processor XRAM should be enabled before the call to main().
// This can be done in a user supplied _sdcc_external_startup() function.
// See section 3.11.1 of sdccman.pdf for SDCC revision 2.6.0.
_sdcc_external_startup()
{
}

void main()
{
	unsigned char zz;  // locals
	int ii, aa, bb, cc; 
	int * foo;
	xdata char * buffer0;  // pointers
	xdata char * buffer1;
	
	init_dynamic_memory((MEMHEADER xdata *)heap, HEAP_SIZE);
	
	zz = 1;

// printf ("string1 %s\n\r");	//note: the missing parameter is not flagged as an error
// printf ("string2 %s\n\r", "parameter");
	
	do
	{
	if ((buffer0 = malloc((unsigned int)(zz * 0x100))) == 0)  //allocate buffer0
		printf ("malloc buffer0 failed\n\r");
	if ((buffer1 = malloc(0x00ff)) == 0)         //allocate buffer1
	{
		printf ("malloc buffer1 failed\n\r");
		free (buffer0);  // if buffer1 malloc fails, free buffer 0
	}
	
	} while ((buffer0 == 0) || (buffer1 == 0));
	
	printf ("malloc passed\n\r");	
	
	
	foo = &ii;
	
	ii=0, aa=0, bb=0, cc=0, gg=0;
	
	while (1)
	{
	putchar ('A');
	putchar (' ');
//	puts(" sss ");
	putchar (getchar());
	putchar (' ');
	printf("hello\n\r");
	for (;ii < 5; ii++)
	{
	printf("\n\r hello ii= %d  ", ii);
	gg = ii * ii * ii;
	printf("gg= %d\n\r", gg);
	printf("&ii 0x%4X\n\r", (__xdata char *) &ii);
	printf_tiny("printf_tiny &ii 0x%x\n\r", (__xdata char *) &ii);	
	printf("&aa 0x%4X\n\r", (__xdata char *) &aa);
	printf_tiny("printf_tiny &aa 0x%x\n\r", (__xdata char *) &aa);	
	printf("&bb 0x%4X\n\r", (__xdata char *) &bb);
	printf_tiny("printf_tiny &bb 0x%x\n\r", (__xdata char *) &bb);
	printf("&cc 0x%4X\n\r", (__xdata char *) &cc);
	printf_tiny("printf_tiny &cc 0x%x\n\r", (__xdata char *) &cc);
	printf("&gg 0x%4X\n\r", (unsigned int) &gg);
	printf_tiny("printf_tiny &gg 0x%x\n\r", (__xdata char *) &gg);
	printf("&zz 0x%4X\n\r", (unsigned int) &zz);
	printf_tiny("printf_tiny &zz 0x%x\n\r", (unsigned int) &zz);
	printf("&heap 0x%4X  ", (__xdata char *) heap);
	printf("  &heap end 0x%4X\n\r", (__xdata char *) (heap + HEAP_SIZE-1));
	printf_tiny("printf_tiny &heap 0x%x  ", (__xdata char *) heap);
	printf_tiny("  &heap end 0x%x\n\r", (__xdata char *) (heap + HEAP_SIZE-1));
	
	printf("&buffer0 pointer variable 0x%4X\n\r", (__xdata char *) &buffer0);
	printf_tiny("printf_tiny &buffer0 pointer variable 0x%x\n\r", (__xdata char *) &buffer0);
	//printf("*buffer0 0x%4X\n\r", *buffer0);
	printf("&buffer0 malloc 0x%4X\n\r", (unsigned int) &buffer0[0]);
	printf_tiny("printf_tiny &buffer0 malloc 0x%x\n\r", (unsigned int) &buffer0[0]);
	printf("&buffer1 pointer variable 0x%4X\n\r", (__xdata char *) &buffer1);
	printf_tiny("printf_tiny &buffer1 pointer variable 0x%x\n\r", (__xdata char *) &buffer1);
	printf("&buffer1 malloc 0x%4X\n\r", (unsigned int) &buffer1[0]);
	printf_tiny("printf_tiny &buffer1 malloc 0x%x\n\r", (unsigned int) &buffer1[0]);	
	printf("&buffer1 malloc 0x%4X\n\r", (unsigned int) buffer1);
	printf_tiny("printf_tiny &buffer1 malloc 0x%x\n\r", (unsigned int) buffer1);
	
//	printf_small("&buffer1 malloc 0x%4X\n\r", (unsigned int) buffer1); //doesn't work
//	printf_tiny("&buffer1 malloc 0x%4X\n\r", (unsigned int) buffer1); //doesn't work
//	printf_fast("&buffer1 malloc 0x%4X\n\r", (unsigned int) buffer1); //doesn't work
//	printf("&buffer1 malloc 0x%4X\n\r", (char *) buffer1); //doesn't work
//	printf("buffer1 0x%4X\n\r", buffer1); //doesn't work

	printf_tiny("%c\n\r", 'p');
	printf_tiny("%c\n\r", (char) 'p');
	printf_tiny("%u\n\r", 'p');
	printf_tiny("%d\n\r", 'p');
	printf_tiny("%s\n\r", "tiny");
	printf_tiny("%x\n\r", 'p');
	gets(buffer0);
	puts(buffer0);
	}

	putstr("Embedded Systems\n\r");
	}

}

// The following interrupt service routines are for reference only.
// If an interrupt service routine changes variables which are accessed 
// by other functions these variables have to be declared volatile.
// See section 3.8 of sdccman.pdf for SDCC revision 2.6.0.

void isr_zero(void) __interrupt (0)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	gg++;         // increment global variable, which must be declared as volatile
	
	__critical {
		P1 = ~P1;
		P3 |= 0x01;
		}
	puts("ISR 0");
}

void isr_one(void) __interrupt (1) __naked
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	//puts("ISR 1");
}
void isr_two(void) __interrupt (2)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	puts("ISR 2");
}	

void isr_three(void) __interrupt (3)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	puts("ISR 3");
}

void isr_four(void) __interrupt (4) __naked
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	puts("ISR 4");
}

void isr_five(void) __interrupt (5)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	//puts("ISR 5");
}

void isr_six(void) __interrupt (6)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	//puts("ISR 6");
}

void isr_seven(void) __interrupt (7)
{
	int ii;
	
	ii = 1;
	P1 = 0x11;
	
	__critical {P1 = ~P1;}
	//puts("ISR 7");
}

int putstr (char *s)
{
	int i = 0;
	while (*s){			// output characters until NULL found
		putchar(*s++);
		i++;
	}
	//putchar('\n');
	return i+1;
}

void putchar (char c)
{
	while (!TI);				// compare asm code generated for these three lines
	while (TI == 0);
	while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
}


char getchar ()
{
//	char cc;
    while (!RI);                // compare asm code generated for these three lines
    while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
	while (RI == 0);
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}
