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
      000402                        468 _main_dac_value_index_65537_23:
      000402                        469 	.ds 2
      000404                        470 _main_dac_data_65537_23:
      000404                        471 	.ds 2
                                    472 ;--------------------------------------------------------
                                    473 ; absolute external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XABS    (ABS,XDATA)
                                    476 ;--------------------------------------------------------
                                    477 ; external initialized ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area XISEG   (XDATA)
      00043F                        480 _ms_flag::
      00043F                        481 	.ds 1
      000440                        482 _transmission_complete::
      000440                        483 	.ds 2
                                    484 	.area HOME    (CODE)
                                    485 	.area GSINIT0 (CODE)
                                    486 	.area GSINIT1 (CODE)
                                    487 	.area GSINIT2 (CODE)
                                    488 	.area GSINIT3 (CODE)
                                    489 	.area GSINIT4 (CODE)
                                    490 	.area GSINIT5 (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.area GSFINAL (CODE)
                                    493 	.area CSEG    (CODE)
                                    494 ;--------------------------------------------------------
                                    495 ; interrupt vector 
                                    496 ;--------------------------------------------------------
                                    497 	.area HOME    (CODE)
      003000                        498 __interrupt_vect:
      003000 02 30 51         [24]  499 	ljmp	__sdcc_gsinit_startup
      003003 32               [24]  500 	reti
      003004                        501 	.ds	7
      00300B 02 32 32         [24]  502 	ljmp	_timer0_isr
      00300E                        503 	.ds	5
      003013 32               [24]  504 	reti
      003014                        505 	.ds	7
      00301B 32               [24]  506 	reti
      00301C                        507 	.ds	7
      003023 32               [24]  508 	reti
      003024                        509 	.ds	7
      00302B 32               [24]  510 	reti
      00302C                        511 	.ds	7
      003033 32               [24]  512 	reti
      003034                        513 	.ds	7
      00303B 32               [24]  514 	reti
      00303C                        515 	.ds	7
      003043 32               [24]  516 	reti
      003044                        517 	.ds	7
      00304B 02 32 4D         [24]  518 	ljmp	_spi_isr
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      0030AA 02 30 4E         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      00304E                        539 __sdcc_program_startup:
      00304E 02 30 DA         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    550 ;------------------------------------------------------------
                                    551 ;	spi_dac.c:89: int putchar(int charToSend) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      0030AD                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      0030AD AF 83            [24]  564 	mov	r7,dph
      0030AF E5 82            [12]  565 	mov	a,dpl
      0030B1 90 04 00         [24]  566 	mov	dptr,#_putchar_charToSend_65536_17
      0030B4 F0               [24]  567 	movx	@dptr,a
      0030B5 EF               [12]  568 	mov	a,r7
      0030B6 A3               [24]  569 	inc	dptr
      0030B7 F0               [24]  570 	movx	@dptr,a
                                    571 ;	spi_dac.c:90: SBUF = charToSend;       /* Load character into serial buffer */
      0030B8 90 04 00         [24]  572 	mov	dptr,#_putchar_charToSend_65536_17
      0030BB E0               [24]  573 	movx	a,@dptr
      0030BC FE               [12]  574 	mov	r6,a
      0030BD A3               [24]  575 	inc	dptr
      0030BE E0               [24]  576 	movx	a,@dptr
      0030BF FF               [12]  577 	mov	r7,a
      0030C0 8E 99            [24]  578 	mov	_SBUF,r6
                                    579 ;	spi_dac.c:91: while (!TI);             /* Wait for transmission completion */
      0030C2                        580 00101$:
                                    581 ;	spi_dac.c:92: TI = 0;                  /* Clear transmission flag */
                                    582 ;	assignBit
      0030C2 10 99 02         [24]  583 	jbc	_TI,00114$
      0030C5 80 FB            [24]  584 	sjmp	00101$
      0030C7                        585 00114$:
                                    586 ;	spi_dac.c:93: return charToSend;
      0030C7 8E 82            [24]  587 	mov	dpl,r6
      0030C9 8F 83            [24]  588 	mov	dph,r7
                                    589 ;	spi_dac.c:94: }
      0030CB 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'getchar'
                                    593 ;------------------------------------------------------------
                                    594 ;	spi_dac.c:100: int getchar(void) {
                                    595 ;	-----------------------------------------
                                    596 ;	 function getchar
                                    597 ;	-----------------------------------------
      0030CC                        598 _getchar:
                                    599 ;	spi_dac.c:101: while (!RI);             /* Wait for reception completion */
      0030CC                        600 00101$:
                                    601 ;	spi_dac.c:102: RI = 0;                  /* Clear reception flag */
                                    602 ;	assignBit
      0030CC 10 98 02         [24]  603 	jbc	_RI,00114$
      0030CF 80 FB            [24]  604 	sjmp	00101$
      0030D1                        605 00114$:
                                    606 ;	spi_dac.c:103: return SBUF;             /* Return received character */
      0030D1 AE 99            [24]  607 	mov	r6,_SBUF
      0030D3 7F 00            [12]  608 	mov	r7,#0x00
      0030D5 8E 82            [24]  609 	mov	dpl,r6
      0030D7 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	spi_dac.c:104: }
      0030D9 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'main'
                                    615 ;------------------------------------------------------------
                                    616 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_23'
                                    617 ;dac_data                  Allocated with name '_main_dac_data_65537_23'
                                    618 ;high_byte                 Allocated with name '_main_high_byte_65538_24'
                                    619 ;low_byte                  Allocated with name '_main_low_byte_65538_24'
                                    620 ;------------------------------------------------------------
                                    621 ;	spi_dac.c:106: int main(void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function main
                                    624 ;	-----------------------------------------
      0030DA                        625 _main:
                                    626 ;	spi_dac.c:108: printf(" SPI DAC PROGRAM\n\r");
      0030DA 74 A2            [12]  627 	mov	a,#___str_0
      0030DC C0 E0            [24]  628 	push	acc
      0030DE 74 3D            [12]  629 	mov	a,#(___str_0 >> 8)
      0030E0 C0 E0            [24]  630 	push	acc
      0030E2 74 80            [12]  631 	mov	a,#0x80
      0030E4 C0 E0            [24]  632 	push	acc
      0030E6 12 32 DC         [24]  633 	lcall	_printf
      0030E9 15 81            [12]  634 	dec	sp
      0030EB 15 81            [12]  635 	dec	sp
      0030ED 15 81            [12]  636 	dec	sp
                                    637 ;	spi_dac.c:110: int dac_value_index = 0;
      0030EF 90 04 02         [24]  638 	mov	dptr,#_main_dac_value_index_65537_23
      0030F2 E4               [12]  639 	clr	a
      0030F3 F0               [24]  640 	movx	@dptr,a
      0030F4 A3               [24]  641 	inc	dptr
      0030F5 F0               [24]  642 	movx	@dptr,a
                                    643 ;	spi_dac.c:111: int dac_data = 0;
      0030F6 90 04 04         [24]  644 	mov	dptr,#_main_dac_data_65537_23
      0030F9 F0               [24]  645 	movx	@dptr,a
      0030FA A3               [24]  646 	inc	dptr
      0030FB F0               [24]  647 	movx	@dptr,a
                                    648 ;	spi_dac.c:114: EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts
      0030FC 7F 01            [12]  649 	mov	r7,#0x01
      0030FE A2 AF            [12]  650 	mov	c,_EA
                                    651 ;	assignBit
      003100 EF               [12]  652 	mov	a,r7
      003101 24 FF            [12]  653 	add	a,#0xff
      003103 92 AF            [24]  654 	mov	_EA,c
                                    655 ;	spi_dac.c:117: spi_init();
      003105 12 32 6C         [24]  656 	lcall	_spi_init
                                    657 ;	spi_dac.c:120: printf("SPI TRANSMISSION STARTED\n\r");
      003108 74 B5            [12]  658 	mov	a,#___str_1
      00310A C0 E0            [24]  659 	push	acc
      00310C 74 3D            [12]  660 	mov	a,#(___str_1 >> 8)
      00310E C0 E0            [24]  661 	push	acc
      003110 74 80            [12]  662 	mov	a,#0x80
      003112 C0 E0            [24]  663 	push	acc
      003114 12 32 DC         [24]  664 	lcall	_printf
      003117 15 81            [12]  665 	dec	sp
      003119 15 81            [12]  666 	dec	sp
      00311B 15 81            [12]  667 	dec	sp
                                    668 ;	spi_dac.c:124: timer0_init();
      00311D 12 32 21         [24]  669 	lcall	_timer0_init
                                    670 ;	spi_dac.c:126: while(1)
      003120                        671 00117$:
                                    672 ;	spi_dac.c:129: if(dac_value_index < SINE_MAX_INDEX)
      003120 90 04 02         [24]  673 	mov	dptr,#_main_dac_value_index_65537_23
      003123 E0               [24]  674 	movx	a,@dptr
      003124 FE               [12]  675 	mov	r6,a
      003125 A3               [24]  676 	inc	dptr
      003126 E0               [24]  677 	movx	a,@dptr
      003127 FF               [12]  678 	mov	r7,a
      003128 C3               [12]  679 	clr	c
      003129 EE               [12]  680 	mov	a,r6
      00312A 94 31            [12]  681 	subb	a,#0x31
      00312C EF               [12]  682 	mov	a,r7
      00312D 64 80            [12]  683 	xrl	a,#0x80
      00312F 94 80            [12]  684 	subb	a,#0x80
      003131 50 21            [24]  685 	jnc	00102$
                                    686 ;	spi_dac.c:133: dac_data = dac_values[dac_value_index];
      003133 EE               [12]  687 	mov	a,r6
      003134 2E               [12]  688 	add	a,r6
      003135 FE               [12]  689 	mov	r6,a
      003136 EF               [12]  690 	mov	a,r7
      003137 33               [12]  691 	rlc	a
      003138 FF               [12]  692 	mov	r7,a
      003139 EE               [12]  693 	mov	a,r6
      00313A 24 3E            [12]  694 	add	a,#_dac_values
      00313C F5 82            [12]  695 	mov	dpl,a
      00313E EF               [12]  696 	mov	a,r7
      00313F 34 3D            [12]  697 	addc	a,#(_dac_values >> 8)
      003141 F5 83            [12]  698 	mov	dph,a
      003143 E4               [12]  699 	clr	a
      003144 93               [24]  700 	movc	a,@a+dptr
      003145 FE               [12]  701 	mov	r6,a
      003146 A3               [24]  702 	inc	dptr
      003147 E4               [12]  703 	clr	a
      003148 93               [24]  704 	movc	a,@a+dptr
      003149 FF               [12]  705 	mov	r7,a
      00314A 90 04 04         [24]  706 	mov	dptr,#_main_dac_data_65537_23
      00314D EE               [12]  707 	mov	a,r6
      00314E F0               [24]  708 	movx	@dptr,a
      00314F EF               [12]  709 	mov	a,r7
      003150 A3               [24]  710 	inc	dptr
      003151 F0               [24]  711 	movx	@dptr,a
      003152 80 07            [24]  712 	sjmp	00103$
      003154                        713 00102$:
                                    714 ;	spi_dac.c:137: dac_value_index = 0;  // Reset index for next cycle
      003154 90 04 02         [24]  715 	mov	dptr,#_main_dac_value_index_65537_23
      003157 E4               [12]  716 	clr	a
      003158 F0               [24]  717 	movx	@dptr,a
      003159 A3               [24]  718 	inc	dptr
      00315A F0               [24]  719 	movx	@dptr,a
      00315B                        720 00103$:
                                    721 ;	spi_dac.c:143: ((dac_data >> 4) & 0x0F);
      00315B 90 04 04         [24]  722 	mov	dptr,#_main_dac_data_65537_23
      00315E E0               [24]  723 	movx	a,@dptr
      00315F FE               [12]  724 	mov	r6,a
      003160 A3               [24]  725 	inc	dptr
      003161 E0               [24]  726 	movx	a,@dptr
      003162 8E 04            [24]  727 	mov	ar4,r6
      003164 C4               [12]  728 	swap	a
      003165 CC               [12]  729 	xch	a,r4
      003166 C4               [12]  730 	swap	a
      003167 54 0F            [12]  731 	anl	a,#0x0f
      003169 6C               [12]  732 	xrl	a,r4
      00316A CC               [12]  733 	xch	a,r4
      00316B 54 0F            [12]  734 	anl	a,#0x0f
      00316D CC               [12]  735 	xch	a,r4
      00316E 6C               [12]  736 	xrl	a,r4
      00316F CC               [12]  737 	xch	a,r4
      003170 30 E3 02         [24]  738 	jnb	acc.3,00162$
      003173 44 F0            [12]  739 	orl	a,#0xf0
      003175                        740 00162$:
      003175 74 0F            [12]  741 	mov	a,#0x0f
      003177 5C               [12]  742 	anl	a,r4
      003178 44 30            [12]  743 	orl	a,#0x30
      00317A FD               [12]  744 	mov	r5,a
                                    745 ;	spi_dac.c:146: low_byte = (dac_data & 0x0F) << 4;
      00317B 53 06 0F         [24]  746 	anl	ar6,#0x0f
      00317E EE               [12]  747 	mov	a,r6
      00317F C4               [12]  748 	swap	a
      003180 54 F0            [12]  749 	anl	a,#0xf0
      003182 FF               [12]  750 	mov	r7,a
                                    751 ;	spi_dac.c:148: while(!ms_flag);
      003183                        752 00104$:
      003183 90 04 3F         [24]  753 	mov	dptr,#_ms_flag
      003186 E0               [24]  754 	movx	a,@dptr
      003187 60 FA            [24]  755 	jz	00104$
                                    756 ;	spi_dac.c:149: ms_flag = 0;
      003189 90 04 3F         [24]  757 	mov	dptr,#_ms_flag
      00318C E4               [12]  758 	clr	a
      00318D F0               [24]  759 	movx	@dptr,a
                                    760 ;	spi_dac.c:152: P1_1 = 0;  // Select DAC
                                    761 ;	assignBit
      00318E C2 91            [12]  762 	clr	_P1_1
                                    763 ;	spi_dac.c:154: printf("Low byte %d\n", low_byte);
      003190 8F 06            [24]  764 	mov	ar6,r7
      003192 7C 00            [12]  765 	mov	r4,#0x00
      003194 C0 07            [24]  766 	push	ar7
      003196 C0 05            [24]  767 	push	ar5
      003198 C0 06            [24]  768 	push	ar6
      00319A C0 04            [24]  769 	push	ar4
      00319C 74 D0            [12]  770 	mov	a,#___str_2
      00319E C0 E0            [24]  771 	push	acc
      0031A0 74 3D            [12]  772 	mov	a,#(___str_2 >> 8)
      0031A2 C0 E0            [24]  773 	push	acc
      0031A4 74 80            [12]  774 	mov	a,#0x80
      0031A6 C0 E0            [24]  775 	push	acc
      0031A8 12 32 DC         [24]  776 	lcall	_printf
      0031AB E5 81            [12]  777 	mov	a,sp
      0031AD 24 FB            [12]  778 	add	a,#0xfb
      0031AF F5 81            [12]  779 	mov	sp,a
      0031B1 D0 05            [24]  780 	pop	ar5
                                    781 ;	spi_dac.c:155: printf("High byte %d\n", high_byte);
      0031B3 8D 04            [24]  782 	mov	ar4,r5
      0031B5 7E 00            [12]  783 	mov	r6,#0x00
      0031B7 C0 05            [24]  784 	push	ar5
      0031B9 C0 04            [24]  785 	push	ar4
      0031BB C0 06            [24]  786 	push	ar6
      0031BD 74 DD            [12]  787 	mov	a,#___str_3
      0031BF C0 E0            [24]  788 	push	acc
      0031C1 74 3D            [12]  789 	mov	a,#(___str_3 >> 8)
      0031C3 C0 E0            [24]  790 	push	acc
      0031C5 74 80            [12]  791 	mov	a,#0x80
      0031C7 C0 E0            [24]  792 	push	acc
      0031C9 12 32 DC         [24]  793 	lcall	_printf
      0031CC E5 81            [12]  794 	mov	a,sp
      0031CE 24 FB            [12]  795 	add	a,#0xfb
      0031D0 F5 81            [12]  796 	mov	sp,a
      0031D2 D0 05            [24]  797 	pop	ar5
      0031D4 D0 07            [24]  798 	pop	ar7
                                    799 ;	spi_dac.c:158: SPDAT = high_byte;
      0031D6 8D C5            [24]  800 	mov	_SPDAT,r5
                                    801 ;	spi_dac.c:159: while(!transmission_complete);
      0031D8                        802 00107$:
      0031D8 90 04 40         [24]  803 	mov	dptr,#_transmission_complete
      0031DB E0               [24]  804 	movx	a,@dptr
      0031DC FD               [12]  805 	mov	r5,a
      0031DD A3               [24]  806 	inc	dptr
      0031DE E0               [24]  807 	movx	a,@dptr
      0031DF FE               [12]  808 	mov	r6,a
      0031E0 4D               [12]  809 	orl	a,r5
      0031E1 60 F5            [24]  810 	jz	00107$
                                    811 ;	spi_dac.c:160: transmission_complete = 0;
      0031E3 90 04 40         [24]  812 	mov	dptr,#_transmission_complete
      0031E6 E4               [12]  813 	clr	a
      0031E7 F0               [24]  814 	movx	@dptr,a
      0031E8 A3               [24]  815 	inc	dptr
      0031E9 F0               [24]  816 	movx	@dptr,a
                                    817 ;	spi_dac.c:163: SPDAT = low_byte;
      0031EA 8F C5            [24]  818 	mov	_SPDAT,r7
                                    819 ;	spi_dac.c:164: while(!transmission_complete);
      0031EC                        820 00110$:
      0031EC 90 04 40         [24]  821 	mov	dptr,#_transmission_complete
      0031EF E0               [24]  822 	movx	a,@dptr
      0031F0 FE               [12]  823 	mov	r6,a
      0031F1 A3               [24]  824 	inc	dptr
      0031F2 E0               [24]  825 	movx	a,@dptr
      0031F3 FF               [12]  826 	mov	r7,a
      0031F4 4E               [12]  827 	orl	a,r6
      0031F5 60 F5            [24]  828 	jz	00110$
                                    829 ;	spi_dac.c:165: transmission_complete = 0;
      0031F7 90 04 40         [24]  830 	mov	dptr,#_transmission_complete
      0031FA E4               [12]  831 	clr	a
      0031FB F0               [24]  832 	movx	@dptr,a
      0031FC A3               [24]  833 	inc	dptr
      0031FD F0               [24]  834 	movx	@dptr,a
                                    835 ;	spi_dac.c:167: P1_1 = 1;  // Deselect DAC
                                    836 ;	assignBit
      0031FE D2 91            [12]  837 	setb	_P1_1
                                    838 ;	spi_dac.c:168: while(!transmission_complete);
      003200                        839 00113$:
      003200 90 04 40         [24]  840 	mov	dptr,#_transmission_complete
      003203 E0               [24]  841 	movx	a,@dptr
      003204 FE               [12]  842 	mov	r6,a
      003205 A3               [24]  843 	inc	dptr
      003206 E0               [24]  844 	movx	a,@dptr
      003207 FF               [12]  845 	mov	r7,a
      003208 4E               [12]  846 	orl	a,r6
      003209 60 F5            [24]  847 	jz	00113$
                                    848 ;	spi_dac.c:169: transmission_complete = 0;
      00320B 90 04 40         [24]  849 	mov	dptr,#_transmission_complete
      00320E E4               [12]  850 	clr	a
      00320F F0               [24]  851 	movx	@dptr,a
      003210 A3               [24]  852 	inc	dptr
      003211 F0               [24]  853 	movx	@dptr,a
                                    854 ;	spi_dac.c:171: dac_value_index++;
      003212 90 04 02         [24]  855 	mov	dptr,#_main_dac_value_index_65537_23
      003215 E0               [24]  856 	movx	a,@dptr
      003216 24 01            [12]  857 	add	a,#0x01
      003218 F0               [24]  858 	movx	@dptr,a
      003219 A3               [24]  859 	inc	dptr
      00321A E0               [24]  860 	movx	a,@dptr
      00321B 34 00            [12]  861 	addc	a,#0x00
      00321D F0               [24]  862 	movx	@dptr,a
                                    863 ;	spi_dac.c:173: }
      00321E 02 31 20         [24]  864 	ljmp	00117$
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'timer0_init'
                                    867 ;------------------------------------------------------------
                                    868 ;	spi_dac.c:175: void timer0_init(void)
                                    869 ;	-----------------------------------------
                                    870 ;	 function timer0_init
                                    871 ;	-----------------------------------------
      003221                        872 _timer0_init:
                                    873 ;	spi_dac.c:177: TMOD &= 0xF0;    // Clear Timer0 mode bits
      003221 53 89 F0         [24]  874 	anl	_TMOD,#0xf0
                                    875 ;	spi_dac.c:178: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      003224 43 89 01         [24]  876 	orl	_TMOD,#0x01
                                    877 ;	spi_dac.c:181: TH0 = TH0_RELOAD;
      003227 75 8C FC         [24]  878 	mov	_TH0,#0xfc
                                    879 ;	spi_dac.c:182: TL0 = TL0_RELOAD;
      00322A 75 8A 18         [24]  880 	mov	_TL0,#0x18
                                    881 ;	spi_dac.c:184: ET0 = 1;         // Enable Timer0 interrupt
                                    882 ;	assignBit
      00322D D2 A9            [12]  883 	setb	_ET0
                                    884 ;	spi_dac.c:185: TR0 = 1;         // Start Timer0
                                    885 ;	assignBit
      00322F D2 8C            [12]  886 	setb	_TR0
                                    887 ;	spi_dac.c:186: }
      003231 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'timer0_isr'
                                    891 ;------------------------------------------------------------
                                    892 ;	spi_dac.c:189: void timer0_isr(void) __interrupt 1
                                    893 ;	-----------------------------------------
                                    894 ;	 function timer0_isr
                                    895 ;	-----------------------------------------
      003232                        896 _timer0_isr:
      003232 C0 E0            [24]  897 	push	acc
      003234 C0 82            [24]  898 	push	dpl
      003236 C0 83            [24]  899 	push	dph
                                    900 ;	spi_dac.c:192: TH0 = TH0_RELOAD;
      003238 75 8C FC         [24]  901 	mov	_TH0,#0xfc
                                    902 ;	spi_dac.c:193: TL0 = TL0_RELOAD;
      00323B 75 8A 18         [24]  903 	mov	_TL0,#0x18
                                    904 ;	spi_dac.c:195: ms_flag = 1;     // Set 1ms flag
      00323E 90 04 3F         [24]  905 	mov	dptr,#_ms_flag
      003241 74 01            [12]  906 	mov	a,#0x01
      003243 F0               [24]  907 	movx	@dptr,a
                                    908 ;	spi_dac.c:196: P1_0 = !P1_0;    // Toggle P1.0 for verification
      003244 B2 90            [12]  909 	cpl	_P1_0
                                    910 ;	spi_dac.c:197: }
      003246 D0 83            [24]  911 	pop	dph
      003248 D0 82            [24]  912 	pop	dpl
      00324A D0 E0            [24]  913 	pop	acc
      00324C 32               [24]  914 	reti
                                    915 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    916 ;	eliminated unneeded push/pop psw
                                    917 ;	eliminated unneeded push/pop b
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'spi_isr'
                                    920 ;------------------------------------------------------------
                                    921 ;	spi_dac.c:205: void spi_isr(void) __interrupt 9
                                    922 ;	-----------------------------------------
                                    923 ;	 function spi_isr
                                    924 ;	-----------------------------------------
      00324D                        925 _spi_isr:
      00324D C0 E0            [24]  926 	push	acc
      00324F C0 82            [24]  927 	push	dpl
      003251 C0 83            [24]  928 	push	dph
      003253 C0 D0            [24]  929 	push	psw
                                    930 ;	spi_dac.c:207: if(SPSTA == 0x80)  // Check for successful transmission
      003255 74 80            [12]  931 	mov	a,#0x80
      003257 B5 C4 09         [24]  932 	cjne	a,_SPSTA,00103$
                                    933 ;	spi_dac.c:209: transmission_complete = 1;
      00325A 90 04 40         [24]  934 	mov	dptr,#_transmission_complete
      00325D 74 01            [12]  935 	mov	a,#0x01
      00325F F0               [24]  936 	movx	@dptr,a
      003260 E4               [12]  937 	clr	a
      003261 A3               [24]  938 	inc	dptr
      003262 F0               [24]  939 	movx	@dptr,a
      003263                        940 00103$:
                                    941 ;	spi_dac.c:211: }
      003263 D0 D0            [24]  942 	pop	psw
      003265 D0 83            [24]  943 	pop	dph
      003267 D0 82            [24]  944 	pop	dpl
      003269 D0 E0            [24]  945 	pop	acc
      00326B 32               [24]  946 	reti
                                    947 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    948 ;	eliminated unneeded push/pop b
                                    949 ;------------------------------------------------------------
                                    950 ;Allocation info for local variables in function 'spi_init'
                                    951 ;------------------------------------------------------------
                                    952 ;	spi_dac.c:223: void spi_init(void) 
                                    953 ;	-----------------------------------------
                                    954 ;	 function spi_init
                                    955 ;	-----------------------------------------
      00326C                        956 _spi_init:
                                    957 ;	spi_dac.c:226: SPCON = 0;
      00326C 75 C3 00         [24]  958 	mov	_SPCON,#0x00
                                    959 ;	spi_dac.c:236: SPCON &= ~SPI_SSDIS;
      00326F 53 C3 DF         [24]  960 	anl	_SPCON,#0xdf
                                    961 ;	spi_dac.c:238: SPCON |= 0x10;
      003272 43 C3 10         [24]  962 	orl	_SPCON,#0x10
                                    963 ;	spi_dac.c:239: P1_1 = 1;
                                    964 ;	assignBit
      003275 D2 91            [12]  965 	setb	_P1_1
                                    966 ;	spi_dac.c:240: SPCON |= 0x82;
      003277 43 C3 82         [24]  967 	orl	_SPCON,#0x82
                                    968 ;	spi_dac.c:241: SPCON &= ~ 0x08;
      00327A 53 C3 F7         [24]  969 	anl	_SPCON,#0xf7
                                    970 ;	spi_dac.c:242: SPCON |= 0x40;
      00327D 43 C3 40         [24]  971 	orl	_SPCON,#0x40
                                    972 ;	spi_dac.c:247: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      003280 43 B1 08         [24]  973 	orl	_IEN1,#0x08
                                    974 ;	spi_dac.c:249: }
      003283 22               [24]  975 	ret
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'spi_transmission_start'
                                    978 ;------------------------------------------------------------
                                    979 ;	spi_dac.c:256: void spi_transmission_start(void)
                                    980 ;	-----------------------------------------
                                    981 ;	 function spi_transmission_start
                                    982 ;	-----------------------------------------
      003284                        983 _spi_transmission_start:
                                    984 ;	spi_dac.c:258: SPCON |= SPI_ENABLE;           // Enable SPI
      003284 43 C3 40         [24]  985 	orl	_SPCON,#0x40
                                    986 ;	spi_dac.c:259: P1_1 = 0;
                                    987 ;	assignBit
      003287 C2 91            [12]  988 	clr	_P1_1
                                    989 ;	spi_dac.c:260: }
      003289 22               [24]  990 	ret
                                    991 ;------------------------------------------------------------
                                    992 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    993 ;------------------------------------------------------------
                                    994 ;	spi_dac.c:267: void spi_transmission_stop(void) 
                                    995 ;	-----------------------------------------
                                    996 ;	 function spi_transmission_stop
                                    997 ;	-----------------------------------------
      00328A                        998 _spi_transmission_stop:
                                    999 ;	spi_dac.c:269: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00328A 53 C3 BF         [24] 1000 	anl	_SPCON,#0xbf
                                   1001 ;	spi_dac.c:270: }
      00328D 22               [24] 1002 	ret
                                   1003 	.area CSEG    (CODE)
                                   1004 	.area CONST   (CODE)
      003D3E                       1005 _dac_values:
      003D3E 80 00                 1006 	.byte #0x80, #0x00	;  128
      003D40 8F 00                 1007 	.byte #0x8f, #0x00	;  143
      003D42 9F 00                 1008 	.byte #0x9f, #0x00	;  159
      003D44 AE 00                 1009 	.byte #0xae, #0x00	;  174
      003D46 BD 00                 1010 	.byte #0xbd, #0x00	;  189
      003D48 CA 00                 1011 	.byte #0xca, #0x00	;  202
      003D4A D7 00                 1012 	.byte #0xd7, #0x00	;  215
      003D4C E2 00                 1013 	.byte #0xe2, #0x00	;  226
      003D4E EB 00                 1014 	.byte #0xeb, #0x00	;  235
      003D50 F3 00                 1015 	.byte #0xf3, #0x00	;  243
      003D52 F9 00                 1016 	.byte #0xf9, #0x00	;  249
      003D54 FD 00                 1017 	.byte #0xfd, #0x00	;  253
      003D56 FF 00                 1018 	.byte #0xff, #0x00	;  255
      003D58 FF 00                 1019 	.byte #0xff, #0x00	;  255
      003D5A FD 00                 1020 	.byte #0xfd, #0x00	;  253
      003D5C F9 00                 1021 	.byte #0xf9, #0x00	;  249
      003D5E F3 00                 1022 	.byte #0xf3, #0x00	;  243
      003D60 EB 00                 1023 	.byte #0xeb, #0x00	;  235
      003D62 E2 00                 1024 	.byte #0xe2, #0x00	;  226
      003D64 D7 00                 1025 	.byte #0xd7, #0x00	;  215
      003D66 CA 00                 1026 	.byte #0xca, #0x00	;  202
      003D68 BD 00                 1027 	.byte #0xbd, #0x00	;  189
      003D6A AE 00                 1028 	.byte #0xae, #0x00	;  174
      003D6C 9F 00                 1029 	.byte #0x9f, #0x00	;  159
      003D6E 8F 00                 1030 	.byte #0x8f, #0x00	;  143
      003D70 80 00                 1031 	.byte #0x80, #0x00	;  128
      003D72 70 00                 1032 	.byte #0x70, #0x00	;  112
      003D74 60 00                 1033 	.byte #0x60, #0x00	;  96
      003D76 51 00                 1034 	.byte #0x51, #0x00	;  81
      003D78 42 00                 1035 	.byte #0x42, #0x00	;  66
      003D7A 35 00                 1036 	.byte #0x35, #0x00	;  53
      003D7C 28 00                 1037 	.byte #0x28, #0x00	;  40
      003D7E 1D 00                 1038 	.byte #0x1d, #0x00	;  29
      003D80 14 00                 1039 	.byte #0x14, #0x00	;  20
      003D82 0C 00                 1040 	.byte #0x0c, #0x00	;  12
      003D84 06 00                 1041 	.byte #0x06, #0x00	;  6
      003D86 02 00                 1042 	.byte #0x02, #0x00	;  2
      003D88 00 00                 1043 	.byte #0x00, #0x00	;  0
      003D8A 00 00                 1044 	.byte #0x00, #0x00	;  0
      003D8C 02 00                 1045 	.byte #0x02, #0x00	;  2
      003D8E 06 00                 1046 	.byte #0x06, #0x00	;  6
      003D90 0C 00                 1047 	.byte #0x0c, #0x00	;  12
      003D92 14 00                 1048 	.byte #0x14, #0x00	;  20
      003D94 1D 00                 1049 	.byte #0x1d, #0x00	;  29
      003D96 28 00                 1050 	.byte #0x28, #0x00	;  40
      003D98 35 00                 1051 	.byte #0x35, #0x00	;  53
      003D9A 42 00                 1052 	.byte #0x42, #0x00	;  66
      003D9C 51 00                 1053 	.byte #0x51, #0x00	;  81
      003D9E 60 00                 1054 	.byte #0x60, #0x00	;  96
      003DA0 70 00                 1055 	.byte #0x70, #0x00	;  112
                                   1056 	.area CONST   (CODE)
      003DA2                       1057 ___str_0:
      003DA2 20 53 50 49 20 44 41  1058 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      003DB2 0A                    1059 	.db 0x0a
      003DB3 0D                    1060 	.db 0x0d
      003DB4 00                    1061 	.db 0x00
                                   1062 	.area CSEG    (CODE)
                                   1063 	.area CONST   (CODE)
      003DB5                       1064 ___str_1:
      003DB5 53 50 49 20 54 52 41  1065 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003DCD 0A                    1066 	.db 0x0a
      003DCE 0D                    1067 	.db 0x0d
      003DCF 00                    1068 	.db 0x00
                                   1069 	.area CSEG    (CODE)
                                   1070 	.area CONST   (CODE)
      003DD0                       1071 ___str_2:
      003DD0 4C 6F 77 20 62 79 74  1072 	.ascii "Low byte %d"
             65 20 25 64
      003DDB 0A                    1073 	.db 0x0a
      003DDC 00                    1074 	.db 0x00
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
      003DDD                       1077 ___str_3:
      003DDD 48 69 67 68 20 62 79  1078 	.ascii "High byte %d"
             74 65 20 25 64
      003DE9 0A                    1079 	.db 0x0a
      003DEA 00                    1080 	.db 0x00
                                   1081 	.area CSEG    (CODE)
                                   1082 	.area XINIT   (CODE)
      003DF6                       1083 __xinit__ms_flag:
      003DF6 00                    1084 	.db #0x00	; 0
      003DF7                       1085 __xinit__transmission_complete:
      003DF7 00 00                 1086 	.byte #0x00, #0x00	;  0
                                   1087 	.area CABS    (ABS,CODE)
