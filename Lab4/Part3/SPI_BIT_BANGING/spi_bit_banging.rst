                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_bit_banging
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _getchar
                                     13 	.globl _putchar
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _spi_write
                                    212 	.globl _i2c_delay
                                    213 ;--------------------------------------------------------
                                    214 ; special function registers
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           000080   218 _P0	=	0x0080
                           000081   219 _SP	=	0x0081
                           000082   220 _DPL	=	0x0082
                           000083   221 _DPH	=	0x0083
                           000087   222 _PCON	=	0x0087
                           000088   223 _TCON	=	0x0088
                           000089   224 _TMOD	=	0x0089
                           00008A   225 _TL0	=	0x008a
                           00008B   226 _TL1	=	0x008b
                           00008C   227 _TH0	=	0x008c
                           00008D   228 _TH1	=	0x008d
                           000090   229 _P1	=	0x0090
                           000098   230 _SCON	=	0x0098
                           000099   231 _SBUF	=	0x0099
                           0000A0   232 _P2	=	0x00a0
                           0000A8   233 _IE	=	0x00a8
                           0000B0   234 _P3	=	0x00b0
                           0000B8   235 _IP	=	0x00b8
                           0000D0   236 _PSW	=	0x00d0
                           0000E0   237 _ACC	=	0x00e0
                           0000F0   238 _B	=	0x00f0
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                                    290 ;--------------------------------------------------------
                                    291 ; special function bits
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           000080   295 _P0_0	=	0x0080
                           000081   296 _P0_1	=	0x0081
                           000082   297 _P0_2	=	0x0082
                           000083   298 _P0_3	=	0x0083
                           000084   299 _P0_4	=	0x0084
                           000085   300 _P0_5	=	0x0085
                           000086   301 _P0_6	=	0x0086
                           000087   302 _P0_7	=	0x0087
                           000088   303 _IT0	=	0x0088
                           000089   304 _IE0	=	0x0089
                           00008A   305 _IT1	=	0x008a
                           00008B   306 _IE1	=	0x008b
                           00008C   307 _TR0	=	0x008c
                           00008D   308 _TF0	=	0x008d
                           00008E   309 _TR1	=	0x008e
                           00008F   310 _TF1	=	0x008f
                           000090   311 _P1_0	=	0x0090
                           000091   312 _P1_1	=	0x0091
                           000092   313 _P1_2	=	0x0092
                           000093   314 _P1_3	=	0x0093
                           000094   315 _P1_4	=	0x0094
                           000095   316 _P1_5	=	0x0095
                           000096   317 _P1_6	=	0x0096
                           000097   318 _P1_7	=	0x0097
                           000098   319 _RI	=	0x0098
                           000099   320 _TI	=	0x0099
                           00009A   321 _RB8	=	0x009a
                           00009B   322 _TB8	=	0x009b
                           00009C   323 _REN	=	0x009c
                           00009D   324 _SM2	=	0x009d
                           00009E   325 _SM1	=	0x009e
                           00009F   326 _SM0	=	0x009f
                           0000A0   327 _P2_0	=	0x00a0
                           0000A1   328 _P2_1	=	0x00a1
                           0000A2   329 _P2_2	=	0x00a2
                           0000A3   330 _P2_3	=	0x00a3
                           0000A4   331 _P2_4	=	0x00a4
                           0000A5   332 _P2_5	=	0x00a5
                           0000A6   333 _P2_6	=	0x00a6
                           0000A7   334 _P2_7	=	0x00a7
                           0000A8   335 _EX0	=	0x00a8
                           0000A9   336 _ET0	=	0x00a9
                           0000AA   337 _EX1	=	0x00aa
                           0000AB   338 _ET1	=	0x00ab
                           0000AC   339 _ES	=	0x00ac
                           0000AF   340 _EA	=	0x00af
                           0000B0   341 _P3_0	=	0x00b0
                           0000B1   342 _P3_1	=	0x00b1
                           0000B2   343 _P3_2	=	0x00b2
                           0000B3   344 _P3_3	=	0x00b3
                           0000B4   345 _P3_4	=	0x00b4
                           0000B5   346 _P3_5	=	0x00b5
                           0000B6   347 _P3_6	=	0x00b6
                           0000B7   348 _P3_7	=	0x00b7
                           0000B0   349 _RXD	=	0x00b0
                           0000B1   350 _TXD	=	0x00b1
                           0000B2   351 _INT0	=	0x00b2
                           0000B3   352 _INT1	=	0x00b3
                           0000B4   353 _T0	=	0x00b4
                           0000B5   354 _T1	=	0x00b5
                           0000B6   355 _WR	=	0x00b6
                           0000B7   356 _RD	=	0x00b7
                           0000B8   357 _PX0	=	0x00b8
                           0000B9   358 _PT0	=	0x00b9
                           0000BA   359 _PX1	=	0x00ba
                           0000BB   360 _PT1	=	0x00bb
                           0000BC   361 _PS	=	0x00bc
                           0000D0   362 _P	=	0x00d0
                           0000D1   363 _F1	=	0x00d1
                           0000D2   364 _OV	=	0x00d2
                           0000D3   365 _RS0	=	0x00d3
                           0000D4   366 _RS1	=	0x00d4
                           0000D5   367 _F0	=	0x00d5
                           0000D6   368 _AC	=	0x00d6
                           0000D7   369 _CY	=	0x00d7
                           0000AD   370 _ET2	=	0x00ad
                           0000BD   371 _PT2	=	0x00bd
                           0000C8   372 _T2CON_0	=	0x00c8
                           0000C9   373 _T2CON_1	=	0x00c9
                           0000CA   374 _T2CON_2	=	0x00ca
                           0000CB   375 _T2CON_3	=	0x00cb
                           0000CC   376 _T2CON_4	=	0x00cc
                           0000CD   377 _T2CON_5	=	0x00cd
                           0000CE   378 _T2CON_6	=	0x00ce
                           0000CF   379 _T2CON_7	=	0x00cf
                           0000C8   380 _CP_RL2	=	0x00c8
                           0000C9   381 _C_T2	=	0x00c9
                           0000CA   382 _TR2	=	0x00ca
                           0000CB   383 _EXEN2	=	0x00cb
                           0000CC   384 _TCLK	=	0x00cc
                           0000CD   385 _RCLK	=	0x00cd
                           0000CE   386 _EXF2	=	0x00ce
                           0000CF   387 _TF2	=	0x00cf
                           0000DF   388 _CF	=	0x00df
                           0000DE   389 _CR	=	0x00de
                           0000DC   390 _CCF4	=	0x00dc
                           0000DB   391 _CCF3	=	0x00db
                           0000DA   392 _CCF2	=	0x00da
                           0000D9   393 _CCF1	=	0x00d9
                           0000D8   394 _CCF0	=	0x00d8
                           0000AE   395 _EC	=	0x00ae
                           0000BE   396 _PPCL	=	0x00be
                           0000BD   397 _PT2L	=	0x00bd
                           0000BC   398 _PSL	=	0x00bc
                           0000BB   399 _PT1L	=	0x00bb
                           0000BA   400 _PX1L	=	0x00ba
                           0000B9   401 _PT0L	=	0x00b9
                           0000B8   402 _PX0L	=	0x00b8
                           0000C0   403 _P4_0	=	0x00c0
                           0000C1   404 _P4_1	=	0x00c1
                           0000C2   405 _P4_2	=	0x00c2
                           0000C3   406 _P4_3	=	0x00c3
                           0000C4   407 _P4_4	=	0x00c4
                           0000C5   408 _P4_5	=	0x00c5
                           0000C6   409 _P4_6	=	0x00c6
                           0000C7   410 _P4_7	=	0x00c7
                           0000E8   411 _P5_0	=	0x00e8
                           0000E9   412 _P5_1	=	0x00e9
                           0000EA   413 _P5_2	=	0x00ea
                           0000EB   414 _P5_3	=	0x00eb
                           0000EC   415 _P5_4	=	0x00ec
                           0000ED   416 _P5_5	=	0x00ed
                           0000EE   417 _P5_6	=	0x00ee
                           0000EF   418 _P5_7	=	0x00ef
                                    419 ;--------------------------------------------------------
                                    420 ; overlayable register banks
                                    421 ;--------------------------------------------------------
                                    422 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        423 	.ds 8
                                    424 ;--------------------------------------------------------
                                    425 ; internal ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area DSEG    (DATA)
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable items in internal ram 
                                    430 ;--------------------------------------------------------
                                    431 ;--------------------------------------------------------
                                    432 ; Stack segment in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 	.area	SSEG
      000014                        435 __start__stack:
      000014                        436 	.ds	1
                                    437 
                                    438 ;--------------------------------------------------------
                                    439 ; indirectly addressable internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area ISEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; absolute internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area IABS    (ABS,DATA)
                                    446 	.area IABS    (ABS,DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; bit data
                                    449 ;--------------------------------------------------------
                                    450 	.area BSEG    (BIT)
                                    451 ;--------------------------------------------------------
                                    452 ; paged external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area PSEG    (PAG,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XSEG    (XDATA)
      000400                        459 _putchar_charToSend_65536_14:
      000400                        460 	.ds 2
      000402                        461 _spi_write_data_65536_19:
      000402                        462 	.ds 1
                                    463 ;--------------------------------------------------------
                                    464 ; absolute external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XABS    (ABS,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external initialized ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XISEG   (XDATA)
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT0 (CODE)
                                    473 	.area GSINIT1 (CODE)
                                    474 	.area GSINIT2 (CODE)
                                    475 	.area GSINIT3 (CODE)
                                    476 	.area GSINIT4 (CODE)
                                    477 	.area GSINIT5 (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 	.area GSFINAL (CODE)
                                    480 	.area CSEG    (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; interrupt vector 
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
      002000                        485 __interrupt_vect:
      002000 02 20 06         [24]  486 	ljmp	__sdcc_gsinit_startup
                                    487 ;--------------------------------------------------------
                                    488 ; global & static initialisations
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.area GSFINAL (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.globl __sdcc_gsinit_startup
                                    495 	.globl __sdcc_program_startup
                                    496 	.globl __start__stack
                                    497 	.globl __mcs51_genXINIT
                                    498 	.globl __mcs51_genXRAMCLEAR
                                    499 	.globl __mcs51_genRAMCLEAR
                                    500 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  501 	ljmp	__sdcc_program_startup
                                    502 ;--------------------------------------------------------
                                    503 ; Home
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
                                    506 	.area HOME    (CODE)
      002003                        507 __sdcc_program_startup:
      002003 02 20 8F         [24]  508 	ljmp	_main
                                    509 ;	return from main will return to caller
                                    510 ;--------------------------------------------------------
                                    511 ; code
                                    512 ;--------------------------------------------------------
                                    513 	.area CSEG    (CODE)
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'putchar'
                                    516 ;------------------------------------------------------------
                                    517 ;charToSend                Allocated with name '_putchar_charToSend_65536_14'
                                    518 ;------------------------------------------------------------
                                    519 ;	spi_bit_banging.c:20: int putchar(int charToSend) {
                                    520 ;	-----------------------------------------
                                    521 ;	 function putchar
                                    522 ;	-----------------------------------------
      002062                        523 _putchar:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
      002062 AF 83            [24]  532 	mov	r7,dph
      002064 E5 82            [12]  533 	mov	a,dpl
      002066 90 04 00         [24]  534 	mov	dptr,#_putchar_charToSend_65536_14
      002069 F0               [24]  535 	movx	@dptr,a
      00206A EF               [12]  536 	mov	a,r7
      00206B A3               [24]  537 	inc	dptr
      00206C F0               [24]  538 	movx	@dptr,a
                                    539 ;	spi_bit_banging.c:21: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  540 	mov	dptr,#_putchar_charToSend_65536_14
      002070 E0               [24]  541 	movx	a,@dptr
      002071 FE               [12]  542 	mov	r6,a
      002072 A3               [24]  543 	inc	dptr
      002073 E0               [24]  544 	movx	a,@dptr
      002074 FF               [12]  545 	mov	r7,a
      002075 8E 99            [24]  546 	mov	_SBUF,r6
                                    547 ;	spi_bit_banging.c:22: while (!TI);             /* Wait for transmission completion */
      002077                        548 00101$:
                                    549 ;	spi_bit_banging.c:23: TI = 0;                  /* Clear transmission flag */
                                    550 ;	assignBit
      002077 10 99 02         [24]  551 	jbc	_TI,00114$
      00207A 80 FB            [24]  552 	sjmp	00101$
      00207C                        553 00114$:
                                    554 ;	spi_bit_banging.c:24: return charToSend;
      00207C 8E 82            [24]  555 	mov	dpl,r6
      00207E 8F 83            [24]  556 	mov	dph,r7
                                    557 ;	spi_bit_banging.c:25: }
      002080 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'getchar'
                                    561 ;------------------------------------------------------------
                                    562 ;	spi_bit_banging.c:31: int getchar(void) {
                                    563 ;	-----------------------------------------
                                    564 ;	 function getchar
                                    565 ;	-----------------------------------------
      002081                        566 _getchar:
                                    567 ;	spi_bit_banging.c:32: while (!RI);             /* Wait for reception completion */
      002081                        568 00101$:
                                    569 ;	spi_bit_banging.c:33: RI = 0;                  /* Clear reception flag */
                                    570 ;	assignBit
      002081 10 98 02         [24]  571 	jbc	_RI,00114$
      002084 80 FB            [24]  572 	sjmp	00101$
      002086                        573 00114$:
                                    574 ;	spi_bit_banging.c:34: return SBUF;             /* Return received character */
      002086 AE 99            [24]  575 	mov	r6,_SBUF
      002088 7F 00            [12]  576 	mov	r7,#0x00
      00208A 8E 82            [24]  577 	mov	dpl,r6
      00208C 8F 83            [24]  578 	mov	dph,r7
                                    579 ;	spi_bit_banging.c:35: }
      00208E 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'main'
                                    583 ;------------------------------------------------------------
                                    584 ;	spi_bit_banging.c:38: int main()
                                    585 ;	-----------------------------------------
                                    586 ;	 function main
                                    587 ;	-----------------------------------------
      00208F                        588 _main:
                                    589 ;	spi_bit_banging.c:41: printf("SPI BIT BANGING PROGRAM\n\r");
      00208F 74 D7            [12]  590 	mov	a,#___str_0
      002091 C0 E0            [24]  591 	push	acc
      002093 74 2B            [12]  592 	mov	a,#(___str_0 >> 8)
      002095 C0 E0            [24]  593 	push	acc
      002097 74 80            [12]  594 	mov	a,#0x80
      002099 C0 E0            [24]  595 	push	acc
      00209B 12 21 75         [24]  596 	lcall	_printf
      00209E 15 81            [12]  597 	dec	sp
      0020A0 15 81            [12]  598 	dec	sp
      0020A2 15 81            [12]  599 	dec	sp
                                    600 ;	spi_bit_banging.c:42: spi_write(0x1F);
      0020A4 75 82 1F         [24]  601 	mov	dpl,#0x1f
      0020A7 12 20 C9         [24]  602 	lcall	_spi_write
                                    603 ;	spi_bit_banging.c:43: spi_write(0xF0);
      0020AA 75 82 F0         [24]  604 	mov	dpl,#0xf0
      0020AD 12 20 C9         [24]  605 	lcall	_spi_write
                                    606 ;	spi_bit_banging.c:44: printf("ITS DONE\n\r");
      0020B0 74 F1            [12]  607 	mov	a,#___str_1
      0020B2 C0 E0            [24]  608 	push	acc
      0020B4 74 2B            [12]  609 	mov	a,#(___str_1 >> 8)
      0020B6 C0 E0            [24]  610 	push	acc
      0020B8 74 80            [12]  611 	mov	a,#0x80
      0020BA C0 E0            [24]  612 	push	acc
      0020BC 12 21 75         [24]  613 	lcall	_printf
      0020BF 15 81            [12]  614 	dec	sp
      0020C1 15 81            [12]  615 	dec	sp
      0020C3 15 81            [12]  616 	dec	sp
                                    617 ;	spi_bit_banging.c:45: return 0;
      0020C5 90 00 00         [24]  618 	mov	dptr,#0x0000
                                    619 ;	spi_bit_banging.c:47: }
      0020C8 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'spi_write'
                                    623 ;------------------------------------------------------------
                                    624 ;data                      Allocated with name '_spi_write_data_65536_19'
                                    625 ;i                         Allocated with name '_spi_write_i_65537_21'
                                    626 ;------------------------------------------------------------
                                    627 ;	spi_bit_banging.c:49: int spi_write(uint8_t data)
                                    628 ;	-----------------------------------------
                                    629 ;	 function spi_write
                                    630 ;	-----------------------------------------
      0020C9                        631 _spi_write:
      0020C9 E5 82            [12]  632 	mov	a,dpl
      0020CB 90 04 02         [24]  633 	mov	dptr,#_spi_write_data_65536_19
      0020CE F0               [24]  634 	movx	@dptr,a
                                    635 ;	spi_bit_banging.c:52: SS = 0;
                                    636 ;	assignBit
      0020CF C2 91            [12]  637 	clr	_P1_1
                                    638 ;	spi_bit_banging.c:54: for(i=0;i<=7;i++)
      0020D1 7E 00            [12]  639 	mov	r6,#0x00
      0020D3 7F 00            [12]  640 	mov	r7,#0x00
      0020D5                        641 00102$:
                                    642 ;	spi_bit_banging.c:56: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0020D5 90 04 02         [24]  643 	mov	dptr,#_spi_write_data_65536_19
      0020D8 E0               [24]  644 	movx	a,@dptr
      0020D9 FD               [12]  645 	mov	r5,a
      0020DA 23               [12]  646 	rl	a
      0020DB 54 01            [12]  647 	anl	a,#0x01
      0020DD 24 FF            [12]  648 	add	a,#0xff
      0020DF 92 97            [24]  649 	mov	_P1_7,c
                                    650 ;	spi_bit_banging.c:57: i2c_delay();        // Setup time for data
      0020E1 C0 07            [24]  651 	push	ar7
      0020E3 C0 06            [24]  652 	push	ar6
      0020E5 C0 05            [24]  653 	push	ar5
      0020E7 12 21 10         [24]  654 	lcall	_i2c_delay
                                    655 ;	spi_bit_banging.c:58: SCL=1;
                                    656 ;	assignBit
      0020EA D2 96            [12]  657 	setb	_P1_6
                                    658 ;	spi_bit_banging.c:59: i2c_delay();        // Hold time for clock
      0020EC 12 21 10         [24]  659 	lcall	_i2c_delay
      0020EF D0 05            [24]  660 	pop	ar5
      0020F1 D0 06            [24]  661 	pop	ar6
      0020F3 D0 07            [24]  662 	pop	ar7
                                    663 ;	spi_bit_banging.c:60: SCL=0;
                                    664 ;	assignBit
      0020F5 C2 96            [12]  665 	clr	_P1_6
                                    666 ;	spi_bit_banging.c:61: data = data << 1;
      0020F7 ED               [12]  667 	mov	a,r5
      0020F8 2D               [12]  668 	add	a,r5
      0020F9 90 04 02         [24]  669 	mov	dptr,#_spi_write_data_65536_19
      0020FC F0               [24]  670 	movx	@dptr,a
                                    671 ;	spi_bit_banging.c:54: for(i=0;i<=7;i++)
      0020FD 0E               [12]  672 	inc	r6
      0020FE BE 00 01         [24]  673 	cjne	r6,#0x00,00115$
      002101 0F               [12]  674 	inc	r7
      002102                        675 00115$:
      002102 C3               [12]  676 	clr	c
      002103 74 07            [12]  677 	mov	a,#0x07
      002105 9E               [12]  678 	subb	a,r6
      002106 E4               [12]  679 	clr	a
      002107 9F               [12]  680 	subb	a,r7
      002108 50 CB            [24]  681 	jnc	00102$
                                    682 ;	spi_bit_banging.c:63: SS = 1;
                                    683 ;	assignBit
      00210A D2 91            [12]  684 	setb	_P1_1
                                    685 ;	spi_bit_banging.c:65: return 1;           // Success
      00210C 90 00 01         [24]  686 	mov	dptr,#0x0001
                                    687 ;	spi_bit_banging.c:67: }
      00210F 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'i2c_delay'
                                    691 ;------------------------------------------------------------
                                    692 ;i                         Allocated with name '_i2c_delay_i_131072_25'
                                    693 ;------------------------------------------------------------
                                    694 ;	spi_bit_banging.c:69: void i2c_delay() 
                                    695 ;	-----------------------------------------
                                    696 ;	 function i2c_delay
                                    697 ;	-----------------------------------------
      002110                        698 _i2c_delay:
                                    699 ;	spi_bit_banging.c:71: for(int i = 0; i<500; i++);
      002110 7E 00            [12]  700 	mov	r6,#0x00
      002112 7F 00            [12]  701 	mov	r7,#0x00
      002114                        702 00103$:
      002114 C3               [12]  703 	clr	c
      002115 EE               [12]  704 	mov	a,r6
      002116 94 F4            [12]  705 	subb	a,#0xf4
      002118 EF               [12]  706 	mov	a,r7
      002119 64 80            [12]  707 	xrl	a,#0x80
      00211B 94 81            [12]  708 	subb	a,#0x81
      00211D 50 07            [24]  709 	jnc	00105$
      00211F 0E               [12]  710 	inc	r6
      002120 BE 00 F1         [24]  711 	cjne	r6,#0x00,00103$
      002123 0F               [12]  712 	inc	r7
      002124 80 EE            [24]  713 	sjmp	00103$
      002126                        714 00105$:
                                    715 ;	spi_bit_banging.c:72: }
      002126 22               [24]  716 	ret
                                    717 	.area CSEG    (CODE)
                                    718 	.area CONST   (CODE)
                                    719 	.area CONST   (CODE)
      002BD7                        720 ___str_0:
      002BD7 53 50 49 20 42 49 54   721 	.ascii "SPI BIT BANGING PROGRAM"
             20 42 41 4E 47 49 4E
             47 20 50 52 4F 47 52
             41 4D
      002BEE 0A                     722 	.db 0x0a
      002BEF 0D                     723 	.db 0x0d
      002BF0 00                     724 	.db 0x00
                                    725 	.area CSEG    (CODE)
                                    726 	.area CONST   (CODE)
      002BF1                        727 ___str_1:
      002BF1 49 54 53 20 44 4F 4E   728 	.ascii "ITS DONE"
             45
      002BF9 0A                     729 	.db 0x0a
      002BFA 0D                     730 	.db 0x0d
      002BFB 00                     731 	.db 0x00
                                    732 	.area CSEG    (CODE)
                                    733 	.area XINIT   (CODE)
                                    734 	.area CABS    (ABS,CODE)
