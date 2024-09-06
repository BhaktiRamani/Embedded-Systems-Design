ORG 0000H

MOV R0, #20H;set source address 20H to R0
MOV R1, #22H;set destination address 22H to R1

MOV A, #4H;
MOV B, #5H;

MOV @R0, A;
MOV @R1, B;

CLR C;
RL A;
RL A;

MOV R0, #21H;
MOV @R0, A;

MOV R0, B

MOV R1, #00H

DIV_LOOP:
	CLR C;
	SUBB A, B;
	JNC DIV_OK;						
	
	SJMP DIV_RESULT;
	
DIV_OK:
	INC R1;
	SJMP DIV_LOOP;
	
DIV_RESULT:
    ADD A, B;
	MOV R0, #23H;
	MOV @R0, A;
	MOV B, R1;
	
	MOV R0, #24H;
	MOV @R0, B;
	

_END:
LJMP _END 

END