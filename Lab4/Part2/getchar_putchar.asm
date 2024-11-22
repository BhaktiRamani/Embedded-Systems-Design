;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module getchar_putchar
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _getstr_PARM_3
	.globl _getstr_PARM_2
	.globl _putchar
	.globl _getchar
	.globl _getstr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_getstr_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_putchar_charToSend_65536_68:
	.ds 2
_getstr_PARM_2:
	.ds 2
_getstr_PARM_3:
	.ds 3
_getstr_buffer_65536_72:
	.ds 3
_getstr_index_65536_73:
	.ds 2
_getstr_is_error_set_65536_73:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;charToSend                Allocated with name '_putchar_charToSend_65536_68'
;------------------------------------------------------------
;	src/getchar_putchar.c:51: int putchar(int charToSend) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_charToSend_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/getchar_putchar.c:52: SBUF = charToSend;  // Send character to serial buffer
	mov	dptr,#_putchar_charToSend_65536_68
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	src/getchar_putchar.c:53: while (!TI);        // Wait for transmission to complete
00101$:
;	src/getchar_putchar.c:54: TI = 0;             // Clear transmission interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/getchar_putchar.c:55: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	src/getchar_putchar.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	src/getchar_putchar.c:65: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src/getchar_putchar.c:66: while (!RI);        // Wait for reception to complete
00101$:
;	src/getchar_putchar.c:67: RI = 0;             // Clear reception interrupt flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	src/getchar_putchar.c:68: return SBUF;        // Return received character
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	src/getchar_putchar.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_getstr_sloc0_1_0'
;buffer_len                Allocated with name '_getstr_PARM_2'
;error_string              Allocated with name '_getstr_PARM_3'
;buffer                    Allocated with name '_getstr_buffer_65536_72'
;c                         Allocated with name '_getstr_c_65536_73'
;index                     Allocated with name '_getstr_index_65536_73'
;is_error_set              Allocated with name '_getstr_is_error_set_65536_73'
;------------------------------------------------------------
;	src/getchar_putchar.c:84: bool getstr(char *buffer, int buffer_len, char *error_string) {
;	-----------------------------------------
;	 function getstr
;	-----------------------------------------
_getstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_getstr_buffer_65536_72
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/getchar_putchar.c:86: int index = 0;
	mov	dptr,#_getstr_index_65536_73
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/getchar_putchar.c:87: bool is_error_set = false;
	mov	dptr,#_getstr_is_error_set_65536_73
	movx	@dptr,a
;	src/getchar_putchar.c:89: while (1) {
	mov	dptr,#_getstr_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00137$
	dec	r7
00137$:
	mov	dptr,#_getstr_buffer_65536_72
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00113$:
;	src/getchar_putchar.c:90: c = getchar();  // Receive a character
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getchar
	mov	r1,dpl
;	src/getchar_putchar.c:91: putchar(c);     // Echo the received character back to the user
	mov	ar0,r1
	mov	r2,#0x00
	mov	dpl,r0
	mov	dph,r2
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/getchar_putchar.c:94: if (c == '\b' || c == BACKSPACE_DEC_VALUE) {
	cjne	r1,#0x08,00138$
	sjmp	00103$
00138$:
	cjne	r1,#0x7f,00104$
00103$:
;	src/getchar_putchar.c:95: if (index > 0) {
	mov	dptr,#_getstr_index_65536_73
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	src/getchar_putchar.c:96: index--;  // Remove last character if there's any
	dec	r0
	cjne	r0,#0xff,00142$
	dec	r2
00142$:
	mov	dptr,#_getstr_index_65536_73
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	src/getchar_putchar.c:98: continue;
	sjmp	00113$
00104$:
;	src/getchar_putchar.c:102: if (c == '\r' || c == '\n') {
	cjne	r1,#0x0d,00143$
	sjmp	00106$
00143$:
	cjne	r1,#0x0a,00107$
00106$:
;	src/getchar_putchar.c:103: buffer[index] = '\0';  // Null-terminate the string
	mov	dptr,#_getstr_buffer_65536_72
	movx	a,@dptr
	mov	_getstr_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_getstr_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_getstr_sloc0_1_0 + 2),a
	mov	dptr,#_getstr_index_65536_73
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r0
	add	a,_getstr_sloc0_1_0
	mov	_getstr_sloc0_1_0,a
	mov	a,r2
	addc	a,(_getstr_sloc0_1_0 + 1)
	mov	(_getstr_sloc0_1_0 + 1),a
	mov	dpl,_getstr_sloc0_1_0
	mov	dph,(_getstr_sloc0_1_0 + 1)
	mov	b,(_getstr_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
;	src/getchar_putchar.c:104: break;                 // Exit the loop
	sjmp	00114$
00107$:
;	src/getchar_putchar.c:108: if (index < buffer_len - 1) {
	mov	dptr,#_getstr_index_65536_73
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	src/getchar_putchar.c:109: buffer[index++] = c;  // Save character and increment index
	push	ar6
	push	ar7
	mov	dptr,#_getstr_index_65536_73
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	add	a,r3
	mov	r0,a
	mov	a,r2
	addc	a,r4
	mov	r2,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	pop	ar7
	pop	ar6
	ljmp	00113$
00110$:
;	src/getchar_putchar.c:111: is_error_set = true;   // Set error flag if buffer is full
	mov	dptr,#_getstr_is_error_set_65536_73
	mov	a,#0x01
	movx	@dptr,a
;	src/getchar_putchar.c:112: printf("%s\n", error_string);  // Print error message
	mov	dptr,#_getstr_PARM_3
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	src/getchar_putchar.c:113: break;
00114$:
;	src/getchar_putchar.c:116: return is_error_set;  // Return whether there was an error
	mov	dptr,#_getstr_is_error_set_65536_73
	movx	a,@dptr
;	src/getchar_putchar.c:117: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "%s"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
