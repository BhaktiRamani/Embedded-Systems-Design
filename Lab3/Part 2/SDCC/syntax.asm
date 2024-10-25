;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module syntax
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _get_command
	.globl _init_uart
	.globl ___sdcc_external_startup
	.globl _dataout
	.globl _printf
	.globl _free
	.globl _malloc
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
	.globl _pointer2
	.globl _pointer1
	.globl _recived_bytes
	.globl _recent_storage
	.globl _recent_commands
	.globl _total_number_of_storage
	.globl _total_number_of_commands
	.globl _get_buf_value_PARM_3
	.globl _get_buf_value_PARM_2
	.globl _array_for_nodes
	.globl _dataout_PARM_2
	.globl _putchar
	.globl _getchar
	.globl _get_buf_value
	.globl _sendUint32ToUART
	.globl _print_prompt
	.globl _buffer0_dump
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
_get_command_sloc0_1_0:
	.ds 2
_get_command_sloc1_1_0:
	.ds 3
_main_sloc0_1_0:
	.ds 2
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
_dataout_PARM_2:
	.ds 1
_dataout_val1_65536_41:
	.ds 2
_node_count:
	.ds 1
_array_for_nodes::
	.ds 600
_putchar_chr_65536_51:
	.ds 2
_get_buf_value_PARM_2:
	.ds 2
_get_buf_value_PARM_3:
	.ds 2
_get_buf_value_string_65536_55:
	.ds 3
_get_buf_value_data_from_serial_65536_56:
	.ds 2
_get_buf_value_buffer_size_65536_56:
	.ds 2
_get_buf_value_index_65536_56:
	.ds 2
_sendUint32ToUART_value_65536_60:
	.ds 4
_print_prompt_string_65536_63:
	.ds 3
_get_command_command_65536_66:
	.ds 2
_get_command_rd_ptr_131073_72:
	.ds 3
_get_command_temp_131073_72:
	.ds 1
_get_command_node_131074_77:
	.ds 6
_buffer0_dump_rd_ptr_65536_79:
	.ds 3
_buffer0_dump_temp_65536_79:
	.ds 1
_main_node1_65537_88:
	.ds 6
_main_node2_65538_89:
	.ds 6
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_index_of_buffers:
	.ds 1
_total_number_of_commands::
	.ds 1
_total_number_of_storage::
	.ds 1
_recent_commands::
	.ds 1
_recent_storage::
	.ds 1
_recived_bytes::
	.ds 1
_pointer1::
	.ds 2
