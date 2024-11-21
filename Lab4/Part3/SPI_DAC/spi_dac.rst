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
                                    432 ; overlayable bit register bank
                                    433 ;--------------------------------------------------------
                                    434 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        435 bits:
      000020                        436 	.ds 1
                           008000   437 	b0 = bits[0]
                           008100   438 	b1 = bits[1]
                           008200   439 	b2 = bits[2]
                           008300   440 	b3 = bits[3]
                           008400   441 	b4 = bits[4]
                           008500   442 	b5 = bits[5]
                           008600   443 	b6 = bits[6]
                           008700   444 	b7 = bits[7]
                                    445 ;--------------------------------------------------------
                                    446 ; internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area DSEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable items in internal ram 
                                    451 ;--------------------------------------------------------
                                    452 ;--------------------------------------------------------
                                    453 ; Stack segment in internal ram 
                                    454 ;--------------------------------------------------------
                                    455 	.area	SSEG
      000021                        456 __start__stack:
      000021                        457 	.ds	1
                                    458 
                                    459 ;--------------------------------------------------------
                                    460 ; indirectly addressable internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area ISEG    (DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; absolute internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area IABS    (ABS,DATA)
                                    467 	.area IABS    (ABS,DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; bit data
                                    470 ;--------------------------------------------------------
                                    471 	.area BSEG    (BIT)
                                    472 ;--------------------------------------------------------
                                    473 ; paged external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area PSEG    (PAG,XDATA)
                                    476 ;--------------------------------------------------------
                                    477 ; external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area XSEG    (XDATA)
      000400                        480 _putchar_charToSend_65536_17:
      000400                        481 	.ds 2
      000402                        482 _main_dac_value_index_65537_23:
      000402                        483 	.ds 2
      000404                        484 _main_dac_data_65537_23:
      000404                        485 	.ds 2
                                    486 ;--------------------------------------------------------
                                    487 ; absolute external ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XABS    (ABS,XDATA)
                                    490 ;--------------------------------------------------------
                                    491 ; external initialized ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XISEG   (XDATA)
      00043F                        494 _ms_flag::
      00043F                        495 	.ds 1
      000440                        496 _transmission_complete::
      000440                        497 	.ds 2
                                    498 	.area HOME    (CODE)
                                    499 	.area GSINIT0 (CODE)
                                    500 	.area GSINIT1 (CODE)
                                    501 	.area GSINIT2 (CODE)
                                    502 	.area GSINIT3 (CODE)
                                    503 	.area GSINIT4 (CODE)
                                    504 	.area GSINIT5 (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area CSEG    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; interrupt vector 
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
      002000                        512 __interrupt_vect:
      002000 02 20 51         [24]  513 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  514 	reti
      002004                        515 	.ds	7
      00200B 02 22 53         [24]  516 	ljmp	_timer0_isr
      00200E                        517 	.ds	5
      002013 32               [24]  518 	reti
      002014                        519 	.ds	7
      00201B 32               [24]  520 	reti
      00201C                        521 	.ds	7
      002023 32               [24]  522 	reti
      002024                        523 	.ds	7
      00202B 32               [24]  524 	reti
      00202C                        525 	.ds	7
      002033 32               [24]  526 	reti
      002034                        527 	.ds	7
      00203B 32               [24]  528 	reti
      00203C                        529 	.ds	7
      002043 32               [24]  530 	reti
      002044                        531 	.ds	7
      00204B 02 22 B0         [24]  532 	ljmp	_spi_isr
                                    533 ;--------------------------------------------------------
                                    534 ; global & static initialisations
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.area GSFINAL (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.globl __sdcc_gsinit_startup
                                    541 	.globl __sdcc_program_startup
                                    542 	.globl __start__stack
                                    543 	.globl __mcs51_genXINIT
                                    544 	.globl __mcs51_genXRAMCLEAR
                                    545 	.globl __mcs51_genRAMCLEAR
                                    546 	.area GSFINAL (CODE)
      0020AA 02 20 4E         [24]  547 	ljmp	__sdcc_program_startup
                                    548 ;--------------------------------------------------------
                                    549 ; Home
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area HOME    (CODE)
      00204E                        553 __sdcc_program_startup:
      00204E 02 20 DA         [24]  554 	ljmp	_main
                                    555 ;	return from main will return to caller
                                    556 ;--------------------------------------------------------
                                    557 ; code
                                    558 ;--------------------------------------------------------
                                    559 	.area CSEG    (CODE)
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'putchar'
                                    562 ;------------------------------------------------------------
                                    563 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    564 ;------------------------------------------------------------
                                    565 ;	spi_dac.c:89: int putchar(int charToSend) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function putchar
                                    568 ;	-----------------------------------------
      0020AD                        569 _putchar:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
      0020AD AF 83            [24]  578 	mov	r7,dph
      0020AF E5 82            [12]  579 	mov	a,dpl
      0020B1 90 04 00         [24]  580 	mov	dptr,#_putchar_charToSend_65536_17
      0020B4 F0               [24]  581 	movx	@dptr,a
      0020B5 EF               [12]  582 	mov	a,r7
      0020B6 A3               [24]  583 	inc	dptr
      0020B7 F0               [24]  584 	movx	@dptr,a
                                    585 ;	spi_dac.c:90: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  586 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  587 	movx	a,@dptr
      0020BC FE               [12]  588 	mov	r6,a
      0020BD A3               [24]  589 	inc	dptr
      0020BE E0               [24]  590 	movx	a,@dptr
      0020BF FF               [12]  591 	mov	r7,a
      0020C0 8E 99            [24]  592 	mov	_SBUF,r6
                                    593 ;	spi_dac.c:91: while (!TI);             /* Wait for transmission completion */
      0020C2                        594 00101$:
                                    595 ;	spi_dac.c:92: TI = 0;                  /* Clear transmission flag */
                                    596 ;	assignBit
      0020C2 10 99 02         [24]  597 	jbc	_TI,00114$
      0020C5 80 FB            [24]  598 	sjmp	00101$
      0020C7                        599 00114$:
                                    600 ;	spi_dac.c:93: return charToSend;
      0020C7 8E 82            [24]  601 	mov	dpl,r6
      0020C9 8F 83            [24]  602 	mov	dph,r7
                                    603 ;	spi_dac.c:94: }
      0020CB 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'getchar'
                                    607 ;------------------------------------------------------------
                                    608 ;	spi_dac.c:100: int getchar(void) {
                                    609 ;	-----------------------------------------
                                    610 ;	 function getchar
                                    611 ;	-----------------------------------------
      0020CC                        612 _getchar:
                                    613 ;	spi_dac.c:101: while (!RI);             /* Wait for reception completion */
      0020CC                        614 00101$:
                                    615 ;	spi_dac.c:102: RI = 0;                  /* Clear reception flag */
                                    616 ;	assignBit
      0020CC 10 98 02         [24]  617 	jbc	_RI,00114$
      0020CF 80 FB            [24]  618 	sjmp	00101$
      0020D1                        619 00114$:
                                    620 ;	spi_dac.c:103: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  621 	mov	r6,_SBUF
      0020D3 7F 00            [12]  622 	mov	r7,#0x00
      0020D5 8E 82            [24]  623 	mov	dpl,r6
      0020D7 8F 83            [24]  624 	mov	dph,r7
                                    625 ;	spi_dac.c:104: }
      0020D9 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'main'
                                    629 ;------------------------------------------------------------
                                    630 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_23'
                                    631 ;dac_data                  Allocated with name '_main_dac_data_65537_23'
                                    632 ;high_byte                 Allocated with name '_main_high_byte_65538_24'
                                    633 ;low_byte                  Allocated with name '_main_low_byte_65538_24'
                                    634 ;------------------------------------------------------------
                                    635 ;	spi_dac.c:106: int main(void)
                                    636 ;	-----------------------------------------
                                    637 ;	 function main
                                    638 ;	-----------------------------------------
      0020DA                        639 _main:
                                    640 ;	spi_dac.c:108: printf(" SPI DAC PROGRAM\n\r");
      0020DA 74 45            [12]  641 	mov	a,#___str_0
      0020DC C0 E0            [24]  642 	push	acc
      0020DE 74 2E            [12]  643 	mov	a,#(___str_0 >> 8)
      0020E0 C0 E0            [24]  644 	push	acc
      0020E2 74 80            [12]  645 	mov	a,#0x80
      0020E4 C0 E0            [24]  646 	push	acc
      0020E6 12 23 7F         [24]  647 	lcall	_printf
      0020E9 15 81            [12]  648 	dec	sp
      0020EB 15 81            [12]  649 	dec	sp
      0020ED 15 81            [12]  650 	dec	sp
                                    651 ;	spi_dac.c:110: int dac_value_index = 0;
      0020EF 90 04 02         [24]  652 	mov	dptr,#_main_dac_value_index_65537_23
      0020F2 E4               [12]  653 	clr	a
      0020F3 F0               [24]  654 	movx	@dptr,a
      0020F4 A3               [24]  655 	inc	dptr
      0020F5 F0               [24]  656 	movx	@dptr,a
                                    657 ;	spi_dac.c:111: int dac_data = 0;
      0020F6 90 04 04         [24]  658 	mov	dptr,#_main_dac_data_65537_23
      0020F9 F0               [24]  659 	movx	@dptr,a
      0020FA A3               [24]  660 	inc	dptr
      0020FB F0               [24]  661 	movx	@dptr,a
                                    662 ;	spi_dac.c:114: EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts
      0020FC 7F 01            [12]  663 	mov	r7,#0x01
      0020FE A2 AF            [12]  664 	mov	c,_EA
                                    665 ;	assignBit
      002100 EF               [12]  666 	mov	a,r7
      002101 24 FF            [12]  667 	add	a,#0xff
      002103 92 AF            [24]  668 	mov	_EA,c
                                    669 ;	spi_dac.c:117: spi_init();
      002105 12 23 0F         [24]  670 	lcall	_spi_init
                                    671 ;	spi_dac.c:120: printf("SPI TRANSMISSION STARTED\n\r");
      002108 74 58            [12]  672 	mov	a,#___str_1
      00210A C0 E0            [24]  673 	push	acc
      00210C 74 2E            [12]  674 	mov	a,#(___str_1 >> 8)
      00210E C0 E0            [24]  675 	push	acc
      002110 74 80            [12]  676 	mov	a,#0x80
      002112 C0 E0            [24]  677 	push	acc
      002114 12 23 7F         [24]  678 	lcall	_printf
      002117 15 81            [12]  679 	dec	sp
      002119 15 81            [12]  680 	dec	sp
      00211B 15 81            [12]  681 	dec	sp
                                    682 ;	spi_dac.c:124: timer0_init();
      00211D 12 22 42         [24]  683 	lcall	_timer0_init
                                    684 ;	spi_dac.c:126: while(1)
      002120                        685 00117$:
                                    686 ;	spi_dac.c:128: printf("while start\n\r");
      002120 74 73            [12]  687 	mov	a,#___str_2
      002122 C0 E0            [24]  688 	push	acc
      002124 74 2E            [12]  689 	mov	a,#(___str_2 >> 8)
      002126 C0 E0            [24]  690 	push	acc
      002128 74 80            [12]  691 	mov	a,#0x80
      00212A C0 E0            [24]  692 	push	acc
      00212C 12 23 7F         [24]  693 	lcall	_printf
      00212F 15 81            [12]  694 	dec	sp
      002131 15 81            [12]  695 	dec	sp
      002133 15 81            [12]  696 	dec	sp
                                    697 ;	spi_dac.c:130: if(dac_value_index < SINE_MAX_INDEX)
      002135 90 04 02         [24]  698 	mov	dptr,#_main_dac_value_index_65537_23
      002138 E0               [24]  699 	movx	a,@dptr
      002139 FE               [12]  700 	mov	r6,a
      00213A A3               [24]  701 	inc	dptr
      00213B E0               [24]  702 	movx	a,@dptr
      00213C FF               [12]  703 	mov	r7,a
      00213D C3               [12]  704 	clr	c
      00213E EE               [12]  705 	mov	a,r6
      00213F 94 31            [12]  706 	subb	a,#0x31
      002141 EF               [12]  707 	mov	a,r7
      002142 64 80            [12]  708 	xrl	a,#0x80
      002144 94 80            [12]  709 	subb	a,#0x80
      002146 50 21            [24]  710 	jnc	00102$
                                    711 ;	spi_dac.c:134: dac_data = dac_values[dac_value_index];
      002148 EE               [12]  712 	mov	a,r6
      002149 2E               [12]  713 	add	a,r6
      00214A FE               [12]  714 	mov	r6,a
      00214B EF               [12]  715 	mov	a,r7
      00214C 33               [12]  716 	rlc	a
      00214D FF               [12]  717 	mov	r7,a
      00214E EE               [12]  718 	mov	a,r6
      00214F 24 E1            [12]  719 	add	a,#_dac_values
      002151 F5 82            [12]  720 	mov	dpl,a
      002153 EF               [12]  721 	mov	a,r7
      002154 34 2D            [12]  722 	addc	a,#(_dac_values >> 8)
      002156 F5 83            [12]  723 	mov	dph,a
      002158 E4               [12]  724 	clr	a
      002159 93               [24]  725 	movc	a,@a+dptr
      00215A FE               [12]  726 	mov	r6,a
      00215B A3               [24]  727 	inc	dptr
      00215C E4               [12]  728 	clr	a
      00215D 93               [24]  729 	movc	a,@a+dptr
      00215E FF               [12]  730 	mov	r7,a
      00215F 90 04 04         [24]  731 	mov	dptr,#_main_dac_data_65537_23
      002162 EE               [12]  732 	mov	a,r6
      002163 F0               [24]  733 	movx	@dptr,a
      002164 EF               [12]  734 	mov	a,r7
      002165 A3               [24]  735 	inc	dptr
      002166 F0               [24]  736 	movx	@dptr,a
      002167 80 07            [24]  737 	sjmp	00103$
      002169                        738 00102$:
                                    739 ;	spi_dac.c:138: dac_value_index = 0;  // Reset index for next cycle
      002169 90 04 02         [24]  740 	mov	dptr,#_main_dac_value_index_65537_23
      00216C E4               [12]  741 	clr	a
      00216D F0               [24]  742 	movx	@dptr,a
      00216E A3               [24]  743 	inc	dptr
      00216F F0               [24]  744 	movx	@dptr,a
      002170                        745 00103$:
                                    746 ;	spi_dac.c:144: ((dac_data >> 4) & 0x0F);
      002170 90 04 04         [24]  747 	mov	dptr,#_main_dac_data_65537_23
      002173 E0               [24]  748 	movx	a,@dptr
      002174 FE               [12]  749 	mov	r6,a
      002175 A3               [24]  750 	inc	dptr
      002176 E0               [24]  751 	movx	a,@dptr
      002177 8E 04            [24]  752 	mov	ar4,r6
      002179 C4               [12]  753 	swap	a
      00217A CC               [12]  754 	xch	a,r4
      00217B C4               [12]  755 	swap	a
      00217C 54 0F            [12]  756 	anl	a,#0x0f
      00217E 6C               [12]  757 	xrl	a,r4
      00217F CC               [12]  758 	xch	a,r4
      002180 54 0F            [12]  759 	anl	a,#0x0f
      002182 CC               [12]  760 	xch	a,r4
      002183 6C               [12]  761 	xrl	a,r4
      002184 CC               [12]  762 	xch	a,r4
      002185 30 E3 02         [24]  763 	jnb	acc.3,00162$
      002188 44 F0            [12]  764 	orl	a,#0xf0
      00218A                        765 00162$:
      00218A 53 04 0F         [24]  766 	anl	ar4,#0x0f
      00218D 7D 00            [12]  767 	mov	r5,#0x00
      00218F 43 04 30         [24]  768 	orl	ar4,#0x30
                                    769 ;	spi_dac.c:147: low_byte = (dac_data & 0x0F) << 4;
      002192 53 06 0F         [24]  770 	anl	ar6,#0x0f
      002195 E4               [12]  771 	clr	a
      002196 CE               [12]  772 	xch	a,r6
      002197 C4               [12]  773 	swap	a
      002198 CE               [12]  774 	xch	a,r6
      002199 6E               [12]  775 	xrl	a,r6
      00219A CE               [12]  776 	xch	a,r6
      00219B 54 F0            [12]  777 	anl	a,#0xf0
      00219D CE               [12]  778 	xch	a,r6
      00219E 6E               [12]  779 	xrl	a,r6
      00219F FF               [12]  780 	mov	r7,a
                                    781 ;	spi_dac.c:149: while(!ms_flag);
      0021A0                        782 00104$:
      0021A0 90 04 3F         [24]  783 	mov	dptr,#_ms_flag
      0021A3 E0               [24]  784 	movx	a,@dptr
      0021A4 60 FA            [24]  785 	jz	00104$
                                    786 ;	spi_dac.c:150: ms_flag = 0;
      0021A6 90 04 3F         [24]  787 	mov	dptr,#_ms_flag
      0021A9 E4               [12]  788 	clr	a
      0021AA F0               [24]  789 	movx	@dptr,a
                                    790 ;	spi_dac.c:153: P1_1 = 0;  // Select DAC
                                    791 ;	assignBit
      0021AB C2 91            [12]  792 	clr	_P1_1
                                    793 ;	spi_dac.c:155: printf("Low byte %d\n\r", low_byte);
      0021AD C0 07            [24]  794 	push	ar7
      0021AF C0 06            [24]  795 	push	ar6
      0021B1 C0 05            [24]  796 	push	ar5
      0021B3 C0 04            [24]  797 	push	ar4
      0021B5 C0 06            [24]  798 	push	ar6
      0021B7 C0 07            [24]  799 	push	ar7
      0021B9 74 81            [12]  800 	mov	a,#___str_3
      0021BB C0 E0            [24]  801 	push	acc
      0021BD 74 2E            [12]  802 	mov	a,#(___str_3 >> 8)
      0021BF C0 E0            [24]  803 	push	acc
      0021C1 74 80            [12]  804 	mov	a,#0x80
      0021C3 C0 E0            [24]  805 	push	acc
      0021C5 12 23 7F         [24]  806 	lcall	_printf
      0021C8 E5 81            [12]  807 	mov	a,sp
      0021CA 24 FB            [12]  808 	add	a,#0xfb
      0021CC F5 81            [12]  809 	mov	sp,a
      0021CE D0 04            [24]  810 	pop	ar4
      0021D0 D0 05            [24]  811 	pop	ar5
                                    812 ;	spi_dac.c:156: printf("High byte %d\n\r", high_byte);
      0021D2 C0 05            [24]  813 	push	ar5
      0021D4 C0 04            [24]  814 	push	ar4
      0021D6 C0 04            [24]  815 	push	ar4
      0021D8 C0 05            [24]  816 	push	ar5
      0021DA 74 8F            [12]  817 	mov	a,#___str_4
      0021DC C0 E0            [24]  818 	push	acc
      0021DE 74 2E            [12]  819 	mov	a,#(___str_4 >> 8)
      0021E0 C0 E0            [24]  820 	push	acc
      0021E2 74 80            [12]  821 	mov	a,#0x80
      0021E4 C0 E0            [24]  822 	push	acc
      0021E6 12 23 7F         [24]  823 	lcall	_printf
      0021E9 E5 81            [12]  824 	mov	a,sp
      0021EB 24 FB            [12]  825 	add	a,#0xfb
      0021ED F5 81            [12]  826 	mov	sp,a
      0021EF D0 04            [24]  827 	pop	ar4
      0021F1 D0 05            [24]  828 	pop	ar5
      0021F3 D0 06            [24]  829 	pop	ar6
      0021F5 D0 07            [24]  830 	pop	ar7
                                    831 ;	spi_dac.c:159: SPDAT = high_byte;
      0021F7 8C C5            [24]  832 	mov	_SPDAT,r4
                                    833 ;	spi_dac.c:160: while(!transmission_complete);
      0021F9                        834 00107$:
      0021F9 90 04 40         [24]  835 	mov	dptr,#_transmission_complete
      0021FC E0               [24]  836 	movx	a,@dptr
      0021FD FC               [12]  837 	mov	r4,a
      0021FE A3               [24]  838 	inc	dptr
      0021FF E0               [24]  839 	movx	a,@dptr
      002200 FD               [12]  840 	mov	r5,a
      002201 4C               [12]  841 	orl	a,r4
      002202 60 F5            [24]  842 	jz	00107$
                                    843 ;	spi_dac.c:161: transmission_complete = 0;
      002204 90 04 40         [24]  844 	mov	dptr,#_transmission_complete
      002207 E4               [12]  845 	clr	a
      002208 F0               [24]  846 	movx	@dptr,a
      002209 A3               [24]  847 	inc	dptr
      00220A F0               [24]  848 	movx	@dptr,a
                                    849 ;	spi_dac.c:164: SPDAT = low_byte;
      00220B 8E C5            [24]  850 	mov	_SPDAT,r6
                                    851 ;	spi_dac.c:165: while(!transmission_complete);
      00220D                        852 00110$:
      00220D 90 04 40         [24]  853 	mov	dptr,#_transmission_complete
      002210 E0               [24]  854 	movx	a,@dptr
      002211 FE               [12]  855 	mov	r6,a
      002212 A3               [24]  856 	inc	dptr
      002213 E0               [24]  857 	movx	a,@dptr
      002214 FF               [12]  858 	mov	r7,a
      002215 4E               [12]  859 	orl	a,r6
      002216 60 F5            [24]  860 	jz	00110$
                                    861 ;	spi_dac.c:166: transmission_complete = 0;
      002218 90 04 40         [24]  862 	mov	dptr,#_transmission_complete
      00221B E4               [12]  863 	clr	a
      00221C F0               [24]  864 	movx	@dptr,a
      00221D A3               [24]  865 	inc	dptr
      00221E F0               [24]  866 	movx	@dptr,a
                                    867 ;	spi_dac.c:168: P1_1 = 1;  // Deselect DAC
                                    868 ;	assignBit
      00221F D2 91            [12]  869 	setb	_P1_1
                                    870 ;	spi_dac.c:169: while(!transmission_complete);
      002221                        871 00113$:
      002221 90 04 40         [24]  872 	mov	dptr,#_transmission_complete
      002224 E0               [24]  873 	movx	a,@dptr
      002225 FE               [12]  874 	mov	r6,a
      002226 A3               [24]  875 	inc	dptr
      002227 E0               [24]  876 	movx	a,@dptr
      002228 FF               [12]  877 	mov	r7,a
      002229 4E               [12]  878 	orl	a,r6
      00222A 60 F5            [24]  879 	jz	00113$
                                    880 ;	spi_dac.c:170: transmission_complete = 0;
      00222C 90 04 40         [24]  881 	mov	dptr,#_transmission_complete
      00222F E4               [12]  882 	clr	a
      002230 F0               [24]  883 	movx	@dptr,a
      002231 A3               [24]  884 	inc	dptr
      002232 F0               [24]  885 	movx	@dptr,a
                                    886 ;	spi_dac.c:172: dac_value_index++;
      002233 90 04 02         [24]  887 	mov	dptr,#_main_dac_value_index_65537_23
      002236 E0               [24]  888 	movx	a,@dptr
      002237 24 01            [12]  889 	add	a,#0x01
      002239 F0               [24]  890 	movx	@dptr,a
      00223A A3               [24]  891 	inc	dptr
      00223B E0               [24]  892 	movx	a,@dptr
      00223C 34 00            [12]  893 	addc	a,#0x00
      00223E F0               [24]  894 	movx	@dptr,a
                                    895 ;	spi_dac.c:174: }
      00223F 02 21 20         [24]  896 	ljmp	00117$
                                    897 ;------------------------------------------------------------
                                    898 ;Allocation info for local variables in function 'timer0_init'
                                    899 ;------------------------------------------------------------
                                    900 ;	spi_dac.c:176: void timer0_init(void)
                                    901 ;	-----------------------------------------
                                    902 ;	 function timer0_init
                                    903 ;	-----------------------------------------
      002242                        904 _timer0_init:
                                    905 ;	spi_dac.c:178: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002242 53 89 F0         [24]  906 	anl	_TMOD,#0xf0
                                    907 ;	spi_dac.c:179: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      002245 43 89 01         [24]  908 	orl	_TMOD,#0x01
                                    909 ;	spi_dac.c:182: TH0 = TH0_RELOAD;
      002248 75 8C FC         [24]  910 	mov	_TH0,#0xfc
                                    911 ;	spi_dac.c:183: TL0 = TL0_RELOAD;
      00224B 75 8A 66         [24]  912 	mov	_TL0,#0x66
                                    913 ;	spi_dac.c:185: ET0 = 1;         // Enable Timer0 interrupt
                                    914 ;	assignBit
      00224E D2 A9            [12]  915 	setb	_ET0
                                    916 ;	spi_dac.c:186: TR0 = 1;         // Start Timer0
                                    917 ;	assignBit
      002250 D2 8C            [12]  918 	setb	_TR0
                                    919 ;	spi_dac.c:187: }
      002252 22               [24]  920 	ret
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'timer0_isr'
                                    923 ;------------------------------------------------------------
                                    924 ;	spi_dac.c:190: void timer0_isr(void) __interrupt 1
                                    925 ;	-----------------------------------------
                                    926 ;	 function timer0_isr
                                    927 ;	-----------------------------------------
      002253                        928 _timer0_isr:
      002253 C0 20            [24]  929 	push	bits
      002255 C0 E0            [24]  930 	push	acc
      002257 C0 F0            [24]  931 	push	b
      002259 C0 82            [24]  932 	push	dpl
      00225B C0 83            [24]  933 	push	dph
      00225D C0 07            [24]  934 	push	(0+7)
      00225F C0 06            [24]  935 	push	(0+6)
      002261 C0 05            [24]  936 	push	(0+5)
      002263 C0 04            [24]  937 	push	(0+4)
      002265 C0 03            [24]  938 	push	(0+3)
      002267 C0 02            [24]  939 	push	(0+2)
      002269 C0 01            [24]  940 	push	(0+1)
      00226B C0 00            [24]  941 	push	(0+0)
      00226D C0 D0            [24]  942 	push	psw
      00226F 75 D0 00         [24]  943 	mov	psw,#0x00
                                    944 ;	spi_dac.c:193: TH0 = 0x4B;
      002272 75 8C 4B         [24]  945 	mov	_TH0,#0x4b
                                    946 ;	spi_dac.c:194: TL0 = 0x1C;
      002275 75 8A 1C         [24]  947 	mov	_TL0,#0x1c
                                    948 ;	spi_dac.c:196: ms_flag = 1;     // Set 1ms flag
      002278 90 04 3F         [24]  949 	mov	dptr,#_ms_flag
      00227B 74 01            [12]  950 	mov	a,#0x01
      00227D F0               [24]  951 	movx	@dptr,a
                                    952 ;	spi_dac.c:198: printf("T \n\r");
      00227E 74 9E            [12]  953 	mov	a,#___str_5
      002280 C0 E0            [24]  954 	push	acc
      002282 74 2E            [12]  955 	mov	a,#(___str_5 >> 8)
      002284 C0 E0            [24]  956 	push	acc
      002286 74 80            [12]  957 	mov	a,#0x80
      002288 C0 E0            [24]  958 	push	acc
      00228A 12 23 7F         [24]  959 	lcall	_printf
      00228D 15 81            [12]  960 	dec	sp
      00228F 15 81            [12]  961 	dec	sp
      002291 15 81            [12]  962 	dec	sp
                                    963 ;	spi_dac.c:201: }
      002293 D0 D0            [24]  964 	pop	psw
      002295 D0 00            [24]  965 	pop	(0+0)
      002297 D0 01            [24]  966 	pop	(0+1)
      002299 D0 02            [24]  967 	pop	(0+2)
      00229B D0 03            [24]  968 	pop	(0+3)
      00229D D0 04            [24]  969 	pop	(0+4)
      00229F D0 05            [24]  970 	pop	(0+5)
      0022A1 D0 06            [24]  971 	pop	(0+6)
      0022A3 D0 07            [24]  972 	pop	(0+7)
      0022A5 D0 83            [24]  973 	pop	dph
      0022A7 D0 82            [24]  974 	pop	dpl
      0022A9 D0 F0            [24]  975 	pop	b
      0022AB D0 E0            [24]  976 	pop	acc
      0022AD D0 20            [24]  977 	pop	bits
      0022AF 32               [24]  978 	reti
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'spi_isr'
                                    981 ;------------------------------------------------------------
                                    982 ;	spi_dac.c:209: void spi_isr(void) __interrupt 9
                                    983 ;	-----------------------------------------
                                    984 ;	 function spi_isr
                                    985 ;	-----------------------------------------
      0022B0                        986 _spi_isr:
      0022B0 C0 20            [24]  987 	push	bits
      0022B2 C0 E0            [24]  988 	push	acc
      0022B4 C0 F0            [24]  989 	push	b
      0022B6 C0 82            [24]  990 	push	dpl
      0022B8 C0 83            [24]  991 	push	dph
      0022BA C0 07            [24]  992 	push	(0+7)
      0022BC C0 06            [24]  993 	push	(0+6)
      0022BE C0 05            [24]  994 	push	(0+5)
      0022C0 C0 04            [24]  995 	push	(0+4)
      0022C2 C0 03            [24]  996 	push	(0+3)
      0022C4 C0 02            [24]  997 	push	(0+2)
      0022C6 C0 01            [24]  998 	push	(0+1)
      0022C8 C0 00            [24]  999 	push	(0+0)
      0022CA C0 D0            [24] 1000 	push	psw
      0022CC 75 D0 00         [24] 1001 	mov	psw,#0x00
                                   1002 ;	spi_dac.c:211: if(SPSTA == 0x80)  // Check for successful transmission
      0022CF 74 80            [12] 1003 	mov	a,#0x80
      0022D1 B5 C4 1E         [24] 1004 	cjne	a,_SPSTA,00103$
                                   1005 ;	spi_dac.c:213: transmission_complete = 1;
      0022D4 90 04 40         [24] 1006 	mov	dptr,#_transmission_complete
      0022D7 74 01            [12] 1007 	mov	a,#0x01
      0022D9 F0               [24] 1008 	movx	@dptr,a
      0022DA E4               [12] 1009 	clr	a
      0022DB A3               [24] 1010 	inc	dptr
      0022DC F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	spi_dac.c:214: printf("spi isr \n\r");
      0022DD 74 A3            [12] 1013 	mov	a,#___str_6
      0022DF C0 E0            [24] 1014 	push	acc
      0022E1 74 2E            [12] 1015 	mov	a,#(___str_6 >> 8)
      0022E3 C0 E0            [24] 1016 	push	acc
      0022E5 74 80            [12] 1017 	mov	a,#0x80
      0022E7 C0 E0            [24] 1018 	push	acc
      0022E9 12 23 7F         [24] 1019 	lcall	_printf
      0022EC 15 81            [12] 1020 	dec	sp
      0022EE 15 81            [12] 1021 	dec	sp
      0022F0 15 81            [12] 1022 	dec	sp
      0022F2                       1023 00103$:
                                   1024 ;	spi_dac.c:217: }
      0022F2 D0 D0            [24] 1025 	pop	psw
      0022F4 D0 00            [24] 1026 	pop	(0+0)
      0022F6 D0 01            [24] 1027 	pop	(0+1)
      0022F8 D0 02            [24] 1028 	pop	(0+2)
      0022FA D0 03            [24] 1029 	pop	(0+3)
      0022FC D0 04            [24] 1030 	pop	(0+4)
      0022FE D0 05            [24] 1031 	pop	(0+5)
      002300 D0 06            [24] 1032 	pop	(0+6)
      002302 D0 07            [24] 1033 	pop	(0+7)
      002304 D0 83            [24] 1034 	pop	dph
      002306 D0 82            [24] 1035 	pop	dpl
      002308 D0 F0            [24] 1036 	pop	b
      00230A D0 E0            [24] 1037 	pop	acc
      00230C D0 20            [24] 1038 	pop	bits
      00230E 32               [24] 1039 	reti
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'spi_init'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	spi_dac.c:229: void spi_init(void) 
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function spi_init
                                   1046 ;	-----------------------------------------
      00230F                       1047 _spi_init:
                                   1048 ;	spi_dac.c:232: SPCON = 0;
      00230F 75 C3 00         [24] 1049 	mov	_SPCON,#0x00
                                   1050 ;	spi_dac.c:242: SPCON &= ~SPI_SSDIS;
      002312 53 C3 DF         [24] 1051 	anl	_SPCON,#0xdf
                                   1052 ;	spi_dac.c:244: SPCON |= 0x10;
      002315 43 C3 10         [24] 1053 	orl	_SPCON,#0x10
                                   1054 ;	spi_dac.c:245: P1_1 = 1;
                                   1055 ;	assignBit
      002318 D2 91            [12] 1056 	setb	_P1_1
                                   1057 ;	spi_dac.c:246: SPCON |= 0x82;
      00231A 43 C3 82         [24] 1058 	orl	_SPCON,#0x82
                                   1059 ;	spi_dac.c:247: SPCON &= ~0x08;
      00231D 53 C3 F7         [24] 1060 	anl	_SPCON,#0xf7
                                   1061 ;	spi_dac.c:248: SPCON |= 0x40;
      002320 43 C3 40         [24] 1062 	orl	_SPCON,#0x40
                                   1063 ;	spi_dac.c:253: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      002323 43 B1 08         [24] 1064 	orl	_IEN1,#0x08
                                   1065 ;	spi_dac.c:255: }
      002326 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	spi_dac.c:262: void spi_transmission_start(void)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function spi_transmission_start
                                   1073 ;	-----------------------------------------
      002327                       1074 _spi_transmission_start:
                                   1075 ;	spi_dac.c:264: SPCON |= SPI_ENABLE;           // Enable SPI
      002327 43 C3 40         [24] 1076 	orl	_SPCON,#0x40
                                   1077 ;	spi_dac.c:265: P1_1 = 0;
                                   1078 ;	assignBit
      00232A C2 91            [12] 1079 	clr	_P1_1
                                   1080 ;	spi_dac.c:266: }
      00232C 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1084 ;------------------------------------------------------------
                                   1085 ;	spi_dac.c:273: void spi_transmission_stop(void) 
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function spi_transmission_stop
                                   1088 ;	-----------------------------------------
      00232D                       1089 _spi_transmission_stop:
                                   1090 ;	spi_dac.c:275: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00232D 53 C3 BF         [24] 1091 	anl	_SPCON,#0xbf
                                   1092 ;	spi_dac.c:276: }
      002330 22               [24] 1093 	ret
                                   1094 	.area CSEG    (CODE)
                                   1095 	.area CONST   (CODE)
      002DE1                       1096 _dac_values:
      002DE1 80 00                 1097 	.byte #0x80, #0x00	;  128
      002DE3 8F 00                 1098 	.byte #0x8f, #0x00	;  143
      002DE5 9F 00                 1099 	.byte #0x9f, #0x00	;  159
      002DE7 AE 00                 1100 	.byte #0xae, #0x00	;  174
      002DE9 BD 00                 1101 	.byte #0xbd, #0x00	;  189
      002DEB CA 00                 1102 	.byte #0xca, #0x00	;  202
      002DED D7 00                 1103 	.byte #0xd7, #0x00	;  215
      002DEF E2 00                 1104 	.byte #0xe2, #0x00	;  226
      002DF1 EB 00                 1105 	.byte #0xeb, #0x00	;  235
      002DF3 F3 00                 1106 	.byte #0xf3, #0x00	;  243
      002DF5 F9 00                 1107 	.byte #0xf9, #0x00	;  249
      002DF7 FD 00                 1108 	.byte #0xfd, #0x00	;  253
      002DF9 FF 00                 1109 	.byte #0xff, #0x00	;  255
      002DFB FF 00                 1110 	.byte #0xff, #0x00	;  255
      002DFD FD 00                 1111 	.byte #0xfd, #0x00	;  253
      002DFF F9 00                 1112 	.byte #0xf9, #0x00	;  249
      002E01 F3 00                 1113 	.byte #0xf3, #0x00	;  243
      002E03 EB 00                 1114 	.byte #0xeb, #0x00	;  235
      002E05 E2 00                 1115 	.byte #0xe2, #0x00	;  226
      002E07 D7 00                 1116 	.byte #0xd7, #0x00	;  215
      002E09 CA 00                 1117 	.byte #0xca, #0x00	;  202
      002E0B BD 00                 1118 	.byte #0xbd, #0x00	;  189
      002E0D AE 00                 1119 	.byte #0xae, #0x00	;  174
      002E0F 9F 00                 1120 	.byte #0x9f, #0x00	;  159
      002E11 8F 00                 1121 	.byte #0x8f, #0x00	;  143
      002E13 80 00                 1122 	.byte #0x80, #0x00	;  128
      002E15 70 00                 1123 	.byte #0x70, #0x00	;  112
      002E17 60 00                 1124 	.byte #0x60, #0x00	;  96
      002E19 51 00                 1125 	.byte #0x51, #0x00	;  81
      002E1B 42 00                 1126 	.byte #0x42, #0x00	;  66
      002E1D 35 00                 1127 	.byte #0x35, #0x00	;  53
      002E1F 28 00                 1128 	.byte #0x28, #0x00	;  40
      002E21 1D 00                 1129 	.byte #0x1d, #0x00	;  29
      002E23 14 00                 1130 	.byte #0x14, #0x00	;  20
      002E25 0C 00                 1131 	.byte #0x0c, #0x00	;  12
      002E27 06 00                 1132 	.byte #0x06, #0x00	;  6
      002E29 02 00                 1133 	.byte #0x02, #0x00	;  2
      002E2B 00 00                 1134 	.byte #0x00, #0x00	;  0
      002E2D 00 00                 1135 	.byte #0x00, #0x00	;  0
      002E2F 02 00                 1136 	.byte #0x02, #0x00	;  2
      002E31 06 00                 1137 	.byte #0x06, #0x00	;  6
      002E33 0C 00                 1138 	.byte #0x0c, #0x00	;  12
      002E35 14 00                 1139 	.byte #0x14, #0x00	;  20
      002E37 1D 00                 1140 	.byte #0x1d, #0x00	;  29
      002E39 28 00                 1141 	.byte #0x28, #0x00	;  40
      002E3B 35 00                 1142 	.byte #0x35, #0x00	;  53
      002E3D 42 00                 1143 	.byte #0x42, #0x00	;  66
      002E3F 51 00                 1144 	.byte #0x51, #0x00	;  81
      002E41 60 00                 1145 	.byte #0x60, #0x00	;  96
      002E43 70 00                 1146 	.byte #0x70, #0x00	;  112
                                   1147 	.area CONST   (CODE)
      002E45                       1148 ___str_0:
      002E45 20 53 50 49 20 44 41  1149 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002E55 0A                    1150 	.db 0x0a
      002E56 0D                    1151 	.db 0x0d
      002E57 00                    1152 	.db 0x00
                                   1153 	.area CSEG    (CODE)
                                   1154 	.area CONST   (CODE)
      002E58                       1155 ___str_1:
      002E58 53 50 49 20 54 52 41  1156 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002E70 0A                    1157 	.db 0x0a
      002E71 0D                    1158 	.db 0x0d
      002E72 00                    1159 	.db 0x00
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
      002E73                       1162 ___str_2:
      002E73 77 68 69 6C 65 20 73  1163 	.ascii "while start"
             74 61 72 74
      002E7E 0A                    1164 	.db 0x0a
      002E7F 0D                    1165 	.db 0x0d
      002E80 00                    1166 	.db 0x00
                                   1167 	.area CSEG    (CODE)
                                   1168 	.area CONST   (CODE)
      002E81                       1169 ___str_3:
      002E81 4C 6F 77 20 62 79 74  1170 	.ascii "Low byte %d"
             65 20 25 64
      002E8C 0A                    1171 	.db 0x0a
      002E8D 0D                    1172 	.db 0x0d
      002E8E 00                    1173 	.db 0x00
                                   1174 	.area CSEG    (CODE)
                                   1175 	.area CONST   (CODE)
      002E8F                       1176 ___str_4:
      002E8F 48 69 67 68 20 62 79  1177 	.ascii "High byte %d"
             74 65 20 25 64
      002E9B 0A                    1178 	.db 0x0a
      002E9C 0D                    1179 	.db 0x0d
      002E9D 00                    1180 	.db 0x00
                                   1181 	.area CSEG    (CODE)
                                   1182 	.area CONST   (CODE)
      002E9E                       1183 ___str_5:
      002E9E 54 20                 1184 	.ascii "T "
      002EA0 0A                    1185 	.db 0x0a
      002EA1 0D                    1186 	.db 0x0d
      002EA2 00                    1187 	.db 0x00
                                   1188 	.area CSEG    (CODE)
                                   1189 	.area CONST   (CODE)
      002EA3                       1190 ___str_6:
      002EA3 73 70 69 20 69 73 72  1191 	.ascii "spi isr "
             20
      002EAB 0A                    1192 	.db 0x0a
      002EAC 0D                    1193 	.db 0x0d
      002EAD 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area XINIT   (CODE)
      002EB9                       1197 __xinit__ms_flag:
      002EB9 00                    1198 	.db #0x00	; 0
      002EBA                       1199 __xinit__transmission_complete:
      002EBA 00 00                 1200 	.byte #0x00, #0x00	;  0
                                   1201 	.area CABS    (ABS,CODE)
