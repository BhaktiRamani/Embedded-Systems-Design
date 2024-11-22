;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module 8051_i2c_eeprom
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _test_function
	.globl _EEPROM_hexdump
	.globl _main
	.globl _disable_interrupt0
	.globl _external_ISR0
	.globl _command_menu
	.globl _ui
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
	.globl _EEPROM_hexdump_PARM_2
	.globl _eeprom_write_PARM_2
	.globl _pcf8574_set_pin_PARM_2
	.globl _ACK
	.globl _pcf8574_init
	.globl _pcf8574_read_port
	.globl _pcf8574_read_pin
	.globl _pcf8574_write_port
	.globl _pcf8574_set_pin
	.globl _enable_interrupt0
	.globl _take_address
	.globl _take_data
	.globl _eeprom_write
	.globl _eeprom_read
	.globl _i2c_write
	.globl _i2c_read
	.globl _i2c_start
	.globl _handler_EEPROM_hexdump
	.globl _i2c_stop
	.globl _eeprom_reset
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
_ACK::
	.ds 2
_putchar_charToSend_65536_55:
	.ds 2
_pcf8574_read_pin_pin_65536_79:
	.ds 1
_pcf8574_write_port_value_65536_81:
	.ds 1
_pcf8574_set_pin_PARM_2:
	.ds 1
_pcf8574_set_pin_pin_65536_83:
	.ds 1
_pcf8574_set_pin_port_state_65536_84:
	.ds 1
_take_address_input_65537_90:
	.ds 4
_take_address_address_65538_94:
	.ds 2
_take_data_input_65537_100:
	.ds 4
_take_data_data_65538_104:
	.ds 1
_eeprom_write_PARM_2:
	.ds 1
_eeprom_write_address_65536_108:
	.ds 2
_eeprom_read_address_65536_115:
	.ds 2
_i2c_write_data_65536_120:
	.ds 1
_i2c_read_ACK_65536_125:
	.ds 2
_i2c_read_buff_65536_126:
	.ds 1
_EEPROM_hexdump_PARM_2:
	.ds 2
_EEPROM_hexdump_start_address_65536_131:
	.ds 2
_EEPROM_hexdump_current_address_65537_133:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_address_range_flag:
	.ds 2
_data_range_flag:
	.ds 2
_block:
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
	ljmp	_external_ISR0
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
;charToSend                Allocated with name '_putchar_charToSend_65536_55'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:76: int putchar(int charToSend) {
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
	mov	dptr,#_putchar_charToSend_65536_55
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:77: SBUF = charToSend;       /* Load character into serial buffer */
	mov	dptr,#_putchar_charToSend_65536_55
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	8051_i2c_eeprom.c:78: while (!TI);             /* Wait for transmission completion */
00101$:
;	8051_i2c_eeprom.c:79: TI = 0;                  /* Clear transmission flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:80: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:87: int getchar(void) {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	8051_i2c_eeprom.c:88: while (!RI);             /* Wait for reception completion */
00101$:
;	8051_i2c_eeprom.c:89: RI = 0;                  /* Clear reception flag */
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:90: return SBUF;             /* Return received character */
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ui'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:96: void ui()
;	-----------------------------------------
;	 function ui
;	-----------------------------------------
_ui:
;	8051_i2c_eeprom.c:98: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
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
;	8051_i2c_eeprom.c:99: printf("║           I2C Memory Management System v1.0            ║\n\r");
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
;	8051_i2c_eeprom.c:100: printf("╚════════════════════════════════════════════════════════╝\n\r");
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
;	8051_i2c_eeprom.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_menu'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:107: void command_menu()
;	-----------------------------------------
;	 function command_menu
;	-----------------------------------------
_command_menu:
;	8051_i2c_eeprom.c:109: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
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
;	8051_i2c_eeprom.c:110: printf("│  Command   │               Description                  │\n\r");
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
;	8051_i2c_eeprom.c:111: printf("├────────────┼────────────────────────────────────────────┤\n\r");
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
;	8051_i2c_eeprom.c:112: printf("│     R      │ Read from address                          │\n\r");
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
;	8051_i2c_eeprom.c:113: printf("│     W      │ Write data to address                      │\n\r");
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
;	8051_i2c_eeprom.c:114: printf("│     H      │ Display hex dump                           │\n\r");
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
;	8051_i2c_eeprom.c:115: printf("│     X      │ Reset memory system                        │\n\r");
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
;	8051_i2c_eeprom.c:116: printf("│     ?      │ Display this help menu                     │\n\r");
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
;	8051_i2c_eeprom.c:117: printf("│     I      │ IO Expander                                │\n\r");
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
;	8051_i2c_eeprom.c:118: printf("│     L      │ Leave IO Expander                          │\n\r");
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
;	8051_i2c_eeprom.c:119: printf("└────────────┴────────────────────────────────────────────┘\n\r");
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
;	8051_i2c_eeprom.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external_ISR0'
;------------------------------------------------------------
;data                      Allocated with name '_external_ISR0_data_65536_62'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:124: void external_ISR0(void) __interrupt (0)
;	-----------------------------------------
;	 function external_ISR0
;	-----------------------------------------
_external_ISR0:
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
;	8051_i2c_eeprom.c:129: data=pcf8574_read_pin(0);
	mov	dpl,#0x00
	lcall	_pcf8574_read_pin
	mov	r7,dpl
;	8051_i2c_eeprom.c:131: pcf8574_set_pin(7,data);
	mov	dptr,#_pcf8574_set_pin_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_pcf8574_set_pin
;	8051_i2c_eeprom.c:134: }
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
;Allocation info for local variables in function 'disable_interrupt0'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:136: void disable_interrupt0(void)
;	-----------------------------------------
;	 function disable_interrupt0
;	-----------------------------------------
_disable_interrupt0:
;	8051_i2c_eeprom.c:139: IT0 = 0;           // Set INT0 to be edge-triggered
;	assignBit
	clr	_IT0
