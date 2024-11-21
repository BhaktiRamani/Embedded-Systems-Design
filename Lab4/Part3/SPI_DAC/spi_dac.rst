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
      00300B 02 32 2E         [24]  502 	ljmp	_timer0_isr
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
      00304B 02 32 49         [24]  518 	ljmp	_spi_isr
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
                                    637 ;	spi_dac.c:112: printf("SPI DAC PROGRAM\n\r");
      0030E7 74 97            [12]  638 	mov	a,#___str_0
      0030E9 C0 E0            [24]  639 	push	acc
      0030EB 74 3D            [12]  640 	mov	a,#(___str_0 >> 8)
      0030ED C0 E0            [24]  641 	push	acc
      0030EF 74 80            [12]  642 	mov	a,#0x80
      0030F1 C0 E0            [24]  643 	push	acc
      0030F3 12 32 D1         [24]  644 	lcall	_printf
      0030F6 15 81            [12]  645 	dec	sp
      0030F8 15 81            [12]  646 	dec	sp
      0030FA 15 81            [12]  647 	dec	sp
                                    648 ;	spi_dac.c:113: EA = GLOBAL_INT_ENABLE;        // Enable global interrupts
                                    649 ;	assignBit
      0030FC D2 AF            [12]  650 	setb	_EA
                                    651 ;	spi_dac.c:116: spi_init();
      0030FE 12 32 68         [24]  652 	lcall	_spi_init
                                    653 ;	spi_dac.c:117: spi_transmission_start();
      003101 12 32 7B         [24]  654 	lcall	_spi_transmission_start
                                    655 ;	spi_dac.c:119: printf("SPI TRANSMISSION STARTED\n\r");
      003104 74 A9            [12]  656 	mov	a,#___str_1
      003106 C0 E0            [24]  657 	push	acc
      003108 74 3D            [12]  658 	mov	a,#(___str_1 >> 8)
      00310A C0 E0            [24]  659 	push	acc
      00310C 74 80            [12]  660 	mov	a,#0x80
      00310E C0 E0            [24]  661 	push	acc
      003110 12 32 D1         [24]  662 	lcall	_printf
      003113 15 81            [12]  663 	dec	sp
      003115 15 81            [12]  664 	dec	sp
      003117 15 81            [12]  665 	dec	sp
                                    666 ;	spi_dac.c:122: timer0_init();
      003119 12 32 1D         [24]  667 	lcall	_timer0_init
                                    668 ;	spi_dac.c:124: while(1)
      00311C                        669 00117$:
                                    670 ;	spi_dac.c:127: if(dac_value_index < SINE_MAX_INDEX)
      00311C 90 04 02         [24]  671 	mov	dptr,#_main_dac_value_index_65536_46
      00311F E0               [24]  672 	movx	a,@dptr
      003120 FE               [12]  673 	mov	r6,a
      003121 A3               [24]  674 	inc	dptr
      003122 E0               [24]  675 	movx	a,@dptr
      003123 FF               [12]  676 	mov	r7,a
      003124 C3               [12]  677 	clr	c
      003125 EE               [12]  678 	mov	a,r6
      003126 94 31            [12]  679 	subb	a,#0x31
      003128 EF               [12]  680 	mov	a,r7
      003129 64 80            [12]  681 	xrl	a,#0x80
      00312B 94 80            [12]  682 	subb	a,#0x80
      00312D 50 21            [24]  683 	jnc	00102$
                                    684 ;	spi_dac.c:131: dac_data = dac_values[dac_value_index]; 
      00312F EE               [12]  685 	mov	a,r6
      003130 2E               [12]  686 	add	a,r6
      003131 FE               [12]  687 	mov	r6,a
      003132 EF               [12]  688 	mov	a,r7
      003133 33               [12]  689 	rlc	a
      003134 FF               [12]  690 	mov	r7,a
      003135 EE               [12]  691 	mov	a,r6
      003136 24 33            [12]  692 	add	a,#_dac_values
      003138 F5 82            [12]  693 	mov	dpl,a
      00313A EF               [12]  694 	mov	a,r7
      00313B 34 3D            [12]  695 	addc	a,#(_dac_values >> 8)
      00313D F5 83            [12]  696 	mov	dph,a
      00313F E4               [12]  697 	clr	a
      003140 93               [24]  698 	movc	a,@a+dptr
      003141 FE               [12]  699 	mov	r6,a
      003142 A3               [24]  700 	inc	dptr
      003143 E4               [12]  701 	clr	a
      003144 93               [24]  702 	movc	a,@a+dptr
      003145 FF               [12]  703 	mov	r7,a
      003146 90 04 04         [24]  704 	mov	dptr,#_main_dac_data_65536_46
      003149 EE               [12]  705 	mov	a,r6
      00314A F0               [24]  706 	movx	@dptr,a
      00314B EF               [12]  707 	mov	a,r7
      00314C A3               [24]  708 	inc	dptr
      00314D F0               [24]  709 	movx	@dptr,a
      00314E 80 07            [24]  710 	sjmp	00103$
      003150                        711 00102$:
                                    712 ;	spi_dac.c:135: dac_value_index = 0;  // Reset index for next cycle
      003150 90 04 02         [24]  713 	mov	dptr,#_main_dac_value_index_65536_46
      003153 E4               [12]  714 	clr	a
      003154 F0               [24]  715 	movx	@dptr,a
      003155 A3               [24]  716 	inc	dptr
      003156 F0               [24]  717 	movx	@dptr,a
      003157                        718 00103$:
                                    719 ;	spi_dac.c:141: ((dac_data >> 4) & 0x0F);
      003157 90 04 04         [24]  720 	mov	dptr,#_main_dac_data_65536_46
      00315A E0               [24]  721 	movx	a,@dptr
      00315B FE               [12]  722 	mov	r6,a
      00315C A3               [24]  723 	inc	dptr
      00315D E0               [24]  724 	movx	a,@dptr
      00315E 8E 04            [24]  725 	mov	ar4,r6
      003160 C4               [12]  726 	swap	a
      003161 CC               [12]  727 	xch	a,r4
      003162 C4               [12]  728 	swap	a
      003163 54 0F            [12]  729 	anl	a,#0x0f
      003165 6C               [12]  730 	xrl	a,r4
      003166 CC               [12]  731 	xch	a,r4
      003167 54 0F            [12]  732 	anl	a,#0x0f
      003169 CC               [12]  733 	xch	a,r4
      00316A 6C               [12]  734 	xrl	a,r4
      00316B CC               [12]  735 	xch	a,r4
      00316C 30 E3 02         [24]  736 	jnb	acc.3,00162$
      00316F 44 F0            [12]  737 	orl	a,#0xf0
      003171                        738 00162$:
      003171 74 0F            [12]  739 	mov	a,#0x0f
      003173 5C               [12]  740 	anl	a,r4
      003174 44 30            [12]  741 	orl	a,#0x30
      003176 FD               [12]  742 	mov	r5,a
                                    743 ;	spi_dac.c:144: low_byte = (dac_data & 0x0F) << 4;
      003177 53 06 0F         [24]  744 	anl	ar6,#0x0f
      00317A EE               [12]  745 	mov	a,r6
      00317B C4               [12]  746 	swap	a
      00317C 54 F0            [12]  747 	anl	a,#0xf0
      00317E FF               [12]  748 	mov	r7,a
                                    749 ;	spi_dac.c:146: while(!ms_flag);
      00317F                        750 00104$:
      00317F 90 04 3F         [24]  751 	mov	dptr,#_ms_flag
      003182 E0               [24]  752 	movx	a,@dptr
      003183 60 FA            [24]  753 	jz	00104$
                                    754 ;	spi_dac.c:147: ms_flag = 0;
      003185 90 04 3F         [24]  755 	mov	dptr,#_ms_flag
      003188 E4               [12]  756 	clr	a
      003189 F0               [24]  757 	movx	@dptr,a
                                    758 ;	spi_dac.c:150: P1_1 = 0;  // Select DAC
                                    759 ;	assignBit
      00318A C2 91            [12]  760 	clr	_P1_1
                                    761 ;	spi_dac.c:152: printf("Low byte %d\n", low_byte);
      00318C 8F 06            [24]  762 	mov	ar6,r7
      00318E 7C 00            [12]  763 	mov	r4,#0x00
      003190 C0 07            [24]  764 	push	ar7
      003192 C0 05            [24]  765 	push	ar5
      003194 C0 06            [24]  766 	push	ar6
      003196 C0 04            [24]  767 	push	ar4
      003198 74 C4            [12]  768 	mov	a,#___str_2
      00319A C0 E0            [24]  769 	push	acc
      00319C 74 3D            [12]  770 	mov	a,#(___str_2 >> 8)
      00319E C0 E0            [24]  771 	push	acc
      0031A0 74 80            [12]  772 	mov	a,#0x80
      0031A2 C0 E0            [24]  773 	push	acc
      0031A4 12 32 D1         [24]  774 	lcall	_printf
      0031A7 E5 81            [12]  775 	mov	a,sp
      0031A9 24 FB            [12]  776 	add	a,#0xfb
      0031AB F5 81            [12]  777 	mov	sp,a
      0031AD D0 05            [24]  778 	pop	ar5
                                    779 ;	spi_dac.c:153: printf("High byte %d\n", high_byte);
      0031AF 8D 04            [24]  780 	mov	ar4,r5
      0031B1 7E 00            [12]  781 	mov	r6,#0x00
      0031B3 C0 05            [24]  782 	push	ar5
      0031B5 C0 04            [24]  783 	push	ar4
      0031B7 C0 06            [24]  784 	push	ar6
      0031B9 74 D1            [12]  785 	mov	a,#___str_3
      0031BB C0 E0            [24]  786 	push	acc
      0031BD 74 3D            [12]  787 	mov	a,#(___str_3 >> 8)
      0031BF C0 E0            [24]  788 	push	acc
      0031C1 74 80            [12]  789 	mov	a,#0x80
      0031C3 C0 E0            [24]  790 	push	acc
      0031C5 12 32 D1         [24]  791 	lcall	_printf
      0031C8 E5 81            [12]  792 	mov	a,sp
      0031CA 24 FB            [12]  793 	add	a,#0xfb
      0031CC F5 81            [12]  794 	mov	sp,a
      0031CE D0 05            [24]  795 	pop	ar5
      0031D0 D0 07            [24]  796 	pop	ar7
                                    797 ;	spi_dac.c:156: SPDAT = high_byte;
      0031D2 8D C5            [24]  798 	mov	_SPDAT,r5
                                    799 ;	spi_dac.c:157: while(!transmission_complete);
      0031D4                        800 00107$:
      0031D4 90 04 40         [24]  801 	mov	dptr,#_transmission_complete
      0031D7 E0               [24]  802 	movx	a,@dptr
      0031D8 FD               [12]  803 	mov	r5,a
      0031D9 A3               [24]  804 	inc	dptr
      0031DA E0               [24]  805 	movx	a,@dptr
      0031DB FE               [12]  806 	mov	r6,a
      0031DC 4D               [12]  807 	orl	a,r5
      0031DD 60 F5            [24]  808 	jz	00107$
                                    809 ;	spi_dac.c:158: transmission_complete = 0;
      0031DF 90 04 40         [24]  810 	mov	dptr,#_transmission_complete
      0031E2 E4               [12]  811 	clr	a
      0031E3 F0               [24]  812 	movx	@dptr,a
      0031E4 A3               [24]  813 	inc	dptr
      0031E5 F0               [24]  814 	movx	@dptr,a
                                    815 ;	spi_dac.c:161: SPDAT = low_byte;
      0031E6 8F C5            [24]  816 	mov	_SPDAT,r7
                                    817 ;	spi_dac.c:162: while(!transmission_complete);
      0031E8                        818 00110$:
      0031E8 90 04 40         [24]  819 	mov	dptr,#_transmission_complete
      0031EB E0               [24]  820 	movx	a,@dptr
      0031EC FE               [12]  821 	mov	r6,a
      0031ED A3               [24]  822 	inc	dptr
      0031EE E0               [24]  823 	movx	a,@dptr
      0031EF FF               [12]  824 	mov	r7,a
      0031F0 4E               [12]  825 	orl	a,r6
      0031F1 60 F5            [24]  826 	jz	00110$
                                    827 ;	spi_dac.c:163: transmission_complete = 0;
      0031F3 90 04 40         [24]  828 	mov	dptr,#_transmission_complete
      0031F6 E4               [12]  829 	clr	a
      0031F7 F0               [24]  830 	movx	@dptr,a
      0031F8 A3               [24]  831 	inc	dptr
      0031F9 F0               [24]  832 	movx	@dptr,a
                                    833 ;	spi_dac.c:165: P1_1 = 1;  // Deselect DAC
                                    834 ;	assignBit
      0031FA D2 91            [12]  835 	setb	_P1_1
                                    836 ;	spi_dac.c:166: while(!transmission_complete);
      0031FC                        837 00113$:
      0031FC 90 04 40         [24]  838 	mov	dptr,#_transmission_complete
      0031FF E0               [24]  839 	movx	a,@dptr
      003200 FE               [12]  840 	mov	r6,a
      003201 A3               [24]  841 	inc	dptr
      003202 E0               [24]  842 	movx	a,@dptr
      003203 FF               [12]  843 	mov	r7,a
      003204 4E               [12]  844 	orl	a,r6
      003205 60 F5            [24]  845 	jz	00113$
                                    846 ;	spi_dac.c:167: transmission_complete = 0;
      003207 90 04 40         [24]  847 	mov	dptr,#_transmission_complete
      00320A E4               [12]  848 	clr	a
      00320B F0               [24]  849 	movx	@dptr,a
      00320C A3               [24]  850 	inc	dptr
      00320D F0               [24]  851 	movx	@dptr,a
                                    852 ;	spi_dac.c:169: dac_value_index++;
      00320E 90 04 02         [24]  853 	mov	dptr,#_main_dac_value_index_65536_46
      003211 E0               [24]  854 	movx	a,@dptr
      003212 24 01            [12]  855 	add	a,#0x01
      003214 F0               [24]  856 	movx	@dptr,a
      003215 A3               [24]  857 	inc	dptr
      003216 E0               [24]  858 	movx	a,@dptr
      003217 34 00            [12]  859 	addc	a,#0x00
      003219 F0               [24]  860 	movx	@dptr,a
                                    861 ;	spi_dac.c:171: }
      00321A 02 31 1C         [24]  862 	ljmp	00117$
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'timer0_init'
                                    865 ;------------------------------------------------------------
                                    866 ;	spi_dac.c:173: void timer0_init(void)
                                    867 ;	-----------------------------------------
                                    868 ;	 function timer0_init
                                    869 ;	-----------------------------------------
      00321D                        870 _timer0_init:
                                    871 ;	spi_dac.c:175: TMOD &= 0xF0;    // Clear Timer0 mode bits
      00321D 53 89 F0         [24]  872 	anl	_TMOD,#0xf0
                                    873 ;	spi_dac.c:176: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      003220 43 89 01         [24]  874 	orl	_TMOD,#0x01
                                    875 ;	spi_dac.c:179: TH0 = TH0_RELOAD;
      003223 75 8C FC         [24]  876 	mov	_TH0,#0xfc
                                    877 ;	spi_dac.c:180: TL0 = TL0_RELOAD;
      003226 75 8A 18         [24]  878 	mov	_TL0,#0x18
                                    879 ;	spi_dac.c:182: ET0 = 1;         // Enable Timer0 interrupt
                                    880 ;	assignBit
      003229 D2 A9            [12]  881 	setb	_ET0
                                    882 ;	spi_dac.c:183: TR0 = 1;         // Start Timer0
                                    883 ;	assignBit
      00322B D2 8C            [12]  884 	setb	_TR0
                                    885 ;	spi_dac.c:184: }
      00322D 22               [24]  886 	ret
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'timer0_isr'
                                    889 ;------------------------------------------------------------
                                    890 ;	spi_dac.c:187: void timer0_isr(void) __interrupt 1
                                    891 ;	-----------------------------------------
                                    892 ;	 function timer0_isr
                                    893 ;	-----------------------------------------
      00322E                        894 _timer0_isr:
      00322E C0 E0            [24]  895 	push	acc
      003230 C0 82            [24]  896 	push	dpl
      003232 C0 83            [24]  897 	push	dph
                                    898 ;	spi_dac.c:190: TH0 = TH0_RELOAD;
      003234 75 8C FC         [24]  899 	mov	_TH0,#0xfc
                                    900 ;	spi_dac.c:191: TL0 = TL0_RELOAD;
      003237 75 8A 18         [24]  901 	mov	_TL0,#0x18
                                    902 ;	spi_dac.c:193: ms_flag = 1;     // Set 1ms flag
      00323A 90 04 3F         [24]  903 	mov	dptr,#_ms_flag
      00323D 74 01            [12]  904 	mov	a,#0x01
      00323F F0               [24]  905 	movx	@dptr,a
                                    906 ;	spi_dac.c:194: P1_0 = !P1_0;    // Toggle P1.0 for verification
      003240 B2 90            [12]  907 	cpl	_P1_0
                                    908 ;	spi_dac.c:195: }
      003242 D0 83            [24]  909 	pop	dph
      003244 D0 82            [24]  910 	pop	dpl
      003246 D0 E0            [24]  911 	pop	acc
      003248 32               [24]  912 	reti
                                    913 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    914 ;	eliminated unneeded push/pop psw
                                    915 ;	eliminated unneeded push/pop b
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'spi_isr'
                                    918 ;------------------------------------------------------------
                                    919 ;	spi_dac.c:203: void spi_isr(void) __interrupt 9
                                    920 ;	-----------------------------------------
                                    921 ;	 function spi_isr
                                    922 ;	-----------------------------------------
      003249                        923 _spi_isr:
      003249 C0 E0            [24]  924 	push	acc
      00324B C0 82            [24]  925 	push	dpl
      00324D C0 83            [24]  926 	push	dph
      00324F C0 D0            [24]  927 	push	psw
                                    928 ;	spi_dac.c:205: if(SPSTA == 0x80)  // Check for successful transmission
      003251 74 80            [12]  929 	mov	a,#0x80
      003253 B5 C4 09         [24]  930 	cjne	a,_SPSTA,00103$
                                    931 ;	spi_dac.c:207: transmission_complete = 1;
      003256 90 04 40         [24]  932 	mov	dptr,#_transmission_complete
      003259 74 01            [12]  933 	mov	a,#0x01
      00325B F0               [24]  934 	movx	@dptr,a
      00325C E4               [12]  935 	clr	a
      00325D A3               [24]  936 	inc	dptr
      00325E F0               [24]  937 	movx	@dptr,a
      00325F                        938 00103$:
                                    939 ;	spi_dac.c:209: }
      00325F D0 D0            [24]  940 	pop	psw
      003261 D0 83            [24]  941 	pop	dph
      003263 D0 82            [24]  942 	pop	dpl
      003265 D0 E0            [24]  943 	pop	acc
      003267 32               [24]  944 	reti
                                    945 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    946 ;	eliminated unneeded push/pop b
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'spi_init'
                                    949 ;------------------------------------------------------------
                                    950 ;	spi_dac.c:221: void spi_init(void) 
                                    951 ;	-----------------------------------------
                                    952 ;	 function spi_init
                                    953 ;	-----------------------------------------
      003268                        954 _spi_init:
                                    955 ;	spi_dac.c:224: SPCON = 0;
      003268 75 C3 00         [24]  956 	mov	_SPCON,#0x00
                                    957 ;	spi_dac.c:230: SPCON |= SPI_CLK_DIV_2;      // Set clock frequency divider
      00326B 85 C3 C3         [24]  958 	mov	_SPCON,_SPCON
                                    959 ;	spi_dac.c:231: SPCON |= SPI_MASTER_MODE;      // Set as master
      00326E 43 C3 10         [24]  960 	orl	_SPCON,#0x10
                                    961 ;	spi_dac.c:232: SPCON |= SPI_CPOL_HIGH;        // Clock polarity active high
      003271 43 C3 08         [24]  962 	orl	_SPCON,#0x08
                                    963 ;	spi_dac.c:233: SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge
      003274 53 C3 FB         [24]  964 	anl	_SPCON,#0xfb
                                    965 ;	spi_dac.c:237: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      003277 43 B1 08         [24]  966 	orl	_IEN1,#0x08
                                    967 ;	spi_dac.c:239: }
      00327A 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'spi_transmission_start'
                                    971 ;------------------------------------------------------------
                                    972 ;	spi_dac.c:246: void spi_transmission_start(void)
                                    973 ;	-----------------------------------------
                                    974 ;	 function spi_transmission_start
                                    975 ;	-----------------------------------------
      00327B                        976 _spi_transmission_start:
                                    977 ;	spi_dac.c:248: SPCON |= SPI_ENABLE;           // Enable SPI
      00327B 43 C3 40         [24]  978 	orl	_SPCON,#0x40
                                    979 ;	spi_dac.c:249: }
      00327E 22               [24]  980 	ret
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    983 ;------------------------------------------------------------
                                    984 ;	spi_dac.c:256: void spi_transmission_stop(void) 
                                    985 ;	-----------------------------------------
                                    986 ;	 function spi_transmission_stop
                                    987 ;	-----------------------------------------
      00327F                        988 _spi_transmission_stop:
                                    989 ;	spi_dac.c:258: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00327F 53 C3 BF         [24]  990 	anl	_SPCON,#0xbf
                                    991 ;	spi_dac.c:259: }
      003282 22               [24]  992 	ret
                                    993 	.area CSEG    (CODE)
                                    994 	.area CONST   (CODE)
      003D33                        995 _dac_values:
      003D33 80 00                  996 	.byte #0x80, #0x00	;  128
      003D35 8F 00                  997 	.byte #0x8f, #0x00	;  143
      003D37 9F 00                  998 	.byte #0x9f, #0x00	;  159
      003D39 AE 00                  999 	.byte #0xae, #0x00	;  174
      003D3B BD 00                 1000 	.byte #0xbd, #0x00	;  189
      003D3D CA 00                 1001 	.byte #0xca, #0x00	;  202
      003D3F D7 00                 1002 	.byte #0xd7, #0x00	;  215
      003D41 E2 00                 1003 	.byte #0xe2, #0x00	;  226
      003D43 EB 00                 1004 	.byte #0xeb, #0x00	;  235
      003D45 F3 00                 1005 	.byte #0xf3, #0x00	;  243
      003D47 F9 00                 1006 	.byte #0xf9, #0x00	;  249
      003D49 FD 00                 1007 	.byte #0xfd, #0x00	;  253
      003D4B FF 00                 1008 	.byte #0xff, #0x00	;  255
      003D4D FF 00                 1009 	.byte #0xff, #0x00	;  255
      003D4F FD 00                 1010 	.byte #0xfd, #0x00	;  253
      003D51 F9 00                 1011 	.byte #0xf9, #0x00	;  249
      003D53 F3 00                 1012 	.byte #0xf3, #0x00	;  243
      003D55 EB 00                 1013 	.byte #0xeb, #0x00	;  235
      003D57 E2 00                 1014 	.byte #0xe2, #0x00	;  226
      003D59 D7 00                 1015 	.byte #0xd7, #0x00	;  215
      003D5B CA 00                 1016 	.byte #0xca, #0x00	;  202
      003D5D BD 00                 1017 	.byte #0xbd, #0x00	;  189
      003D5F AE 00                 1018 	.byte #0xae, #0x00	;  174
      003D61 9F 00                 1019 	.byte #0x9f, #0x00	;  159
      003D63 8F 00                 1020 	.byte #0x8f, #0x00	;  143
      003D65 80 00                 1021 	.byte #0x80, #0x00	;  128
      003D67 70 00                 1022 	.byte #0x70, #0x00	;  112
      003D69 60 00                 1023 	.byte #0x60, #0x00	;  96
      003D6B 51 00                 1024 	.byte #0x51, #0x00	;  81
      003D6D 42 00                 1025 	.byte #0x42, #0x00	;  66
      003D6F 35 00                 1026 	.byte #0x35, #0x00	;  53
      003D71 28 00                 1027 	.byte #0x28, #0x00	;  40
      003D73 1D 00                 1028 	.byte #0x1d, #0x00	;  29
      003D75 14 00                 1029 	.byte #0x14, #0x00	;  20
      003D77 0C 00                 1030 	.byte #0x0c, #0x00	;  12
      003D79 06 00                 1031 	.byte #0x06, #0x00	;  6
      003D7B 02 00                 1032 	.byte #0x02, #0x00	;  2
      003D7D 00 00                 1033 	.byte #0x00, #0x00	;  0
      003D7F 00 00                 1034 	.byte #0x00, #0x00	;  0
      003D81 02 00                 1035 	.byte #0x02, #0x00	;  2
      003D83 06 00                 1036 	.byte #0x06, #0x00	;  6
      003D85 0C 00                 1037 	.byte #0x0c, #0x00	;  12
      003D87 14 00                 1038 	.byte #0x14, #0x00	;  20
      003D89 1D 00                 1039 	.byte #0x1d, #0x00	;  29
      003D8B 28 00                 1040 	.byte #0x28, #0x00	;  40
      003D8D 35 00                 1041 	.byte #0x35, #0x00	;  53
      003D8F 42 00                 1042 	.byte #0x42, #0x00	;  66
      003D91 51 00                 1043 	.byte #0x51, #0x00	;  81
      003D93 60 00                 1044 	.byte #0x60, #0x00	;  96
      003D95 70 00                 1045 	.byte #0x70, #0x00	;  112
                                   1046 	.area CONST   (CODE)
      003D97                       1047 ___str_0:
      003D97 53 50 49 20 44 41 43  1048 	.ascii "SPI DAC PROGRAM"
             20 50 52 4F 47 52 41
             4D
      003DA6 0A                    1049 	.db 0x0a
      003DA7 0D                    1050 	.db 0x0d
      003DA8 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      003DA9                       1054 ___str_1:
      003DA9 53 50 49 20 54 52 41  1055 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003DC1 0A                    1056 	.db 0x0a
      003DC2 0D                    1057 	.db 0x0d
      003DC3 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area CONST   (CODE)
      003DC4                       1061 ___str_2:
      003DC4 4C 6F 77 20 62 79 74  1062 	.ascii "Low byte %d"
             65 20 25 64
      003DCF 0A                    1063 	.db 0x0a
      003DD0 00                    1064 	.db 0x00
                                   1065 	.area CSEG    (CODE)
                                   1066 	.area CONST   (CODE)
      003DD1                       1067 ___str_3:
      003DD1 48 69 67 68 20 62 79  1068 	.ascii "High byte %d"
             74 65 20 25 64
      003DDD 0A                    1069 	.db 0x0a
      003DDE 00                    1070 	.db 0x00
                                   1071 	.area CSEG    (CODE)
                                   1072 	.area XINIT   (CODE)
      003DEA                       1073 __xinit__ms_flag:
      003DEA 00                    1074 	.db #0x00	; 0
      003DEB                       1075 __xinit__transmission_complete:
      003DEB 00 00                 1076 	.byte #0x00, #0x00	;  0
                                   1077 	.area CABS    (ABS,CODE)
