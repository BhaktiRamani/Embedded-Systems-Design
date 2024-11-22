;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EEPROM_hexdump
	.globl _take_address
	.globl _putchar
	.globl _i2c_delay
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_read
	.globl _i2c_write
	.globl _printf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EEPROM_hexdump_PARM_2
	.globl _eeprom_write_PARM_2
	.globl _eeprom_write
	.globl _eeprom_read
	.globl _handler_EEPROM_hexdump
	.globl _eeprom_reset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
_eeprom_write_PARM_2:
	.ds 1
_eeprom_write_address_65536_23:
	.ds 2
_eeprom_read_address_65536_30:
	.ds 2
_EEPROM_hexdump_PARM_2:
	.ds 2
_EEPROM_hexdump_start_address_65536_35:
	.ds 2
_EEPROM_hexdump_current_address_65537_37:
	.ds 2
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
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;data                      Allocated with name '_eeprom_write_PARM_2'
;address                   Allocated with name '_eeprom_write_address_65536_23'
;i                         Allocated with name '_eeprom_write_i_131072_28'
;------------------------------------------------------------
;	src/eeprom.c:15: int eeprom_write(unsigned int address, unsigned char data) 
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
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
	mov	dptr,#_eeprom_write_address_65536_23
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/eeprom.c:18: i2c_start();
	lcall	_i2c_start
