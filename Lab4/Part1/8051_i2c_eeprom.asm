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
	.globl _main
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
	.globl _eeprom_write_PARM_2
	.globl _ACK
	.globl _take_address
	.globl _take_data
	.globl _eeprom_write
	.globl _eeprom_read
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
_putchar_charToSend_65536_48:
	.ds 2
_take_address_input_65537_66:
	.ds 4
_take_address_address_65538_70:
	.ds 2
_take_data_input_65537_76:
	.ds 4
_take_data_data_65538_80:
	.ds 1
_eeprom_write_PARM_2:
	.ds 1
_eeprom_write_address_65536_84:
	.ds 2
_eeprom_read_address_65536_92:
	.ds 2
_i2c_write_data_65536_98:
	.ds 1
_i2c_read_ACK_65536_103:
	.ds 2
_i2c_read_buff_65536_104:
	.ds 1
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
;charToSend                Allocated with name '_putchar_charToSend_65536_48'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:30: int putchar(int charToSend) {
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
	mov	dptr,#_putchar_charToSend_65536_48
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:31: SBUF = charToSend;  // Send character to serial buffer
	mov	dptr,#_putchar_charToSend_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	8051_i2c_eeprom.c:32: while (!TI);        // Wait for transmission to complete
00101$:
;	8051_i2c_eeprom.c:33: TI = 0;            // Clear transmission interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:34: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:37: int getchar(void) 
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	8051_i2c_eeprom.c:39: while (!RI);        // Wait for reception to complete
00101$:
;	8051_i2c_eeprom.c:40: RI = 0;            // Clear reception interrupt flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:41: return SBUF;       // Return received character
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ui'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:44: void ui()
;	-----------------------------------------
;	 function ui
;	-----------------------------------------
_ui:
;	8051_i2c_eeprom.c:46: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
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
;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
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
;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
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
;	8051_i2c_eeprom.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_menu'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:52: void command_menu()
;	-----------------------------------------
;	 function command_menu
;	-----------------------------------------
_command_menu:
;	8051_i2c_eeprom.c:54: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
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
;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
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
;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
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
;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
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
;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
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
;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
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
;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
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
;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
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
;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
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
;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
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
;	8051_i2c_eeprom.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated with name '_main_user_input_131072_55'
;addr                      Allocated with name '_main_addr_262145_58'
;data                      Allocated with name '_main_data_262146_60'
;addr                      Allocated with name '_main_addr_262145_63'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:67: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8051_i2c_eeprom.c:70: P1 &= ~(1<<3);  // Set P1.3 as output
	anl	_P1,#0xf7
;	8051_i2c_eeprom.c:71: P1 &= ~(1<<4);  // Set P1.4 as output
	anl	_P1,#0xef
;	8051_i2c_eeprom.c:72: ui();
	lcall	_ui
;	8051_i2c_eeprom.c:73: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:74: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:75: while(1)
00113$:
;	8051_i2c_eeprom.c:77: char user_input = getchar();
	lcall	_getchar
	mov	r6,dpl
;	8051_i2c_eeprom.c:78: printf("| $ %c\n\r", user_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
;	8051_i2c_eeprom.c:79: switch(user_input)
	cjne	r6,#0x3f,00145$
	ljmp	00109$
00145$:
	cjne	r6,#0x52,00146$
	sjmp	00106$
00146$:
	cjne	r6,#0x57,00147$
	sjmp	00148$
00147$:
	ljmp	00110$
00148$:
;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
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
;	8051_i2c_eeprom.c:85: addr = take_address();
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:86: if(!address_range_flag) 
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00103$
;	8051_i2c_eeprom.c:88: address_range_flag = 1;
	mov	dptr,#_address_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:89: break;
	sjmp	00113$
00103$:
;	8051_i2c_eeprom.c:92: data = take_data();
	push	ar7
	push	ar6
	lcall	_take_data
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:93: if(!data_range_flag) 
	mov	dptr,#_data_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00105$
;	8051_i2c_eeprom.c:95: data_range_flag = 1;
	mov	dptr,#_data_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:96: break;
	ljmp	00113$
00105$:
;	8051_i2c_eeprom.c:98: eeprom_write(addr, data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:99: break;
	ljmp	00113$
;	8051_i2c_eeprom.c:101: case 'R':
00106$:
;	8051_i2c_eeprom.c:103: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
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
;	8051_i2c_eeprom.c:105: addr = take_address(); 
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:106: if(!address_range_flag) 
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00108$
;	8051_i2c_eeprom.c:108: address_range_flag = 1;
	mov	dptr,#_address_range_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:109: break;
	ljmp	00113$
00108$:
;	8051_i2c_eeprom.c:111: printf("| Reading from Address 0x%03X           |\n\r", addr);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:112: eeprom_read(addr);
	mov	dpl,r6
	mov	dph,r7
	lcall	_eeprom_read
;	8051_i2c_eeprom.c:113: break;
	ljmp	00113$
;	8051_i2c_eeprom.c:116: case '?':
00109$:
;	8051_i2c_eeprom.c:117: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:118: break;
	ljmp	00113$
;	8051_i2c_eeprom.c:120: default:
00110$:
;	8051_i2c_eeprom.c:121: printf("INVALID INPUT\n\r");
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
;	8051_i2c_eeprom.c:123: }
;	8051_i2c_eeprom.c:126: }
	ljmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'take_address'
;------------------------------------------------------------
;input                     Allocated with name '_take_address_input_65537_66'
;i                         Allocated with name '_take_address_i_65537_66'
;c                         Allocated with name '_take_address_c_65537_66'
;address                   Allocated with name '_take_address_address_65538_70'
;block                     Allocated with name '_take_address_block_65539_74'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:128: unsigned int take_address() 
;	-----------------------------------------
;	 function take_address
;	-----------------------------------------
_take_address:
;	8051_i2c_eeprom.c:130: printf("│ Enter address (hex, up to 3 characters): \n\r|");
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
;	8051_i2c_eeprom.c:131: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_address_input_65537_66
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_66 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_66 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_66 + 0x0003)
	movx	@dptr,a
