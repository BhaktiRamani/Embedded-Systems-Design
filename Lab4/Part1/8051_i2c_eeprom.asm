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
	.globl _strtol
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
_take_address_input_65537_62:
	.ds 4
_take_data_input_65536_65:
	.ds 3
_eeprom_write_PARM_2:
	.ds 1
_eeprom_write_address_65536_68:
	.ds 2
_eeprom_read_address_65536_75:
	.ds 2
_i2c_write_data_65536_80:
	.ds 1
_i2c_read_ACK_65536_85:
	.ds 2
_i2c_read_buff_65536_86:
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
;charToSend                Allocated with name '_putchar_charToSend_65536_48'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:26: int putchar(int charToSend) {
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
;	8051_i2c_eeprom.c:27: SBUF = charToSend;  // Send character to serial buffer
	mov	dptr,#_putchar_charToSend_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	8051_i2c_eeprom.c:28: while (!TI);        // Wait for transmission to complete
00101$:
;	8051_i2c_eeprom.c:29: TI = 0;            // Clear transmission interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:30: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:33: int getchar(void) 
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	8051_i2c_eeprom.c:35: while (!RI);        // Wait for reception to complete
00101$:
;	8051_i2c_eeprom.c:36: RI = 0;            // Clear reception interrupt flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	8051_i2c_eeprom.c:37: return SBUF;       // Return received character
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ui'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:40: void ui()
;	-----------------------------------------
;	 function ui
;	-----------------------------------------
_ui:
;	8051_i2c_eeprom.c:42: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
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
;	8051_i2c_eeprom.c:43: printf("║           I2C Memory Management System v1.0             ║\n\r");
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
;	8051_i2c_eeprom.c:44: printf("╚════════════════════════════════════════════════════════╝\n\r");
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
;	8051_i2c_eeprom.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_menu'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:48: void command_menu()
;	-----------------------------------------
;	 function command_menu
;	-----------------------------------------
_command_menu:
;	8051_i2c_eeprom.c:50: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
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
;	8051_i2c_eeprom.c:51: printf("│  Command   │               Description                   │\n\r");
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
;	8051_i2c_eeprom.c:52: printf("├────────────┼────────────────────────────────────────────┤\n\r");
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
;	8051_i2c_eeprom.c:53: printf("│     R      │ Read from address                          │\n\r");
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
;	8051_i2c_eeprom.c:54: printf("│     W      │ Write data to address                      │\n\r");
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
;	8051_i2c_eeprom.c:55: printf("│     H      │ Display hex dump                           │\n\r");
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
;	8051_i2c_eeprom.c:56: printf("│     X      │ Reset memory system                        │\n\r");
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
;	8051_i2c_eeprom.c:57: printf("│     ?      │ Display this help menu                     │\n\r");
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
;	8051_i2c_eeprom.c:58: printf("│     Q      │ Quit program                              │\n\r");
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
;	8051_i2c_eeprom.c:59: printf("└────────────┴────────────────────────────────────────────┘\n\r");
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
;	8051_i2c_eeprom.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated with name '_main_user_input_131072_55'
;address                   Allocated with name '_main_address_262145_58'
;data                      Allocated with name '_main_data_262146_59'
;address                   Allocated with name '_main_address_262144_60'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:63: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	8051_i2c_eeprom.c:66: P1 &= ~(1<<3);  // Set P1.3 as output
	anl	_P1,#0xf7
;	8051_i2c_eeprom.c:67: P1 &= ~(1<<4);  // Set P1.4 as output
	anl	_P1,#0xef
;	8051_i2c_eeprom.c:68: ui();
	lcall	_ui
;	8051_i2c_eeprom.c:69: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:70: while(1)
00107$:
;	8051_i2c_eeprom.c:72: char user_input = getchar();
	lcall	_getchar
	mov	r6,dpl
;	8051_i2c_eeprom.c:73: printf("$ %c\n\r", user_input);
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
;	8051_i2c_eeprom.c:74: switch(user_input)
	cjne	r6,#0x3f,00127$
	ljmp	00103$
00127$:
	cjne	r6,#0x52,00128$
	sjmp	00102$
00128$:
	cjne	r6,#0x57,00104$
;	8051_i2c_eeprom.c:78: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
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
;	8051_i2c_eeprom.c:80: address = take_address(); 
	lcall	_take_address
	mov	r6,dpl
	mov	r7,dph
;	8051_i2c_eeprom.c:82: data = (unsigned char)take_data();
	push	ar7
	push	ar6
	lcall	_take_data
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:83: printf("| Writing at Address %d Data %c          |\n\r", address, data);
	mov	ar3,r4
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:84: eeprom_write(address, data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:85: break;
	ljmp	00107$
;	8051_i2c_eeprom.c:87: case 'R':
00102$:
;	8051_i2c_eeprom.c:90: address = take_address(); 
	lcall	_take_address
;	8051_i2c_eeprom.c:91: eeprom_read(address);
	lcall	_eeprom_read
;	8051_i2c_eeprom.c:92: break;
	ljmp	00107$
;	8051_i2c_eeprom.c:95: case '?':
00103$:
;	8051_i2c_eeprom.c:96: command_menu();
	lcall	_command_menu
;	8051_i2c_eeprom.c:97: break;
	ljmp	00107$
;	8051_i2c_eeprom.c:99: default:
00104$:
;	8051_i2c_eeprom.c:100: printf("INVALID INPUT\n\r");
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
;	8051_i2c_eeprom.c:102: }
;	8051_i2c_eeprom.c:105: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'take_address'
;------------------------------------------------------------
;input                     Allocated with name '_take_address_input_65537_62'
;i                         Allocated with name '_take_address_i_65537_62'
;address                   Allocated with name '_take_address_address_65538_64'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:107: int take_address() {
;	-----------------------------------------
;	 function take_address
;	-----------------------------------------
_take_address:
;	8051_i2c_eeprom.c:108: printf("│ Enter address (hex, up to 3 characters): \n\r|");
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
;	8051_i2c_eeprom.c:109: char input[4] = {0};  // Array to store hex input + null terminator
	mov	dptr,#_take_address_input_65537_62
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_62 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_62 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_62 + 0x0003)
	movx	@dptr,a
;	8051_i2c_eeprom.c:113: while (i < 3) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	8051_i2c_eeprom.c:114: input[i] = getchar();
	mov	a,r6
	add	a,#_take_address_input_65537_62
	mov	r4,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_62 >> 8)
	mov	r5,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	pop	ar4
	pop	ar5
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	8051_i2c_eeprom.c:115: printf("$ %c", putchar(input[i]));
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	mov	r4,dpl
	mov	r5,dph
	push	ar4
	push	ar5
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
;	8051_i2c_eeprom.c:116: i++;
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00103$:
;	8051_i2c_eeprom.c:118: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_address_input_65537_62
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_62 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:121: unsigned int address = (unsigned int)strtol(input, NULL, 16);
	mov	dptr,#_strtol_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_take_address_input_65537_62
	mov	b,#0x00
	lcall	_strtol
	mov	r4,dpl
	mov	r5,dph
