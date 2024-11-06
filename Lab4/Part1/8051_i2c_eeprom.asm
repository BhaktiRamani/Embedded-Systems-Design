;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module 8051_i2c_eeprom
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _getchar
	.globl _putchar
	.globl _printf
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
	.globl _eeprom_write_PARM_2
	.globl _ACK
	.globl _eeprom_read
	.globl _eeprom_write
	.globl _i2c_write
	.globl _i2c_read
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_ACK::
	.ds 2
_putchar_charToSend_65536_19:
	.ds 2
_eeprom_read_address_65536_26:
	.ds 2
_eeprom_write_PARM_2:
	.ds 1
_eeprom_write_address_65536_28:
	.ds 2
_i2c_write_data_65536_30:
	.ds 1
_i2c_read_ACK_65536_35:
	.ds 2
_i2c_read_buff_65536_36:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;charToSend                Allocated with name '_putchar_charToSend_65536_19'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:24: int putchar(int charToSend) {
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
	mov	dptr,#_putchar_charToSend_65536_19
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:25: SBUF = charToSend;  // Send character to serial buffer
	mov	dptr,#_putchar_charToSend_65536_19
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	8051_i2c_eeprom.c:26: while (!TI);        // Wait for transmission to complete
00101$:
;	8051_i2c_eeprom.c:27: TI = 0;            // Clear transmission interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:28: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:31: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	8051_i2c_eeprom.c:32: while (!RI);        // Wait for reception to complete
00101$:
;	8051_i2c_eeprom.c:33: RI = 0;            // Clear reception interrupt flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:34: return SBUF;       // Return received character
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_65537_24'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:37: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
	anl	_P1,#0xf7
;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
	anl	_P1,#0xef
;	8051_i2c_eeprom.c:42: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:43: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:46: while(i--)
	mov	r6,#0x1e
	mov	r7,#0x00
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00115$
	dec	r7
00115$:
	mov	a,r4
	orl	a,r5
	jz	00103$
;	8051_i2c_eeprom.c:48: i2c_write(0xA0);
	mov	dpl,#0xa0
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	8051_i2c_eeprom.c:51: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:64: return 0;
	mov	dptr,#0x0000
;	8051_i2c_eeprom.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_eeprom_read_address_65536_26'
;result                    Allocated with name '_eeprom_read_result_65536_27'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:67: int eeprom_read(unsigned int address)
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_address_65536_26
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:71: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:73: i2c_write(EEPROM_ID|WRITE);
	mov	dpl,#0xa0
	lcall	_i2c_write
;	8051_i2c_eeprom.c:74: i2c_write(address);
	mov	dptr,#_eeprom_read_address_65536_26
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	lcall	_i2c_write
;	8051_i2c_eeprom.c:76: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:77: i2c_write(EEPROM_ID|READ);
	mov	dpl,#0xa1
	lcall	_i2c_write
;	8051_i2c_eeprom.c:78: result = i2c_read(0);
	mov	dptr,#0x0000
	lcall	_i2c_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:80: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	8051_i2c_eeprom.c:81: return result;
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;data                      Allocated with name '_eeprom_write_PARM_2'
;address                   Allocated with name '_eeprom_write_address_65536_28'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:84: int eeprom_write(unsigned int address, unsigned char data)
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_address_65536_28
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:86: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:87: i2c_write(EEPROM_ID | WRITE);
	mov	dpl,#0xa0
	lcall	_i2c_write
;	8051_i2c_eeprom.c:88: i2c_write((unsigned char)(address >> 8));
	mov	dptr,#_eeprom_write_address_65536_28
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:89: i2c_write((unsigned char)address);
	mov	dpl,r6
	lcall	_i2c_write
;	8051_i2c_eeprom.c:90: i2c_write(data);    // No start condition here
	mov	dptr,#_eeprom_write_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write
;	8051_i2c_eeprom.c:91: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:92: return 0;
	mov	dptr,#0x0000
;	8051_i2c_eeprom.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated with name '_i2c_write_data_65536_30'
;i                         Allocated with name '_i2c_write_i_65536_31'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:96: int i2c_write(unsigned char data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	a,dpl
	mov	dptr,#_i2c_write_data_65536_30
	movx	@dptr,a
;	8051_i2c_eeprom.c:100: for(i=0;i<=7;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	8051_i2c_eeprom.c:102: SDA = (data & 0x80) ? 1 : 0;
	mov	dptr,#_i2c_write_data_65536_30
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:103: i2c_delay();        // Setup time for data
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:104: SCL=1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:105: i2c_delay();        // Hold time for clock
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:106: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:107: data = data << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_i2c_write_data_65536_30
	movx	@dptr,a
;	8051_i2c_eeprom.c:100: for(i=0;i<=7;i++)
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
00121$:
	clr	c
	mov	a,#0x07
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
;	8051_i2c_eeprom.c:111: SDA = 1;            // Release SDA for slave
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:112: SCL = 1;            // 9th clock pulse for ACK
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:113: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:114: if(SDA == 1)        // If SDA is still high, no ACK received
	jnb	_P1_4,00103$
;	8051_i2c_eeprom.c:117: printf("ACK DID NOT ARRIVE\n\r");
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
;	8051_i2c_eeprom.c:118: return 0;       // Error
	mov	dptr,#0x0000
	ret
00103$:
;	8051_i2c_eeprom.c:120: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:121: printf("Transmission successfull\n\r");
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
;	8051_i2c_eeprom.c:122: return 1;           // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ACK                       Allocated with name '_i2c_read_ACK_65536_35'
;buff                      Allocated with name '_i2c_read_buff_65536_36'
;i                         Allocated with name '_i2c_read_i_131072_37'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:125: int i2c_read(int ACK)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_read_ACK_65536_35
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:127: unsigned char buff=0;
	mov	dptr,#_i2c_read_buff_65536_36
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:129: for(int i=0;i<8;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	8051_i2c_eeprom.c:131: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:132: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:133: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:134: buff = buff << 1;
	mov	dptr,#_i2c_read_buff_65536_36
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	8051_i2c_eeprom.c:135: if(SDA) buff |=0x80>>i;
	jnb	_P1_4,00102$
	mov	b,r6
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00125$
00124$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00125$:
	djnz	b,00124$
	mov	dptr,#_i2c_read_buff_65536_36
	movx	a,@dptr
	mov	r3,a
	orl	a,r4
	movx	@dptr,a
00102$:
;	8051_i2c_eeprom.c:136: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:129: for(int i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
;	8051_i2c_eeprom.c:140: SDA = !ACK;         // ACK = 0, NACK = 1
	mov	dptr,#_i2c_read_ACK_65536_35
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	cjne	a,#0x01,00127$
00127$:
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:141: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:142: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:143: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:145: return buff;
	mov	dptr,#_i2c_read_buff_65536_36
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	8051_i2c_eeprom.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:147: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	8051_i2c_eeprom.c:149: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:150: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:151: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:152: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:153: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:154: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:155: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:156: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:159: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	8051_i2c_eeprom.c:161: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:162: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:163: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:164: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:165: SDA = 1; 
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_delay_i_131072_44'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:168: void i2c_delay() 
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
;	8051_i2c_eeprom.c:176: for(int i = 0; i<500; i++);
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0xf4
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00105$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	8051_i2c_eeprom.c:177: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "ACK DID NOT ARRIVE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Transmission successfull"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
