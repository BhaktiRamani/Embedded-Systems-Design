;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module command_handlers
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _action_for_character_creation
	.globl _action_for_display_custom_char
	.globl _action_for_write_to_specific_position
	.globl _check_input_buffer_and_extract_hex_number
	.globl _hex_to_uint16
	.globl _is_valid_hex
	.globl _display_custom_char
	.globl _lcd_create_char
	.globl _lcd_clear
	.globl _lcd_put_string
	.globl _current_time_display
	.globl _timer_stop
	.globl _timer_pause
	.globl _timer_start
	.globl _getstr
	.globl _isxdigit
	.globl _printf
	.globl _check_input_buffer_and_extract_hex_number_PARM_5
	.globl _check_input_buffer_and_extract_hex_number_PARM_4
	.globl _check_input_buffer_and_extract_hex_number_PARM_3
	.globl _check_input_buffer_and_extract_hex_number_PARM_2
	.globl _check_input_buffer_and_extract_number_PARM_5
	.globl _check_input_buffer_and_extract_number_PARM_4
	.globl _check_input_buffer_and_extract_number_PARM_3
	.globl _check_input_buffer_and_extract_number_PARM_2
	.globl _command_parser
	.globl _is_digit
	.globl _action_for_write_command
	.globl _check_input_buffer_and_extract_number
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_check_input_buffer_and_extract_number_sloc0_1_0:
	.ds 3
_check_input_buffer_and_extract_number_sloc1_1_0:
	.ds 2
_check_input_buffer_and_extract_number_sloc2_1_0:
	.ds 2
_check_input_buffer_and_extract_number_sloc3_1_0:
	.ds 3
_check_input_buffer_and_extract_number_sloc4_1_0:
	.ds 1
_check_input_buffer_and_extract_number_sloc5_1_0:
	.ds 3
_check_input_buffer_and_extract_hex_number_sloc0_1_0:
	.ds 3
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
_command_parser_cmd_65536_56:
	.ds 1
_is_digit_c_65536_62:
	.ds 1
_action_for_write_command_input_buffer_65536_65:
	.ds 100
_action_for_write_command_current_state_65536_65:
	.ds 1
_action_for_write_command_wait_for_input_65536_65:
	.ds 1
_check_input_buffer_and_extract_number_PARM_2:
	.ds 2
_check_input_buffer_and_extract_number_PARM_3:
	.ds 3
_check_input_buffer_and_extract_number_PARM_4:
	.ds 3
_check_input_buffer_and_extract_number_PARM_5:
	.ds 3
_check_input_buffer_and_extract_number_input_buffer_65536_70:
	.ds 3
_is_valid_hex_str_65536_78:
	.ds 3
_hex_to_uint16_hex_str_65536_84:
	.ds 3
_hex_to_uint16_result_65536_85:
	.ds 2
_check_input_buffer_and_extract_hex_number_PARM_2:
	.ds 2
_check_input_buffer_and_extract_hex_number_PARM_3:
	.ds 3
_check_input_buffer_and_extract_hex_number_PARM_4:
	.ds 3
_check_input_buffer_and_extract_hex_number_PARM_5:
	.ds 3
_check_input_buffer_and_extract_hex_number_input_buffer_65536_91:
	.ds 3
_action_for_write_to_specific_position_input_buffer_65536_98:
	.ds 3
_action_for_write_to_specific_position_input_buffer_string_65536_98:
	.ds 100
_action_for_write_to_specific_position_row_number_65536_98:
	.ds 1
_action_for_write_to_specific_position_column_number_65536_98:
	.ds 1
_action_for_write_to_specific_position_current_state_65536_98:
	.ds 1
_action_for_write_to_specific_position_wait_for_input_65536_98:
	.ds 1
_action_for_write_to_specific_position_state_on_error_65536_98:
	.ds 1
_action_for_display_custom_char_input_buffer_65536_112:
	.ds 3
_action_for_display_custom_char_char_code_number_65536_112:
	.ds 1
_action_for_display_custom_char_current_state_65536_112:
	.ds 1
_action_for_display_custom_char_wait_for_input_65536_112:
	.ds 1
_action_for_display_custom_char_char_code_row_values_65536_112:
	.ds 8
_action_for_display_custom_char_state_on_error_65536_112:
	.ds 1
_action_for_character_creation_input_buffer_65536_121:
	.ds 3
_action_for_character_creation_char_code_row_value_65536_121:
	.ds 1
_action_for_character_creation_char_code_number_65536_121:
	.ds 1
_action_for_character_creation_current_state_65536_121:
	.ds 1
_action_for_character_creation_wait_for_input_65536_121:
	.ds 1
_action_for_character_creation_char_code_row_values_65536_121:
	.ds 8
_action_for_character_creation_state_on_error_65536_121:
	.ds 1
_action_for_character_creation_i_262144_128:
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
;Allocation info for local variables in function 'command_parser'
;------------------------------------------------------------
;cmd                       Allocated with name '_command_parser_cmd_65536_56'
;------------------------------------------------------------
;	src/command_handlers.c:33: void command_parser(char cmd)
;	-----------------------------------------
;	 function command_parser
;	-----------------------------------------
_command_parser:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_command_parser_cmd_65536_56
	movx	@dptr,a
;	src/command_handlers.c:35: switch (cmd)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3f,00160$
	ljmp	00111$
00160$:
	cjne	r7,#0x41,00161$
	ljmp	00109$
00161$:
	cjne	r7,#0x43,00162$
	ljmp	00108$
00162$:
	cjne	r7,#0x44,00163$
	ljmp	00110$
00163$:
	cjne	r7,#0x45,00164$
	ljmp	00102$
00164$:
	cjne	r7,#0x48,00165$
	ljmp	00107$
00165$:
	cjne	r7,#0x50,00166$
	ljmp	00103$
00166$:
	cjne	r7,#0x52,00167$
	ljmp	00105$
00167$:
	cjne	r7,#0x53,00168$
	ljmp	00104$
00168$:
	cjne	r7,#0x54,00169$
	ljmp	00106$
00169$:
	cjne	r7,#0x57,00170$
	sjmp	00171$
00170$:
	ljmp	00112$
00171$:
;	src/command_handlers.c:39: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:40: printf("\r\n                             WRITE  MENU           ");
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
;	src/command_handlers.c:41: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:42: action_for_write_command();
	lcall	_action_for_write_command
;	src/command_handlers.c:43: printf("\r\nExiting add menu...");
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
;	src/command_handlers.c:44: break;
	ret