;	8051_i2c_eeprom.c:122: printf("address %d\n\r", address);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	8051_i2c_eeprom.c:123: return address;
	mov	dpl,r4
	mov	dph,r5
;	8051_i2c_eeprom.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65536_65'
;i                         Allocated with name '_take_data_i_65536_65'
;value                     Allocated with name '_take_data_value_65537_67'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:126: int take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	8051_i2c_eeprom.c:128: char input[3] = {0};  // Array to store up to 2 hex characters + null terminator
	mov	dptr,#_take_data_input_65536_65
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65536_65 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65536_65 + 0x0002)
	movx	@dptr,a
;	8051_i2c_eeprom.c:131: printf("|Enter a 2-digit hexadecimal value: \n\r|");
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
;	8051_i2c_eeprom.c:132: while (i < 2) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	8051_i2c_eeprom.c:133: input[i] = getchar();
	mov	a,r6
	add	a,#_take_data_input_65536_65
	mov	r4,a
	mov	a,r7
	addc	a,#(_take_data_input_65536_65 >> 8)
	mov	r5,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	pop	ar4
	pop	ar5
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	8051_i2c_eeprom.c:134: printf("$ %c", putchar(input[i]));
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r5
	lcall	_putchar
	mov	r4,dpl
	mov	r5,dph
	push	ar4
	push	ar5
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
;	8051_i2c_eeprom.c:136: i++;
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00103$:
;	8051_i2c_eeprom.c:138: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65536_65
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65536_65 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:141: unsigned char value = (unsigned char)strtol(input, NULL, 16);
	mov	dptr,#_strtol_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_take_data_input_65536_65
	mov	b,#0x00
	lcall	_strtol
	mov	r4,dpl
