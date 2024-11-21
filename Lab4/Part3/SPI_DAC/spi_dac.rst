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
      00300B 02 32 35         [24]  502 	ljmp	_timer0_isr
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
      00304B 02 32 50         [24]  518 	ljmp	_spi_isr
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
      0030DA 74 A3            [12]  627 	mov	a,#___str_0
      0030DC C0 E0            [24]  628 	push	acc
      0030DE 74 3D            [12]  629 	mov	a,#(___str_0 >> 8)
      0030E0 C0 E0            [24]  630 	push	acc
      0030E2 74 80            [12]  631 	mov	a,#0x80
      0030E4 C0 E0            [24]  632 	push	acc
      0030E6 12 32 DD         [24]  633 	lcall	_printf
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
      003105 12 32 6F         [24]  656 	lcall	_spi_init
                                    657 ;	spi_dac.c:118: spi_transmission_start();
      003108 12 32 85         [24]  658 	lcall	_spi_transmission_start
                                    659 ;	spi_dac.c:120: printf("SPI TRANSMISSION STARTED\n\r");
      00310B 74 B6            [12]  660 	mov	a,#___str_1
      00310D C0 E0            [24]  661 	push	acc
      00310F 74 3D            [12]  662 	mov	a,#(___str_1 >> 8)
      003111 C0 E0            [24]  663 	push	acc
      003113 74 80            [12]  664 	mov	a,#0x80
      003115 C0 E0            [24]  665 	push	acc
      003117 12 32 DD         [24]  666 	lcall	_printf
      00311A 15 81            [12]  667 	dec	sp
      00311C 15 81            [12]  668 	dec	sp
      00311E 15 81            [12]  669 	dec	sp
                                    670 ;	spi_dac.c:124: timer0_init();
      003120 12 32 24         [24]  671 	lcall	_timer0_init
                                    672 ;	spi_dac.c:126: while(1)
      003123                        673 00117$:
                                    674 ;	spi_dac.c:129: if(dac_value_index < SINE_MAX_INDEX)
      003123 90 04 02         [24]  675 	mov	dptr,#_main_dac_value_index_65537_23
      003126 E0               [24]  676 	movx	a,@dptr
      003127 FE               [12]  677 	mov	r6,a
      003128 A3               [24]  678 	inc	dptr
      003129 E0               [24]  679 	movx	a,@dptr
      00312A FF               [12]  680 	mov	r7,a
      00312B C3               [12]  681 	clr	c
      00312C EE               [12]  682 	mov	a,r6
      00312D 94 31            [12]  683 	subb	a,#0x31
      00312F EF               [12]  684 	mov	a,r7
      003130 64 80            [12]  685 	xrl	a,#0x80
      003132 94 80            [12]  686 	subb	a,#0x80
      003134 50 21            [24]  687 	jnc	00102$
                                    688 ;	spi_dac.c:133: dac_data = dac_values[dac_value_index];
      003136 EE               [12]  689 	mov	a,r6
      003137 2E               [12]  690 	add	a,r6
      003138 FE               [12]  691 	mov	r6,a
      003139 EF               [12]  692 	mov	a,r7
      00313A 33               [12]  693 	rlc	a
      00313B FF               [12]  694 	mov	r7,a
      00313C EE               [12]  695 	mov	a,r6
      00313D 24 3F            [12]  696 	add	a,#_dac_values
      00313F F5 82            [12]  697 	mov	dpl,a
      003141 EF               [12]  698 	mov	a,r7
      003142 34 3D            [12]  699 	addc	a,#(_dac_values >> 8)
      003144 F5 83            [12]  700 	mov	dph,a
      003146 E4               [12]  701 	clr	a
      003147 93               [24]  702 	movc	a,@a+dptr
      003148 FE               [12]  703 	mov	r6,a
      003149 A3               [24]  704 	inc	dptr
      00314A E4               [12]  705 	clr	a
      00314B 93               [24]  706 	movc	a,@a+dptr
      00314C FF               [12]  707 	mov	r7,a
      00314D 90 04 04         [24]  708 	mov	dptr,#_main_dac_data_65537_23
      003150 EE               [12]  709 	mov	a,r6
      003151 F0               [24]  710 	movx	@dptr,a
      003152 EF               [12]  711 	mov	a,r7
      003153 A3               [24]  712 	inc	dptr
      003154 F0               [24]  713 	movx	@dptr,a
      003155 80 07            [24]  714 	sjmp	00103$
      003157                        715 00102$:
                                    716 ;	spi_dac.c:137: dac_value_index = 0;  // Reset index for next cycle
      003157 90 04 02         [24]  717 	mov	dptr,#_main_dac_value_index_65537_23
      00315A E4               [12]  718 	clr	a
      00315B F0               [24]  719 	movx	@dptr,a
      00315C A3               [24]  720 	inc	dptr
      00315D F0               [24]  721 	movx	@dptr,a
      00315E                        722 00103$:
                                    723 ;	spi_dac.c:143: ((dac_data >> 4) & 0x0F);
      00315E 90 04 04         [24]  724 	mov	dptr,#_main_dac_data_65537_23
      003161 E0               [24]  725 	movx	a,@dptr
      003162 FE               [12]  726 	mov	r6,a
      003163 A3               [24]  727 	inc	dptr
      003164 E0               [24]  728 	movx	a,@dptr
      003165 8E 04            [24]  729 	mov	ar4,r6
      003167 C4               [12]  730 	swap	a
      003168 CC               [12]  731 	xch	a,r4
      003169 C4               [12]  732 	swap	a
      00316A 54 0F            [12]  733 	anl	a,#0x0f
      00316C 6C               [12]  734 	xrl	a,r4
      00316D CC               [12]  735 	xch	a,r4
      00316E 54 0F            [12]  736 	anl	a,#0x0f
      003170 CC               [12]  737 	xch	a,r4
      003171 6C               [12]  738 	xrl	a,r4
      003172 CC               [12]  739 	xch	a,r4
      003173 30 E3 02         [24]  740 	jnb	acc.3,00162$
      003176 44 F0            [12]  741 	orl	a,#0xf0
      003178                        742 00162$:
      003178 74 0F            [12]  743 	mov	a,#0x0f
      00317A 5C               [12]  744 	anl	a,r4
      00317B 44 30            [12]  745 	orl	a,#0x30
      00317D FD               [12]  746 	mov	r5,a
                                    747 ;	spi_dac.c:146: low_byte = (dac_data & 0x0F) << 4;
      00317E 53 06 0F         [24]  748 	anl	ar6,#0x0f
      003181 EE               [12]  749 	mov	a,r6
      003182 C4               [12]  750 	swap	a
      003183 54 F0            [12]  751 	anl	a,#0xf0
      003185 FF               [12]  752 	mov	r7,a
                                    753 ;	spi_dac.c:148: while(!ms_flag);
      003186                        754 00104$:
      003186 90 04 3F         [24]  755 	mov	dptr,#_ms_flag
      003189 E0               [24]  756 	movx	a,@dptr
      00318A 60 FA            [24]  757 	jz	00104$
                                    758 ;	spi_dac.c:149: ms_flag = 0;
      00318C 90 04 3F         [24]  759 	mov	dptr,#_ms_flag
      00318F E4               [12]  760 	clr	a
      003190 F0               [24]  761 	movx	@dptr,a
                                    762 ;	spi_dac.c:152: P1_1 = 0;  // Select DAC
                                    763 ;	assignBit
      003191 C2 91            [12]  764 	clr	_P1_1
                                    765 ;	spi_dac.c:154: printf("Low byte %d\n", low_byte);
      003193 8F 06            [24]  766 	mov	ar6,r7
      003195 7C 00            [12]  767 	mov	r4,#0x00
      003197 C0 07            [24]  768 	push	ar7
      003199 C0 05            [24]  769 	push	ar5
      00319B C0 06            [24]  770 	push	ar6
      00319D C0 04            [24]  771 	push	ar4
      00319F 74 D1            [12]  772 	mov	a,#___str_2
      0031A1 C0 E0            [24]  773 	push	acc
      0031A3 74 3D            [12]  774 	mov	a,#(___str_2 >> 8)
      0031A5 C0 E0            [24]  775 	push	acc
      0031A7 74 80            [12]  776 	mov	a,#0x80
      0031A9 C0 E0            [24]  777 	push	acc
      0031AB 12 32 DD         [24]  778 	lcall	_printf
      0031AE E5 81            [12]  779 	mov	a,sp
      0031B0 24 FB            [12]  780 	add	a,#0xfb
      0031B2 F5 81            [12]  781 	mov	sp,a
      0031B4 D0 05            [24]  782 	pop	ar5
                                    783 ;	spi_dac.c:155: printf("High byte %d\n", high_byte);
      0031B6 8D 04            [24]  784 	mov	ar4,r5
      0031B8 7E 00            [12]  785 	mov	r6,#0x00
      0031BA C0 05            [24]  786 	push	ar5
      0031BC C0 04            [24]  787 	push	ar4
      0031BE C0 06            [24]  788 	push	ar6
      0031C0 74 DE            [12]  789 	mov	a,#___str_3
      0031C2 C0 E0            [24]  790 	push	acc
      0031C4 74 3D            [12]  791 	mov	a,#(___str_3 >> 8)
      0031C6 C0 E0            [24]  792 	push	acc
      0031C8 74 80            [12]  793 	mov	a,#0x80
      0031CA C0 E0            [24]  794 	push	acc
      0031CC 12 32 DD         [24]  795 	lcall	_printf
      0031CF E5 81            [12]  796 	mov	a,sp
      0031D1 24 FB            [12]  797 	add	a,#0xfb
      0031D3 F5 81            [12]  798 	mov	sp,a
      0031D5 D0 05            [24]  799 	pop	ar5
      0031D7 D0 07            [24]  800 	pop	ar7
                                    801 ;	spi_dac.c:158: SPDAT = high_byte;
      0031D9 8D C5            [24]  802 	mov	_SPDAT,r5
                                    803 ;	spi_dac.c:159: while(!transmission_complete);
      0031DB                        804 00107$:
      0031DB 90 04 40         [24]  805 	mov	dptr,#_transmission_complete
      0031DE E0               [24]  806 	movx	a,@dptr
      0031DF FD               [12]  807 	mov	r5,a
      0031E0 A3               [24]  808 	inc	dptr
      0031E1 E0               [24]  809 	movx	a,@dptr
      0031E2 FE               [12]  810 	mov	r6,a
      0031E3 4D               [12]  811 	orl	a,r5
      0031E4 60 F5            [24]  812 	jz	00107$
                                    813 ;	spi_dac.c:160: transmission_complete = 0;
      0031E6 90 04 40         [24]  814 	mov	dptr,#_transmission_complete
      0031E9 E4               [12]  815 	clr	a
      0031EA F0               [24]  816 	movx	@dptr,a
      0031EB A3               [24]  817 	inc	dptr
      0031EC F0               [24]  818 	movx	@dptr,a
                                    819 ;	spi_dac.c:163: SPDAT = low_byte;
      0031ED 8F C5            [24]  820 	mov	_SPDAT,r7
                                    821 ;	spi_dac.c:164: while(!transmission_complete);
      0031EF                        822 00110$:
      0031EF 90 04 40         [24]  823 	mov	dptr,#_transmission_complete
      0031F2 E0               [24]  824 	movx	a,@dptr
      0031F3 FE               [12]  825 	mov	r6,a
      0031F4 A3               [24]  826 	inc	dptr
      0031F5 E0               [24]  827 	movx	a,@dptr
      0031F6 FF               [12]  828 	mov	r7,a
      0031F7 4E               [12]  829 	orl	a,r6
      0031F8 60 F5            [24]  830 	jz	00110$
                                    831 ;	spi_dac.c:165: transmission_complete = 0;
      0031FA 90 04 40         [24]  832 	mov	dptr,#_transmission_complete
      0031FD E4               [12]  833 	clr	a
      0031FE F0               [24]  834 	movx	@dptr,a
      0031FF A3               [24]  835 	inc	dptr
      003200 F0               [24]  836 	movx	@dptr,a
                                    837 ;	spi_dac.c:167: P1_1 = 1;  // Deselect DAC
                                    838 ;	assignBit
      003201 D2 91            [12]  839 	setb	_P1_1
                                    840 ;	spi_dac.c:168: while(!transmission_complete);
      003203                        841 00113$:
      003203 90 04 40         [24]  842 	mov	dptr,#_transmission_complete
      003206 E0               [24]  843 	movx	a,@dptr
      003207 FE               [12]  844 	mov	r6,a
      003208 A3               [24]  845 	inc	dptr
      003209 E0               [24]  846 	movx	a,@dptr
      00320A FF               [12]  847 	mov	r7,a
      00320B 4E               [12]  848 	orl	a,r6
      00320C 60 F5            [24]  849 	jz	00113$
                                    850 ;	spi_dac.c:169: transmission_complete = 0;
      00320E 90 04 40         [24]  851 	mov	dptr,#_transmission_complete
      003211 E4               [12]  852 	clr	a
      003212 F0               [24]  853 	movx	@dptr,a
      003213 A3               [24]  854 	inc	dptr
      003214 F0               [24]  855 	movx	@dptr,a
                                    856 ;	spi_dac.c:171: dac_value_index++;
      003215 90 04 02         [24]  857 	mov	dptr,#_main_dac_value_index_65537_23
      003218 E0               [24]  858 	movx	a,@dptr
      003219 24 01            [12]  859 	add	a,#0x01
      00321B F0               [24]  860 	movx	@dptr,a
      00321C A3               [24]  861 	inc	dptr
      00321D E0               [24]  862 	movx	a,@dptr
      00321E 34 00            [12]  863 	addc	a,#0x00
      003220 F0               [24]  864 	movx	@dptr,a
                                    865 ;	spi_dac.c:173: }
      003221 02 31 23         [24]  866 	ljmp	00117$
                                    867 ;------------------------------------------------------------
                                    868 ;Allocation info for local variables in function 'timer0_init'
                                    869 ;------------------------------------------------------------
                                    870 ;	spi_dac.c:175: void timer0_init(void)
                                    871 ;	-----------------------------------------
                                    872 ;	 function timer0_init
                                    873 ;	-----------------------------------------
      003224                        874 _timer0_init:
                                    875 ;	spi_dac.c:177: TMOD &= 0xF0;    // Clear Timer0 mode bits
      003224 53 89 F0         [24]  876 	anl	_TMOD,#0xf0
                                    877 ;	spi_dac.c:178: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      003227 43 89 01         [24]  878 	orl	_TMOD,#0x01
                                    879 ;	spi_dac.c:181: TH0 = TH0_RELOAD;
      00322A 75 8C FC         [24]  880 	mov	_TH0,#0xfc
                                    881 ;	spi_dac.c:182: TL0 = TL0_RELOAD;
      00322D 75 8A 18         [24]  882 	mov	_TL0,#0x18
                                    883 ;	spi_dac.c:184: ET0 = 1;         // Enable Timer0 interrupt
                                    884 ;	assignBit
      003230 D2 A9            [12]  885 	setb	_ET0
                                    886 ;	spi_dac.c:185: TR0 = 1;         // Start Timer0
                                    887 ;	assignBit
      003232 D2 8C            [12]  888 	setb	_TR0
                                    889 ;	spi_dac.c:186: }
      003234 22               [24]  890 	ret
                                    891 ;------------------------------------------------------------
                                    892 ;Allocation info for local variables in function 'timer0_isr'
                                    893 ;------------------------------------------------------------
                                    894 ;	spi_dac.c:189: void timer0_isr(void) __interrupt 1
                                    895 ;	-----------------------------------------
                                    896 ;	 function timer0_isr
                                    897 ;	-----------------------------------------
      003235                        898 _timer0_isr:
      003235 C0 E0            [24]  899 	push	acc
      003237 C0 82            [24]  900 	push	dpl
      003239 C0 83            [24]  901 	push	dph
                                    902 ;	spi_dac.c:192: TH0 = TH0_RELOAD;
      00323B 75 8C FC         [24]  903 	mov	_TH0,#0xfc
                                    904 ;	spi_dac.c:193: TL0 = TL0_RELOAD;
      00323E 75 8A 18         [24]  905 	mov	_TL0,#0x18
                                    906 ;	spi_dac.c:195: ms_flag = 1;     // Set 1ms flag
      003241 90 04 3F         [24]  907 	mov	dptr,#_ms_flag
      003244 74 01            [12]  908 	mov	a,#0x01
      003246 F0               [24]  909 	movx	@dptr,a
                                    910 ;	spi_dac.c:196: P1_0 = !P1_0;    // Toggle P1.0 for verification
      003247 B2 90            [12]  911 	cpl	_P1_0
                                    912 ;	spi_dac.c:197: }
      003249 D0 83            [24]  913 	pop	dph
      00324B D0 82            [24]  914 	pop	dpl
      00324D D0 E0            [24]  915 	pop	acc
      00324F 32               [24]  916 	reti
                                    917 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    918 ;	eliminated unneeded push/pop psw
                                    919 ;	eliminated unneeded push/pop b
                                    920 ;------------------------------------------------------------
                                    921 ;Allocation info for local variables in function 'spi_isr'
                                    922 ;------------------------------------------------------------
                                    923 ;	spi_dac.c:205: void spi_isr(void) __interrupt 9
                                    924 ;	-----------------------------------------
                                    925 ;	 function spi_isr
                                    926 ;	-----------------------------------------
      003250                        927 _spi_isr:
      003250 C0 E0            [24]  928 	push	acc
      003252 C0 82            [24]  929 	push	dpl
      003254 C0 83            [24]  930 	push	dph
      003256 C0 D0            [24]  931 	push	psw
                                    932 ;	spi_dac.c:207: if(SPSTA == 0x80)  // Check for successful transmission
      003258 74 80            [12]  933 	mov	a,#0x80
      00325A B5 C4 09         [24]  934 	cjne	a,_SPSTA,00103$
                                    935 ;	spi_dac.c:209: transmission_complete = 1;
      00325D 90 04 40         [24]  936 	mov	dptr,#_transmission_complete
      003260 74 01            [12]  937 	mov	a,#0x01
      003262 F0               [24]  938 	movx	@dptr,a
      003263 E4               [12]  939 	clr	a
      003264 A3               [24]  940 	inc	dptr
      003265 F0               [24]  941 	movx	@dptr,a
      003266                        942 00103$:
                                    943 ;	spi_dac.c:211: }
      003266 D0 D0            [24]  944 	pop	psw
      003268 D0 83            [24]  945 	pop	dph
      00326A D0 82            [24]  946 	pop	dpl
      00326C D0 E0            [24]  947 	pop	acc
      00326E 32               [24]  948 	reti
                                    949 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    950 ;	eliminated unneeded push/pop b
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'spi_init'
                                    953 ;------------------------------------------------------------
                                    954 ;	spi_dac.c:223: void spi_init(void) 
                                    955 ;	-----------------------------------------
                                    956 ;	 function spi_init
                                    957 ;	-----------------------------------------
      00326F                        958 _spi_init:
                                    959 ;	spi_dac.c:226: SPCON = 0;
      00326F 75 C3 00         [24]  960 	mov	_SPCON,#0x00
                                    961 ;	spi_dac.c:232: SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
      003272 85 C3 C3         [24]  962 	mov	_SPCON,_SPCON
                                    963 ;	spi_dac.c:233: SPCON |= SPI_MASTER_MODE;      // Set as master
      003275 43 C3 10         [24]  964 	orl	_SPCON,#0x10
                                    965 ;	spi_dac.c:234: SPCON |= SPI_CPOL_HIGH;        // Clock polarity active high
      003278 43 C3 08         [24]  966 	orl	_SPCON,#0x08
                                    967 ;	spi_dac.c:235: SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge
      00327B 53 C3 FB         [24]  968 	anl	_SPCON,#0xfb
                                    969 ;	spi_dac.c:236: SPCON &= ~SPI_SSDIS;
      00327E 53 C3 DF         [24]  970 	anl	_SPCON,#0xdf
                                    971 ;	spi_dac.c:240: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      003281 43 B1 08         [24]  972 	orl	_IEN1,#0x08
                                    973 ;	spi_dac.c:242: }
      003284 22               [24]  974 	ret
                                    975 ;------------------------------------------------------------
                                    976 ;Allocation info for local variables in function 'spi_transmission_start'
                                    977 ;------------------------------------------------------------
                                    978 ;	spi_dac.c:249: void spi_transmission_start(void)
                                    979 ;	-----------------------------------------
                                    980 ;	 function spi_transmission_start
                                    981 ;	-----------------------------------------
      003285                        982 _spi_transmission_start:
                                    983 ;	spi_dac.c:251: SPCON |= SPI_ENABLE;           // Enable SPI
      003285 43 C3 40         [24]  984 	orl	_SPCON,#0x40
                                    985 ;	spi_dac.c:252: P1_1 = 0;
                                    986 ;	assignBit
      003288 C2 91            [12]  987 	clr	_P1_1
                                    988 ;	spi_dac.c:253: }
      00328A 22               [24]  989 	ret
                                    990 ;------------------------------------------------------------
                                    991 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    992 ;------------------------------------------------------------
                                    993 ;	spi_dac.c:260: void spi_transmission_stop(void) 
                                    994 ;	-----------------------------------------
                                    995 ;	 function spi_transmission_stop
                                    996 ;	-----------------------------------------
      00328B                        997 _spi_transmission_stop:
                                    998 ;	spi_dac.c:262: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00328B 53 C3 BF         [24]  999 	anl	_SPCON,#0xbf
                                   1000 ;	spi_dac.c:263: }
      00328E 22               [24] 1001 	ret
                                   1002 	.area CSEG    (CODE)
                                   1003 	.area CONST   (CODE)
      003D3F                       1004 _dac_values:
      003D3F 80 00                 1005 	.byte #0x80, #0x00	;  128
      003D41 8F 00                 1006 	.byte #0x8f, #0x00	;  143
      003D43 9F 00                 1007 	.byte #0x9f, #0x00	;  159
      003D45 AE 00                 1008 	.byte #0xae, #0x00	;  174
      003D47 BD 00                 1009 	.byte #0xbd, #0x00	;  189
      003D49 CA 00                 1010 	.byte #0xca, #0x00	;  202
      003D4B D7 00                 1011 	.byte #0xd7, #0x00	;  215
      003D4D E2 00                 1012 	.byte #0xe2, #0x00	;  226
      003D4F EB 00                 1013 	.byte #0xeb, #0x00	;  235
      003D51 F3 00                 1014 	.byte #0xf3, #0x00	;  243
      003D53 F9 00                 1015 	.byte #0xf9, #0x00	;  249
      003D55 FD 00                 1016 	.byte #0xfd, #0x00	;  253
      003D57 FF 00                 1017 	.byte #0xff, #0x00	;  255
      003D59 FF 00                 1018 	.byte #0xff, #0x00	;  255
      003D5B FD 00                 1019 	.byte #0xfd, #0x00	;  253
      003D5D F9 00                 1020 	.byte #0xf9, #0x00	;  249
      003D5F F3 00                 1021 	.byte #0xf3, #0x00	;  243
      003D61 EB 00                 1022 	.byte #0xeb, #0x00	;  235
      003D63 E2 00                 1023 	.byte #0xe2, #0x00	;  226
      003D65 D7 00                 1024 	.byte #0xd7, #0x00	;  215
      003D67 CA 00                 1025 	.byte #0xca, #0x00	;  202
      003D69 BD 00                 1026 	.byte #0xbd, #0x00	;  189
      003D6B AE 00                 1027 	.byte #0xae, #0x00	;  174
      003D6D 9F 00                 1028 	.byte #0x9f, #0x00	;  159
      003D6F 8F 00                 1029 	.byte #0x8f, #0x00	;  143
      003D71 80 00                 1030 	.byte #0x80, #0x00	;  128
      003D73 70 00                 1031 	.byte #0x70, #0x00	;  112
      003D75 60 00                 1032 	.byte #0x60, #0x00	;  96
      003D77 51 00                 1033 	.byte #0x51, #0x00	;  81
      003D79 42 00                 1034 	.byte #0x42, #0x00	;  66
      003D7B 35 00                 1035 	.byte #0x35, #0x00	;  53
      003D7D 28 00                 1036 	.byte #0x28, #0x00	;  40
      003D7F 1D 00                 1037 	.byte #0x1d, #0x00	;  29
      003D81 14 00                 1038 	.byte #0x14, #0x00	;  20
      003D83 0C 00                 1039 	.byte #0x0c, #0x00	;  12
      003D85 06 00                 1040 	.byte #0x06, #0x00	;  6
      003D87 02 00                 1041 	.byte #0x02, #0x00	;  2
      003D89 00 00                 1042 	.byte #0x00, #0x00	;  0
      003D8B 00 00                 1043 	.byte #0x00, #0x00	;  0
      003D8D 02 00                 1044 	.byte #0x02, #0x00	;  2
      003D8F 06 00                 1045 	.byte #0x06, #0x00	;  6
      003D91 0C 00                 1046 	.byte #0x0c, #0x00	;  12
      003D93 14 00                 1047 	.byte #0x14, #0x00	;  20
      003D95 1D 00                 1048 	.byte #0x1d, #0x00	;  29
      003D97 28 00                 1049 	.byte #0x28, #0x00	;  40
      003D99 35 00                 1050 	.byte #0x35, #0x00	;  53
      003D9B 42 00                 1051 	.byte #0x42, #0x00	;  66
      003D9D 51 00                 1052 	.byte #0x51, #0x00	;  81
      003D9F 60 00                 1053 	.byte #0x60, #0x00	;  96
      003DA1 70 00                 1054 	.byte #0x70, #0x00	;  112
                                   1055 	.area CONST   (CODE)
      003DA3                       1056 ___str_0:
      003DA3 20 53 50 49 20 44 41  1057 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      003DB3 0A                    1058 	.db 0x0a
      003DB4 0D                    1059 	.db 0x0d
      003DB5 00                    1060 	.db 0x00
                                   1061 	.area CSEG    (CODE)
                                   1062 	.area CONST   (CODE)
      003DB6                       1063 ___str_1:
      003DB6 53 50 49 20 54 52 41  1064 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003DCE 0A                    1065 	.db 0x0a
      003DCF 0D                    1066 	.db 0x0d
      003DD0 00                    1067 	.db 0x00
                                   1068 	.area CSEG    (CODE)
                                   1069 	.area CONST   (CODE)
      003DD1                       1070 ___str_2:
      003DD1 4C 6F 77 20 62 79 74  1071 	.ascii "Low byte %d"
             65 20 25 64
      003DDC 0A                    1072 	.db 0x0a
      003DDD 00                    1073 	.db 0x00
                                   1074 	.area CSEG    (CODE)
                                   1075 	.area CONST   (CODE)
      003DDE                       1076 ___str_3:
      003DDE 48 69 67 68 20 62 79  1077 	.ascii "High byte %d"
             74 65 20 25 64
      003DEA 0A                    1078 	.db 0x0a
      003DEB 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area XINIT   (CODE)
      003DF7                       1082 __xinit__ms_flag:
      003DF7 00                    1083 	.db #0x00	; 0
      003DF8                       1084 __xinit__transmission_complete:
      003DF8 00 00                 1085 	.byte #0x00, #0x00	;  0
                                   1086 	.area CABS    (ABS,CODE)
