;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module spi_dac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dac_values
	.globl _spi_isr
	.globl _timer0_isr
	.globl _main
	.globl _delay_ms
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
	.globl _transmission_complete
	.globl _ms_flag
	.globl _timer0_init
	.globl _spi_init
	.globl _spi_transmission_start
	.globl _spi_transmission_stop
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_putchar_charToSend_65536_17:
	.ds 2
_delay_ms_ms_65536_21:
	.ds 2
_main_dac_value_index_65537_27:
	.ds 2
_main_dac_data_65537_27:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_ms_flag::
	.ds 1
_transmission_complete::
	.ds 2
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
	reti
	.ds	7
	ljmp	_timer0_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_spi_isr
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
;charToSend                Allocated with name '_putchar_charToSend_65536_17'
;------------------------------------------------------------
;	spi_dac.c:159: int putchar(int charToSend) {
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
	mov	dptr,#_putchar_charToSend_65536_17
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:160: SBUF = charToSend;       /* Load character into serial buffer */
	mov	dptr,#_putchar_charToSend_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	spi_dac.c:161: while (!TI);             /* Wait for transmission completion */
00101$:
;	spi_dac.c:162: TI = 0;                  /* Clear transmission flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	spi_dac.c:163: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	spi_dac.c:164: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	spi_dac.c:170: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	spi_dac.c:171: while (!RI);             /* Wait for reception completion */
00101$:
;	spi_dac.c:172: RI = 0;                  /* Clear reception flag */
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	spi_dac.c:173: return SBUF;             /* Return received character */
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	spi_dac.c:174: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_21'
;i                         Allocated with name '_delay_ms_i_65536_22'
;j                         Allocated with name '_delay_ms_j_65536_22'
;------------------------------------------------------------
;	spi_dac.c:176: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_ms_65536_21
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:178: for (i = 0; i < ms; i++)
	mov	dptr,#_delay_ms_ms_65536_21
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	spi_dac.c:179: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
	mov	r2,#0x7b
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	spi_dac.c:178: for (i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	spi_dac.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
;dac_data                  Allocated with name '_main_dac_data_65537_27'
;high_byte                 Allocated with name '_main_high_byte_65538_28'
;low_byte                  Allocated with name '_main_low_byte_65538_28'
;------------------------------------------------------------
;	spi_dac.c:181: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	spi_dac.c:183: printf(" SPI DAC PROGRAM\n\r");
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
;	spi_dac.c:185: int dac_value_index = 0;
	mov	dptr,#_main_dac_value_index_65537_27
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:186: int dac_data = 0;
	mov	dptr,#_main_dac_data_65537_27
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:192: spi_init();
	lcall	_spi_init
;	spi_dac.c:195: printf("SPI TRANSMISSION STARTED\n\r");
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
;	spi_dac.c:202: while(1)
00111$:
;	spi_dac.c:204: printf("w\n\r");
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
;	spi_dac.c:206: if(dac_value_index < SINE_MAX_INDEX)
	mov	dptr,#_main_dac_value_index_65537_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x31
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	spi_dac.c:210: dac_data = dac_values[dac_value_index];
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_dac_values
	mov	dpl,a
	mov	a,r7
	addc	a,#(_dac_values >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_main_dac_data_65537_27
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi_dac.c:214: dac_value_index = 0;  // Reset index for next cycle
	mov	dptr,#_main_dac_value_index_65537_27
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
;	spi_dac.c:221: ((dac_data >> 4) & 0x0F);
	mov	dptr,#_main_dac_data_65537_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	jnb	acc.3,00140$
	orl	a,#0xf0
00140$:
	anl	ar4,#0x0f
	mov	r5,#0x00
	orl	ar4,#0x10
;	spi_dac.c:224: low_byte = (dac_data & 0x0F) << 4;
	anl	ar6,#0x0f
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
;	spi_dac.c:230: printf("Low byte %d\n\r", low_byte);
	push	ar7
	push	ar6
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
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	spi_dac.c:231: printf("High byte %d\n\r", high_byte);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	spi_dac.c:233: P1_1 = 0;  // Select DAC
;	assignBit
	clr	_P1_1
;	spi_dac.c:236: SPDAT = high_byte;
	mov	_SPDAT,r4
;	spi_dac.c:237: while (!(SPSTA & (1<<7))); 
00104$:
	mov	a,_SPSTA
	jnb	acc.7,00104$
;	spi_dac.c:241: SPDAT = low_byte;
	mov	_SPDAT,r6
;	spi_dac.c:242: while (!(SPSTA & (1<<7))); 
00107$:
	mov	a,_SPSTA
	jnb	acc.7,00107$
;	spi_dac.c:244: P1_1 = 1;  // Deselect DAC
;	assignBit
	setb	_P1_1
;	spi_dac.c:247: printf("E\n\r");
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
;	spi_dac.c:248: printf("\n\r");
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
;	spi_dac.c:251: dac_value_index++;
	mov	dptr,#_main_dac_value_index_65537_27
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	spi_dac.c:253: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	spi_dac.c:255: void timer0_init(void)
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	spi_dac.c:257: TMOD &= 0xF0;    // Clear Timer0 mode bits
	anl	_TMOD,#0xf0
;	spi_dac.c:258: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
	orl	_TMOD,#0x01
;	spi_dac.c:261: TH0 = TH0_RELOAD;
	mov	_TH0,#0xfc
;	spi_dac.c:262: TL0 = TL0_RELOAD;
	mov	_TL0,#0x66
;	spi_dac.c:264: ET0 = 1;         // Enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	spi_dac.c:265: TR0 = 1;         // Start Timer0
;	assignBit
	setb	_TR0
;	spi_dac.c:266: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;	spi_dac.c:269: void timer0_isr(void) __interrupt 1
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	spi_dac.c:272: TH0 = 0x4B;
	mov	_TH0,#0x4b
;	spi_dac.c:273: TL0 = 0x1C;
	mov	_TL0,#0x1c
;	spi_dac.c:275: ms_flag = 1;     // Set 1ms flag
	mov	dptr,#_ms_flag
	mov	a,#0x01
	movx	@dptr,a
;	spi_dac.c:277: printf("T \n\r");
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
;	spi_dac.c:280: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_isr'
;------------------------------------------------------------
;	spi_dac.c:288: void spi_isr(void) __interrupt 9
;	-----------------------------------------
;	 function spi_isr
;	-----------------------------------------
_spi_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	spi_dac.c:290: if(SPSTA == 0x80)  // Check for successful transmission
	mov	a,#0x80
	cjne	a,_SPSTA,00103$
;	spi_dac.c:292: transmission_complete = 1;
	mov	dptr,#_transmission_complete
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:293: printf("spi isr \n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00103$:
;	spi_dac.c:296: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	spi_dac.c:308: void spi_init(void) 
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	spi_dac.c:329: SPCON |= 0x10;
	orl	_SPCON,#0x10
;	spi_dac.c:330: SPCON |= 0x20;
	orl	_SPCON,#0x20
;	spi_dac.c:331: SPCON |= 0x40;
	orl	_SPCON,#0x40
;	spi_dac.c:338: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmission_start'
;------------------------------------------------------------
;	spi_dac.c:345: void spi_transmission_start(void)
;	-----------------------------------------
;	 function spi_transmission_start
;	-----------------------------------------
_spi_transmission_start:
;	spi_dac.c:347: SPCON |= SPI_ENABLE;           // Enable SPI
	orl	_SPCON,#0x40
;	spi_dac.c:348: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	spi_dac.c:349: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmission_stop'
;------------------------------------------------------------
;	spi_dac.c:356: void spi_transmission_stop(void) 
;	-----------------------------------------
;	 function spi_transmission_stop
;	-----------------------------------------
_spi_transmission_stop:
;	spi_dac.c:358: SPCON &= ~SPI_ENABLE;          // Disable SPI
	anl	_SPCON,#0xbf
;	spi_dac.c:359: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_dac_values:
	.byte #0x80, #0x00	;  128
	.byte #0x8f, #0x00	;  143
	.byte #0x9f, #0x00	;  159
	.byte #0xae, #0x00	;  174
	.byte #0xbd, #0x00	;  189
	.byte #0xca, #0x00	;  202
	.byte #0xd7, #0x00	;  215
	.byte #0xe2, #0x00	;  226
	.byte #0xeb, #0x00	;  235
	.byte #0xf3, #0x00	;  243
	.byte #0xf9, #0x00	;  249
	.byte #0xfd, #0x00	;  253
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xfd, #0x00	;  253
	.byte #0xf9, #0x00	;  249
	.byte #0xf3, #0x00	;  243
	.byte #0xeb, #0x00	;  235
	.byte #0xe2, #0x00	;  226
	.byte #0xd7, #0x00	;  215
	.byte #0xca, #0x00	;  202
	.byte #0xbd, #0x00	;  189
	.byte #0xae, #0x00	;  174
	.byte #0x9f, #0x00	;  159
	.byte #0x8f, #0x00	;  143
	.byte #0x80, #0x00	;  128
	.byte #0x70, #0x00	;  112
	.byte #0x60, #0x00	;  96
	.byte #0x51, #0x00	;  81
	.byte #0x42, #0x00	;  66
	.byte #0x35, #0x00	;  53
	.byte #0x28, #0x00	;  40
	.byte #0x1d, #0x00	;  29
	.byte #0x14, #0x00	;  20
	.byte #0x0c, #0x00	;  12
	.byte #0x06, #0x00	;  6
	.byte #0x02, #0x00	;  2
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x02, #0x00	;  2
	.byte #0x06, #0x00	;  6
	.byte #0x0c, #0x00	;  12
	.byte #0x14, #0x00	;  20
	.byte #0x1d, #0x00	;  29
	.byte #0x28, #0x00	;  40
	.byte #0x35, #0x00	;  53
	.byte #0x42, #0x00	;  66
	.byte #0x51, #0x00	;  81
	.byte #0x60, #0x00	;  96
	.byte #0x70, #0x00	;  112
	.area CONST   (CODE)
___str_0:
	.ascii " SPI DAC PROGRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "SPI TRANSMISSION STARTED"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "w"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Low byte %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "High byte %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "E"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "T "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "spi isr "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__ms_flag:
	.db #0x00	; 0
__xinit__transmission_complete:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
