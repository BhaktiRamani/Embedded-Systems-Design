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
	.globl _main
	.globl _display_menu
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
	.globl _take_data
	.globl _mannual_spi
	.globl _spi_init
	.globl _spi_transmission_start
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
_putchar_charToSend_65536_17:
	.ds 2
_delay_ms_ms_65536_21:
	.ds 2
_take_data_input_65537_34:
	.ds 4
_take_data_data_65538_38:
	.ds 1
_mannual_spi_number_65536_41:
	.ds 1
_mannual_spi_dac_value_index_65536_42:
	.ds 2
_mannual_spi_dac_data_65536_42:
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
;	spi_dac.c:180: int putchar(int charToSend) {
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
;	spi_dac.c:181: SBUF = charToSend;       /* Load character into serial buffer */
	mov	dptr,#_putchar_charToSend_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	spi_dac.c:182: while (!TI);             /* Wait for transmission completion */
00101$:
;	spi_dac.c:183: TI = 0;                  /* Clear transmission flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	spi_dac.c:184: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	spi_dac.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	spi_dac.c:191: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	spi_dac.c:192: while (!RI);             /* Wait for reception completion */
00101$:
;	spi_dac.c:193: RI = 0;                  /* Clear reception flag */
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	spi_dac.c:194: return SBUF;             /* Return received character */
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	spi_dac.c:195: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_21'
;i                         Allocated with name '_delay_ms_i_65536_22'
;j                         Allocated with name '_delay_ms_j_65536_22'
;------------------------------------------------------------
;	spi_dac.c:197: void delay_ms(unsigned int ms) {
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
;	spi_dac.c:199: for (i = 0; i < ms; i++)
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
;	spi_dac.c:200: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
;	spi_dac.c:199: for (i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	spi_dac.c:201: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_menu'
;------------------------------------------------------------
;	spi_dac.c:204: void display_menu(void) {
;	-----------------------------------------
;	 function display_menu
;	-----------------------------------------
_display_menu:
;	spi_dac.c:205: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
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
;	spi_dac.c:206: printf("│                        SPI PROGRAM                           │\n\r");
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
;	spi_dac.c:207: printf("├──────────────────────────────────────────────────────────────┤\n\r");
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
;	spi_dac.c:208: printf("│  Command   │               Description                       │\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	spi_dac.c:209: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
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
;	spi_dac.c:210: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
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
;	spi_dac.c:211: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
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
;	spi_dac.c:212: printf("│    S      │ Generate Sine Wave                            │\n\r");
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
;	spi_dac.c:213: printf("│    Q      │ Generate Square Wave                          │\n\r");
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
;	spi_dac.c:214: printf("│    T      │ Generate Triangular Wave                      │\n\r");
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
;	spi_dac.c:215: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
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
;	spi_dac.c:216: printf("│    C      │ Configure SPI Parameters                      │\n\r");
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
;	spi_dac.c:217: printf("│    R      │ Read SPI Data                                 │\n\r");
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
;	spi_dac.c:218: printf("│    W      │ Write SPI Data                                │\n\r");
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
;	spi_dac.c:219: printf("│    ?      │ Display this help menu                        │\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	spi_dac.c:220: printf("│    X      │ Exit Program                                  │\n\r");
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
;	spi_dac.c:221: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
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
;	spi_dac.c:222: printf("\n\rEnter command: ");
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
;	spi_dac.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated with name '_main_user_input_131072_30'
;result                    Allocated with name '_main_result_196609_32'
;------------------------------------------------------------
;	spi_dac.c:225: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	spi_dac.c:227: display_menu();
	lcall	_display_menu
;	spi_dac.c:229: while(1)
00105$:
;	spi_dac.c:231: char user_input = getchar();
	lcall	_getchar
	mov	r6,dpl
;	spi_dac.c:232: printf("| $ %c\n\r", user_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
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
;	spi_dac.c:233: printf("\n\r");
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
	pop	ar6
;	spi_dac.c:234: switch(user_input)
	cjne	r6,#0x42,00121$
	sjmp	00105$
00121$:
	cjne	r6,#0x4d,00105$
;	spi_dac.c:237: spi_init();
	lcall	_spi_init
;	spi_dac.c:238: unsigned char result = take_data();
	lcall	_take_data
;	spi_dac.c:239: mannual_spi(result);
	lcall	_mannual_spi
;	spi_dac.c:240: printf("SIN WAVE DONE\n\r");
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
;	spi_dac.c:241: break;
;	spi_dac.c:246: }
;	spi_dac.c:256: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65537_34'
;i                         Allocated with name '_take_data_i_65537_34'
;c                         Allocated with name '_take_data_c_65537_34'
;data                      Allocated with name '_take_data_data_65538_38'
;------------------------------------------------------------
;	spi_dac.c:258: unsigned char take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	spi_dac.c:260: printf("│ Enter number (hex, up to 2 characters): \n\r|");
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
;	spi_dac.c:261: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_data_input_65537_34
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_34 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_34 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_34 + 0x0003)
	movx	@dptr,a
;	spi_dac.c:265: printf("$ ");
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
;	spi_dac.c:267: while (i < 3) {
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00113$
;	spi_dac.c:269: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	spi_dac.c:272: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00194$
	sjmp	00113$
00194$:
	cjne	r4,#0x0a,00195$
	sjmp	00113$
00195$:
;	spi_dac.c:277: if ((c >= '0' && c <= '9') ||
	cjne	r4,#0x30,00196$
00196$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	spi_dac.c:278: (c >= 'a' && c <= 'f') ||
	cjne	r4,#0x61,00199$
00199$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	spi_dac.c:279: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00202$
00202$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	spi_dac.c:281: input[i] = c;
	mov	a,r6
	add	a,#_take_data_input_65537_34
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_34 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	spi_dac.c:282: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	spi_dac.c:283: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	spi_dac.c:287: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65537_34
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_34 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	spi_dac.c:290: unsigned char data = 0;
	mov	dptr,#_take_data_data_65538_38
	movx	@dptr,a
;	spi_dac.c:291: for (i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	mov	a,r6
	add	a,#_take_data_input_65537_34
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_34 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00206$
	ljmp	00125$
00206$:
;	spi_dac.c:292: data = data * 16;
	mov	dptr,#_take_data_data_65538_38
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	movx	@dptr,a
;	spi_dac.c:293: if (input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00207$
00207$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	spi_dac.c:294: data += input[i] - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_take_data_data_65538_38
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
	sjmp	00128$
00122$:
;	spi_dac.c:295: else if (input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_data_input_65537_34
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_34 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00210$
00210$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	spi_dac.c:296: data += input[i] - 'A' + 10;
	mov	ar4,r5
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_take_data_data_65538_38
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	movx	@dptr,a
	sjmp	00128$
00118$:
;	spi_dac.c:297: else if (input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00213$
00213$:
	jc	00128$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00128$
;	spi_dac.c:298: data += input[i] - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	dptr,#_take_data_data_65538_38
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
00128$:
;	spi_dac.c:291: for (i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00216$
	inc	r7
00216$:
	ljmp	00127$
00125$:
;	spi_dac.c:301: printf("\n\r│ Entered data: 0x%02X\n\r", data);
	mov	dptr,#_take_data_data_65538_38
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	spi_dac.c:308: return data;
	mov	dpl,r7
;	spi_dac.c:310: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mannual_spi'
;------------------------------------------------------------
;number                    Allocated with name '_mannual_spi_number_65536_41'
;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_42'
;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_42'
;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_42'
;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_42'
;------------------------------------------------------------
;	spi_dac.c:312: void mannual_spi(unsigned char number)
;	-----------------------------------------
;	 function mannual_spi
;	-----------------------------------------
_mannual_spi:
	mov	a,dpl
	mov	dptr,#_mannual_spi_number_65536_41
	movx	@dptr,a
;	spi_dac.c:314: int dac_value_index = 0;
	mov	dptr,#_mannual_spi_dac_value_index_65536_42
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:315: int dac_data = 0;
	mov	dptr,#_mannual_spi_dac_data_65536_42
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_dac.c:317: while(number > 0)
00110$:
	mov	dptr,#_mannual_spi_number_65536_41
	movx	a,@dptr
	jnz	00143$
	ret
00143$:
;	spi_dac.c:322: if(dac_value_index < SINE_MAX_INDEX)
	mov	dptr,#_mannual_spi_dac_value_index_65536_42
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00102$
;	spi_dac.c:326: dac_data = dac_values[dac_value_index];
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
	mov	dptr,#_mannual_spi_dac_data_65536_42
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi_dac.c:330: dac_value_index = 0;  // Reset index for next cycle
	mov	dptr,#_mannual_spi_dac_value_index_65536_42
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
;	spi_dac.c:337: ((dac_data >> 4) & 0x0F);
	mov	dptr,#_mannual_spi_dac_data_65536_42
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
	jnb	acc.3,00145$
	orl	a,#0xf0
00145$:
	mov	a,#0x0f
	anl	a,r4
	orl	a,#0x10
	mov	r5,a
;	spi_dac.c:340: low_byte = (dac_data & 0x0F) << 4;
	anl	ar6,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r7,a
;	spi_dac.c:344: P1_1 = 0;  // Select DAC
;	assignBit
	clr	_P1_1
;	spi_dac.c:347: SPDAT = high_byte;
	mov	_SPDAT,r5
;	spi_dac.c:348: while (!(SPSTA & (1<<7))); 
00104$:
	mov	a,_SPSTA
	jnb	acc.7,00104$
;	spi_dac.c:352: SPDAT = low_byte;
	mov	_SPDAT,r7
;	spi_dac.c:353: while (!(SPSTA & (1<<7))); 
00107$:
	mov	a,_SPSTA
	jnb	acc.7,00107$
;	spi_dac.c:355: P1_1 = 1;  // Deselect DAC
;	assignBit
	setb	_P1_1
;	spi_dac.c:357: dac_value_index++;
	mov	dptr,#_mannual_spi_dac_value_index_65536_42
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	spi_dac.c:358: number = number - 1;
	mov	dptr,#_mannual_spi_number_65536_41
	movx	a,@dptr
	mov	r7,a
	dec	a
	movx	@dptr,a
;	spi_dac.c:360: }
	ljmp	00110$
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	spi_dac.c:371: void spi_init(void) 
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	spi_dac.c:392: SPCON |= 0x10;
	orl	_SPCON,#0x10
;	spi_dac.c:393: SPCON |= 0x20;
	orl	_SPCON,#0x20
;	spi_dac.c:394: SPCON |= 0x40;
	orl	_SPCON,#0x40
;	spi_dac.c:401: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmission_start'
;------------------------------------------------------------
;	spi_dac.c:408: void spi_transmission_start(void)
;	-----------------------------------------
;	 function spi_transmission_start
;	-----------------------------------------
_spi_transmission_start:
;	spi_dac.c:410: SPCON |= SPI_ENABLE;           // Enable SPI
	orl	_SPCON,#0x40
;	spi_dac.c:411: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	spi_dac.c:412: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_dac_values:
	.byte #0x80, #0x00	;  128
	.byte #0x83, #0x00	;  131
	.byte #0x86, #0x00	;  134
	.byte #0x89, #0x00	;  137
	.byte #0x8c, #0x00	;  140
	.byte #0x90, #0x00	;  144
	.byte #0x93, #0x00	;  147
	.byte #0x96, #0x00	;  150
	.byte #0x99, #0x00	;  153
	.byte #0x9c, #0x00	;  156
	.byte #0x9f, #0x00	;  159
	.byte #0xa2, #0x00	;  162
	.byte #0xa5, #0x00	;  165
	.byte #0xa8, #0x00	;  168
	.byte #0xab, #0x00	;  171
	.byte #0xae, #0x00	;  174
	.byte #0xb1, #0x00	;  177
	.byte #0xb3, #0x00	;  179
	.byte #0xb6, #0x00	;  182
	.byte #0xb9, #0x00	;  185
	.byte #0xbc, #0x00	;  188
	.byte #0xbf, #0x00	;  191
	.byte #0xc1, #0x00	;  193
	.byte #0xc4, #0x00	;  196
	.byte #0xc7, #0x00	;  199
	.byte #0xc9, #0x00	;  201
	.byte #0xcc, #0x00	;  204
	.byte #0xce, #0x00	;  206
	.byte #0xd1, #0x00	;  209
	.byte #0xd3, #0x00	;  211
	.byte #0xd5, #0x00	;  213
	.byte #0xd8, #0x00	;  216
	.byte #0xda, #0x00	;  218
	.byte #0xdc, #0x00	;  220
	.byte #0xde, #0x00	;  222
	.byte #0xe0, #0x00	;  224
	.byte #0xe2, #0x00	;  226
	.byte #0xe4, #0x00	;  228
	.byte #0xe6, #0x00	;  230
	.byte #0xe8, #0x00	;  232
	.byte #0xea, #0x00	;  234
	.byte #0xeb, #0x00	;  235
	.byte #0xed, #0x00	;  237
	.byte #0xef, #0x00	;  239
	.byte #0xf0, #0x00	;  240
	.byte #0xf1, #0x00	;  241
	.byte #0xf3, #0x00	;  243
	.byte #0xf4, #0x00	;  244
	.byte #0xf5, #0x00	;  245
	.byte #0xf6, #0x00	;  246
	.byte #0xf8, #0x00	;  248
	.byte #0xf9, #0x00	;  249
	.byte #0xfa, #0x00	;  250
	.byte #0xfa, #0x00	;  250
	.byte #0xfb, #0x00	;  251
	.byte #0xfc, #0x00	;  252
	.byte #0xfd, #0x00	;  253
	.byte #0xfd, #0x00	;  253
	.byte #0xfe, #0x00	;  254
	.byte #0xfe, #0x00	;  254
	.byte #0xfe, #0x00	;  254
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xfe, #0x00	;  254
	.byte #0xfe, #0x00	;  254
	.byte #0xfe, #0x00	;  254
	.byte #0xfd, #0x00	;  253
	.byte #0xfd, #0x00	;  253
	.byte #0xfc, #0x00	;  252
	.byte #0xfb, #0x00	;  251
	.byte #0xfa, #0x00	;  250
	.byte #0xfa, #0x00	;  250
	.byte #0xf9, #0x00	;  249
	.byte #0xf8, #0x00	;  248
	.byte #0xf6, #0x00	;  246
	.byte #0xf5, #0x00	;  245
	.byte #0xf4, #0x00	;  244
	.byte #0xf3, #0x00	;  243
	.byte #0xf1, #0x00	;  241
	.byte #0xf0, #0x00	;  240
	.byte #0xef, #0x00	;  239
	.byte #0xed, #0x00	;  237
	.byte #0xeb, #0x00	;  235
	.byte #0xea, #0x00	;  234
	.byte #0xe8, #0x00	;  232
	.byte #0xe6, #0x00	;  230
	.byte #0xe4, #0x00	;  228
	.byte #0xe2, #0x00	;  226
	.byte #0xe0, #0x00	;  224
	.byte #0xde, #0x00	;  222
	.byte #0xdc, #0x00	;  220
	.byte #0xda, #0x00	;  218
	.byte #0xd8, #0x00	;  216
	.byte #0xd5, #0x00	;  213
	.byte #0xd3, #0x00	;  211
	.byte #0xd1, #0x00	;  209
	.byte #0xce, #0x00	;  206
	.byte #0xcc, #0x00	;  204
	.byte #0xc9, #0x00	;  201
	.byte #0xc7, #0x00	;  199
	.byte #0xc4, #0x00	;  196
	.byte #0xc1, #0x00	;  193
	.byte #0xbf, #0x00	;  191
	.byte #0xbc, #0x00	;  188
	.byte #0xb9, #0x00	;  185
	.byte #0xb6, #0x00	;  182
	.byte #0xb3, #0x00	;  179
	.byte #0xb1, #0x00	;  177
	.byte #0xae, #0x00	;  174
	.byte #0xab, #0x00	;  171
	.byte #0xa8, #0x00	;  168
	.byte #0xa5, #0x00	;  165
	.byte #0xa2, #0x00	;  162
	.byte #0x9f, #0x00	;  159
	.byte #0x9c, #0x00	;  156
	.byte #0x99, #0x00	;  153
	.byte #0x96, #0x00	;  150
	.byte #0x93, #0x00	;  147
	.byte #0x90, #0x00	;  144
	.byte #0x8c, #0x00	;  140
	.byte #0x89, #0x00	;  137
	.byte #0x86, #0x00	;  134
	.byte #0x83, #0x00	;  131
	.byte #0x80, #0x00	;  128
	.byte #0x7d, #0x00	;  125
	.byte #0x7a, #0x00	;  122
	.byte #0x77, #0x00	;  119
	.byte #0x74, #0x00	;  116
	.byte #0x70, #0x00	;  112
	.byte #0x6d, #0x00	;  109
	.byte #0x6a, #0x00	;  106
	.byte #0x67, #0x00	;  103
	.byte #0x64, #0x00	;  100
	.byte #0x61, #0x00	;  97
	.byte #0x5e, #0x00	;  94
	.byte #0x5b, #0x00	;  91
	.byte #0x58, #0x00	;  88
	.byte #0x55, #0x00	;  85
	.byte #0x52, #0x00	;  82
	.byte #0x4f, #0x00	;  79
	.byte #0x4d, #0x00	;  77
	.byte #0x4a, #0x00	;  74
	.byte #0x47, #0x00	;  71
	.byte #0x44, #0x00	;  68
	.byte #0x41, #0x00	;  65
	.byte #0x3f, #0x00	;  63
	.byte #0x3c, #0x00	;  60
	.byte #0x39, #0x00	;  57
	.byte #0x37, #0x00	;  55
	.byte #0x34, #0x00	;  52
	.byte #0x32, #0x00	;  50
	.byte #0x2f, #0x00	;  47
	.byte #0x2d, #0x00	;  45
	.byte #0x2b, #0x00	;  43
	.byte #0x28, #0x00	;  40
	.byte #0x26, #0x00	;  38
	.byte #0x24, #0x00	;  36
	.byte #0x22, #0x00	;  34
	.byte #0x20, #0x00	;  32
	.byte #0x1e, #0x00	;  30
	.byte #0x1c, #0x00	;  28
	.byte #0x1a, #0x00	;  26
	.byte #0x18, #0x00	;  24
	.byte #0x16, #0x00	;  22
	.byte #0x15, #0x00	;  21
	.byte #0x13, #0x00	;  19
	.byte #0x11, #0x00	;  17
	.byte #0x10, #0x00	;  16
	.byte #0x0f, #0x00	;  15
	.byte #0x0d, #0x00	;  13
	.byte #0x0c, #0x00	;  12
	.byte #0x0b, #0x00	;  11
	.byte #0x0a, #0x00	;  10
	.byte #0x08, #0x00	;  8
	.byte #0x07, #0x00	;  7
	.byte #0x06, #0x00	;  6
	.byte #0x06, #0x00	;  6
	.byte #0x05, #0x00	;  5
	.byte #0x04, #0x00	;  4
	.byte #0x03, #0x00	;  3
	.byte #0x03, #0x00	;  3
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x03, #0x00	;  3
	.byte #0x03, #0x00	;  3
	.byte #0x04, #0x00	;  4
	.byte #0x05, #0x00	;  5
	.byte #0x06, #0x00	;  6
	.byte #0x06, #0x00	;  6
	.byte #0x07, #0x00	;  7
	.byte #0x08, #0x00	;  8
	.byte #0x0a, #0x00	;  10
	.byte #0x0b, #0x00	;  11
	.byte #0x0c, #0x00	;  12
	.byte #0x0d, #0x00	;  13
	.byte #0x0f, #0x00	;  15
	.byte #0x10, #0x00	;  16
	.byte #0x11, #0x00	;  17
	.byte #0x13, #0x00	;  19
	.byte #0x15, #0x00	;  21
	.byte #0x16, #0x00	;  22
	.byte #0x18, #0x00	;  24
	.byte #0x1a, #0x00	;  26
	.byte #0x1c, #0x00	;  28
	.byte #0x1e, #0x00	;  30
	.byte #0x20, #0x00	;  32
	.byte #0x22, #0x00	;  34
	.byte #0x24, #0x00	;  36
	.byte #0x26, #0x00	;  38
	.byte #0x28, #0x00	;  40
	.byte #0x2b, #0x00	;  43
	.byte #0x2d, #0x00	;  45
	.byte #0x2f, #0x00	;  47
	.byte #0x32, #0x00	;  50
	.byte #0x34, #0x00	;  52
	.byte #0x37, #0x00	;  55
	.byte #0x39, #0x00	;  57
	.byte #0x3c, #0x00	;  60
	.byte #0x3f, #0x00	;  63
	.byte #0x41, #0x00	;  65
	.byte #0x44, #0x00	;  68
	.byte #0x47, #0x00	;  71
	.byte #0x4a, #0x00	;  74
	.byte #0x4d, #0x00	;  77
	.byte #0x4f, #0x00	;  79
	.byte #0x52, #0x00	;  82
	.byte #0x55, #0x00	;  85
	.byte #0x58, #0x00	;  88
	.byte #0x5b, #0x00	;  91
	.byte #0x5e, #0x00	;  94
	.byte #0x61, #0x00	;  97
	.byte #0x64, #0x00	;  100
	.byte #0x67, #0x00	;  103
	.byte #0x6a, #0x00	;  106
	.byte #0x6d, #0x00	;  109
	.byte #0x70, #0x00	;  112
	.byte #0x74, #0x00	;  116
	.byte #0x77, #0x00	;  119
	.byte #0x7a, #0x00	;  122
	.byte #0x7d, #0x00	;  125
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0xe2
	.db 0x94
	.db 0x8c
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
	.db 0x90
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "                        SPI PROGRAM                         "
	.ascii "  "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0xe2
	.db 0x94
	.db 0x9c
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
	.db 0xa4
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "  Command   "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "               Description                       "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0xe2
	.db 0x94
	.db 0x9c
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
	.db 0xbc
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
	.db 0xa4
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    M      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Manual SPI Mode (Direct Register Control)      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    B      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Bit Banging Mode (Software SPI)               "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    S      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Generate Sine Wave                            "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    Q      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Generate Square Wave                          "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    T      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Generate Triangular Wave                      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    D      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Demo Mode (Cycle through all waveforms)       "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    C      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Configure SPI Parameters                      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    R      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Read SPI Data                                 "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    W      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Write SPI Data                                "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    ?      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Display this help menu                        "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    X      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Exit Program                                  "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
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
	.db 0xb4
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
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "Enter command: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "| $ %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "SIN WAVE DONE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Enter number (hex, up to 2 characters): "
	.db 0x0a
	.db 0x0d
	.ascii "|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "$ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Entered data: 0x%02X"
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
