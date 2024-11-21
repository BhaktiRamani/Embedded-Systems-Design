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
      000400                        466 _putchar_charToSend_65536_41:
      000400                        467 	.ds 2
      000402                        468 _main_dac_value_index_65536_46:
      000402                        469 	.ds 2
      000404                        470 _main_dac_data_65536_46:
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
      00300B 02 32 04         [24]  502 	ljmp	_timer0_isr
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
      00304B 02 32 1F         [24]  518 	ljmp	_spi_isr
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
                                    549 ;charToSend                Allocated with name '_putchar_charToSend_65536_41'
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
      0030B1 90 04 00         [24]  566 	mov	dptr,#_putchar_charToSend_65536_41
      0030B4 F0               [24]  567 	movx	@dptr,a
      0030B5 EF               [12]  568 	mov	a,r7
      0030B6 A3               [24]  569 	inc	dptr
      0030B7 F0               [24]  570 	movx	@dptr,a
                                    571 ;	spi_dac.c:90: SBUF = charToSend;       /* Load character into serial buffer */
      0030B8 90 04 00         [24]  572 	mov	dptr,#_putchar_charToSend_65536_41
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
                                    616 ;dac_value_index           Allocated with name '_main_dac_value_index_65536_46'
                                    617 ;dac_data                  Allocated with name '_main_dac_data_65536_46'
                                    618 ;high_byte                 Allocated with name '_main_high_byte_65537_47'
                                    619 ;low_byte                  Allocated with name '_main_low_byte_65537_47'
                                    620 ;------------------------------------------------------------
                                    621 ;	spi_dac.c:106: int main(void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function main
                                    624 ;	-----------------------------------------
      0030DA                        625 _main:
                                    626 ;	spi_dac.c:109: int dac_value_index = 0;
      0030DA 90 04 02         [24]  627 	mov	dptr,#_main_dac_value_index_65536_46
      0030DD E4               [12]  628 	clr	a
      0030DE F0               [24]  629 	movx	@dptr,a
      0030DF A3               [24]  630 	inc	dptr
      0030E0 F0               [24]  631 	movx	@dptr,a
                                    632 ;	spi_dac.c:110: int dac_data = 0;
      0030E1 90 04 04         [24]  633 	mov	dptr,#_main_dac_data_65536_46
      0030E4 F0               [24]  634 	movx	@dptr,a
      0030E5 A3               [24]  635 	inc	dptr
      0030E6 F0               [24]  636 	movx	@dptr,a
                                    637 ;	spi_dac.c:112: EA = GLOBAL_INT_ENABLE;        // Enable global interrupts
                                    638 ;	assignBit
      0030E7 D2 AF            [12]  639 	setb	_EA
                                    640 ;	spi_dac.c:115: spi_init();
      0030E9 12 32 3E         [24]  641 	lcall	_spi_init
                                    642 ;	spi_dac.c:116: spi_transmission_start();
      0030EC 12 32 51         [24]  643 	lcall	_spi_transmission_start
                                    644 ;	spi_dac.c:119: timer0_init();
      0030EF 12 31 F3         [24]  645 	lcall	_timer0_init
                                    646 ;	spi_dac.c:121: while(1)
      0030F2                        647 00117$:
                                    648 ;	spi_dac.c:124: if(dac_value_index < SINE_MAX_INDEX)
      0030F2 90 04 02         [24]  649 	mov	dptr,#_main_dac_value_index_65536_46
      0030F5 E0               [24]  650 	movx	a,@dptr
      0030F6 FE               [12]  651 	mov	r6,a
      0030F7 A3               [24]  652 	inc	dptr
      0030F8 E0               [24]  653 	movx	a,@dptr
      0030F9 FF               [12]  654 	mov	r7,a
      0030FA C3               [12]  655 	clr	c
      0030FB EE               [12]  656 	mov	a,r6
      0030FC 94 31            [12]  657 	subb	a,#0x31
      0030FE EF               [12]  658 	mov	a,r7
      0030FF 64 80            [12]  659 	xrl	a,#0x80
      003101 94 80            [12]  660 	subb	a,#0x80
      003103 50 21            [24]  661 	jnc	00102$
                                    662 ;	spi_dac.c:128: dac_data = dac_values[dac_value_index]; 
      003105 EE               [12]  663 	mov	a,r6
      003106 2E               [12]  664 	add	a,r6
      003107 FE               [12]  665 	mov	r6,a
      003108 EF               [12]  666 	mov	a,r7
      003109 33               [12]  667 	rlc	a
      00310A FF               [12]  668 	mov	r7,a
      00310B EE               [12]  669 	mov	a,r6
      00310C 24 09            [12]  670 	add	a,#_dac_values
      00310E F5 82            [12]  671 	mov	dpl,a
      003110 EF               [12]  672 	mov	a,r7
      003111 34 3D            [12]  673 	addc	a,#(_dac_values >> 8)
      003113 F5 83            [12]  674 	mov	dph,a
      003115 E4               [12]  675 	clr	a
      003116 93               [24]  676 	movc	a,@a+dptr
      003117 FE               [12]  677 	mov	r6,a
      003118 A3               [24]  678 	inc	dptr
      003119 E4               [12]  679 	clr	a
      00311A 93               [24]  680 	movc	a,@a+dptr
      00311B FF               [12]  681 	mov	r7,a
      00311C 90 04 04         [24]  682 	mov	dptr,#_main_dac_data_65536_46
      00311F EE               [12]  683 	mov	a,r6
      003120 F0               [24]  684 	movx	@dptr,a
      003121 EF               [12]  685 	mov	a,r7
      003122 A3               [24]  686 	inc	dptr
      003123 F0               [24]  687 	movx	@dptr,a
      003124 80 07            [24]  688 	sjmp	00103$
      003126                        689 00102$:
                                    690 ;	spi_dac.c:132: dac_value_index = 0;  // Reset index for next cycle
      003126 90 04 02         [24]  691 	mov	dptr,#_main_dac_value_index_65536_46
      003129 E4               [12]  692 	clr	a
      00312A F0               [24]  693 	movx	@dptr,a
      00312B A3               [24]  694 	inc	dptr
      00312C F0               [24]  695 	movx	@dptr,a
      00312D                        696 00103$:
                                    697 ;	spi_dac.c:138: ((dac_data >> 4) & 0x0F);
      00312D 90 04 04         [24]  698 	mov	dptr,#_main_dac_data_65536_46
      003130 E0               [24]  699 	movx	a,@dptr
      003131 FE               [12]  700 	mov	r6,a
      003132 A3               [24]  701 	inc	dptr
      003133 E0               [24]  702 	movx	a,@dptr
      003134 8E 04            [24]  703 	mov	ar4,r6
      003136 C4               [12]  704 	swap	a
      003137 CC               [12]  705 	xch	a,r4
      003138 C4               [12]  706 	swap	a
      003139 54 0F            [12]  707 	anl	a,#0x0f
      00313B 6C               [12]  708 	xrl	a,r4
      00313C CC               [12]  709 	xch	a,r4
      00313D 54 0F            [12]  710 	anl	a,#0x0f
      00313F CC               [12]  711 	xch	a,r4
      003140 6C               [12]  712 	xrl	a,r4
      003141 CC               [12]  713 	xch	a,r4
      003142 30 E3 02         [24]  714 	jnb	acc.3,00162$
      003145 44 F0            [12]  715 	orl	a,#0xf0
      003147                        716 00162$:
      003147 74 0F            [12]  717 	mov	a,#0x0f
      003149 5C               [12]  718 	anl	a,r4
      00314A 44 30            [12]  719 	orl	a,#0x30
      00314C FD               [12]  720 	mov	r5,a
                                    721 ;	spi_dac.c:141: low_byte = (dac_data & 0x0F) << 4;
      00314D 53 06 0F         [24]  722 	anl	ar6,#0x0f
      003150 EE               [12]  723 	mov	a,r6
      003151 C4               [12]  724 	swap	a
      003152 54 F0            [12]  725 	anl	a,#0xf0
      003154 FF               [12]  726 	mov	r7,a
                                    727 ;	spi_dac.c:143: while(!ms_flag);
      003155                        728 00104$:
      003155 90 04 3F         [24]  729 	mov	dptr,#_ms_flag
      003158 E0               [24]  730 	movx	a,@dptr
      003159 60 FA            [24]  731 	jz	00104$
                                    732 ;	spi_dac.c:144: ms_flag = 0;
      00315B 90 04 3F         [24]  733 	mov	dptr,#_ms_flag
      00315E E4               [12]  734 	clr	a
      00315F F0               [24]  735 	movx	@dptr,a
                                    736 ;	spi_dac.c:147: P1_1 = 0;  // Select DAC
                                    737 ;	assignBit
      003160 C2 91            [12]  738 	clr	_P1_1
                                    739 ;	spi_dac.c:149: printf("Low byte %d\n", low_byte);
      003162 8F 06            [24]  740 	mov	ar6,r7
      003164 7C 00            [12]  741 	mov	r4,#0x00
      003166 C0 07            [24]  742 	push	ar7
      003168 C0 05            [24]  743 	push	ar5
      00316A C0 06            [24]  744 	push	ar6
      00316C C0 04            [24]  745 	push	ar4
      00316E 74 6D            [12]  746 	mov	a,#___str_0
      003170 C0 E0            [24]  747 	push	acc
      003172 74 3D            [12]  748 	mov	a,#(___str_0 >> 8)
      003174 C0 E0            [24]  749 	push	acc
      003176 74 80            [12]  750 	mov	a,#0x80
      003178 C0 E0            [24]  751 	push	acc
      00317A 12 32 A7         [24]  752 	lcall	_printf
      00317D E5 81            [12]  753 	mov	a,sp
      00317F 24 FB            [12]  754 	add	a,#0xfb
      003181 F5 81            [12]  755 	mov	sp,a
      003183 D0 05            [24]  756 	pop	ar5
                                    757 ;	spi_dac.c:150: printf("High byte %d\n", high_byte);
      003185 8D 04            [24]  758 	mov	ar4,r5
      003187 7E 00            [12]  759 	mov	r6,#0x00
      003189 C0 05            [24]  760 	push	ar5
      00318B C0 04            [24]  761 	push	ar4
      00318D C0 06            [24]  762 	push	ar6
      00318F 74 7A            [12]  763 	mov	a,#___str_1
      003191 C0 E0            [24]  764 	push	acc
      003193 74 3D            [12]  765 	mov	a,#(___str_1 >> 8)
      003195 C0 E0            [24]  766 	push	acc
      003197 74 80            [12]  767 	mov	a,#0x80
      003199 C0 E0            [24]  768 	push	acc
      00319B 12 32 A7         [24]  769 	lcall	_printf
      00319E E5 81            [12]  770 	mov	a,sp
      0031A0 24 FB            [12]  771 	add	a,#0xfb
      0031A2 F5 81            [12]  772 	mov	sp,a
      0031A4 D0 05            [24]  773 	pop	ar5
      0031A6 D0 07            [24]  774 	pop	ar7
                                    775 ;	spi_dac.c:153: SPDAT = high_byte;
      0031A8 8D C5            [24]  776 	mov	_SPDAT,r5
                                    777 ;	spi_dac.c:154: while(!transmission_complete);
      0031AA                        778 00107$:
      0031AA 90 04 40         [24]  779 	mov	dptr,#_transmission_complete
      0031AD E0               [24]  780 	movx	a,@dptr
      0031AE FD               [12]  781 	mov	r5,a
      0031AF A3               [24]  782 	inc	dptr
      0031B0 E0               [24]  783 	movx	a,@dptr
      0031B1 FE               [12]  784 	mov	r6,a
      0031B2 4D               [12]  785 	orl	a,r5
      0031B3 60 F5            [24]  786 	jz	00107$
                                    787 ;	spi_dac.c:155: transmission_complete = 0;
      0031B5 90 04 40         [24]  788 	mov	dptr,#_transmission_complete
      0031B8 E4               [12]  789 	clr	a
      0031B9 F0               [24]  790 	movx	@dptr,a
      0031BA A3               [24]  791 	inc	dptr
      0031BB F0               [24]  792 	movx	@dptr,a
                                    793 ;	spi_dac.c:158: SPDAT = low_byte;
      0031BC 8F C5            [24]  794 	mov	_SPDAT,r7
                                    795 ;	spi_dac.c:159: while(!transmission_complete);
      0031BE                        796 00110$:
      0031BE 90 04 40         [24]  797 	mov	dptr,#_transmission_complete
      0031C1 E0               [24]  798 	movx	a,@dptr
      0031C2 FE               [12]  799 	mov	r6,a
      0031C3 A3               [24]  800 	inc	dptr
      0031C4 E0               [24]  801 	movx	a,@dptr
      0031C5 FF               [12]  802 	mov	r7,a
      0031C6 4E               [12]  803 	orl	a,r6
      0031C7 60 F5            [24]  804 	jz	00110$
                                    805 ;	spi_dac.c:160: transmission_complete = 0;
      0031C9 90 04 40         [24]  806 	mov	dptr,#_transmission_complete
      0031CC E4               [12]  807 	clr	a
      0031CD F0               [24]  808 	movx	@dptr,a
      0031CE A3               [24]  809 	inc	dptr
      0031CF F0               [24]  810 	movx	@dptr,a
                                    811 ;	spi_dac.c:162: P1_1 = 1;  // Deselect DAC
                                    812 ;	assignBit
      0031D0 D2 91            [12]  813 	setb	_P1_1
                                    814 ;	spi_dac.c:163: while(!transmission_complete);
      0031D2                        815 00113$:
      0031D2 90 04 40         [24]  816 	mov	dptr,#_transmission_complete
      0031D5 E0               [24]  817 	movx	a,@dptr
      0031D6 FE               [12]  818 	mov	r6,a
      0031D7 A3               [24]  819 	inc	dptr
      0031D8 E0               [24]  820 	movx	a,@dptr
      0031D9 FF               [12]  821 	mov	r7,a
      0031DA 4E               [12]  822 	orl	a,r6
      0031DB 60 F5            [24]  823 	jz	00113$
                                    824 ;	spi_dac.c:164: transmission_complete = 0;
      0031DD 90 04 40         [24]  825 	mov	dptr,#_transmission_complete
      0031E0 E4               [12]  826 	clr	a
      0031E1 F0               [24]  827 	movx	@dptr,a
      0031E2 A3               [24]  828 	inc	dptr
      0031E3 F0               [24]  829 	movx	@dptr,a
                                    830 ;	spi_dac.c:166: dac_value_index++;
      0031E4 90 04 02         [24]  831 	mov	dptr,#_main_dac_value_index_65536_46
      0031E7 E0               [24]  832 	movx	a,@dptr
      0031E8 24 01            [12]  833 	add	a,#0x01
      0031EA F0               [24]  834 	movx	@dptr,a
      0031EB A3               [24]  835 	inc	dptr
      0031EC E0               [24]  836 	movx	a,@dptr
      0031ED 34 00            [12]  837 	addc	a,#0x00
      0031EF F0               [24]  838 	movx	@dptr,a
                                    839 ;	spi_dac.c:168: }
      0031F0 02 30 F2         [24]  840 	ljmp	00117$
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'timer0_init'
                                    843 ;------------------------------------------------------------
                                    844 ;	spi_dac.c:170: void timer0_init(void)
                                    845 ;	-----------------------------------------
                                    846 ;	 function timer0_init
                                    847 ;	-----------------------------------------
      0031F3                        848 _timer0_init:
                                    849 ;	spi_dac.c:172: TMOD &= 0xF0;    // Clear Timer0 mode bits
      0031F3 53 89 F0         [24]  850 	anl	_TMOD,#0xf0
                                    851 ;	spi_dac.c:173: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      0031F6 43 89 01         [24]  852 	orl	_TMOD,#0x01
                                    853 ;	spi_dac.c:176: TH0 = TH0_RELOAD;
      0031F9 75 8C FC         [24]  854 	mov	_TH0,#0xfc
                                    855 ;	spi_dac.c:177: TL0 = TL0_RELOAD;
      0031FC 75 8A 18         [24]  856 	mov	_TL0,#0x18
                                    857 ;	spi_dac.c:179: ET0 = 1;         // Enable Timer0 interrupt
                                    858 ;	assignBit
      0031FF D2 A9            [12]  859 	setb	_ET0
                                    860 ;	spi_dac.c:180: TR0 = 1;         // Start Timer0
                                    861 ;	assignBit
      003201 D2 8C            [12]  862 	setb	_TR0
                                    863 ;	spi_dac.c:181: }
      003203 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'timer0_isr'
                                    867 ;------------------------------------------------------------
                                    868 ;	spi_dac.c:184: void timer0_isr(void) __interrupt 1
                                    869 ;	-----------------------------------------
                                    870 ;	 function timer0_isr
                                    871 ;	-----------------------------------------
      003204                        872 _timer0_isr:
      003204 C0 E0            [24]  873 	push	acc
      003206 C0 82            [24]  874 	push	dpl
      003208 C0 83            [24]  875 	push	dph
                                    876 ;	spi_dac.c:187: TH0 = TH0_RELOAD;
      00320A 75 8C FC         [24]  877 	mov	_TH0,#0xfc
                                    878 ;	spi_dac.c:188: TL0 = TL0_RELOAD;
      00320D 75 8A 18         [24]  879 	mov	_TL0,#0x18
                                    880 ;	spi_dac.c:190: ms_flag = 1;     // Set 1ms flag
      003210 90 04 3F         [24]  881 	mov	dptr,#_ms_flag
      003213 74 01            [12]  882 	mov	a,#0x01
      003215 F0               [24]  883 	movx	@dptr,a
                                    884 ;	spi_dac.c:191: P1_0 = !P1_0;    // Toggle P1.0 for verification
      003216 B2 90            [12]  885 	cpl	_P1_0
                                    886 ;	spi_dac.c:192: }
      003218 D0 83            [24]  887 	pop	dph
      00321A D0 82            [24]  888 	pop	dpl
      00321C D0 E0            [24]  889 	pop	acc
      00321E 32               [24]  890 	reti
                                    891 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    892 ;	eliminated unneeded push/pop psw
                                    893 ;	eliminated unneeded push/pop b
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'spi_isr'
                                    896 ;------------------------------------------------------------
                                    897 ;	spi_dac.c:200: void spi_isr(void) __interrupt 9
                                    898 ;	-----------------------------------------
                                    899 ;	 function spi_isr
                                    900 ;	-----------------------------------------
      00321F                        901 _spi_isr:
      00321F C0 E0            [24]  902 	push	acc
      003221 C0 82            [24]  903 	push	dpl
      003223 C0 83            [24]  904 	push	dph
      003225 C0 D0            [24]  905 	push	psw
                                    906 ;	spi_dac.c:202: if(SPSTA == 0x80)  // Check for successful transmission
      003227 74 80            [12]  907 	mov	a,#0x80
      003229 B5 C4 09         [24]  908 	cjne	a,_SPSTA,00103$
                                    909 ;	spi_dac.c:204: transmission_complete = 1;
      00322C 90 04 40         [24]  910 	mov	dptr,#_transmission_complete
      00322F 74 01            [12]  911 	mov	a,#0x01
      003231 F0               [24]  912 	movx	@dptr,a
      003232 E4               [12]  913 	clr	a
      003233 A3               [24]  914 	inc	dptr
      003234 F0               [24]  915 	movx	@dptr,a
      003235                        916 00103$:
                                    917 ;	spi_dac.c:206: }
      003235 D0 D0            [24]  918 	pop	psw
      003237 D0 83            [24]  919 	pop	dph
      003239 D0 82            [24]  920 	pop	dpl
      00323B D0 E0            [24]  921 	pop	acc
      00323D 32               [24]  922 	reti
                                    923 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    924 ;	eliminated unneeded push/pop b
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'spi_init'
                                    927 ;------------------------------------------------------------
                                    928 ;	spi_dac.c:218: void spi_init(void) 
                                    929 ;	-----------------------------------------
                                    930 ;	 function spi_init
                                    931 ;	-----------------------------------------
      00323E                        932 _spi_init:
                                    933 ;	spi_dac.c:221: SPCON = 0;
      00323E 75 C3 00         [24]  934 	mov	_SPCON,#0x00
                                    935 ;	spi_dac.c:227: SPCON |= SPI_MASTER_MODE;      // Set as master
      003241 43 C3 10         [24]  936 	orl	_SPCON,#0x10
                                    937 ;	spi_dac.c:228: SPCON |= SPI_CPOL_HIGH;        // Clock polarity active high
      003244 43 C3 08         [24]  938 	orl	_SPCON,#0x08
                                    939 ;	spi_dac.c:229: SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge
      003247 53 C3 FB         [24]  940 	anl	_SPCON,#0xfb
                                    941 ;	spi_dac.c:230: SPCON |= SPI_CLK_DIV_128;      // Set clock frequency divider
      00324A 43 C3 02         [24]  942 	orl	_SPCON,#0x02
                                    943 ;	spi_dac.c:233: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      00324D 43 B1 08         [24]  944 	orl	_IEN1,#0x08
                                    945 ;	spi_dac.c:235: }
      003250 22               [24]  946 	ret
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'spi_transmission_start'
                                    949 ;------------------------------------------------------------
                                    950 ;	spi_dac.c:242: void spi_transmission_start(void)
                                    951 ;	-----------------------------------------
                                    952 ;	 function spi_transmission_start
                                    953 ;	-----------------------------------------
      003251                        954 _spi_transmission_start:
                                    955 ;	spi_dac.c:244: SPCON |= SPI_ENABLE;           // Enable SPI
      003251 43 C3 40         [24]  956 	orl	_SPCON,#0x40
                                    957 ;	spi_dac.c:245: }
      003254 22               [24]  958 	ret
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    961 ;------------------------------------------------------------
                                    962 ;	spi_dac.c:252: void spi_transmission_stop(void) 
                                    963 ;	-----------------------------------------
                                    964 ;	 function spi_transmission_stop
                                    965 ;	-----------------------------------------
      003255                        966 _spi_transmission_stop:
                                    967 ;	spi_dac.c:254: SPCON &= ~SPI_ENABLE;          // Disable SPI
      003255 53 C3 BF         [24]  968 	anl	_SPCON,#0xbf
                                    969 ;	spi_dac.c:255: }
      003258 22               [24]  970 	ret
                                    971 	.area CSEG    (CODE)
                                    972 	.area CONST   (CODE)
      003D09                        973 _dac_values:
      003D09 80 00                  974 	.byte #0x80, #0x00	;  128
      003D0B 8F 00                  975 	.byte #0x8f, #0x00	;  143
      003D0D 9F 00                  976 	.byte #0x9f, #0x00	;  159
      003D0F AE 00                  977 	.byte #0xae, #0x00	;  174
      003D11 BD 00                  978 	.byte #0xbd, #0x00	;  189
      003D13 CA 00                  979 	.byte #0xca, #0x00	;  202
      003D15 D7 00                  980 	.byte #0xd7, #0x00	;  215
      003D17 E2 00                  981 	.byte #0xe2, #0x00	;  226
      003D19 EB 00                  982 	.byte #0xeb, #0x00	;  235
      003D1B F3 00                  983 	.byte #0xf3, #0x00	;  243
      003D1D F9 00                  984 	.byte #0xf9, #0x00	;  249
      003D1F FD 00                  985 	.byte #0xfd, #0x00	;  253
      003D21 FF 00                  986 	.byte #0xff, #0x00	;  255
      003D23 FF 00                  987 	.byte #0xff, #0x00	;  255
      003D25 FD 00                  988 	.byte #0xfd, #0x00	;  253
      003D27 F9 00                  989 	.byte #0xf9, #0x00	;  249
      003D29 F3 00                  990 	.byte #0xf3, #0x00	;  243
      003D2B EB 00                  991 	.byte #0xeb, #0x00	;  235
      003D2D E2 00                  992 	.byte #0xe2, #0x00	;  226
      003D2F D7 00                  993 	.byte #0xd7, #0x00	;  215
      003D31 CA 00                  994 	.byte #0xca, #0x00	;  202
      003D33 BD 00                  995 	.byte #0xbd, #0x00	;  189
      003D35 AE 00                  996 	.byte #0xae, #0x00	;  174
      003D37 9F 00                  997 	.byte #0x9f, #0x00	;  159
      003D39 8F 00                  998 	.byte #0x8f, #0x00	;  143
      003D3B 80 00                  999 	.byte #0x80, #0x00	;  128
      003D3D 70 00                 1000 	.byte #0x70, #0x00	;  112
      003D3F 60 00                 1001 	.byte #0x60, #0x00	;  96
      003D41 51 00                 1002 	.byte #0x51, #0x00	;  81
      003D43 42 00                 1003 	.byte #0x42, #0x00	;  66
      003D45 35 00                 1004 	.byte #0x35, #0x00	;  53
      003D47 28 00                 1005 	.byte #0x28, #0x00	;  40
      003D49 1D 00                 1006 	.byte #0x1d, #0x00	;  29
      003D4B 14 00                 1007 	.byte #0x14, #0x00	;  20
      003D4D 0C 00                 1008 	.byte #0x0c, #0x00	;  12
      003D4F 06 00                 1009 	.byte #0x06, #0x00	;  6
      003D51 02 00                 1010 	.byte #0x02, #0x00	;  2
      003D53 00 00                 1011 	.byte #0x00, #0x00	;  0
      003D55 00 00                 1012 	.byte #0x00, #0x00	;  0
      003D57 02 00                 1013 	.byte #0x02, #0x00	;  2
      003D59 06 00                 1014 	.byte #0x06, #0x00	;  6
      003D5B 0C 00                 1015 	.byte #0x0c, #0x00	;  12
      003D5D 14 00                 1016 	.byte #0x14, #0x00	;  20
      003D5F 1D 00                 1017 	.byte #0x1d, #0x00	;  29
      003D61 28 00                 1018 	.byte #0x28, #0x00	;  40
      003D63 35 00                 1019 	.byte #0x35, #0x00	;  53
      003D65 42 00                 1020 	.byte #0x42, #0x00	;  66
      003D67 51 00                 1021 	.byte #0x51, #0x00	;  81
      003D69 60 00                 1022 	.byte #0x60, #0x00	;  96
      003D6B 70 00                 1023 	.byte #0x70, #0x00	;  112
                                   1024 	.area CONST   (CODE)
      003D6D                       1025 ___str_0:
      003D6D 4C 6F 77 20 62 79 74  1026 	.ascii "Low byte %d"
             65 20 25 64
      003D78 0A                    1027 	.db 0x0a
      003D79 00                    1028 	.db 0x00
                                   1029 	.area CSEG    (CODE)
                                   1030 	.area CONST   (CODE)
      003D7A                       1031 ___str_1:
      003D7A 48 69 67 68 20 62 79  1032 	.ascii "High byte %d"
             74 65 20 25 64
      003D86 0A                    1033 	.db 0x0a
      003D87 00                    1034 	.db 0x00
                                   1035 	.area CSEG    (CODE)
                                   1036 	.area XINIT   (CODE)
      003D93                       1037 __xinit__ms_flag:
      003D93 00                    1038 	.db #0x00	; 0
      003D94                       1039 __xinit__transmission_complete:
      003D94 00 00                 1040 	.byte #0x00, #0x00	;  0
                                   1041 	.area CABS    (ABS,CODE)
