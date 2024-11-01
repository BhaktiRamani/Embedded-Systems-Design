;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module pwm
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _stop_high_speed_mode
	.globl _init_high_speed_mode
	.globl _init_pca_sw_timer
	.globl _PCA_ISR
	.globl _set_x2_mode
	.globl _enable_interrupt0
	.globl _init_watchdog
	.globl _enter_power_down_mode
	.globl _enter_idle_mode
	.globl _set_fclk_to_min
	.globl _set_fclk_to_max
	.globl _init_registers
	.globl _PWM_stop
	.globl _PWM_start
	.globl _getchar
	.globl _putchar
	.globl _printf
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
_putchar_charToSend_65536_72:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
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
	ljmp	_PCA_ISR
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
;charToSend                Allocated with name '_putchar_charToSend_65536_72'
;------------------------------------------------------------
;	pwm.c:42: int putchar(int charToSend) {
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
	mov	dptr,#_putchar_charToSend_65536_72
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	pwm.c:43: SBUF = charToSend;  // Send character to serial buffer
	mov	dptr,#_putchar_charToSend_65536_72
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	pwm.c:44: while (!TI);        // Wait for transmission to complete
00101$:
;	pwm.c:45: TI = 0;            // Clear transmission interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	pwm.c:46: return charToSend;
	mov	dpl,r6
	mov	dph,r7
;	pwm.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	pwm.c:53: int getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	pwm.c:55: while (!RI);        // Wait for reception to complete
00101$:
;	pwm.c:56: RI = 0;            // Clear reception interrupt flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	pwm.c:57: return SBUF;       // Return received character
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	pwm.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM_start'
;------------------------------------------------------------
;	pwm.c:62: void PWM_start(void)
;	-----------------------------------------
;	 function PWM_start
;	-----------------------------------------
_PWM_start:
;	pwm.c:66: CCAP0L = 0x00;  // Clear low byte of PCA module 0
	mov	_CCAP0L,#0x00
;	pwm.c:67: CCAP0H = 0x00;  // Clear high byte of PCA module 0
	mov	_CCAP0H,#0x00
;	pwm.c:68: CCAPM0 = 0x00;  // Clear PCA module 0 control register
	mov	_CCAPM0,#0x00
;	pwm.c:72: CCAP0L = 0xAC;
	mov	_CCAP0L,#0xac
;	pwm.c:73: CCAP0H = 0xAC;
	mov	_CCAP0H,#0xac
;	pwm.c:76: CMOD &= ~(CMOD_CIDL_BIT);
	anl	_CMOD,#0x7f
;	pwm.c:78: CCON |= CCON_CR_BIT;
	orl	_CCON,#0x40
;	pwm.c:81: CCAPM0 |= CCAPM0_ECOM_ENABLE_BIT |CCAPM0_PWM_ENABLE_BIT;
	orl	_CCAPM0,#0x42
;	pwm.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM_stop'
;------------------------------------------------------------
;	pwm.c:86: void PWM_stop(void)
;	-----------------------------------------
;	 function PWM_stop
;	-----------------------------------------
_PWM_stop:
;	pwm.c:90: CCAPM0 &= ~(CCAPM0_ECOM_ENABLE_BIT);
	anl	_CCAPM0,#0xbf
;	pwm.c:91: CCAPM0 &= ~(CCAPM0_PWM_ENABLE_BIT);
	anl	_CCAPM0,#0xfd
;	pwm.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_registers'
;------------------------------------------------------------
;	pwm.c:99: void init_registers(void)
;	-----------------------------------------
;	 function init_registers
;	-----------------------------------------
_init_registers:
;	pwm.c:102: CMOD = 0x00;    // Clear control mode register
	mov	_CMOD,#0x00
;	pwm.c:103: CL = 0x00;      // Clear low byte of PCA timer
	mov	_CL,#0x00
;	pwm.c:104: CH = 0x00;      // Clear high byte of PCA timer
	mov	_CH,#0x00
;	pwm.c:105: CCON = 0x00;    // Clear control register
	mov	_CCON,#0x00
;	pwm.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_fclk_to_max'
;------------------------------------------------------------
;	pwm.c:111: void set_fclk_to_max(void)
;	-----------------------------------------
;	 function set_fclk_to_max
;	-----------------------------------------
_set_fclk_to_max:
;	pwm.c:113: CKRL = 0xFF;
	mov	_CKRL,#0xff
;	pwm.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_fclk_to_min'
;------------------------------------------------------------
;	pwm.c:120: void set_fclk_to_min(void)
;	-----------------------------------------
;	 function set_fclk_to_min
;	-----------------------------------------
_set_fclk_to_min:
;	pwm.c:122: CKRL = 0x01;
	mov	_CKRL,#0x01
;	pwm.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_idle_mode'
;------------------------------------------------------------
;	pwm.c:128: void enter_idle_mode(void)
;	-----------------------------------------
;	 function enter_idle_mode
;	-----------------------------------------
_enter_idle_mode:
;	pwm.c:130: PCON |= PCON_IDLE_MODE_BIT;
	orl	_PCON,#0x01
;	pwm.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_power_down_mode'
;------------------------------------------------------------
;	pwm.c:135: void enter_power_down_mode(void)
;	-----------------------------------------
;	 function enter_power_down_mode
;	-----------------------------------------
_enter_power_down_mode:
;	pwm.c:137: PCON |= PCON_POWER_DOWN_BIT;
	orl	_PCON,#0x02
;	pwm.c:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_watchdog'
;------------------------------------------------------------
;	pwm.c:142: void init_watchdog(void)
;	-----------------------------------------
;	 function init_watchdog
;	-----------------------------------------
_init_watchdog:
;	pwm.c:145: CMOD |= CMOD_WDOG_ENABLE_BIT;   // set the watchdog timer to use external oscillator
	orl	_CMOD,#0x40
;	pwm.c:146: CCAP4L = 0x80; // Initialise the low byte of the capture and compare register 4 with 0xff
	mov	_CCAP4L,#0x80
;	pwm.c:147: CCAP4H = 0xFF; // Initialise the high byte of the capture and compare register 4 with 0xff
	mov	_CCAP4H,#0xff
;	pwm.c:148: CCAPM4 |= CCAPM4_MAT_BIT| CCAPM4_ECOM_BIT;  // set capture and compare mode for register 4 to high-byte-only mode with edge detection
	orl	_CCAPM4,#0x48
;	pwm.c:149: CR=1;
;	assignBit
	setb	_CR
;	pwm.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_interrupt0'
;------------------------------------------------------------
;	pwm.c:155: void enable_interrupt0(void)
;	-----------------------------------------
;	 function enable_interrupt0
;	-----------------------------------------
_enable_interrupt0:
;	pwm.c:158: IT0 = 1;           // Set INT0 to be edge-triggered
;	assignBit
	setb	_IT0
;	pwm.c:159: EX0 = 1;          // Enable INT0 interrupt
;	assignBit
	setb	_EX0
;	pwm.c:160: EA = 1;           // Enable global interrupts
;	assignBit
	setb	_EA
;	pwm.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_x2_mode'
;------------------------------------------------------------
;	pwm.c:166: void set_x2_mode(void)
;	-----------------------------------------
;	 function set_x2_mode
;	-----------------------------------------
_set_x2_mode:
;	pwm.c:168: CKCON0 = 0x00;
	mov	_CKCON0,#0x00
;	pwm.c:169: CKCON0 |= CKCON0_X2_BIT;
	orl	_CKCON0,#0x01
;	pwm.c:170: CKCON0 |= CKCON0_TIX2_BIT;
	orl	_CKCON0,#0x04
;	pwm.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_ISR'
;------------------------------------------------------------
;	pwm.c:174: void PCA_ISR(void) __interrupt (7){
;	-----------------------------------------
;	 function PCA_ISR
;	-----------------------------------------
_PCA_ISR:
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
;	pwm.c:175: if (CCON & CCON_CCF1_BIT) {       // Check if PCA Module 1 triggered the interrupt
	mov	a,_CCON
	jnb	acc.1,00102$
;	pwm.c:176: CCON &= ~(CCON_CCF1_BIT);       // Clear the interrupt flag for PCA Module 1
	anl	_CCON,#0xfd
;	pwm.c:179: CCAP4H = 0xFF;           // Set high byte of the compare value
	mov	_CCAP4H,#0xff
;	pwm.c:180: CCAP4L = 0x80;           // Set low byte of the compare value (e.g., 0xFF80)
	mov	_CCAP4L,#0x80
;	pwm.c:181: printf("WR");
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
00102$:
;	pwm.c:183: printf("V");
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
;	pwm.c:184: }
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
;Allocation info for local variables in function 'init_pca_sw_timer'
;------------------------------------------------------------
;	pwm.c:189: void init_pca_sw_timer()
;	-----------------------------------------
;	 function init_pca_sw_timer
;	-----------------------------------------
_init_pca_sw_timer:
;	pwm.c:191: CCAP1L |= 0xFF; // load the low byte of the capture and compare register 4 with 0xff
	mov	a,_CCAP1L
	mov	_CCAP1L,#0xff
;	pwm.c:192: CCAP1H |= 0x50; // load the high byte of the capture and compare register 4 with 0x50
	orl	_CCAP1H,#0x50
;	pwm.c:194: CCON |= CCON_CR_BIT;
	orl	_CCON,#0x40
;	pwm.c:196: CMOD |=CMOD_ECF_BIT; //Enable PCA Counter flow interrupt ,if set it enables the CF bit in CCON to generate an interrupt
	orl	_CMOD,#0x01
;	pwm.c:198: CMOD |= CMOD_CPS0_BIT ;
	orl	_CMOD,#0x02
;	pwm.c:199: CMOD &= ~(CMOD_CPS1_BIT);
	anl	_CMOD,#0xfb
;	pwm.c:200: CH = 0x00;
	mov	_CH,#0x00
;	pwm.c:201: CL = 0x00;
	mov	_CL,#0x00
;	pwm.c:203: IEN0 |= (1<<6);
	orl	_IEN0,#0x40
;	pwm.c:205: CCAPM1 |= CCAPM1_CCF1_BIT |CCAPM1_MAT_BIT |CCAPM1_ECOM_BIT  ;
	orl	_CCAPM1,#0x4a
;	pwm.c:209: EA = 1;              // Enable global interrupts
;	assignBit
	setb	_EA
;	pwm.c:210: EC = 1;              // Enable PCA interrupt
;	assignBit
	setb	_EC
;	pwm.c:211: CR = 1;              // Start PCA by setting CR bit in CCON
;	assignBit
	setb	_CR
;	pwm.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_high_speed_mode'
;------------------------------------------------------------
;	pwm.c:217: void init_high_speed_mode(void)
;	-----------------------------------------
;	 function init_high_speed_mode
;	-----------------------------------------
_init_high_speed_mode:
;	pwm.c:221: CMOD |= CMOD_CPS0_BIT ;
	orl	_CMOD,#0x02
;	pwm.c:222: CMOD &= ~(CMOD_CPS1_BIT);
	anl	_CMOD,#0xfb
;	pwm.c:223: CCAP2L = 0xAC;
	mov	_CCAP2L,#0xac
;	pwm.c:224: CCAP2H = 0xAC;
	mov	_CCAP2H,#0xac
;	pwm.c:227: CCON |= CCON_CR_BIT;
	orl	_CCON,#0x40
;	pwm.c:229: CCAPM2 = 0x4C; // Set capture/compare register mode to set toggle, MAT and ECOM register
	mov	_CCAPM2,#0x4c
;	pwm.c:230: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_high_speed_mode'
;------------------------------------------------------------
;	pwm.c:234: void stop_high_speed_mode(void)
;	-----------------------------------------
;	 function stop_high_speed_mode
;	-----------------------------------------
_stop_high_speed_mode:
;	pwm.c:237: CCAPM0 = 0x00;
	mov	_CCAPM0,#0x00
;	pwm.c:239: return;
;	pwm.c:240: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cmd_received              Allocated with name '_main_cmd_received_65537_106'
;------------------------------------------------------------
;	pwm.c:243: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	pwm.c:247: printf("--------------------------------------------------------------------------------------------\r\n");
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
;	pwm.c:248: printf("                           Welcome to PCA demo  Lab 3 Part3                                 \r\n");
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
;	pwm.c:249: printf("--------------------------------------------------------------------------------------------\r\n");
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
;	pwm.c:250: printf("Press A : To Run PWM\r\n");
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
;	pwm.c:251: printf("Press B : To Stop PWM\r\n");
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
;	pwm.c:252: printf("Press C : To set Fclk Peripheral to minimum frequency\r\n");
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
;	pwm.c:253: printf("Press D : To set Fclk Peripheral to maximum frequency\r\n");
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
;	pwm.c:254: printf("Press E : To enter IDLE mode\r\n");
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
;	pwm.c:255: printf("Press F : To enter power down mode\r\n");
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
;	pwm.c:256: printf("Press G : To activate watchdog timer\r\n");
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
;	pwm.c:257: printf("Press H : To activate High speed mode\r\n");
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
;	pwm.c:258: printf("Press I : To deactivate High speed mode\r\n");
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
;	pwm.c:260: init_registers();
	lcall	_init_registers
;	pwm.c:261: set_x2_mode();
	lcall	_set_x2_mode
;	pwm.c:266: while (1)
00113$:
;	pwm.c:268: printf("\r\n Enter the command:");
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
;	pwm.c:269: cmd_received= getchar();
	lcall	_getchar
	mov	r6,dpl
;	pwm.c:270: printf("%c\r\n",cmd_received);
	mov	a,r6
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
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
	pop	ar6
;	pwm.c:271: switch (cmd_received)
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0xc1
	jnc	00129$
	ljmp	00110$
00129$:
	clr	c
	mov	a,#(0x49 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00130$
	ljmp	00110$
00130$:
	mov	a,r6
	add	a,#0xbf
	mov	r6,a
	add	a,#(00131$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00132$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00131$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
00132$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
;	pwm.c:273: case 'A':
00101$:
;	pwm.c:274: PWM_start();
	lcall	_PWM_start
;	pwm.c:275: printf("Started PWM \r\n");
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
;	pwm.c:276: break;
	ljmp	00113$
;	pwm.c:277: case 'B':
00102$:
;	pwm.c:278: PWM_stop();
	lcall	_PWM_stop
;	pwm.c:279: printf("Stopped PWM\r\n");
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
;	pwm.c:280: break;
	ljmp	00113$
;	pwm.c:281: case 'C':
00103$:
;	pwm.c:282: set_fclk_to_min();
	lcall	_set_fclk_to_min
;	pwm.c:283: printf("Fclk peripheral is set to minimum frequency\r\n");
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
;	pwm.c:284: break;
	ljmp	00113$
;	pwm.c:285: case 'D':
00104$:
;	pwm.c:286: set_fclk_to_max();
	lcall	_set_fclk_to_max
;	pwm.c:287: printf("Fclk peripheral is set to maximum frequency\r\n");
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
;	pwm.c:288: break;
	ljmp	00113$
;	pwm.c:289: case 'E':
00105$:
;	pwm.c:290: printf("Enabling INT0. To exit IDLE mode connect INT0 line to GND\r\n");
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
;	pwm.c:291: enable_interrupt0();
	lcall	_enable_interrupt0
;	pwm.c:292: printf("Entering IDLE mode\r\n");
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
;	pwm.c:293: enter_idle_mode();
	lcall	_enter_idle_mode
;	pwm.c:294: break;
	ljmp	00113$
;	pwm.c:295: case 'F':
00106$:
;	pwm.c:296: printf("Entering power down mode\r\n");
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
;	pwm.c:297: enter_power_down_mode();
	lcall	_enter_power_down_mode
;	pwm.c:298: break;
	ljmp	00113$
;	pwm.c:299: case 'G':
00107$:
;	pwm.c:300: printf("Activating watchdog\r\n");
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
;	pwm.c:301: init_watchdog();
	lcall	_init_watchdog
;	pwm.c:302: break;
	ljmp	00113$
;	pwm.c:303: case 'H':
00108$:
;	pwm.c:304: printf("Activating High speed mode");
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
;	pwm.c:305: init_high_speed_mode();
	lcall	_init_high_speed_mode
;	pwm.c:306: break;
	ljmp	00113$
;	pwm.c:307: case 'I':
00109$:
;	pwm.c:308: printf("Deactivating High speed mode");
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
;	pwm.c:309: stop_high_speed_mode();
	lcall	_stop_high_speed_mode
;	pwm.c:310: default:
00110$:
;	pwm.c:311: printf("Invalid input\r\n");
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
;	pwm.c:313: }
;	pwm.c:315: }
	ljmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "WR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "V"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "------------------------------------------------------------"
	.ascii "--------------------------------"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "                           Welcome to PCA demo  Lab 3 Part3 "
	.ascii "                                "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Press A : To Run PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Press B : To Stop PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Press C : To set Fclk Peripheral to minimum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Press D : To set Fclk Peripheral to maximum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Press E : To enter IDLE mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Press F : To enter power down mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Press G : To activate watchdog timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Press H : To activate High speed mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Press I : To deactivate High speed mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii " Enter the command:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "%c"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Started PWM "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Stopped PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Fclk peripheral is set to minimum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Fclk peripheral is set to maximum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Enabling INT0. To exit IDLE mode connect INT0 line to GND"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Entering IDLE mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Entering power down mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Activating watchdog"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Activating High speed mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Deactivating High speed mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Invalid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
