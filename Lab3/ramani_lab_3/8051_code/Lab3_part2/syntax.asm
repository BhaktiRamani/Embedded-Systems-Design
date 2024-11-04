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
	.globl _get_number
	.globl _dataout
	.globl _memset
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
	.globl _wr
	.globl _recived_bytes
	.globl _recent_storage
	.globl _recent_commands
	.globl _total_number_of_storage
	.globl _total_number_of_commands
	.globl _get_buf_value_PARM_3
	.globl _get_buf_value_PARM_2
	.globl _array_for_nodes
	.globl _dataout_PARM_2
	.globl _temp_buffer_size
	.globl _init_uart
	.globl _putchar
	.globl _getchar
	.globl _get_buf_value
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
_get_buf_value_sloc0_1_0:
	.ds 1
_get_buf_value_sloc1_1_0:
	.ds 2
_get_command_sloc0_1_0:
	.ds 2
_get_command_sloc1_1_0:
	.ds 3
_get_command_sloc2_1_0:
	.ds 3
_buffer0_dump_sloc0_1_0:
	.ds 2
_buffer0_dump_sloc1_1_0:
	.ds 3
_buffer0_dump_sloc2_1_0:
	.ds 2
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
_temp_buffer_size::
	.ds 2
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
_dataout_address_65536_65:
	.ds 2
_array_for_nodes::
	.ds 600
_putchar_chr_65536_75:
	.ds 2
_get_buf_value_PARM_2:
	.ds 2
_get_buf_value_PARM_3:
	.ds 2
_get_buf_value_string_65536_80:
	.ds 3
_get_buf_value_buffer_size_65536_81:
	.ds 2
_get_buf_value_input_65536_81:
	.ds 5
_get_buf_value_valid_input_65536_81:
	.ds 2
_print_prompt_string_65536_88:
	.ds 3
_get_number_prompt_65536_91:
	.ds 3
_get_number_buffer_size_65536_92:
	.ds 2
_get_number_index_65536_92:
	.ds 2
_get_command_command_65536_95:
	.ds 2
_get_command_node_196610_117:
	.ds 6
_buffer0_dump_offset_131073_125:
	.ds 2
_main_node1_65538_137:
	.ds 6
_main_node2_65539_138:
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
_wr::
	.ds 3
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
;	syntax.c:52: __idata int temp_buffer_size = 0;
	mov	r0,#_temp_buffer_size
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
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
;value                     Allocated with name '_dataout_PARM_2'
;address                   Allocated with name '_dataout_address_65536_65'
;debug_add                 Allocated with name '_dataout_debug_add_65536_66'
;------------------------------------------------------------
;	syntax.c:27: void dataout(uint16_t address, uint8_t value)
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
	mov	dptr,#_dataout_address_65536_65
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:29: __xdata unsigned char * debug_add = (__xdata unsigned char*)address;
	mov	dptr,#_dataout_address_65536_65
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	syntax.c:30: *debug_add = value; 
	mov	dptr,#_dataout_PARM_2
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	syntax.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart'
;------------------------------------------------------------
;	syntax.c:73: void init_uart(void)
;	-----------------------------------------
;	 function init_uart
;	-----------------------------------------
_init_uart:
;	syntax.c:75: SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
	mov	_SCON,#0x50
;	syntax.c:76: TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
	mov	_TMOD,#0x20
;	syntax.c:77: TH1 = 0xFD;                // 9600 baud rate
	mov	_TH1,#0xfd
;	syntax.c:78: TR1 = 1;                   // Start timer 1
;	assignBit
	setb	_TR1
;	syntax.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;chr                       Allocated with name '_putchar_chr_65536_75'
;------------------------------------------------------------
;	syntax.c:87: int putchar(int chr)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_chr_65536_75
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:89: SBUF = chr;                 // Load character to send
	mov	dptr,#_putchar_chr_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	syntax.c:90: while(!TI);                 // Wait for transmission complete
00101$:
;	syntax.c:92: TI = 0;                     // Clear transmission flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	syntax.c:93: return 1;
	mov	dptr,#0x0001