;	8051_i2c_eeprom.c:140: EX0 = 0;          // Enable INT0 interrupt
;	assignBit
	clr	_EX0
;	8051_i2c_eeprom.c:141: EA = 0;           // Enable global interrupts
;	assignBit
	clr	_EA
;	8051_i2c_eeprom.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated with name '_main_user_input_131072_66'
;addr                      Allocated with name '_main_addr_262145_69'
;data                      Allocated with name '_main_data_262146_71'
;addr                      Allocated with name '_main_addr_262145_74'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:147: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8051_i2c_eeprom.c:150: P1 &= ~(1<<3);  // Set P1.3 as output
	anl	_P1,#0xf7
;	8051_i2c_eeprom.c:151: P1 &= ~(1<<4);  // Set P1.4 as output
	anl	_P1,#0xef
;	8051_i2c_eeprom.c:152: ui();
	lcall	_ui
;	8051_i2c_eeprom.c:153: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:154: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:155: while(1)
00117$:
;	8051_i2c_eeprom.c:157: char user_input = getchar();
	lcall	_getchar
	mov	r6,dpl
;	8051_i2c_eeprom.c:158: printf("| $ %c\n\r", user_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
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
;	8051_i2c_eeprom.c:159: printf("\n\r");
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
	pop	ar6
;	8051_i2c_eeprom.c:160: switch(user_input)
	cjne	r6,#0x3f,00165$
	ljmp	00109$
00165$:
	cjne	r6,#0x48,00166$
	ljmp	00111$
00166$:
	cjne	r6,#0x49,00167$
	ljmp	00112$
00167$:
	cjne	r6,#0x4c,00168$
	ljmp	00113$
00168$:
	cjne	r6,#0x52,00169$
	sjmp	00106$
00169$:
	cjne	r6,#0x57,00170$
	sjmp	00101$
00170$:
	cjne	r6,#0x58,00171$
	ljmp	00110$
00171$:
	ljmp	00114$
;	8051_i2c_eeprom.c:162: case 'W':
00101$:
;	8051_i2c_eeprom.c:164: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
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
;	8051_i2c_eeprom.c:166: addr = take_address();
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:167: if(!address_range_flag) 
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00103$
;	8051_i2c_eeprom.c:169: address_range_flag = 1;
	mov	dptr,#_address_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:170: break;
	ljmp	00117$
00103$:
;	8051_i2c_eeprom.c:173: data = take_data();
	push	ar7
	push	ar6
	lcall	_take_data
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:174: if(!data_range_flag) 
	mov	dptr,#_data_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00105$
;	8051_i2c_eeprom.c:176: data_range_flag = 1;
	mov	dptr,#_data_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:177: break;
	ljmp	00117$
00105$:
;	8051_i2c_eeprom.c:180: eeprom_write(addr, data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:181: break;
	ljmp	00117$
;	8051_i2c_eeprom.c:183: case 'R':
00106$:
;	8051_i2c_eeprom.c:185: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
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
;	8051_i2c_eeprom.c:187: addr = take_address(); 
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:188: if(!address_range_flag) 
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00108$
;	8051_i2c_eeprom.c:190: address_range_flag = 1;
	mov	dptr,#_address_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:191: break;
	ljmp	00117$
00108$:
;	8051_i2c_eeprom.c:193: printf("| Reading from Address 0x%03X           |\n\r", addr);
	push	ar7
	push	ar6
	push	ar6
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
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:194: eeprom_read(addr);
	mov	dpl,r6
	mov	dph,r7
	lcall	_eeprom_read
;	8051_i2c_eeprom.c:195: break;
	ljmp	00117$
;	8051_i2c_eeprom.c:198: case '?':
00109$:
;	8051_i2c_eeprom.c:199: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:200: break;
	ljmp	00117$
;	8051_i2c_eeprom.c:202: case 'X':
00110$:
;	8051_i2c_eeprom.c:203: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
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
;	8051_i2c_eeprom.c:204: eeprom_reset();
	lcall	_eeprom_reset
;	8051_i2c_eeprom.c:205: break;
	ljmp	00117$
;	8051_i2c_eeprom.c:207: case 'H':
00111$:
;	8051_i2c_eeprom.c:208: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
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
;	8051_i2c_eeprom.c:210: handler_EEPROM_hexdump();
	lcall	_handler_EEPROM_hexdump
;	8051_i2c_eeprom.c:212: case 'I':
00112$:
;	8051_i2c_eeprom.c:213: printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
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
;	8051_i2c_eeprom.c:214: enable_interrupt0();
	lcall	_enable_interrupt0
;	8051_i2c_eeprom.c:215: pcf8574_init();
	lcall	_pcf8574_init
;	8051_i2c_eeprom.c:217: case 'L':
00113$:
;	8051_i2c_eeprom.c:218: printf("\n┌───────────── IO EXPANDER LEAVE ───────────────┐\n\r");
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
;	8051_i2c_eeprom.c:219: disable_interrupt0();
	lcall	_disable_interrupt0
;	8051_i2c_eeprom.c:222: default:
00114$:
;	8051_i2c_eeprom.c:223: printf("INVALID INPUT\n\r");
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
;	8051_i2c_eeprom.c:225: }
;	8051_i2c_eeprom.c:228: }
	ljmp	00117$