;	src/command_handlers.c:46: case 'E':
00102$:
;	src/command_handlers.c:47: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:48: printf("\r\n                             Clearing the display        ");
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
;	src/command_handlers.c:49: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:53: }
	mov	r7,#0x01
	jbc	ea,00172$
	mov	r7,#0x00
00172$:
;	src/command_handlers.c:51: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	src/command_handlers.c:52: current_time_display();
	lcall	_current_time_display
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:54: printf("\r\nExiting clear menu...");
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
;	src/command_handlers.c:55: break;
	ret
;	src/command_handlers.c:56: case 'P':
00103$:
;	src/command_handlers.c:57: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:58: printf("\r\n                             Pausing the timer        ");
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
;	src/command_handlers.c:59: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:60: timer_pause();
	lcall	_timer_pause
;	src/command_handlers.c:61: printf("\r\nExiting pause menu...");
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
;	src/command_handlers.c:62: break;
	ret
;	src/command_handlers.c:63: case 'S':
00104$:
;	src/command_handlers.c:64: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:65: printf("\r\n                             Start the Timer        ");
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
;	src/command_handlers.c:66: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:67: timer_start();
	lcall	_timer_start
;	src/command_handlers.c:68: printf("\r\nExiting start timer menu...");
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
;	src/command_handlers.c:69: break;
	ret
;	src/command_handlers.c:70: case 'R':
00105$:
;	src/command_handlers.c:71: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:72: printf("\r\n                             Stop the Timer        ");
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
;	src/command_handlers.c:73: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:74: timer_stop();
	lcall	_timer_stop
;	src/command_handlers.c:75: printf("\r\nExiting stop timer menu...");
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
;	src/command_handlers.c:76: break;
	ret
;	src/command_handlers.c:77: case 'T':
00106$:
;	src/command_handlers.c:78: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:79: printf("\r\n                             Write to specific position        ");
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
;	src/command_handlers.c:80: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:81: action_for_write_to_specific_position();
	lcall	_action_for_write_to_specific_position
;	src/command_handlers.c:82: printf("\r\nExiting write menu...");
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
;	src/command_handlers.c:83: break;
	ret
;	src/command_handlers.c:84: case 'H':
00107$:
;	src/command_handlers.c:85: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:86: printf("\r\n                             Hexdump of DDRAM contents        ");
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
;	src/command_handlers.c:87: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:90: }
	mov	r7,#0x01
	jbc	ea,00173$
	mov	r7,#0x00
00173$:
;	src/command_handlers.c:89: lcd_ddram_dump_16x4();
	push	ar7
	lcall	_lcd_ddram_dump_16x4
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:91: printf("\r\nExiting hexdump menu...");
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
;	src/command_handlers.c:92: break;
	ret
;	src/command_handlers.c:93: case 'C':
00108$:
;	src/command_handlers.c:94: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:95: printf("\r\n                             Hexdump of CGRAM contents        ");
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
;	src/command_handlers.c:96: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:99: }
	mov	r7,#0x01
	jbc	ea,00174$
	mov	r7,#0x00
00174$:
;	src/command_handlers.c:98: lcd_cgram_dump();
	push	ar7
	lcall	_lcd_cgram_dump
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:100: printf("\r\nExiting hexdump menu...");
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
;	src/command_handlers.c:101: break;
	ret
;	src/command_handlers.c:102: case 'A':
00109$:
;	src/command_handlers.c:103: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:104: printf("\r\n                             Create a chaacter        ");
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
;	src/command_handlers.c:105: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:106: action_for_character_creation();
	lcall	_action_for_character_creation
;	src/command_handlers.c:107: printf("\r\nExiting hexdump menu...");
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
;	src/command_handlers.c:108: break;
	ret
;	src/command_handlers.c:109: case 'D':
00110$:
;	src/command_handlers.c:110: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:111: printf("\r\n                             Display custom char       ");
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
;	src/command_handlers.c:112: printf("\r\n-------------------------------------------------------------------");
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
;	src/command_handlers.c:113: action_for_display_custom_char();
	lcall	_action_for_display_custom_char
;	src/command_handlers.c:114: case '?':
00111$:
;	src/command_handlers.c:115: printf("\r\n----------------------------     Usage          --------------------------------------------\r\n");
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
;	src/command_handlers.c:116: printf(" W       : Write a string\r\n");
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
;	src/command_handlers.c:117: printf(" T       : Write to a specific position in the LCD\r\n");
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
;	src/command_handlers.c:118: printf(" E       : Clear the display\r\n");
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
;	src/command_handlers.c:119: printf(" P       : Pause the Timer\r\n");
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
;	src/command_handlers.c:120: printf(" S       : Start the Timer\r\n");
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
;	src/command_handlers.c:121: printf(" R       : Stop and reset the Timer\r\n");
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
;	src/command_handlers.c:122: printf(" H       : Hexdump of DDRAM contents\r\n");
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
;	src/command_handlers.c:123: printf(" C       : Hexdump of CGRAM contents\r\n");
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
;	src/command_handlers.c:124: printf(" A       : Create a CGRAM character\r\n");
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
;	src/command_handlers.c:125: printf(" D       : Display a CGRAM character\r\n");
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
;	src/command_handlers.c:126: printf(" ?       : Help menu\r\n");
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
;	src/command_handlers.c:127: printf("--------------------------------------------------------------------------------------------\r\n");
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
;	src/command_handlers.c:128: break;     
	ret
;	src/command_handlers.c:130: default:
00112$:
;	src/command_handlers.c:131: printf("\r\n                         Invalid Input                              ");
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
;	src/command_handlers.c:132: printf("\r\n----------------------------     Usage          --------------------------------------------\r\n");
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
;	src/command_handlers.c:133: printf(" W       : Write a string\r\n");
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
;	src/command_handlers.c:134: printf(" T       : Write to a specific position in the LCD\r\n");
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
;	src/command_handlers.c:135: printf(" E       : Clear the display\r\n");
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
;	src/command_handlers.c:136: printf(" P       : Pause the Timer\r\n");
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
;	src/command_handlers.c:137: printf(" S       : Start the Timer\r\n");
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
;	src/command_handlers.c:138: printf(" R       : Stop and reset the Timer\r\n");
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
;	src/command_handlers.c:139: printf(" H       : Hexdump of DDRAM contents\r\n");
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
;	src/command_handlers.c:140: printf(" C       : Hexdump of CGRAM contents\r\n");
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
;	src/command_handlers.c:141: printf(" A       : Create a CGRAM character\r\n");
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
;	src/command_handlers.c:142: printf(" D       : Display a CGRAM character\r\n");
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
;	src/command_handlers.c:143: printf(" ?       : Help menu\r\n");
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
;	src/command_handlers.c:144: printf("--------------------------------------------------------------------------------------------\r\n");
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
;	src/command_handlers.c:146: }
;	src/command_handlers.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_digit'
;------------------------------------------------------------
;c                         Allocated with name '_is_digit_c_65536_62'
;------------------------------------------------------------
;	src/command_handlers.c:155: bool is_digit(char c)
;	-----------------------------------------
;	 function is_digit
;	-----------------------------------------
_is_digit:
	mov	a,dpl
	mov	dptr,#_is_digit_c_65536_62
	movx	@dptr,a
