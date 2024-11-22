                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module command_handlers
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _action_for_character_creation
                                     12 	.globl _action_for_display_custom_char
                                     13 	.globl _action_for_write_to_specific_position
                                     14 	.globl _check_input_buffer_and_extract_hex_number
                                     15 	.globl _hex_to_uint16
                                     16 	.globl _is_valid_hex
                                     17 	.globl _display_custom_char
                                     18 	.globl _lcd_create_char
                                     19 	.globl _lcd_clear
                                     20 	.globl _lcd_put_string
                                     21 	.globl _current_time_display
                                     22 	.globl _timer_stop
                                     23 	.globl _timer_pause
                                     24 	.globl _timer_start
                                     25 	.globl _getstr
                                     26 	.globl _isxdigit
                                     27 	.globl _printf
                                     28 	.globl _check_input_buffer_and_extract_hex_number_PARM_5
                                     29 	.globl _check_input_buffer_and_extract_hex_number_PARM_4
                                     30 	.globl _check_input_buffer_and_extract_hex_number_PARM_3
                                     31 	.globl _check_input_buffer_and_extract_hex_number_PARM_2
                                     32 	.globl _check_input_buffer_and_extract_number_PARM_5
                                     33 	.globl _check_input_buffer_and_extract_number_PARM_4
                                     34 	.globl _check_input_buffer_and_extract_number_PARM_3
                                     35 	.globl _check_input_buffer_and_extract_number_PARM_2
                                     36 	.globl _command_parser
                                     37 	.globl _is_digit
                                     38 	.globl _action_for_write_command
                                     39 	.globl _check_input_buffer_and_extract_number
                                     40 ;--------------------------------------------------------
                                     41 ; special function registers
                                     42 ;--------------------------------------------------------
                                     43 	.area RSEG    (ABS,DATA)
      000000                         44 	.org 0x0000
                                     45 ;--------------------------------------------------------
                                     46 ; special function bits
                                     47 ;--------------------------------------------------------
                                     48 	.area RSEG    (ABS,DATA)
      000000                         49 	.org 0x0000
                                     50 ;--------------------------------------------------------
                                     51 ; overlayable register banks
                                     52 ;--------------------------------------------------------
                                     53 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         54 	.ds 8
                                     55 ;--------------------------------------------------------
                                     56 ; internal ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DSEG    (DATA)
      000008                         59 _check_input_buffer_and_extract_number_sloc0_1_0:
      000008                         60 	.ds 3
      00000B                         61 _check_input_buffer_and_extract_number_sloc1_1_0:
      00000B                         62 	.ds 2
      00000D                         63 _check_input_buffer_and_extract_number_sloc2_1_0:
      00000D                         64 	.ds 2
      00000F                         65 _check_input_buffer_and_extract_number_sloc3_1_0:
      00000F                         66 	.ds 3
      000012                         67 _check_input_buffer_and_extract_number_sloc4_1_0:
      000012                         68 	.ds 1
      000013                         69 _check_input_buffer_and_extract_number_sloc5_1_0:
      000013                         70 	.ds 3
      000016                         71 _check_input_buffer_and_extract_hex_number_sloc0_1_0:
      000016                         72 	.ds 3
                                     73 ;--------------------------------------------------------
                                     74 ; overlayable items in internal ram 
                                     75 ;--------------------------------------------------------
                                     76 ;--------------------------------------------------------
                                     77 ; indirectly addressable internal ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area ISEG    (DATA)
                                     80 ;--------------------------------------------------------
                                     81 ; absolute internal ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area IABS    (ABS,DATA)
                                     84 	.area IABS    (ABS,DATA)
                                     85 ;--------------------------------------------------------
                                     86 ; bit data
                                     87 ;--------------------------------------------------------
                                     88 	.area BSEG    (BIT)
                                     89 ;--------------------------------------------------------
                                     90 ; paged external ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area PSEG    (PAG,XDATA)
                                     93 ;--------------------------------------------------------
                                     94 ; external ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area XSEG    (XDATA)
      001800                         97 _command_parser_cmd_65536_56:
      001800                         98 	.ds 1
      001801                         99 _is_digit_c_65536_62:
      001801                        100 	.ds 1
      001802                        101 _action_for_write_command_input_buffer_65536_65:
      001802                        102 	.ds 100
      001866                        103 _action_for_write_command_current_state_65536_65:
      001866                        104 	.ds 1
      001867                        105 _action_for_write_command_wait_for_input_65536_65:
      001867                        106 	.ds 1
      001868                        107 _check_input_buffer_and_extract_number_PARM_2:
      001868                        108 	.ds 2
      00186A                        109 _check_input_buffer_and_extract_number_PARM_3:
      00186A                        110 	.ds 3
      00186D                        111 _check_input_buffer_and_extract_number_PARM_4:
      00186D                        112 	.ds 3
      001870                        113 _check_input_buffer_and_extract_number_PARM_5:
      001870                        114 	.ds 3
      001873                        115 _check_input_buffer_and_extract_number_input_buffer_65536_70:
      001873                        116 	.ds 3
      001876                        117 _is_valid_hex_str_65536_78:
      001876                        118 	.ds 3
      001879                        119 _hex_to_uint16_hex_str_65536_84:
      001879                        120 	.ds 3
      00187C                        121 _hex_to_uint16_result_65536_85:
      00187C                        122 	.ds 2
      00187E                        123 _check_input_buffer_and_extract_hex_number_PARM_2:
      00187E                        124 	.ds 2
      001880                        125 _check_input_buffer_and_extract_hex_number_PARM_3:
      001880                        126 	.ds 3
      001883                        127 _check_input_buffer_and_extract_hex_number_PARM_4:
      001883                        128 	.ds 3
      001886                        129 _check_input_buffer_and_extract_hex_number_PARM_5:
      001886                        130 	.ds 3
      001889                        131 _check_input_buffer_and_extract_hex_number_input_buffer_65536_91:
      001889                        132 	.ds 3
      00188C                        133 _action_for_write_to_specific_position_input_buffer_65536_98:
      00188C                        134 	.ds 3
      00188F                        135 _action_for_write_to_specific_position_input_buffer_string_65536_98:
      00188F                        136 	.ds 100
      0018F3                        137 _action_for_write_to_specific_position_row_number_65536_98:
      0018F3                        138 	.ds 1
      0018F4                        139 _action_for_write_to_specific_position_column_number_65536_98:
      0018F4                        140 	.ds 1
      0018F5                        141 _action_for_write_to_specific_position_current_state_65536_98:
      0018F5                        142 	.ds 1
      0018F6                        143 _action_for_write_to_specific_position_wait_for_input_65536_98:
      0018F6                        144 	.ds 1
      0018F7                        145 _action_for_write_to_specific_position_state_on_error_65536_98:
      0018F7                        146 	.ds 1
      0018F8                        147 _action_for_display_custom_char_input_buffer_65536_112:
      0018F8                        148 	.ds 3
      0018FB                        149 _action_for_display_custom_char_char_code_number_65536_112:
      0018FB                        150 	.ds 1
      0018FC                        151 _action_for_display_custom_char_current_state_65536_112:
      0018FC                        152 	.ds 1
      0018FD                        153 _action_for_display_custom_char_wait_for_input_65536_112:
      0018FD                        154 	.ds 1
      0018FE                        155 _action_for_display_custom_char_char_code_row_values_65536_112:
      0018FE                        156 	.ds 8
      001906                        157 _action_for_display_custom_char_state_on_error_65536_112:
      001906                        158 	.ds 1
      001907                        159 _action_for_character_creation_input_buffer_65536_121:
      001907                        160 	.ds 3
      00190A                        161 _action_for_character_creation_char_code_row_value_65536_121:
      00190A                        162 	.ds 1
      00190B                        163 _action_for_character_creation_char_code_number_65536_121:
      00190B                        164 	.ds 1
      00190C                        165 _action_for_character_creation_current_state_65536_121:
      00190C                        166 	.ds 1
      00190D                        167 _action_for_character_creation_wait_for_input_65536_121:
      00190D                        168 	.ds 1
      00190E                        169 _action_for_character_creation_char_code_row_values_65536_121:
      00190E                        170 	.ds 8
      001916                        171 _action_for_character_creation_state_on_error_65536_121:
      001916                        172 	.ds 1
      001917                        173 _action_for_character_creation_i_262144_128:
      001917                        174 	.ds 1
                                    175 ;--------------------------------------------------------
                                    176 ; absolute external ram data
                                    177 ;--------------------------------------------------------
                                    178 	.area XABS    (ABS,XDATA)
                                    179 ;--------------------------------------------------------
                                    180 ; external initialized ram data
                                    181 ;--------------------------------------------------------
                                    182 	.area XISEG   (XDATA)
                                    183 	.area HOME    (CODE)
                                    184 	.area GSINIT0 (CODE)
                                    185 	.area GSINIT1 (CODE)
                                    186 	.area GSINIT2 (CODE)
                                    187 	.area GSINIT3 (CODE)
                                    188 	.area GSINIT4 (CODE)
                                    189 	.area GSINIT5 (CODE)
                                    190 	.area GSINIT  (CODE)
                                    191 	.area GSFINAL (CODE)
                                    192 	.area CSEG    (CODE)
                                    193 ;--------------------------------------------------------
                                    194 ; global & static initialisations
                                    195 ;--------------------------------------------------------
                                    196 	.area HOME    (CODE)
                                    197 	.area GSINIT  (CODE)
                                    198 	.area GSFINAL (CODE)
                                    199 	.area GSINIT  (CODE)
                                    200 ;--------------------------------------------------------
                                    201 ; Home
                                    202 ;--------------------------------------------------------
                                    203 	.area HOME    (CODE)
                                    204 	.area HOME    (CODE)
                                    205 ;--------------------------------------------------------
                                    206 ; code
                                    207 ;--------------------------------------------------------
                                    208 	.area CSEG    (CODE)
                                    209 ;------------------------------------------------------------
                                    210 ;Allocation info for local variables in function 'command_parser'
                                    211 ;------------------------------------------------------------
                                    212 ;cmd                       Allocated with name '_command_parser_cmd_65536_56'
                                    213 ;------------------------------------------------------------
                                    214 ;	src/command_handlers.c:33: void command_parser(char cmd)
                                    215 ;	-----------------------------------------
                                    216 ;	 function command_parser
                                    217 ;	-----------------------------------------
      00206D                        218 _command_parser:
                           000007   219 	ar7 = 0x07
                           000006   220 	ar6 = 0x06
                           000005   221 	ar5 = 0x05
                           000004   222 	ar4 = 0x04
                           000003   223 	ar3 = 0x03
                           000002   224 	ar2 = 0x02
                           000001   225 	ar1 = 0x01
                           000000   226 	ar0 = 0x00
      00206D E5 82            [12]  227 	mov	a,dpl
      00206F 90 18 00         [24]  228 	mov	dptr,#_command_parser_cmd_65536_56
      002072 F0               [24]  229 	movx	@dptr,a
                                    230 ;	src/command_handlers.c:35: switch (cmd)
      002073 E0               [24]  231 	movx	a,@dptr
      002074 FF               [12]  232 	mov	r7,a
      002075 BF 3F 03         [24]  233 	cjne	r7,#0x3f,00160$
      002078 02 24 43         [24]  234 	ljmp	00111$
      00207B                        235 00160$:
      00207B BF 41 03         [24]  236 	cjne	r7,#0x41,00161$
      00207E 02 23 A9         [24]  237 	ljmp	00109$
      002081                        238 00161$:
      002081 BF 43 03         [24]  239 	cjne	r7,#0x43,00162$
      002084 02 23 42         [24]  240 	ljmp	00108$
      002087                        241 00162$:
      002087 BF 44 03         [24]  242 	cjne	r7,#0x44,00163$
      00208A 02 24 01         [24]  243 	ljmp	00110$
      00208D                        244 00163$:
      00208D BF 45 03         [24]  245 	cjne	r7,#0x45,00164$
      002090 02 21 11         [24]  246 	ljmp	00102$
      002093                        247 00164$:
      002093 BF 48 03         [24]  248 	cjne	r7,#0x48,00165$
      002096 02 22 DB         [24]  249 	ljmp	00107$
      002099                        250 00165$:
      002099 BF 50 03         [24]  251 	cjne	r7,#0x50,00166$
      00209C 02 21 7B         [24]  252 	ljmp	00103$
      00209F                        253 00166$:
      00209F BF 52 03         [24]  254 	cjne	r7,#0x52,00167$
      0020A2 02 22 2B         [24]  255 	ljmp	00105$
      0020A5                        256 00167$:
      0020A5 BF 53 03         [24]  257 	cjne	r7,#0x53,00168$
      0020A8 02 21 D3         [24]  258 	ljmp	00104$
      0020AB                        259 00168$:
      0020AB BF 54 03         [24]  260 	cjne	r7,#0x54,00169$
      0020AE 02 22 83         [24]  261 	ljmp	00106$
      0020B1                        262 00169$:
      0020B1 BF 57 02         [24]  263 	cjne	r7,#0x57,00170$
      0020B4 80 03            [24]  264 	sjmp	00171$
      0020B6                        265 00170$:
      0020B6 02 25 55         [24]  266 	ljmp	00112$
      0020B9                        267 00171$:
                                    268 ;	src/command_handlers.c:39: printf("\r\n-------------------------------------------------------------------");
      0020B9 74 FF            [12]  269 	mov	a,#___str_0
      0020BB C0 E0            [24]  270 	push	acc
      0020BD 74 47            [12]  271 	mov	a,#(___str_0 >> 8)
      0020BF C0 E0            [24]  272 	push	acc
      0020C1 74 80            [12]  273 	mov	a,#0x80
      0020C3 C0 E0            [24]  274 	push	acc
      0020C5 12 3D 9B         [24]  275 	lcall	_printf
      0020C8 15 81            [12]  276 	dec	sp
      0020CA 15 81            [12]  277 	dec	sp
      0020CC 15 81            [12]  278 	dec	sp
                                    279 ;	src/command_handlers.c:40: printf("\r\n                             WRITE  MENU           ");
      0020CE 74 45            [12]  280 	mov	a,#___str_1
      0020D0 C0 E0            [24]  281 	push	acc
      0020D2 74 48            [12]  282 	mov	a,#(___str_1 >> 8)
      0020D4 C0 E0            [24]  283 	push	acc
      0020D6 74 80            [12]  284 	mov	a,#0x80
      0020D8 C0 E0            [24]  285 	push	acc
      0020DA 12 3D 9B         [24]  286 	lcall	_printf
      0020DD 15 81            [12]  287 	dec	sp
      0020DF 15 81            [12]  288 	dec	sp
      0020E1 15 81            [12]  289 	dec	sp
                                    290 ;	src/command_handlers.c:41: printf("\r\n-------------------------------------------------------------------");
      0020E3 74 FF            [12]  291 	mov	a,#___str_0
      0020E5 C0 E0            [24]  292 	push	acc
      0020E7 74 47            [12]  293 	mov	a,#(___str_0 >> 8)
      0020E9 C0 E0            [24]  294 	push	acc
      0020EB 74 80            [12]  295 	mov	a,#0x80
      0020ED C0 E0            [24]  296 	push	acc
      0020EF 12 3D 9B         [24]  297 	lcall	_printf
      0020F2 15 81            [12]  298 	dec	sp
      0020F4 15 81            [12]  299 	dec	sp
      0020F6 15 81            [12]  300 	dec	sp
                                    301 ;	src/command_handlers.c:42: action_for_write_command();
      0020F8 12 26 97         [24]  302 	lcall	_action_for_write_command
                                    303 ;	src/command_handlers.c:43: printf("\r\nExiting add menu...");
      0020FB 74 7B            [12]  304 	mov	a,#___str_2
      0020FD C0 E0            [24]  305 	push	acc
      0020FF 74 48            [12]  306 	mov	a,#(___str_2 >> 8)
      002101 C0 E0            [24]  307 	push	acc
      002103 74 80            [12]  308 	mov	a,#0x80
      002105 C0 E0            [24]  309 	push	acc
      002107 12 3D 9B         [24]  310 	lcall	_printf
      00210A 15 81            [12]  311 	dec	sp
      00210C 15 81            [12]  312 	dec	sp
      00210E 15 81            [12]  313 	dec	sp
                                    314 ;	src/command_handlers.c:44: break;
      002110 22               [24]  315 	ret
                                    316 ;	src/command_handlers.c:46: case 'E':
      002111                        317 00102$:
                                    318 ;	src/command_handlers.c:47: printf("\r\n-------------------------------------------------------------------");
      002111 74 FF            [12]  319 	mov	a,#___str_0
      002113 C0 E0            [24]  320 	push	acc
      002115 74 47            [12]  321 	mov	a,#(___str_0 >> 8)
      002117 C0 E0            [24]  322 	push	acc
      002119 74 80            [12]  323 	mov	a,#0x80
      00211B C0 E0            [24]  324 	push	acc
      00211D 12 3D 9B         [24]  325 	lcall	_printf
      002120 15 81            [12]  326 	dec	sp
      002122 15 81            [12]  327 	dec	sp
      002124 15 81            [12]  328 	dec	sp
                                    329 ;	src/command_handlers.c:48: printf("\r\n                             Clearing the display        ");
      002126 74 91            [12]  330 	mov	a,#___str_3
      002128 C0 E0            [24]  331 	push	acc
      00212A 74 48            [12]  332 	mov	a,#(___str_3 >> 8)
      00212C C0 E0            [24]  333 	push	acc
      00212E 74 80            [12]  334 	mov	a,#0x80
      002130 C0 E0            [24]  335 	push	acc
      002132 12 3D 9B         [24]  336 	lcall	_printf
      002135 15 81            [12]  337 	dec	sp
      002137 15 81            [12]  338 	dec	sp
      002139 15 81            [12]  339 	dec	sp
                                    340 ;	src/command_handlers.c:49: printf("\r\n-------------------------------------------------------------------");
      00213B 74 FF            [12]  341 	mov	a,#___str_0
      00213D C0 E0            [24]  342 	push	acc
      00213F 74 47            [12]  343 	mov	a,#(___str_0 >> 8)
      002141 C0 E0            [24]  344 	push	acc
      002143 74 80            [12]  345 	mov	a,#0x80
      002145 C0 E0            [24]  346 	push	acc
      002147 12 3D 9B         [24]  347 	lcall	_printf
      00214A 15 81            [12]  348 	dec	sp
      00214C 15 81            [12]  349 	dec	sp
      00214E 15 81            [12]  350 	dec	sp
                                    351 ;	src/command_handlers.c:53: }
      002150 7F 01            [12]  352 	mov	r7,#0x01
      002152 10 AF 02         [24]  353 	jbc	ea,00172$
      002155 7F 00            [12]  354 	mov	r7,#0x00
      002157                        355 00172$:
                                    356 ;	src/command_handlers.c:51: lcd_clear();
      002157 C0 07            [24]  357 	push	ar7
      002159 12 33 F3         [24]  358 	lcall	_lcd_clear
                                    359 ;	src/command_handlers.c:52: current_time_display();
      00215C 12 39 EE         [24]  360 	lcall	_current_time_display
      00215F D0 07            [24]  361 	pop	ar7
      002161 EF               [12]  362 	mov	a,r7
      002162 13               [12]  363 	rrc	a
      002163 92 AF            [24]  364 	mov	ea,c
                                    365 ;	src/command_handlers.c:54: printf("\r\nExiting clear menu...");
      002165 74 CD            [12]  366 	mov	a,#___str_4
      002167 C0 E0            [24]  367 	push	acc
      002169 74 48            [12]  368 	mov	a,#(___str_4 >> 8)
      00216B C0 E0            [24]  369 	push	acc
      00216D 74 80            [12]  370 	mov	a,#0x80
      00216F C0 E0            [24]  371 	push	acc
      002171 12 3D 9B         [24]  372 	lcall	_printf
      002174 15 81            [12]  373 	dec	sp
      002176 15 81            [12]  374 	dec	sp
      002178 15 81            [12]  375 	dec	sp
                                    376 ;	src/command_handlers.c:55: break;
      00217A 22               [24]  377 	ret
                                    378 ;	src/command_handlers.c:56: case 'P':
      00217B                        379 00103$:
                                    380 ;	src/command_handlers.c:57: printf("\r\n-------------------------------------------------------------------");
      00217B 74 FF            [12]  381 	mov	a,#___str_0
      00217D C0 E0            [24]  382 	push	acc
      00217F 74 47            [12]  383 	mov	a,#(___str_0 >> 8)
      002181 C0 E0            [24]  384 	push	acc
      002183 74 80            [12]  385 	mov	a,#0x80
      002185 C0 E0            [24]  386 	push	acc
      002187 12 3D 9B         [24]  387 	lcall	_printf
      00218A 15 81            [12]  388 	dec	sp
      00218C 15 81            [12]  389 	dec	sp
      00218E 15 81            [12]  390 	dec	sp
                                    391 ;	src/command_handlers.c:58: printf("\r\n                             Pausing the timer        ");
      002190 74 E5            [12]  392 	mov	a,#___str_5
      002192 C0 E0            [24]  393 	push	acc
      002194 74 48            [12]  394 	mov	a,#(___str_5 >> 8)
      002196 C0 E0            [24]  395 	push	acc
      002198 74 80            [12]  396 	mov	a,#0x80
      00219A C0 E0            [24]  397 	push	acc
      00219C 12 3D 9B         [24]  398 	lcall	_printf
      00219F 15 81            [12]  399 	dec	sp
      0021A1 15 81            [12]  400 	dec	sp
      0021A3 15 81            [12]  401 	dec	sp
                                    402 ;	src/command_handlers.c:59: printf("\r\n-------------------------------------------------------------------");
      0021A5 74 FF            [12]  403 	mov	a,#___str_0
      0021A7 C0 E0            [24]  404 	push	acc
      0021A9 74 47            [12]  405 	mov	a,#(___str_0 >> 8)
      0021AB C0 E0            [24]  406 	push	acc
      0021AD 74 80            [12]  407 	mov	a,#0x80
      0021AF C0 E0            [24]  408 	push	acc
      0021B1 12 3D 9B         [24]  409 	lcall	_printf
      0021B4 15 81            [12]  410 	dec	sp
      0021B6 15 81            [12]  411 	dec	sp
      0021B8 15 81            [12]  412 	dec	sp
                                    413 ;	src/command_handlers.c:60: timer_pause();
      0021BA 12 39 DA         [24]  414 	lcall	_timer_pause
                                    415 ;	src/command_handlers.c:61: printf("\r\nExiting pause menu...");
      0021BD 74 1E            [12]  416 	mov	a,#___str_6
      0021BF C0 E0            [24]  417 	push	acc
      0021C1 74 49            [12]  418 	mov	a,#(___str_6 >> 8)
      0021C3 C0 E0            [24]  419 	push	acc
      0021C5 74 80            [12]  420 	mov	a,#0x80
      0021C7 C0 E0            [24]  421 	push	acc
      0021C9 12 3D 9B         [24]  422 	lcall	_printf
      0021CC 15 81            [12]  423 	dec	sp
      0021CE 15 81            [12]  424 	dec	sp
      0021D0 15 81            [12]  425 	dec	sp
                                    426 ;	src/command_handlers.c:62: break;
      0021D2 22               [24]  427 	ret
                                    428 ;	src/command_handlers.c:63: case 'S':
      0021D3                        429 00104$:
                                    430 ;	src/command_handlers.c:64: printf("\r\n-------------------------------------------------------------------");
      0021D3 74 FF            [12]  431 	mov	a,#___str_0
      0021D5 C0 E0            [24]  432 	push	acc
      0021D7 74 47            [12]  433 	mov	a,#(___str_0 >> 8)
      0021D9 C0 E0            [24]  434 	push	acc
      0021DB 74 80            [12]  435 	mov	a,#0x80
      0021DD C0 E0            [24]  436 	push	acc
      0021DF 12 3D 9B         [24]  437 	lcall	_printf
      0021E2 15 81            [12]  438 	dec	sp
      0021E4 15 81            [12]  439 	dec	sp
      0021E6 15 81            [12]  440 	dec	sp
                                    441 ;	src/command_handlers.c:65: printf("\r\n                             Start the Timer        ");
      0021E8 74 36            [12]  442 	mov	a,#___str_7
      0021EA C0 E0            [24]  443 	push	acc
      0021EC 74 49            [12]  444 	mov	a,#(___str_7 >> 8)
      0021EE C0 E0            [24]  445 	push	acc
      0021F0 74 80            [12]  446 	mov	a,#0x80
      0021F2 C0 E0            [24]  447 	push	acc
      0021F4 12 3D 9B         [24]  448 	lcall	_printf
      0021F7 15 81            [12]  449 	dec	sp
      0021F9 15 81            [12]  450 	dec	sp
      0021FB 15 81            [12]  451 	dec	sp
                                    452 ;	src/command_handlers.c:66: printf("\r\n-------------------------------------------------------------------");
      0021FD 74 FF            [12]  453 	mov	a,#___str_0
      0021FF C0 E0            [24]  454 	push	acc
      002201 74 47            [12]  455 	mov	a,#(___str_0 >> 8)
      002203 C0 E0            [24]  456 	push	acc
      002205 74 80            [12]  457 	mov	a,#0x80
      002207 C0 E0            [24]  458 	push	acc
      002209 12 3D 9B         [24]  459 	lcall	_printf
      00220C 15 81            [12]  460 	dec	sp
      00220E 15 81            [12]  461 	dec	sp
      002210 15 81            [12]  462 	dec	sp
                                    463 ;	src/command_handlers.c:67: timer_start();
      002212 12 39 E1         [24]  464 	lcall	_timer_start
                                    465 ;	src/command_handlers.c:68: printf("\r\nExiting start timer menu...");
      002215 74 6D            [12]  466 	mov	a,#___str_8
      002217 C0 E0            [24]  467 	push	acc
      002219 74 49            [12]  468 	mov	a,#(___str_8 >> 8)
      00221B C0 E0            [24]  469 	push	acc
      00221D 74 80            [12]  470 	mov	a,#0x80
      00221F C0 E0            [24]  471 	push	acc
      002221 12 3D 9B         [24]  472 	lcall	_printf
      002224 15 81            [12]  473 	dec	sp
      002226 15 81            [12]  474 	dec	sp
      002228 15 81            [12]  475 	dec	sp
                                    476 ;	src/command_handlers.c:69: break;
      00222A 22               [24]  477 	ret
                                    478 ;	src/command_handlers.c:70: case 'R':
      00222B                        479 00105$:
                                    480 ;	src/command_handlers.c:71: printf("\r\n-------------------------------------------------------------------");
      00222B 74 FF            [12]  481 	mov	a,#___str_0
      00222D C0 E0            [24]  482 	push	acc
      00222F 74 47            [12]  483 	mov	a,#(___str_0 >> 8)
      002231 C0 E0            [24]  484 	push	acc
      002233 74 80            [12]  485 	mov	a,#0x80
      002235 C0 E0            [24]  486 	push	acc
      002237 12 3D 9B         [24]  487 	lcall	_printf
      00223A 15 81            [12]  488 	dec	sp
      00223C 15 81            [12]  489 	dec	sp
      00223E 15 81            [12]  490 	dec	sp
                                    491 ;	src/command_handlers.c:72: printf("\r\n                             Stop the Timer        ");
      002240 74 8B            [12]  492 	mov	a,#___str_9
      002242 C0 E0            [24]  493 	push	acc
      002244 74 49            [12]  494 	mov	a,#(___str_9 >> 8)
      002246 C0 E0            [24]  495 	push	acc
      002248 74 80            [12]  496 	mov	a,#0x80
      00224A C0 E0            [24]  497 	push	acc
      00224C 12 3D 9B         [24]  498 	lcall	_printf
      00224F 15 81            [12]  499 	dec	sp
      002251 15 81            [12]  500 	dec	sp
      002253 15 81            [12]  501 	dec	sp
                                    502 ;	src/command_handlers.c:73: printf("\r\n-------------------------------------------------------------------");
      002255 74 FF            [12]  503 	mov	a,#___str_0
      002257 C0 E0            [24]  504 	push	acc
      002259 74 47            [12]  505 	mov	a,#(___str_0 >> 8)
      00225B C0 E0            [24]  506 	push	acc
      00225D 74 80            [12]  507 	mov	a,#0x80
      00225F C0 E0            [24]  508 	push	acc
      002261 12 3D 9B         [24]  509 	lcall	_printf
      002264 15 81            [12]  510 	dec	sp
      002266 15 81            [12]  511 	dec	sp
      002268 15 81            [12]  512 	dec	sp
                                    513 ;	src/command_handlers.c:74: timer_stop();
      00226A 12 39 C2         [24]  514 	lcall	_timer_stop
                                    515 ;	src/command_handlers.c:75: printf("\r\nExiting stop timer menu...");
      00226D 74 C1            [12]  516 	mov	a,#___str_10
      00226F C0 E0            [24]  517 	push	acc
      002271 74 49            [12]  518 	mov	a,#(___str_10 >> 8)
      002273 C0 E0            [24]  519 	push	acc
      002275 74 80            [12]  520 	mov	a,#0x80
      002277 C0 E0            [24]  521 	push	acc
      002279 12 3D 9B         [24]  522 	lcall	_printf
      00227C 15 81            [12]  523 	dec	sp
      00227E 15 81            [12]  524 	dec	sp
      002280 15 81            [12]  525 	dec	sp
                                    526 ;	src/command_handlers.c:76: break;
      002282 22               [24]  527 	ret
                                    528 ;	src/command_handlers.c:77: case 'T':
      002283                        529 00106$:
                                    530 ;	src/command_handlers.c:78: printf("\r\n-------------------------------------------------------------------");
      002283 74 FF            [12]  531 	mov	a,#___str_0
      002285 C0 E0            [24]  532 	push	acc
      002287 74 47            [12]  533 	mov	a,#(___str_0 >> 8)
      002289 C0 E0            [24]  534 	push	acc
      00228B 74 80            [12]  535 	mov	a,#0x80
      00228D C0 E0            [24]  536 	push	acc
      00228F 12 3D 9B         [24]  537 	lcall	_printf
      002292 15 81            [12]  538 	dec	sp
      002294 15 81            [12]  539 	dec	sp
      002296 15 81            [12]  540 	dec	sp
                                    541 ;	src/command_handlers.c:79: printf("\r\n                             Write to specific position        ");
      002298 74 DE            [12]  542 	mov	a,#___str_11
      00229A C0 E0            [24]  543 	push	acc
      00229C 74 49            [12]  544 	mov	a,#(___str_11 >> 8)
      00229E C0 E0            [24]  545 	push	acc
      0022A0 74 80            [12]  546 	mov	a,#0x80
      0022A2 C0 E0            [24]  547 	push	acc
      0022A4 12 3D 9B         [24]  548 	lcall	_printf
      0022A7 15 81            [12]  549 	dec	sp
      0022A9 15 81            [12]  550 	dec	sp
      0022AB 15 81            [12]  551 	dec	sp
                                    552 ;	src/command_handlers.c:80: printf("\r\n-------------------------------------------------------------------");
      0022AD 74 FF            [12]  553 	mov	a,#___str_0
      0022AF C0 E0            [24]  554 	push	acc
      0022B1 74 47            [12]  555 	mov	a,#(___str_0 >> 8)
      0022B3 C0 E0            [24]  556 	push	acc
      0022B5 74 80            [12]  557 	mov	a,#0x80
      0022B7 C0 E0            [24]  558 	push	acc
      0022B9 12 3D 9B         [24]  559 	lcall	_printf
      0022BC 15 81            [12]  560 	dec	sp
      0022BE 15 81            [12]  561 	dec	sp
      0022C0 15 81            [12]  562 	dec	sp
                                    563 ;	src/command_handlers.c:81: action_for_write_to_specific_position();
      0022C2 12 2B 57         [24]  564 	lcall	_action_for_write_to_specific_position
                                    565 ;	src/command_handlers.c:82: printf("\r\nExiting write menu...");
      0022C5 74 20            [12]  566 	mov	a,#___str_12
      0022C7 C0 E0            [24]  567 	push	acc
      0022C9 74 4A            [12]  568 	mov	a,#(___str_12 >> 8)
      0022CB C0 E0            [24]  569 	push	acc
      0022CD 74 80            [12]  570 	mov	a,#0x80
      0022CF C0 E0            [24]  571 	push	acc
      0022D1 12 3D 9B         [24]  572 	lcall	_printf
      0022D4 15 81            [12]  573 	dec	sp
      0022D6 15 81            [12]  574 	dec	sp
      0022D8 15 81            [12]  575 	dec	sp
                                    576 ;	src/command_handlers.c:83: break;
      0022DA 22               [24]  577 	ret
                                    578 ;	src/command_handlers.c:84: case 'H':
      0022DB                        579 00107$:
                                    580 ;	src/command_handlers.c:85: printf("\r\n-------------------------------------------------------------------");
      0022DB 74 FF            [12]  581 	mov	a,#___str_0
      0022DD C0 E0            [24]  582 	push	acc
      0022DF 74 47            [12]  583 	mov	a,#(___str_0 >> 8)
      0022E1 C0 E0            [24]  584 	push	acc
      0022E3 74 80            [12]  585 	mov	a,#0x80
      0022E5 C0 E0            [24]  586 	push	acc
      0022E7 12 3D 9B         [24]  587 	lcall	_printf
      0022EA 15 81            [12]  588 	dec	sp
      0022EC 15 81            [12]  589 	dec	sp
      0022EE 15 81            [12]  590 	dec	sp
                                    591 ;	src/command_handlers.c:86: printf("\r\n                             Hexdump of DDRAM contents        ");
      0022F0 74 38            [12]  592 	mov	a,#___str_13
      0022F2 C0 E0            [24]  593 	push	acc
      0022F4 74 4A            [12]  594 	mov	a,#(___str_13 >> 8)
      0022F6 C0 E0            [24]  595 	push	acc
      0022F8 74 80            [12]  596 	mov	a,#0x80
      0022FA C0 E0            [24]  597 	push	acc
      0022FC 12 3D 9B         [24]  598 	lcall	_printf
      0022FF 15 81            [12]  599 	dec	sp
      002301 15 81            [12]  600 	dec	sp
      002303 15 81            [12]  601 	dec	sp
                                    602 ;	src/command_handlers.c:87: printf("\r\n-------------------------------------------------------------------");
      002305 74 FF            [12]  603 	mov	a,#___str_0
      002307 C0 E0            [24]  604 	push	acc
      002309 74 47            [12]  605 	mov	a,#(___str_0 >> 8)
      00230B C0 E0            [24]  606 	push	acc
      00230D 74 80            [12]  607 	mov	a,#0x80
      00230F C0 E0            [24]  608 	push	acc
      002311 12 3D 9B         [24]  609 	lcall	_printf
      002314 15 81            [12]  610 	dec	sp
      002316 15 81            [12]  611 	dec	sp
      002318 15 81            [12]  612 	dec	sp
                                    613 ;	src/command_handlers.c:90: }
      00231A 7F 01            [12]  614 	mov	r7,#0x01
      00231C 10 AF 02         [24]  615 	jbc	ea,00173$
      00231F 7F 00            [12]  616 	mov	r7,#0x00
      002321                        617 00173$:
                                    618 ;	src/command_handlers.c:89: lcd_ddram_dump_16x4();
      002321 C0 07            [24]  619 	push	ar7
      002323 12 35 86         [24]  620 	lcall	_lcd_ddram_dump_16x4
      002326 D0 07            [24]  621 	pop	ar7
      002328 EF               [12]  622 	mov	a,r7
      002329 13               [12]  623 	rrc	a
      00232A 92 AF            [24]  624 	mov	ea,c
                                    625 ;	src/command_handlers.c:91: printf("\r\nExiting hexdump menu...");
      00232C 74 79            [12]  626 	mov	a,#___str_14
      00232E C0 E0            [24]  627 	push	acc
      002330 74 4A            [12]  628 	mov	a,#(___str_14 >> 8)
      002332 C0 E0            [24]  629 	push	acc
      002334 74 80            [12]  630 	mov	a,#0x80
      002336 C0 E0            [24]  631 	push	acc
      002338 12 3D 9B         [24]  632 	lcall	_printf
      00233B 15 81            [12]  633 	dec	sp
      00233D 15 81            [12]  634 	dec	sp
      00233F 15 81            [12]  635 	dec	sp
                                    636 ;	src/command_handlers.c:92: break;
      002341 22               [24]  637 	ret
                                    638 ;	src/command_handlers.c:93: case 'C':
      002342                        639 00108$:
                                    640 ;	src/command_handlers.c:94: printf("\r\n-------------------------------------------------------------------");
      002342 74 FF            [12]  641 	mov	a,#___str_0
      002344 C0 E0            [24]  642 	push	acc
      002346 74 47            [12]  643 	mov	a,#(___str_0 >> 8)
      002348 C0 E0            [24]  644 	push	acc
      00234A 74 80            [12]  645 	mov	a,#0x80
      00234C C0 E0            [24]  646 	push	acc
      00234E 12 3D 9B         [24]  647 	lcall	_printf
      002351 15 81            [12]  648 	dec	sp
      002353 15 81            [12]  649 	dec	sp
      002355 15 81            [12]  650 	dec	sp
                                    651 ;	src/command_handlers.c:95: printf("\r\n                             Hexdump of CGRAM contents        ");
      002357 74 93            [12]  652 	mov	a,#___str_15
      002359 C0 E0            [24]  653 	push	acc
      00235B 74 4A            [12]  654 	mov	a,#(___str_15 >> 8)
      00235D C0 E0            [24]  655 	push	acc
      00235F 74 80            [12]  656 	mov	a,#0x80
      002361 C0 E0            [24]  657 	push	acc
      002363 12 3D 9B         [24]  658 	lcall	_printf
      002366 15 81            [12]  659 	dec	sp
      002368 15 81            [12]  660 	dec	sp
      00236A 15 81            [12]  661 	dec	sp
                                    662 ;	src/command_handlers.c:96: printf("\r\n-------------------------------------------------------------------");
      00236C 74 FF            [12]  663 	mov	a,#___str_0
      00236E C0 E0            [24]  664 	push	acc
      002370 74 47            [12]  665 	mov	a,#(___str_0 >> 8)
      002372 C0 E0            [24]  666 	push	acc
      002374 74 80            [12]  667 	mov	a,#0x80
      002376 C0 E0            [24]  668 	push	acc
      002378 12 3D 9B         [24]  669 	lcall	_printf
      00237B 15 81            [12]  670 	dec	sp
      00237D 15 81            [12]  671 	dec	sp
      00237F 15 81            [12]  672 	dec	sp
                                    673 ;	src/command_handlers.c:99: }
      002381 7F 01            [12]  674 	mov	r7,#0x01
      002383 10 AF 02         [24]  675 	jbc	ea,00174$
      002386 7F 00            [12]  676 	mov	r7,#0x00
      002388                        677 00174$:
                                    678 ;	src/command_handlers.c:98: lcd_cgram_dump();
      002388 C0 07            [24]  679 	push	ar7
      00238A 12 36 31         [24]  680 	lcall	_lcd_cgram_dump
      00238D D0 07            [24]  681 	pop	ar7
      00238F EF               [12]  682 	mov	a,r7
      002390 13               [12]  683 	rrc	a
      002391 92 AF            [24]  684 	mov	ea,c
                                    685 ;	src/command_handlers.c:100: printf("\r\nExiting hexdump menu...");
      002393 74 79            [12]  686 	mov	a,#___str_14
      002395 C0 E0            [24]  687 	push	acc
      002397 74 4A            [12]  688 	mov	a,#(___str_14 >> 8)
      002399 C0 E0            [24]  689 	push	acc
      00239B 74 80            [12]  690 	mov	a,#0x80
      00239D C0 E0            [24]  691 	push	acc
      00239F 12 3D 9B         [24]  692 	lcall	_printf
      0023A2 15 81            [12]  693 	dec	sp
      0023A4 15 81            [12]  694 	dec	sp
      0023A6 15 81            [12]  695 	dec	sp
                                    696 ;	src/command_handlers.c:101: break;
      0023A8 22               [24]  697 	ret
                                    698 ;	src/command_handlers.c:102: case 'A':
      0023A9                        699 00109$:
                                    700 ;	src/command_handlers.c:103: printf("\r\n-------------------------------------------------------------------");
      0023A9 74 FF            [12]  701 	mov	a,#___str_0
      0023AB C0 E0            [24]  702 	push	acc
      0023AD 74 47            [12]  703 	mov	a,#(___str_0 >> 8)
      0023AF C0 E0            [24]  704 	push	acc
      0023B1 74 80            [12]  705 	mov	a,#0x80
      0023B3 C0 E0            [24]  706 	push	acc
      0023B5 12 3D 9B         [24]  707 	lcall	_printf
      0023B8 15 81            [12]  708 	dec	sp
      0023BA 15 81            [12]  709 	dec	sp
      0023BC 15 81            [12]  710 	dec	sp
                                    711 ;	src/command_handlers.c:104: printf("\r\n                             Create a chaacter        ");
      0023BE 74 D4            [12]  712 	mov	a,#___str_16
      0023C0 C0 E0            [24]  713 	push	acc
      0023C2 74 4A            [12]  714 	mov	a,#(___str_16 >> 8)
      0023C4 C0 E0            [24]  715 	push	acc
      0023C6 74 80            [12]  716 	mov	a,#0x80
      0023C8 C0 E0            [24]  717 	push	acc
      0023CA 12 3D 9B         [24]  718 	lcall	_printf
      0023CD 15 81            [12]  719 	dec	sp
      0023CF 15 81            [12]  720 	dec	sp
      0023D1 15 81            [12]  721 	dec	sp
                                    722 ;	src/command_handlers.c:105: printf("\r\n-------------------------------------------------------------------");
      0023D3 74 FF            [12]  723 	mov	a,#___str_0
      0023D5 C0 E0            [24]  724 	push	acc
      0023D7 74 47            [12]  725 	mov	a,#(___str_0 >> 8)
      0023D9 C0 E0            [24]  726 	push	acc
      0023DB 74 80            [12]  727 	mov	a,#0x80
      0023DD C0 E0            [24]  728 	push	acc
      0023DF 12 3D 9B         [24]  729 	lcall	_printf
      0023E2 15 81            [12]  730 	dec	sp
      0023E4 15 81            [12]  731 	dec	sp
      0023E6 15 81            [12]  732 	dec	sp
                                    733 ;	src/command_handlers.c:106: action_for_character_creation();
      0023E8 12 2F 23         [24]  734 	lcall	_action_for_character_creation
                                    735 ;	src/command_handlers.c:107: printf("\r\nExiting hexdump menu...");
      0023EB 74 79            [12]  736 	mov	a,#___str_14
      0023ED C0 E0            [24]  737 	push	acc
      0023EF 74 4A            [12]  738 	mov	a,#(___str_14 >> 8)
      0023F1 C0 E0            [24]  739 	push	acc
      0023F3 74 80            [12]  740 	mov	a,#0x80
      0023F5 C0 E0            [24]  741 	push	acc
      0023F7 12 3D 9B         [24]  742 	lcall	_printf
      0023FA 15 81            [12]  743 	dec	sp
      0023FC 15 81            [12]  744 	dec	sp
      0023FE 15 81            [12]  745 	dec	sp
                                    746 ;	src/command_handlers.c:108: break;
      002400 22               [24]  747 	ret
                                    748 ;	src/command_handlers.c:109: case 'D':
      002401                        749 00110$:
                                    750 ;	src/command_handlers.c:110: printf("\r\n-------------------------------------------------------------------");
      002401 74 FF            [12]  751 	mov	a,#___str_0
      002403 C0 E0            [24]  752 	push	acc
      002405 74 47            [12]  753 	mov	a,#(___str_0 >> 8)
      002407 C0 E0            [24]  754 	push	acc
      002409 74 80            [12]  755 	mov	a,#0x80
      00240B C0 E0            [24]  756 	push	acc
      00240D 12 3D 9B         [24]  757 	lcall	_printf
      002410 15 81            [12]  758 	dec	sp
      002412 15 81            [12]  759 	dec	sp
      002414 15 81            [12]  760 	dec	sp
                                    761 ;	src/command_handlers.c:111: printf("\r\n                             Display custom char       ");
      002416 74 0D            [12]  762 	mov	a,#___str_17
      002418 C0 E0            [24]  763 	push	acc
      00241A 74 4B            [12]  764 	mov	a,#(___str_17 >> 8)
      00241C C0 E0            [24]  765 	push	acc
      00241E 74 80            [12]  766 	mov	a,#0x80
      002420 C0 E0            [24]  767 	push	acc
      002422 12 3D 9B         [24]  768 	lcall	_printf
      002425 15 81            [12]  769 	dec	sp
      002427 15 81            [12]  770 	dec	sp
      002429 15 81            [12]  771 	dec	sp
                                    772 ;	src/command_handlers.c:112: printf("\r\n-------------------------------------------------------------------");
      00242B 74 FF            [12]  773 	mov	a,#___str_0
      00242D C0 E0            [24]  774 	push	acc
      00242F 74 47            [12]  775 	mov	a,#(___str_0 >> 8)
      002431 C0 E0            [24]  776 	push	acc
      002433 74 80            [12]  777 	mov	a,#0x80
      002435 C0 E0            [24]  778 	push	acc
      002437 12 3D 9B         [24]  779 	lcall	_printf
      00243A 15 81            [12]  780 	dec	sp
      00243C 15 81            [12]  781 	dec	sp
      00243E 15 81            [12]  782 	dec	sp
                                    783 ;	src/command_handlers.c:113: action_for_display_custom_char();
      002440 12 2D BC         [24]  784 	lcall	_action_for_display_custom_char
                                    785 ;	src/command_handlers.c:114: case '?':
      002443                        786 00111$:
                                    787 ;	src/command_handlers.c:115: printf("\r\n----------------------------     Usage          --------------------------------------------\r\n");
      002443 74 47            [12]  788 	mov	a,#___str_18
      002445 C0 E0            [24]  789 	push	acc
      002447 74 4B            [12]  790 	mov	a,#(___str_18 >> 8)
      002449 C0 E0            [24]  791 	push	acc
      00244B 74 80            [12]  792 	mov	a,#0x80
      00244D C0 E0            [24]  793 	push	acc
      00244F 12 3D 9B         [24]  794 	lcall	_printf
      002452 15 81            [12]  795 	dec	sp
      002454 15 81            [12]  796 	dec	sp
      002456 15 81            [12]  797 	dec	sp
                                    798 ;	src/command_handlers.c:116: printf(" W       : Write a string\r\n");
      002458 74 A8            [12]  799 	mov	a,#___str_19
      00245A C0 E0            [24]  800 	push	acc
      00245C 74 4B            [12]  801 	mov	a,#(___str_19 >> 8)
      00245E C0 E0            [24]  802 	push	acc
      002460 74 80            [12]  803 	mov	a,#0x80
      002462 C0 E0            [24]  804 	push	acc
      002464 12 3D 9B         [24]  805 	lcall	_printf
      002467 15 81            [12]  806 	dec	sp
      002469 15 81            [12]  807 	dec	sp
      00246B 15 81            [12]  808 	dec	sp
                                    809 ;	src/command_handlers.c:117: printf(" T       : Write to a specific position in the LCD\r\n");
      00246D 74 C4            [12]  810 	mov	a,#___str_20
      00246F C0 E0            [24]  811 	push	acc
      002471 74 4B            [12]  812 	mov	a,#(___str_20 >> 8)
      002473 C0 E0            [24]  813 	push	acc
      002475 74 80            [12]  814 	mov	a,#0x80
      002477 C0 E0            [24]  815 	push	acc
      002479 12 3D 9B         [24]  816 	lcall	_printf
      00247C 15 81            [12]  817 	dec	sp
      00247E 15 81            [12]  818 	dec	sp
      002480 15 81            [12]  819 	dec	sp
                                    820 ;	src/command_handlers.c:118: printf(" E       : Clear the display\r\n");
      002482 74 F9            [12]  821 	mov	a,#___str_21
      002484 C0 E0            [24]  822 	push	acc
      002486 74 4B            [12]  823 	mov	a,#(___str_21 >> 8)
      002488 C0 E0            [24]  824 	push	acc
      00248A 74 80            [12]  825 	mov	a,#0x80
      00248C C0 E0            [24]  826 	push	acc
      00248E 12 3D 9B         [24]  827 	lcall	_printf
      002491 15 81            [12]  828 	dec	sp
      002493 15 81            [12]  829 	dec	sp
      002495 15 81            [12]  830 	dec	sp
                                    831 ;	src/command_handlers.c:119: printf(" P       : Pause the Timer\r\n");
      002497 74 18            [12]  832 	mov	a,#___str_22
      002499 C0 E0            [24]  833 	push	acc
      00249B 74 4C            [12]  834 	mov	a,#(___str_22 >> 8)
      00249D C0 E0            [24]  835 	push	acc
      00249F 74 80            [12]  836 	mov	a,#0x80
      0024A1 C0 E0            [24]  837 	push	acc
      0024A3 12 3D 9B         [24]  838 	lcall	_printf
      0024A6 15 81            [12]  839 	dec	sp
      0024A8 15 81            [12]  840 	dec	sp
      0024AA 15 81            [12]  841 	dec	sp
                                    842 ;	src/command_handlers.c:120: printf(" S       : Start the Timer\r\n");
      0024AC 74 35            [12]  843 	mov	a,#___str_23
      0024AE C0 E0            [24]  844 	push	acc
      0024B0 74 4C            [12]  845 	mov	a,#(___str_23 >> 8)
      0024B2 C0 E0            [24]  846 	push	acc
      0024B4 74 80            [12]  847 	mov	a,#0x80
      0024B6 C0 E0            [24]  848 	push	acc
      0024B8 12 3D 9B         [24]  849 	lcall	_printf
      0024BB 15 81            [12]  850 	dec	sp
      0024BD 15 81            [12]  851 	dec	sp
      0024BF 15 81            [12]  852 	dec	sp
                                    853 ;	src/command_handlers.c:121: printf(" R       : Stop and reset the Timer\r\n");
      0024C1 74 52            [12]  854 	mov	a,#___str_24
      0024C3 C0 E0            [24]  855 	push	acc
      0024C5 74 4C            [12]  856 	mov	a,#(___str_24 >> 8)
      0024C7 C0 E0            [24]  857 	push	acc
      0024C9 74 80            [12]  858 	mov	a,#0x80
      0024CB C0 E0            [24]  859 	push	acc
      0024CD 12 3D 9B         [24]  860 	lcall	_printf
      0024D0 15 81            [12]  861 	dec	sp
      0024D2 15 81            [12]  862 	dec	sp
      0024D4 15 81            [12]  863 	dec	sp
                                    864 ;	src/command_handlers.c:122: printf(" H       : Hexdump of DDRAM contents\r\n");
      0024D6 74 78            [12]  865 	mov	a,#___str_25
      0024D8 C0 E0            [24]  866 	push	acc
      0024DA 74 4C            [12]  867 	mov	a,#(___str_25 >> 8)
      0024DC C0 E0            [24]  868 	push	acc
      0024DE 74 80            [12]  869 	mov	a,#0x80
      0024E0 C0 E0            [24]  870 	push	acc
      0024E2 12 3D 9B         [24]  871 	lcall	_printf
      0024E5 15 81            [12]  872 	dec	sp
      0024E7 15 81            [12]  873 	dec	sp
      0024E9 15 81            [12]  874 	dec	sp
                                    875 ;	src/command_handlers.c:123: printf(" C       : Hexdump of CGRAM contents\r\n");
      0024EB 74 9F            [12]  876 	mov	a,#___str_26
      0024ED C0 E0            [24]  877 	push	acc
      0024EF 74 4C            [12]  878 	mov	a,#(___str_26 >> 8)
      0024F1 C0 E0            [24]  879 	push	acc
      0024F3 74 80            [12]  880 	mov	a,#0x80
      0024F5 C0 E0            [24]  881 	push	acc
      0024F7 12 3D 9B         [24]  882 	lcall	_printf
      0024FA 15 81            [12]  883 	dec	sp
      0024FC 15 81            [12]  884 	dec	sp
      0024FE 15 81            [12]  885 	dec	sp
                                    886 ;	src/command_handlers.c:124: printf(" A       : Create a CGRAM character\r\n");
      002500 74 C6            [12]  887 	mov	a,#___str_27
      002502 C0 E0            [24]  888 	push	acc
      002504 74 4C            [12]  889 	mov	a,#(___str_27 >> 8)
      002506 C0 E0            [24]  890 	push	acc
      002508 74 80            [12]  891 	mov	a,#0x80
      00250A C0 E0            [24]  892 	push	acc
      00250C 12 3D 9B         [24]  893 	lcall	_printf
      00250F 15 81            [12]  894 	dec	sp
      002511 15 81            [12]  895 	dec	sp
      002513 15 81            [12]  896 	dec	sp
                                    897 ;	src/command_handlers.c:125: printf(" D       : Display a CGRAM character\r\n");
      002515 74 EC            [12]  898 	mov	a,#___str_28
      002517 C0 E0            [24]  899 	push	acc
      002519 74 4C            [12]  900 	mov	a,#(___str_28 >> 8)
      00251B C0 E0            [24]  901 	push	acc
      00251D 74 80            [12]  902 	mov	a,#0x80
      00251F C0 E0            [24]  903 	push	acc
      002521 12 3D 9B         [24]  904 	lcall	_printf
      002524 15 81            [12]  905 	dec	sp
      002526 15 81            [12]  906 	dec	sp
      002528 15 81            [12]  907 	dec	sp
                                    908 ;	src/command_handlers.c:126: printf(" ?       : Help menu\r\n");
      00252A 74 13            [12]  909 	mov	a,#___str_29
      00252C C0 E0            [24]  910 	push	acc
      00252E 74 4D            [12]  911 	mov	a,#(___str_29 >> 8)
      002530 C0 E0            [24]  912 	push	acc
      002532 74 80            [12]  913 	mov	a,#0x80
      002534 C0 E0            [24]  914 	push	acc
      002536 12 3D 9B         [24]  915 	lcall	_printf
      002539 15 81            [12]  916 	dec	sp
      00253B 15 81            [12]  917 	dec	sp
      00253D 15 81            [12]  918 	dec	sp
                                    919 ;	src/command_handlers.c:127: printf("--------------------------------------------------------------------------------------------\r\n");
      00253F 74 2A            [12]  920 	mov	a,#___str_30
      002541 C0 E0            [24]  921 	push	acc
      002543 74 4D            [12]  922 	mov	a,#(___str_30 >> 8)
      002545 C0 E0            [24]  923 	push	acc
      002547 74 80            [12]  924 	mov	a,#0x80
      002549 C0 E0            [24]  925 	push	acc
      00254B 12 3D 9B         [24]  926 	lcall	_printf
      00254E 15 81            [12]  927 	dec	sp
      002550 15 81            [12]  928 	dec	sp
      002552 15 81            [12]  929 	dec	sp
                                    930 ;	src/command_handlers.c:128: break;     
      002554 22               [24]  931 	ret
                                    932 ;	src/command_handlers.c:130: default:
      002555                        933 00112$:
                                    934 ;	src/command_handlers.c:131: printf("\r\n                         Invalid Input                              ");
      002555 74 89            [12]  935 	mov	a,#___str_31
      002557 C0 E0            [24]  936 	push	acc
      002559 74 4D            [12]  937 	mov	a,#(___str_31 >> 8)
      00255B C0 E0            [24]  938 	push	acc
      00255D 74 80            [12]  939 	mov	a,#0x80
      00255F C0 E0            [24]  940 	push	acc
      002561 12 3D 9B         [24]  941 	lcall	_printf
      002564 15 81            [12]  942 	dec	sp
      002566 15 81            [12]  943 	dec	sp
      002568 15 81            [12]  944 	dec	sp
                                    945 ;	src/command_handlers.c:132: printf("\r\n----------------------------     Usage          --------------------------------------------\r\n");
      00256A 74 47            [12]  946 	mov	a,#___str_18
      00256C C0 E0            [24]  947 	push	acc
      00256E 74 4B            [12]  948 	mov	a,#(___str_18 >> 8)
      002570 C0 E0            [24]  949 	push	acc
      002572 74 80            [12]  950 	mov	a,#0x80
      002574 C0 E0            [24]  951 	push	acc
      002576 12 3D 9B         [24]  952 	lcall	_printf
      002579 15 81            [12]  953 	dec	sp
      00257B 15 81            [12]  954 	dec	sp
      00257D 15 81            [12]  955 	dec	sp
                                    956 ;	src/command_handlers.c:133: printf(" W       : Write a string\r\n");
      00257F 74 A8            [12]  957 	mov	a,#___str_19
      002581 C0 E0            [24]  958 	push	acc
      002583 74 4B            [12]  959 	mov	a,#(___str_19 >> 8)
      002585 C0 E0            [24]  960 	push	acc
      002587 74 80            [12]  961 	mov	a,#0x80
      002589 C0 E0            [24]  962 	push	acc
      00258B 12 3D 9B         [24]  963 	lcall	_printf
      00258E 15 81            [12]  964 	dec	sp
      002590 15 81            [12]  965 	dec	sp
      002592 15 81            [12]  966 	dec	sp
                                    967 ;	src/command_handlers.c:134: printf(" T       : Write to a specific position in the LCD\r\n");
      002594 74 C4            [12]  968 	mov	a,#___str_20
      002596 C0 E0            [24]  969 	push	acc
      002598 74 4B            [12]  970 	mov	a,#(___str_20 >> 8)
      00259A C0 E0            [24]  971 	push	acc
      00259C 74 80            [12]  972 	mov	a,#0x80
      00259E C0 E0            [24]  973 	push	acc
      0025A0 12 3D 9B         [24]  974 	lcall	_printf
      0025A3 15 81            [12]  975 	dec	sp
      0025A5 15 81            [12]  976 	dec	sp
      0025A7 15 81            [12]  977 	dec	sp
                                    978 ;	src/command_handlers.c:135: printf(" E       : Clear the display\r\n");
      0025A9 74 F9            [12]  979 	mov	a,#___str_21
      0025AB C0 E0            [24]  980 	push	acc
      0025AD 74 4B            [12]  981 	mov	a,#(___str_21 >> 8)
      0025AF C0 E0            [24]  982 	push	acc
      0025B1 74 80            [12]  983 	mov	a,#0x80
      0025B3 C0 E0            [24]  984 	push	acc
      0025B5 12 3D 9B         [24]  985 	lcall	_printf
      0025B8 15 81            [12]  986 	dec	sp
      0025BA 15 81            [12]  987 	dec	sp
      0025BC 15 81            [12]  988 	dec	sp
                                    989 ;	src/command_handlers.c:136: printf(" P       : Pause the Timer\r\n");
      0025BE 74 18            [12]  990 	mov	a,#___str_22
      0025C0 C0 E0            [24]  991 	push	acc
      0025C2 74 4C            [12]  992 	mov	a,#(___str_22 >> 8)
      0025C4 C0 E0            [24]  993 	push	acc
      0025C6 74 80            [12]  994 	mov	a,#0x80
      0025C8 C0 E0            [24]  995 	push	acc
      0025CA 12 3D 9B         [24]  996 	lcall	_printf
      0025CD 15 81            [12]  997 	dec	sp
      0025CF 15 81            [12]  998 	dec	sp
      0025D1 15 81            [12]  999 	dec	sp
                                   1000 ;	src/command_handlers.c:137: printf(" S       : Start the Timer\r\n");
      0025D3 74 35            [12] 1001 	mov	a,#___str_23
      0025D5 C0 E0            [24] 1002 	push	acc
      0025D7 74 4C            [12] 1003 	mov	a,#(___str_23 >> 8)
      0025D9 C0 E0            [24] 1004 	push	acc
      0025DB 74 80            [12] 1005 	mov	a,#0x80
      0025DD C0 E0            [24] 1006 	push	acc
      0025DF 12 3D 9B         [24] 1007 	lcall	_printf
      0025E2 15 81            [12] 1008 	dec	sp
      0025E4 15 81            [12] 1009 	dec	sp
      0025E6 15 81            [12] 1010 	dec	sp
                                   1011 ;	src/command_handlers.c:138: printf(" R       : Stop and reset the Timer\r\n");
      0025E8 74 52            [12] 1012 	mov	a,#___str_24
      0025EA C0 E0            [24] 1013 	push	acc
      0025EC 74 4C            [12] 1014 	mov	a,#(___str_24 >> 8)
      0025EE C0 E0            [24] 1015 	push	acc
      0025F0 74 80            [12] 1016 	mov	a,#0x80
      0025F2 C0 E0            [24] 1017 	push	acc
      0025F4 12 3D 9B         [24] 1018 	lcall	_printf
      0025F7 15 81            [12] 1019 	dec	sp
      0025F9 15 81            [12] 1020 	dec	sp
      0025FB 15 81            [12] 1021 	dec	sp
                                   1022 ;	src/command_handlers.c:139: printf(" H       : Hexdump of DDRAM contents\r\n");
      0025FD 74 78            [12] 1023 	mov	a,#___str_25
      0025FF C0 E0            [24] 1024 	push	acc
      002601 74 4C            [12] 1025 	mov	a,#(___str_25 >> 8)
      002603 C0 E0            [24] 1026 	push	acc
      002605 74 80            [12] 1027 	mov	a,#0x80
      002607 C0 E0            [24] 1028 	push	acc
      002609 12 3D 9B         [24] 1029 	lcall	_printf
      00260C 15 81            [12] 1030 	dec	sp
      00260E 15 81            [12] 1031 	dec	sp
      002610 15 81            [12] 1032 	dec	sp
                                   1033 ;	src/command_handlers.c:140: printf(" C       : Hexdump of CGRAM contents\r\n");
      002612 74 9F            [12] 1034 	mov	a,#___str_26
      002614 C0 E0            [24] 1035 	push	acc
      002616 74 4C            [12] 1036 	mov	a,#(___str_26 >> 8)
      002618 C0 E0            [24] 1037 	push	acc
      00261A 74 80            [12] 1038 	mov	a,#0x80
      00261C C0 E0            [24] 1039 	push	acc
      00261E 12 3D 9B         [24] 1040 	lcall	_printf
      002621 15 81            [12] 1041 	dec	sp
      002623 15 81            [12] 1042 	dec	sp
      002625 15 81            [12] 1043 	dec	sp
                                   1044 ;	src/command_handlers.c:141: printf(" A       : Create a CGRAM character\r\n");
      002627 74 C6            [12] 1045 	mov	a,#___str_27
      002629 C0 E0            [24] 1046 	push	acc
      00262B 74 4C            [12] 1047 	mov	a,#(___str_27 >> 8)
      00262D C0 E0            [24] 1048 	push	acc
      00262F 74 80            [12] 1049 	mov	a,#0x80
      002631 C0 E0            [24] 1050 	push	acc
      002633 12 3D 9B         [24] 1051 	lcall	_printf
      002636 15 81            [12] 1052 	dec	sp
      002638 15 81            [12] 1053 	dec	sp
      00263A 15 81            [12] 1054 	dec	sp
                                   1055 ;	src/command_handlers.c:142: printf(" D       : Display a CGRAM character\r\n");
      00263C 74 EC            [12] 1056 	mov	a,#___str_28
      00263E C0 E0            [24] 1057 	push	acc
      002640 74 4C            [12] 1058 	mov	a,#(___str_28 >> 8)
      002642 C0 E0            [24] 1059 	push	acc
      002644 74 80            [12] 1060 	mov	a,#0x80
      002646 C0 E0            [24] 1061 	push	acc
      002648 12 3D 9B         [24] 1062 	lcall	_printf
      00264B 15 81            [12] 1063 	dec	sp
      00264D 15 81            [12] 1064 	dec	sp
      00264F 15 81            [12] 1065 	dec	sp
                                   1066 ;	src/command_handlers.c:143: printf(" ?       : Help menu\r\n");
      002651 74 13            [12] 1067 	mov	a,#___str_29
      002653 C0 E0            [24] 1068 	push	acc
      002655 74 4D            [12] 1069 	mov	a,#(___str_29 >> 8)
      002657 C0 E0            [24] 1070 	push	acc
      002659 74 80            [12] 1071 	mov	a,#0x80
      00265B C0 E0            [24] 1072 	push	acc
      00265D 12 3D 9B         [24] 1073 	lcall	_printf
      002660 15 81            [12] 1074 	dec	sp
      002662 15 81            [12] 1075 	dec	sp
      002664 15 81            [12] 1076 	dec	sp
                                   1077 ;	src/command_handlers.c:144: printf("--------------------------------------------------------------------------------------------\r\n");
      002666 74 2A            [12] 1078 	mov	a,#___str_30
      002668 C0 E0            [24] 1079 	push	acc
      00266A 74 4D            [12] 1080 	mov	a,#(___str_30 >> 8)
      00266C C0 E0            [24] 1081 	push	acc
      00266E 74 80            [12] 1082 	mov	a,#0x80
      002670 C0 E0            [24] 1083 	push	acc
      002672 12 3D 9B         [24] 1084 	lcall	_printf
      002675 15 81            [12] 1085 	dec	sp
      002677 15 81            [12] 1086 	dec	sp
      002679 15 81            [12] 1087 	dec	sp
                                   1088 ;	src/command_handlers.c:146: }
                                   1089 ;	src/command_handlers.c:147: }
      00267B 22               [24] 1090 	ret
                                   1091 ;------------------------------------------------------------
                                   1092 ;Allocation info for local variables in function 'is_digit'
                                   1093 ;------------------------------------------------------------
                                   1094 ;c                         Allocated with name '_is_digit_c_65536_62'
                                   1095 ;------------------------------------------------------------
                                   1096 ;	src/command_handlers.c:155: bool is_digit(char c)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function is_digit
                                   1099 ;	-----------------------------------------
      00267C                       1100 _is_digit:
      00267C E5 82            [12] 1101 	mov	a,dpl
      00267E 90 18 01         [24] 1102 	mov	dptr,#_is_digit_c_65536_62
      002681 F0               [24] 1103 	movx	@dptr,a
                                   1104 ;	src/command_handlers.c:158: return (c >= '0' && c <= '9');
      002682 E0               [24] 1105 	movx	a,@dptr
      002683 FF               [12] 1106 	mov	r7,a
      002684 BF 30 00         [24] 1107 	cjne	r7,#0x30,00110$
      002687                       1108 00110$:
      002687 40 05            [24] 1109 	jc	00103$
      002689 EF               [12] 1110 	mov	a,r7
      00268A 24 C6            [12] 1111 	add	a,#0xff - 0x39
      00268C 50 04            [24] 1112 	jnc	00104$
      00268E                       1113 00103$:
      00268E 7F 00            [12] 1114 	mov	r7,#0x00
      002690 80 02            [24] 1115 	sjmp	00105$
      002692                       1116 00104$:
      002692 7F 01            [12] 1117 	mov	r7,#0x01
      002694                       1118 00105$:
      002694 8F 82            [24] 1119 	mov	dpl,r7
                                   1120 ;	src/command_handlers.c:159: }
      002696 22               [24] 1121 	ret
                                   1122 ;------------------------------------------------------------
                                   1123 ;Allocation info for local variables in function 'action_for_write_command'
                                   1124 ;------------------------------------------------------------
                                   1125 ;input_buffer              Allocated with name '_action_for_write_command_input_buffer_65536_65'
                                   1126 ;error_message             Allocated with name '_action_for_write_command_error_message_65536_65'
                                   1127 ;address_location          Allocated with name '_action_for_write_command_address_location_65536_65'
                                   1128 ;write_data                Allocated with name '_action_for_write_command_write_data_65536_65'
                                   1129 ;current_state             Allocated with name '_action_for_write_command_current_state_65536_65'
                                   1130 ;wait_for_input            Allocated with name '_action_for_write_command_wait_for_input_65536_65'
                                   1131 ;------------------------------------------------------------
                                   1132 ;	src/command_handlers.c:169: void action_for_write_command(void)
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function action_for_write_command
                                   1135 ;	-----------------------------------------
      002697                       1136 _action_for_write_command:
                                   1137 ;	src/command_handlers.c:173: char *error_message = "\r\nOut of range\r\n";
                                   1138 ;	src/command_handlers.c:176: get_in_mem_state current_state = GET_STRING_INPUT_FROM_USER;
      002697 90 18 66         [24] 1139 	mov	dptr,#_action_for_write_command_current_state_65536_65
      00269A E4               [12] 1140 	clr	a
      00269B F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	src/command_handlers.c:177: bool wait_for_input = true;
      00269C 90 18 67         [24] 1143 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      00269F 04               [12] 1144 	inc	a
      0026A0 F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	src/command_handlers.c:180: while (wait_for_input)
      0026A1                       1147 00108$:
      0026A1 90 18 67         [24] 1148 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      0026A4 E0               [24] 1149 	movx	a,@dptr
      0026A5 70 01            [24] 1150 	jnz	00137$
      0026A7 22               [24] 1151 	ret
      0026A8                       1152 00137$:
                                   1153 ;	src/command_handlers.c:182: switch (current_state)
      0026A8 90 18 66         [24] 1154 	mov	dptr,#_action_for_write_command_current_state_65536_65
      0026AB E0               [24] 1155 	movx	a,@dptr
      0026AC FF               [12] 1156 	mov	r7,a
      0026AD 60 0A            [24] 1157 	jz	00101$
      0026AF BF 01 02         [24] 1158 	cjne	r7,#0x01,00139$
      0026B2 80 46            [24] 1159 	sjmp	00104$
      0026B4                       1160 00139$:
                                   1161 ;	src/command_handlers.c:184: case GET_STRING_INPUT_FROM_USER:
      0026B4 BF 0B EA         [24] 1162 	cjne	r7,#0x0b,00108$
      0026B7 80 71            [24] 1163 	sjmp	00105$
      0026B9                       1164 00101$:
                                   1165 ;	src/command_handlers.c:185: printf("\r\nEnter the string and press enter:");
      0026B9 74 E1            [12] 1166 	mov	a,#___str_33
      0026BB C0 E0            [24] 1167 	push	acc
      0026BD 74 4D            [12] 1168 	mov	a,#(___str_33 >> 8)
      0026BF C0 E0            [24] 1169 	push	acc
      0026C1 74 80            [12] 1170 	mov	a,#0x80
      0026C3 C0 E0            [24] 1171 	push	acc
      0026C5 12 3D 9B         [24] 1172 	lcall	_printf
      0026C8 15 81            [12] 1173 	dec	sp
      0026CA 15 81            [12] 1174 	dec	sp
      0026CC 15 81            [12] 1175 	dec	sp
                                   1176 ;	src/command_handlers.c:186: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      0026CE 90 19 1A         [24] 1177 	mov	dptr,#_getstr_PARM_2
      0026D1 74 64            [12] 1178 	mov	a,#0x64
      0026D3 F0               [24] 1179 	movx	@dptr,a
      0026D4 E4               [12] 1180 	clr	a
      0026D5 A3               [24] 1181 	inc	dptr
      0026D6 F0               [24] 1182 	movx	@dptr,a
      0026D7 90 19 1C         [24] 1183 	mov	dptr,#_getstr_PARM_3
      0026DA 74 D0            [12] 1184 	mov	a,#___str_32
      0026DC F0               [24] 1185 	movx	@dptr,a
      0026DD 74 4D            [12] 1186 	mov	a,#(___str_32 >> 8)
      0026DF A3               [24] 1187 	inc	dptr
      0026E0 F0               [24] 1188 	movx	@dptr,a
      0026E1 74 80            [12] 1189 	mov	a,#0x80
      0026E3 A3               [24] 1190 	inc	dptr
      0026E4 F0               [24] 1191 	movx	@dptr,a
      0026E5 90 18 02         [24] 1192 	mov	dptr,#_action_for_write_command_input_buffer_65536_65
      0026E8 75 F0 00         [24] 1193 	mov	b,#0x00
      0026EB 12 31 AF         [24] 1194 	lcall	_getstr
      0026EE E5 82            [12] 1195 	mov	a,dpl
      0026F0 70 AF            [24] 1196 	jnz	00108$
                                   1197 ;	src/command_handlers.c:188: current_state = PUT_DATA_TO_LCD;
      0026F2 90 18 66         [24] 1198 	mov	dptr,#_action_for_write_command_current_state_65536_65
      0026F5 74 01            [12] 1199 	mov	a,#0x01
      0026F7 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	src/command_handlers.c:190: break;
                                   1202 ;	src/command_handlers.c:191: case PUT_DATA_TO_LCD:
      0026F8 80 A7            [24] 1203 	sjmp	00108$
      0026FA                       1204 00104$:
                                   1205 ;	src/command_handlers.c:197: }
      0026FA 7F 01            [12] 1206 	mov	r7,#0x01
      0026FC 10 AF 02         [24] 1207 	jbc	ea,00142$
      0026FF 7F 00            [12] 1208 	mov	r7,#0x00
      002701                       1209 00142$:
                                   1210 ;	src/command_handlers.c:194: lcd_clear();
      002701 C0 07            [24] 1211 	push	ar7
      002703 12 33 F3         [24] 1212 	lcall	_lcd_clear
                                   1213 ;	src/command_handlers.c:195: lcd_put_string(input_buffer,0,0);
      002706 90 19 2A         [24] 1214 	mov	dptr,#_lcd_put_string_PARM_2
      002709 E4               [12] 1215 	clr	a
      00270A F0               [24] 1216 	movx	@dptr,a
      00270B 90 19 2B         [24] 1217 	mov	dptr,#_lcd_put_string_PARM_3
      00270E F0               [24] 1218 	movx	@dptr,a
      00270F 90 18 02         [24] 1219 	mov	dptr,#_action_for_write_command_input_buffer_65536_65
      002712 75 F0 00         [24] 1220 	mov	b,#0x00
      002715 12 34 13         [24] 1221 	lcall	_lcd_put_string
                                   1222 ;	src/command_handlers.c:196: current_time_display();
      002718 12 39 EE         [24] 1223 	lcall	_current_time_display
      00271B D0 07            [24] 1224 	pop	ar7
      00271D EF               [12] 1225 	mov	a,r7
      00271E 13               [12] 1226 	rrc	a
      00271F 92 AF            [24] 1227 	mov	ea,c
                                   1228 ;	src/command_handlers.c:198: current_state = EXIT;
      002721 90 18 66         [24] 1229 	mov	dptr,#_action_for_write_command_current_state_65536_65
      002724 74 0B            [12] 1230 	mov	a,#0x0b
      002726 F0               [24] 1231 	movx	@dptr,a
                                   1232 ;	src/command_handlers.c:199: break;
      002727 02 26 A1         [24] 1233 	ljmp	00108$
                                   1234 ;	src/command_handlers.c:200: case EXIT:
      00272A                       1235 00105$:
                                   1236 ;	src/command_handlers.c:201: wait_for_input = false;
      00272A 90 18 67         [24] 1237 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      00272D E4               [12] 1238 	clr	a
      00272E F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	src/command_handlers.c:202: break;
                                   1241 ;	src/command_handlers.c:205: }
                                   1242 ;	src/command_handlers.c:207: }
      00272F 02 26 A1         [24] 1243 	ljmp	00108$
                                   1244 ;------------------------------------------------------------
                                   1245 ;Allocation info for local variables in function 'check_input_buffer_and_extract_number'
                                   1246 ;------------------------------------------------------------
                                   1247 ;sloc0                     Allocated with name '_check_input_buffer_and_extract_number_sloc0_1_0'
                                   1248 ;sloc1                     Allocated with name '_check_input_buffer_and_extract_number_sloc1_1_0'
                                   1249 ;sloc2                     Allocated with name '_check_input_buffer_and_extract_number_sloc2_1_0'
                                   1250 ;sloc3                     Allocated with name '_check_input_buffer_and_extract_number_sloc3_1_0'
                                   1251 ;sloc4                     Allocated with name '_check_input_buffer_and_extract_number_sloc4_1_0'
                                   1252 ;sloc5                     Allocated with name '_check_input_buffer_and_extract_number_sloc5_1_0'
                                   1253 ;buffer_len                Allocated with name '_check_input_buffer_and_extract_number_PARM_2'
                                   1254 ;current_state             Allocated with name '_check_input_buffer_and_extract_number_PARM_3'
                                   1255 ;input_number              Allocated with name '_check_input_buffer_and_extract_number_PARM_4'
                                   1256 ;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_number_PARM_5'
                                   1257 ;input_buffer              Allocated with name '_check_input_buffer_and_extract_number_input_buffer_65536_70'
                                   1258 ;temp_current_state        Allocated with name '_check_input_buffer_and_extract_number_temp_current_state_65537_72'
                                   1259 ;i                         Allocated with name '_check_input_buffer_and_extract_number_i_131073_74'
                                   1260 ;------------------------------------------------------------
                                   1261 ;	src/command_handlers.c:219: void check_input_buffer_and_extract_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint8_t *input_number,get_in_mem_state *next_state_on_error)
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function check_input_buffer_and_extract_number
                                   1264 ;	-----------------------------------------
      002732                       1265 _check_input_buffer_and_extract_number:
      002732 AF F0            [24] 1266 	mov	r7,b
      002734 AE 83            [24] 1267 	mov	r6,dph
      002736 E5 82            [12] 1268 	mov	a,dpl
      002738 90 18 73         [24] 1269 	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
      00273B F0               [24] 1270 	movx	@dptr,a
      00273C EE               [12] 1271 	mov	a,r6
      00273D A3               [24] 1272 	inc	dptr
      00273E F0               [24] 1273 	movx	@dptr,a
      00273F EF               [12] 1274 	mov	a,r7
      002740 A3               [24] 1275 	inc	dptr
      002741 F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	src/command_handlers.c:222: *input_number=0;
      002742 90 18 6D         [24] 1278 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002745 E0               [24] 1279 	movx	a,@dptr
      002746 FD               [12] 1280 	mov	r5,a
      002747 A3               [24] 1281 	inc	dptr
      002748 E0               [24] 1282 	movx	a,@dptr
      002749 FE               [12] 1283 	mov	r6,a
      00274A A3               [24] 1284 	inc	dptr
      00274B E0               [24] 1285 	movx	a,@dptr
      00274C FF               [12] 1286 	mov	r7,a
      00274D 8D 82            [24] 1287 	mov	dpl,r5
      00274F 8E 83            [24] 1288 	mov	dph,r6
      002751 8F F0            [24] 1289 	mov	b,r7
      002753 E4               [12] 1290 	clr	a
      002754 12 3B 1F         [24] 1291 	lcall	__gptrput
                                   1292 ;	src/command_handlers.c:223: get_in_mem_state temp_current_state = *current_state;
      002757 90 18 6A         [24] 1293 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      00275A E0               [24] 1294 	movx	a,@dptr
      00275B F5 13            [12] 1295 	mov	_check_input_buffer_and_extract_number_sloc5_1_0,a
      00275D A3               [24] 1296 	inc	dptr
      00275E E0               [24] 1297 	movx	a,@dptr
      00275F F5 14            [12] 1298 	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 1),a
      002761 A3               [24] 1299 	inc	dptr
      002762 E0               [24] 1300 	movx	a,@dptr
      002763 F5 15            [12] 1301 	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 2),a
      002765 85 13 82         [24] 1302 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      002768 85 14 83         [24] 1303 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      00276B 85 15 F0         [24] 1304 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      00276E 12 47 DD         [24] 1305 	lcall	__gptrget
      002771 F9               [12] 1306 	mov	r1,a
                                   1307 ;	src/command_handlers.c:225: if (*input_buffer == 'q' || *input_buffer == 'Q')
      002772 90 18 73         [24] 1308 	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
      002775 E0               [24] 1309 	movx	a,@dptr
      002776 F5 08            [12] 1310 	mov	_check_input_buffer_and_extract_number_sloc0_1_0,a
      002778 A3               [24] 1311 	inc	dptr
      002779 E0               [24] 1312 	movx	a,@dptr
      00277A F5 09            [12] 1313 	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 1),a
      00277C A3               [24] 1314 	inc	dptr
      00277D E0               [24] 1315 	movx	a,@dptr
      00277E F5 0A            [12] 1316 	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 2),a
      002780 85 08 82         [24] 1317 	mov	dpl,_check_input_buffer_and_extract_number_sloc0_1_0
      002783 85 09 83         [24] 1318 	mov	dph,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
      002786 85 0A F0         [24] 1319 	mov	b,(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
      002789 12 47 DD         [24] 1320 	lcall	__gptrget
      00278C F8               [12] 1321 	mov	r0,a
      00278D B8 71 02         [24] 1322 	cjne	r0,#0x71,00139$
      002790 80 03            [24] 1323 	sjmp	00101$
      002792                       1324 00139$:
      002792 B8 51 0E         [24] 1325 	cjne	r0,#0x51,00120$
      002795                       1326 00101$:
                                   1327 ;	src/command_handlers.c:227: *current_state = EXIT;
      002795 85 13 82         [24] 1328 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      002798 85 14 83         [24] 1329 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      00279B 85 15 F0         [24] 1330 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      00279E 74 0B            [12] 1331 	mov	a,#0x0b
                                   1332 ;	src/command_handlers.c:228: return;
      0027A0 02 3B 1F         [24] 1333 	ljmp	__gptrput
                                   1334 ;	src/command_handlers.c:232: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
      0027A3                       1335 00120$:
      0027A3 90 18 68         [24] 1336 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      0027A6 E0               [24] 1337 	movx	a,@dptr
      0027A7 F5 0B            [12] 1338 	mov	_check_input_buffer_and_extract_number_sloc1_1_0,a
      0027A9 A3               [24] 1339 	inc	dptr
      0027AA E0               [24] 1340 	movx	a,@dptr
      0027AB F5 0C            [12] 1341 	mov	(_check_input_buffer_and_extract_number_sloc1_1_0 + 1),a
      0027AD E4               [12] 1342 	clr	a
      0027AE F5 0D            [12] 1343 	mov	_check_input_buffer_and_extract_number_sloc2_1_0,a
      0027B0 F5 0E            [12] 1344 	mov	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1),a
      0027B2                       1345 00111$:
      0027B2 E5 0D            [12] 1346 	mov	a,_check_input_buffer_and_extract_number_sloc2_1_0
      0027B4 25 08            [12] 1347 	add	a,_check_input_buffer_and_extract_number_sloc0_1_0
      0027B6 F5 0F            [12] 1348 	mov	_check_input_buffer_and_extract_number_sloc3_1_0,a
      0027B8 E5 0E            [12] 1349 	mov	a,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      0027BA 35 09            [12] 1350 	addc	a,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
      0027BC F5 10            [12] 1351 	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 1),a
      0027BE 85 0A 11         [24] 1352 	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 2),(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
      0027C1 85 0F 82         [24] 1353 	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
      0027C4 85 10 83         [24] 1354 	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
      0027C7 85 11 F0         [24] 1355 	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
      0027CA 12 47 DD         [24] 1356 	lcall	__gptrget
      0027CD F5 12            [12] 1357 	mov	_check_input_buffer_and_extract_number_sloc4_1_0,a
      0027CF 70 01            [24] 1358 	jnz	00142$
      0027D1 22               [24] 1359 	ret
      0027D2                       1360 00142$:
      0027D2 C0 01            [24] 1361 	push	ar1
      0027D4 A8 0D            [24] 1362 	mov	r0,_check_input_buffer_and_extract_number_sloc2_1_0
      0027D6 A9 0E            [24] 1363 	mov	r1,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      0027D8 C3               [12] 1364 	clr	c
      0027D9 E8               [12] 1365 	mov	a,r0
      0027DA 95 0B            [12] 1366 	subb	a,_check_input_buffer_and_extract_number_sloc1_1_0
      0027DC E9               [12] 1367 	mov	a,r1
      0027DD 95 0C            [12] 1368 	subb	a,(_check_input_buffer_and_extract_number_sloc1_1_0 + 1)
      0027DF D0 01            [24] 1369 	pop	ar1
      0027E1 40 01            [24] 1370 	jc	00143$
      0027E3 22               [24] 1371 	ret
      0027E4                       1372 00143$:
      0027E4 85 13 82         [24] 1373 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      0027E7 85 14 83         [24] 1374 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      0027EA 85 15 F0         [24] 1375 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      0027ED 12 47 DD         [24] 1376 	lcall	__gptrget
      0027F0 F8               [12] 1377 	mov	r0,a
      0027F1 B5 01 02         [24] 1378 	cjne	a,ar1,00144$
      0027F4 80 01            [24] 1379 	sjmp	00145$
      0027F6                       1380 00144$:
      0027F6 22               [24] 1381 	ret
      0027F7                       1382 00145$:
                                   1383 ;	src/command_handlers.c:234: if (is_digit(input_buffer[i]))
      0027F7 85 12 82         [24] 1384 	mov	dpl,_check_input_buffer_and_extract_number_sloc4_1_0
      0027FA C0 07            [24] 1385 	push	ar7
      0027FC C0 06            [24] 1386 	push	ar6
      0027FE C0 05            [24] 1387 	push	ar5
      002800 C0 01            [24] 1388 	push	ar1
      002802 12 26 7C         [24] 1389 	lcall	_is_digit
      002805 E5 82            [12] 1390 	mov	a,dpl
      002807 D0 01            [24] 1391 	pop	ar1
      002809 D0 05            [24] 1392 	pop	ar5
      00280B D0 06            [24] 1393 	pop	ar6
      00280D D0 07            [24] 1394 	pop	ar7
      00280F 60 2D            [24] 1395 	jz	00105$
                                   1396 ;	src/command_handlers.c:237: *input_number = (*input_number) * 10 + (input_buffer[i] - '0'); // Build the number
      002811 C0 01            [24] 1397 	push	ar1
      002813 8D 82            [24] 1398 	mov	dpl,r5
      002815 8E 83            [24] 1399 	mov	dph,r6
      002817 8F F0            [24] 1400 	mov	b,r7
      002819 12 47 DD         [24] 1401 	lcall	__gptrget
      00281C 75 F0 0A         [24] 1402 	mov	b,#0x0a
      00281F A4               [48] 1403 	mul	ab
      002820 F8               [12] 1404 	mov	r0,a
      002821 85 0F 82         [24] 1405 	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
      002824 85 10 83         [24] 1406 	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
      002827 85 11 F0         [24] 1407 	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
      00282A 12 47 DD         [24] 1408 	lcall	__gptrget
      00282D 24 D0            [12] 1409 	add	a,#0xd0
      00282F 28               [12] 1410 	add	a,r0
      002830 F8               [12] 1411 	mov	r0,a
      002831 8D 82            [24] 1412 	mov	dpl,r5
      002833 8E 83            [24] 1413 	mov	dph,r6
      002835 8F F0            [24] 1414 	mov	b,r7
      002837 12 3B 1F         [24] 1415 	lcall	__gptrput
      00283A D0 01            [24] 1416 	pop	ar1
      00283C 80 35            [24] 1417 	sjmp	00112$
      00283E                       1418 00105$:
                                   1419 ;	src/command_handlers.c:241: printf("\r\nInvalid input");
      00283E 74 05            [12] 1420 	mov	a,#___str_34
      002840 C0 E0            [24] 1421 	push	acc
      002842 74 4E            [12] 1422 	mov	a,#(___str_34 >> 8)
      002844 C0 E0            [24] 1423 	push	acc
      002846 74 80            [12] 1424 	mov	a,#0x80
      002848 C0 E0            [24] 1425 	push	acc
      00284A 12 3D 9B         [24] 1426 	lcall	_printf
      00284D 15 81            [12] 1427 	dec	sp
      00284F 15 81            [12] 1428 	dec	sp
      002851 15 81            [12] 1429 	dec	sp
                                   1430 ;	src/command_handlers.c:242: *current_state = *next_state_on_error;
      002853 90 18 70         [24] 1431 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002856 E0               [24] 1432 	movx	a,@dptr
      002857 F8               [12] 1433 	mov	r0,a
      002858 A3               [24] 1434 	inc	dptr
      002859 E0               [24] 1435 	movx	a,@dptr
      00285A FB               [12] 1436 	mov	r3,a
      00285B A3               [24] 1437 	inc	dptr
      00285C E0               [24] 1438 	movx	a,@dptr
      00285D FC               [12] 1439 	mov	r4,a
      00285E 88 82            [24] 1440 	mov	dpl,r0
      002860 8B 83            [24] 1441 	mov	dph,r3
      002862 8C F0            [24] 1442 	mov	b,r4
      002864 12 47 DD         [24] 1443 	lcall	__gptrget
      002867 85 13 82         [24] 1444 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      00286A 85 14 83         [24] 1445 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      00286D 85 15 F0         [24] 1446 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
                                   1447 ;	src/command_handlers.c:243: break;
      002870 02 3B 1F         [24] 1448 	ljmp	__gptrput
      002873                       1449 00112$:
                                   1450 ;	src/command_handlers.c:232: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
      002873 05 0D            [12] 1451 	inc	_check_input_buffer_and_extract_number_sloc2_1_0
      002875 E4               [12] 1452 	clr	a
      002876 B5 0D 02         [24] 1453 	cjne	a,_check_input_buffer_and_extract_number_sloc2_1_0,00147$
      002879 05 0E            [12] 1454 	inc	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      00287B                       1455 00147$:
      00287B 02 27 B2         [24] 1456 	ljmp	00111$
                                   1457 ;	src/command_handlers.c:246: return;
                                   1458 ;	src/command_handlers.c:247: }
      00287E 22               [24] 1459 	ret
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'is_valid_hex'
                                   1462 ;------------------------------------------------------------
                                   1463 ;str                       Allocated with name '_is_valid_hex_str_65536_78'
                                   1464 ;------------------------------------------------------------
                                   1465 ;	src/command_handlers.c:249: bool is_valid_hex(const char *str) {
                                   1466 ;	-----------------------------------------
                                   1467 ;	 function is_valid_hex
                                   1468 ;	-----------------------------------------
      00287F                       1469 _is_valid_hex:
      00287F AF F0            [24] 1470 	mov	r7,b
      002881 AE 83            [24] 1471 	mov	r6,dph
      002883 E5 82            [12] 1472 	mov	a,dpl
      002885 90 18 76         [24] 1473 	mov	dptr,#_is_valid_hex_str_65536_78
      002888 F0               [24] 1474 	movx	@dptr,a
      002889 EE               [12] 1475 	mov	a,r6
      00288A A3               [24] 1476 	inc	dptr
      00288B F0               [24] 1477 	movx	@dptr,a
      00288C EF               [12] 1478 	mov	a,r7
      00288D A3               [24] 1479 	inc	dptr
      00288E F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	src/command_handlers.c:251: if (*str == '\0') {
      00288F 90 18 76         [24] 1482 	mov	dptr,#_is_valid_hex_str_65536_78
      002892 E0               [24] 1483 	movx	a,@dptr
      002893 FD               [12] 1484 	mov	r5,a
      002894 A3               [24] 1485 	inc	dptr
      002895 E0               [24] 1486 	movx	a,@dptr
      002896 FE               [12] 1487 	mov	r6,a
      002897 A3               [24] 1488 	inc	dptr
      002898 E0               [24] 1489 	movx	a,@dptr
      002899 FF               [12] 1490 	mov	r7,a
      00289A 8D 82            [24] 1491 	mov	dpl,r5
      00289C 8E 83            [24] 1492 	mov	dph,r6
      00289E 8F F0            [24] 1493 	mov	b,r7
      0028A0 12 47 DD         [24] 1494 	lcall	__gptrget
      0028A3 FC               [12] 1495 	mov	r4,a
                                   1496 ;	src/command_handlers.c:252: return false;
      0028A4 70 03            [24] 1497 	jnz	00102$
      0028A6 F5 82            [12] 1498 	mov	dpl,a
      0028A8 22               [24] 1499 	ret
      0028A9                       1500 00102$:
                                   1501 ;	src/command_handlers.c:256: if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X')) {
      0028A9 BC 30 30         [24] 1502 	cjne	r4,#0x30,00119$
      0028AC 0D               [12] 1503 	inc	r5
      0028AD BD 00 01         [24] 1504 	cjne	r5,#0x00,00141$
      0028B0 0E               [12] 1505 	inc	r6
      0028B1                       1506 00141$:
      0028B1 8D 82            [24] 1507 	mov	dpl,r5
      0028B3 8E 83            [24] 1508 	mov	dph,r6
      0028B5 8F F0            [24] 1509 	mov	b,r7
      0028B7 12 47 DD         [24] 1510 	lcall	__gptrget
      0028BA FF               [12] 1511 	mov	r7,a
      0028BB BF 78 02         [24] 1512 	cjne	r7,#0x78,00142$
      0028BE 80 03            [24] 1513 	sjmp	00103$
      0028C0                       1514 00142$:
      0028C0 BF 58 19         [24] 1515 	cjne	r7,#0x58,00119$
      0028C3                       1516 00103$:
                                   1517 ;	src/command_handlers.c:257: str += 2;
      0028C3 90 18 76         [24] 1518 	mov	dptr,#_is_valid_hex_str_65536_78
      0028C6 E0               [24] 1519 	movx	a,@dptr
      0028C7 FD               [12] 1520 	mov	r5,a
      0028C8 A3               [24] 1521 	inc	dptr
      0028C9 E0               [24] 1522 	movx	a,@dptr
      0028CA FE               [12] 1523 	mov	r6,a
      0028CB A3               [24] 1524 	inc	dptr
      0028CC E0               [24] 1525 	movx	a,@dptr
      0028CD FF               [12] 1526 	mov	r7,a
      0028CE 90 18 76         [24] 1527 	mov	dptr,#_is_valid_hex_str_65536_78
      0028D1 74 02            [12] 1528 	mov	a,#0x02
      0028D3 2D               [12] 1529 	add	a,r5
      0028D4 F0               [24] 1530 	movx	@dptr,a
      0028D5 E4               [12] 1531 	clr	a
      0028D6 3E               [12] 1532 	addc	a,r6
      0028D7 A3               [24] 1533 	inc	dptr
      0028D8 F0               [24] 1534 	movx	@dptr,a
      0028D9 EF               [12] 1535 	mov	a,r7
      0028DA A3               [24] 1536 	inc	dptr
      0028DB F0               [24] 1537 	movx	@dptr,a
                                   1538 ;	src/command_handlers.c:261: while (*str) {
      0028DC                       1539 00119$:
      0028DC 90 18 76         [24] 1540 	mov	dptr,#_is_valid_hex_str_65536_78
      0028DF E0               [24] 1541 	movx	a,@dptr
      0028E0 FD               [12] 1542 	mov	r5,a
      0028E1 A3               [24] 1543 	inc	dptr
      0028E2 E0               [24] 1544 	movx	a,@dptr
      0028E3 FE               [12] 1545 	mov	r6,a
      0028E4 A3               [24] 1546 	inc	dptr
      0028E5 E0               [24] 1547 	movx	a,@dptr
      0028E6 FF               [12] 1548 	mov	r7,a
      0028E7                       1549 00109$:
      0028E7 8D 82            [24] 1550 	mov	dpl,r5
      0028E9 8E 83            [24] 1551 	mov	dph,r6
      0028EB 8F F0            [24] 1552 	mov	b,r7
      0028ED 12 47 DD         [24] 1553 	lcall	__gptrget
      0028F0 FC               [12] 1554 	mov	r4,a
      0028F1 60 33            [24] 1555 	jz	00111$
                                   1556 ;	src/command_handlers.c:262: if (!isxdigit((unsigned char)*str)) {
      0028F3 7B 00            [12] 1557 	mov	r3,#0x00
      0028F5 8C 82            [24] 1558 	mov	dpl,r4
      0028F7 8B 83            [24] 1559 	mov	dph,r3
      0028F9 C0 07            [24] 1560 	push	ar7
      0028FB C0 06            [24] 1561 	push	ar6
      0028FD C0 05            [24] 1562 	push	ar5
      0028FF 12 3A A1         [24] 1563 	lcall	_isxdigit
      002902 E5 82            [12] 1564 	mov	a,dpl
      002904 85 83 F0         [24] 1565 	mov	b,dph
      002907 D0 05            [24] 1566 	pop	ar5
      002909 D0 06            [24] 1567 	pop	ar6
      00290B D0 07            [24] 1568 	pop	ar7
      00290D 45 F0            [12] 1569 	orl	a,b
                                   1570 ;	src/command_handlers.c:263: return false; // Invalid character found
      00290F 70 03            [24] 1571 	jnz	00108$
      002911 F5 82            [12] 1572 	mov	dpl,a
      002913 22               [24] 1573 	ret
      002914                       1574 00108$:
                                   1575 ;	src/command_handlers.c:265: str++;
      002914 0D               [12] 1576 	inc	r5
      002915 BD 00 01         [24] 1577 	cjne	r5,#0x00,00147$
      002918 0E               [12] 1578 	inc	r6
      002919                       1579 00147$:
      002919 90 18 76         [24] 1580 	mov	dptr,#_is_valid_hex_str_65536_78
      00291C ED               [12] 1581 	mov	a,r5
      00291D F0               [24] 1582 	movx	@dptr,a
      00291E EE               [12] 1583 	mov	a,r6
      00291F A3               [24] 1584 	inc	dptr
      002920 F0               [24] 1585 	movx	@dptr,a
      002921 EF               [12] 1586 	mov	a,r7
      002922 A3               [24] 1587 	inc	dptr
      002923 F0               [24] 1588 	movx	@dptr,a
      002924 80 C1            [24] 1589 	sjmp	00109$
      002926                       1590 00111$:
                                   1591 ;	src/command_handlers.c:268: return true; // All characters are valid hex digits
      002926 75 82 01         [24] 1592 	mov	dpl,#0x01
                                   1593 ;	src/command_handlers.c:269: }
      002929 22               [24] 1594 	ret
                                   1595 ;------------------------------------------------------------
                                   1596 ;Allocation info for local variables in function 'hex_to_uint16'
                                   1597 ;------------------------------------------------------------
                                   1598 ;hex_str                   Allocated with name '_hex_to_uint16_hex_str_65536_84'
                                   1599 ;result                    Allocated with name '_hex_to_uint16_result_65536_85'
                                   1600 ;------------------------------------------------------------
                                   1601 ;	src/command_handlers.c:271: uint16_t hex_to_uint16(const char *hex_str) {
                                   1602 ;	-----------------------------------------
                                   1603 ;	 function hex_to_uint16
                                   1604 ;	-----------------------------------------
      00292A                       1605 _hex_to_uint16:
      00292A AF F0            [24] 1606 	mov	r7,b
      00292C AE 83            [24] 1607 	mov	r6,dph
      00292E E5 82            [12] 1608 	mov	a,dpl
      002930 90 18 79         [24] 1609 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002933 F0               [24] 1610 	movx	@dptr,a
      002934 EE               [12] 1611 	mov	a,r6
      002935 A3               [24] 1612 	inc	dptr
      002936 F0               [24] 1613 	movx	@dptr,a
      002937 EF               [12] 1614 	mov	a,r7
      002938 A3               [24] 1615 	inc	dptr
      002939 F0               [24] 1616 	movx	@dptr,a
                                   1617 ;	src/command_handlers.c:272: uint16_t result = 0;
      00293A 90 18 7C         [24] 1618 	mov	dptr,#_hex_to_uint16_result_65536_85
      00293D E4               [12] 1619 	clr	a
      00293E F0               [24] 1620 	movx	@dptr,a
      00293F A3               [24] 1621 	inc	dptr
      002940 F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	src/command_handlers.c:275: if (hex_str[0] == '0' && (hex_str[1] == 'x' || hex_str[1] == 'X')) {
      002941 90 18 79         [24] 1624 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002944 E0               [24] 1625 	movx	a,@dptr
      002945 FD               [12] 1626 	mov	r5,a
      002946 A3               [24] 1627 	inc	dptr
      002947 E0               [24] 1628 	movx	a,@dptr
      002948 FE               [12] 1629 	mov	r6,a
      002949 A3               [24] 1630 	inc	dptr
      00294A E0               [24] 1631 	movx	a,@dptr
      00294B FF               [12] 1632 	mov	r7,a
      00294C 8D 82            [24] 1633 	mov	dpl,r5
      00294E 8E 83            [24] 1634 	mov	dph,r6
      002950 8F F0            [24] 1635 	mov	b,r7
      002952 12 47 DD         [24] 1636 	lcall	__gptrget
      002955 FC               [12] 1637 	mov	r4,a
      002956 BC 30 30         [24] 1638 	cjne	r4,#0x30,00130$
      002959 0D               [12] 1639 	inc	r5
      00295A BD 00 01         [24] 1640 	cjne	r5,#0x00,00164$
      00295D 0E               [12] 1641 	inc	r6
      00295E                       1642 00164$:
      00295E 8D 82            [24] 1643 	mov	dpl,r5
      002960 8E 83            [24] 1644 	mov	dph,r6
      002962 8F F0            [24] 1645 	mov	b,r7
      002964 12 47 DD         [24] 1646 	lcall	__gptrget
      002967 FF               [12] 1647 	mov	r7,a
      002968 BF 78 02         [24] 1648 	cjne	r7,#0x78,00165$
      00296B 80 03            [24] 1649 	sjmp	00101$
      00296D                       1650 00165$:
      00296D BF 58 19         [24] 1651 	cjne	r7,#0x58,00130$
      002970                       1652 00101$:
                                   1653 ;	src/command_handlers.c:276: hex_str += 2;
      002970 90 18 79         [24] 1654 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002973 E0               [24] 1655 	movx	a,@dptr
      002974 FD               [12] 1656 	mov	r5,a
      002975 A3               [24] 1657 	inc	dptr
      002976 E0               [24] 1658 	movx	a,@dptr
      002977 FE               [12] 1659 	mov	r6,a
      002978 A3               [24] 1660 	inc	dptr
      002979 E0               [24] 1661 	movx	a,@dptr
      00297A FF               [12] 1662 	mov	r7,a
      00297B 90 18 79         [24] 1663 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      00297E 74 02            [12] 1664 	mov	a,#0x02
      002980 2D               [12] 1665 	add	a,r5
      002981 F0               [24] 1666 	movx	@dptr,a
      002982 E4               [12] 1667 	clr	a
      002983 3E               [12] 1668 	addc	a,r6
      002984 A3               [24] 1669 	inc	dptr
      002985 F0               [24] 1670 	movx	@dptr,a
      002986 EF               [12] 1671 	mov	a,r7
      002987 A3               [24] 1672 	inc	dptr
      002988 F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	src/command_handlers.c:280: while (*hex_str) {
      002989                       1675 00130$:
      002989 90 18 79         [24] 1676 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      00298C E0               [24] 1677 	movx	a,@dptr
      00298D FD               [12] 1678 	mov	r5,a
      00298E A3               [24] 1679 	inc	dptr
      00298F E0               [24] 1680 	movx	a,@dptr
      002990 FE               [12] 1681 	mov	r6,a
      002991 A3               [24] 1682 	inc	dptr
      002992 E0               [24] 1683 	movx	a,@dptr
      002993 FF               [12] 1684 	mov	r7,a
      002994                       1685 00116$:
      002994 8D 82            [24] 1686 	mov	dpl,r5
      002996 8E 83            [24] 1687 	mov	dph,r6
      002998 8F F0            [24] 1688 	mov	b,r7
      00299A 12 47 DD         [24] 1689 	lcall	__gptrget
      00299D FC               [12] 1690 	mov	r4,a
      00299E 70 03            [24] 1691 	jnz	00168$
      0029A0 02 2A 68         [24] 1692 	ljmp	00131$
      0029A3                       1693 00168$:
                                   1694 ;	src/command_handlers.c:281: result <<= 4; // Shift result left by 4 bits to make room for the next hex digit
      0029A3 90 18 7C         [24] 1695 	mov	dptr,#_hex_to_uint16_result_65536_85
      0029A6 E0               [24] 1696 	movx	a,@dptr
      0029A7 FA               [12] 1697 	mov	r2,a
      0029A8 A3               [24] 1698 	inc	dptr
      0029A9 E0               [24] 1699 	movx	a,@dptr
      0029AA C4               [12] 1700 	swap	a
      0029AB 54 F0            [12] 1701 	anl	a,#0xf0
      0029AD CA               [12] 1702 	xch	a,r2
      0029AE C4               [12] 1703 	swap	a
      0029AF CA               [12] 1704 	xch	a,r2
      0029B0 6A               [12] 1705 	xrl	a,r2
      0029B1 CA               [12] 1706 	xch	a,r2
      0029B2 54 F0            [12] 1707 	anl	a,#0xf0
      0029B4 CA               [12] 1708 	xch	a,r2
      0029B5 6A               [12] 1709 	xrl	a,r2
      0029B6 FB               [12] 1710 	mov	r3,a
      0029B7 90 18 7C         [24] 1711 	mov	dptr,#_hex_to_uint16_result_65536_85
      0029BA EA               [12] 1712 	mov	a,r2
      0029BB F0               [24] 1713 	movx	@dptr,a
      0029BC EB               [12] 1714 	mov	a,r3
      0029BD A3               [24] 1715 	inc	dptr
      0029BE F0               [24] 1716 	movx	@dptr,a
                                   1717 ;	src/command_handlers.c:284: if (*hex_str >= '0' && *hex_str <= '9') {
      0029BF BC 30 00         [24] 1718 	cjne	r4,#0x30,00169$
      0029C2                       1719 00169$:
      0029C2 40 27            [24] 1720 	jc	00113$
      0029C4 EC               [12] 1721 	mov	a,r4
      0029C5 24 C6            [12] 1722 	add	a,#0xff - 0x39
      0029C7 40 22            [24] 1723 	jc	00113$
                                   1724 ;	src/command_handlers.c:285: result += *hex_str - '0';
      0029C9 7B 00            [12] 1725 	mov	r3,#0x00
      0029CB EC               [12] 1726 	mov	a,r4
      0029CC 24 D0            [12] 1727 	add	a,#0xd0
      0029CE FC               [12] 1728 	mov	r4,a
      0029CF EB               [12] 1729 	mov	a,r3
      0029D0 34 FF            [12] 1730 	addc	a,#0xff
      0029D2 FB               [12] 1731 	mov	r3,a
      0029D3 90 18 7C         [24] 1732 	mov	dptr,#_hex_to_uint16_result_65536_85
      0029D6 E0               [24] 1733 	movx	a,@dptr
      0029D7 F9               [12] 1734 	mov	r1,a
      0029D8 A3               [24] 1735 	inc	dptr
      0029D9 E0               [24] 1736 	movx	a,@dptr
      0029DA FA               [12] 1737 	mov	r2,a
      0029DB EC               [12] 1738 	mov	a,r4
      0029DC 29               [12] 1739 	add	a,r1
      0029DD F9               [12] 1740 	mov	r1,a
      0029DE EB               [12] 1741 	mov	a,r3
      0029DF 3A               [12] 1742 	addc	a,r2
      0029E0 FA               [12] 1743 	mov	r2,a
      0029E1 90 18 7C         [24] 1744 	mov	dptr,#_hex_to_uint16_result_65536_85
      0029E4 E9               [12] 1745 	mov	a,r1
      0029E5 F0               [24] 1746 	movx	@dptr,a
      0029E6 EA               [12] 1747 	mov	a,r2
      0029E7 A3               [24] 1748 	inc	dptr
      0029E8 F0               [24] 1749 	movx	@dptr,a
      0029E9 80 6A            [24] 1750 	sjmp	00114$
      0029EB                       1751 00113$:
                                   1752 ;	src/command_handlers.c:286: } else if (*hex_str >= 'A' && *hex_str <= 'F') {
      0029EB 8D 82            [24] 1753 	mov	dpl,r5
      0029ED 8E 83            [24] 1754 	mov	dph,r6
      0029EF 8F F0            [24] 1755 	mov	b,r7
      0029F1 12 47 DD         [24] 1756 	lcall	__gptrget
      0029F4 FC               [12] 1757 	mov	r4,a
      0029F5 BC 41 00         [24] 1758 	cjne	r4,#0x41,00172$
      0029F8                       1759 00172$:
      0029F8 40 27            [24] 1760 	jc	00109$
      0029FA EC               [12] 1761 	mov	a,r4
      0029FB 24 B9            [12] 1762 	add	a,#0xff - 0x46
      0029FD 40 22            [24] 1763 	jc	00109$
                                   1764 ;	src/command_handlers.c:287: result += *hex_str - 'A' + 10;
      0029FF 7B 00            [12] 1765 	mov	r3,#0x00
      002A01 74 C9            [12] 1766 	mov	a,#0xc9
      002A03 2C               [12] 1767 	add	a,r4
      002A04 FC               [12] 1768 	mov	r4,a
      002A05 74 FF            [12] 1769 	mov	a,#0xff
      002A07 3B               [12] 1770 	addc	a,r3
      002A08 FB               [12] 1771 	mov	r3,a
      002A09 90 18 7C         [24] 1772 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A0C E0               [24] 1773 	movx	a,@dptr
      002A0D F9               [12] 1774 	mov	r1,a
      002A0E A3               [24] 1775 	inc	dptr
      002A0F E0               [24] 1776 	movx	a,@dptr
      002A10 FA               [12] 1777 	mov	r2,a
      002A11 EC               [12] 1778 	mov	a,r4
      002A12 29               [12] 1779 	add	a,r1
      002A13 F9               [12] 1780 	mov	r1,a
      002A14 EB               [12] 1781 	mov	a,r3
      002A15 3A               [12] 1782 	addc	a,r2
      002A16 FA               [12] 1783 	mov	r2,a
      002A17 90 18 7C         [24] 1784 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A1A E9               [12] 1785 	mov	a,r1
      002A1B F0               [24] 1786 	movx	@dptr,a
      002A1C EA               [12] 1787 	mov	a,r2
      002A1D A3               [24] 1788 	inc	dptr
      002A1E F0               [24] 1789 	movx	@dptr,a
      002A1F 80 34            [24] 1790 	sjmp	00114$
      002A21                       1791 00109$:
                                   1792 ;	src/command_handlers.c:288: } else if (*hex_str >= 'a' && *hex_str <= 'f') {
      002A21 8D 82            [24] 1793 	mov	dpl,r5
      002A23 8E 83            [24] 1794 	mov	dph,r6
      002A25 8F F0            [24] 1795 	mov	b,r7
      002A27 12 47 DD         [24] 1796 	lcall	__gptrget
      002A2A FC               [12] 1797 	mov	r4,a
      002A2B BC 61 00         [24] 1798 	cjne	r4,#0x61,00175$
      002A2E                       1799 00175$:
      002A2E 40 25            [24] 1800 	jc	00114$
      002A30 EC               [12] 1801 	mov	a,r4
      002A31 24 99            [12] 1802 	add	a,#0xff - 0x66
      002A33 40 20            [24] 1803 	jc	00114$
                                   1804 ;	src/command_handlers.c:289: result += *hex_str - 'a' + 10;
      002A35 7B 00            [12] 1805 	mov	r3,#0x00
      002A37 74 A9            [12] 1806 	mov	a,#0xa9
      002A39 2C               [12] 1807 	add	a,r4
      002A3A FC               [12] 1808 	mov	r4,a
      002A3B 74 FF            [12] 1809 	mov	a,#0xff
      002A3D 3B               [12] 1810 	addc	a,r3
      002A3E FB               [12] 1811 	mov	r3,a
      002A3F 90 18 7C         [24] 1812 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A42 E0               [24] 1813 	movx	a,@dptr
      002A43 F9               [12] 1814 	mov	r1,a
      002A44 A3               [24] 1815 	inc	dptr
      002A45 E0               [24] 1816 	movx	a,@dptr
      002A46 FA               [12] 1817 	mov	r2,a
      002A47 EC               [12] 1818 	mov	a,r4
      002A48 29               [12] 1819 	add	a,r1
      002A49 F9               [12] 1820 	mov	r1,a
      002A4A EB               [12] 1821 	mov	a,r3
      002A4B 3A               [12] 1822 	addc	a,r2
      002A4C FA               [12] 1823 	mov	r2,a
      002A4D 90 18 7C         [24] 1824 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A50 E9               [12] 1825 	mov	a,r1
      002A51 F0               [24] 1826 	movx	@dptr,a
      002A52 EA               [12] 1827 	mov	a,r2
      002A53 A3               [24] 1828 	inc	dptr
      002A54 F0               [24] 1829 	movx	@dptr,a
      002A55                       1830 00114$:
                                   1831 ;	src/command_handlers.c:292: hex_str++; // Move to the next character
      002A55 0D               [12] 1832 	inc	r5
      002A56 BD 00 01         [24] 1833 	cjne	r5,#0x00,00178$
      002A59 0E               [12] 1834 	inc	r6
      002A5A                       1835 00178$:
      002A5A 90 18 79         [24] 1836 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002A5D ED               [12] 1837 	mov	a,r5
      002A5E F0               [24] 1838 	movx	@dptr,a
      002A5F EE               [12] 1839 	mov	a,r6
      002A60 A3               [24] 1840 	inc	dptr
      002A61 F0               [24] 1841 	movx	@dptr,a
      002A62 EF               [12] 1842 	mov	a,r7
      002A63 A3               [24] 1843 	inc	dptr
      002A64 F0               [24] 1844 	movx	@dptr,a
      002A65 02 29 94         [24] 1845 	ljmp	00116$
      002A68                       1846 00131$:
      002A68 90 18 79         [24] 1847 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002A6B ED               [12] 1848 	mov	a,r5
      002A6C F0               [24] 1849 	movx	@dptr,a
      002A6D EE               [12] 1850 	mov	a,r6
      002A6E A3               [24] 1851 	inc	dptr
      002A6F F0               [24] 1852 	movx	@dptr,a
      002A70 EF               [12] 1853 	mov	a,r7
      002A71 A3               [24] 1854 	inc	dptr
      002A72 F0               [24] 1855 	movx	@dptr,a
                                   1856 ;	src/command_handlers.c:295: return result;
      002A73 90 18 7C         [24] 1857 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A76 E0               [24] 1858 	movx	a,@dptr
      002A77 FE               [12] 1859 	mov	r6,a
      002A78 A3               [24] 1860 	inc	dptr
      002A79 E0               [24] 1861 	movx	a,@dptr
                                   1862 ;	src/command_handlers.c:296: }
      002A7A 8E 82            [24] 1863 	mov	dpl,r6
      002A7C F5 83            [12] 1864 	mov	dph,a
      002A7E 22               [24] 1865 	ret
                                   1866 ;------------------------------------------------------------
                                   1867 ;Allocation info for local variables in function 'check_input_buffer_and_extract_hex_number'
                                   1868 ;------------------------------------------------------------
                                   1869 ;sloc0                     Allocated with name '_check_input_buffer_and_extract_hex_number_sloc0_1_0'
                                   1870 ;buffer_len                Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_2'
                                   1871 ;current_state             Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_3'
                                   1872 ;input_number              Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_4'
                                   1873 ;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_5'
                                   1874 ;input_buffer              Allocated with name '_check_input_buffer_and_extract_hex_number_input_buffer_65536_91'
                                   1875 ;value                     Allocated with name '_check_input_buffer_and_extract_hex_number_value_65537_93'
                                   1876 ;endptr                    Allocated with name '_check_input_buffer_and_extract_hex_number_endptr_65537_93'
                                   1877 ;temp_current_state        Allocated with name '_check_input_buffer_and_extract_hex_number_temp_current_state_65537_93'
                                   1878 ;------------------------------------------------------------
                                   1879 ;	src/command_handlers.c:309: void check_input_buffer_and_extract_hex_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint16_t *input_number,get_in_mem_state *next_state_on_error)
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function check_input_buffer_and_extract_hex_number
                                   1882 ;	-----------------------------------------
      002A7F                       1883 _check_input_buffer_and_extract_hex_number:
      002A7F AF F0            [24] 1884 	mov	r7,b
      002A81 AE 83            [24] 1885 	mov	r6,dph
      002A83 E5 82            [12] 1886 	mov	a,dpl
      002A85 90 18 89         [24] 1887 	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
      002A88 F0               [24] 1888 	movx	@dptr,a
      002A89 EE               [12] 1889 	mov	a,r6
      002A8A A3               [24] 1890 	inc	dptr
      002A8B F0               [24] 1891 	movx	@dptr,a
      002A8C EF               [12] 1892 	mov	a,r7
      002A8D A3               [24] 1893 	inc	dptr
      002A8E F0               [24] 1894 	movx	@dptr,a
                                   1895 ;	src/command_handlers.c:312: *input_number=0;
      002A8F 90 18 83         [24] 1896 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
      002A92 E0               [24] 1897 	movx	a,@dptr
      002A93 FD               [12] 1898 	mov	r5,a
      002A94 A3               [24] 1899 	inc	dptr
      002A95 E0               [24] 1900 	movx	a,@dptr
      002A96 FE               [12] 1901 	mov	r6,a
      002A97 A3               [24] 1902 	inc	dptr
      002A98 E0               [24] 1903 	movx	a,@dptr
      002A99 FF               [12] 1904 	mov	r7,a
      002A9A 8D 82            [24] 1905 	mov	dpl,r5
      002A9C 8E 83            [24] 1906 	mov	dph,r6
      002A9E 8F F0            [24] 1907 	mov	b,r7
      002AA0 E4               [12] 1908 	clr	a
      002AA1 12 3B 1F         [24] 1909 	lcall	__gptrput
      002AA4 A3               [24] 1910 	inc	dptr
      002AA5 12 3B 1F         [24] 1911 	lcall	__gptrput
                                   1912 ;	src/command_handlers.c:317: if (*input_buffer == 'q' || *input_buffer == 'Q')
      002AA8 90 18 89         [24] 1913 	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
      002AAB E0               [24] 1914 	movx	a,@dptr
      002AAC FA               [12] 1915 	mov	r2,a
      002AAD A3               [24] 1916 	inc	dptr
      002AAE E0               [24] 1917 	movx	a,@dptr
      002AAF FB               [12] 1918 	mov	r3,a
      002AB0 A3               [24] 1919 	inc	dptr
      002AB1 E0               [24] 1920 	movx	a,@dptr
      002AB2 FC               [12] 1921 	mov	r4,a
      002AB3 8A 82            [24] 1922 	mov	dpl,r2
      002AB5 8B 83            [24] 1923 	mov	dph,r3
      002AB7 8C F0            [24] 1924 	mov	b,r4
      002AB9 12 47 DD         [24] 1925 	lcall	__gptrget
      002ABC F9               [12] 1926 	mov	r1,a
      002ABD B9 71 02         [24] 1927 	cjne	r1,#0x71,00117$
      002AC0 80 03            [24] 1928 	sjmp	00101$
      002AC2                       1929 00117$:
      002AC2 B9 51 1C         [24] 1930 	cjne	r1,#0x51,00102$
      002AC5                       1931 00101$:
                                   1932 ;	src/command_handlers.c:319: *current_state = EXIT;
      002AC5 90 18 80         [24] 1933 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      002AC8 E0               [24] 1934 	movx	a,@dptr
      002AC9 F5 16            [12] 1935 	mov	_check_input_buffer_and_extract_hex_number_sloc0_1_0,a
      002ACB A3               [24] 1936 	inc	dptr
      002ACC E0               [24] 1937 	movx	a,@dptr
      002ACD F5 17            [12] 1938 	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1),a
      002ACF A3               [24] 1939 	inc	dptr
      002AD0 E0               [24] 1940 	movx	a,@dptr
      002AD1 F5 18            [12] 1941 	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2),a
      002AD3 85 16 82         [24] 1942 	mov	dpl,_check_input_buffer_and_extract_hex_number_sloc0_1_0
      002AD6 85 17 83         [24] 1943 	mov	dph,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1)
      002AD9 85 18 F0         [24] 1944 	mov	b,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2)
      002ADC 74 0B            [12] 1945 	mov	a,#0x0b
                                   1946 ;	src/command_handlers.c:320: return;
      002ADE 02 3B 1F         [24] 1947 	ljmp	__gptrput
      002AE1                       1948 00102$:
                                   1949 ;	src/command_handlers.c:323: if(is_valid_hex(input_buffer))
      002AE1 8A 82            [24] 1950 	mov	dpl,r2
      002AE3 8B 83            [24] 1951 	mov	dph,r3
      002AE5 8C F0            [24] 1952 	mov	b,r4
      002AE7 C0 07            [24] 1953 	push	ar7
      002AE9 C0 06            [24] 1954 	push	ar6
      002AEB C0 05            [24] 1955 	push	ar5
      002AED C0 04            [24] 1956 	push	ar4
      002AEF C0 03            [24] 1957 	push	ar3
      002AF1 C0 02            [24] 1958 	push	ar2
      002AF3 12 28 7F         [24] 1959 	lcall	_is_valid_hex
      002AF6 E5 82            [12] 1960 	mov	a,dpl
      002AF8 D0 02            [24] 1961 	pop	ar2
      002AFA D0 03            [24] 1962 	pop	ar3
      002AFC D0 04            [24] 1963 	pop	ar4
      002AFE D0 05            [24] 1964 	pop	ar5
      002B00 D0 06            [24] 1965 	pop	ar6
      002B02 D0 07            [24] 1966 	pop	ar7
      002B04 60 28            [24] 1967 	jz	00105$
                                   1968 ;	src/command_handlers.c:326: value = hex_to_uint16(input_buffer);
      002B06 8A 82            [24] 1969 	mov	dpl,r2
      002B08 8B 83            [24] 1970 	mov	dph,r3
      002B0A 8C F0            [24] 1971 	mov	b,r4
      002B0C C0 07            [24] 1972 	push	ar7
      002B0E C0 06            [24] 1973 	push	ar6
      002B10 C0 05            [24] 1974 	push	ar5
      002B12 12 29 2A         [24] 1975 	lcall	_hex_to_uint16
      002B15 AB 82            [24] 1976 	mov	r3,dpl
      002B17 AC 83            [24] 1977 	mov	r4,dph
      002B19 D0 05            [24] 1978 	pop	ar5
      002B1B D0 06            [24] 1979 	pop	ar6
      002B1D D0 07            [24] 1980 	pop	ar7
                                   1981 ;	src/command_handlers.c:327: *input_number = value;
      002B1F 8D 82            [24] 1982 	mov	dpl,r5
      002B21 8E 83            [24] 1983 	mov	dph,r6
      002B23 8F F0            [24] 1984 	mov	b,r7
      002B25 EB               [12] 1985 	mov	a,r3
      002B26 12 3B 1F         [24] 1986 	lcall	__gptrput
      002B29 A3               [24] 1987 	inc	dptr
      002B2A EC               [12] 1988 	mov	a,r4
      002B2B 02 3B 1F         [24] 1989 	ljmp	__gptrput
      002B2E                       1990 00105$:
                                   1991 ;	src/command_handlers.c:331: *current_state = *next_state_on_error;
      002B2E 90 18 80         [24] 1992 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      002B31 E0               [24] 1993 	movx	a,@dptr
      002B32 FD               [12] 1994 	mov	r5,a
      002B33 A3               [24] 1995 	inc	dptr
      002B34 E0               [24] 1996 	movx	a,@dptr
      002B35 FE               [12] 1997 	mov	r6,a
      002B36 A3               [24] 1998 	inc	dptr
      002B37 E0               [24] 1999 	movx	a,@dptr
      002B38 FF               [12] 2000 	mov	r7,a
      002B39 90 18 86         [24] 2001 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
      002B3C E0               [24] 2002 	movx	a,@dptr
      002B3D FA               [12] 2003 	mov	r2,a
      002B3E A3               [24] 2004 	inc	dptr
      002B3F E0               [24] 2005 	movx	a,@dptr
      002B40 FB               [12] 2006 	mov	r3,a
      002B41 A3               [24] 2007 	inc	dptr
      002B42 E0               [24] 2008 	movx	a,@dptr
      002B43 FC               [12] 2009 	mov	r4,a
      002B44 8A 82            [24] 2010 	mov	dpl,r2
      002B46 8B 83            [24] 2011 	mov	dph,r3
      002B48 8C F0            [24] 2012 	mov	b,r4
      002B4A 12 47 DD         [24] 2013 	lcall	__gptrget
      002B4D 8D 82            [24] 2014 	mov	dpl,r5
      002B4F 8E 83            [24] 2015 	mov	dph,r6
      002B51 8F F0            [24] 2016 	mov	b,r7
      002B53 12 3B 1F         [24] 2017 	lcall	__gptrput
                                   2018 ;	src/command_handlers.c:334: return;
                                   2019 ;	src/command_handlers.c:335: }
      002B56 22               [24] 2020 	ret
                                   2021 ;------------------------------------------------------------
                                   2022 ;Allocation info for local variables in function 'action_for_write_to_specific_position'
                                   2023 ;------------------------------------------------------------
                                   2024 ;input_buffer              Allocated with name '_action_for_write_to_specific_position_input_buffer_65536_98'
                                   2025 ;input_buffer_string       Allocated with name '_action_for_write_to_specific_position_input_buffer_string_65536_98'
                                   2026 ;error_message             Allocated with name '_action_for_write_to_specific_position_error_message_65536_98'
                                   2027 ;row_number                Allocated with name '_action_for_write_to_specific_position_row_number_65536_98'
                                   2028 ;column_number             Allocated with name '_action_for_write_to_specific_position_column_number_65536_98'
                                   2029 ;current_state             Allocated with name '_action_for_write_to_specific_position_current_state_65536_98'
                                   2030 ;wait_for_input            Allocated with name '_action_for_write_to_specific_position_wait_for_input_65536_98'
                                   2031 ;state_on_error            Allocated with name '_action_for_write_to_specific_position_state_on_error_65536_98'
                                   2032 ;------------------------------------------------------------
                                   2033 ;	src/command_handlers.c:337: void action_for_write_to_specific_position(void)
                                   2034 ;	-----------------------------------------
                                   2035 ;	 function action_for_write_to_specific_position
                                   2036 ;	-----------------------------------------
      002B57                       2037 _action_for_write_to_specific_position:
                                   2038 ;	src/command_handlers.c:342: char *error_message = "\r\nOut of range\r\n";
                                   2039 ;	src/command_handlers.c:343: uint8_t row_number = 0;
      002B57 90 18 F3         [24] 2040 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002B5A E4               [12] 2041 	clr	a
      002B5B F0               [24] 2042 	movx	@dptr,a
                                   2043 ;	src/command_handlers.c:344: uint8_t column_number = 0;
      002B5C 90 18 F4         [24] 2044 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002B5F F0               [24] 2045 	movx	@dptr,a
                                   2046 ;	src/command_handlers.c:345: get_in_mem_state current_state = GET_ROW_INPUT_FROM_USER;
      002B60 90 18 F5         [24] 2047 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002B63 74 02            [12] 2048 	mov	a,#0x02
      002B65 F0               [24] 2049 	movx	@dptr,a
                                   2050 ;	src/command_handlers.c:346: bool wait_for_input = true;
      002B66 90 18 F6         [24] 2051 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002B69 14               [12] 2052 	dec	a
      002B6A F0               [24] 2053 	movx	@dptr,a
                                   2054 ;	src/command_handlers.c:349: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002B6B 90 18 F7         [24] 2055 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002B6E 04               [12] 2056 	inc	a
      002B6F F0               [24] 2057 	movx	@dptr,a
                                   2058 ;	src/command_handlers.c:350: while (wait_for_input)
      002B70                       2059 00126$:
      002B70 90 18 F6         [24] 2060 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002B73 E0               [24] 2061 	movx	a,@dptr
      002B74 70 01            [24] 2062 	jnz	00171$
      002B76 22               [24] 2063 	ret
      002B77                       2064 00171$:
                                   2065 ;	src/command_handlers.c:352: switch (current_state)
      002B77 90 18 F5         [24] 2066 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002B7A E0               [24] 2067 	movx	a,@dptr
      002B7B FF               [12] 2068 	mov  r7,a
      002B7C 24 F4            [12] 2069 	add	a,#0xff - 0x0b
      002B7E 40 F0            [24] 2070 	jc	00126$
      002B80 EF               [12] 2071 	mov	a,r7
      002B81 24 0A            [12] 2072 	add	a,#(00173$-3-.)
      002B83 83               [24] 2073 	movc	a,@a+pc
      002B84 F5 82            [12] 2074 	mov	dpl,a
      002B86 EF               [12] 2075 	mov	a,r7
      002B87 24 10            [12] 2076 	add	a,#(00174$-3-.)
      002B89 83               [24] 2077 	movc	a,@a+pc
      002B8A F5 83            [12] 2078 	mov	dph,a
      002B8C E4               [12] 2079 	clr	a
      002B8D 73               [24] 2080 	jmp	@a+dptr
      002B8E                       2081 00173$:
      002B8E 30                    2082 	.db	00119$
      002B8F 75                    2083 	.db	00122$
      002B90 A6                    2084 	.db	00101$
      002B91 6C                    2085 	.db	00110$
      002B92 EB                    2086 	.db	00104$
      002B93 B1                    2087 	.db	00113$
      002B94 70                    2088 	.db	00126$
      002B95 70                    2089 	.db	00126$
      002B96 70                    2090 	.db	00126$
      002B97 70                    2091 	.db	00126$
      002B98 70                    2092 	.db	00126$
      002B99 B4                    2093 	.db	00123$
      002B9A                       2094 00174$:
      002B9A 2D                    2095 	.db	00119$>>8
      002B9B 2D                    2096 	.db	00122$>>8
      002B9C 2B                    2097 	.db	00101$>>8
      002B9D 2C                    2098 	.db	00110$>>8
      002B9E 2B                    2099 	.db	00104$>>8
      002B9F 2C                    2100 	.db	00113$>>8
      002BA0 2B                    2101 	.db	00126$>>8
      002BA1 2B                    2102 	.db	00126$>>8
      002BA2 2B                    2103 	.db	00126$>>8
      002BA3 2B                    2104 	.db	00126$>>8
      002BA4 2B                    2105 	.db	00126$>>8
      002BA5 2D                    2106 	.db	00123$>>8
                                   2107 ;	src/command_handlers.c:354: case GET_ROW_INPUT_FROM_USER:
      002BA6                       2108 00101$:
                                   2109 ;	src/command_handlers.c:355: printf("\r\nEnter the row number(between 1 and 4):");
      002BA6 74 15            [12] 2110 	mov	a,#___str_35
      002BA8 C0 E0            [24] 2111 	push	acc
      002BAA 74 4E            [12] 2112 	mov	a,#(___str_35 >> 8)
      002BAC C0 E0            [24] 2113 	push	acc
      002BAE 74 80            [12] 2114 	mov	a,#0x80
      002BB0 C0 E0            [24] 2115 	push	acc
      002BB2 12 3D 9B         [24] 2116 	lcall	_printf
      002BB5 15 81            [12] 2117 	dec	sp
      002BB7 15 81            [12] 2118 	dec	sp
      002BB9 15 81            [12] 2119 	dec	sp
                                   2120 ;	src/command_handlers.c:356: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002BBB 90 19 1A         [24] 2121 	mov	dptr,#_getstr_PARM_2
      002BBE 74 03            [12] 2122 	mov	a,#0x03
      002BC0 F0               [24] 2123 	movx	@dptr,a
      002BC1 E4               [12] 2124 	clr	a
      002BC2 A3               [24] 2125 	inc	dptr
      002BC3 F0               [24] 2126 	movx	@dptr,a
      002BC4 90 19 1C         [24] 2127 	mov	dptr,#_getstr_PARM_3
      002BC7 74 D0            [12] 2128 	mov	a,#___str_32
      002BC9 F0               [24] 2129 	movx	@dptr,a
      002BCA 74 4D            [12] 2130 	mov	a,#(___str_32 >> 8)
      002BCC A3               [24] 2131 	inc	dptr
      002BCD F0               [24] 2132 	movx	@dptr,a
      002BCE 74 80            [12] 2133 	mov	a,#0x80
      002BD0 A3               [24] 2134 	inc	dptr
      002BD1 F0               [24] 2135 	movx	@dptr,a
      002BD2 90 18 8C         [24] 2136 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002BD5 75 F0 00         [24] 2137 	mov	b,#0x00
      002BD8 12 31 AF         [24] 2138 	lcall	_getstr
      002BDB E5 82            [12] 2139 	mov	a,dpl
      002BDD 60 03            [24] 2140 	jz	00175$
      002BDF 02 2B 70         [24] 2141 	ljmp	00126$
      002BE2                       2142 00175$:
                                   2143 ;	src/command_handlers.c:358: current_state = PARSE_ROW_INPUT;
      002BE2 90 18 F5         [24] 2144 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002BE5 74 04            [12] 2145 	mov	a,#0x04
      002BE7 F0               [24] 2146 	movx	@dptr,a
                                   2147 ;	src/command_handlers.c:360: break;
      002BE8 02 2B 70         [24] 2148 	ljmp	00126$
                                   2149 ;	src/command_handlers.c:361: case PARSE_ROW_INPUT:
      002BEB                       2150 00104$:
                                   2151 ;	src/command_handlers.c:362: state_on_error = GET_ROW_INPUT_FROM_USER;
      002BEB 90 18 F7         [24] 2152 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002BEE 74 02            [12] 2153 	mov	a,#0x02
      002BF0 F0               [24] 2154 	movx	@dptr,a
                                   2155 ;	src/command_handlers.c:363: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&row_number,&state_on_error);
      002BF1 90 18 68         [24] 2156 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002BF4 04               [12] 2157 	inc	a
      002BF5 F0               [24] 2158 	movx	@dptr,a
      002BF6 E4               [12] 2159 	clr	a
      002BF7 A3               [24] 2160 	inc	dptr
      002BF8 F0               [24] 2161 	movx	@dptr,a
      002BF9 90 18 6A         [24] 2162 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002BFC 74 F5            [12] 2163 	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
      002BFE F0               [24] 2164 	movx	@dptr,a
      002BFF 74 18            [12] 2165 	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
      002C01 A3               [24] 2166 	inc	dptr
      002C02 F0               [24] 2167 	movx	@dptr,a
      002C03 E4               [12] 2168 	clr	a
      002C04 A3               [24] 2169 	inc	dptr
      002C05 F0               [24] 2170 	movx	@dptr,a
      002C06 90 18 6D         [24] 2171 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002C09 74 F3            [12] 2172 	mov	a,#_action_for_write_to_specific_position_row_number_65536_98
      002C0B F0               [24] 2173 	movx	@dptr,a
      002C0C 74 18            [12] 2174 	mov	a,#(_action_for_write_to_specific_position_row_number_65536_98 >> 8)
      002C0E A3               [24] 2175 	inc	dptr
      002C0F F0               [24] 2176 	movx	@dptr,a
      002C10 E4               [12] 2177 	clr	a
      002C11 A3               [24] 2178 	inc	dptr
      002C12 F0               [24] 2179 	movx	@dptr,a
      002C13 90 18 70         [24] 2180 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002C16 74 F7            [12] 2181 	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
      002C18 F0               [24] 2182 	movx	@dptr,a
      002C19 74 18            [12] 2183 	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
      002C1B A3               [24] 2184 	inc	dptr
      002C1C F0               [24] 2185 	movx	@dptr,a
      002C1D E4               [12] 2186 	clr	a
      002C1E A3               [24] 2187 	inc	dptr
      002C1F F0               [24] 2188 	movx	@dptr,a
      002C20 90 18 8C         [24] 2189 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002C23 75 F0 00         [24] 2190 	mov	b,#0x00
      002C26 12 27 32         [24] 2191 	lcall	_check_input_buffer_and_extract_number
                                   2192 ;	src/command_handlers.c:364: if(current_state==PARSE_ROW_INPUT)
      002C29 90 18 F5         [24] 2193 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002C2C E0               [24] 2194 	movx	a,@dptr
      002C2D FF               [12] 2195 	mov	r7,a
      002C2E BF 04 02         [24] 2196 	cjne	r7,#0x04,00176$
      002C31 80 03            [24] 2197 	sjmp	00177$
      002C33                       2198 00176$:
      002C33 02 2B 70         [24] 2199 	ljmp	00126$
      002C36                       2200 00177$:
                                   2201 ;	src/command_handlers.c:366: if(row_number<=4)
      002C36 90 18 F3         [24] 2202 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002C39 E0               [24] 2203 	movx	a,@dptr
      002C3A FF               [12] 2204 	mov  r7,a
      002C3B 24 FB            [12] 2205 	add	a,#0xff - 0x04
      002C3D 40 0F            [24] 2206 	jc	00106$
                                   2207 ;	src/command_handlers.c:368: row_number-=1;
      002C3F EF               [12] 2208 	mov	a,r7
      002C40 14               [12] 2209 	dec	a
      002C41 90 18 F3         [24] 2210 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002C44 F0               [24] 2211 	movx	@dptr,a
                                   2212 ;	src/command_handlers.c:369: current_state=GET_COLUMN_INPUT_FROM_USER;
      002C45 90 18 F5         [24] 2213 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002C48 74 03            [12] 2214 	mov	a,#0x03
      002C4A F0               [24] 2215 	movx	@dptr,a
      002C4B 02 2B 70         [24] 2216 	ljmp	00126$
      002C4E                       2217 00106$:
                                   2218 ;	src/command_handlers.c:373: printf("\r\nInvalid Input:");
      002C4E 74 3E            [12] 2219 	mov	a,#___str_36
      002C50 C0 E0            [24] 2220 	push	acc
      002C52 74 4E            [12] 2221 	mov	a,#(___str_36 >> 8)
      002C54 C0 E0            [24] 2222 	push	acc
      002C56 74 80            [12] 2223 	mov	a,#0x80
      002C58 C0 E0            [24] 2224 	push	acc
      002C5A 12 3D 9B         [24] 2225 	lcall	_printf
      002C5D 15 81            [12] 2226 	dec	sp
      002C5F 15 81            [12] 2227 	dec	sp
      002C61 15 81            [12] 2228 	dec	sp
                                   2229 ;	src/command_handlers.c:374: current_state = GET_ROW_INPUT_FROM_USER;
      002C63 90 18 F5         [24] 2230 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002C66 74 02            [12] 2231 	mov	a,#0x02
      002C68 F0               [24] 2232 	movx	@dptr,a
                                   2233 ;	src/command_handlers.c:378: break;
      002C69 02 2B 70         [24] 2234 	ljmp	00126$
                                   2235 ;	src/command_handlers.c:379: case GET_COLUMN_INPUT_FROM_USER:
      002C6C                       2236 00110$:
                                   2237 ;	src/command_handlers.c:381: printf("\r\nEnter the column number(between 1 and 16):");
      002C6C 74 4F            [12] 2238 	mov	a,#___str_37
      002C6E C0 E0            [24] 2239 	push	acc
      002C70 74 4E            [12] 2240 	mov	a,#(___str_37 >> 8)
      002C72 C0 E0            [24] 2241 	push	acc
      002C74 74 80            [12] 2242 	mov	a,#0x80
      002C76 C0 E0            [24] 2243 	push	acc
      002C78 12 3D 9B         [24] 2244 	lcall	_printf
      002C7B 15 81            [12] 2245 	dec	sp
      002C7D 15 81            [12] 2246 	dec	sp
      002C7F 15 81            [12] 2247 	dec	sp
                                   2248 ;	src/command_handlers.c:382: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002C81 90 19 1A         [24] 2249 	mov	dptr,#_getstr_PARM_2
      002C84 74 03            [12] 2250 	mov	a,#0x03
      002C86 F0               [24] 2251 	movx	@dptr,a
      002C87 E4               [12] 2252 	clr	a
      002C88 A3               [24] 2253 	inc	dptr
      002C89 F0               [24] 2254 	movx	@dptr,a
      002C8A 90 19 1C         [24] 2255 	mov	dptr,#_getstr_PARM_3
      002C8D 74 D0            [12] 2256 	mov	a,#___str_32
      002C8F F0               [24] 2257 	movx	@dptr,a
      002C90 74 4D            [12] 2258 	mov	a,#(___str_32 >> 8)
      002C92 A3               [24] 2259 	inc	dptr
      002C93 F0               [24] 2260 	movx	@dptr,a
      002C94 74 80            [12] 2261 	mov	a,#0x80
      002C96 A3               [24] 2262 	inc	dptr
      002C97 F0               [24] 2263 	movx	@dptr,a
      002C98 90 18 8C         [24] 2264 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002C9B 75 F0 00         [24] 2265 	mov	b,#0x00
      002C9E 12 31 AF         [24] 2266 	lcall	_getstr
      002CA1 E5 82            [12] 2267 	mov	a,dpl
      002CA3 60 03            [24] 2268 	jz	00179$
      002CA5 02 2B 70         [24] 2269 	ljmp	00126$
      002CA8                       2270 00179$:
                                   2271 ;	src/command_handlers.c:384: current_state = PARSE_COLUMN_INPUT;
      002CA8 90 18 F5         [24] 2272 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002CAB 74 05            [12] 2273 	mov	a,#0x05
      002CAD F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	src/command_handlers.c:386: break;
      002CAE 02 2B 70         [24] 2276 	ljmp	00126$
                                   2277 ;	src/command_handlers.c:387: case PARSE_COLUMN_INPUT:
      002CB1                       2278 00113$:
                                   2279 ;	src/command_handlers.c:388: state_on_error = GET_COLUMN_INPUT_FROM_USER;
      002CB1 90 18 F7         [24] 2280 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002CB4 74 03            [12] 2281 	mov	a,#0x03
      002CB6 F0               [24] 2282 	movx	@dptr,a
                                   2283 ;	src/command_handlers.c:389: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&column_number,&state_on_error);
      002CB7 90 18 68         [24] 2284 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002CBA F0               [24] 2285 	movx	@dptr,a
      002CBB E4               [12] 2286 	clr	a
      002CBC A3               [24] 2287 	inc	dptr
      002CBD F0               [24] 2288 	movx	@dptr,a
      002CBE 90 18 6A         [24] 2289 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002CC1 74 F5            [12] 2290 	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
      002CC3 F0               [24] 2291 	movx	@dptr,a
      002CC4 74 18            [12] 2292 	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
      002CC6 A3               [24] 2293 	inc	dptr
      002CC7 F0               [24] 2294 	movx	@dptr,a
      002CC8 E4               [12] 2295 	clr	a
      002CC9 A3               [24] 2296 	inc	dptr
      002CCA F0               [24] 2297 	movx	@dptr,a
      002CCB 90 18 6D         [24] 2298 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002CCE 74 F4            [12] 2299 	mov	a,#_action_for_write_to_specific_position_column_number_65536_98
      002CD0 F0               [24] 2300 	movx	@dptr,a
      002CD1 74 18            [12] 2301 	mov	a,#(_action_for_write_to_specific_position_column_number_65536_98 >> 8)
      002CD3 A3               [24] 2302 	inc	dptr
      002CD4 F0               [24] 2303 	movx	@dptr,a
      002CD5 E4               [12] 2304 	clr	a
      002CD6 A3               [24] 2305 	inc	dptr
      002CD7 F0               [24] 2306 	movx	@dptr,a
      002CD8 90 18 70         [24] 2307 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002CDB 74 F7            [12] 2308 	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
      002CDD F0               [24] 2309 	movx	@dptr,a
      002CDE 74 18            [12] 2310 	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
      002CE0 A3               [24] 2311 	inc	dptr
      002CE1 F0               [24] 2312 	movx	@dptr,a
      002CE2 E4               [12] 2313 	clr	a
      002CE3 A3               [24] 2314 	inc	dptr
      002CE4 F0               [24] 2315 	movx	@dptr,a
      002CE5 90 18 8C         [24] 2316 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002CE8 75 F0 00         [24] 2317 	mov	b,#0x00
      002CEB 12 27 32         [24] 2318 	lcall	_check_input_buffer_and_extract_number
                                   2319 ;	src/command_handlers.c:390: if(current_state==PARSE_COLUMN_INPUT)
      002CEE 90 18 F5         [24] 2320 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002CF1 E0               [24] 2321 	movx	a,@dptr
      002CF2 FF               [12] 2322 	mov	r7,a
      002CF3 BF 05 02         [24] 2323 	cjne	r7,#0x05,00180$
      002CF6 80 03            [24] 2324 	sjmp	00181$
      002CF8                       2325 00180$:
      002CF8 02 2B 70         [24] 2326 	ljmp	00126$
      002CFB                       2327 00181$:
                                   2328 ;	src/command_handlers.c:392: if(row_number<=16)
      002CFB 90 18 F3         [24] 2329 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002CFE E0               [24] 2330 	movx	a,@dptr
      002CFF 24 EF            [12] 2331 	add	a,#0xff - 0x10
      002D01 40 0F            [24] 2332 	jc	00115$
                                   2333 ;	src/command_handlers.c:394: column_number-=1;
      002D03 90 18 F4         [24] 2334 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002D06 E0               [24] 2335 	movx	a,@dptr
      002D07 FF               [12] 2336 	mov	r7,a
      002D08 14               [12] 2337 	dec	a
      002D09 F0               [24] 2338 	movx	@dptr,a
                                   2339 ;	src/command_handlers.c:395: current_state = GET_STRING_INPUT_FROM_USER;
      002D0A 90 18 F5         [24] 2340 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002D0D E4               [12] 2341 	clr	a
      002D0E F0               [24] 2342 	movx	@dptr,a
      002D0F 02 2B 70         [24] 2343 	ljmp	00126$
      002D12                       2344 00115$:
                                   2345 ;	src/command_handlers.c:399: printf("\r\nInvalid Input:");
      002D12 74 3E            [12] 2346 	mov	a,#___str_36
      002D14 C0 E0            [24] 2347 	push	acc
      002D16 74 4E            [12] 2348 	mov	a,#(___str_36 >> 8)
      002D18 C0 E0            [24] 2349 	push	acc
      002D1A 74 80            [12] 2350 	mov	a,#0x80
      002D1C C0 E0            [24] 2351 	push	acc
      002D1E 12 3D 9B         [24] 2352 	lcall	_printf
      002D21 15 81            [12] 2353 	dec	sp
      002D23 15 81            [12] 2354 	dec	sp
      002D25 15 81            [12] 2355 	dec	sp
                                   2356 ;	src/command_handlers.c:400: current_state = GET_COLUMN_INPUT_FROM_USER;
      002D27 90 18 F5         [24] 2357 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002D2A 74 03            [12] 2358 	mov	a,#0x03
      002D2C F0               [24] 2359 	movx	@dptr,a
                                   2360 ;	src/command_handlers.c:404: break;
      002D2D 02 2B 70         [24] 2361 	ljmp	00126$
                                   2362 ;	src/command_handlers.c:405: case GET_STRING_INPUT_FROM_USER:
      002D30                       2363 00119$:
                                   2364 ;	src/command_handlers.c:406: printf("\r\nEnter the string and press enter:");
      002D30 74 E1            [12] 2365 	mov	a,#___str_33
      002D32 C0 E0            [24] 2366 	push	acc
      002D34 74 4D            [12] 2367 	mov	a,#(___str_33 >> 8)
      002D36 C0 E0            [24] 2368 	push	acc
      002D38 74 80            [12] 2369 	mov	a,#0x80
      002D3A C0 E0            [24] 2370 	push	acc
      002D3C 12 3D 9B         [24] 2371 	lcall	_printf
      002D3F 15 81            [12] 2372 	dec	sp
      002D41 15 81            [12] 2373 	dec	sp
      002D43 15 81            [12] 2374 	dec	sp
                                   2375 ;	src/command_handlers.c:407: if (!getstr(input_buffer_string, sizeof(input_buffer_string), error_message))
      002D45 90 19 1A         [24] 2376 	mov	dptr,#_getstr_PARM_2
      002D48 74 64            [12] 2377 	mov	a,#0x64
      002D4A F0               [24] 2378 	movx	@dptr,a
      002D4B E4               [12] 2379 	clr	a
      002D4C A3               [24] 2380 	inc	dptr
      002D4D F0               [24] 2381 	movx	@dptr,a
      002D4E 90 19 1C         [24] 2382 	mov	dptr,#_getstr_PARM_3
      002D51 74 D0            [12] 2383 	mov	a,#___str_32
      002D53 F0               [24] 2384 	movx	@dptr,a
      002D54 74 4D            [12] 2385 	mov	a,#(___str_32 >> 8)
      002D56 A3               [24] 2386 	inc	dptr
      002D57 F0               [24] 2387 	movx	@dptr,a
      002D58 74 80            [12] 2388 	mov	a,#0x80
      002D5A A3               [24] 2389 	inc	dptr
      002D5B F0               [24] 2390 	movx	@dptr,a
      002D5C 90 18 8F         [24] 2391 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
      002D5F 75 F0 00         [24] 2392 	mov	b,#0x00
      002D62 12 31 AF         [24] 2393 	lcall	_getstr
      002D65 E5 82            [12] 2394 	mov	a,dpl
      002D67 60 03            [24] 2395 	jz	00183$
      002D69 02 2B 70         [24] 2396 	ljmp	00126$
      002D6C                       2397 00183$:
                                   2398 ;	src/command_handlers.c:409: current_state = PUT_DATA_TO_LCD;
      002D6C 90 18 F5         [24] 2399 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002D6F 74 01            [12] 2400 	mov	a,#0x01
      002D71 F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	src/command_handlers.c:411: break;
      002D72 02 2B 70         [24] 2403 	ljmp	00126$
                                   2404 ;	src/command_handlers.c:412: case PUT_DATA_TO_LCD:
      002D75                       2405 00122$:
                                   2406 ;	src/command_handlers.c:418: }
      002D75 7F 01            [12] 2407 	mov	r7,#0x01
      002D77 10 AF 02         [24] 2408 	jbc	ea,00184$
      002D7A 7F 00            [12] 2409 	mov	r7,#0x00
      002D7C                       2410 00184$:
                                   2411 ;	src/command_handlers.c:415: lcd_clear();
      002D7C C0 07            [24] 2412 	push	ar7
      002D7E 12 33 F3         [24] 2413 	lcall	_lcd_clear
      002D81 D0 07            [24] 2414 	pop	ar7
                                   2415 ;	src/command_handlers.c:416: lcd_put_string(input_buffer_string,row_number,column_number);
      002D83 90 18 F3         [24] 2416 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002D86 E0               [24] 2417 	movx	a,@dptr
      002D87 FE               [12] 2418 	mov	r6,a
      002D88 90 18 F4         [24] 2419 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002D8B E0               [24] 2420 	movx	a,@dptr
      002D8C FD               [12] 2421 	mov	r5,a
      002D8D 90 19 2A         [24] 2422 	mov	dptr,#_lcd_put_string_PARM_2
      002D90 EE               [12] 2423 	mov	a,r6
      002D91 F0               [24] 2424 	movx	@dptr,a
      002D92 90 19 2B         [24] 2425 	mov	dptr,#_lcd_put_string_PARM_3
      002D95 ED               [12] 2426 	mov	a,r5
      002D96 F0               [24] 2427 	movx	@dptr,a
      002D97 90 18 8F         [24] 2428 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
      002D9A 75 F0 00         [24] 2429 	mov	b,#0x00
      002D9D C0 07            [24] 2430 	push	ar7
      002D9F 12 34 13         [24] 2431 	lcall	_lcd_put_string
                                   2432 ;	src/command_handlers.c:417: current_time_display();
      002DA2 12 39 EE         [24] 2433 	lcall	_current_time_display
      002DA5 D0 07            [24] 2434 	pop	ar7
      002DA7 EF               [12] 2435 	mov	a,r7
      002DA8 13               [12] 2436 	rrc	a
      002DA9 92 AF            [24] 2437 	mov	ea,c
                                   2438 ;	src/command_handlers.c:420: current_state = EXIT;
      002DAB 90 18 F5         [24] 2439 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002DAE 74 0B            [12] 2440 	mov	a,#0x0b
      002DB0 F0               [24] 2441 	movx	@dptr,a
                                   2442 ;	src/command_handlers.c:421: break;
      002DB1 02 2B 70         [24] 2443 	ljmp	00126$
                                   2444 ;	src/command_handlers.c:422: case EXIT:
      002DB4                       2445 00123$:
                                   2446 ;	src/command_handlers.c:423: wait_for_input = false;
      002DB4 90 18 F6         [24] 2447 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002DB7 E4               [12] 2448 	clr	a
      002DB8 F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	src/command_handlers.c:424: break;
                                   2451 ;	src/command_handlers.c:427: }
                                   2452 ;	src/command_handlers.c:429: }
      002DB9 02 2B 70         [24] 2453 	ljmp	00126$
                                   2454 ;------------------------------------------------------------
                                   2455 ;Allocation info for local variables in function 'action_for_display_custom_char'
                                   2456 ;------------------------------------------------------------
                                   2457 ;input_buffer              Allocated with name '_action_for_display_custom_char_input_buffer_65536_112'
                                   2458 ;error_message             Allocated with name '_action_for_display_custom_char_error_message_65536_112'
                                   2459 ;char_code_row_value       Allocated with name '_action_for_display_custom_char_char_code_row_value_65536_112'
                                   2460 ;char_code_number          Allocated with name '_action_for_display_custom_char_char_code_number_65536_112'
                                   2461 ;current_state             Allocated with name '_action_for_display_custom_char_current_state_65536_112'
                                   2462 ;wait_for_input            Allocated with name '_action_for_display_custom_char_wait_for_input_65536_112'
                                   2463 ;char_code_row_values      Allocated with name '_action_for_display_custom_char_char_code_row_values_65536_112'
                                   2464 ;state_on_error            Allocated with name '_action_for_display_custom_char_state_on_error_65536_112'
                                   2465 ;------------------------------------------------------------
                                   2466 ;	src/command_handlers.c:430: void action_for_display_custom_char(void)
                                   2467 ;	-----------------------------------------
                                   2468 ;	 function action_for_display_custom_char
                                   2469 ;	-----------------------------------------
      002DBC                       2470 _action_for_display_custom_char:
                                   2471 ;	src/command_handlers.c:433: char *error_message = "\r\nOut of range\r\n";
                                   2472 ;	src/command_handlers.c:435: uint8_t char_code_number = 0;
      002DBC 90 18 FB         [24] 2473 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002DBF E4               [12] 2474 	clr	a
      002DC0 F0               [24] 2475 	movx	@dptr,a
                                   2476 ;	src/command_handlers.c:436: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002DC1 90 18 FC         [24] 2477 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002DC4 74 06            [12] 2478 	mov	a,#0x06
      002DC6 F0               [24] 2479 	movx	@dptr,a
                                   2480 ;	src/command_handlers.c:437: bool wait_for_input = true;
      002DC7 90 18 FD         [24] 2481 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002DCA 74 01            [12] 2482 	mov	a,#0x01
      002DCC F0               [24] 2483 	movx	@dptr,a
                                   2484 ;	src/command_handlers.c:441: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002DCD 90 19 06         [24] 2485 	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
      002DD0 04               [12] 2486 	inc	a
      002DD1 F0               [24] 2487 	movx	@dptr,a
                                   2488 ;	src/command_handlers.c:442: while (wait_for_input)
      002DD2                       2489 00115$:
      002DD2 90 18 FD         [24] 2490 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002DD5 E0               [24] 2491 	movx	a,@dptr
      002DD6 70 01            [24] 2492 	jnz	00160$
      002DD8 22               [24] 2493 	ret
      002DD9                       2494 00160$:
                                   2495 ;	src/command_handlers.c:444: switch (current_state)
      002DD9 90 18 FC         [24] 2496 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002DDC E0               [24] 2497 	movx	a,@dptr
      002DDD FF               [12] 2498 	mov	r7,a
      002DDE BF 06 02         [24] 2499 	cjne	r7,#0x06,00161$
      002DE1 80 13            [24] 2500 	sjmp	00101$
      002DE3                       2501 00161$:
      002DE3 BF 07 02         [24] 2502 	cjne	r7,#0x07,00162$
      002DE6 80 4F            [24] 2503 	sjmp	00104$
      002DE8                       2504 00162$:
      002DE8 BF 0A 03         [24] 2505 	cjne	r7,#0x0a,00163$
      002DEB 02 2E DB         [24] 2506 	ljmp	00111$
      002DEE                       2507 00163$:
      002DEE BF 0B 03         [24] 2508 	cjne	r7,#0x0b,00164$
      002DF1 02 2F 1B         [24] 2509 	ljmp	00112$
      002DF4                       2510 00164$:
                                   2511 ;	src/command_handlers.c:446: case GET_CHAR_CODE_INPUT_FROM_USER:
      002DF4 80 DC            [24] 2512 	sjmp	00115$
      002DF6                       2513 00101$:
                                   2514 ;	src/command_handlers.c:447: printf("\r\nEnter the char code to display (between 1 and 8):");
      002DF6 74 7C            [12] 2515 	mov	a,#___str_38
      002DF8 C0 E0            [24] 2516 	push	acc
      002DFA 74 4E            [12] 2517 	mov	a,#(___str_38 >> 8)
      002DFC C0 E0            [24] 2518 	push	acc
      002DFE 74 80            [12] 2519 	mov	a,#0x80
      002E00 C0 E0            [24] 2520 	push	acc
      002E02 12 3D 9B         [24] 2521 	lcall	_printf
      002E05 15 81            [12] 2522 	dec	sp
      002E07 15 81            [12] 2523 	dec	sp
      002E09 15 81            [12] 2524 	dec	sp
                                   2525 ;	src/command_handlers.c:448: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002E0B 90 19 1A         [24] 2526 	mov	dptr,#_getstr_PARM_2
      002E0E 74 03            [12] 2527 	mov	a,#0x03
      002E10 F0               [24] 2528 	movx	@dptr,a
      002E11 E4               [12] 2529 	clr	a
      002E12 A3               [24] 2530 	inc	dptr
      002E13 F0               [24] 2531 	movx	@dptr,a
      002E14 90 19 1C         [24] 2532 	mov	dptr,#_getstr_PARM_3
      002E17 74 D0            [12] 2533 	mov	a,#___str_32
      002E19 F0               [24] 2534 	movx	@dptr,a
      002E1A 74 4D            [12] 2535 	mov	a,#(___str_32 >> 8)
      002E1C A3               [24] 2536 	inc	dptr
      002E1D F0               [24] 2537 	movx	@dptr,a
      002E1E 74 80            [12] 2538 	mov	a,#0x80
      002E20 A3               [24] 2539 	inc	dptr
      002E21 F0               [24] 2540 	movx	@dptr,a
      002E22 90 18 F8         [24] 2541 	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
      002E25 75 F0 00         [24] 2542 	mov	b,#0x00
      002E28 12 31 AF         [24] 2543 	lcall	_getstr
      002E2B E5 82            [12] 2544 	mov	a,dpl
      002E2D 70 A3            [24] 2545 	jnz	00115$
                                   2546 ;	src/command_handlers.c:450: current_state = PARSE_CHAR_CODE_INPUT;
      002E2F 90 18 FC         [24] 2547 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002E32 74 07            [12] 2548 	mov	a,#0x07
      002E34 F0               [24] 2549 	movx	@dptr,a
                                   2550 ;	src/command_handlers.c:452: break;
                                   2551 ;	src/command_handlers.c:453: case PARSE_CHAR_CODE_INPUT:
      002E35 80 9B            [24] 2552 	sjmp	00115$
      002E37                       2553 00104$:
                                   2554 ;	src/command_handlers.c:454: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
      002E37 90 19 06         [24] 2555 	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
      002E3A 74 06            [12] 2556 	mov	a,#0x06
      002E3C F0               [24] 2557 	movx	@dptr,a
                                   2558 ;	src/command_handlers.c:455: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
      002E3D 90 18 68         [24] 2559 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002E40 03               [12] 2560 	rr	a
      002E41 F0               [24] 2561 	movx	@dptr,a
      002E42 E4               [12] 2562 	clr	a
      002E43 A3               [24] 2563 	inc	dptr
      002E44 F0               [24] 2564 	movx	@dptr,a
      002E45 90 18 6A         [24] 2565 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002E48 74 FC            [12] 2566 	mov	a,#_action_for_display_custom_char_current_state_65536_112
      002E4A F0               [24] 2567 	movx	@dptr,a
      002E4B 74 18            [12] 2568 	mov	a,#(_action_for_display_custom_char_current_state_65536_112 >> 8)
      002E4D A3               [24] 2569 	inc	dptr
      002E4E F0               [24] 2570 	movx	@dptr,a
      002E4F E4               [12] 2571 	clr	a
      002E50 A3               [24] 2572 	inc	dptr
      002E51 F0               [24] 2573 	movx	@dptr,a
      002E52 90 18 6D         [24] 2574 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002E55 74 FB            [12] 2575 	mov	a,#_action_for_display_custom_char_char_code_number_65536_112
      002E57 F0               [24] 2576 	movx	@dptr,a
      002E58 74 18            [12] 2577 	mov	a,#(_action_for_display_custom_char_char_code_number_65536_112 >> 8)
      002E5A A3               [24] 2578 	inc	dptr
      002E5B F0               [24] 2579 	movx	@dptr,a
      002E5C E4               [12] 2580 	clr	a
      002E5D A3               [24] 2581 	inc	dptr
      002E5E F0               [24] 2582 	movx	@dptr,a
      002E5F 90 18 70         [24] 2583 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002E62 74 06            [12] 2584 	mov	a,#_action_for_display_custom_char_state_on_error_65536_112
      002E64 F0               [24] 2585 	movx	@dptr,a
      002E65 74 19            [12] 2586 	mov	a,#(_action_for_display_custom_char_state_on_error_65536_112 >> 8)
      002E67 A3               [24] 2587 	inc	dptr
      002E68 F0               [24] 2588 	movx	@dptr,a
      002E69 E4               [12] 2589 	clr	a
      002E6A A3               [24] 2590 	inc	dptr
      002E6B F0               [24] 2591 	movx	@dptr,a
      002E6C 90 18 F8         [24] 2592 	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
      002E6F 75 F0 00         [24] 2593 	mov	b,#0x00
      002E72 12 27 32         [24] 2594 	lcall	_check_input_buffer_and_extract_number
                                   2595 ;	src/command_handlers.c:456: if(current_state==PARSE_CHAR_CODE_INPUT)
      002E75 90 18 FC         [24] 2596 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002E78 E0               [24] 2597 	movx	a,@dptr
      002E79 FF               [12] 2598 	mov	r7,a
      002E7A BF 07 02         [24] 2599 	cjne	r7,#0x07,00166$
      002E7D 80 03            [24] 2600 	sjmp	00167$
      002E7F                       2601 00166$:
      002E7F 02 2D D2         [24] 2602 	ljmp	00115$
      002E82                       2603 00167$:
                                   2604 ;	src/command_handlers.c:458: printf("\r\nCharcode to display is %d:",char_code_number);
      002E82 90 18 FB         [24] 2605 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002E85 E0               [24] 2606 	movx	a,@dptr
      002E86 FF               [12] 2607 	mov	r7,a
      002E87 7E 00            [12] 2608 	mov	r6,#0x00
      002E89 C0 07            [24] 2609 	push	ar7
      002E8B C0 06            [24] 2610 	push	ar6
      002E8D 74 B0            [12] 2611 	mov	a,#___str_39
      002E8F C0 E0            [24] 2612 	push	acc
      002E91 74 4E            [12] 2613 	mov	a,#(___str_39 >> 8)
      002E93 C0 E0            [24] 2614 	push	acc
      002E95 74 80            [12] 2615 	mov	a,#0x80
      002E97 C0 E0            [24] 2616 	push	acc
      002E99 12 3D 9B         [24] 2617 	lcall	_printf
      002E9C E5 81            [12] 2618 	mov	a,sp
      002E9E 24 FB            [12] 2619 	add	a,#0xfb
      002EA0 F5 81            [12] 2620 	mov	sp,a
                                   2621 ;	src/command_handlers.c:459: if(char_code_number>0 && char_code_number<=8)
      002EA2 90 18 FB         [24] 2622 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002EA5 E0               [24] 2623 	movx	a,@dptr
      002EA6 FF               [12] 2624 	mov	r7,a
      002EA7 60 14            [24] 2625 	jz	00106$
      002EA9 EF               [12] 2626 	mov	a,r7
      002EAA 24 F7            [12] 2627 	add	a,#0xff - 0x08
      002EAC 40 0F            [24] 2628 	jc	00106$
                                   2629 ;	src/command_handlers.c:461: char_code_number-=1;
      002EAE EF               [12] 2630 	mov	a,r7
      002EAF 14               [12] 2631 	dec	a
      002EB0 90 18 FB         [24] 2632 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002EB3 F0               [24] 2633 	movx	@dptr,a
                                   2634 ;	src/command_handlers.c:462: current_state=DISPLAY_CGRAM_CHAR;
      002EB4 90 18 FC         [24] 2635 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002EB7 74 0A            [12] 2636 	mov	a,#0x0a
      002EB9 F0               [24] 2637 	movx	@dptr,a
      002EBA 02 2D D2         [24] 2638 	ljmp	00115$
      002EBD                       2639 00106$:
                                   2640 ;	src/command_handlers.c:466: printf("\r\nInvalid Input:");
      002EBD 74 3E            [12] 2641 	mov	a,#___str_36
      002EBF C0 E0            [24] 2642 	push	acc
      002EC1 74 4E            [12] 2643 	mov	a,#(___str_36 >> 8)
      002EC3 C0 E0            [24] 2644 	push	acc
      002EC5 74 80            [12] 2645 	mov	a,#0x80
      002EC7 C0 E0            [24] 2646 	push	acc
      002EC9 12 3D 9B         [24] 2647 	lcall	_printf
      002ECC 15 81            [12] 2648 	dec	sp
      002ECE 15 81            [12] 2649 	dec	sp
      002ED0 15 81            [12] 2650 	dec	sp
                                   2651 ;	src/command_handlers.c:467: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002ED2 90 18 FC         [24] 2652 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002ED5 74 06            [12] 2653 	mov	a,#0x06
      002ED7 F0               [24] 2654 	movx	@dptr,a
                                   2655 ;	src/command_handlers.c:471: break;
      002ED8 02 2D D2         [24] 2656 	ljmp	00115$
                                   2657 ;	src/command_handlers.c:472: case DISPLAY_CGRAM_CHAR:
      002EDB                       2658 00111$:
                                   2659 ;	src/command_handlers.c:473: printf("\r\nDisplay custom char:");
      002EDB 74 CD            [12] 2660 	mov	a,#___str_40
      002EDD C0 E0            [24] 2661 	push	acc
      002EDF 74 4E            [12] 2662 	mov	a,#(___str_40 >> 8)
      002EE1 C0 E0            [24] 2663 	push	acc
      002EE3 74 80            [12] 2664 	mov	a,#0x80
      002EE5 C0 E0            [24] 2665 	push	acc
      002EE7 12 3D 9B         [24] 2666 	lcall	_printf
      002EEA 15 81            [12] 2667 	dec	sp
      002EEC 15 81            [12] 2668 	dec	sp
      002EEE 15 81            [12] 2669 	dec	sp
                                   2670 ;	src/command_handlers.c:479: }
      002EF0 7F 01            [12] 2671 	mov	r7,#0x01
      002EF2 10 AF 02         [24] 2672 	jbc	ea,00170$
      002EF5 7F 00            [12] 2673 	mov	r7,#0x00
      002EF7                       2674 00170$:
                                   2675 ;	src/command_handlers.c:476: lcd_clear();
      002EF7 C0 07            [24] 2676 	push	ar7
      002EF9 12 33 F3         [24] 2677 	lcall	_lcd_clear
      002EFC D0 07            [24] 2678 	pop	ar7
                                   2679 ;	src/command_handlers.c:477: display_custom_char(char_code_number);
      002EFE 90 18 FB         [24] 2680 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002F01 E0               [24] 2681 	movx	a,@dptr
      002F02 F5 82            [12] 2682 	mov	dpl,a
      002F04 C0 07            [24] 2683 	push	ar7
      002F06 12 37 7A         [24] 2684 	lcall	_display_custom_char
                                   2685 ;	src/command_handlers.c:478: current_time_display();
      002F09 12 39 EE         [24] 2686 	lcall	_current_time_display
      002F0C D0 07            [24] 2687 	pop	ar7
      002F0E EF               [12] 2688 	mov	a,r7
      002F0F 13               [12] 2689 	rrc	a
      002F10 92 AF            [24] 2690 	mov	ea,c
                                   2691 ;	src/command_handlers.c:480: current_state = EXIT;
      002F12 90 18 FC         [24] 2692 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002F15 74 0B            [12] 2693 	mov	a,#0x0b
      002F17 F0               [24] 2694 	movx	@dptr,a
                                   2695 ;	src/command_handlers.c:481: break;
      002F18 02 2D D2         [24] 2696 	ljmp	00115$
                                   2697 ;	src/command_handlers.c:482: case EXIT:
      002F1B                       2698 00112$:
                                   2699 ;	src/command_handlers.c:483: wait_for_input = false;
      002F1B 90 18 FD         [24] 2700 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002F1E E4               [12] 2701 	clr	a
      002F1F F0               [24] 2702 	movx	@dptr,a
                                   2703 ;	src/command_handlers.c:484: break;
                                   2704 ;	src/command_handlers.c:487: }
                                   2705 ;	src/command_handlers.c:490: }
      002F20 02 2D D2         [24] 2706 	ljmp	00115$
                                   2707 ;------------------------------------------------------------
                                   2708 ;Allocation info for local variables in function 'action_for_character_creation'
                                   2709 ;------------------------------------------------------------
                                   2710 ;input_buffer              Allocated with name '_action_for_character_creation_input_buffer_65536_121'
                                   2711 ;error_message             Allocated with name '_action_for_character_creation_error_message_65536_121'
                                   2712 ;char_code_row_value       Allocated with name '_action_for_character_creation_char_code_row_value_65536_121'
                                   2713 ;char_code_number          Allocated with name '_action_for_character_creation_char_code_number_65536_121'
                                   2714 ;current_state             Allocated with name '_action_for_character_creation_current_state_65536_121'
                                   2715 ;wait_for_input            Allocated with name '_action_for_character_creation_wait_for_input_65536_121'
                                   2716 ;char_code_row_values      Allocated with name '_action_for_character_creation_char_code_row_values_65536_121'
                                   2717 ;state_on_error            Allocated with name '_action_for_character_creation_state_on_error_65536_121'
                                   2718 ;i                         Allocated with name '_action_for_character_creation_i_262144_128'
                                   2719 ;------------------------------------------------------------
                                   2720 ;	src/command_handlers.c:492: void action_for_character_creation(void)
                                   2721 ;	-----------------------------------------
                                   2722 ;	 function action_for_character_creation
                                   2723 ;	-----------------------------------------
      002F23                       2724 _action_for_character_creation:
                                   2725 ;	src/command_handlers.c:496: char *error_message = "\r\nOut of range\r\n";
                                   2726 ;	src/command_handlers.c:497: uint8_t char_code_row_value = 0;
      002F23 90 19 0A         [24] 2727 	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
      002F26 E4               [12] 2728 	clr	a
      002F27 F0               [24] 2729 	movx	@dptr,a
                                   2730 ;	src/command_handlers.c:498: uint8_t char_code_number = 0;
      002F28 90 19 0B         [24] 2731 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      002F2B F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	src/command_handlers.c:499: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002F2C 90 19 0C         [24] 2734 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002F2F 74 06            [12] 2735 	mov	a,#0x06
      002F31 F0               [24] 2736 	movx	@dptr,a
                                   2737 ;	src/command_handlers.c:500: bool wait_for_input = true;
      002F32 90 19 0D         [24] 2738 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      002F35 74 01            [12] 2739 	mov	a,#0x01
      002F37 F0               [24] 2740 	movx	@dptr,a
                                   2741 ;	src/command_handlers.c:504: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002F38 90 19 16         [24] 2742 	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
      002F3B 04               [12] 2743 	inc	a
      002F3C F0               [24] 2744 	movx	@dptr,a
                                   2745 ;	src/command_handlers.c:505: while (wait_for_input)
      002F3D                       2746 00125$:
      002F3D 90 19 0D         [24] 2747 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      002F40 E0               [24] 2748 	movx	a,@dptr
      002F41 70 01            [24] 2749 	jnz	00197$
      002F43 22               [24] 2750 	ret
      002F44                       2751 00197$:
                                   2752 ;	src/command_handlers.c:507: switch (current_state)
      002F44 90 19 0C         [24] 2753 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002F47 E0               [24] 2754 	movx	a,@dptr
      002F48 FF               [12] 2755 	mov	r7,a
      002F49 BF 06 02         [24] 2756 	cjne	r7,#0x06,00198$
      002F4C 80 19            [24] 2757 	sjmp	00101$
      002F4E                       2758 00198$:
      002F4E BF 07 02         [24] 2759 	cjne	r7,#0x07,00199$
      002F51 80 55            [24] 2760 	sjmp	00104$
      002F53                       2761 00199$:
      002F53 BF 08 03         [24] 2762 	cjne	r7,#0x08,00200$
      002F56 02 30 2C         [24] 2763 	ljmp	00111$
      002F59                       2764 00200$:
      002F59 BF 09 03         [24] 2765 	cjne	r7,#0x09,00201$
      002F5C 02 31 45         [24] 2766 	ljmp	00121$
      002F5F                       2767 00201$:
      002F5F BF 0B 03         [24] 2768 	cjne	r7,#0x0b,00202$
      002F62 02 31 7A         [24] 2769 	ljmp	00122$
      002F65                       2770 00202$:
                                   2771 ;	src/command_handlers.c:509: case GET_CHAR_CODE_INPUT_FROM_USER:
      002F65 80 D6            [24] 2772 	sjmp	00125$
      002F67                       2773 00101$:
                                   2774 ;	src/command_handlers.c:510: printf("\r\nEnter the char code to create (between 1 and 8):");
      002F67 74 E4            [12] 2775 	mov	a,#___str_41
      002F69 C0 E0            [24] 2776 	push	acc
      002F6B 74 4E            [12] 2777 	mov	a,#(___str_41 >> 8)
      002F6D C0 E0            [24] 2778 	push	acc
      002F6F 74 80            [12] 2779 	mov	a,#0x80
      002F71 C0 E0            [24] 2780 	push	acc
      002F73 12 3D 9B         [24] 2781 	lcall	_printf
      002F76 15 81            [12] 2782 	dec	sp
      002F78 15 81            [12] 2783 	dec	sp
      002F7A 15 81            [12] 2784 	dec	sp
                                   2785 ;	src/command_handlers.c:511: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002F7C 90 19 1A         [24] 2786 	mov	dptr,#_getstr_PARM_2
      002F7F 74 03            [12] 2787 	mov	a,#0x03
      002F81 F0               [24] 2788 	movx	@dptr,a
      002F82 E4               [12] 2789 	clr	a
      002F83 A3               [24] 2790 	inc	dptr
      002F84 F0               [24] 2791 	movx	@dptr,a
      002F85 90 19 1C         [24] 2792 	mov	dptr,#_getstr_PARM_3
      002F88 74 D0            [12] 2793 	mov	a,#___str_32
      002F8A F0               [24] 2794 	movx	@dptr,a
      002F8B 74 4D            [12] 2795 	mov	a,#(___str_32 >> 8)
      002F8D A3               [24] 2796 	inc	dptr
      002F8E F0               [24] 2797 	movx	@dptr,a
      002F8F 74 80            [12] 2798 	mov	a,#0x80
      002F91 A3               [24] 2799 	inc	dptr
      002F92 F0               [24] 2800 	movx	@dptr,a
      002F93 90 19 07         [24] 2801 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      002F96 75 F0 00         [24] 2802 	mov	b,#0x00
      002F99 12 31 AF         [24] 2803 	lcall	_getstr
      002F9C E5 82            [12] 2804 	mov	a,dpl
      002F9E 70 9D            [24] 2805 	jnz	00125$
                                   2806 ;	src/command_handlers.c:513: current_state = PARSE_CHAR_CODE_INPUT;
      002FA0 90 19 0C         [24] 2807 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002FA3 74 07            [12] 2808 	mov	a,#0x07
      002FA5 F0               [24] 2809 	movx	@dptr,a
                                   2810 ;	src/command_handlers.c:515: break;
                                   2811 ;	src/command_handlers.c:516: case PARSE_CHAR_CODE_INPUT:
      002FA6 80 95            [24] 2812 	sjmp	00125$
      002FA8                       2813 00104$:
                                   2814 ;	src/command_handlers.c:517: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
      002FA8 90 19 16         [24] 2815 	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
      002FAB 74 06            [12] 2816 	mov	a,#0x06
      002FAD F0               [24] 2817 	movx	@dptr,a
                                   2818 ;	src/command_handlers.c:518: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
      002FAE 90 18 68         [24] 2819 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002FB1 03               [12] 2820 	rr	a
      002FB2 F0               [24] 2821 	movx	@dptr,a
      002FB3 E4               [12] 2822 	clr	a
      002FB4 A3               [24] 2823 	inc	dptr
      002FB5 F0               [24] 2824 	movx	@dptr,a
      002FB6 90 18 6A         [24] 2825 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002FB9 74 0C            [12] 2826 	mov	a,#_action_for_character_creation_current_state_65536_121
      002FBB F0               [24] 2827 	movx	@dptr,a
      002FBC 74 19            [12] 2828 	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
      002FBE A3               [24] 2829 	inc	dptr
      002FBF F0               [24] 2830 	movx	@dptr,a
      002FC0 E4               [12] 2831 	clr	a
      002FC1 A3               [24] 2832 	inc	dptr
      002FC2 F0               [24] 2833 	movx	@dptr,a
      002FC3 90 18 6D         [24] 2834 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002FC6 74 0B            [12] 2835 	mov	a,#_action_for_character_creation_char_code_number_65536_121
      002FC8 F0               [24] 2836 	movx	@dptr,a
      002FC9 74 19            [12] 2837 	mov	a,#(_action_for_character_creation_char_code_number_65536_121 >> 8)
      002FCB A3               [24] 2838 	inc	dptr
      002FCC F0               [24] 2839 	movx	@dptr,a
      002FCD E4               [12] 2840 	clr	a
      002FCE A3               [24] 2841 	inc	dptr
      002FCF F0               [24] 2842 	movx	@dptr,a
      002FD0 90 18 70         [24] 2843 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002FD3 74 16            [12] 2844 	mov	a,#_action_for_character_creation_state_on_error_65536_121
      002FD5 F0               [24] 2845 	movx	@dptr,a
      002FD6 74 19            [12] 2846 	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
      002FD8 A3               [24] 2847 	inc	dptr
      002FD9 F0               [24] 2848 	movx	@dptr,a
      002FDA E4               [12] 2849 	clr	a
      002FDB A3               [24] 2850 	inc	dptr
      002FDC F0               [24] 2851 	movx	@dptr,a
      002FDD 90 19 07         [24] 2852 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      002FE0 75 F0 00         [24] 2853 	mov	b,#0x00
      002FE3 12 27 32         [24] 2854 	lcall	_check_input_buffer_and_extract_number
                                   2855 ;	src/command_handlers.c:519: if(current_state==PARSE_CHAR_CODE_INPUT)
      002FE6 90 19 0C         [24] 2856 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002FE9 E0               [24] 2857 	movx	a,@dptr
      002FEA FF               [12] 2858 	mov	r7,a
      002FEB BF 07 02         [24] 2859 	cjne	r7,#0x07,00204$
      002FEE 80 03            [24] 2860 	sjmp	00205$
      002FF0                       2861 00204$:
      002FF0 02 2F 3D         [24] 2862 	ljmp	00125$
      002FF3                       2863 00205$:
                                   2864 ;	src/command_handlers.c:521: if(char_code_number>0 && char_code_number<=8)
      002FF3 90 19 0B         [24] 2865 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      002FF6 E0               [24] 2866 	movx	a,@dptr
      002FF7 FF               [12] 2867 	mov	r7,a
      002FF8 60 14            [24] 2868 	jz	00106$
      002FFA EF               [12] 2869 	mov	a,r7
      002FFB 24 F7            [12] 2870 	add	a,#0xff - 0x08
      002FFD 40 0F            [24] 2871 	jc	00106$
                                   2872 ;	src/command_handlers.c:523: char_code_number-=1;
      002FFF EF               [12] 2873 	mov	a,r7
      003000 14               [12] 2874 	dec	a
      003001 90 19 0B         [24] 2875 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      003004 F0               [24] 2876 	movx	@dptr,a
                                   2877 ;	src/command_handlers.c:524: current_state=GET_ROW_VALUE_AND_PARSE;
      003005 90 19 0C         [24] 2878 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003008 74 08            [12] 2879 	mov	a,#0x08
      00300A F0               [24] 2880 	movx	@dptr,a
      00300B 02 2F 3D         [24] 2881 	ljmp	00125$
      00300E                       2882 00106$:
                                   2883 ;	src/command_handlers.c:528: printf("\r\nInvalid Input:");
      00300E 74 3E            [12] 2884 	mov	a,#___str_36
      003010 C0 E0            [24] 2885 	push	acc
      003012 74 4E            [12] 2886 	mov	a,#(___str_36 >> 8)
      003014 C0 E0            [24] 2887 	push	acc
      003016 74 80            [12] 2888 	mov	a,#0x80
      003018 C0 E0            [24] 2889 	push	acc
      00301A 12 3D 9B         [24] 2890 	lcall	_printf
      00301D 15 81            [12] 2891 	dec	sp
      00301F 15 81            [12] 2892 	dec	sp
      003021 15 81            [12] 2893 	dec	sp
                                   2894 ;	src/command_handlers.c:529: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      003023 90 19 0C         [24] 2895 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003026 74 06            [12] 2896 	mov	a,#0x06
      003028 F0               [24] 2897 	movx	@dptr,a
                                   2898 ;	src/command_handlers.c:533: break;
      003029 02 2F 3D         [24] 2899 	ljmp	00125$
                                   2900 ;	src/command_handlers.c:534: case GET_ROW_VALUE_AND_PARSE:
      00302C                       2901 00111$:
                                   2902 ;	src/command_handlers.c:536: for(int8_t i=0;i<8;i++)
      00302C 90 19 17         [24] 2903 	mov	dptr,#_action_for_character_creation_i_262144_128
      00302F E4               [12] 2904 	clr	a
      003030 F0               [24] 2905 	movx	@dptr,a
      003031                       2906 00129$:
      003031 90 19 17         [24] 2907 	mov	dptr,#_action_for_character_creation_i_262144_128
      003034 E0               [24] 2908 	movx	a,@dptr
      003035 FF               [12] 2909 	mov	r7,a
      003036 C3               [12] 2910 	clr	c
      003037 64 80            [12] 2911 	xrl	a,#0x80
      003039 94 88            [12] 2912 	subb	a,#0x88
      00303B 40 03            [24] 2913 	jc	00208$
      00303D 02 31 3C         [24] 2914 	ljmp	00120$
      003040                       2915 00208$:
                                   2916 ;	src/command_handlers.c:538: printf("\r\nEnter the value for row %d in hex without 0x prefix:",i+1);
      003040 EF               [12] 2917 	mov	a,r7
      003041 FD               [12] 2918 	mov	r5,a
      003042 33               [12] 2919 	rlc	a
      003043 95 E0            [12] 2920 	subb	a,acc
      003045 FE               [12] 2921 	mov	r6,a
      003046 74 01            [12] 2922 	mov	a,#0x01
      003048 2D               [12] 2923 	add	a,r5
      003049 FB               [12] 2924 	mov	r3,a
      00304A E4               [12] 2925 	clr	a
      00304B 3E               [12] 2926 	addc	a,r6
      00304C FC               [12] 2927 	mov	r4,a
      00304D C0 07            [24] 2928 	push	ar7
      00304F C0 06            [24] 2929 	push	ar6
      003051 C0 05            [24] 2930 	push	ar5
      003053 C0 03            [24] 2931 	push	ar3
      003055 C0 04            [24] 2932 	push	ar4
      003057 74 17            [12] 2933 	mov	a,#___str_42
      003059 C0 E0            [24] 2934 	push	acc
      00305B 74 4F            [12] 2935 	mov	a,#(___str_42 >> 8)
      00305D C0 E0            [24] 2936 	push	acc
      00305F 74 80            [12] 2937 	mov	a,#0x80
      003061 C0 E0            [24] 2938 	push	acc
      003063 12 3D 9B         [24] 2939 	lcall	_printf
      003066 E5 81            [12] 2940 	mov	a,sp
      003068 24 FB            [12] 2941 	add	a,#0xfb
      00306A F5 81            [12] 2942 	mov	sp,a
                                   2943 ;	src/command_handlers.c:539: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      00306C 90 19 1A         [24] 2944 	mov	dptr,#_getstr_PARM_2
      00306F 74 03            [12] 2945 	mov	a,#0x03
      003071 F0               [24] 2946 	movx	@dptr,a
      003072 E4               [12] 2947 	clr	a
      003073 A3               [24] 2948 	inc	dptr
      003074 F0               [24] 2949 	movx	@dptr,a
      003075 90 19 1C         [24] 2950 	mov	dptr,#_getstr_PARM_3
      003078 74 D0            [12] 2951 	mov	a,#___str_32
      00307A F0               [24] 2952 	movx	@dptr,a
      00307B 74 4D            [12] 2953 	mov	a,#(___str_32 >> 8)
      00307D A3               [24] 2954 	inc	dptr
      00307E F0               [24] 2955 	movx	@dptr,a
      00307F 74 80            [12] 2956 	mov	a,#0x80
      003081 A3               [24] 2957 	inc	dptr
      003082 F0               [24] 2958 	movx	@dptr,a
      003083 90 19 07         [24] 2959 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      003086 75 F0 00         [24] 2960 	mov	b,#0x00
      003089 12 31 AF         [24] 2961 	lcall	_getstr
      00308C E5 82            [12] 2962 	mov	a,dpl
      00308E D0 05            [24] 2963 	pop	ar5
      003090 D0 06            [24] 2964 	pop	ar6
      003092 D0 07            [24] 2965 	pop	ar7
      003094 60 03            [24] 2966 	jz	00209$
      003096 02 31 32         [24] 2967 	ljmp	00130$
      003099                       2968 00209$:
                                   2969 ;	src/command_handlers.c:541: check_input_buffer_and_extract_hex_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_row_value,&state_on_error);
      003099 90 18 7E         [24] 2970 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_2
      00309C 74 03            [12] 2971 	mov	a,#0x03
      00309E F0               [24] 2972 	movx	@dptr,a
      00309F E4               [12] 2973 	clr	a
      0030A0 A3               [24] 2974 	inc	dptr
      0030A1 F0               [24] 2975 	movx	@dptr,a
      0030A2 90 18 80         [24] 2976 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      0030A5 74 0C            [12] 2977 	mov	a,#_action_for_character_creation_current_state_65536_121
      0030A7 F0               [24] 2978 	movx	@dptr,a
      0030A8 74 19            [12] 2979 	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
      0030AA A3               [24] 2980 	inc	dptr
      0030AB F0               [24] 2981 	movx	@dptr,a
      0030AC E4               [12] 2982 	clr	a
      0030AD A3               [24] 2983 	inc	dptr
      0030AE F0               [24] 2984 	movx	@dptr,a
      0030AF 90 18 83         [24] 2985 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
      0030B2 74 0A            [12] 2986 	mov	a,#_action_for_character_creation_char_code_row_value_65536_121
      0030B4 F0               [24] 2987 	movx	@dptr,a
      0030B5 74 19            [12] 2988 	mov	a,#(_action_for_character_creation_char_code_row_value_65536_121 >> 8)
      0030B7 A3               [24] 2989 	inc	dptr
      0030B8 F0               [24] 2990 	movx	@dptr,a
      0030B9 E4               [12] 2991 	clr	a
      0030BA A3               [24] 2992 	inc	dptr
      0030BB F0               [24] 2993 	movx	@dptr,a
      0030BC 90 18 86         [24] 2994 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
      0030BF 74 16            [12] 2995 	mov	a,#_action_for_character_creation_state_on_error_65536_121
      0030C1 F0               [24] 2996 	movx	@dptr,a
      0030C2 74 19            [12] 2997 	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
      0030C4 A3               [24] 2998 	inc	dptr
      0030C5 F0               [24] 2999 	movx	@dptr,a
      0030C6 E4               [12] 3000 	clr	a
      0030C7 A3               [24] 3001 	inc	dptr
      0030C8 F0               [24] 3002 	movx	@dptr,a
      0030C9 90 19 07         [24] 3003 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      0030CC 75 F0 00         [24] 3004 	mov	b,#0x00
      0030CF C0 07            [24] 3005 	push	ar7
      0030D1 C0 06            [24] 3006 	push	ar6
      0030D3 C0 05            [24] 3007 	push	ar5
      0030D5 12 2A 7F         [24] 3008 	lcall	_check_input_buffer_and_extract_hex_number
      0030D8 D0 05            [24] 3009 	pop	ar5
      0030DA D0 06            [24] 3010 	pop	ar6
      0030DC D0 07            [24] 3011 	pop	ar7
                                   3012 ;	src/command_handlers.c:542: if(current_state!=GET_ROW_VALUE_AND_PARSE )
      0030DE 90 19 0C         [24] 3013 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      0030E1 E0               [24] 3014 	movx	a,@dptr
      0030E2 FC               [12] 3015 	mov	r4,a
      0030E3 BC 08 02         [24] 3016 	cjne	r4,#0x08,00210$
      0030E6 80 0E            [24] 3017 	sjmp	00116$
      0030E8                       3018 00210$:
                                   3019 ;	src/command_handlers.c:544: current_state = GET_ROW_VALUE_AND_PARSE;
      0030E8 90 19 0C         [24] 3020 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      0030EB 74 08            [12] 3021 	mov	a,#0x08
      0030ED F0               [24] 3022 	movx	@dptr,a
                                   3023 ;	src/command_handlers.c:545: i--;
      0030EE EF               [12] 3024 	mov	a,r7
      0030EF 14               [12] 3025 	dec	a
      0030F0 90 19 17         [24] 3026 	mov	dptr,#_action_for_character_creation_i_262144_128
      0030F3 F0               [24] 3027 	movx	@dptr,a
      0030F4 80 3C            [24] 3028 	sjmp	00130$
      0030F6                       3029 00116$:
                                   3030 ;	src/command_handlers.c:547: else if(char_code_row_value > 0x1F)
      0030F6 90 19 0A         [24] 3031 	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
      0030F9 E0               [24] 3032 	movx	a,@dptr
      0030FA FC               [12] 3033 	mov  r4,a
      0030FB 24 E0            [12] 3034 	add	a,#0xff - 0x1f
      0030FD 50 27            [24] 3035 	jnc	00113$
                                   3036 ;	src/command_handlers.c:549: printf("\r\nRow value out of range. Must be between 0x00 and 0x1F.\r\n");
      0030FF C0 07            [24] 3037 	push	ar7
      003101 74 4E            [12] 3038 	mov	a,#___str_43
      003103 C0 E0            [24] 3039 	push	acc
      003105 74 4F            [12] 3040 	mov	a,#(___str_43 >> 8)
      003107 C0 E0            [24] 3041 	push	acc
      003109 74 80            [12] 3042 	mov	a,#0x80
      00310B C0 E0            [24] 3043 	push	acc
      00310D 12 3D 9B         [24] 3044 	lcall	_printf
      003110 15 81            [12] 3045 	dec	sp
      003112 15 81            [12] 3046 	dec	sp
      003114 15 81            [12] 3047 	dec	sp
      003116 D0 07            [24] 3048 	pop	ar7
                                   3049 ;	src/command_handlers.c:550: current_state = GET_ROW_VALUE_AND_PARSE;
      003118 90 19 0C         [24] 3050 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      00311B 74 08            [12] 3051 	mov	a,#0x08
      00311D F0               [24] 3052 	movx	@dptr,a
                                   3053 ;	src/command_handlers.c:551: i--;
      00311E EF               [12] 3054 	mov	a,r7
      00311F 14               [12] 3055 	dec	a
      003120 90 19 17         [24] 3056 	mov	dptr,#_action_for_character_creation_i_262144_128
      003123 F0               [24] 3057 	movx	@dptr,a
      003124 80 0C            [24] 3058 	sjmp	00130$
      003126                       3059 00113$:
                                   3060 ;	src/command_handlers.c:555: char_code_row_values[i]=char_code_row_value;
      003126 ED               [12] 3061 	mov	a,r5
      003127 24 0E            [12] 3062 	add	a,#_action_for_character_creation_char_code_row_values_65536_121
      003129 F5 82            [12] 3063 	mov	dpl,a
      00312B EE               [12] 3064 	mov	a,r6
      00312C 34 19            [12] 3065 	addc	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
      00312E F5 83            [12] 3066 	mov	dph,a
      003130 EC               [12] 3067 	mov	a,r4
      003131 F0               [24] 3068 	movx	@dptr,a
      003132                       3069 00130$:
                                   3070 ;	src/command_handlers.c:536: for(int8_t i=0;i<8;i++)
      003132 90 19 17         [24] 3071 	mov	dptr,#_action_for_character_creation_i_262144_128
      003135 E0               [24] 3072 	movx	a,@dptr
      003136 24 01            [12] 3073 	add	a,#0x01
      003138 F0               [24] 3074 	movx	@dptr,a
      003139 02 30 31         [24] 3075 	ljmp	00129$
      00313C                       3076 00120$:
                                   3077 ;	src/command_handlers.c:559: current_state = CREATE_CGRAM_CHAR;
      00313C 90 19 0C         [24] 3078 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      00313F 74 09            [12] 3079 	mov	a,#0x09
      003141 F0               [24] 3080 	movx	@dptr,a
                                   3081 ;	src/command_handlers.c:560: break;
      003142 02 2F 3D         [24] 3082 	ljmp	00125$
                                   3083 ;	src/command_handlers.c:561: case CREATE_CGRAM_CHAR:
      003145                       3084 00121$:
                                   3085 ;	src/command_handlers.c:567: }
      003145 7F 01            [12] 3086 	mov	r7,#0x01
      003147 10 AF 02         [24] 3087 	jbc	ea,00212$
      00314A 7F 00            [12] 3088 	mov	r7,#0x00
      00314C                       3089 00212$:
                                   3090 ;	src/command_handlers.c:564: lcd_clear();
      00314C C0 07            [24] 3091 	push	ar7
      00314E 12 33 F3         [24] 3092 	lcall	_lcd_clear
                                   3093 ;	src/command_handlers.c:565: lcd_create_char(char_code_number,char_code_row_values);
      003151 90 19 0B         [24] 3094 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      003154 E0               [24] 3095 	movx	a,@dptr
      003155 FE               [12] 3096 	mov	r6,a
      003156 90 19 38         [24] 3097 	mov	dptr,#_lcd_create_char_PARM_2
      003159 74 0E            [12] 3098 	mov	a,#_action_for_character_creation_char_code_row_values_65536_121
      00315B F0               [24] 3099 	movx	@dptr,a
      00315C 74 19            [12] 3100 	mov	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
      00315E A3               [24] 3101 	inc	dptr
      00315F F0               [24] 3102 	movx	@dptr,a
      003160 E4               [12] 3103 	clr	a
      003161 A3               [24] 3104 	inc	dptr
      003162 F0               [24] 3105 	movx	@dptr,a
      003163 8E 82            [24] 3106 	mov	dpl,r6
      003165 12 36 E0         [24] 3107 	lcall	_lcd_create_char
                                   3108 ;	src/command_handlers.c:566: current_time_display();
      003168 12 39 EE         [24] 3109 	lcall	_current_time_display
      00316B D0 07            [24] 3110 	pop	ar7
      00316D EF               [12] 3111 	mov	a,r7
      00316E 13               [12] 3112 	rrc	a
      00316F 92 AF            [24] 3113 	mov	ea,c
                                   3114 ;	src/command_handlers.c:569: current_state = EXIT;
      003171 90 19 0C         [24] 3115 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003174 74 0B            [12] 3116 	mov	a,#0x0b
      003176 F0               [24] 3117 	movx	@dptr,a
                                   3118 ;	src/command_handlers.c:570: break;
      003177 02 2F 3D         [24] 3119 	ljmp	00125$
                                   3120 ;	src/command_handlers.c:571: case EXIT:
      00317A                       3121 00122$:
                                   3122 ;	src/command_handlers.c:572: wait_for_input = false;
      00317A 90 19 0D         [24] 3123 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      00317D E4               [12] 3124 	clr	a
      00317E F0               [24] 3125 	movx	@dptr,a
                                   3126 ;	src/command_handlers.c:573: break;
                                   3127 ;	src/command_handlers.c:576: }
                                   3128 ;	src/command_handlers.c:578: }
      00317F 02 2F 3D         [24] 3129 	ljmp	00125$
                                   3130 	.area CSEG    (CODE)
                                   3131 	.area CONST   (CODE)
                                   3132 	.area CONST   (CODE)
      0047FF                       3133 ___str_0:
      0047FF 0D                    3134 	.db 0x0d
      004800 0A                    3135 	.db 0x0a
      004801 2D 2D 2D 2D 2D 2D 2D  3136 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00483D 2D 2D 2D 2D 2D 2D 2D  3137 	.ascii "-------"
      004844 00                    3138 	.db 0x00
                                   3139 	.area CSEG    (CODE)
                                   3140 	.area CONST   (CODE)
      004845                       3141 ___str_1:
      004845 0D                    3142 	.db 0x0d
      004846 0A                    3143 	.db 0x0a
      004847 20 20 20 20 20 20 20  3144 	.ascii "                             WRITE  MENU           "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 57 52 49 54 45 20
             20 4D 45 4E 55 20 20
             20 20 20 20 20 20 20
             20 20
      00487A 00                    3145 	.db 0x00
                                   3146 	.area CSEG    (CODE)
                                   3147 	.area CONST   (CODE)
      00487B                       3148 ___str_2:
      00487B 0D                    3149 	.db 0x0d
      00487C 0A                    3150 	.db 0x0a
      00487D 45 78 69 74 69 6E 67  3151 	.ascii "Exiting add menu..."
             20 61 64 64 20 6D 65
             6E 75 2E 2E 2E
      004890 00                    3152 	.db 0x00
                                   3153 	.area CSEG    (CODE)
                                   3154 	.area CONST   (CODE)
      004891                       3155 ___str_3:
      004891 0D                    3156 	.db 0x0d
      004892 0A                    3157 	.db 0x0a
      004893 20 20 20 20 20 20 20  3158 	.ascii "                             Clearing the display        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 43 6C 65 61 72 69
             6E 67 20 74 68 65 20
             64 69 73 70 6C 61 79
             20 20 20 20 20 20 20
             20
      0048CC 00                    3159 	.db 0x00
                                   3160 	.area CSEG    (CODE)
                                   3161 	.area CONST   (CODE)
      0048CD                       3162 ___str_4:
      0048CD 0D                    3163 	.db 0x0d
      0048CE 0A                    3164 	.db 0x0a
      0048CF 45 78 69 74 69 6E 67  3165 	.ascii "Exiting clear menu..."
             20 63 6C 65 61 72 20
             6D 65 6E 75 2E 2E 2E
      0048E4 00                    3166 	.db 0x00
                                   3167 	.area CSEG    (CODE)
                                   3168 	.area CONST   (CODE)
      0048E5                       3169 ___str_5:
      0048E5 0D                    3170 	.db 0x0d
      0048E6 0A                    3171 	.db 0x0a
      0048E7 20 20 20 20 20 20 20  3172 	.ascii "                             Pausing the timer        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 50 61 75 73 69 6E
             67 20 74 68 65 20 74
             69 6D 65 72 20 20 20
             20 20 20 20 20
      00491D 00                    3173 	.db 0x00
                                   3174 	.area CSEG    (CODE)
                                   3175 	.area CONST   (CODE)
      00491E                       3176 ___str_6:
      00491E 0D                    3177 	.db 0x0d
      00491F 0A                    3178 	.db 0x0a
      004920 45 78 69 74 69 6E 67  3179 	.ascii "Exiting pause menu..."
             20 70 61 75 73 65 20
             6D 65 6E 75 2E 2E 2E
      004935 00                    3180 	.db 0x00
                                   3181 	.area CSEG    (CODE)
                                   3182 	.area CONST   (CODE)
      004936                       3183 ___str_7:
      004936 0D                    3184 	.db 0x0d
      004937 0A                    3185 	.db 0x0a
      004938 20 20 20 20 20 20 20  3186 	.ascii "                             Start the Timer        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 53 74 61 72 74 20
             74 68 65 20 54 69 6D
             65 72 20 20 20 20 20
             20 20 20
      00496C 00                    3187 	.db 0x00
                                   3188 	.area CSEG    (CODE)
                                   3189 	.area CONST   (CODE)
      00496D                       3190 ___str_8:
      00496D 0D                    3191 	.db 0x0d
      00496E 0A                    3192 	.db 0x0a
      00496F 45 78 69 74 69 6E 67  3193 	.ascii "Exiting start timer menu..."
             20 73 74 61 72 74 20
             74 69 6D 65 72 20 6D
             65 6E 75 2E 2E 2E
      00498A 00                    3194 	.db 0x00
                                   3195 	.area CSEG    (CODE)
                                   3196 	.area CONST   (CODE)
      00498B                       3197 ___str_9:
      00498B 0D                    3198 	.db 0x0d
      00498C 0A                    3199 	.db 0x0a
      00498D 20 20 20 20 20 20 20  3200 	.ascii "                             Stop the Timer        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 53 74 6F 70 20 74
             68 65 20 54 69 6D 65
             72 20 20 20 20 20 20
             20 20
      0049C0 00                    3201 	.db 0x00
                                   3202 	.area CSEG    (CODE)
                                   3203 	.area CONST   (CODE)
      0049C1                       3204 ___str_10:
      0049C1 0D                    3205 	.db 0x0d
      0049C2 0A                    3206 	.db 0x0a
      0049C3 45 78 69 74 69 6E 67  3207 	.ascii "Exiting stop timer menu..."
             20 73 74 6F 70 20 74
             69 6D 65 72 20 6D 65
             6E 75 2E 2E 2E
      0049DD 00                    3208 	.db 0x00
                                   3209 	.area CSEG    (CODE)
                                   3210 	.area CONST   (CODE)
      0049DE                       3211 ___str_11:
      0049DE 0D                    3212 	.db 0x0d
      0049DF 0A                    3213 	.db 0x0a
      0049E0 20 20 20 20 20 20 20  3214 	.ascii "                             Write to specific position     "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 57 72 69 74 65 20
             74 6F 20 73 70 65 63
             69 66 69 63 20 70 6F
             73 69 74 69 6F 6E 20
             20 20 20 20
      004A1C 20 20 20              3215 	.ascii "   "
      004A1F 00                    3216 	.db 0x00
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
      004A20                       3219 ___str_12:
      004A20 0D                    3220 	.db 0x0d
      004A21 0A                    3221 	.db 0x0a
      004A22 45 78 69 74 69 6E 67  3222 	.ascii "Exiting write menu..."
             20 77 72 69 74 65 20
             6D 65 6E 75 2E 2E 2E
      004A37 00                    3223 	.db 0x00
                                   3224 	.area CSEG    (CODE)
                                   3225 	.area CONST   (CODE)
      004A38                       3226 ___str_13:
      004A38 0D                    3227 	.db 0x0d
      004A39 0A                    3228 	.db 0x0a
      004A3A 20 20 20 20 20 20 20  3229 	.ascii "                             Hexdump of DDRAM contents      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 48 65 78 64 75 6D
             70 20 6F 66 20 44 44
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20
      004A76 20 20                 3230 	.ascii "  "
      004A78 00                    3231 	.db 0x00
                                   3232 	.area CSEG    (CODE)
                                   3233 	.area CONST   (CODE)
      004A79                       3234 ___str_14:
      004A79 0D                    3235 	.db 0x0d
      004A7A 0A                    3236 	.db 0x0a
      004A7B 45 78 69 74 69 6E 67  3237 	.ascii "Exiting hexdump menu..."
             20 68 65 78 64 75 6D
             70 20 6D 65 6E 75 2E
             2E 2E
      004A92 00                    3238 	.db 0x00
                                   3239 	.area CSEG    (CODE)
                                   3240 	.area CONST   (CODE)
      004A93                       3241 ___str_15:
      004A93 0D                    3242 	.db 0x0d
      004A94 0A                    3243 	.db 0x0a
      004A95 20 20 20 20 20 20 20  3244 	.ascii "                             Hexdump of CGRAM contents      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 48 65 78 64 75 6D
             70 20 6F 66 20 43 47
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20
      004AD1 20 20                 3245 	.ascii "  "
      004AD3 00                    3246 	.db 0x00
                                   3247 	.area CSEG    (CODE)
                                   3248 	.area CONST   (CODE)
      004AD4                       3249 ___str_16:
      004AD4 0D                    3250 	.db 0x0d
      004AD5 0A                    3251 	.db 0x0a
      004AD6 20 20 20 20 20 20 20  3252 	.ascii "                             Create a chaacter        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 43 72 65 61 74 65
             20 61 20 63 68 61 61
             63 74 65 72 20 20 20
             20 20 20 20 20
      004B0C 00                    3253 	.db 0x00
                                   3254 	.area CSEG    (CODE)
                                   3255 	.area CONST   (CODE)
      004B0D                       3256 ___str_17:
      004B0D 0D                    3257 	.db 0x0d
      004B0E 0A                    3258 	.db 0x0a
      004B0F 20 20 20 20 20 20 20  3259 	.ascii "                             Display custom char       "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 44 69 73 70 6C 61
             79 20 63 75 73 74 6F
             6D 20 63 68 61 72 20
             20 20 20 20 20 20
      004B46 00                    3260 	.db 0x00
                                   3261 	.area CSEG    (CODE)
                                   3262 	.area CONST   (CODE)
      004B47                       3263 ___str_18:
      004B47 0D                    3264 	.db 0x0d
      004B48 0A                    3265 	.db 0x0a
      004B49 2D 2D 2D 2D 2D 2D 2D  3266 	.ascii "----------------------------     Usage          ------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             20 20 20 20 20 55 73
             61 67 65 20 20 20 20
             20 20 20 20 20 20 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004B85 2D 2D 2D 2D 2D 2D 2D  3267 	.ascii "--------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004BA5 0D                    3268 	.db 0x0d
      004BA6 0A                    3269 	.db 0x0a
      004BA7 00                    3270 	.db 0x00
                                   3271 	.area CSEG    (CODE)
                                   3272 	.area CONST   (CODE)
      004BA8                       3273 ___str_19:
      004BA8 20 57 20 20 20 20 20  3274 	.ascii " W       : Write a string"
             20 20 3A 20 57 72 69
             74 65 20 61 20 73 74
             72 69 6E 67
      004BC1 0D                    3275 	.db 0x0d
      004BC2 0A                    3276 	.db 0x0a
      004BC3 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      004BC4                       3280 ___str_20:
      004BC4 20 54 20 20 20 20 20  3281 	.ascii " T       : Write to a specific position in the LCD"
             20 20 3A 20 57 72 69
             74 65 20 74 6F 20 61
             20 73 70 65 63 69 66
             69 63 20 70 6F 73 69
             74 69 6F 6E 20 69 6E
             20 74 68 65 20 4C 43
             44
      004BF6 0D                    3282 	.db 0x0d
      004BF7 0A                    3283 	.db 0x0a
      004BF8 00                    3284 	.db 0x00
                                   3285 	.area CSEG    (CODE)
                                   3286 	.area CONST   (CODE)
      004BF9                       3287 ___str_21:
      004BF9 20 45 20 20 20 20 20  3288 	.ascii " E       : Clear the display"
             20 20 3A 20 43 6C 65
             61 72 20 74 68 65 20
             64 69 73 70 6C 61 79
      004C15 0D                    3289 	.db 0x0d
      004C16 0A                    3290 	.db 0x0a
      004C17 00                    3291 	.db 0x00
                                   3292 	.area CSEG    (CODE)
                                   3293 	.area CONST   (CODE)
      004C18                       3294 ___str_22:
      004C18 20 50 20 20 20 20 20  3295 	.ascii " P       : Pause the Timer"
             20 20 3A 20 50 61 75
             73 65 20 74 68 65 20
             54 69 6D 65 72
      004C32 0D                    3296 	.db 0x0d
      004C33 0A                    3297 	.db 0x0a
      004C34 00                    3298 	.db 0x00
                                   3299 	.area CSEG    (CODE)
                                   3300 	.area CONST   (CODE)
      004C35                       3301 ___str_23:
      004C35 20 53 20 20 20 20 20  3302 	.ascii " S       : Start the Timer"
             20 20 3A 20 53 74 61
             72 74 20 74 68 65 20
             54 69 6D 65 72
      004C4F 0D                    3303 	.db 0x0d
      004C50 0A                    3304 	.db 0x0a
      004C51 00                    3305 	.db 0x00
                                   3306 	.area CSEG    (CODE)
                                   3307 	.area CONST   (CODE)
      004C52                       3308 ___str_24:
      004C52 20 52 20 20 20 20 20  3309 	.ascii " R       : Stop and reset the Timer"
             20 20 3A 20 53 74 6F
             70 20 61 6E 64 20 72
             65 73 65 74 20 74 68
             65 20 54 69 6D 65 72
      004C75 0D                    3310 	.db 0x0d
      004C76 0A                    3311 	.db 0x0a
      004C77 00                    3312 	.db 0x00
                                   3313 	.area CSEG    (CODE)
                                   3314 	.area CONST   (CODE)
      004C78                       3315 ___str_25:
      004C78 20 48 20 20 20 20 20  3316 	.ascii " H       : Hexdump of DDRAM contents"
             20 20 3A 20 48 65 78
             64 75 6D 70 20 6F 66
             20 44 44 52 41 4D 20
             63 6F 6E 74 65 6E 74
             73
      004C9C 0D                    3317 	.db 0x0d
      004C9D 0A                    3318 	.db 0x0a
      004C9E 00                    3319 	.db 0x00
                                   3320 	.area CSEG    (CODE)
                                   3321 	.area CONST   (CODE)
      004C9F                       3322 ___str_26:
      004C9F 20 43 20 20 20 20 20  3323 	.ascii " C       : Hexdump of CGRAM contents"
             20 20 3A 20 48 65 78
             64 75 6D 70 20 6F 66
             20 43 47 52 41 4D 20
             63 6F 6E 74 65 6E 74
             73
      004CC3 0D                    3324 	.db 0x0d
      004CC4 0A                    3325 	.db 0x0a
      004CC5 00                    3326 	.db 0x00
                                   3327 	.area CSEG    (CODE)
                                   3328 	.area CONST   (CODE)
      004CC6                       3329 ___str_27:
      004CC6 20 41 20 20 20 20 20  3330 	.ascii " A       : Create a CGRAM character"
             20 20 3A 20 43 72 65
             61 74 65 20 61 20 43
             47 52 41 4D 20 63 68
             61 72 61 63 74 65 72
      004CE9 0D                    3331 	.db 0x0d
      004CEA 0A                    3332 	.db 0x0a
      004CEB 00                    3333 	.db 0x00
                                   3334 	.area CSEG    (CODE)
                                   3335 	.area CONST   (CODE)
      004CEC                       3336 ___str_28:
      004CEC 20 44 20 20 20 20 20  3337 	.ascii " D       : Display a CGRAM character"
             20 20 3A 20 44 69 73
             70 6C 61 79 20 61 20
             43 47 52 41 4D 20 63
             68 61 72 61 63 74 65
             72
      004D10 0D                    3338 	.db 0x0d
      004D11 0A                    3339 	.db 0x0a
      004D12 00                    3340 	.db 0x00
                                   3341 	.area CSEG    (CODE)
                                   3342 	.area CONST   (CODE)
      004D13                       3343 ___str_29:
      004D13 20 3F 20 20 20 20 20  3344 	.ascii " ?       : Help menu"
             20 20 3A 20 48 65 6C
             70 20 6D 65 6E 75
      004D27 0D                    3345 	.db 0x0d
      004D28 0A                    3346 	.db 0x0a
      004D29 00                    3347 	.db 0x00
                                   3348 	.area CSEG    (CODE)
                                   3349 	.area CONST   (CODE)
      004D2A                       3350 ___str_30:
      004D2A 2D 2D 2D 2D 2D 2D 2D  3351 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004D66 2D 2D 2D 2D 2D 2D 2D  3352 	.ascii "--------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004D86 0D                    3353 	.db 0x0d
      004D87 0A                    3354 	.db 0x0a
      004D88 00                    3355 	.db 0x00
                                   3356 	.area CSEG    (CODE)
                                   3357 	.area CONST   (CODE)
      004D89                       3358 ___str_31:
      004D89 0D                    3359 	.db 0x0d
      004D8A 0A                    3360 	.db 0x0a
      004D8B 20 20 20 20 20 20 20  3361 	.ascii "                         Invalid Input                      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 49 6E 76
             61 6C 69 64 20 49 6E
             70 75 74 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004DC7 20 20 20 20 20 20 20  3362 	.ascii "        "
             20
      004DCF 00                    3363 	.db 0x00
                                   3364 	.area CSEG    (CODE)
                                   3365 	.area CONST   (CODE)
      004DD0                       3366 ___str_32:
      004DD0 0D                    3367 	.db 0x0d
      004DD1 0A                    3368 	.db 0x0a
      004DD2 4F 75 74 20 6F 66 20  3369 	.ascii "Out of range"
             72 61 6E 67 65
      004DDE 0D                    3370 	.db 0x0d
      004DDF 0A                    3371 	.db 0x0a
      004DE0 00                    3372 	.db 0x00
                                   3373 	.area CSEG    (CODE)
                                   3374 	.area CONST   (CODE)
      004DE1                       3375 ___str_33:
      004DE1 0D                    3376 	.db 0x0d
      004DE2 0A                    3377 	.db 0x0a
      004DE3 45 6E 74 65 72 20 74  3378 	.ascii "Enter the string and press enter:"
             68 65 20 73 74 72 69
             6E 67 20 61 6E 64 20
             70 72 65 73 73 20 65
             6E 74 65 72 3A
      004E04 00                    3379 	.db 0x00
                                   3380 	.area CSEG    (CODE)
                                   3381 	.area CONST   (CODE)
      004E05                       3382 ___str_34:
      004E05 0D                    3383 	.db 0x0d
      004E06 0A                    3384 	.db 0x0a
      004E07 49 6E 76 61 6C 69 64  3385 	.ascii "Invalid input"
             20 69 6E 70 75 74
      004E14 00                    3386 	.db 0x00
                                   3387 	.area CSEG    (CODE)
                                   3388 	.area CONST   (CODE)
      004E15                       3389 ___str_35:
      004E15 0D                    3390 	.db 0x0d
      004E16 0A                    3391 	.db 0x0a
      004E17 45 6E 74 65 72 20 74  3392 	.ascii "Enter the row number(between 1 and 4):"
             68 65 20 72 6F 77 20
             6E 75 6D 62 65 72 28
             62 65 74 77 65 65 6E
             20 31 20 61 6E 64 20
             34 29 3A
      004E3D 00                    3393 	.db 0x00
                                   3394 	.area CSEG    (CODE)
                                   3395 	.area CONST   (CODE)
      004E3E                       3396 ___str_36:
      004E3E 0D                    3397 	.db 0x0d
      004E3F 0A                    3398 	.db 0x0a
      004E40 49 6E 76 61 6C 69 64  3399 	.ascii "Invalid Input:"
             20 49 6E 70 75 74 3A
      004E4E 00                    3400 	.db 0x00
                                   3401 	.area CSEG    (CODE)
                                   3402 	.area CONST   (CODE)
      004E4F                       3403 ___str_37:
      004E4F 0D                    3404 	.db 0x0d
      004E50 0A                    3405 	.db 0x0a
      004E51 45 6E 74 65 72 20 74  3406 	.ascii "Enter the column number(between 1 and 16):"
             68 65 20 63 6F 6C 75
             6D 6E 20 6E 75 6D 62
             65 72 28 62 65 74 77
             65 65 6E 20 31 20 61
             6E 64 20 31 36 29 3A
      004E7B 00                    3407 	.db 0x00
                                   3408 	.area CSEG    (CODE)
                                   3409 	.area CONST   (CODE)
      004E7C                       3410 ___str_38:
      004E7C 0D                    3411 	.db 0x0d
      004E7D 0A                    3412 	.db 0x0a
      004E7E 45 6E 74 65 72 20 74  3413 	.ascii "Enter the char code to display (between 1 and 8):"
             68 65 20 63 68 61 72
             20 63 6F 64 65 20 74
             6F 20 64 69 73 70 6C
             61 79 20 28 62 65 74
             77 65 65 6E 20 31 20
             61 6E 64 20 38 29 3A
      004EAF 00                    3414 	.db 0x00
                                   3415 	.area CSEG    (CODE)
                                   3416 	.area CONST   (CODE)
      004EB0                       3417 ___str_39:
      004EB0 0D                    3418 	.db 0x0d
      004EB1 0A                    3419 	.db 0x0a
      004EB2 43 68 61 72 63 6F 64  3420 	.ascii "Charcode to display is %d:"
             65 20 74 6F 20 64 69
             73 70 6C 61 79 20 69
             73 20 25 64 3A
      004ECC 00                    3421 	.db 0x00
                                   3422 	.area CSEG    (CODE)
                                   3423 	.area CONST   (CODE)
      004ECD                       3424 ___str_40:
      004ECD 0D                    3425 	.db 0x0d
      004ECE 0A                    3426 	.db 0x0a
      004ECF 44 69 73 70 6C 61 79  3427 	.ascii "Display custom char:"
             20 63 75 73 74 6F 6D
             20 63 68 61 72 3A
      004EE3 00                    3428 	.db 0x00
                                   3429 	.area CSEG    (CODE)
                                   3430 	.area CONST   (CODE)
      004EE4                       3431 ___str_41:
      004EE4 0D                    3432 	.db 0x0d
      004EE5 0A                    3433 	.db 0x0a
      004EE6 45 6E 74 65 72 20 74  3434 	.ascii "Enter the char code to create (between 1 and 8):"
             68 65 20 63 68 61 72
             20 63 6F 64 65 20 74
             6F 20 63 72 65 61 74
             65 20 28 62 65 74 77
             65 65 6E 20 31 20 61
             6E 64 20 38 29 3A
      004F16 00                    3435 	.db 0x00
                                   3436 	.area CSEG    (CODE)
                                   3437 	.area CONST   (CODE)
      004F17                       3438 ___str_42:
      004F17 0D                    3439 	.db 0x0d
      004F18 0A                    3440 	.db 0x0a
      004F19 45 6E 74 65 72 20 74  3441 	.ascii "Enter the value for row %d in hex without 0x prefix:"
             68 65 20 76 61 6C 75
             65 20 66 6F 72 20 72
             6F 77 20 25 64 20 69
             6E 20 68 65 78 20 77
             69 74 68 6F 75 74 20
             30 78 20 70 72 65 66
             69 78 3A
      004F4D 00                    3442 	.db 0x00
                                   3443 	.area CSEG    (CODE)
                                   3444 	.area CONST   (CODE)
      004F4E                       3445 ___str_43:
      004F4E 0D                    3446 	.db 0x0d
      004F4F 0A                    3447 	.db 0x0a
      004F50 52 6F 77 20 76 61 6C  3448 	.ascii "Row value out of range. Must be between 0x00 and 0x1F."
             75 65 20 6F 75 74 20
             6F 66 20 72 61 6E 67
             65 2E 20 4D 75 73 74
             20 62 65 20 62 65 74
             77 65 65 6E 20 30 78
             30 30 20 61 6E 64 20
             30 78 31 46 2E
      004F86 0D                    3449 	.db 0x0d
      004F87 0A                    3450 	.db 0x0a
      004F88 00                    3451 	.db 0x00
                                   3452 	.area CSEG    (CODE)
                                   3453 	.area XINIT   (CODE)
                                   3454 	.area CABS    (ABS,CODE)
