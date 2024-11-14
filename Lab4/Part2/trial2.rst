                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module trial2
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _delay
                                    109 	.globl _lcd_command
                                    110 	.globl _lcd_data
                                    111 	.globl _lcd_init
                                    112 	.globl _lcd_string
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram 
                                    230 ;--------------------------------------------------------
                                    231 ;--------------------------------------------------------
                                    232 ; Stack segment in internal ram 
                                    233 ;--------------------------------------------------------
                                    234 	.area	SSEG
      000008                        235 __start__stack:
      000008                        236 	.ds	1
                                    237 
                                    238 ;--------------------------------------------------------
                                    239 ; indirectly addressable internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area ISEG    (DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; absolute internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area IABS    (ABS,DATA)
                                    246 	.area IABS    (ABS,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; bit data
                                    249 ;--------------------------------------------------------
                                    250 	.area BSEG    (BIT)
                                    251 ;--------------------------------------------------------
                                    252 ; paged external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area PSEG    (PAG,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XSEG    (XDATA)
      000400                        259 _delay_count_65536_6:
      000400                        260 	.ds 2
      000402                        261 _lcd_command_command_65536_10:
      000402                        262 	.ds 1
      000403                        263 _lcd_data_dat_65536_12:
      000403                        264 	.ds 1
      000404                        265 _lcd_string_str_65536_16:
      000404                        266 	.ds 3
      000407                        267 _main_testStr_65536_20:
      000407                        268 	.ds 9
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; interrupt vector 
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
      003000                        291 __interrupt_vect:
      003000 02 30 06         [24]  292 	ljmp	__sdcc_gsinit_startup
                                    293 ;--------------------------------------------------------
                                    294 ; global & static initialisations
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.globl __sdcc_gsinit_startup
                                    301 	.globl __sdcc_program_startup
                                    302 	.globl __start__stack
                                    303 	.globl __mcs51_genXINIT
                                    304 	.globl __mcs51_genXRAMCLEAR
                                    305 	.globl __mcs51_genRAMCLEAR
                                    306 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  307 	ljmp	__sdcc_program_startup
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
      003003                        313 __sdcc_program_startup:
      003003 02 31 A1         [24]  314 	ljmp	_main
                                    315 ;	return from main will return to caller
                                    316 ;--------------------------------------------------------
                                    317 ; code
                                    318 ;--------------------------------------------------------
                                    319 	.area CSEG    (CODE)
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'delay'
                                    322 ;------------------------------------------------------------
                                    323 ;count                     Allocated with name '_delay_count_65536_6'
                                    324 ;i                         Allocated with name '_delay_i_65536_7'
                                    325 ;j                         Allocated with name '_delay_j_65536_7'
                                    326 ;------------------------------------------------------------
                                    327 ;	trial2.c:17: void delay(unsigned int count) {
                                    328 ;	-----------------------------------------
                                    329 ;	 function delay
                                    330 ;	-----------------------------------------
      003062                        331 _delay:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
      003062 AF 83            [24]  340 	mov	r7,dph
      003064 E5 82            [12]  341 	mov	a,dpl
      003066 90 04 00         [24]  342 	mov	dptr,#_delay_count_65536_6
      003069 F0               [24]  343 	movx	@dptr,a
      00306A EF               [12]  344 	mov	a,r7
      00306B A3               [24]  345 	inc	dptr
      00306C F0               [24]  346 	movx	@dptr,a
                                    347 ;	trial2.c:19: for(i = 0; i < count; i++)
      00306D 90 04 00         [24]  348 	mov	dptr,#_delay_count_65536_6
      003070 E0               [24]  349 	movx	a,@dptr
      003071 FE               [12]  350 	mov	r6,a
      003072 A3               [24]  351 	inc	dptr
      003073 E0               [24]  352 	movx	a,@dptr
      003074 FF               [12]  353 	mov	r7,a
      003075 7C 00            [12]  354 	mov	r4,#0x00
      003077 7D 00            [12]  355 	mov	r5,#0x00
      003079                        356 00107$:
      003079 C3               [12]  357 	clr	c
      00307A EC               [12]  358 	mov	a,r4
      00307B 9E               [12]  359 	subb	a,r6
      00307C ED               [12]  360 	mov	a,r5
      00307D 9F               [12]  361 	subb	a,r7
      00307E 50 14            [24]  362 	jnc	00109$
                                    363 ;	trial2.c:20: for(j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      003080 7A 7B            [12]  364 	mov	r2,#0x7b
      003082 7B 00            [12]  365 	mov	r3,#0x00
      003084                        366 00105$:
      003084 1A               [12]  367 	dec	r2
      003085 BA FF 01         [24]  368 	cjne	r2,#0xff,00130$
      003088 1B               [12]  369 	dec	r3
      003089                        370 00130$:
      003089 EA               [12]  371 	mov	a,r2
      00308A 4B               [12]  372 	orl	a,r3
      00308B 70 F7            [24]  373 	jnz	00105$
                                    374 ;	trial2.c:19: for(i = 0; i < count; i++)
      00308D 0C               [12]  375 	inc	r4
      00308E BC 00 E8         [24]  376 	cjne	r4,#0x00,00107$
      003091 0D               [12]  377 	inc	r5
      003092 80 E5            [24]  378 	sjmp	00107$
      003094                        379 00109$:
                                    380 ;	trial2.c:21: }
      003094 22               [24]  381 	ret
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'lcd_command'
                                    384 ;------------------------------------------------------------
                                    385 ;command                   Allocated with name '_lcd_command_command_65536_10'
                                    386 ;------------------------------------------------------------
                                    387 ;	trial2.c:24: void lcd_command(unsigned char command) {
                                    388 ;	-----------------------------------------
                                    389 ;	 function lcd_command
                                    390 ;	-----------------------------------------
      003095                        391 _lcd_command:
      003095 E5 82            [12]  392 	mov	a,dpl
      003097 90 04 02         [24]  393 	mov	dptr,#_lcd_command_command_65536_10
      00309A F0               [24]  394 	movx	@dptr,a
                                    395 ;	trial2.c:25: RS = 0;                // Command mode
                                    396 ;	assignBit
      00309B C2 95            [12]  397 	clr	_P1_5
                                    398 ;	trial2.c:26: RW = 0;                // Write mode
                                    399 ;	assignBit
      00309D C2 96            [12]  400 	clr	_P1_6
                                    401 ;	trial2.c:27: EN = 0;                // Enable low
                                    402 ;	assignBit
      00309F C2 97            [12]  403 	clr	_P1_7
                                    404 ;	trial2.c:29: LCD_DATA = command;    // Put command on data bus
      0030A1 90 04 02         [24]  405 	mov	dptr,#_lcd_command_command_65536_10
      0030A4 E0               [24]  406 	movx	a,@dptr
      0030A5 F5 80            [12]  407 	mov	_P0,a
                                    408 ;	trial2.c:30: delay(1);              // Wait for data to stabilize
      0030A7 90 00 01         [24]  409 	mov	dptr,#0x0001
      0030AA 12 30 62         [24]  410 	lcall	_delay
                                    411 ;	trial2.c:32: EN = 1;                // Enable pulse
                                    412 ;	assignBit
      0030AD D2 97            [12]  413 	setb	_P1_7
                                    414 ;	trial2.c:33: delay(1);              // Wait
      0030AF 90 00 01         [24]  415 	mov	dptr,#0x0001
      0030B2 12 30 62         [24]  416 	lcall	_delay
                                    417 ;	trial2.c:34: EN = 0;                // Complete Enable pulse
                                    418 ;	assignBit
      0030B5 C2 97            [12]  419 	clr	_P1_7
                                    420 ;	trial2.c:35: delay(2);              // Wait for command to complete
      0030B7 90 00 02         [24]  421 	mov	dptr,#0x0002
                                    422 ;	trial2.c:36: }
      0030BA 02 30 62         [24]  423 	ljmp	_delay
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'lcd_data'
                                    426 ;------------------------------------------------------------
                                    427 ;dat                       Allocated with name '_lcd_data_dat_65536_12'
                                    428 ;------------------------------------------------------------
                                    429 ;	trial2.c:39: void lcd_data(unsigned char dat) {
                                    430 ;	-----------------------------------------
                                    431 ;	 function lcd_data
                                    432 ;	-----------------------------------------
      0030BD                        433 _lcd_data:
      0030BD E5 82            [12]  434 	mov	a,dpl
      0030BF 90 04 03         [24]  435 	mov	dptr,#_lcd_data_dat_65536_12
      0030C2 F0               [24]  436 	movx	@dptr,a
                                    437 ;	trial2.c:40: RS = 1;                // Data mode
                                    438 ;	assignBit
      0030C3 D2 95            [12]  439 	setb	_P1_5
                                    440 ;	trial2.c:41: RW = 0;                // Write mode
                                    441 ;	assignBit
      0030C5 C2 96            [12]  442 	clr	_P1_6
                                    443 ;	trial2.c:42: EN = 0;                // Enable low
                                    444 ;	assignBit
      0030C7 C2 97            [12]  445 	clr	_P1_7
                                    446 ;	trial2.c:44: LCD_DATA = dat;        // Put data on data bus
      0030C9 90 04 03         [24]  447 	mov	dptr,#_lcd_data_dat_65536_12
      0030CC E0               [24]  448 	movx	a,@dptr
      0030CD F5 80            [12]  449 	mov	_P0,a
                                    450 ;	trial2.c:45: delay(1);              // Wait for data to stabilize
      0030CF 90 00 01         [24]  451 	mov	dptr,#0x0001
      0030D2 12 30 62         [24]  452 	lcall	_delay
                                    453 ;	trial2.c:47: EN = 1;                // Enable pulse
                                    454 ;	assignBit
      0030D5 D2 97            [12]  455 	setb	_P1_7
                                    456 ;	trial2.c:48: delay(1);              // Wait
      0030D7 90 00 01         [24]  457 	mov	dptr,#0x0001
      0030DA 12 30 62         [24]  458 	lcall	_delay
                                    459 ;	trial2.c:49: EN = 0;                // Complete Enable pulse
                                    460 ;	assignBit
      0030DD C2 97            [12]  461 	clr	_P1_7
                                    462 ;	trial2.c:50: delay(2);              // Wait for data to complete
      0030DF 90 00 02         [24]  463 	mov	dptr,#0x0002
                                    464 ;	trial2.c:51: }
      0030E2 02 30 62         [24]  465 	ljmp	_delay
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'lcd_init'
                                    468 ;------------------------------------------------------------
                                    469 ;	trial2.c:54: void lcd_init(void) {
                                    470 ;	-----------------------------------------
                                    471 ;	 function lcd_init
                                    472 ;	-----------------------------------------
      0030E5                        473 _lcd_init:
                                    474 ;	trial2.c:56: P0 = 0x00;            // Set P0 as output for data
      0030E5 75 80 00         [24]  475 	mov	_P0,#0x00
                                    476 ;	trial2.c:57: P1 = 0x00;            // Set P1 as output for control
      0030E8 75 90 00         [24]  477 	mov	_P1,#0x00
                                    478 ;	trial2.c:59: delay(20);            // Wait after power-up
      0030EB 90 00 14         [24]  479 	mov	dptr,#0x0014
      0030EE 12 30 62         [24]  480 	lcall	_delay
                                    481 ;	trial2.c:63: lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
      0030F1 75 82 38         [24]  482 	mov	dpl,#0x38
      0030F4 12 30 95         [24]  483 	lcall	_lcd_command
                                    484 ;	trial2.c:64: delay(5);
      0030F7 90 00 05         [24]  485 	mov	dptr,#0x0005
      0030FA 12 30 62         [24]  486 	lcall	_delay
                                    487 ;	trial2.c:67: lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
      0030FD 75 82 38         [24]  488 	mov	dpl,#0x38
      003100 12 30 95         [24]  489 	lcall	_lcd_command
                                    490 ;	trial2.c:68: delay(1);
      003103 90 00 01         [24]  491 	mov	dptr,#0x0001
      003106 12 30 62         [24]  492 	lcall	_delay
                                    493 ;	trial2.c:71: lcd_command(0x38);    // 8-bit mode, 2 lines, 5x7 dots
      003109 75 82 38         [24]  494 	mov	dpl,#0x38
      00310C 12 30 95         [24]  495 	lcall	_lcd_command
                                    496 ;	trial2.c:72: delay(1);
      00310F 90 00 01         [24]  497 	mov	dptr,#0x0001
      003112 12 30 62         [24]  498 	lcall	_delay
                                    499 ;	trial2.c:74: lcd_command(0x0C);    // Display ON, cursor OFF
      003115 75 82 0C         [24]  500 	mov	dpl,#0x0c
      003118 12 30 95         [24]  501 	lcall	_lcd_command
                                    502 ;	trial2.c:75: delay(1);
      00311B 90 00 01         [24]  503 	mov	dptr,#0x0001
      00311E 12 30 62         [24]  504 	lcall	_delay
                                    505 ;	trial2.c:77: lcd_command(0x01);    // Clear display
      003121 75 82 01         [24]  506 	mov	dpl,#0x01
      003124 12 30 95         [24]  507 	lcall	_lcd_command
                                    508 ;	trial2.c:78: delay(2);
      003127 90 00 02         [24]  509 	mov	dptr,#0x0002
      00312A 12 30 62         [24]  510 	lcall	_delay
                                    511 ;	trial2.c:80: lcd_command(0x06);    // Entry mode: increment cursor, no shift
      00312D 75 82 06         [24]  512 	mov	dpl,#0x06
      003130 12 30 95         [24]  513 	lcall	_lcd_command
                                    514 ;	trial2.c:81: delay(2);
      003133 90 00 02         [24]  515 	mov	dptr,#0x0002
      003136 12 30 62         [24]  516 	lcall	_delay
                                    517 ;	trial2.c:83: lcd_command(0x80);    // Set cursor to beginning of first line
      003139 75 82 80         [24]  518 	mov	dpl,#0x80
      00313C 12 30 95         [24]  519 	lcall	_lcd_command
                                    520 ;	trial2.c:84: delay(2);
      00313F 90 00 02         [24]  521 	mov	dptr,#0x0002
                                    522 ;	trial2.c:85: }
      003142 02 30 62         [24]  523 	ljmp	_delay
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'lcd_string'
                                    526 ;------------------------------------------------------------
                                    527 ;str                       Allocated with name '_lcd_string_str_65536_16'
                                    528 ;------------------------------------------------------------
                                    529 ;	trial2.c:88: void lcd_string(char *str) {
                                    530 ;	-----------------------------------------
                                    531 ;	 function lcd_string
                                    532 ;	-----------------------------------------
      003145                        533 _lcd_string:
      003145 AF F0            [24]  534 	mov	r7,b
      003147 AE 83            [24]  535 	mov	r6,dph
      003149 E5 82            [12]  536 	mov	a,dpl
      00314B 90 04 04         [24]  537 	mov	dptr,#_lcd_string_str_65536_16
      00314E F0               [24]  538 	movx	@dptr,a
      00314F EE               [12]  539 	mov	a,r6
      003150 A3               [24]  540 	inc	dptr
      003151 F0               [24]  541 	movx	@dptr,a
      003152 EF               [12]  542 	mov	a,r7
      003153 A3               [24]  543 	inc	dptr
      003154 F0               [24]  544 	movx	@dptr,a
                                    545 ;	trial2.c:89: while(*str) {
      003155 90 04 04         [24]  546 	mov	dptr,#_lcd_string_str_65536_16
      003158 E0               [24]  547 	movx	a,@dptr
      003159 FD               [12]  548 	mov	r5,a
      00315A A3               [24]  549 	inc	dptr
      00315B E0               [24]  550 	movx	a,@dptr
      00315C FE               [12]  551 	mov	r6,a
      00315D A3               [24]  552 	inc	dptr
      00315E E0               [24]  553 	movx	a,@dptr
      00315F FF               [12]  554 	mov	r7,a
      003160                        555 00101$:
      003160 8D 82            [24]  556 	mov	dpl,r5
      003162 8E 83            [24]  557 	mov	dph,r6
      003164 8F F0            [24]  558 	mov	b,r7
      003166 12 32 64         [24]  559 	lcall	__gptrget
      003169 FC               [12]  560 	mov	r4,a
      00316A 60 29            [24]  561 	jz	00108$
                                    562 ;	trial2.c:90: lcd_data(*str++);
      00316C 0D               [12]  563 	inc	r5
      00316D BD 00 01         [24]  564 	cjne	r5,#0x00,00116$
      003170 0E               [12]  565 	inc	r6
      003171                        566 00116$:
      003171 90 04 04         [24]  567 	mov	dptr,#_lcd_string_str_65536_16
      003174 ED               [12]  568 	mov	a,r5
      003175 F0               [24]  569 	movx	@dptr,a
      003176 EE               [12]  570 	mov	a,r6
      003177 A3               [24]  571 	inc	dptr
      003178 F0               [24]  572 	movx	@dptr,a
      003179 EF               [12]  573 	mov	a,r7
      00317A A3               [24]  574 	inc	dptr
      00317B F0               [24]  575 	movx	@dptr,a
      00317C 8C 82            [24]  576 	mov	dpl,r4
      00317E C0 07            [24]  577 	push	ar7
      003180 C0 06            [24]  578 	push	ar6
      003182 C0 05            [24]  579 	push	ar5
      003184 12 30 BD         [24]  580 	lcall	_lcd_data
                                    581 ;	trial2.c:91: delay(1);
      003187 90 00 01         [24]  582 	mov	dptr,#0x0001
      00318A 12 30 62         [24]  583 	lcall	_delay
      00318D D0 05            [24]  584 	pop	ar5
      00318F D0 06            [24]  585 	pop	ar6
      003191 D0 07            [24]  586 	pop	ar7
      003193 80 CB            [24]  587 	sjmp	00101$
      003195                        588 00108$:
      003195 90 04 04         [24]  589 	mov	dptr,#_lcd_string_str_65536_16
      003198 ED               [12]  590 	mov	a,r5
      003199 F0               [24]  591 	movx	@dptr,a
      00319A EE               [12]  592 	mov	a,r6
      00319B A3               [24]  593 	inc	dptr
      00319C F0               [24]  594 	movx	@dptr,a
      00319D EF               [12]  595 	mov	a,r7
      00319E A3               [24]  596 	inc	dptr
      00319F F0               [24]  597 	movx	@dptr,a
                                    598 ;	trial2.c:93: }
      0031A0 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'main'
                                    602 ;------------------------------------------------------------
                                    603 ;testStr                   Allocated with name '_main_testStr_65536_20'
                                    604 ;i                         Allocated with name '_main_i_65536_20'
                                    605 ;------------------------------------------------------------
                                    606 ;	trial2.c:96: void main(void) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function main
                                    609 ;	-----------------------------------------
      0031A1                        610 _main:
                                    611 ;	trial2.c:97: char testStr[] = "LCD Test";
      0031A1 90 04 07         [24]  612 	mov	dptr,#_main_testStr_65536_20
      0031A4 74 4C            [12]  613 	mov	a,#0x4c
      0031A6 F0               [24]  614 	movx	@dptr,a
      0031A7 90 04 08         [24]  615 	mov	dptr,#(_main_testStr_65536_20 + 0x0001)
      0031AA 74 43            [12]  616 	mov	a,#0x43
      0031AC F0               [24]  617 	movx	@dptr,a
      0031AD 90 04 09         [24]  618 	mov	dptr,#(_main_testStr_65536_20 + 0x0002)
      0031B0 04               [12]  619 	inc	a
      0031B1 F0               [24]  620 	movx	@dptr,a
      0031B2 90 04 0A         [24]  621 	mov	dptr,#(_main_testStr_65536_20 + 0x0003)
      0031B5 74 20            [12]  622 	mov	a,#0x20
      0031B7 F0               [24]  623 	movx	@dptr,a
      0031B8 90 04 0B         [24]  624 	mov	dptr,#(_main_testStr_65536_20 + 0x0004)
      0031BB 74 54            [12]  625 	mov	a,#0x54
      0031BD F0               [24]  626 	movx	@dptr,a
      0031BE 90 04 0C         [24]  627 	mov	dptr,#(_main_testStr_65536_20 + 0x0005)
      0031C1 74 65            [12]  628 	mov	a,#0x65
      0031C3 F0               [24]  629 	movx	@dptr,a
      0031C4 90 04 0D         [24]  630 	mov	dptr,#(_main_testStr_65536_20 + 0x0006)
      0031C7 74 73            [12]  631 	mov	a,#0x73
      0031C9 F0               [24]  632 	movx	@dptr,a
      0031CA 90 04 0E         [24]  633 	mov	dptr,#(_main_testStr_65536_20 + 0x0007)
      0031CD 04               [12]  634 	inc	a
      0031CE F0               [24]  635 	movx	@dptr,a
      0031CF 90 04 0F         [24]  636 	mov	dptr,#(_main_testStr_65536_20 + 0x0008)
      0031D2 E4               [12]  637 	clr	a
      0031D3 F0               [24]  638 	movx	@dptr,a
                                    639 ;	trial2.c:101: delay(100);
      0031D4 90 00 64         [24]  640 	mov	dptr,#0x0064
      0031D7 12 30 62         [24]  641 	lcall	_delay
                                    642 ;	trial2.c:104: lcd_init();
      0031DA 12 30 E5         [24]  643 	lcall	_lcd_init
                                    644 ;	trial2.c:105: delay(10);
      0031DD 90 00 0A         [24]  645 	mov	dptr,#0x000a
      0031E0 12 30 62         [24]  646 	lcall	_delay
                                    647 ;	trial2.c:108: lcd_data('A');
      0031E3 75 82 41         [24]  648 	mov	dpl,#0x41
      0031E6 12 30 BD         [24]  649 	lcall	_lcd_data
                                    650 ;	trial2.c:109: delay(200);
      0031E9 90 00 C8         [24]  651 	mov	dptr,#0x00c8
      0031EC 12 30 62         [24]  652 	lcall	_delay
                                    653 ;	trial2.c:110: lcd_data('B');
      0031EF 75 82 42         [24]  654 	mov	dpl,#0x42
      0031F2 12 30 BD         [24]  655 	lcall	_lcd_data
                                    656 ;	trial2.c:111: delay(200);
      0031F5 90 00 C8         [24]  657 	mov	dptr,#0x00c8
      0031F8 12 30 62         [24]  658 	lcall	_delay
                                    659 ;	trial2.c:112: lcd_data('C');
      0031FB 75 82 43         [24]  660 	mov	dpl,#0x43
      0031FE 12 30 BD         [24]  661 	lcall	_lcd_data
                                    662 ;	trial2.c:113: delay(1000);
      003201 90 03 E8         [24]  663 	mov	dptr,#0x03e8
      003204 12 30 62         [24]  664 	lcall	_delay
                                    665 ;	trial2.c:116: lcd_command(0x01);    // Clear display
      003207 75 82 01         [24]  666 	mov	dpl,#0x01
      00320A 12 30 95         [24]  667 	lcall	_lcd_command
                                    668 ;	trial2.c:117: delay(10);
      00320D 90 00 0A         [24]  669 	mov	dptr,#0x000a
      003210 12 30 62         [24]  670 	lcall	_delay
                                    671 ;	trial2.c:120: lcd_string(testStr);
      003213 90 04 07         [24]  672 	mov	dptr,#_main_testStr_65536_20
      003216 75 F0 00         [24]  673 	mov	b,#0x00
      003219 12 31 45         [24]  674 	lcall	_lcd_string
                                    675 ;	trial2.c:121: delay(1000);
      00321C 90 03 E8         [24]  676 	mov	dptr,#0x03e8
      00321F 12 30 62         [24]  677 	lcall	_delay
                                    678 ;	trial2.c:124: lcd_command(0xC0);    // Move to second line
      003222 75 82 C0         [24]  679 	mov	dpl,#0xc0
      003225 12 30 95         [24]  680 	lcall	_lcd_command
                                    681 ;	trial2.c:125: delay(2);
      003228 90 00 02         [24]  682 	mov	dptr,#0x0002
      00322B 12 30 62         [24]  683 	lcall	_delay
                                    684 ;	trial2.c:128: for(i = 0; i < 10; i++) {
      00322E 7F 00            [12]  685 	mov	r7,#0x00
      003230                        686 00105$:
                                    687 ;	trial2.c:129: lcd_data('0' + i);
      003230 8F 06            [24]  688 	mov	ar6,r7
      003232 74 30            [12]  689 	mov	a,#0x30
      003234 2E               [12]  690 	add	a,r6
      003235 F5 82            [12]  691 	mov	dpl,a
      003237 C0 07            [24]  692 	push	ar7
      003239 12 30 BD         [24]  693 	lcall	_lcd_data
                                    694 ;	trial2.c:130: delay(200);
      00323C 90 00 C8         [24]  695 	mov	dptr,#0x00c8
      00323F 12 30 62         [24]  696 	lcall	_delay
      003242 D0 07            [24]  697 	pop	ar7
                                    698 ;	trial2.c:128: for(i = 0; i < 10; i++) {
      003244 0F               [12]  699 	inc	r7
      003245 BF 0A 00         [24]  700 	cjne	r7,#0x0a,00118$
      003248                        701 00118$:
      003248 40 E6            [24]  702 	jc	00105$
                                    703 ;	trial2.c:134: while(1) {
      00324A                        704 00103$:
                                    705 ;	trial2.c:136: lcd_command(0x08);    // Display OFF
      00324A 75 82 08         [24]  706 	mov	dpl,#0x08
      00324D 12 30 95         [24]  707 	lcall	_lcd_command
                                    708 ;	trial2.c:137: delay(500);
      003250 90 01 F4         [24]  709 	mov	dptr,#0x01f4
      003253 12 30 62         [24]  710 	lcall	_delay
                                    711 ;	trial2.c:138: lcd_command(0x0C);    // Display ON
      003256 75 82 0C         [24]  712 	mov	dpl,#0x0c
      003259 12 30 95         [24]  713 	lcall	_lcd_command
                                    714 ;	trial2.c:139: delay(500);
      00325C 90 01 F4         [24]  715 	mov	dptr,#0x01f4
      00325F 12 30 62         [24]  716 	lcall	_delay
                                    717 ;	trial2.c:141: }
      003262 80 E6            [24]  718 	sjmp	00103$
                                    719 	.area CSEG    (CODE)
                                    720 	.area CONST   (CODE)
                                    721 	.area XINIT   (CODE)
                                    722 	.area CABS    (ABS,CODE)