;	src/command_handlers.c:158: return (c >= '0' && c <= '9');
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00110$
00110$:
	jc	00103$
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00104$
00103$:
	mov	r7,#0x00
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	dpl,r7
;	src/command_handlers.c:159: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'action_for_write_command'
;------------------------------------------------------------
;input_buffer              Allocated with name '_action_for_write_command_input_buffer_65536_65'
;error_message             Allocated with name '_action_for_write_command_error_message_65536_65'
;address_location          Allocated with name '_action_for_write_command_address_location_65536_65'
;write_data                Allocated with name '_action_for_write_command_write_data_65536_65'
;current_state             Allocated with name '_action_for_write_command_current_state_65536_65'
;wait_for_input            Allocated with name '_action_for_write_command_wait_for_input_65536_65'
;------------------------------------------------------------
;	src/command_handlers.c:169: void action_for_write_command(void)
;	-----------------------------------------
;	 function action_for_write_command
;	-----------------------------------------
_action_for_write_command:
;	src/command_handlers.c:173: char *error_message = "\r\nOut of range\r\n";
;	src/command_handlers.c:176: get_in_mem_state current_state = GET_STRING_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_command_current_state_65536_65
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:177: bool wait_for_input = true;
	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
	inc	a
	movx	@dptr,a
;	src/command_handlers.c:180: while (wait_for_input)
00108$:
	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
	movx	a,@dptr
	jnz	00137$
	ret
00137$:
;	src/command_handlers.c:182: switch (current_state)
	mov	dptr,#_action_for_write_command_current_state_65536_65
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x01,00139$
	sjmp	00104$
00139$:
;	src/command_handlers.c:184: case GET_STRING_INPUT_FROM_USER:
	cjne	r7,#0x0b,00108$
	sjmp	00105$
00101$:
;	src/command_handlers.c:185: printf("\r\nEnter the string and press enter:");
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
;	src/command_handlers.c:186: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_command_input_buffer_65536_65
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jnz	00108$
;	src/command_handlers.c:188: current_state = PUT_DATA_TO_LCD;
	mov	dptr,#_action_for_write_command_current_state_65536_65
	mov	a,#0x01
	movx	@dptr,a
;	src/command_handlers.c:190: break;
;	src/command_handlers.c:191: case PUT_DATA_TO_LCD:
	sjmp	00108$
00104$:
;	src/command_handlers.c:197: }
	mov	r7,#0x01
	jbc	ea,00142$
	mov	r7,#0x00
00142$:
;	src/command_handlers.c:194: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	src/command_handlers.c:195: lcd_put_string(input_buffer,0,0);
	mov	dptr,#_lcd_put_string_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_lcd_put_string_PARM_3
	movx	@dptr,a
	mov	dptr,#_action_for_write_command_input_buffer_65536_65
	mov	b,#0x00
	lcall	_lcd_put_string
;	src/command_handlers.c:196: current_time_display();
	lcall	_current_time_display
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:198: current_state = EXIT;
	mov	dptr,#_action_for_write_command_current_state_65536_65
	mov	a,#0x0b
	movx	@dptr,a
;	src/command_handlers.c:199: break;
	ljmp	00108$
;	src/command_handlers.c:200: case EXIT:
00105$:
;	src/command_handlers.c:201: wait_for_input = false;
	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:202: break;
;	src/command_handlers.c:205: }
;	src/command_handlers.c:207: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'check_input_buffer_and_extract_number'
;------------------------------------------------------------
;sloc0                     Allocated with name '_check_input_buffer_and_extract_number_sloc0_1_0'
;sloc1                     Allocated with name '_check_input_buffer_and_extract_number_sloc1_1_0'
;sloc2                     Allocated with name '_check_input_buffer_and_extract_number_sloc2_1_0'
;sloc3                     Allocated with name '_check_input_buffer_and_extract_number_sloc3_1_0'
;sloc4                     Allocated with name '_check_input_buffer_and_extract_number_sloc4_1_0'
;sloc5                     Allocated with name '_check_input_buffer_and_extract_number_sloc5_1_0'
;buffer_len                Allocated with name '_check_input_buffer_and_extract_number_PARM_2'
;current_state             Allocated with name '_check_input_buffer_and_extract_number_PARM_3'
;input_number              Allocated with name '_check_input_buffer_and_extract_number_PARM_4'
;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_number_PARM_5'
;input_buffer              Allocated with name '_check_input_buffer_and_extract_number_input_buffer_65536_70'
;temp_current_state        Allocated with name '_check_input_buffer_and_extract_number_temp_current_state_65537_72'
;i                         Allocated with name '_check_input_buffer_and_extract_number_i_131073_74'
;------------------------------------------------------------
;	src/command_handlers.c:219: void check_input_buffer_and_extract_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint8_t *input_number,get_in_mem_state *next_state_on_error)
;	-----------------------------------------
;	 function check_input_buffer_and_extract_number
;	-----------------------------------------
_check_input_buffer_and_extract_number:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:222: *input_number=0;
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
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
	clr	a
	lcall	__gptrput
;	src/command_handlers.c:223: get_in_mem_state temp_current_state = *current_state;
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
	movx	a,@dptr
	mov	_check_input_buffer_and_extract_number_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 2),a
	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
;	src/command_handlers.c:225: if (*input_buffer == 'q' || *input_buffer == 'Q')
	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
	movx	a,@dptr
	mov	_check_input_buffer_and_extract_number_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 2),a
	mov	dpl,_check_input_buffer_and_extract_number_sloc0_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x71,00139$
	sjmp	00101$
00139$:
	cjne	r0,#0x51,00120$
