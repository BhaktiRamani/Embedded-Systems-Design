;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module spi_and_bit_banging
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _trig_dac_values
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
	.globl _spi_transmission_stop
	.globl _demo_mode
	.globl _bit_bang_spi
	.globl _take_data
	.globl _mannual_spi
	.globl _spi_init
	.globl _bit_bang_spi_init
	.globl _bit_bang_spi_write
	.globl _spi_transmission_start
	.globl _spi_triangular_wave
	.globl _spi_ramp_signal
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
_bit_bang_spi_number_65536_46:
	.ds 1
_take_data_input_65537_50:
	.ds 4
_take_data_data_65538_54:
	.ds 1
_mannual_spi_number_65536_57:
	.ds 1
_mannual_spi_dac_value_index_65536_58:
	.ds 2
_mannual_spi_dac_data_65536_58:
	.ds 2
_bit_bang_spi_write_data_65536_68:
	.ds 2
_spi_triangular_wave_number_65536_74:
	.ds 2
_spi_triangular_wave_dac_value_index_65536_75:
	.ds 2
_spi_triangular_wave_dac_data_65536_75:
	.ds 2
_spi_ramp_signal_number_65536_81:
	.ds 2
_spi_ramp_signal_dac_value_index_65536_82:
	.ds 2
_spi_ramp_signal_dac_data_65536_82:
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
;	spi_and_bit_banging.c:208: int putchar(int charToSend) {
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
;	spi_and_bit_banging.c:209: SBUF = charToSend;       /* Load character into serial buffer */
	mov	dptr,#_putchar_charToSend_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	spi_and_bit_banging.c:210: while (!TI);             /* Wait for transmission completion */
00101$:
;	spi_and_bit_banging.c:211: TI = 0;                  /* Clear transmission flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	spi_and_bit_banging.c:212: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	spi_and_bit_banging.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	spi_and_bit_banging.c:219: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	spi_and_bit_banging.c:220: while (!RI);             /* Wait for reception completion */
00101$:
;	spi_and_bit_banging.c:221: RI = 0;                  /* Clear reception flag */
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	spi_and_bit_banging.c:222: return SBUF;             /* Return received character */
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	spi_and_bit_banging.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_21'
;i                         Allocated with name '_delay_ms_i_65536_22'
;j                         Allocated with name '_delay_ms_j_65536_22'
;------------------------------------------------------------
;	spi_and_bit_banging.c:225: void delay_ms(unsigned int ms) {
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
;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
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
;	spi_and_bit_banging.c:228: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	spi_and_bit_banging.c:229: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_menu'
;------------------------------------------------------------
;	spi_and_bit_banging.c:238: void display_menu(void) {
;	-----------------------------------------
;	 function display_menu
;	-----------------------------------------
_display_menu:
;	spi_and_bit_banging.c:239: printf("\n\r┌───────────────────────────────────────────────────────┐\n\r");
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
;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                        │\n\r");
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
;	spi_and_bit_banging.c:241: printf("├───────────────────────────────────────────────────────────┤\n\r");
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
;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                    │\n\r");
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
;	spi_and_bit_banging.c:243: printf("├───────────────────────────────────────────────────────────┤\n\r");
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
;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)     │\n\r");
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
;	spi_and_bit_banging.c:245: printf("│    S      │ Generate Sine Wave                            │\n\r");
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
;	spi_and_bit_banging.c:246: printf("│    T      │ Generate Triangular Wave                      │\n\r");
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
;	spi_and_bit_banging.c:247: printf("│    R      │ Ramp wave                                     │\n\r");
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
;	spi_and_bit_banging.c:248: printf("│    ?      │ Display this help menu                        │\n\r");
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
;	spi_and_bit_banging.c:249: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
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
;	spi_and_bit_banging.c:250: printf("\n\r>> Enter command: ");
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
;	spi_and_bit_banging.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmission_stop'
;------------------------------------------------------------
;	spi_and_bit_banging.c:254: void spi_transmission_stop(void) 
;	-----------------------------------------
;	 function spi_transmission_stop
;	-----------------------------------------
_spi_transmission_stop:
;	spi_and_bit_banging.c:256: SPCON &= ~SPI_ENABLE;          // Disable SPI
	anl	_SPCON,#0xbf
;	spi_and_bit_banging.c:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated with name '_main_user_input_131072_37'
;result                    Allocated with name '_main_result_262144_39'
;result3                   Allocated with name '_main_result3_262145_41'
;result4                   Allocated with name '_main_result4_262145_43'
;result5                   Allocated with name '_main_result5_262144_44'
;------------------------------------------------------------
;	spi_and_bit_banging.c:258: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	spi_and_bit_banging.c:260: display_menu();
	lcall	_display_menu
;	spi_and_bit_banging.c:261: spi_init();
	lcall	_spi_init
;	spi_and_bit_banging.c:262: while(1)
00109$:
;	spi_and_bit_banging.c:264: char user_input = getchar();
	lcall	_getchar
	mov	r6,dpl
;	spi_and_bit_banging.c:265: printf("| $ %c\n\r", user_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	spi_and_bit_banging.c:266: printf("\n\r");
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
	pop	ar6
;	spi_and_bit_banging.c:267: switch(user_input)
	cjne	r6,#0x3f,00137$
	ljmp	00105$
00137$:
	cjne	r6,#0x4d,00138$
	sjmp	00101$
00138$:
	cjne	r6,#0x52,00139$
	sjmp	00104$
00139$:
	cjne	r6,#0x53,00140$
	sjmp	00102$
00140$:
	cjne	r6,#0x54,00141$
	sjmp	00103$
00141$:
	ljmp	00106$
;	spi_and_bit_banging.c:269: case 'M':
00101$:
;	spi_and_bit_banging.c:271: unsigned char result = take_data();
	lcall	_take_data
;	spi_and_bit_banging.c:272: mannual_spi(result);
	lcall	_mannual_spi
;	spi_and_bit_banging.c:273: printf(">> SINE WAVE GENERATION COMPLETE\n\r");
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
;	spi_and_bit_banging.c:274: spi_transmission_stop();
	lcall	_spi_transmission_stop
;	spi_and_bit_banging.c:275: break;
;	spi_and_bit_banging.c:288: case 'S':
	sjmp	00109$
00102$:
;	spi_and_bit_banging.c:290: spi_init();
	lcall	_spi_init
;	spi_and_bit_banging.c:291: unsigned char result3 = take_data();
	lcall	_take_data
;	spi_and_bit_banging.c:292: mannual_spi(result3);
	lcall	_mannual_spi
;	spi_and_bit_banging.c:293: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
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
;	spi_and_bit_banging.c:294: break;
	ljmp	00109$
;	spi_and_bit_banging.c:298: case 'T':
00103$:
;	spi_and_bit_banging.c:300: spi_init();
	lcall	_spi_init
;	spi_and_bit_banging.c:301: unsigned char result4 = take_data();
	lcall	_take_data
;	spi_and_bit_banging.c:302: spi_triangular_wave(result4);
	mov	r6,#0x00
	mov	dph,r6
	lcall	_spi_triangular_wave
;	spi_and_bit_banging.c:303: printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
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
;	spi_and_bit_banging.c:304: break;
	ljmp	00109$
;	spi_and_bit_banging.c:307: case 'R':
00104$:
;	spi_and_bit_banging.c:309: unsigned char result5 = take_data();
	lcall	_take_data
;	spi_and_bit_banging.c:310: spi_ramp_signal(result5);
	mov	r6,#0x00
	mov	dph,r6
	lcall	_spi_ramp_signal
;	spi_and_bit_banging.c:311: printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
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
;	spi_and_bit_banging.c:312: break;
	ljmp	00109$
;	spi_and_bit_banging.c:321: case '?':
00105$:
;	spi_and_bit_banging.c:322: display_menu();
	lcall	_display_menu
;	spi_and_bit_banging.c:323: break;  
	ljmp	00109$
;	spi_and_bit_banging.c:325: default:
00106$:
;	spi_and_bit_banging.c:326: printf(">> INVALID INPUT\n\r");
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
;	spi_and_bit_banging.c:331: }
;	spi_and_bit_banging.c:333: }
	ljmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'demo_mode'
;------------------------------------------------------------
;	spi_and_bit_banging.c:339: void demo_mode()
;	-----------------------------------------
;	 function demo_mode
;	-----------------------------------------
_demo_mode:
;	spi_and_bit_banging.c:341: mannual_spi(7);
	mov	dpl,#0x07
	lcall	_mannual_spi
;	spi_and_bit_banging.c:342: bit_bang_spi(7);
	mov	dpl,#0x07
	lcall	_bit_bang_spi
;	spi_and_bit_banging.c:343: spi_ramp_signal(7);
	mov	dptr,#0x0007
	lcall	_spi_ramp_signal
;	spi_and_bit_banging.c:344: spi_triangular_wave(7);
	mov	dptr,#0x0007
;	spi_and_bit_banging.c:345: }
	ljmp	_spi_triangular_wave
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_spi'
;------------------------------------------------------------
;number                    Allocated with name '_bit_bang_spi_number_65536_46'
;------------------------------------------------------------
;	spi_and_bit_banging.c:349: void bit_bang_spi(unsigned char number)
;	-----------------------------------------
;	 function bit_bang_spi
;	-----------------------------------------
_bit_bang_spi:
	mov	a,dpl
	mov	dptr,#_bit_bang_spi_number_65536_46
	movx	@dptr,a
