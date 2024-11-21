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
      002000                        498 __interrupt_vect:
      002000 02 20 51         [24]  499 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  500 	reti
      002004                        501 	.ds	7
      00200B 02 22 3E         [24]  502 	ljmp	_timer0_isr
      00200E                        503 	.ds	5
      002013 32               [24]  504 	reti
      002014                        505 	.ds	7
      00201B 32               [24]  506 	reti
      00201C                        507 	.ds	7
      002023 32               [24]  508 	reti
      002024                        509 	.ds	7
      00202B 32               [24]  510 	reti
      00202C                        511 	.ds	7
      002033 32               [24]  512 	reti
      002034                        513 	.ds	7
      00203B 32               [24]  514 	reti
      00203C                        515 	.ds	7
      002043 32               [24]  516 	reti
      002044                        517 	.ds	7
      00204B 02 22 5B         [24]  518 	ljmp	_spi_isr
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
      0020AA 02 20 4E         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      00204E                        539 __sdcc_program_startup:
      00204E 02 20 DA         [24]  540 	ljmp	_main
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
      0020AD                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      0020AD AF 83            [24]  564 	mov	r7,dph
      0020AF E5 82            [12]  565 	mov	a,dpl
      0020B1 90 04 00         [24]  566 	mov	dptr,#_putchar_charToSend_65536_17
      0020B4 F0               [24]  567 	movx	@dptr,a
      0020B5 EF               [12]  568 	mov	a,r7
      0020B6 A3               [24]  569 	inc	dptr
      0020B7 F0               [24]  570 	movx	@dptr,a
                                    571 ;	spi_dac.c:90: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  572 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  573 	movx	a,@dptr
      0020BC FE               [12]  574 	mov	r6,a
      0020BD A3               [24]  575 	inc	dptr
      0020BE E0               [24]  576 	movx	a,@dptr
      0020BF FF               [12]  577 	mov	r7,a
      0020C0 8E 99            [24]  578 	mov	_SBUF,r6
                                    579 ;	spi_dac.c:91: while (!TI);             /* Wait for transmission completion */
      0020C2                        580 00101$:
                                    581 ;	spi_dac.c:92: TI = 0;                  /* Clear transmission flag */
                                    582 ;	assignBit
      0020C2 10 99 02         [24]  583 	jbc	_TI,00114$
      0020C5 80 FB            [24]  584 	sjmp	00101$
      0020C7                        585 00114$:
                                    586 ;	spi_dac.c:93: return charToSend;
      0020C7 8E 82            [24]  587 	mov	dpl,r6
      0020C9 8F 83            [24]  588 	mov	dph,r7
                                    589 ;	spi_dac.c:94: }
      0020CB 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'getchar'
                                    593 ;------------------------------------------------------------
                                    594 ;	spi_dac.c:100: int getchar(void) {
                                    595 ;	-----------------------------------------
                                    596 ;	 function getchar
                                    597 ;	-----------------------------------------
      0020CC                        598 _getchar:
                                    599 ;	spi_dac.c:101: while (!RI);             /* Wait for reception completion */
      0020CC                        600 00101$:
                                    601 ;	spi_dac.c:102: RI = 0;                  /* Clear reception flag */
                                    602 ;	assignBit
      0020CC 10 98 02         [24]  603 	jbc	_RI,00114$
      0020CF 80 FB            [24]  604 	sjmp	00101$
      0020D1                        605 00114$:
                                    606 ;	spi_dac.c:103: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  607 	mov	r6,_SBUF
      0020D3 7F 00            [12]  608 	mov	r7,#0x00
      0020D5 8E 82            [24]  609 	mov	dpl,r6
      0020D7 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	spi_dac.c:104: }
      0020D9 22               [24]  612 	ret
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
      0020DA                        625 _main:
                                    626 ;	spi_dac.c:108: printf(" SPI DAC PROGRAM\n\r");
      0020DA 74 B0            [12]  627 	mov	a,#___str_0
      0020DC C0 E0            [24]  628 	push	acc
      0020DE 74 2D            [12]  629 	mov	a,#(___str_0 >> 8)
      0020E0 C0 E0            [24]  630 	push	acc
      0020E2 74 80            [12]  631 	mov	a,#0x80
      0020E4 C0 E0            [24]  632 	push	acc
      0020E6 12 22 EA         [24]  633 	lcall	_printf
      0020E9 15 81            [12]  634 	dec	sp
      0020EB 15 81            [12]  635 	dec	sp
      0020ED 15 81            [12]  636 	dec	sp
                                    637 ;	spi_dac.c:110: int dac_value_index = 0;
      0020EF 90 04 02         [24]  638 	mov	dptr,#_main_dac_value_index_65537_23
      0020F2 E4               [12]  639 	clr	a
      0020F3 F0               [24]  640 	movx	@dptr,a
      0020F4 A3               [24]  641 	inc	dptr
      0020F5 F0               [24]  642 	movx	@dptr,a
                                    643 ;	spi_dac.c:111: int dac_data = 0;
      0020F6 90 04 04         [24]  644 	mov	dptr,#_main_dac_data_65537_23
      0020F9 F0               [24]  645 	movx	@dptr,a
      0020FA A3               [24]  646 	inc	dptr
      0020FB F0               [24]  647 	movx	@dptr,a
                                    648 ;	spi_dac.c:114: EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts
      0020FC 7F 01            [12]  649 	mov	r7,#0x01
      0020FE A2 AF            [12]  650 	mov	c,_EA
                                    651 ;	assignBit
      002100 EF               [12]  652 	mov	a,r7
      002101 24 FF            [12]  653 	add	a,#0xff
      002103 92 AF            [24]  654 	mov	_EA,c
                                    655 ;	spi_dac.c:117: spi_init();
      002105 12 22 7A         [24]  656 	lcall	_spi_init
                                    657 ;	spi_dac.c:120: printf("SPI TRANSMISSION STARTED\n\r");
      002108 74 C3            [12]  658 	mov	a,#___str_1
      00210A C0 E0            [24]  659 	push	acc
      00210C 74 2D            [12]  660 	mov	a,#(___str_1 >> 8)
      00210E C0 E0            [24]  661 	push	acc
      002110 74 80            [12]  662 	mov	a,#0x80
      002112 C0 E0            [24]  663 	push	acc
      002114 12 22 EA         [24]  664 	lcall	_printf
      002117 15 81            [12]  665 	dec	sp
      002119 15 81            [12]  666 	dec	sp
      00211B 15 81            [12]  667 	dec	sp
                                    668 ;	spi_dac.c:124: timer0_init();
      00211D 12 22 2D         [24]  669 	lcall	_timer0_init
                                    670 ;	spi_dac.c:126: while(1)
      002120                        671 00117$:
                                    672 ;	spi_dac.c:129: if(dac_value_index < SINE_MAX_INDEX)
      002120 90 04 02         [24]  673 	mov	dptr,#_main_dac_value_index_65537_23
      002123 E0               [24]  674 	movx	a,@dptr
      002124 FE               [12]  675 	mov	r6,a
      002125 A3               [24]  676 	inc	dptr
      002126 E0               [24]  677 	movx	a,@dptr
      002127 FF               [12]  678 	mov	r7,a
      002128 C3               [12]  679 	clr	c
      002129 EE               [12]  680 	mov	a,r6
      00212A 94 31            [12]  681 	subb	a,#0x31
      00212C EF               [12]  682 	mov	a,r7
      00212D 64 80            [12]  683 	xrl	a,#0x80
      00212F 94 80            [12]  684 	subb	a,#0x80
      002131 50 21            [24]  685 	jnc	00102$
                                    686 ;	spi_dac.c:133: dac_data = dac_values[dac_value_index];
      002133 EE               [12]  687 	mov	a,r6
      002134 2E               [12]  688 	add	a,r6
      002135 FE               [12]  689 	mov	r6,a
      002136 EF               [12]  690 	mov	a,r7
      002137 33               [12]  691 	rlc	a
      002138 FF               [12]  692 	mov	r7,a
      002139 EE               [12]  693 	mov	a,r6
      00213A 24 4C            [12]  694 	add	a,#_dac_values
      00213C F5 82            [12]  695 	mov	dpl,a
      00213E EF               [12]  696 	mov	a,r7
      00213F 34 2D            [12]  697 	addc	a,#(_dac_values >> 8)
      002141 F5 83            [12]  698 	mov	dph,a
      002143 E4               [12]  699 	clr	a
      002144 93               [24]  700 	movc	a,@a+dptr
      002145 FE               [12]  701 	mov	r6,a
      002146 A3               [24]  702 	inc	dptr
      002147 E4               [12]  703 	clr	a
      002148 93               [24]  704 	movc	a,@a+dptr
      002149 FF               [12]  705 	mov	r7,a
      00214A 90 04 04         [24]  706 	mov	dptr,#_main_dac_data_65537_23
      00214D EE               [12]  707 	mov	a,r6
      00214E F0               [24]  708 	movx	@dptr,a
      00214F EF               [12]  709 	mov	a,r7
      002150 A3               [24]  710 	inc	dptr
      002151 F0               [24]  711 	movx	@dptr,a
      002152 80 07            [24]  712 	sjmp	00103$
      002154                        713 00102$:
                                    714 ;	spi_dac.c:137: dac_value_index = 0;  // Reset index for next cycle
      002154 90 04 02         [24]  715 	mov	dptr,#_main_dac_value_index_65537_23
      002157 E4               [12]  716 	clr	a
      002158 F0               [24]  717 	movx	@dptr,a
      002159 A3               [24]  718 	inc	dptr
      00215A F0               [24]  719 	movx	@dptr,a
      00215B                        720 00103$:
                                    721 ;	spi_dac.c:143: ((dac_data >> 4) & 0x0F);
      00215B 90 04 04         [24]  722 	mov	dptr,#_main_dac_data_65537_23
      00215E E0               [24]  723 	movx	a,@dptr
      00215F FE               [12]  724 	mov	r6,a
      002160 A3               [24]  725 	inc	dptr
      002161 E0               [24]  726 	movx	a,@dptr
      002162 8E 04            [24]  727 	mov	ar4,r6
      002164 C4               [12]  728 	swap	a
      002165 CC               [12]  729 	xch	a,r4
      002166 C4               [12]  730 	swap	a
      002167 54 0F            [12]  731 	anl	a,#0x0f
      002169 6C               [12]  732 	xrl	a,r4
      00216A CC               [12]  733 	xch	a,r4
      00216B 54 0F            [12]  734 	anl	a,#0x0f
      00216D CC               [12]  735 	xch	a,r4
      00216E 6C               [12]  736 	xrl	a,r4
      00216F CC               [12]  737 	xch	a,r4
      002170 30 E3 02         [24]  738 	jnb	acc.3,00162$
      002173 44 F0            [12]  739 	orl	a,#0xf0
      002175                        740 00162$:
      002175 53 04 0F         [24]  741 	anl	ar4,#0x0f
      002178 7D 00            [12]  742 	mov	r5,#0x00
      00217A 43 04 30         [24]  743 	orl	ar4,#0x30
                                    744 ;	spi_dac.c:146: low_byte = (dac_data & 0x0F) << 4;
      00217D 53 06 0F         [24]  745 	anl	ar6,#0x0f
      002180 E4               [12]  746 	clr	a
      002181 CE               [12]  747 	xch	a,r6
      002182 C4               [12]  748 	swap	a
      002183 CE               [12]  749 	xch	a,r6
      002184 6E               [12]  750 	xrl	a,r6
      002185 CE               [12]  751 	xch	a,r6
      002186 54 F0            [12]  752 	anl	a,#0xf0
      002188 CE               [12]  753 	xch	a,r6
      002189 6E               [12]  754 	xrl	a,r6
      00218A FF               [12]  755 	mov	r7,a
                                    756 ;	spi_dac.c:148: while(!ms_flag);
      00218B                        757 00104$:
      00218B 90 04 3F         [24]  758 	mov	dptr,#_ms_flag
      00218E E0               [24]  759 	movx	a,@dptr
      00218F 60 FA            [24]  760 	jz	00104$
                                    761 ;	spi_dac.c:149: ms_flag = 0;
      002191 90 04 3F         [24]  762 	mov	dptr,#_ms_flag
      002194 E4               [12]  763 	clr	a
      002195 F0               [24]  764 	movx	@dptr,a
                                    765 ;	spi_dac.c:152: P1_1 = 0;  // Select DAC
                                    766 ;	assignBit
      002196 C2 91            [12]  767 	clr	_P1_1
                                    768 ;	spi_dac.c:154: printf("Low byte %d\n", low_byte);
      002198 C0 07            [24]  769 	push	ar7
      00219A C0 06            [24]  770 	push	ar6
      00219C C0 05            [24]  771 	push	ar5
      00219E C0 04            [24]  772 	push	ar4
      0021A0 C0 06            [24]  773 	push	ar6
      0021A2 C0 07            [24]  774 	push	ar7
      0021A4 74 DE            [12]  775 	mov	a,#___str_2
      0021A6 C0 E0            [24]  776 	push	acc
      0021A8 74 2D            [12]  777 	mov	a,#(___str_2 >> 8)
      0021AA C0 E0            [24]  778 	push	acc
      0021AC 74 80            [12]  779 	mov	a,#0x80
      0021AE C0 E0            [24]  780 	push	acc
      0021B0 12 22 EA         [24]  781 	lcall	_printf
      0021B3 E5 81            [12]  782 	mov	a,sp
      0021B5 24 FB            [12]  783 	add	a,#0xfb
      0021B7 F5 81            [12]  784 	mov	sp,a
      0021B9 D0 04            [24]  785 	pop	ar4
      0021BB D0 05            [24]  786 	pop	ar5
                                    787 ;	spi_dac.c:155: printf("High byte %d\n", high_byte);
      0021BD C0 05            [24]  788 	push	ar5
      0021BF C0 04            [24]  789 	push	ar4
      0021C1 C0 04            [24]  790 	push	ar4
      0021C3 C0 05            [24]  791 	push	ar5
      0021C5 74 EB            [12]  792 	mov	a,#___str_3
      0021C7 C0 E0            [24]  793 	push	acc
      0021C9 74 2D            [12]  794 	mov	a,#(___str_3 >> 8)
      0021CB C0 E0            [24]  795 	push	acc
      0021CD 74 80            [12]  796 	mov	a,#0x80
      0021CF C0 E0            [24]  797 	push	acc
      0021D1 12 22 EA         [24]  798 	lcall	_printf
      0021D4 E5 81            [12]  799 	mov	a,sp
      0021D6 24 FB            [12]  800 	add	a,#0xfb
      0021D8 F5 81            [12]  801 	mov	sp,a
      0021DA D0 04            [24]  802 	pop	ar4
      0021DC D0 05            [24]  803 	pop	ar5
      0021DE D0 06            [24]  804 	pop	ar6
      0021E0 D0 07            [24]  805 	pop	ar7
                                    806 ;	spi_dac.c:158: SPDAT = high_byte;
      0021E2 8C C5            [24]  807 	mov	_SPDAT,r4
                                    808 ;	spi_dac.c:159: while(!transmission_complete);
      0021E4                        809 00107$:
      0021E4 90 04 40         [24]  810 	mov	dptr,#_transmission_complete
      0021E7 E0               [24]  811 	movx	a,@dptr
      0021E8 FC               [12]  812 	mov	r4,a
      0021E9 A3               [24]  813 	inc	dptr
      0021EA E0               [24]  814 	movx	a,@dptr
      0021EB FD               [12]  815 	mov	r5,a
      0021EC 4C               [12]  816 	orl	a,r4
      0021ED 60 F5            [24]  817 	jz	00107$
                                    818 ;	spi_dac.c:160: transmission_complete = 0;
      0021EF 90 04 40         [24]  819 	mov	dptr,#_transmission_complete
      0021F2 E4               [12]  820 	clr	a
      0021F3 F0               [24]  821 	movx	@dptr,a
      0021F4 A3               [24]  822 	inc	dptr
      0021F5 F0               [24]  823 	movx	@dptr,a
                                    824 ;	spi_dac.c:163: SPDAT = low_byte;
      0021F6 8E C5            [24]  825 	mov	_SPDAT,r6
                                    826 ;	spi_dac.c:164: while(!transmission_complete);
      0021F8                        827 00110$:
      0021F8 90 04 40         [24]  828 	mov	dptr,#_transmission_complete
      0021FB E0               [24]  829 	movx	a,@dptr
      0021FC FE               [12]  830 	mov	r6,a
      0021FD A3               [24]  831 	inc	dptr
      0021FE E0               [24]  832 	movx	a,@dptr
      0021FF FF               [12]  833 	mov	r7,a
      002200 4E               [12]  834 	orl	a,r6
      002201 60 F5            [24]  835 	jz	00110$
                                    836 ;	spi_dac.c:165: transmission_complete = 0;
      002203 90 04 40         [24]  837 	mov	dptr,#_transmission_complete
      002206 E4               [12]  838 	clr	a
      002207 F0               [24]  839 	movx	@dptr,a
      002208 A3               [24]  840 	inc	dptr
      002209 F0               [24]  841 	movx	@dptr,a
                                    842 ;	spi_dac.c:167: P1_1 = 1;  // Deselect DAC
                                    843 ;	assignBit
      00220A D2 91            [12]  844 	setb	_P1_1
                                    845 ;	spi_dac.c:168: while(!transmission_complete);
      00220C                        846 00113$:
      00220C 90 04 40         [24]  847 	mov	dptr,#_transmission_complete
      00220F E0               [24]  848 	movx	a,@dptr
      002210 FE               [12]  849 	mov	r6,a
      002211 A3               [24]  850 	inc	dptr
      002212 E0               [24]  851 	movx	a,@dptr
      002213 FF               [12]  852 	mov	r7,a
      002214 4E               [12]  853 	orl	a,r6
      002215 60 F5            [24]  854 	jz	00113$
                                    855 ;	spi_dac.c:169: transmission_complete = 0;
      002217 90 04 40         [24]  856 	mov	dptr,#_transmission_complete
      00221A E4               [12]  857 	clr	a
      00221B F0               [24]  858 	movx	@dptr,a
      00221C A3               [24]  859 	inc	dptr
      00221D F0               [24]  860 	movx	@dptr,a
                                    861 ;	spi_dac.c:171: dac_value_index++;
      00221E 90 04 02         [24]  862 	mov	dptr,#_main_dac_value_index_65537_23
      002221 E0               [24]  863 	movx	a,@dptr
      002222 24 01            [12]  864 	add	a,#0x01
      002224 F0               [24]  865 	movx	@dptr,a
      002225 A3               [24]  866 	inc	dptr
      002226 E0               [24]  867 	movx	a,@dptr
      002227 34 00            [12]  868 	addc	a,#0x00
      002229 F0               [24]  869 	movx	@dptr,a
                                    870 ;	spi_dac.c:173: }
      00222A 02 21 20         [24]  871 	ljmp	00117$
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'timer0_init'
                                    874 ;------------------------------------------------------------
                                    875 ;	spi_dac.c:175: void timer0_init(void)
                                    876 ;	-----------------------------------------
                                    877 ;	 function timer0_init
                                    878 ;	-----------------------------------------
      00222D                        879 _timer0_init:
                                    880 ;	spi_dac.c:177: TMOD &= 0xF0;    // Clear Timer0 mode bits
      00222D 53 89 F0         [24]  881 	anl	_TMOD,#0xf0
                                    882 ;	spi_dac.c:178: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      002230 43 89 01         [24]  883 	orl	_TMOD,#0x01
                                    884 ;	spi_dac.c:181: TH0 = TH0_RELOAD;
      002233 75 8C FC         [24]  885 	mov	_TH0,#0xfc
                                    886 ;	spi_dac.c:182: TL0 = TL0_RELOAD;
      002236 75 8A 66         [24]  887 	mov	_TL0,#0x66
                                    888 ;	spi_dac.c:184: ET0 = 1;         // Enable Timer0 interrupt
                                    889 ;	assignBit
      002239 D2 A9            [12]  890 	setb	_ET0
                                    891 ;	spi_dac.c:185: TR0 = 1;         // Start Timer0
                                    892 ;	assignBit
      00223B D2 8C            [12]  893 	setb	_TR0
                                    894 ;	spi_dac.c:186: }
      00223D 22               [24]  895 	ret
                                    896 ;------------------------------------------------------------
                                    897 ;Allocation info for local variables in function 'timer0_isr'
                                    898 ;------------------------------------------------------------
                                    899 ;	spi_dac.c:189: void timer0_isr(void) __interrupt 1
                                    900 ;	-----------------------------------------
                                    901 ;	 function timer0_isr
                                    902 ;	-----------------------------------------
      00223E                        903 _timer0_isr:
      00223E C0 E0            [24]  904 	push	acc
      002240 C0 82            [24]  905 	push	dpl
      002242 C0 83            [24]  906 	push	dph
                                    907 ;	spi_dac.c:192: TH0 = TH0_RELOAD;
      002244 75 8C FC         [24]  908 	mov	_TH0,#0xfc
                                    909 ;	spi_dac.c:193: TL0 = TL0_RELOAD;
      002247 75 8A 66         [24]  910 	mov	_TL0,#0x66
                                    911 ;	spi_dac.c:195: ms_flag = 1;     // Set 1ms flag
      00224A 90 04 3F         [24]  912 	mov	dptr,#_ms_flag
      00224D 74 01            [12]  913 	mov	a,#0x01
      00224F F0               [24]  914 	movx	@dptr,a
                                    915 ;	spi_dac.c:196: P1_0 = !P1_0;    // Toggle P1.0 for verification
      002250 B2 90            [12]  916 	cpl	_P1_0
                                    917 ;	spi_dac.c:198: TR0 = 1;
                                    918 ;	assignBit
      002252 D2 8C            [12]  919 	setb	_TR0
                                    920 ;	spi_dac.c:199: }
      002254 D0 83            [24]  921 	pop	dph
      002256 D0 82            [24]  922 	pop	dpl
      002258 D0 E0            [24]  923 	pop	acc
      00225A 32               [24]  924 	reti
                                    925 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    926 ;	eliminated unneeded push/pop psw
                                    927 ;	eliminated unneeded push/pop b
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'spi_isr'
                                    930 ;------------------------------------------------------------
                                    931 ;	spi_dac.c:207: void spi_isr(void) __interrupt 9
                                    932 ;	-----------------------------------------
                                    933 ;	 function spi_isr
                                    934 ;	-----------------------------------------
      00225B                        935 _spi_isr:
      00225B C0 E0            [24]  936 	push	acc
      00225D C0 82            [24]  937 	push	dpl
      00225F C0 83            [24]  938 	push	dph
      002261 C0 D0            [24]  939 	push	psw
                                    940 ;	spi_dac.c:209: if(SPSTA == 0x80)  // Check for successful transmission
      002263 74 80            [12]  941 	mov	a,#0x80
      002265 B5 C4 09         [24]  942 	cjne	a,_SPSTA,00103$
                                    943 ;	spi_dac.c:211: transmission_complete = 1;
      002268 90 04 40         [24]  944 	mov	dptr,#_transmission_complete
      00226B 74 01            [12]  945 	mov	a,#0x01
      00226D F0               [24]  946 	movx	@dptr,a
      00226E E4               [12]  947 	clr	a
      00226F A3               [24]  948 	inc	dptr
      002270 F0               [24]  949 	movx	@dptr,a
      002271                        950 00103$:
                                    951 ;	spi_dac.c:213: }
      002271 D0 D0            [24]  952 	pop	psw
      002273 D0 83            [24]  953 	pop	dph
      002275 D0 82            [24]  954 	pop	dpl
      002277 D0 E0            [24]  955 	pop	acc
      002279 32               [24]  956 	reti
                                    957 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    958 ;	eliminated unneeded push/pop b
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'spi_init'
                                    961 ;------------------------------------------------------------
                                    962 ;	spi_dac.c:225: void spi_init(void) 
                                    963 ;	-----------------------------------------
                                    964 ;	 function spi_init
                                    965 ;	-----------------------------------------
      00227A                        966 _spi_init:
                                    967 ;	spi_dac.c:228: SPCON = 0;
      00227A 75 C3 00         [24]  968 	mov	_SPCON,#0x00
                                    969 ;	spi_dac.c:238: SPCON &= ~SPI_SSDIS;
      00227D 53 C3 DF         [24]  970 	anl	_SPCON,#0xdf
                                    971 ;	spi_dac.c:240: SPCON |= 0x10;
      002280 43 C3 10         [24]  972 	orl	_SPCON,#0x10
                                    973 ;	spi_dac.c:241: P1_1 = 1;
                                    974 ;	assignBit
      002283 D2 91            [12]  975 	setb	_P1_1
                                    976 ;	spi_dac.c:242: SPCON |= 0x82;
      002285 43 C3 82         [24]  977 	orl	_SPCON,#0x82
                                    978 ;	spi_dac.c:243: SPCON &= ~0x08;
      002288 53 C3 F7         [24]  979 	anl	_SPCON,#0xf7
                                    980 ;	spi_dac.c:244: SPCON |= 0x40;
      00228B 43 C3 40         [24]  981 	orl	_SPCON,#0x40
                                    982 ;	spi_dac.c:249: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      00228E 43 B1 08         [24]  983 	orl	_IEN1,#0x08
                                    984 ;	spi_dac.c:251: }
      002291 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'spi_transmission_start'
                                    988 ;------------------------------------------------------------
                                    989 ;	spi_dac.c:258: void spi_transmission_start(void)
                                    990 ;	-----------------------------------------
                                    991 ;	 function spi_transmission_start
                                    992 ;	-----------------------------------------
      002292                        993 _spi_transmission_start:
                                    994 ;	spi_dac.c:260: SPCON |= SPI_ENABLE;           // Enable SPI
      002292 43 C3 40         [24]  995 	orl	_SPCON,#0x40
                                    996 ;	spi_dac.c:261: P1_1 = 0;
                                    997 ;	assignBit
      002295 C2 91            [12]  998 	clr	_P1_1
                                    999 ;	spi_dac.c:262: }
      002297 22               [24] 1000 	ret
                                   1001 ;------------------------------------------------------------
                                   1002 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1003 ;------------------------------------------------------------
                                   1004 ;	spi_dac.c:269: void spi_transmission_stop(void) 
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function spi_transmission_stop
                                   1007 ;	-----------------------------------------
      002298                       1008 _spi_transmission_stop:
                                   1009 ;	spi_dac.c:271: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002298 53 C3 BF         [24] 1010 	anl	_SPCON,#0xbf
                                   1011 ;	spi_dac.c:272: }
      00229B 22               [24] 1012 	ret
                                   1013 	.area CSEG    (CODE)
                                   1014 	.area CONST   (CODE)
      002D4C                       1015 _dac_values:
      002D4C 80 00                 1016 	.byte #0x80, #0x00	;  128
      002D4E 8F 00                 1017 	.byte #0x8f, #0x00	;  143
      002D50 9F 00                 1018 	.byte #0x9f, #0x00	;  159
      002D52 AE 00                 1019 	.byte #0xae, #0x00	;  174
      002D54 BD 00                 1020 	.byte #0xbd, #0x00	;  189
      002D56 CA 00                 1021 	.byte #0xca, #0x00	;  202
      002D58 D7 00                 1022 	.byte #0xd7, #0x00	;  215
      002D5A E2 00                 1023 	.byte #0xe2, #0x00	;  226
      002D5C EB 00                 1024 	.byte #0xeb, #0x00	;  235
      002D5E F3 00                 1025 	.byte #0xf3, #0x00	;  243
      002D60 F9 00                 1026 	.byte #0xf9, #0x00	;  249
      002D62 FD 00                 1027 	.byte #0xfd, #0x00	;  253
      002D64 FF 00                 1028 	.byte #0xff, #0x00	;  255
      002D66 FF 00                 1029 	.byte #0xff, #0x00	;  255
      002D68 FD 00                 1030 	.byte #0xfd, #0x00	;  253
      002D6A F9 00                 1031 	.byte #0xf9, #0x00	;  249
      002D6C F3 00                 1032 	.byte #0xf3, #0x00	;  243
      002D6E EB 00                 1033 	.byte #0xeb, #0x00	;  235
      002D70 E2 00                 1034 	.byte #0xe2, #0x00	;  226
      002D72 D7 00                 1035 	.byte #0xd7, #0x00	;  215
      002D74 CA 00                 1036 	.byte #0xca, #0x00	;  202
      002D76 BD 00                 1037 	.byte #0xbd, #0x00	;  189
      002D78 AE 00                 1038 	.byte #0xae, #0x00	;  174
      002D7A 9F 00                 1039 	.byte #0x9f, #0x00	;  159
      002D7C 8F 00                 1040 	.byte #0x8f, #0x00	;  143
      002D7E 80 00                 1041 	.byte #0x80, #0x00	;  128
      002D80 70 00                 1042 	.byte #0x70, #0x00	;  112
      002D82 60 00                 1043 	.byte #0x60, #0x00	;  96
      002D84 51 00                 1044 	.byte #0x51, #0x00	;  81
      002D86 42 00                 1045 	.byte #0x42, #0x00	;  66
      002D88 35 00                 1046 	.byte #0x35, #0x00	;  53
      002D8A 28 00                 1047 	.byte #0x28, #0x00	;  40
      002D8C 1D 00                 1048 	.byte #0x1d, #0x00	;  29
      002D8E 14 00                 1049 	.byte #0x14, #0x00	;  20
      002D90 0C 00                 1050 	.byte #0x0c, #0x00	;  12
      002D92 06 00                 1051 	.byte #0x06, #0x00	;  6
      002D94 02 00                 1052 	.byte #0x02, #0x00	;  2
      002D96 00 00                 1053 	.byte #0x00, #0x00	;  0
      002D98 00 00                 1054 	.byte #0x00, #0x00	;  0
      002D9A 02 00                 1055 	.byte #0x02, #0x00	;  2
      002D9C 06 00                 1056 	.byte #0x06, #0x00	;  6
      002D9E 0C 00                 1057 	.byte #0x0c, #0x00	;  12
      002DA0 14 00                 1058 	.byte #0x14, #0x00	;  20
      002DA2 1D 00                 1059 	.byte #0x1d, #0x00	;  29
      002DA4 28 00                 1060 	.byte #0x28, #0x00	;  40
      002DA6 35 00                 1061 	.byte #0x35, #0x00	;  53
      002DA8 42 00                 1062 	.byte #0x42, #0x00	;  66
      002DAA 51 00                 1063 	.byte #0x51, #0x00	;  81
      002DAC 60 00                 1064 	.byte #0x60, #0x00	;  96
      002DAE 70 00                 1065 	.byte #0x70, #0x00	;  112
                                   1066 	.area CONST   (CODE)
      002DB0                       1067 ___str_0:
      002DB0 20 53 50 49 20 44 41  1068 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002DC0 0A                    1069 	.db 0x0a
      002DC1 0D                    1070 	.db 0x0d
      002DC2 00                    1071 	.db 0x00
                                   1072 	.area CSEG    (CODE)
                                   1073 	.area CONST   (CODE)
      002DC3                       1074 ___str_1:
      002DC3 53 50 49 20 54 52 41  1075 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002DDB 0A                    1076 	.db 0x0a
      002DDC 0D                    1077 	.db 0x0d
      002DDD 00                    1078 	.db 0x00
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
      002DDE                       1081 ___str_2:
      002DDE 4C 6F 77 20 62 79 74  1082 	.ascii "Low byte %d"
             65 20 25 64
      002DE9 0A                    1083 	.db 0x0a
      002DEA 00                    1084 	.db 0x00
                                   1085 	.area CSEG    (CODE)
                                   1086 	.area CONST   (CODE)
      002DEB                       1087 ___str_3:
      002DEB 48 69 67 68 20 62 79  1088 	.ascii "High byte %d"
             74 65 20 25 64
      002DF7 0A                    1089 	.db 0x0a
      002DF8 00                    1090 	.db 0x00
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area XINIT   (CODE)
      002E04                       1093 __xinit__ms_flag:
      002E04 00                    1094 	.db #0x00	; 0
      002E05                       1095 __xinit__transmission_complete:
      002E05 00 00                 1096 	.byte #0x00, #0x00	;  0
                                   1097 	.area CABS    (ABS,CODE)
