//pin 0 LED
//pin 1 ISR indicator
//pin 2 input

ORG 0000H
	LJMP timer_init;

ORG 000BH
	LJMP TIMER0__ISR;

ORG 0030H
timer_init:
	//MOV R3, #5;		//counter for number of overflows for LED turn on
	MOV R3, #11;
	MOV TMOD, #01H;		// using timer 0 with 16 bit timer mode
	MOV IE, #82H;
	//MOV TH0, #00H;
	//MOV TL0, #00H;
	MOV TH0, #7CH;
	MOV TL0, #0C8H;
	MOV P1, #00000100B;
	
	
	SETB TR0;
main :
	//SETB P1.0  ; Set P1.0 as input
	//MOV P1, #01H  ; Write 1 to P1.0 (for other pins, use appropriate bit mask)
	//CLR P1.0;
	SJMP main;	
	
TIMER0__ISR:
	SETB P1.1;
	CLR TF0;
	CLR TR0;
	MOV TH0, #00H;
	MOV TL0, #00H;
	DJNZ R3, delay_init;
	
	CPL P1.0;
	//CPL P1.2;
	
	JB P1.2,LED_NORM; 
	JNB P1.2, LED_SLOW;
	/*MOV R3, #12;
	SJMP delay_init;*/
	
LED_NORM:
	MOV R3, #11;
	SJMP delay_init;
	
LED_SLOW:
	MOV R3, #24;
	SJMP delay_init;

	
delay_init:
//	MOV TH0, #00H;
//	MOV TL0, #00H;
	MOV TH0, #7CH;
	MOV TL0, #0C8H;
	SETB TR0;
	CLR P1.1;
	RETI;
	

END;
 	

		
/*
ORG 0000H
    LJMP TIMER0_INIT;

ORG 000BH
TIMER0_ISR:
    CLR TF0
    DJNZ R3, TIMER0_OVERFLOW;

    CPL P1.0          ; Toggle LED
	MOV R3, #6        ; Reset overflow counter
TIMER0_OVERFLOW:
    MOV TH0, #00H
    MOV TL0, #00H
    SETB TR0
    RETI

ORG 0030H
TIMER0_INIT:
    MOV IE, #82H      ; Enable Timer 0 interrupt
    MOV TMOD, #01H    ; Timer 0, 16-bit mode
    MOV R3, #6        ; Initialize overflow counter
    MOV TH0, #00H     ; Set initial timer value for full 16-bit count
    MOV TL0, #00H
    SETB TR0          ; Start Timer 0
    
MAIN:
    SJMP MAIN         ; Main program loop

END*/

	