;	spi_and_bit_banging.c:351: while(number > 0)
00101$:
	mov	dptr,#_bit_bang_spi_number_65536_46
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00104$
;	spi_and_bit_banging.c:353: bit_bang_spi_write(TEST_DATA);
	mov	dptr,#0x1ff0
	push	ar7
	lcall	_bit_bang_spi_write
;	spi_and_bit_banging.c:354: delay_ms(DELAY_PERIOD);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	spi_and_bit_banging.c:355: bit_bang_spi_write(IDLE_DATA);
	mov	dptr,#0x1000
	lcall	_bit_bang_spi_write
;	spi_and_bit_banging.c:356: delay_ms(DELAY_PERIOD);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	pop	ar7
;	spi_and_bit_banging.c:357: number = number - 1;
	mov	a,r7
	dec	a
	mov	dptr,#_bit_bang_spi_number_65536_46
	movx	@dptr,a
	sjmp	00101$
00104$:
;	spi_and_bit_banging.c:359: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65537_50'
;i                         Allocated with name '_take_data_i_65537_50'
;c                         Allocated with name '_take_data_c_65537_50'
;data                      Allocated with name '_take_data_data_65538_54'
;------------------------------------------------------------
;	spi_and_bit_banging.c:360: unsigned char take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	spi_and_bit_banging.c:362: printf("│ Enter number (up to 2 characters): \n\r|");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	spi_and_bit_banging.c:363: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_data_input_65537_50
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_50 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_50 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_50 + 0x0003)
	movx	@dptr,a
