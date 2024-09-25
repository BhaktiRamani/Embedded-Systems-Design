ORG 0000H
	
MOV R0, #17;		//counter for number of overflows for LED turn on
MOV R1, #12 ;
MOV TMOD, #01H;		// using timer 0 with 16 bit timer mode
MOV R3, #00H;		//FLAG FOR STATUS OF led

led_on_init:
	SETB P1.0;			//setting P1 pin 0 as led
	MOV
	MOV TH0, #1FH;		// passing values for timer counter //loading the value for delay
	MOV TL0, #0B9H;
	
	SETB TR0; 				// start the timer
	
	//make it jmp to JSR and then increment the counter
	JB TF0, led_on_counter;		jumping to different loop if timer overflows

//setting overflow as 0 and going to the timer loop again until it mets required overflow criteria
led_on_counter : 
	CLR TF0;
	CLR TR0;
	MOV TH0, #00H;
	MOV TL0, #00H;
	
	DJNZ R0, led_on_init;
	//if(counter == 17) jmp main
	// jmp to interrupt routine - turn led off, 
	JMP led_off_init;
	
led_off_init:
	CLR P1.0;
	MOV TH0, #0E0H;		// passing values for timer counter //loading the value for delay
	MOV TL0, #00H;
	
	SETB TR0; 				// start the timer
	
	JB TF0, led_off_counter;		jumping to different loop if timer overflows
	//if(TF0 == 1) jmp counter
	
led_off_counter : 
	CLR TF0;
	CLR TR0;
	MOV TH0, #00H;
	MOV TL0, #00H;
	
	DJNZ R1, led_off_init;
	//if(counter == 17) jmp main
	// jmp to interrupt routine - turn led off, 
	JMP led_on_init;
	

	END;

		//note : make another counter for led turn off, led_status; make it 1 while led is turned on and after completeing the required overflows, make it 0, and check if led_status is zero then 
		//go to another loop for l;ed_of_init and then go to led_on)_counter/ change something in it to globalize for 