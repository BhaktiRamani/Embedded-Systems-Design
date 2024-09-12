;Author : Bhakti Ramani
; ESD LAB 1 Part 1
; Description :	
	;Internal data memory (IRAM) location 0x20 contains the value of (X)
	; IRAM location 0x21 contains the value of (X*4)
	; IRAM location 0x22 contains the value of (Y)
	; IRAM location 0x23 contains Z, the 8-bit quotient (in hexadecimal)
	; IRAM location 0x24 contains the 8-bit remainder (in hexadecimal)
	; IRAM location 0x30 contains the error code.
	

ORG 0000H

; Enter value of X in R0 register via debugging in register window
MOV A, R0;
MOV R0, #20H
MOV @R0, A;

; Enter value of X in R0 register via debugging in register window
MOV B, R1;
MOV R1, #22H
MOV @R1, B;

; CHECK FOR ZERO
JZ IS_ZERO;			      	; If accumulator is zero
MOV R0, A; 			      	; Preserving A value
MOV A, B;
JZ IS_ZERO;			      	; If B is zero(indirectly checking via accumulator)
MOV A, R0;

//CHECK FOR OVERFLOW
//JB ACC.7, OVERFLOW;

; ROTATION (A>>2 = A*4)
CLR C;
RLC A
JC OVERFLOW  		    	; If carry is set, we have overflow
RLC A          		        ; Rotate left again
JC OVERFLOW   				; If carry is set, we have overflow


MOV R0, #21H;				; Store result(A*4) at address 21H
MOV @R0, A;

MOV R0, B					; Load B into R0 for later use

MOV R1, #00H				; Initialize R1 to 0 for divison

DIV_LOOP:
	CLR C;
	SUBB A, B;				; Subtract B from A with borrow
	JNC DIV_OK;				; Jump to DIV_OK if no borrow is occured			
	
	SJMP DIV_RESULT;		; Skip to DIV_RESULT if borrow occured
	
DIV_OK:
	INC R1;					; Increment quotient
	SJMP DIV_LOOP;			; Repeat divison loop
	
DIV_RESULT:
    ADD A, B;				; Add B to A to get the remainder
	MOV R0, #23H;			; Store result at address 23H
	MOV @R0, A;
	
	MOV B, R1;				; Store quotient in B
	MOV R0, #24H;			; Store quotient at address 24H
	MOV @R0, B;
	
	MOV R0, #30H;			; Set error code to 00H(No errors)
	MOV @R0, #00H;
	LJMP _END;				; JMP to end
	
IS_ZERO:
	MOV R0, #30H;			; Set error code to 01H(zero error)
	MOV @R0, #01H;
	LJMP _END;				; Jmp to end
	
OVERFLOW:
	MOV R0, #30H;			; Set error code to 02H(overflow error)
	MOV @R0, #02H;
	LJMP _END;				; JMP to end	

_END:
	LJMP _END 				; Infinite loop

END