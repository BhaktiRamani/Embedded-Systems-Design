                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_dac
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dac_values
                                     12 	.globl _spi_isr
                                     13 	.globl _timer0_isr
                                     14 	.globl _main
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _printf
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _transmission_complete
                                    215 	.globl _ms_flag
                                    216 	.globl _timer0_init
                                    217 	.globl _spi_init
                                    218 	.globl _spi_transmission_start
                                    219 	.globl _spi_transmission_stop
                                    220 ;--------------------------------------------------------
                                    221 ; special function registers
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0	=	0x0080
                           000081   226 _SP	=	0x0081
                           000082   227 _DPL	=	0x0082
                           000083   228 _DPH	=	0x0083
                           000087   229 _PCON	=	0x0087
                           000088   230 _TCON	=	0x0088
                           000089   231 _TMOD	=	0x0089
                           00008A   232 _TL0	=	0x008a
                           00008B   233 _TL1	=	0x008b
                           00008C   234 _TH0	=	0x008c
                           00008D   235 _TH1	=	0x008d
                           000090   236 _P1	=	0x0090
                           000098   237 _SCON	=	0x0098
                           000099   238 _SBUF	=	0x0099
                           0000A0   239 _P2	=	0x00a0
                           0000A8   240 _IE	=	0x00a8
                           0000B0   241 _P3	=	0x00b0
                           0000B8   242 _IP	=	0x00b8
                           0000D0   243 _PSW	=	0x00d0
                           0000E0   244 _ACC	=	0x00e0
                           0000F0   245 _B	=	0x00f0
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                                    297 ;--------------------------------------------------------
                                    298 ; special function bits
                                    299 ;--------------------------------------------------------
                                    300 	.area RSEG    (ABS,DATA)
      000000                        301 	.org 0x0000
                           000080   302 _P0_0	=	0x0080
                           000081   303 _P0_1	=	0x0081
                           000082   304 _P0_2	=	0x0082
                           000083   305 _P0_3	=	0x0083
                           000084   306 _P0_4	=	0x0084
                           000085   307 _P0_5	=	0x0085
                           000086   308 _P0_6	=	0x0086
                           000087   309 _P0_7	=	0x0087
                           000088   310 _IT0	=	0x0088
                           000089   311 _IE0	=	0x0089
                           00008A   312 _IT1	=	0x008a
                           00008B   313 _IE1	=	0x008b
                           00008C   314 _TR0	=	0x008c
                           00008D   315 _TF0	=	0x008d
                           00008E   316 _TR1	=	0x008e
                           00008F   317 _TF1	=	0x008f
                           000090   318 _P1_0	=	0x0090
                           000091   319 _P1_1	=	0x0091
                           000092   320 _P1_2	=	0x0092
                           000093   321 _P1_3	=	0x0093
                           000094   322 _P1_4	=	0x0094
                           000095   323 _P1_5	=	0x0095
                           000096   324 _P1_6	=	0x0096
                           000097   325 _P1_7	=	0x0097
                           000098   326 _RI	=	0x0098
                           000099   327 _TI	=	0x0099
                           00009A   328 _RB8	=	0x009a
                           00009B   329 _TB8	=	0x009b
                           00009C   330 _REN	=	0x009c
                           00009D   331 _SM2	=	0x009d
                           00009E   332 _SM1	=	0x009e
                           00009F   333 _SM0	=	0x009f
                           0000A0   334 _P2_0	=	0x00a0
                           0000A1   335 _P2_1	=	0x00a1
                           0000A2   336 _P2_2	=	0x00a2
                           0000A3   337 _P2_3	=	0x00a3
                           0000A4   338 _P2_4	=	0x00a4
                           0000A5   339 _P2_5	=	0x00a5
                           0000A6   340 _P2_6	=	0x00a6
                           0000A7   341 _P2_7	=	0x00a7
                           0000A8   342 _EX0	=	0x00a8
                           0000A9   343 _ET0	=	0x00a9
                           0000AA   344 _EX1	=	0x00aa
                           0000AB   345 _ET1	=	0x00ab
                           0000AC   346 _ES	=	0x00ac
                           0000AF   347 _EA	=	0x00af
                           0000B0   348 _P3_0	=	0x00b0
                           0000B1   349 _P3_1	=	0x00b1
                           0000B2   350 _P3_2	=	0x00b2
                           0000B3   351 _P3_3	=	0x00b3
                           0000B4   352 _P3_4	=	0x00b4
                           0000B5   353 _P3_5	=	0x00b5
                           0000B6   354 _P3_6	=	0x00b6
                           0000B7   355 _P3_7	=	0x00b7
                           0000B0   356 _RXD	=	0x00b0
                           0000B1   357 _TXD	=	0x00b1
                           0000B2   358 _INT0	=	0x00b2
                           0000B3   359 _INT1	=	0x00b3
                           0000B4   360 _T0	=	0x00b4
                           0000B5   361 _T1	=	0x00b5
                           0000B6   362 _WR	=	0x00b6
                           0000B7   363 _RD	=	0x00b7
                           0000B8   364 _PX0	=	0x00b8
                           0000B9   365 _PT0	=	0x00b9
                           0000BA   366 _PX1	=	0x00ba
                           0000BB   367 _PT1	=	0x00bb
                           0000BC   368 _PS	=	0x00bc
                           0000D0   369 _P	=	0x00d0
                           0000D1   370 _F1	=	0x00d1
                           0000D2   371 _OV	=	0x00d2
                           0000D3   372 _RS0	=	0x00d3
                           0000D4   373 _RS1	=	0x00d4
                           0000D5   374 _F0	=	0x00d5
                           0000D6   375 _AC	=	0x00d6
                           0000D7   376 _CY	=	0x00d7
                           0000AD   377 _ET2	=	0x00ad
                           0000BD   378 _PT2	=	0x00bd
                           0000C8   379 _T2CON_0	=	0x00c8
                           0000C9   380 _T2CON_1	=	0x00c9
                           0000CA   381 _T2CON_2	=	0x00ca
                           0000CB   382 _T2CON_3	=	0x00cb
                           0000CC   383 _T2CON_4	=	0x00cc
                           0000CD   384 _T2CON_5	=	0x00cd
                           0000CE   385 _T2CON_6	=	0x00ce
                           0000CF   386 _T2CON_7	=	0x00cf
                           0000C8   387 _CP_RL2	=	0x00c8
                           0000C9   388 _C_T2	=	0x00c9
                           0000CA   389 _TR2	=	0x00ca
                           0000CB   390 _EXEN2	=	0x00cb
                           0000CC   391 _TCLK	=	0x00cc
                           0000CD   392 _RCLK	=	0x00cd
                           0000CE   393 _EXF2	=	0x00ce
                           0000CF   394 _TF2	=	0x00cf
                           0000DF   395 _CF	=	0x00df
                           0000DE   396 _CR	=	0x00de
                           0000DC   397 _CCF4	=	0x00dc
                           0000DB   398 _CCF3	=	0x00db
                           0000DA   399 _CCF2	=	0x00da
                           0000D9   400 _CCF1	=	0x00d9
                           0000D8   401 _CCF0	=	0x00d8
                           0000AE   402 _EC	=	0x00ae
                           0000BE   403 _PPCL	=	0x00be
                           0000BD   404 _PT2L	=	0x00bd
                           0000BC   405 _PSL	=	0x00bc
                           0000BB   406 _PT1L	=	0x00bb
                           0000BA   407 _PX1L	=	0x00ba
                           0000B9   408 _PT0L	=	0x00b9
                           0000B8   409 _PX0L	=	0x00b8
                           0000C0   410 _P4_0	=	0x00c0
                           0000C1   411 _P4_1	=	0x00c1
                           0000C2   412 _P4_2	=	0x00c2
                           0000C3   413 _P4_3	=	0x00c3
                           0000C4   414 _P4_4	=	0x00c4
                           0000C5   415 _P4_5	=	0x00c5
                           0000C6   416 _P4_6	=	0x00c6
                           0000C7   417 _P4_7	=	0x00c7
                           0000E8   418 _P5_0	=	0x00e8
                           0000E9   419 _P5_1	=	0x00e9
                           0000EA   420 _P5_2	=	0x00ea
                           0000EB   421 _P5_3	=	0x00eb
                           0000EC   422 _P5_4	=	0x00ec
                           0000ED   423 _P5_5	=	0x00ed
                           0000EE   424 _P5_6	=	0x00ee
                           0000EF   425 _P5_7	=	0x00ef
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram 
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; Stack segment in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 	.area	SSEG
      000014                        442 __start__stack:
      000014                        443 	.ds	1
                                    444 
                                    445 ;--------------------------------------------------------
                                    446 ; indirectly addressable internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area ISEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area IABS    (ABS,DATA)
                                    453 	.area IABS    (ABS,DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; bit data
                                    456 ;--------------------------------------------------------
                                    457 	.area BSEG    (BIT)
                                    458 ;--------------------------------------------------------
                                    459 ; paged external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area PSEG    (PAG,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XSEG    (XDATA)
      000400                        466 _putchar_charToSend_65536_17:
      000400                        467 	.ds 2
                                    468 ;--------------------------------------------------------
                                    469 ; absolute external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XABS    (ABS,XDATA)
                                    472 ;--------------------------------------------------------
                                    473 ; external initialized ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XISEG   (XDATA)
      00043B                        476 _ms_flag::
      00043B                        477 	.ds 1
      00043C                        478 _transmission_complete::
      00043C                        479 	.ds 2
                                    480 	.area HOME    (CODE)
                                    481 	.area GSINIT0 (CODE)
                                    482 	.area GSINIT1 (CODE)
                                    483 	.area GSINIT2 (CODE)
                                    484 	.area GSINIT3 (CODE)
                                    485 	.area GSINIT4 (CODE)
                                    486 	.area GSINIT5 (CODE)
                                    487 	.area GSINIT  (CODE)
                                    488 	.area GSFINAL (CODE)
                                    489 	.area CSEG    (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; interrupt vector 
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
      003000                        494 __interrupt_vect:
      003000 02 30 51         [24]  495 	ljmp	__sdcc_gsinit_startup
      003003 32               [24]  496 	reti
      003004                        497 	.ds	7
      00300B 02 31 25         [24]  498 	ljmp	_timer0_isr
      00300E                        499 	.ds	5
      003013 32               [24]  500 	reti
      003014                        501 	.ds	7
      00301B 32               [24]  502 	reti
      00301C                        503 	.ds	7
      003023 32               [24]  504 	reti
      003024                        505 	.ds	7
      00302B 32               [24]  506 	reti
      00302C                        507 	.ds	7
      003033 32               [24]  508 	reti
      003034                        509 	.ds	7
      00303B 32               [24]  510 	reti
      00303C                        511 	.ds	7
      003043 32               [24]  512 	reti
      003044                        513 	.ds	7
      00304B 02 31 40         [24]  514 	ljmp	_spi_isr
                                    515 ;--------------------------------------------------------
                                    516 ; global & static initialisations
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.area GSFINAL (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.globl __sdcc_gsinit_startup
                                    523 	.globl __sdcc_program_startup
                                    524 	.globl __start__stack
                                    525 	.globl __mcs51_genXINIT
                                    526 	.globl __mcs51_genXRAMCLEAR
                                    527 	.globl __mcs51_genRAMCLEAR
                                    528 	.area GSFINAL (CODE)
      0030AA 02 30 4E         [24]  529 	ljmp	__sdcc_program_startup
                                    530 ;--------------------------------------------------------
                                    531 ; Home
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
                                    534 	.area HOME    (CODE)
      00304E                        535 __sdcc_program_startup:
      00304E 02 30 DA         [24]  536 	ljmp	_main
                                    537 ;	return from main will return to caller
                                    538 ;--------------------------------------------------------
                                    539 ; code
                                    540 ;--------------------------------------------------------
                                    541 	.area CSEG    (CODE)
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'putchar'
                                    544 ;------------------------------------------------------------
                                    545 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    546 ;------------------------------------------------------------
                                    547 ;	spi_dac.c:89: int putchar(int charToSend) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function putchar
                                    550 ;	-----------------------------------------
      0030AD                        551 _putchar:
                           000007   552 	ar7 = 0x07
                           000006   553 	ar6 = 0x06
                           000005   554 	ar5 = 0x05
                           000004   555 	ar4 = 0x04
                           000003   556 	ar3 = 0x03
                           000002   557 	ar2 = 0x02
                           000001   558 	ar1 = 0x01
                           000000   559 	ar0 = 0x00
      0030AD AF 83            [24]  560 	mov	r7,dph
      0030AF E5 82            [12]  561 	mov	a,dpl
      0030B1 90 04 00         [24]  562 	mov	dptr,#_putchar_charToSend_65536_17
      0030B4 F0               [24]  563 	movx	@dptr,a
      0030B5 EF               [12]  564 	mov	a,r7
      0030B6 A3               [24]  565 	inc	dptr
      0030B7 F0               [24]  566 	movx	@dptr,a
                                    567 ;	spi_dac.c:90: SBUF = charToSend;       /* Load character into serial buffer */
      0030B8 90 04 00         [24]  568 	mov	dptr,#_putchar_charToSend_65536_17
      0030BB E0               [24]  569 	movx	a,@dptr
      0030BC FE               [12]  570 	mov	r6,a
      0030BD A3               [24]  571 	inc	dptr
      0030BE E0               [24]  572 	movx	a,@dptr
      0030BF FF               [12]  573 	mov	r7,a
      0030C0 8E 99            [24]  574 	mov	_SBUF,r6
                                    575 ;	spi_dac.c:91: while (!TI);             /* Wait for transmission completion */
      0030C2                        576 00101$:
                                    577 ;	spi_dac.c:92: TI = 0;                  /* Clear transmission flag */
                                    578 ;	assignBit
      0030C2 10 99 02         [24]  579 	jbc	_TI,00114$
      0030C5 80 FB            [24]  580 	sjmp	00101$
      0030C7                        581 00114$:
                                    582 ;	spi_dac.c:93: return charToSend;
      0030C7 8E 82            [24]  583 	mov	dpl,r6
      0030C9 8F 83            [24]  584 	mov	dph,r7
                                    585 ;	spi_dac.c:94: }
      0030CB 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'getchar'
                                    589 ;------------------------------------------------------------
                                    590 ;	spi_dac.c:100: int getchar(void) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function getchar
                                    593 ;	-----------------------------------------
      0030CC                        594 _getchar:
                                    595 ;	spi_dac.c:101: while (!RI);             /* Wait for reception completion */
      0030CC                        596 00101$:
                                    597 ;	spi_dac.c:102: RI = 0;                  /* Clear reception flag */
                                    598 ;	assignBit
      0030CC 10 98 02         [24]  599 	jbc	_RI,00114$
      0030CF 80 FB            [24]  600 	sjmp	00101$
      0030D1                        601 00114$:
                                    602 ;	spi_dac.c:103: return SBUF;             /* Return received character */
      0030D1 AE 99            [24]  603 	mov	r6,_SBUF
      0030D3 7F 00            [12]  604 	mov	r7,#0x00
      0030D5 8E 82            [24]  605 	mov	dpl,r6
      0030D7 8F 83            [24]  606 	mov	dph,r7
                                    607 ;	spi_dac.c:104: }
      0030D9 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'main'
                                    611 ;------------------------------------------------------------
                                    612 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_23'
                                    613 ;dac_data                  Allocated with name '_main_dac_data_65537_23'
                                    614 ;------------------------------------------------------------
                                    615 ;	spi_dac.c:106: int main(void)
                                    616 ;	-----------------------------------------
                                    617 ;	 function main
                                    618 ;	-----------------------------------------
      0030DA                        619 _main:
                                    620 ;	spi_dac.c:108: printf(" SPI DAC PROGRAM\n\r");
      0030DA 74 93            [12]  621 	mov	a,#___str_0
      0030DC C0 E0            [24]  622 	push	acc
      0030DE 74 3C            [12]  623 	mov	a,#(___str_0 >> 8)
      0030E0 C0 E0            [24]  624 	push	acc
      0030E2 74 80            [12]  625 	mov	a,#0x80
      0030E4 C0 E0            [24]  626 	push	acc
      0030E6 12 31 CD         [24]  627 	lcall	_printf
      0030E9 15 81            [12]  628 	dec	sp
      0030EB 15 81            [12]  629 	dec	sp
      0030ED 15 81            [12]  630 	dec	sp
                                    631 ;	spi_dac.c:114: EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts
      0030EF 7F 01            [12]  632 	mov	r7,#0x01
      0030F1 A2 AF            [12]  633 	mov	c,_EA
                                    634 ;	assignBit
      0030F3 EF               [12]  635 	mov	a,r7
      0030F4 24 FF            [12]  636 	add	a,#0xff
      0030F6 92 AF            [24]  637 	mov	_EA,c
                                    638 ;	spi_dac.c:117: spi_init();
      0030F8 12 31 5F         [24]  639 	lcall	_spi_init
                                    640 ;	spi_dac.c:118: spi_transmission_start();
      0030FB 12 31 75         [24]  641 	lcall	_spi_transmission_start
                                    642 ;	spi_dac.c:120: printf("SPI TRANSMISSION STARTED\n\r");
      0030FE 74 A6            [12]  643 	mov	a,#___str_1
      003100 C0 E0            [24]  644 	push	acc
      003102 74 3C            [12]  645 	mov	a,#(___str_1 >> 8)
      003104 C0 E0            [24]  646 	push	acc
      003106 74 80            [12]  647 	mov	a,#0x80
      003108 C0 E0            [24]  648 	push	acc
      00310A 12 31 CD         [24]  649 	lcall	_printf
      00310D 15 81            [12]  650 	dec	sp
      00310F 15 81            [12]  651 	dec	sp
      003111 15 81            [12]  652 	dec	sp
                                    653 ;	spi_dac.c:173: }
      003113 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'timer0_init'
                                    657 ;------------------------------------------------------------
                                    658 ;	spi_dac.c:175: void timer0_init(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function timer0_init
                                    661 ;	-----------------------------------------
      003114                        662 _timer0_init:
                                    663 ;	spi_dac.c:177: TMOD &= 0xF0;    // Clear Timer0 mode bits
      003114 53 89 F0         [24]  664 	anl	_TMOD,#0xf0
                                    665 ;	spi_dac.c:178: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      003117 43 89 01         [24]  666 	orl	_TMOD,#0x01
                                    667 ;	spi_dac.c:181: TH0 = TH0_RELOAD;
      00311A 75 8C FC         [24]  668 	mov	_TH0,#0xfc
                                    669 ;	spi_dac.c:182: TL0 = TL0_RELOAD;
      00311D 75 8A 18         [24]  670 	mov	_TL0,#0x18
                                    671 ;	spi_dac.c:184: ET0 = 1;         // Enable Timer0 interrupt
                                    672 ;	assignBit
      003120 D2 A9            [12]  673 	setb	_ET0
                                    674 ;	spi_dac.c:185: TR0 = 1;         // Start Timer0
                                    675 ;	assignBit
      003122 D2 8C            [12]  676 	setb	_TR0
                                    677 ;	spi_dac.c:186: }
      003124 22               [24]  678 	ret
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'timer0_isr'
                                    681 ;------------------------------------------------------------
                                    682 ;	spi_dac.c:189: void timer0_isr(void) __interrupt 1
                                    683 ;	-----------------------------------------
                                    684 ;	 function timer0_isr
                                    685 ;	-----------------------------------------
      003125                        686 _timer0_isr:
      003125 C0 E0            [24]  687 	push	acc
      003127 C0 82            [24]  688 	push	dpl
      003129 C0 83            [24]  689 	push	dph
                                    690 ;	spi_dac.c:192: TH0 = TH0_RELOAD;
      00312B 75 8C FC         [24]  691 	mov	_TH0,#0xfc
                                    692 ;	spi_dac.c:193: TL0 = TL0_RELOAD;
      00312E 75 8A 18         [24]  693 	mov	_TL0,#0x18
                                    694 ;	spi_dac.c:195: ms_flag = 1;     // Set 1ms flag
      003131 90 04 3B         [24]  695 	mov	dptr,#_ms_flag
      003134 74 01            [12]  696 	mov	a,#0x01
      003136 F0               [24]  697 	movx	@dptr,a
                                    698 ;	spi_dac.c:196: P1_0 = !P1_0;    // Toggle P1.0 for verification
      003137 B2 90            [12]  699 	cpl	_P1_0
                                    700 ;	spi_dac.c:197: }
      003139 D0 83            [24]  701 	pop	dph
      00313B D0 82            [24]  702 	pop	dpl
      00313D D0 E0            [24]  703 	pop	acc
      00313F 32               [24]  704 	reti
                                    705 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    706 ;	eliminated unneeded push/pop psw
                                    707 ;	eliminated unneeded push/pop b
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'spi_isr'
                                    710 ;------------------------------------------------------------
                                    711 ;	spi_dac.c:205: void spi_isr(void) __interrupt 9
                                    712 ;	-----------------------------------------
                                    713 ;	 function spi_isr
                                    714 ;	-----------------------------------------
      003140                        715 _spi_isr:
      003140 C0 E0            [24]  716 	push	acc
      003142 C0 82            [24]  717 	push	dpl
      003144 C0 83            [24]  718 	push	dph
      003146 C0 D0            [24]  719 	push	psw
                                    720 ;	spi_dac.c:207: if(SPSTA == 0x80)  // Check for successful transmission
      003148 74 80            [12]  721 	mov	a,#0x80
      00314A B5 C4 09         [24]  722 	cjne	a,_SPSTA,00103$
                                    723 ;	spi_dac.c:209: transmission_complete = 1;
      00314D 90 04 3C         [24]  724 	mov	dptr,#_transmission_complete
      003150 74 01            [12]  725 	mov	a,#0x01
      003152 F0               [24]  726 	movx	@dptr,a
      003153 E4               [12]  727 	clr	a
      003154 A3               [24]  728 	inc	dptr
      003155 F0               [24]  729 	movx	@dptr,a
      003156                        730 00103$:
                                    731 ;	spi_dac.c:211: }
      003156 D0 D0            [24]  732 	pop	psw
      003158 D0 83            [24]  733 	pop	dph
      00315A D0 82            [24]  734 	pop	dpl
      00315C D0 E0            [24]  735 	pop	acc
      00315E 32               [24]  736 	reti
                                    737 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    738 ;	eliminated unneeded push/pop b
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'spi_init'
                                    741 ;------------------------------------------------------------
                                    742 ;	spi_dac.c:223: void spi_init(void) 
                                    743 ;	-----------------------------------------
                                    744 ;	 function spi_init
                                    745 ;	-----------------------------------------
      00315F                        746 _spi_init:
                                    747 ;	spi_dac.c:226: SPCON = 0;
      00315F 75 C3 00         [24]  748 	mov	_SPCON,#0x00
                                    749 ;	spi_dac.c:232: SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
      003162 85 C3 C3         [24]  750 	mov	_SPCON,_SPCON
                                    751 ;	spi_dac.c:233: SPCON |= SPI_MASTER_MODE;      // Set as master
      003165 43 C3 10         [24]  752 	orl	_SPCON,#0x10
                                    753 ;	spi_dac.c:234: SPCON |= SPI_CPOL_HIGH;        // Clock polarity active high
      003168 43 C3 08         [24]  754 	orl	_SPCON,#0x08
                                    755 ;	spi_dac.c:235: SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge
      00316B 53 C3 FB         [24]  756 	anl	_SPCON,#0xfb
                                    757 ;	spi_dac.c:236: SPCON &= ~SPI_SSDIS;
      00316E 53 C3 DF         [24]  758 	anl	_SPCON,#0xdf
                                    759 ;	spi_dac.c:240: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      003171 43 B1 08         [24]  760 	orl	_IEN1,#0x08
                                    761 ;	spi_dac.c:242: }
      003174 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'spi_transmission_start'
                                    765 ;------------------------------------------------------------
                                    766 ;	spi_dac.c:249: void spi_transmission_start(void)
                                    767 ;	-----------------------------------------
                                    768 ;	 function spi_transmission_start
                                    769 ;	-----------------------------------------
      003175                        770 _spi_transmission_start:
                                    771 ;	spi_dac.c:251: SPCON |= SPI_ENABLE;           // Enable SPI
      003175 43 C3 40         [24]  772 	orl	_SPCON,#0x40
                                    773 ;	spi_dac.c:252: P1_1 = 0;
                                    774 ;	assignBit
      003178 C2 91            [12]  775 	clr	_P1_1
                                    776 ;	spi_dac.c:253: }
      00317A 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    780 ;------------------------------------------------------------
                                    781 ;	spi_dac.c:260: void spi_transmission_stop(void) 
                                    782 ;	-----------------------------------------
                                    783 ;	 function spi_transmission_stop
                                    784 ;	-----------------------------------------
      00317B                        785 _spi_transmission_stop:
                                    786 ;	spi_dac.c:262: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00317B 53 C3 BF         [24]  787 	anl	_SPCON,#0xbf
                                    788 ;	spi_dac.c:263: }
      00317E 22               [24]  789 	ret
                                    790 	.area CSEG    (CODE)
                                    791 	.area CONST   (CODE)
      003C2F                        792 _dac_values:
      003C2F 80 00                  793 	.byte #0x80, #0x00	;  128
      003C31 8F 00                  794 	.byte #0x8f, #0x00	;  143
      003C33 9F 00                  795 	.byte #0x9f, #0x00	;  159
      003C35 AE 00                  796 	.byte #0xae, #0x00	;  174
      003C37 BD 00                  797 	.byte #0xbd, #0x00	;  189
      003C39 CA 00                  798 	.byte #0xca, #0x00	;  202
      003C3B D7 00                  799 	.byte #0xd7, #0x00	;  215
      003C3D E2 00                  800 	.byte #0xe2, #0x00	;  226
      003C3F EB 00                  801 	.byte #0xeb, #0x00	;  235
      003C41 F3 00                  802 	.byte #0xf3, #0x00	;  243
      003C43 F9 00                  803 	.byte #0xf9, #0x00	;  249
      003C45 FD 00                  804 	.byte #0xfd, #0x00	;  253
      003C47 FF 00                  805 	.byte #0xff, #0x00	;  255
      003C49 FF 00                  806 	.byte #0xff, #0x00	;  255
      003C4B FD 00                  807 	.byte #0xfd, #0x00	;  253
      003C4D F9 00                  808 	.byte #0xf9, #0x00	;  249
      003C4F F3 00                  809 	.byte #0xf3, #0x00	;  243
      003C51 EB 00                  810 	.byte #0xeb, #0x00	;  235
      003C53 E2 00                  811 	.byte #0xe2, #0x00	;  226
      003C55 D7 00                  812 	.byte #0xd7, #0x00	;  215
      003C57 CA 00                  813 	.byte #0xca, #0x00	;  202
      003C59 BD 00                  814 	.byte #0xbd, #0x00	;  189
      003C5B AE 00                  815 	.byte #0xae, #0x00	;  174
      003C5D 9F 00                  816 	.byte #0x9f, #0x00	;  159
      003C5F 8F 00                  817 	.byte #0x8f, #0x00	;  143
      003C61 80 00                  818 	.byte #0x80, #0x00	;  128
      003C63 70 00                  819 	.byte #0x70, #0x00	;  112
      003C65 60 00                  820 	.byte #0x60, #0x00	;  96
      003C67 51 00                  821 	.byte #0x51, #0x00	;  81
      003C69 42 00                  822 	.byte #0x42, #0x00	;  66
      003C6B 35 00                  823 	.byte #0x35, #0x00	;  53
      003C6D 28 00                  824 	.byte #0x28, #0x00	;  40
      003C6F 1D 00                  825 	.byte #0x1d, #0x00	;  29
      003C71 14 00                  826 	.byte #0x14, #0x00	;  20
      003C73 0C 00                  827 	.byte #0x0c, #0x00	;  12
      003C75 06 00                  828 	.byte #0x06, #0x00	;  6
      003C77 02 00                  829 	.byte #0x02, #0x00	;  2
      003C79 00 00                  830 	.byte #0x00, #0x00	;  0
      003C7B 00 00                  831 	.byte #0x00, #0x00	;  0
      003C7D 02 00                  832 	.byte #0x02, #0x00	;  2
      003C7F 06 00                  833 	.byte #0x06, #0x00	;  6
      003C81 0C 00                  834 	.byte #0x0c, #0x00	;  12
      003C83 14 00                  835 	.byte #0x14, #0x00	;  20
      003C85 1D 00                  836 	.byte #0x1d, #0x00	;  29
      003C87 28 00                  837 	.byte #0x28, #0x00	;  40
      003C89 35 00                  838 	.byte #0x35, #0x00	;  53
      003C8B 42 00                  839 	.byte #0x42, #0x00	;  66
      003C8D 51 00                  840 	.byte #0x51, #0x00	;  81
      003C8F 60 00                  841 	.byte #0x60, #0x00	;  96
      003C91 70 00                  842 	.byte #0x70, #0x00	;  112
                                    843 	.area CONST   (CODE)
      003C93                        844 ___str_0:
      003C93 20 53 50 49 20 44 41   845 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      003CA3 0A                     846 	.db 0x0a
      003CA4 0D                     847 	.db 0x0d
      003CA5 00                     848 	.db 0x00
                                    849 	.area CSEG    (CODE)
                                    850 	.area CONST   (CODE)
      003CA6                        851 ___str_1:
      003CA6 53 50 49 20 54 52 41   852 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003CBE 0A                     853 	.db 0x0a
      003CBF 0D                     854 	.db 0x0d
      003CC0 00                     855 	.db 0x00
                                    856 	.area CSEG    (CODE)
                                    857 	.area XINIT   (CODE)
      003CCC                        858 __xinit__ms_flag:
      003CCC 00                     859 	.db #0x00	; 0
      003CCD                        860 __xinit__transmission_complete:
      003CCD 00 00                  861 	.byte #0x00, #0x00	;  0
                                    862 	.area CABS    (ABS,CODE)
