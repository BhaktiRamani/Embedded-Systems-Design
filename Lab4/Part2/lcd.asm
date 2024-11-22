;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lcd_go_to_cgram_addr
	.globl _lcd_get_cursor_position
	.globl _write_lcd_data
	.globl _write_lcd_command
	.globl _read_lcd_data
	.globl _delay_ms
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
	.globl _read_data_register
	.globl _write_data_register
	.globl _read_control_register
	.globl _write_control_register
	.globl _lcd_go_toxy_PARM_2
	.globl _lcd_put_string_PARM_3
	.globl _lcd_put_string_PARM_2
	.globl _lcd_wait
	.globl _lcd_init
	.globl _lcd_put_char
	.globl _lcd_clear
	.globl _lcd_put_string
	.globl _lcd_go_to_ddram_addr
	.globl _lcd_go_toxy
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
_delay_ms_ms_65536_48:
	.ds 2
_write_lcd_command_command_65536_56:
	.ds 1
_write_lcd_data_data_65536_58:
	.ds 1
_lcd_put_char_c_65536_61:
	.ds 1
_lcd_put_string_PARM_2:
	.ds 1
_lcd_put_string_PARM_3:
	.ds 1
_lcd_put_string_str_65536_65:
	.ds 3
_lcd_put_string_current_row_65536_66:
	.ds 1
_lcd_put_string_char_count_65536_66:
	.ds 1
_lcd_put_string_char_count_to_check_65536_66:
	.ds 1
_lcd_go_to_ddram_addr_addr_65536_71:
	.ds 1
_lcd_go_to_cgram_addr_addr_65536_73:
	.ds 1
_lcd_go_toxy_PARM_2:
	.ds 1
_lcd_go_toxy_row_65536_75:
	.ds 1
_lcd_go_toxy_address_65536_76:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_write_control_register::
	.ds 2
_read_control_register::
	.ds 2
_write_data_register::
	.ds 2