00101$:
;	src/command_handlers.c:227: *current_state = EXIT;
	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
	mov	a,#0x0b
;	src/command_handlers.c:228: return;
	ljmp	__gptrput
;	src/command_handlers.c:232: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
00120$:
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
	movx	a,@dptr
	mov	_check_input_buffer_and_extract_number_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_number_sloc1_1_0 + 1),a
	clr	a
	mov	_check_input_buffer_and_extract_number_sloc2_1_0,a
	mov	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1),a
00111$:
	mov	a,_check_input_buffer_and_extract_number_sloc2_1_0
	add	a,_check_input_buffer_and_extract_number_sloc0_1_0
	mov	_check_input_buffer_and_extract_number_sloc3_1_0,a
	mov	a,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
	addc	a,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 1),a
	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 2),(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_check_input_buffer_and_extract_number_sloc4_1_0,a
	jnz	00142$
	ret
00142$:
	push	ar1
	mov	r0,_check_input_buffer_and_extract_number_sloc2_1_0
	mov	r1,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
	clr	c
	mov	a,r0
	subb	a,_check_input_buffer_and_extract_number_sloc1_1_0
	mov	a,r1
	subb	a,(_check_input_buffer_and_extract_number_sloc1_1_0 + 1)
	pop	ar1
	jc	00143$
	ret
00143$:
	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	a,ar1,00144$
	sjmp	00145$
00144$:
	ret
00145$:
;	src/command_handlers.c:234: if (is_digit(input_buffer[i]))
	mov	dpl,_check_input_buffer_and_extract_number_sloc4_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_is_digit
	mov	a,dpl
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	src/command_handlers.c:237: *input_number = (*input_number) * 10 + (input_buffer[i] - '0'); // Build the number
	push	ar1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0a
	mul	ab
	mov	r0,a
	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
	lcall	__gptrget
	add	a,#0xd0
	add	a,r0
	mov	r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	pop	ar1
	sjmp	00112$
00105$:
;	src/command_handlers.c:241: printf("\r\nInvalid input");
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
;	src/command_handlers.c:242: *current_state = *next_state_on_error;
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
;	src/command_handlers.c:243: break;
	ljmp	__gptrput
00112$:
;	src/command_handlers.c:232: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
	inc	_check_input_buffer_and_extract_number_sloc2_1_0
	clr	a
	cjne	a,_check_input_buffer_and_extract_number_sloc2_1_0,00147$
	inc	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
00147$:
	ljmp	00111$
;	src/command_handlers.c:246: return;
;	src/command_handlers.c:247: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_valid_hex'
;------------------------------------------------------------
;str                       Allocated with name '_is_valid_hex_str_65536_78'
;------------------------------------------------------------
;	src/command_handlers.c:249: bool is_valid_hex(const char *str) {
;	-----------------------------------------
;	 function is_valid_hex
;	-----------------------------------------
_is_valid_hex:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_is_valid_hex_str_65536_78
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:251: if (*str == '\0') {
	mov	dptr,#_is_valid_hex_str_65536_78
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
	lcall	__gptrget
	mov	r4,a
;	src/command_handlers.c:252: return false;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	src/command_handlers.c:256: if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X')) {
	cjne	r4,#0x30,00119$
	inc	r5
	cjne	r5,#0x00,00141$
	inc	r6
00141$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x78,00142$
	sjmp	00103$
00142$:
	cjne	r7,#0x58,00119$
00103$:
;	src/command_handlers.c:257: str += 2;
	mov	dptr,#_is_valid_hex_str_65536_78
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_is_valid_hex_str_65536_78
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:261: while (*str) {
00119$:
	mov	dptr,#_is_valid_hex_str_65536_78
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00109$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00111$
;	src/command_handlers.c:262: if (!isxdigit((unsigned char)*str)) {
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
;	src/command_handlers.c:263: return false; // Invalid character found
	jnz	00108$
	mov	dpl,a
	ret
00108$:
;	src/command_handlers.c:265: str++;
	inc	r5
	cjne	r5,#0x00,00147$
	inc	r6
00147$:
	mov	dptr,#_is_valid_hex_str_65536_78
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00111$:
;	src/command_handlers.c:268: return true; // All characters are valid hex digits
	mov	dpl,#0x01
;	src/command_handlers.c:269: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_to_uint16'
;------------------------------------------------------------
;hex_str                   Allocated with name '_hex_to_uint16_hex_str_65536_84'
;result                    Allocated with name '_hex_to_uint16_result_65536_85'
;------------------------------------------------------------
;	src/command_handlers.c:271: uint16_t hex_to_uint16(const char *hex_str) {
;	-----------------------------------------
;	 function hex_to_uint16
;	-----------------------------------------
_hex_to_uint16:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:272: uint16_t result = 0;
	mov	dptr,#_hex_to_uint16_result_65536_85
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:275: if (hex_str[0] == '0' && (hex_str[1] == 'x' || hex_str[1] == 'X')) {
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
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
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00130$
	inc	r5
	cjne	r5,#0x00,00164$
	inc	r6
00164$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x78,00165$
	sjmp	00101$
00165$:
	cjne	r7,#0x58,00130$
00101$:
;	src/command_handlers.c:276: hex_str += 2;
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:280: while (*hex_str) {
00130$:
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00116$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00168$
	ljmp	00131$
00168$:
;	src/command_handlers.c:281: result <<= 4; // Shift result left by 4 bits to make room for the next hex digit
	mov	dptr,#_hex_to_uint16_result_65536_85
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:284: if (*hex_str >= '0' && *hex_str <= '9') {
	cjne	r4,#0x30,00169$
00169$:
	jc	00113$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00113$
;	src/command_handlers.c:285: result += *hex_str - '0';
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r3
	addc	a,r2
	mov	r2,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00113$:
;	src/command_handlers.c:286: } else if (*hex_str >= 'A' && *hex_str <= 'F') {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x41,00172$
00172$:
	jc	00109$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00109$
;	src/command_handlers.c:287: result += *hex_str - 'A' + 10;
	mov	r3,#0x00
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	a,#0xff
	addc	a,r3
	mov	r3,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r3
	addc	a,r2
	mov	r2,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00109$:
;	src/command_handlers.c:288: } else if (*hex_str >= 'a' && *hex_str <= 'f') {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x61,00175$
00175$:
	jc	00114$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00114$
;	src/command_handlers.c:289: result += *hex_str - 'a' + 10;
	mov	r3,#0x00
	mov	a,#0xa9
	add	a,r4
	mov	r4,a
	mov	a,#0xff
	addc	a,r3
	mov	r3,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r3
	addc	a,r2
	mov	r2,a
	mov	dptr,#_hex_to_uint16_result_65536_85
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
00114$:
;	src/command_handlers.c:292: hex_str++; // Move to the next character
	inc	r5
	cjne	r5,#0x00,00178$
	inc	r6
00178$:
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00131$:
	mov	dptr,#_hex_to_uint16_hex_str_65536_84
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:295: return result;
	mov	dptr,#_hex_to_uint16_result_65536_85
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	src/command_handlers.c:296: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_input_buffer_and_extract_hex_number'
;------------------------------------------------------------
;sloc0                     Allocated with name '_check_input_buffer_and_extract_hex_number_sloc0_1_0'
;buffer_len                Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_2'
;current_state             Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_3'
;input_number              Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_4'
;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_5'
;input_buffer              Allocated with name '_check_input_buffer_and_extract_hex_number_input_buffer_65536_91'
;value                     Allocated with name '_check_input_buffer_and_extract_hex_number_value_65537_93'
;endptr                    Allocated with name '_check_input_buffer_and_extract_hex_number_endptr_65537_93'
;temp_current_state        Allocated with name '_check_input_buffer_and_extract_hex_number_temp_current_state_65537_93'
;------------------------------------------------------------
;	src/command_handlers.c:309: void check_input_buffer_and_extract_hex_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint16_t *input_number,get_in_mem_state *next_state_on_error)
;	-----------------------------------------
;	 function check_input_buffer_and_extract_hex_number
;	-----------------------------------------
_check_input_buffer_and_extract_hex_number:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/command_handlers.c:312: *input_number=0;
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
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
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	src/command_handlers.c:317: if (*input_buffer == 'q' || *input_buffer == 'Q')
	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x71,00117$
	sjmp	00101$
00117$:
	cjne	r1,#0x51,00102$
00101$:
;	src/command_handlers.c:319: *current_state = EXIT;
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
	movx	a,@dptr
	mov	_check_input_buffer_and_extract_hex_number_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2),a
	mov	dpl,_check_input_buffer_and_extract_hex_number_sloc0_1_0
	mov	dph,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1)
	mov	b,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2)
	mov	a,#0x0b
;	src/command_handlers.c:320: return;
	ljmp	__gptrput
00102$:
;	src/command_handlers.c:323: if(is_valid_hex(input_buffer))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_is_valid_hex
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	src/command_handlers.c:326: value = hex_to_uint16(input_buffer);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_hex_to_uint16
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	src/command_handlers.c:327: *input_number = value;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
00105$:
;	src/command_handlers.c:331: *current_state = *next_state_on_error;
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	src/command_handlers.c:334: return;
;	src/command_handlers.c:335: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'action_for_write_to_specific_position'
;------------------------------------------------------------
;input_buffer              Allocated with name '_action_for_write_to_specific_position_input_buffer_65536_98'
;input_buffer_string       Allocated with name '_action_for_write_to_specific_position_input_buffer_string_65536_98'
;error_message             Allocated with name '_action_for_write_to_specific_position_error_message_65536_98'
;row_number                Allocated with name '_action_for_write_to_specific_position_row_number_65536_98'
;column_number             Allocated with name '_action_for_write_to_specific_position_column_number_65536_98'
;current_state             Allocated with name '_action_for_write_to_specific_position_current_state_65536_98'
;wait_for_input            Allocated with name '_action_for_write_to_specific_position_wait_for_input_65536_98'
;state_on_error            Allocated with name '_action_for_write_to_specific_position_state_on_error_65536_98'
;------------------------------------------------------------
;	src/command_handlers.c:337: void action_for_write_to_specific_position(void)
;	-----------------------------------------
;	 function action_for_write_to_specific_position
;	-----------------------------------------
_action_for_write_to_specific_position:
;	src/command_handlers.c:342: char *error_message = "\r\nOut of range\r\n";
;	src/command_handlers.c:343: uint8_t row_number = 0;
	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:344: uint8_t column_number = 0;
	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
	movx	@dptr,a
;	src/command_handlers.c:345: get_in_mem_state current_state = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x02
	movx	@dptr,a
;	src/command_handlers.c:346: bool wait_for_input = true;
	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
	dec	a
	movx	@dptr,a
;	src/command_handlers.c:349: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
	inc	a
	movx	@dptr,a
;	src/command_handlers.c:350: while (wait_for_input)
00126$:
	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
	movx	a,@dptr
	jnz	00171$
	ret
00171$:
;	src/command_handlers.c:352: switch (current_state)
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0b
	jc	00126$
	mov	a,r7
	add	a,#(00173$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00174$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00173$:
	.db	00119$
	.db	00122$
	.db	00101$
	.db	00110$
	.db	00104$
	.db	00113$
	.db	00126$
	.db	00126$
	.db	00126$
	.db	00126$
	.db	00126$
	.db	00123$
00174$:
	.db	00119$>>8
	.db	00122$>>8
	.db	00101$>>8
	.db	00110$>>8
	.db	00104$>>8
	.db	00113$>>8
	.db	00126$>>8
	.db	00126$>>8
	.db	00126$>>8
	.db	00126$>>8
	.db	00126$>>8
	.db	00123$>>8
;	src/command_handlers.c:354: case GET_ROW_INPUT_FROM_USER:
00101$:
;	src/command_handlers.c:355: printf("\r\nEnter the row number(between 1 and 4):");
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
;	src/command_handlers.c:356: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jz	00175$
	ljmp	00126$
00175$:
;	src/command_handlers.c:358: current_state = PARSE_ROW_INPUT;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x04
	movx	@dptr,a
;	src/command_handlers.c:360: break;
	ljmp	00126$
;	src/command_handlers.c:361: case PARSE_ROW_INPUT:
00104$:
;	src/command_handlers.c:362: state_on_error = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
	mov	a,#0x02
	movx	@dptr,a
;	src/command_handlers.c:363: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&row_number,&state_on_error);
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
	mov	a,#_action_for_write_to_specific_position_row_number_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_row_number_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
	mov	b,#0x00
	lcall	_check_input_buffer_and_extract_number
;	src/command_handlers.c:364: if(current_state==PARSE_ROW_INPUT)
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00176$
	sjmp	00177$
00176$:
	ljmp	00126$
00177$:
;	src/command_handlers.c:366: if(row_number<=4)
	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00106$
;	src/command_handlers.c:368: row_number-=1;
	mov	a,r7
	dec	a
	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
	movx	@dptr,a
;	src/command_handlers.c:369: current_state=GET_COLUMN_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x03
	movx	@dptr,a
	ljmp	00126$
00106$:
;	src/command_handlers.c:373: printf("\r\nInvalid Input:");
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
;	src/command_handlers.c:374: current_state = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x02
	movx	@dptr,a
;	src/command_handlers.c:378: break;
	ljmp	00126$
;	src/command_handlers.c:379: case GET_COLUMN_INPUT_FROM_USER:
00110$:
;	src/command_handlers.c:381: printf("\r\nEnter the column number(between 1 and 16):");
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
;	src/command_handlers.c:382: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jz	00179$
	ljmp	00126$
00179$:
;	src/command_handlers.c:384: current_state = PARSE_COLUMN_INPUT;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x05
	movx	@dptr,a
;	src/command_handlers.c:386: break;
	ljmp	00126$
;	src/command_handlers.c:387: case PARSE_COLUMN_INPUT:
00113$:
;	src/command_handlers.c:388: state_on_error = GET_COLUMN_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
	mov	a,#0x03
	movx	@dptr,a
;	src/command_handlers.c:389: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&column_number,&state_on_error);
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
	mov	a,#_action_for_write_to_specific_position_column_number_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_column_number_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
	movx	@dptr,a
	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
	mov	b,#0x00
	lcall	_check_input_buffer_and_extract_number
;	src/command_handlers.c:390: if(current_state==PARSE_COLUMN_INPUT)
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00180$
	sjmp	00181$
00180$:
	ljmp	00126$
00181$:
;	src/command_handlers.c:392: if(row_number<=16)
	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
	movx	a,@dptr
	add	a,#0xff - 0x10
	jc	00115$
;	src/command_handlers.c:394: column_number-=1;
	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
	movx	a,@dptr
	mov	r7,a
	dec	a
	movx	@dptr,a
;	src/command_handlers.c:395: current_state = GET_STRING_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	clr	a
	movx	@dptr,a
	ljmp	00126$
00115$:
;	src/command_handlers.c:399: printf("\r\nInvalid Input:");
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
;	src/command_handlers.c:400: current_state = GET_COLUMN_INPUT_FROM_USER;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x03
	movx	@dptr,a
;	src/command_handlers.c:404: break;
	ljmp	00126$
;	src/command_handlers.c:405: case GET_STRING_INPUT_FROM_USER:
00119$:
;	src/command_handlers.c:406: printf("\r\nEnter the string and press enter:");
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
;	src/command_handlers.c:407: if (!getstr(input_buffer_string, sizeof(input_buffer_string), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jz	00183$
	ljmp	00126$
00183$:
;	src/command_handlers.c:409: current_state = PUT_DATA_TO_LCD;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x01
	movx	@dptr,a
;	src/command_handlers.c:411: break;
	ljmp	00126$
;	src/command_handlers.c:412: case PUT_DATA_TO_LCD:
00122$:
;	src/command_handlers.c:418: }
	mov	r7,#0x01
	jbc	ea,00184$
	mov	r7,#0x00
00184$:
;	src/command_handlers.c:415: lcd_clear();
	push	ar7
	lcall	_lcd_clear
	pop	ar7
;	src/command_handlers.c:416: lcd_put_string(input_buffer_string,row_number,column_number);
	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_lcd_put_string_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_lcd_put_string_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
	mov	b,#0x00
	push	ar7
	lcall	_lcd_put_string
;	src/command_handlers.c:417: current_time_display();
	lcall	_current_time_display
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:420: current_state = EXIT;
	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
	mov	a,#0x0b
	movx	@dptr,a
;	src/command_handlers.c:421: break;
	ljmp	00126$
;	src/command_handlers.c:422: case EXIT:
00123$:
;	src/command_handlers.c:423: wait_for_input = false;
	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:424: break;
;	src/command_handlers.c:427: }
;	src/command_handlers.c:429: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'action_for_display_custom_char'
;------------------------------------------------------------
;input_buffer              Allocated with name '_action_for_display_custom_char_input_buffer_65536_112'
;error_message             Allocated with name '_action_for_display_custom_char_error_message_65536_112'
;char_code_row_value       Allocated with name '_action_for_display_custom_char_char_code_row_value_65536_112'
;char_code_number          Allocated with name '_action_for_display_custom_char_char_code_number_65536_112'
;current_state             Allocated with name '_action_for_display_custom_char_current_state_65536_112'
;wait_for_input            Allocated with name '_action_for_display_custom_char_wait_for_input_65536_112'
;char_code_row_values      Allocated with name '_action_for_display_custom_char_char_code_row_values_65536_112'
;state_on_error            Allocated with name '_action_for_display_custom_char_state_on_error_65536_112'
;------------------------------------------------------------
;	src/command_handlers.c:430: void action_for_display_custom_char(void)
;	-----------------------------------------
;	 function action_for_display_custom_char
;	-----------------------------------------
_action_for_display_custom_char:
;	src/command_handlers.c:433: char *error_message = "\r\nOut of range\r\n";
;	src/command_handlers.c:435: uint8_t char_code_number = 0;
	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:436: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:437: bool wait_for_input = true;
	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
	mov	a,#0x01
	movx	@dptr,a
;	src/command_handlers.c:441: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
	inc	a
	movx	@dptr,a
;	src/command_handlers.c:442: while (wait_for_input)
00115$:
	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
	movx	a,@dptr
	jnz	00160$
	ret
00160$:
;	src/command_handlers.c:444: switch (current_state)
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00161$
	sjmp	00101$
00161$:
	cjne	r7,#0x07,00162$
	sjmp	00104$
00162$:
	cjne	r7,#0x0a,00163$
	ljmp	00111$
00163$:
	cjne	r7,#0x0b,00164$
	ljmp	00112$
00164$:
;	src/command_handlers.c:446: case GET_CHAR_CODE_INPUT_FROM_USER:
	sjmp	00115$
00101$:
;	src/command_handlers.c:447: printf("\r\nEnter the char code to display (between 1 and 8):");
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
;	src/command_handlers.c:448: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jnz	00115$
;	src/command_handlers.c:450: current_state = PARSE_CHAR_CODE_INPUT;
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	mov	a,#0x07
	movx	@dptr,a
;	src/command_handlers.c:452: break;
;	src/command_handlers.c:453: case PARSE_CHAR_CODE_INPUT:
	sjmp	00115$
00104$:
;	src/command_handlers.c:454: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:455: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
	rr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
	mov	a,#_action_for_display_custom_char_current_state_65536_112
	movx	@dptr,a
	mov	a,#(_action_for_display_custom_char_current_state_65536_112 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
	mov	a,#_action_for_display_custom_char_char_code_number_65536_112
	movx	@dptr,a
	mov	a,#(_action_for_display_custom_char_char_code_number_65536_112 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
	mov	a,#_action_for_display_custom_char_state_on_error_65536_112
	movx	@dptr,a
	mov	a,#(_action_for_display_custom_char_state_on_error_65536_112 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
	mov	b,#0x00
	lcall	_check_input_buffer_and_extract_number
;	src/command_handlers.c:456: if(current_state==PARSE_CHAR_CODE_INPUT)
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00166$
	sjmp	00167$
00166$:
	ljmp	00115$
00167$:
;	src/command_handlers.c:458: printf("\r\nCharcode to display is %d:",char_code_number);
	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/command_handlers.c:459: if(char_code_number>0 && char_code_number<=8)
	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	mov	a,r7
	add	a,#0xff - 0x08
	jc	00106$
;	src/command_handlers.c:461: char_code_number-=1;
	mov	a,r7
	dec	a
	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
	movx	@dptr,a
;	src/command_handlers.c:462: current_state=DISPLAY_CGRAM_CHAR;
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	mov	a,#0x0a
	movx	@dptr,a
	ljmp	00115$
00106$:
;	src/command_handlers.c:466: printf("\r\nInvalid Input:");
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
;	src/command_handlers.c:467: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:471: break;
	ljmp	00115$
;	src/command_handlers.c:472: case DISPLAY_CGRAM_CHAR:
00111$:
;	src/command_handlers.c:473: printf("\r\nDisplay custom char:");
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
;	src/command_handlers.c:479: }
	mov	r7,#0x01
	jbc	ea,00170$
	mov	r7,#0x00
00170$:
;	src/command_handlers.c:476: lcd_clear();
	push	ar7
	lcall	_lcd_clear
	pop	ar7
;	src/command_handlers.c:477: display_custom_char(char_code_number);
	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_display_custom_char
;	src/command_handlers.c:478: current_time_display();
	lcall	_current_time_display
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:480: current_state = EXIT;
	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
	mov	a,#0x0b
	movx	@dptr,a
;	src/command_handlers.c:481: break;
	ljmp	00115$
;	src/command_handlers.c:482: case EXIT:
00112$:
;	src/command_handlers.c:483: wait_for_input = false;
	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:484: break;
;	src/command_handlers.c:487: }
;	src/command_handlers.c:490: }
	ljmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'action_for_character_creation'