;------------------------------------------------------------
;Allocation info for local variables in function 'pcf8574_init'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:230: void pcf8574_init()
;	-----------------------------------------
;	 function pcf8574_init
;	-----------------------------------------
_pcf8574_init:
;	8051_i2c_eeprom.c:232: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:233: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
	mov	dpl,#0x70
	lcall	_i2c_write
;	8051_i2c_eeprom.c:234: i2c_write(0xFF);
	mov	dpl,#0xff
	lcall	_i2c_write
;	8051_i2c_eeprom.c:235: i2c_stop();
;	8051_i2c_eeprom.c:236: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'pcf8574_read_port'
;------------------------------------------------------------
;data                      Allocated with name '_pcf8574_read_port_data_65536_78'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:237: uint8_t pcf8574_read_port(void) {
;	-----------------------------------------
;	 function pcf8574_read_port
;	-----------------------------------------
_pcf8574_read_port:
;	8051_i2c_eeprom.c:239: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:240: i2c_write(PCF8574_I2C_READ_ADDRESS);
	mov	dpl,#0x71
	lcall	_i2c_write
;	8051_i2c_eeprom.c:241: data = i2c_read(0);
	mov	dptr,#0x0000
	lcall	_i2c_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:242: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	8051_i2c_eeprom.c:243: return data;
	mov	dpl,r6
;	8051_i2c_eeprom.c:244: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pcf8574_read_pin'
;------------------------------------------------------------
;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_79'
;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_80'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:246: uint8_t pcf8574_read_pin(uint8_t pin) {
;	-----------------------------------------
;	 function pcf8574_read_pin
;	-----------------------------------------
_pcf8574_read_pin:
	mov	a,dpl
	mov	dptr,#_pcf8574_read_pin_pin_65536_79
	movx	@dptr,a
;	8051_i2c_eeprom.c:247: uint8_t port_state = pcf8574_read_port();
	lcall	_pcf8574_read_port
	mov	r7,dpl
;	8051_i2c_eeprom.c:248: return (port_state >> pin) & 0x01;
	mov	dptr,#_pcf8574_read_pin_pin_65536_79
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,r7
	sjmp	00104$
00103$:
	clr	c
	rrc	a
00104$:
	djnz	b,00103$
	anl	a,#0x01
;	8051_i2c_eeprom.c:249: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pcf8574_write_port'
;------------------------------------------------------------
;value                     Allocated with name '_pcf8574_write_port_value_65536_81'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:251: void pcf8574_write_port(uint8_t value)
;	-----------------------------------------
;	 function pcf8574_write_port
;	-----------------------------------------
_pcf8574_write_port:
	mov	a,dpl
	mov	dptr,#_pcf8574_write_port_value_65536_81
	movx	@dptr,a
;	8051_i2c_eeprom.c:253: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:254: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
	mov	dpl,#0x70
	lcall	_i2c_write
;	8051_i2c_eeprom.c:255: i2c_write(value);
	mov	dptr,#_pcf8574_write_port_value_65536_81
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write
;	8051_i2c_eeprom.c:256: i2c_stop();
;	8051_i2c_eeprom.c:257: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'pcf8574_set_pin'
;------------------------------------------------------------
;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_83'
;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_84'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:259: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
;	-----------------------------------------
;	 function pcf8574_set_pin
;	-----------------------------------------
_pcf8574_set_pin:
	mov	a,dpl
	mov	dptr,#_pcf8574_set_pin_pin_65536_83
	movx	@dptr,a
;	8051_i2c_eeprom.c:260: uint8_t port_state = pcf8574_read_port();
	lcall	_pcf8574_read_port
	mov	r7,dpl
;	8051_i2c_eeprom.c:261: if (value) {
	mov	dptr,#_pcf8574_set_pin_PARM_2
	movx	a,@dptr
	jz	00102$
;	8051_i2c_eeprom.c:262: port_state |= (1 << pin);  // Set pin high
	mov	dptr,#_pcf8574_set_pin_pin_65536_83
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	mov	r6,a
	mov	ar5,r7
	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
	mov	a,r6
	orl	a,r5
	movx	@dptr,a
	sjmp	00103$
00102$:
;	8051_i2c_eeprom.c:264: port_state &= ~(1 << pin); // Set pin low
	mov	dptr,#_pcf8574_set_pin_pin_65536_83
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00116$
00114$:
	add	a,acc
00116$:
	djnz	b,00114$
	cpl	a
	mov	r6,a
	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
	anl	a,r7
	movx	@dptr,a
00103$:
;	8051_i2c_eeprom.c:266: pcf8574_write_port(port_state);
	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
	movx	a,@dptr
	mov	dpl,a
;	8051_i2c_eeprom.c:267: }
	ljmp	_pcf8574_write_port
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_interrupt0'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:269: void enable_interrupt0(void)
;	-----------------------------------------
;	 function enable_interrupt0
;	-----------------------------------------
_enable_interrupt0:
;	8051_i2c_eeprom.c:272: IT0 = 1;           // Set INT0 to be edge-triggered
;	assignBit
	setb	_IT0
;	8051_i2c_eeprom.c:273: EX0 = 1;          // Enable INT0 interrupt
;	assignBit
	setb	_EX0
;	8051_i2c_eeprom.c:274: EA = 1;           // Enable global interrupts
;	assignBit
	setb	_EA
;	8051_i2c_eeprom.c:275: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_address'
;------------------------------------------------------------
;input                     Allocated with name '_take_address_input_65537_90'
;i                         Allocated with name '_take_address_i_65537_90'
;c                         Allocated with name '_take_address_c_65537_90'
;address                   Allocated with name '_take_address_address_65538_94'
;block                     Allocated with name '_take_address_block_65539_98'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:283: unsigned int take_address() 
;	-----------------------------------------
;	 function take_address
;	-----------------------------------------
_take_address:
;	8051_i2c_eeprom.c:285: printf("│ Enter address (hex, up to 3 characters): \n\r|");
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
;	8051_i2c_eeprom.c:286: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_address_input_65537_90
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_90 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_90 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_90 + 0x0003)
	movx	@dptr,a