;	syntax.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;a                         Allocated with name '_getchar_a_65537_79'
;------------------------------------------------------------
;	syntax.c:102: int getchar(void){
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	syntax.c:103: while(!RI);                 // Wait for character reception
00101$:
	jnb	_RI,00101$
;	syntax.c:104: int a = SBUF;               // Get received character
	mov	r6,_SBUF
	mov	r7,#0x00
;	syntax.c:106: RI = 0;                     // Clear reception flag
;	assignBit
	clr	_RI
;	syntax.c:107: recived_bytes++;            // Update received byte count
	mov	dptr,#_recived_bytes
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:108: return a;
	mov	dpl,r6
	mov	dph,r7
;	syntax.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_buf_value'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_buf_value_sloc0_1_0'
;sloc1                     Allocated with name '_get_buf_value_sloc1_1_0'
;UPPER                     Allocated with name '_get_buf_value_PARM_2'
;LOWER                     Allocated with name '_get_buf_value_PARM_3'
;string                    Allocated with name '_get_buf_value_string_65536_80'
;buffer_size               Allocated with name '_get_buf_value_buffer_size_65536_81'
;input                     Allocated with name '_get_buf_value_input_65536_81'
;valid_input               Allocated with name '_get_buf_value_valid_input_65536_81'
;digit_count               Allocated with name '_get_buf_value_digit_count_131073_83'
;i                         Allocated with name '_get_buf_value_i_131073_83'
;c                         Allocated with name '_get_buf_value_c_131073_83'
;------------------------------------------------------------
;	syntax.c:120: int get_buf_value(const char* string, int UPPER, int LOWER) {
;	-----------------------------------------
;	 function get_buf_value
;	-----------------------------------------
_get_buf_value:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_buf_value_string_65536_80
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:121: int buffer_size = 0;
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:123: int valid_input = 0;
	mov	dptr,#_get_buf_value_valid_input_65536_81
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:125: while (!valid_input) {
	mov	dptr,#_get_buf_value_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_buf_value_PARM_3
	movx	a,@dptr
	mov	_get_buf_value_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_buf_value_sloc1_1_0 + 1),a
00117$:
	mov	dptr,#_get_buf_value_valid_input_65536_81
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00166$
	ljmp	00119$
00166$:
;	syntax.c:126: print_prompt("\n\r+--------------------------------------------------+");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_print_prompt
;	syntax.c:127: print_prompt(string);
	mov	dptr,#_get_buf_value_string_65536_80
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_print_prompt
	pop	ar6
	pop	ar7
;	syntax.c:130: buffer_size = 0;
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:136: while ((c = getchar()) != 0x0d && digit_count < 4) {
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
00108$:
	push	ar6
	push	ar7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_getchar
	mov	r6,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	_get_buf_value_sloc0_1_0,r6
	mov	a,#0x0d
	cjne	a,_get_buf_value_sloc0_1_0,00167$
	pop	ar7
	pop	ar6
	ljmp	00110$
00167$:
	pop	ar7
	pop	ar6
	clr	c
	mov	a,r0
	subb	a,#0x04
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00168$
	ljmp	00110$
00168$:
;	syntax.c:138: if (c < '0' || c > '9') {
	mov	a,#0x100 - 0x30
	add	a,_get_buf_value_sloc0_1_0
	jnc	00104$
	mov	a,_get_buf_value_sloc0_1_0
	add	a,#0xff - 0x39
	jnc	00105$
00104$:
;	syntax.c:139: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
	push	ar7
	push	ar6
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
;	syntax.c:140: printf("\n\r+--------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:142: while (getchar() != 0x0d);  // Clear input buffer
00101$:
	push	ar6
	push	ar7
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x0d,00171$
	cjne	r7,#0x00,00171$
	sjmp	00172$
00171$:
	pop	ar7
	pop	ar6
	sjmp	00101$
00172$:
	pop	ar7
	pop	ar6
;	syntax.c:143: buffer_size = -1;
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:144: break;
	ljmp	00110$
00105$:
;	syntax.c:147: putchar(c);
	push	ar6
	push	ar7
	mov	r6,_get_buf_value_sloc0_1_0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	syntax.c:148: input[i++] = c;
	mov	a,r2
	add	a,#_get_buf_value_input_65536_81
	mov	dpl,a
	mov	a,r3
	addc	a,#(_get_buf_value_input_65536_81 >> 8)
	mov	dph,a
	inc	r2
	cjne	r2,#0x00,00173$
	inc	r3
00173$:
	mov	a,_get_buf_value_sloc0_1_0
	movx	@dptr,a
;	syntax.c:149: digit_count++;
	inc	r0
	cjne	r0,#0x00,00174$
	inc	r1
00174$:
;	syntax.c:150: buffer_size = buffer_size * 10 + (c - '0');
	mov	dptr,#_get_buf_value_buffer_size_65536_81
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
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	ljmp	00108$
00110$:
;	syntax.c:154: if (buffer_size == -1) {
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0xff,00175$
	cjne	r5,#0xff,00175$
	ljmp	00117$
00175$:
;	syntax.c:159: if ((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00113$
	clr	c
	mov	a,r4
	subb	a,_get_buf_value_sloc1_1_0
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_get_buf_value_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00113$
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
00113$:
;	syntax.c:160: printf("\n\r| ERROR: Invalid buffer size                          |");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
;	syntax.c:161: printf("\n\r| - Must be between %d and %d                       |", LOWER, UPPER);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	push	_get_buf_value_sloc1_1_0
	push	(_get_buf_value_sloc1_1_0 + 1)
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	syntax.c:162: printf("\n\r| - Must be multiple of 16                           |");
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
;	syntax.c:163: printf("\n\r+--------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:164: continue;
	ljmp	00117$
00114$:
;	syntax.c:166: printf("\n\r| Input size: %-39d |", buffer_size);
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:167: printf("\n\r+--------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:168: valid_input = 1;
	mov	dptr,#_get_buf_value_valid_input_65536_81
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	00117$
00119$:
;	syntax.c:171: return buffer_size;
	mov	dptr,#_get_buf_value_buffer_size_65536_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	syntax.c:172: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_prompt'
;------------------------------------------------------------
;string                    Allocated with name '_print_prompt_string_65536_88'
;------------------------------------------------------------
;	syntax.c:180: void print_prompt(const char * string){
;	-----------------------------------------
;	 function print_prompt
;	-----------------------------------------
_print_prompt:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_prompt_string_65536_88
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:181: while(*string != '\0'){
	mov	dptr,#_print_prompt_string_65536_88
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
;	syntax.c:182: putchar(*string);
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
;	syntax.c:183: string++;
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_print_prompt_string_65536_88
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
	mov	dptr,#_print_prompt_string_65536_88
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_number'
;------------------------------------------------------------
;prompt                    Allocated with name '_get_number_prompt_65536_91'
;buffer_size               Allocated with name '_get_number_buffer_size_65536_92'
;c                         Allocated with name '_get_number_c_65536_92'
;index                     Allocated with name '_get_number_index_65536_92'
;------------------------------------------------------------
;	syntax.c:193: int get_number(const char* prompt)
;	-----------------------------------------
;	 function get_number
;	-----------------------------------------
_get_number:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_number_prompt_65536_91
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:195: int buffer_size = 0;
	mov	dptr,#_get_number_buffer_size_65536_92
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:197: int index = 100;            // Start with highest place value for 3 digits
	mov	dptr,#_get_number_index_65536_92
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	syntax.c:199: print_prompt("\n\r+--------------------------------------------------+");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_print_prompt
;	syntax.c:200: print_prompt(prompt);
	mov	dptr,#_get_number_prompt_65536_91
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
;	syntax.c:202: while (index >= 1 && (c = getchar()) != 0x0d) {
00105$:
	mov	dptr,#_get_number_index_65536_92
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
	jnc	00126$
	ljmp	00107$
00126$:
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	cjne	r4,#0x0d,00127$
	ljmp	00107$
00127$:
;	syntax.c:203: if (c < '0' || c > '9') {
	cjne	r4,#0x30,00128$
00128$:
	jc	00101$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00102$
00101$:
;	syntax.c:204: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
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
;	syntax.c:205: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:206: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	syntax.c:209: putchar(c);
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:210: buffer_size += (c - '0') * index;
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_get_number_buffer_size_65536_92
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_get_number_buffer_size_65536_92
	mov	a,r4
	add	a,r2
	movx	@dptr,a
	mov	a,r5
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	syntax.c:211: index = index/10;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_get_number_index_65536_92
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00105$
00107$:
;	syntax.c:214: printf("\n\r| Input size: %-39d |", buffer_size);
	mov	dptr,#_get_number_buffer_size_65536_92
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:215: printf("\n\r+--------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:217: return buffer_size;
	mov	dpl,r6
	mov	dph,r7
;	syntax.c:218: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_command'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_command_sloc0_1_0'
;sloc1                     Allocated with name '_get_command_sloc1_1_0'
;sloc2                     Allocated with name '_get_command_sloc2_1_0'
;command                   Allocated with name '_get_command_command_65536_95'
;temp_value                Allocated with name '_get_command_temp_value_65536_96'
;pointer                   Allocated with name '_get_command_pointer_65536_96'
;array_index_temp          Allocated with name '_get_command_array_index_temp_65536_96'
;total_buffers             Allocated with name '_get_command_total_buffers_196609_99'
;buffers_freed             Allocated with name '_get_command_buffers_freed_196609_99'
;failed_frees              Allocated with name '_get_command_failed_frees_196609_99'
;i                         Allocated with name '_get_command_i_262145_100'
;i                         Allocated with name '_get_command_i_262145_103'
;i                         Allocated with name '_get_command_i_196608_108'
;buffer_size               Allocated with name '_get_command_buffer_size_131073_112'
;node                      Allocated with name '_get_command_node_196610_117'
;------------------------------------------------------------
;	syntax.c:227: int get_command(int command)
;	-----------------------------------------
;	 function get_command
;	-----------------------------------------
_get_command:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_command_command_65536_95
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:233: switch(command)
	mov	dptr,#_get_command_command_65536_95
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x2b,00225$
	cjne	r7,#0x00,00225$
	ljmp	00117$
00225$:
	cjne	r6,#0x2d,00226$
	cjne	r7,#0x00,00226$
	ljmp	00125$
00226$:
	cjne	r6,#0x3d,00227$
	cjne	r7,#0x00,00227$
	ljmp	00132$
00227$:
	cjne	r6,#0x3f,00228$
	cjne	r7,#0x00,00228$
	ljmp	00111$
00228$:
	cjne	r6,#0x40,00229$
	cjne	r7,#0x00,00229$
	sjmp	00230$
00229$:
	ljmp	00133$
00230$:
;	syntax.c:237: DEBUGPORT(0x05);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#0xfefe
	lcall	_dataout
;	syntax.c:242: printf("\n\r| BUFFER DEALLOCATION STATUS                      |");
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
;	syntax.c:243: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:246: for(int i = 0; i < 100; i++) 
	clr	a
	mov	_get_command_sloc0_1_0,a
	mov	(_get_command_sloc0_1_0 + 1),a
	mov	r4,a
	mov	r5,a
00135$:
	clr	c
	mov	a,r4
	subb	a,#0x64
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	syntax.c:248: if(array_for_nodes[i].data_pointer != NULL)
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_array_for_nodes
	mov	r2,a
	mov	a,r3
	addc	a,#(_array_for_nodes >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,r2
	orl	a,r3
	jz	00136$
;	syntax.c:250: total_buffers++;
	inc	_get_command_sloc0_1_0
	clr	a
	cjne	a,_get_command_sloc0_1_0,00233$
	inc	(_get_command_sloc0_1_0 + 1)
00233$:
00136$:
;	syntax.c:246: for(int i = 0; i < 100; i++) 
	inc	r4
	cjne	r4,#0x00,00135$
	inc	r5
	sjmp	00135$
00104$:
;	syntax.c:254: printf("\n\r| Buffers to Free  | %-28d |", total_buffers);
	push	_get_command_sloc0_1_0
	push	(_get_command_sloc0_1_0 + 1)
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:257: for(int i = 0; i < 100; i++) 
	mov	r6,#0x00
	mov	r7,#0x00
00138$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	syntax.c:259: if(array_for_nodes[i].data_pointer != NULL) 
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
	inc	r4
	cjne	r4,#0x00,00236$
	inc	r5
00236$:
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_get_command_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc1_1_0 + 2),a
	mov	a,_get_command_sloc1_1_0
	orl	a,(_get_command_sloc1_1_0 + 1)
	jz	00139$
;	syntax.c:261: free(array_for_nodes[i].data_pointer);
	push	ar6
	push	ar7
	mov	r2,_get_command_sloc1_1_0
	mov	r3,(_get_command_sloc1_1_0 + 1)
	mov	r7,(_get_command_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_free
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:262: array_for_nodes[i].data_pointer = NULL;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:408: return 0;
	pop	ar7
	pop	ar6
;	syntax.c:262: array_for_nodes[i].data_pointer = NULL;
00139$:
;	syntax.c:257: for(int i = 0; i < 100; i++) 
	inc	r6
	cjne	r6,#0x00,00238$
	inc	r7
00238$:
	ljmp	00138$
00107$:
;	syntax.c:266: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:270: printf("\n\r| All buffers successfully deallocated            |");
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
;	syntax.c:274: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:282: case '?':               // Show system status
00111$:
;	syntax.c:283: DEBUGPORT(0x04);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#0xfefe
	lcall	_dataout
;	syntax.c:284: printf("\n\r+------------------SYSTEM STATUS-------------------+");
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
;	syntax.c:285: printf("\n\r| COMMAND STATISTICS                              |");
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
;	syntax.c:286: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:287: printf("\n\r| Total Commands   | %-28d |", total_number_of_commands);
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:288: printf("\n\r| Recent Commands  | %-28d |", recent_commands);
	mov	dptr,#_recent_commands
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:289: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:290: printf("\n\r| STORAGE STATISTICS                             |");
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
;	syntax.c:291: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:292: printf("\n\r| Total Storage    | %-28d |", total_number_of_storage);
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:293: printf("\n\r| Recent Storage   | %-28d |", recent_storage);
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	syntax.c:294: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:295: printf("\n\r| TOTAL BUFFERS IN HEAP                           |");
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
;	syntax.c:296: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:297: printf("\n\r| Total Buffers    | %-28d |", index_of_buffers);
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
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
;	syntax.c:298: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:300: printf("\n\r+------------------BUFFER INFO--------------------+");
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
;	syntax.c:301: printf("\n\r| ID | Start Addr  | End Addr    | Size (bytes) |");
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
;	syntax.c:302: printf("\n\r|----|-------------|-------------|--------------|");
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
;	syntax.c:304: for(int i=1; i<100; i++){
	mov	r6,#0x01
	mov	r7,#0x00
00141$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00239$
	ljmp	00114$
00239$:
;	syntax.c:305: if(array_for_nodes[i]){
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
	jz	00142$
;	syntax.c:309: array_for_nodes[i].size);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_get_command_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc1_1_0 + 1),a
;	syntax.c:308: array_for_nodes[i].data_pointer+array_for_nodes[i].size,
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	_get_command_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_command_sloc2_1_0 + 2),a
	mov	a,_get_command_sloc1_1_0
	add	a,_get_command_sloc2_1_0
	mov	r2,a
	mov	a,(_get_command_sloc1_1_0 + 1)
	addc	a,(_get_command_sloc2_1_0 + 1)
	mov	r4,a
	mov	r5,(_get_command_sloc2_1_0 + 2)
;	syntax.c:306: printf("\n\r| %-2d | %-10p | %-10p | %-11d |",
	push	ar7
	push	ar6
	push	_get_command_sloc1_1_0
	push	(_get_command_sloc1_1_0 + 1)
	push	ar2
	push	ar4
	push	ar5
	push	_get_command_sloc2_1_0
	push	(_get_command_sloc2_1_0 + 1)
	push	(_get_command_sloc2_1_0 + 2)
	push	ar6
	push	ar7
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	pop	ar6
	pop	ar7
00142$:
;	syntax.c:304: for(int i=1; i<100; i++){
	inc	r6
	cjne	r6,#0x00,00241$
	inc	r7
00241$:
	ljmp	00141$
00114$:
;	syntax.c:313: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:315: printf("\n\r| MEMORY ALLOCATION STATUS BUFFER 0              |");
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
;	syntax.c:316: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:317: printf("\n\r| Total Space      | %-28d |", array_for_nodes[0].size);
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	syntax.c:318: printf("\n\r| Occupied Space   | %-28d |", total_number_of_storage);
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
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
;	syntax.c:319: printf("\n\r| Free Space       | %-28d |", array_for_nodes[0].size - total_number_of_storage);
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:320: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:321: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:323: buffer0_dump();
	lcall	_buffer0_dump
;	syntax.c:324: printf("\n\r| BUFFER 0 CLEAR STATUS                           |");
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
;	syntax.c:325: printf("\n\r|------------------------------------------------|");
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
;	syntax.c:328: if(array_for_nodes[0].data_pointer == NULL) {
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00116$
;	syntax.c:329: printf("\n\r| Buffer 0 is not initialized                     |");
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
;	syntax.c:330: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:331: return;
	ret
00116$:
;	syntax.c:334: uint16_t buffer_size = array_for_nodes[0].size;
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	syntax.c:337: memset(array_for_nodes[0].data_pointer, 0, buffer_size);
	mov	_get_command_sloc2_1_0,r5
	mov	(_get_command_sloc2_1_0 + 1),r6
	mov	(_get_command_sloc2_1_0 + 2),r7
	mov	ar2,r3
	mov	ar7,r4
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_get_command_sloc2_1_0
	mov	dph,(_get_command_sloc2_1_0 + 1)
	mov	b,(_get_command_sloc2_1_0 + 2)
	push	ar4
	push	ar3
	lcall	_memset
	pop	ar3
	pop	ar4
;	syntax.c:338: array_for_nodes[0].index = 0;
	mov	dptr,#_array_for_nodes
	clr	a
	movx	@dptr,a
;	syntax.c:340: temp_buffer_size = buffer_size;    // Reset available space
	mov	r0,#_temp_buffer_size
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	syntax.c:341: wr = array_for_nodes[0].data_pointer;  // Reset write pointer to start
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_wr
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:342: total_number_of_storage = 0;       // Reset storage counters
	mov	dptr,#_total_number_of_storage
	clr	a
	movx	@dptr,a
;	syntax.c:344: printf("\n\r| Buffer Size      | %-28d |", buffer_size);
	push	ar3
	push	ar4
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
;	syntax.c:345: printf("\n\r| Status          | %-28s |", "Data Erased");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	syntax.c:346: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:347: recent_commands = 0;
	mov	dptr,#_recent_commands
	clr	a
	movx	@dptr,a
;	syntax.c:348: recent_storage = 0;
	mov	dptr,#_recent_storage
	movx	@dptr,a
;	syntax.c:349: break;
	ljmp	00133$
;	syntax.c:351: case '+':               // Create new buffer
00117$:
;	syntax.c:352: DEBUGPORT(0x01);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0xfefe
	lcall	_dataout
;	syntax.c:353: printf("\n\r+----------------BUFFER CREATION------------------+");
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
;	syntax.c:354: temp_value = get_number("\n\r| Enter buffer size (50-500): ");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:355: if(temp_value < 50 || temp_value > 500)
	clr	c
	mov	a,r6
	subb	a,#0x32
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00121$
	mov	a,#0xf4
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
00121$:
;	syntax.c:357: printf("\n\r ERROR : Invalid request\n\r"); 
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
;	syntax.c:358: return -1;
	mov	dptr,#0xffff
	ret
00122$:
;	syntax.c:362: printf("\n\r| Requested Size: %-32d |", temp_value);
	push	ar7
	push	ar6
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
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:364: pointer = (__xdata uint8_t *) malloc(temp_value);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	syntax.c:365: if (pointer == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00119$
;	syntax.c:366: printf("\n\r| ERROR: Memory allocation failed                  |");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
;	syntax.c:367: printf("\n\r| Try smaller size with '+' command                |");
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00120$
00119$:
;	syntax.c:369: printf("\n\r| SUCCESS: Buffer created successfully            |");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00120$:
;	syntax.c:371: printf("\n\r+--------------------------------------------------+\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:373: node_t node = {index_of_buffers, pointer, temp_value};
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	mov	dptr,#_get_command_node_196610_117
	movx	@dptr,a
	mov	r3,#0x00
	mov	dptr,#(_get_command_node_196610_117 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_get_command_node_196610_117 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:374: array_for_nodes[index_of_buffers] = node;
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
	mov	a,#_get_command_node_196610_117
	movx	@dptr,a
	mov	a,#(_get_command_node_196610_117 >> 8)
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
;	syntax.c:375: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:377: break;
	ljmp	00133$
;	syntax.c:379: case '-':               // Delete buffer
00125$:
;	syntax.c:380: DEBUGPORT(0x02);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#0xfefe
	lcall	_dataout
;	syntax.c:381: printf("\n\r+----------------BUFFER DELETION------------------+");
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
;	syntax.c:382: temp_value = get_number("\n\r| Enter buffer number (0-102): ");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_get_number
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:384: if(temp_value <= 0) 
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00127$
;	syntax.c:386: printf("\n\r| ERROR: Cannot delete Buffer 0                    |");
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
;	syntax.c:387: return -1;
	mov	dptr,#0xffff
	ret
00127$:
;	syntax.c:389: if(temp_value < 0 || temp_value > 102) 
	mov	a,r7
	jb	acc.7,00128$
	clr	c
	mov	a,#0x66
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
00128$:
;	syntax.c:391: printf("\n\r| ERROR: Invalid delete request                  |");
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
;	syntax.c:392: return -1;
	mov	dptr,#0xffff
	ret
00129$:
;	syntax.c:396: array_for_nodes[temp_value].size = 0;
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
	mov	a,r4
	add	a,#_array_for_nodes
	mov	r4,a
	mov	a,r5
	addc	a,#(_array_for_nodes >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	syntax.c:397: free(array_for_nodes[temp_value].data_pointer);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
	pop	ar6
	pop	ar7
;	syntax.c:398: printf("\n\r| SUCCESS: Buffer %-2d deleted                     |", temp_value);
	push	ar6
	push	ar7
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:400: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:401: break;
;	syntax.c:403: case '=':               // Display Buffer 0
	sjmp	00133$
00132$:
;	syntax.c:404: DEBUGPORT(0x03);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#0xfefe
	lcall	_dataout
;	syntax.c:405: buffer0_dump();
	lcall	_buffer0_dump
;	syntax.c:407: }
00133$:
;	syntax.c:408: return 0;
	mov	dptr,#0x0000
;	syntax.c:409: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer0_dump'
;------------------------------------------------------------
;sloc0                     Allocated with name '_buffer0_dump_sloc0_1_0'
;sloc1                     Allocated with name '_buffer0_dump_sloc1_1_0'
;sloc2                     Allocated with name '_buffer0_dump_sloc2_1_0'
;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_65537_124'
;remaining_bytes           Allocated with name '_buffer0_dump_remaining_bytes_65537_124'
;offset                    Allocated with name '_buffer0_dump_offset_131073_125'
;i                         Allocated with name '_buffer0_dump_i_262145_127'
;i                         Allocated with name '_buffer0_dump_i_262145_129'
;------------------------------------------------------------
;	syntax.c:417: void buffer0_dump(void) {
;	-----------------------------------------
;	 function buffer0_dump
;	-----------------------------------------
_buffer0_dump:
;	syntax.c:418: printf("\n\r+---------------BUFFER 0 CONTENTS-----------------+");
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
;	syntax.c:419: printf("\n\r| Address    | Data                               |");
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
;	syntax.c:420: printf("\n\r|------------|---------------------------------------|");
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
;	syntax.c:421: printf("\n\r");
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
;	syntax.c:423: if(array_for_nodes[0].data_pointer == NULL) 
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	syntax.c:424: {printf("BUFFER 0 DOES NOT EXIST\n\r");
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
;	syntax.c:425: return;
	ret
00102$:
;	syntax.c:428: uint16_t remaining_bytes = array_for_nodes[0].size;
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	syntax.c:431: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
	mov	dptr,#_buffer0_dump_offset_131073_125
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00114$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_buffer0_dump_offset_131073_125
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00154$
	ljmp	00105$
00154$:
;	syntax.c:433: printf("\n\r| %04X      |", (uint16_t)(uintptr_t)rd_ptr);
	push	ar3
	push	ar4
	mov	ar0,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar3
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
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
	mov	_buffer0_dump_sloc0_1_0,r1
	mov	(_buffer0_dump_sloc0_1_0 + 1),r2
	mov	_buffer0_dump_sloc1_1_0,r5
	mov	(_buffer0_dump_sloc1_1_0 + 1),r6
	mov	(_buffer0_dump_sloc1_1_0 + 2),r7
	clr	a
	mov	_buffer0_dump_sloc2_1_0,a
	mov	(_buffer0_dump_sloc2_1_0 + 1),a
;	syntax.c:449: printf("\n\r+--------------------------------------------------+\n\r");
	pop	ar4
	pop	ar3
;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
00108$:
	clr	c
	mov	a,_buffer0_dump_sloc2_1_0
	subb	a,#0x10
	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
	push	ar5
	push	ar6
	push	ar7
	mov	r1,_buffer0_dump_sloc0_1_0
	mov	r2,(_buffer0_dump_sloc0_1_0 + 1)
	mov	r0,_buffer0_dump_sloc2_1_0
	mov	r7,(_buffer0_dump_sloc2_1_0 + 1)
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00103$
;	syntax.c:437: printf(" %02X", rd_ptr[i]);
	mov	a,_buffer0_dump_sloc2_1_0
	add	a,_buffer0_dump_sloc1_1_0
	mov	r0,a
	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
	addc	a,(_buffer0_dump_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_buffer0_dump_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	push	ar2
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
	inc	_buffer0_dump_sloc2_1_0
	clr	a
	cjne	a,_buffer0_dump_sloc2_1_0,00108$
	inc	(_buffer0_dump_sloc2_1_0 + 1)
	sjmp	00108$
00103$:
;	syntax.c:441: for (int i = remaining_bytes - offset; i < 16; i++) {
	mov	dptr,#_buffer0_dump_offset_131073_125
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,r4
	subb	a,r2
	mov	r2,a
00111$:
	clr	c
	mov	a,r1
	subb	a,#0x10
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	syntax.c:442: printf("   ");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
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
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:441: for (int i = remaining_bytes - offset; i < 16; i++) {
	inc	r1
	cjne	r1,#0x00,00111$
	inc	r2
	sjmp	00111$
00104$:
;	syntax.c:445: printf(" |");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
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
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:446: rd_ptr += 16;
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	syntax.c:431: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
	mov	dptr,#_buffer0_dump_offset_131073_125
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x10
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#_buffer0_dump_offset_131073_125
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00114$
00105$:
;	syntax.c:449: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:450: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;buffer_size               Allocated with name '_main_buffer_size_65537_133'
;node1                     Allocated with name '_main_node1_65538_137'
;node2                     Allocated with name '_main_node2_65539_138'
;wr                        Allocated with name '_main_wr_65540_139'
;ch                        Allocated with name '_main_ch_131076_140'
;cha                       Allocated with name '_main_cha_131077_143'
;temp_buffer_size          Allocated to registers 
;index_for_write           Allocated to registers 
;------------------------------------------------------------
;	syntax.c:458: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	syntax.c:461: printf("\n\r+==================================================+");
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:462: printf("\n\r|           BUFFER MANAGEMENT SYSTEM                |");
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
;	syntax.c:463: printf("\n\r+==================================================+");
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:467: index_of_buffers = 0;
	mov	dptr,#_index_of_buffers
	clr	a
	movx	@dptr,a
;	syntax.c:468: total_number_of_commands = 0;
	mov	dptr,#_total_number_of_commands
	movx	@dptr,a
;	syntax.c:469: total_number_of_storage = 0;
	mov	dptr,#_total_number_of_storage
	movx	@dptr,a
;	syntax.c:470: recent_commands = 0;
	mov	dptr,#_recent_commands
	movx	@dptr,a
;	syntax.c:471: recent_storage = 0;
	mov	dptr,#_recent_storage
	movx	@dptr,a
;	syntax.c:472: recived_bytes = 0;
	mov	dptr,#_recived_bytes
	movx	@dptr,a
;	syntax.c:475: do{
00108$:
;	syntax.c:477: buffer_size = get_buf_value("\n\r| Enter initial buffer size (32-5120): ", upper_default, LOWER_DEFAULT);
	mov	dptr,#_get_buf_value_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x14
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buf_value_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_get_buf_value
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:479: if(buffer_size == -1) continue;
	cjne	r6,#0xff,00171$
	cjne	r7,#0xff,00171$
	ljmp	00109$
00171$:
;	syntax.c:482: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
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
;	syntax.c:483: if (pointer1 == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00104$
;	syntax.c:484: printf("\n\r| ERROR: Buffer 1 allocation failed                |");
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
;	syntax.c:485: printf("\n\r| Try smaller size                                |");
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
;	syntax.c:486: printf("\n\r+------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:487: continue;
	ljmp	00109$
00104$:
;	syntax.c:491: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
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
;	syntax.c:492: if (pointer2 == NULL){
	mov	a,r4
	orl	a,r5
	jnz	00106$
;	syntax.c:493: free(pointer1);
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	lcall	_free
;	syntax.c:494: printf("\n\r| ERROR: Buffer 2 allocation failed                |");
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
;	syntax.c:495: printf("\n\r| Try smaller size                                |");
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
;	syntax.c:496: printf("\n\r+------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
;	syntax.c:497: continue;
	ljmp	00109$
00106$:
;	syntax.c:501: printf("\n\r+----------------BUFFER STATUS--------------------+");
	push	ar7
	push	ar6
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	syntax.c:502: printf("\n\r| Buffer 1 | Addr: %-10p | Size: %-6d   |", pointer1, buffer_size);
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar3
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar6
	pop	ar7
;	syntax.c:503: printf("\n\r| Buffer 2 | Addr: %-10p | Size: %-6d   |", pointer2, buffer_size);
	mov	dptr,#_pointer2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar3
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	syntax.c:504: printf("\n\r+------------------------------------------------+\n\r");
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
	pop	ar6
	pop	ar7
00109$:
;	syntax.c:506: }while(pointer2 == NULL || pointer1 == NULL);
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
;	syntax.c:509: index_of_buffers = 0;
	mov	dptr,#_index_of_buffers
	clr	a
	movx	@dptr,a
;	syntax.c:512: node_t node1 = { index_of_buffers, pointer1, buffer_size};
	mov	dptr,#_main_node1_65538_137
	movx	@dptr,a
	mov	dptr,#_pointer1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#(_main_node1_65538_137 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_node1_65538_137 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:513: array_for_nodes[index_of_buffers] = node1;
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
	mov	a,#_main_node1_65538_137
	movx	@dptr,a
	mov	a,#(_main_node1_65538_137 >> 8)
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
	pop	ar6
	pop	ar7
;	syntax.c:514: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:517: node_t node2 = { index_of_buffers, pointer2, buffer_size};
	movx	a,@dptr
	mov	dptr,#_main_node2_65539_138
	movx	@dptr,a
	mov	dptr,#_pointer2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#(_main_node2_65539_138 + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_main_node2_65539_138 + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	syntax.c:518: array_for_nodes[index_of_buffers] = node2;
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
	mov	a,#_main_node2_65539_138
	movx	@dptr,a
	mov	a,#(_main_node2_65539_138 >> 8)
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
;	syntax.c:519: index_of_buffers++;
	mov	dptr,#_index_of_buffers
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	syntax.c:522: printf("\n\r+------------------COMMANDS----------------------+");
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
;	syntax.c:523: printf("\n\r| [A-Z] : Store character in Buffer 0           |");
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
;	syntax.c:524: printf("\n\r| +     : Create new buffer                     |");
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:525: printf("\n\r| -     : Delete buffer                         |");
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:526: printf("\n\r| ?     : Show system status                    |");
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:527: printf("\n\r| =     : Display Buffer 0 contents             |");
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:528: printf("\n\r| @     : Reset system                          |");
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:529: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:530: printf("\n\r| Ready for input. Enter uppercase chars (A-Z):    |\n\r"); 
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:531: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:534: __idata int temp_buffer_size = array_for_nodes[0].size;
	mov	dptr,#(_array_for_nodes + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	syntax.c:536: uint8_t * wr = array_for_nodes[0].data_pointer;
	mov	dptr,#(_array_for_nodes + 0x0001)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	syntax.c:539: do{
00114$:
;	syntax.c:540: int ch = getchar();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getchar
;	syntax.c:541: putchar(ch);
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
;	syntax.c:544: if(ch < 65 || ch > 90) {
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
;	syntax.c:545: total_number_of_commands+=1;
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:546: recent_commands+=1;
	mov	dptr,#_recent_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:547: printf("\n\r| Command received: %-31c |", ch);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar1
	push	ar2
	mov	a,#___str_73
	push	acc
	mov	a,#(___str_73 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	syntax.c:548: printf("\n\r+--------------------------------------------------+\n\r");
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
	pop	ar1
	pop	ar2
;	syntax.c:549: get_command(ch);
	mov	dpl,r1
	mov	dph,r2
	lcall	_get_command
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	syntax.c:550: continue;
	sjmp	00115$
00112$:
;	syntax.c:554: total_number_of_storage = total_number_of_storage + 1;
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:555: recent_storage = recent_storage + 1;
	mov	dptr,#_recent_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:557: *wr = ch;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	syntax.c:558: wr++;
;	syntax.c:560: total_number_of_storage, recent_storage, wr);
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	mov	r0,a
	mov	r2,#0x00
;	syntax.c:559: printf("\n\r| Storage: Total=%-4d Recent=%-4d Addr=%-10p |\n\r", 
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
	mov	a,#___str_74
	push	acc
	mov	a,#(___str_74 >> 8)
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
;	syntax.c:561: temp_buffer_size -= 1;
	dec	r6
	cjne	r6,#0xff,00178$
	dec	r7
00178$:
;	syntax.c:562: index_for_write += 1;
00115$:
;	syntax.c:563: }while(temp_buffer_size>0);
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
;	syntax.c:566: printf("\n\r+--------------------------------------------------+");
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
;	syntax.c:567: printf("\n\r| NOTICE: Buffer 0 is full - Storage stopped        |");
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:568: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:571: while(1)
00122$:
;	syntax.c:573: printf("\n\r| Enter command (+, -, ?, =, @):                   |");
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	syntax.c:574: printf("\n\r+--------------------------------------------------+\n\r");
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
;	syntax.c:575: int cha = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	syntax.c:576: if(cha < 65 || cha > 90) {
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
;	syntax.c:577: DEBUGPORT(0xAA);
	mov	dptr,#_dataout_PARM_2
	mov	a,#0xaa
	movx	@dptr,a
	mov	dptr,#0xfefe
	push	ar7
	push	ar6
	lcall	_dataout
	pop	ar6
	pop	ar7
;	syntax.c:578: total_number_of_commands+=1;
	mov	dptr,#_total_number_of_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:579: recent_commands+=1;
	mov	dptr,#_recent_commands
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:580: printf("\n\r| Command received: %-31c |", cha);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_73
	push	acc
	mov	a,#(___str_73 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00119$
00118$:
;	syntax.c:583: total_number_of_storage = total_number_of_storage + 1;
	mov	dptr,#_total_number_of_storage
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	syntax.c:584: recent_storage = recent_storage + 1;
	mov	dptr,#_recent_storage
	movx	a,@dptr
	mov	r5,a
	inc	a
	movx	@dptr,a
00119$:
;	syntax.c:586: get_command(cha);
	mov	dpl,r6
	mov	dph,r7
	lcall	_get_command
;	syntax.c:588: }
	ljmp	00122$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "+--------------------------------------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Invalid input - Please enter numbers only     |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "+--------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Invalid buffer size                          |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "| - Must be between %d and %d                       |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "| - Must be multiple of 16                           |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "| Input size: %-39d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "| BUFFER DEALLOCATION STATUS                      |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "|------------------------------------------------|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "| Buffers to Free  | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "| All buffers successfully deallocated            |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "| WARNING: Some buffers failed to deallocate      |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "+------------------SYSTEM STATUS-------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "| COMMAND STATISTICS                              |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "| Total Commands   | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "| Recent Commands  | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "| STORAGE STATISTICS                             |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "| Total Storage    | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "| Recent Storage   | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii "| TOTAL BUFFERS IN HEAP                           |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "| Total Buffers    | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii "+------------------BUFFER INFO--------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii "| ID | Start Addr  | End Addr    | Size (bytes) |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "|----|-------------|-------------|--------------|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "| %-2d | %-10p | %-10p | %-11d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "| MEMORY ALLOCATION STATUS BUFFER 0              |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "| Total Space      | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "| Occupied Space   | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "| Free Space       | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "| BUFFER 0 CLEAR STATUS                           |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii "| Buffer 0 is not initialized                     |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "| Buffer Size      | %-28d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "| Status          | %-28s |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "Data Erased"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0a
	.db 0x0d
	.ascii "+----------------BUFFER CREATION------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.ascii "| Enter buffer size (50-500): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.ascii " ERROR : Invalid request"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.ascii "| Requested Size: %-32d |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Memory allocation failed                  |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0d
	.ascii "| Try smaller size with '+' command                |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0d
	.ascii "| SUCCESS: Buffer created successfully            |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.db 0x0d
	.ascii "+----------------BUFFER DELETION------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0a
	.db 0x0d
	.ascii "| Enter buffer number (0-102): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Cannot delete Buffer 0                    |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Invalid delete request                  |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0a
	.db 0x0d
	.ascii "| SUCCESS: Buffer %-2d deleted                     |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.db 0x0a
	.db 0x0d
	.ascii "+---------------BUFFER 0 CONTENTS-----------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0a
	.db 0x0d
	.ascii "| Address    | Data                               |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0a
	.db 0x0d
	.ascii "|------------|---------------------------------------|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "BUFFER 0 DOES NOT EXIST"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.db 0x0a
	.db 0x0d
	.ascii "| %04X      |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii " %02X"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii " |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.db 0x0a
	.db 0x0d
	.ascii "+==================================================+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.db 0x0a
	.db 0x0d
	.ascii "|           BUFFER MANAGEMENT SYSTEM                |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.db 0x0a
	.db 0x0d
	.ascii "| Enter initial buffer size (32-5120): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Buffer 1 allocation failed                |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.db 0x0a
	.db 0x0d
	.ascii "| Try smaller size                                |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.db 0x0a
	.db 0x0d
	.ascii "+------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.db 0x0d
	.ascii "| ERROR: Buffer 2 allocation failed                |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.db 0x0a
	.db 0x0d
	.ascii "+----------------BUFFER STATUS--------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.db 0x0a
	.db 0x0d
	.ascii "| Buffer 1 | Addr: %-10p | Size: %-6d   |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.db 0x0a
	.db 0x0d
	.ascii "| Buffer 2 | Addr: %-10p | Size: %-6d   |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.db 0x0a
	.db 0x0d
	.ascii "+------------------COMMANDS----------------------+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.db 0x0a
	.db 0x0d
	.ascii "| [A-Z] : Store character in Buffer 0           |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.db 0x0a
	.db 0x0d
	.ascii "| +     : Create new buffer                     |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.db 0x0a
	.db 0x0d
	.ascii "| -     : Delete buffer                         |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.db 0x0a
	.db 0x0d
	.ascii "| ?     : Show system status                    |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.db 0x0a
	.db 0x0d
	.ascii "| =     : Display Buffer 0 contents             |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.db 0x0a
	.db 0x0d
	.ascii "| @     : Reset system                          |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.db 0x0a
	.db 0x0d
	.ascii "| Ready for input. Enter uppercase chars (A-Z):    |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.db 0x0a
	.db 0x0d
	.ascii "| Command received: %-31c |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.db 0x0a
	.db 0x0d
	.ascii "| Storage: Total=%-4d Recent=%-4d Addr=%-10p |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.db 0x0a
	.db 0x0d
	.ascii "| NOTICE: Buffer 0 is full - Storage stopped        |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.db 0x0a
	.db 0x0d
	.ascii "| Enter command (+, -, ?, =, @):                   |"
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
__xinit__wr:
	.byte #0x00,#0x00,#0x00
__xinit__pointer1:
	.byte #0x00,#0x00
__xinit__pointer2:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
