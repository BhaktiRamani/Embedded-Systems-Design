ORG 0000H
LJMP INIT;
		
INIT:
	MOV TMOD, #20H;
	MOV TH1, #0FAH;
	MOV TL1, #0FAH;
	MOV IE, #090H;
	
	SETB TR1;

	MOV SCON, #50H;

	MOV A, #'U';

main:
	ACALL send;
	LJMP delay;
	SJMP main;

send:
    MOV SBUF, A
WAIT_TX:
    JNB TI, WAIT_TX        
    CLR TI 
	RET
               
delay:
    MOV R7, #255        ; Load R7 with 255
delay_loop:
    DJNZ R7, delay_loop ; Decrement R7 and loop until zero
    RET

END
        

        
        