;	8051_i2c_eeprom.c:142: printf("data %c\n\r", value);
	mov	r7,#0x00
	push	ar7
	push	ar4
	push	ar4
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar7
;	8051_i2c_eeprom.c:143: return value;
	mov	dpl,r4
	mov	dph,r7
;	8051_i2c_eeprom.c:145: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write'
;------------------------------------------------------------
;data                      Allocated with name '_eeprom_write_PARM_2'
;address                   Allocated with name '_eeprom_write_address_65536_68'
;i                         Allocated with name '_eeprom_write_i_131072_73'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:147: int eeprom_write(unsigned int address, unsigned char data) 
;	-----------------------------------------
;	 function eeprom_write
;	-----------------------------------------
_eeprom_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_write_address_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:150: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:153: if(!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	8051_i2c_eeprom.c:154: printf("Error: No ACK for device address (write)\n\r");
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
;	8051_i2c_eeprom.c:155: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:156: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	8051_i2c_eeprom.c:160: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_write_address_65536_68
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
;	8051_i2c_eeprom.c:161: printf("Error: No ACK for memory address\n\r");
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
;	8051_i2c_eeprom.c:162: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:163: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	8051_i2c_eeprom.c:167: if(!i2c_write(data)) {
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
;	8051_i2c_eeprom.c:168: printf("Error: No ACK for data\n\r");
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
;	8051_i2c_eeprom.c:169: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:170: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	8051_i2c_eeprom.c:173: i2c_stop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:175: for(int i = 0; i<100; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00109$:
	clr	c
	mov	a,r3
	subb	a,#0x64
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	8051_i2c_eeprom.c:177: i2c_delay();
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
;	8051_i2c_eeprom.c:175: for(int i = 0; i<100; i++)
	inc	r3
	cjne	r3,#0x00,00109$
	inc	r4
	sjmp	00109$
00107$:
;	8051_i2c_eeprom.c:179: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
	mov	r4,#0x00
	push	ar5
	push	ar4
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
	add	a,#0xf9
	mov	sp,a
;	8051_i2c_eeprom.c:180: printf("│ Write successful!                             │\n");
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
;	8051_i2c_eeprom.c:181: printf("└───────────────────────────────────────────────┘\n");
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
;	8051_i2c_eeprom.c:182: return 1;  // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:184: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_eeprom_read_address_65536_75'
;result                    Allocated with name '_eeprom_read_result_65536_76'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:186: int eeprom_read(unsigned int address) 
;	-----------------------------------------
;	 function eeprom_read
;	-----------------------------------------
_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eeprom_read_address_65536_75
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:192: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:195: if(!i2c_write(EEPROM_ID | WRITE)) {
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	8051_i2c_eeprom.c:196: printf("Error: No ACK for device address (write mode)\n\r");
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
;	8051_i2c_eeprom.c:197: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:198: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	8051_i2c_eeprom.c:202: if(!i2c_write((unsigned char)address)) {
	mov	dptr,#_eeprom_read_address_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
;	8051_i2c_eeprom.c:203: printf("Error: No ACK for memory address\n\r");
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
;	8051_i2c_eeprom.c:204: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:205: return -1;
	mov	dptr,#0xffff
	ret
00104$:
;	8051_i2c_eeprom.c:209: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:212: if(!i2c_write(EEPROM_ID | READ)) {
	mov	dpl,#0xa1
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
;	8051_i2c_eeprom.c:213: printf("Error: No ACK for device address (read mode)\n\r");
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
;	8051_i2c_eeprom.c:214: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:215: return -1;
	mov	dptr,#0xffff
	ret
00106$:
;	8051_i2c_eeprom.c:219: result = i2c_read(0);  // 0 means send NACK
	mov	dptr,#0x0000
	lcall	_i2c_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:221: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	8051_i2c_eeprom.c:222: return result;
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	8051_i2c_eeprom.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated with name '_i2c_write_data_65536_80'
;i                         Allocated with name '_i2c_write_i_65536_81'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:226: int i2c_write(unsigned char data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	a,dpl
	mov	dptr,#_i2c_write_data_65536_80
	movx	@dptr,a
;	8051_i2c_eeprom.c:230: for(i=0;i<=7;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	8051_i2c_eeprom.c:232: SDA = (data & 0x80) ? 1 : 0;    //msb first
	mov	dptr,#_i2c_write_data_65536_80
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_4,c
;	8051_i2c_eeprom.c:233: i2c_delay();        // Setup time for data
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:234: SCL=1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:235: i2c_delay();        // Hold time for clock
	lcall	_i2c_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:236: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:237: data = data << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_i2c_write_data_65536_80
	movx	@dptr,a
;	8051_i2c_eeprom.c:230: for(i=0;i<=7;i++)
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
;	8051_i2c_eeprom.c:241: SDA = 1;            // Release SDA for slave
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:242: SCL = 1;            // 9th clock pulse for ACK
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:243: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:244: if(SDA == 1)        // If SDA is still high, no ACK received
	jnb	_P1_4,00103$
;	8051_i2c_eeprom.c:247: printf("ACK DID NOT ARRIVE\n\r");
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
;	8051_i2c_eeprom.c:248: return 0;       // Error
	mov	dptr,#0x0000
	ret
00103$:
;	8051_i2c_eeprom.c:250: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:251: printf("Transmission successfull\n\r");
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
;	8051_i2c_eeprom.c:252: return 1;           // Success
	mov	dptr,#0x0001
;	8051_i2c_eeprom.c:254: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ACK                       Allocated with name '_i2c_read_ACK_65536_85'
;buff                      Allocated with name '_i2c_read_buff_65536_86'
;i                         Allocated with name '_i2c_read_i_131072_87'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:255: int i2c_read(int ACK)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_read_ACK_65536_85
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	8051_i2c_eeprom.c:257: unsigned char buff=0;
	mov	dptr,#_i2c_read_buff_65536_86
	clr	a
	movx	@dptr,a
;	8051_i2c_eeprom.c:258: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:259: for(int i=0;i<8;i++)
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
;	8051_i2c_eeprom.c:261: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:262: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:263: buff |= (SDA << (7 - i));
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
	mov	dptr,#_i2c_read_buff_65536_86
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	8051_i2c_eeprom.c:264: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:265: SCL=0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:259: for(int i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	8051_i2c_eeprom.c:269: SDA = !ACK;         // ACK = 0, NACK = 1
	mov	dptr,#_i2c_read_ACK_65536_85
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
;	8051_i2c_eeprom.c:270: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:271: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:272: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:274: return buff;
	mov	dptr,#_i2c_read_buff_65536_86
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	8051_i2c_eeprom.c:275: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:276: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	8051_i2c_eeprom.c:278: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:279: SDA = 1;
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:280: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:281: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:282: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:283: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:284: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:285: SCL = 0;
;	assignBit
	clr	_P1_3
;	8051_i2c_eeprom.c:286: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:288: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	8051_i2c_eeprom.c:290: SDA = 0;
;	assignBit
	clr	_P1_4
;	8051_i2c_eeprom.c:291: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:292: SCL = 1;
;	assignBit
	setb	_P1_3
;	8051_i2c_eeprom.c:293: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:294: SDA = 1; 
;	assignBit
	setb	_P1_4
;	8051_i2c_eeprom.c:295: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_delay_i_131072_94'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:297: void i2c_delay() 
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
;	8051_i2c_eeprom.c:305: for(int i = 0; i<500; i++);
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
;	8051_i2c_eeprom.c:306: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'test_function'
;------------------------------------------------------------
;test_data                 Allocated with name '_test_function_test_data_65537_96'
;address                   Allocated with name '_test_function_address_65537_96'
;i                         Allocated with name '_test_function_i_131073_97'
;read_data                 Allocated with name '_test_function_read_data_65538_99'
;------------------------------------------------------------
;	8051_i2c_eeprom.c:308: void test_function()
;	-----------------------------------------
;	 function test_function
;	-----------------------------------------
_test_function:
;	8051_i2c_eeprom.c:310: i2c_start();
	lcall	_i2c_start
;	8051_i2c_eeprom.c:311: i2c_delay();
	lcall	_i2c_delay
;	8051_i2c_eeprom.c:317: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x26
	push	acc
	clr	a
	push	acc
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
;	8051_i2c_eeprom.c:318: eeprom_write(address, test_data);
	mov	dptr,#_eeprom_write_PARM_2
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_eeprom_write
;	8051_i2c_eeprom.c:319: i2c_stop();
	lcall	_i2c_stop
;	8051_i2c_eeprom.c:321: for(int i = 0; i<100; i++)
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
;	8051_i2c_eeprom.c:323: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	8051_i2c_eeprom.c:321: for(int i = 0; i<100; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00101$:
;	8051_i2c_eeprom.c:327: unsigned char read_data = eeprom_read(address);
	mov	dptr,#0x0002
	lcall	_eeprom_read
	mov	r6,dpl
;	8051_i2c_eeprom.c:328: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
;	8051_i2c_eeprom.c:331: if(read_data == test_data) {
	cjne	r6,#0x26,00103$
;	8051_i2c_eeprom.c:332: printf("MATCH - Write/Read successful!\n\r");
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
	ret
00103$:
;	8051_i2c_eeprom.c:334: printf("ERROR - Data mismatch!\n\r");
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
;	8051_i2c_eeprom.c:338: }
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
	.ascii "           I2C Memory Management System v1.0             "
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
	.ascii "               Description                   "
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
	.ascii " Quit program                              "
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
	.ascii "$ %c"
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
	.ascii "| Writing at Address %d Data %c          |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "INVALID INPUT"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
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
___str_18:
	.ascii "$ %c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "address %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "|Enter a 2-digit hexadecimal value: "
	.db 0x0a
	.db 0x0d
	.ascii "|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "data %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Error: No ACK for device address (write)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Error: No ACK for memory address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Error: No ACK for data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0xe2
	.db 0x94
	.db 0x82
	.ascii " Write successful!                             "
	.db 0xe2
	.db 0x94
	.db 0x82
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
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
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "Error: No ACK for device address (write mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Error: No ACK for device address (read mode)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "ACK DID NOT ARRIVE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Transmission successfull"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Writing data 0x%02X to address 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "Read back from address 0x%02X: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "MATCH - Write/Read successful!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "ERROR - Data mismatch!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