;	spi_and_bit_banging.c:367: printf("$ ");
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
;	spi_and_bit_banging.c:369: while (i < 3) {
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
;	spi_and_bit_banging.c:371: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	spi_and_bit_banging.c:374: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00194$
	sjmp	00113$
00194$:
	cjne	r4,#0x0a,00195$
	sjmp	00113$
00195$:
;	spi_and_bit_banging.c:379: if ((c >= '0' && c <= '9') ||
	cjne	r4,#0x30,00196$
00196$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	spi_and_bit_banging.c:380: (c >= 'a' && c <= 'f') ||
	cjne	r4,#0x61,00199$
00199$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	spi_and_bit_banging.c:381: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00202$
00202$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	spi_and_bit_banging.c:383: input[i] = c;
	mov	a,r6
	add	a,#_take_data_input_65537_50
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_50 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	spi_and_bit_banging.c:384: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	spi_and_bit_banging.c:385: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	spi_and_bit_banging.c:389: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65537_50
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_50 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	spi_and_bit_banging.c:392: unsigned char data = 0;
	mov	dptr,#_take_data_data_65538_54
	movx	@dptr,a
;	spi_and_bit_banging.c:393: for (i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	mov	a,r6
	add	a,#_take_data_input_65537_50
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_50 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00206$
	ljmp	00125$
00206$:
;	spi_and_bit_banging.c:394: data = data * 16;
	mov	dptr,#_take_data_data_65538_54
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	movx	@dptr,a
;	spi_and_bit_banging.c:395: if (input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00207$
00207$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	spi_and_bit_banging.c:396: data += input[i] - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_take_data_data_65538_54
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
	sjmp	00128$
00122$:
;	spi_and_bit_banging.c:397: else if (input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_data_input_65537_50
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_50 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00210$
00210$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	spi_and_bit_banging.c:398: data += input[i] - 'A' + 10;
	mov	ar4,r5
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_take_data_data_65538_54
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	movx	@dptr,a
	sjmp	00128$
00118$:
;	spi_and_bit_banging.c:399: else if (input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00213$
00213$:
	jc	00128$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00128$
;	spi_and_bit_banging.c:400: data += input[i] - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	dptr,#_take_data_data_65538_54
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
00128$:
;	spi_and_bit_banging.c:393: for (i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00216$
	inc	r7
00216$:
	ljmp	00127$
00125$:
;	spi_and_bit_banging.c:403: printf("\n\r│ Entered data: 0x%02X\n\r", data);
	mov	dptr,#_take_data_data_65538_54
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	spi_and_bit_banging.c:410: return data;
	mov	dpl,r7
;	spi_and_bit_banging.c:412: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mannual_spi'
;------------------------------------------------------------
;number                    Allocated with name '_mannual_spi_number_65536_57'
;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_58'
;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_58'
;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_58'
;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_58'
;i                         Allocated with name '_mannual_spi_i_196608_60'
;------------------------------------------------------------
;	spi_and_bit_banging.c:414: void mannual_spi(unsigned char number)
;	-----------------------------------------
;	 function mannual_spi
;	-----------------------------------------
_mannual_spi:
	mov	a,dpl
	mov	dptr,#_mannual_spi_number_65536_57
	movx	@dptr,a
;	spi_and_bit_banging.c:416: int dac_value_index = 0;
	mov	dptr,#_mannual_spi_dac_value_index_65536_58
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:417: int dac_data = 0;
	mov	dptr,#_mannual_spi_dac_data_65536_58
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:419: printf("\r\n Inside Manual SPI");
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
;	spi_and_bit_banging.c:420: printf("%d\n\r", number);
	mov	dptr,#_mannual_spi_number_65536_57
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	spi_and_bit_banging.c:421: while(number > 0)
00111$:
	mov	dptr,#_mannual_spi_number_65536_57
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00156$
	ret
00156$:
;	spi_and_bit_banging.c:423: printf("\r\n Number is %d",number);
	mov	r6,#0x00
	push	ar7
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
;	spi_and_bit_banging.c:425: for(int i = 0; i<255; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00157$
	ljmp	00110$
00157$:
;	spi_and_bit_banging.c:428: if(dac_value_index < SINE_MAX_INDEX)
	mov	dptr,#_mannual_spi_dac_value_index_65536_58
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00102$
;	spi_and_bit_banging.c:432: dac_data = dac_values[dac_value_index];
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_dac_values
	mov	dpl,a
	mov	a,r5
	addc	a,#(_dac_values >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dptr,#_mannual_spi_dac_data_65536_58
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi_and_bit_banging.c:436: dac_value_index = 0;  // Reset index for next cycle
	mov	dptr,#_mannual_spi_dac_value_index_65536_58
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
;	spi_and_bit_banging.c:443: ((dac_data >> 4) & 0x0F);
	mov	dptr,#_mannual_spi_dac_data_65536_58
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	ar2,r4
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	jnb	acc.3,00159$
	orl	a,#0xf0
00159$:
	mov	a,#0x0f
	anl	a,r2
	orl	a,#0x10
	mov	r3,a
;	spi_and_bit_banging.c:446: low_byte = (dac_data & 0x0F) << 4;
	anl	ar4,#0x0f
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r5,a
;	spi_and_bit_banging.c:450: P1_1 = 0;  // Select DAC
;	assignBit
	clr	_P1_1
;	spi_and_bit_banging.c:453: SPDAT = high_byte;
	mov	_SPDAT,r3
;	spi_and_bit_banging.c:454: while (!(SPSTA & (1<<7))); 
00104$:
	mov	a,_SPSTA
	jnb	acc.7,00104$
;	spi_and_bit_banging.c:458: SPDAT = low_byte;
	mov	_SPDAT,r5
;	spi_and_bit_banging.c:459: while (!(SPSTA & (1<<7))); 
00107$:
	mov	a,_SPSTA
	jnb	acc.7,00107$
;	spi_and_bit_banging.c:461: P1_1 = 1;  // Deselect DAC
;	assignBit
	setb	_P1_1
;	spi_and_bit_banging.c:463: dac_value_index++;
	mov	dptr,#_mannual_spi_dac_value_index_65536_58
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	spi_and_bit_banging.c:425: for(int i = 0; i<255; i++)
	inc	r6
	cjne	r6,#0x00,00162$
	inc	r7
00162$:
	ljmp	00115$
00110$:
;	spi_and_bit_banging.c:466: number = number - 1;
	mov	dptr,#_mannual_spi_number_65536_57
	movx	a,@dptr
	mov	r7,a
	dec	a
	movx	@dptr,a
;	spi_and_bit_banging.c:468: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	spi_and_bit_banging.c:479: void spi_init(void) 
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	spi_and_bit_banging.c:500: SPCON |= 0x10;
	orl	_SPCON,#0x10
;	spi_and_bit_banging.c:501: SPCON |= 0x20;
	orl	_SPCON,#0x20
;	spi_and_bit_banging.c:502: SPCON |= 0x40;
	orl	_SPCON,#0x40
;	spi_and_bit_banging.c:509: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_spi_init'
;------------------------------------------------------------
;	spi_and_bit_banging.c:511: void bit_bang_spi_init(void) {
;	-----------------------------------------
;	 function bit_bang_spi_init
;	-----------------------------------------
_bit_bang_spi_init:
;	spi_and_bit_banging.c:512: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
	mov	_SPCON,#0x00
;	spi_and_bit_banging.c:513: SDA = DATA_HIGH;                 /* Set data line high */
;	assignBit
	setb	_P1_7
;	spi_and_bit_banging.c:514: SCL = CLOCK_LOW;                 /* Set clock line low */
;	assignBit
	clr	_P1_6
;	spi_and_bit_banging.c:515: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
;	assignBit
	setb	_P1_1
;	spi_and_bit_banging.c:516: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_spi_write'
;------------------------------------------------------------
;data                      Allocated with name '_bit_bang_spi_write_data_65536_68'
;i                         Allocated with name '_bit_bang_spi_write_i_65536_69'
;------------------------------------------------------------
;	spi_and_bit_banging.c:518: int bit_bang_spi_write(uint16_t data) {
;	-----------------------------------------
;	 function bit_bang_spi_write
;	-----------------------------------------
_bit_bang_spi_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_bit_bang_spi_write_data_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:521: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
;	assignBit
	clr	_P1_1
;	spi_and_bit_banging.c:524: for(i = 0; i < SPI_DATA_WIDTH; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	spi_and_bit_banging.c:525: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
	mov	dptr,#_bit_bang_spi_write_data_65536_68
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_7,c
;	spi_and_bit_banging.c:526: SCL = CLOCK_HIGH;            /* Clock high */
;	assignBit
	setb	_P1_6
;	spi_and_bit_banging.c:527: SCL = CLOCK_LOW;             /* Clock low */
;	assignBit
	clr	_P1_6
;	spi_and_bit_banging.c:528: data <<= 1;                  /* Shift to next bit */
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_bit_bang_spi_write_data_65536_68
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:524: for(i = 0; i < SPI_DATA_WIDTH; i++) {
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	spi_and_bit_banging.c:532: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
;	assignBit
	setb	_P1_1
;	spi_and_bit_banging.c:533: SCL = CLOCK_LOW;                 /* Clock low */
;	assignBit
	clr	_P1_6
;	spi_and_bit_banging.c:534: SDA = DATA_HIGH;                 /* Data high */
;	assignBit
	setb	_P1_7
;	spi_and_bit_banging.c:536: return 0;
	mov	dptr,#0x0000
;	spi_and_bit_banging.c:537: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transmission_start'
;------------------------------------------------------------
;	spi_and_bit_banging.c:544: void spi_transmission_start(void)
;	-----------------------------------------
;	 function spi_transmission_start
;	-----------------------------------------
_spi_transmission_start:
;	spi_and_bit_banging.c:546: SPCON |= SPI_ENABLE;           // Enable SPI
	orl	_SPCON,#0x40
;	spi_and_bit_banging.c:547: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	spi_and_bit_banging.c:548: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_triangular_wave'
;------------------------------------------------------------
;number                    Allocated with name '_spi_triangular_wave_number_65536_74'
;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_75'
;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_75'
;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_75'
;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_75'
;i                         Allocated with name '_spi_triangular_wave_i_196608_77'
;------------------------------------------------------------
;	spi_and_bit_banging.c:550: void spi_triangular_wave(int number)
;	-----------------------------------------
;	 function spi_triangular_wave
;	-----------------------------------------
_spi_triangular_wave:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_spi_triangular_wave_number_65536_74
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:552: int dac_value_index = 0;
	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:553: int dac_data = 0;
	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:555: while(number>0)
	mov	dptr,#_spi_triangular_wave_number_65536_74
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00111$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00157$
	ljmp	00129$
00157$:
;	spi_and_bit_banging.c:557: for(int i = 0; i<512; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00115$:
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x82
	jc	00158$
	ljmp	00110$
00158$:
;	spi_and_bit_banging.c:560: if(dac_value_index < 512)
	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00102$
;	spi_and_bit_banging.c:564: dac_data = trig_dac_values[dac_value_index];
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_trig_dac_values
	mov	dpl,a
	mov	a,r3
	addc	a,#(_trig_dac_values >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi_and_bit_banging.c:568: dac_value_index = 0;  // Reset index for next cycle
	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
;	spi_and_bit_banging.c:575: ((dac_data >> 4) & 0x0F);
	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	ar0,r2
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	jnb	acc.3,00160$
	orl	a,#0xf0
00160$:
	mov	a,#0x0f
	anl	a,r0
	orl	a,#0x10
	mov	r1,a
;	spi_and_bit_banging.c:578: low_byte = (dac_data & 0x0F) << 4;
	anl	ar2,#0x0f
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r3,a
;	spi_and_bit_banging.c:582: P1_1 = 0;  // Select DAC
;	assignBit
	clr	_P1_1
;	spi_and_bit_banging.c:585: SPDAT = high_byte;
	mov	_SPDAT,r1
;	spi_and_bit_banging.c:586: while (!(SPSTA & (1<<7))); 
00104$:
	mov	a,_SPSTA
	jnb	acc.7,00104$
;	spi_and_bit_banging.c:590: SPDAT = low_byte;
	mov	_SPDAT,r3
;	spi_and_bit_banging.c:591: while (!(SPSTA & (1<<7))); 
00107$:
	mov	a,_SPSTA
	jnb	acc.7,00107$
;	spi_and_bit_banging.c:593: P1_1 = 1;  // Deselect DAC
;	assignBit
	setb	_P1_1
;	spi_and_bit_banging.c:595: dac_value_index++;
	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	spi_and_bit_banging.c:557: for(int i = 0; i<512; i++)
	inc	r4
	cjne	r4,#0x00,00163$
	inc	r5
00163$:
	ljmp	00115$
00110$:
;	spi_and_bit_banging.c:598: number = number - 1;
	dec	r6
	cjne	r6,#0xff,00164$
	dec	r7
00164$:
	mov	dptr,#_spi_triangular_wave_number_65536_74
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00111$
00129$:
	mov	dptr,#_spi_triangular_wave_number_65536_74
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:601: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_ramp_signal'
;------------------------------------------------------------
;number                    Allocated with name '_spi_ramp_signal_number_65536_81'
;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_82'
;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_82'
;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_82'
;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_82'
;i                         Allocated with name '_spi_ramp_signal_i_196608_84'
;------------------------------------------------------------
;	spi_and_bit_banging.c:603: void spi_ramp_signal(int number)
;	-----------------------------------------
;	 function spi_ramp_signal
;	-----------------------------------------
_spi_ramp_signal:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_spi_ramp_signal_number_65536_81
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:605: int dac_value_index = 0;
	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:606: int dac_data = 0;
	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:608: while(number>0)
	mov	dptr,#_spi_ramp_signal_number_65536_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00111$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00157$
	ljmp	00129$
00157$:
;	spi_and_bit_banging.c:610: for(int i = 0; i<256; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00115$:
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x81
	jc	00158$
	ljmp	00110$
00158$:
;	spi_and_bit_banging.c:613: if(dac_value_index < 256)
	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00102$
;	spi_and_bit_banging.c:617: dac_data = trig_dac_values[dac_value_index];
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_trig_dac_values
	mov	dpl,a
	mov	a,r3
	addc	a,#(_trig_dac_values >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi_and_bit_banging.c:621: dac_value_index = 0;  // Reset index for next cycle
	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
;	spi_and_bit_banging.c:628: ((dac_data >> 4) & 0x0F);
	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	ar0,r2
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	jnb	acc.3,00160$
	orl	a,#0xf0
00160$:
	mov	a,#0x0f
	anl	a,r0
	orl	a,#0x10
	mov	r1,a
;	spi_and_bit_banging.c:631: low_byte = (dac_data & 0x0F) << 4;
	anl	ar2,#0x0f
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r3,a
;	spi_and_bit_banging.c:635: P1_1 = 0;  // Select DAC
;	assignBit
	clr	_P1_1
;	spi_and_bit_banging.c:638: SPDAT = high_byte;
	mov	_SPDAT,r1
;	spi_and_bit_banging.c:639: while (!(SPSTA & (1<<7))); 
00104$:
	mov	a,_SPSTA
	jnb	acc.7,00104$
;	spi_and_bit_banging.c:643: SPDAT = low_byte;
	mov	_SPDAT,r3
;	spi_and_bit_banging.c:644: while (!(SPSTA & (1<<7))); 
00107$:
	mov	a,_SPSTA
	jnb	acc.7,00107$
;	spi_and_bit_banging.c:646: P1_1 = 1;  // Deselect DAC
;	assignBit
	setb	_P1_1
;	spi_and_bit_banging.c:648: dac_value_index++;
	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	spi_and_bit_banging.c:610: for(int i = 0; i<256; i++)
	inc	r4
	cjne	r4,#0x00,00163$
	inc	r5
00163$:
	ljmp	00115$
00110$:
;	spi_and_bit_banging.c:651: number = number - 1;
	dec	r6
	cjne	r6,#0xff,00164$
	dec	r7
00164$:
	mov	dptr,#_spi_ramp_signal_number_65536_81
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00111$
00129$:
	mov	dptr,#_spi_ramp_signal_number_65536_81
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi_and_bit_banging.c:654: }
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
_trig_dac_values:
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x03, #0x00	;  3
	.byte #0x04, #0x00	;  4
	.byte #0x05, #0x00	;  5
	.byte #0x06, #0x00	;  6
	.byte #0x07, #0x00	;  7
	.byte #0x08, #0x00	;  8
	.byte #0x09, #0x00	;  9
	.byte #0x0a, #0x00	;  10
	.byte #0x0b, #0x00	;  11
	.byte #0x0c, #0x00	;  12
	.byte #0x0d, #0x00	;  13
	.byte #0x0e, #0x00	;  14
	.byte #0x0f, #0x00	;  15
	.byte #0x10, #0x00	;  16
	.byte #0x11, #0x00	;  17
	.byte #0x12, #0x00	;  18
	.byte #0x13, #0x00	;  19
	.byte #0x14, #0x00	;  20
	.byte #0x15, #0x00	;  21
	.byte #0x16, #0x00	;  22
	.byte #0x17, #0x00	;  23
	.byte #0x18, #0x00	;  24
	.byte #0x19, #0x00	;  25
	.byte #0x1a, #0x00	;  26
	.byte #0x1b, #0x00	;  27
	.byte #0x1c, #0x00	;  28
	.byte #0x1d, #0x00	;  29
	.byte #0x1e, #0x00	;  30
	.byte #0x1f, #0x00	;  31
	.byte #0x20, #0x00	;  32
	.byte #0x21, #0x00	;  33
	.byte #0x22, #0x00	;  34
	.byte #0x23, #0x00	;  35
	.byte #0x24, #0x00	;  36
	.byte #0x25, #0x00	;  37
	.byte #0x26, #0x00	;  38
	.byte #0x27, #0x00	;  39
	.byte #0x28, #0x00	;  40
	.byte #0x29, #0x00	;  41
	.byte #0x2a, #0x00	;  42
	.byte #0x2b, #0x00	;  43
	.byte #0x2c, #0x00	;  44
	.byte #0x2d, #0x00	;  45
	.byte #0x2e, #0x00	;  46
	.byte #0x2f, #0x00	;  47
	.byte #0x30, #0x00	;  48
	.byte #0x31, #0x00	;  49
	.byte #0x32, #0x00	;  50
	.byte #0x33, #0x00	;  51
	.byte #0x34, #0x00	;  52
	.byte #0x35, #0x00	;  53
	.byte #0x36, #0x00	;  54
	.byte #0x37, #0x00	;  55
	.byte #0x38, #0x00	;  56
	.byte #0x39, #0x00	;  57
	.byte #0x3a, #0x00	;  58
	.byte #0x3b, #0x00	;  59
	.byte #0x3c, #0x00	;  60
	.byte #0x3d, #0x00	;  61
	.byte #0x3e, #0x00	;  62
	.byte #0x3f, #0x00	;  63
	.byte #0x40, #0x00	;  64
	.byte #0x41, #0x00	;  65
	.byte #0x42, #0x00	;  66
	.byte #0x43, #0x00	;  67
	.byte #0x44, #0x00	;  68
	.byte #0x45, #0x00	;  69
	.byte #0x46, #0x00	;  70
	.byte #0x47, #0x00	;  71
	.byte #0x48, #0x00	;  72
	.byte #0x49, #0x00	;  73
	.byte #0x4a, #0x00	;  74
	.byte #0x4b, #0x00	;  75
	.byte #0x4c, #0x00	;  76
	.byte #0x4d, #0x00	;  77
	.byte #0x4e, #0x00	;  78
	.byte #0x4f, #0x00	;  79
	.byte #0x50, #0x00	;  80
	.byte #0x51, #0x00	;  81
	.byte #0x52, #0x00	;  82
	.byte #0x53, #0x00	;  83
	.byte #0x54, #0x00	;  84
	.byte #0x55, #0x00	;  85
	.byte #0x56, #0x00	;  86
	.byte #0x57, #0x00	;  87
	.byte #0x58, #0x00	;  88
	.byte #0x59, #0x00	;  89
	.byte #0x5a, #0x00	;  90
	.byte #0x5b, #0x00	;  91
	.byte #0x5c, #0x00	;  92
	.byte #0x5d, #0x00	;  93
	.byte #0x5e, #0x00	;  94
	.byte #0x5f, #0x00	;  95
	.byte #0x60, #0x00	;  96
	.byte #0x61, #0x00	;  97
	.byte #0x62, #0x00	;  98
	.byte #0x63, #0x00	;  99
	.byte #0x64, #0x00	;  100
	.byte #0x65, #0x00	;  101
	.byte #0x66, #0x00	;  102
	.byte #0x67, #0x00	;  103
	.byte #0x68, #0x00	;  104
	.byte #0x69, #0x00	;  105
	.byte #0x6a, #0x00	;  106
	.byte #0x6b, #0x00	;  107
	.byte #0x6c, #0x00	;  108
	.byte #0x6d, #0x00	;  109
	.byte #0x6e, #0x00	;  110
	.byte #0x6f, #0x00	;  111
	.byte #0x70, #0x00	;  112
	.byte #0x71, #0x00	;  113
	.byte #0x72, #0x00	;  114
	.byte #0x73, #0x00	;  115
	.byte #0x74, #0x00	;  116
	.byte #0x75, #0x00	;  117
	.byte #0x76, #0x00	;  118
	.byte #0x77, #0x00	;  119
	.byte #0x78, #0x00	;  120
	.byte #0x79, #0x00	;  121
	.byte #0x7a, #0x00	;  122
	.byte #0x7b, #0x00	;  123
	.byte #0x7c, #0x00	;  124
	.byte #0x7d, #0x00	;  125
	.byte #0x7e, #0x00	;  126
	.byte #0x7f, #0x00	;  127
	.byte #0x80, #0x00	;  128
	.byte #0x81, #0x00	;  129
	.byte #0x82, #0x00	;  130
	.byte #0x83, #0x00	;  131
	.byte #0x84, #0x00	;  132
	.byte #0x85, #0x00	;  133
	.byte #0x86, #0x00	;  134
	.byte #0x87, #0x00	;  135
	.byte #0x88, #0x00	;  136
	.byte #0x89, #0x00	;  137
	.byte #0x8a, #0x00	;  138
	.byte #0x8b, #0x00	;  139
	.byte #0x8c, #0x00	;  140
	.byte #0x8d, #0x00	;  141
	.byte #0x8e, #0x00	;  142
	.byte #0x8f, #0x00	;  143
	.byte #0x90, #0x00	;  144
	.byte #0x91, #0x00	;  145
	.byte #0x92, #0x00	;  146
	.byte #0x93, #0x00	;  147
	.byte #0x94, #0x00	;  148
	.byte #0x95, #0x00	;  149
	.byte #0x96, #0x00	;  150
	.byte #0x97, #0x00	;  151
	.byte #0x98, #0x00	;  152
	.byte #0x99, #0x00	;  153
	.byte #0x9a, #0x00	;  154
	.byte #0x9b, #0x00	;  155
	.byte #0x9c, #0x00	;  156
	.byte #0x9d, #0x00	;  157
	.byte #0x9e, #0x00	;  158
	.byte #0x9f, #0x00	;  159
	.byte #0xa0, #0x00	;  160
	.byte #0xa1, #0x00	;  161
	.byte #0xa2, #0x00	;  162
	.byte #0xa3, #0x00	;  163
	.byte #0xa4, #0x00	;  164
	.byte #0xa5, #0x00	;  165
	.byte #0xa6, #0x00	;  166
	.byte #0xa7, #0x00	;  167
	.byte #0xa8, #0x00	;  168
	.byte #0xa9, #0x00	;  169
	.byte #0xaa, #0x00	;  170
	.byte #0xab, #0x00	;  171
	.byte #0xac, #0x00	;  172
	.byte #0xad, #0x00	;  173
	.byte #0xae, #0x00	;  174
	.byte #0xaf, #0x00	;  175
	.byte #0xb0, #0x00	;  176
	.byte #0xb1, #0x00	;  177
	.byte #0xb2, #0x00	;  178
	.byte #0xb3, #0x00	;  179
	.byte #0xb4, #0x00	;  180
	.byte #0xb5, #0x00	;  181
	.byte #0xb6, #0x00	;  182
	.byte #0xb7, #0x00	;  183
	.byte #0xb8, #0x00	;  184
	.byte #0xb9, #0x00	;  185
	.byte #0xba, #0x00	;  186
	.byte #0xbb, #0x00	;  187
	.byte #0xbc, #0x00	;  188
	.byte #0xbd, #0x00	;  189
	.byte #0xbe, #0x00	;  190
	.byte #0xbf, #0x00	;  191
	.byte #0xc0, #0x00	;  192
	.byte #0xc1, #0x00	;  193
	.byte #0xc2, #0x00	;  194
	.byte #0xc3, #0x00	;  195
	.byte #0xc4, #0x00	;  196
	.byte #0xc5, #0x00	;  197
	.byte #0xc6, #0x00	;  198
	.byte #0xc7, #0x00	;  199
	.byte #0xc8, #0x00	;  200
	.byte #0xc9, #0x00	;  201
	.byte #0xca, #0x00	;  202
	.byte #0xcb, #0x00	;  203
	.byte #0xcc, #0x00	;  204
	.byte #0xcd, #0x00	;  205
	.byte #0xce, #0x00	;  206
	.byte #0xcf, #0x00	;  207
	.byte #0xd0, #0x00	;  208
	.byte #0xd1, #0x00	;  209
	.byte #0xd2, #0x00	;  210
	.byte #0xd3, #0x00	;  211
	.byte #0xd4, #0x00	;  212
	.byte #0xd5, #0x00	;  213
	.byte #0xd6, #0x00	;  214
	.byte #0xd7, #0x00	;  215
	.byte #0xd8, #0x00	;  216
	.byte #0xd9, #0x00	;  217
	.byte #0xda, #0x00	;  218
	.byte #0xdb, #0x00	;  219
	.byte #0xdc, #0x00	;  220
	.byte #0xdd, #0x00	;  221
	.byte #0xde, #0x00	;  222
	.byte #0xdf, #0x00	;  223
	.byte #0xe0, #0x00	;  224
	.byte #0xe1, #0x00	;  225
	.byte #0xe2, #0x00	;  226
	.byte #0xe3, #0x00	;  227
	.byte #0xe4, #0x00	;  228
	.byte #0xe5, #0x00	;  229
	.byte #0xe6, #0x00	;  230
	.byte #0xe7, #0x00	;  231
	.byte #0xe8, #0x00	;  232
	.byte #0xe9, #0x00	;  233
	.byte #0xea, #0x00	;  234
	.byte #0xeb, #0x00	;  235
	.byte #0xec, #0x00	;  236
	.byte #0xed, #0x00	;  237
	.byte #0xee, #0x00	;  238
	.byte #0xef, #0x00	;  239
	.byte #0xf0, #0x00	;  240
	.byte #0xf1, #0x00	;  241
	.byte #0xf2, #0x00	;  242
	.byte #0xf3, #0x00	;  243
	.byte #0xf4, #0x00	;  244
	.byte #0xf5, #0x00	;  245
	.byte #0xf6, #0x00	;  246
	.byte #0xf7, #0x00	;  247
	.byte #0xf8, #0x00	;  248
	.byte #0xf9, #0x00	;  249
	.byte #0xfa, #0x00	;  250
	.byte #0xfb, #0x00	;  251
	.byte #0xfc, #0x00	;  252
	.byte #0xfd, #0x00	;  253
	.byte #0xfe, #0x00	;  254
	.byte #0xff, #0x00	;  255
	.byte #0xff, #0x00	;  255
	.byte #0xfe, #0x00	;  254
	.byte #0xfd, #0x00	;  253
	.byte #0xfc, #0x00	;  252
	.byte #0xfb, #0x00	;  251
	.byte #0xfa, #0x00	;  250
	.byte #0xf9, #0x00	;  249
	.byte #0xf8, #0x00	;  248
	.byte #0xf7, #0x00	;  247
	.byte #0xf6, #0x00	;  246
	.byte #0xf5, #0x00	;  245
	.byte #0xf4, #0x00	;  244
	.byte #0xf3, #0x00	;  243
	.byte #0xf2, #0x00	;  242
	.byte #0xf1, #0x00	;  241
	.byte #0xf0, #0x00	;  240
	.byte #0xef, #0x00	;  239
	.byte #0xee, #0x00	;  238
	.byte #0xed, #0x00	;  237
	.byte #0xec, #0x00	;  236
	.byte #0xeb, #0x00	;  235
	.byte #0xea, #0x00	;  234
	.byte #0xe9, #0x00	;  233
	.byte #0xe8, #0x00	;  232
	.byte #0xe7, #0x00	;  231
	.byte #0xe6, #0x00	;  230
	.byte #0xe5, #0x00	;  229
	.byte #0xe4, #0x00	;  228
	.byte #0xe3, #0x00	;  227
	.byte #0xe2, #0x00	;  226
	.byte #0xe1, #0x00	;  225
	.byte #0xe0, #0x00	;  224
	.byte #0xdf, #0x00	;  223
	.byte #0xde, #0x00	;  222
	.byte #0xdd, #0x00	;  221
	.byte #0xdc, #0x00	;  220
	.byte #0xdb, #0x00	;  219
	.byte #0xda, #0x00	;  218
	.byte #0xd9, #0x00	;  217
	.byte #0xd8, #0x00	;  216
	.byte #0xd7, #0x00	;  215
	.byte #0xd6, #0x00	;  214
	.byte #0xd5, #0x00	;  213
	.byte #0xd4, #0x00	;  212
	.byte #0xd3, #0x00	;  211
	.byte #0xd2, #0x00	;  210
	.byte #0xd1, #0x00	;  209
	.byte #0xd0, #0x00	;  208
	.byte #0xcf, #0x00	;  207
	.byte #0xce, #0x00	;  206
	.byte #0xcd, #0x00	;  205
	.byte #0xcc, #0x00	;  204
	.byte #0xcb, #0x00	;  203
	.byte #0xca, #0x00	;  202
	.byte #0xc9, #0x00	;  201
	.byte #0xc8, #0x00	;  200
	.byte #0xc7, #0x00	;  199
	.byte #0xc6, #0x00	;  198
	.byte #0xc5, #0x00	;  197
	.byte #0xc4, #0x00	;  196
	.byte #0xc3, #0x00	;  195
	.byte #0xc2, #0x00	;  194
	.byte #0xc1, #0x00	;  193
	.byte #0xc0, #0x00	;  192
	.byte #0xbf, #0x00	;  191
	.byte #0xbe, #0x00	;  190
	.byte #0xbd, #0x00	;  189
	.byte #0xbc, #0x00	;  188
	.byte #0xbb, #0x00	;  187
	.byte #0xba, #0x00	;  186
	.byte #0xb9, #0x00	;  185
	.byte #0xb8, #0x00	;  184
	.byte #0xb7, #0x00	;  183
	.byte #0xb6, #0x00	;  182
	.byte #0xb5, #0x00	;  181
	.byte #0xb4, #0x00	;  180
	.byte #0xb3, #0x00	;  179
	.byte #0xb2, #0x00	;  178
	.byte #0xb1, #0x00	;  177
	.byte #0xb0, #0x00	;  176
	.byte #0xaf, #0x00	;  175
	.byte #0xae, #0x00	;  174
	.byte #0xad, #0x00	;  173
	.byte #0xac, #0x00	;  172
	.byte #0xab, #0x00	;  171
	.byte #0xaa, #0x00	;  170
	.byte #0xa9, #0x00	;  169
	.byte #0xa8, #0x00	;  168
	.byte #0xa7, #0x00	;  167
	.byte #0xa6, #0x00	;  166
	.byte #0xa5, #0x00	;  165
	.byte #0xa4, #0x00	;  164
	.byte #0xa3, #0x00	;  163
	.byte #0xa2, #0x00	;  162
	.byte #0xa1, #0x00	;  161
	.byte #0xa0, #0x00	;  160
	.byte #0x9f, #0x00	;  159
	.byte #0x9e, #0x00	;  158
	.byte #0x9d, #0x00	;  157
	.byte #0x9c, #0x00	;  156
	.byte #0x9b, #0x00	;  155
	.byte #0x9a, #0x00	;  154
	.byte #0x99, #0x00	;  153
	.byte #0x98, #0x00	;  152
	.byte #0x97, #0x00	;  151
	.byte #0x96, #0x00	;  150
	.byte #0x95, #0x00	;  149
	.byte #0x94, #0x00	;  148
	.byte #0x93, #0x00	;  147
	.byte #0x92, #0x00	;  146
	.byte #0x91, #0x00	;  145
	.byte #0x90, #0x00	;  144
	.byte #0x8f, #0x00	;  143
	.byte #0x8e, #0x00	;  142
	.byte #0x8d, #0x00	;  141
	.byte #0x8c, #0x00	;  140
	.byte #0x8b, #0x00	;  139
	.byte #0x8a, #0x00	;  138
	.byte #0x89, #0x00	;  137
	.byte #0x88, #0x00	;  136
	.byte #0x87, #0x00	;  135
	.byte #0x86, #0x00	;  134
	.byte #0x85, #0x00	;  133
	.byte #0x84, #0x00	;  132
	.byte #0x83, #0x00	;  131
	.byte #0x82, #0x00	;  130
	.byte #0x81, #0x00	;  129
	.byte #0x80, #0x00	;  128
	.byte #0x7f, #0x00	;  127
	.byte #0x7e, #0x00	;  126
	.byte #0x7d, #0x00	;  125
	.byte #0x7c, #0x00	;  124
	.byte #0x7b, #0x00	;  123
	.byte #0x7a, #0x00	;  122
	.byte #0x79, #0x00	;  121
	.byte #0x78, #0x00	;  120
	.byte #0x77, #0x00	;  119
	.byte #0x76, #0x00	;  118
	.byte #0x75, #0x00	;  117
	.byte #0x74, #0x00	;  116
	.byte #0x73, #0x00	;  115
	.byte #0x72, #0x00	;  114
	.byte #0x71, #0x00	;  113
	.byte #0x70, #0x00	;  112
	.byte #0x6f, #0x00	;  111
	.byte #0x6e, #0x00	;  110
	.byte #0x6d, #0x00	;  109
	.byte #0x6c, #0x00	;  108
	.byte #0x6b, #0x00	;  107
	.byte #0x6a, #0x00	;  106
	.byte #0x69, #0x00	;  105
	.byte #0x68, #0x00	;  104
	.byte #0x67, #0x00	;  103
	.byte #0x66, #0x00	;  102
	.byte #0x65, #0x00	;  101
	.byte #0x64, #0x00	;  100
	.byte #0x63, #0x00	;  99
	.byte #0x62, #0x00	;  98
	.byte #0x61, #0x00	;  97
	.byte #0x60, #0x00	;  96
	.byte #0x5f, #0x00	;  95
	.byte #0x5e, #0x00	;  94
	.byte #0x5d, #0x00	;  93
	.byte #0x5c, #0x00	;  92
	.byte #0x5b, #0x00	;  91
	.byte #0x5a, #0x00	;  90
	.byte #0x59, #0x00	;  89
	.byte #0x58, #0x00	;  88
	.byte #0x57, #0x00	;  87
	.byte #0x56, #0x00	;  86
	.byte #0x55, #0x00	;  85
	.byte #0x54, #0x00	;  84
	.byte #0x53, #0x00	;  83
	.byte #0x52, #0x00	;  82
	.byte #0x51, #0x00	;  81
	.byte #0x50, #0x00	;  80
	.byte #0x4f, #0x00	;  79
	.byte #0x4e, #0x00	;  78
	.byte #0x4d, #0x00	;  77
	.byte #0x4c, #0x00	;  76
	.byte #0x4b, #0x00	;  75
	.byte #0x4a, #0x00	;  74
	.byte #0x49, #0x00	;  73
	.byte #0x48, #0x00	;  72
	.byte #0x47, #0x00	;  71
	.byte #0x46, #0x00	;  70
	.byte #0x45, #0x00	;  69
	.byte #0x44, #0x00	;  68
	.byte #0x43, #0x00	;  67
	.byte #0x42, #0x00	;  66
	.byte #0x41, #0x00	;  65
	.byte #0x40, #0x00	;  64
	.byte #0x3f, #0x00	;  63
	.byte #0x3e, #0x00	;  62
	.byte #0x3d, #0x00	;  61
	.byte #0x3c, #0x00	;  60
	.byte #0x3b, #0x00	;  59
	.byte #0x3a, #0x00	;  58
	.byte #0x39, #0x00	;  57
	.byte #0x38, #0x00	;  56
	.byte #0x37, #0x00	;  55
	.byte #0x36, #0x00	;  54
	.byte #0x35, #0x00	;  53
	.byte #0x34, #0x00	;  52
	.byte #0x33, #0x00	;  51
	.byte #0x32, #0x00	;  50
	.byte #0x31, #0x00	;  49
	.byte #0x30, #0x00	;  48
	.byte #0x2f, #0x00	;  47
	.byte #0x2e, #0x00	;  46
	.byte #0x2d, #0x00	;  45
	.byte #0x2c, #0x00	;  44
	.byte #0x2b, #0x00	;  43
	.byte #0x2a, #0x00	;  42
	.byte #0x29, #0x00	;  41
	.byte #0x28, #0x00	;  40
	.byte #0x27, #0x00	;  39
	.byte #0x26, #0x00	;  38
	.byte #0x25, #0x00	;  37
	.byte #0x24, #0x00	;  36
	.byte #0x23, #0x00	;  35
	.byte #0x22, #0x00	;  34
	.byte #0x21, #0x00	;  33
	.byte #0x20, #0x00	;  32
	.byte #0x1f, #0x00	;  31
	.byte #0x1e, #0x00	;  30
	.byte #0x1d, #0x00	;  29
	.byte #0x1c, #0x00	;  28
	.byte #0x1b, #0x00	;  27
	.byte #0x1a, #0x00	;  26
	.byte #0x19, #0x00	;  25
	.byte #0x18, #0x00	;  24
	.byte #0x17, #0x00	;  23
	.byte #0x16, #0x00	;  22
	.byte #0x15, #0x00	;  21
	.byte #0x14, #0x00	;  20
	.byte #0x13, #0x00	;  19
	.byte #0x12, #0x00	;  18
	.byte #0x11, #0x00	;  17
	.byte #0x10, #0x00	;  16
	.byte #0x0f, #0x00	;  15
	.byte #0x0e, #0x00	;  14
	.byte #0x0d, #0x00	;  13
	.byte #0x0c, #0x00	;  12
	.byte #0x0b, #0x00	;  11
	.byte #0x0a, #0x00	;  10
	.byte #0x09, #0x00	;  9
	.byte #0x08, #0x00	;  8
	.byte #0x07, #0x00	;  7
	.byte #0x06, #0x00	;  6
	.byte #0x05, #0x00	;  5
	.byte #0x04, #0x00	;  4
	.byte #0x03, #0x00	;  3
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
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
	.ascii "                        SPI PROGRAM                        "
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
	.ascii "               Description                    "
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
	.db 0x82
	.ascii "    M      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Manual SPI Mode (Direct Register Control)     "
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
___str_6:
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
___str_7:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "    R      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Ramp wave                                     "
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
___str_9:
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
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii ">> Enter command: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "| $ %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii ">> SINE WAVE GENERATION COMPLETE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii ">> SIN WAVE GENERATION COMPLETE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii ">> TRIANGULAR WAVE GENERATION COMPLETE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii ">> RAMP WAVE GENERATION COMPLETE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii ">> INVALID INPUT"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Enter number (up to 2 characters): "
	.db 0x0a
	.db 0x0d
	.ascii "|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "$ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
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
	.area CONST   (CODE)
___str_21:
	.db 0x0d
	.db 0x0a
	.ascii " Inside Manual SPI"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0d
	.db 0x0a
	.ascii " Number is %d"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__ms_flag:
	.db #0x00	; 0
__xinit__transmission_complete:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
