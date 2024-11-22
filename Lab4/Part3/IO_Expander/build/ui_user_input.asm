;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module ui_user_input
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _block
	.globl _data_range_flag
	.globl _address_range_flag
	.globl _ui
	.globl _command_menu
	.globl _take_address
	.globl _take_data
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
_take_address_input_65537_18:
	.ds 4
_take_address_address_65538_22:
	.ds 2
_take_data_input_65537_28:
	.ds 4
_take_data_data_65538_32:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_address_range_flag::
	.ds 2
_data_range_flag::
	.ds 2
_block::
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
;Allocation info for local variables in function 'ui'
;------------------------------------------------------------
;	src/ui_user_input.c:10: void ui()
;	-----------------------------------------
;	 function ui
;	-----------------------------------------
_ui:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/ui_user_input.c:12: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
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
;	src/ui_user_input.c:13: printf("║           I2C Memory Management System v1.0            ║\n\r");
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
;	src/ui_user_input.c:14: printf("╚════════════════════════════════════════════════════════╝\n\r");
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
;	src/ui_user_input.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_menu'
;------------------------------------------------------------
;	src/ui_user_input.c:21: void command_menu()
;	-----------------------------------------
;	 function command_menu
;	-----------------------------------------
_command_menu:
;	src/ui_user_input.c:23: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
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
;	src/ui_user_input.c:24: printf("│  Command   │               Description                  │\n\r");
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
;	src/ui_user_input.c:25: printf("├────────────┼────────────────────────────────────────────┤\n\r");
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
;	src/ui_user_input.c:26: printf("│     R      │ Read from address                          │\n\r");
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
;	src/ui_user_input.c:27: printf("│     W      │ Write data to address                      │\n\r");
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
;	src/ui_user_input.c:28: printf("│     H      │ Display hex dump                           │\n\r");
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
;	src/ui_user_input.c:29: printf("│     X      │ Reset memory system                        │\n\r");
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
;	src/ui_user_input.c:30: printf("│     ?      │ Display this help menu                     │\n\r");
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
;	src/ui_user_input.c:31: printf("│     I      │ IO Expander Mode                           │\n\r");
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
;	src/ui_user_input.c:32: printf("│     L      │ Exit IO Expander Mode                      │\n\r");
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
;	src/ui_user_input.c:33: printf("└────────────┴────────────────────────────────────────────┘\n\r");
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
;	src/ui_user_input.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_address'
;------------------------------------------------------------
;input                     Allocated with name '_take_address_input_65537_18'
;i                         Allocated with name '_take_address_i_65537_18'
;c                         Allocated with name '_take_address_c_65537_18'
;address                   Allocated with name '_take_address_address_65538_22'
;block                     Allocated with name '_take_address_block_65539_26'
;------------------------------------------------------------
;	src/ui_user_input.c:43: unsigned int take_address() 
;	-----------------------------------------
;	 function take_address
;	-----------------------------------------
_take_address:
;	src/ui_user_input.c:45: printf("│ Enter address (hex, up to 3 characters): \n\r|");
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
;	src/ui_user_input.c:46: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_address_input_65537_18
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_18 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_18 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_address_input_65537_18 + 0x0003)
	movx	@dptr,a