_read_data_register::
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
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_48'
;i                         Allocated with name '_delay_ms_i_65536_49'
;j                         Allocated with name '_delay_ms_j_65536_49'
;------------------------------------------------------------
;	src/lcd.c:75: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
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
	mov	dptr,#_delay_ms_ms_65536_48
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:77: for (i = 0; i < ms; i++)
	mov	dptr,#_delay_ms_ms_65536_48
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
;	src/lcd.c:78: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
;	src/lcd.c:77: for (i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	src/lcd.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_wait'
;------------------------------------------------------------
;	src/lcd.c:90: void lcd_wait(void) {
;	-----------------------------------------
;	 function lcd_wait
;	-----------------------------------------
_lcd_wait:
;	src/lcd.c:91: while ((*read_control_register) & LCD_BUSY_FLAG)
00101$:
	mov	dptr,#_read_control_register
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnb	acc.7,00104$
;	src/lcd.c:94: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
	sjmp	00101$
00104$:
;	src/lcd.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_lcd_data'
;------------------------------------------------------------
;	src/lcd.c:106: uint8_t read_lcd_data() {
;	-----------------------------------------
;	 function read_lcd_data
;	-----------------------------------------
_read_lcd_data:
;	src/lcd.c:107: return *read_data_register;
	mov	dptr,#_read_data_register
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
;	src/lcd.c:108: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_lcd_command'
;------------------------------------------------------------
;command                   Allocated with name '_write_lcd_command_command_65536_56'
;------------------------------------------------------------
;	src/lcd.c:119: void write_lcd_command(unsigned char command) {
;	-----------------------------------------
;	 function write_lcd_command
;	-----------------------------------------
_write_lcd_command:
	mov	a,dpl
	mov	dptr,#_write_lcd_command_command_65536_56
	movx	@dptr,a
;	src/lcd.c:120: *write_control_register = command;
	mov	dptr,#_write_control_register
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_write_lcd_command_command_65536_56
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	src/lcd.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_lcd_data'
;------------------------------------------------------------
;data                      Allocated with name '_write_lcd_data_data_65536_58'
;------------------------------------------------------------
;	src/lcd.c:132: void write_lcd_data(unsigned char data) {
;	-----------------------------------------
;	 function write_lcd_data
;	-----------------------------------------
_write_lcd_data:
	mov	a,dpl
	mov	dptr,#_write_lcd_data_data_65536_58
	movx	@dptr,a
;	src/lcd.c:133: *write_data_register = data;
	mov	dptr,#_write_data_register
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_write_lcd_data_data_65536_58
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	src/lcd.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	src/lcd.c:145: void lcd_init() {
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	src/lcd.c:146: write_control_register = (__xdata unsigned char *)(LCD_WRITE_CMD); // Ensure proper casting
	mov	dptr,#_write_control_register
	clr	a
	movx	@dptr,a
	mov	a,#0xf0
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:147: read_control_register = (__xdata unsigned char *)(LCD_READ_CMD);
	mov	dptr,#_read_control_register
	clr	a
	movx	@dptr,a
	mov	a,#0xf1
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:148: write_data_register = (__xdata unsigned char *)(LCD_WRITE_DATA);
	mov	dptr,#_write_data_register
	clr	a
	movx	@dptr,a
	mov	a,#0xf2
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:149: read_data_register = (__xdata unsigned char *)(LCD_READ_DATA);
	mov	dptr,#_read_data_register
	clr	a
	movx	@dptr,a
	mov	a,#0xf3
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:150: delay_ms(40);
	mov	dptr,#0x0028
	lcall	_delay_ms
;	src/lcd.c:151: write_lcd_command(LCD_INIT_SYNC);
	mov	dpl,#0x30
	lcall	_write_lcd_command
;	src/lcd.c:152: delay_ms(5);
	mov	dptr,#0x0005
	lcall	_delay_ms
;	src/lcd.c:153: write_lcd_command(LCD_INIT_SYNC);
	mov	dpl,#0x30
	lcall	_write_lcd_command
;	src/lcd.c:154: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	src/lcd.c:155: write_lcd_command(LCD_INIT_SYNC);
	mov	dpl,#0x30
	lcall	_write_lcd_command
;	src/lcd.c:156: delay_ms(2);
	mov	dptr,#0x0002
	lcall	_delay_ms
;	src/lcd.c:157: write_lcd_command(LCD_INIT_SYNC_CMD);
	mov	dpl,#0x38
	lcall	_write_lcd_command
;	src/lcd.c:159: lcd_wait();
	lcall	_lcd_wait
;	src/lcd.c:160: write_lcd_command(LCD_DISPLAY_OFF_CMD);
	mov	dpl,#0x08
	lcall	_write_lcd_command
;	src/lcd.c:161: lcd_wait();
	lcall	_lcd_wait
;	src/lcd.c:162: write_lcd_command(LCD_DISPLAY_ON_CMD);
	mov	dpl,#0x0c
	lcall	_write_lcd_command
;	src/lcd.c:163: lcd_wait();
	lcall	_lcd_wait
;	src/lcd.c:164: write_lcd_command(LCD_ENTRY_MODE_CMD);
	mov	dpl,#0x06
	lcall	_write_lcd_command
;	src/lcd.c:165: lcd_wait();
	lcall	_lcd_wait
;	src/lcd.c:166: write_lcd_command(LCD_CLEAR_CMD);
	mov	dpl,#0x01
	lcall	_write_lcd_command
;	src/lcd.c:167: lcd_wait();
;	src/lcd.c:168: }
	ljmp	_lcd_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_put_char'
;------------------------------------------------------------
;c                         Allocated with name '_lcd_put_char_c_65536_61'
;------------------------------------------------------------
;	src/lcd.c:178: void lcd_put_char(uint8_t c) {
;	-----------------------------------------
;	 function lcd_put_char
;	-----------------------------------------
_lcd_put_char:
	mov	a,dpl
	mov	dptr,#_lcd_put_char_c_65536_61
	movx	@dptr,a
;	src/lcd.c:179: write_lcd_data(c);
	movx	a,@dptr
	mov	dpl,a
	lcall	_write_lcd_data
;	src/lcd.c:180: lcd_wait();
;	src/lcd.c:181: }
	ljmp	_lcd_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;	src/lcd.c:191: void lcd_clear() {
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
;	src/lcd.c:192: write_lcd_command(LCD_CLEAR_CMD);
	mov	dpl,#0x01
	lcall	_write_lcd_command
;	src/lcd.c:193: lcd_wait();
;	src/lcd.c:194: }
	ljmp	_lcd_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_get_cursor_position'
;------------------------------------------------------------
;address                   Allocated with name '_lcd_get_cursor_position_address_65536_64'
;------------------------------------------------------------
;	src/lcd.c:204: uint8_t lcd_get_cursor_position() {
;	-----------------------------------------
;	 function lcd_get_cursor_position
;	-----------------------------------------
_lcd_get_cursor_position:
;	src/lcd.c:206: lcd_wait(); // Ensure LCD is not busy
	lcall	_lcd_wait
;	src/lcd.c:207: address = *read_control_register & 0x7F; // Mask to get the lower 7 bits
	mov	dptr,#_read_control_register
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x7f
;	src/lcd.c:208: return address;
	mov	dpl,r6
;	src/lcd.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_put_string'
;------------------------------------------------------------
;row                       Allocated with name '_lcd_put_string_PARM_2'
;column                    Allocated with name '_lcd_put_string_PARM_3'
;str                       Allocated with name '_lcd_put_string_str_65536_65'
;current_row               Allocated with name '_lcd_put_string_current_row_65536_66'
;char_count                Allocated with name '_lcd_put_string_char_count_65536_66'
;char_count_to_check       Allocated with name '_lcd_put_string_char_count_to_check_65536_66'
;------------------------------------------------------------
;	src/lcd.c:222: void lcd_put_string(char *str, uint8_t row, uint8_t column) __critical {
;	-----------------------------------------
;	 function lcd_put_string
;	-----------------------------------------
_lcd_put_string:
	setb	c
	jbc	ea,00128$
	clr	c
00128$:
	push	psw
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcd_put_string_str_65536_65
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:223: uint8_t current_row = row;
	mov	dptr,#_lcd_put_string_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcd_put_string_current_row_65536_66
	movx	@dptr,a
;	src/lcd.c:224: uint8_t char_count = 0;
	mov	dptr,#_lcd_put_string_char_count_65536_66
	clr	a
	movx	@dptr,a
;	src/lcd.c:225: uint8_t char_count_to_check = CHAR_IN_FIRST_THREE_ROWS - column;
	mov	dptr,#_lcd_put_string_PARM_3
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
	mov	a,#0x10
	clr	c
	subb	a,r5
	movx	@dptr,a
;	src/lcd.c:227: lcd_go_toxy(row, column);
	mov	dptr,#_lcd_go_toxy_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	lcall	_lcd_go_toxy
;	src/lcd.c:228: while (*str) {
	mov	dptr,#_lcd_put_string_str_65536_65
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00106$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00129$
	ljmp	00115$
00129$:
;	src/lcd.c:229: if (char_count == char_count_to_check) { // Move to the next row after 16 characters
	mov	dptr,#_lcd_put_string_char_count_65536_66
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00105$
;	src/lcd.c:230: char_count = 0;
	mov	dptr,#_lcd_put_string_char_count_65536_66
	clr	a
	movx	@dptr,a
;	src/lcd.c:231: current_row = (current_row + 1) % 4;
	mov	dptr,#_lcd_put_string_current_row_65536_66
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	inc	r4
	cjne	r4,#0x00,00132$
	inc	r3
00132$:
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_lcd_put_string_current_row_65536_66
	mov	a,r3
	movx	@dptr,a
;	src/lcd.c:232: if (current_row == 3) {
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00102$
;	src/lcd.c:233: char_count_to_check = CHAR_IN_LAST_ROW;
	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
	mov	a,#0x08
	movx	@dptr,a
	sjmp	00103$
00102$:
;	src/lcd.c:235: char_count_to_check = CHAR_IN_FIRST_THREE_ROWS;
	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
	mov	a,#0x10
	movx	@dptr,a
00103$:
;	src/lcd.c:237: lcd_go_toxy(current_row, 0); // Set to beginning of next row
	mov	dptr,#_lcd_go_toxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_go_toxy
	pop	ar5
	pop	ar6
	pop	ar7
00105$:
;	src/lcd.c:240: lcd_put_char(*str++); // Write the character
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_lcd_put_string_str_65536_65
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_put_char
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:241: char_count++;
	mov	dptr,#_lcd_put_string_char_count_65536_66
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00106$
00115$:
	mov	dptr,#_lcd_put_string_str_65536_65
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/lcd.c:243: }
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_go_to_ddram_addr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcd_go_to_ddram_addr_addr_65536_71'
;------------------------------------------------------------
;	src/lcd.c:253: void lcd_go_to_ddram_addr(uint8_t addr) {
;	-----------------------------------------
;	 function lcd_go_to_ddram_addr
;	-----------------------------------------
_lcd_go_to_ddram_addr:
	mov	a,dpl
	mov	dptr,#_lcd_go_to_ddram_addr_addr_65536_71
	movx	@dptr,a
;	src/lcd.c:254: write_lcd_command(0x80 | addr);
	movx	a,@dptr
	orl	a,#0x80
	mov	dpl,a
	lcall	_write_lcd_command
;	src/lcd.c:255: lcd_wait();
;	src/lcd.c:256: }
	ljmp	_lcd_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_go_to_cgram_addr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcd_go_to_cgram_addr_addr_65536_73'
;------------------------------------------------------------
;	src/lcd.c:266: void lcd_go_to_cgram_addr(uint8_t addr) {
;	-----------------------------------------
;	 function lcd_go_to_cgram_addr
;	-----------------------------------------
_lcd_go_to_cgram_addr:
	mov	a,dpl
	mov	dptr,#_lcd_go_to_cgram_addr_addr_65536_73
	movx	@dptr,a
;	src/lcd.c:267: write_lcd_command(0x40 | addr);
	movx	a,@dptr
	orl	a,#0x40
	mov	dpl,a
	lcall	_write_lcd_command
;	src/lcd.c:268: lcd_wait();
;	src/lcd.c:269: }
	ljmp	_lcd_wait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_go_toxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcd_go_toxy_PARM_2'
;row                       Allocated with name '_lcd_go_toxy_row_65536_75'
;address                   Allocated with name '_lcd_go_toxy_address_65536_76'
;------------------------------------------------------------
;	src/lcd.c:281: void lcd_go_toxy(uint8_t row, uint8_t column) {
;	-----------------------------------------
;	 function lcd_go_toxy
;	-----------------------------------------
_lcd_go_toxy:
	mov	a,dpl
	mov	dptr,#_lcd_go_toxy_row_65536_75
	movx	@dptr,a
;	src/lcd.c:284: if (row == 0) {
	movx	a,@dptr
	mov	r7,a
	jnz	00108$
;	src/lcd.c:285: address = ROW1_ADDR + column;  // First row
	mov	dptr,#_lcd_go_toxy_PARM_2
	movx	a,@dptr
	mov	dptr,#_lcd_go_toxy_address_65536_76
	movx	@dptr,a
	sjmp	00109$
00108$:
;	src/lcd.c:286: } else if (row == 1) {
	cjne	r7,#0x01,00105$
;	src/lcd.c:287: address = ROW2_ADDR + column;  // Second row
	mov	dptr,#_lcd_go_toxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_lcd_go_toxy_address_65536_76
	mov	a,#0x40
	add	a,r6
	movx	@dptr,a
	sjmp	00109$
00105$:
;	src/lcd.c:288: } else if (row == 2) {
	cjne	r7,#0x02,00102$
;	src/lcd.c:289: address = ROW3_ADDR + column;  // Third row (for Ds)
	mov	dptr,#_lcd_go_toxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcd_go_toxy_address_65536_76
	mov	a,#0x10
	add	a,r7
	movx	@dptr,a
	sjmp	00109$
00102$:
;	src/lcd.c:291: address = ROW4_ADDR + column;  // Fourth row (for 20x4 LCDs)
	mov	dptr,#_lcd_go_toxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcd_go_toxy_address_65536_76
	mov	a,#0x50
	add	a,r7
	movx	@dptr,a
00109$:
;	src/lcd.c:293: lcd_go_to_ddram_addr(address);
	mov	dptr,#_lcd_go_toxy_address_65536_76
	movx	a,@dptr
	mov	dpl,a
;	src/lcd.c:294: }
	ljmp	_lcd_go_to_ddram_addr
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__write_control_register:
	.byte #0x00,#0xf0
__xinit__read_control_register:
	.byte #0x00,#0xf1
__xinit__write_data_register:
	.byte #0x00,#0xf2
__xinit__read_data_register:
	.byte #0x00,#0xf3
	.area CABS    (ABS,CODE)