;------------------------------------------------------------
;input_buffer              Allocated with name '_action_for_character_creation_input_buffer_65536_121'
;error_message             Allocated with name '_action_for_character_creation_error_message_65536_121'
;char_code_row_value       Allocated with name '_action_for_character_creation_char_code_row_value_65536_121'
;char_code_number          Allocated with name '_action_for_character_creation_char_code_number_65536_121'
;current_state             Allocated with name '_action_for_character_creation_current_state_65536_121'
;wait_for_input            Allocated with name '_action_for_character_creation_wait_for_input_65536_121'
;char_code_row_values      Allocated with name '_action_for_character_creation_char_code_row_values_65536_121'
;state_on_error            Allocated with name '_action_for_character_creation_state_on_error_65536_121'
;i                         Allocated with name '_action_for_character_creation_i_262144_128'
;------------------------------------------------------------
;	src/command_handlers.c:492: void action_for_character_creation(void)
;	-----------------------------------------
;	 function action_for_character_creation
;	-----------------------------------------
_action_for_character_creation:
;	src/command_handlers.c:496: char *error_message = "\r\nOut of range\r\n";
;	src/command_handlers.c:497: uint8_t char_code_row_value = 0;
	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:498: uint8_t char_code_number = 0;
	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
	movx	@dptr,a
