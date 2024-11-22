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
                                    214 ;	src/command_handlers.c:29: void command_parser(char cmd)
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
                                    230 ;	src/command_handlers.c:31: switch (cmd)
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
      0020B6 02 25 A9         [24]  266 	ljmp	00112$
      0020B9                        267 00171$:
                                    268 ;	src/command_handlers.c:34: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      0020B9 74 C7            [12]  269 	mov	a,#___str_0
      0020BB C0 E0            [24]  270 	push	acc
      0020BD 74 46            [12]  271 	mov	a,#(___str_0 >> 8)
      0020BF C0 E0            [24]  272 	push	acc
      0020C1 74 80            [12]  273 	mov	a,#0x80
      0020C3 C0 E0            [24]  274 	push	acc
      0020C5 12 3C 63         [24]  275 	lcall	_printf
      0020C8 15 81            [12]  276 	dec	sp
      0020CA 15 81            [12]  277 	dec	sp
      0020CC 15 81            [12]  278 	dec	sp
                                    279 ;	src/command_handlers.c:35: printf("\r\n║                        WRITE MENU                              ║");
      0020CE 74 90            [12]  280 	mov	a,#___str_1
      0020D0 C0 E0            [24]  281 	push	acc
      0020D2 74 47            [12]  282 	mov	a,#(___str_1 >> 8)
      0020D4 C0 E0            [24]  283 	push	acc
      0020D6 74 80            [12]  284 	mov	a,#0x80
      0020D8 C0 E0            [24]  285 	push	acc
      0020DA 12 3C 63         [24]  286 	lcall	_printf
      0020DD 15 81            [12]  287 	dec	sp
      0020DF 15 81            [12]  288 	dec	sp
      0020E1 15 81            [12]  289 	dec	sp
                                    290 ;	src/command_handlers.c:36: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      0020E3 74 D9            [12]  291 	mov	a,#___str_2
      0020E5 C0 E0            [24]  292 	push	acc
      0020E7 74 47            [12]  293 	mov	a,#(___str_2 >> 8)
      0020E9 C0 E0            [24]  294 	push	acc
      0020EB 74 80            [12]  295 	mov	a,#0x80
      0020ED C0 E0            [24]  296 	push	acc
      0020EF 12 3C 63         [24]  297 	lcall	_printf
      0020F2 15 81            [12]  298 	dec	sp
      0020F4 15 81            [12]  299 	dec	sp
      0020F6 15 81            [12]  300 	dec	sp
                                    301 ;	src/command_handlers.c:37: action_for_write_command();
      0020F8 12 27 2A         [24]  302 	lcall	_action_for_write_command
                                    303 ;	src/command_handlers.c:38: printf("\r\nExiting write menu...");
      0020FB 74 A2            [12]  304 	mov	a,#___str_3
      0020FD C0 E0            [24]  305 	push	acc
      0020FF 74 48            [12]  306 	mov	a,#(___str_3 >> 8)
      002101 C0 E0            [24]  307 	push	acc
      002103 74 80            [12]  308 	mov	a,#0x80
      002105 C0 E0            [24]  309 	push	acc
      002107 12 3C 63         [24]  310 	lcall	_printf
      00210A 15 81            [12]  311 	dec	sp
      00210C 15 81            [12]  312 	dec	sp
      00210E 15 81            [12]  313 	dec	sp
                                    314 ;	src/command_handlers.c:39: break;
      002110 22               [24]  315 	ret
                                    316 ;	src/command_handlers.c:41: case 'E':
      002111                        317 00102$:
                                    318 ;	src/command_handlers.c:42: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      002111 74 C7            [12]  319 	mov	a,#___str_0
      002113 C0 E0            [24]  320 	push	acc
      002115 74 46            [12]  321 	mov	a,#(___str_0 >> 8)
      002117 C0 E0            [24]  322 	push	acc
      002119 74 80            [12]  323 	mov	a,#0x80
      00211B C0 E0            [24]  324 	push	acc
      00211D 12 3C 63         [24]  325 	lcall	_printf
      002120 15 81            [12]  326 	dec	sp
      002122 15 81            [12]  327 	dec	sp
      002124 15 81            [12]  328 	dec	sp
                                    329 ;	src/command_handlers.c:43: printf("\r\n║                    CLEARING THE DISPLAY                        ║");
      002126 74 BA            [12]  330 	mov	a,#___str_4
      002128 C0 E0            [24]  331 	push	acc
      00212A 74 48            [12]  332 	mov	a,#(___str_4 >> 8)
      00212C C0 E0            [24]  333 	push	acc
      00212E 74 80            [12]  334 	mov	a,#0x80
      002130 C0 E0            [24]  335 	push	acc
      002132 12 3C 63         [24]  336 	lcall	_printf
      002135 15 81            [12]  337 	dec	sp
      002137 15 81            [12]  338 	dec	sp
      002139 15 81            [12]  339 	dec	sp
                                    340 ;	src/command_handlers.c:44: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      00213B 74 D9            [12]  341 	mov	a,#___str_2
      00213D C0 E0            [24]  342 	push	acc
      00213F 74 47            [12]  343 	mov	a,#(___str_2 >> 8)
      002141 C0 E0            [24]  344 	push	acc
      002143 74 80            [12]  345 	mov	a,#0x80
      002145 C0 E0            [24]  346 	push	acc
      002147 12 3C 63         [24]  347 	lcall	_printf
      00214A 15 81            [12]  348 	dec	sp
      00214C 15 81            [12]  349 	dec	sp
      00214E 15 81            [12]  350 	dec	sp
                                    351 ;	src/command_handlers.c:48: }
      002150 7F 01            [12]  352 	mov	r7,#0x01
      002152 10 AF 02         [24]  353 	jbc	ea,00172$
      002155 7F 00            [12]  354 	mov	r7,#0x00
      002157                        355 00172$:
                                    356 ;	src/command_handlers.c:46: lcd_clear();
      002157 C0 07            [24]  357 	push	ar7
      002159 12 34 86         [24]  358 	lcall	_lcd_clear
                                    359 ;	src/command_handlers.c:47: current_time_display();
      00215C 12 38 B6         [24]  360 	lcall	_current_time_display
      00215F D0 07            [24]  361 	pop	ar7
      002161 EF               [12]  362 	mov	a,r7
      002162 13               [12]  363 	rrc	a
      002163 92 AF            [24]  364 	mov	ea,c
                                    365 ;	src/command_handlers.c:49: printf("\r\nExiting clear menu...");
      002165 74 03            [12]  366 	mov	a,#___str_5
      002167 C0 E0            [24]  367 	push	acc
      002169 74 49            [12]  368 	mov	a,#(___str_5 >> 8)
      00216B C0 E0            [24]  369 	push	acc
      00216D 74 80            [12]  370 	mov	a,#0x80
      00216F C0 E0            [24]  371 	push	acc
      002171 12 3C 63         [24]  372 	lcall	_printf
      002174 15 81            [12]  373 	dec	sp
      002176 15 81            [12]  374 	dec	sp
      002178 15 81            [12]  375 	dec	sp
                                    376 ;	src/command_handlers.c:50: break;
      00217A 22               [24]  377 	ret
                                    378 ;	src/command_handlers.c:52: case 'P':
      00217B                        379 00103$:
                                    380 ;	src/command_handlers.c:53: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      00217B 74 C7            [12]  381 	mov	a,#___str_0
      00217D C0 E0            [24]  382 	push	acc
      00217F 74 46            [12]  383 	mov	a,#(___str_0 >> 8)
      002181 C0 E0            [24]  384 	push	acc
      002183 74 80            [12]  385 	mov	a,#0x80
      002185 C0 E0            [24]  386 	push	acc
      002187 12 3C 63         [24]  387 	lcall	_printf
      00218A 15 81            [12]  388 	dec	sp
      00218C 15 81            [12]  389 	dec	sp
      00218E 15 81            [12]  390 	dec	sp
                                    391 ;	src/command_handlers.c:54: printf("\r\n║                     PAUSING THE TIMER                          ║");
      002190 74 1B            [12]  392 	mov	a,#___str_6
      002192 C0 E0            [24]  393 	push	acc
      002194 74 49            [12]  394 	mov	a,#(___str_6 >> 8)
      002196 C0 E0            [24]  395 	push	acc
      002198 74 80            [12]  396 	mov	a,#0x80
      00219A C0 E0            [24]  397 	push	acc
      00219C 12 3C 63         [24]  398 	lcall	_printf
      00219F 15 81            [12]  399 	dec	sp
      0021A1 15 81            [12]  400 	dec	sp
      0021A3 15 81            [12]  401 	dec	sp
                                    402 ;	src/command_handlers.c:55: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      0021A5 74 D9            [12]  403 	mov	a,#___str_2
      0021A7 C0 E0            [24]  404 	push	acc
      0021A9 74 47            [12]  405 	mov	a,#(___str_2 >> 8)
      0021AB C0 E0            [24]  406 	push	acc
      0021AD 74 80            [12]  407 	mov	a,#0x80
      0021AF C0 E0            [24]  408 	push	acc
      0021B1 12 3C 63         [24]  409 	lcall	_printf
      0021B4 15 81            [12]  410 	dec	sp
      0021B6 15 81            [12]  411 	dec	sp
      0021B8 15 81            [12]  412 	dec	sp
                                    413 ;	src/command_handlers.c:56: timer_pause();
      0021BA 12 38 A2         [24]  414 	lcall	_timer_pause
                                    415 ;	src/command_handlers.c:57: printf("\r\nExiting pause menu...");
      0021BD 74 64            [12]  416 	mov	a,#___str_7
      0021BF C0 E0            [24]  417 	push	acc
      0021C1 74 49            [12]  418 	mov	a,#(___str_7 >> 8)
      0021C3 C0 E0            [24]  419 	push	acc
      0021C5 74 80            [12]  420 	mov	a,#0x80
      0021C7 C0 E0            [24]  421 	push	acc
      0021C9 12 3C 63         [24]  422 	lcall	_printf
      0021CC 15 81            [12]  423 	dec	sp
      0021CE 15 81            [12]  424 	dec	sp
      0021D0 15 81            [12]  425 	dec	sp
                                    426 ;	src/command_handlers.c:58: break;
      0021D2 22               [24]  427 	ret
                                    428 ;	src/command_handlers.c:60: case 'S':
      0021D3                        429 00104$:
                                    430 ;	src/command_handlers.c:61: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      0021D3 74 C7            [12]  431 	mov	a,#___str_0
      0021D5 C0 E0            [24]  432 	push	acc
      0021D7 74 46            [12]  433 	mov	a,#(___str_0 >> 8)
      0021D9 C0 E0            [24]  434 	push	acc
      0021DB 74 80            [12]  435 	mov	a,#0x80
      0021DD C0 E0            [24]  436 	push	acc
      0021DF 12 3C 63         [24]  437 	lcall	_printf
      0021E2 15 81            [12]  438 	dec	sp
      0021E4 15 81            [12]  439 	dec	sp
      0021E6 15 81            [12]  440 	dec	sp
                                    441 ;	src/command_handlers.c:62: printf("\r\n║                     START THE TIMER                            ║");
      0021E8 74 7C            [12]  442 	mov	a,#___str_8
      0021EA C0 E0            [24]  443 	push	acc
      0021EC 74 49            [12]  444 	mov	a,#(___str_8 >> 8)
      0021EE C0 E0            [24]  445 	push	acc
      0021F0 74 80            [12]  446 	mov	a,#0x80
      0021F2 C0 E0            [24]  447 	push	acc
      0021F4 12 3C 63         [24]  448 	lcall	_printf
      0021F7 15 81            [12]  449 	dec	sp
      0021F9 15 81            [12]  450 	dec	sp
      0021FB 15 81            [12]  451 	dec	sp
                                    452 ;	src/command_handlers.c:63: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      0021FD 74 D9            [12]  453 	mov	a,#___str_2
      0021FF C0 E0            [24]  454 	push	acc
      002201 74 47            [12]  455 	mov	a,#(___str_2 >> 8)
      002203 C0 E0            [24]  456 	push	acc
      002205 74 80            [12]  457 	mov	a,#0x80
      002207 C0 E0            [24]  458 	push	acc
      002209 12 3C 63         [24]  459 	lcall	_printf
      00220C 15 81            [12]  460 	dec	sp
      00220E 15 81            [12]  461 	dec	sp
      002210 15 81            [12]  462 	dec	sp
                                    463 ;	src/command_handlers.c:64: timer_start();
      002212 12 38 A9         [24]  464 	lcall	_timer_start
                                    465 ;	src/command_handlers.c:65: printf("\r\nExiting start timer menu...");
      002215 74 C5            [12]  466 	mov	a,#___str_9
      002217 C0 E0            [24]  467 	push	acc
      002219 74 49            [12]  468 	mov	a,#(___str_9 >> 8)
      00221B C0 E0            [24]  469 	push	acc
      00221D 74 80            [12]  470 	mov	a,#0x80
      00221F C0 E0            [24]  471 	push	acc
      002221 12 3C 63         [24]  472 	lcall	_printf
      002224 15 81            [12]  473 	dec	sp
      002226 15 81            [12]  474 	dec	sp
      002228 15 81            [12]  475 	dec	sp
                                    476 ;	src/command_handlers.c:66: break;
      00222A 22               [24]  477 	ret
                                    478 ;	src/command_handlers.c:68: case 'R':
      00222B                        479 00105$:
                                    480 ;	src/command_handlers.c:69: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      00222B 74 C7            [12]  481 	mov	a,#___str_0
      00222D C0 E0            [24]  482 	push	acc
      00222F 74 46            [12]  483 	mov	a,#(___str_0 >> 8)
      002231 C0 E0            [24]  484 	push	acc
      002233 74 80            [12]  485 	mov	a,#0x80
      002235 C0 E0            [24]  486 	push	acc
      002237 12 3C 63         [24]  487 	lcall	_printf
      00223A 15 81            [12]  488 	dec	sp
      00223C 15 81            [12]  489 	dec	sp
      00223E 15 81            [12]  490 	dec	sp
                                    491 ;	src/command_handlers.c:70: printf("\r\n║                      STOP THE TIMER                            ║");
      002240 74 E3            [12]  492 	mov	a,#___str_10
      002242 C0 E0            [24]  493 	push	acc
      002244 74 49            [12]  494 	mov	a,#(___str_10 >> 8)
      002246 C0 E0            [24]  495 	push	acc
      002248 74 80            [12]  496 	mov	a,#0x80
      00224A C0 E0            [24]  497 	push	acc
      00224C 12 3C 63         [24]  498 	lcall	_printf
      00224F 15 81            [12]  499 	dec	sp
      002251 15 81            [12]  500 	dec	sp
      002253 15 81            [12]  501 	dec	sp
                                    502 ;	src/command_handlers.c:71: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      002255 74 D9            [12]  503 	mov	a,#___str_2
      002257 C0 E0            [24]  504 	push	acc
      002259 74 47            [12]  505 	mov	a,#(___str_2 >> 8)
      00225B C0 E0            [24]  506 	push	acc
      00225D 74 80            [12]  507 	mov	a,#0x80
      00225F C0 E0            [24]  508 	push	acc
      002261 12 3C 63         [24]  509 	lcall	_printf
      002264 15 81            [12]  510 	dec	sp
      002266 15 81            [12]  511 	dec	sp
      002268 15 81            [12]  512 	dec	sp
                                    513 ;	src/command_handlers.c:72: timer_stop();
      00226A 12 38 8A         [24]  514 	lcall	_timer_stop
                                    515 ;	src/command_handlers.c:73: printf("\r\nExiting stop timer menu...");
      00226D 74 2C            [12]  516 	mov	a,#___str_11
      00226F C0 E0            [24]  517 	push	acc
      002271 74 4A            [12]  518 	mov	a,#(___str_11 >> 8)
      002273 C0 E0            [24]  519 	push	acc
      002275 74 80            [12]  520 	mov	a,#0x80
      002277 C0 E0            [24]  521 	push	acc
      002279 12 3C 63         [24]  522 	lcall	_printf
      00227C 15 81            [12]  523 	dec	sp
      00227E 15 81            [12]  524 	dec	sp
      002280 15 81            [12]  525 	dec	sp
                                    526 ;	src/command_handlers.c:74: break;
      002282 22               [24]  527 	ret
                                    528 ;	src/command_handlers.c:76: case 'T':
      002283                        529 00106$:
                                    530 ;	src/command_handlers.c:77: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      002283 74 C7            [12]  531 	mov	a,#___str_0
      002285 C0 E0            [24]  532 	push	acc
      002287 74 46            [12]  533 	mov	a,#(___str_0 >> 8)
      002289 C0 E0            [24]  534 	push	acc
      00228B 74 80            [12]  535 	mov	a,#0x80
      00228D C0 E0            [24]  536 	push	acc
      00228F 12 3C 63         [24]  537 	lcall	_printf
      002292 15 81            [12]  538 	dec	sp
      002294 15 81            [12]  539 	dec	sp
      002296 15 81            [12]  540 	dec	sp
                                    541 ;	src/command_handlers.c:78: printf("\r\n║                WRITE TO SPECIFIC POSITION                      ║");
      002298 74 49            [12]  542 	mov	a,#___str_12
      00229A C0 E0            [24]  543 	push	acc
      00229C 74 4A            [12]  544 	mov	a,#(___str_12 >> 8)
      00229E C0 E0            [24]  545 	push	acc
      0022A0 74 80            [12]  546 	mov	a,#0x80
      0022A2 C0 E0            [24]  547 	push	acc
      0022A4 12 3C 63         [24]  548 	lcall	_printf
      0022A7 15 81            [12]  549 	dec	sp
      0022A9 15 81            [12]  550 	dec	sp
      0022AB 15 81            [12]  551 	dec	sp
                                    552 ;	src/command_handlers.c:79: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      0022AD 74 D9            [12]  553 	mov	a,#___str_2
      0022AF C0 E0            [24]  554 	push	acc
      0022B1 74 47            [12]  555 	mov	a,#(___str_2 >> 8)
      0022B3 C0 E0            [24]  556 	push	acc
      0022B5 74 80            [12]  557 	mov	a,#0x80
      0022B7 C0 E0            [24]  558 	push	acc
      0022B9 12 3C 63         [24]  559 	lcall	_printf
      0022BC 15 81            [12]  560 	dec	sp
      0022BE 15 81            [12]  561 	dec	sp
      0022C0 15 81            [12]  562 	dec	sp
                                    563 ;	src/command_handlers.c:80: action_for_write_to_specific_position();
      0022C2 12 2B EA         [24]  564 	lcall	_action_for_write_to_specific_position
                                    565 ;	src/command_handlers.c:81: printf("\r\nExiting write menu...");
      0022C5 74 A2            [12]  566 	mov	a,#___str_3
      0022C7 C0 E0            [24]  567 	push	acc
      0022C9 74 48            [12]  568 	mov	a,#(___str_3 >> 8)
      0022CB C0 E0            [24]  569 	push	acc
      0022CD 74 80            [12]  570 	mov	a,#0x80
      0022CF C0 E0            [24]  571 	push	acc
      0022D1 12 3C 63         [24]  572 	lcall	_printf
      0022D4 15 81            [12]  573 	dec	sp
      0022D6 15 81            [12]  574 	dec	sp
      0022D8 15 81            [12]  575 	dec	sp
                                    576 ;	src/command_handlers.c:82: break;
      0022DA 22               [24]  577 	ret
                                    578 ;	src/command_handlers.c:84: case 'H':
      0022DB                        579 00107$:
                                    580 ;	src/command_handlers.c:85: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      0022DB 74 C7            [12]  581 	mov	a,#___str_0
      0022DD C0 E0            [24]  582 	push	acc
      0022DF 74 46            [12]  583 	mov	a,#(___str_0 >> 8)
      0022E1 C0 E0            [24]  584 	push	acc
      0022E3 74 80            [12]  585 	mov	a,#0x80
      0022E5 C0 E0            [24]  586 	push	acc
      0022E7 12 3C 63         [24]  587 	lcall	_printf
      0022EA 15 81            [12]  588 	dec	sp
      0022EC 15 81            [12]  589 	dec	sp
      0022EE 15 81            [12]  590 	dec	sp
                                    591 ;	src/command_handlers.c:86: printf("\r\n║                 HEXDUMP OF DDRAM CONTENTS                      ║");
      0022F0 74 92            [12]  592 	mov	a,#___str_13
      0022F2 C0 E0            [24]  593 	push	acc
      0022F4 74 4A            [12]  594 	mov	a,#(___str_13 >> 8)
      0022F6 C0 E0            [24]  595 	push	acc
      0022F8 74 80            [12]  596 	mov	a,#0x80
      0022FA C0 E0            [24]  597 	push	acc
      0022FC 12 3C 63         [24]  598 	lcall	_printf
      0022FF 15 81            [12]  599 	dec	sp
      002301 15 81            [12]  600 	dec	sp
      002303 15 81            [12]  601 	dec	sp
                                    602 ;	src/command_handlers.c:87: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      002305 74 D9            [12]  603 	mov	a,#___str_2
      002307 C0 E0            [24]  604 	push	acc
      002309 74 47            [12]  605 	mov	a,#(___str_2 >> 8)
      00230B C0 E0            [24]  606 	push	acc
      00230D 74 80            [12]  607 	mov	a,#0x80
      00230F C0 E0            [24]  608 	push	acc
      002311 12 3C 63         [24]  609 	lcall	_printf
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
      002323 12 00 00         [24]  620 	lcall	_lcd_ddram_dump_16x4
      002326 D0 07            [24]  621 	pop	ar7
      002328 EF               [12]  622 	mov	a,r7
      002329 13               [12]  623 	rrc	a
      00232A 92 AF            [24]  624 	mov	ea,c
                                    625 ;	src/command_handlers.c:91: printf("\r\nExiting hexdump menu...");
      00232C 74 DB            [12]  626 	mov	a,#___str_14
      00232E C0 E0            [24]  627 	push	acc
      002330 74 4A            [12]  628 	mov	a,#(___str_14 >> 8)
      002332 C0 E0            [24]  629 	push	acc
      002334 74 80            [12]  630 	mov	a,#0x80
      002336 C0 E0            [24]  631 	push	acc
      002338 12 3C 63         [24]  632 	lcall	_printf
      00233B 15 81            [12]  633 	dec	sp
      00233D 15 81            [12]  634 	dec	sp
      00233F 15 81            [12]  635 	dec	sp
                                    636 ;	src/command_handlers.c:92: break;
      002341 22               [24]  637 	ret
                                    638 ;	src/command_handlers.c:94: case 'C':
      002342                        639 00108$:
                                    640 ;	src/command_handlers.c:95: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      002342 74 C7            [12]  641 	mov	a,#___str_0
      002344 C0 E0            [24]  642 	push	acc
      002346 74 46            [12]  643 	mov	a,#(___str_0 >> 8)
      002348 C0 E0            [24]  644 	push	acc
      00234A 74 80            [12]  645 	mov	a,#0x80
      00234C C0 E0            [24]  646 	push	acc
      00234E 12 3C 63         [24]  647 	lcall	_printf
      002351 15 81            [12]  648 	dec	sp
      002353 15 81            [12]  649 	dec	sp
      002355 15 81            [12]  650 	dec	sp
                                    651 ;	src/command_handlers.c:96: printf("\r\n║                 HEXDUMP OF CGRAM CONTENTS                      ║");
      002357 74 F5            [12]  652 	mov	a,#___str_15
      002359 C0 E0            [24]  653 	push	acc
      00235B 74 4A            [12]  654 	mov	a,#(___str_15 >> 8)
      00235D C0 E0            [24]  655 	push	acc
      00235F 74 80            [12]  656 	mov	a,#0x80
      002361 C0 E0            [24]  657 	push	acc
      002363 12 3C 63         [24]  658 	lcall	_printf
      002366 15 81            [12]  659 	dec	sp
      002368 15 81            [12]  660 	dec	sp
      00236A 15 81            [12]  661 	dec	sp
                                    662 ;	src/command_handlers.c:97: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      00236C 74 D9            [12]  663 	mov	a,#___str_2
      00236E C0 E0            [24]  664 	push	acc
      002370 74 47            [12]  665 	mov	a,#(___str_2 >> 8)
      002372 C0 E0            [24]  666 	push	acc
      002374 74 80            [12]  667 	mov	a,#0x80
      002376 C0 E0            [24]  668 	push	acc
      002378 12 3C 63         [24]  669 	lcall	_printf
      00237B 15 81            [12]  670 	dec	sp
      00237D 15 81            [12]  671 	dec	sp
      00237F 15 81            [12]  672 	dec	sp
                                    673 ;	src/command_handlers.c:100: }
      002381 7F 01            [12]  674 	mov	r7,#0x01
      002383 10 AF 02         [24]  675 	jbc	ea,00174$
      002386 7F 00            [12]  676 	mov	r7,#0x00
      002388                        677 00174$:
                                    678 ;	src/command_handlers.c:99: lcd_cgram_dump();
      002388 C0 07            [24]  679 	push	ar7
      00238A 12 00 00         [24]  680 	lcall	_lcd_cgram_dump
      00238D D0 07            [24]  681 	pop	ar7
      00238F EF               [12]  682 	mov	a,r7
      002390 13               [12]  683 	rrc	a
      002391 92 AF            [24]  684 	mov	ea,c
                                    685 ;	src/command_handlers.c:101: printf("\r\nExiting hexdump menu...");
      002393 74 DB            [12]  686 	mov	a,#___str_14
      002395 C0 E0            [24]  687 	push	acc
      002397 74 4A            [12]  688 	mov	a,#(___str_14 >> 8)
      002399 C0 E0            [24]  689 	push	acc
      00239B 74 80            [12]  690 	mov	a,#0x80
      00239D C0 E0            [24]  691 	push	acc
      00239F 12 3C 63         [24]  692 	lcall	_printf
      0023A2 15 81            [12]  693 	dec	sp
      0023A4 15 81            [12]  694 	dec	sp
      0023A6 15 81            [12]  695 	dec	sp
                                    696 ;	src/command_handlers.c:102: break;
      0023A8 22               [24]  697 	ret
                                    698 ;	src/command_handlers.c:104: case 'A':
      0023A9                        699 00109$:
                                    700 ;	src/command_handlers.c:105: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      0023A9 74 C7            [12]  701 	mov	a,#___str_0
      0023AB C0 E0            [24]  702 	push	acc
      0023AD 74 46            [12]  703 	mov	a,#(___str_0 >> 8)
      0023AF C0 E0            [24]  704 	push	acc
      0023B1 74 80            [12]  705 	mov	a,#0x80
      0023B3 C0 E0            [24]  706 	push	acc
      0023B5 12 3C 63         [24]  707 	lcall	_printf
      0023B8 15 81            [12]  708 	dec	sp
      0023BA 15 81            [12]  709 	dec	sp
      0023BC 15 81            [12]  710 	dec	sp
                                    711 ;	src/command_handlers.c:106: printf("\r\n║                   CREATE A CHARACTER                           ║");
      0023BE 74 3E            [12]  712 	mov	a,#___str_16
      0023C0 C0 E0            [24]  713 	push	acc
      0023C2 74 4B            [12]  714 	mov	a,#(___str_16 >> 8)
      0023C4 C0 E0            [24]  715 	push	acc
      0023C6 74 80            [12]  716 	mov	a,#0x80
      0023C8 C0 E0            [24]  717 	push	acc
      0023CA 12 3C 63         [24]  718 	lcall	_printf
      0023CD 15 81            [12]  719 	dec	sp
      0023CF 15 81            [12]  720 	dec	sp
      0023D1 15 81            [12]  721 	dec	sp
                                    722 ;	src/command_handlers.c:107: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      0023D3 74 D9            [12]  723 	mov	a,#___str_2
      0023D5 C0 E0            [24]  724 	push	acc
      0023D7 74 47            [12]  725 	mov	a,#(___str_2 >> 8)
      0023D9 C0 E0            [24]  726 	push	acc
      0023DB 74 80            [12]  727 	mov	a,#0x80
      0023DD C0 E0            [24]  728 	push	acc
      0023DF 12 3C 63         [24]  729 	lcall	_printf
      0023E2 15 81            [12]  730 	dec	sp
      0023E4 15 81            [12]  731 	dec	sp
      0023E6 15 81            [12]  732 	dec	sp
                                    733 ;	src/command_handlers.c:108: action_for_character_creation();
      0023E8 12 2F B6         [24]  734 	lcall	_action_for_character_creation
                                    735 ;	src/command_handlers.c:109: printf("\r\nExiting character creation menu...");
      0023EB 74 87            [12]  736 	mov	a,#___str_17
      0023ED C0 E0            [24]  737 	push	acc
      0023EF 74 4B            [12]  738 	mov	a,#(___str_17 >> 8)
      0023F1 C0 E0            [24]  739 	push	acc
      0023F3 74 80            [12]  740 	mov	a,#0x80
      0023F5 C0 E0            [24]  741 	push	acc
      0023F7 12 3C 63         [24]  742 	lcall	_printf
      0023FA 15 81            [12]  743 	dec	sp
      0023FC 15 81            [12]  744 	dec	sp
      0023FE 15 81            [12]  745 	dec	sp
                                    746 ;	src/command_handlers.c:110: break;
      002400 22               [24]  747 	ret
                                    748 ;	src/command_handlers.c:112: case 'D':
      002401                        749 00110$:
                                    750 ;	src/command_handlers.c:113: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      002401 74 C7            [12]  751 	mov	a,#___str_0
      002403 C0 E0            [24]  752 	push	acc
      002405 74 46            [12]  753 	mov	a,#(___str_0 >> 8)
      002407 C0 E0            [24]  754 	push	acc
      002409 74 80            [12]  755 	mov	a,#0x80
      00240B C0 E0            [24]  756 	push	acc
      00240D 12 3C 63         [24]  757 	lcall	_printf
      002410 15 81            [12]  758 	dec	sp
      002412 15 81            [12]  759 	dec	sp
      002414 15 81            [12]  760 	dec	sp
                                    761 ;	src/command_handlers.c:114: printf("\r\n║                  DISPLAY CUSTOM CHAR                           ║");
      002416 74 AC            [12]  762 	mov	a,#___str_18
      002418 C0 E0            [24]  763 	push	acc
      00241A 74 4B            [12]  764 	mov	a,#(___str_18 >> 8)
      00241C C0 E0            [24]  765 	push	acc
      00241E 74 80            [12]  766 	mov	a,#0x80
      002420 C0 E0            [24]  767 	push	acc
      002422 12 3C 63         [24]  768 	lcall	_printf
      002425 15 81            [12]  769 	dec	sp
      002427 15 81            [12]  770 	dec	sp
      002429 15 81            [12]  771 	dec	sp
                                    772 ;	src/command_handlers.c:115: printf("\r\n╚════════════════════════════════════════════════════════════════╝");
      00242B 74 D9            [12]  773 	mov	a,#___str_2
      00242D C0 E0            [24]  774 	push	acc
      00242F 74 47            [12]  775 	mov	a,#(___str_2 >> 8)
      002431 C0 E0            [24]  776 	push	acc
      002433 74 80            [12]  777 	mov	a,#0x80
      002435 C0 E0            [24]  778 	push	acc
      002437 12 3C 63         [24]  779 	lcall	_printf
      00243A 15 81            [12]  780 	dec	sp
      00243C 15 81            [12]  781 	dec	sp
      00243E 15 81            [12]  782 	dec	sp
                                    783 ;	src/command_handlers.c:116: action_for_display_custom_char();
                                    784 ;	src/command_handlers.c:117: break;
      002440 02 2E 4F         [24]  785 	ljmp	_action_for_display_custom_char
                                    786 ;	src/command_handlers.c:119: case '?':
      002443                        787 00111$:
                                    788 ;	src/command_handlers.c:120: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      002443 74 C7            [12]  789 	mov	a,#___str_0
      002445 C0 E0            [24]  790 	push	acc
      002447 74 46            [12]  791 	mov	a,#(___str_0 >> 8)
      002449 C0 E0            [24]  792 	push	acc
      00244B 74 80            [12]  793 	mov	a,#0x80
      00244D C0 E0            [24]  794 	push	acc
      00244F 12 3C 63         [24]  795 	lcall	_printf
      002452 15 81            [12]  796 	dec	sp
      002454 15 81            [12]  797 	dec	sp
      002456 15 81            [12]  798 	dec	sp
                                    799 ;	src/command_handlers.c:121: printf("\r\n║                         HELP MENU                              ║");
      002458 74 F5            [12]  800 	mov	a,#___str_19
      00245A C0 E0            [24]  801 	push	acc
      00245C 74 4B            [12]  802 	mov	a,#(___str_19 >> 8)
      00245E C0 E0            [24]  803 	push	acc
      002460 74 80            [12]  804 	mov	a,#0x80
      002462 C0 E0            [24]  805 	push	acc
      002464 12 3C 63         [24]  806 	lcall	_printf
      002467 15 81            [12]  807 	dec	sp
      002469 15 81            [12]  808 	dec	sp
      00246B 15 81            [12]  809 	dec	sp
                                    810 ;	src/command_handlers.c:122: printf("\r\n╠═══════════╦════════════════════════════════════════════════════╣");
      00246D 74 3E            [12]  811 	mov	a,#___str_20
      00246F C0 E0            [24]  812 	push	acc
      002471 74 4C            [12]  813 	mov	a,#(___str_20 >> 8)
      002473 C0 E0            [24]  814 	push	acc
      002475 74 80            [12]  815 	mov	a,#0x80
      002477 C0 E0            [24]  816 	push	acc
      002479 12 3C 63         [24]  817 	lcall	_printf
      00247C 15 81            [12]  818 	dec	sp
      00247E 15 81            [12]  819 	dec	sp
      002480 15 81            [12]  820 	dec	sp
                                    821 ;	src/command_handlers.c:123: printf("\r\n║ Command   ║                    Description                      ║");
      002482 74 07            [12]  822 	mov	a,#___str_21
      002484 C0 E0            [24]  823 	push	acc
      002486 74 4D            [12]  824 	mov	a,#(___str_21 >> 8)
      002488 C0 E0            [24]  825 	push	acc
      00248A 74 80            [12]  826 	mov	a,#0x80
      00248C C0 E0            [24]  827 	push	acc
      00248E 12 3C 63         [24]  828 	lcall	_printf
      002491 15 81            [12]  829 	dec	sp
      002493 15 81            [12]  830 	dec	sp
      002495 15 81            [12]  831 	dec	sp
                                    832 ;	src/command_handlers.c:124: printf("\r\n╠═══════════╬════════════════════════════════════════════════════╣");
      002497 74 53            [12]  833 	mov	a,#___str_22
      002499 C0 E0            [24]  834 	push	acc
      00249B 74 4D            [12]  835 	mov	a,#(___str_22 >> 8)
      00249D C0 E0            [24]  836 	push	acc
      00249F 74 80            [12]  837 	mov	a,#0x80
      0024A1 C0 E0            [24]  838 	push	acc
      0024A3 12 3C 63         [24]  839 	lcall	_printf
      0024A6 15 81            [12]  840 	dec	sp
      0024A8 15 81            [12]  841 	dec	sp
      0024AA 15 81            [12]  842 	dec	sp
                                    843 ;	src/command_handlers.c:125: printf("\r\n║    W      ║ Write a string                                     ║");
      0024AC 74 1C            [12]  844 	mov	a,#___str_23
      0024AE C0 E0            [24]  845 	push	acc
      0024B0 74 4E            [12]  846 	mov	a,#(___str_23 >> 8)
      0024B2 C0 E0            [24]  847 	push	acc
      0024B4 74 80            [12]  848 	mov	a,#0x80
      0024B6 C0 E0            [24]  849 	push	acc
      0024B8 12 3C 63         [24]  850 	lcall	_printf
      0024BB 15 81            [12]  851 	dec	sp
      0024BD 15 81            [12]  852 	dec	sp
      0024BF 15 81            [12]  853 	dec	sp
                                    854 ;	src/command_handlers.c:126: printf("\r\n║    T      ║ Write to a specific position in the LCD            ║");
      0024C1 74 67            [12]  855 	mov	a,#___str_24
      0024C3 C0 E0            [24]  856 	push	acc
      0024C5 74 4E            [12]  857 	mov	a,#(___str_24 >> 8)
      0024C7 C0 E0            [24]  858 	push	acc
      0024C9 74 80            [12]  859 	mov	a,#0x80
      0024CB C0 E0            [24]  860 	push	acc
      0024CD 12 3C 63         [24]  861 	lcall	_printf
      0024D0 15 81            [12]  862 	dec	sp
      0024D2 15 81            [12]  863 	dec	sp
      0024D4 15 81            [12]  864 	dec	sp
                                    865 ;	src/command_handlers.c:127: printf("\r\n║    E      ║ Clear the display                                  ║");
      0024D6 74 B2            [12]  866 	mov	a,#___str_25
      0024D8 C0 E0            [24]  867 	push	acc
      0024DA 74 4E            [12]  868 	mov	a,#(___str_25 >> 8)
      0024DC C0 E0            [24]  869 	push	acc
      0024DE 74 80            [12]  870 	mov	a,#0x80
      0024E0 C0 E0            [24]  871 	push	acc
      0024E2 12 3C 63         [24]  872 	lcall	_printf
      0024E5 15 81            [12]  873 	dec	sp
      0024E7 15 81            [12]  874 	dec	sp
      0024E9 15 81            [12]  875 	dec	sp
                                    876 ;	src/command_handlers.c:128: printf("\r\n║    P      ║ Pause the Timer                                    ║");
      0024EB 74 FD            [12]  877 	mov	a,#___str_26
      0024ED C0 E0            [24]  878 	push	acc
      0024EF 74 4E            [12]  879 	mov	a,#(___str_26 >> 8)
      0024F1 C0 E0            [24]  880 	push	acc
      0024F3 74 80            [12]  881 	mov	a,#0x80
      0024F5 C0 E0            [24]  882 	push	acc
      0024F7 12 3C 63         [24]  883 	lcall	_printf
      0024FA 15 81            [12]  884 	dec	sp
      0024FC 15 81            [12]  885 	dec	sp
      0024FE 15 81            [12]  886 	dec	sp
                                    887 ;	src/command_handlers.c:129: printf("\r\n║    S      ║ Start the Timer                                    ║");
      002500 74 48            [12]  888 	mov	a,#___str_27
      002502 C0 E0            [24]  889 	push	acc
      002504 74 4F            [12]  890 	mov	a,#(___str_27 >> 8)
      002506 C0 E0            [24]  891 	push	acc
      002508 74 80            [12]  892 	mov	a,#0x80
      00250A C0 E0            [24]  893 	push	acc
      00250C 12 3C 63         [24]  894 	lcall	_printf
      00250F 15 81            [12]  895 	dec	sp
      002511 15 81            [12]  896 	dec	sp
      002513 15 81            [12]  897 	dec	sp
                                    898 ;	src/command_handlers.c:130: printf("\r\n║    R      ║ Stop and reset the Timer                           ║");
      002515 74 93            [12]  899 	mov	a,#___str_28
      002517 C0 E0            [24]  900 	push	acc
      002519 74 4F            [12]  901 	mov	a,#(___str_28 >> 8)
      00251B C0 E0            [24]  902 	push	acc
      00251D 74 80            [12]  903 	mov	a,#0x80
      00251F C0 E0            [24]  904 	push	acc
      002521 12 3C 63         [24]  905 	lcall	_printf
      002524 15 81            [12]  906 	dec	sp
      002526 15 81            [12]  907 	dec	sp
      002528 15 81            [12]  908 	dec	sp
                                    909 ;	src/command_handlers.c:131: printf("\r\n║    H      ║ Hexdump of DDRAM contents                          ║");
      00252A 74 DE            [12]  910 	mov	a,#___str_29
      00252C C0 E0            [24]  911 	push	acc
      00252E 74 4F            [12]  912 	mov	a,#(___str_29 >> 8)
      002530 C0 E0            [24]  913 	push	acc
      002532 74 80            [12]  914 	mov	a,#0x80
      002534 C0 E0            [24]  915 	push	acc
      002536 12 3C 63         [24]  916 	lcall	_printf
      002539 15 81            [12]  917 	dec	sp
      00253B 15 81            [12]  918 	dec	sp
      00253D 15 81            [12]  919 	dec	sp
                                    920 ;	src/command_handlers.c:132: printf("\r\n║    C      ║ Hexdump of CGRAM contents                          ║");
      00253F 74 29            [12]  921 	mov	a,#___str_30
      002541 C0 E0            [24]  922 	push	acc
      002543 74 50            [12]  923 	mov	a,#(___str_30 >> 8)
      002545 C0 E0            [24]  924 	push	acc
      002547 74 80            [12]  925 	mov	a,#0x80
      002549 C0 E0            [24]  926 	push	acc
      00254B 12 3C 63         [24]  927 	lcall	_printf
      00254E 15 81            [12]  928 	dec	sp
      002550 15 81            [12]  929 	dec	sp
      002552 15 81            [12]  930 	dec	sp
                                    931 ;	src/command_handlers.c:133: printf("\r\n║    A      ║ Create a CGRAM character                           ║");
      002554 74 74            [12]  932 	mov	a,#___str_31
      002556 C0 E0            [24]  933 	push	acc
      002558 74 50            [12]  934 	mov	a,#(___str_31 >> 8)
      00255A C0 E0            [24]  935 	push	acc
      00255C 74 80            [12]  936 	mov	a,#0x80
      00255E C0 E0            [24]  937 	push	acc
      002560 12 3C 63         [24]  938 	lcall	_printf
      002563 15 81            [12]  939 	dec	sp
      002565 15 81            [12]  940 	dec	sp
      002567 15 81            [12]  941 	dec	sp
                                    942 ;	src/command_handlers.c:134: printf("\r\n║    D      ║ Display a CGRAM character                          ║");
      002569 74 BF            [12]  943 	mov	a,#___str_32
      00256B C0 E0            [24]  944 	push	acc
      00256D 74 50            [12]  945 	mov	a,#(___str_32 >> 8)
      00256F C0 E0            [24]  946 	push	acc
      002571 74 80            [12]  947 	mov	a,#0x80
      002573 C0 E0            [24]  948 	push	acc
      002575 12 3C 63         [24]  949 	lcall	_printf
      002578 15 81            [12]  950 	dec	sp
      00257A 15 81            [12]  951 	dec	sp
      00257C 15 81            [12]  952 	dec	sp
                                    953 ;	src/command_handlers.c:135: printf("\r\n║    ?      ║ Help menu                                          ║");
      00257E 74 0A            [12]  954 	mov	a,#___str_33
      002580 C0 E0            [24]  955 	push	acc
      002582 74 51            [12]  956 	mov	a,#(___str_33 >> 8)
      002584 C0 E0            [24]  957 	push	acc
      002586 74 80            [12]  958 	mov	a,#0x80
      002588 C0 E0            [24]  959 	push	acc
      00258A 12 3C 63         [24]  960 	lcall	_printf
      00258D 15 81            [12]  961 	dec	sp
      00258F 15 81            [12]  962 	dec	sp
      002591 15 81            [12]  963 	dec	sp
                                    964 ;	src/command_handlers.c:136: printf("\r\n╚═══════════╩════════════════════════════════════════════════════╝");
      002593 74 55            [12]  965 	mov	a,#___str_34
      002595 C0 E0            [24]  966 	push	acc
      002597 74 51            [12]  967 	mov	a,#(___str_34 >> 8)
      002599 C0 E0            [24]  968 	push	acc
      00259B 74 80            [12]  969 	mov	a,#0x80
      00259D C0 E0            [24]  970 	push	acc
      00259F 12 3C 63         [24]  971 	lcall	_printf
      0025A2 15 81            [12]  972 	dec	sp
      0025A4 15 81            [12]  973 	dec	sp
      0025A6 15 81            [12]  974 	dec	sp
                                    975 ;	src/command_handlers.c:137: break;
      0025A8 22               [24]  976 	ret
                                    977 ;	src/command_handlers.c:139: default:
      0025A9                        978 00112$:
                                    979 ;	src/command_handlers.c:140: printf("\r\n╔════════════════════════════════════════════════════════════════╗");
      0025A9 74 C7            [12]  980 	mov	a,#___str_0
      0025AB C0 E0            [24]  981 	push	acc
      0025AD 74 46            [12]  982 	mov	a,#(___str_0 >> 8)
      0025AF C0 E0            [24]  983 	push	acc
      0025B1 74 80            [12]  984 	mov	a,#0x80
      0025B3 C0 E0            [24]  985 	push	acc
      0025B5 12 3C 63         [24]  986 	lcall	_printf
      0025B8 15 81            [12]  987 	dec	sp
      0025BA 15 81            [12]  988 	dec	sp
      0025BC 15 81            [12]  989 	dec	sp
                                    990 ;	src/command_handlers.c:141: printf("\r\n║                      INVALID INPUT                             ║");
      0025BE 74 1E            [12]  991 	mov	a,#___str_35
      0025C0 C0 E0            [24]  992 	push	acc
      0025C2 74 52            [12]  993 	mov	a,#(___str_35 >> 8)
      0025C4 C0 E0            [24]  994 	push	acc
      0025C6 74 80            [12]  995 	mov	a,#0x80
      0025C8 C0 E0            [24]  996 	push	acc
      0025CA 12 3C 63         [24]  997 	lcall	_printf
      0025CD 15 81            [12]  998 	dec	sp
      0025CF 15 81            [12]  999 	dec	sp
      0025D1 15 81            [12] 1000 	dec	sp
                                   1001 ;	src/command_handlers.c:142: printf("\r\n╠═══════════╦════════════════════════════════════════════════════╣");
      0025D3 74 3E            [12] 1002 	mov	a,#___str_20
      0025D5 C0 E0            [24] 1003 	push	acc
      0025D7 74 4C            [12] 1004 	mov	a,#(___str_20 >> 8)
      0025D9 C0 E0            [24] 1005 	push	acc
      0025DB 74 80            [12] 1006 	mov	a,#0x80
      0025DD C0 E0            [24] 1007 	push	acc
      0025DF 12 3C 63         [24] 1008 	lcall	_printf
      0025E2 15 81            [12] 1009 	dec	sp
      0025E4 15 81            [12] 1010 	dec	sp
      0025E6 15 81            [12] 1011 	dec	sp
                                   1012 ;	src/command_handlers.c:143: printf("\r\n║ Command   ║                    Description                      ║");
      0025E8 74 07            [12] 1013 	mov	a,#___str_21
      0025EA C0 E0            [24] 1014 	push	acc
      0025EC 74 4D            [12] 1015 	mov	a,#(___str_21 >> 8)
      0025EE C0 E0            [24] 1016 	push	acc
      0025F0 74 80            [12] 1017 	mov	a,#0x80
      0025F2 C0 E0            [24] 1018 	push	acc
      0025F4 12 3C 63         [24] 1019 	lcall	_printf
      0025F7 15 81            [12] 1020 	dec	sp
      0025F9 15 81            [12] 1021 	dec	sp
      0025FB 15 81            [12] 1022 	dec	sp
                                   1023 ;	src/command_handlers.c:144: printf("\r\n╠═══════════╬════════════════════════════════════════════════════╣");
      0025FD 74 53            [12] 1024 	mov	a,#___str_22
      0025FF C0 E0            [24] 1025 	push	acc
      002601 74 4D            [12] 1026 	mov	a,#(___str_22 >> 8)
      002603 C0 E0            [24] 1027 	push	acc
      002605 74 80            [12] 1028 	mov	a,#0x80
      002607 C0 E0            [24] 1029 	push	acc
      002609 12 3C 63         [24] 1030 	lcall	_printf
      00260C 15 81            [12] 1031 	dec	sp
      00260E 15 81            [12] 1032 	dec	sp
      002610 15 81            [12] 1033 	dec	sp
                                   1034 ;	src/command_handlers.c:145: printf("\r\n║    W      ║ Write a string                                     ║");
      002612 74 1C            [12] 1035 	mov	a,#___str_23
      002614 C0 E0            [24] 1036 	push	acc
      002616 74 4E            [12] 1037 	mov	a,#(___str_23 >> 8)
      002618 C0 E0            [24] 1038 	push	acc
      00261A 74 80            [12] 1039 	mov	a,#0x80
      00261C C0 E0            [24] 1040 	push	acc
      00261E 12 3C 63         [24] 1041 	lcall	_printf
      002621 15 81            [12] 1042 	dec	sp
      002623 15 81            [12] 1043 	dec	sp
      002625 15 81            [12] 1044 	dec	sp
                                   1045 ;	src/command_handlers.c:146: printf("\r\n║    T      ║ Write to a specific position in the LCD            ║");
      002627 74 67            [12] 1046 	mov	a,#___str_24
      002629 C0 E0            [24] 1047 	push	acc
      00262B 74 4E            [12] 1048 	mov	a,#(___str_24 >> 8)
      00262D C0 E0            [24] 1049 	push	acc
      00262F 74 80            [12] 1050 	mov	a,#0x80
      002631 C0 E0            [24] 1051 	push	acc
      002633 12 3C 63         [24] 1052 	lcall	_printf
      002636 15 81            [12] 1053 	dec	sp
      002638 15 81            [12] 1054 	dec	sp
      00263A 15 81            [12] 1055 	dec	sp
                                   1056 ;	src/command_handlers.c:147: printf("\r\n║    E      ║ Clear the display                                  ║");
      00263C 74 B2            [12] 1057 	mov	a,#___str_25
      00263E C0 E0            [24] 1058 	push	acc
      002640 74 4E            [12] 1059 	mov	a,#(___str_25 >> 8)
      002642 C0 E0            [24] 1060 	push	acc
      002644 74 80            [12] 1061 	mov	a,#0x80
      002646 C0 E0            [24] 1062 	push	acc
      002648 12 3C 63         [24] 1063 	lcall	_printf
      00264B 15 81            [12] 1064 	dec	sp
      00264D 15 81            [12] 1065 	dec	sp
      00264F 15 81            [12] 1066 	dec	sp
                                   1067 ;	src/command_handlers.c:148: printf("\r\n║    P      ║ Pause the Timer                                    ║");
      002651 74 FD            [12] 1068 	mov	a,#___str_26
      002653 C0 E0            [24] 1069 	push	acc
      002655 74 4E            [12] 1070 	mov	a,#(___str_26 >> 8)
      002657 C0 E0            [24] 1071 	push	acc
      002659 74 80            [12] 1072 	mov	a,#0x80
      00265B C0 E0            [24] 1073 	push	acc
      00265D 12 3C 63         [24] 1074 	lcall	_printf
      002660 15 81            [12] 1075 	dec	sp
      002662 15 81            [12] 1076 	dec	sp
      002664 15 81            [12] 1077 	dec	sp
                                   1078 ;	src/command_handlers.c:149: printf("\r\n║    S      ║ Start the Timer                                    ║");
      002666 74 48            [12] 1079 	mov	a,#___str_27
      002668 C0 E0            [24] 1080 	push	acc
      00266A 74 4F            [12] 1081 	mov	a,#(___str_27 >> 8)
      00266C C0 E0            [24] 1082 	push	acc
      00266E 74 80            [12] 1083 	mov	a,#0x80
      002670 C0 E0            [24] 1084 	push	acc
      002672 12 3C 63         [24] 1085 	lcall	_printf
      002675 15 81            [12] 1086 	dec	sp
      002677 15 81            [12] 1087 	dec	sp
      002679 15 81            [12] 1088 	dec	sp
                                   1089 ;	src/command_handlers.c:150: printf("\r\n║    R      ║ Stop and reset the Timer                           ║");
      00267B 74 93            [12] 1090 	mov	a,#___str_28
      00267D C0 E0            [24] 1091 	push	acc
      00267F 74 4F            [12] 1092 	mov	a,#(___str_28 >> 8)
      002681 C0 E0            [24] 1093 	push	acc
      002683 74 80            [12] 1094 	mov	a,#0x80
      002685 C0 E0            [24] 1095 	push	acc
      002687 12 3C 63         [24] 1096 	lcall	_printf
      00268A 15 81            [12] 1097 	dec	sp
      00268C 15 81            [12] 1098 	dec	sp
      00268E 15 81            [12] 1099 	dec	sp
                                   1100 ;	src/command_handlers.c:151: printf("\r\n║    H      ║ Hexdump of DDRAM contents                          ║");
      002690 74 DE            [12] 1101 	mov	a,#___str_29
      002692 C0 E0            [24] 1102 	push	acc
      002694 74 4F            [12] 1103 	mov	a,#(___str_29 >> 8)
      002696 C0 E0            [24] 1104 	push	acc
      002698 74 80            [12] 1105 	mov	a,#0x80
      00269A C0 E0            [24] 1106 	push	acc
      00269C 12 3C 63         [24] 1107 	lcall	_printf
      00269F 15 81            [12] 1108 	dec	sp
      0026A1 15 81            [12] 1109 	dec	sp
      0026A3 15 81            [12] 1110 	dec	sp
                                   1111 ;	src/command_handlers.c:152: printf("\r\n║    C      ║ Hexdump of CGRAM contents                          ║");
      0026A5 74 29            [12] 1112 	mov	a,#___str_30
      0026A7 C0 E0            [24] 1113 	push	acc
      0026A9 74 50            [12] 1114 	mov	a,#(___str_30 >> 8)
      0026AB C0 E0            [24] 1115 	push	acc
      0026AD 74 80            [12] 1116 	mov	a,#0x80
      0026AF C0 E0            [24] 1117 	push	acc
      0026B1 12 3C 63         [24] 1118 	lcall	_printf
      0026B4 15 81            [12] 1119 	dec	sp
      0026B6 15 81            [12] 1120 	dec	sp
      0026B8 15 81            [12] 1121 	dec	sp
                                   1122 ;	src/command_handlers.c:153: printf("\r\n║    A      ║ Create a CGRAM character                           ║");
      0026BA 74 74            [12] 1123 	mov	a,#___str_31
      0026BC C0 E0            [24] 1124 	push	acc
      0026BE 74 50            [12] 1125 	mov	a,#(___str_31 >> 8)
      0026C0 C0 E0            [24] 1126 	push	acc
      0026C2 74 80            [12] 1127 	mov	a,#0x80
      0026C4 C0 E0            [24] 1128 	push	acc
      0026C6 12 3C 63         [24] 1129 	lcall	_printf
      0026C9 15 81            [12] 1130 	dec	sp
      0026CB 15 81            [12] 1131 	dec	sp
      0026CD 15 81            [12] 1132 	dec	sp
                                   1133 ;	src/command_handlers.c:154: printf("\r\n║    D      ║ Display a CGRAM character                          ║");
      0026CF 74 BF            [12] 1134 	mov	a,#___str_32
      0026D1 C0 E0            [24] 1135 	push	acc
      0026D3 74 50            [12] 1136 	mov	a,#(___str_32 >> 8)
      0026D5 C0 E0            [24] 1137 	push	acc
      0026D7 74 80            [12] 1138 	mov	a,#0x80
      0026D9 C0 E0            [24] 1139 	push	acc
      0026DB 12 3C 63         [24] 1140 	lcall	_printf
      0026DE 15 81            [12] 1141 	dec	sp
      0026E0 15 81            [12] 1142 	dec	sp
      0026E2 15 81            [12] 1143 	dec	sp
                                   1144 ;	src/command_handlers.c:155: printf("\r\n║    ?      ║ Help menu                                          ║");
      0026E4 74 0A            [12] 1145 	mov	a,#___str_33
      0026E6 C0 E0            [24] 1146 	push	acc
      0026E8 74 51            [12] 1147 	mov	a,#(___str_33 >> 8)
      0026EA C0 E0            [24] 1148 	push	acc
      0026EC 74 80            [12] 1149 	mov	a,#0x80
      0026EE C0 E0            [24] 1150 	push	acc
      0026F0 12 3C 63         [24] 1151 	lcall	_printf
      0026F3 15 81            [12] 1152 	dec	sp
      0026F5 15 81            [12] 1153 	dec	sp
      0026F7 15 81            [12] 1154 	dec	sp
                                   1155 ;	src/command_handlers.c:156: printf("\r\n╚═══════════╩════════════════════════════════════════════════════╝");
      0026F9 74 55            [12] 1156 	mov	a,#___str_34
      0026FB C0 E0            [24] 1157 	push	acc
      0026FD 74 51            [12] 1158 	mov	a,#(___str_34 >> 8)
      0026FF C0 E0            [24] 1159 	push	acc
      002701 74 80            [12] 1160 	mov	a,#0x80
      002703 C0 E0            [24] 1161 	push	acc
      002705 12 3C 63         [24] 1162 	lcall	_printf
      002708 15 81            [12] 1163 	dec	sp
      00270A 15 81            [12] 1164 	dec	sp
      00270C 15 81            [12] 1165 	dec	sp
                                   1166 ;	src/command_handlers.c:158: }
                                   1167 ;	src/command_handlers.c:159: }
      00270E 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'is_digit'
                                   1171 ;------------------------------------------------------------
                                   1172 ;c                         Allocated with name '_is_digit_c_65536_62'
                                   1173 ;------------------------------------------------------------
                                   1174 ;	src/command_handlers.c:161: bool is_digit(char c)
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function is_digit
                                   1177 ;	-----------------------------------------
      00270F                       1178 _is_digit:
      00270F E5 82            [12] 1179 	mov	a,dpl
      002711 90 18 01         [24] 1180 	mov	dptr,#_is_digit_c_65536_62
      002714 F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	src/command_handlers.c:164: return (c >= '0' && c <= '9');
      002715 E0               [24] 1183 	movx	a,@dptr
      002716 FF               [12] 1184 	mov	r7,a
      002717 BF 30 00         [24] 1185 	cjne	r7,#0x30,00110$
      00271A                       1186 00110$:
      00271A 40 05            [24] 1187 	jc	00103$
      00271C EF               [12] 1188 	mov	a,r7
      00271D 24 C6            [12] 1189 	add	a,#0xff - 0x39
      00271F 50 04            [24] 1190 	jnc	00104$
      002721                       1191 00103$:
      002721 7F 00            [12] 1192 	mov	r7,#0x00
      002723 80 02            [24] 1193 	sjmp	00105$
      002725                       1194 00104$:
      002725 7F 01            [12] 1195 	mov	r7,#0x01
      002727                       1196 00105$:
      002727 8F 82            [24] 1197 	mov	dpl,r7
                                   1198 ;	src/command_handlers.c:165: }
      002729 22               [24] 1199 	ret
                                   1200 ;------------------------------------------------------------
                                   1201 ;Allocation info for local variables in function 'action_for_write_command'
                                   1202 ;------------------------------------------------------------
                                   1203 ;input_buffer              Allocated with name '_action_for_write_command_input_buffer_65536_65'
                                   1204 ;error_message             Allocated with name '_action_for_write_command_error_message_65536_65'
                                   1205 ;address_location          Allocated with name '_action_for_write_command_address_location_65536_65'
                                   1206 ;write_data                Allocated with name '_action_for_write_command_write_data_65536_65'
                                   1207 ;current_state             Allocated with name '_action_for_write_command_current_state_65536_65'
                                   1208 ;wait_for_input            Allocated with name '_action_for_write_command_wait_for_input_65536_65'
                                   1209 ;------------------------------------------------------------
                                   1210 ;	src/command_handlers.c:168: void action_for_write_command(void)
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function action_for_write_command
                                   1213 ;	-----------------------------------------
      00272A                       1214 _action_for_write_command:
                                   1215 ;	src/command_handlers.c:172: char *error_message = "\r\nOut of range\r\n";
                                   1216 ;	src/command_handlers.c:175: get_in_mem_state current_state = GET_STRING_INPUT_FROM_USER;
      00272A 90 18 66         [24] 1217 	mov	dptr,#_action_for_write_command_current_state_65536_65
      00272D E4               [12] 1218 	clr	a
      00272E F0               [24] 1219 	movx	@dptr,a
                                   1220 ;	src/command_handlers.c:176: bool wait_for_input = true;
      00272F 90 18 67         [24] 1221 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      002732 04               [12] 1222 	inc	a
      002733 F0               [24] 1223 	movx	@dptr,a
                                   1224 ;	src/command_handlers.c:179: while (wait_for_input)
      002734                       1225 00108$:
      002734 90 18 67         [24] 1226 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      002737 E0               [24] 1227 	movx	a,@dptr
      002738 70 01            [24] 1228 	jnz	00137$
      00273A 22               [24] 1229 	ret
      00273B                       1230 00137$:
                                   1231 ;	src/command_handlers.c:181: switch (current_state)
      00273B 90 18 66         [24] 1232 	mov	dptr,#_action_for_write_command_current_state_65536_65
      00273E E0               [24] 1233 	movx	a,@dptr
      00273F FF               [12] 1234 	mov	r7,a
      002740 60 0A            [24] 1235 	jz	00101$
      002742 BF 01 02         [24] 1236 	cjne	r7,#0x01,00139$
      002745 80 46            [24] 1237 	sjmp	00104$
      002747                       1238 00139$:
                                   1239 ;	src/command_handlers.c:183: case GET_STRING_INPUT_FROM_USER:
      002747 BF 0B EA         [24] 1240 	cjne	r7,#0x0b,00108$
      00274A 80 71            [24] 1241 	sjmp	00105$
      00274C                       1242 00101$:
                                   1243 ;	src/command_handlers.c:184: printf("\r\nEnter the string and press enter:");
      00274C 74 78            [12] 1244 	mov	a,#___str_37
      00274E C0 E0            [24] 1245 	push	acc
      002750 74 52            [12] 1246 	mov	a,#(___str_37 >> 8)
      002752 C0 E0            [24] 1247 	push	acc
      002754 74 80            [12] 1248 	mov	a,#0x80
      002756 C0 E0            [24] 1249 	push	acc
      002758 12 3C 63         [24] 1250 	lcall	_printf
      00275B 15 81            [12] 1251 	dec	sp
      00275D 15 81            [12] 1252 	dec	sp
      00275F 15 81            [12] 1253 	dec	sp
                                   1254 ;	src/command_handlers.c:185: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002761 90 19 1A         [24] 1255 	mov	dptr,#_getstr_PARM_2
      002764 74 64            [12] 1256 	mov	a,#0x64
      002766 F0               [24] 1257 	movx	@dptr,a
      002767 E4               [12] 1258 	clr	a
      002768 A3               [24] 1259 	inc	dptr
      002769 F0               [24] 1260 	movx	@dptr,a
      00276A 90 19 1C         [24] 1261 	mov	dptr,#_getstr_PARM_3
      00276D 74 67            [12] 1262 	mov	a,#___str_36
      00276F F0               [24] 1263 	movx	@dptr,a
      002770 74 52            [12] 1264 	mov	a,#(___str_36 >> 8)
      002772 A3               [24] 1265 	inc	dptr
      002773 F0               [24] 1266 	movx	@dptr,a
      002774 74 80            [12] 1267 	mov	a,#0x80
      002776 A3               [24] 1268 	inc	dptr
      002777 F0               [24] 1269 	movx	@dptr,a
      002778 90 18 02         [24] 1270 	mov	dptr,#_action_for_write_command_input_buffer_65536_65
      00277B 75 F0 00         [24] 1271 	mov	b,#0x00
      00277E 12 32 42         [24] 1272 	lcall	_getstr
      002781 E5 82            [12] 1273 	mov	a,dpl
      002783 70 AF            [24] 1274 	jnz	00108$
                                   1275 ;	src/command_handlers.c:187: current_state = PUT_DATA_TO_LCD;
      002785 90 18 66         [24] 1276 	mov	dptr,#_action_for_write_command_current_state_65536_65
      002788 74 01            [12] 1277 	mov	a,#0x01
      00278A F0               [24] 1278 	movx	@dptr,a
                                   1279 ;	src/command_handlers.c:189: break;
                                   1280 ;	src/command_handlers.c:190: case PUT_DATA_TO_LCD:
      00278B 80 A7            [24] 1281 	sjmp	00108$
      00278D                       1282 00104$:
                                   1283 ;	src/command_handlers.c:196: }
      00278D 7F 01            [12] 1284 	mov	r7,#0x01
      00278F 10 AF 02         [24] 1285 	jbc	ea,00142$
      002792 7F 00            [12] 1286 	mov	r7,#0x00
      002794                       1287 00142$:
                                   1288 ;	src/command_handlers.c:193: lcd_clear();
      002794 C0 07            [24] 1289 	push	ar7
      002796 12 34 86         [24] 1290 	lcall	_lcd_clear
                                   1291 ;	src/command_handlers.c:194: lcd_put_string(input_buffer,0,0);
      002799 90 19 2A         [24] 1292 	mov	dptr,#_lcd_put_string_PARM_2
      00279C E4               [12] 1293 	clr	a
      00279D F0               [24] 1294 	movx	@dptr,a
      00279E 90 19 2B         [24] 1295 	mov	dptr,#_lcd_put_string_PARM_3
      0027A1 F0               [24] 1296 	movx	@dptr,a
      0027A2 90 18 02         [24] 1297 	mov	dptr,#_action_for_write_command_input_buffer_65536_65
      0027A5 75 F0 00         [24] 1298 	mov	b,#0x00
      0027A8 12 34 A6         [24] 1299 	lcall	_lcd_put_string
                                   1300 ;	src/command_handlers.c:195: current_time_display();
      0027AB 12 38 B6         [24] 1301 	lcall	_current_time_display
      0027AE D0 07            [24] 1302 	pop	ar7
      0027B0 EF               [12] 1303 	mov	a,r7
      0027B1 13               [12] 1304 	rrc	a
      0027B2 92 AF            [24] 1305 	mov	ea,c
                                   1306 ;	src/command_handlers.c:197: current_state = EXIT;
      0027B4 90 18 66         [24] 1307 	mov	dptr,#_action_for_write_command_current_state_65536_65
      0027B7 74 0B            [12] 1308 	mov	a,#0x0b
      0027B9 F0               [24] 1309 	movx	@dptr,a
                                   1310 ;	src/command_handlers.c:198: break;
      0027BA 02 27 34         [24] 1311 	ljmp	00108$
                                   1312 ;	src/command_handlers.c:199: case EXIT:
      0027BD                       1313 00105$:
                                   1314 ;	src/command_handlers.c:200: wait_for_input = false;
      0027BD 90 18 67         [24] 1315 	mov	dptr,#_action_for_write_command_wait_for_input_65536_65
      0027C0 E4               [12] 1316 	clr	a
      0027C1 F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	src/command_handlers.c:201: break;
                                   1319 ;	src/command_handlers.c:204: }
                                   1320 ;	src/command_handlers.c:206: }
      0027C2 02 27 34         [24] 1321 	ljmp	00108$
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'check_input_buffer_and_extract_number'
                                   1324 ;------------------------------------------------------------
                                   1325 ;sloc0                     Allocated with name '_check_input_buffer_and_extract_number_sloc0_1_0'
                                   1326 ;sloc1                     Allocated with name '_check_input_buffer_and_extract_number_sloc1_1_0'
                                   1327 ;sloc2                     Allocated with name '_check_input_buffer_and_extract_number_sloc2_1_0'
                                   1328 ;sloc3                     Allocated with name '_check_input_buffer_and_extract_number_sloc3_1_0'
                                   1329 ;sloc4                     Allocated with name '_check_input_buffer_and_extract_number_sloc4_1_0'
                                   1330 ;sloc5                     Allocated with name '_check_input_buffer_and_extract_number_sloc5_1_0'
                                   1331 ;buffer_len                Allocated with name '_check_input_buffer_and_extract_number_PARM_2'
                                   1332 ;current_state             Allocated with name '_check_input_buffer_and_extract_number_PARM_3'
                                   1333 ;input_number              Allocated with name '_check_input_buffer_and_extract_number_PARM_4'
                                   1334 ;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_number_PARM_5'
                                   1335 ;input_buffer              Allocated with name '_check_input_buffer_and_extract_number_input_buffer_65536_70'
                                   1336 ;temp_current_state        Allocated with name '_check_input_buffer_and_extract_number_temp_current_state_65537_72'
                                   1337 ;i                         Allocated with name '_check_input_buffer_and_extract_number_i_131073_74'
                                   1338 ;------------------------------------------------------------
                                   1339 ;	src/command_handlers.c:208: void check_input_buffer_and_extract_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint8_t *input_number,get_in_mem_state *next_state_on_error)
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function check_input_buffer_and_extract_number
                                   1342 ;	-----------------------------------------
      0027C5                       1343 _check_input_buffer_and_extract_number:
      0027C5 AF F0            [24] 1344 	mov	r7,b
      0027C7 AE 83            [24] 1345 	mov	r6,dph
      0027C9 E5 82            [12] 1346 	mov	a,dpl
      0027CB 90 18 73         [24] 1347 	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
      0027CE F0               [24] 1348 	movx	@dptr,a
      0027CF EE               [12] 1349 	mov	a,r6
      0027D0 A3               [24] 1350 	inc	dptr
      0027D1 F0               [24] 1351 	movx	@dptr,a
      0027D2 EF               [12] 1352 	mov	a,r7
      0027D3 A3               [24] 1353 	inc	dptr
      0027D4 F0               [24] 1354 	movx	@dptr,a
                                   1355 ;	src/command_handlers.c:211: *input_number=0;
      0027D5 90 18 6D         [24] 1356 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      0027D8 E0               [24] 1357 	movx	a,@dptr
      0027D9 FD               [12] 1358 	mov	r5,a
      0027DA A3               [24] 1359 	inc	dptr
      0027DB E0               [24] 1360 	movx	a,@dptr
      0027DC FE               [12] 1361 	mov	r6,a
      0027DD A3               [24] 1362 	inc	dptr
      0027DE E0               [24] 1363 	movx	a,@dptr
      0027DF FF               [12] 1364 	mov	r7,a
      0027E0 8D 82            [24] 1365 	mov	dpl,r5
      0027E2 8E 83            [24] 1366 	mov	dph,r6
      0027E4 8F F0            [24] 1367 	mov	b,r7
      0027E6 E4               [12] 1368 	clr	a
      0027E7 12 39 E7         [24] 1369 	lcall	__gptrput
                                   1370 ;	src/command_handlers.c:212: get_in_mem_state temp_current_state = *current_state;
      0027EA 90 18 6A         [24] 1371 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      0027ED E0               [24] 1372 	movx	a,@dptr
      0027EE F5 13            [12] 1373 	mov	_check_input_buffer_and_extract_number_sloc5_1_0,a
      0027F0 A3               [24] 1374 	inc	dptr
      0027F1 E0               [24] 1375 	movx	a,@dptr
      0027F2 F5 14            [12] 1376 	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 1),a
      0027F4 A3               [24] 1377 	inc	dptr
      0027F5 E0               [24] 1378 	movx	a,@dptr
      0027F6 F5 15            [12] 1379 	mov	(_check_input_buffer_and_extract_number_sloc5_1_0 + 2),a
      0027F8 85 13 82         [24] 1380 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      0027FB 85 14 83         [24] 1381 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      0027FE 85 15 F0         [24] 1382 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      002801 12 46 A5         [24] 1383 	lcall	__gptrget
      002804 F9               [12] 1384 	mov	r1,a
                                   1385 ;	src/command_handlers.c:214: if (*input_buffer == 'q' || *input_buffer == 'Q')
      002805 90 18 73         [24] 1386 	mov	dptr,#_check_input_buffer_and_extract_number_input_buffer_65536_70
      002808 E0               [24] 1387 	movx	a,@dptr
      002809 F5 08            [12] 1388 	mov	_check_input_buffer_and_extract_number_sloc0_1_0,a
      00280B A3               [24] 1389 	inc	dptr
      00280C E0               [24] 1390 	movx	a,@dptr
      00280D F5 09            [12] 1391 	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 1),a
      00280F A3               [24] 1392 	inc	dptr
      002810 E0               [24] 1393 	movx	a,@dptr
      002811 F5 0A            [12] 1394 	mov	(_check_input_buffer_and_extract_number_sloc0_1_0 + 2),a
      002813 85 08 82         [24] 1395 	mov	dpl,_check_input_buffer_and_extract_number_sloc0_1_0
      002816 85 09 83         [24] 1396 	mov	dph,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
      002819 85 0A F0         [24] 1397 	mov	b,(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
      00281C 12 46 A5         [24] 1398 	lcall	__gptrget
      00281F F8               [12] 1399 	mov	r0,a
      002820 B8 71 02         [24] 1400 	cjne	r0,#0x71,00139$
      002823 80 03            [24] 1401 	sjmp	00101$
      002825                       1402 00139$:
      002825 B8 51 0E         [24] 1403 	cjne	r0,#0x51,00120$
      002828                       1404 00101$:
                                   1405 ;	src/command_handlers.c:216: *current_state = EXIT;
      002828 85 13 82         [24] 1406 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      00282B 85 14 83         [24] 1407 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      00282E 85 15 F0         [24] 1408 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      002831 74 0B            [12] 1409 	mov	a,#0x0b
                                   1410 ;	src/command_handlers.c:217: return;
      002833 02 39 E7         [24] 1411 	ljmp	__gptrput
                                   1412 ;	src/command_handlers.c:221: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
      002836                       1413 00120$:
      002836 90 18 68         [24] 1414 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002839 E0               [24] 1415 	movx	a,@dptr
      00283A F5 0B            [12] 1416 	mov	_check_input_buffer_and_extract_number_sloc1_1_0,a
      00283C A3               [24] 1417 	inc	dptr
      00283D E0               [24] 1418 	movx	a,@dptr
      00283E F5 0C            [12] 1419 	mov	(_check_input_buffer_and_extract_number_sloc1_1_0 + 1),a
      002840 E4               [12] 1420 	clr	a
      002841 F5 0D            [12] 1421 	mov	_check_input_buffer_and_extract_number_sloc2_1_0,a
      002843 F5 0E            [12] 1422 	mov	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1),a
      002845                       1423 00111$:
      002845 E5 0D            [12] 1424 	mov	a,_check_input_buffer_and_extract_number_sloc2_1_0
      002847 25 08            [12] 1425 	add	a,_check_input_buffer_and_extract_number_sloc0_1_0
      002849 F5 0F            [12] 1426 	mov	_check_input_buffer_and_extract_number_sloc3_1_0,a
      00284B E5 0E            [12] 1427 	mov	a,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      00284D 35 09            [12] 1428 	addc	a,(_check_input_buffer_and_extract_number_sloc0_1_0 + 1)
      00284F F5 10            [12] 1429 	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 1),a
      002851 85 0A 11         [24] 1430 	mov	(_check_input_buffer_and_extract_number_sloc3_1_0 + 2),(_check_input_buffer_and_extract_number_sloc0_1_0 + 2)
      002854 85 0F 82         [24] 1431 	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
      002857 85 10 83         [24] 1432 	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
      00285A 85 11 F0         [24] 1433 	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
      00285D 12 46 A5         [24] 1434 	lcall	__gptrget
      002860 F5 12            [12] 1435 	mov	_check_input_buffer_and_extract_number_sloc4_1_0,a
      002862 70 01            [24] 1436 	jnz	00142$
      002864 22               [24] 1437 	ret
      002865                       1438 00142$:
      002865 C0 01            [24] 1439 	push	ar1
      002867 A8 0D            [24] 1440 	mov	r0,_check_input_buffer_and_extract_number_sloc2_1_0
      002869 A9 0E            [24] 1441 	mov	r1,(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      00286B C3               [12] 1442 	clr	c
      00286C E8               [12] 1443 	mov	a,r0
      00286D 95 0B            [12] 1444 	subb	a,_check_input_buffer_and_extract_number_sloc1_1_0
      00286F E9               [12] 1445 	mov	a,r1
      002870 95 0C            [12] 1446 	subb	a,(_check_input_buffer_and_extract_number_sloc1_1_0 + 1)
      002872 D0 01            [24] 1447 	pop	ar1
      002874 40 01            [24] 1448 	jc	00143$
      002876 22               [24] 1449 	ret
      002877                       1450 00143$:
      002877 85 13 82         [24] 1451 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      00287A 85 14 83         [24] 1452 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      00287D 85 15 F0         [24] 1453 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
      002880 12 46 A5         [24] 1454 	lcall	__gptrget
      002883 F8               [12] 1455 	mov	r0,a
      002884 B5 01 02         [24] 1456 	cjne	a,ar1,00144$
      002887 80 01            [24] 1457 	sjmp	00145$
      002889                       1458 00144$:
      002889 22               [24] 1459 	ret
      00288A                       1460 00145$:
                                   1461 ;	src/command_handlers.c:223: if (is_digit(input_buffer[i]))
      00288A 85 12 82         [24] 1462 	mov	dpl,_check_input_buffer_and_extract_number_sloc4_1_0
      00288D C0 07            [24] 1463 	push	ar7
      00288F C0 06            [24] 1464 	push	ar6
      002891 C0 05            [24] 1465 	push	ar5
      002893 C0 01            [24] 1466 	push	ar1
      002895 12 27 0F         [24] 1467 	lcall	_is_digit
      002898 E5 82            [12] 1468 	mov	a,dpl
      00289A D0 01            [24] 1469 	pop	ar1
      00289C D0 05            [24] 1470 	pop	ar5
      00289E D0 06            [24] 1471 	pop	ar6
      0028A0 D0 07            [24] 1472 	pop	ar7
      0028A2 60 2D            [24] 1473 	jz	00105$
                                   1474 ;	src/command_handlers.c:226: *input_number = (*input_number) * 10 + (input_buffer[i] - '0'); // Build the number
      0028A4 C0 01            [24] 1475 	push	ar1
      0028A6 8D 82            [24] 1476 	mov	dpl,r5
      0028A8 8E 83            [24] 1477 	mov	dph,r6
      0028AA 8F F0            [24] 1478 	mov	b,r7
      0028AC 12 46 A5         [24] 1479 	lcall	__gptrget
      0028AF 75 F0 0A         [24] 1480 	mov	b,#0x0a
      0028B2 A4               [48] 1481 	mul	ab
      0028B3 F8               [12] 1482 	mov	r0,a
      0028B4 85 0F 82         [24] 1483 	mov	dpl,_check_input_buffer_and_extract_number_sloc3_1_0
      0028B7 85 10 83         [24] 1484 	mov	dph,(_check_input_buffer_and_extract_number_sloc3_1_0 + 1)
      0028BA 85 11 F0         [24] 1485 	mov	b,(_check_input_buffer_and_extract_number_sloc3_1_0 + 2)
      0028BD 12 46 A5         [24] 1486 	lcall	__gptrget
      0028C0 24 D0            [12] 1487 	add	a,#0xd0
      0028C2 28               [12] 1488 	add	a,r0
      0028C3 F8               [12] 1489 	mov	r0,a
      0028C4 8D 82            [24] 1490 	mov	dpl,r5
      0028C6 8E 83            [24] 1491 	mov	dph,r6
      0028C8 8F F0            [24] 1492 	mov	b,r7
      0028CA 12 39 E7         [24] 1493 	lcall	__gptrput
      0028CD D0 01            [24] 1494 	pop	ar1
      0028CF 80 35            [24] 1495 	sjmp	00112$
      0028D1                       1496 00105$:
                                   1497 ;	src/command_handlers.c:230: printf("\r\nInvalid input");
      0028D1 74 9C            [12] 1498 	mov	a,#___str_38
      0028D3 C0 E0            [24] 1499 	push	acc
      0028D5 74 52            [12] 1500 	mov	a,#(___str_38 >> 8)
      0028D7 C0 E0            [24] 1501 	push	acc
      0028D9 74 80            [12] 1502 	mov	a,#0x80
      0028DB C0 E0            [24] 1503 	push	acc
      0028DD 12 3C 63         [24] 1504 	lcall	_printf
      0028E0 15 81            [12] 1505 	dec	sp
      0028E2 15 81            [12] 1506 	dec	sp
      0028E4 15 81            [12] 1507 	dec	sp
                                   1508 ;	src/command_handlers.c:231: *current_state = *next_state_on_error;
      0028E6 90 18 70         [24] 1509 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      0028E9 E0               [24] 1510 	movx	a,@dptr
      0028EA F8               [12] 1511 	mov	r0,a
      0028EB A3               [24] 1512 	inc	dptr
      0028EC E0               [24] 1513 	movx	a,@dptr
      0028ED FB               [12] 1514 	mov	r3,a
      0028EE A3               [24] 1515 	inc	dptr
      0028EF E0               [24] 1516 	movx	a,@dptr
      0028F0 FC               [12] 1517 	mov	r4,a
      0028F1 88 82            [24] 1518 	mov	dpl,r0
      0028F3 8B 83            [24] 1519 	mov	dph,r3
      0028F5 8C F0            [24] 1520 	mov	b,r4
      0028F7 12 46 A5         [24] 1521 	lcall	__gptrget
      0028FA 85 13 82         [24] 1522 	mov	dpl,_check_input_buffer_and_extract_number_sloc5_1_0
      0028FD 85 14 83         [24] 1523 	mov	dph,(_check_input_buffer_and_extract_number_sloc5_1_0 + 1)
      002900 85 15 F0         [24] 1524 	mov	b,(_check_input_buffer_and_extract_number_sloc5_1_0 + 2)
                                   1525 ;	src/command_handlers.c:232: break;
      002903 02 39 E7         [24] 1526 	ljmp	__gptrput
      002906                       1527 00112$:
                                   1528 ;	src/command_handlers.c:221: for (int i = 0; input_buffer[i] != '\0' && i < buffer_len && (*current_state == temp_current_state); i++)
      002906 05 0D            [12] 1529 	inc	_check_input_buffer_and_extract_number_sloc2_1_0
      002908 E4               [12] 1530 	clr	a
      002909 B5 0D 02         [24] 1531 	cjne	a,_check_input_buffer_and_extract_number_sloc2_1_0,00147$
      00290C 05 0E            [12] 1532 	inc	(_check_input_buffer_and_extract_number_sloc2_1_0 + 1)
      00290E                       1533 00147$:
      00290E 02 28 45         [24] 1534 	ljmp	00111$
                                   1535 ;	src/command_handlers.c:235: return;
                                   1536 ;	src/command_handlers.c:236: }
      002911 22               [24] 1537 	ret
                                   1538 ;------------------------------------------------------------
                                   1539 ;Allocation info for local variables in function 'is_valid_hex'
                                   1540 ;------------------------------------------------------------
                                   1541 ;str                       Allocated with name '_is_valid_hex_str_65536_78'
                                   1542 ;------------------------------------------------------------
                                   1543 ;	src/command_handlers.c:238: bool is_valid_hex(const char *str) {
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function is_valid_hex
                                   1546 ;	-----------------------------------------
      002912                       1547 _is_valid_hex:
      002912 AF F0            [24] 1548 	mov	r7,b
      002914 AE 83            [24] 1549 	mov	r6,dph
      002916 E5 82            [12] 1550 	mov	a,dpl
      002918 90 18 76         [24] 1551 	mov	dptr,#_is_valid_hex_str_65536_78
      00291B F0               [24] 1552 	movx	@dptr,a
      00291C EE               [12] 1553 	mov	a,r6
      00291D A3               [24] 1554 	inc	dptr
      00291E F0               [24] 1555 	movx	@dptr,a
      00291F EF               [12] 1556 	mov	a,r7
      002920 A3               [24] 1557 	inc	dptr
      002921 F0               [24] 1558 	movx	@dptr,a
                                   1559 ;	src/command_handlers.c:240: if (*str == '\0') {
      002922 90 18 76         [24] 1560 	mov	dptr,#_is_valid_hex_str_65536_78
      002925 E0               [24] 1561 	movx	a,@dptr
      002926 FD               [12] 1562 	mov	r5,a
      002927 A3               [24] 1563 	inc	dptr
      002928 E0               [24] 1564 	movx	a,@dptr
      002929 FE               [12] 1565 	mov	r6,a
      00292A A3               [24] 1566 	inc	dptr
      00292B E0               [24] 1567 	movx	a,@dptr
      00292C FF               [12] 1568 	mov	r7,a
      00292D 8D 82            [24] 1569 	mov	dpl,r5
      00292F 8E 83            [24] 1570 	mov	dph,r6
      002931 8F F0            [24] 1571 	mov	b,r7
      002933 12 46 A5         [24] 1572 	lcall	__gptrget
      002936 FC               [12] 1573 	mov	r4,a
                                   1574 ;	src/command_handlers.c:241: return false;
      002937 70 03            [24] 1575 	jnz	00102$
      002939 F5 82            [12] 1576 	mov	dpl,a
      00293B 22               [24] 1577 	ret
      00293C                       1578 00102$:
                                   1579 ;	src/command_handlers.c:245: if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X')) {
      00293C BC 30 30         [24] 1580 	cjne	r4,#0x30,00119$
      00293F 0D               [12] 1581 	inc	r5
      002940 BD 00 01         [24] 1582 	cjne	r5,#0x00,00141$
      002943 0E               [12] 1583 	inc	r6
      002944                       1584 00141$:
      002944 8D 82            [24] 1585 	mov	dpl,r5
      002946 8E 83            [24] 1586 	mov	dph,r6
      002948 8F F0            [24] 1587 	mov	b,r7
      00294A 12 46 A5         [24] 1588 	lcall	__gptrget
      00294D FF               [12] 1589 	mov	r7,a
      00294E BF 78 02         [24] 1590 	cjne	r7,#0x78,00142$
      002951 80 03            [24] 1591 	sjmp	00103$
      002953                       1592 00142$:
      002953 BF 58 19         [24] 1593 	cjne	r7,#0x58,00119$
      002956                       1594 00103$:
                                   1595 ;	src/command_handlers.c:246: str += 2;
      002956 90 18 76         [24] 1596 	mov	dptr,#_is_valid_hex_str_65536_78
      002959 E0               [24] 1597 	movx	a,@dptr
      00295A FD               [12] 1598 	mov	r5,a
      00295B A3               [24] 1599 	inc	dptr
      00295C E0               [24] 1600 	movx	a,@dptr
      00295D FE               [12] 1601 	mov	r6,a
      00295E A3               [24] 1602 	inc	dptr
      00295F E0               [24] 1603 	movx	a,@dptr
      002960 FF               [12] 1604 	mov	r7,a
      002961 90 18 76         [24] 1605 	mov	dptr,#_is_valid_hex_str_65536_78
      002964 74 02            [12] 1606 	mov	a,#0x02
      002966 2D               [12] 1607 	add	a,r5
      002967 F0               [24] 1608 	movx	@dptr,a
      002968 E4               [12] 1609 	clr	a
      002969 3E               [12] 1610 	addc	a,r6
      00296A A3               [24] 1611 	inc	dptr
      00296B F0               [24] 1612 	movx	@dptr,a
      00296C EF               [12] 1613 	mov	a,r7
      00296D A3               [24] 1614 	inc	dptr
      00296E F0               [24] 1615 	movx	@dptr,a
                                   1616 ;	src/command_handlers.c:250: while (*str) {
      00296F                       1617 00119$:
      00296F 90 18 76         [24] 1618 	mov	dptr,#_is_valid_hex_str_65536_78
      002972 E0               [24] 1619 	movx	a,@dptr
      002973 FD               [12] 1620 	mov	r5,a
      002974 A3               [24] 1621 	inc	dptr
      002975 E0               [24] 1622 	movx	a,@dptr
      002976 FE               [12] 1623 	mov	r6,a
      002977 A3               [24] 1624 	inc	dptr
      002978 E0               [24] 1625 	movx	a,@dptr
      002979 FF               [12] 1626 	mov	r7,a
      00297A                       1627 00109$:
      00297A 8D 82            [24] 1628 	mov	dpl,r5
      00297C 8E 83            [24] 1629 	mov	dph,r6
      00297E 8F F0            [24] 1630 	mov	b,r7
      002980 12 46 A5         [24] 1631 	lcall	__gptrget
      002983 FC               [12] 1632 	mov	r4,a
      002984 60 33            [24] 1633 	jz	00111$
                                   1634 ;	src/command_handlers.c:251: if (!isxdigit((unsigned char)*str)) {
      002986 7B 00            [12] 1635 	mov	r3,#0x00
      002988 8C 82            [24] 1636 	mov	dpl,r4
      00298A 8B 83            [24] 1637 	mov	dph,r3
      00298C C0 07            [24] 1638 	push	ar7
      00298E C0 06            [24] 1639 	push	ar6
      002990 C0 05            [24] 1640 	push	ar5
      002992 12 39 69         [24] 1641 	lcall	_isxdigit
      002995 E5 82            [12] 1642 	mov	a,dpl
      002997 85 83 F0         [24] 1643 	mov	b,dph
      00299A D0 05            [24] 1644 	pop	ar5
      00299C D0 06            [24] 1645 	pop	ar6
      00299E D0 07            [24] 1646 	pop	ar7
      0029A0 45 F0            [12] 1647 	orl	a,b
                                   1648 ;	src/command_handlers.c:252: return false; // Invalid character found
      0029A2 70 03            [24] 1649 	jnz	00108$
      0029A4 F5 82            [12] 1650 	mov	dpl,a
      0029A6 22               [24] 1651 	ret
      0029A7                       1652 00108$:
                                   1653 ;	src/command_handlers.c:254: str++;
      0029A7 0D               [12] 1654 	inc	r5
      0029A8 BD 00 01         [24] 1655 	cjne	r5,#0x00,00147$
      0029AB 0E               [12] 1656 	inc	r6
      0029AC                       1657 00147$:
      0029AC 90 18 76         [24] 1658 	mov	dptr,#_is_valid_hex_str_65536_78
      0029AF ED               [12] 1659 	mov	a,r5
      0029B0 F0               [24] 1660 	movx	@dptr,a
      0029B1 EE               [12] 1661 	mov	a,r6
      0029B2 A3               [24] 1662 	inc	dptr
      0029B3 F0               [24] 1663 	movx	@dptr,a
      0029B4 EF               [12] 1664 	mov	a,r7
      0029B5 A3               [24] 1665 	inc	dptr
      0029B6 F0               [24] 1666 	movx	@dptr,a
      0029B7 80 C1            [24] 1667 	sjmp	00109$
      0029B9                       1668 00111$:
                                   1669 ;	src/command_handlers.c:257: return true; // All characters are valid hex digits
      0029B9 75 82 01         [24] 1670 	mov	dpl,#0x01
                                   1671 ;	src/command_handlers.c:258: }
      0029BC 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'hex_to_uint16'
                                   1675 ;------------------------------------------------------------
                                   1676 ;hex_str                   Allocated with name '_hex_to_uint16_hex_str_65536_84'
                                   1677 ;result                    Allocated with name '_hex_to_uint16_result_65536_85'
                                   1678 ;------------------------------------------------------------
                                   1679 ;	src/command_handlers.c:260: uint16_t hex_to_uint16(const char *hex_str) {
                                   1680 ;	-----------------------------------------
                                   1681 ;	 function hex_to_uint16
                                   1682 ;	-----------------------------------------
      0029BD                       1683 _hex_to_uint16:
      0029BD AF F0            [24] 1684 	mov	r7,b
      0029BF AE 83            [24] 1685 	mov	r6,dph
      0029C1 E5 82            [12] 1686 	mov	a,dpl
      0029C3 90 18 79         [24] 1687 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      0029C6 F0               [24] 1688 	movx	@dptr,a
      0029C7 EE               [12] 1689 	mov	a,r6
      0029C8 A3               [24] 1690 	inc	dptr
      0029C9 F0               [24] 1691 	movx	@dptr,a
      0029CA EF               [12] 1692 	mov	a,r7
      0029CB A3               [24] 1693 	inc	dptr
      0029CC F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	src/command_handlers.c:261: uint16_t result = 0;
      0029CD 90 18 7C         [24] 1696 	mov	dptr,#_hex_to_uint16_result_65536_85
      0029D0 E4               [12] 1697 	clr	a
      0029D1 F0               [24] 1698 	movx	@dptr,a
      0029D2 A3               [24] 1699 	inc	dptr
      0029D3 F0               [24] 1700 	movx	@dptr,a
                                   1701 ;	src/command_handlers.c:264: if (hex_str[0] == '0' && (hex_str[1] == 'x' || hex_str[1] == 'X')) {
      0029D4 90 18 79         [24] 1702 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      0029D7 E0               [24] 1703 	movx	a,@dptr
      0029D8 FD               [12] 1704 	mov	r5,a
      0029D9 A3               [24] 1705 	inc	dptr
      0029DA E0               [24] 1706 	movx	a,@dptr
      0029DB FE               [12] 1707 	mov	r6,a
      0029DC A3               [24] 1708 	inc	dptr
      0029DD E0               [24] 1709 	movx	a,@dptr
      0029DE FF               [12] 1710 	mov	r7,a
      0029DF 8D 82            [24] 1711 	mov	dpl,r5
      0029E1 8E 83            [24] 1712 	mov	dph,r6
      0029E3 8F F0            [24] 1713 	mov	b,r7
      0029E5 12 46 A5         [24] 1714 	lcall	__gptrget
      0029E8 FC               [12] 1715 	mov	r4,a
      0029E9 BC 30 30         [24] 1716 	cjne	r4,#0x30,00130$
      0029EC 0D               [12] 1717 	inc	r5
      0029ED BD 00 01         [24] 1718 	cjne	r5,#0x00,00164$
      0029F0 0E               [12] 1719 	inc	r6
      0029F1                       1720 00164$:
      0029F1 8D 82            [24] 1721 	mov	dpl,r5
      0029F3 8E 83            [24] 1722 	mov	dph,r6
      0029F5 8F F0            [24] 1723 	mov	b,r7
      0029F7 12 46 A5         [24] 1724 	lcall	__gptrget
      0029FA FF               [12] 1725 	mov	r7,a
      0029FB BF 78 02         [24] 1726 	cjne	r7,#0x78,00165$
      0029FE 80 03            [24] 1727 	sjmp	00101$
      002A00                       1728 00165$:
      002A00 BF 58 19         [24] 1729 	cjne	r7,#0x58,00130$
      002A03                       1730 00101$:
                                   1731 ;	src/command_handlers.c:265: hex_str += 2;
      002A03 90 18 79         [24] 1732 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002A06 E0               [24] 1733 	movx	a,@dptr
      002A07 FD               [12] 1734 	mov	r5,a
      002A08 A3               [24] 1735 	inc	dptr
      002A09 E0               [24] 1736 	movx	a,@dptr
      002A0A FE               [12] 1737 	mov	r6,a
      002A0B A3               [24] 1738 	inc	dptr
      002A0C E0               [24] 1739 	movx	a,@dptr
      002A0D FF               [12] 1740 	mov	r7,a
      002A0E 90 18 79         [24] 1741 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002A11 74 02            [12] 1742 	mov	a,#0x02
      002A13 2D               [12] 1743 	add	a,r5
      002A14 F0               [24] 1744 	movx	@dptr,a
      002A15 E4               [12] 1745 	clr	a
      002A16 3E               [12] 1746 	addc	a,r6
      002A17 A3               [24] 1747 	inc	dptr
      002A18 F0               [24] 1748 	movx	@dptr,a
      002A19 EF               [12] 1749 	mov	a,r7
      002A1A A3               [24] 1750 	inc	dptr
      002A1B F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	src/command_handlers.c:269: while (*hex_str) {
      002A1C                       1753 00130$:
      002A1C 90 18 79         [24] 1754 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002A1F E0               [24] 1755 	movx	a,@dptr
      002A20 FD               [12] 1756 	mov	r5,a
      002A21 A3               [24] 1757 	inc	dptr
      002A22 E0               [24] 1758 	movx	a,@dptr
      002A23 FE               [12] 1759 	mov	r6,a
      002A24 A3               [24] 1760 	inc	dptr
      002A25 E0               [24] 1761 	movx	a,@dptr
      002A26 FF               [12] 1762 	mov	r7,a
      002A27                       1763 00116$:
      002A27 8D 82            [24] 1764 	mov	dpl,r5
      002A29 8E 83            [24] 1765 	mov	dph,r6
      002A2B 8F F0            [24] 1766 	mov	b,r7
      002A2D 12 46 A5         [24] 1767 	lcall	__gptrget
      002A30 FC               [12] 1768 	mov	r4,a
      002A31 70 03            [24] 1769 	jnz	00168$
      002A33 02 2A FB         [24] 1770 	ljmp	00131$
      002A36                       1771 00168$:
                                   1772 ;	src/command_handlers.c:270: result <<= 4; // Shift result left by 4 bits to make room for the next hex digit
      002A36 90 18 7C         [24] 1773 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A39 E0               [24] 1774 	movx	a,@dptr
      002A3A FA               [12] 1775 	mov	r2,a
      002A3B A3               [24] 1776 	inc	dptr
      002A3C E0               [24] 1777 	movx	a,@dptr
      002A3D C4               [12] 1778 	swap	a
      002A3E 54 F0            [12] 1779 	anl	a,#0xf0
      002A40 CA               [12] 1780 	xch	a,r2
      002A41 C4               [12] 1781 	swap	a
      002A42 CA               [12] 1782 	xch	a,r2
      002A43 6A               [12] 1783 	xrl	a,r2
      002A44 CA               [12] 1784 	xch	a,r2
      002A45 54 F0            [12] 1785 	anl	a,#0xf0
      002A47 CA               [12] 1786 	xch	a,r2
      002A48 6A               [12] 1787 	xrl	a,r2
      002A49 FB               [12] 1788 	mov	r3,a
      002A4A 90 18 7C         [24] 1789 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A4D EA               [12] 1790 	mov	a,r2
      002A4E F0               [24] 1791 	movx	@dptr,a
      002A4F EB               [12] 1792 	mov	a,r3
      002A50 A3               [24] 1793 	inc	dptr
      002A51 F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	src/command_handlers.c:273: if (*hex_str >= '0' && *hex_str <= '9') {
      002A52 BC 30 00         [24] 1796 	cjne	r4,#0x30,00169$
      002A55                       1797 00169$:
      002A55 40 27            [24] 1798 	jc	00113$
      002A57 EC               [12] 1799 	mov	a,r4
      002A58 24 C6            [12] 1800 	add	a,#0xff - 0x39
      002A5A 40 22            [24] 1801 	jc	00113$
                                   1802 ;	src/command_handlers.c:274: result += *hex_str - '0';
      002A5C 7B 00            [12] 1803 	mov	r3,#0x00
      002A5E EC               [12] 1804 	mov	a,r4
      002A5F 24 D0            [12] 1805 	add	a,#0xd0
      002A61 FC               [12] 1806 	mov	r4,a
      002A62 EB               [12] 1807 	mov	a,r3
      002A63 34 FF            [12] 1808 	addc	a,#0xff
      002A65 FB               [12] 1809 	mov	r3,a
      002A66 90 18 7C         [24] 1810 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A69 E0               [24] 1811 	movx	a,@dptr
      002A6A F9               [12] 1812 	mov	r1,a
      002A6B A3               [24] 1813 	inc	dptr
      002A6C E0               [24] 1814 	movx	a,@dptr
      002A6D FA               [12] 1815 	mov	r2,a
      002A6E EC               [12] 1816 	mov	a,r4
      002A6F 29               [12] 1817 	add	a,r1
      002A70 F9               [12] 1818 	mov	r1,a
      002A71 EB               [12] 1819 	mov	a,r3
      002A72 3A               [12] 1820 	addc	a,r2
      002A73 FA               [12] 1821 	mov	r2,a
      002A74 90 18 7C         [24] 1822 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A77 E9               [12] 1823 	mov	a,r1
      002A78 F0               [24] 1824 	movx	@dptr,a
      002A79 EA               [12] 1825 	mov	a,r2
      002A7A A3               [24] 1826 	inc	dptr
      002A7B F0               [24] 1827 	movx	@dptr,a
      002A7C 80 6A            [24] 1828 	sjmp	00114$
      002A7E                       1829 00113$:
                                   1830 ;	src/command_handlers.c:275: } else if (*hex_str >= 'A' && *hex_str <= 'F') {
      002A7E 8D 82            [24] 1831 	mov	dpl,r5
      002A80 8E 83            [24] 1832 	mov	dph,r6
      002A82 8F F0            [24] 1833 	mov	b,r7
      002A84 12 46 A5         [24] 1834 	lcall	__gptrget
      002A87 FC               [12] 1835 	mov	r4,a
      002A88 BC 41 00         [24] 1836 	cjne	r4,#0x41,00172$
      002A8B                       1837 00172$:
      002A8B 40 27            [24] 1838 	jc	00109$
      002A8D EC               [12] 1839 	mov	a,r4
      002A8E 24 B9            [12] 1840 	add	a,#0xff - 0x46
      002A90 40 22            [24] 1841 	jc	00109$
                                   1842 ;	src/command_handlers.c:276: result += *hex_str - 'A' + 10;
      002A92 7B 00            [12] 1843 	mov	r3,#0x00
      002A94 74 C9            [12] 1844 	mov	a,#0xc9
      002A96 2C               [12] 1845 	add	a,r4
      002A97 FC               [12] 1846 	mov	r4,a
      002A98 74 FF            [12] 1847 	mov	a,#0xff
      002A9A 3B               [12] 1848 	addc	a,r3
      002A9B FB               [12] 1849 	mov	r3,a
      002A9C 90 18 7C         [24] 1850 	mov	dptr,#_hex_to_uint16_result_65536_85
      002A9F E0               [24] 1851 	movx	a,@dptr
      002AA0 F9               [12] 1852 	mov	r1,a
      002AA1 A3               [24] 1853 	inc	dptr
      002AA2 E0               [24] 1854 	movx	a,@dptr
      002AA3 FA               [12] 1855 	mov	r2,a
      002AA4 EC               [12] 1856 	mov	a,r4
      002AA5 29               [12] 1857 	add	a,r1
      002AA6 F9               [12] 1858 	mov	r1,a
      002AA7 EB               [12] 1859 	mov	a,r3
      002AA8 3A               [12] 1860 	addc	a,r2
      002AA9 FA               [12] 1861 	mov	r2,a
      002AAA 90 18 7C         [24] 1862 	mov	dptr,#_hex_to_uint16_result_65536_85
      002AAD E9               [12] 1863 	mov	a,r1
      002AAE F0               [24] 1864 	movx	@dptr,a
      002AAF EA               [12] 1865 	mov	a,r2
      002AB0 A3               [24] 1866 	inc	dptr
      002AB1 F0               [24] 1867 	movx	@dptr,a
      002AB2 80 34            [24] 1868 	sjmp	00114$
      002AB4                       1869 00109$:
                                   1870 ;	src/command_handlers.c:277: } else if (*hex_str >= 'a' && *hex_str <= 'f') {
      002AB4 8D 82            [24] 1871 	mov	dpl,r5
      002AB6 8E 83            [24] 1872 	mov	dph,r6
      002AB8 8F F0            [24] 1873 	mov	b,r7
      002ABA 12 46 A5         [24] 1874 	lcall	__gptrget
      002ABD FC               [12] 1875 	mov	r4,a
      002ABE BC 61 00         [24] 1876 	cjne	r4,#0x61,00175$
      002AC1                       1877 00175$:
      002AC1 40 25            [24] 1878 	jc	00114$
      002AC3 EC               [12] 1879 	mov	a,r4
      002AC4 24 99            [12] 1880 	add	a,#0xff - 0x66
      002AC6 40 20            [24] 1881 	jc	00114$
                                   1882 ;	src/command_handlers.c:278: result += *hex_str - 'a' + 10;
      002AC8 7B 00            [12] 1883 	mov	r3,#0x00
      002ACA 74 A9            [12] 1884 	mov	a,#0xa9
      002ACC 2C               [12] 1885 	add	a,r4
      002ACD FC               [12] 1886 	mov	r4,a
      002ACE 74 FF            [12] 1887 	mov	a,#0xff
      002AD0 3B               [12] 1888 	addc	a,r3
      002AD1 FB               [12] 1889 	mov	r3,a
      002AD2 90 18 7C         [24] 1890 	mov	dptr,#_hex_to_uint16_result_65536_85
      002AD5 E0               [24] 1891 	movx	a,@dptr
      002AD6 F9               [12] 1892 	mov	r1,a
      002AD7 A3               [24] 1893 	inc	dptr
      002AD8 E0               [24] 1894 	movx	a,@dptr
      002AD9 FA               [12] 1895 	mov	r2,a
      002ADA EC               [12] 1896 	mov	a,r4
      002ADB 29               [12] 1897 	add	a,r1
      002ADC F9               [12] 1898 	mov	r1,a
      002ADD EB               [12] 1899 	mov	a,r3
      002ADE 3A               [12] 1900 	addc	a,r2
      002ADF FA               [12] 1901 	mov	r2,a
      002AE0 90 18 7C         [24] 1902 	mov	dptr,#_hex_to_uint16_result_65536_85
      002AE3 E9               [12] 1903 	mov	a,r1
      002AE4 F0               [24] 1904 	movx	@dptr,a
      002AE5 EA               [12] 1905 	mov	a,r2
      002AE6 A3               [24] 1906 	inc	dptr
      002AE7 F0               [24] 1907 	movx	@dptr,a
      002AE8                       1908 00114$:
                                   1909 ;	src/command_handlers.c:281: hex_str++; // Move to the next character
      002AE8 0D               [12] 1910 	inc	r5
      002AE9 BD 00 01         [24] 1911 	cjne	r5,#0x00,00178$
      002AEC 0E               [12] 1912 	inc	r6
      002AED                       1913 00178$:
      002AED 90 18 79         [24] 1914 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002AF0 ED               [12] 1915 	mov	a,r5
      002AF1 F0               [24] 1916 	movx	@dptr,a
      002AF2 EE               [12] 1917 	mov	a,r6
      002AF3 A3               [24] 1918 	inc	dptr
      002AF4 F0               [24] 1919 	movx	@dptr,a
      002AF5 EF               [12] 1920 	mov	a,r7
      002AF6 A3               [24] 1921 	inc	dptr
      002AF7 F0               [24] 1922 	movx	@dptr,a
      002AF8 02 2A 27         [24] 1923 	ljmp	00116$
      002AFB                       1924 00131$:
      002AFB 90 18 79         [24] 1925 	mov	dptr,#_hex_to_uint16_hex_str_65536_84
      002AFE ED               [12] 1926 	mov	a,r5
      002AFF F0               [24] 1927 	movx	@dptr,a
      002B00 EE               [12] 1928 	mov	a,r6
      002B01 A3               [24] 1929 	inc	dptr
      002B02 F0               [24] 1930 	movx	@dptr,a
      002B03 EF               [12] 1931 	mov	a,r7
      002B04 A3               [24] 1932 	inc	dptr
      002B05 F0               [24] 1933 	movx	@dptr,a
                                   1934 ;	src/command_handlers.c:284: return result;
      002B06 90 18 7C         [24] 1935 	mov	dptr,#_hex_to_uint16_result_65536_85
      002B09 E0               [24] 1936 	movx	a,@dptr
      002B0A FE               [12] 1937 	mov	r6,a
      002B0B A3               [24] 1938 	inc	dptr
      002B0C E0               [24] 1939 	movx	a,@dptr
                                   1940 ;	src/command_handlers.c:285: }
      002B0D 8E 82            [24] 1941 	mov	dpl,r6
      002B0F F5 83            [12] 1942 	mov	dph,a
      002B11 22               [24] 1943 	ret
                                   1944 ;------------------------------------------------------------
                                   1945 ;Allocation info for local variables in function 'check_input_buffer_and_extract_hex_number'
                                   1946 ;------------------------------------------------------------
                                   1947 ;sloc0                     Allocated with name '_check_input_buffer_and_extract_hex_number_sloc0_1_0'
                                   1948 ;buffer_len                Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_2'
                                   1949 ;current_state             Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_3'
                                   1950 ;input_number              Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_4'
                                   1951 ;next_state_on_error       Allocated with name '_check_input_buffer_and_extract_hex_number_PARM_5'
                                   1952 ;input_buffer              Allocated with name '_check_input_buffer_and_extract_hex_number_input_buffer_65536_91'
                                   1953 ;value                     Allocated with name '_check_input_buffer_and_extract_hex_number_value_65537_93'
                                   1954 ;endptr                    Allocated with name '_check_input_buffer_and_extract_hex_number_endptr_65537_93'
                                   1955 ;temp_current_state        Allocated with name '_check_input_buffer_and_extract_hex_number_temp_current_state_65537_93'
                                   1956 ;------------------------------------------------------------
                                   1957 ;	src/command_handlers.c:288: void check_input_buffer_and_extract_hex_number(char *input_buffer, uint16_t buffer_len,get_in_mem_state *current_state,uint16_t *input_number,get_in_mem_state *next_state_on_error)
                                   1958 ;	-----------------------------------------
                                   1959 ;	 function check_input_buffer_and_extract_hex_number
                                   1960 ;	-----------------------------------------
      002B12                       1961 _check_input_buffer_and_extract_hex_number:
      002B12 AF F0            [24] 1962 	mov	r7,b
      002B14 AE 83            [24] 1963 	mov	r6,dph
      002B16 E5 82            [12] 1964 	mov	a,dpl
      002B18 90 18 89         [24] 1965 	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
      002B1B F0               [24] 1966 	movx	@dptr,a
      002B1C EE               [12] 1967 	mov	a,r6
      002B1D A3               [24] 1968 	inc	dptr
      002B1E F0               [24] 1969 	movx	@dptr,a
      002B1F EF               [12] 1970 	mov	a,r7
      002B20 A3               [24] 1971 	inc	dptr
      002B21 F0               [24] 1972 	movx	@dptr,a
                                   1973 ;	src/command_handlers.c:291: *input_number=0;
      002B22 90 18 83         [24] 1974 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
      002B25 E0               [24] 1975 	movx	a,@dptr
      002B26 FD               [12] 1976 	mov	r5,a
      002B27 A3               [24] 1977 	inc	dptr
      002B28 E0               [24] 1978 	movx	a,@dptr
      002B29 FE               [12] 1979 	mov	r6,a
      002B2A A3               [24] 1980 	inc	dptr
      002B2B E0               [24] 1981 	movx	a,@dptr
      002B2C FF               [12] 1982 	mov	r7,a
      002B2D 8D 82            [24] 1983 	mov	dpl,r5
      002B2F 8E 83            [24] 1984 	mov	dph,r6
      002B31 8F F0            [24] 1985 	mov	b,r7
      002B33 E4               [12] 1986 	clr	a
      002B34 12 39 E7         [24] 1987 	lcall	__gptrput
      002B37 A3               [24] 1988 	inc	dptr
      002B38 12 39 E7         [24] 1989 	lcall	__gptrput
                                   1990 ;	src/command_handlers.c:296: if (*input_buffer == 'q' || *input_buffer == 'Q')
      002B3B 90 18 89         [24] 1991 	mov	dptr,#_check_input_buffer_and_extract_hex_number_input_buffer_65536_91
      002B3E E0               [24] 1992 	movx	a,@dptr
      002B3F FA               [12] 1993 	mov	r2,a
      002B40 A3               [24] 1994 	inc	dptr
      002B41 E0               [24] 1995 	movx	a,@dptr
      002B42 FB               [12] 1996 	mov	r3,a
      002B43 A3               [24] 1997 	inc	dptr
      002B44 E0               [24] 1998 	movx	a,@dptr
      002B45 FC               [12] 1999 	mov	r4,a
      002B46 8A 82            [24] 2000 	mov	dpl,r2
      002B48 8B 83            [24] 2001 	mov	dph,r3
      002B4A 8C F0            [24] 2002 	mov	b,r4
      002B4C 12 46 A5         [24] 2003 	lcall	__gptrget
      002B4F F9               [12] 2004 	mov	r1,a
      002B50 B9 71 02         [24] 2005 	cjne	r1,#0x71,00117$
      002B53 80 03            [24] 2006 	sjmp	00101$
      002B55                       2007 00117$:
      002B55 B9 51 1C         [24] 2008 	cjne	r1,#0x51,00102$
      002B58                       2009 00101$:
                                   2010 ;	src/command_handlers.c:298: *current_state = EXIT;
      002B58 90 18 80         [24] 2011 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      002B5B E0               [24] 2012 	movx	a,@dptr
      002B5C F5 16            [12] 2013 	mov	_check_input_buffer_and_extract_hex_number_sloc0_1_0,a
      002B5E A3               [24] 2014 	inc	dptr
      002B5F E0               [24] 2015 	movx	a,@dptr
      002B60 F5 17            [12] 2016 	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1),a
      002B62 A3               [24] 2017 	inc	dptr
      002B63 E0               [24] 2018 	movx	a,@dptr
      002B64 F5 18            [12] 2019 	mov	(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2),a
      002B66 85 16 82         [24] 2020 	mov	dpl,_check_input_buffer_and_extract_hex_number_sloc0_1_0
      002B69 85 17 83         [24] 2021 	mov	dph,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 1)
      002B6C 85 18 F0         [24] 2022 	mov	b,(_check_input_buffer_and_extract_hex_number_sloc0_1_0 + 2)
      002B6F 74 0B            [12] 2023 	mov	a,#0x0b
                                   2024 ;	src/command_handlers.c:299: return;
      002B71 02 39 E7         [24] 2025 	ljmp	__gptrput
      002B74                       2026 00102$:
                                   2027 ;	src/command_handlers.c:302: if(is_valid_hex(input_buffer))
      002B74 8A 82            [24] 2028 	mov	dpl,r2
      002B76 8B 83            [24] 2029 	mov	dph,r3
      002B78 8C F0            [24] 2030 	mov	b,r4
      002B7A C0 07            [24] 2031 	push	ar7
      002B7C C0 06            [24] 2032 	push	ar6
      002B7E C0 05            [24] 2033 	push	ar5
      002B80 C0 04            [24] 2034 	push	ar4
      002B82 C0 03            [24] 2035 	push	ar3
      002B84 C0 02            [24] 2036 	push	ar2
      002B86 12 29 12         [24] 2037 	lcall	_is_valid_hex
      002B89 E5 82            [12] 2038 	mov	a,dpl
      002B8B D0 02            [24] 2039 	pop	ar2
      002B8D D0 03            [24] 2040 	pop	ar3
      002B8F D0 04            [24] 2041 	pop	ar4
      002B91 D0 05            [24] 2042 	pop	ar5
      002B93 D0 06            [24] 2043 	pop	ar6
      002B95 D0 07            [24] 2044 	pop	ar7
      002B97 60 28            [24] 2045 	jz	00105$
                                   2046 ;	src/command_handlers.c:305: value = hex_to_uint16(input_buffer);
      002B99 8A 82            [24] 2047 	mov	dpl,r2
      002B9B 8B 83            [24] 2048 	mov	dph,r3
      002B9D 8C F0            [24] 2049 	mov	b,r4
      002B9F C0 07            [24] 2050 	push	ar7
      002BA1 C0 06            [24] 2051 	push	ar6
      002BA3 C0 05            [24] 2052 	push	ar5
      002BA5 12 29 BD         [24] 2053 	lcall	_hex_to_uint16
      002BA8 AB 82            [24] 2054 	mov	r3,dpl
      002BAA AC 83            [24] 2055 	mov	r4,dph
      002BAC D0 05            [24] 2056 	pop	ar5
      002BAE D0 06            [24] 2057 	pop	ar6
      002BB0 D0 07            [24] 2058 	pop	ar7
                                   2059 ;	src/command_handlers.c:306: *input_number = value;
      002BB2 8D 82            [24] 2060 	mov	dpl,r5
      002BB4 8E 83            [24] 2061 	mov	dph,r6
      002BB6 8F F0            [24] 2062 	mov	b,r7
      002BB8 EB               [12] 2063 	mov	a,r3
      002BB9 12 39 E7         [24] 2064 	lcall	__gptrput
      002BBC A3               [24] 2065 	inc	dptr
      002BBD EC               [12] 2066 	mov	a,r4
      002BBE 02 39 E7         [24] 2067 	ljmp	__gptrput
      002BC1                       2068 00105$:
                                   2069 ;	src/command_handlers.c:310: *current_state = *next_state_on_error;
      002BC1 90 18 80         [24] 2070 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      002BC4 E0               [24] 2071 	movx	a,@dptr
      002BC5 FD               [12] 2072 	mov	r5,a
      002BC6 A3               [24] 2073 	inc	dptr
      002BC7 E0               [24] 2074 	movx	a,@dptr
      002BC8 FE               [12] 2075 	mov	r6,a
      002BC9 A3               [24] 2076 	inc	dptr
      002BCA E0               [24] 2077 	movx	a,@dptr
      002BCB FF               [12] 2078 	mov	r7,a
      002BCC 90 18 86         [24] 2079 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
      002BCF E0               [24] 2080 	movx	a,@dptr
      002BD0 FA               [12] 2081 	mov	r2,a
      002BD1 A3               [24] 2082 	inc	dptr
      002BD2 E0               [24] 2083 	movx	a,@dptr
      002BD3 FB               [12] 2084 	mov	r3,a
      002BD4 A3               [24] 2085 	inc	dptr
      002BD5 E0               [24] 2086 	movx	a,@dptr
      002BD6 FC               [12] 2087 	mov	r4,a
      002BD7 8A 82            [24] 2088 	mov	dpl,r2
      002BD9 8B 83            [24] 2089 	mov	dph,r3
      002BDB 8C F0            [24] 2090 	mov	b,r4
      002BDD 12 46 A5         [24] 2091 	lcall	__gptrget
      002BE0 8D 82            [24] 2092 	mov	dpl,r5
      002BE2 8E 83            [24] 2093 	mov	dph,r6
      002BE4 8F F0            [24] 2094 	mov	b,r7
      002BE6 12 39 E7         [24] 2095 	lcall	__gptrput
                                   2096 ;	src/command_handlers.c:313: return;
                                   2097 ;	src/command_handlers.c:314: }
      002BE9 22               [24] 2098 	ret
                                   2099 ;------------------------------------------------------------
                                   2100 ;Allocation info for local variables in function 'action_for_write_to_specific_position'
                                   2101 ;------------------------------------------------------------
                                   2102 ;input_buffer              Allocated with name '_action_for_write_to_specific_position_input_buffer_65536_98'
                                   2103 ;input_buffer_string       Allocated with name '_action_for_write_to_specific_position_input_buffer_string_65536_98'
                                   2104 ;error_message             Allocated with name '_action_for_write_to_specific_position_error_message_65536_98'
                                   2105 ;row_number                Allocated with name '_action_for_write_to_specific_position_row_number_65536_98'
                                   2106 ;column_number             Allocated with name '_action_for_write_to_specific_position_column_number_65536_98'
                                   2107 ;current_state             Allocated with name '_action_for_write_to_specific_position_current_state_65536_98'
                                   2108 ;wait_for_input            Allocated with name '_action_for_write_to_specific_position_wait_for_input_65536_98'
                                   2109 ;state_on_error            Allocated with name '_action_for_write_to_specific_position_state_on_error_65536_98'
                                   2110 ;------------------------------------------------------------
                                   2111 ;	src/command_handlers.c:316: void action_for_write_to_specific_position(void)
                                   2112 ;	-----------------------------------------
                                   2113 ;	 function action_for_write_to_specific_position
                                   2114 ;	-----------------------------------------
      002BEA                       2115 _action_for_write_to_specific_position:
                                   2116 ;	src/command_handlers.c:321: char *error_message = "\r\nOut of range\r\n";
                                   2117 ;	src/command_handlers.c:322: uint8_t row_number = 0;
      002BEA 90 18 F3         [24] 2118 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002BED E4               [12] 2119 	clr	a
      002BEE F0               [24] 2120 	movx	@dptr,a
                                   2121 ;	src/command_handlers.c:323: uint8_t column_number = 0;
      002BEF 90 18 F4         [24] 2122 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002BF2 F0               [24] 2123 	movx	@dptr,a
                                   2124 ;	src/command_handlers.c:324: get_in_mem_state current_state = GET_ROW_INPUT_FROM_USER;
      002BF3 90 18 F5         [24] 2125 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002BF6 74 02            [12] 2126 	mov	a,#0x02
      002BF8 F0               [24] 2127 	movx	@dptr,a
                                   2128 ;	src/command_handlers.c:325: bool wait_for_input = true;
      002BF9 90 18 F6         [24] 2129 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002BFC 14               [12] 2130 	dec	a
      002BFD F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	src/command_handlers.c:328: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002BFE 90 18 F7         [24] 2133 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002C01 04               [12] 2134 	inc	a
      002C02 F0               [24] 2135 	movx	@dptr,a
                                   2136 ;	src/command_handlers.c:329: while (wait_for_input)
      002C03                       2137 00126$:
      002C03 90 18 F6         [24] 2138 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002C06 E0               [24] 2139 	movx	a,@dptr
      002C07 70 01            [24] 2140 	jnz	00171$
      002C09 22               [24] 2141 	ret
      002C0A                       2142 00171$:
                                   2143 ;	src/command_handlers.c:331: switch (current_state)
      002C0A 90 18 F5         [24] 2144 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002C0D E0               [24] 2145 	movx	a,@dptr
      002C0E FF               [12] 2146 	mov  r7,a
      002C0F 24 F4            [12] 2147 	add	a,#0xff - 0x0b
      002C11 40 F0            [24] 2148 	jc	00126$
      002C13 EF               [12] 2149 	mov	a,r7
      002C14 24 0A            [12] 2150 	add	a,#(00173$-3-.)
      002C16 83               [24] 2151 	movc	a,@a+pc
      002C17 F5 82            [12] 2152 	mov	dpl,a
      002C19 EF               [12] 2153 	mov	a,r7
      002C1A 24 10            [12] 2154 	add	a,#(00174$-3-.)
      002C1C 83               [24] 2155 	movc	a,@a+pc
      002C1D F5 83            [12] 2156 	mov	dph,a
      002C1F E4               [12] 2157 	clr	a
      002C20 73               [24] 2158 	jmp	@a+dptr
      002C21                       2159 00173$:
      002C21 C3                    2160 	.db	00119$
      002C22 08                    2161 	.db	00122$
      002C23 39                    2162 	.db	00101$
      002C24 FF                    2163 	.db	00110$
      002C25 7E                    2164 	.db	00104$
      002C26 44                    2165 	.db	00113$
      002C27 03                    2166 	.db	00126$
      002C28 03                    2167 	.db	00126$
      002C29 03                    2168 	.db	00126$
      002C2A 03                    2169 	.db	00126$
      002C2B 03                    2170 	.db	00126$
      002C2C 47                    2171 	.db	00123$
      002C2D                       2172 00174$:
      002C2D 2D                    2173 	.db	00119$>>8
      002C2E 2E                    2174 	.db	00122$>>8
      002C2F 2C                    2175 	.db	00101$>>8
      002C30 2C                    2176 	.db	00110$>>8
      002C31 2C                    2177 	.db	00104$>>8
      002C32 2D                    2178 	.db	00113$>>8
      002C33 2C                    2179 	.db	00126$>>8
      002C34 2C                    2180 	.db	00126$>>8
      002C35 2C                    2181 	.db	00126$>>8
      002C36 2C                    2182 	.db	00126$>>8
      002C37 2C                    2183 	.db	00126$>>8
      002C38 2E                    2184 	.db	00123$>>8
                                   2185 ;	src/command_handlers.c:333: case GET_ROW_INPUT_FROM_USER:
      002C39                       2186 00101$:
                                   2187 ;	src/command_handlers.c:334: printf("\r\nEnter the row number(between 1 and 4):");
      002C39 74 AC            [12] 2188 	mov	a,#___str_39
      002C3B C0 E0            [24] 2189 	push	acc
      002C3D 74 52            [12] 2190 	mov	a,#(___str_39 >> 8)
      002C3F C0 E0            [24] 2191 	push	acc
      002C41 74 80            [12] 2192 	mov	a,#0x80
      002C43 C0 E0            [24] 2193 	push	acc
      002C45 12 3C 63         [24] 2194 	lcall	_printf
      002C48 15 81            [12] 2195 	dec	sp
      002C4A 15 81            [12] 2196 	dec	sp
      002C4C 15 81            [12] 2197 	dec	sp
                                   2198 ;	src/command_handlers.c:335: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002C4E 90 19 1A         [24] 2199 	mov	dptr,#_getstr_PARM_2
      002C51 74 03            [12] 2200 	mov	a,#0x03
      002C53 F0               [24] 2201 	movx	@dptr,a
      002C54 E4               [12] 2202 	clr	a
      002C55 A3               [24] 2203 	inc	dptr
      002C56 F0               [24] 2204 	movx	@dptr,a
      002C57 90 19 1C         [24] 2205 	mov	dptr,#_getstr_PARM_3
      002C5A 74 67            [12] 2206 	mov	a,#___str_36
      002C5C F0               [24] 2207 	movx	@dptr,a
      002C5D 74 52            [12] 2208 	mov	a,#(___str_36 >> 8)
      002C5F A3               [24] 2209 	inc	dptr
      002C60 F0               [24] 2210 	movx	@dptr,a
      002C61 74 80            [12] 2211 	mov	a,#0x80
      002C63 A3               [24] 2212 	inc	dptr
      002C64 F0               [24] 2213 	movx	@dptr,a
      002C65 90 18 8C         [24] 2214 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002C68 75 F0 00         [24] 2215 	mov	b,#0x00
      002C6B 12 32 42         [24] 2216 	lcall	_getstr
      002C6E E5 82            [12] 2217 	mov	a,dpl
      002C70 60 03            [24] 2218 	jz	00175$
      002C72 02 2C 03         [24] 2219 	ljmp	00126$
      002C75                       2220 00175$:
                                   2221 ;	src/command_handlers.c:337: current_state = PARSE_ROW_INPUT;
      002C75 90 18 F5         [24] 2222 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002C78 74 04            [12] 2223 	mov	a,#0x04
      002C7A F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	src/command_handlers.c:339: break;
      002C7B 02 2C 03         [24] 2226 	ljmp	00126$
                                   2227 ;	src/command_handlers.c:340: case PARSE_ROW_INPUT:
      002C7E                       2228 00104$:
                                   2229 ;	src/command_handlers.c:341: state_on_error = GET_ROW_INPUT_FROM_USER;
      002C7E 90 18 F7         [24] 2230 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002C81 74 02            [12] 2231 	mov	a,#0x02
      002C83 F0               [24] 2232 	movx	@dptr,a
                                   2233 ;	src/command_handlers.c:342: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&row_number,&state_on_error);
      002C84 90 18 68         [24] 2234 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002C87 04               [12] 2235 	inc	a
      002C88 F0               [24] 2236 	movx	@dptr,a
      002C89 E4               [12] 2237 	clr	a
      002C8A A3               [24] 2238 	inc	dptr
      002C8B F0               [24] 2239 	movx	@dptr,a
      002C8C 90 18 6A         [24] 2240 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002C8F 74 F5            [12] 2241 	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
      002C91 F0               [24] 2242 	movx	@dptr,a
      002C92 74 18            [12] 2243 	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
      002C94 A3               [24] 2244 	inc	dptr
      002C95 F0               [24] 2245 	movx	@dptr,a
      002C96 E4               [12] 2246 	clr	a
      002C97 A3               [24] 2247 	inc	dptr
      002C98 F0               [24] 2248 	movx	@dptr,a
      002C99 90 18 6D         [24] 2249 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002C9C 74 F3            [12] 2250 	mov	a,#_action_for_write_to_specific_position_row_number_65536_98
      002C9E F0               [24] 2251 	movx	@dptr,a
      002C9F 74 18            [12] 2252 	mov	a,#(_action_for_write_to_specific_position_row_number_65536_98 >> 8)
      002CA1 A3               [24] 2253 	inc	dptr
      002CA2 F0               [24] 2254 	movx	@dptr,a
      002CA3 E4               [12] 2255 	clr	a
      002CA4 A3               [24] 2256 	inc	dptr
      002CA5 F0               [24] 2257 	movx	@dptr,a
      002CA6 90 18 70         [24] 2258 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002CA9 74 F7            [12] 2259 	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
      002CAB F0               [24] 2260 	movx	@dptr,a
      002CAC 74 18            [12] 2261 	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
      002CAE A3               [24] 2262 	inc	dptr
      002CAF F0               [24] 2263 	movx	@dptr,a
      002CB0 E4               [12] 2264 	clr	a
      002CB1 A3               [24] 2265 	inc	dptr
      002CB2 F0               [24] 2266 	movx	@dptr,a
      002CB3 90 18 8C         [24] 2267 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002CB6 75 F0 00         [24] 2268 	mov	b,#0x00
      002CB9 12 27 C5         [24] 2269 	lcall	_check_input_buffer_and_extract_number
                                   2270 ;	src/command_handlers.c:343: if(current_state==PARSE_ROW_INPUT)
      002CBC 90 18 F5         [24] 2271 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002CBF E0               [24] 2272 	movx	a,@dptr
      002CC0 FF               [12] 2273 	mov	r7,a
      002CC1 BF 04 02         [24] 2274 	cjne	r7,#0x04,00176$
      002CC4 80 03            [24] 2275 	sjmp	00177$
      002CC6                       2276 00176$:
      002CC6 02 2C 03         [24] 2277 	ljmp	00126$
      002CC9                       2278 00177$:
                                   2279 ;	src/command_handlers.c:345: if(row_number<=4)
      002CC9 90 18 F3         [24] 2280 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002CCC E0               [24] 2281 	movx	a,@dptr
      002CCD FF               [12] 2282 	mov  r7,a
      002CCE 24 FB            [12] 2283 	add	a,#0xff - 0x04
      002CD0 40 0F            [24] 2284 	jc	00106$
                                   2285 ;	src/command_handlers.c:347: row_number-=1;
      002CD2 EF               [12] 2286 	mov	a,r7
      002CD3 14               [12] 2287 	dec	a
      002CD4 90 18 F3         [24] 2288 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002CD7 F0               [24] 2289 	movx	@dptr,a
                                   2290 ;	src/command_handlers.c:348: current_state=GET_COLUMN_INPUT_FROM_USER;
      002CD8 90 18 F5         [24] 2291 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002CDB 74 03            [12] 2292 	mov	a,#0x03
      002CDD F0               [24] 2293 	movx	@dptr,a
      002CDE 02 2C 03         [24] 2294 	ljmp	00126$
      002CE1                       2295 00106$:
                                   2296 ;	src/command_handlers.c:352: printf("\r\nInvalid Input:");
      002CE1 74 D5            [12] 2297 	mov	a,#___str_40
      002CE3 C0 E0            [24] 2298 	push	acc
      002CE5 74 52            [12] 2299 	mov	a,#(___str_40 >> 8)
      002CE7 C0 E0            [24] 2300 	push	acc
      002CE9 74 80            [12] 2301 	mov	a,#0x80
      002CEB C0 E0            [24] 2302 	push	acc
      002CED 12 3C 63         [24] 2303 	lcall	_printf
      002CF0 15 81            [12] 2304 	dec	sp
      002CF2 15 81            [12] 2305 	dec	sp
      002CF4 15 81            [12] 2306 	dec	sp
                                   2307 ;	src/command_handlers.c:353: current_state = GET_ROW_INPUT_FROM_USER;
      002CF6 90 18 F5         [24] 2308 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002CF9 74 02            [12] 2309 	mov	a,#0x02
      002CFB F0               [24] 2310 	movx	@dptr,a
                                   2311 ;	src/command_handlers.c:357: break;
      002CFC 02 2C 03         [24] 2312 	ljmp	00126$
                                   2313 ;	src/command_handlers.c:358: case GET_COLUMN_INPUT_FROM_USER:
      002CFF                       2314 00110$:
                                   2315 ;	src/command_handlers.c:360: printf("\r\nEnter the column number(between 1 and 16):");
      002CFF 74 E6            [12] 2316 	mov	a,#___str_41
      002D01 C0 E0            [24] 2317 	push	acc
      002D03 74 52            [12] 2318 	mov	a,#(___str_41 >> 8)
      002D05 C0 E0            [24] 2319 	push	acc
      002D07 74 80            [12] 2320 	mov	a,#0x80
      002D09 C0 E0            [24] 2321 	push	acc
      002D0B 12 3C 63         [24] 2322 	lcall	_printf
      002D0E 15 81            [12] 2323 	dec	sp
      002D10 15 81            [12] 2324 	dec	sp
      002D12 15 81            [12] 2325 	dec	sp
                                   2326 ;	src/command_handlers.c:361: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002D14 90 19 1A         [24] 2327 	mov	dptr,#_getstr_PARM_2
      002D17 74 03            [12] 2328 	mov	a,#0x03
      002D19 F0               [24] 2329 	movx	@dptr,a
      002D1A E4               [12] 2330 	clr	a
      002D1B A3               [24] 2331 	inc	dptr
      002D1C F0               [24] 2332 	movx	@dptr,a
      002D1D 90 19 1C         [24] 2333 	mov	dptr,#_getstr_PARM_3
      002D20 74 67            [12] 2334 	mov	a,#___str_36
      002D22 F0               [24] 2335 	movx	@dptr,a
      002D23 74 52            [12] 2336 	mov	a,#(___str_36 >> 8)
      002D25 A3               [24] 2337 	inc	dptr
      002D26 F0               [24] 2338 	movx	@dptr,a
      002D27 74 80            [12] 2339 	mov	a,#0x80
      002D29 A3               [24] 2340 	inc	dptr
      002D2A F0               [24] 2341 	movx	@dptr,a
      002D2B 90 18 8C         [24] 2342 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002D2E 75 F0 00         [24] 2343 	mov	b,#0x00
      002D31 12 32 42         [24] 2344 	lcall	_getstr
      002D34 E5 82            [12] 2345 	mov	a,dpl
      002D36 60 03            [24] 2346 	jz	00179$
      002D38 02 2C 03         [24] 2347 	ljmp	00126$
      002D3B                       2348 00179$:
                                   2349 ;	src/command_handlers.c:363: current_state = PARSE_COLUMN_INPUT;
      002D3B 90 18 F5         [24] 2350 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002D3E 74 05            [12] 2351 	mov	a,#0x05
      002D40 F0               [24] 2352 	movx	@dptr,a
                                   2353 ;	src/command_handlers.c:365: break;
      002D41 02 2C 03         [24] 2354 	ljmp	00126$
                                   2355 ;	src/command_handlers.c:366: case PARSE_COLUMN_INPUT:
      002D44                       2356 00113$:
                                   2357 ;	src/command_handlers.c:367: state_on_error = GET_COLUMN_INPUT_FROM_USER;
      002D44 90 18 F7         [24] 2358 	mov	dptr,#_action_for_write_to_specific_position_state_on_error_65536_98
      002D47 74 03            [12] 2359 	mov	a,#0x03
      002D49 F0               [24] 2360 	movx	@dptr,a
                                   2361 ;	src/command_handlers.c:368: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&column_number,&state_on_error);
      002D4A 90 18 68         [24] 2362 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002D4D F0               [24] 2363 	movx	@dptr,a
      002D4E E4               [12] 2364 	clr	a
      002D4F A3               [24] 2365 	inc	dptr
      002D50 F0               [24] 2366 	movx	@dptr,a
      002D51 90 18 6A         [24] 2367 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002D54 74 F5            [12] 2368 	mov	a,#_action_for_write_to_specific_position_current_state_65536_98
      002D56 F0               [24] 2369 	movx	@dptr,a
      002D57 74 18            [12] 2370 	mov	a,#(_action_for_write_to_specific_position_current_state_65536_98 >> 8)
      002D59 A3               [24] 2371 	inc	dptr
      002D5A F0               [24] 2372 	movx	@dptr,a
      002D5B E4               [12] 2373 	clr	a
      002D5C A3               [24] 2374 	inc	dptr
      002D5D F0               [24] 2375 	movx	@dptr,a
      002D5E 90 18 6D         [24] 2376 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002D61 74 F4            [12] 2377 	mov	a,#_action_for_write_to_specific_position_column_number_65536_98
      002D63 F0               [24] 2378 	movx	@dptr,a
      002D64 74 18            [12] 2379 	mov	a,#(_action_for_write_to_specific_position_column_number_65536_98 >> 8)
      002D66 A3               [24] 2380 	inc	dptr
      002D67 F0               [24] 2381 	movx	@dptr,a
      002D68 E4               [12] 2382 	clr	a
      002D69 A3               [24] 2383 	inc	dptr
      002D6A F0               [24] 2384 	movx	@dptr,a
      002D6B 90 18 70         [24] 2385 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002D6E 74 F7            [12] 2386 	mov	a,#_action_for_write_to_specific_position_state_on_error_65536_98
      002D70 F0               [24] 2387 	movx	@dptr,a
      002D71 74 18            [12] 2388 	mov	a,#(_action_for_write_to_specific_position_state_on_error_65536_98 >> 8)
      002D73 A3               [24] 2389 	inc	dptr
      002D74 F0               [24] 2390 	movx	@dptr,a
      002D75 E4               [12] 2391 	clr	a
      002D76 A3               [24] 2392 	inc	dptr
      002D77 F0               [24] 2393 	movx	@dptr,a
      002D78 90 18 8C         [24] 2394 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_65536_98
      002D7B 75 F0 00         [24] 2395 	mov	b,#0x00
      002D7E 12 27 C5         [24] 2396 	lcall	_check_input_buffer_and_extract_number
                                   2397 ;	src/command_handlers.c:369: if(current_state==PARSE_COLUMN_INPUT)
      002D81 90 18 F5         [24] 2398 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002D84 E0               [24] 2399 	movx	a,@dptr
      002D85 FF               [12] 2400 	mov	r7,a
      002D86 BF 05 02         [24] 2401 	cjne	r7,#0x05,00180$
      002D89 80 03            [24] 2402 	sjmp	00181$
      002D8B                       2403 00180$:
      002D8B 02 2C 03         [24] 2404 	ljmp	00126$
      002D8E                       2405 00181$:
                                   2406 ;	src/command_handlers.c:371: if(row_number<=16)
      002D8E 90 18 F3         [24] 2407 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002D91 E0               [24] 2408 	movx	a,@dptr
      002D92 24 EF            [12] 2409 	add	a,#0xff - 0x10
      002D94 40 0F            [24] 2410 	jc	00115$
                                   2411 ;	src/command_handlers.c:373: column_number-=1;
      002D96 90 18 F4         [24] 2412 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002D99 E0               [24] 2413 	movx	a,@dptr
      002D9A FF               [12] 2414 	mov	r7,a
      002D9B 14               [12] 2415 	dec	a
      002D9C F0               [24] 2416 	movx	@dptr,a
                                   2417 ;	src/command_handlers.c:374: current_state = GET_STRING_INPUT_FROM_USER;
      002D9D 90 18 F5         [24] 2418 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002DA0 E4               [12] 2419 	clr	a
      002DA1 F0               [24] 2420 	movx	@dptr,a
      002DA2 02 2C 03         [24] 2421 	ljmp	00126$
      002DA5                       2422 00115$:
                                   2423 ;	src/command_handlers.c:378: printf("\r\nInvalid Input:");
      002DA5 74 D5            [12] 2424 	mov	a,#___str_40
      002DA7 C0 E0            [24] 2425 	push	acc
      002DA9 74 52            [12] 2426 	mov	a,#(___str_40 >> 8)
      002DAB C0 E0            [24] 2427 	push	acc
      002DAD 74 80            [12] 2428 	mov	a,#0x80
      002DAF C0 E0            [24] 2429 	push	acc
      002DB1 12 3C 63         [24] 2430 	lcall	_printf
      002DB4 15 81            [12] 2431 	dec	sp
      002DB6 15 81            [12] 2432 	dec	sp
      002DB8 15 81            [12] 2433 	dec	sp
                                   2434 ;	src/command_handlers.c:379: current_state = GET_COLUMN_INPUT_FROM_USER;
      002DBA 90 18 F5         [24] 2435 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002DBD 74 03            [12] 2436 	mov	a,#0x03
      002DBF F0               [24] 2437 	movx	@dptr,a
                                   2438 ;	src/command_handlers.c:383: break;
      002DC0 02 2C 03         [24] 2439 	ljmp	00126$
                                   2440 ;	src/command_handlers.c:384: case GET_STRING_INPUT_FROM_USER:
      002DC3                       2441 00119$:
                                   2442 ;	src/command_handlers.c:385: printf("\r\nEnter the string and press enter:");
      002DC3 74 78            [12] 2443 	mov	a,#___str_37
      002DC5 C0 E0            [24] 2444 	push	acc
      002DC7 74 52            [12] 2445 	mov	a,#(___str_37 >> 8)
      002DC9 C0 E0            [24] 2446 	push	acc
      002DCB 74 80            [12] 2447 	mov	a,#0x80
      002DCD C0 E0            [24] 2448 	push	acc
      002DCF 12 3C 63         [24] 2449 	lcall	_printf
      002DD2 15 81            [12] 2450 	dec	sp
      002DD4 15 81            [12] 2451 	dec	sp
      002DD6 15 81            [12] 2452 	dec	sp
                                   2453 ;	src/command_handlers.c:386: if (!getstr(input_buffer_string, sizeof(input_buffer_string), error_message))
      002DD8 90 19 1A         [24] 2454 	mov	dptr,#_getstr_PARM_2
      002DDB 74 64            [12] 2455 	mov	a,#0x64
      002DDD F0               [24] 2456 	movx	@dptr,a
      002DDE E4               [12] 2457 	clr	a
      002DDF A3               [24] 2458 	inc	dptr
      002DE0 F0               [24] 2459 	movx	@dptr,a
      002DE1 90 19 1C         [24] 2460 	mov	dptr,#_getstr_PARM_3
      002DE4 74 67            [12] 2461 	mov	a,#___str_36
      002DE6 F0               [24] 2462 	movx	@dptr,a
      002DE7 74 52            [12] 2463 	mov	a,#(___str_36 >> 8)
      002DE9 A3               [24] 2464 	inc	dptr
      002DEA F0               [24] 2465 	movx	@dptr,a
      002DEB 74 80            [12] 2466 	mov	a,#0x80
      002DED A3               [24] 2467 	inc	dptr
      002DEE F0               [24] 2468 	movx	@dptr,a
      002DEF 90 18 8F         [24] 2469 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
      002DF2 75 F0 00         [24] 2470 	mov	b,#0x00
      002DF5 12 32 42         [24] 2471 	lcall	_getstr
      002DF8 E5 82            [12] 2472 	mov	a,dpl
      002DFA 60 03            [24] 2473 	jz	00183$
      002DFC 02 2C 03         [24] 2474 	ljmp	00126$
      002DFF                       2475 00183$:
                                   2476 ;	src/command_handlers.c:388: current_state = PUT_DATA_TO_LCD;
      002DFF 90 18 F5         [24] 2477 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002E02 74 01            [12] 2478 	mov	a,#0x01
      002E04 F0               [24] 2479 	movx	@dptr,a
                                   2480 ;	src/command_handlers.c:390: break;
      002E05 02 2C 03         [24] 2481 	ljmp	00126$
                                   2482 ;	src/command_handlers.c:391: case PUT_DATA_TO_LCD:
      002E08                       2483 00122$:
                                   2484 ;	src/command_handlers.c:397: }
      002E08 7F 01            [12] 2485 	mov	r7,#0x01
      002E0A 10 AF 02         [24] 2486 	jbc	ea,00184$
      002E0D 7F 00            [12] 2487 	mov	r7,#0x00
      002E0F                       2488 00184$:
                                   2489 ;	src/command_handlers.c:394: lcd_clear();
      002E0F C0 07            [24] 2490 	push	ar7
      002E11 12 34 86         [24] 2491 	lcall	_lcd_clear
      002E14 D0 07            [24] 2492 	pop	ar7
                                   2493 ;	src/command_handlers.c:395: lcd_put_string(input_buffer_string,row_number,column_number);
      002E16 90 18 F3         [24] 2494 	mov	dptr,#_action_for_write_to_specific_position_row_number_65536_98
      002E19 E0               [24] 2495 	movx	a,@dptr
      002E1A FE               [12] 2496 	mov	r6,a
      002E1B 90 18 F4         [24] 2497 	mov	dptr,#_action_for_write_to_specific_position_column_number_65536_98
      002E1E E0               [24] 2498 	movx	a,@dptr
      002E1F FD               [12] 2499 	mov	r5,a
      002E20 90 19 2A         [24] 2500 	mov	dptr,#_lcd_put_string_PARM_2
      002E23 EE               [12] 2501 	mov	a,r6
      002E24 F0               [24] 2502 	movx	@dptr,a
      002E25 90 19 2B         [24] 2503 	mov	dptr,#_lcd_put_string_PARM_3
      002E28 ED               [12] 2504 	mov	a,r5
      002E29 F0               [24] 2505 	movx	@dptr,a
      002E2A 90 18 8F         [24] 2506 	mov	dptr,#_action_for_write_to_specific_position_input_buffer_string_65536_98
      002E2D 75 F0 00         [24] 2507 	mov	b,#0x00
      002E30 C0 07            [24] 2508 	push	ar7
      002E32 12 34 A6         [24] 2509 	lcall	_lcd_put_string
                                   2510 ;	src/command_handlers.c:396: current_time_display();
      002E35 12 38 B6         [24] 2511 	lcall	_current_time_display
      002E38 D0 07            [24] 2512 	pop	ar7
      002E3A EF               [12] 2513 	mov	a,r7
      002E3B 13               [12] 2514 	rrc	a
      002E3C 92 AF            [24] 2515 	mov	ea,c
                                   2516 ;	src/command_handlers.c:399: current_state = EXIT;
      002E3E 90 18 F5         [24] 2517 	mov	dptr,#_action_for_write_to_specific_position_current_state_65536_98
      002E41 74 0B            [12] 2518 	mov	a,#0x0b
      002E43 F0               [24] 2519 	movx	@dptr,a
                                   2520 ;	src/command_handlers.c:400: break;
      002E44 02 2C 03         [24] 2521 	ljmp	00126$
                                   2522 ;	src/command_handlers.c:401: case EXIT:
      002E47                       2523 00123$:
                                   2524 ;	src/command_handlers.c:402: wait_for_input = false;
      002E47 90 18 F6         [24] 2525 	mov	dptr,#_action_for_write_to_specific_position_wait_for_input_65536_98
      002E4A E4               [12] 2526 	clr	a
      002E4B F0               [24] 2527 	movx	@dptr,a
                                   2528 ;	src/command_handlers.c:403: break;
                                   2529 ;	src/command_handlers.c:406: }
                                   2530 ;	src/command_handlers.c:408: }
      002E4C 02 2C 03         [24] 2531 	ljmp	00126$
                                   2532 ;------------------------------------------------------------
                                   2533 ;Allocation info for local variables in function 'action_for_display_custom_char'
                                   2534 ;------------------------------------------------------------
                                   2535 ;input_buffer              Allocated with name '_action_for_display_custom_char_input_buffer_65536_112'
                                   2536 ;error_message             Allocated with name '_action_for_display_custom_char_error_message_65536_112'
                                   2537 ;char_code_row_value       Allocated with name '_action_for_display_custom_char_char_code_row_value_65536_112'
                                   2538 ;char_code_number          Allocated with name '_action_for_display_custom_char_char_code_number_65536_112'
                                   2539 ;current_state             Allocated with name '_action_for_display_custom_char_current_state_65536_112'
                                   2540 ;wait_for_input            Allocated with name '_action_for_display_custom_char_wait_for_input_65536_112'
                                   2541 ;char_code_row_values      Allocated with name '_action_for_display_custom_char_char_code_row_values_65536_112'
                                   2542 ;state_on_error            Allocated with name '_action_for_display_custom_char_state_on_error_65536_112'
                                   2543 ;------------------------------------------------------------
                                   2544 ;	src/command_handlers.c:409: void action_for_display_custom_char(void)
                                   2545 ;	-----------------------------------------
                                   2546 ;	 function action_for_display_custom_char
                                   2547 ;	-----------------------------------------
      002E4F                       2548 _action_for_display_custom_char:
                                   2549 ;	src/command_handlers.c:412: char *error_message = "\r\nOut of range\r\n";
                                   2550 ;	src/command_handlers.c:414: uint8_t char_code_number = 0;
      002E4F 90 18 FB         [24] 2551 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002E52 E4               [12] 2552 	clr	a
      002E53 F0               [24] 2553 	movx	@dptr,a
                                   2554 ;	src/command_handlers.c:415: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002E54 90 18 FC         [24] 2555 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002E57 74 06            [12] 2556 	mov	a,#0x06
      002E59 F0               [24] 2557 	movx	@dptr,a
                                   2558 ;	src/command_handlers.c:416: bool wait_for_input = true;
      002E5A 90 18 FD         [24] 2559 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002E5D 74 01            [12] 2560 	mov	a,#0x01
      002E5F F0               [24] 2561 	movx	@dptr,a
                                   2562 ;	src/command_handlers.c:420: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002E60 90 19 06         [24] 2563 	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
      002E63 04               [12] 2564 	inc	a
      002E64 F0               [24] 2565 	movx	@dptr,a
                                   2566 ;	src/command_handlers.c:421: while (wait_for_input)
      002E65                       2567 00115$:
      002E65 90 18 FD         [24] 2568 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002E68 E0               [24] 2569 	movx	a,@dptr
      002E69 70 01            [24] 2570 	jnz	00160$
      002E6B 22               [24] 2571 	ret
      002E6C                       2572 00160$:
                                   2573 ;	src/command_handlers.c:423: switch (current_state)
      002E6C 90 18 FC         [24] 2574 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002E6F E0               [24] 2575 	movx	a,@dptr
      002E70 FF               [12] 2576 	mov	r7,a
      002E71 BF 06 02         [24] 2577 	cjne	r7,#0x06,00161$
      002E74 80 13            [24] 2578 	sjmp	00101$
      002E76                       2579 00161$:
      002E76 BF 07 02         [24] 2580 	cjne	r7,#0x07,00162$
      002E79 80 4F            [24] 2581 	sjmp	00104$
      002E7B                       2582 00162$:
      002E7B BF 0A 03         [24] 2583 	cjne	r7,#0x0a,00163$
      002E7E 02 2F 6E         [24] 2584 	ljmp	00111$
      002E81                       2585 00163$:
      002E81 BF 0B 03         [24] 2586 	cjne	r7,#0x0b,00164$
      002E84 02 2F AE         [24] 2587 	ljmp	00112$
      002E87                       2588 00164$:
                                   2589 ;	src/command_handlers.c:425: case GET_CHAR_CODE_INPUT_FROM_USER:
      002E87 80 DC            [24] 2590 	sjmp	00115$
      002E89                       2591 00101$:
                                   2592 ;	src/command_handlers.c:426: printf("\r\nEnter the char code to display (between 1 and 8):");
      002E89 74 13            [12] 2593 	mov	a,#___str_42
      002E8B C0 E0            [24] 2594 	push	acc
      002E8D 74 53            [12] 2595 	mov	a,#(___str_42 >> 8)
      002E8F C0 E0            [24] 2596 	push	acc
      002E91 74 80            [12] 2597 	mov	a,#0x80
      002E93 C0 E0            [24] 2598 	push	acc
      002E95 12 3C 63         [24] 2599 	lcall	_printf
      002E98 15 81            [12] 2600 	dec	sp
      002E9A 15 81            [12] 2601 	dec	sp
      002E9C 15 81            [12] 2602 	dec	sp
                                   2603 ;	src/command_handlers.c:427: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      002E9E 90 19 1A         [24] 2604 	mov	dptr,#_getstr_PARM_2
      002EA1 74 03            [12] 2605 	mov	a,#0x03
      002EA3 F0               [24] 2606 	movx	@dptr,a
      002EA4 E4               [12] 2607 	clr	a
      002EA5 A3               [24] 2608 	inc	dptr
      002EA6 F0               [24] 2609 	movx	@dptr,a
      002EA7 90 19 1C         [24] 2610 	mov	dptr,#_getstr_PARM_3
      002EAA 74 67            [12] 2611 	mov	a,#___str_36
      002EAC F0               [24] 2612 	movx	@dptr,a
      002EAD 74 52            [12] 2613 	mov	a,#(___str_36 >> 8)
      002EAF A3               [24] 2614 	inc	dptr
      002EB0 F0               [24] 2615 	movx	@dptr,a
      002EB1 74 80            [12] 2616 	mov	a,#0x80
      002EB3 A3               [24] 2617 	inc	dptr
      002EB4 F0               [24] 2618 	movx	@dptr,a
      002EB5 90 18 F8         [24] 2619 	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
      002EB8 75 F0 00         [24] 2620 	mov	b,#0x00
      002EBB 12 32 42         [24] 2621 	lcall	_getstr
      002EBE E5 82            [12] 2622 	mov	a,dpl
      002EC0 70 A3            [24] 2623 	jnz	00115$
                                   2624 ;	src/command_handlers.c:429: current_state = PARSE_CHAR_CODE_INPUT;
      002EC2 90 18 FC         [24] 2625 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002EC5 74 07            [12] 2626 	mov	a,#0x07
      002EC7 F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	src/command_handlers.c:431: break;
                                   2629 ;	src/command_handlers.c:432: case PARSE_CHAR_CODE_INPUT:
      002EC8 80 9B            [24] 2630 	sjmp	00115$
      002ECA                       2631 00104$:
                                   2632 ;	src/command_handlers.c:433: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
      002ECA 90 19 06         [24] 2633 	mov	dptr,#_action_for_display_custom_char_state_on_error_65536_112
      002ECD 74 06            [12] 2634 	mov	a,#0x06
      002ECF F0               [24] 2635 	movx	@dptr,a
                                   2636 ;	src/command_handlers.c:434: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
      002ED0 90 18 68         [24] 2637 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      002ED3 03               [12] 2638 	rr	a
      002ED4 F0               [24] 2639 	movx	@dptr,a
      002ED5 E4               [12] 2640 	clr	a
      002ED6 A3               [24] 2641 	inc	dptr
      002ED7 F0               [24] 2642 	movx	@dptr,a
      002ED8 90 18 6A         [24] 2643 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      002EDB 74 FC            [12] 2644 	mov	a,#_action_for_display_custom_char_current_state_65536_112
      002EDD F0               [24] 2645 	movx	@dptr,a
      002EDE 74 18            [12] 2646 	mov	a,#(_action_for_display_custom_char_current_state_65536_112 >> 8)
      002EE0 A3               [24] 2647 	inc	dptr
      002EE1 F0               [24] 2648 	movx	@dptr,a
      002EE2 E4               [12] 2649 	clr	a
      002EE3 A3               [24] 2650 	inc	dptr
      002EE4 F0               [24] 2651 	movx	@dptr,a
      002EE5 90 18 6D         [24] 2652 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      002EE8 74 FB            [12] 2653 	mov	a,#_action_for_display_custom_char_char_code_number_65536_112
      002EEA F0               [24] 2654 	movx	@dptr,a
      002EEB 74 18            [12] 2655 	mov	a,#(_action_for_display_custom_char_char_code_number_65536_112 >> 8)
      002EED A3               [24] 2656 	inc	dptr
      002EEE F0               [24] 2657 	movx	@dptr,a
      002EEF E4               [12] 2658 	clr	a
      002EF0 A3               [24] 2659 	inc	dptr
      002EF1 F0               [24] 2660 	movx	@dptr,a
      002EF2 90 18 70         [24] 2661 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      002EF5 74 06            [12] 2662 	mov	a,#_action_for_display_custom_char_state_on_error_65536_112
      002EF7 F0               [24] 2663 	movx	@dptr,a
      002EF8 74 19            [12] 2664 	mov	a,#(_action_for_display_custom_char_state_on_error_65536_112 >> 8)
      002EFA A3               [24] 2665 	inc	dptr
      002EFB F0               [24] 2666 	movx	@dptr,a
      002EFC E4               [12] 2667 	clr	a
      002EFD A3               [24] 2668 	inc	dptr
      002EFE F0               [24] 2669 	movx	@dptr,a
      002EFF 90 18 F8         [24] 2670 	mov	dptr,#_action_for_display_custom_char_input_buffer_65536_112
      002F02 75 F0 00         [24] 2671 	mov	b,#0x00
      002F05 12 27 C5         [24] 2672 	lcall	_check_input_buffer_and_extract_number
                                   2673 ;	src/command_handlers.c:435: if(current_state==PARSE_CHAR_CODE_INPUT)
      002F08 90 18 FC         [24] 2674 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002F0B E0               [24] 2675 	movx	a,@dptr
      002F0C FF               [12] 2676 	mov	r7,a
      002F0D BF 07 02         [24] 2677 	cjne	r7,#0x07,00166$
      002F10 80 03            [24] 2678 	sjmp	00167$
      002F12                       2679 00166$:
      002F12 02 2E 65         [24] 2680 	ljmp	00115$
      002F15                       2681 00167$:
                                   2682 ;	src/command_handlers.c:437: printf("\r\nCharcode to display is %d:",char_code_number);
      002F15 90 18 FB         [24] 2683 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002F18 E0               [24] 2684 	movx	a,@dptr
      002F19 FF               [12] 2685 	mov	r7,a
      002F1A 7E 00            [12] 2686 	mov	r6,#0x00
      002F1C C0 07            [24] 2687 	push	ar7
      002F1E C0 06            [24] 2688 	push	ar6
      002F20 74 47            [12] 2689 	mov	a,#___str_43
      002F22 C0 E0            [24] 2690 	push	acc
      002F24 74 53            [12] 2691 	mov	a,#(___str_43 >> 8)
      002F26 C0 E0            [24] 2692 	push	acc
      002F28 74 80            [12] 2693 	mov	a,#0x80
      002F2A C0 E0            [24] 2694 	push	acc
      002F2C 12 3C 63         [24] 2695 	lcall	_printf
      002F2F E5 81            [12] 2696 	mov	a,sp
      002F31 24 FB            [12] 2697 	add	a,#0xfb
      002F33 F5 81            [12] 2698 	mov	sp,a
                                   2699 ;	src/command_handlers.c:438: if(char_code_number>0 && char_code_number<=8)
      002F35 90 18 FB         [24] 2700 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002F38 E0               [24] 2701 	movx	a,@dptr
      002F39 FF               [12] 2702 	mov	r7,a
      002F3A 60 14            [24] 2703 	jz	00106$
      002F3C EF               [12] 2704 	mov	a,r7
      002F3D 24 F7            [12] 2705 	add	a,#0xff - 0x08
      002F3F 40 0F            [24] 2706 	jc	00106$
                                   2707 ;	src/command_handlers.c:440: char_code_number-=1;
      002F41 EF               [12] 2708 	mov	a,r7
      002F42 14               [12] 2709 	dec	a
      002F43 90 18 FB         [24] 2710 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002F46 F0               [24] 2711 	movx	@dptr,a
                                   2712 ;	src/command_handlers.c:441: current_state=DISPLAY_CGRAM_CHAR;
      002F47 90 18 FC         [24] 2713 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002F4A 74 0A            [12] 2714 	mov	a,#0x0a
      002F4C F0               [24] 2715 	movx	@dptr,a
      002F4D 02 2E 65         [24] 2716 	ljmp	00115$
      002F50                       2717 00106$:
                                   2718 ;	src/command_handlers.c:445: printf("\r\nInvalid Input:");
      002F50 74 D5            [12] 2719 	mov	a,#___str_40
      002F52 C0 E0            [24] 2720 	push	acc
      002F54 74 52            [12] 2721 	mov	a,#(___str_40 >> 8)
      002F56 C0 E0            [24] 2722 	push	acc
      002F58 74 80            [12] 2723 	mov	a,#0x80
      002F5A C0 E0            [24] 2724 	push	acc
      002F5C 12 3C 63         [24] 2725 	lcall	_printf
      002F5F 15 81            [12] 2726 	dec	sp
      002F61 15 81            [12] 2727 	dec	sp
      002F63 15 81            [12] 2728 	dec	sp
                                   2729 ;	src/command_handlers.c:446: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002F65 90 18 FC         [24] 2730 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002F68 74 06            [12] 2731 	mov	a,#0x06
      002F6A F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	src/command_handlers.c:450: break;
      002F6B 02 2E 65         [24] 2734 	ljmp	00115$
                                   2735 ;	src/command_handlers.c:451: case DISPLAY_CGRAM_CHAR:
      002F6E                       2736 00111$:
                                   2737 ;	src/command_handlers.c:452: printf("\r\nDisplay custom char:");
      002F6E 74 64            [12] 2738 	mov	a,#___str_44
      002F70 C0 E0            [24] 2739 	push	acc
      002F72 74 53            [12] 2740 	mov	a,#(___str_44 >> 8)
      002F74 C0 E0            [24] 2741 	push	acc
      002F76 74 80            [12] 2742 	mov	a,#0x80
      002F78 C0 E0            [24] 2743 	push	acc
      002F7A 12 3C 63         [24] 2744 	lcall	_printf
      002F7D 15 81            [12] 2745 	dec	sp
      002F7F 15 81            [12] 2746 	dec	sp
      002F81 15 81            [12] 2747 	dec	sp
                                   2748 ;	src/command_handlers.c:458: }
      002F83 7F 01            [12] 2749 	mov	r7,#0x01
      002F85 10 AF 02         [24] 2750 	jbc	ea,00170$
      002F88 7F 00            [12] 2751 	mov	r7,#0x00
      002F8A                       2752 00170$:
                                   2753 ;	src/command_handlers.c:455: lcd_clear();
      002F8A C0 07            [24] 2754 	push	ar7
      002F8C 12 34 86         [24] 2755 	lcall	_lcd_clear
      002F8F D0 07            [24] 2756 	pop	ar7
                                   2757 ;	src/command_handlers.c:456: display_custom_char(char_code_number);
      002F91 90 18 FB         [24] 2758 	mov	dptr,#_action_for_display_custom_char_char_code_number_65536_112
      002F94 E0               [24] 2759 	movx	a,@dptr
      002F95 F5 82            [12] 2760 	mov	dpl,a
      002F97 C0 07            [24] 2761 	push	ar7
      002F99 12 00 00         [24] 2762 	lcall	_display_custom_char
                                   2763 ;	src/command_handlers.c:457: current_time_display();
      002F9C 12 38 B6         [24] 2764 	lcall	_current_time_display
      002F9F D0 07            [24] 2765 	pop	ar7
      002FA1 EF               [12] 2766 	mov	a,r7
      002FA2 13               [12] 2767 	rrc	a
      002FA3 92 AF            [24] 2768 	mov	ea,c
                                   2769 ;	src/command_handlers.c:459: current_state = EXIT;
      002FA5 90 18 FC         [24] 2770 	mov	dptr,#_action_for_display_custom_char_current_state_65536_112
      002FA8 74 0B            [12] 2771 	mov	a,#0x0b
      002FAA F0               [24] 2772 	movx	@dptr,a
                                   2773 ;	src/command_handlers.c:460: break;
      002FAB 02 2E 65         [24] 2774 	ljmp	00115$
                                   2775 ;	src/command_handlers.c:461: case EXIT:
      002FAE                       2776 00112$:
                                   2777 ;	src/command_handlers.c:462: wait_for_input = false;
      002FAE 90 18 FD         [24] 2778 	mov	dptr,#_action_for_display_custom_char_wait_for_input_65536_112
      002FB1 E4               [12] 2779 	clr	a
      002FB2 F0               [24] 2780 	movx	@dptr,a
                                   2781 ;	src/command_handlers.c:463: break;
                                   2782 ;	src/command_handlers.c:466: }
                                   2783 ;	src/command_handlers.c:469: }
      002FB3 02 2E 65         [24] 2784 	ljmp	00115$
                                   2785 ;------------------------------------------------------------
                                   2786 ;Allocation info for local variables in function 'action_for_character_creation'
                                   2787 ;------------------------------------------------------------
                                   2788 ;input_buffer              Allocated with name '_action_for_character_creation_input_buffer_65536_121'
                                   2789 ;error_message             Allocated with name '_action_for_character_creation_error_message_65536_121'
                                   2790 ;char_code_row_value       Allocated with name '_action_for_character_creation_char_code_row_value_65536_121'
                                   2791 ;char_code_number          Allocated with name '_action_for_character_creation_char_code_number_65536_121'
                                   2792 ;current_state             Allocated with name '_action_for_character_creation_current_state_65536_121'
                                   2793 ;wait_for_input            Allocated with name '_action_for_character_creation_wait_for_input_65536_121'
                                   2794 ;char_code_row_values      Allocated with name '_action_for_character_creation_char_code_row_values_65536_121'
                                   2795 ;state_on_error            Allocated with name '_action_for_character_creation_state_on_error_65536_121'
                                   2796 ;i                         Allocated with name '_action_for_character_creation_i_262144_128'
                                   2797 ;------------------------------------------------------------
                                   2798 ;	src/command_handlers.c:471: void action_for_character_creation(void)
                                   2799 ;	-----------------------------------------
                                   2800 ;	 function action_for_character_creation
                                   2801 ;	-----------------------------------------
      002FB6                       2802 _action_for_character_creation:
                                   2803 ;	src/command_handlers.c:475: char *error_message = "\r\nOut of range\r\n";
                                   2804 ;	src/command_handlers.c:476: uint8_t char_code_row_value = 0;
      002FB6 90 19 0A         [24] 2805 	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
      002FB9 E4               [12] 2806 	clr	a
      002FBA F0               [24] 2807 	movx	@dptr,a
                                   2808 ;	src/command_handlers.c:477: uint8_t char_code_number = 0;
      002FBB 90 19 0B         [24] 2809 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      002FBE F0               [24] 2810 	movx	@dptr,a
                                   2811 ;	src/command_handlers.c:478: get_in_mem_state current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      002FBF 90 19 0C         [24] 2812 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002FC2 74 06            [12] 2813 	mov	a,#0x06
      002FC4 F0               [24] 2814 	movx	@dptr,a
                                   2815 ;	src/command_handlers.c:479: bool wait_for_input = true;
      002FC5 90 19 0D         [24] 2816 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      002FC8 74 01            [12] 2817 	mov	a,#0x01
      002FCA F0               [24] 2818 	movx	@dptr,a
                                   2819 ;	src/command_handlers.c:483: get_in_mem_state state_on_error = GET_ROW_INPUT_FROM_USER;
      002FCB 90 19 16         [24] 2820 	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
      002FCE 04               [12] 2821 	inc	a
      002FCF F0               [24] 2822 	movx	@dptr,a
                                   2823 ;	src/command_handlers.c:484: while (wait_for_input)
      002FD0                       2824 00125$:
      002FD0 90 19 0D         [24] 2825 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      002FD3 E0               [24] 2826 	movx	a,@dptr
      002FD4 70 01            [24] 2827 	jnz	00197$
      002FD6 22               [24] 2828 	ret
      002FD7                       2829 00197$:
                                   2830 ;	src/command_handlers.c:486: switch (current_state)
      002FD7 90 19 0C         [24] 2831 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      002FDA E0               [24] 2832 	movx	a,@dptr
      002FDB FF               [12] 2833 	mov	r7,a
      002FDC BF 06 02         [24] 2834 	cjne	r7,#0x06,00198$
      002FDF 80 19            [24] 2835 	sjmp	00101$
      002FE1                       2836 00198$:
      002FE1 BF 07 02         [24] 2837 	cjne	r7,#0x07,00199$
      002FE4 80 55            [24] 2838 	sjmp	00104$
      002FE6                       2839 00199$:
      002FE6 BF 08 03         [24] 2840 	cjne	r7,#0x08,00200$
      002FE9 02 30 BF         [24] 2841 	ljmp	00111$
      002FEC                       2842 00200$:
      002FEC BF 09 03         [24] 2843 	cjne	r7,#0x09,00201$
      002FEF 02 31 D8         [24] 2844 	ljmp	00121$
      002FF2                       2845 00201$:
      002FF2 BF 0B 03         [24] 2846 	cjne	r7,#0x0b,00202$
      002FF5 02 32 0D         [24] 2847 	ljmp	00122$
      002FF8                       2848 00202$:
                                   2849 ;	src/command_handlers.c:488: case GET_CHAR_CODE_INPUT_FROM_USER:
      002FF8 80 D6            [24] 2850 	sjmp	00125$
      002FFA                       2851 00101$:
                                   2852 ;	src/command_handlers.c:489: printf("\r\nEnter the char code to create (between 1 and 8):");
      002FFA 74 7B            [12] 2853 	mov	a,#___str_45
      002FFC C0 E0            [24] 2854 	push	acc
      002FFE 74 53            [12] 2855 	mov	a,#(___str_45 >> 8)
      003000 C0 E0            [24] 2856 	push	acc
      003002 74 80            [12] 2857 	mov	a,#0x80
      003004 C0 E0            [24] 2858 	push	acc
      003006 12 3C 63         [24] 2859 	lcall	_printf
      003009 15 81            [12] 2860 	dec	sp
      00300B 15 81            [12] 2861 	dec	sp
      00300D 15 81            [12] 2862 	dec	sp
                                   2863 ;	src/command_handlers.c:490: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      00300F 90 19 1A         [24] 2864 	mov	dptr,#_getstr_PARM_2
      003012 74 03            [12] 2865 	mov	a,#0x03
      003014 F0               [24] 2866 	movx	@dptr,a
      003015 E4               [12] 2867 	clr	a
      003016 A3               [24] 2868 	inc	dptr
      003017 F0               [24] 2869 	movx	@dptr,a
      003018 90 19 1C         [24] 2870 	mov	dptr,#_getstr_PARM_3
      00301B 74 67            [12] 2871 	mov	a,#___str_36
      00301D F0               [24] 2872 	movx	@dptr,a
      00301E 74 52            [12] 2873 	mov	a,#(___str_36 >> 8)
      003020 A3               [24] 2874 	inc	dptr
      003021 F0               [24] 2875 	movx	@dptr,a
      003022 74 80            [12] 2876 	mov	a,#0x80
      003024 A3               [24] 2877 	inc	dptr
      003025 F0               [24] 2878 	movx	@dptr,a
      003026 90 19 07         [24] 2879 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      003029 75 F0 00         [24] 2880 	mov	b,#0x00
      00302C 12 32 42         [24] 2881 	lcall	_getstr
      00302F E5 82            [12] 2882 	mov	a,dpl
      003031 70 9D            [24] 2883 	jnz	00125$
                                   2884 ;	src/command_handlers.c:492: current_state = PARSE_CHAR_CODE_INPUT;
      003033 90 19 0C         [24] 2885 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003036 74 07            [12] 2886 	mov	a,#0x07
      003038 F0               [24] 2887 	movx	@dptr,a
                                   2888 ;	src/command_handlers.c:494: break;
                                   2889 ;	src/command_handlers.c:495: case PARSE_CHAR_CODE_INPUT:
      003039 80 95            [24] 2890 	sjmp	00125$
      00303B                       2891 00104$:
                                   2892 ;	src/command_handlers.c:496: state_on_error = GET_CHAR_CODE_INPUT_FROM_USER;
      00303B 90 19 16         [24] 2893 	mov	dptr,#_action_for_character_creation_state_on_error_65536_121
      00303E 74 06            [12] 2894 	mov	a,#0x06
      003040 F0               [24] 2895 	movx	@dptr,a
                                   2896 ;	src/command_handlers.c:497: check_input_buffer_and_extract_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_number,&state_on_error);
      003041 90 18 68         [24] 2897 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_2
      003044 03               [12] 2898 	rr	a
      003045 F0               [24] 2899 	movx	@dptr,a
      003046 E4               [12] 2900 	clr	a
      003047 A3               [24] 2901 	inc	dptr
      003048 F0               [24] 2902 	movx	@dptr,a
      003049 90 18 6A         [24] 2903 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_3
      00304C 74 0C            [12] 2904 	mov	a,#_action_for_character_creation_current_state_65536_121
      00304E F0               [24] 2905 	movx	@dptr,a
      00304F 74 19            [12] 2906 	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
      003051 A3               [24] 2907 	inc	dptr
      003052 F0               [24] 2908 	movx	@dptr,a
      003053 E4               [12] 2909 	clr	a
      003054 A3               [24] 2910 	inc	dptr
      003055 F0               [24] 2911 	movx	@dptr,a
      003056 90 18 6D         [24] 2912 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_4
      003059 74 0B            [12] 2913 	mov	a,#_action_for_character_creation_char_code_number_65536_121
      00305B F0               [24] 2914 	movx	@dptr,a
      00305C 74 19            [12] 2915 	mov	a,#(_action_for_character_creation_char_code_number_65536_121 >> 8)
      00305E A3               [24] 2916 	inc	dptr
      00305F F0               [24] 2917 	movx	@dptr,a
      003060 E4               [12] 2918 	clr	a
      003061 A3               [24] 2919 	inc	dptr
      003062 F0               [24] 2920 	movx	@dptr,a
      003063 90 18 70         [24] 2921 	mov	dptr,#_check_input_buffer_and_extract_number_PARM_5
      003066 74 16            [12] 2922 	mov	a,#_action_for_character_creation_state_on_error_65536_121
      003068 F0               [24] 2923 	movx	@dptr,a
      003069 74 19            [12] 2924 	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
      00306B A3               [24] 2925 	inc	dptr
      00306C F0               [24] 2926 	movx	@dptr,a
      00306D E4               [12] 2927 	clr	a
      00306E A3               [24] 2928 	inc	dptr
      00306F F0               [24] 2929 	movx	@dptr,a
      003070 90 19 07         [24] 2930 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      003073 75 F0 00         [24] 2931 	mov	b,#0x00
      003076 12 27 C5         [24] 2932 	lcall	_check_input_buffer_and_extract_number
                                   2933 ;	src/command_handlers.c:498: if(current_state==PARSE_CHAR_CODE_INPUT)
      003079 90 19 0C         [24] 2934 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      00307C E0               [24] 2935 	movx	a,@dptr
      00307D FF               [12] 2936 	mov	r7,a
      00307E BF 07 02         [24] 2937 	cjne	r7,#0x07,00204$
      003081 80 03            [24] 2938 	sjmp	00205$
      003083                       2939 00204$:
      003083 02 2F D0         [24] 2940 	ljmp	00125$
      003086                       2941 00205$:
                                   2942 ;	src/command_handlers.c:500: if(char_code_number>0 && char_code_number<=8)
      003086 90 19 0B         [24] 2943 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      003089 E0               [24] 2944 	movx	a,@dptr
      00308A FF               [12] 2945 	mov	r7,a
      00308B 60 14            [24] 2946 	jz	00106$
      00308D EF               [12] 2947 	mov	a,r7
      00308E 24 F7            [12] 2948 	add	a,#0xff - 0x08
      003090 40 0F            [24] 2949 	jc	00106$
                                   2950 ;	src/command_handlers.c:502: char_code_number-=1;
      003092 EF               [12] 2951 	mov	a,r7
      003093 14               [12] 2952 	dec	a
      003094 90 19 0B         [24] 2953 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      003097 F0               [24] 2954 	movx	@dptr,a
                                   2955 ;	src/command_handlers.c:503: current_state=GET_ROW_VALUE_AND_PARSE;
      003098 90 19 0C         [24] 2956 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      00309B 74 08            [12] 2957 	mov	a,#0x08
      00309D F0               [24] 2958 	movx	@dptr,a
      00309E 02 2F D0         [24] 2959 	ljmp	00125$
      0030A1                       2960 00106$:
                                   2961 ;	src/command_handlers.c:507: printf("\r\nInvalid Input:");
      0030A1 74 D5            [12] 2962 	mov	a,#___str_40
      0030A3 C0 E0            [24] 2963 	push	acc
      0030A5 74 52            [12] 2964 	mov	a,#(___str_40 >> 8)
      0030A7 C0 E0            [24] 2965 	push	acc
      0030A9 74 80            [12] 2966 	mov	a,#0x80
      0030AB C0 E0            [24] 2967 	push	acc
      0030AD 12 3C 63         [24] 2968 	lcall	_printf
      0030B0 15 81            [12] 2969 	dec	sp
      0030B2 15 81            [12] 2970 	dec	sp
      0030B4 15 81            [12] 2971 	dec	sp
                                   2972 ;	src/command_handlers.c:508: current_state = GET_CHAR_CODE_INPUT_FROM_USER;
      0030B6 90 19 0C         [24] 2973 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      0030B9 74 06            [12] 2974 	mov	a,#0x06
      0030BB F0               [24] 2975 	movx	@dptr,a
                                   2976 ;	src/command_handlers.c:512: break;
      0030BC 02 2F D0         [24] 2977 	ljmp	00125$
                                   2978 ;	src/command_handlers.c:513: case GET_ROW_VALUE_AND_PARSE:
      0030BF                       2979 00111$:
                                   2980 ;	src/command_handlers.c:515: for(int8_t i=0;i<8;i++)
      0030BF 90 19 17         [24] 2981 	mov	dptr,#_action_for_character_creation_i_262144_128
      0030C2 E4               [12] 2982 	clr	a
      0030C3 F0               [24] 2983 	movx	@dptr,a
      0030C4                       2984 00129$:
      0030C4 90 19 17         [24] 2985 	mov	dptr,#_action_for_character_creation_i_262144_128
      0030C7 E0               [24] 2986 	movx	a,@dptr
      0030C8 FF               [12] 2987 	mov	r7,a
      0030C9 C3               [12] 2988 	clr	c
      0030CA 64 80            [12] 2989 	xrl	a,#0x80
      0030CC 94 88            [12] 2990 	subb	a,#0x88
      0030CE 40 03            [24] 2991 	jc	00208$
      0030D0 02 31 CF         [24] 2992 	ljmp	00120$
      0030D3                       2993 00208$:
                                   2994 ;	src/command_handlers.c:517: printf("\r\nEnter the value for row %d in hex without 0x prefix:",i+1);
      0030D3 EF               [12] 2995 	mov	a,r7
      0030D4 FD               [12] 2996 	mov	r5,a
      0030D5 33               [12] 2997 	rlc	a
      0030D6 95 E0            [12] 2998 	subb	a,acc
      0030D8 FE               [12] 2999 	mov	r6,a
      0030D9 74 01            [12] 3000 	mov	a,#0x01
      0030DB 2D               [12] 3001 	add	a,r5
      0030DC FB               [12] 3002 	mov	r3,a
      0030DD E4               [12] 3003 	clr	a
      0030DE 3E               [12] 3004 	addc	a,r6
      0030DF FC               [12] 3005 	mov	r4,a
      0030E0 C0 07            [24] 3006 	push	ar7
      0030E2 C0 06            [24] 3007 	push	ar6
      0030E4 C0 05            [24] 3008 	push	ar5
      0030E6 C0 03            [24] 3009 	push	ar3
      0030E8 C0 04            [24] 3010 	push	ar4
      0030EA 74 AE            [12] 3011 	mov	a,#___str_46
      0030EC C0 E0            [24] 3012 	push	acc
      0030EE 74 53            [12] 3013 	mov	a,#(___str_46 >> 8)
      0030F0 C0 E0            [24] 3014 	push	acc
      0030F2 74 80            [12] 3015 	mov	a,#0x80
      0030F4 C0 E0            [24] 3016 	push	acc
      0030F6 12 3C 63         [24] 3017 	lcall	_printf
      0030F9 E5 81            [12] 3018 	mov	a,sp
      0030FB 24 FB            [12] 3019 	add	a,#0xfb
      0030FD F5 81            [12] 3020 	mov	sp,a
                                   3021 ;	src/command_handlers.c:518: if (!getstr(input_buffer, sizeof(input_buffer), error_message))
      0030FF 90 19 1A         [24] 3022 	mov	dptr,#_getstr_PARM_2
      003102 74 03            [12] 3023 	mov	a,#0x03
      003104 F0               [24] 3024 	movx	@dptr,a
      003105 E4               [12] 3025 	clr	a
      003106 A3               [24] 3026 	inc	dptr
      003107 F0               [24] 3027 	movx	@dptr,a
      003108 90 19 1C         [24] 3028 	mov	dptr,#_getstr_PARM_3
      00310B 74 67            [12] 3029 	mov	a,#___str_36
      00310D F0               [24] 3030 	movx	@dptr,a
      00310E 74 52            [12] 3031 	mov	a,#(___str_36 >> 8)
      003110 A3               [24] 3032 	inc	dptr
      003111 F0               [24] 3033 	movx	@dptr,a
      003112 74 80            [12] 3034 	mov	a,#0x80
      003114 A3               [24] 3035 	inc	dptr
      003115 F0               [24] 3036 	movx	@dptr,a
      003116 90 19 07         [24] 3037 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      003119 75 F0 00         [24] 3038 	mov	b,#0x00
      00311C 12 32 42         [24] 3039 	lcall	_getstr
      00311F E5 82            [12] 3040 	mov	a,dpl
      003121 D0 05            [24] 3041 	pop	ar5
      003123 D0 06            [24] 3042 	pop	ar6
      003125 D0 07            [24] 3043 	pop	ar7
      003127 60 03            [24] 3044 	jz	00209$
      003129 02 31 C5         [24] 3045 	ljmp	00130$
      00312C                       3046 00209$:
                                   3047 ;	src/command_handlers.c:520: check_input_buffer_and_extract_hex_number(input_buffer,sizeof(input_buffer),&current_state,&char_code_row_value,&state_on_error);
      00312C 90 18 7E         [24] 3048 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_2
      00312F 74 03            [12] 3049 	mov	a,#0x03
      003131 F0               [24] 3050 	movx	@dptr,a
      003132 E4               [12] 3051 	clr	a
      003133 A3               [24] 3052 	inc	dptr
      003134 F0               [24] 3053 	movx	@dptr,a
      003135 90 18 80         [24] 3054 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_3
      003138 74 0C            [12] 3055 	mov	a,#_action_for_character_creation_current_state_65536_121
      00313A F0               [24] 3056 	movx	@dptr,a
      00313B 74 19            [12] 3057 	mov	a,#(_action_for_character_creation_current_state_65536_121 >> 8)
      00313D A3               [24] 3058 	inc	dptr
      00313E F0               [24] 3059 	movx	@dptr,a
      00313F E4               [12] 3060 	clr	a
      003140 A3               [24] 3061 	inc	dptr
      003141 F0               [24] 3062 	movx	@dptr,a
      003142 90 18 83         [24] 3063 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_4
      003145 74 0A            [12] 3064 	mov	a,#_action_for_character_creation_char_code_row_value_65536_121
      003147 F0               [24] 3065 	movx	@dptr,a
      003148 74 19            [12] 3066 	mov	a,#(_action_for_character_creation_char_code_row_value_65536_121 >> 8)
      00314A A3               [24] 3067 	inc	dptr
      00314B F0               [24] 3068 	movx	@dptr,a
      00314C E4               [12] 3069 	clr	a
      00314D A3               [24] 3070 	inc	dptr
      00314E F0               [24] 3071 	movx	@dptr,a
      00314F 90 18 86         [24] 3072 	mov	dptr,#_check_input_buffer_and_extract_hex_number_PARM_5
      003152 74 16            [12] 3073 	mov	a,#_action_for_character_creation_state_on_error_65536_121
      003154 F0               [24] 3074 	movx	@dptr,a
      003155 74 19            [12] 3075 	mov	a,#(_action_for_character_creation_state_on_error_65536_121 >> 8)
      003157 A3               [24] 3076 	inc	dptr
      003158 F0               [24] 3077 	movx	@dptr,a
      003159 E4               [12] 3078 	clr	a
      00315A A3               [24] 3079 	inc	dptr
      00315B F0               [24] 3080 	movx	@dptr,a
      00315C 90 19 07         [24] 3081 	mov	dptr,#_action_for_character_creation_input_buffer_65536_121
      00315F 75 F0 00         [24] 3082 	mov	b,#0x00
      003162 C0 07            [24] 3083 	push	ar7
      003164 C0 06            [24] 3084 	push	ar6
      003166 C0 05            [24] 3085 	push	ar5
      003168 12 2B 12         [24] 3086 	lcall	_check_input_buffer_and_extract_hex_number
      00316B D0 05            [24] 3087 	pop	ar5
      00316D D0 06            [24] 3088 	pop	ar6
      00316F D0 07            [24] 3089 	pop	ar7
                                   3090 ;	src/command_handlers.c:521: if(current_state!=GET_ROW_VALUE_AND_PARSE )
      003171 90 19 0C         [24] 3091 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003174 E0               [24] 3092 	movx	a,@dptr
      003175 FC               [12] 3093 	mov	r4,a
      003176 BC 08 02         [24] 3094 	cjne	r4,#0x08,00210$
      003179 80 0E            [24] 3095 	sjmp	00116$
      00317B                       3096 00210$:
                                   3097 ;	src/command_handlers.c:523: current_state = GET_ROW_VALUE_AND_PARSE;
      00317B 90 19 0C         [24] 3098 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      00317E 74 08            [12] 3099 	mov	a,#0x08
      003180 F0               [24] 3100 	movx	@dptr,a
                                   3101 ;	src/command_handlers.c:524: i--;
      003181 EF               [12] 3102 	mov	a,r7
      003182 14               [12] 3103 	dec	a
      003183 90 19 17         [24] 3104 	mov	dptr,#_action_for_character_creation_i_262144_128
      003186 F0               [24] 3105 	movx	@dptr,a
      003187 80 3C            [24] 3106 	sjmp	00130$
      003189                       3107 00116$:
                                   3108 ;	src/command_handlers.c:526: else if(char_code_row_value > 0x1F)
      003189 90 19 0A         [24] 3109 	mov	dptr,#_action_for_character_creation_char_code_row_value_65536_121
      00318C E0               [24] 3110 	movx	a,@dptr
      00318D FC               [12] 3111 	mov  r4,a
      00318E 24 E0            [12] 3112 	add	a,#0xff - 0x1f
      003190 50 27            [24] 3113 	jnc	00113$
                                   3114 ;	src/command_handlers.c:528: printf("\r\nRow value out of range. Must be between 0x00 and 0x1F.\r\n");
      003192 C0 07            [24] 3115 	push	ar7
      003194 74 E5            [12] 3116 	mov	a,#___str_47
      003196 C0 E0            [24] 3117 	push	acc
      003198 74 53            [12] 3118 	mov	a,#(___str_47 >> 8)
      00319A C0 E0            [24] 3119 	push	acc
      00319C 74 80            [12] 3120 	mov	a,#0x80
      00319E C0 E0            [24] 3121 	push	acc
      0031A0 12 3C 63         [24] 3122 	lcall	_printf
      0031A3 15 81            [12] 3123 	dec	sp
      0031A5 15 81            [12] 3124 	dec	sp
      0031A7 15 81            [12] 3125 	dec	sp
      0031A9 D0 07            [24] 3126 	pop	ar7
                                   3127 ;	src/command_handlers.c:529: current_state = GET_ROW_VALUE_AND_PARSE;
      0031AB 90 19 0C         [24] 3128 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      0031AE 74 08            [12] 3129 	mov	a,#0x08
      0031B0 F0               [24] 3130 	movx	@dptr,a
                                   3131 ;	src/command_handlers.c:530: i--;
      0031B1 EF               [12] 3132 	mov	a,r7
      0031B2 14               [12] 3133 	dec	a
      0031B3 90 19 17         [24] 3134 	mov	dptr,#_action_for_character_creation_i_262144_128
      0031B6 F0               [24] 3135 	movx	@dptr,a
      0031B7 80 0C            [24] 3136 	sjmp	00130$
      0031B9                       3137 00113$:
                                   3138 ;	src/command_handlers.c:534: char_code_row_values[i]=char_code_row_value;
      0031B9 ED               [12] 3139 	mov	a,r5
      0031BA 24 0E            [12] 3140 	add	a,#_action_for_character_creation_char_code_row_values_65536_121
      0031BC F5 82            [12] 3141 	mov	dpl,a
      0031BE EE               [12] 3142 	mov	a,r6
      0031BF 34 19            [12] 3143 	addc	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
      0031C1 F5 83            [12] 3144 	mov	dph,a
      0031C3 EC               [12] 3145 	mov	a,r4
      0031C4 F0               [24] 3146 	movx	@dptr,a
      0031C5                       3147 00130$:
                                   3148 ;	src/command_handlers.c:515: for(int8_t i=0;i<8;i++)
      0031C5 90 19 17         [24] 3149 	mov	dptr,#_action_for_character_creation_i_262144_128
      0031C8 E0               [24] 3150 	movx	a,@dptr
      0031C9 24 01            [12] 3151 	add	a,#0x01
      0031CB F0               [24] 3152 	movx	@dptr,a
      0031CC 02 30 C4         [24] 3153 	ljmp	00129$
      0031CF                       3154 00120$:
                                   3155 ;	src/command_handlers.c:538: current_state = CREATE_CGRAM_CHAR;
      0031CF 90 19 0C         [24] 3156 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      0031D2 74 09            [12] 3157 	mov	a,#0x09
      0031D4 F0               [24] 3158 	movx	@dptr,a
                                   3159 ;	src/command_handlers.c:539: break;
      0031D5 02 2F D0         [24] 3160 	ljmp	00125$
                                   3161 ;	src/command_handlers.c:540: case CREATE_CGRAM_CHAR:
      0031D8                       3162 00121$:
                                   3163 ;	src/command_handlers.c:546: }
      0031D8 7F 01            [12] 3164 	mov	r7,#0x01
      0031DA 10 AF 02         [24] 3165 	jbc	ea,00212$
      0031DD 7F 00            [12] 3166 	mov	r7,#0x00
      0031DF                       3167 00212$:
                                   3168 ;	src/command_handlers.c:543: lcd_clear();
      0031DF C0 07            [24] 3169 	push	ar7
      0031E1 12 34 86         [24] 3170 	lcall	_lcd_clear
                                   3171 ;	src/command_handlers.c:544: lcd_create_char(char_code_number,char_code_row_values);
      0031E4 90 19 0B         [24] 3172 	mov	dptr,#_action_for_character_creation_char_code_number_65536_121
      0031E7 E0               [24] 3173 	movx	a,@dptr
      0031E8 FE               [12] 3174 	mov	r6,a
      0031E9 90 00 00         [24] 3175 	mov	dptr,#_lcd_create_char_PARM_2
      0031EC 74 0E            [12] 3176 	mov	a,#_action_for_character_creation_char_code_row_values_65536_121
      0031EE F0               [24] 3177 	movx	@dptr,a
      0031EF 74 19            [12] 3178 	mov	a,#(_action_for_character_creation_char_code_row_values_65536_121 >> 8)
      0031F1 A3               [24] 3179 	inc	dptr
      0031F2 F0               [24] 3180 	movx	@dptr,a
      0031F3 E4               [12] 3181 	clr	a
      0031F4 A3               [24] 3182 	inc	dptr
      0031F5 F0               [24] 3183 	movx	@dptr,a
      0031F6 8E 82            [24] 3184 	mov	dpl,r6
      0031F8 12 00 00         [24] 3185 	lcall	_lcd_create_char
                                   3186 ;	src/command_handlers.c:545: current_time_display();
      0031FB 12 38 B6         [24] 3187 	lcall	_current_time_display
      0031FE D0 07            [24] 3188 	pop	ar7
      003200 EF               [12] 3189 	mov	a,r7
      003201 13               [12] 3190 	rrc	a
      003202 92 AF            [24] 3191 	mov	ea,c
                                   3192 ;	src/command_handlers.c:548: current_state = EXIT;
      003204 90 19 0C         [24] 3193 	mov	dptr,#_action_for_character_creation_current_state_65536_121
      003207 74 0B            [12] 3194 	mov	a,#0x0b
      003209 F0               [24] 3195 	movx	@dptr,a
                                   3196 ;	src/command_handlers.c:549: break;
      00320A 02 2F D0         [24] 3197 	ljmp	00125$
                                   3198 ;	src/command_handlers.c:550: case EXIT:
      00320D                       3199 00122$:
                                   3200 ;	src/command_handlers.c:551: wait_for_input = false;
      00320D 90 19 0D         [24] 3201 	mov	dptr,#_action_for_character_creation_wait_for_input_65536_121
      003210 E4               [12] 3202 	clr	a
      003211 F0               [24] 3203 	movx	@dptr,a
                                   3204 ;	src/command_handlers.c:552: break;
                                   3205 ;	src/command_handlers.c:555: }
                                   3206 ;	src/command_handlers.c:557: }
      003212 02 2F D0         [24] 3207 	ljmp	00125$
                                   3208 	.area CSEG    (CODE)
                                   3209 	.area CONST   (CODE)
                                   3210 	.area CONST   (CODE)
      0046C7                       3211 ___str_0:
      0046C7 0D                    3212 	.db 0x0d
      0046C8 0A                    3213 	.db 0x0a
      0046C9 E2                    3214 	.db 0xe2
      0046CA 95                    3215 	.db 0x95
      0046CB 94                    3216 	.db 0x94
      0046CC E2                    3217 	.db 0xe2
      0046CD 95                    3218 	.db 0x95
      0046CE 90                    3219 	.db 0x90
      0046CF E2                    3220 	.db 0xe2
      0046D0 95                    3221 	.db 0x95
      0046D1 90                    3222 	.db 0x90
      0046D2 E2                    3223 	.db 0xe2
      0046D3 95                    3224 	.db 0x95
      0046D4 90                    3225 	.db 0x90
      0046D5 E2                    3226 	.db 0xe2
      0046D6 95                    3227 	.db 0x95
      0046D7 90                    3228 	.db 0x90
      0046D8 E2                    3229 	.db 0xe2
      0046D9 95                    3230 	.db 0x95
      0046DA 90                    3231 	.db 0x90
      0046DB E2                    3232 	.db 0xe2
      0046DC 95                    3233 	.db 0x95
      0046DD 90                    3234 	.db 0x90
      0046DE E2                    3235 	.db 0xe2
      0046DF 95                    3236 	.db 0x95
      0046E0 90                    3237 	.db 0x90
      0046E1 E2                    3238 	.db 0xe2
      0046E2 95                    3239 	.db 0x95
      0046E3 90                    3240 	.db 0x90
      0046E4 E2                    3241 	.db 0xe2
      0046E5 95                    3242 	.db 0x95
      0046E6 90                    3243 	.db 0x90
      0046E7 E2                    3244 	.db 0xe2
      0046E8 95                    3245 	.db 0x95
      0046E9 90                    3246 	.db 0x90
      0046EA E2                    3247 	.db 0xe2
      0046EB 95                    3248 	.db 0x95
      0046EC 90                    3249 	.db 0x90
      0046ED E2                    3250 	.db 0xe2
      0046EE 95                    3251 	.db 0x95
      0046EF 90                    3252 	.db 0x90
      0046F0 E2                    3253 	.db 0xe2
      0046F1 95                    3254 	.db 0x95
      0046F2 90                    3255 	.db 0x90
      0046F3 E2                    3256 	.db 0xe2
      0046F4 95                    3257 	.db 0x95
      0046F5 90                    3258 	.db 0x90
      0046F6 E2                    3259 	.db 0xe2
      0046F7 95                    3260 	.db 0x95
      0046F8 90                    3261 	.db 0x90
      0046F9 E2                    3262 	.db 0xe2
      0046FA 95                    3263 	.db 0x95
      0046FB 90                    3264 	.db 0x90
      0046FC E2                    3265 	.db 0xe2
      0046FD 95                    3266 	.db 0x95
      0046FE 90                    3267 	.db 0x90
      0046FF E2                    3268 	.db 0xe2
      004700 95                    3269 	.db 0x95
      004701 90                    3270 	.db 0x90
      004702 E2                    3271 	.db 0xe2
      004703 95                    3272 	.db 0x95
      004704 90                    3273 	.db 0x90
      004705 E2                    3274 	.db 0xe2
      004706 95                    3275 	.db 0x95
      004707 90                    3276 	.db 0x90
      004708 E2                    3277 	.db 0xe2
      004709 95                    3278 	.db 0x95
      00470A 90                    3279 	.db 0x90
      00470B E2                    3280 	.db 0xe2
      00470C 95                    3281 	.db 0x95
      00470D 90                    3282 	.db 0x90
      00470E E2                    3283 	.db 0xe2
      00470F 95                    3284 	.db 0x95
      004710 90                    3285 	.db 0x90
      004711 E2                    3286 	.db 0xe2
      004712 95                    3287 	.db 0x95
      004713 90                    3288 	.db 0x90
      004714 E2                    3289 	.db 0xe2
      004715 95                    3290 	.db 0x95
      004716 90                    3291 	.db 0x90
      004717 E2                    3292 	.db 0xe2
      004718 95                    3293 	.db 0x95
      004719 90                    3294 	.db 0x90
      00471A E2                    3295 	.db 0xe2
      00471B 95                    3296 	.db 0x95
      00471C 90                    3297 	.db 0x90
      00471D E2                    3298 	.db 0xe2
      00471E 95                    3299 	.db 0x95
      00471F 90                    3300 	.db 0x90
      004720 E2                    3301 	.db 0xe2
      004721 95                    3302 	.db 0x95
      004722 90                    3303 	.db 0x90
      004723 E2                    3304 	.db 0xe2
      004724 95                    3305 	.db 0x95
      004725 90                    3306 	.db 0x90
      004726 E2                    3307 	.db 0xe2
      004727 95                    3308 	.db 0x95
      004728 90                    3309 	.db 0x90
      004729 E2                    3310 	.db 0xe2
      00472A 95                    3311 	.db 0x95
      00472B 90                    3312 	.db 0x90
      00472C E2                    3313 	.db 0xe2
      00472D 95                    3314 	.db 0x95
      00472E 90                    3315 	.db 0x90
      00472F E2                    3316 	.db 0xe2
      004730 95                    3317 	.db 0x95
      004731 90                    3318 	.db 0x90
      004732 E2                    3319 	.db 0xe2
      004733 95                    3320 	.db 0x95
      004734 90                    3321 	.db 0x90
      004735 E2                    3322 	.db 0xe2
      004736 95                    3323 	.db 0x95
      004737 90                    3324 	.db 0x90
      004738 E2                    3325 	.db 0xe2
      004739 95                    3326 	.db 0x95
      00473A 90                    3327 	.db 0x90
      00473B E2                    3328 	.db 0xe2
      00473C 95                    3329 	.db 0x95
      00473D 90                    3330 	.db 0x90
      00473E E2                    3331 	.db 0xe2
      00473F 95                    3332 	.db 0x95
      004740 90                    3333 	.db 0x90
      004741 E2                    3334 	.db 0xe2
      004742 95                    3335 	.db 0x95
      004743 90                    3336 	.db 0x90
      004744 E2                    3337 	.db 0xe2
      004745 95                    3338 	.db 0x95
      004746 90                    3339 	.db 0x90
      004747 E2                    3340 	.db 0xe2
      004748 95                    3341 	.db 0x95
      004749 90                    3342 	.db 0x90
      00474A E2                    3343 	.db 0xe2
      00474B 95                    3344 	.db 0x95
      00474C 90                    3345 	.db 0x90
      00474D E2                    3346 	.db 0xe2
      00474E 95                    3347 	.db 0x95
      00474F 90                    3348 	.db 0x90
      004750 E2                    3349 	.db 0xe2
      004751 95                    3350 	.db 0x95
      004752 90                    3351 	.db 0x90
      004753 E2                    3352 	.db 0xe2
      004754 95                    3353 	.db 0x95
      004755 90                    3354 	.db 0x90
      004756 E2                    3355 	.db 0xe2
      004757 95                    3356 	.db 0x95
      004758 90                    3357 	.db 0x90
      004759 E2                    3358 	.db 0xe2
      00475A 95                    3359 	.db 0x95
      00475B 90                    3360 	.db 0x90
      00475C E2                    3361 	.db 0xe2
      00475D 95                    3362 	.db 0x95
      00475E 90                    3363 	.db 0x90
      00475F E2                    3364 	.db 0xe2
      004760 95                    3365 	.db 0x95
      004761 90                    3366 	.db 0x90
      004762 E2                    3367 	.db 0xe2
      004763 95                    3368 	.db 0x95
      004764 90                    3369 	.db 0x90
      004765 E2                    3370 	.db 0xe2
      004766 95                    3371 	.db 0x95
      004767 90                    3372 	.db 0x90
      004768 E2                    3373 	.db 0xe2
      004769 95                    3374 	.db 0x95
      00476A 90                    3375 	.db 0x90
      00476B E2                    3376 	.db 0xe2
      00476C 95                    3377 	.db 0x95
      00476D 90                    3378 	.db 0x90
      00476E E2                    3379 	.db 0xe2
      00476F 95                    3380 	.db 0x95
      004770 90                    3381 	.db 0x90
      004771 E2                    3382 	.db 0xe2
      004772 95                    3383 	.db 0x95
      004773 90                    3384 	.db 0x90
      004774 E2                    3385 	.db 0xe2
      004775 95                    3386 	.db 0x95
      004776 90                    3387 	.db 0x90
      004777 E2                    3388 	.db 0xe2
      004778 95                    3389 	.db 0x95
      004779 90                    3390 	.db 0x90
      00477A E2                    3391 	.db 0xe2
      00477B 95                    3392 	.db 0x95
      00477C 90                    3393 	.db 0x90
      00477D E2                    3394 	.db 0xe2
      00477E 95                    3395 	.db 0x95
      00477F 90                    3396 	.db 0x90
      004780 E2                    3397 	.db 0xe2
      004781 95                    3398 	.db 0x95
      004782 90                    3399 	.db 0x90
      004783 E2                    3400 	.db 0xe2
      004784 95                    3401 	.db 0x95
      004785 90                    3402 	.db 0x90
      004786 E2                    3403 	.db 0xe2
      004787 95                    3404 	.db 0x95
      004788 90                    3405 	.db 0x90
      004789 E2                    3406 	.db 0xe2
      00478A 95                    3407 	.db 0x95
      00478B 90                    3408 	.db 0x90
      00478C E2                    3409 	.db 0xe2
      00478D 95                    3410 	.db 0x95
      00478E 97                    3411 	.db 0x97
      00478F 00                    3412 	.db 0x00
                                   3413 	.area CSEG    (CODE)
                                   3414 	.area CONST   (CODE)
      004790                       3415 ___str_1:
      004790 0D                    3416 	.db 0x0d
      004791 0A                    3417 	.db 0x0a
      004792 E2                    3418 	.db 0xe2
      004793 95                    3419 	.db 0x95
      004794 91                    3420 	.db 0x91
      004795 20 20 20 20 20 20 20  3421 	.ascii "                        WRITE MENU                          "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 57 52 49 54
             45 20 4D 45 4E 55 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0047D1 20 20 20 20           3422 	.ascii "    "
      0047D5 E2                    3423 	.db 0xe2
      0047D6 95                    3424 	.db 0x95
      0047D7 91                    3425 	.db 0x91
      0047D8 00                    3426 	.db 0x00
                                   3427 	.area CSEG    (CODE)
                                   3428 	.area CONST   (CODE)
      0047D9                       3429 ___str_2:
      0047D9 0D                    3430 	.db 0x0d
      0047DA 0A                    3431 	.db 0x0a
      0047DB E2                    3432 	.db 0xe2
      0047DC 95                    3433 	.db 0x95
      0047DD 9A                    3434 	.db 0x9a
      0047DE E2                    3435 	.db 0xe2
      0047DF 95                    3436 	.db 0x95
      0047E0 90                    3437 	.db 0x90
      0047E1 E2                    3438 	.db 0xe2
      0047E2 95                    3439 	.db 0x95
      0047E3 90                    3440 	.db 0x90
      0047E4 E2                    3441 	.db 0xe2
      0047E5 95                    3442 	.db 0x95
      0047E6 90                    3443 	.db 0x90
      0047E7 E2                    3444 	.db 0xe2
      0047E8 95                    3445 	.db 0x95
      0047E9 90                    3446 	.db 0x90
      0047EA E2                    3447 	.db 0xe2
      0047EB 95                    3448 	.db 0x95
      0047EC 90                    3449 	.db 0x90
      0047ED E2                    3450 	.db 0xe2
      0047EE 95                    3451 	.db 0x95
      0047EF 90                    3452 	.db 0x90
      0047F0 E2                    3453 	.db 0xe2
      0047F1 95                    3454 	.db 0x95
      0047F2 90                    3455 	.db 0x90
      0047F3 E2                    3456 	.db 0xe2
      0047F4 95                    3457 	.db 0x95
      0047F5 90                    3458 	.db 0x90
      0047F6 E2                    3459 	.db 0xe2
      0047F7 95                    3460 	.db 0x95
      0047F8 90                    3461 	.db 0x90
      0047F9 E2                    3462 	.db 0xe2
      0047FA 95                    3463 	.db 0x95
      0047FB 90                    3464 	.db 0x90
      0047FC E2                    3465 	.db 0xe2
      0047FD 95                    3466 	.db 0x95
      0047FE 90                    3467 	.db 0x90
      0047FF E2                    3468 	.db 0xe2
      004800 95                    3469 	.db 0x95
      004801 90                    3470 	.db 0x90
      004802 E2                    3471 	.db 0xe2
      004803 95                    3472 	.db 0x95
      004804 90                    3473 	.db 0x90
      004805 E2                    3474 	.db 0xe2
      004806 95                    3475 	.db 0x95
      004807 90                    3476 	.db 0x90
      004808 E2                    3477 	.db 0xe2
      004809 95                    3478 	.db 0x95
      00480A 90                    3479 	.db 0x90
      00480B E2                    3480 	.db 0xe2
      00480C 95                    3481 	.db 0x95
      00480D 90                    3482 	.db 0x90
      00480E E2                    3483 	.db 0xe2
      00480F 95                    3484 	.db 0x95
      004810 90                    3485 	.db 0x90
      004811 E2                    3486 	.db 0xe2
      004812 95                    3487 	.db 0x95
      004813 90                    3488 	.db 0x90
      004814 E2                    3489 	.db 0xe2
      004815 95                    3490 	.db 0x95
      004816 90                    3491 	.db 0x90
      004817 E2                    3492 	.db 0xe2
      004818 95                    3493 	.db 0x95
      004819 90                    3494 	.db 0x90
      00481A E2                    3495 	.db 0xe2
      00481B 95                    3496 	.db 0x95
      00481C 90                    3497 	.db 0x90
      00481D E2                    3498 	.db 0xe2
      00481E 95                    3499 	.db 0x95
      00481F 90                    3500 	.db 0x90
      004820 E2                    3501 	.db 0xe2
      004821 95                    3502 	.db 0x95
      004822 90                    3503 	.db 0x90
      004823 E2                    3504 	.db 0xe2
      004824 95                    3505 	.db 0x95
      004825 90                    3506 	.db 0x90
      004826 E2                    3507 	.db 0xe2
      004827 95                    3508 	.db 0x95
      004828 90                    3509 	.db 0x90
      004829 E2                    3510 	.db 0xe2
      00482A 95                    3511 	.db 0x95
      00482B 90                    3512 	.db 0x90
      00482C E2                    3513 	.db 0xe2
      00482D 95                    3514 	.db 0x95
      00482E 90                    3515 	.db 0x90
      00482F E2                    3516 	.db 0xe2
      004830 95                    3517 	.db 0x95
      004831 90                    3518 	.db 0x90
      004832 E2                    3519 	.db 0xe2
      004833 95                    3520 	.db 0x95
      004834 90                    3521 	.db 0x90
      004835 E2                    3522 	.db 0xe2
      004836 95                    3523 	.db 0x95
      004837 90                    3524 	.db 0x90
      004838 E2                    3525 	.db 0xe2
      004839 95                    3526 	.db 0x95
      00483A 90                    3527 	.db 0x90
      00483B E2                    3528 	.db 0xe2
      00483C 95                    3529 	.db 0x95
      00483D 90                    3530 	.db 0x90
      00483E E2                    3531 	.db 0xe2
      00483F 95                    3532 	.db 0x95
      004840 90                    3533 	.db 0x90
      004841 E2                    3534 	.db 0xe2
      004842 95                    3535 	.db 0x95
      004843 90                    3536 	.db 0x90
      004844 E2                    3537 	.db 0xe2
      004845 95                    3538 	.db 0x95
      004846 90                    3539 	.db 0x90
      004847 E2                    3540 	.db 0xe2
      004848 95                    3541 	.db 0x95
      004849 90                    3542 	.db 0x90
      00484A E2                    3543 	.db 0xe2
      00484B 95                    3544 	.db 0x95
      00484C 90                    3545 	.db 0x90
      00484D E2                    3546 	.db 0xe2
      00484E 95                    3547 	.db 0x95
      00484F 90                    3548 	.db 0x90
      004850 E2                    3549 	.db 0xe2
      004851 95                    3550 	.db 0x95
      004852 90                    3551 	.db 0x90
      004853 E2                    3552 	.db 0xe2
      004854 95                    3553 	.db 0x95
      004855 90                    3554 	.db 0x90
      004856 E2                    3555 	.db 0xe2
      004857 95                    3556 	.db 0x95
      004858 90                    3557 	.db 0x90
      004859 E2                    3558 	.db 0xe2
      00485A 95                    3559 	.db 0x95
      00485B 90                    3560 	.db 0x90
      00485C E2                    3561 	.db 0xe2
      00485D 95                    3562 	.db 0x95
      00485E 90                    3563 	.db 0x90
      00485F E2                    3564 	.db 0xe2
      004860 95                    3565 	.db 0x95
      004861 90                    3566 	.db 0x90
      004862 E2                    3567 	.db 0xe2
      004863 95                    3568 	.db 0x95
      004864 90                    3569 	.db 0x90
      004865 E2                    3570 	.db 0xe2
      004866 95                    3571 	.db 0x95
      004867 90                    3572 	.db 0x90
      004868 E2                    3573 	.db 0xe2
      004869 95                    3574 	.db 0x95
      00486A 90                    3575 	.db 0x90
      00486B E2                    3576 	.db 0xe2
      00486C 95                    3577 	.db 0x95
      00486D 90                    3578 	.db 0x90
      00486E E2                    3579 	.db 0xe2
      00486F 95                    3580 	.db 0x95
      004870 90                    3581 	.db 0x90
      004871 E2                    3582 	.db 0xe2
      004872 95                    3583 	.db 0x95
      004873 90                    3584 	.db 0x90
      004874 E2                    3585 	.db 0xe2
      004875 95                    3586 	.db 0x95
      004876 90                    3587 	.db 0x90
      004877 E2                    3588 	.db 0xe2
      004878 95                    3589 	.db 0x95
      004879 90                    3590 	.db 0x90
      00487A E2                    3591 	.db 0xe2
      00487B 95                    3592 	.db 0x95
      00487C 90                    3593 	.db 0x90
      00487D E2                    3594 	.db 0xe2
      00487E 95                    3595 	.db 0x95
      00487F 90                    3596 	.db 0x90
      004880 E2                    3597 	.db 0xe2
      004881 95                    3598 	.db 0x95
      004882 90                    3599 	.db 0x90
      004883 E2                    3600 	.db 0xe2
      004884 95                    3601 	.db 0x95
      004885 90                    3602 	.db 0x90
      004886 E2                    3603 	.db 0xe2
      004887 95                    3604 	.db 0x95
      004888 90                    3605 	.db 0x90
      004889 E2                    3606 	.db 0xe2
      00488A 95                    3607 	.db 0x95
      00488B 90                    3608 	.db 0x90
      00488C E2                    3609 	.db 0xe2
      00488D 95                    3610 	.db 0x95
      00488E 90                    3611 	.db 0x90
      00488F E2                    3612 	.db 0xe2
      004890 95                    3613 	.db 0x95
      004891 90                    3614 	.db 0x90
      004892 E2                    3615 	.db 0xe2
      004893 95                    3616 	.db 0x95
      004894 90                    3617 	.db 0x90
      004895 E2                    3618 	.db 0xe2
      004896 95                    3619 	.db 0x95
      004897 90                    3620 	.db 0x90
      004898 E2                    3621 	.db 0xe2
      004899 95                    3622 	.db 0x95
      00489A 90                    3623 	.db 0x90
      00489B E2                    3624 	.db 0xe2
      00489C 95                    3625 	.db 0x95
      00489D 90                    3626 	.db 0x90
      00489E E2                    3627 	.db 0xe2
      00489F 95                    3628 	.db 0x95
      0048A0 9D                    3629 	.db 0x9d
      0048A1 00                    3630 	.db 0x00
                                   3631 	.area CSEG    (CODE)
                                   3632 	.area CONST   (CODE)
      0048A2                       3633 ___str_3:
      0048A2 0D                    3634 	.db 0x0d
      0048A3 0A                    3635 	.db 0x0a
      0048A4 45 78 69 74 69 6E 67  3636 	.ascii "Exiting write menu..."
             20 77 72 69 74 65 20
             6D 65 6E 75 2E 2E 2E
      0048B9 00                    3637 	.db 0x00
                                   3638 	.area CSEG    (CODE)
                                   3639 	.area CONST   (CODE)
      0048BA                       3640 ___str_4:
      0048BA 0D                    3641 	.db 0x0d
      0048BB 0A                    3642 	.db 0x0a
      0048BC E2                    3643 	.db 0xe2
      0048BD 95                    3644 	.db 0x95
      0048BE 91                    3645 	.db 0x91
      0048BF 20 20 20 20 20 20 20  3646 	.ascii "                    CLEARING THE DISPLAY                    "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 43
             4C 45 41 52 49 4E 47
             20 54 48 45 20 44 49
             53 50 4C 41 59 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0048FB 20 20 20 20           3647 	.ascii "    "
      0048FF E2                    3648 	.db 0xe2
      004900 95                    3649 	.db 0x95
      004901 91                    3650 	.db 0x91
      004902 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      004903                       3654 ___str_5:
      004903 0D                    3655 	.db 0x0d
      004904 0A                    3656 	.db 0x0a
      004905 45 78 69 74 69 6E 67  3657 	.ascii "Exiting clear menu..."
             20 63 6C 65 61 72 20
             6D 65 6E 75 2E 2E 2E
      00491A 00                    3658 	.db 0x00
                                   3659 	.area CSEG    (CODE)
                                   3660 	.area CONST   (CODE)
      00491B                       3661 ___str_6:
      00491B 0D                    3662 	.db 0x0d
      00491C 0A                    3663 	.db 0x0a
      00491D E2                    3664 	.db 0xe2
      00491E 95                    3665 	.db 0x95
      00491F 91                    3666 	.db 0x91
      004920 20 20 20 20 20 20 20  3667 	.ascii "                     PAUSING THE TIMER                      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             50 41 55 53 49 4E 47
             20 54 48 45 20 54 49
             4D 45 52 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00495C 20 20 20 20           3668 	.ascii "    "
      004960 E2                    3669 	.db 0xe2
      004961 95                    3670 	.db 0x95
      004962 91                    3671 	.db 0x91
      004963 00                    3672 	.db 0x00
                                   3673 	.area CSEG    (CODE)
                                   3674 	.area CONST   (CODE)
      004964                       3675 ___str_7:
      004964 0D                    3676 	.db 0x0d
      004965 0A                    3677 	.db 0x0a
      004966 45 78 69 74 69 6E 67  3678 	.ascii "Exiting pause menu..."
             20 70 61 75 73 65 20
             6D 65 6E 75 2E 2E 2E
      00497B 00                    3679 	.db 0x00
                                   3680 	.area CSEG    (CODE)
                                   3681 	.area CONST   (CODE)
      00497C                       3682 ___str_8:
      00497C 0D                    3683 	.db 0x0d
      00497D 0A                    3684 	.db 0x0a
      00497E E2                    3685 	.db 0xe2
      00497F 95                    3686 	.db 0x95
      004980 91                    3687 	.db 0x91
      004981 20 20 20 20 20 20 20  3688 	.ascii "                     START THE TIMER                        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             53 54 41 52 54 20 54
             48 45 20 54 49 4D 45
             52 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0049BD 20 20 20 20           3689 	.ascii "    "
      0049C1 E2                    3690 	.db 0xe2
      0049C2 95                    3691 	.db 0x95
      0049C3 91                    3692 	.db 0x91
      0049C4 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      0049C5                       3696 ___str_9:
      0049C5 0D                    3697 	.db 0x0d
      0049C6 0A                    3698 	.db 0x0a
      0049C7 45 78 69 74 69 6E 67  3699 	.ascii "Exiting start timer menu..."
             20 73 74 61 72 74 20
             74 69 6D 65 72 20 6D
             65 6E 75 2E 2E 2E
      0049E2 00                    3700 	.db 0x00
                                   3701 	.area CSEG    (CODE)
                                   3702 	.area CONST   (CODE)
      0049E3                       3703 ___str_10:
      0049E3 0D                    3704 	.db 0x0d
      0049E4 0A                    3705 	.db 0x0a
      0049E5 E2                    3706 	.db 0xe2
      0049E6 95                    3707 	.db 0x95
      0049E7 91                    3708 	.db 0x91
      0049E8 20 20 20 20 20 20 20  3709 	.ascii "                      STOP THE TIMER                        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 53 54 4F 50 20 54
             48 45 20 54 49 4D 45
             52 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004A24 20 20 20 20           3710 	.ascii "    "
      004A28 E2                    3711 	.db 0xe2
      004A29 95                    3712 	.db 0x95
      004A2A 91                    3713 	.db 0x91
      004A2B 00                    3714 	.db 0x00
                                   3715 	.area CSEG    (CODE)
                                   3716 	.area CONST   (CODE)
      004A2C                       3717 ___str_11:
      004A2C 0D                    3718 	.db 0x0d
      004A2D 0A                    3719 	.db 0x0a
      004A2E 45 78 69 74 69 6E 67  3720 	.ascii "Exiting stop timer menu..."
             20 73 74 6F 70 20 74
             69 6D 65 72 20 6D 65
             6E 75 2E 2E 2E
      004A48 00                    3721 	.db 0x00
                                   3722 	.area CSEG    (CODE)
                                   3723 	.area CONST   (CODE)
      004A49                       3724 ___str_12:
      004A49 0D                    3725 	.db 0x0d
      004A4A 0A                    3726 	.db 0x0a
      004A4B E2                    3727 	.db 0xe2
      004A4C 95                    3728 	.db 0x95
      004A4D 91                    3729 	.db 0x91
      004A4E 20 20 20 20 20 20 20  3730 	.ascii "                WRITE TO SPECIFIC POSITION                  "
             20 20 20 20 20 20 20
             20 20 57 52 49 54 45
             20 54 4F 20 53 50 45
             43 49 46 49 43 20 50
             4F 53 49 54 49 4F 4E
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004A8A 20 20 20 20           3731 	.ascii "    "
      004A8E E2                    3732 	.db 0xe2
      004A8F 95                    3733 	.db 0x95
      004A90 91                    3734 	.db 0x91
      004A91 00                    3735 	.db 0x00
                                   3736 	.area CSEG    (CODE)
                                   3737 	.area CONST   (CODE)
      004A92                       3738 ___str_13:
      004A92 0D                    3739 	.db 0x0d
      004A93 0A                    3740 	.db 0x0a
      004A94 E2                    3741 	.db 0xe2
      004A95 95                    3742 	.db 0x95
      004A96 91                    3743 	.db 0x91
      004A97 20 20 20 20 20 20 20  3744 	.ascii "                 HEXDUMP OF DDRAM CONTENTS                  "
             20 20 20 20 20 20 20
             20 20 20 48 45 58 44
             55 4D 50 20 4F 46 20
             44 44 52 41 4D 20 43
             4F 4E 54 45 4E 54 53
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004AD3 20 20 20 20           3745 	.ascii "    "
      004AD7 E2                    3746 	.db 0xe2
      004AD8 95                    3747 	.db 0x95
      004AD9 91                    3748 	.db 0x91
      004ADA 00                    3749 	.db 0x00
                                   3750 	.area CSEG    (CODE)
                                   3751 	.area CONST   (CODE)
      004ADB                       3752 ___str_14:
      004ADB 0D                    3753 	.db 0x0d
      004ADC 0A                    3754 	.db 0x0a
      004ADD 45 78 69 74 69 6E 67  3755 	.ascii "Exiting hexdump menu..."
             20 68 65 78 64 75 6D
             70 20 6D 65 6E 75 2E
             2E 2E
      004AF4 00                    3756 	.db 0x00
                                   3757 	.area CSEG    (CODE)
                                   3758 	.area CONST   (CODE)
      004AF5                       3759 ___str_15:
      004AF5 0D                    3760 	.db 0x0d
      004AF6 0A                    3761 	.db 0x0a
      004AF7 E2                    3762 	.db 0xe2
      004AF8 95                    3763 	.db 0x95
      004AF9 91                    3764 	.db 0x91
      004AFA 20 20 20 20 20 20 20  3765 	.ascii "                 HEXDUMP OF CGRAM CONTENTS                  "
             20 20 20 20 20 20 20
             20 20 20 48 45 58 44
             55 4D 50 20 4F 46 20
             43 47 52 41 4D 20 43
             4F 4E 54 45 4E 54 53
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004B36 20 20 20 20           3766 	.ascii "    "
      004B3A E2                    3767 	.db 0xe2
      004B3B 95                    3768 	.db 0x95
      004B3C 91                    3769 	.db 0x91
      004B3D 00                    3770 	.db 0x00
                                   3771 	.area CSEG    (CODE)
                                   3772 	.area CONST   (CODE)
      004B3E                       3773 ___str_16:
      004B3E 0D                    3774 	.db 0x0d
      004B3F 0A                    3775 	.db 0x0a
      004B40 E2                    3776 	.db 0xe2
      004B41 95                    3777 	.db 0x95
      004B42 91                    3778 	.db 0x91
      004B43 20 20 20 20 20 20 20  3779 	.ascii "                   CREATE A CHARACTER                       "
             20 20 20 20 20 20 20
             20 20 20 20 20 43 52
             45 41 54 45 20 41 20
             43 48 41 52 41 43 54
             45 52 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004B7F 20 20 20 20           3780 	.ascii "    "
      004B83 E2                    3781 	.db 0xe2
      004B84 95                    3782 	.db 0x95
      004B85 91                    3783 	.db 0x91
      004B86 00                    3784 	.db 0x00
                                   3785 	.area CSEG    (CODE)
                                   3786 	.area CONST   (CODE)
      004B87                       3787 ___str_17:
      004B87 0D                    3788 	.db 0x0d
      004B88 0A                    3789 	.db 0x0a
      004B89 45 78 69 74 69 6E 67  3790 	.ascii "Exiting character creation menu..."
             20 63 68 61 72 61 63
             74 65 72 20 63 72 65
             61 74 69 6F 6E 20 6D
             65 6E 75 2E 2E 2E
      004BAB 00                    3791 	.db 0x00
                                   3792 	.area CSEG    (CODE)
                                   3793 	.area CONST   (CODE)
      004BAC                       3794 ___str_18:
      004BAC 0D                    3795 	.db 0x0d
      004BAD 0A                    3796 	.db 0x0a
      004BAE E2                    3797 	.db 0xe2
      004BAF 95                    3798 	.db 0x95
      004BB0 91                    3799 	.db 0x91
      004BB1 20 20 20 20 20 20 20  3800 	.ascii "                  DISPLAY CUSTOM CHAR                       "
             20 20 20 20 20 20 20
             20 20 20 20 44 49 53
             50 4C 41 59 20 43 55
             53 54 4F 4D 20 43 48
             41 52 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004BED 20 20 20 20           3801 	.ascii "    "
      004BF1 E2                    3802 	.db 0xe2
      004BF2 95                    3803 	.db 0x95
      004BF3 91                    3804 	.db 0x91
      004BF4 00                    3805 	.db 0x00
                                   3806 	.area CSEG    (CODE)
                                   3807 	.area CONST   (CODE)
      004BF5                       3808 ___str_19:
      004BF5 0D                    3809 	.db 0x0d
      004BF6 0A                    3810 	.db 0x0a
      004BF7 E2                    3811 	.db 0xe2
      004BF8 95                    3812 	.db 0x95
      004BF9 91                    3813 	.db 0x91
      004BFA 20 20 20 20 20 20 20  3814 	.ascii "                         HELP MENU                          "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 48 45 4C
             50 20 4D 45 4E 55 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004C36 20 20 20 20           3815 	.ascii "    "
      004C3A E2                    3816 	.db 0xe2
      004C3B 95                    3817 	.db 0x95
      004C3C 91                    3818 	.db 0x91
      004C3D 00                    3819 	.db 0x00
                                   3820 	.area CSEG    (CODE)
                                   3821 	.area CONST   (CODE)
      004C3E                       3822 ___str_20:
      004C3E 0D                    3823 	.db 0x0d
      004C3F 0A                    3824 	.db 0x0a
      004C40 E2                    3825 	.db 0xe2
      004C41 95                    3826 	.db 0x95
      004C42 A0                    3827 	.db 0xa0
      004C43 E2                    3828 	.db 0xe2
      004C44 95                    3829 	.db 0x95
      004C45 90                    3830 	.db 0x90
      004C46 E2                    3831 	.db 0xe2
      004C47 95                    3832 	.db 0x95
      004C48 90                    3833 	.db 0x90
      004C49 E2                    3834 	.db 0xe2
      004C4A 95                    3835 	.db 0x95
      004C4B 90                    3836 	.db 0x90
      004C4C E2                    3837 	.db 0xe2
      004C4D 95                    3838 	.db 0x95
      004C4E 90                    3839 	.db 0x90
      004C4F E2                    3840 	.db 0xe2
      004C50 95                    3841 	.db 0x95
      004C51 90                    3842 	.db 0x90
      004C52 E2                    3843 	.db 0xe2
      004C53 95                    3844 	.db 0x95
      004C54 90                    3845 	.db 0x90
      004C55 E2                    3846 	.db 0xe2
      004C56 95                    3847 	.db 0x95
      004C57 90                    3848 	.db 0x90
      004C58 E2                    3849 	.db 0xe2
      004C59 95                    3850 	.db 0x95
      004C5A 90                    3851 	.db 0x90
      004C5B E2                    3852 	.db 0xe2
      004C5C 95                    3853 	.db 0x95
      004C5D 90                    3854 	.db 0x90
      004C5E E2                    3855 	.db 0xe2
      004C5F 95                    3856 	.db 0x95
      004C60 90                    3857 	.db 0x90
      004C61 E2                    3858 	.db 0xe2
      004C62 95                    3859 	.db 0x95
      004C63 90                    3860 	.db 0x90
      004C64 E2                    3861 	.db 0xe2
      004C65 95                    3862 	.db 0x95
      004C66 A6                    3863 	.db 0xa6
      004C67 E2                    3864 	.db 0xe2
      004C68 95                    3865 	.db 0x95
      004C69 90                    3866 	.db 0x90
      004C6A E2                    3867 	.db 0xe2
      004C6B 95                    3868 	.db 0x95
      004C6C 90                    3869 	.db 0x90
      004C6D E2                    3870 	.db 0xe2
      004C6E 95                    3871 	.db 0x95
      004C6F 90                    3872 	.db 0x90
      004C70 E2                    3873 	.db 0xe2
      004C71 95                    3874 	.db 0x95
      004C72 90                    3875 	.db 0x90
      004C73 E2                    3876 	.db 0xe2
      004C74 95                    3877 	.db 0x95
      004C75 90                    3878 	.db 0x90
      004C76 E2                    3879 	.db 0xe2
      004C77 95                    3880 	.db 0x95
      004C78 90                    3881 	.db 0x90
      004C79 E2                    3882 	.db 0xe2
      004C7A 95                    3883 	.db 0x95
      004C7B 90                    3884 	.db 0x90
      004C7C E2                    3885 	.db 0xe2
      004C7D 95                    3886 	.db 0x95
      004C7E 90                    3887 	.db 0x90
      004C7F E2                    3888 	.db 0xe2
      004C80 95                    3889 	.db 0x95
      004C81 90                    3890 	.db 0x90
      004C82 E2                    3891 	.db 0xe2
      004C83 95                    3892 	.db 0x95
      004C84 90                    3893 	.db 0x90
      004C85 E2                    3894 	.db 0xe2
      004C86 95                    3895 	.db 0x95
      004C87 90                    3896 	.db 0x90
      004C88 E2                    3897 	.db 0xe2
      004C89 95                    3898 	.db 0x95
      004C8A 90                    3899 	.db 0x90
      004C8B E2                    3900 	.db 0xe2
      004C8C 95                    3901 	.db 0x95
      004C8D 90                    3902 	.db 0x90
      004C8E E2                    3903 	.db 0xe2
      004C8F 95                    3904 	.db 0x95
      004C90 90                    3905 	.db 0x90
      004C91 E2                    3906 	.db 0xe2
      004C92 95                    3907 	.db 0x95
      004C93 90                    3908 	.db 0x90
      004C94 E2                    3909 	.db 0xe2
      004C95 95                    3910 	.db 0x95
      004C96 90                    3911 	.db 0x90
      004C97 E2                    3912 	.db 0xe2
      004C98 95                    3913 	.db 0x95
      004C99 90                    3914 	.db 0x90
      004C9A E2                    3915 	.db 0xe2
      004C9B 95                    3916 	.db 0x95
      004C9C 90                    3917 	.db 0x90
      004C9D E2                    3918 	.db 0xe2
      004C9E 95                    3919 	.db 0x95
      004C9F 90                    3920 	.db 0x90
      004CA0 E2                    3921 	.db 0xe2
      004CA1 95                    3922 	.db 0x95
      004CA2 90                    3923 	.db 0x90
      004CA3 E2                    3924 	.db 0xe2
      004CA4 95                    3925 	.db 0x95
      004CA5 90                    3926 	.db 0x90
      004CA6 E2                    3927 	.db 0xe2
      004CA7 95                    3928 	.db 0x95
      004CA8 90                    3929 	.db 0x90
      004CA9 E2                    3930 	.db 0xe2
      004CAA 95                    3931 	.db 0x95
      004CAB 90                    3932 	.db 0x90
      004CAC E2                    3933 	.db 0xe2
      004CAD 95                    3934 	.db 0x95
      004CAE 90                    3935 	.db 0x90
      004CAF E2                    3936 	.db 0xe2
      004CB0 95                    3937 	.db 0x95
      004CB1 90                    3938 	.db 0x90
      004CB2 E2                    3939 	.db 0xe2
      004CB3 95                    3940 	.db 0x95
      004CB4 90                    3941 	.db 0x90
      004CB5 E2                    3942 	.db 0xe2
      004CB6 95                    3943 	.db 0x95
      004CB7 90                    3944 	.db 0x90
      004CB8 E2                    3945 	.db 0xe2
      004CB9 95                    3946 	.db 0x95
      004CBA 90                    3947 	.db 0x90
      004CBB E2                    3948 	.db 0xe2
      004CBC 95                    3949 	.db 0x95
      004CBD 90                    3950 	.db 0x90
      004CBE E2                    3951 	.db 0xe2
      004CBF 95                    3952 	.db 0x95
      004CC0 90                    3953 	.db 0x90
      004CC1 E2                    3954 	.db 0xe2
      004CC2 95                    3955 	.db 0x95
      004CC3 90                    3956 	.db 0x90
      004CC4 E2                    3957 	.db 0xe2
      004CC5 95                    3958 	.db 0x95
      004CC6 90                    3959 	.db 0x90
      004CC7 E2                    3960 	.db 0xe2
      004CC8 95                    3961 	.db 0x95
      004CC9 90                    3962 	.db 0x90
      004CCA E2                    3963 	.db 0xe2
      004CCB 95                    3964 	.db 0x95
      004CCC 90                    3965 	.db 0x90
      004CCD E2                    3966 	.db 0xe2
      004CCE 95                    3967 	.db 0x95
      004CCF 90                    3968 	.db 0x90
      004CD0 E2                    3969 	.db 0xe2
      004CD1 95                    3970 	.db 0x95
      004CD2 90                    3971 	.db 0x90
      004CD3 E2                    3972 	.db 0xe2
      004CD4 95                    3973 	.db 0x95
      004CD5 90                    3974 	.db 0x90
      004CD6 E2                    3975 	.db 0xe2
      004CD7 95                    3976 	.db 0x95
      004CD8 90                    3977 	.db 0x90
      004CD9 E2                    3978 	.db 0xe2
      004CDA 95                    3979 	.db 0x95
      004CDB 90                    3980 	.db 0x90
      004CDC E2                    3981 	.db 0xe2
      004CDD 95                    3982 	.db 0x95
      004CDE 90                    3983 	.db 0x90
      004CDF E2                    3984 	.db 0xe2
      004CE0 95                    3985 	.db 0x95
      004CE1 90                    3986 	.db 0x90
      004CE2 E2                    3987 	.db 0xe2
      004CE3 95                    3988 	.db 0x95
      004CE4 90                    3989 	.db 0x90
      004CE5 E2                    3990 	.db 0xe2
      004CE6 95                    3991 	.db 0x95
      004CE7 90                    3992 	.db 0x90
      004CE8 E2                    3993 	.db 0xe2
      004CE9 95                    3994 	.db 0x95
      004CEA 90                    3995 	.db 0x90
      004CEB E2                    3996 	.db 0xe2
      004CEC 95                    3997 	.db 0x95
      004CED 90                    3998 	.db 0x90
      004CEE E2                    3999 	.db 0xe2
      004CEF 95                    4000 	.db 0x95
      004CF0 90                    4001 	.db 0x90
      004CF1 E2                    4002 	.db 0xe2
      004CF2 95                    4003 	.db 0x95
      004CF3 90                    4004 	.db 0x90
      004CF4 E2                    4005 	.db 0xe2
      004CF5 95                    4006 	.db 0x95
      004CF6 90                    4007 	.db 0x90
      004CF7 E2                    4008 	.db 0xe2
      004CF8 95                    4009 	.db 0x95
      004CF9 90                    4010 	.db 0x90
      004CFA E2                    4011 	.db 0xe2
      004CFB 95                    4012 	.db 0x95
      004CFC 90                    4013 	.db 0x90
      004CFD E2                    4014 	.db 0xe2
      004CFE 95                    4015 	.db 0x95
      004CFF 90                    4016 	.db 0x90
      004D00 E2                    4017 	.db 0xe2
      004D01 95                    4018 	.db 0x95
      004D02 90                    4019 	.db 0x90
      004D03 E2                    4020 	.db 0xe2
      004D04 95                    4021 	.db 0x95
      004D05 A3                    4022 	.db 0xa3
      004D06 00                    4023 	.db 0x00
                                   4024 	.area CSEG    (CODE)
                                   4025 	.area CONST   (CODE)
      004D07                       4026 ___str_21:
      004D07 0D                    4027 	.db 0x0d
      004D08 0A                    4028 	.db 0x0a
      004D09 E2                    4029 	.db 0xe2
      004D0A 95                    4030 	.db 0x95
      004D0B 91                    4031 	.db 0x91
      004D0C 20 43 6F 6D 6D 61 6E  4032 	.ascii " Command   "
             64 20 20 20
      004D17 E2                    4033 	.db 0xe2
      004D18 95                    4034 	.db 0x95
      004D19 91                    4035 	.db 0x91
      004D1A 20 20 20 20 20 20 20  4036 	.ascii "                    Description                      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 44
             65 73 63 72 69 70 74
             69 6F 6E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004D4F E2                    4037 	.db 0xe2
      004D50 95                    4038 	.db 0x95
      004D51 91                    4039 	.db 0x91
      004D52 00                    4040 	.db 0x00
                                   4041 	.area CSEG    (CODE)
                                   4042 	.area CONST   (CODE)
      004D53                       4043 ___str_22:
      004D53 0D                    4044 	.db 0x0d
      004D54 0A                    4045 	.db 0x0a
      004D55 E2                    4046 	.db 0xe2
      004D56 95                    4047 	.db 0x95
      004D57 A0                    4048 	.db 0xa0
      004D58 E2                    4049 	.db 0xe2
      004D59 95                    4050 	.db 0x95
      004D5A 90                    4051 	.db 0x90
      004D5B E2                    4052 	.db 0xe2
      004D5C 95                    4053 	.db 0x95
      004D5D 90                    4054 	.db 0x90
      004D5E E2                    4055 	.db 0xe2
      004D5F 95                    4056 	.db 0x95
      004D60 90                    4057 	.db 0x90
      004D61 E2                    4058 	.db 0xe2
      004D62 95                    4059 	.db 0x95
      004D63 90                    4060 	.db 0x90
      004D64 E2                    4061 	.db 0xe2
      004D65 95                    4062 	.db 0x95
      004D66 90                    4063 	.db 0x90
      004D67 E2                    4064 	.db 0xe2
      004D68 95                    4065 	.db 0x95
      004D69 90                    4066 	.db 0x90
      004D6A E2                    4067 	.db 0xe2
      004D6B 95                    4068 	.db 0x95
      004D6C 90                    4069 	.db 0x90
      004D6D E2                    4070 	.db 0xe2
      004D6E 95                    4071 	.db 0x95
      004D6F 90                    4072 	.db 0x90
      004D70 E2                    4073 	.db 0xe2
      004D71 95                    4074 	.db 0x95
      004D72 90                    4075 	.db 0x90
      004D73 E2                    4076 	.db 0xe2
      004D74 95                    4077 	.db 0x95
      004D75 90                    4078 	.db 0x90
      004D76 E2                    4079 	.db 0xe2
      004D77 95                    4080 	.db 0x95
      004D78 90                    4081 	.db 0x90
      004D79 E2                    4082 	.db 0xe2
      004D7A 95                    4083 	.db 0x95
      004D7B AC                    4084 	.db 0xac
      004D7C E2                    4085 	.db 0xe2
      004D7D 95                    4086 	.db 0x95
      004D7E 90                    4087 	.db 0x90
      004D7F E2                    4088 	.db 0xe2
      004D80 95                    4089 	.db 0x95
      004D81 90                    4090 	.db 0x90
      004D82 E2                    4091 	.db 0xe2
      004D83 95                    4092 	.db 0x95
      004D84 90                    4093 	.db 0x90
      004D85 E2                    4094 	.db 0xe2
      004D86 95                    4095 	.db 0x95
      004D87 90                    4096 	.db 0x90
      004D88 E2                    4097 	.db 0xe2
      004D89 95                    4098 	.db 0x95
      004D8A 90                    4099 	.db 0x90
      004D8B E2                    4100 	.db 0xe2
      004D8C 95                    4101 	.db 0x95
      004D8D 90                    4102 	.db 0x90
      004D8E E2                    4103 	.db 0xe2
      004D8F 95                    4104 	.db 0x95
      004D90 90                    4105 	.db 0x90
      004D91 E2                    4106 	.db 0xe2
      004D92 95                    4107 	.db 0x95
      004D93 90                    4108 	.db 0x90
      004D94 E2                    4109 	.db 0xe2
      004D95 95                    4110 	.db 0x95
      004D96 90                    4111 	.db 0x90
      004D97 E2                    4112 	.db 0xe2
      004D98 95                    4113 	.db 0x95
      004D99 90                    4114 	.db 0x90
      004D9A E2                    4115 	.db 0xe2
      004D9B 95                    4116 	.db 0x95
      004D9C 90                    4117 	.db 0x90
      004D9D E2                    4118 	.db 0xe2
      004D9E 95                    4119 	.db 0x95
      004D9F 90                    4120 	.db 0x90
      004DA0 E2                    4121 	.db 0xe2
      004DA1 95                    4122 	.db 0x95
      004DA2 90                    4123 	.db 0x90
      004DA3 E2                    4124 	.db 0xe2
      004DA4 95                    4125 	.db 0x95
      004DA5 90                    4126 	.db 0x90
      004DA6 E2                    4127 	.db 0xe2
      004DA7 95                    4128 	.db 0x95
      004DA8 90                    4129 	.db 0x90
      004DA9 E2                    4130 	.db 0xe2
      004DAA 95                    4131 	.db 0x95
      004DAB 90                    4132 	.db 0x90
      004DAC E2                    4133 	.db 0xe2
      004DAD 95                    4134 	.db 0x95
      004DAE 90                    4135 	.db 0x90
      004DAF E2                    4136 	.db 0xe2
      004DB0 95                    4137 	.db 0x95
      004DB1 90                    4138 	.db 0x90
      004DB2 E2                    4139 	.db 0xe2
      004DB3 95                    4140 	.db 0x95
      004DB4 90                    4141 	.db 0x90
      004DB5 E2                    4142 	.db 0xe2
      004DB6 95                    4143 	.db 0x95
      004DB7 90                    4144 	.db 0x90
      004DB8 E2                    4145 	.db 0xe2
      004DB9 95                    4146 	.db 0x95
      004DBA 90                    4147 	.db 0x90
      004DBB E2                    4148 	.db 0xe2
      004DBC 95                    4149 	.db 0x95
      004DBD 90                    4150 	.db 0x90
      004DBE E2                    4151 	.db 0xe2
      004DBF 95                    4152 	.db 0x95
      004DC0 90                    4153 	.db 0x90
      004DC1 E2                    4154 	.db 0xe2
      004DC2 95                    4155 	.db 0x95
      004DC3 90                    4156 	.db 0x90
      004DC4 E2                    4157 	.db 0xe2
      004DC5 95                    4158 	.db 0x95
      004DC6 90                    4159 	.db 0x90
      004DC7 E2                    4160 	.db 0xe2
      004DC8 95                    4161 	.db 0x95
      004DC9 90                    4162 	.db 0x90
      004DCA E2                    4163 	.db 0xe2
      004DCB 95                    4164 	.db 0x95
      004DCC 90                    4165 	.db 0x90
      004DCD E2                    4166 	.db 0xe2
      004DCE 95                    4167 	.db 0x95
      004DCF 90                    4168 	.db 0x90
      004DD0 E2                    4169 	.db 0xe2
      004DD1 95                    4170 	.db 0x95
      004DD2 90                    4171 	.db 0x90
      004DD3 E2                    4172 	.db 0xe2
      004DD4 95                    4173 	.db 0x95
      004DD5 90                    4174 	.db 0x90
      004DD6 E2                    4175 	.db 0xe2
      004DD7 95                    4176 	.db 0x95
      004DD8 90                    4177 	.db 0x90
      004DD9 E2                    4178 	.db 0xe2
      004DDA 95                    4179 	.db 0x95
      004DDB 90                    4180 	.db 0x90
      004DDC E2                    4181 	.db 0xe2
      004DDD 95                    4182 	.db 0x95
      004DDE 90                    4183 	.db 0x90
      004DDF E2                    4184 	.db 0xe2
      004DE0 95                    4185 	.db 0x95
      004DE1 90                    4186 	.db 0x90
      004DE2 E2                    4187 	.db 0xe2
      004DE3 95                    4188 	.db 0x95
      004DE4 90                    4189 	.db 0x90
      004DE5 E2                    4190 	.db 0xe2
      004DE6 95                    4191 	.db 0x95
      004DE7 90                    4192 	.db 0x90
      004DE8 E2                    4193 	.db 0xe2
      004DE9 95                    4194 	.db 0x95
      004DEA 90                    4195 	.db 0x90
      004DEB E2                    4196 	.db 0xe2
      004DEC 95                    4197 	.db 0x95
      004DED 90                    4198 	.db 0x90
      004DEE E2                    4199 	.db 0xe2
      004DEF 95                    4200 	.db 0x95
      004DF0 90                    4201 	.db 0x90
      004DF1 E2                    4202 	.db 0xe2
      004DF2 95                    4203 	.db 0x95
      004DF3 90                    4204 	.db 0x90
      004DF4 E2                    4205 	.db 0xe2
      004DF5 95                    4206 	.db 0x95
      004DF6 90                    4207 	.db 0x90
      004DF7 E2                    4208 	.db 0xe2
      004DF8 95                    4209 	.db 0x95
      004DF9 90                    4210 	.db 0x90
      004DFA E2                    4211 	.db 0xe2
      004DFB 95                    4212 	.db 0x95
      004DFC 90                    4213 	.db 0x90
      004DFD E2                    4214 	.db 0xe2
      004DFE 95                    4215 	.db 0x95
      004DFF 90                    4216 	.db 0x90
      004E00 E2                    4217 	.db 0xe2
      004E01 95                    4218 	.db 0x95
      004E02 90                    4219 	.db 0x90
      004E03 E2                    4220 	.db 0xe2
      004E04 95                    4221 	.db 0x95
      004E05 90                    4222 	.db 0x90
      004E06 E2                    4223 	.db 0xe2
      004E07 95                    4224 	.db 0x95
      004E08 90                    4225 	.db 0x90
      004E09 E2                    4226 	.db 0xe2
      004E0A 95                    4227 	.db 0x95
      004E0B 90                    4228 	.db 0x90
      004E0C E2                    4229 	.db 0xe2
      004E0D 95                    4230 	.db 0x95
      004E0E 90                    4231 	.db 0x90
      004E0F E2                    4232 	.db 0xe2
      004E10 95                    4233 	.db 0x95
      004E11 90                    4234 	.db 0x90
      004E12 E2                    4235 	.db 0xe2
      004E13 95                    4236 	.db 0x95
      004E14 90                    4237 	.db 0x90
      004E15 E2                    4238 	.db 0xe2
      004E16 95                    4239 	.db 0x95
      004E17 90                    4240 	.db 0x90
      004E18 E2                    4241 	.db 0xe2
      004E19 95                    4242 	.db 0x95
      004E1A A3                    4243 	.db 0xa3
      004E1B 00                    4244 	.db 0x00
                                   4245 	.area CSEG    (CODE)
                                   4246 	.area CONST   (CODE)
      004E1C                       4247 ___str_23:
      004E1C 0D                    4248 	.db 0x0d
      004E1D 0A                    4249 	.db 0x0a
      004E1E E2                    4250 	.db 0xe2
      004E1F 95                    4251 	.db 0x95
      004E20 91                    4252 	.db 0x91
      004E21 20 20 20 20 57 20 20  4253 	.ascii "    W      "
             20 20 20 20
      004E2C E2                    4254 	.db 0xe2
      004E2D 95                    4255 	.db 0x95
      004E2E 91                    4256 	.db 0x91
      004E2F 20 57 72 69 74 65 20  4257 	.ascii " Write a string                                     "
             61 20 73 74 72 69 6E
             67 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004E63 E2                    4258 	.db 0xe2
      004E64 95                    4259 	.db 0x95
      004E65 91                    4260 	.db 0x91
      004E66 00                    4261 	.db 0x00
                                   4262 	.area CSEG    (CODE)
                                   4263 	.area CONST   (CODE)
      004E67                       4264 ___str_24:
      004E67 0D                    4265 	.db 0x0d
      004E68 0A                    4266 	.db 0x0a
      004E69 E2                    4267 	.db 0xe2
      004E6A 95                    4268 	.db 0x95
      004E6B 91                    4269 	.db 0x91
      004E6C 20 20 20 20 54 20 20  4270 	.ascii "    T      "
             20 20 20 20
      004E77 E2                    4271 	.db 0xe2
      004E78 95                    4272 	.db 0x95
      004E79 91                    4273 	.db 0x91
      004E7A 20 57 72 69 74 65 20  4274 	.ascii " Write to a specific position in the LCD            "
             74 6F 20 61 20 73 70
             65 63 69 66 69 63 20
             70 6F 73 69 74 69 6F
             6E 20 69 6E 20 74 68
             65 20 4C 43 44 20 20
             20 20 20 20 20 20 20
             20 20 20
      004EAE E2                    4275 	.db 0xe2
      004EAF 95                    4276 	.db 0x95
      004EB0 91                    4277 	.db 0x91
      004EB1 00                    4278 	.db 0x00
                                   4279 	.area CSEG    (CODE)
                                   4280 	.area CONST   (CODE)
      004EB2                       4281 ___str_25:
      004EB2 0D                    4282 	.db 0x0d
      004EB3 0A                    4283 	.db 0x0a
      004EB4 E2                    4284 	.db 0xe2
      004EB5 95                    4285 	.db 0x95
      004EB6 91                    4286 	.db 0x91
      004EB7 20 20 20 20 45 20 20  4287 	.ascii "    E      "
             20 20 20 20
      004EC2 E2                    4288 	.db 0xe2
      004EC3 95                    4289 	.db 0x95
      004EC4 91                    4290 	.db 0x91
      004EC5 20 43 6C 65 61 72 20  4291 	.ascii " Clear the display                                  "
             74 68 65 20 64 69 73
             70 6C 61 79 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004EF9 E2                    4292 	.db 0xe2
      004EFA 95                    4293 	.db 0x95
      004EFB 91                    4294 	.db 0x91
      004EFC 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      004EFD                       4298 ___str_26:
      004EFD 0D                    4299 	.db 0x0d
      004EFE 0A                    4300 	.db 0x0a
      004EFF E2                    4301 	.db 0xe2
      004F00 95                    4302 	.db 0x95
      004F01 91                    4303 	.db 0x91
      004F02 20 20 20 20 50 20 20  4304 	.ascii "    P      "
             20 20 20 20
      004F0D E2                    4305 	.db 0xe2
      004F0E 95                    4306 	.db 0x95
      004F0F 91                    4307 	.db 0x91
      004F10 20 50 61 75 73 65 20  4308 	.ascii " Pause the Timer                                    "
             74 68 65 20 54 69 6D
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004F44 E2                    4309 	.db 0xe2
      004F45 95                    4310 	.db 0x95
      004F46 91                    4311 	.db 0x91
      004F47 00                    4312 	.db 0x00
                                   4313 	.area CSEG    (CODE)
                                   4314 	.area CONST   (CODE)
      004F48                       4315 ___str_27:
      004F48 0D                    4316 	.db 0x0d
      004F49 0A                    4317 	.db 0x0a
      004F4A E2                    4318 	.db 0xe2
      004F4B 95                    4319 	.db 0x95
      004F4C 91                    4320 	.db 0x91
      004F4D 20 20 20 20 53 20 20  4321 	.ascii "    S      "
             20 20 20 20
      004F58 E2                    4322 	.db 0xe2
      004F59 95                    4323 	.db 0x95
      004F5A 91                    4324 	.db 0x91
      004F5B 20 53 74 61 72 74 20  4325 	.ascii " Start the Timer                                    "
             74 68 65 20 54 69 6D
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004F8F E2                    4326 	.db 0xe2
      004F90 95                    4327 	.db 0x95
      004F91 91                    4328 	.db 0x91
      004F92 00                    4329 	.db 0x00
                                   4330 	.area CSEG    (CODE)
                                   4331 	.area CONST   (CODE)
      004F93                       4332 ___str_28:
      004F93 0D                    4333 	.db 0x0d
      004F94 0A                    4334 	.db 0x0a
      004F95 E2                    4335 	.db 0xe2
      004F96 95                    4336 	.db 0x95
      004F97 91                    4337 	.db 0x91
      004F98 20 20 20 20 52 20 20  4338 	.ascii "    R      "
             20 20 20 20
      004FA3 E2                    4339 	.db 0xe2
      004FA4 95                    4340 	.db 0x95
      004FA5 91                    4341 	.db 0x91
      004FA6 20 53 74 6F 70 20 61  4342 	.ascii " Stop and reset the Timer                           "
             6E 64 20 72 65 73 65
             74 20 74 68 65 20 54
             69 6D 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004FDA E2                    4343 	.db 0xe2
      004FDB 95                    4344 	.db 0x95
      004FDC 91                    4345 	.db 0x91
      004FDD 00                    4346 	.db 0x00
                                   4347 	.area CSEG    (CODE)
                                   4348 	.area CONST   (CODE)
      004FDE                       4349 ___str_29:
      004FDE 0D                    4350 	.db 0x0d
      004FDF 0A                    4351 	.db 0x0a
      004FE0 E2                    4352 	.db 0xe2
      004FE1 95                    4353 	.db 0x95
      004FE2 91                    4354 	.db 0x91
      004FE3 20 20 20 20 48 20 20  4355 	.ascii "    H      "
             20 20 20 20
      004FEE E2                    4356 	.db 0xe2
      004FEF 95                    4357 	.db 0x95
      004FF0 91                    4358 	.db 0x91
      004FF1 20 48 65 78 64 75 6D  4359 	.ascii " Hexdump of DDRAM contents                          "
             70 20 6F 66 20 44 44
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      005025 E2                    4360 	.db 0xe2
      005026 95                    4361 	.db 0x95
      005027 91                    4362 	.db 0x91
      005028 00                    4363 	.db 0x00
                                   4364 	.area CSEG    (CODE)
                                   4365 	.area CONST   (CODE)
      005029                       4366 ___str_30:
      005029 0D                    4367 	.db 0x0d
      00502A 0A                    4368 	.db 0x0a
      00502B E2                    4369 	.db 0xe2
      00502C 95                    4370 	.db 0x95
      00502D 91                    4371 	.db 0x91
      00502E 20 20 20 20 43 20 20  4372 	.ascii "    C      "
             20 20 20 20
      005039 E2                    4373 	.db 0xe2
      00503A 95                    4374 	.db 0x95
      00503B 91                    4375 	.db 0x91
      00503C 20 48 65 78 64 75 6D  4376 	.ascii " Hexdump of CGRAM contents                          "
             70 20 6F 66 20 43 47
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      005070 E2                    4377 	.db 0xe2
      005071 95                    4378 	.db 0x95
      005072 91                    4379 	.db 0x91
      005073 00                    4380 	.db 0x00
                                   4381 	.area CSEG    (CODE)
                                   4382 	.area CONST   (CODE)
      005074                       4383 ___str_31:
      005074 0D                    4384 	.db 0x0d
      005075 0A                    4385 	.db 0x0a
      005076 E2                    4386 	.db 0xe2
      005077 95                    4387 	.db 0x95
      005078 91                    4388 	.db 0x91
      005079 20 20 20 20 41 20 20  4389 	.ascii "    A      "
             20 20 20 20
      005084 E2                    4390 	.db 0xe2
      005085 95                    4391 	.db 0x95
      005086 91                    4392 	.db 0x91
      005087 20 43 72 65 61 74 65  4393 	.ascii " Create a CGRAM character                           "
             20 61 20 43 47 52 41
             4D 20 63 68 61 72 61
             63 74 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0050BB E2                    4394 	.db 0xe2
      0050BC 95                    4395 	.db 0x95
      0050BD 91                    4396 	.db 0x91
      0050BE 00                    4397 	.db 0x00
                                   4398 	.area CSEG    (CODE)
                                   4399 	.area CONST   (CODE)
      0050BF                       4400 ___str_32:
      0050BF 0D                    4401 	.db 0x0d
      0050C0 0A                    4402 	.db 0x0a
      0050C1 E2                    4403 	.db 0xe2
      0050C2 95                    4404 	.db 0x95
      0050C3 91                    4405 	.db 0x91
      0050C4 20 20 20 20 44 20 20  4406 	.ascii "    D      "
             20 20 20 20
      0050CF E2                    4407 	.db 0xe2
      0050D0 95                    4408 	.db 0x95
      0050D1 91                    4409 	.db 0x91
      0050D2 20 44 69 73 70 6C 61  4410 	.ascii " Display a CGRAM character                          "
             79 20 61 20 43 47 52
             41 4D 20 63 68 61 72
             61 63 74 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      005106 E2                    4411 	.db 0xe2
      005107 95                    4412 	.db 0x95
      005108 91                    4413 	.db 0x91
      005109 00                    4414 	.db 0x00
                                   4415 	.area CSEG    (CODE)
                                   4416 	.area CONST   (CODE)
      00510A                       4417 ___str_33:
      00510A 0D                    4418 	.db 0x0d
      00510B 0A                    4419 	.db 0x0a
      00510C E2                    4420 	.db 0xe2
      00510D 95                    4421 	.db 0x95
      00510E 91                    4422 	.db 0x91
      00510F 20 20 20 20 3F 20 20  4423 	.ascii "    ?      "
             20 20 20 20
      00511A E2                    4424 	.db 0xe2
      00511B 95                    4425 	.db 0x95
      00511C 91                    4426 	.db 0x91
      00511D 20 48 65 6C 70 20 6D  4427 	.ascii " Help menu                                          "
             65 6E 75 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      005151 E2                    4428 	.db 0xe2
      005152 95                    4429 	.db 0x95
      005153 91                    4430 	.db 0x91
      005154 00                    4431 	.db 0x00
                                   4432 	.area CSEG    (CODE)
                                   4433 	.area CONST   (CODE)
      005155                       4434 ___str_34:
      005155 0D                    4435 	.db 0x0d
      005156 0A                    4436 	.db 0x0a
      005157 E2                    4437 	.db 0xe2
      005158 95                    4438 	.db 0x95
      005159 9A                    4439 	.db 0x9a
      00515A E2                    4440 	.db 0xe2
      00515B 95                    4441 	.db 0x95
      00515C 90                    4442 	.db 0x90
      00515D E2                    4443 	.db 0xe2
      00515E 95                    4444 	.db 0x95
      00515F 90                    4445 	.db 0x90
      005160 E2                    4446 	.db 0xe2
      005161 95                    4447 	.db 0x95
      005162 90                    4448 	.db 0x90
      005163 E2                    4449 	.db 0xe2
      005164 95                    4450 	.db 0x95
      005165 90                    4451 	.db 0x90
      005166 E2                    4452 	.db 0xe2
      005167 95                    4453 	.db 0x95
      005168 90                    4454 	.db 0x90
      005169 E2                    4455 	.db 0xe2
      00516A 95                    4456 	.db 0x95
      00516B 90                    4457 	.db 0x90
      00516C E2                    4458 	.db 0xe2
      00516D 95                    4459 	.db 0x95
      00516E 90                    4460 	.db 0x90
      00516F E2                    4461 	.db 0xe2
      005170 95                    4462 	.db 0x95
      005171 90                    4463 	.db 0x90
      005172 E2                    4464 	.db 0xe2
      005173 95                    4465 	.db 0x95
      005174 90                    4466 	.db 0x90
      005175 E2                    4467 	.db 0xe2
      005176 95                    4468 	.db 0x95
      005177 90                    4469 	.db 0x90
      005178 E2                    4470 	.db 0xe2
      005179 95                    4471 	.db 0x95
      00517A 90                    4472 	.db 0x90
      00517B E2                    4473 	.db 0xe2
      00517C 95                    4474 	.db 0x95
      00517D A9                    4475 	.db 0xa9
      00517E E2                    4476 	.db 0xe2
      00517F 95                    4477 	.db 0x95
      005180 90                    4478 	.db 0x90
      005181 E2                    4479 	.db 0xe2
      005182 95                    4480 	.db 0x95
      005183 90                    4481 	.db 0x90
      005184 E2                    4482 	.db 0xe2
      005185 95                    4483 	.db 0x95
      005186 90                    4484 	.db 0x90
      005187 E2                    4485 	.db 0xe2
      005188 95                    4486 	.db 0x95
      005189 90                    4487 	.db 0x90
      00518A E2                    4488 	.db 0xe2
      00518B 95                    4489 	.db 0x95
      00518C 90                    4490 	.db 0x90
      00518D E2                    4491 	.db 0xe2
      00518E 95                    4492 	.db 0x95
      00518F 90                    4493 	.db 0x90
      005190 E2                    4494 	.db 0xe2
      005191 95                    4495 	.db 0x95
      005192 90                    4496 	.db 0x90
      005193 E2                    4497 	.db 0xe2
      005194 95                    4498 	.db 0x95
      005195 90                    4499 	.db 0x90
      005196 E2                    4500 	.db 0xe2
      005197 95                    4501 	.db 0x95
      005198 90                    4502 	.db 0x90
      005199 E2                    4503 	.db 0xe2
      00519A 95                    4504 	.db 0x95
      00519B 90                    4505 	.db 0x90
      00519C E2                    4506 	.db 0xe2
      00519D 95                    4507 	.db 0x95
      00519E 90                    4508 	.db 0x90
      00519F E2                    4509 	.db 0xe2
      0051A0 95                    4510 	.db 0x95
      0051A1 90                    4511 	.db 0x90
      0051A2 E2                    4512 	.db 0xe2
      0051A3 95                    4513 	.db 0x95
      0051A4 90                    4514 	.db 0x90
      0051A5 E2                    4515 	.db 0xe2
      0051A6 95                    4516 	.db 0x95
      0051A7 90                    4517 	.db 0x90
      0051A8 E2                    4518 	.db 0xe2
      0051A9 95                    4519 	.db 0x95
      0051AA 90                    4520 	.db 0x90
      0051AB E2                    4521 	.db 0xe2
      0051AC 95                    4522 	.db 0x95
      0051AD 90                    4523 	.db 0x90
      0051AE E2                    4524 	.db 0xe2
      0051AF 95                    4525 	.db 0x95
      0051B0 90                    4526 	.db 0x90
      0051B1 E2                    4527 	.db 0xe2
      0051B2 95                    4528 	.db 0x95
      0051B3 90                    4529 	.db 0x90
      0051B4 E2                    4530 	.db 0xe2
      0051B5 95                    4531 	.db 0x95
      0051B6 90                    4532 	.db 0x90
      0051B7 E2                    4533 	.db 0xe2
      0051B8 95                    4534 	.db 0x95
      0051B9 90                    4535 	.db 0x90
      0051BA E2                    4536 	.db 0xe2
      0051BB 95                    4537 	.db 0x95
      0051BC 90                    4538 	.db 0x90
      0051BD E2                    4539 	.db 0xe2
      0051BE 95                    4540 	.db 0x95
      0051BF 90                    4541 	.db 0x90
      0051C0 E2                    4542 	.db 0xe2
      0051C1 95                    4543 	.db 0x95
      0051C2 90                    4544 	.db 0x90
      0051C3 E2                    4545 	.db 0xe2
      0051C4 95                    4546 	.db 0x95
      0051C5 90                    4547 	.db 0x90
      0051C6 E2                    4548 	.db 0xe2
      0051C7 95                    4549 	.db 0x95
      0051C8 90                    4550 	.db 0x90
      0051C9 E2                    4551 	.db 0xe2
      0051CA 95                    4552 	.db 0x95
      0051CB 90                    4553 	.db 0x90
      0051CC E2                    4554 	.db 0xe2
      0051CD 95                    4555 	.db 0x95
      0051CE 90                    4556 	.db 0x90
      0051CF E2                    4557 	.db 0xe2
      0051D0 95                    4558 	.db 0x95
      0051D1 90                    4559 	.db 0x90
      0051D2 E2                    4560 	.db 0xe2
      0051D3 95                    4561 	.db 0x95
      0051D4 90                    4562 	.db 0x90
      0051D5 E2                    4563 	.db 0xe2
      0051D6 95                    4564 	.db 0x95
      0051D7 90                    4565 	.db 0x90
      0051D8 E2                    4566 	.db 0xe2
      0051D9 95                    4567 	.db 0x95
      0051DA 90                    4568 	.db 0x90
      0051DB E2                    4569 	.db 0xe2
      0051DC 95                    4570 	.db 0x95
      0051DD 90                    4571 	.db 0x90
      0051DE E2                    4572 	.db 0xe2
      0051DF 95                    4573 	.db 0x95
      0051E0 90                    4574 	.db 0x90
      0051E1 E2                    4575 	.db 0xe2
      0051E2 95                    4576 	.db 0x95
      0051E3 90                    4577 	.db 0x90
      0051E4 E2                    4578 	.db 0xe2
      0051E5 95                    4579 	.db 0x95
      0051E6 90                    4580 	.db 0x90
      0051E7 E2                    4581 	.db 0xe2
      0051E8 95                    4582 	.db 0x95
      0051E9 90                    4583 	.db 0x90
      0051EA E2                    4584 	.db 0xe2
      0051EB 95                    4585 	.db 0x95
      0051EC 90                    4586 	.db 0x90
      0051ED E2                    4587 	.db 0xe2
      0051EE 95                    4588 	.db 0x95
      0051EF 90                    4589 	.db 0x90
      0051F0 E2                    4590 	.db 0xe2
      0051F1 95                    4591 	.db 0x95
      0051F2 90                    4592 	.db 0x90
      0051F3 E2                    4593 	.db 0xe2
      0051F4 95                    4594 	.db 0x95
      0051F5 90                    4595 	.db 0x90
      0051F6 E2                    4596 	.db 0xe2
      0051F7 95                    4597 	.db 0x95
      0051F8 90                    4598 	.db 0x90
      0051F9 E2                    4599 	.db 0xe2
      0051FA 95                    4600 	.db 0x95
      0051FB 90                    4601 	.db 0x90
      0051FC E2                    4602 	.db 0xe2
      0051FD 95                    4603 	.db 0x95
      0051FE 90                    4604 	.db 0x90
      0051FF E2                    4605 	.db 0xe2
      005200 95                    4606 	.db 0x95
      005201 90                    4607 	.db 0x90
      005202 E2                    4608 	.db 0xe2
      005203 95                    4609 	.db 0x95
      005204 90                    4610 	.db 0x90
      005205 E2                    4611 	.db 0xe2
      005206 95                    4612 	.db 0x95
      005207 90                    4613 	.db 0x90
      005208 E2                    4614 	.db 0xe2
      005209 95                    4615 	.db 0x95
      00520A 90                    4616 	.db 0x90
      00520B E2                    4617 	.db 0xe2
      00520C 95                    4618 	.db 0x95
      00520D 90                    4619 	.db 0x90
      00520E E2                    4620 	.db 0xe2
      00520F 95                    4621 	.db 0x95
      005210 90                    4622 	.db 0x90
      005211 E2                    4623 	.db 0xe2
      005212 95                    4624 	.db 0x95
      005213 90                    4625 	.db 0x90
      005214 E2                    4626 	.db 0xe2
      005215 95                    4627 	.db 0x95
      005216 90                    4628 	.db 0x90
      005217 E2                    4629 	.db 0xe2
      005218 95                    4630 	.db 0x95
      005219 90                    4631 	.db 0x90
      00521A E2                    4632 	.db 0xe2
      00521B 95                    4633 	.db 0x95
      00521C 9D                    4634 	.db 0x9d
      00521D 00                    4635 	.db 0x00
                                   4636 	.area CSEG    (CODE)
                                   4637 	.area CONST   (CODE)
      00521E                       4638 ___str_35:
      00521E 0D                    4639 	.db 0x0d
      00521F 0A                    4640 	.db 0x0a
      005220 E2                    4641 	.db 0xe2
      005221 95                    4642 	.db 0x95
      005222 91                    4643 	.db 0x91
      005223 20 20 20 20 20 20 20  4644 	.ascii "                      INVALID INPUT                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 49 4E 56 41 4C 49
             44 20 49 4E 50 55 54
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00525F 20 20 20 20           4645 	.ascii "    "
      005263 E2                    4646 	.db 0xe2
      005264 95                    4647 	.db 0x95
      005265 91                    4648 	.db 0x91
      005266 00                    4649 	.db 0x00
                                   4650 	.area CSEG    (CODE)
                                   4651 	.area CONST   (CODE)
      005267                       4652 ___str_36:
      005267 0D                    4653 	.db 0x0d
      005268 0A                    4654 	.db 0x0a
      005269 4F 75 74 20 6F 66 20  4655 	.ascii "Out of range"
             72 61 6E 67 65
      005275 0D                    4656 	.db 0x0d
      005276 0A                    4657 	.db 0x0a
      005277 00                    4658 	.db 0x00
                                   4659 	.area CSEG    (CODE)
                                   4660 	.area CONST   (CODE)
      005278                       4661 ___str_37:
      005278 0D                    4662 	.db 0x0d
      005279 0A                    4663 	.db 0x0a
      00527A 45 6E 74 65 72 20 74  4664 	.ascii "Enter the string and press enter:"
             68 65 20 73 74 72 69
             6E 67 20 61 6E 64 20
             70 72 65 73 73 20 65
             6E 74 65 72 3A
      00529B 00                    4665 	.db 0x00
                                   4666 	.area CSEG    (CODE)
                                   4667 	.area CONST   (CODE)
      00529C                       4668 ___str_38:
      00529C 0D                    4669 	.db 0x0d
      00529D 0A                    4670 	.db 0x0a
      00529E 49 6E 76 61 6C 69 64  4671 	.ascii "Invalid input"
             20 69 6E 70 75 74
      0052AB 00                    4672 	.db 0x00
                                   4673 	.area CSEG    (CODE)
                                   4674 	.area CONST   (CODE)
      0052AC                       4675 ___str_39:
      0052AC 0D                    4676 	.db 0x0d
      0052AD 0A                    4677 	.db 0x0a
      0052AE 45 6E 74 65 72 20 74  4678 	.ascii "Enter the row number(between 1 and 4):"
             68 65 20 72 6F 77 20
             6E 75 6D 62 65 72 28
             62 65 74 77 65 65 6E
             20 31 20 61 6E 64 20
             34 29 3A
      0052D4 00                    4679 	.db 0x00
                                   4680 	.area CSEG    (CODE)
                                   4681 	.area CONST   (CODE)
      0052D5                       4682 ___str_40:
      0052D5 0D                    4683 	.db 0x0d
      0052D6 0A                    4684 	.db 0x0a
      0052D7 49 6E 76 61 6C 69 64  4685 	.ascii "Invalid Input:"
             20 49 6E 70 75 74 3A
      0052E5 00                    4686 	.db 0x00
                                   4687 	.area CSEG    (CODE)
                                   4688 	.area CONST   (CODE)
      0052E6                       4689 ___str_41:
      0052E6 0D                    4690 	.db 0x0d
      0052E7 0A                    4691 	.db 0x0a
      0052E8 45 6E 74 65 72 20 74  4692 	.ascii "Enter the column number(between 1 and 16):"
             68 65 20 63 6F 6C 75
             6D 6E 20 6E 75 6D 62
             65 72 28 62 65 74 77
             65 65 6E 20 31 20 61
             6E 64 20 31 36 29 3A
      005312 00                    4693 	.db 0x00
                                   4694 	.area CSEG    (CODE)
                                   4695 	.area CONST   (CODE)
      005313                       4696 ___str_42:
      005313 0D                    4697 	.db 0x0d
      005314 0A                    4698 	.db 0x0a
      005315 45 6E 74 65 72 20 74  4699 	.ascii "Enter the char code to display (between 1 and 8):"
             68 65 20 63 68 61 72
             20 63 6F 64 65 20 74
             6F 20 64 69 73 70 6C
             61 79 20 28 62 65 74
             77 65 65 6E 20 31 20
             61 6E 64 20 38 29 3A
      005346 00                    4700 	.db 0x00
                                   4701 	.area CSEG    (CODE)
                                   4702 	.area CONST   (CODE)
      005347                       4703 ___str_43:
      005347 0D                    4704 	.db 0x0d
      005348 0A                    4705 	.db 0x0a
      005349 43 68 61 72 63 6F 64  4706 	.ascii "Charcode to display is %d:"
             65 20 74 6F 20 64 69
             73 70 6C 61 79 20 69
             73 20 25 64 3A
      005363 00                    4707 	.db 0x00
                                   4708 	.area CSEG    (CODE)
                                   4709 	.area CONST   (CODE)
      005364                       4710 ___str_44:
      005364 0D                    4711 	.db 0x0d
      005365 0A                    4712 	.db 0x0a
      005366 44 69 73 70 6C 61 79  4713 	.ascii "Display custom char:"
             20 63 75 73 74 6F 6D
             20 63 68 61 72 3A
      00537A 00                    4714 	.db 0x00
                                   4715 	.area CSEG    (CODE)
                                   4716 	.area CONST   (CODE)
      00537B                       4717 ___str_45:
      00537B 0D                    4718 	.db 0x0d
      00537C 0A                    4719 	.db 0x0a
      00537D 45 6E 74 65 72 20 74  4720 	.ascii "Enter the char code to create (between 1 and 8):"
             68 65 20 63 68 61 72
             20 63 6F 64 65 20 74
             6F 20 63 72 65 61 74
             65 20 28 62 65 74 77
             65 65 6E 20 31 20 61
             6E 64 20 38 29 3A
      0053AD 00                    4721 	.db 0x00
                                   4722 	.area CSEG    (CODE)
                                   4723 	.area CONST   (CODE)
      0053AE                       4724 ___str_46:
      0053AE 0D                    4725 	.db 0x0d
      0053AF 0A                    4726 	.db 0x0a
      0053B0 45 6E 74 65 72 20 74  4727 	.ascii "Enter the value for row %d in hex without 0x prefix:"
             68 65 20 76 61 6C 75
             65 20 66 6F 72 20 72
             6F 77 20 25 64 20 69
             6E 20 68 65 78 20 77
             69 74 68 6F 75 74 20
             30 78 20 70 72 65 66
             69 78 3A
      0053E4 00                    4728 	.db 0x00
                                   4729 	.area CSEG    (CODE)
                                   4730 	.area CONST   (CODE)
      0053E5                       4731 ___str_47:
      0053E5 0D                    4732 	.db 0x0d
      0053E6 0A                    4733 	.db 0x0a
      0053E7 52 6F 77 20 76 61 6C  4734 	.ascii "Row value out of range. Must be between 0x00 and 0x1F."
             75 65 20 6F 75 74 20
             6F 66 20 72 61 6E 67
             65 2E 20 4D 75 73 74
             20 62 65 20 62 65 74
             77 65 65 6E 20 30 78
             30 30 20 61 6E 64 20
             30 78 31 46 2E
      00541D 0D                    4735 	.db 0x0d
      00541E 0A                    4736 	.db 0x0a
      00541F 00                    4737 	.db 0x00
                                   4738 	.area CSEG    (CODE)
                                   4739 	.area XINIT   (CODE)
                                   4740 	.area CABS    (ABS,CODE)