;	8051_i2c_eeprom.c:135: printf("| $ ");
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
;	8051_i2c_eeprom.c:137: while (i < 3) {
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
;	8051_i2c_eeprom.c:139: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:142: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	8051_i2c_eeprom.c:147: if ((c >= '0' && c <= '9') || 
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	8051_i2c_eeprom.c:148: (c >= 'a' && c <= 'f') || 
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	8051_i2c_eeprom.c:149: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	8051_i2c_eeprom.c:151: input[i] = c;
	mov	a,r6
	add	a,#_take_address_input_65537_66
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_66 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:152: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:153: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	8051_i2c_eeprom.c:157: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_address_input_65537_66
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_66 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:160: unsigned int address = 0;
	mov	dptr,#_take_address_address_65538_70
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:161: for(i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_address_input_65537_66
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_66 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	8051_i2c_eeprom.c:162: address = address * 16;
	mov	dptr,#_take_address_address_65538_70
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
	mov	dptr,#_take_address_address_65538_70
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:163: if(input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	8051_i2c_eeprom.c:164: address += input[i] - '0';
	mov	r4,#0x00
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_take_address_address_65538_70
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_70
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00122$:
;	8051_i2c_eeprom.c:165: else if(input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_address_input_65537_66
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_66 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	8051_i2c_eeprom.c:166: address += input[i] - 'A' + 10;
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0xc9
	add	a,r3
	mov	r3,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_70
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_take_address_address_65538_70
	mov	a,r3
	add	a,r1
	movx	@dptr,a
	mov	a,r4
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00118$:
;	8051_i2c_eeprom.c:167: else if(input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	8051_i2c_eeprom.c:168: address += input[i] - 'a' + 10;
	mov	r4,#0x00
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_70
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_70
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00130$:
;	8051_i2c_eeprom.c:161: for(i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	8051_i2c_eeprom.c:171: printf("\n\r│ Entered address: 0x%03X\n\r", address);
	mov	dptr,#_take_address_address_65538_70
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
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
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:172: if(address > 0x7ff) 
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00127$
;	8051_i2c_eeprom.c:174: printf("╔══════════════════════════════════════════╗\n\r");
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
;	8051_i2c_eeprom.c:175: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
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
;	8051_i2c_eeprom.c:176: printf("║     Please Enter Valid Address         ║\n\r");
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
;	8051_i2c_eeprom.c:177: printf("╚══════════════════════════════════════════╝\n\r");
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
;	8051_i2c_eeprom.c:178: address_range_flag = 0;
	mov	dptr,#_address_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:179: return 0;
	mov	dptr,#0x0000
	ret
00127$:
;	8051_i2c_eeprom.c:183: address = address%256;     //word address
	mov	dptr,#_take_address_address_65538_70
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:186: return address;
	mov	dptr,#_take_address_address_65538_70
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	8051_i2c_eeprom.c:187: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65537_76'
;i                         Allocated with name '_take_data_i_65537_76'
;c                         Allocated with name '_take_data_c_65537_76'
;data                      Allocated with name '_take_data_data_65538_80'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:189: unsigned char take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	8051_i2c_eeprom.c:191: printf("│ Enter data (hex, up to 2 characters): \n\r|");
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
;	8051_i2c_eeprom.c:192: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_data_input_65537_76
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_76 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_76 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_76 + 0x0003)
	movx	@dptr,a
;	8051_i2c_eeprom.c:196: printf("$ ");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:198: while (i < 3) {
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
;	8051_i2c_eeprom.c:200: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:203: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	8051_i2c_eeprom.c:208: if ((c >= '0' && c <= '9') || 
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	8051_i2c_eeprom.c:209: (c >= 'a' && c <= 'f') || 
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	8051_i2c_eeprom.c:210: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	8051_i2c_eeprom.c:212: input[i] = c;
	mov	a,r6
	add	a,#_take_data_input_65537_76
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_76 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:213: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:214: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	8051_i2c_eeprom.c:218: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65537_76
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_76 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:221: unsigned char data = 0;
	mov	dptr,#_take_data_data_65538_80
	movx	@dptr,a
;	8051_i2c_eeprom.c:222: for (i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_data_input_65537_76
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_76 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	8051_i2c_eeprom.c:223: data = data * 16;
	mov	dptr,#_take_data_data_65538_80
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	movx	@dptr,a
;	8051_i2c_eeprom.c:224: if (input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	8051_i2c_eeprom.c:225: data += input[i] - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_take_data_data_65538_80
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
	sjmp	00130$
00122$:
;	8051_i2c_eeprom.c:226: else if (input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_data_input_65537_76
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_76 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	8051_i2c_eeprom.c:227: data += input[i] - 'A' + 10;
	mov	ar4,r5
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_take_data_data_65538_80
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	movx	@dptr,a
	sjmp	00130$
00118$:
;	8051_i2c_eeprom.c:228: else if (input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	8051_i2c_eeprom.c:229: data += input[i] - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	dptr,#_take_data_data_65538_80
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
00130$:
;	8051_i2c_eeprom.c:222: for (i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	8051_i2c_eeprom.c:232: printf("\n\r│ Entered data: 0x%02X\n\r", data);
	mov	dptr,#_take_data_data_65538_80
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	8051_i2c_eeprom.c:233: if(data > 254) 
	mov	a,r7
	add	a,#0xff - 0xfe
	jnc	00127$
;	8051_i2c_eeprom.c:235: printf("Data out of Range\n\r");
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
;	8051_i2c_eeprom.c:236: data_range_flag = 0;
	mov	dptr,#_data_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:237: return 0;
	mov	dpl,#0x00
	ret
00127$:
;	8051_i2c_eeprom.c:239: return data;
	mov	dpl,r7
;	8051_i2c_eeprom.c:241: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;data                      Allocated with name '_eeprom_write_PARM_2'
;address                   Allocated with name '_eeprom_write_address_65536_84'
;i                         Allocated with name '_eeprom_write_i_196608_90'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:243: int eeprom_write(unsigned int address, unsigned char data) 
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_address_65536_84
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:245: if(address_range_flag & data_range_flag)
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_data_range_flag
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	jnz	00140$
	ljmp	00109$
00140$:
;	8051_i2c_eeprom.c:248: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:251: if(!i2c_write(EEPROM_ID | block | WRITE)) {
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
;	8051_i2c_eeprom.c:252: printf("Error: No ACK for device address (write)\n\r");
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
;	8051_i2c_eeprom.c:253: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:254: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	8051_i2c_eeprom.c:258: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_write_address_65536_84
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
;	8051_i2c_eeprom.c:259: printf("Error: No ACK for memory address\n\r");
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
;	8051_i2c_eeprom.c:260: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:261: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	8051_i2c_eeprom.c:265: if(!i2c_write(data)) {
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
;	8051_i2c_eeprom.c:266: printf("Error: No ACK for data\n\r");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:267: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:268: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	8051_i2c_eeprom.c:271: i2c_stop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:273: for(int i = 0; i<100; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
	clr	c
	mov	a,r3
	subb	a,#0x64
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	8051_i2c_eeprom.c:275: i2c_delay();
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
;	8051_i2c_eeprom.c:273: for(int i = 0; i<100; i++)
	inc	r3
	cjne	r3,#0x00,00111$
	inc	r4
	sjmp	00111$
00107$:
;	8051_i2c_eeprom.c:277: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
	mov	r4,#0x00
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:278: printf("│ Write successful!                             │\n\r");
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
;	8051_i2c_eeprom.c:279: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:280: return 1;  // Success
	mov	dptr,#0x0001
	ret
00109$:
;	8051_i2c_eeprom.c:282: return 0;
	mov	dptr,#0x0000
;	8051_i2c_eeprom.c:289: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_eeprom_read_address_65536_92'
;result                    Allocated with name '_eeprom_read_result_131072_94'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:291: int eeprom_read(unsigned int address) 
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_address_65536_92
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:293: if(address_range_flag)
	mov	dptr,#_address_range_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00127$
	ljmp	00108$
00127$:
;	8051_i2c_eeprom.c:298: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:301: if(!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	8051_i2c_eeprom.c:302: printf("Error: No ACK for device address (write mode)\n\r");
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
;	8051_i2c_eeprom.c:303: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:304: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	8051_i2c_eeprom.c:308: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_read_address_65536_92
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
;	8051_i2c_eeprom.c:309: printf("Error: No ACK for memory address\n\r");
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
;	8051_i2c_eeprom.c:310: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:311: return -1;
	mov	dptr,#0xffff
	ret
00104$:
;	8051_i2c_eeprom.c:315: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	8051_i2c_eeprom.c:318: if(!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	8051_i2c_eeprom.c:319: printf("Error: No ACK for device address (read mode)\n\r");
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
;	8051_i2c_eeprom.c:320: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:321: return -1;
	mov	dptr,#0xffff
	ret
00106$:
;	8051_i2c_eeprom.c:325: result = i2c_read(0);  // 0 means send NACK
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_i2c_read
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:326: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:327: printf("| 0x%03X : 0x%02X \n\r", address, result);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:328: printf("│ Read successful!                 │\n\r");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:329: printf("└───────────────────────────────────────────────┘\n\r");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:330: i2c_stop();
	lcall	_i2c_stop
	pop	ar4
	pop	ar5
;	8051_i2c_eeprom.c:331: return result;
	mov	dpl,r4
	mov	dph,r5
	ret
00108$:
;	8051_i2c_eeprom.c:333: return 0;
	mov	dptr,#0x0000
;	8051_i2c_eeprom.c:343: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated with name '_i2c_write_data_65536_98'
;i                         Allocated with name '_i2c_write_i_65536_99'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:346: int i2c_write(unsigned char data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	a,dpl
	mov	dptr,#_i2c_write_data_65536_98
	movx	@dptr,a
;	8051_i2c_eeprom.c:350: for(i=0;i<=7;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	8051_i2c_eeprom.c:352: SDA = (data & 0x80) ? 1 : 0;    //msb first
	mov	dptr,#_i2c_write_data_65536_98
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:353: i2c_delay();        // Setup time for data
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:354: SCL=1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:355: i2c_delay();        // Hold time for clock
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:356: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:357: data = data << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_i2c_write_data_65536_98
	movx	@dptr,a
;	8051_i2c_eeprom.c:350: for(i=0;i<=7;i++)
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
;	8051_i2c_eeprom.c:361: SDA = 1;            // Release SDA for slave
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:362: SCL = 1;            // 9th clock pulse for ACK
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:363: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:364: if(SDA == 1)        // If SDA is still high, no ACK received
	jnb	_P1_4,00103$
;	8051_i2c_eeprom.c:367: printf("ACK DID NOT ARRIVE\n\r");
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
;	8051_i2c_eeprom.c:368: return 0;       // Error
	mov	dptr,#0x0000
	ret
00103$:
;	8051_i2c_eeprom.c:370: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:372: return 1;           // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:374: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
;buff                      Allocated with name '_i2c_read_buff_65536_104'
;i                         Allocated with name '_i2c_read_i_131072_105'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:375: int i2c_read(int ACK)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_read_ACK_65536_103
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:377: unsigned char buff=0;
	mov	dptr,#_i2c_read_buff_65536_104
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:378: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:379: for(int i=0;i<8;i++)
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
;	8051_i2c_eeprom.c:381: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:382: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:383: buff |= (SDA << (7 - i));
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
	mov	dptr,#_i2c_read_buff_65536_104
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:384: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:385: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:379: for(int i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	8051_i2c_eeprom.c:389: SDA = !ACK;         // ACK = 0, NACK = 1
	mov	dptr,#_i2c_read_ACK_65536_103
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
;	8051_i2c_eeprom.c:390: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:391: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:392: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:394: return buff;
	mov	dptr,#_i2c_read_buff_65536_104
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	8051_i2c_eeprom.c:395: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:396: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	8051_i2c_eeprom.c:398: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:399: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:400: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:401: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:402: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:403: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:404: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:405: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:406: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:408: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	8051_i2c_eeprom.c:410: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:411: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:412: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:413: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:414: SDA = 1; 
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:415: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_delay_i_131072_112'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:417: void i2c_delay() 
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
;	8051_i2c_eeprom.c:425: for(int i = 0; i<500; i++);
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
;	8051_i2c_eeprom.c:426: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'test_function'
;------------------------------------------------------------
;test_data                 Allocated with name '_test_function_test_data_65537_114'
;address                   Allocated with name '_test_function_address_65537_114'
;i                         Allocated with name '_test_function_i_131073_115'
;read_data                 Allocated with name '_test_function_read_data_65538_117'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:428: void test_function()
;	-----------------------------------------
;	 function test_function
;	-----------------------------------------
_test_function:
;	8051_i2c_eeprom.c:430: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:431: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:437: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x26
	push	acc
	clr	a
	push	acc
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:438: eeprom_write(address, test_data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:439: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:441: for(int i = 0; i<100; i++)
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
;	8051_i2c_eeprom.c:443: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:441: for(int i = 0; i<100; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00101$:
;	8051_i2c_eeprom.c:447: unsigned char read_data = eeprom_read(address);
	mov	dptr,#0x0002
	lcall	_eeprom_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:448: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
;	8051_i2c_eeprom.c:451: if(read_data == test_data) {
	cjne	r6,#0x26,00103$
;	8051_i2c_eeprom.c:452: printf("MATCH - Write/Read successful!\n\r");
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
	ret
00103$:
;	8051_i2c_eeprom.c:454: printf("ERROR - Data mismatch!\n\r");
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	8051_i2c_eeprom.c:458: }
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
	.ascii "     Q      "
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Quit program                               "
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
___str_13:
	.ascii "| $ %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
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
___str_15:
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
___str_16:
	.ascii "| Reading from Address 0x%03X           |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
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
___str_19:
	.ascii "| $ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
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
___str_21:
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
___str_22:
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
___str_23:
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
___str_24:
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
___str_25:
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
___str_26:
	.ascii "$ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
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
___str_28:
	.ascii "Data out of Range"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Error: No ACK for device address (write)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Error: No ACK for memory address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Error: No ACK for data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
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
___str_34:
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
___str_35:
	.ascii "Error: No ACK for device address (write mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "Error: No ACK for device address (read mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
	.ascii " "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "| 0x%03X : 0x%02X "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
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
___str_40:
	.ascii "ACK DID NOT ARRIVE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "Writing data 0x%02X to address 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "Read back from address 0x%02X: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "MATCH - Write/Read successful!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
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