;	src/command_handlers.c:499: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:500: bool wait_for_input = true;
	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
	mov	a,#0x01
	movx	@dptr,a
;	src/command_handlers.c:504: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
	inc	a
	movx	@dptr,a
;	src/command_handlers.c:505: while (wait_for_input)
00125$:
	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
	movx	a,@dptr
	jnz	00197$
	ret
00197$:
;	src/command_handlers.c:507: switch (current_state)
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00198$
	sjmp	00101$
00198$:
	cjne	r7,#0x07,00199$
	sjmp	00104$
00199$:
	cjne	r7,#0x08,00200$
	ljmp	00111$
00200$:
	cjne	r7,#0x09,00201$
	ljmp	00121$
00201$:
	cjne	r7,#0x0b,00202$
	ljmp	00122$
00202$:
;	src/command_handlers.c:509: case GET_CHAR_CODE_INPUT_FROM_USER:
	sjmp	00125$
00101$:
;	src/command_handlers.c:510: printf("\r\nEnter the char code to create (between 1 and 8):");
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
;	src/command_handlers.c:511: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	jnz	00125$
;	src/command_handlers.c:513: current_state = PARSE_CHAR_CODE_INPUT;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x07
	movx	@dptr,a
;	src/command_handlers.c:515: break;
;	src/command_handlers.c:516: case PARSE_CHAR_CODE_INPUT:
	sjmp	00125$