;	8051_i2c_eeprom.c:290: printf("| $ ");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:292: while (i < 3) {
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
;	8051_i2c_eeprom.c:294: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:297: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	8051_i2c_eeprom.c:302: if ((c >= '0' && c <= '9') || 
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	8051_i2c_eeprom.c:303: (c >= 'a' && c <= 'f') || 
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	8051_i2c_eeprom.c:304: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	8051_i2c_eeprom.c:306: input[i] = c;
	mov	a,r6
	add	a,#_take_address_input_65537_90
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_90 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:307: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:308: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	8051_i2c_eeprom.c:312: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_address_input_65537_90
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_90 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:315: unsigned int address = 0;
	mov	dptr,#_take_address_address_65538_94
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:316: for(i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_address_input_65537_90
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_90 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	8051_i2c_eeprom.c:317: address = address * 16;
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	dptr,#_take_address_address_65538_94
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:318: if(input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	8051_i2c_eeprom.c:319: address += input[i] - '0';
	mov	r4,#0x00
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_94
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00122$:
;	8051_i2c_eeprom.c:320: else if(input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_address_input_65537_90
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_90 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	8051_i2c_eeprom.c:321: address += input[i] - 'A' + 10;
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0xc9
	add	a,r3
	mov	r3,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_take_address_address_65538_94
	mov	a,r3
	add	a,r1
	movx	@dptr,a
	mov	a,r4
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00118$:
;	8051_i2c_eeprom.c:322: else if(input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	8051_i2c_eeprom.c:323: address += input[i] - 'a' + 10;
	mov	r4,#0x00
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_94
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00130$:
;	8051_i2c_eeprom.c:316: for(i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	8051_i2c_eeprom.c:326: printf("\n\r│ Entered address: 0x%03X\n\r", address);
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:327: if(address > 0x7ff) 
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00127$
;	8051_i2c_eeprom.c:329: printf("╔══════════════════════════════════════════╗\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:330: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:331: printf("║     Please Enter Valid Address         ║\n\r");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:332: printf("╚══════════════════════════════════════════╝\n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:333: address_range_flag = 0;
	mov	dptr,#_address_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:334: return 0;
	mov	dptr,#0x0000
	ret
00127$:
;	8051_i2c_eeprom.c:336: unsigned int block = address/256;       //block address
	mov	ar4,r7
	mov	r5,#0x00
;	8051_i2c_eeprom.c:337: printf("| Block number %d                            \n\r", block);
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:338: address = address%256;     //word address
	mov	dptr,#_take_address_address_65538_94
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:341: return address;
	mov	dptr,#_take_address_address_65538_94
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	8051_i2c_eeprom.c:342: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65537_100'
;i                         Allocated with name '_take_data_i_65537_100'
;c                         Allocated with name '_take_data_c_65537_100'
;data                      Allocated with name '_take_data_data_65538_104'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:350: unsigned char take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	8051_i2c_eeprom.c:352: printf("│ Enter data (hex, up to 2 characters): \n\r|");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:353: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_data_input_65537_100
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_100 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_100 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_100 + 0x0003)
	movx	@dptr,a
;	8051_i2c_eeprom.c:357: printf("$ ");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:359: while (i < 3) {
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
;	8051_i2c_eeprom.c:361: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:364: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	8051_i2c_eeprom.c:369: if ((c >= '0' && c <= '9') ||
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	8051_i2c_eeprom.c:370: (c >= 'a' && c <= 'f') ||
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	8051_i2c_eeprom.c:371: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	8051_i2c_eeprom.c:373: input[i] = c;
	mov	a,r6
	add	a,#_take_data_input_65537_100
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_100 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:374: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:375: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	8051_i2c_eeprom.c:379: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65537_100
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_100 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:382: unsigned char data = 0;
	mov	dptr,#_take_data_data_65538_104
	movx	@dptr,a
;	8051_i2c_eeprom.c:383: for (i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_data_input_65537_100
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_100 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	8051_i2c_eeprom.c:384: data = data * 16;
	mov	dptr,#_take_data_data_65538_104
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	movx	@dptr,a
;	8051_i2c_eeprom.c:385: if (input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	8051_i2c_eeprom.c:386: data += input[i] - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_take_data_data_65538_104
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
	sjmp	00130$
00122$:
;	8051_i2c_eeprom.c:387: else if (input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_data_input_65537_100
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_100 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	8051_i2c_eeprom.c:388: data += input[i] - 'A' + 10;
	mov	ar4,r5
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_take_data_data_65538_104
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	movx	@dptr,a
	sjmp	00130$
00118$:
;	8051_i2c_eeprom.c:389: else if (input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	8051_i2c_eeprom.c:390: data += input[i] - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	dptr,#_take_data_data_65538_104
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
00130$:
;	8051_i2c_eeprom.c:383: for (i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	8051_i2c_eeprom.c:393: printf("\n\r│ Entered data: 0x%02X\n\r", data);
	mov	dptr,#_take_data_data_65538_104
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	8051_i2c_eeprom.c:394: if(data > 0xfe)
	mov	a,r7
	add	a,#0xff - 0xfe
	jnc	00127$
;	8051_i2c_eeprom.c:396: printf("Data out of Range\n\r");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:397: data_range_flag = 0;
	mov	dptr,#_data_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:398: return 0;
	mov	dpl,#0x00
	ret
00127$:
;	8051_i2c_eeprom.c:400: return data;
	mov	dpl,r7
;	8051_i2c_eeprom.c:402: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;data                      Allocated with name '_eeprom_write_PARM_2'
;address                   Allocated with name '_eeprom_write_address_65536_108'
;i                         Allocated with name '_eeprom_write_i_131072_113'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:418: int eeprom_write(unsigned int address, unsigned char data) 
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_address_65536_108
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:421: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:424: if(!i2c_write(EEPROM_ID | block | WRITE)) {
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
;	8051_i2c_eeprom.c:425: printf("Error: No ACK for device address (write)\n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:426: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:427: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	8051_i2c_eeprom.c:431: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_write_address_65536_108
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
;	8051_i2c_eeprom.c:432: printf("Error: No ACK for memory address\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:433: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:434: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	8051_i2c_eeprom.c:438: if(!i2c_write(data)) {
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
;	8051_i2c_eeprom.c:439: printf("Error: No ACK for data\n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:440: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:441: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	8051_i2c_eeprom.c:444: i2c_stop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:446: for(int i = 0; i<10; i++)
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
;	8051_i2c_eeprom.c:448: i2c_delay();
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
;	8051_i2c_eeprom.c:446: for(int i = 0; i<10; i++)
	inc	r3
	cjne	r3,#0x00,00109$
	inc	r4
	sjmp	00109$
00107$:
;	8051_i2c_eeprom.c:451: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
	mov	r4,#0x00
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:452: printf("│ Write successful!                             │\n\r");
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:453: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:454: return 1;  // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:464: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_eeprom_read_address_65536_115'
;result                    Allocated with name '_eeprom_read_result_65536_116'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:480: int eeprom_read(unsigned int address)
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_address_65536_115
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:486: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:489: if(!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	8051_i2c_eeprom.c:490: printf("Error: No ACK for device address (write mode)\n\r");
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:491: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:492: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	8051_i2c_eeprom.c:496: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_read_address_65536_115
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
;	8051_i2c_eeprom.c:497: printf("Error: No ACK for memory address\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:498: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:499: return -1;
	mov	dptr,#0xffff
	ret
00104$:
;	8051_i2c_eeprom.c:503: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	8051_i2c_eeprom.c:506: if(!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	8051_i2c_eeprom.c:507: printf("Error: No ACK for device address (read mode)\n\r");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:508: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:509: return -1;
	mov	dptr,#0xffff
	ret
00106$:
;	8051_i2c_eeprom.c:513: result = i2c_read(0);  // 0 means send NACK
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_i2c_read
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:515: printf("| 0x%03X : 0x%02X \n\r", address, result);
	mov	r5,#0x00
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:516: printf("│ Read successful!                 │\n\r");
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:517: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:518: i2c_stop();
	lcall	_i2c_stop
	pop	ar4
	pop	ar5
;	8051_i2c_eeprom.c:519: return result;
	mov	dpl,r4
	mov	dph,r5
;	8051_i2c_eeprom.c:520: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated with name '_i2c_write_data_65536_120'
;i                         Allocated with name '_i2c_write_i_65536_121'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:531: int i2c_write(unsigned char data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	a,dpl
	mov	dptr,#_i2c_write_data_65536_120
	movx	@dptr,a
;	8051_i2c_eeprom.c:535: for(i=0;i<=7;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	8051_i2c_eeprom.c:537: SDA = (data & 0x80) ? 1 : 0;    //msb first
	mov	dptr,#_i2c_write_data_65536_120
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:538: i2c_delay();        // Setup time for data
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:539: SCL=1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:540: i2c_delay();        // Hold time for clock
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:541: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:542: data = data << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_i2c_write_data_65536_120
	movx	@dptr,a
;	8051_i2c_eeprom.c:535: for(i=0;i<=7;i++)
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
;	8051_i2c_eeprom.c:546: SDA = 1;            // Release SDA for slave
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:547: SCL = 1;            // 9th clock pulse for ACK
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:548: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:549: if(SDA == 1)        // If SDA is still high, no ACK received
	jnb	_P1_4,00103$
;	8051_i2c_eeprom.c:552: printf("ACK DID NOT ARRIVE\n\r");
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:553: return 0;       // Error
	mov	dptr,#0x0000
	ret
00103$:
;	8051_i2c_eeprom.c:555: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:557: return 1;           // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:559: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ACK                       Allocated with name '_i2c_read_ACK_65536_125'
;buff                      Allocated with name '_i2c_read_buff_65536_126'
;i                         Allocated with name '_i2c_read_i_131072_127'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:569: int i2c_read(int ACK)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_read_ACK_65536_125
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:571: unsigned char buff=0;
	mov	dptr,#_i2c_read_buff_65536_126
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:572: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:573: for(int i=0;i<8;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	8051_i2c_eeprom.c:575: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:576: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:577: buff |= (SDA << (7 - i));
	mov	c,_P1_4
	clr	a
	rlc	a
	mov	r5,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,r5
	sjmp	00119$
00117$:
	add	a,acc
00119$:
	djnz	b,00117$
	mov	r4,a
	mov	dptr,#_i2c_read_buff_65536_126
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:578: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:579: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:573: for(int i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	8051_i2c_eeprom.c:583: SDA = !ACK;         // ACK = 0, NACK = 1
	mov	dptr,#_i2c_read_ACK_65536_125
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	cjne	a,#0x01,00121$
00121$:
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:584: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:585: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:586: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:588: return buff;
	mov	dptr,#_i2c_read_buff_65536_126
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	8051_i2c_eeprom.c:589: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:596: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	8051_i2c_eeprom.c:598: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:599: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:600: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:601: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:602: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:603: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:604: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:605: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:606: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EEPROM_hexdump'
;------------------------------------------------------------
;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_131'
;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_133'
;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_133'
;i                         Allocated with name '_EEPROM_hexdump_i_196609_135'
;data                      Allocated with name '_EEPROM_hexdump_data_327682_141'
;i                         Allocated with name '_EEPROM_hexdump_i_196609_143'
;data                      Allocated with name '_EEPROM_hexdump_data_327682_146'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:615: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
;	-----------------------------------------
;	 function EEPROM_hexdump
;	-----------------------------------------
_EEPROM_hexdump:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:617: printf("\r\n----------------------------------------------------------------\r\n");
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:618: printf("                    EEPROM Hex Dump                               \r\n");
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:619: printf("----------------------------------------------------------------\r\n");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:620: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:624: uint16_t current_address = start_address;
	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:627: while (current_address <= end_address) {
	mov	dptr,#_EEPROM_hexdump_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00119$:
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
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
;	8051_i2c_eeprom.c:629: printf("%03X: ", current_address & 0xFFF0);
	anl	ar4,#0xf0
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:632: for (uint8_t i = 0; i < 16; i++) {
	mov	r5,#0x00
00123$:
	cjne	r5,#0x10,00184$
00184$:
	jc	00185$
	ljmp	00110$
00185$:
;	8051_i2c_eeprom.c:633: if (current_address + i <= end_address) {
	mov	ar3,r5
	mov	r4,#0x00
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
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
;	8051_i2c_eeprom.c:635: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_i2c_start
;	8051_i2c_eeprom.c:638: if (!i2c_write(EEPROM_ID | WRITE)) {
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
;	8051_i2c_eeprom.c:639: printf("Error: Device not responding\r\n");
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:640: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:641: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	8051_i2c_eeprom.c:645: if (!i2c_write((unsigned char)(current_address + i))) {
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
;	8051_i2c_eeprom.c:646: printf("Error: Address write failed\r\n");
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:647: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:648: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	8051_i2c_eeprom.c:652: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	8051_i2c_eeprom.c:655: if (!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	8051_i2c_eeprom.c:656: printf("Error: Device not responding in read mode\r\n");
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:657: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:658: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	8051_i2c_eeprom.c:662: unsigned char data = i2c_read(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	mov	r3,dpl
;	8051_i2c_eeprom.c:663: printf("%02X ", data);
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8051_i2c_eeprom.c:665: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:666: i2c_delay(); // Small delay between reads
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00124$
00108$:
;	8051_i2c_eeprom.c:668: printf("   "); // Print spaces for addresses beyond end_address
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
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
;	8051_i2c_eeprom.c:632: for (uint8_t i = 0; i < 16; i++) {
	inc	r5
	ljmp	00123$
00110$:
;	8051_i2c_eeprom.c:673: printf(" | ");
	push	ar7
	push	ar6
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:674: for (uint8_t i = 0; i < 16; i++) {
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
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
;	8051_i2c_eeprom.c:675: if (current_address + i <= end_address) {
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
;	8051_i2c_eeprom.c:677: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_start
;	8051_i2c_eeprom.c:678: i2c_write(EEPROM_ID | WRITE);
	mov	dpl,#0xa0
	lcall	_i2c_write
	pop	ar3
	pop	ar4
;	8051_i2c_eeprom.c:679: i2c_write((unsigned char)(current_address + i));
	mov	ar2,r4
	mov	a,r3
	add	a,r2
	mov	dpl,a
	push	ar4
	push	ar3
	lcall	_i2c_write
;	8051_i2c_eeprom.c:680: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:681: i2c_write(EEPROM_ID | READ);
	mov	dpl,#0xa1
	lcall	_i2c_write
;	8051_i2c_eeprom.c:682: unsigned char data = i2c_read(0);
	mov	dptr,#0x0000
	lcall	_i2c_read
	mov	r1,dpl
;	8051_i2c_eeprom.c:683: i2c_stop();
	push	ar1
	lcall	_i2c_stop
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:686: if (data >= 32 && data <= 126) {
	cjne	r1,#0x20,00193$
00193$:
	jc	00112$
	mov	a,r1
	add	a,#0xff - 0x7e
	jc	00112$
;	8051_i2c_eeprom.c:687: putchar(data);
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
;	8051_i2c_eeprom.c:689: putchar('.');
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
;	8051_i2c_eeprom.c:692: putchar(' ');
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
;	8051_i2c_eeprom.c:674: for (uint8_t i = 0; i < 16; i++) {
	inc	r3
	ljmp	00126$
00118$:
;	8051_i2c_eeprom.c:696: printf("\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:697: current_address += 16;
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
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
	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00119$
00121$:
;	8051_i2c_eeprom.c:700: printf("----------------------------------------------------------------\r\n");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:701: return 1;
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:702: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_EEPROM_hexdump'
;------------------------------------------------------------
;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_152'
;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_154'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:705: void handler_EEPROM_hexdump(void) {
;	-----------------------------------------
;	 function handler_EEPROM_hexdump
;	-----------------------------------------
_handler_EEPROM_hexdump:
;	8051_i2c_eeprom.c:706: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:707: uint16_t start_addr = take_address();
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:709: if (start_addr > ADDR_MAX) {
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00102$
;	8051_i2c_eeprom.c:710: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:711: return;
	ret
00102$:
;	8051_i2c_eeprom.c:714: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:715: uint16_t end_addr = take_address();
	lcall	_take_address
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:717: if (end_addr > ADDR_MAX || end_addr < start_addr) {
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
;	8051_i2c_eeprom.c:718: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
	push	ar6
	push	ar7
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	8051_i2c_eeprom.c:719: return;
	ret
00104$:
;	8051_i2c_eeprom.c:722: EEPROM_hexdump(start_addr, end_addr);
	mov	dptr,#_EEPROM_hexdump_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:723: }
	ljmp	_EEPROM_hexdump
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:855: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	8051_i2c_eeprom.c:857: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:858: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:859: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:860: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:861: SDA = 1; 
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:862: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_reset'
;------------------------------------------------------------
;i                         Allocated with name '_eeprom_reset_i_131072_159'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:872: void eeprom_reset()
;	-----------------------------------------
;	 function eeprom_reset
;	-----------------------------------------
_eeprom_reset:
;	8051_i2c_eeprom.c:874: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:875: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:876: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:877: for(int i = 0; i<10; i++)
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
;	8051_i2c_eeprom.c:879: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:880: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:877: for(int i = 0; i<10; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	8051_i2c_eeprom.c:882: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:883: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:884: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:885: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:886: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_delay_i_131072_162'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:895: void i2c_delay() 
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
;	8051_i2c_eeprom.c:903: for(int i = 0; i<500; i++);
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
;	8051_i2c_eeprom.c:904: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'test_function'
;------------------------------------------------------------
;test_data                 Allocated with name '_test_function_test_data_65537_164'
;address                   Allocated with name '_test_function_address_65537_164'
;i                         Allocated with name '_test_function_i_131073_165'
;read_data                 Allocated with name '_test_function_read_data_65538_167'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:906: void test_function()
;	-----------------------------------------
;	 function test_function
;	-----------------------------------------
_test_function:
;	8051_i2c_eeprom.c:908: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:909: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:915: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x26
	push	acc
	clr	a
	push	acc
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:916: eeprom_write(address, test_data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:917: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:919: for(int i = 0; i<100; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	8051_i2c_eeprom.c:921: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:919: for(int i = 0; i<100; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00101$:
;	8051_i2c_eeprom.c:925: unsigned char read_data = eeprom_read(address);
	mov	dptr,#0x0002
	lcall	_eeprom_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:926: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
;	8051_i2c_eeprom.c:929: if(read_data == test_data) {
	cjne	r6,#0x26,00103$
;	8051_i2c_eeprom.c:930: printf("MATCH - Write/Read successful!\n\r");
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00103$:
;	8051_i2c_eeprom.c:932: printf("ERROR - Data mismatch!\n\r");
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:936: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0xe2
	.db 0x95
	.db 0x94
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x97
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0xe2
	.db 0x95
	.db 0x91
	.ascii "           I2C Memory Management System v1.0            "
	.db 0xe2
	.db 0x95
	.db 0x91
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0xe2
	.db 0x95
	.db 0x9a
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x9d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
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
	.db 0xac
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_4:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "  Command   "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "               Description                  "
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
	.db 0xa4
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii "     R      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Read from address                          "
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
	.ascii "     W      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Write data to address                      "
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
	.ascii "     H      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Display hex dump                           "
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
	.ascii "     X      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Reset memory system                        "
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
	.ascii "     ?      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Display this help menu                     "
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
	.ascii "     I      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " IO Expander                                "
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
	.ascii "     L      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Leave IO Expander                          "
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
	.db 0x98
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "| $ %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
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
	.ascii " WRITE OPERATION "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_17:
	.db 0x0a
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
	.ascii " READ OPERATION "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_18:
	.ascii "| Reading from Address 0x%03X           |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
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
	.ascii " RESET OPERATION "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_20:
	.db 0x0a
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
	.ascii " HEX DUMP OPERATION "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_21:
	.db 0x0a
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
	.ascii " IO EXPANDER OPERATION "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_22:
	.db 0x0a
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
	.ascii " IO EXPANDER LEAVE "
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
	.db 0x80
	.db 0xe2
	.db 0x94
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
___str_23:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Enter address (hex, up to 3 characters): "
	.db 0x0a
	.db 0x0d
	.ascii "|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "| $ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Entered address: 0x%03X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0xe2
	.db 0x95
	.db 0x94
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x97
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0xe2
	.db 0x95
	.db 0x91
	.ascii "       ! ADDRESS OUT OF RANGE !         "
	.db 0xe2
	.db 0x95
	.db 0x91
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0xe2
	.db 0x95
	.db 0x91
	.ascii "     Please Enter Valid Address         "
	.db 0xe2
	.db 0x95
	.db 0x91
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0xe2
	.db 0x95
	.db 0x9a
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x90
	.db 0xe2
	.db 0x95
	.db 0x9d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "| Block number %d                            "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Enter data (hex, up to 2 characters): "
	.db 0x0a
	.db 0x0d
	.ascii "|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "$ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
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
___str_35:
	.ascii "Data out of Range"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "Error: No ACK for device address (write)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "Error: No ACK for memory address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "Error: No ACK for data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
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
___str_41:
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
___str_42:
	.ascii "Error: No ACK for device address (write mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "Error: No ACK for device address (read mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "| 0x%03X : 0x%02X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
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
___str_46:
	.ascii "ACK DID NOT ARRIVE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0d
	.db 0x0a
	.ascii "------------------------------------------------------------"
	.ascii "----"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "                    EEPROM Hex Dump                         "
	.ascii "      "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "------------------------------------------------------------"
	.ascii "----"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "%03X: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "Error: Device not responding"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "Error: Address write failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "Error: Device not responding in read mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii " | "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.db 0x0a
	.ascii "Enter Start Address for HEX Dump (000-7FF):"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.ascii "Enter End Address for HEX Dump (000-7FF):"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii "Writing data 0x%02X to address 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "Read back from address 0x%02X: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "MATCH - Write/Read successful!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "ERROR - Data mismatch!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__address_range_flag:
	.byte #0x01, #0x00	;  1
__xinit__data_range_flag:
	.byte #0x01, #0x00	;  1
__xinit__block:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
