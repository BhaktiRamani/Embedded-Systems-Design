ORG 0000H
	MOV SP, #7FH
	MOV TMOD, #20H;
	MOV TH1, #0FAH;
	MOV TL1, #0FAH;
	MOV IE, #0B0H;
	
	SETB TR1;

	MOV SCON, #50H;

	MOV A, #'U';

main:
	ACALL send;
	ACALL recieve;
	SJMP main;

send :
    MOV SBUF, A
WAIT_TX:
    JNB TI, WAIT_TX        
    CLR TI 
	RET
               
recieve :
WAIT_RX:
    JNB RI, WAIT_RX;
    MOV A, SBUF;
    CLR RI;
	RET

END
        

        
        
