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
      00200B 02 21 98         [24]  515 	ljmp	_timer0_isr
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
      00204B 02 21 F5         [24]  531 	ljmp	_spi_isr
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
      00210D 74 7C            [12]  694 	mov	a,#___str_0
      00210F C0 E0            [24]  695 	push	acc
      002111 74 2D            [12]  696 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  697 	push	acc
      002115 74 80            [12]  698 	mov	a,#0x80
      002117 C0 E0            [24]  699 	push	acc
      002119 12 22 B6         [24]  700 	lcall	_printf
      00211C 15 81            [12]  701 	dec	sp
      00211E 15 81            [12]  702 	dec	sp
      002120 15 81            [12]  703 	dec	sp
                                    704 ;	spi_dac.c:123: spi_init();
      002122 12 22 54         [24]  705 	lcall	_spi_init
                                    706 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002125 74 8F            [12]  707 	mov	a,#___str_1
      002127 C0 E0            [24]  708 	push	acc
      002129 74 2D            [12]  709 	mov	a,#(___str_1 >> 8)
      00212B C0 E0            [24]  710 	push	acc
      00212D 74 80            [12]  711 	mov	a,#0x80
      00212F C0 E0            [24]  712 	push	acc
      002131 12 22 B6         [24]  713 	lcall	_printf
      002134 15 81            [12]  714 	dec	sp
      002136 15 81            [12]  715 	dec	sp
      002138 15 81            [12]  716 	dec	sp
                                    717 ;	spi_dac.c:137: printf("Low byt %d\n\r", low_byte);
      00213A 74 F0            [12]  718 	mov	a,#0xf0
      00213C C0 E0            [24]  719 	push	acc
      00213E E4               [12]  720 	clr	a
      00213F C0 E0            [24]  721 	push	acc
      002141 74 AA            [12]  722 	mov	a,#___str_2
      002143 C0 E0            [24]  723 	push	acc
      002145 74 2D            [12]  724 	mov	a,#(___str_2 >> 8)
      002147 C0 E0            [24]  725 	push	acc
      002149 74 80            [12]  726 	mov	a,#0x80
      00214B C0 E0            [24]  727 	push	acc
      00214D 12 22 B6         [24]  728 	lcall	_printf
      002150 E5 81            [12]  729 	mov	a,sp
      002152 24 FB            [12]  730 	add	a,#0xfb
      002154 F5 81            [12]  731 	mov	sp,a
                                    732 ;	spi_dac.c:138: printf("High byte %d\n\r", high_byte);
      002156 74 1F            [12]  733 	mov	a,#0x1f
      002158 C0 E0            [24]  734 	push	acc
      00215A E4               [12]  735 	clr	a
      00215B C0 E0            [24]  736 	push	acc
      00215D 74 B7            [12]  737 	mov	a,#___str_3
      00215F C0 E0            [24]  738 	push	acc
      002161 74 2D            [12]  739 	mov	a,#(___str_3 >> 8)
      002163 C0 E0            [24]  740 	push	acc
      002165 74 80            [12]  741 	mov	a,#0x80
      002167 C0 E0            [24]  742 	push	acc
      002169 12 22 B6         [24]  743 	lcall	_printf
      00216C E5 81            [12]  744 	mov	a,sp
      00216E 24 FB            [12]  745 	add	a,#0xfb
      002170 F5 81            [12]  746 	mov	sp,a
                                    747 ;	spi_dac.c:140: P1_1 = 0;  // Select DAC
                                    748 ;	assignBit
      002172 C2 91            [12]  749 	clr	_P1_1
                                    750 ;	spi_dac.c:142: SPDAT = high_byte;
      002174 75 C5 1F         [24]  751 	mov	_SPDAT,#0x1f
                                    752 ;	spi_dac.c:143: while (!(SPSTA & (1<<7))); 
      002177                        753 00101$:
      002177 E5 C4            [12]  754 	mov	a,_SPSTA
      002179 30 E7 FB         [24]  755 	jnb	acc.7,00101$
                                    756 ;	spi_dac.c:148: SPDAT = low_byte;
      00217C 75 C5 F0         [24]  757 	mov	_SPDAT,#0xf0
                                    758 ;	spi_dac.c:149: while (!(SPSTA & (1<<7))); 
      00217F                        759 00104$:
      00217F E5 C4            [12]  760 	mov	a,_SPSTA
      002181 30 E7 FB         [24]  761 	jnb	acc.7,00104$
                                    762 ;	spi_dac.c:153: P1_1 = 1;  // Deselect DAC
                                    763 ;	assignBit
      002184 D2 91            [12]  764 	setb	_P1_1
                                    765 ;	spi_dac.c:248: }
      002186 22               [24]  766 	ret
                                    767 ;------------------------------------------------------------
                                    768 ;Allocation info for local variables in function 'timer0_init'
                                    769 ;------------------------------------------------------------
                                    770 ;	spi_dac.c:250: void timer0_init(void)
                                    771 ;	-----------------------------------------
                                    772 ;	 function timer0_init
                                    773 ;	-----------------------------------------
      002187                        774 _timer0_init:
                                    775 ;	spi_dac.c:252: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002187 53 89 F0         [24]  776 	anl	_TMOD,#0xf0
                                    777 ;	spi_dac.c:253: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00218A 43 89 01         [24]  778 	orl	_TMOD,#0x01
                                    779 ;	spi_dac.c:256: TH0 = TH0_RELOAD;
      00218D 75 8C FC         [24]  780 	mov	_TH0,#0xfc
                                    781 ;	spi_dac.c:257: TL0 = TL0_RELOAD;
      002190 75 8A 66         [24]  782 	mov	_TL0,#0x66
                                    783 ;	spi_dac.c:259: ET0 = 1;         // Enable Timer0 interrupt
                                    784 ;	assignBit
      002193 D2 A9            [12]  785 	setb	_ET0
                                    786 ;	spi_dac.c:260: TR0 = 1;         // Start Timer0
                                    787 ;	assignBit
      002195 D2 8C            [12]  788 	setb	_TR0
                                    789 ;	spi_dac.c:261: }
      002197 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'timer0_isr'
                                    793 ;------------------------------------------------------------
                                    794 ;	spi_dac.c:264: void timer0_isr(void) __interrupt 1
                                    795 ;	-----------------------------------------
                                    796 ;	 function timer0_isr
                                    797 ;	-----------------------------------------
      002198                        798 _timer0_isr:
      002198 C0 20            [24]  799 	push	bits
      00219A C0 E0            [24]  800 	push	acc
      00219C C0 F0            [24]  801 	push	b
      00219E C0 82            [24]  802 	push	dpl
      0021A0 C0 83            [24]  803 	push	dph
      0021A2 C0 07            [24]  804 	push	(0+7)
      0021A4 C0 06            [24]  805 	push	(0+6)
      0021A6 C0 05            [24]  806 	push	(0+5)
      0021A8 C0 04            [24]  807 	push	(0+4)
      0021AA C0 03            [24]  808 	push	(0+3)
      0021AC C0 02            [24]  809 	push	(0+2)
      0021AE C0 01            [24]  810 	push	(0+1)
      0021B0 C0 00            [24]  811 	push	(0+0)
      0021B2 C0 D0            [24]  812 	push	psw
      0021B4 75 D0 00         [24]  813 	mov	psw,#0x00
                                    814 ;	spi_dac.c:267: TH0 = 0x4B;
      0021B7 75 8C 4B         [24]  815 	mov	_TH0,#0x4b
                                    816 ;	spi_dac.c:268: TL0 = 0x1C;
      0021BA 75 8A 1C         [24]  817 	mov	_TL0,#0x1c
                                    818 ;	spi_dac.c:270: ms_flag = 1;     // Set 1ms flag
      0021BD 90 04 3D         [24]  819 	mov	dptr,#_ms_flag
      0021C0 74 01            [12]  820 	mov	a,#0x01
      0021C2 F0               [24]  821 	movx	@dptr,a
                                    822 ;	spi_dac.c:272: printf("T \n\r");
      0021C3 74 C6            [12]  823 	mov	a,#___str_4
      0021C5 C0 E0            [24]  824 	push	acc
      0021C7 74 2D            [12]  825 	mov	a,#(___str_4 >> 8)
      0021C9 C0 E0            [24]  826 	push	acc
      0021CB 74 80            [12]  827 	mov	a,#0x80
      0021CD C0 E0            [24]  828 	push	acc
      0021CF 12 22 B6         [24]  829 	lcall	_printf
      0021D2 15 81            [12]  830 	dec	sp
      0021D4 15 81            [12]  831 	dec	sp
      0021D6 15 81            [12]  832 	dec	sp
                                    833 ;	spi_dac.c:275: }
      0021D8 D0 D0            [24]  834 	pop	psw
      0021DA D0 00            [24]  835 	pop	(0+0)
      0021DC D0 01            [24]  836 	pop	(0+1)
      0021DE D0 02            [24]  837 	pop	(0+2)
      0021E0 D0 03            [24]  838 	pop	(0+3)
      0021E2 D0 04            [24]  839 	pop	(0+4)
      0021E4 D0 05            [24]  840 	pop	(0+5)
      0021E6 D0 06            [24]  841 	pop	(0+6)
      0021E8 D0 07            [24]  842 	pop	(0+7)
      0021EA D0 83            [24]  843 	pop	dph
      0021EC D0 82            [24]  844 	pop	dpl
      0021EE D0 F0            [24]  845 	pop	b
      0021F0 D0 E0            [24]  846 	pop	acc
      0021F2 D0 20            [24]  847 	pop	bits
      0021F4 32               [24]  848 	reti
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'spi_isr'
                                    851 ;------------------------------------------------------------
                                    852 ;	spi_dac.c:283: void spi_isr(void) __interrupt 9
                                    853 ;	-----------------------------------------
                                    854 ;	 function spi_isr
                                    855 ;	-----------------------------------------
      0021F5                        856 _spi_isr:
      0021F5 C0 20            [24]  857 	push	bits
      0021F7 C0 E0            [24]  858 	push	acc
      0021F9 C0 F0            [24]  859 	push	b
      0021FB C0 82            [24]  860 	push	dpl
      0021FD C0 83            [24]  861 	push	dph
      0021FF C0 07            [24]  862 	push	(0+7)
      002201 C0 06            [24]  863 	push	(0+6)
      002203 C0 05            [24]  864 	push	(0+5)
      002205 C0 04            [24]  865 	push	(0+4)
      002207 C0 03            [24]  866 	push	(0+3)
      002209 C0 02            [24]  867 	push	(0+2)
      00220B C0 01            [24]  868 	push	(0+1)
      00220D C0 00            [24]  869 	push	(0+0)
      00220F C0 D0            [24]  870 	push	psw
      002211 75 D0 00         [24]  871 	mov	psw,#0x00
                                    872 ;	spi_dac.c:285: if(SPSTA == 0x80)  // Check for successful transmission
      002214 74 80            [12]  873 	mov	a,#0x80
      002216 B5 C4 1E         [24]  874 	cjne	a,_SPSTA,00103$
                                    875 ;	spi_dac.c:287: transmission_complete = 1;
      002219 90 04 3E         [24]  876 	mov	dptr,#_transmission_complete
      00221C 74 01            [12]  877 	mov	a,#0x01
      00221E F0               [24]  878 	movx	@dptr,a
      00221F E4               [12]  879 	clr	a
      002220 A3               [24]  880 	inc	dptr
      002221 F0               [24]  881 	movx	@dptr,a
                                    882 ;	spi_dac.c:288: printf("spi isr \n\r");
      002222 74 CB            [12]  883 	mov	a,#___str_5
      002224 C0 E0            [24]  884 	push	acc
      002226 74 2D            [12]  885 	mov	a,#(___str_5 >> 8)
      002228 C0 E0            [24]  886 	push	acc
      00222A 74 80            [12]  887 	mov	a,#0x80
      00222C C0 E0            [24]  888 	push	acc
      00222E 12 22 B6         [24]  889 	lcall	_printf
      002231 15 81            [12]  890 	dec	sp
      002233 15 81            [12]  891 	dec	sp
      002235 15 81            [12]  892 	dec	sp
      002237                        893 00103$:
                                    894 ;	spi_dac.c:291: }
      002237 D0 D0            [24]  895 	pop	psw
      002239 D0 00            [24]  896 	pop	(0+0)
      00223B D0 01            [24]  897 	pop	(0+1)
      00223D D0 02            [24]  898 	pop	(0+2)
      00223F D0 03            [24]  899 	pop	(0+3)
      002241 D0 04            [24]  900 	pop	(0+4)
      002243 D0 05            [24]  901 	pop	(0+5)
      002245 D0 06            [24]  902 	pop	(0+6)
      002247 D0 07            [24]  903 	pop	(0+7)
      002249 D0 83            [24]  904 	pop	dph
      00224B D0 82            [24]  905 	pop	dpl
      00224D D0 F0            [24]  906 	pop	b
      00224F D0 E0            [24]  907 	pop	acc
      002251 D0 20            [24]  908 	pop	bits
      002253 32               [24]  909 	reti
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'spi_init'
                                    912 ;------------------------------------------------------------
                                    913 ;	spi_dac.c:303: void spi_init(void) 
                                    914 ;	-----------------------------------------
                                    915 ;	 function spi_init
                                    916 ;	-----------------------------------------
      002254                        917 _spi_init:
                                    918 ;	spi_dac.c:324: SPCON |= 0x10;
      002254 43 C3 10         [24]  919 	orl	_SPCON,#0x10
                                    920 ;	spi_dac.c:325: SPCON |= 0x20;
      002257 43 C3 20         [24]  921 	orl	_SPCON,#0x20
                                    922 ;	spi_dac.c:326: SPCON |= 0x40;
      00225A 43 C3 40         [24]  923 	orl	_SPCON,#0x40
                                    924 ;	spi_dac.c:333: }
      00225D 22               [24]  925 	ret
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'spi_transmission_start'
                                    928 ;------------------------------------------------------------
                                    929 ;	spi_dac.c:340: void spi_transmission_start(void)
                                    930 ;	-----------------------------------------
                                    931 ;	 function spi_transmission_start
                                    932 ;	-----------------------------------------
      00225E                        933 _spi_transmission_start:
                                    934 ;	spi_dac.c:342: SPCON |= SPI_ENABLE;           // Enable SPI
      00225E 43 C3 40         [24]  935 	orl	_SPCON,#0x40
                                    936 ;	spi_dac.c:343: P1_1 = 0;
                                    937 ;	assignBit
      002261 C2 91            [12]  938 	clr	_P1_1
                                    939 ;	spi_dac.c:344: }
      002263 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    943 ;------------------------------------------------------------
                                    944 ;	spi_dac.c:351: void spi_transmission_stop(void) 
                                    945 ;	-----------------------------------------
                                    946 ;	 function spi_transmission_stop
                                    947 ;	-----------------------------------------
      002264                        948 _spi_transmission_stop:
                                    949 ;	spi_dac.c:353: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002264 53 C3 BF         [24]  950 	anl	_SPCON,#0xbf
                                    951 ;	spi_dac.c:354: }
      002267 22               [24]  952 	ret
                                    953 	.area CSEG    (CODE)
                                    954 	.area CONST   (CODE)
      002D18                        955 _dac_values:
      002D18 80 00                  956 	.byte #0x80, #0x00	;  128
      002D1A 8F 00                  957 	.byte #0x8f, #0x00	;  143
      002D1C 9F 00                  958 	.byte #0x9f, #0x00	;  159
      002D1E AE 00                  959 	.byte #0xae, #0x00	;  174
      002D20 BD 00                  960 	.byte #0xbd, #0x00	;  189
      002D22 CA 00                  961 	.byte #0xca, #0x00	;  202
      002D24 D7 00                  962 	.byte #0xd7, #0x00	;  215
      002D26 E2 00                  963 	.byte #0xe2, #0x00	;  226
      002D28 EB 00                  964 	.byte #0xeb, #0x00	;  235
      002D2A F3 00                  965 	.byte #0xf3, #0x00	;  243
      002D2C F9 00                  966 	.byte #0xf9, #0x00	;  249
      002D2E FD 00                  967 	.byte #0xfd, #0x00	;  253
      002D30 FF 00                  968 	.byte #0xff, #0x00	;  255
      002D32 FF 00                  969 	.byte #0xff, #0x00	;  255
      002D34 FD 00                  970 	.byte #0xfd, #0x00	;  253
      002D36 F9 00                  971 	.byte #0xf9, #0x00	;  249
      002D38 F3 00                  972 	.byte #0xf3, #0x00	;  243
      002D3A EB 00                  973 	.byte #0xeb, #0x00	;  235
      002D3C E2 00                  974 	.byte #0xe2, #0x00	;  226
      002D3E D7 00                  975 	.byte #0xd7, #0x00	;  215
      002D40 CA 00                  976 	.byte #0xca, #0x00	;  202
      002D42 BD 00                  977 	.byte #0xbd, #0x00	;  189
      002D44 AE 00                  978 	.byte #0xae, #0x00	;  174
      002D46 9F 00                  979 	.byte #0x9f, #0x00	;  159
      002D48 8F 00                  980 	.byte #0x8f, #0x00	;  143
      002D4A 80 00                  981 	.byte #0x80, #0x00	;  128
      002D4C 70 00                  982 	.byte #0x70, #0x00	;  112
      002D4E 60 00                  983 	.byte #0x60, #0x00	;  96
      002D50 51 00                  984 	.byte #0x51, #0x00	;  81
      002D52 42 00                  985 	.byte #0x42, #0x00	;  66
      002D54 35 00                  986 	.byte #0x35, #0x00	;  53
      002D56 28 00                  987 	.byte #0x28, #0x00	;  40
      002D58 1D 00                  988 	.byte #0x1d, #0x00	;  29
      002D5A 14 00                  989 	.byte #0x14, #0x00	;  20
      002D5C 0C 00                  990 	.byte #0x0c, #0x00	;  12
      002D5E 06 00                  991 	.byte #0x06, #0x00	;  6
      002D60 02 00                  992 	.byte #0x02, #0x00	;  2
      002D62 00 00                  993 	.byte #0x00, #0x00	;  0
      002D64 00 00                  994 	.byte #0x00, #0x00	;  0
      002D66 02 00                  995 	.byte #0x02, #0x00	;  2
      002D68 06 00                  996 	.byte #0x06, #0x00	;  6
      002D6A 0C 00                  997 	.byte #0x0c, #0x00	;  12
      002D6C 14 00                  998 	.byte #0x14, #0x00	;  20
      002D6E 1D 00                  999 	.byte #0x1d, #0x00	;  29
      002D70 28 00                 1000 	.byte #0x28, #0x00	;  40
      002D72 35 00                 1001 	.byte #0x35, #0x00	;  53
      002D74 42 00                 1002 	.byte #0x42, #0x00	;  66
      002D76 51 00                 1003 	.byte #0x51, #0x00	;  81
      002D78 60 00                 1004 	.byte #0x60, #0x00	;  96
      002D7A 70 00                 1005 	.byte #0x70, #0x00	;  112
                                   1006 	.area CONST   (CODE)
      002D7C                       1007 ___str_0:
      002D7C 20 53 50 49 20 44 41  1008 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002D8C 0A                    1009 	.db 0x0a
      002D8D 0D                    1010 	.db 0x0d
      002D8E 00                    1011 	.db 0x00
                                   1012 	.area CSEG    (CODE)
                                   1013 	.area CONST   (CODE)
      002D8F                       1014 ___str_1:
      002D8F 53 50 49 20 54 52 41  1015 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002DA7 0A                    1016 	.db 0x0a
      002DA8 0D                    1017 	.db 0x0d
      002DA9 00                    1018 	.db 0x00
                                   1019 	.area CSEG    (CODE)
                                   1020 	.area CONST   (CODE)
      002DAA                       1021 ___str_2:
      002DAA 4C 6F 77 20 62 79 74  1022 	.ascii "Low byt %d"
             20 25 64
      002DB4 0A                    1023 	.db 0x0a
      002DB5 0D                    1024 	.db 0x0d
      002DB6 00                    1025 	.db 0x00
                                   1026 	.area CSEG    (CODE)
                                   1027 	.area CONST   (CODE)
      002DB7                       1028 ___str_3:
      002DB7 48 69 67 68 20 62 79  1029 	.ascii "High byte %d"
             74 65 20 25 64
      002DC3 0A                    1030 	.db 0x0a
      002DC4 0D                    1031 	.db 0x0d
      002DC5 00                    1032 	.db 0x00
                                   1033 	.area CSEG    (CODE)
                                   1034 	.area CONST   (CODE)
      002DC6                       1035 ___str_4:
      002DC6 54 20                 1036 	.ascii "T "
      002DC8 0A                    1037 	.db 0x0a
      002DC9 0D                    1038 	.db 0x0d
      002DCA 00                    1039 	.db 0x00
                                   1040 	.area CSEG    (CODE)
                                   1041 	.area CONST   (CODE)
      002DCB                       1042 ___str_5:
      002DCB 73 70 69 20 69 73 72  1043 	.ascii "spi isr "
             20
      002DD3 0A                    1044 	.db 0x0a
      002DD4 0D                    1045 	.db 0x0d
      002DD5 00                    1046 	.db 0x00
                                   1047 	.area CSEG    (CODE)
                                   1048 	.area XINIT   (CODE)
      002DE1                       1049 __xinit__ms_flag:
      002DE1 00                    1050 	.db #0x00	; 0
      002DE2                       1051 __xinit__transmission_complete:
      002DE2 00 00                 1052 	.byte #0x00, #0x00	;  0
                                   1053 	.area CABS    (ABS,CODE)
