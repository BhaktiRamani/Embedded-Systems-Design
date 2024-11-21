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
                                     15 	.globl _delay_ms
                                     16 	.globl _getchar
                                     17 	.globl _putchar
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _transmission_complete
                                    216 	.globl _ms_flag
                                    217 	.globl _timer0_init
                                    218 	.globl _spi_init
                                    219 	.globl _spi_transmission_start
                                    220 	.globl _spi_transmission_stop
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 _P0	=	0x0080
                           000081   227 _SP	=	0x0081
                           000082   228 _DPL	=	0x0082
                           000083   229 _DPH	=	0x0083
                           000087   230 _PCON	=	0x0087
                           000088   231 _TCON	=	0x0088
                           000089   232 _TMOD	=	0x0089
                           00008A   233 _TL0	=	0x008a
                           00008B   234 _TL1	=	0x008b
                           00008C   235 _TH0	=	0x008c
                           00008D   236 _TH1	=	0x008d
                           000090   237 _P1	=	0x0090
                           000098   238 _SCON	=	0x0098
                           000099   239 _SBUF	=	0x0099
                           0000A0   240 _P2	=	0x00a0
                           0000A8   241 _IE	=	0x00a8
                           0000B0   242 _P3	=	0x00b0
                           0000B8   243 _IP	=	0x00b8
                           0000D0   244 _PSW	=	0x00d0
                           0000E0   245 _ACC	=	0x00e0
                           0000F0   246 _B	=	0x00f0
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                                    298 ;--------------------------------------------------------
                                    299 ; special function bits
                                    300 ;--------------------------------------------------------
                                    301 	.area RSEG    (ABS,DATA)
      000000                        302 	.org 0x0000
                           000080   303 _P0_0	=	0x0080
                           000081   304 _P0_1	=	0x0081
                           000082   305 _P0_2	=	0x0082
                           000083   306 _P0_3	=	0x0083
                           000084   307 _P0_4	=	0x0084
                           000085   308 _P0_5	=	0x0085
                           000086   309 _P0_6	=	0x0086
                           000087   310 _P0_7	=	0x0087
                           000088   311 _IT0	=	0x0088
                           000089   312 _IE0	=	0x0089
                           00008A   313 _IT1	=	0x008a
                           00008B   314 _IE1	=	0x008b
                           00008C   315 _TR0	=	0x008c
                           00008D   316 _TF0	=	0x008d
                           00008E   317 _TR1	=	0x008e
                           00008F   318 _TF1	=	0x008f
                           000090   319 _P1_0	=	0x0090
                           000091   320 _P1_1	=	0x0091
                           000092   321 _P1_2	=	0x0092
                           000093   322 _P1_3	=	0x0093
                           000094   323 _P1_4	=	0x0094
                           000095   324 _P1_5	=	0x0095
                           000096   325 _P1_6	=	0x0096
                           000097   326 _P1_7	=	0x0097
                           000098   327 _RI	=	0x0098
                           000099   328 _TI	=	0x0099
                           00009A   329 _RB8	=	0x009a
                           00009B   330 _TB8	=	0x009b
                           00009C   331 _REN	=	0x009c
                           00009D   332 _SM2	=	0x009d
                           00009E   333 _SM1	=	0x009e
                           00009F   334 _SM0	=	0x009f
                           0000A0   335 _P2_0	=	0x00a0
                           0000A1   336 _P2_1	=	0x00a1
                           0000A2   337 _P2_2	=	0x00a2
                           0000A3   338 _P2_3	=	0x00a3
                           0000A4   339 _P2_4	=	0x00a4
                           0000A5   340 _P2_5	=	0x00a5
                           0000A6   341 _P2_6	=	0x00a6
                           0000A7   342 _P2_7	=	0x00a7
                           0000A8   343 _EX0	=	0x00a8
                           0000A9   344 _ET0	=	0x00a9
                           0000AA   345 _EX1	=	0x00aa
                           0000AB   346 _ET1	=	0x00ab
                           0000AC   347 _ES	=	0x00ac
                           0000AF   348 _EA	=	0x00af
                           0000B0   349 _P3_0	=	0x00b0
                           0000B1   350 _P3_1	=	0x00b1
                           0000B2   351 _P3_2	=	0x00b2
                           0000B3   352 _P3_3	=	0x00b3
                           0000B4   353 _P3_4	=	0x00b4
                           0000B5   354 _P3_5	=	0x00b5
                           0000B6   355 _P3_6	=	0x00b6
                           0000B7   356 _P3_7	=	0x00b7
                           0000B0   357 _RXD	=	0x00b0
                           0000B1   358 _TXD	=	0x00b1
                           0000B2   359 _INT0	=	0x00b2
                           0000B3   360 _INT1	=	0x00b3
                           0000B4   361 _T0	=	0x00b4
                           0000B5   362 _T1	=	0x00b5
                           0000B6   363 _WR	=	0x00b6
                           0000B7   364 _RD	=	0x00b7
                           0000B8   365 _PX0	=	0x00b8
                           0000B9   366 _PT0	=	0x00b9
                           0000BA   367 _PX1	=	0x00ba
                           0000BB   368 _PT1	=	0x00bb
                           0000BC   369 _PS	=	0x00bc
                           0000D0   370 _P	=	0x00d0
                           0000D1   371 _F1	=	0x00d1
                           0000D2   372 _OV	=	0x00d2
                           0000D3   373 _RS0	=	0x00d3
                           0000D4   374 _RS1	=	0x00d4
                           0000D5   375 _F0	=	0x00d5
                           0000D6   376 _AC	=	0x00d6
                           0000D7   377 _CY	=	0x00d7
                           0000AD   378 _ET2	=	0x00ad
                           0000BD   379 _PT2	=	0x00bd
                           0000C8   380 _T2CON_0	=	0x00c8
                           0000C9   381 _T2CON_1	=	0x00c9
                           0000CA   382 _T2CON_2	=	0x00ca
                           0000CB   383 _T2CON_3	=	0x00cb
                           0000CC   384 _T2CON_4	=	0x00cc
                           0000CD   385 _T2CON_5	=	0x00cd
                           0000CE   386 _T2CON_6	=	0x00ce
                           0000CF   387 _T2CON_7	=	0x00cf
                           0000C8   388 _CP_RL2	=	0x00c8
                           0000C9   389 _C_T2	=	0x00c9
                           0000CA   390 _TR2	=	0x00ca
                           0000CB   391 _EXEN2	=	0x00cb
                           0000CC   392 _TCLK	=	0x00cc
                           0000CD   393 _RCLK	=	0x00cd
                           0000CE   394 _EXF2	=	0x00ce
                           0000CF   395 _TF2	=	0x00cf
                           0000DF   396 _CF	=	0x00df
                           0000DE   397 _CR	=	0x00de
                           0000DC   398 _CCF4	=	0x00dc
                           0000DB   399 _CCF3	=	0x00db
                           0000DA   400 _CCF2	=	0x00da
                           0000D9   401 _CCF1	=	0x00d9
                           0000D8   402 _CCF0	=	0x00d8
                           0000AE   403 _EC	=	0x00ae
                           0000BE   404 _PPCL	=	0x00be
                           0000BD   405 _PT2L	=	0x00bd
                           0000BC   406 _PSL	=	0x00bc
                           0000BB   407 _PT1L	=	0x00bb
                           0000BA   408 _PX1L	=	0x00ba
                           0000B9   409 _PT0L	=	0x00b9
                           0000B8   410 _PX0L	=	0x00b8
                           0000C0   411 _P4_0	=	0x00c0
                           0000C1   412 _P4_1	=	0x00c1
                           0000C2   413 _P4_2	=	0x00c2
                           0000C3   414 _P4_3	=	0x00c3
                           0000C4   415 _P4_4	=	0x00c4
                           0000C5   416 _P4_5	=	0x00c5
                           0000C6   417 _P4_6	=	0x00c6
                           0000C7   418 _P4_7	=	0x00c7
                           0000E8   419 _P5_0	=	0x00e8
                           0000E9   420 _P5_1	=	0x00e9
                           0000EA   421 _P5_2	=	0x00ea
                           0000EB   422 _P5_3	=	0x00eb
                           0000EC   423 _P5_4	=	0x00ec
                           0000ED   424 _P5_5	=	0x00ed
                           0000EE   425 _P5_6	=	0x00ee
                           0000EF   426 _P5_7	=	0x00ef
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable register banks
                                    429 ;--------------------------------------------------------
                                    430 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        431 	.ds 8
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable bit register bank
                                    434 ;--------------------------------------------------------
                                    435 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        436 bits:
      000020                        437 	.ds 1
                           008000   438 	b0 = bits[0]
                           008100   439 	b1 = bits[1]
                           008200   440 	b2 = bits[2]
                           008300   441 	b3 = bits[3]
                           008400   442 	b4 = bits[4]
                           008500   443 	b5 = bits[5]
                           008600   444 	b6 = bits[6]
                           008700   445 	b7 = bits[7]
                                    446 ;--------------------------------------------------------
                                    447 ; internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area DSEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable items in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 ;--------------------------------------------------------
                                    454 ; Stack segment in internal ram 
                                    455 ;--------------------------------------------------------
                                    456 	.area	SSEG
      000021                        457 __start__stack:
      000021                        458 	.ds	1
                                    459 
                                    460 ;--------------------------------------------------------
                                    461 ; indirectly addressable internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area ISEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area IABS    (ABS,DATA)
                                    468 	.area IABS    (ABS,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; bit data
                                    471 ;--------------------------------------------------------
                                    472 	.area BSEG    (BIT)
                                    473 ;--------------------------------------------------------
                                    474 ; paged external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area PSEG    (PAG,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XSEG    (XDATA)
      000400                        481 _putchar_charToSend_65536_17:
      000400                        482 	.ds 2
      000402                        483 _delay_ms_ms_65536_21:
      000402                        484 	.ds 2
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
      00043D                        493 _ms_flag::
      00043D                        494 	.ds 1
      00043E                        495 _transmission_complete::
      00043E                        496 	.ds 2
                                    497 	.area HOME    (CODE)
                                    498 	.area GSINIT0 (CODE)
                                    499 	.area GSINIT1 (CODE)
                                    500 	.area GSINIT2 (CODE)
                                    501 	.area GSINIT3 (CODE)
                                    502 	.area GSINIT4 (CODE)
                                    503 	.area GSINIT5 (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area CSEG    (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; interrupt vector 
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
      002000                        511 __interrupt_vect:
      002000 02 20 51         [24]  512 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  513 	reti
      002004                        514 	.ds	7
      00200B 02 22 59         [24]  515 	ljmp	_timer0_isr
      00200E                        516 	.ds	5
      002013 32               [24]  517 	reti
      002014                        518 	.ds	7
      00201B 32               [24]  519 	reti
      00201C                        520 	.ds	7
      002023 32               [24]  521 	reti
      002024                        522 	.ds	7
      00202B 32               [24]  523 	reti
      00202C                        524 	.ds	7
      002033 32               [24]  525 	reti
      002034                        526 	.ds	7
      00203B 32               [24]  527 	reti
      00203C                        528 	.ds	7
      002043 32               [24]  529 	reti
      002044                        530 	.ds	7
      00204B 02 22 B6         [24]  531 	ljmp	_spi_isr
                                    532 ;--------------------------------------------------------
                                    533 ; global & static initialisations
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.globl __sdcc_gsinit_startup
                                    540 	.globl __sdcc_program_startup
                                    541 	.globl __start__stack
                                    542 	.globl __mcs51_genXINIT
                                    543 	.globl __mcs51_genXRAMCLEAR
                                    544 	.globl __mcs51_genRAMCLEAR
                                    545 	.area GSFINAL (CODE)
      0020AA 02 20 4E         [24]  546 	ljmp	__sdcc_program_startup
                                    547 ;--------------------------------------------------------
                                    548 ; Home
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area HOME    (CODE)
      00204E                        552 __sdcc_program_startup:
      00204E 02 21 0D         [24]  553 	ljmp	_main
                                    554 ;	return from main will return to caller
                                    555 ;--------------------------------------------------------
                                    556 ; code
                                    557 ;--------------------------------------------------------
                                    558 	.area CSEG    (CODE)
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'putchar'
                                    561 ;------------------------------------------------------------
                                    562 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    563 ;------------------------------------------------------------
                                    564 ;	spi_dac.c:90: int putchar(int charToSend) {
                                    565 ;	-----------------------------------------
                                    566 ;	 function putchar
                                    567 ;	-----------------------------------------
      0020AD                        568 _putchar:
                           000007   569 	ar7 = 0x07
                           000006   570 	ar6 = 0x06
                           000005   571 	ar5 = 0x05
                           000004   572 	ar4 = 0x04
                           000003   573 	ar3 = 0x03
                           000002   574 	ar2 = 0x02
                           000001   575 	ar1 = 0x01
                           000000   576 	ar0 = 0x00
      0020AD AF 83            [24]  577 	mov	r7,dph
      0020AF E5 82            [12]  578 	mov	a,dpl
      0020B1 90 04 00         [24]  579 	mov	dptr,#_putchar_charToSend_65536_17
      0020B4 F0               [24]  580 	movx	@dptr,a
      0020B5 EF               [12]  581 	mov	a,r7
      0020B6 A3               [24]  582 	inc	dptr
      0020B7 F0               [24]  583 	movx	@dptr,a
                                    584 ;	spi_dac.c:91: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  585 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  586 	movx	a,@dptr
      0020BC FE               [12]  587 	mov	r6,a
      0020BD A3               [24]  588 	inc	dptr
      0020BE E0               [24]  589 	movx	a,@dptr
      0020BF FF               [12]  590 	mov	r7,a
      0020C0 8E 99            [24]  591 	mov	_SBUF,r6
                                    592 ;	spi_dac.c:92: while (!TI);             /* Wait for transmission completion */
      0020C2                        593 00101$:
                                    594 ;	spi_dac.c:93: TI = 0;                  /* Clear transmission flag */
                                    595 ;	assignBit
      0020C2 10 99 02         [24]  596 	jbc	_TI,00114$
      0020C5 80 FB            [24]  597 	sjmp	00101$
      0020C7                        598 00114$:
                                    599 ;	spi_dac.c:94: return charToSend;
      0020C7 8E 82            [24]  600 	mov	dpl,r6
      0020C9 8F 83            [24]  601 	mov	dph,r7
                                    602 ;	spi_dac.c:95: }
      0020CB 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'getchar'
                                    606 ;------------------------------------------------------------
                                    607 ;	spi_dac.c:101: int getchar(void) {
                                    608 ;	-----------------------------------------
                                    609 ;	 function getchar
                                    610 ;	-----------------------------------------
      0020CC                        611 _getchar:
                                    612 ;	spi_dac.c:102: while (!RI);             /* Wait for reception completion */
      0020CC                        613 00101$:
                                    614 ;	spi_dac.c:103: RI = 0;                  /* Clear reception flag */
                                    615 ;	assignBit
      0020CC 10 98 02         [24]  616 	jbc	_RI,00114$
      0020CF 80 FB            [24]  617 	sjmp	00101$
      0020D1                        618 00114$:
                                    619 ;	spi_dac.c:104: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  620 	mov	r6,_SBUF
      0020D3 7F 00            [12]  621 	mov	r7,#0x00
      0020D5 8E 82            [24]  622 	mov	dpl,r6
      0020D7 8F 83            [24]  623 	mov	dph,r7
                                    624 ;	spi_dac.c:105: }
      0020D9 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'delay_ms'
                                    628 ;------------------------------------------------------------
                                    629 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    630 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    631 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    632 ;------------------------------------------------------------
                                    633 ;	spi_dac.c:107: void delay_ms(unsigned int ms) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function delay_ms
                                    636 ;	-----------------------------------------
      0020DA                        637 _delay_ms:
      0020DA AF 83            [24]  638 	mov	r7,dph
      0020DC E5 82            [12]  639 	mov	a,dpl
      0020DE 90 04 02         [24]  640 	mov	dptr,#_delay_ms_ms_65536_21
      0020E1 F0               [24]  641 	movx	@dptr,a
      0020E2 EF               [12]  642 	mov	a,r7
      0020E3 A3               [24]  643 	inc	dptr
      0020E4 F0               [24]  644 	movx	@dptr,a
                                    645 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
      0020E5 90 04 02         [24]  646 	mov	dptr,#_delay_ms_ms_65536_21
      0020E8 E0               [24]  647 	movx	a,@dptr
      0020E9 FE               [12]  648 	mov	r6,a
      0020EA A3               [24]  649 	inc	dptr
      0020EB E0               [24]  650 	movx	a,@dptr
      0020EC FF               [12]  651 	mov	r7,a
      0020ED 7C 00            [12]  652 	mov	r4,#0x00
      0020EF 7D 00            [12]  653 	mov	r5,#0x00
      0020F1                        654 00107$:
      0020F1 C3               [12]  655 	clr	c
      0020F2 EC               [12]  656 	mov	a,r4
      0020F3 9E               [12]  657 	subb	a,r6
      0020F4 ED               [12]  658 	mov	a,r5
      0020F5 9F               [12]  659 	subb	a,r7
      0020F6 50 14            [24]  660 	jnc	00109$
                                    661 ;	spi_dac.c:110: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020F8 7A 7B            [12]  662 	mov	r2,#0x7b
      0020FA 7B 00            [12]  663 	mov	r3,#0x00
      0020FC                        664 00105$:
      0020FC 1A               [12]  665 	dec	r2
      0020FD BA FF 01         [24]  666 	cjne	r2,#0xff,00130$
      002100 1B               [12]  667 	dec	r3
      002101                        668 00130$:
      002101 EA               [12]  669 	mov	a,r2
      002102 4B               [12]  670 	orl	a,r3
      002103 70 F7            [24]  671 	jnz	00105$
                                    672 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
      002105 0C               [12]  673 	inc	r4
      002106 BC 00 E8         [24]  674 	cjne	r4,#0x00,00107$
      002109 0D               [12]  675 	inc	r5
      00210A 80 E5            [24]  676 	sjmp	00107$
      00210C                        677 00109$:
                                    678 ;	spi_dac.c:111: }
      00210C 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'main'
                                    682 ;------------------------------------------------------------
                                    683 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    684 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    685 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    686 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    687 ;------------------------------------------------------------
                                    688 ;	spi_dac.c:112: int main(void)
                                    689 ;	-----------------------------------------
                                    690 ;	 function main
                                    691 ;	-----------------------------------------
      00210D                        692 _main:
                                    693 ;	spi_dac.c:114: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 3D            [12]  694 	mov	a,#___str_0
      00210F C0 E0            [24]  695 	push	acc
      002111 74 2E            [12]  696 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  697 	push	acc
      002115 74 80            [12]  698 	mov	a,#0x80
      002117 C0 E0            [24]  699 	push	acc
      002119 12 23 77         [24]  700 	lcall	_printf
      00211C 15 81            [12]  701 	dec	sp
      00211E 15 81            [12]  702 	dec	sp
      002120 15 81            [12]  703 	dec	sp
                                    704 ;	spi_dac.c:123: spi_init();
      002122 12 23 15         [24]  705 	lcall	_spi_init
                                    706 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002125 74 50            [12]  707 	mov	a,#___str_1
      002127 C0 E0            [24]  708 	push	acc
      002129 74 2E            [12]  709 	mov	a,#(___str_1 >> 8)
      00212B C0 E0            [24]  710 	push	acc
      00212D 74 80            [12]  711 	mov	a,#0x80
      00212F C0 E0            [24]  712 	push	acc
      002131 12 23 77         [24]  713 	lcall	_printf
      002134 15 81            [12]  714 	dec	sp
      002136 15 81            [12]  715 	dec	sp
      002138 15 81            [12]  716 	dec	sp
                                    717 ;	spi_dac.c:132: while(1)
      00213A                        718 00114$:
                                    719 ;	spi_dac.c:134: printf("while start\n\r");
      00213A 74 6B            [12]  720 	mov	a,#___str_2
      00213C C0 E0            [24]  721 	push	acc
      00213E 74 2E            [12]  722 	mov	a,#(___str_2 >> 8)
      002140 C0 E0            [24]  723 	push	acc
      002142 74 80            [12]  724 	mov	a,#0x80
      002144 C0 E0            [24]  725 	push	acc
      002146 12 23 77         [24]  726 	lcall	_printf
      002149 15 81            [12]  727 	dec	sp
      00214B 15 81            [12]  728 	dec	sp
      00214D 15 81            [12]  729 	dec	sp
                                    730 ;	spi_dac.c:160: delay_ms(10);
      00214F 90 00 0A         [24]  731 	mov	dptr,#0x000a
      002152 12 20 DA         [24]  732 	lcall	_delay_ms
                                    733 ;	spi_dac.c:163: P1_1 = 0;  // Select DAC
                                    734 ;	assignBit
      002155 C2 91            [12]  735 	clr	_P1_1
                                    736 ;	spi_dac.c:165: printf("Low byte %d\n\r", low_byte);
      002157 E4               [12]  737 	clr	a
      002158 C0 E0            [24]  738 	push	acc
      00215A C0 E0            [24]  739 	push	acc
      00215C 74 79            [12]  740 	mov	a,#___str_3
      00215E C0 E0            [24]  741 	push	acc
      002160 74 2E            [12]  742 	mov	a,#(___str_3 >> 8)
      002162 C0 E0            [24]  743 	push	acc
      002164 74 80            [12]  744 	mov	a,#0x80
      002166 C0 E0            [24]  745 	push	acc
      002168 12 23 77         [24]  746 	lcall	_printf
      00216B E5 81            [12]  747 	mov	a,sp
      00216D 24 FB            [12]  748 	add	a,#0xfb
      00216F F5 81            [12]  749 	mov	sp,a
                                    750 ;	spi_dac.c:166: printf("High byte %d\n\r", high_byte);
      002171 74 30            [12]  751 	mov	a,#0x30
      002173 C0 E0            [24]  752 	push	acc
      002175 E4               [12]  753 	clr	a
      002176 C0 E0            [24]  754 	push	acc
      002178 74 87            [12]  755 	mov	a,#___str_4
      00217A C0 E0            [24]  756 	push	acc
      00217C 74 2E            [12]  757 	mov	a,#(___str_4 >> 8)
      00217E C0 E0            [24]  758 	push	acc
      002180 74 80            [12]  759 	mov	a,#0x80
      002182 C0 E0            [24]  760 	push	acc
      002184 12 23 77         [24]  761 	lcall	_printf
      002187 E5 81            [12]  762 	mov	a,sp
      002189 24 FB            [12]  763 	add	a,#0xfb
      00218B F5 81            [12]  764 	mov	sp,a
                                    765 ;	spi_dac.c:169: SPDAT = high_byte;
      00218D 75 C5 30         [24]  766 	mov	_SPDAT,#0x30
                                    767 ;	spi_dac.c:170: while (!(SPSTA & (1<<7))); 
      002190                        768 00101$:
      002190 E5 C4            [12]  769 	mov	a,_SPSTA
      002192 30 E7 FB         [24]  770 	jnb	acc.7,00101$
                                    771 ;	spi_dac.c:175: SPDAT = low_byte;
      002195 75 C5 00         [24]  772 	mov	_SPDAT,#0x00
                                    773 ;	spi_dac.c:176: while (!(SPSTA & (1<<7))); 
      002198                        774 00104$:
      002198 E5 C4            [12]  775 	mov	a,_SPSTA
      00219A 30 E7 FB         [24]  776 	jnb	acc.7,00104$
                                    777 ;	spi_dac.c:180: P1_1 = 1;  // Deselect DAC
                                    778 ;	assignBit
      00219D D2 91            [12]  779 	setb	_P1_1
                                    780 ;	spi_dac.c:184: printf("Transition to 1\n\r");
      00219F 74 96            [12]  781 	mov	a,#___str_5
      0021A1 C0 E0            [24]  782 	push	acc
      0021A3 74 2E            [12]  783 	mov	a,#(___str_5 >> 8)
      0021A5 C0 E0            [24]  784 	push	acc
      0021A7 74 80            [12]  785 	mov	a,#0x80
      0021A9 C0 E0            [24]  786 	push	acc
      0021AB 12 23 77         [24]  787 	lcall	_printf
      0021AE 15 81            [12]  788 	dec	sp
      0021B0 15 81            [12]  789 	dec	sp
      0021B2 15 81            [12]  790 	dec	sp
                                    791 ;	spi_dac.c:185: printf("\n\r");
      0021B4 74 A8            [12]  792 	mov	a,#___str_6
      0021B6 C0 E0            [24]  793 	push	acc
      0021B8 74 2E            [12]  794 	mov	a,#(___str_6 >> 8)
      0021BA C0 E0            [24]  795 	push	acc
      0021BC 74 80            [12]  796 	mov	a,#0x80
      0021BE C0 E0            [24]  797 	push	acc
      0021C0 12 23 77         [24]  798 	lcall	_printf
      0021C3 15 81            [12]  799 	dec	sp
      0021C5 15 81            [12]  800 	dec	sp
      0021C7 15 81            [12]  801 	dec	sp
                                    802 ;	spi_dac.c:195: delay_ms(10);
      0021C9 90 00 0A         [24]  803 	mov	dptr,#0x000a
      0021CC 12 20 DA         [24]  804 	lcall	_delay_ms
                                    805 ;	spi_dac.c:198: P1_1 = 0;  // Select DAC
                                    806 ;	assignBit
      0021CF C2 91            [12]  807 	clr	_P1_1
                                    808 ;	spi_dac.c:200: printf("Low byte %d\n\r", low_byte);
      0021D1 74 F0            [12]  809 	mov	a,#0xf0
      0021D3 C0 E0            [24]  810 	push	acc
      0021D5 E4               [12]  811 	clr	a
      0021D6 C0 E0            [24]  812 	push	acc
      0021D8 74 79            [12]  813 	mov	a,#___str_3
      0021DA C0 E0            [24]  814 	push	acc
      0021DC 74 2E            [12]  815 	mov	a,#(___str_3 >> 8)
      0021DE C0 E0            [24]  816 	push	acc
      0021E0 74 80            [12]  817 	mov	a,#0x80
      0021E2 C0 E0            [24]  818 	push	acc
      0021E4 12 23 77         [24]  819 	lcall	_printf
      0021E7 E5 81            [12]  820 	mov	a,sp
      0021E9 24 FB            [12]  821 	add	a,#0xfb
      0021EB F5 81            [12]  822 	mov	sp,a
                                    823 ;	spi_dac.c:201: printf("High byte %d\n\r", high_byte);
      0021ED 74 3F            [12]  824 	mov	a,#0x3f
      0021EF C0 E0            [24]  825 	push	acc
      0021F1 E4               [12]  826 	clr	a
      0021F2 C0 E0            [24]  827 	push	acc
      0021F4 74 87            [12]  828 	mov	a,#___str_4
      0021F6 C0 E0            [24]  829 	push	acc
      0021F8 74 2E            [12]  830 	mov	a,#(___str_4 >> 8)
      0021FA C0 E0            [24]  831 	push	acc
      0021FC 74 80            [12]  832 	mov	a,#0x80
      0021FE C0 E0            [24]  833 	push	acc
      002200 12 23 77         [24]  834 	lcall	_printf
      002203 E5 81            [12]  835 	mov	a,sp
      002205 24 FB            [12]  836 	add	a,#0xfb
      002207 F5 81            [12]  837 	mov	sp,a
                                    838 ;	spi_dac.c:204: SPDAT = high_byte;
      002209 75 C5 3F         [24]  839 	mov	_SPDAT,#0x3f
                                    840 ;	spi_dac.c:205: while (!(SPSTA & (1<<7))); 
      00220C                        841 00107$:
      00220C E5 C4            [12]  842 	mov	a,_SPSTA
      00220E 30 E7 FB         [24]  843 	jnb	acc.7,00107$
                                    844 ;	spi_dac.c:210: SPDAT = low_byte;
      002211 75 C5 F0         [24]  845 	mov	_SPDAT,#0xf0
                                    846 ;	spi_dac.c:211: while (!(SPSTA & (1<<7))); 
      002214                        847 00110$:
      002214 E5 C4            [12]  848 	mov	a,_SPSTA
      002216 30 E7 FB         [24]  849 	jnb	acc.7,00110$
                                    850 ;	spi_dac.c:215: P1_1 = 1;  // Deselect DAC
                                    851 ;	assignBit
      002219 D2 91            [12]  852 	setb	_P1_1
                                    853 ;	spi_dac.c:219: printf("E\n\r");
      00221B 74 AB            [12]  854 	mov	a,#___str_7
      00221D C0 E0            [24]  855 	push	acc
      00221F 74 2E            [12]  856 	mov	a,#(___str_7 >> 8)
      002221 C0 E0            [24]  857 	push	acc
      002223 74 80            [12]  858 	mov	a,#0x80
      002225 C0 E0            [24]  859 	push	acc
      002227 12 23 77         [24]  860 	lcall	_printf
      00222A 15 81            [12]  861 	dec	sp
      00222C 15 81            [12]  862 	dec	sp
      00222E 15 81            [12]  863 	dec	sp
                                    864 ;	spi_dac.c:220: printf("\n\r");
      002230 74 A8            [12]  865 	mov	a,#___str_6
      002232 C0 E0            [24]  866 	push	acc
      002234 74 2E            [12]  867 	mov	a,#(___str_6 >> 8)
      002236 C0 E0            [24]  868 	push	acc
      002238 74 80            [12]  869 	mov	a,#0x80
      00223A C0 E0            [24]  870 	push	acc
      00223C 12 23 77         [24]  871 	lcall	_printf
      00223F 15 81            [12]  872 	dec	sp
      002241 15 81            [12]  873 	dec	sp
      002243 15 81            [12]  874 	dec	sp
                                    875 ;	spi_dac.c:223: dac_value_index++;
                                    876 ;	spi_dac.c:225: }
      002245 02 21 3A         [24]  877 	ljmp	00114$
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'timer0_init'
                                    880 ;------------------------------------------------------------
                                    881 ;	spi_dac.c:227: void timer0_init(void)
                                    882 ;	-----------------------------------------
                                    883 ;	 function timer0_init
                                    884 ;	-----------------------------------------
      002248                        885 _timer0_init:
                                    886 ;	spi_dac.c:229: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002248 53 89 F0         [24]  887 	anl	_TMOD,#0xf0
                                    888 ;	spi_dac.c:230: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00224B 43 89 01         [24]  889 	orl	_TMOD,#0x01
                                    890 ;	spi_dac.c:233: TH0 = TH0_RELOAD;
      00224E 75 8C FC         [24]  891 	mov	_TH0,#0xfc
                                    892 ;	spi_dac.c:234: TL0 = TL0_RELOAD;
      002251 75 8A 66         [24]  893 	mov	_TL0,#0x66
                                    894 ;	spi_dac.c:236: ET0 = 1;         // Enable Timer0 interrupt
                                    895 ;	assignBit
      002254 D2 A9            [12]  896 	setb	_ET0
                                    897 ;	spi_dac.c:237: TR0 = 1;         // Start Timer0
                                    898 ;	assignBit
      002256 D2 8C            [12]  899 	setb	_TR0
                                    900 ;	spi_dac.c:238: }
      002258 22               [24]  901 	ret
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'timer0_isr'
                                    904 ;------------------------------------------------------------
                                    905 ;	spi_dac.c:241: void timer0_isr(void) __interrupt 1
                                    906 ;	-----------------------------------------
                                    907 ;	 function timer0_isr
                                    908 ;	-----------------------------------------
      002259                        909 _timer0_isr:
      002259 C0 20            [24]  910 	push	bits
      00225B C0 E0            [24]  911 	push	acc
      00225D C0 F0            [24]  912 	push	b
      00225F C0 82            [24]  913 	push	dpl
      002261 C0 83            [24]  914 	push	dph
      002263 C0 07            [24]  915 	push	(0+7)
      002265 C0 06            [24]  916 	push	(0+6)
      002267 C0 05            [24]  917 	push	(0+5)
      002269 C0 04            [24]  918 	push	(0+4)
      00226B C0 03            [24]  919 	push	(0+3)
      00226D C0 02            [24]  920 	push	(0+2)
      00226F C0 01            [24]  921 	push	(0+1)
      002271 C0 00            [24]  922 	push	(0+0)
      002273 C0 D0            [24]  923 	push	psw
      002275 75 D0 00         [24]  924 	mov	psw,#0x00
                                    925 ;	spi_dac.c:244: TH0 = 0x4B;
      002278 75 8C 4B         [24]  926 	mov	_TH0,#0x4b
                                    927 ;	spi_dac.c:245: TL0 = 0x1C;
      00227B 75 8A 1C         [24]  928 	mov	_TL0,#0x1c
                                    929 ;	spi_dac.c:247: ms_flag = 1;     // Set 1ms flag
      00227E 90 04 3D         [24]  930 	mov	dptr,#_ms_flag
      002281 74 01            [12]  931 	mov	a,#0x01
      002283 F0               [24]  932 	movx	@dptr,a
                                    933 ;	spi_dac.c:249: printf("T \n\r");
      002284 74 AF            [12]  934 	mov	a,#___str_8
      002286 C0 E0            [24]  935 	push	acc
      002288 74 2E            [12]  936 	mov	a,#(___str_8 >> 8)
      00228A C0 E0            [24]  937 	push	acc
      00228C 74 80            [12]  938 	mov	a,#0x80
      00228E C0 E0            [24]  939 	push	acc
      002290 12 23 77         [24]  940 	lcall	_printf
      002293 15 81            [12]  941 	dec	sp
      002295 15 81            [12]  942 	dec	sp
      002297 15 81            [12]  943 	dec	sp
                                    944 ;	spi_dac.c:252: }
      002299 D0 D0            [24]  945 	pop	psw
      00229B D0 00            [24]  946 	pop	(0+0)
      00229D D0 01            [24]  947 	pop	(0+1)
      00229F D0 02            [24]  948 	pop	(0+2)
      0022A1 D0 03            [24]  949 	pop	(0+3)
      0022A3 D0 04            [24]  950 	pop	(0+4)
      0022A5 D0 05            [24]  951 	pop	(0+5)
      0022A7 D0 06            [24]  952 	pop	(0+6)
      0022A9 D0 07            [24]  953 	pop	(0+7)
      0022AB D0 83            [24]  954 	pop	dph
      0022AD D0 82            [24]  955 	pop	dpl
      0022AF D0 F0            [24]  956 	pop	b
      0022B1 D0 E0            [24]  957 	pop	acc
      0022B3 D0 20            [24]  958 	pop	bits
      0022B5 32               [24]  959 	reti
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'spi_isr'
                                    962 ;------------------------------------------------------------
                                    963 ;	spi_dac.c:260: void spi_isr(void) __interrupt 9
                                    964 ;	-----------------------------------------
                                    965 ;	 function spi_isr
                                    966 ;	-----------------------------------------
      0022B6                        967 _spi_isr:
      0022B6 C0 20            [24]  968 	push	bits
      0022B8 C0 E0            [24]  969 	push	acc
      0022BA C0 F0            [24]  970 	push	b
      0022BC C0 82            [24]  971 	push	dpl
      0022BE C0 83            [24]  972 	push	dph
      0022C0 C0 07            [24]  973 	push	(0+7)
      0022C2 C0 06            [24]  974 	push	(0+6)
      0022C4 C0 05            [24]  975 	push	(0+5)
      0022C6 C0 04            [24]  976 	push	(0+4)
      0022C8 C0 03            [24]  977 	push	(0+3)
      0022CA C0 02            [24]  978 	push	(0+2)
      0022CC C0 01            [24]  979 	push	(0+1)
      0022CE C0 00            [24]  980 	push	(0+0)
      0022D0 C0 D0            [24]  981 	push	psw
      0022D2 75 D0 00         [24]  982 	mov	psw,#0x00
                                    983 ;	spi_dac.c:262: if(SPSTA == 0x80)  // Check for successful transmission
      0022D5 74 80            [12]  984 	mov	a,#0x80
      0022D7 B5 C4 1E         [24]  985 	cjne	a,_SPSTA,00103$
                                    986 ;	spi_dac.c:264: transmission_complete = 1;
      0022DA 90 04 3E         [24]  987 	mov	dptr,#_transmission_complete
      0022DD 74 01            [12]  988 	mov	a,#0x01
      0022DF F0               [24]  989 	movx	@dptr,a
      0022E0 E4               [12]  990 	clr	a
      0022E1 A3               [24]  991 	inc	dptr
      0022E2 F0               [24]  992 	movx	@dptr,a
                                    993 ;	spi_dac.c:265: printf("spi isr \n\r");
      0022E3 74 B4            [12]  994 	mov	a,#___str_9
      0022E5 C0 E0            [24]  995 	push	acc
      0022E7 74 2E            [12]  996 	mov	a,#(___str_9 >> 8)
      0022E9 C0 E0            [24]  997 	push	acc
      0022EB 74 80            [12]  998 	mov	a,#0x80
      0022ED C0 E0            [24]  999 	push	acc
      0022EF 12 23 77         [24] 1000 	lcall	_printf
      0022F2 15 81            [12] 1001 	dec	sp
      0022F4 15 81            [12] 1002 	dec	sp
      0022F6 15 81            [12] 1003 	dec	sp
      0022F8                       1004 00103$:
                                   1005 ;	spi_dac.c:268: }
      0022F8 D0 D0            [24] 1006 	pop	psw
      0022FA D0 00            [24] 1007 	pop	(0+0)
      0022FC D0 01            [24] 1008 	pop	(0+1)
      0022FE D0 02            [24] 1009 	pop	(0+2)
      002300 D0 03            [24] 1010 	pop	(0+3)
      002302 D0 04            [24] 1011 	pop	(0+4)
      002304 D0 05            [24] 1012 	pop	(0+5)
      002306 D0 06            [24] 1013 	pop	(0+6)
      002308 D0 07            [24] 1014 	pop	(0+7)
      00230A D0 83            [24] 1015 	pop	dph
      00230C D0 82            [24] 1016 	pop	dpl
      00230E D0 F0            [24] 1017 	pop	b
      002310 D0 E0            [24] 1018 	pop	acc
      002312 D0 20            [24] 1019 	pop	bits
      002314 32               [24] 1020 	reti
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'spi_init'
                                   1023 ;------------------------------------------------------------
                                   1024 ;	spi_dac.c:280: void spi_init(void) 
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function spi_init
                                   1027 ;	-----------------------------------------
      002315                       1028 _spi_init:
                                   1029 ;	spi_dac.c:301: SPCON |= 0x10;
      002315 43 C3 10         [24] 1030 	orl	_SPCON,#0x10
                                   1031 ;	spi_dac.c:302: SPCON |= 0x20;
      002318 43 C3 20         [24] 1032 	orl	_SPCON,#0x20
                                   1033 ;	spi_dac.c:303: SPCON |= 0x40;
      00231B 43 C3 40         [24] 1034 	orl	_SPCON,#0x40
                                   1035 ;	spi_dac.c:310: }
      00231E 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	spi_dac.c:317: void spi_transmission_start(void)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function spi_transmission_start
                                   1043 ;	-----------------------------------------
      00231F                       1044 _spi_transmission_start:
                                   1045 ;	spi_dac.c:319: SPCON |= SPI_ENABLE;           // Enable SPI
      00231F 43 C3 40         [24] 1046 	orl	_SPCON,#0x40
                                   1047 ;	spi_dac.c:320: P1_1 = 0;
                                   1048 ;	assignBit
      002322 C2 91            [12] 1049 	clr	_P1_1
                                   1050 ;	spi_dac.c:321: }
      002324 22               [24] 1051 	ret
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1054 ;------------------------------------------------------------
                                   1055 ;	spi_dac.c:328: void spi_transmission_stop(void) 
                                   1056 ;	-----------------------------------------
                                   1057 ;	 function spi_transmission_stop
                                   1058 ;	-----------------------------------------
      002325                       1059 _spi_transmission_stop:
                                   1060 ;	spi_dac.c:330: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002325 53 C3 BF         [24] 1061 	anl	_SPCON,#0xbf
                                   1062 ;	spi_dac.c:331: }
      002328 22               [24] 1063 	ret
                                   1064 	.area CSEG    (CODE)
                                   1065 	.area CONST   (CODE)
      002DD9                       1066 _dac_values:
      002DD9 80 00                 1067 	.byte #0x80, #0x00	;  128
      002DDB 8F 00                 1068 	.byte #0x8f, #0x00	;  143
      002DDD 9F 00                 1069 	.byte #0x9f, #0x00	;  159
      002DDF AE 00                 1070 	.byte #0xae, #0x00	;  174
      002DE1 BD 00                 1071 	.byte #0xbd, #0x00	;  189
      002DE3 CA 00                 1072 	.byte #0xca, #0x00	;  202
      002DE5 D7 00                 1073 	.byte #0xd7, #0x00	;  215
      002DE7 E2 00                 1074 	.byte #0xe2, #0x00	;  226
      002DE9 EB 00                 1075 	.byte #0xeb, #0x00	;  235
      002DEB F3 00                 1076 	.byte #0xf3, #0x00	;  243
      002DED F9 00                 1077 	.byte #0xf9, #0x00	;  249
      002DEF FD 00                 1078 	.byte #0xfd, #0x00	;  253
      002DF1 FF 00                 1079 	.byte #0xff, #0x00	;  255
      002DF3 FF 00                 1080 	.byte #0xff, #0x00	;  255
      002DF5 FD 00                 1081 	.byte #0xfd, #0x00	;  253
      002DF7 F9 00                 1082 	.byte #0xf9, #0x00	;  249
      002DF9 F3 00                 1083 	.byte #0xf3, #0x00	;  243
      002DFB EB 00                 1084 	.byte #0xeb, #0x00	;  235
      002DFD E2 00                 1085 	.byte #0xe2, #0x00	;  226
      002DFF D7 00                 1086 	.byte #0xd7, #0x00	;  215
      002E01 CA 00                 1087 	.byte #0xca, #0x00	;  202
      002E03 BD 00                 1088 	.byte #0xbd, #0x00	;  189
      002E05 AE 00                 1089 	.byte #0xae, #0x00	;  174
      002E07 9F 00                 1090 	.byte #0x9f, #0x00	;  159
      002E09 8F 00                 1091 	.byte #0x8f, #0x00	;  143
      002E0B 80 00                 1092 	.byte #0x80, #0x00	;  128
      002E0D 70 00                 1093 	.byte #0x70, #0x00	;  112
      002E0F 60 00                 1094 	.byte #0x60, #0x00	;  96
      002E11 51 00                 1095 	.byte #0x51, #0x00	;  81
      002E13 42 00                 1096 	.byte #0x42, #0x00	;  66
      002E15 35 00                 1097 	.byte #0x35, #0x00	;  53
      002E17 28 00                 1098 	.byte #0x28, #0x00	;  40
      002E19 1D 00                 1099 	.byte #0x1d, #0x00	;  29
      002E1B 14 00                 1100 	.byte #0x14, #0x00	;  20
      002E1D 0C 00                 1101 	.byte #0x0c, #0x00	;  12
      002E1F 06 00                 1102 	.byte #0x06, #0x00	;  6
      002E21 02 00                 1103 	.byte #0x02, #0x00	;  2
      002E23 00 00                 1104 	.byte #0x00, #0x00	;  0
      002E25 00 00                 1105 	.byte #0x00, #0x00	;  0
      002E27 02 00                 1106 	.byte #0x02, #0x00	;  2
      002E29 06 00                 1107 	.byte #0x06, #0x00	;  6
      002E2B 0C 00                 1108 	.byte #0x0c, #0x00	;  12
      002E2D 14 00                 1109 	.byte #0x14, #0x00	;  20
      002E2F 1D 00                 1110 	.byte #0x1d, #0x00	;  29
      002E31 28 00                 1111 	.byte #0x28, #0x00	;  40
      002E33 35 00                 1112 	.byte #0x35, #0x00	;  53
      002E35 42 00                 1113 	.byte #0x42, #0x00	;  66
      002E37 51 00                 1114 	.byte #0x51, #0x00	;  81
      002E39 60 00                 1115 	.byte #0x60, #0x00	;  96
      002E3B 70 00                 1116 	.byte #0x70, #0x00	;  112
                                   1117 	.area CONST   (CODE)
      002E3D                       1118 ___str_0:
      002E3D 20 53 50 49 20 44 41  1119 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002E4D 0A                    1120 	.db 0x0a
      002E4E 0D                    1121 	.db 0x0d
      002E4F 00                    1122 	.db 0x00
                                   1123 	.area CSEG    (CODE)
                                   1124 	.area CONST   (CODE)
      002E50                       1125 ___str_1:
      002E50 53 50 49 20 54 52 41  1126 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002E68 0A                    1127 	.db 0x0a
      002E69 0D                    1128 	.db 0x0d
      002E6A 00                    1129 	.db 0x00
                                   1130 	.area CSEG    (CODE)
                                   1131 	.area CONST   (CODE)
      002E6B                       1132 ___str_2:
      002E6B 77 68 69 6C 65 20 73  1133 	.ascii "while start"
             74 61 72 74
      002E76 0A                    1134 	.db 0x0a
      002E77 0D                    1135 	.db 0x0d
      002E78 00                    1136 	.db 0x00
                                   1137 	.area CSEG    (CODE)
                                   1138 	.area CONST   (CODE)
      002E79                       1139 ___str_3:
      002E79 4C 6F 77 20 62 79 74  1140 	.ascii "Low byte %d"
             65 20 25 64
      002E84 0A                    1141 	.db 0x0a
      002E85 0D                    1142 	.db 0x0d
      002E86 00                    1143 	.db 0x00
                                   1144 	.area CSEG    (CODE)
                                   1145 	.area CONST   (CODE)
      002E87                       1146 ___str_4:
      002E87 48 69 67 68 20 62 79  1147 	.ascii "High byte %d"
             74 65 20 25 64
      002E93 0A                    1148 	.db 0x0a
      002E94 0D                    1149 	.db 0x0d
      002E95 00                    1150 	.db 0x00
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
      002E96                       1153 ___str_5:
      002E96 54 72 61 6E 73 69 74  1154 	.ascii "Transition to 1"
             69 6F 6E 20 74 6F 20
             31
      002EA5 0A                    1155 	.db 0x0a
      002EA6 0D                    1156 	.db 0x0d
      002EA7 00                    1157 	.db 0x00
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
      002EA8                       1160 ___str_6:
      002EA8 0A                    1161 	.db 0x0a
      002EA9 0D                    1162 	.db 0x0d
      002EAA 00                    1163 	.db 0x00
                                   1164 	.area CSEG    (CODE)
                                   1165 	.area CONST   (CODE)
      002EAB                       1166 ___str_7:
      002EAB 45                    1167 	.ascii "E"
      002EAC 0A                    1168 	.db 0x0a
      002EAD 0D                    1169 	.db 0x0d
      002EAE 00                    1170 	.db 0x00
                                   1171 	.area CSEG    (CODE)
                                   1172 	.area CONST   (CODE)
      002EAF                       1173 ___str_8:
      002EAF 54 20                 1174 	.ascii "T "
      002EB1 0A                    1175 	.db 0x0a
      002EB2 0D                    1176 	.db 0x0d
      002EB3 00                    1177 	.db 0x00
                                   1178 	.area CSEG    (CODE)
                                   1179 	.area CONST   (CODE)
      002EB4                       1180 ___str_9:
      002EB4 73 70 69 20 69 73 72  1181 	.ascii "spi isr "
             20
      002EBC 0A                    1182 	.db 0x0a
      002EBD 0D                    1183 	.db 0x0d
      002EBE 00                    1184 	.db 0x00
                                   1185 	.area CSEG    (CODE)
                                   1186 	.area XINIT   (CODE)
      002ECA                       1187 __xinit__ms_flag:
      002ECA 00                    1188 	.db #0x00	; 0
      002ECB                       1189 __xinit__transmission_complete:
      002ECB 00 00                 1190 	.byte #0x00, #0x00	;  0
                                   1191 	.area CABS    (ABS,CODE)
