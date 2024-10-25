.org 2013
LJMP 14EFH              ; jumping to STEP function address from extra.asm/extra.lst files


; headers
.equ    locat, 0x2060           ;Location for this program
.org    locat
.db     0xA5,0xE5,0xE0,0xA5     ;signiture bytes
.db     35,255,0,0              ;id (35=prog)
.db     0,0,0,0                 ;prompt code vector
.db     0,0,0,0                 ;reserved
.db     0,0,0,0                 ;reserved
.db     0,0,0,0                 ;reserved
.db     0,0,0,0                 ;user defined
.db     255,255,255,255         ;length and checksum (255=unused)
.db     "single_step_PIN_TOGGLE",0	;max 31 characters, plus the zero
.org    locat+64                ;executable code begins here


START:  MOV  P1, #00H

TOGGLE:
        CPL  P1.2         ; Toggle the pin continuesly by JMP
        ACALL DELAY
        SJMP TOGGLE

DELAY:  MOV  R2, #255
DELAY1: MOV  R1, #255
DELAY2: DJNZ R1, DELAY2
        DJNZ R2, DELAY1
        RET