;	src/eeprom.c:21: if(!i2c_write(EEPROM_ID | block | WRITE)) {
	mov	dptr,#_block
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	ar6,#0xa0
	mov	dpl,r6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	src/eeprom.c:22: printf("Error: No ACK for device address (write)\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:23: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:24: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	src/eeprom.c:28: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_write_address_65536_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	src/eeprom.c:29: printf("Error: No ACK for memory address\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:30: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:31: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	src/eeprom.c:35: if(!i2c_write(data)) {
	mov	dptr,#_eeprom_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	src/eeprom.c:36: printf("Error: No ACK for data\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:37: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:38: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	src/eeprom.c:41: i2c_stop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	src/eeprom.c:43: for(int i = 0; i<10; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00109$:
	clr	c
	mov	a,r3
	subb	a,#0x0a
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	src/eeprom.c:45: i2c_delay();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/eeprom.c:43: for(int i = 0; i<10; i++)
	inc	r3
	cjne	r3,#0x00,00109$
	inc	r4
	sjmp	00109$
00107$:
;	src/eeprom.c:48: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
	mov	r4,#0x00
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	src/eeprom.c:49: printf("│ Write successful!                             │\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:50: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:51: return 1;  // Success
	mov	dptr,#0x0001
;	src/eeprom.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_eeprom_read_address_65536_30'
;result                    Allocated with name '_eeprom_read_result_65536_31'
;------------------------------------------------------------
;	src/eeprom.c:70: int eeprom_read(unsigned int address)
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_address_65536_30
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/eeprom.c:76: i2c_start();
	lcall	_i2c_start
;	src/eeprom.c:79: if(!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	src/eeprom.c:80: printf("Error: No ACK for device address (write mode)\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:81: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:82: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	src/eeprom.c:86: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_read_address_65536_30
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	src/eeprom.c:87: printf("Error: No ACK for memory address\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:88: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:89: return -1;
	mov	dptr,#0xffff
	ret
00104$:
;	src/eeprom.c:93: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	src/eeprom.c:96: if(!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	src/eeprom.c:97: printf("Error: No ACK for device address (read mode)\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:98: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:99: return -1;
	mov	dptr,#0xffff
	ret
00106$:
;	src/eeprom.c:103: result = i2c_read(0);  // 0 means send NACK
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_i2c_read
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	src/eeprom.c:105: printf("| 0x%03X : 0x%02X \n\r", address, result);
	mov	r5,#0x00
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	src/eeprom.c:106: printf("│ Read successful!                 │\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:107: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:108: i2c_stop();
	lcall	_i2c_stop
	pop	ar4
	pop	ar5
;	src/eeprom.c:109: return result;
	mov	dpl,r4
	mov	dph,r5
;	src/eeprom.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EEPROM_hexdump'
;------------------------------------------------------------
;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_35'
;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_37'
;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_37'
;i                         Allocated with name '_EEPROM_hexdump_i_196609_39'
;data                      Allocated with name '_EEPROM_hexdump_data_327682_45'
;i                         Allocated with name '_EEPROM_hexdump_i_196609_47'
;data                      Allocated with name '_EEPROM_hexdump_data_327682_50'
;------------------------------------------------------------
;	src/eeprom.c:125: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
;	-----------------------------------------
;	 function EEPROM_hexdump
;	-----------------------------------------
_EEPROM_hexdump:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_EEPROM_hexdump_start_address_65536_35
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/eeprom.c:127: printf("\r\n----------------------------------------------------------------\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:128: printf("                    EEPROM Hex Dump                               \r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:129: printf("----------------------------------------------------------------\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:130: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:134: uint16_t current_address = start_address;
	mov	dptr,#_EEPROM_hexdump_start_address_65536_35
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/eeprom.c:137: while (current_address <= end_address) {
	mov	dptr,#_EEPROM_hexdump_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00119$:
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00183$
	ljmp	00121$
00183$:
;	src/eeprom.c:139: printf("%03X: ", current_address & 0xFFF0);
	anl	ar4,#0xf0
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	src/eeprom.c:142: for (uint8_t i = 0; i < 16; i++) {
	mov	r5,#0x00
00123$:
	cjne	r5,#0x10,00184$
00184$:
	jc	00185$
	ljmp	00110$
00185$:
;	src/eeprom.c:143: if (current_address + i <= end_address) {
	mov	ar3,r5
	mov	r4,#0x00
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	push	ar5
	mov	ar0,r1
	mov	ar5,r2
	mov	a,r3
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r0
	mov	a,r7
	subb	a,r5
	pop	ar5
	jnc	00186$
	ljmp	00108$
00186$:
;	src/eeprom.c:145: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_i2c_start
;	src/eeprom.c:148: if (!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	src/eeprom.c:149: printf("Error: Device not responding\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:150: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:151: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	src/eeprom.c:155: if (!i2c_write((unsigned char)(current_address + i))) {
	mov	a,r5
	add	a,r1
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	src/eeprom.c:156: printf("Error: Address write failed\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:157: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:158: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	src/eeprom.c:162: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	src/eeprom.c:165: if (!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	src/eeprom.c:166: printf("Error: Device not responding in read mode\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:167: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:168: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	src/eeprom.c:172: unsigned char data = i2c_read(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	mov	r3,dpl
;	src/eeprom.c:173: printf("%02X ", data);
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/eeprom.c:175: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:176: i2c_delay(); // Small delay between reads
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00124$
00108$:
;	src/eeprom.c:178: printf("   "); // Print spaces for addresses beyond end_address
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00124$:
;	src/eeprom.c:142: for (uint8_t i = 0; i < 16; i++) {
	inc	r5
	ljmp	00123$
00110$:
;	src/eeprom.c:183: printf(" | ");
	push	ar7
	push	ar6
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/eeprom.c:184: for (uint8_t i = 0; i < 16; i++) {
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
00126$:
	cjne	r3,#0x10,00190$
00190$:
	jc	00191$
	ljmp	00118$
00191$:
;	src/eeprom.c:185: if (current_address + i <= end_address) {
	mov	ar1,r3
	mov	r2,#0x00
	push	ar3
	mov	ar0,r4
	mov	ar3,r5
	mov	a,r1
	add	a,r0
	mov	r0,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r6
	subb	a,r0
	mov	a,r7
	subb	a,r3
	pop	ar3
	jnc	00192$
	ljmp	00116$
00192$:
;	src/eeprom.c:187: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_start
;	src/eeprom.c:188: i2c_write(EEPROM_ID | WRITE);
	mov	dpl,#0xa0
	lcall	_i2c_write
	pop	ar3
	pop	ar4
;	src/eeprom.c:189: i2c_write((unsigned char)(current_address + i));
	mov	ar2,r4
	mov	a,r3
	add	a,r2
	mov	dpl,a
	push	ar4
	push	ar3
	lcall	_i2c_write
;	src/eeprom.c:190: i2c_start();
	lcall	_i2c_start
;	src/eeprom.c:191: i2c_write(EEPROM_ID | READ);
	mov	dpl,#0xa1
	lcall	_i2c_write
;	src/eeprom.c:192: unsigned char data = i2c_read(0);
	mov	dptr,#0x0000
	lcall	_i2c_read
	mov	r1,dpl
;	src/eeprom.c:193: i2c_stop();
	push	ar1
	lcall	_i2c_stop
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/eeprom.c:196: if (data >= 32 && data <= 126) {
	cjne	r1,#0x20,00193$
00193$:
	jc	00112$
	mov	a,r1
	add	a,#0xff - 0x7e
	jc	00112$
;	src/eeprom.c:197: putchar(data);
	mov	r2,#0x00
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00127$
00112$:
;	src/eeprom.c:199: putchar('.');
	mov	dptr,#0x002e
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00127$
00116$:
;	src/eeprom.c:202: putchar(' ');
	mov	dptr,#0x0020
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00127$:
;	src/eeprom.c:184: for (uint8_t i = 0; i < 16; i++) {
	inc	r3
	ljmp	00126$
00118$:
;	src/eeprom.c:206: printf("\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	src/eeprom.c:207: current_address += 16;
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00119$
00121$:
;	src/eeprom.c:210: printf("----------------------------------------------------------------\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:211: return 1;
	mov	dptr,#0x0001
;	src/eeprom.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_EEPROM_hexdump'
;------------------------------------------------------------
;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_56'
;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_58'
;------------------------------------------------------------
;	src/eeprom.c:215: void handler_EEPROM_hexdump(void) {
;	-----------------------------------------
;	 function handler_EEPROM_hexdump
;	-----------------------------------------
_handler_EEPROM_hexdump:
;	src/eeprom.c:216: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:217: uint16_t start_addr = take_address();
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	src/eeprom.c:219: if (start_addr > ADDR_MAX) {
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00102$
;	src/eeprom.c:220: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:221: return;
	ret
00102$:
;	src/eeprom.c:224: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	src/eeprom.c:225: uint16_t end_addr = take_address();
	lcall	_take_address
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/eeprom.c:227: if (end_addr > ADDR_MAX || end_addr < start_addr) {
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x07
	subb	a,r3
	jc	00103$
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00104$
00103$:
;	src/eeprom.c:228: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
	push	ar6
	push	ar7
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/eeprom.c:229: return;
	ret
00104$:
;	src/eeprom.c:232: EEPROM_hexdump(start_addr, end_addr);
	mov	dptr,#_EEPROM_hexdump_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	src/eeprom.c:233: }
	ljmp	_EEPROM_hexdump
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_reset'
;------------------------------------------------------------
;i                         Allocated with name '_eeprom_reset_i_131072_61'
;------------------------------------------------------------
;	src/eeprom.c:246: void eeprom_reset()
;	-----------------------------------------
;	 function eeprom_reset
;	-----------------------------------------
_eeprom_reset:
;	src/eeprom.c:248: i2c_start();
	lcall	_i2c_start
;	src/eeprom.c:249: SDA = 0;
;	assignBit
	clr	_P1_4
;	src/eeprom.c:250: SDA = 1;
;	assignBit
	setb	_P1_4
;	src/eeprom.c:251: for(int i = 0; i<10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	src/eeprom.c:253: SCL = 0;
;	assignBit
	clr	_P1_3
;	src/eeprom.c:254: SCL = 1;
;	assignBit
	setb	_P1_3
;	src/eeprom.c:251: for(int i = 0; i<10; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	src/eeprom.c:256: i2c_start();
	lcall	_i2c_start
;	src/eeprom.c:257: SDA = 0;
;	assignBit
	clr	_P1_4
;	src/eeprom.c:258: i2c_stop();
	lcall	_i2c_stop
;	src/eeprom.c:259: SDA = 1;
;	assignBit
	setb	_P1_4
;	src/eeprom.c:260: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Error: No ACK for device address (write)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Error: No ACK for memory address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Error: No ACK for data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Write successful!                             "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0xe2
	.db 0x94
	.db 0x94
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x98
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Error: No ACK for device address (write mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Error: No ACK for device address (read mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "| 0x%03X : 0x%02X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Read successful!                 "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "------------------------------------------------------------"
	.ascii "----"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "                    EEPROM Hex Dump                         "
	.ascii "      "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "------------------------------------------------------------"
	.ascii "----"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "%03X: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Error: Device not responding"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Error: Address write failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Error: Device not responding in read mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii " | "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.ascii "Enter Start Address for HEX Dump (000-7FF):"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.ascii "Enter End Address for HEX Dump (000-7FF):"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
