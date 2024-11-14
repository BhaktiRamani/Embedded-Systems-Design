                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _lcd_init
                                     13 	.globl _print_string
                                     14 	.globl _print_char
                                     15 	.globl _lcd_instruction
                                     16 	.globl _lcd_wait
                                     17 	.globl _delay_ms
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 	.area	SSEG
      000008                        236 __start__stack:
      000008                        237 	.ds	1
                                    238 
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
      000400                        260 _delay_ms_ms_65536_27:
      000400                        261 	.ds 2
      000402                        262 _lcd_wait_busy_65536_32:
      000402                        263 	.ds 1
      000403                        264 _lcd_instruction_command_65536_34:
      000403                        265 	.ds 1
      000404                        266 _print_char_c_65536_36:
      000404                        267 	.ds 1
      000405                        268 _print_string_str_65536_38:
      000405                        269 	.ds 3
                                    270 ;--------------------------------------------------------
                                    271 ; absolute external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XABS    (ABS,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; external initialized ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XISEG   (XDATA)
                                    278 	.area HOME    (CODE)
                                    279 	.area GSINIT0 (CODE)
                                    280 	.area GSINIT1 (CODE)
                                    281 	.area GSINIT2 (CODE)
                                    282 	.area GSINIT3 (CODE)
                                    283 	.area GSINIT4 (CODE)
                                    284 	.area GSINIT5 (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area CSEG    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; interrupt vector 
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
      003000                        292 __interrupt_vect:
      003000 02 30 06         [24]  293 	ljmp	__sdcc_gsinit_startup
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.globl __sdcc_gsinit_startup
                                    302 	.globl __sdcc_program_startup
                                    303 	.globl __start__stack
                                    304 	.globl __mcs51_genXINIT
                                    305 	.globl __mcs51_genXRAMCLEAR
                                    306 	.globl __mcs51_genRAMCLEAR
                                    307 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  308 	ljmp	__sdcc_program_startup
                                    309 ;--------------------------------------------------------
                                    310 ; Home
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area HOME    (CODE)
      003003                        314 __sdcc_program_startup:
      003003 02 31 69         [24]  315 	ljmp	_main
                                    316 ;	return from main will return to caller
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'delay_ms'
                                    323 ;------------------------------------------------------------
                                    324 ;ms                        Allocated with name '_delay_ms_ms_65536_27'
                                    325 ;i                         Allocated with name '_delay_ms_i_65536_28'
                                    326 ;j                         Allocated with name '_delay_ms_j_65536_28'
                                    327 ;------------------------------------------------------------
                                    328 ;	lcd.c:27: void delay_ms(unsigned int ms) {
                                    329 ;	-----------------------------------------
                                    330 ;	 function delay_ms
                                    331 ;	-----------------------------------------
      003062                        332 _delay_ms:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
      003062 AF 83            [24]  341 	mov	r7,dph
      003064 E5 82            [12]  342 	mov	a,dpl
      003066 90 04 00         [24]  343 	mov	dptr,#_delay_ms_ms_65536_27
      003069 F0               [24]  344 	movx	@dptr,a
      00306A EF               [12]  345 	mov	a,r7
      00306B A3               [24]  346 	inc	dptr
      00306C F0               [24]  347 	movx	@dptr,a
                                    348 ;	lcd.c:29: for (i = 0; i < ms; i++)
      00306D 90 04 00         [24]  349 	mov	dptr,#_delay_ms_ms_65536_27
      003070 E0               [24]  350 	movx	a,@dptr
      003071 FE               [12]  351 	mov	r6,a
      003072 A3               [24]  352 	inc	dptr
      003073 E0               [24]  353 	movx	a,@dptr
      003074 FF               [12]  354 	mov	r7,a
      003075 7C 00            [12]  355 	mov	r4,#0x00
      003077 7D 00            [12]  356 	mov	r5,#0x00
      003079                        357 00107$:
      003079 C3               [12]  358 	clr	c
      00307A EC               [12]  359 	mov	a,r4
      00307B 9E               [12]  360 	subb	a,r6
      00307C ED               [12]  361 	mov	a,r5
      00307D 9F               [12]  362 	subb	a,r7
      00307E 50 14            [24]  363 	jnc	00109$
                                    364 ;	lcd.c:30: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      003080 7A 7B            [12]  365 	mov	r2,#0x7b
      003082 7B 00            [12]  366 	mov	r3,#0x00
      003084                        367 00105$:
      003084 1A               [12]  368 	dec	r2
      003085 BA FF 01         [24]  369 	cjne	r2,#0xff,00130$
      003088 1B               [12]  370 	dec	r3
      003089                        371 00130$:
      003089 EA               [12]  372 	mov	a,r2
      00308A 4B               [12]  373 	orl	a,r3
      00308B 70 F7            [24]  374 	jnz	00105$
                                    375 ;	lcd.c:29: for (i = 0; i < ms; i++)
      00308D 0C               [12]  376 	inc	r4
      00308E BC 00 E8         [24]  377 	cjne	r4,#0x00,00107$
      003091 0D               [12]  378 	inc	r5
      003092 80 E5            [24]  379 	sjmp	00107$
      003094                        380 00109$:
                                    381 ;	lcd.c:31: }
      003094 22               [24]  382 	ret
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'lcd_wait'
                                    385 ;------------------------------------------------------------
                                    386 ;busy                      Allocated with name '_lcd_wait_busy_65536_32'
                                    387 ;------------------------------------------------------------
                                    388 ;	lcd.c:45: void lcd_wait(void) {
                                    389 ;	-----------------------------------------
                                    390 ;	 function lcd_wait
                                    391 ;	-----------------------------------------
      003095                        392 _lcd_wait:
                                    393 ;	lcd.c:49: LCD_DATA = 0xFF;           // Set LCD data port as input
      003095 75 80 FF         [24]  394 	mov	_P0,#0xff
                                    395 ;	lcd.c:52: LCD_RS = 0;               // Command mode
                                    396 ;	assignBit
      003098 C2 95            [12]  397 	clr	_P1_5
                                    398 ;	lcd.c:53: LCD_RW = 1;               // Read mode
                                    399 ;	assignBit
      00309A D2 96            [12]  400 	setb	_P1_6
                                    401 ;	lcd.c:55: do {
      00309C                        402 00101$:
                                    403 ;	lcd.c:56: LCD_EN = 1;           // Enable high
                                    404 ;	assignBit
      00309C D2 97            [12]  405 	setb	_P1_7
                                    406 ;	lcd.c:57: delay_ms(1);          // Small delay
      00309E 90 00 01         [24]  407 	mov	dptr,#0x0001
      0030A1 12 30 62         [24]  408 	lcall	_delay_ms
                                    409 ;	lcd.c:58: busy = LCD_DATA;      // Read busy flag
      0030A4 90 04 02         [24]  410 	mov	dptr,#_lcd_wait_busy_65536_32
      0030A7 E5 80            [12]  411 	mov	a,_P0
      0030A9 F0               [24]  412 	movx	@dptr,a
                                    413 ;	lcd.c:59: LCD_EN = 0;           // Enable low
                                    414 ;	assignBit
      0030AA C2 97            [12]  415 	clr	_P1_7
                                    416 ;	lcd.c:60: delay_ms(1);          // Small delay
      0030AC 90 00 01         [24]  417 	mov	dptr,#0x0001
      0030AF 12 30 62         [24]  418 	lcall	_delay_ms
                                    419 ;	lcd.c:61: } while (busy & 0x80);    // Check busy flag
      0030B2 90 04 02         [24]  420 	mov	dptr,#_lcd_wait_busy_65536_32
      0030B5 E0               [24]  421 	movx	a,@dptr
      0030B6 20 E7 E3         [24]  422 	jb	acc.7,00101$
                                    423 ;	lcd.c:63: LCD_DATA = 0x00;
      0030B9 75 80 00         [24]  424 	mov	_P0,#0x00
                                    425 ;	lcd.c:64: LCD_RW = 0;               // Write mode
                                    426 ;	assignBit
      0030BC C2 96            [12]  427 	clr	_P1_6
                                    428 ;	lcd.c:65: }
      0030BE 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'lcd_instruction'
                                    432 ;------------------------------------------------------------
                                    433 ;command                   Allocated with name '_lcd_instruction_command_65536_34'
                                    434 ;------------------------------------------------------------
                                    435 ;	lcd.c:68: void lcd_instruction(unsigned char command)
                                    436 ;	-----------------------------------------
                                    437 ;	 function lcd_instruction
                                    438 ;	-----------------------------------------
      0030BF                        439 _lcd_instruction:
      0030BF E5 82            [12]  440 	mov	a,dpl
      0030C1 90 04 03         [24]  441 	mov	dptr,#_lcd_instruction_command_65536_34
      0030C4 F0               [24]  442 	movx	@dptr,a
                                    443 ;	lcd.c:71: P0 = command;       // Send command
      0030C5 E0               [24]  444 	movx	a,@dptr
      0030C6 F5 80            [12]  445 	mov	_P0,a
                                    446 ;	lcd.c:72: LCD_RS = 0;              // Select command register
                                    447 ;	assignBit
      0030C8 C2 95            [12]  448 	clr	_P1_5
                                    449 ;	lcd.c:73: LCD_RW = 0;              // Write mode
                                    450 ;	assignBit
      0030CA C2 96            [12]  451 	clr	_P1_6
                                    452 ;	lcd.c:74: LCD_EN = 1; 
                                    453 ;	assignBit
      0030CC D2 97            [12]  454 	setb	_P1_7
                                    455 ;	lcd.c:75: delay_ms(1);
      0030CE 90 00 01         [24]  456 	mov	dptr,#0x0001
      0030D1 12 30 62         [24]  457 	lcall	_delay_ms
                                    458 ;	lcd.c:76: LCD_EN = 0;              // Enable low
                                    459 ;	assignBit
      0030D4 C2 97            [12]  460 	clr	_P1_7
                                    461 ;	lcd.c:79: }
      0030D6 22               [24]  462 	ret
                                    463 ;------------------------------------------------------------
                                    464 ;Allocation info for local variables in function 'print_char'
                                    465 ;------------------------------------------------------------
                                    466 ;c                         Allocated with name '_print_char_c_65536_36'
                                    467 ;------------------------------------------------------------
                                    468 ;	lcd.c:82: void print_char(unsigned char c) {
                                    469 ;	-----------------------------------------
                                    470 ;	 function print_char
                                    471 ;	-----------------------------------------
      0030D7                        472 _print_char:
      0030D7 E5 82            [12]  473 	mov	a,dpl
      0030D9 90 04 04         [24]  474 	mov	dptr,#_print_char_c_65536_36
      0030DC F0               [24]  475 	movx	@dptr,a
                                    476 ;	lcd.c:84: P0 =  c;            // Send character
      0030DD E0               [24]  477 	movx	a,@dptr
      0030DE F5 80            [12]  478 	mov	_P0,a
                                    479 ;	lcd.c:85: LCD_RS = 1;              // Select data register
                                    480 ;	assignBit
      0030E0 D2 95            [12]  481 	setb	_P1_5
                                    482 ;	lcd.c:86: LCD_RW = 0;              // Write mode
                                    483 ;	assignBit
      0030E2 C2 96            [12]  484 	clr	_P1_6
                                    485 ;	lcd.c:90: LCD_EN = 1;              // Enable high
                                    486 ;	assignBit
      0030E4 D2 97            [12]  487 	setb	_P1_7
                                    488 ;	lcd.c:91: delay_ms(1);             // Small delay
      0030E6 90 00 01         [24]  489 	mov	dptr,#0x0001
      0030E9 12 30 62         [24]  490 	lcall	_delay_ms
                                    491 ;	lcd.c:92: LCD_EN = 0;              // Enable low
                                    492 ;	assignBit
      0030EC C2 97            [12]  493 	clr	_P1_7
                                    494 ;	lcd.c:94: }
      0030EE 22               [24]  495 	ret
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'print_string'
                                    498 ;------------------------------------------------------------
                                    499 ;str                       Allocated with name '_print_string_str_65536_38'
                                    500 ;------------------------------------------------------------
                                    501 ;	lcd.c:97: void print_string(char *str)
                                    502 ;	-----------------------------------------
                                    503 ;	 function print_string
                                    504 ;	-----------------------------------------
      0030EF                        505 _print_string:
      0030EF AF F0            [24]  506 	mov	r7,b
      0030F1 AE 83            [24]  507 	mov	r6,dph
      0030F3 E5 82            [12]  508 	mov	a,dpl
      0030F5 90 04 05         [24]  509 	mov	dptr,#_print_string_str_65536_38
      0030F8 F0               [24]  510 	movx	@dptr,a
      0030F9 EE               [12]  511 	mov	a,r6
      0030FA A3               [24]  512 	inc	dptr
      0030FB F0               [24]  513 	movx	@dptr,a
      0030FC EF               [12]  514 	mov	a,r7
      0030FD A3               [24]  515 	inc	dptr
      0030FE F0               [24]  516 	movx	@dptr,a
                                    517 ;	lcd.c:99: while (*str) print_char(*str++);
      0030FF 90 04 05         [24]  518 	mov	dptr,#_print_string_str_65536_38
      003102 E0               [24]  519 	movx	a,@dptr
      003103 FD               [12]  520 	mov	r5,a
      003104 A3               [24]  521 	inc	dptr
      003105 E0               [24]  522 	movx	a,@dptr
      003106 FE               [12]  523 	mov	r6,a
      003107 A3               [24]  524 	inc	dptr
      003108 E0               [24]  525 	movx	a,@dptr
      003109 FF               [12]  526 	mov	r7,a
      00310A                        527 00101$:
      00310A 8D 82            [24]  528 	mov	dpl,r5
      00310C 8E 83            [24]  529 	mov	dph,r6
      00310E 8F F0            [24]  530 	mov	b,r7
      003110 12 31 7A         [24]  531 	lcall	__gptrget
      003113 FC               [12]  532 	mov	r4,a
      003114 60 23            [24]  533 	jz	00108$
      003116 0D               [12]  534 	inc	r5
      003117 BD 00 01         [24]  535 	cjne	r5,#0x00,00116$
      00311A 0E               [12]  536 	inc	r6
      00311B                        537 00116$:
      00311B 90 04 05         [24]  538 	mov	dptr,#_print_string_str_65536_38
      00311E ED               [12]  539 	mov	a,r5
      00311F F0               [24]  540 	movx	@dptr,a
      003120 EE               [12]  541 	mov	a,r6
      003121 A3               [24]  542 	inc	dptr
      003122 F0               [24]  543 	movx	@dptr,a
      003123 EF               [12]  544 	mov	a,r7
      003124 A3               [24]  545 	inc	dptr
      003125 F0               [24]  546 	movx	@dptr,a
      003126 8C 82            [24]  547 	mov	dpl,r4
      003128 C0 07            [24]  548 	push	ar7
      00312A C0 06            [24]  549 	push	ar6
      00312C C0 05            [24]  550 	push	ar5
      00312E 12 30 D7         [24]  551 	lcall	_print_char
      003131 D0 05            [24]  552 	pop	ar5
      003133 D0 06            [24]  553 	pop	ar6
      003135 D0 07            [24]  554 	pop	ar7
      003137 80 D1            [24]  555 	sjmp	00101$
      003139                        556 00108$:
      003139 90 04 05         [24]  557 	mov	dptr,#_print_string_str_65536_38
      00313C ED               [12]  558 	mov	a,r5
      00313D F0               [24]  559 	movx	@dptr,a
      00313E EE               [12]  560 	mov	a,r6
      00313F A3               [24]  561 	inc	dptr
      003140 F0               [24]  562 	movx	@dptr,a
      003141 EF               [12]  563 	mov	a,r7
      003142 A3               [24]  564 	inc	dptr
      003143 F0               [24]  565 	movx	@dptr,a
                                    566 ;	lcd.c:100: }
      003144 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'lcd_init'
                                    570 ;------------------------------------------------------------
                                    571 ;	lcd.c:103: void lcd_init(void) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function lcd_init
                                    574 ;	-----------------------------------------
      003145                        575 _lcd_init:
                                    576 ;	lcd.c:104: delay_ms(20);            // Power-on delay
      003145 90 00 14         [24]  577 	mov	dptr,#0x0014
      003148 12 30 62         [24]  578 	lcall	_delay_ms
                                    579 ;	lcd.c:107: lcd_instruction(LCD_FUNCTION_SET);    // 8-bit mode, 2 lines, 5x7 dots
      00314B 75 82 38         [24]  580 	mov	dpl,#0x38
      00314E 12 30 BF         [24]  581 	lcall	_lcd_instruction
                                    582 ;	lcd.c:113: lcd_instruction(LCD_DISPLAY_ON);      // Display ON, cursor ON, blink ON
      003151 75 82 0F         [24]  583 	mov	dpl,#0x0f
      003154 12 30 BF         [24]  584 	lcall	_lcd_instruction
                                    585 ;	lcd.c:114: lcd_instruction(LCD_ENTRY_MODE);      // Entry mode set
      003157 75 82 06         [24]  586 	mov	dpl,#0x06
      00315A 12 30 BF         [24]  587 	lcall	_lcd_instruction
                                    588 ;	lcd.c:115: lcd_instruction(LCD_CLEAR);           // Clear display
      00315D 75 82 01         [24]  589 	mov	dpl,#0x01
      003160 12 30 BF         [24]  590 	lcall	_lcd_instruction
                                    591 ;	lcd.c:116: lcd_instruction(LCD_SET_CURSOR);
      003163 75 82 80         [24]  592 	mov	dpl,#0x80
                                    593 ;	lcd.c:118: }
      003166 02 30 BF         [24]  594 	ljmp	_lcd_instruction
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;	lcd.c:121: void main(void) {
                                    599 ;	-----------------------------------------
                                    600 ;	 function main
                                    601 ;	-----------------------------------------
      003169                        602 _main:
                                    603 ;	lcd.c:122: delay_ms(40);
      003169 90 00 28         [24]  604 	mov	dptr,#0x0028
      00316C 12 30 62         [24]  605 	lcall	_delay_ms
                                    606 ;	lcd.c:124: lcd_init();
      00316F 12 31 45         [24]  607 	lcall	_lcd_init
                                    608 ;	lcd.c:126: print_char('H');
      003172 75 82 48         [24]  609 	mov	dpl,#0x48
      003175 12 30 D7         [24]  610 	lcall	_print_char
                                    611 ;	lcd.c:131: while(1) 
      003178                        612 00102$:
                                    613 ;	lcd.c:135: }
      003178 80 FE            [24]  614 	sjmp	00102$
                                    615 	.area CSEG    (CODE)
                                    616 	.area CONST   (CODE)
                                    617 	.area XINIT   (CODE)
                                    618 	.area CABS    (ABS,CODE)