;	src/ui_user_input.c:50: printf("| $ ");
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
;	src/ui_user_input.c:52: while (i < 3) {
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
;	src/ui_user_input.c:54: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/ui_user_input.c:57: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	src/ui_user_input.c:62: if ((c >= '0' && c <= '9') || 
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	src/ui_user_input.c:63: (c >= 'a' && c <= 'f') || 
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	src/ui_user_input.c:64: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	src/ui_user_input.c:66: input[i] = c;
	mov	a,r6
	add	a,#_take_address_input_65537_18
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_18 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	src/ui_user_input.c:67: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	src/ui_user_input.c:68: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	src/ui_user_input.c:72: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_address_input_65537_18
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_18 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/ui_user_input.c:75: unsigned int address = 0;
	mov	dptr,#_take_address_address_65538_22
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/ui_user_input.c:76: for(i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_address_input_65537_18
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	src/ui_user_input.c:77: address = address * 16;
	mov	dptr,#_take_address_address_65538_22
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
	mov	dptr,#_take_address_address_65538_22
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src/ui_user_input.c:78: if(input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	src/ui_user_input.c:79: address += input[i] - '0';
	mov	r4,#0x00
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_take_address_address_65538_22
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_22
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00122$:
;	src/ui_user_input.c:80: else if(input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_address_input_65537_18
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_address_input_65537_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	src/ui_user_input.c:81: address += input[i] - 'A' + 10;
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0xc9
	add	a,r3
	mov	r3,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_22
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_take_address_address_65538_22
	mov	a,r3
	add	a,r1
	movx	@dptr,a
	mov	a,r4
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00118$:
;	src/ui_user_input.c:82: else if(input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	src/ui_user_input.c:83: address += input[i] - 'a' + 10;
	mov	r4,#0x00
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dptr,#_take_address_address_65538_22
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_take_address_address_65538_22
	mov	a,r5
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00130$:
;	src/ui_user_input.c:76: for(i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	src/ui_user_input.c:86: printf("\n\r│ Entered address: 0x%03X\n\r", address);
	mov	dptr,#_take_address_address_65538_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	src/ui_user_input.c:87: if(address > 0x7ff) 
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00127$
;	src/ui_user_input.c:89: printf("╔══════════════════════════════════════════╗\n\r");
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
;	src/ui_user_input.c:90: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
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
;	src/ui_user_input.c:91: printf("║     Please Enter Valid Address         ║\n\r");
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
;	src/ui_user_input.c:92: printf("╚══════════════════════════════════════════╝\n\r");
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
;	src/ui_user_input.c:93: address_range_flag = 0;
	mov	dptr,#_address_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/ui_user_input.c:94: return 0;
	mov	dptr,#0x0000
	ret
00127$:
;	src/ui_user_input.c:96: unsigned int block = address/256;       //block address
	mov	ar4,r7
	mov	r5,#0x00
;	src/ui_user_input.c:97: printf("| Block number %d                            \n\r", block);
	push	ar7
	push	ar6
	push	ar4
	push	ar5
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
	pop	ar6
	pop	ar7
;	src/ui_user_input.c:98: address = address%256;     //word address
	mov	dptr,#_take_address_address_65538_22
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/ui_user_input.c:101: return address;
	mov	dptr,#_take_address_address_65538_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	src/ui_user_input.c:102: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'take_data'
;------------------------------------------------------------
;input                     Allocated with name '_take_data_input_65537_28'
;i                         Allocated with name '_take_data_i_65537_28'
;c                         Allocated with name '_take_data_c_65537_28'
;data                      Allocated with name '_take_data_data_65538_32'
;------------------------------------------------------------
;	src/ui_user_input.c:110: unsigned char take_data()
;	-----------------------------------------
;	 function take_data
;	-----------------------------------------
_take_data:
;	src/ui_user_input.c:112: printf("│ Enter data (hex, up to 2 characters): \n\r|");
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
;	src/ui_user_input.c:113: char input[4] = {0};  // Array for 3 hex chars + null terminator
	mov	dptr,#_take_data_input_65537_28
	clr	a
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_28 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_28 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_take_data_input_65537_28 + 0x0003)
	movx	@dptr,a
;	src/ui_user_input.c:117: printf("$ ");
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
;	src/ui_user_input.c:119: while (i < 3) {
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
;	src/ui_user_input.c:121: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	src/ui_user_input.c:124: if (c == '\r' || c == '\n') {
	cjne	r4,#0x0d,00200$
	sjmp	00113$
00200$:
	cjne	r4,#0x0a,00201$
	sjmp	00113$
00201$:
;	src/ui_user_input.c:129: if ((c >= '0' && c <= '9') ||
	cjne	r4,#0x30,00202$
00202$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00104$
00108$:
;	src/ui_user_input.c:130: (c >= 'a' && c <= 'f') ||
	cjne	r4,#0x61,00205$
00205$:
	jc	00110$
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00104$
00110$:
;	src/ui_user_input.c:131: (c >= 'A' && c <= 'F')) {
	cjne	r4,#0x41,00208$
00208$:
	jc	00111$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00111$
00104$:
;	src/ui_user_input.c:133: input[i] = c;
	mov	a,r6
	add	a,#_take_data_input_65537_28
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_28 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	src/ui_user_input.c:134: putchar(c);  // Echo character back
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	src/ui_user_input.c:135: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	src/ui_user_input.c:139: input[i] = '\0';  // Null-terminate the string
	mov	a,r6
	add	a,#_take_data_input_65537_28
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_28 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/ui_user_input.c:142: unsigned char data = 0;
	mov	dptr,#_take_data_data_65538_32
	movx	@dptr,a
;	src/ui_user_input.c:143: for (i = 0; input[i] != '\0'; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,r6
	add	a,#_take_data_input_65537_28
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_28 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00212$
	ljmp	00125$
00212$:
;	src/ui_user_input.c:144: data = data * 16;
	mov	dptr,#_take_data_data_65538_32
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	movx	@dptr,a
;	src/ui_user_input.c:145: if (input[i] >= '0' && input[i] <= '9')
	cjne	r5,#0x30,00213$
00213$:
	jc	00122$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00122$
;	src/ui_user_input.c:146: data += input[i] - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_take_data_data_65538_32
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
	sjmp	00130$
00122$:
;	src/ui_user_input.c:147: else if (input[i] >= 'A' && input[i] <= 'F')
	mov	a,r6
	add	a,#_take_data_input_65537_28
	mov	dpl,a
	mov	a,r7
	addc	a,#(_take_data_input_65537_28 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x41,00216$
00216$:
	jc	00118$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00118$
;	src/ui_user_input.c:148: data += input[i] - 'A' + 10;
	mov	ar4,r5
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_take_data_data_65538_32
	movx	a,@dptr
	mov	r3,a
	add	a,r4
	movx	@dptr,a
	sjmp	00130$
00118$:
;	src/ui_user_input.c:149: else if (input[i] >= 'a' && input[i] <= 'f')
	cjne	r5,#0x61,00219$
00219$:
	jc	00130$
	mov	a,r5
	add	a,#0xff - 0x66
	jc	00130$
;	src/ui_user_input.c:150: data += input[i] - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	dptr,#_take_data_data_65538_32
	movx	a,@dptr
	mov	r4,a
	add	a,r5
	movx	@dptr,a
00130$:
;	src/ui_user_input.c:143: for (i = 0; input[i] != '\0'; i++) {
	inc	r6
	cjne	r6,#0x00,00222$
	inc	r7
00222$:
	ljmp	00129$
00125$:
;	src/ui_user_input.c:153: printf("\n\r│ Entered data: 0x%02X\n\r", data);
	mov	dptr,#_take_data_data_65538_32
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	src/ui_user_input.c:154: if(data > 0xfe)
	mov	a,r7
	add	a,#0xff - 0xfe
	jnc	00127$
;	src/ui_user_input.c:156: printf("Data out of Range\n\r");
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
;	src/ui_user_input.c:157: data_range_flag = 0;
	mov	dptr,#_data_range_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/ui_user_input.c:158: return 0;
	mov	dpl,#0x00
	ret
00127$:
;	src/ui_user_input.c:160: return data;
	mov	dpl,r7
;	src/ui_user_input.c:162: }
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
	.ascii " IO Expander Mode                           "
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
	.ascii " Exit IO Expander Mode                      "
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
___str_15:
	.ascii "| $ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
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
___str_17:
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
___str_18:
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
___str_19:
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
___str_20:
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
___str_21:
	.ascii "| Block number %d                            "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
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
___str_23:
	.ascii "$ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
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
___str_25:
	.ascii "Data out of Range"
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
