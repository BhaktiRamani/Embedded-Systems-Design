                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module getchar_putchar
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _TMOD
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TCON
                                    103 	.globl _SP
                                    104 	.globl _SCON
                                    105 	.globl _SBUF0
                                    106 	.globl _SBUF
                                    107 	.globl _PSW
                                    108 	.globl _PCON
                                    109 	.globl _P3
                                    110 	.globl _P2
                                    111 	.globl _P1
                                    112 	.globl _P0
                                    113 	.globl _IP
                                    114 	.globl _IE
                                    115 	.globl _DP0L
                                    116 	.globl _DPL
                                    117 	.globl _DP0H
                                    118 	.globl _DPH
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _getstr_PARM_3
                                    122 	.globl _getstr_PARM_2
                                    123 	.globl _putchar
                                    124 	.globl _getchar
                                    125 	.globl _getstr
                                    126 ;--------------------------------------------------------
                                    127 ; special function registers
                                    128 ;--------------------------------------------------------
                                    129 	.area RSEG    (ABS,DATA)
      000000                        130 	.org 0x0000
                           0000E0   131 _ACC	=	0x00e0
                           0000F0   132 _B	=	0x00f0
                           000083   133 _DPH	=	0x0083
                           000083   134 _DP0H	=	0x0083
                           000082   135 _DPL	=	0x0082
                           000082   136 _DP0L	=	0x0082
                           0000A8   137 _IE	=	0x00a8
                           0000B8   138 _IP	=	0x00b8
                           000080   139 _P0	=	0x0080
                           000090   140 _P1	=	0x0090
                           0000A0   141 _P2	=	0x00a0
                           0000B0   142 _P3	=	0x00b0
                           000087   143 _PCON	=	0x0087
                           0000D0   144 _PSW	=	0x00d0
                           000099   145 _SBUF	=	0x0099
                           000099   146 _SBUF0	=	0x0099
                           000098   147 _SCON	=	0x0098
                           000081   148 _SP	=	0x0081
                           000088   149 _TCON	=	0x0088
                           00008C   150 _TH0	=	0x008c
                           00008D   151 _TH1	=	0x008d
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           000089   154 _TMOD	=	0x0089
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           0000F0   160 _BREG_F0	=	0x00f0
                           0000F1   161 _BREG_F1	=	0x00f1
                           0000F2   162 _BREG_F2	=	0x00f2
                           0000F3   163 _BREG_F3	=	0x00f3
                           0000F4   164 _BREG_F4	=	0x00f4
                           0000F5   165 _BREG_F5	=	0x00f5
                           0000F6   166 _BREG_F6	=	0x00f6
                           0000F7   167 _BREG_F7	=	0x00f7
                           0000A8   168 _EX0	=	0x00a8
                           0000A9   169 _ET0	=	0x00a9
                           0000AA   170 _EX1	=	0x00aa
                           0000AB   171 _ET1	=	0x00ab
                           0000AC   172 _ES	=	0x00ac
                           0000AF   173 _EA	=	0x00af
                           0000B8   174 _PX0	=	0x00b8
                           0000B9   175 _PT0	=	0x00b9
                           0000BA   176 _PX1	=	0x00ba
                           0000BB   177 _PT1	=	0x00bb
                           0000BC   178 _PS	=	0x00bc
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000090   187 _P1_0	=	0x0090
                           000091   188 _P1_1	=	0x0091
                           000092   189 _P1_2	=	0x0092
                           000093   190 _P1_3	=	0x0093
                           000094   191 _P1_4	=	0x0094
                           000095   192 _P1_5	=	0x0095
                           000096   193 _P1_6	=	0x0096
                           000097   194 _P1_7	=	0x0097
                           0000A0   195 _P2_0	=	0x00a0
                           0000A1   196 _P2_1	=	0x00a1
                           0000A2   197 _P2_2	=	0x00a2
                           0000A3   198 _P2_3	=	0x00a3
                           0000A4   199 _P2_4	=	0x00a4
                           0000A5   200 _P2_5	=	0x00a5
                           0000A6   201 _P2_6	=	0x00a6
                           0000A7   202 _P2_7	=	0x00a7
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B0   212 _RXD0	=	0x00b0
                           0000B1   213 _TXD	=	0x00b1
                           0000B1   214 _TXD0	=	0x00b1
                           0000B2   215 _INT0	=	0x00b2
                           0000B3   216 _INT1	=	0x00b3
                           0000B4   217 _T0	=	0x00b4
                           0000B5   218 _T1	=	0x00b5
                           0000B6   219 _WR	=	0x00b6
                           0000B7   220 _RD	=	0x00b7
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                           000098   229 _RI	=	0x0098
                           000099   230 _TI	=	0x0099
                           00009A   231 _RB8	=	0x009a
                           00009B   232 _TB8	=	0x009b
                           00009C   233 _REN	=	0x009c
                           00009D   234 _SM2	=	0x009d
                           00009E   235 _SM1	=	0x009e
                           00009F   236 _SM0	=	0x009f
                           000088   237 _IT0	=	0x0088
                           000089   238 _IE0	=	0x0089
                           00008A   239 _IT1	=	0x008a
                           00008B   240 _IE1	=	0x008b
                           00008C   241 _TR0	=	0x008c
                           00008D   242 _TF0	=	0x008d
                           00008E   243 _TR1	=	0x008e
                           00008F   244 _TF1	=	0x008f
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable register banks
                                    247 ;--------------------------------------------------------
                                    248 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        249 	.ds 8
                                    250 ;--------------------------------------------------------
                                    251 ; internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area DSEG    (DATA)
      000019                        254 _getstr_sloc0_1_0:
      000019                        255 	.ds 3
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 ;--------------------------------------------------------
                                    260 ; indirectly addressable internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area ISEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area IABS    (ABS,DATA)
                                    267 	.area IABS    (ABS,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; bit data
                                    270 ;--------------------------------------------------------
                                    271 	.area BSEG    (BIT)
                                    272 ;--------------------------------------------------------
                                    273 ; paged external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area PSEG    (PAG,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XSEG    (XDATA)
      001918                        280 _putchar_charToSend_65536_68:
      001918                        281 	.ds 2
      00191A                        282 _getstr_PARM_2:
      00191A                        283 	.ds 2
      00191C                        284 _getstr_PARM_3:
      00191C                        285 	.ds 3
      00191F                        286 _getstr_buffer_65536_72:
      00191F                        287 	.ds 3
      001922                        288 _getstr_index_65536_73:
      001922                        289 	.ds 2
      001924                        290 _getstr_is_error_set_65536_73:
      001924                        291 	.ds 1
                                    292 ;--------------------------------------------------------
                                    293 ; absolute external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XABS    (ABS,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; external initialized ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XISEG   (XDATA)
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT0 (CODE)
                                    302 	.area GSINIT1 (CODE)
                                    303 	.area GSINIT2 (CODE)
                                    304 	.area GSINIT3 (CODE)
                                    305 	.area GSINIT4 (CODE)
                                    306 	.area GSINIT5 (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area CSEG    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; global & static initialisations
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; Home
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area HOME    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; code
                                    324 ;--------------------------------------------------------
                                    325 	.area CSEG    (CODE)
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'putchar'
                                    328 ;------------------------------------------------------------
                                    329 ;charToSend                Allocated with name '_putchar_charToSend_65536_68'
                                    330 ;------------------------------------------------------------
                                    331 ;	src/getchar_putchar.c:51: int putchar(int charToSend) {
                                    332 ;	-----------------------------------------
                                    333 ;	 function putchar
                                    334 ;	-----------------------------------------
      003215                        335 _putchar:
                           000007   336 	ar7 = 0x07
                           000006   337 	ar6 = 0x06
                           000005   338 	ar5 = 0x05
                           000004   339 	ar4 = 0x04
                           000003   340 	ar3 = 0x03
                           000002   341 	ar2 = 0x02
                           000001   342 	ar1 = 0x01
                           000000   343 	ar0 = 0x00
      003215 AF 83            [24]  344 	mov	r7,dph
      003217 E5 82            [12]  345 	mov	a,dpl
      003219 90 19 18         [24]  346 	mov	dptr,#_putchar_charToSend_65536_68
      00321C F0               [24]  347 	movx	@dptr,a
      00321D EF               [12]  348 	mov	a,r7
      00321E A3               [24]  349 	inc	dptr
      00321F F0               [24]  350 	movx	@dptr,a
                                    351 ;	src/getchar_putchar.c:52: SBUF = charToSend;  // Send character to serial buffer
      003220 90 19 18         [24]  352 	mov	dptr,#_putchar_charToSend_65536_68
      003223 E0               [24]  353 	movx	a,@dptr
      003224 FE               [12]  354 	mov	r6,a
      003225 A3               [24]  355 	inc	dptr
      003226 E0               [24]  356 	movx	a,@dptr
      003227 FF               [12]  357 	mov	r7,a
      003228 8E 99            [24]  358 	mov	_SBUF,r6
                                    359 ;	src/getchar_putchar.c:53: while (!TI);        // Wait for transmission to complete
      00322A                        360 00101$:
                                    361 ;	src/getchar_putchar.c:54: TI = 0;             // Clear transmission interrupt flag
                                    362 ;	assignBit
      00322A 10 99 02         [24]  363 	jbc	_TI,00114$
      00322D 80 FB            [24]  364 	sjmp	00101$
      00322F                        365 00114$:
                                    366 ;	src/getchar_putchar.c:55: return charToSend;
      00322F 8E 82            [24]  367 	mov	dpl,r6
      003231 8F 83            [24]  368 	mov	dph,r7
                                    369 ;	src/getchar_putchar.c:56: }
      003233 22               [24]  370 	ret
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'getchar'
                                    373 ;------------------------------------------------------------
                                    374 ;	src/getchar_putchar.c:65: int getchar(void) {
                                    375 ;	-----------------------------------------
                                    376 ;	 function getchar
                                    377 ;	-----------------------------------------
      003234                        378 _getchar:
                                    379 ;	src/getchar_putchar.c:66: while (!RI);        // Wait for reception to complete
      003234                        380 00101$:
                                    381 ;	src/getchar_putchar.c:67: RI = 0;             // Clear reception interrupt flag
                                    382 ;	assignBit
      003234 10 98 02         [24]  383 	jbc	_RI,00114$
      003237 80 FB            [24]  384 	sjmp	00101$
      003239                        385 00114$:
                                    386 ;	src/getchar_putchar.c:68: return SBUF;        // Return received character
      003239 AE 99            [24]  387 	mov	r6,_SBUF
      00323B 7F 00            [12]  388 	mov	r7,#0x00
      00323D 8E 82            [24]  389 	mov	dpl,r6
      00323F 8F 83            [24]  390 	mov	dph,r7
                                    391 ;	src/getchar_putchar.c:69: }
      003241 22               [24]  392 	ret
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'getstr'
                                    395 ;------------------------------------------------------------
                                    396 ;sloc0                     Allocated with name '_getstr_sloc0_1_0'
                                    397 ;buffer_len                Allocated with name '_getstr_PARM_2'
                                    398 ;error_string              Allocated with name '_getstr_PARM_3'
                                    399 ;buffer                    Allocated with name '_getstr_buffer_65536_72'
                                    400 ;c                         Allocated with name '_getstr_c_65536_73'
                                    401 ;index                     Allocated with name '_getstr_index_65536_73'
                                    402 ;is_error_set              Allocated with name '_getstr_is_error_set_65536_73'
                                    403 ;------------------------------------------------------------
                                    404 ;	src/getchar_putchar.c:84: bool getstr(char *buffer, int buffer_len, char *error_string) {
                                    405 ;	-----------------------------------------
                                    406 ;	 function getstr
                                    407 ;	-----------------------------------------
      003242                        408 _getstr:
      003242 AF F0            [24]  409 	mov	r7,b
      003244 AE 83            [24]  410 	mov	r6,dph
      003246 E5 82            [12]  411 	mov	a,dpl
      003248 90 19 1F         [24]  412 	mov	dptr,#_getstr_buffer_65536_72
      00324B F0               [24]  413 	movx	@dptr,a
      00324C EE               [12]  414 	mov	a,r6
      00324D A3               [24]  415 	inc	dptr
      00324E F0               [24]  416 	movx	@dptr,a
      00324F EF               [12]  417 	mov	a,r7
      003250 A3               [24]  418 	inc	dptr
      003251 F0               [24]  419 	movx	@dptr,a
                                    420 ;	src/getchar_putchar.c:86: int index = 0;
      003252 90 19 22         [24]  421 	mov	dptr,#_getstr_index_65536_73
      003255 E4               [12]  422 	clr	a
      003256 F0               [24]  423 	movx	@dptr,a
      003257 A3               [24]  424 	inc	dptr
      003258 F0               [24]  425 	movx	@dptr,a
                                    426 ;	src/getchar_putchar.c:87: bool is_error_set = false;
      003259 90 19 24         [24]  427 	mov	dptr,#_getstr_is_error_set_65536_73
      00325C F0               [24]  428 	movx	@dptr,a
                                    429 ;	src/getchar_putchar.c:89: while (1) {
      00325D 90 19 1A         [24]  430 	mov	dptr,#_getstr_PARM_2
      003260 E0               [24]  431 	movx	a,@dptr
      003261 FE               [12]  432 	mov	r6,a
      003262 A3               [24]  433 	inc	dptr
      003263 E0               [24]  434 	movx	a,@dptr
      003264 FF               [12]  435 	mov	r7,a
      003265 1E               [12]  436 	dec	r6
      003266 BE FF 01         [24]  437 	cjne	r6,#0xff,00137$
      003269 1F               [12]  438 	dec	r7
      00326A                        439 00137$:
      00326A 90 19 1F         [24]  440 	mov	dptr,#_getstr_buffer_65536_72
      00326D E0               [24]  441 	movx	a,@dptr
      00326E FB               [12]  442 	mov	r3,a
      00326F A3               [24]  443 	inc	dptr
      003270 E0               [24]  444 	movx	a,@dptr
      003271 FC               [12]  445 	mov	r4,a
      003272 A3               [24]  446 	inc	dptr
      003273 E0               [24]  447 	movx	a,@dptr
      003274 FD               [12]  448 	mov	r5,a
      003275                        449 00113$:
                                    450 ;	src/getchar_putchar.c:90: c = getchar();  // Receive a character
      003275 C0 07            [24]  451 	push	ar7
      003277 C0 06            [24]  452 	push	ar6
      003279 C0 05            [24]  453 	push	ar5
      00327B C0 04            [24]  454 	push	ar4
      00327D C0 03            [24]  455 	push	ar3
      00327F 12 32 34         [24]  456 	lcall	_getchar
      003282 A9 82            [24]  457 	mov	r1,dpl
                                    458 ;	src/getchar_putchar.c:91: putchar(c);     // Echo the received character back to the user
      003284 89 00            [24]  459 	mov	ar0,r1
      003286 7A 00            [12]  460 	mov	r2,#0x00
      003288 88 82            [24]  461 	mov	dpl,r0
      00328A 8A 83            [24]  462 	mov	dph,r2
      00328C C0 01            [24]  463 	push	ar1
      00328E 12 32 15         [24]  464 	lcall	_putchar
      003291 D0 01            [24]  465 	pop	ar1
      003293 D0 03            [24]  466 	pop	ar3
      003295 D0 04            [24]  467 	pop	ar4
      003297 D0 05            [24]  468 	pop	ar5
      003299 D0 06            [24]  469 	pop	ar6
      00329B D0 07            [24]  470 	pop	ar7
                                    471 ;	src/getchar_putchar.c:94: if (c == '\b' || c == BACKSPACE_DEC_VALUE) {
      00329D B9 08 02         [24]  472 	cjne	r1,#0x08,00138$
      0032A0 80 03            [24]  473 	sjmp	00103$
      0032A2                        474 00138$:
      0032A2 B9 7F 25         [24]  475 	cjne	r1,#0x7f,00104$
      0032A5                        476 00103$:
                                    477 ;	src/getchar_putchar.c:95: if (index > 0) {
      0032A5 90 19 22         [24]  478 	mov	dptr,#_getstr_index_65536_73
      0032A8 E0               [24]  479 	movx	a,@dptr
      0032A9 F8               [12]  480 	mov	r0,a
      0032AA A3               [24]  481 	inc	dptr
      0032AB E0               [24]  482 	movx	a,@dptr
      0032AC FA               [12]  483 	mov	r2,a
      0032AD C3               [12]  484 	clr	c
      0032AE E4               [12]  485 	clr	a
      0032AF 98               [12]  486 	subb	a,r0
      0032B0 74 80            [12]  487 	mov	a,#(0x00 ^ 0x80)
      0032B2 8A F0            [24]  488 	mov	b,r2
      0032B4 63 F0 80         [24]  489 	xrl	b,#0x80
      0032B7 95 F0            [12]  490 	subb	a,b
      0032B9 50 BA            [24]  491 	jnc	00113$
                                    492 ;	src/getchar_putchar.c:96: index--;  // Remove last character if there's any
      0032BB 18               [12]  493 	dec	r0
      0032BC B8 FF 01         [24]  494 	cjne	r0,#0xff,00142$
      0032BF 1A               [12]  495 	dec	r2
      0032C0                        496 00142$:
      0032C0 90 19 22         [24]  497 	mov	dptr,#_getstr_index_65536_73
      0032C3 E8               [12]  498 	mov	a,r0
      0032C4 F0               [24]  499 	movx	@dptr,a
      0032C5 EA               [12]  500 	mov	a,r2
      0032C6 A3               [24]  501 	inc	dptr
      0032C7 F0               [24]  502 	movx	@dptr,a
                                    503 ;	src/getchar_putchar.c:98: continue;
      0032C8 80 AB            [24]  504 	sjmp	00113$
      0032CA                        505 00104$:
                                    506 ;	src/getchar_putchar.c:102: if (c == '\r' || c == '\n') {
      0032CA B9 0D 02         [24]  507 	cjne	r1,#0x0d,00143$
      0032CD 80 03            [24]  508 	sjmp	00106$
      0032CF                        509 00143$:
      0032CF B9 0A 2F         [24]  510 	cjne	r1,#0x0a,00107$
      0032D2                        511 00106$:
                                    512 ;	src/getchar_putchar.c:103: buffer[index] = '\0';  // Null-terminate the string
      0032D2 90 19 1F         [24]  513 	mov	dptr,#_getstr_buffer_65536_72
      0032D5 E0               [24]  514 	movx	a,@dptr
      0032D6 F5 19            [12]  515 	mov	_getstr_sloc0_1_0,a
      0032D8 A3               [24]  516 	inc	dptr
      0032D9 E0               [24]  517 	movx	a,@dptr
      0032DA F5 1A            [12]  518 	mov	(_getstr_sloc0_1_0 + 1),a
      0032DC A3               [24]  519 	inc	dptr
      0032DD E0               [24]  520 	movx	a,@dptr
      0032DE F5 1B            [12]  521 	mov	(_getstr_sloc0_1_0 + 2),a
      0032E0 90 19 22         [24]  522 	mov	dptr,#_getstr_index_65536_73
      0032E3 E0               [24]  523 	movx	a,@dptr
      0032E4 F8               [12]  524 	mov	r0,a
      0032E5 A3               [24]  525 	inc	dptr
      0032E6 E0               [24]  526 	movx	a,@dptr
      0032E7 FA               [12]  527 	mov	r2,a
      0032E8 E8               [12]  528 	mov	a,r0
      0032E9 25 19            [12]  529 	add	a,_getstr_sloc0_1_0
      0032EB F5 19            [12]  530 	mov	_getstr_sloc0_1_0,a
      0032ED EA               [12]  531 	mov	a,r2
      0032EE 35 1A            [12]  532 	addc	a,(_getstr_sloc0_1_0 + 1)
      0032F0 F5 1A            [12]  533 	mov	(_getstr_sloc0_1_0 + 1),a
      0032F2 85 19 82         [24]  534 	mov	dpl,_getstr_sloc0_1_0
      0032F5 85 1A 83         [24]  535 	mov	dph,(_getstr_sloc0_1_0 + 1)
      0032F8 85 1B F0         [24]  536 	mov	b,(_getstr_sloc0_1_0 + 2)
      0032FB E4               [12]  537 	clr	a
      0032FC 12 39 E7         [24]  538 	lcall	__gptrput
                                    539 ;	src/getchar_putchar.c:104: break;                 // Exit the loop
      0032FF 80 68            [24]  540 	sjmp	00114$
      003301                        541 00107$:
                                    542 ;	src/getchar_putchar.c:108: if (index < buffer_len - 1) {
      003301 90 19 22         [24]  543 	mov	dptr,#_getstr_index_65536_73
      003304 E0               [24]  544 	movx	a,@dptr
      003305 F8               [12]  545 	mov	r0,a
      003306 A3               [24]  546 	inc	dptr
      003307 E0               [24]  547 	movx	a,@dptr
      003308 FA               [12]  548 	mov	r2,a
      003309 C3               [12]  549 	clr	c
      00330A E8               [12]  550 	mov	a,r0
      00330B 9E               [12]  551 	subb	a,r6
      00330C EA               [12]  552 	mov	a,r2
      00330D 64 80            [12]  553 	xrl	a,#0x80
      00330F 8F F0            [24]  554 	mov	b,r7
      003311 63 F0 80         [24]  555 	xrl	b,#0x80
      003314 95 F0            [12]  556 	subb	a,b
      003316 50 28            [24]  557 	jnc	00110$
                                    558 ;	src/getchar_putchar.c:109: buffer[index++] = c;  // Save character and increment index
      003318 C0 06            [24]  559 	push	ar6
      00331A C0 07            [24]  560 	push	ar7
      00331C 90 19 22         [24]  561 	mov	dptr,#_getstr_index_65536_73
      00331F 74 01            [12]  562 	mov	a,#0x01
      003321 28               [12]  563 	add	a,r0
      003322 F0               [24]  564 	movx	@dptr,a
      003323 E4               [12]  565 	clr	a
      003324 3A               [12]  566 	addc	a,r2
      003325 A3               [24]  567 	inc	dptr
      003326 F0               [24]  568 	movx	@dptr,a
      003327 E8               [12]  569 	mov	a,r0
      003328 2B               [12]  570 	add	a,r3
      003329 F8               [12]  571 	mov	r0,a
      00332A EA               [12]  572 	mov	a,r2
      00332B 3C               [12]  573 	addc	a,r4
      00332C FA               [12]  574 	mov	r2,a
      00332D 8D 07            [24]  575 	mov	ar7,r5
      00332F 88 82            [24]  576 	mov	dpl,r0
      003331 8A 83            [24]  577 	mov	dph,r2
      003333 8F F0            [24]  578 	mov	b,r7
      003335 E9               [12]  579 	mov	a,r1
      003336 12 39 E7         [24]  580 	lcall	__gptrput
      003339 D0 07            [24]  581 	pop	ar7
      00333B D0 06            [24]  582 	pop	ar6
      00333D 02 32 75         [24]  583 	ljmp	00113$
      003340                        584 00110$:
                                    585 ;	src/getchar_putchar.c:111: is_error_set = true;   // Set error flag if buffer is full
      003340 90 19 24         [24]  586 	mov	dptr,#_getstr_is_error_set_65536_73
      003343 74 01            [12]  587 	mov	a,#0x01
      003345 F0               [24]  588 	movx	@dptr,a
                                    589 ;	src/getchar_putchar.c:112: printf("%s\n", error_string);  // Print error message
      003346 90 19 1C         [24]  590 	mov	dptr,#_getstr_PARM_3
      003349 E0               [24]  591 	movx	a,@dptr
      00334A C0 E0            [24]  592 	push	acc
      00334C A3               [24]  593 	inc	dptr
      00334D E0               [24]  594 	movx	a,@dptr
      00334E C0 E0            [24]  595 	push	acc
      003350 A3               [24]  596 	inc	dptr
      003351 E0               [24]  597 	movx	a,@dptr
      003352 C0 E0            [24]  598 	push	acc
      003354 74 20            [12]  599 	mov	a,#___str_0
      003356 C0 E0            [24]  600 	push	acc
      003358 74 54            [12]  601 	mov	a,#(___str_0 >> 8)
      00335A C0 E0            [24]  602 	push	acc
      00335C 74 80            [12]  603 	mov	a,#0x80
      00335E C0 E0            [24]  604 	push	acc
      003360 12 3C 63         [24]  605 	lcall	_printf
      003363 E5 81            [12]  606 	mov	a,sp
      003365 24 FA            [12]  607 	add	a,#0xfa
      003367 F5 81            [12]  608 	mov	sp,a
                                    609 ;	src/getchar_putchar.c:113: break;
      003369                        610 00114$:
                                    611 ;	src/getchar_putchar.c:116: return is_error_set;  // Return whether there was an error
      003369 90 19 24         [24]  612 	mov	dptr,#_getstr_is_error_set_65536_73
      00336C E0               [24]  613 	movx	a,@dptr
                                    614 ;	src/getchar_putchar.c:117: }
      00336D F5 82            [12]  615 	mov	dpl,a
      00336F 22               [24]  616 	ret
                                    617 	.area CSEG    (CODE)
                                    618 	.area CONST   (CODE)
                                    619 	.area CONST   (CODE)
      005420                        620 ___str_0:
      005420 25 73                  621 	.ascii "%s"
      005422 0A                     622 	.db 0x0a
      005423 00                     623 	.db 0x00
                                    624 	.area CSEG    (CODE)
                                    625 	.area XINIT   (CODE)
                                    626 	.area CABS    (ABS,CODE)
