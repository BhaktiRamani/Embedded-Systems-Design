                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module ui_user_input
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _printf
                                     14 	.globl _display_menu
                                     15 	.globl _take_data
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram 
                                     37 ;--------------------------------------------------------
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
      00040C                         59 _take_data_input_65537_19:
      00040C                         60 	.ds 4
      000410                         61 _take_data_data_65538_23:
      000410                         62 	.ds 1
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XABS    (ABS,XDATA)
                                     67 ;--------------------------------------------------------
                                     68 ; external initialized ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area XISEG   (XDATA)
                                     71 	.area HOME    (CODE)
                                     72 	.area GSINIT0 (CODE)
                                     73 	.area GSINIT1 (CODE)
                                     74 	.area GSINIT2 (CODE)
                                     75 	.area GSINIT3 (CODE)
                                     76 	.area GSINIT4 (CODE)
                                     77 	.area GSINIT5 (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area CSEG    (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; global & static initialisations
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area GSINIT  (CODE)
                                     86 	.area GSFINAL (CODE)
                                     87 	.area GSINIT  (CODE)
                                     88 ;--------------------------------------------------------
                                     89 ; Home
                                     90 ;--------------------------------------------------------
                                     91 	.area HOME    (CODE)
                                     92 	.area HOME    (CODE)
                                     93 ;--------------------------------------------------------
                                     94 ; code
                                     95 ;--------------------------------------------------------
                                     96 	.area CSEG    (CODE)
                                     97 ;------------------------------------------------------------
                                     98 ;Allocation info for local variables in function 'display_menu'
                                     99 ;------------------------------------------------------------
                                    100 ;	src/ui_user_input.c:4: void display_menu(void) {
                                    101 ;	-----------------------------------------
                                    102 ;	 function display_menu
                                    103 ;	-----------------------------------------
      002295                        104 _display_menu:
                           000007   105 	ar7 = 0x07
                           000006   106 	ar6 = 0x06
                           000005   107 	ar5 = 0x05
                           000004   108 	ar4 = 0x04
                           000003   109 	ar3 = 0x03
                           000002   110 	ar2 = 0x02
                           000001   111 	ar1 = 0x01
                           000000   112 	ar0 = 0x00
                                    113 ;	src/ui_user_input.c:5: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      002295 74 67            [12]  114 	mov	a,#___str_0
      002297 C0 E0            [24]  115 	push	acc
      002299 74 30            [12]  116 	mov	a,#(___str_0 >> 8)
      00229B C0 E0            [24]  117 	push	acc
      00229D 74 80            [12]  118 	mov	a,#0x80
      00229F C0 E0            [24]  119 	push	acc
      0022A1 12 25 B2         [24]  120 	lcall	_printf
      0022A4 15 81            [12]  121 	dec	sp
      0022A6 15 81            [12]  122 	dec	sp
      0022A8 15 81            [12]  123 	dec	sp
                                    124 ;	src/ui_user_input.c:6: printf("│                        SPI PROGRAM                           │\n\r");
      0022AA 74 2C            [12]  125 	mov	a,#___str_1
      0022AC C0 E0            [24]  126 	push	acc
      0022AE 74 31            [12]  127 	mov	a,#(___str_1 >> 8)
      0022B0 C0 E0            [24]  128 	push	acc
      0022B2 74 80            [12]  129 	mov	a,#0x80
      0022B4 C0 E0            [24]  130 	push	acc
      0022B6 12 25 B2         [24]  131 	lcall	_printf
      0022B9 15 81            [12]  132 	dec	sp
      0022BB 15 81            [12]  133 	dec	sp
      0022BD 15 81            [12]  134 	dec	sp
                                    135 ;	src/ui_user_input.c:7: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0022BF 74 73            [12]  136 	mov	a,#___str_2
      0022C1 C0 E0            [24]  137 	push	acc
      0022C3 74 31            [12]  138 	mov	a,#(___str_2 >> 8)
      0022C5 C0 E0            [24]  139 	push	acc
      0022C7 74 80            [12]  140 	mov	a,#0x80
      0022C9 C0 E0            [24]  141 	push	acc
      0022CB 12 25 B2         [24]  142 	lcall	_printf
      0022CE 15 81            [12]  143 	dec	sp
      0022D0 15 81            [12]  144 	dec	sp
      0022D2 15 81            [12]  145 	dec	sp
                                    146 ;	src/ui_user_input.c:8: printf("│  Command   │               Description                       │\n\r");
      0022D4 74 36            [12]  147 	mov	a,#___str_3
      0022D6 C0 E0            [24]  148 	push	acc
      0022D8 74 32            [12]  149 	mov	a,#(___str_3 >> 8)
      0022DA C0 E0            [24]  150 	push	acc
      0022DC 74 80            [12]  151 	mov	a,#0x80
      0022DE C0 E0            [24]  152 	push	acc
      0022E0 12 25 B2         [24]  153 	lcall	_printf
      0022E3 15 81            [12]  154 	dec	sp
      0022E5 15 81            [12]  155 	dec	sp
      0022E7 15 81            [12]  156 	dec	sp
                                    157 ;	src/ui_user_input.c:9: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      0022E9 74 7F            [12]  158 	mov	a,#___str_4
      0022EB C0 E0            [24]  159 	push	acc
      0022ED 74 32            [12]  160 	mov	a,#(___str_4 >> 8)
      0022EF C0 E0            [24]  161 	push	acc
      0022F1 74 80            [12]  162 	mov	a,#0x80
      0022F3 C0 E0            [24]  163 	push	acc
      0022F5 12 25 B2         [24]  164 	lcall	_printf
      0022F8 15 81            [12]  165 	dec	sp
      0022FA 15 81            [12]  166 	dec	sp
      0022FC 15 81            [12]  167 	dec	sp
                                    168 ;	src/ui_user_input.c:10: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      0022FE 74 39            [12]  169 	mov	a,#___str_5
      002300 C0 E0            [24]  170 	push	acc
      002302 74 33            [12]  171 	mov	a,#(___str_5 >> 8)
      002304 C0 E0            [24]  172 	push	acc
      002306 74 80            [12]  173 	mov	a,#0x80
      002308 C0 E0            [24]  174 	push	acc
      00230A 12 25 B2         [24]  175 	lcall	_printf
      00230D 15 81            [12]  176 	dec	sp
      00230F 15 81            [12]  177 	dec	sp
      002311 15 81            [12]  178 	dec	sp
                                    179 ;	src/ui_user_input.c:11: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002313 74 80            [12]  180 	mov	a,#___str_6
      002315 C0 E0            [24]  181 	push	acc
      002317 74 33            [12]  182 	mov	a,#(___str_6 >> 8)
      002319 C0 E0            [24]  183 	push	acc
      00231B 74 80            [12]  184 	mov	a,#0x80
      00231D C0 E0            [24]  185 	push	acc
      00231F 12 25 B2         [24]  186 	lcall	_printf
      002322 15 81            [12]  187 	dec	sp
      002324 15 81            [12]  188 	dec	sp
      002326 15 81            [12]  189 	dec	sp
                                    190 ;	src/ui_user_input.c:12: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002328 74 C6            [12]  191 	mov	a,#___str_7
      00232A C0 E0            [24]  192 	push	acc
      00232C 74 33            [12]  193 	mov	a,#(___str_7 >> 8)
      00232E C0 E0            [24]  194 	push	acc
      002330 74 80            [12]  195 	mov	a,#0x80
      002332 C0 E0            [24]  196 	push	acc
      002334 12 25 B2         [24]  197 	lcall	_printf
      002337 15 81            [12]  198 	dec	sp
      002339 15 81            [12]  199 	dec	sp
      00233B 15 81            [12]  200 	dec	sp
                                    201 ;	src/ui_user_input.c:13: printf("│    Q      │ Generate Square Wave                          │\n\r");
      00233D 74 0C            [12]  202 	mov	a,#___str_8
      00233F C0 E0            [24]  203 	push	acc
      002341 74 34            [12]  204 	mov	a,#(___str_8 >> 8)
      002343 C0 E0            [24]  205 	push	acc
      002345 74 80            [12]  206 	mov	a,#0x80
      002347 C0 E0            [24]  207 	push	acc
      002349 12 25 B2         [24]  208 	lcall	_printf
      00234C 15 81            [12]  209 	dec	sp
      00234E 15 81            [12]  210 	dec	sp
      002350 15 81            [12]  211 	dec	sp
                                    212 ;	src/ui_user_input.c:14: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      002352 74 52            [12]  213 	mov	a,#___str_9
      002354 C0 E0            [24]  214 	push	acc
      002356 74 34            [12]  215 	mov	a,#(___str_9 >> 8)
      002358 C0 E0            [24]  216 	push	acc
      00235A 74 80            [12]  217 	mov	a,#0x80
      00235C C0 E0            [24]  218 	push	acc
      00235E 12 25 B2         [24]  219 	lcall	_printf
      002361 15 81            [12]  220 	dec	sp
      002363 15 81            [12]  221 	dec	sp
      002365 15 81            [12]  222 	dec	sp
                                    223 ;	src/ui_user_input.c:15: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      002367 74 98            [12]  224 	mov	a,#___str_10
      002369 C0 E0            [24]  225 	push	acc
      00236B 74 34            [12]  226 	mov	a,#(___str_10 >> 8)
      00236D C0 E0            [24]  227 	push	acc
      00236F 74 80            [12]  228 	mov	a,#0x80
      002371 C0 E0            [24]  229 	push	acc
      002373 12 25 B2         [24]  230 	lcall	_printf
      002376 15 81            [12]  231 	dec	sp
      002378 15 81            [12]  232 	dec	sp
      00237A 15 81            [12]  233 	dec	sp
                                    234 ;	src/ui_user_input.c:16: printf("│    C      │ Configure SPI Parameters                      │\n\r");
      00237C 74 DE            [12]  235 	mov	a,#___str_11
      00237E C0 E0            [24]  236 	push	acc
      002380 74 34            [12]  237 	mov	a,#(___str_11 >> 8)
      002382 C0 E0            [24]  238 	push	acc
      002384 74 80            [12]  239 	mov	a,#0x80
      002386 C0 E0            [24]  240 	push	acc
      002388 12 25 B2         [24]  241 	lcall	_printf
      00238B 15 81            [12]  242 	dec	sp
      00238D 15 81            [12]  243 	dec	sp
      00238F 15 81            [12]  244 	dec	sp
                                    245 ;	src/ui_user_input.c:17: printf("│    R      │ Read SPI Data                                 │\n\r");
      002391 74 24            [12]  246 	mov	a,#___str_12
      002393 C0 E0            [24]  247 	push	acc
      002395 74 35            [12]  248 	mov	a,#(___str_12 >> 8)
      002397 C0 E0            [24]  249 	push	acc
      002399 74 80            [12]  250 	mov	a,#0x80
      00239B C0 E0            [24]  251 	push	acc
      00239D 12 25 B2         [24]  252 	lcall	_printf
      0023A0 15 81            [12]  253 	dec	sp
      0023A2 15 81            [12]  254 	dec	sp
      0023A4 15 81            [12]  255 	dec	sp
                                    256 ;	src/ui_user_input.c:18: printf("│    W      │ Write SPI Data                                │\n\r");
      0023A6 74 6A            [12]  257 	mov	a,#___str_13
      0023A8 C0 E0            [24]  258 	push	acc
      0023AA 74 35            [12]  259 	mov	a,#(___str_13 >> 8)
      0023AC C0 E0            [24]  260 	push	acc
      0023AE 74 80            [12]  261 	mov	a,#0x80
      0023B0 C0 E0            [24]  262 	push	acc
      0023B2 12 25 B2         [24]  263 	lcall	_printf
      0023B5 15 81            [12]  264 	dec	sp
      0023B7 15 81            [12]  265 	dec	sp
      0023B9 15 81            [12]  266 	dec	sp
                                    267 ;	src/ui_user_input.c:19: printf("│    ?      │ Display this help menu                        │\n\r");
      0023BB 74 B0            [12]  268 	mov	a,#___str_14
      0023BD C0 E0            [24]  269 	push	acc
      0023BF 74 35            [12]  270 	mov	a,#(___str_14 >> 8)
      0023C1 C0 E0            [24]  271 	push	acc
      0023C3 74 80            [12]  272 	mov	a,#0x80
      0023C5 C0 E0            [24]  273 	push	acc
      0023C7 12 25 B2         [24]  274 	lcall	_printf
      0023CA 15 81            [12]  275 	dec	sp
      0023CC 15 81            [12]  276 	dec	sp
      0023CE 15 81            [12]  277 	dec	sp
                                    278 ;	src/ui_user_input.c:20: printf("│    X      │ Exit Program                                  │\n\r");
      0023D0 74 F6            [12]  279 	mov	a,#___str_15
      0023D2 C0 E0            [24]  280 	push	acc
      0023D4 74 35            [12]  281 	mov	a,#(___str_15 >> 8)
      0023D6 C0 E0            [24]  282 	push	acc
      0023D8 74 80            [12]  283 	mov	a,#0x80
      0023DA C0 E0            [24]  284 	push	acc
      0023DC 12 25 B2         [24]  285 	lcall	_printf
      0023DF 15 81            [12]  286 	dec	sp
      0023E1 15 81            [12]  287 	dec	sp
      0023E3 15 81            [12]  288 	dec	sp
                                    289 ;	src/ui_user_input.c:21: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0023E5 74 3C            [12]  290 	mov	a,#___str_16
      0023E7 C0 E0            [24]  291 	push	acc
      0023E9 74 36            [12]  292 	mov	a,#(___str_16 >> 8)
      0023EB C0 E0            [24]  293 	push	acc
      0023ED 74 80            [12]  294 	mov	a,#0x80
      0023EF C0 E0            [24]  295 	push	acc
      0023F1 12 25 B2         [24]  296 	lcall	_printf
      0023F4 15 81            [12]  297 	dec	sp
      0023F6 15 81            [12]  298 	dec	sp
      0023F8 15 81            [12]  299 	dec	sp
                                    300 ;	src/ui_user_input.c:22: printf("\n\rEnter command: ");
      0023FA 74 F6            [12]  301 	mov	a,#___str_17
      0023FC C0 E0            [24]  302 	push	acc
      0023FE 74 36            [12]  303 	mov	a,#(___str_17 >> 8)
      002400 C0 E0            [24]  304 	push	acc
      002402 74 80            [12]  305 	mov	a,#0x80
      002404 C0 E0            [24]  306 	push	acc
      002406 12 25 B2         [24]  307 	lcall	_printf
      002409 15 81            [12]  308 	dec	sp
      00240B 15 81            [12]  309 	dec	sp
      00240D 15 81            [12]  310 	dec	sp
                                    311 ;	src/ui_user_input.c:23: }
      00240F 22               [24]  312 	ret
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'take_data'
                                    315 ;------------------------------------------------------------
                                    316 ;input                     Allocated with name '_take_data_input_65537_19'
                                    317 ;i                         Allocated with name '_take_data_i_65537_19'
                                    318 ;c                         Allocated with name '_take_data_c_65537_19'
                                    319 ;data                      Allocated with name '_take_data_data_65538_23'
                                    320 ;------------------------------------------------------------
                                    321 ;	src/ui_user_input.c:25: unsigned char take_data()
                                    322 ;	-----------------------------------------
                                    323 ;	 function take_data
                                    324 ;	-----------------------------------------
      002410                        325 _take_data:
                                    326 ;	src/ui_user_input.c:27: printf("│ Enter number (hex, up to 2 characters): \n\r|");
      002410 74 08            [12]  327 	mov	a,#___str_18
      002412 C0 E0            [24]  328 	push	acc
      002414 74 37            [12]  329 	mov	a,#(___str_18 >> 8)
      002416 C0 E0            [24]  330 	push	acc
      002418 74 80            [12]  331 	mov	a,#0x80
      00241A C0 E0            [24]  332 	push	acc
      00241C 12 25 B2         [24]  333 	lcall	_printf
      00241F 15 81            [12]  334 	dec	sp
      002421 15 81            [12]  335 	dec	sp
      002423 15 81            [12]  336 	dec	sp
                                    337 ;	src/ui_user_input.c:28: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002425 90 04 0C         [24]  338 	mov	dptr,#_take_data_input_65537_19
      002428 E4               [12]  339 	clr	a
      002429 F0               [24]  340 	movx	@dptr,a
      00242A 90 04 0D         [24]  341 	mov	dptr,#(_take_data_input_65537_19 + 0x0001)
      00242D F0               [24]  342 	movx	@dptr,a
      00242E 90 04 0E         [24]  343 	mov	dptr,#(_take_data_input_65537_19 + 0x0002)
      002431 F0               [24]  344 	movx	@dptr,a
      002432 90 04 0F         [24]  345 	mov	dptr,#(_take_data_input_65537_19 + 0x0003)
      002435 F0               [24]  346 	movx	@dptr,a
                                    347 ;	src/ui_user_input.c:32: printf("$ ");
      002436 74 38            [12]  348 	mov	a,#___str_19
      002438 C0 E0            [24]  349 	push	acc
      00243A 74 37            [12]  350 	mov	a,#(___str_19 >> 8)
      00243C C0 E0            [24]  351 	push	acc
      00243E 74 80            [12]  352 	mov	a,#0x80
      002440 C0 E0            [24]  353 	push	acc
      002442 12 25 B2         [24]  354 	lcall	_printf
      002445 15 81            [12]  355 	dec	sp
      002447 15 81            [12]  356 	dec	sp
      002449 15 81            [12]  357 	dec	sp
                                    358 ;	src/ui_user_input.c:34: while (i < 3) {
      00244B 7E 00            [12]  359 	mov	r6,#0x00
      00244D 7F 00            [12]  360 	mov	r7,#0x00
      00244F                        361 00111$:
      00244F C3               [12]  362 	clr	c
      002450 EE               [12]  363 	mov	a,r6
      002451 94 03            [12]  364 	subb	a,#0x03
      002453 EF               [12]  365 	mov	a,r7
      002454 64 80            [12]  366 	xrl	a,#0x80
      002456 94 80            [12]  367 	subb	a,#0x80
      002458 50 5B            [24]  368 	jnc	00113$
                                    369 ;	src/ui_user_input.c:36: c = getchar();
      00245A C0 07            [24]  370 	push	ar7
      00245C C0 06            [24]  371 	push	ar6
      00245E 12 21 3B         [24]  372 	lcall	_getchar
      002461 AC 82            [24]  373 	mov	r4,dpl
      002463 AD 83            [24]  374 	mov	r5,dph
      002465 D0 06            [24]  375 	pop	ar6
      002467 D0 07            [24]  376 	pop	ar7
                                    377 ;	src/ui_user_input.c:39: if (c == '\r' || c == '\n') {
      002469 BC 0D 02         [24]  378 	cjne	r4,#0x0d,00194$
      00246C 80 47            [24]  379 	sjmp	00113$
      00246E                        380 00194$:
      00246E BC 0A 02         [24]  381 	cjne	r4,#0x0a,00195$
      002471 80 42            [24]  382 	sjmp	00113$
      002473                        383 00195$:
                                    384 ;	src/ui_user_input.c:44: if ((c >= '0' && c <= '9') ||
      002473 BC 30 00         [24]  385 	cjne	r4,#0x30,00196$
      002476                        386 00196$:
      002476 40 05            [24]  387 	jc	00108$
      002478 EC               [12]  388 	mov	a,r4
      002479 24 C6            [12]  389 	add	a,#0xff - 0x39
      00247B 50 14            [24]  390 	jnc	00104$
      00247D                        391 00108$:
                                    392 ;	src/ui_user_input.c:45: (c >= 'a' && c <= 'f') ||
      00247D BC 61 00         [24]  393 	cjne	r4,#0x61,00199$
      002480                        394 00199$:
      002480 40 05            [24]  395 	jc	00110$
      002482 EC               [12]  396 	mov	a,r4
      002483 24 99            [12]  397 	add	a,#0xff - 0x66
      002485 50 0A            [24]  398 	jnc	00104$
      002487                        399 00110$:
                                    400 ;	src/ui_user_input.c:46: (c >= 'A' && c <= 'F')) {
      002487 BC 41 00         [24]  401 	cjne	r4,#0x41,00202$
      00248A                        402 00202$:
      00248A 40 C3            [24]  403 	jc	00111$
      00248C EC               [12]  404 	mov	a,r4
      00248D 24 B9            [12]  405 	add	a,#0xff - 0x46
      00248F 40 BE            [24]  406 	jc	00111$
      002491                        407 00104$:
                                    408 ;	src/ui_user_input.c:48: input[i] = c;
      002491 EE               [12]  409 	mov	a,r6
      002492 24 0C            [12]  410 	add	a,#_take_data_input_65537_19
      002494 F5 82            [12]  411 	mov	dpl,a
      002496 EF               [12]  412 	mov	a,r7
      002497 34 04            [12]  413 	addc	a,#(_take_data_input_65537_19 >> 8)
      002499 F5 83            [12]  414 	mov	dph,a
      00249B EC               [12]  415 	mov	a,r4
      00249C F0               [24]  416 	movx	@dptr,a
                                    417 ;	src/ui_user_input.c:49: putchar(c);  // Echo character back
      00249D 7D 00            [12]  418 	mov	r5,#0x00
      00249F 8C 82            [24]  419 	mov	dpl,r4
      0024A1 8D 83            [24]  420 	mov	dph,r5
      0024A3 C0 07            [24]  421 	push	ar7
      0024A5 C0 06            [24]  422 	push	ar6
      0024A7 12 21 1C         [24]  423 	lcall	_putchar
      0024AA D0 06            [24]  424 	pop	ar6
      0024AC D0 07            [24]  425 	pop	ar7
                                    426 ;	src/ui_user_input.c:50: i++;
      0024AE 0E               [12]  427 	inc	r6
      0024AF BE 00 9D         [24]  428 	cjne	r6,#0x00,00111$
      0024B2 0F               [12]  429 	inc	r7
      0024B3 80 9A            [24]  430 	sjmp	00111$
      0024B5                        431 00113$:
                                    432 ;	src/ui_user_input.c:54: input[i] = '\0';  // Null-terminate the string
      0024B5 EE               [12]  433 	mov	a,r6
      0024B6 24 0C            [12]  434 	add	a,#_take_data_input_65537_19
      0024B8 F5 82            [12]  435 	mov	dpl,a
      0024BA EF               [12]  436 	mov	a,r7
      0024BB 34 04            [12]  437 	addc	a,#(_take_data_input_65537_19 >> 8)
      0024BD F5 83            [12]  438 	mov	dph,a
      0024BF E4               [12]  439 	clr	a
      0024C0 F0               [24]  440 	movx	@dptr,a
                                    441 ;	src/ui_user_input.c:57: unsigned char data = 0;
      0024C1 90 04 10         [24]  442 	mov	dptr,#_take_data_data_65538_23
      0024C4 F0               [24]  443 	movx	@dptr,a
                                    444 ;	src/ui_user_input.c:58: for (i = 0; input[i] != '\0'; i++) {
      0024C5 7E 00            [12]  445 	mov	r6,#0x00
      0024C7 7F 00            [12]  446 	mov	r7,#0x00
      0024C9                        447 00127$:
      0024C9 EE               [12]  448 	mov	a,r6
      0024CA 24 0C            [12]  449 	add	a,#_take_data_input_65537_19
      0024CC F5 82            [12]  450 	mov	dpl,a
      0024CE EF               [12]  451 	mov	a,r7
      0024CF 34 04            [12]  452 	addc	a,#(_take_data_input_65537_19 >> 8)
      0024D1 F5 83            [12]  453 	mov	dph,a
      0024D3 E0               [24]  454 	movx	a,@dptr
      0024D4 FD               [12]  455 	mov	r5,a
      0024D5 70 03            [24]  456 	jnz	00206$
      0024D7 02 25 3C         [24]  457 	ljmp	00125$
      0024DA                        458 00206$:
                                    459 ;	src/ui_user_input.c:59: data = data * 16;
      0024DA 90 04 10         [24]  460 	mov	dptr,#_take_data_data_65538_23
      0024DD E0               [24]  461 	movx	a,@dptr
      0024DE C4               [12]  462 	swap	a
      0024DF 54 F0            [12]  463 	anl	a,#0xf0
      0024E1 FC               [12]  464 	mov	r4,a
      0024E2 F0               [24]  465 	movx	@dptr,a
                                    466 ;	src/ui_user_input.c:60: if (input[i] >= '0' && input[i] <= '9')
      0024E3 BD 30 00         [24]  467 	cjne	r5,#0x30,00207$
      0024E6                        468 00207$:
      0024E6 40 12            [24]  469 	jc	00122$
      0024E8 ED               [12]  470 	mov	a,r5
      0024E9 24 C6            [12]  471 	add	a,#0xff - 0x39
      0024EB 40 0D            [24]  472 	jc	00122$
                                    473 ;	src/ui_user_input.c:61: data += input[i] - '0';
      0024ED ED               [12]  474 	mov	a,r5
      0024EE 24 D0            [12]  475 	add	a,#0xd0
      0024F0 FD               [12]  476 	mov	r5,a
      0024F1 90 04 10         [24]  477 	mov	dptr,#_take_data_data_65538_23
      0024F4 E0               [24]  478 	movx	a,@dptr
      0024F5 FC               [12]  479 	mov	r4,a
      0024F6 2D               [12]  480 	add	a,r5
      0024F7 F0               [24]  481 	movx	@dptr,a
      0024F8 80 3A            [24]  482 	sjmp	00128$
      0024FA                        483 00122$:
                                    484 ;	src/ui_user_input.c:62: else if (input[i] >= 'A' && input[i] <= 'F')
      0024FA EE               [12]  485 	mov	a,r6
      0024FB 24 0C            [12]  486 	add	a,#_take_data_input_65537_19
      0024FD F5 82            [12]  487 	mov	dpl,a
      0024FF EF               [12]  488 	mov	a,r7
      002500 34 04            [12]  489 	addc	a,#(_take_data_input_65537_19 >> 8)
      002502 F5 83            [12]  490 	mov	dph,a
      002504 E0               [24]  491 	movx	a,@dptr
      002505 FD               [12]  492 	mov	r5,a
      002506 BD 41 00         [24]  493 	cjne	r5,#0x41,00210$
      002509                        494 00210$:
      002509 40 14            [24]  495 	jc	00118$
      00250B ED               [12]  496 	mov	a,r5
      00250C 24 B9            [12]  497 	add	a,#0xff - 0x46
      00250E 40 0F            [24]  498 	jc	00118$
                                    499 ;	src/ui_user_input.c:63: data += input[i] - 'A' + 10;
      002510 8D 04            [24]  500 	mov	ar4,r5
      002512 74 C9            [12]  501 	mov	a,#0xc9
      002514 2C               [12]  502 	add	a,r4
      002515 FC               [12]  503 	mov	r4,a
      002516 90 04 10         [24]  504 	mov	dptr,#_take_data_data_65538_23
      002519 E0               [24]  505 	movx	a,@dptr
      00251A FB               [12]  506 	mov	r3,a
      00251B 2C               [12]  507 	add	a,r4
      00251C F0               [24]  508 	movx	@dptr,a
      00251D 80 15            [24]  509 	sjmp	00128$
      00251F                        510 00118$:
                                    511 ;	src/ui_user_input.c:64: else if (input[i] >= 'a' && input[i] <= 'f')
      00251F BD 61 00         [24]  512 	cjne	r5,#0x61,00213$
      002522                        513 00213$:
      002522 40 10            [24]  514 	jc	00128$
      002524 ED               [12]  515 	mov	a,r5
      002525 24 99            [12]  516 	add	a,#0xff - 0x66
      002527 40 0B            [24]  517 	jc	00128$
                                    518 ;	src/ui_user_input.c:65: data += input[i] - 'a' + 10;
      002529 74 A9            [12]  519 	mov	a,#0xa9
      00252B 2D               [12]  520 	add	a,r5
      00252C FD               [12]  521 	mov	r5,a
      00252D 90 04 10         [24]  522 	mov	dptr,#_take_data_data_65538_23
      002530 E0               [24]  523 	movx	a,@dptr
      002531 FC               [12]  524 	mov	r4,a
      002532 2D               [12]  525 	add	a,r5
      002533 F0               [24]  526 	movx	@dptr,a
      002534                        527 00128$:
                                    528 ;	src/ui_user_input.c:58: for (i = 0; input[i] != '\0'; i++) {
      002534 0E               [12]  529 	inc	r6
      002535 BE 00 01         [24]  530 	cjne	r6,#0x00,00216$
      002538 0F               [12]  531 	inc	r7
      002539                        532 00216$:
      002539 02 24 C9         [24]  533 	ljmp	00127$
      00253C                        534 00125$:
                                    535 ;	src/ui_user_input.c:68: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00253C 90 04 10         [24]  536 	mov	dptr,#_take_data_data_65538_23
      00253F E0               [24]  537 	movx	a,@dptr
      002540 FF               [12]  538 	mov	r7,a
      002541 FD               [12]  539 	mov	r5,a
      002542 7E 00            [12]  540 	mov	r6,#0x00
      002544 C0 07            [24]  541 	push	ar7
      002546 C0 05            [24]  542 	push	ar5
      002548 C0 06            [24]  543 	push	ar6
      00254A 74 3B            [12]  544 	mov	a,#___str_20
      00254C C0 E0            [24]  545 	push	acc
      00254E 74 37            [12]  546 	mov	a,#(___str_20 >> 8)
      002550 C0 E0            [24]  547 	push	acc
      002552 74 80            [12]  548 	mov	a,#0x80
      002554 C0 E0            [24]  549 	push	acc
      002556 12 25 B2         [24]  550 	lcall	_printf
      002559 E5 81            [12]  551 	mov	a,sp
      00255B 24 FB            [12]  552 	add	a,#0xfb
      00255D F5 81            [12]  553 	mov	sp,a
      00255F D0 07            [24]  554 	pop	ar7
                                    555 ;	src/ui_user_input.c:75: return data;
      002561 8F 82            [24]  556 	mov	dpl,r7
                                    557 ;	src/ui_user_input.c:77: }
      002563 22               [24]  558 	ret
                                    559 	.area CSEG    (CODE)
                                    560 	.area CONST   (CODE)
                                    561 	.area CONST   (CODE)
      003067                        562 ___str_0:
      003067 0A                     563 	.db 0x0a
      003068 0D                     564 	.db 0x0d
      003069 E2                     565 	.db 0xe2
      00306A 94                     566 	.db 0x94
      00306B 8C                     567 	.db 0x8c
      00306C E2                     568 	.db 0xe2
      00306D 94                     569 	.db 0x94
      00306E 80                     570 	.db 0x80
      00306F E2                     571 	.db 0xe2
      003070 94                     572 	.db 0x94
      003071 80                     573 	.db 0x80
      003072 E2                     574 	.db 0xe2
      003073 94                     575 	.db 0x94
      003074 80                     576 	.db 0x80
      003075 E2                     577 	.db 0xe2
      003076 94                     578 	.db 0x94
      003077 80                     579 	.db 0x80
      003078 E2                     580 	.db 0xe2
      003079 94                     581 	.db 0x94
      00307A 80                     582 	.db 0x80
      00307B E2                     583 	.db 0xe2
      00307C 94                     584 	.db 0x94
      00307D 80                     585 	.db 0x80
      00307E E2                     586 	.db 0xe2
      00307F 94                     587 	.db 0x94
      003080 80                     588 	.db 0x80
      003081 E2                     589 	.db 0xe2
      003082 94                     590 	.db 0x94
      003083 80                     591 	.db 0x80
      003084 E2                     592 	.db 0xe2
      003085 94                     593 	.db 0x94
      003086 80                     594 	.db 0x80
      003087 E2                     595 	.db 0xe2
      003088 94                     596 	.db 0x94
      003089 80                     597 	.db 0x80
      00308A E2                     598 	.db 0xe2
      00308B 94                     599 	.db 0x94
      00308C 80                     600 	.db 0x80
      00308D E2                     601 	.db 0xe2
      00308E 94                     602 	.db 0x94
      00308F 80                     603 	.db 0x80
      003090 E2                     604 	.db 0xe2
      003091 94                     605 	.db 0x94
      003092 80                     606 	.db 0x80
      003093 E2                     607 	.db 0xe2
      003094 94                     608 	.db 0x94
      003095 80                     609 	.db 0x80
      003096 E2                     610 	.db 0xe2
      003097 94                     611 	.db 0x94
      003098 80                     612 	.db 0x80
      003099 E2                     613 	.db 0xe2
      00309A 94                     614 	.db 0x94
      00309B 80                     615 	.db 0x80
      00309C E2                     616 	.db 0xe2
      00309D 94                     617 	.db 0x94
      00309E 80                     618 	.db 0x80
      00309F E2                     619 	.db 0xe2
      0030A0 94                     620 	.db 0x94
      0030A1 80                     621 	.db 0x80
      0030A2 E2                     622 	.db 0xe2
      0030A3 94                     623 	.db 0x94
      0030A4 80                     624 	.db 0x80
      0030A5 E2                     625 	.db 0xe2
      0030A6 94                     626 	.db 0x94
      0030A7 80                     627 	.db 0x80
      0030A8 E2                     628 	.db 0xe2
      0030A9 94                     629 	.db 0x94
      0030AA 80                     630 	.db 0x80
      0030AB E2                     631 	.db 0xe2
      0030AC 94                     632 	.db 0x94
      0030AD 80                     633 	.db 0x80
      0030AE E2                     634 	.db 0xe2
      0030AF 94                     635 	.db 0x94
      0030B0 80                     636 	.db 0x80
      0030B1 E2                     637 	.db 0xe2
      0030B2 94                     638 	.db 0x94
      0030B3 80                     639 	.db 0x80
      0030B4 E2                     640 	.db 0xe2
      0030B5 94                     641 	.db 0x94
      0030B6 80                     642 	.db 0x80
      0030B7 E2                     643 	.db 0xe2
      0030B8 94                     644 	.db 0x94
      0030B9 80                     645 	.db 0x80
      0030BA E2                     646 	.db 0xe2
      0030BB 94                     647 	.db 0x94
      0030BC 80                     648 	.db 0x80
      0030BD E2                     649 	.db 0xe2
      0030BE 94                     650 	.db 0x94
      0030BF 80                     651 	.db 0x80
      0030C0 E2                     652 	.db 0xe2
      0030C1 94                     653 	.db 0x94
      0030C2 80                     654 	.db 0x80
      0030C3 E2                     655 	.db 0xe2
      0030C4 94                     656 	.db 0x94
      0030C5 80                     657 	.db 0x80
      0030C6 E2                     658 	.db 0xe2
      0030C7 94                     659 	.db 0x94
      0030C8 80                     660 	.db 0x80
      0030C9 E2                     661 	.db 0xe2
      0030CA 94                     662 	.db 0x94
      0030CB 80                     663 	.db 0x80
      0030CC E2                     664 	.db 0xe2
      0030CD 94                     665 	.db 0x94
      0030CE 80                     666 	.db 0x80
      0030CF E2                     667 	.db 0xe2
      0030D0 94                     668 	.db 0x94
      0030D1 80                     669 	.db 0x80
      0030D2 E2                     670 	.db 0xe2
      0030D3 94                     671 	.db 0x94
      0030D4 80                     672 	.db 0x80
      0030D5 E2                     673 	.db 0xe2
      0030D6 94                     674 	.db 0x94
      0030D7 80                     675 	.db 0x80
      0030D8 E2                     676 	.db 0xe2
      0030D9 94                     677 	.db 0x94
      0030DA 80                     678 	.db 0x80
      0030DB E2                     679 	.db 0xe2
      0030DC 94                     680 	.db 0x94
      0030DD 80                     681 	.db 0x80
      0030DE E2                     682 	.db 0xe2
      0030DF 94                     683 	.db 0x94
      0030E0 80                     684 	.db 0x80
      0030E1 E2                     685 	.db 0xe2
      0030E2 94                     686 	.db 0x94
      0030E3 80                     687 	.db 0x80
      0030E4 E2                     688 	.db 0xe2
      0030E5 94                     689 	.db 0x94
      0030E6 80                     690 	.db 0x80
      0030E7 E2                     691 	.db 0xe2
      0030E8 94                     692 	.db 0x94
      0030E9 80                     693 	.db 0x80
      0030EA E2                     694 	.db 0xe2
      0030EB 94                     695 	.db 0x94
      0030EC 80                     696 	.db 0x80
      0030ED E2                     697 	.db 0xe2
      0030EE 94                     698 	.db 0x94
      0030EF 80                     699 	.db 0x80
      0030F0 E2                     700 	.db 0xe2
      0030F1 94                     701 	.db 0x94
      0030F2 80                     702 	.db 0x80
      0030F3 E2                     703 	.db 0xe2
      0030F4 94                     704 	.db 0x94
      0030F5 80                     705 	.db 0x80
      0030F6 E2                     706 	.db 0xe2
      0030F7 94                     707 	.db 0x94
      0030F8 80                     708 	.db 0x80
      0030F9 E2                     709 	.db 0xe2
      0030FA 94                     710 	.db 0x94
      0030FB 80                     711 	.db 0x80
      0030FC E2                     712 	.db 0xe2
      0030FD 94                     713 	.db 0x94
      0030FE 80                     714 	.db 0x80
      0030FF E2                     715 	.db 0xe2
      003100 94                     716 	.db 0x94
      003101 80                     717 	.db 0x80
      003102 E2                     718 	.db 0xe2
      003103 94                     719 	.db 0x94
      003104 80                     720 	.db 0x80
      003105 E2                     721 	.db 0xe2
      003106 94                     722 	.db 0x94
      003107 80                     723 	.db 0x80
      003108 E2                     724 	.db 0xe2
      003109 94                     725 	.db 0x94
      00310A 80                     726 	.db 0x80
      00310B E2                     727 	.db 0xe2
      00310C 94                     728 	.db 0x94
      00310D 80                     729 	.db 0x80
      00310E E2                     730 	.db 0xe2
      00310F 94                     731 	.db 0x94
      003110 80                     732 	.db 0x80
      003111 E2                     733 	.db 0xe2
      003112 94                     734 	.db 0x94
      003113 80                     735 	.db 0x80
      003114 E2                     736 	.db 0xe2
      003115 94                     737 	.db 0x94
      003116 80                     738 	.db 0x80
      003117 E2                     739 	.db 0xe2
      003118 94                     740 	.db 0x94
      003119 80                     741 	.db 0x80
      00311A E2                     742 	.db 0xe2
      00311B 94                     743 	.db 0x94
      00311C 80                     744 	.db 0x80
      00311D E2                     745 	.db 0xe2
      00311E 94                     746 	.db 0x94
      00311F 80                     747 	.db 0x80
      003120 E2                     748 	.db 0xe2
      003121 94                     749 	.db 0x94
      003122 80                     750 	.db 0x80
      003123 E2                     751 	.db 0xe2
      003124 94                     752 	.db 0x94
      003125 80                     753 	.db 0x80
      003126 E2                     754 	.db 0xe2
      003127 94                     755 	.db 0x94
      003128 90                     756 	.db 0x90
      003129 0A                     757 	.db 0x0a
      00312A 0D                     758 	.db 0x0d
      00312B 00                     759 	.db 0x00
                                    760 	.area CSEG    (CODE)
                                    761 	.area CONST   (CODE)
      00312C                        762 ___str_1:
      00312C E2                     763 	.db 0xe2
      00312D 94                     764 	.db 0x94
      00312E 82                     765 	.db 0x82
      00312F 20 20 20 20 20 20 20   766 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00316B 20 20                  767 	.ascii "  "
      00316D E2                     768 	.db 0xe2
      00316E 94                     769 	.db 0x94
      00316F 82                     770 	.db 0x82
      003170 0A                     771 	.db 0x0a
      003171 0D                     772 	.db 0x0d
      003172 00                     773 	.db 0x00
                                    774 	.area CSEG    (CODE)
                                    775 	.area CONST   (CODE)
      003173                        776 ___str_2:
      003173 E2                     777 	.db 0xe2
      003174 94                     778 	.db 0x94
      003175 9C                     779 	.db 0x9c
      003176 E2                     780 	.db 0xe2
      003177 94                     781 	.db 0x94
      003178 80                     782 	.db 0x80
      003179 E2                     783 	.db 0xe2
      00317A 94                     784 	.db 0x94
      00317B 80                     785 	.db 0x80
      00317C E2                     786 	.db 0xe2
      00317D 94                     787 	.db 0x94
      00317E 80                     788 	.db 0x80
      00317F E2                     789 	.db 0xe2
      003180 94                     790 	.db 0x94
      003181 80                     791 	.db 0x80
      003182 E2                     792 	.db 0xe2
      003183 94                     793 	.db 0x94
      003184 80                     794 	.db 0x80
      003185 E2                     795 	.db 0xe2
      003186 94                     796 	.db 0x94
      003187 80                     797 	.db 0x80
      003188 E2                     798 	.db 0xe2
      003189 94                     799 	.db 0x94
      00318A 80                     800 	.db 0x80
      00318B E2                     801 	.db 0xe2
      00318C 94                     802 	.db 0x94
      00318D 80                     803 	.db 0x80
      00318E E2                     804 	.db 0xe2
      00318F 94                     805 	.db 0x94
      003190 80                     806 	.db 0x80
      003191 E2                     807 	.db 0xe2
      003192 94                     808 	.db 0x94
      003193 80                     809 	.db 0x80
      003194 E2                     810 	.db 0xe2
      003195 94                     811 	.db 0x94
      003196 80                     812 	.db 0x80
      003197 E2                     813 	.db 0xe2
      003198 94                     814 	.db 0x94
      003199 80                     815 	.db 0x80
      00319A E2                     816 	.db 0xe2
      00319B 94                     817 	.db 0x94
      00319C 80                     818 	.db 0x80
      00319D E2                     819 	.db 0xe2
      00319E 94                     820 	.db 0x94
      00319F 80                     821 	.db 0x80
      0031A0 E2                     822 	.db 0xe2
      0031A1 94                     823 	.db 0x94
      0031A2 80                     824 	.db 0x80
      0031A3 E2                     825 	.db 0xe2
      0031A4 94                     826 	.db 0x94
      0031A5 80                     827 	.db 0x80
      0031A6 E2                     828 	.db 0xe2
      0031A7 94                     829 	.db 0x94
      0031A8 80                     830 	.db 0x80
      0031A9 E2                     831 	.db 0xe2
      0031AA 94                     832 	.db 0x94
      0031AB 80                     833 	.db 0x80
      0031AC E2                     834 	.db 0xe2
      0031AD 94                     835 	.db 0x94
      0031AE 80                     836 	.db 0x80
      0031AF E2                     837 	.db 0xe2
      0031B0 94                     838 	.db 0x94
      0031B1 80                     839 	.db 0x80
      0031B2 E2                     840 	.db 0xe2
      0031B3 94                     841 	.db 0x94
      0031B4 80                     842 	.db 0x80
      0031B5 E2                     843 	.db 0xe2
      0031B6 94                     844 	.db 0x94
      0031B7 80                     845 	.db 0x80
      0031B8 E2                     846 	.db 0xe2
      0031B9 94                     847 	.db 0x94
      0031BA 80                     848 	.db 0x80
      0031BB E2                     849 	.db 0xe2
      0031BC 94                     850 	.db 0x94
      0031BD 80                     851 	.db 0x80
      0031BE E2                     852 	.db 0xe2
      0031BF 94                     853 	.db 0x94
      0031C0 80                     854 	.db 0x80
      0031C1 E2                     855 	.db 0xe2
      0031C2 94                     856 	.db 0x94
      0031C3 80                     857 	.db 0x80
      0031C4 E2                     858 	.db 0xe2
      0031C5 94                     859 	.db 0x94
      0031C6 80                     860 	.db 0x80
      0031C7 E2                     861 	.db 0xe2
      0031C8 94                     862 	.db 0x94
      0031C9 80                     863 	.db 0x80
      0031CA E2                     864 	.db 0xe2
      0031CB 94                     865 	.db 0x94
      0031CC 80                     866 	.db 0x80
      0031CD E2                     867 	.db 0xe2
      0031CE 94                     868 	.db 0x94
      0031CF 80                     869 	.db 0x80
      0031D0 E2                     870 	.db 0xe2
      0031D1 94                     871 	.db 0x94
      0031D2 80                     872 	.db 0x80
      0031D3 E2                     873 	.db 0xe2
      0031D4 94                     874 	.db 0x94
      0031D5 80                     875 	.db 0x80
      0031D6 E2                     876 	.db 0xe2
      0031D7 94                     877 	.db 0x94
      0031D8 80                     878 	.db 0x80
      0031D9 E2                     879 	.db 0xe2
      0031DA 94                     880 	.db 0x94
      0031DB 80                     881 	.db 0x80
      0031DC E2                     882 	.db 0xe2
      0031DD 94                     883 	.db 0x94
      0031DE 80                     884 	.db 0x80
      0031DF E2                     885 	.db 0xe2
      0031E0 94                     886 	.db 0x94
      0031E1 80                     887 	.db 0x80
      0031E2 E2                     888 	.db 0xe2
      0031E3 94                     889 	.db 0x94
      0031E4 80                     890 	.db 0x80
      0031E5 E2                     891 	.db 0xe2
      0031E6 94                     892 	.db 0x94
      0031E7 80                     893 	.db 0x80
      0031E8 E2                     894 	.db 0xe2
      0031E9 94                     895 	.db 0x94
      0031EA 80                     896 	.db 0x80
      0031EB E2                     897 	.db 0xe2
      0031EC 94                     898 	.db 0x94
      0031ED 80                     899 	.db 0x80
      0031EE E2                     900 	.db 0xe2
      0031EF 94                     901 	.db 0x94
      0031F0 80                     902 	.db 0x80
      0031F1 E2                     903 	.db 0xe2
      0031F2 94                     904 	.db 0x94
      0031F3 80                     905 	.db 0x80
      0031F4 E2                     906 	.db 0xe2
      0031F5 94                     907 	.db 0x94
      0031F6 80                     908 	.db 0x80
      0031F7 E2                     909 	.db 0xe2
      0031F8 94                     910 	.db 0x94
      0031F9 80                     911 	.db 0x80
      0031FA E2                     912 	.db 0xe2
      0031FB 94                     913 	.db 0x94
      0031FC 80                     914 	.db 0x80
      0031FD E2                     915 	.db 0xe2
      0031FE 94                     916 	.db 0x94
      0031FF 80                     917 	.db 0x80
      003200 E2                     918 	.db 0xe2
      003201 94                     919 	.db 0x94
      003202 80                     920 	.db 0x80
      003203 E2                     921 	.db 0xe2
      003204 94                     922 	.db 0x94
      003205 80                     923 	.db 0x80
      003206 E2                     924 	.db 0xe2
      003207 94                     925 	.db 0x94
      003208 80                     926 	.db 0x80
      003209 E2                     927 	.db 0xe2
      00320A 94                     928 	.db 0x94
      00320B 80                     929 	.db 0x80
      00320C E2                     930 	.db 0xe2
      00320D 94                     931 	.db 0x94
      00320E 80                     932 	.db 0x80
      00320F E2                     933 	.db 0xe2
      003210 94                     934 	.db 0x94
      003211 80                     935 	.db 0x80
      003212 E2                     936 	.db 0xe2
      003213 94                     937 	.db 0x94
      003214 80                     938 	.db 0x80
      003215 E2                     939 	.db 0xe2
      003216 94                     940 	.db 0x94
      003217 80                     941 	.db 0x80
      003218 E2                     942 	.db 0xe2
      003219 94                     943 	.db 0x94
      00321A 80                     944 	.db 0x80
      00321B E2                     945 	.db 0xe2
      00321C 94                     946 	.db 0x94
      00321D 80                     947 	.db 0x80
      00321E E2                     948 	.db 0xe2
      00321F 94                     949 	.db 0x94
      003220 80                     950 	.db 0x80
      003221 E2                     951 	.db 0xe2
      003222 94                     952 	.db 0x94
      003223 80                     953 	.db 0x80
      003224 E2                     954 	.db 0xe2
      003225 94                     955 	.db 0x94
      003226 80                     956 	.db 0x80
      003227 E2                     957 	.db 0xe2
      003228 94                     958 	.db 0x94
      003229 80                     959 	.db 0x80
      00322A E2                     960 	.db 0xe2
      00322B 94                     961 	.db 0x94
      00322C 80                     962 	.db 0x80
      00322D E2                     963 	.db 0xe2
      00322E 94                     964 	.db 0x94
      00322F 80                     965 	.db 0x80
      003230 E2                     966 	.db 0xe2
      003231 94                     967 	.db 0x94
      003232 A4                     968 	.db 0xa4
      003233 0A                     969 	.db 0x0a
      003234 0D                     970 	.db 0x0d
      003235 00                     971 	.db 0x00
                                    972 	.area CSEG    (CODE)
                                    973 	.area CONST   (CODE)
      003236                        974 ___str_3:
      003236 E2                     975 	.db 0xe2
      003237 94                     976 	.db 0x94
      003238 82                     977 	.db 0x82
      003239 20 20 43 6F 6D 6D 61   978 	.ascii "  Command   "
             6E 64 20 20 20
      003245 E2                     979 	.db 0xe2
      003246 94                     980 	.db 0x94
      003247 82                     981 	.db 0x82
      003248 20 20 20 20 20 20 20   982 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003279 E2                     983 	.db 0xe2
      00327A 94                     984 	.db 0x94
      00327B 82                     985 	.db 0x82
      00327C 0A                     986 	.db 0x0a
      00327D 0D                     987 	.db 0x0d
      00327E 00                     988 	.db 0x00
                                    989 	.area CSEG    (CODE)
                                    990 	.area CONST   (CODE)
      00327F                        991 ___str_4:
      00327F E2                     992 	.db 0xe2
      003280 94                     993 	.db 0x94
      003281 9C                     994 	.db 0x9c
      003282 E2                     995 	.db 0xe2
      003283 94                     996 	.db 0x94
      003284 80                     997 	.db 0x80
      003285 E2                     998 	.db 0xe2
      003286 94                     999 	.db 0x94
      003287 80                    1000 	.db 0x80
      003288 E2                    1001 	.db 0xe2
      003289 94                    1002 	.db 0x94
      00328A 80                    1003 	.db 0x80
      00328B E2                    1004 	.db 0xe2
      00328C 94                    1005 	.db 0x94
      00328D 80                    1006 	.db 0x80
      00328E E2                    1007 	.db 0xe2
      00328F 94                    1008 	.db 0x94
      003290 80                    1009 	.db 0x80
      003291 E2                    1010 	.db 0xe2
      003292 94                    1011 	.db 0x94
      003293 80                    1012 	.db 0x80
      003294 E2                    1013 	.db 0xe2
      003295 94                    1014 	.db 0x94
      003296 80                    1015 	.db 0x80
      003297 E2                    1016 	.db 0xe2
      003298 94                    1017 	.db 0x94
      003299 80                    1018 	.db 0x80
      00329A E2                    1019 	.db 0xe2
      00329B 94                    1020 	.db 0x94
      00329C 80                    1021 	.db 0x80
      00329D E2                    1022 	.db 0xe2
      00329E 94                    1023 	.db 0x94
      00329F 80                    1024 	.db 0x80
      0032A0 E2                    1025 	.db 0xe2
      0032A1 94                    1026 	.db 0x94
      0032A2 80                    1027 	.db 0x80
      0032A3 E2                    1028 	.db 0xe2
      0032A4 94                    1029 	.db 0x94
      0032A5 BC                    1030 	.db 0xbc
      0032A6 E2                    1031 	.db 0xe2
      0032A7 94                    1032 	.db 0x94
      0032A8 80                    1033 	.db 0x80
      0032A9 E2                    1034 	.db 0xe2
      0032AA 94                    1035 	.db 0x94
      0032AB 80                    1036 	.db 0x80
      0032AC E2                    1037 	.db 0xe2
      0032AD 94                    1038 	.db 0x94
      0032AE 80                    1039 	.db 0x80
      0032AF E2                    1040 	.db 0xe2
      0032B0 94                    1041 	.db 0x94
      0032B1 80                    1042 	.db 0x80
      0032B2 E2                    1043 	.db 0xe2
      0032B3 94                    1044 	.db 0x94
      0032B4 80                    1045 	.db 0x80
      0032B5 E2                    1046 	.db 0xe2
      0032B6 94                    1047 	.db 0x94
      0032B7 80                    1048 	.db 0x80
      0032B8 E2                    1049 	.db 0xe2
      0032B9 94                    1050 	.db 0x94
      0032BA 80                    1051 	.db 0x80
      0032BB E2                    1052 	.db 0xe2
      0032BC 94                    1053 	.db 0x94
      0032BD 80                    1054 	.db 0x80
      0032BE E2                    1055 	.db 0xe2
      0032BF 94                    1056 	.db 0x94
      0032C0 80                    1057 	.db 0x80
      0032C1 E2                    1058 	.db 0xe2
      0032C2 94                    1059 	.db 0x94
      0032C3 80                    1060 	.db 0x80
      0032C4 E2                    1061 	.db 0xe2
      0032C5 94                    1062 	.db 0x94
      0032C6 80                    1063 	.db 0x80
      0032C7 E2                    1064 	.db 0xe2
      0032C8 94                    1065 	.db 0x94
      0032C9 80                    1066 	.db 0x80
      0032CA E2                    1067 	.db 0xe2
      0032CB 94                    1068 	.db 0x94
      0032CC 80                    1069 	.db 0x80
      0032CD E2                    1070 	.db 0xe2
      0032CE 94                    1071 	.db 0x94
      0032CF 80                    1072 	.db 0x80
      0032D0 E2                    1073 	.db 0xe2
      0032D1 94                    1074 	.db 0x94
      0032D2 80                    1075 	.db 0x80
      0032D3 E2                    1076 	.db 0xe2
      0032D4 94                    1077 	.db 0x94
      0032D5 80                    1078 	.db 0x80
      0032D6 E2                    1079 	.db 0xe2
      0032D7 94                    1080 	.db 0x94
      0032D8 80                    1081 	.db 0x80
      0032D9 E2                    1082 	.db 0xe2
      0032DA 94                    1083 	.db 0x94
      0032DB 80                    1084 	.db 0x80
      0032DC E2                    1085 	.db 0xe2
      0032DD 94                    1086 	.db 0x94
      0032DE 80                    1087 	.db 0x80
      0032DF E2                    1088 	.db 0xe2
      0032E0 94                    1089 	.db 0x94
      0032E1 80                    1090 	.db 0x80
      0032E2 E2                    1091 	.db 0xe2
      0032E3 94                    1092 	.db 0x94
      0032E4 80                    1093 	.db 0x80
      0032E5 E2                    1094 	.db 0xe2
      0032E6 94                    1095 	.db 0x94
      0032E7 80                    1096 	.db 0x80
      0032E8 E2                    1097 	.db 0xe2
      0032E9 94                    1098 	.db 0x94
      0032EA 80                    1099 	.db 0x80
      0032EB E2                    1100 	.db 0xe2
      0032EC 94                    1101 	.db 0x94
      0032ED 80                    1102 	.db 0x80
      0032EE E2                    1103 	.db 0xe2
      0032EF 94                    1104 	.db 0x94
      0032F0 80                    1105 	.db 0x80
      0032F1 E2                    1106 	.db 0xe2
      0032F2 94                    1107 	.db 0x94
      0032F3 80                    1108 	.db 0x80
      0032F4 E2                    1109 	.db 0xe2
      0032F5 94                    1110 	.db 0x94
      0032F6 80                    1111 	.db 0x80
      0032F7 E2                    1112 	.db 0xe2
      0032F8 94                    1113 	.db 0x94
      0032F9 80                    1114 	.db 0x80
      0032FA E2                    1115 	.db 0xe2
      0032FB 94                    1116 	.db 0x94
      0032FC 80                    1117 	.db 0x80
      0032FD E2                    1118 	.db 0xe2
      0032FE 94                    1119 	.db 0x94
      0032FF 80                    1120 	.db 0x80
      003300 E2                    1121 	.db 0xe2
      003301 94                    1122 	.db 0x94
      003302 80                    1123 	.db 0x80
      003303 E2                    1124 	.db 0xe2
      003304 94                    1125 	.db 0x94
      003305 80                    1126 	.db 0x80
      003306 E2                    1127 	.db 0xe2
      003307 94                    1128 	.db 0x94
      003308 80                    1129 	.db 0x80
      003309 E2                    1130 	.db 0xe2
      00330A 94                    1131 	.db 0x94
      00330B 80                    1132 	.db 0x80
      00330C E2                    1133 	.db 0xe2
      00330D 94                    1134 	.db 0x94
      00330E 80                    1135 	.db 0x80
      00330F E2                    1136 	.db 0xe2
      003310 94                    1137 	.db 0x94
      003311 80                    1138 	.db 0x80
      003312 E2                    1139 	.db 0xe2
      003313 94                    1140 	.db 0x94
      003314 80                    1141 	.db 0x80
      003315 E2                    1142 	.db 0xe2
      003316 94                    1143 	.db 0x94
      003317 80                    1144 	.db 0x80
      003318 E2                    1145 	.db 0xe2
      003319 94                    1146 	.db 0x94
      00331A 80                    1147 	.db 0x80
      00331B E2                    1148 	.db 0xe2
      00331C 94                    1149 	.db 0x94
      00331D 80                    1150 	.db 0x80
      00331E E2                    1151 	.db 0xe2
      00331F 94                    1152 	.db 0x94
      003320 80                    1153 	.db 0x80
      003321 E2                    1154 	.db 0xe2
      003322 94                    1155 	.db 0x94
      003323 80                    1156 	.db 0x80
      003324 E2                    1157 	.db 0xe2
      003325 94                    1158 	.db 0x94
      003326 80                    1159 	.db 0x80
      003327 E2                    1160 	.db 0xe2
      003328 94                    1161 	.db 0x94
      003329 80                    1162 	.db 0x80
      00332A E2                    1163 	.db 0xe2
      00332B 94                    1164 	.db 0x94
      00332C 80                    1165 	.db 0x80
      00332D E2                    1166 	.db 0xe2
      00332E 94                    1167 	.db 0x94
      00332F 80                    1168 	.db 0x80
      003330 E2                    1169 	.db 0xe2
      003331 94                    1170 	.db 0x94
      003332 80                    1171 	.db 0x80
      003333 E2                    1172 	.db 0xe2
      003334 94                    1173 	.db 0x94
      003335 A4                    1174 	.db 0xa4
      003336 0A                    1175 	.db 0x0a
      003337 0D                    1176 	.db 0x0d
      003338 00                    1177 	.db 0x00
                                   1178 	.area CSEG    (CODE)
                                   1179 	.area CONST   (CODE)
      003339                       1180 ___str_5:
      003339 E2                    1181 	.db 0xe2
      00333A 94                    1182 	.db 0x94
      00333B 82                    1183 	.db 0x82
      00333C 20 20 20 20 4D 20 20  1184 	.ascii "    M      "
             20 20 20 20
      003347 E2                    1185 	.db 0xe2
      003348 94                    1186 	.db 0x94
      003349 82                    1187 	.db 0x82
      00334A 20 4D 61 6E 75 61 6C  1188 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      00337A E2                    1189 	.db 0xe2
      00337B 94                    1190 	.db 0x94
      00337C 82                    1191 	.db 0x82
      00337D 0A                    1192 	.db 0x0a
      00337E 0D                    1193 	.db 0x0d
      00337F 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area CONST   (CODE)
      003380                       1197 ___str_6:
      003380 E2                    1198 	.db 0xe2
      003381 94                    1199 	.db 0x94
      003382 82                    1200 	.db 0x82
      003383 20 20 20 20 42 20 20  1201 	.ascii "    B      "
             20 20 20 20
      00338E E2                    1202 	.db 0xe2
      00338F 94                    1203 	.db 0x94
      003390 82                    1204 	.db 0x82
      003391 20 42 69 74 20 42 61  1205 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0033C0 E2                    1206 	.db 0xe2
      0033C1 94                    1207 	.db 0x94
      0033C2 82                    1208 	.db 0x82
      0033C3 0A                    1209 	.db 0x0a
      0033C4 0D                    1210 	.db 0x0d
      0033C5 00                    1211 	.db 0x00
                                   1212 	.area CSEG    (CODE)
                                   1213 	.area CONST   (CODE)
      0033C6                       1214 ___str_7:
      0033C6 E2                    1215 	.db 0xe2
      0033C7 94                    1216 	.db 0x94
      0033C8 82                    1217 	.db 0x82
      0033C9 20 20 20 20 53 20 20  1218 	.ascii "    S      "
             20 20 20 20
      0033D4 E2                    1219 	.db 0xe2
      0033D5 94                    1220 	.db 0x94
      0033D6 82                    1221 	.db 0x82
      0033D7 20 47 65 6E 65 72 61  1222 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003406 E2                    1223 	.db 0xe2
      003407 94                    1224 	.db 0x94
      003408 82                    1225 	.db 0x82
      003409 0A                    1226 	.db 0x0a
      00340A 0D                    1227 	.db 0x0d
      00340B 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      00340C                       1231 ___str_8:
      00340C E2                    1232 	.db 0xe2
      00340D 94                    1233 	.db 0x94
      00340E 82                    1234 	.db 0x82
      00340F 20 20 20 20 51 20 20  1235 	.ascii "    Q      "
             20 20 20 20
      00341A E2                    1236 	.db 0xe2
      00341B 94                    1237 	.db 0x94
      00341C 82                    1238 	.db 0x82
      00341D 20 47 65 6E 65 72 61  1239 	.ascii " Generate Square Wave                          "
             74 65 20 53 71 75 61
             72 65 20 57 61 76 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00344C E2                    1240 	.db 0xe2
      00344D 94                    1241 	.db 0x94
      00344E 82                    1242 	.db 0x82
      00344F 0A                    1243 	.db 0x0a
      003450 0D                    1244 	.db 0x0d
      003451 00                    1245 	.db 0x00
                                   1246 	.area CSEG    (CODE)
                                   1247 	.area CONST   (CODE)
      003452                       1248 ___str_9:
      003452 E2                    1249 	.db 0xe2
      003453 94                    1250 	.db 0x94
      003454 82                    1251 	.db 0x82
      003455 20 20 20 20 54 20 20  1252 	.ascii "    T      "
             20 20 20 20
      003460 E2                    1253 	.db 0xe2
      003461 94                    1254 	.db 0x94
      003462 82                    1255 	.db 0x82
      003463 20 47 65 6E 65 72 61  1256 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003492 E2                    1257 	.db 0xe2
      003493 94                    1258 	.db 0x94
      003494 82                    1259 	.db 0x82
      003495 0A                    1260 	.db 0x0a
      003496 0D                    1261 	.db 0x0d
      003497 00                    1262 	.db 0x00
                                   1263 	.area CSEG    (CODE)
                                   1264 	.area CONST   (CODE)
      003498                       1265 ___str_10:
      003498 E2                    1266 	.db 0xe2
      003499 94                    1267 	.db 0x94
      00349A 82                    1268 	.db 0x82
      00349B 20 20 20 20 44 20 20  1269 	.ascii "    D      "
             20 20 20 20
      0034A6 E2                    1270 	.db 0xe2
      0034A7 94                    1271 	.db 0x94
      0034A8 82                    1272 	.db 0x82
      0034A9 20 44 65 6D 6F 20 4D  1273 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      0034D8 E2                    1274 	.db 0xe2
      0034D9 94                    1275 	.db 0x94
      0034DA 82                    1276 	.db 0x82
      0034DB 0A                    1277 	.db 0x0a
      0034DC 0D                    1278 	.db 0x0d
      0034DD 00                    1279 	.db 0x00
                                   1280 	.area CSEG    (CODE)
                                   1281 	.area CONST   (CODE)
      0034DE                       1282 ___str_11:
      0034DE E2                    1283 	.db 0xe2
      0034DF 94                    1284 	.db 0x94
      0034E0 82                    1285 	.db 0x82
      0034E1 20 20 20 20 43 20 20  1286 	.ascii "    C      "
             20 20 20 20
      0034EC E2                    1287 	.db 0xe2
      0034ED 94                    1288 	.db 0x94
      0034EE 82                    1289 	.db 0x82
      0034EF 20 43 6F 6E 66 69 67  1290 	.ascii " Configure SPI Parameters                      "
             75 72 65 20 53 50 49
             20 50 61 72 61 6D 65
             74 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00351E E2                    1291 	.db 0xe2
      00351F 94                    1292 	.db 0x94
      003520 82                    1293 	.db 0x82
      003521 0A                    1294 	.db 0x0a
      003522 0D                    1295 	.db 0x0d
      003523 00                    1296 	.db 0x00
                                   1297 	.area CSEG    (CODE)
                                   1298 	.area CONST   (CODE)
      003524                       1299 ___str_12:
      003524 E2                    1300 	.db 0xe2
      003525 94                    1301 	.db 0x94
      003526 82                    1302 	.db 0x82
      003527 20 20 20 20 52 20 20  1303 	.ascii "    R      "
             20 20 20 20
      003532 E2                    1304 	.db 0xe2
      003533 94                    1305 	.db 0x94
      003534 82                    1306 	.db 0x82
      003535 20 52 65 61 64 20 53  1307 	.ascii " Read SPI Data                                 "
             50 49 20 44 61 74 61
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003564 E2                    1308 	.db 0xe2
      003565 94                    1309 	.db 0x94
      003566 82                    1310 	.db 0x82
      003567 0A                    1311 	.db 0x0a
      003568 0D                    1312 	.db 0x0d
      003569 00                    1313 	.db 0x00
                                   1314 	.area CSEG    (CODE)
                                   1315 	.area CONST   (CODE)
      00356A                       1316 ___str_13:
      00356A E2                    1317 	.db 0xe2
      00356B 94                    1318 	.db 0x94
      00356C 82                    1319 	.db 0x82
      00356D 20 20 20 20 57 20 20  1320 	.ascii "    W      "
             20 20 20 20
      003578 E2                    1321 	.db 0xe2
      003579 94                    1322 	.db 0x94
      00357A 82                    1323 	.db 0x82
      00357B 20 57 72 69 74 65 20  1324 	.ascii " Write SPI Data                                "
             53 50 49 20 44 61 74
             61 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0035AA E2                    1325 	.db 0xe2
      0035AB 94                    1326 	.db 0x94
      0035AC 82                    1327 	.db 0x82
      0035AD 0A                    1328 	.db 0x0a
      0035AE 0D                    1329 	.db 0x0d
      0035AF 00                    1330 	.db 0x00
                                   1331 	.area CSEG    (CODE)
                                   1332 	.area CONST   (CODE)
      0035B0                       1333 ___str_14:
      0035B0 E2                    1334 	.db 0xe2
      0035B1 94                    1335 	.db 0x94
      0035B2 82                    1336 	.db 0x82
      0035B3 20 20 20 20 3F 20 20  1337 	.ascii "    ?      "
             20 20 20 20
      0035BE E2                    1338 	.db 0xe2
      0035BF 94                    1339 	.db 0x94
      0035C0 82                    1340 	.db 0x82
      0035C1 20 44 69 73 70 6C 61  1341 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0035F0 E2                    1342 	.db 0xe2
      0035F1 94                    1343 	.db 0x94
      0035F2 82                    1344 	.db 0x82
      0035F3 0A                    1345 	.db 0x0a
      0035F4 0D                    1346 	.db 0x0d
      0035F5 00                    1347 	.db 0x00
                                   1348 	.area CSEG    (CODE)
                                   1349 	.area CONST   (CODE)
      0035F6                       1350 ___str_15:
      0035F6 E2                    1351 	.db 0xe2
      0035F7 94                    1352 	.db 0x94
      0035F8 82                    1353 	.db 0x82
      0035F9 20 20 20 20 58 20 20  1354 	.ascii "    X      "
             20 20 20 20
      003604 E2                    1355 	.db 0xe2
      003605 94                    1356 	.db 0x94
      003606 82                    1357 	.db 0x82
      003607 20 45 78 69 74 20 50  1358 	.ascii " Exit Program                                  "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003636 E2                    1359 	.db 0xe2
      003637 94                    1360 	.db 0x94
      003638 82                    1361 	.db 0x82
      003639 0A                    1362 	.db 0x0a
      00363A 0D                    1363 	.db 0x0d
      00363B 00                    1364 	.db 0x00
                                   1365 	.area CSEG    (CODE)
                                   1366 	.area CONST   (CODE)
      00363C                       1367 ___str_16:
      00363C E2                    1368 	.db 0xe2
      00363D 94                    1369 	.db 0x94
      00363E 94                    1370 	.db 0x94
      00363F E2                    1371 	.db 0xe2
      003640 94                    1372 	.db 0x94
      003641 80                    1373 	.db 0x80
      003642 E2                    1374 	.db 0xe2
      003643 94                    1375 	.db 0x94
      003644 80                    1376 	.db 0x80
      003645 E2                    1377 	.db 0xe2
      003646 94                    1378 	.db 0x94
      003647 80                    1379 	.db 0x80
      003648 E2                    1380 	.db 0xe2
      003649 94                    1381 	.db 0x94
      00364A 80                    1382 	.db 0x80
      00364B E2                    1383 	.db 0xe2
      00364C 94                    1384 	.db 0x94
      00364D 80                    1385 	.db 0x80
      00364E E2                    1386 	.db 0xe2
      00364F 94                    1387 	.db 0x94
      003650 80                    1388 	.db 0x80
      003651 E2                    1389 	.db 0xe2
      003652 94                    1390 	.db 0x94
      003653 80                    1391 	.db 0x80
      003654 E2                    1392 	.db 0xe2
      003655 94                    1393 	.db 0x94
      003656 80                    1394 	.db 0x80
      003657 E2                    1395 	.db 0xe2
      003658 94                    1396 	.db 0x94
      003659 80                    1397 	.db 0x80
      00365A E2                    1398 	.db 0xe2
      00365B 94                    1399 	.db 0x94
      00365C 80                    1400 	.db 0x80
      00365D E2                    1401 	.db 0xe2
      00365E 94                    1402 	.db 0x94
      00365F 80                    1403 	.db 0x80
      003660 E2                    1404 	.db 0xe2
      003661 94                    1405 	.db 0x94
      003662 B4                    1406 	.db 0xb4
      003663 E2                    1407 	.db 0xe2
      003664 94                    1408 	.db 0x94
      003665 80                    1409 	.db 0x80
      003666 E2                    1410 	.db 0xe2
      003667 94                    1411 	.db 0x94
      003668 80                    1412 	.db 0x80
      003669 E2                    1413 	.db 0xe2
      00366A 94                    1414 	.db 0x94
      00366B 80                    1415 	.db 0x80
      00366C E2                    1416 	.db 0xe2
      00366D 94                    1417 	.db 0x94
      00366E 80                    1418 	.db 0x80
      00366F E2                    1419 	.db 0xe2
      003670 94                    1420 	.db 0x94
      003671 80                    1421 	.db 0x80
      003672 E2                    1422 	.db 0xe2
      003673 94                    1423 	.db 0x94
      003674 80                    1424 	.db 0x80
      003675 E2                    1425 	.db 0xe2
      003676 94                    1426 	.db 0x94
      003677 80                    1427 	.db 0x80
      003678 E2                    1428 	.db 0xe2
      003679 94                    1429 	.db 0x94
      00367A 80                    1430 	.db 0x80
      00367B E2                    1431 	.db 0xe2
      00367C 94                    1432 	.db 0x94
      00367D 80                    1433 	.db 0x80
      00367E E2                    1434 	.db 0xe2
      00367F 94                    1435 	.db 0x94
      003680 80                    1436 	.db 0x80
      003681 E2                    1437 	.db 0xe2
      003682 94                    1438 	.db 0x94
      003683 80                    1439 	.db 0x80
      003684 E2                    1440 	.db 0xe2
      003685 94                    1441 	.db 0x94
      003686 80                    1442 	.db 0x80
      003687 E2                    1443 	.db 0xe2
      003688 94                    1444 	.db 0x94
      003689 80                    1445 	.db 0x80
      00368A E2                    1446 	.db 0xe2
      00368B 94                    1447 	.db 0x94
      00368C 80                    1448 	.db 0x80
      00368D E2                    1449 	.db 0xe2
      00368E 94                    1450 	.db 0x94
      00368F 80                    1451 	.db 0x80
      003690 E2                    1452 	.db 0xe2
      003691 94                    1453 	.db 0x94
      003692 80                    1454 	.db 0x80
      003693 E2                    1455 	.db 0xe2
      003694 94                    1456 	.db 0x94
      003695 80                    1457 	.db 0x80
      003696 E2                    1458 	.db 0xe2
      003697 94                    1459 	.db 0x94
      003698 80                    1460 	.db 0x80
      003699 E2                    1461 	.db 0xe2
      00369A 94                    1462 	.db 0x94
      00369B 80                    1463 	.db 0x80
      00369C E2                    1464 	.db 0xe2
      00369D 94                    1465 	.db 0x94
      00369E 80                    1466 	.db 0x80
      00369F E2                    1467 	.db 0xe2
      0036A0 94                    1468 	.db 0x94
      0036A1 80                    1469 	.db 0x80
      0036A2 E2                    1470 	.db 0xe2
      0036A3 94                    1471 	.db 0x94
      0036A4 80                    1472 	.db 0x80
      0036A5 E2                    1473 	.db 0xe2
      0036A6 94                    1474 	.db 0x94
      0036A7 80                    1475 	.db 0x80
      0036A8 E2                    1476 	.db 0xe2
      0036A9 94                    1477 	.db 0x94
      0036AA 80                    1478 	.db 0x80
      0036AB E2                    1479 	.db 0xe2
      0036AC 94                    1480 	.db 0x94
      0036AD 80                    1481 	.db 0x80
      0036AE E2                    1482 	.db 0xe2
      0036AF 94                    1483 	.db 0x94
      0036B0 80                    1484 	.db 0x80
      0036B1 E2                    1485 	.db 0xe2
      0036B2 94                    1486 	.db 0x94
      0036B3 80                    1487 	.db 0x80
      0036B4 E2                    1488 	.db 0xe2
      0036B5 94                    1489 	.db 0x94
      0036B6 80                    1490 	.db 0x80
      0036B7 E2                    1491 	.db 0xe2
      0036B8 94                    1492 	.db 0x94
      0036B9 80                    1493 	.db 0x80
      0036BA E2                    1494 	.db 0xe2
      0036BB 94                    1495 	.db 0x94
      0036BC 80                    1496 	.db 0x80
      0036BD E2                    1497 	.db 0xe2
      0036BE 94                    1498 	.db 0x94
      0036BF 80                    1499 	.db 0x80
      0036C0 E2                    1500 	.db 0xe2
      0036C1 94                    1501 	.db 0x94
      0036C2 80                    1502 	.db 0x80
      0036C3 E2                    1503 	.db 0xe2
      0036C4 94                    1504 	.db 0x94
      0036C5 80                    1505 	.db 0x80
      0036C6 E2                    1506 	.db 0xe2
      0036C7 94                    1507 	.db 0x94
      0036C8 80                    1508 	.db 0x80
      0036C9 E2                    1509 	.db 0xe2
      0036CA 94                    1510 	.db 0x94
      0036CB 80                    1511 	.db 0x80
      0036CC E2                    1512 	.db 0xe2
      0036CD 94                    1513 	.db 0x94
      0036CE 80                    1514 	.db 0x80
      0036CF E2                    1515 	.db 0xe2
      0036D0 94                    1516 	.db 0x94
      0036D1 80                    1517 	.db 0x80
      0036D2 E2                    1518 	.db 0xe2
      0036D3 94                    1519 	.db 0x94
      0036D4 80                    1520 	.db 0x80
      0036D5 E2                    1521 	.db 0xe2
      0036D6 94                    1522 	.db 0x94
      0036D7 80                    1523 	.db 0x80
      0036D8 E2                    1524 	.db 0xe2
      0036D9 94                    1525 	.db 0x94
      0036DA 80                    1526 	.db 0x80
      0036DB E2                    1527 	.db 0xe2
      0036DC 94                    1528 	.db 0x94
      0036DD 80                    1529 	.db 0x80
      0036DE E2                    1530 	.db 0xe2
      0036DF 94                    1531 	.db 0x94
      0036E0 80                    1532 	.db 0x80
      0036E1 E2                    1533 	.db 0xe2
      0036E2 94                    1534 	.db 0x94
      0036E3 80                    1535 	.db 0x80
      0036E4 E2                    1536 	.db 0xe2
      0036E5 94                    1537 	.db 0x94
      0036E6 80                    1538 	.db 0x80
      0036E7 E2                    1539 	.db 0xe2
      0036E8 94                    1540 	.db 0x94
      0036E9 80                    1541 	.db 0x80
      0036EA E2                    1542 	.db 0xe2
      0036EB 94                    1543 	.db 0x94
      0036EC 80                    1544 	.db 0x80
      0036ED E2                    1545 	.db 0xe2
      0036EE 94                    1546 	.db 0x94
      0036EF 80                    1547 	.db 0x80
      0036F0 E2                    1548 	.db 0xe2
      0036F1 94                    1549 	.db 0x94
      0036F2 98                    1550 	.db 0x98
      0036F3 0A                    1551 	.db 0x0a
      0036F4 0D                    1552 	.db 0x0d
      0036F5 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area CONST   (CODE)
      0036F6                       1556 ___str_17:
      0036F6 0A                    1557 	.db 0x0a
      0036F7 0D                    1558 	.db 0x0d
      0036F8 45 6E 74 65 72 20 63  1559 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003707 00                    1560 	.db 0x00
                                   1561 	.area CSEG    (CODE)
                                   1562 	.area CONST   (CODE)
      003708                       1563 ___str_18:
      003708 E2                    1564 	.db 0xe2
      003709 94                    1565 	.db 0x94
      00370A 82                    1566 	.db 0x82
      00370B 20 45 6E 74 65 72 20  1567 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      003734 0A                    1568 	.db 0x0a
      003735 0D                    1569 	.db 0x0d
      003736 7C                    1570 	.ascii "|"
      003737 00                    1571 	.db 0x00
                                   1572 	.area CSEG    (CODE)
                                   1573 	.area CONST   (CODE)
      003738                       1574 ___str_19:
      003738 24 20                 1575 	.ascii "$ "
      00373A 00                    1576 	.db 0x00
                                   1577 	.area CSEG    (CODE)
                                   1578 	.area CONST   (CODE)
      00373B                       1579 ___str_20:
      00373B 0A                    1580 	.db 0x0a
      00373C 0D                    1581 	.db 0x0d
      00373D E2                    1582 	.db 0xe2
      00373E 94                    1583 	.db 0x94
      00373F 82                    1584 	.db 0x82
      003740 20 45 6E 74 65 72 65  1585 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003755 0A                    1586 	.db 0x0a
      003756 0D                    1587 	.db 0x0d
      003757 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area XINIT   (CODE)
                                   1591 	.area CABS    (ABS,CODE)