_pointer2::
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
;Allocation info for local variables in function 'dataout'
;------------------------------------------------------------
;x                         Allocated with name '_dataout_PARM_2'
;val1                      Allocated with name '_dataout_val1_65536_41'
;------------------------------------------------------------
;	syntax.c:15: void dataout(uint16_t val1, uint8_t x){
;	-----------------------------------------
;	 function dataout
;	-----------------------------------------
_dataout:
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
	mov	dptr,#_dataout_val1_65536_41
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:16: DPL = val1 & 0xFF;
	mov	dptr,#_dataout_val1_65536_41
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_DPL,r6
;	syntax.c:17: DPH = (val1 >> 8) & 0xFF;
	mov	_DPH,r7
;	syntax.c:18: ACC = x;
	mov	dptr,#_dataout_PARM_2
	movx	a,@dptr
	mov	_ACC,a
;	syntax.c:19: __asm__("movx @dptr, a");
	movx	@dptr, a
;	syntax.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__sdcc_external_startup'
;------------------------------------------------------------
;	syntax.c:59: unsigned char __sdcc_external_startup(void){
;	-----------------------------------------
;	 function __sdcc_external_startup
;	-----------------------------------------
___sdcc_external_startup:
;	syntax.c:60: AUXR |= (XRS1 | XRS0);
	orl	_AUXR,#0x0c
;	syntax.c:61: AUXR &= ~(XRS2);
	anl	_AUXR,#0xef
;	syntax.c:62: return 0;
	mov	dpl,#0x00
;	syntax.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart'
;------------------------------------------------------------
;	syntax.c:65: void init_uart(){
;	-----------------------------------------
;	 function init_uart
;	-----------------------------------------
_init_uart:
;	syntax.c:66: SCON = 0x50;
	mov	_SCON,#0x50
;	syntax.c:67: TMOD = 0x20;
	mov	_TMOD,#0x20
;	syntax.c:68: TH1 = 0xFD;
	mov	_TH1,#0xfd
;	syntax.c:69: TR1 = 1;
;	assignBit
	setb	_TR1
;	syntax.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;chr                       Allocated with name '_putchar_chr_65536_51'
;------------------------------------------------------------
;	syntax.c:72: int putchar(int chr){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_chr_65536_51
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:73: SBUF = chr;
	mov	dptr,#_putchar_chr_65536_51
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	syntax.c:74: while(!TI);
00101$:
;	syntax.c:75: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	syntax.c:76: return 1;
	mov	dptr,#0x0001
;	syntax.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;a                         Allocated with name '_getchar_a_65537_54'
;------------------------------------------------------------
;	syntax.c:80: int getchar(){
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	syntax.c:82: while(!RI);
00101$:
	jnb	_RI,00101$
;	syntax.c:83: int a = SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
;	syntax.c:84: RI = 0;
;	assignBit
	clr	_RI
;	syntax.c:85: recived_bytes++;
	mov	dptr,#_recived_bytes
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:86: return a;
	mov	dpl,r6
	mov	dph,r7
;	syntax.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_buf_value'
;------------------------------------------------------------
;UPPER                     Allocated with name '_get_buf_value_PARM_2'
;LOWER                     Allocated with name '_get_buf_value_PARM_3'
;string                    Allocated with name '_get_buf_value_string_65536_55'
;data_from_serial          Allocated with name '_get_buf_value_data_from_serial_65536_56'
;buffer_size               Allocated with name '_get_buf_value_buffer_size_65536_56'
;index                     Allocated with name '_get_buf_value_index_65536_56'
;------------------------------------------------------------
;	syntax.c:91: int get_buf_value(const char * string, int UPPER, int LOWER){
;	-----------------------------------------
;	 function get_buf_value
;	-----------------------------------------
_get_buf_value:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_buf_value_string_65536_55
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:92: int data_from_serial = 0;
	mov	dptr,#_get_buf_value_data_from_serial_65536_56
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:93: int buffer_size = 0;
	mov	dptr,#_get_buf_value_buffer_size_65536_56
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:94: int index = 1000;
	mov	dptr,#_get_buf_value_index_65536_56
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
;	syntax.c:97: print_prompt(string);
	mov	dptr,#_get_buf_value_string_65536_55
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_print_prompt
;	syntax.c:100: while(index >= 1 & data_from_serial != 0x0d){
00107$:
	mov	dptr,#_get_buf_value_index_65536_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#_get_buf_value_data_from_serial_65536_56
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	cjne	r5,#0x0d,00133$
	cjne	r6,#0x00,00133$
	inc	a
00133$:
	cjne	a,#0x01,00135$
00135$:
	clr	a
	rlc	a
	mov	r6,a
	anl	a,r7
	jnz	00136$
	ljmp	00109$
00136$:
;	syntax.c:101: data_from_serial = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_get_buf_value_data_from_serial_65536_56
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:102: if((data_from_serial < '0' || data_from_serial > '9') && data_from_serial != 0x0d) {
	clr	c
	mov	a,r6
	subb	a,#0x30
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00104$
	mov	a,#0x39
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00104$:
	cjne	r6,#0x0d,00139$
	cjne	r7,#0x00,00139$
	sjmp	00102$
00139$:
;	syntax.c:103: print_prompt("\nEnter valid input\n\r");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:104: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	syntax.c:107: if(data_from_serial == 0x0d){
	cjne	r6,#0x0d,00140$
	cjne	r7,#0x00,00140$
	sjmp	00109$
00140$:
;	syntax.c:111: putchar(data_from_serial);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	syntax.c:112: buffer_size += (data_from_serial-48)*index;
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_get_buf_value_index_65536_56
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	dptr,#_get_buf_value_buffer_size_65536_56
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_get_buf_value_buffer_size_65536_56
	mov	a,r6
	add	a,r2
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	syntax.c:113: index=index/10;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_get_buf_value_index_65536_56
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00107$
00109$:
;	syntax.c:115: printf("SIZE ENTERED : %d\n\r", buffer_size);
	mov	dptr,#_get_buf_value_buffer_size_65536_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:122: return buffer_size;
	mov	dpl,r6
	mov	dph,r7
;	syntax.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendUint32ToUART'
;------------------------------------------------------------
;value                     Allocated with name '_sendUint32ToUART_value_65536_60'
;byte                      Allocated with name '_sendUint32ToUART_byte_65536_61'
;i                         Allocated with name '_sendUint32ToUART_i_65536_61'
;byte                      Allocated with name '_sendUint32ToUART_byte_131072_62'
;------------------------------------------------------------
;	syntax.c:126: void sendUint32ToUART(uint32_t value) {
;	-----------------------------------------
;	 function sendUint32ToUART
;	-----------------------------------------
_sendUint32ToUART:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_sendUint32ToUART_value_65536_60
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	syntax.c:129: while (value > 1) {
00101$:
	mov	dptr,#_sendUint32ToUART_value_65536_60
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
;	syntax.c:130: int byte = value % 10; // Extract one byte at a time
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
;	syntax.c:131: putchar(byte);
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:132: value = value / 10;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_sendUint32ToUART_value_65536_60
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00104$:
;	syntax.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_prompt'
;------------------------------------------------------------
;string                    Allocated with name '_print_prompt_string_65536_63'
;------------------------------------------------------------
;	syntax.c:138: void print_prompt(const char * string){
;	-----------------------------------------
;	 function print_prompt
;	-----------------------------------------
_print_prompt:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_prompt_string_65536_63
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:139: while(*string != '\0'){
	mov	dptr,#_print_prompt_string_65536_63
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	syntax.c:140: putchar(*string);
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:141: string++;
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_print_prompt_string_65536_63
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_print_prompt_string_65536_63
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_command'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_command_sloc0_1_0'
;sloc1                     Allocated with name '_get_command_sloc1_1_0'
;command                   Allocated with name '_get_command_command_65536_66'
;temp_value                Allocated with name '_get_command_temp_value_65536_67'
;pointer                   Allocated with name '_get_command_pointer_65536_67'
;array_index_temp          Allocated with name '_get_command_array_index_temp_65536_67'
;i                         Allocated with name '_get_command_i_196608_69'
;rd_ptr                    Allocated with name '_get_command_rd_ptr_131073_72'
;wr_ptr                    Allocated with name '_get_command_wr_ptr_131073_72'
;temp                      Allocated with name '_get_command_temp_131073_72'
;i                         Allocated with name '_get_command_i_262145_74'
;node                      Allocated with name '_get_command_node_131074_77'
;------------------------------------------------------------
;	syntax.c:152: int get_command(int command){
;	-----------------------------------------
;	 function get_command
;	-----------------------------------------
_get_command:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_command_command_65536_66
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:160: switch(command){
	mov	dptr,#_get_command_command_65536_66
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x2b,00187$
	cjne	r7,#0x00,00187$
	ljmp	00110$
00187$:
	cjne	r6,#0x2d,00188$
	cjne	r7,#0x00,00188$
	ljmp	00113$
00188$:
	cjne	r6,#0x3d,00189$
	cjne	r7,#0x00,00189$
	ljmp	00118$
00189$:
	cjne	r6,#0x3f,00190$
	cjne	r7,#0x00,00190$
	sjmp	00191$
00190$:
	ljmp	00120$
00191$:
;	syntax.c:164: print_prompt("Total number of commands from the start: ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:165: printf("%d",total_number_of_commands);
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:166: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:167: print_prompt("Recent number of commands from the last ?: ");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:168: printf("%d",recent_commands);
	mov	dptr,#_recent_commands
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:169: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:170: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:172: print_prompt("Total number of storage chars from the start: ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:173: printf("%d",total_number_of_storage);
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:174: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:175: print_prompt("Recent number of storage chars from the last ?: ");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:176: printf("%d",recent_storage);
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:177: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:178: print_prompt("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:180: for(int i=0; i<99; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00122$:
	clr	c
	mov	a,r6
	subb	a,#0x63
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00192$
	ljmp	00105$
00192$:
;	syntax.c:181: if(array_for_nodes[i]){
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_array_for_nodes
	mov	r4,a
	mov	a,r5
	addc	a,#(_array_for_nodes >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jz	00123$
;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_get_command_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc0_1_0 + 1),a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_get_command_sloc0_1_0
	add	a,r0
	mov	r2,a
	mov	a,(_get_command_sloc0_1_0 + 1)
	addc	a,r1
	mov	r3,a
	mov	ar6,r7
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	_get_command_sloc0_1_0
	push	(_get_command_sloc0_1_0 + 1)
	push	ar2
	push	ar3
	push	ar6
	push	ar0
	push	ar1
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:244: return 0;
	pop	ar7
	pop	ar6
;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
00123$:
;	syntax.c:180: for(int i=0; i<99; i++){
	inc	r6
	cjne	r6,#0x00,00194$
	inc	r7
00194$:
	ljmp	00122$
00105$:
;	syntax.c:189: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	_get_command_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc1_1_0 + 2),a
	mov	dptr,#_get_command_rd_ptr_131073_72
	mov	a,_get_command_sloc1_1_0
	movx	@dptr,a
	mov	a,(_get_command_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_get_command_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	syntax.c:191: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	dptr,#_get_command_temp_131073_72
	movx	@dptr,a
;	syntax.c:192: printf("....... Dumping Buffer0 ......\r\n");
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
;	syntax.c:193: while(temp){
00107$:
	mov	dptr,#_get_command_temp_131073_72
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jnz	00195$
	ljmp	00109$
00195$:
;	syntax.c:194: printf("%p: ", rd_ptr);
	push	ar4
	mov	dptr,#_get_command_rd_ptr_131073_72
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
;	syntax.c:195: for(int i=15; i>=0;i--){
	mov	dptr,#_get_command_rd_ptr_131073_72
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_get_command_sloc0_1_0,#0x0f
	mov	(_get_command_sloc0_1_0 + 1),#0x00
00125$:
	mov	a,(_get_command_sloc0_1_0 + 1)
	jnb	acc.7,00196$
	ljmp	00144$
00196$:
;	syntax.c:196: printf("%d ",(*rd_ptr & (0x00FF)));
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
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
	pop	ar1
	pop	ar2
	pop	ar3
;	syntax.c:197: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	inc	dptr
	mov	r1,dpl
	mov	r2,dph
	mov	r7,#0x00
	mov	r6,#0x00
	push	ar3
	push	ar2
	push	ar1
	push	ar7
	push	ar6
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
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	syntax.c:198: *wr_ptr = 0;
	mov	dpl,_get_command_sloc1_1_0
	mov	dph,(_get_command_sloc1_1_0 + 1)
	mov	b,(_get_command_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
;	syntax.c:199: rd_ptr++;
;	syntax.c:200: temp--;
	dec	r4
;	syntax.c:195: for(int i=15; i>=0;i--){
	dec	_get_command_sloc0_1_0
	mov	a,#0xff
	cjne	a,_get_command_sloc0_1_0,00197$
	dec	(_get_command_sloc0_1_0 + 1)
00197$:
	ljmp	00125$
00144$:
	mov	dptr,#_get_command_rd_ptr_131073_72
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_command_temp_131073_72
	mov	a,r4
	movx	@dptr,a
;	syntax.c:202: printf("\r\n");
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
	ljmp	00107$
00109$:
;	syntax.c:206: recent_commands = 0;
	mov	dptr,#_recent_commands
	clr	a
	movx	@dptr,a
;	syntax.c:207: recent_storage = 0;
	mov	dptr,#_recent_storage
	movx	@dptr,a
;	syntax.c:208: break;
	ljmp	00120$
;	syntax.c:210: case '+':
00110$:
;	syntax.c:211: temp_value = get_buf_value("\n\rEnter buffer size between 20 to 400: ", UPPER_SMALL_BUFFERS, LOWER_SMALL_BUFFERS);
	mov	dptr,#_get_buf_value_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buf_value_PARM_3
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_get_buf_value
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:212: print_prompt("Buffer size you entered is : ");
	mov	dptr,#___str_14
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_print_prompt
	pop	ar6
	pop	ar7
;	syntax.c:213: printf("%d \n\r", temp_value);
	push	ar7
	push	ar6
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
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:215: pointer = (__xdata uint8_t *) malloc(temp_value);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	syntax.c:216: if (pointer == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00112$
;	syntax.c:217: print_prompt("\n\rFailed to get malloc try to enter smaller size by again entering +");
	mov	dptr,#___str_16
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_print_prompt
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00112$:
;	syntax.c:221: node_t node = {index_of_buffers, pointer, temp_value};
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	dptr,#_get_command_node_131074_77
	movx	@dptr,a
	mov	r3,#0x00
	mov	dptr,#(_get_command_node_131074_77 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_get_command_node_131074_77 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:222: array_for_nodes[index_of_buffers] = node;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_array_for_nodes
	mov	r6,a
	mov	a,#(_array_for_nodes >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_get_command_node_131074_77
	movx	@dptr,a
	mov	a,#(_get_command_node_131074_77 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	___memcpy
;	syntax.c:223: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:224: break;
;	syntax.c:226: case '-':
	sjmp	00120$
00113$:
;	syntax.c:227: print_prompt("\n\rEnter Number to delete between 0 to 127 for buffer:");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:228: temp_value = getchar();
	lcall	_getchar
;	syntax.c:229: putchar(temp_value);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	syntax.c:230: if(temp_value <= 0) break;
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
;	syntax.c:231: if(array_for_nodes[temp_value]){
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_array_for_nodes
	mov	r6,a
	mov	a,r7
	addc	a,#(_array_for_nodes >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00120$
;	syntax.c:232: array_for_nodes[temp_value].size = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:233: free(array_for_nodes[temp_value].data_pointer);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	syntax.c:235: break;
;	syntax.c:237: case '=':
	sjmp	00120$
00118$:
;	syntax.c:238: buffer0_dump();
	lcall	_buffer0_dump
;	syntax.c:242: }
00120$:
;	syntax.c:244: return 0;
	mov	dptr,#0x0000
;	syntax.c:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer0_dump'
;------------------------------------------------------------
;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_65536_79'
;temp                      Allocated with name '_buffer0_dump_temp_65536_79'
;i                         Allocated with name '_buffer0_dump_i_196608_81'
;------------------------------------------------------------
;	syntax.c:247: void buffer0_dump(){
;	-----------------------------------------
;	 function buffer0_dump
;	-----------------------------------------
_buffer0_dump:
;	syntax.c:248: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:249: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	dptr,#_buffer0_dump_temp_65536_79
	movx	@dptr,a
;	syntax.c:250: printf("....... Dumping Buffer0 ......\r\n");
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
;	syntax.c:251: while(temp){
00102$:
	mov	dptr,#_buffer0_dump_temp_65536_79
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00127$
	ret
00127$:
;	syntax.c:252: printf("%p: ", rd_ptr);
	push	ar7
	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
;	syntax.c:253: for(int i=15; i>=0;i--){
	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r2,#0x0f
	mov	r3,#0x00
00106$:
	mov	a,r3
	jnb	acc.7,00128$
	ljmp	00114$
00128$:
;	syntax.c:254: printf("%d ",(*rd_ptr & (0x00FF)));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	syntax.c:255: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#0x00
	mov	r1,#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:256: rd_ptr++;
;	syntax.c:257: temp--;
	dec	r7
;	syntax.c:253: for(int i=15; i>=0;i--){
	dec	r2
	cjne	r2,#0xff,00129$
	dec	r3
00129$:
	ljmp	00106$
00114$:
	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer0_dump_temp_65536_79
	mov	a,r7
	movx	@dptr,a
;	syntax.c:259: printf("\r\n");
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
;	syntax.c:261: }
	ljmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;buffer_size               Allocated with name '_main_buffer_size_65536_84'
;node1                     Allocated with name '_main_node1_65537_88'
;node2                     Allocated with name '_main_node2_65538_89'
;wr                        Allocated with name '_main_wr_65539_90'
;ch                        Allocated with name '_main_ch_131075_91'
;cha                       Allocated with name '_main_cha_131076_94'
;temp_buffer_size          Allocated to registers 
;index_for_write           Allocated to registers 
;------------------------------------------------------------
;	syntax.c:264: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	syntax.c:270: do{
00108$:
;	syntax.c:271: buffer_size  = get_buf_value("Enter buffer size between 32 and 4800 bytes (buffer size must be evenly divisible by 16): ", upper_default, LOWER_DEFAULT);
	mov	dptr,#_get_buf_value_PARM_2
	mov	a,#0xc0
	movx	@dptr,a
	mov	a,#0x12
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buf_value_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_get_buf_value
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:273: print_prompt("Buffer you entered is : 0x");
	mov	dptr,#___str_19
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_print_prompt
	pop	ar6
	pop	ar7
;	syntax.c:274: printf("%d \n\r", buffer_size);
	push	ar7
	push	ar6
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
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:276: if(buffer_size == -1) continue;
	cjne	r6,#0xff,00171$
	cjne	r7,#0xff,00171$
	ljmp	00109$
00171$:
;	syntax.c:278: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_pointer1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	syntax.c:279: if (pointer1 == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00104$
;	syntax.c:280: print_prompt("Failed to get malloc try to enter smaller size for buf 1\n\r");
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_print_prompt
	pop	ar6
	pop	ar7
;	syntax.c:281: continue;
	sjmp	00109$
00104$:
;	syntax.c:286: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_pointer2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	syntax.c:287: if (pointer2 == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00106$
;	syntax.c:288: free(pointer1);
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	push	ar7
	push	ar6
	lcall	_free
;	syntax.c:290: print_prompt("Failed to get malloc try to enter smaller size for buf 2\n\r");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_print_prompt
	pop	ar6
	pop	ar7
;	syntax.c:291: continue;
	sjmp	00109$
00106$:
;	syntax.c:295: printf("pointer_value : %p %p\n\r", pointer1, pointer2);
	mov	r3,#0x00
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar3
	push	ar1
	push	ar0
	push	ar2
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar6
	pop	ar7
00109$:
;	syntax.c:296: }while( pointer2 == NULL || pointer1 == NULL);
	mov	dptr,#_pointer2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00174$
	ljmp	00108$
00174$:
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00175$
	ljmp	00108$
00175$:
;	syntax.c:298: index_of_buffers = 0;
	mov	dptr,#_index_of_buffers
	clr	a
	movx	@dptr,a
;	syntax.c:300: node_t node1 = { index_of_buffers, pointer1, buffer_size};
	mov	dptr,#_main_node1_65537_88
	movx	@dptr,a
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#(_main_node1_65537_88 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_node1_65537_88 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:301: array_for_nodes[index_of_buffers] = node1;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_array_for_nodes
	mov	r4,a
	mov	a,#(_array_for_nodes >> 8)
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_main_node1_65537_88
	movx	@dptr,a
	mov	a,#(_main_node1_65537_88 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	lcall	___memcpy
;	syntax.c:302: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_array_for_nodes
	mov	r4,a
	mov	a,#(_array_for_nodes >> 8)
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar1
	push	ar4
	push	ar5
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:303: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:305: node_t node2 = { index_of_buffers, pointer2, buffer_size};
	movx	a,@dptr
	mov	dptr,#_main_node2_65538_89
	movx	@dptr,a
	mov	dptr,#_pointer2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#(_main_node2_65538_89 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_node2_65538_89 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:306: array_for_nodes[index_of_buffers] = node2;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_array_for_nodes
	mov	r6,a
	mov	a,#(_array_for_nodes >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_main_node2_65538_89
	movx	@dptr,a
	mov	a,#(_main_node2_65538_89 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	___memcpy
;	syntax.c:307: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_array_for_nodes
	mov	r6,a
	mov	a,#(_array_for_nodes >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar5
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	syntax.c:308: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:310: print_prompt("Enter Uppercase char to save in buffer 0: \n\r");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:312: __idata int temp_buffer_size = array_for_nodes[0].size;
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	syntax.c:315: uint8_t * wr = array_for_nodes[0].data_pointer;
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	syntax.c:317: do{
00114$:
;	syntax.c:318: int ch = getchar();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getchar
;	syntax.c:319: putchar(ch);
	mov	r1,dpl
	mov  r2,dph
	push	ar2
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:320: if(ch < 65 || ch > 90) {
	clr	c
	mov	a,r1
	subb	a,#0x41
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00111$
	mov	a,#0x5a
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
00111$:
;	syntax.c:321: total_number_of_commands+=1;
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:322: recent_commands+=1;
	mov	dptr,#_recent_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:323: print_prompt("Command recived ! \n\r");
	mov	dptr,#___str_25
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_print_prompt
	pop	ar1
	pop	ar2
;	syntax.c:324: get_command(ch);
	mov	dpl,r1
	mov	dph,r2
	lcall	_get_command
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:325: continue;
	sjmp	00115$
00112$:
;	syntax.c:327: total_number_of_storage = total_number_of_storage + 1;
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:328: recent_storage = recent_storage + 1;
	mov	dptr,#_recent_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:330: *wr = ch;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	syntax.c:331: wr++;
;	syntax.c:332: printf("total storage %d recent storage %d pointer %p \n\r", total_number_of_storage, recent_storage, wr);
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r0,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	ar0
	push	ar2
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:333: temp_buffer_size -= 1;
	dec	r6
	cjne	r6,#0xff,00178$
	dec	r7
00178$:
;	syntax.c:334: index_for_write += 1;
00115$:
;	syntax.c:335: }while(temp_buffer_size>0);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00179$
	ljmp	00114$
00179$:
;	syntax.c:336: printf("buffer0 got full nothing to write !");
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
;	syntax.c:341: while(1)
00122$:
;	syntax.c:343: print_prompt("Please enter An command (+) (-) (?) (=) (@): \n");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:344: int cha = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:345: if(cha < 65 || cha > 90) {
	clr	c
	mov	a,r6
	subb	a,#0x41
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00117$
	mov	a,#0x5a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
00117$:
;	syntax.c:346: total_number_of_commands+=1;
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:347: recent_commands+=1;
	mov	dptr,#_recent_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:348: print_prompt("Command recived ! \n\r");
	mov	dptr,#___str_25
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_print_prompt
	pop	ar6
	pop	ar7
	sjmp	00119$
00118$:
;	syntax.c:351: total_number_of_storage = total_number_of_storage + 1;
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:352: recent_storage = recent_storage + 1;
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r5,a
	inc	a
	movx	@dptr,a
00119$:
;	syntax.c:355: get_command(cha);
	mov	dpl,r6
	mov	dph,r7
	lcall	_get_command
;	syntax.c:362: }
	sjmp	00122$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.ascii "Enter valid input"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "SIZE ENTERED : %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Total number of commands from the start: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Recent number of commands from the last ?: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Total number of storage chars from the start: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Recent number of storage chars from the last ?: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Index: %d , starting address of Pointer: %p  Ending Address "
	.ascii "of the pointer %p size of array: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "....... Dumping Buffer0 ......"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "%p: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "%d "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "Enter buffer size between 20 to 400: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Buffer size you entered is : "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "%d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Failed to get malloc try to enter smaller size by again ente"
	.ascii "ring +"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "Enter Number to delete between 0 to 127 for buffer:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Enter buffer size between 32 and 4800 bytes (buffer size mus"
	.ascii "t be evenly divisible by 16): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Buffer you entered is : 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Failed to get malloc try to enter smaller size for buf 1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Failed to get malloc try to enter smaller size for buf 2"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "pointer_value : %p %p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "pointer location %p, size %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Enter Uppercase char to save in buffer 0: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Command recived ! "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "total storage %d recent storage %d pointer %p "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "buffer0 got full nothing to write !"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "Please enter An command (+) (-) (?) (=) (@): "
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__index_of_buffers:
	.db #0x00	; 0
__xinit__total_number_of_commands:
	.db #0x00	; 0
__xinit__total_number_of_storage:
	.db #0x00	; 0
__xinit__recent_commands:
	.db #0x00	; 0
__xinit__recent_storage:
	.db #0x00	; 0
__xinit__recived_bytes:
	.db #0x00	; 0
__xinit__pointer1:
	.byte #0x00,#0x00
__xinit__pointer2:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