00104$:
;	src/command_handlers.c:517: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:518: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
	rr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
	mov	a,#_action_for_character_creation_current_state_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
	mov	a,#_action_for_character_creation_char_code_number_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_char_code_number_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
	mov	a,#_action_for_character_creation_state_on_error_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
	mov	b,#0x00
	lcall	_check_input_buffer_and_extract_number
;	src/command_handlers.c:519: if(current_state==PARSE_CHAR_CODE_INPUT)
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00204$
	sjmp	00205$
00204$:
	ljmp	00125$
00205$:
;	src/command_handlers.c:521: if(char_code_number>0 && char_code_number<=8)
	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	mov	a,r7
	add	a,#0xff - 0x08
	jc	00106$
;	src/command_handlers.c:523: char_code_number-=1;
	mov	a,r7
	dec	a
	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
	movx	@dptr,a
;	src/command_handlers.c:524: current_state=GET_ROW_VALUE_AND_PARSE;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x08
	movx	@dptr,a
	ljmp	00125$
00106$:
;	src/command_handlers.c:528: printf("\r\nInvalid Input:");
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
;	src/command_handlers.c:529: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x06
	movx	@dptr,a
;	src/command_handlers.c:533: break;
	ljmp	00125$
;	src/command_handlers.c:534: case GET_ROW_VALUE_AND_PARSE:
00111$:
;	src/command_handlers.c:536: for(int8_t i=0;i<8;i++)
	mov	dptr,#_action_for_character_creation_i_262144_128
	clr	a
	movx	@dptr,a
00129$:
	mov	dptr,#_action_for_character_creation_i_262144_128
	movx	a,@dptr
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x88
	jc	00208$
	ljmp	00120$
00208$:
;	src/command_handlers.c:538: printf("\r\nEnter the value for row %d in hex without 0x prefix:",i+1);
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	src/command_handlers.c:539: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#___str_32
	movx	@dptr,a
	mov	a,#(___str_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
	mov	b,#0x00
	lcall	_getstr
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00209$
	ljmp	00130$
00209$:
;	src/command_handlers.c:541: check_input_buffer_and_extract_hex_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_row_value,&state_on_error);
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
	mov	a,#_action_for_character_creation_current_state_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
	mov	a,#_action_for_character_creation_char_code_row_value_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_char_code_row_value_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
	mov	a,#_action_for_character_creation_state_on_error_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_check_input_buffer_and_extract_hex_number
	pop	ar5
	pop	ar6
	pop	ar7
;	src/command_handlers.c:542: if(current_state!=GET_ROW_VALUE_AND_PARSE )
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,00210$
	sjmp	00116$
00210$:
;	src/command_handlers.c:544: current_state = GET_ROW_VALUE_AND_PARSE;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x08
	movx	@dptr,a
;	src/command_handlers.c:545: i--;
	mov	a,r7
	dec	a
	mov	dptr,#_action_for_character_creation_i_262144_128
	movx	@dptr,a
	sjmp	00130$
00116$:
;	src/command_handlers.c:547: else if(char_code_row_value > 0x1F)
	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x1f
	jnc	00113$
;	src/command_handlers.c:549: printf("\r\nRow value out of range. Must be between 0x00 and 0x1F.\r\n");
	push	ar7
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
	pop	ar7
;	src/command_handlers.c:550: current_state = GET_ROW_VALUE_AND_PARSE;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x08
	movx	@dptr,a
;	src/command_handlers.c:551: i--;
	mov	a,r7
	dec	a
	mov	dptr,#_action_for_character_creation_i_262144_128
	movx	@dptr,a
	sjmp	00130$
00113$:
;	src/command_handlers.c:555: char_code_row_values[i]=char_code_row_value;
	mov	a,r5
	add	a,#_action_for_character_creation_char_code_row_values_65536_121
	mov	dpl,a
	mov	a,r6
	addc	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
00130$:
;	src/command_handlers.c:536: for(int8_t i=0;i<8;i++)
	mov	dptr,#_action_for_character_creation_i_262144_128
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00129$
00120$:
;	src/command_handlers.c:559: current_state = CREATE_CGRAM_CHAR;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x09
	movx	@dptr,a
;	src/command_handlers.c:560: break;
	ljmp	00125$
;	src/command_handlers.c:561: case CREATE_CGRAM_CHAR:
00121$:
;	src/command_handlers.c:567: }
	mov	r7,#0x01
	jbc	ea,00212$
	mov	r7,#0x00
00212$:
;	src/command_handlers.c:564: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	src/command_handlers.c:565: lcd_create_char(char_code_number,char_code_row_values);
	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_lcd_create_char_PARM_2
	mov	a,#_action_for_character_creation_char_code_row_values_65536_121
	movx	@dptr,a
	mov	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	lcall	_lcd_create_char
;	src/command_handlers.c:566: current_time_display();
	lcall	_current_time_display
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	src/command_handlers.c:569: current_state = EXIT;
	mov	dptr,#_action_for_character_creation_current_state_65536_121
	mov	a,#0x0b
	movx	@dptr,a
;	src/command_handlers.c:570: break;
	ljmp	00125$
;	src/command_handlers.c:571: case EXIT:
00122$:
;	src/command_handlers.c:572: wait_for_input = false;
	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
	clr	a
	movx	@dptr,a
;	src/command_handlers.c:573: break;
;	src/command_handlers.c:576: }
;	src/command_handlers.c:578: }
	ljmp	00125$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii "------------------------------------------------------------"
	.ascii "-------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.ascii "                             WRITE  MENU           "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting add menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "                             Clearing the display        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting clear menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "                             Pausing the timer        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting pause menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "                             Start the Timer        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting start timer menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "                             Stop the Timer        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting stop timer menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "                             Write to specific position     "
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting write menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "                             Hexdump of DDRAM contents      "
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0d
	.db 0x0a
	.ascii "Exiting hexdump menu..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0d
	.db 0x0a
	.ascii "                             Hexdump of CGRAM contents      "
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0d
	.db 0x0a
	.ascii "                             Create a chaacter        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "                             Display custom char       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0d
	.db 0x0a
	.ascii "----------------------------     Usage          ------------"
	.ascii "--------------------------------"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii " W       : Write a string"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii " T       : Write to a specific position in the LCD"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii " E       : Clear the display"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii " P       : Pause the Timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " S       : Start the Timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii " R       : Stop and reset the Timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii " H       : Hexdump of DDRAM contents"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii " C       : Hexdump of CGRAM contents"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " A       : Create a CGRAM character"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii " D       : Display a CGRAM character"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii " ?       : Help menu"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "------------------------------------------------------------"
	.ascii "--------------------------------"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0d
	.db 0x0a
	.ascii "                         Invalid Input                      "
	.ascii "        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0d
	.db 0x0a
	.ascii "Out of range"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the string and press enter:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0d
	.db 0x0a
	.ascii "Invalid input"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the row number(between 1 and 4):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0d
	.db 0x0a
	.ascii "Invalid Input:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the column number(between 1 and 16):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the char code to display (between 1 and 8):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0d
	.db 0x0a
	.ascii "Charcode to display is %d:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0d
	.db 0x0a
	.ascii "Display custom char:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the char code to create (between 1 and 8):"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the value for row %d in hex without 0x prefix:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0d
	.db 0x0a
	.ascii "Row value out of range. Must be between 0x00 and 0x1F."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
