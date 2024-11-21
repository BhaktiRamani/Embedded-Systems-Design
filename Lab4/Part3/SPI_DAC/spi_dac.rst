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
      000404                        485 _main_low_byte_65538_28:
      000404                        486 	.ds 2
                                    487 ;--------------------------------------------------------
                                    488 ; absolute external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XABS    (ABS,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external initialized ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XISEG   (XDATA)
      00043F                        495 _ms_flag::
      00043F                        496 	.ds 1
      000440                        497 _transmission_complete::
      000440                        498 	.ds 2
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; interrupt vector 
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
      002000                        513 __interrupt_vect:
      002000 02 20 51         [24]  514 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  515 	reti
      002004                        516 	.ds	7
      00200B 02 23 48         [24]  517 	ljmp	_timer0_isr
      00200E                        518 	.ds	5
      002013 32               [24]  519 	reti
      002014                        520 	.ds	7
      00201B 32               [24]  521 	reti
      00201C                        522 	.ds	7
      002023 32               [24]  523 	reti
      002024                        524 	.ds	7
      00202B 32               [24]  525 	reti
      00202C                        526 	.ds	7
      002033 32               [24]  527 	reti
      002034                        528 	.ds	7
      00203B 32               [24]  529 	reti
      00203C                        530 	.ds	7
      002043 32               [24]  531 	reti
      002044                        532 	.ds	7
      00204B 02 23 A5         [24]  533 	ljmp	_spi_isr
                                    534 ;--------------------------------------------------------
                                    535 ; global & static initialisations
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 	.globl __sdcc_gsinit_startup
                                    542 	.globl __sdcc_program_startup
                                    543 	.globl __start__stack
                                    544 	.globl __mcs51_genXINIT
                                    545 	.globl __mcs51_genXRAMCLEAR
                                    546 	.globl __mcs51_genRAMCLEAR
                                    547 	.area GSFINAL (CODE)
      0020AA 02 20 4E         [24]  548 	ljmp	__sdcc_program_startup
                                    549 ;--------------------------------------------------------
                                    550 ; Home
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area HOME    (CODE)
      00204E                        554 __sdcc_program_startup:
      00204E 02 21 0D         [24]  555 	ljmp	_main
                                    556 ;	return from main will return to caller
                                    557 ;--------------------------------------------------------
                                    558 ; code
                                    559 ;--------------------------------------------------------
                                    560 	.area CSEG    (CODE)
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'putchar'
                                    563 ;------------------------------------------------------------
                                    564 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    565 ;------------------------------------------------------------
                                    566 ;	spi_dac.c:90: int putchar(int charToSend) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function putchar
                                    569 ;	-----------------------------------------
      0020AD                        570 _putchar:
                           000007   571 	ar7 = 0x07
                           000006   572 	ar6 = 0x06
                           000005   573 	ar5 = 0x05
                           000004   574 	ar4 = 0x04
                           000003   575 	ar3 = 0x03
                           000002   576 	ar2 = 0x02
                           000001   577 	ar1 = 0x01
                           000000   578 	ar0 = 0x00
      0020AD AF 83            [24]  579 	mov	r7,dph
      0020AF E5 82            [12]  580 	mov	a,dpl
      0020B1 90 04 00         [24]  581 	mov	dptr,#_putchar_charToSend_65536_17
      0020B4 F0               [24]  582 	movx	@dptr,a
      0020B5 EF               [12]  583 	mov	a,r7
      0020B6 A3               [24]  584 	inc	dptr
      0020B7 F0               [24]  585 	movx	@dptr,a
                                    586 ;	spi_dac.c:91: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  587 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  588 	movx	a,@dptr
      0020BC FE               [12]  589 	mov	r6,a
      0020BD A3               [24]  590 	inc	dptr
      0020BE E0               [24]  591 	movx	a,@dptr
      0020BF FF               [12]  592 	mov	r7,a
      0020C0 8E 99            [24]  593 	mov	_SBUF,r6
                                    594 ;	spi_dac.c:92: while (!TI);             /* Wait for transmission completion */
      0020C2                        595 00101$:
                                    596 ;	spi_dac.c:93: TI = 0;                  /* Clear transmission flag */
                                    597 ;	assignBit
      0020C2 10 99 02         [24]  598 	jbc	_TI,00114$
      0020C5 80 FB            [24]  599 	sjmp	00101$
      0020C7                        600 00114$:
                                    601 ;	spi_dac.c:94: return charToSend;
      0020C7 8E 82            [24]  602 	mov	dpl,r6
      0020C9 8F 83            [24]  603 	mov	dph,r7
                                    604 ;	spi_dac.c:95: }
      0020CB 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'getchar'
                                    608 ;------------------------------------------------------------
                                    609 ;	spi_dac.c:101: int getchar(void) {
                                    610 ;	-----------------------------------------
                                    611 ;	 function getchar
                                    612 ;	-----------------------------------------
      0020CC                        613 _getchar:
                                    614 ;	spi_dac.c:102: while (!RI);             /* Wait for reception completion */
      0020CC                        615 00101$:
                                    616 ;	spi_dac.c:103: RI = 0;                  /* Clear reception flag */
                                    617 ;	assignBit
      0020CC 10 98 02         [24]  618 	jbc	_RI,00114$
      0020CF 80 FB            [24]  619 	sjmp	00101$
      0020D1                        620 00114$:
                                    621 ;	spi_dac.c:104: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  622 	mov	r6,_SBUF
      0020D3 7F 00            [12]  623 	mov	r7,#0x00
      0020D5 8E 82            [24]  624 	mov	dpl,r6
      0020D7 8F 83            [24]  625 	mov	dph,r7
                                    626 ;	spi_dac.c:105: }
      0020D9 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'delay_ms'
                                    630 ;------------------------------------------------------------
                                    631 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    632 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    633 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    634 ;------------------------------------------------------------
                                    635 ;	spi_dac.c:107: void delay_ms(unsigned int ms) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function delay_ms
                                    638 ;	-----------------------------------------
      0020DA                        639 _delay_ms:
      0020DA AF 83            [24]  640 	mov	r7,dph
      0020DC E5 82            [12]  641 	mov	a,dpl
      0020DE 90 04 02         [24]  642 	mov	dptr,#_delay_ms_ms_65536_21
      0020E1 F0               [24]  643 	movx	@dptr,a
      0020E2 EF               [12]  644 	mov	a,r7
      0020E3 A3               [24]  645 	inc	dptr
      0020E4 F0               [24]  646 	movx	@dptr,a
                                    647 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
      0020E5 90 04 02         [24]  648 	mov	dptr,#_delay_ms_ms_65536_21
      0020E8 E0               [24]  649 	movx	a,@dptr
      0020E9 FE               [12]  650 	mov	r6,a
      0020EA A3               [24]  651 	inc	dptr
      0020EB E0               [24]  652 	movx	a,@dptr
      0020EC FF               [12]  653 	mov	r7,a
      0020ED 7C 00            [12]  654 	mov	r4,#0x00
      0020EF 7D 00            [12]  655 	mov	r5,#0x00
      0020F1                        656 00107$:
      0020F1 C3               [12]  657 	clr	c
      0020F2 EC               [12]  658 	mov	a,r4
      0020F3 9E               [12]  659 	subb	a,r6
      0020F4 ED               [12]  660 	mov	a,r5
      0020F5 9F               [12]  661 	subb	a,r7
      0020F6 50 14            [24]  662 	jnc	00109$
                                    663 ;	spi_dac.c:110: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020F8 7A 7B            [12]  664 	mov	r2,#0x7b
      0020FA 7B 00            [12]  665 	mov	r3,#0x00
      0020FC                        666 00105$:
      0020FC 1A               [12]  667 	dec	r2
      0020FD BA FF 01         [24]  668 	cjne	r2,#0xff,00130$
      002100 1B               [12]  669 	dec	r3
      002101                        670 00130$:
      002101 EA               [12]  671 	mov	a,r2
      002102 4B               [12]  672 	orl	a,r3
      002103 70 F7            [24]  673 	jnz	00105$
                                    674 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
      002105 0C               [12]  675 	inc	r4
      002106 BC 00 E8         [24]  676 	cjne	r4,#0x00,00107$
      002109 0D               [12]  677 	inc	r5
      00210A 80 E5            [24]  678 	sjmp	00107$
      00210C                        679 00109$:
                                    680 ;	spi_dac.c:111: }
      00210C 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'main'
                                    684 ;------------------------------------------------------------
                                    685 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    686 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    687 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    688 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    689 ;------------------------------------------------------------
                                    690 ;	spi_dac.c:112: int main(void)
                                    691 ;	-----------------------------------------
                                    692 ;	 function main
                                    693 ;	-----------------------------------------
      00210D                        694 _main:
                                    695 ;	spi_dac.c:114: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 2C            [12]  696 	mov	a,#___str_0
      00210F C0 E0            [24]  697 	push	acc
      002111 74 2F            [12]  698 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  699 	push	acc
      002115 74 80            [12]  700 	mov	a,#0x80
      002117 C0 E0            [24]  701 	push	acc
      002119 12 24 66         [24]  702 	lcall	_printf
      00211C 15 81            [12]  703 	dec	sp
      00211E 15 81            [12]  704 	dec	sp
      002120 15 81            [12]  705 	dec	sp
                                    706 ;	spi_dac.c:123: spi_init();
      002122 12 24 04         [24]  707 	lcall	_spi_init
                                    708 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002125 74 3F            [12]  709 	mov	a,#___str_1
      002127 C0 E0            [24]  710 	push	acc
      002129 74 2F            [12]  711 	mov	a,#(___str_1 >> 8)
      00212B C0 E0            [24]  712 	push	acc
      00212D 74 80            [12]  713 	mov	a,#0x80
      00212F C0 E0            [24]  714 	push	acc
      002131 12 24 66         [24]  715 	lcall	_printf
      002134 15 81            [12]  716 	dec	sp
      002136 15 81            [12]  717 	dec	sp
      002138 15 81            [12]  718 	dec	sp
                                    719 ;	spi_dac.c:155: while(1)
      00213A                        720 00132$:
                                    721 ;	spi_dac.c:157: printf("w\n\r");
      00213A 74 5A            [12]  722 	mov	a,#___str_2
      00213C C0 E0            [24]  723 	push	acc
      00213E 74 2F            [12]  724 	mov	a,#(___str_2 >> 8)
      002140 C0 E0            [24]  725 	push	acc
      002142 74 80            [12]  726 	mov	a,#0x80
      002144 C0 E0            [24]  727 	push	acc
      002146 12 24 66         [24]  728 	lcall	_printf
      002149 15 81            [12]  729 	dec	sp
      00214B 15 81            [12]  730 	dec	sp
      00214D 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:179: low_byte = 0x00;            //mid - 0
      00214F 90 04 04         [24]  733 	mov	dptr,#_main_low_byte_65538_28
      002152 E4               [12]  734 	clr	a
      002153 F0               [24]  735 	movx	@dptr,a
      002154 A3               [24]  736 	inc	dptr
      002155 F0               [24]  737 	movx	@dptr,a
                                    738 ;	spi_dac.c:184: delay_ms(10);
      002156 90 00 0A         [24]  739 	mov	dptr,#0x000a
      002159 12 20 DA         [24]  740 	lcall	_delay_ms
                                    741 ;	spi_dac.c:186: printf("Low byte %d\n\r", low_byte);
      00215C E4               [12]  742 	clr	a
      00215D C0 E0            [24]  743 	push	acc
      00215F C0 E0            [24]  744 	push	acc
      002161 74 5E            [12]  745 	mov	a,#___str_3
      002163 C0 E0            [24]  746 	push	acc
      002165 74 2F            [12]  747 	mov	a,#(___str_3 >> 8)
      002167 C0 E0            [24]  748 	push	acc
      002169 74 80            [12]  749 	mov	a,#0x80
      00216B C0 E0            [24]  750 	push	acc
      00216D 12 24 66         [24]  751 	lcall	_printf
      002170 E5 81            [12]  752 	mov	a,sp
      002172 24 FB            [12]  753 	add	a,#0xfb
      002174 F5 81            [12]  754 	mov	sp,a
                                    755 ;	spi_dac.c:187: printf("High byte %d\n\r", high_byte);
      002176 74 18            [12]  756 	mov	a,#0x18
      002178 C0 E0            [24]  757 	push	acc
      00217A E4               [12]  758 	clr	a
      00217B C0 E0            [24]  759 	push	acc
      00217D 74 6C            [12]  760 	mov	a,#___str_4
      00217F C0 E0            [24]  761 	push	acc
      002181 74 2F            [12]  762 	mov	a,#(___str_4 >> 8)
      002183 C0 E0            [24]  763 	push	acc
      002185 74 80            [12]  764 	mov	a,#0x80
      002187 C0 E0            [24]  765 	push	acc
      002189 12 24 66         [24]  766 	lcall	_printf
      00218C E5 81            [12]  767 	mov	a,sp
      00218E 24 FB            [12]  768 	add	a,#0xfb
      002190 F5 81            [12]  769 	mov	sp,a
                                    770 ;	spi_dac.c:189: P1_1 = 0;  // Select DAC
                                    771 ;	assignBit
      002192 C2 91            [12]  772 	clr	_P1_1
                                    773 ;	spi_dac.c:192: SPDAT = high_byte;
      002194 75 C5 18         [24]  774 	mov	_SPDAT,#0x18
                                    775 ;	spi_dac.c:193: while (!(SPSTA & (1<<7))); 
      002197                        776 00101$:
      002197 E5 C4            [12]  777 	mov	a,_SPSTA
      002199 30 E7 FB         [24]  778 	jnb	acc.7,00101$
                                    779 ;	spi_dac.c:197: SPDAT = low_byte;
      00219C 90 04 04         [24]  780 	mov	dptr,#_main_low_byte_65538_28
      00219F E0               [24]  781 	movx	a,@dptr
      0021A0 FE               [12]  782 	mov	r6,a
      0021A1 A3               [24]  783 	inc	dptr
      0021A2 E0               [24]  784 	movx	a,@dptr
      0021A3 8E C5            [24]  785 	mov	_SPDAT,r6
                                    786 ;	spi_dac.c:198: while (!(SPSTA & (1<<7))); 
      0021A5                        787 00104$:
      0021A5 E5 C4            [12]  788 	mov	a,_SPSTA
      0021A7 30 E7 FB         [24]  789 	jnb	acc.7,00104$
                                    790 ;	spi_dac.c:200: P1_1 = 1;  // Deselect DAC
                                    791 ;	assignBit
      0021AA D2 91            [12]  792 	setb	_P1_1
                                    793 ;	spi_dac.c:203: low_byte = 0xFF;            //high - 1
      0021AC 90 04 04         [24]  794 	mov	dptr,#_main_low_byte_65538_28
      0021AF 74 FF            [12]  795 	mov	a,#0xff
      0021B1 F0               [24]  796 	movx	@dptr,a
      0021B2 E4               [12]  797 	clr	a
      0021B3 A3               [24]  798 	inc	dptr
      0021B4 F0               [24]  799 	movx	@dptr,a
                                    800 ;	spi_dac.c:207: delay_ms(10);
      0021B5 90 00 0A         [24]  801 	mov	dptr,#0x000a
      0021B8 12 20 DA         [24]  802 	lcall	_delay_ms
                                    803 ;	spi_dac.c:209: printf("Low byte %d\n\r", low_byte);
      0021BB 74 FF            [12]  804 	mov	a,#0xff
      0021BD C0 E0            [24]  805 	push	acc
      0021BF E4               [12]  806 	clr	a
      0021C0 C0 E0            [24]  807 	push	acc
      0021C2 74 5E            [12]  808 	mov	a,#___str_3
      0021C4 C0 E0            [24]  809 	push	acc
      0021C6 74 2F            [12]  810 	mov	a,#(___str_3 >> 8)
      0021C8 C0 E0            [24]  811 	push	acc
      0021CA 74 80            [12]  812 	mov	a,#0x80
      0021CC C0 E0            [24]  813 	push	acc
      0021CE 12 24 66         [24]  814 	lcall	_printf
      0021D1 E5 81            [12]  815 	mov	a,sp
      0021D3 24 FB            [12]  816 	add	a,#0xfb
      0021D5 F5 81            [12]  817 	mov	sp,a
                                    818 ;	spi_dac.c:210: printf("High byte %d\n\r", high_byte);
      0021D7 74 1F            [12]  819 	mov	a,#0x1f
      0021D9 C0 E0            [24]  820 	push	acc
      0021DB E4               [12]  821 	clr	a
      0021DC C0 E0            [24]  822 	push	acc
      0021DE 74 6C            [12]  823 	mov	a,#___str_4
      0021E0 C0 E0            [24]  824 	push	acc
      0021E2 74 2F            [12]  825 	mov	a,#(___str_4 >> 8)
      0021E4 C0 E0            [24]  826 	push	acc
      0021E6 74 80            [12]  827 	mov	a,#0x80
      0021E8 C0 E0            [24]  828 	push	acc
      0021EA 12 24 66         [24]  829 	lcall	_printf
      0021ED E5 81            [12]  830 	mov	a,sp
      0021EF 24 FB            [12]  831 	add	a,#0xfb
      0021F1 F5 81            [12]  832 	mov	sp,a
                                    833 ;	spi_dac.c:212: P1_1 = 0;  // Select DAC
                                    834 ;	assignBit
      0021F3 C2 91            [12]  835 	clr	_P1_1
                                    836 ;	spi_dac.c:215: SPDAT = high_byte;
      0021F5 75 C5 1F         [24]  837 	mov	_SPDAT,#0x1f
                                    838 ;	spi_dac.c:216: while (!(SPSTA & (1<<7))); 
      0021F8                        839 00107$:
      0021F8 E5 C4            [12]  840 	mov	a,_SPSTA
      0021FA 30 E7 FB         [24]  841 	jnb	acc.7,00107$
                                    842 ;	spi_dac.c:221: SPDAT = low_byte;
      0021FD 90 04 04         [24]  843 	mov	dptr,#_main_low_byte_65538_28
      002200 E0               [24]  844 	movx	a,@dptr
      002201 FE               [12]  845 	mov	r6,a
      002202 A3               [24]  846 	inc	dptr
      002203 E0               [24]  847 	movx	a,@dptr
      002204 8E C5            [24]  848 	mov	_SPDAT,r6
                                    849 ;	spi_dac.c:222: while (!(SPSTA & (1<<7))); 
      002206                        850 00110$:
      002206 E5 C4            [12]  851 	mov	a,_SPSTA
      002208 30 E7 FB         [24]  852 	jnb	acc.7,00110$
                                    853 ;	spi_dac.c:226: P1_1 = 1;  // Deselect DAC
                                    854 ;	assignBit
      00220B D2 91            [12]  855 	setb	_P1_1
                                    856 ;	spi_dac.c:228: low_byte = 0x00;            //mid - 0
      00220D 90 04 04         [24]  857 	mov	dptr,#_main_low_byte_65538_28
      002210 E4               [12]  858 	clr	a
      002211 F0               [24]  859 	movx	@dptr,a
      002212 A3               [24]  860 	inc	dptr
      002213 F0               [24]  861 	movx	@dptr,a
                                    862 ;	spi_dac.c:233: delay_ms(10);
      002214 90 00 0A         [24]  863 	mov	dptr,#0x000a
      002217 12 20 DA         [24]  864 	lcall	_delay_ms
                                    865 ;	spi_dac.c:235: printf("Low byte %d\n\r", low_byte);
      00221A E4               [12]  866 	clr	a
      00221B C0 E0            [24]  867 	push	acc
      00221D C0 E0            [24]  868 	push	acc
      00221F 74 5E            [12]  869 	mov	a,#___str_3
      002221 C0 E0            [24]  870 	push	acc
      002223 74 2F            [12]  871 	mov	a,#(___str_3 >> 8)
      002225 C0 E0            [24]  872 	push	acc
      002227 74 80            [12]  873 	mov	a,#0x80
      002229 C0 E0            [24]  874 	push	acc
      00222B 12 24 66         [24]  875 	lcall	_printf
      00222E E5 81            [12]  876 	mov	a,sp
      002230 24 FB            [12]  877 	add	a,#0xfb
      002232 F5 81            [12]  878 	mov	sp,a
                                    879 ;	spi_dac.c:236: printf("High byte %d\n\r", high_byte);
      002234 74 18            [12]  880 	mov	a,#0x18
      002236 C0 E0            [24]  881 	push	acc
      002238 E4               [12]  882 	clr	a
      002239 C0 E0            [24]  883 	push	acc
      00223B 74 6C            [12]  884 	mov	a,#___str_4
      00223D C0 E0            [24]  885 	push	acc
      00223F 74 2F            [12]  886 	mov	a,#(___str_4 >> 8)
      002241 C0 E0            [24]  887 	push	acc
      002243 74 80            [12]  888 	mov	a,#0x80
      002245 C0 E0            [24]  889 	push	acc
      002247 12 24 66         [24]  890 	lcall	_printf
      00224A E5 81            [12]  891 	mov	a,sp
      00224C 24 FB            [12]  892 	add	a,#0xfb
      00224E F5 81            [12]  893 	mov	sp,a
                                    894 ;	spi_dac.c:238: P1_1 = 0;  // Select DAC
                                    895 ;	assignBit
      002250 C2 91            [12]  896 	clr	_P1_1
                                    897 ;	spi_dac.c:242: SPDAT = high_byte;
      002252 75 C5 18         [24]  898 	mov	_SPDAT,#0x18
                                    899 ;	spi_dac.c:243: while (!(SPSTA & (1<<7))); 
      002255                        900 00113$:
      002255 E5 C4            [12]  901 	mov	a,_SPSTA
      002257 30 E7 FB         [24]  902 	jnb	acc.7,00113$
                                    903 ;	spi_dac.c:248: SPDAT = low_byte;
      00225A 90 04 04         [24]  904 	mov	dptr,#_main_low_byte_65538_28
      00225D E0               [24]  905 	movx	a,@dptr
      00225E FE               [12]  906 	mov	r6,a
      00225F A3               [24]  907 	inc	dptr
      002260 E0               [24]  908 	movx	a,@dptr
      002261 8E C5            [24]  909 	mov	_SPDAT,r6
                                    910 ;	spi_dac.c:249: while (!(SPSTA & (1<<7))); 
      002263                        911 00116$:
      002263 E5 C4            [12]  912 	mov	a,_SPSTA
      002265 30 E7 FB         [24]  913 	jnb	acc.7,00116$
                                    914 ;	spi_dac.c:253: P1_1 = 1;  // Deselect DAC
                                    915 ;	assignBit
      002268 D2 91            [12]  916 	setb	_P1_1
                                    917 ;	spi_dac.c:262: delay_ms(10);
      00226A 90 00 0A         [24]  918 	mov	dptr,#0x000a
      00226D 12 20 DA         [24]  919 	lcall	_delay_ms
                                    920 ;	spi_dac.c:264: printf("Low byte %d\n\r", low_byte);
      002270 E4               [12]  921 	clr	a
      002271 C0 E0            [24]  922 	push	acc
      002273 C0 E0            [24]  923 	push	acc
      002275 74 5E            [12]  924 	mov	a,#___str_3
      002277 C0 E0            [24]  925 	push	acc
      002279 74 2F            [12]  926 	mov	a,#(___str_3 >> 8)
      00227B C0 E0            [24]  927 	push	acc
      00227D 74 80            [12]  928 	mov	a,#0x80
      00227F C0 E0            [24]  929 	push	acc
      002281 12 24 66         [24]  930 	lcall	_printf
      002284 E5 81            [12]  931 	mov	a,sp
      002286 24 FB            [12]  932 	add	a,#0xfb
      002288 F5 81            [12]  933 	mov	sp,a
                                    934 ;	spi_dac.c:265: printf("High byte %d\n\r", high_byte);
      00228A 74 10            [12]  935 	mov	a,#0x10
      00228C C0 E0            [24]  936 	push	acc
      00228E E4               [12]  937 	clr	a
      00228F C0 E0            [24]  938 	push	acc
      002291 74 6C            [12]  939 	mov	a,#___str_4
      002293 C0 E0            [24]  940 	push	acc
      002295 74 2F            [12]  941 	mov	a,#(___str_4 >> 8)
      002297 C0 E0            [24]  942 	push	acc
      002299 74 80            [12]  943 	mov	a,#0x80
      00229B C0 E0            [24]  944 	push	acc
      00229D 12 24 66         [24]  945 	lcall	_printf
      0022A0 E5 81            [12]  946 	mov	a,sp
      0022A2 24 FB            [12]  947 	add	a,#0xfb
      0022A4 F5 81            [12]  948 	mov	sp,a
                                    949 ;	spi_dac.c:267: P1_1 = 0;  // Select DAC
                                    950 ;	assignBit
      0022A6 C2 91            [12]  951 	clr	_P1_1
                                    952 ;	spi_dac.c:272: SPDAT = high_byte;
      0022A8 75 C5 10         [24]  953 	mov	_SPDAT,#0x10
                                    954 ;	spi_dac.c:273: while (!(SPSTA & (1<<7))); 
      0022AB                        955 00119$:
      0022AB E5 C4            [12]  956 	mov	a,_SPSTA
      0022AD 30 E7 FB         [24]  957 	jnb	acc.7,00119$
                                    958 ;	spi_dac.c:278: SPDAT = low_byte;
      0022B0 75 C5 00         [24]  959 	mov	_SPDAT,#0x00
                                    960 ;	spi_dac.c:279: while (!(SPSTA & (1<<7))); 
      0022B3                        961 00122$:
      0022B3 E5 C4            [12]  962 	mov	a,_SPSTA
      0022B5 30 E7 FB         [24]  963 	jnb	acc.7,00122$
                                    964 ;	spi_dac.c:283: P1_1 = 1;  // Deselect DAC
                                    965 ;	assignBit
      0022B8 D2 91            [12]  966 	setb	_P1_1
                                    967 ;	spi_dac.c:291: delay_ms(10);
      0022BA 90 00 0A         [24]  968 	mov	dptr,#0x000a
      0022BD 12 20 DA         [24]  969 	lcall	_delay_ms
                                    970 ;	spi_dac.c:293: printf("Low byte %d\n\r", low_byte);
      0022C0 E4               [12]  971 	clr	a
      0022C1 C0 E0            [24]  972 	push	acc
      0022C3 C0 E0            [24]  973 	push	acc
      0022C5 74 5E            [12]  974 	mov	a,#___str_3
      0022C7 C0 E0            [24]  975 	push	acc
      0022C9 74 2F            [12]  976 	mov	a,#(___str_3 >> 8)
      0022CB C0 E0            [24]  977 	push	acc
      0022CD 74 80            [12]  978 	mov	a,#0x80
      0022CF C0 E0            [24]  979 	push	acc
      0022D1 12 24 66         [24]  980 	lcall	_printf
      0022D4 E5 81            [12]  981 	mov	a,sp
      0022D6 24 FB            [12]  982 	add	a,#0xfb
      0022D8 F5 81            [12]  983 	mov	sp,a
                                    984 ;	spi_dac.c:294: printf("High byte %d\n\r", high_byte);
      0022DA 74 18            [12]  985 	mov	a,#0x18
      0022DC C0 E0            [24]  986 	push	acc
      0022DE E4               [12]  987 	clr	a
      0022DF C0 E0            [24]  988 	push	acc
      0022E1 74 6C            [12]  989 	mov	a,#___str_4
      0022E3 C0 E0            [24]  990 	push	acc
      0022E5 74 2F            [12]  991 	mov	a,#(___str_4 >> 8)
      0022E7 C0 E0            [24]  992 	push	acc
      0022E9 74 80            [12]  993 	mov	a,#0x80
      0022EB C0 E0            [24]  994 	push	acc
      0022ED 12 24 66         [24]  995 	lcall	_printf
      0022F0 E5 81            [12]  996 	mov	a,sp
      0022F2 24 FB            [12]  997 	add	a,#0xfb
      0022F4 F5 81            [12]  998 	mov	sp,a
                                    999 ;	spi_dac.c:296: P1_1 = 0;  // Select DAC
                                   1000 ;	assignBit
      0022F6 C2 91            [12] 1001 	clr	_P1_1
                                   1002 ;	spi_dac.c:301: SPDAT = high_byte;
      0022F8 75 C5 18         [24] 1003 	mov	_SPDAT,#0x18
                                   1004 ;	spi_dac.c:302: while (!(SPSTA & (1<<7))); 
      0022FB                       1005 00125$:
      0022FB E5 C4            [12] 1006 	mov	a,_SPSTA
      0022FD 30 E7 FB         [24] 1007 	jnb	acc.7,00125$
                                   1008 ;	spi_dac.c:307: SPDAT = low_byte;
      002300 75 C5 00         [24] 1009 	mov	_SPDAT,#0x00
                                   1010 ;	spi_dac.c:308: while (!(SPSTA & (1<<7))); 
      002303                       1011 00128$:
      002303 E5 C4            [12] 1012 	mov	a,_SPSTA
      002305 30 E7 FB         [24] 1013 	jnb	acc.7,00128$
                                   1014 ;	spi_dac.c:312: P1_1 = 1;  // Deselect DAC
                                   1015 ;	assignBit
      002308 D2 91            [12] 1016 	setb	_P1_1
                                   1017 ;	spi_dac.c:317: printf("E\n\r");
      00230A 74 7B            [12] 1018 	mov	a,#___str_5
      00230C C0 E0            [24] 1019 	push	acc
      00230E 74 2F            [12] 1020 	mov	a,#(___str_5 >> 8)
      002310 C0 E0            [24] 1021 	push	acc
      002312 74 80            [12] 1022 	mov	a,#0x80
      002314 C0 E0            [24] 1023 	push	acc
      002316 12 24 66         [24] 1024 	lcall	_printf
      002319 15 81            [12] 1025 	dec	sp
      00231B 15 81            [12] 1026 	dec	sp
      00231D 15 81            [12] 1027 	dec	sp
                                   1028 ;	spi_dac.c:318: printf("\n\r");
      00231F 74 7F            [12] 1029 	mov	a,#___str_6
      002321 C0 E0            [24] 1030 	push	acc
      002323 74 2F            [12] 1031 	mov	a,#(___str_6 >> 8)
      002325 C0 E0            [24] 1032 	push	acc
      002327 74 80            [12] 1033 	mov	a,#0x80
      002329 C0 E0            [24] 1034 	push	acc
      00232B 12 24 66         [24] 1035 	lcall	_printf
      00232E 15 81            [12] 1036 	dec	sp
      002330 15 81            [12] 1037 	dec	sp
      002332 15 81            [12] 1038 	dec	sp
                                   1039 ;	spi_dac.c:321: dac_value_index++;
                                   1040 ;	spi_dac.c:323: }
      002334 02 21 3A         [24] 1041 	ljmp	00132$
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'timer0_init'
                                   1044 ;------------------------------------------------------------
                                   1045 ;	spi_dac.c:325: void timer0_init(void)
                                   1046 ;	-----------------------------------------
                                   1047 ;	 function timer0_init
                                   1048 ;	-----------------------------------------
      002337                       1049 _timer0_init:
                                   1050 ;	spi_dac.c:327: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002337 53 89 F0         [24] 1051 	anl	_TMOD,#0xf0
                                   1052 ;	spi_dac.c:328: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00233A 43 89 01         [24] 1053 	orl	_TMOD,#0x01
                                   1054 ;	spi_dac.c:331: TH0 = TH0_RELOAD;
      00233D 75 8C FC         [24] 1055 	mov	_TH0,#0xfc
                                   1056 ;	spi_dac.c:332: TL0 = TL0_RELOAD;
      002340 75 8A 66         [24] 1057 	mov	_TL0,#0x66
                                   1058 ;	spi_dac.c:334: ET0 = 1;         // Enable Timer0 interrupt
                                   1059 ;	assignBit
      002343 D2 A9            [12] 1060 	setb	_ET0
                                   1061 ;	spi_dac.c:335: TR0 = 1;         // Start Timer0
                                   1062 ;	assignBit
      002345 D2 8C            [12] 1063 	setb	_TR0
                                   1064 ;	spi_dac.c:336: }
      002347 22               [24] 1065 	ret
                                   1066 ;------------------------------------------------------------
                                   1067 ;Allocation info for local variables in function 'timer0_isr'
                                   1068 ;------------------------------------------------------------
                                   1069 ;	spi_dac.c:339: void timer0_isr(void) __interrupt 1
                                   1070 ;	-----------------------------------------
                                   1071 ;	 function timer0_isr
                                   1072 ;	-----------------------------------------
      002348                       1073 _timer0_isr:
      002348 C0 20            [24] 1074 	push	bits
      00234A C0 E0            [24] 1075 	push	acc
      00234C C0 F0            [24] 1076 	push	b
      00234E C0 82            [24] 1077 	push	dpl
      002350 C0 83            [24] 1078 	push	dph
      002352 C0 07            [24] 1079 	push	(0+7)
      002354 C0 06            [24] 1080 	push	(0+6)
      002356 C0 05            [24] 1081 	push	(0+5)
      002358 C0 04            [24] 1082 	push	(0+4)
      00235A C0 03            [24] 1083 	push	(0+3)
      00235C C0 02            [24] 1084 	push	(0+2)
      00235E C0 01            [24] 1085 	push	(0+1)
      002360 C0 00            [24] 1086 	push	(0+0)
      002362 C0 D0            [24] 1087 	push	psw
      002364 75 D0 00         [24] 1088 	mov	psw,#0x00
                                   1089 ;	spi_dac.c:342: TH0 = 0x4B;
      002367 75 8C 4B         [24] 1090 	mov	_TH0,#0x4b
                                   1091 ;	spi_dac.c:343: TL0 = 0x1C;
      00236A 75 8A 1C         [24] 1092 	mov	_TL0,#0x1c
                                   1093 ;	spi_dac.c:345: ms_flag = 1;     // Set 1ms flag
      00236D 90 04 3F         [24] 1094 	mov	dptr,#_ms_flag
      002370 74 01            [12] 1095 	mov	a,#0x01
      002372 F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	spi_dac.c:347: printf("T \n\r");
      002373 74 82            [12] 1098 	mov	a,#___str_7
      002375 C0 E0            [24] 1099 	push	acc
      002377 74 2F            [12] 1100 	mov	a,#(___str_7 >> 8)
      002379 C0 E0            [24] 1101 	push	acc
      00237B 74 80            [12] 1102 	mov	a,#0x80
      00237D C0 E0            [24] 1103 	push	acc
      00237F 12 24 66         [24] 1104 	lcall	_printf
      002382 15 81            [12] 1105 	dec	sp
      002384 15 81            [12] 1106 	dec	sp
      002386 15 81            [12] 1107 	dec	sp
                                   1108 ;	spi_dac.c:350: }
      002388 D0 D0            [24] 1109 	pop	psw
      00238A D0 00            [24] 1110 	pop	(0+0)
      00238C D0 01            [24] 1111 	pop	(0+1)
      00238E D0 02            [24] 1112 	pop	(0+2)
      002390 D0 03            [24] 1113 	pop	(0+3)
      002392 D0 04            [24] 1114 	pop	(0+4)
      002394 D0 05            [24] 1115 	pop	(0+5)
      002396 D0 06            [24] 1116 	pop	(0+6)
      002398 D0 07            [24] 1117 	pop	(0+7)
      00239A D0 83            [24] 1118 	pop	dph
      00239C D0 82            [24] 1119 	pop	dpl
      00239E D0 F0            [24] 1120 	pop	b
      0023A0 D0 E0            [24] 1121 	pop	acc
      0023A2 D0 20            [24] 1122 	pop	bits
      0023A4 32               [24] 1123 	reti
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'spi_isr'
                                   1126 ;------------------------------------------------------------
                                   1127 ;	spi_dac.c:358: void spi_isr(void) __interrupt 9
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function spi_isr
                                   1130 ;	-----------------------------------------
      0023A5                       1131 _spi_isr:
      0023A5 C0 20            [24] 1132 	push	bits
      0023A7 C0 E0            [24] 1133 	push	acc
      0023A9 C0 F0            [24] 1134 	push	b
      0023AB C0 82            [24] 1135 	push	dpl
      0023AD C0 83            [24] 1136 	push	dph
      0023AF C0 07            [24] 1137 	push	(0+7)
      0023B1 C0 06            [24] 1138 	push	(0+6)
      0023B3 C0 05            [24] 1139 	push	(0+5)
      0023B5 C0 04            [24] 1140 	push	(0+4)
      0023B7 C0 03            [24] 1141 	push	(0+3)
      0023B9 C0 02            [24] 1142 	push	(0+2)
      0023BB C0 01            [24] 1143 	push	(0+1)
      0023BD C0 00            [24] 1144 	push	(0+0)
      0023BF C0 D0            [24] 1145 	push	psw
      0023C1 75 D0 00         [24] 1146 	mov	psw,#0x00
                                   1147 ;	spi_dac.c:360: if(SPSTA == 0x80)  // Check for successful transmission
      0023C4 74 80            [12] 1148 	mov	a,#0x80
      0023C6 B5 C4 1E         [24] 1149 	cjne	a,_SPSTA,00103$
                                   1150 ;	spi_dac.c:362: transmission_complete = 1;
      0023C9 90 04 40         [24] 1151 	mov	dptr,#_transmission_complete
      0023CC 74 01            [12] 1152 	mov	a,#0x01
      0023CE F0               [24] 1153 	movx	@dptr,a
      0023CF E4               [12] 1154 	clr	a
      0023D0 A3               [24] 1155 	inc	dptr
      0023D1 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	spi_dac.c:363: printf("spi isr \n\r");
      0023D2 74 87            [12] 1158 	mov	a,#___str_8
      0023D4 C0 E0            [24] 1159 	push	acc
      0023D6 74 2F            [12] 1160 	mov	a,#(___str_8 >> 8)
      0023D8 C0 E0            [24] 1161 	push	acc
      0023DA 74 80            [12] 1162 	mov	a,#0x80
      0023DC C0 E0            [24] 1163 	push	acc
      0023DE 12 24 66         [24] 1164 	lcall	_printf
      0023E1 15 81            [12] 1165 	dec	sp
      0023E3 15 81            [12] 1166 	dec	sp
      0023E5 15 81            [12] 1167 	dec	sp
      0023E7                       1168 00103$:
                                   1169 ;	spi_dac.c:366: }
      0023E7 D0 D0            [24] 1170 	pop	psw
      0023E9 D0 00            [24] 1171 	pop	(0+0)
      0023EB D0 01            [24] 1172 	pop	(0+1)
      0023ED D0 02            [24] 1173 	pop	(0+2)
      0023EF D0 03            [24] 1174 	pop	(0+3)
      0023F1 D0 04            [24] 1175 	pop	(0+4)
      0023F3 D0 05            [24] 1176 	pop	(0+5)
      0023F5 D0 06            [24] 1177 	pop	(0+6)
      0023F7 D0 07            [24] 1178 	pop	(0+7)
      0023F9 D0 83            [24] 1179 	pop	dph
      0023FB D0 82            [24] 1180 	pop	dpl
      0023FD D0 F0            [24] 1181 	pop	b
      0023FF D0 E0            [24] 1182 	pop	acc
      002401 D0 20            [24] 1183 	pop	bits
      002403 32               [24] 1184 	reti
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'spi_init'
                                   1187 ;------------------------------------------------------------
                                   1188 ;	spi_dac.c:378: void spi_init(void) 
                                   1189 ;	-----------------------------------------
                                   1190 ;	 function spi_init
                                   1191 ;	-----------------------------------------
      002404                       1192 _spi_init:
                                   1193 ;	spi_dac.c:399: SPCON |= 0x10;
      002404 43 C3 10         [24] 1194 	orl	_SPCON,#0x10
                                   1195 ;	spi_dac.c:400: SPCON |= 0x20;
      002407 43 C3 20         [24] 1196 	orl	_SPCON,#0x20
                                   1197 ;	spi_dac.c:401: SPCON |= 0x40;
      00240A 43 C3 40         [24] 1198 	orl	_SPCON,#0x40
                                   1199 ;	spi_dac.c:408: }
      00240D 22               [24] 1200 	ret
                                   1201 ;------------------------------------------------------------
                                   1202 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1203 ;------------------------------------------------------------
                                   1204 ;	spi_dac.c:415: void spi_transmission_start(void)
                                   1205 ;	-----------------------------------------
                                   1206 ;	 function spi_transmission_start
                                   1207 ;	-----------------------------------------
      00240E                       1208 _spi_transmission_start:
                                   1209 ;	spi_dac.c:417: SPCON |= SPI_ENABLE;           // Enable SPI
      00240E 43 C3 40         [24] 1210 	orl	_SPCON,#0x40
                                   1211 ;	spi_dac.c:418: P1_1 = 0;
                                   1212 ;	assignBit
      002411 C2 91            [12] 1213 	clr	_P1_1
                                   1214 ;	spi_dac.c:419: }
      002413 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1218 ;------------------------------------------------------------
                                   1219 ;	spi_dac.c:426: void spi_transmission_stop(void) 
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function spi_transmission_stop
                                   1222 ;	-----------------------------------------
      002414                       1223 _spi_transmission_stop:
                                   1224 ;	spi_dac.c:428: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002414 53 C3 BF         [24] 1225 	anl	_SPCON,#0xbf
                                   1226 ;	spi_dac.c:429: }
      002417 22               [24] 1227 	ret
                                   1228 	.area CSEG    (CODE)
                                   1229 	.area CONST   (CODE)
      002EC8                       1230 _dac_values:
      002EC8 80 00                 1231 	.byte #0x80, #0x00	;  128
      002ECA 8F 00                 1232 	.byte #0x8f, #0x00	;  143
      002ECC 9F 00                 1233 	.byte #0x9f, #0x00	;  159
      002ECE AE 00                 1234 	.byte #0xae, #0x00	;  174
      002ED0 BD 00                 1235 	.byte #0xbd, #0x00	;  189
      002ED2 CA 00                 1236 	.byte #0xca, #0x00	;  202
      002ED4 D7 00                 1237 	.byte #0xd7, #0x00	;  215
      002ED6 E2 00                 1238 	.byte #0xe2, #0x00	;  226
      002ED8 EB 00                 1239 	.byte #0xeb, #0x00	;  235
      002EDA F3 00                 1240 	.byte #0xf3, #0x00	;  243
      002EDC F9 00                 1241 	.byte #0xf9, #0x00	;  249
      002EDE FD 00                 1242 	.byte #0xfd, #0x00	;  253
      002EE0 FF 00                 1243 	.byte #0xff, #0x00	;  255
      002EE2 FF 00                 1244 	.byte #0xff, #0x00	;  255
      002EE4 FD 00                 1245 	.byte #0xfd, #0x00	;  253
      002EE6 F9 00                 1246 	.byte #0xf9, #0x00	;  249
      002EE8 F3 00                 1247 	.byte #0xf3, #0x00	;  243
      002EEA EB 00                 1248 	.byte #0xeb, #0x00	;  235
      002EEC E2 00                 1249 	.byte #0xe2, #0x00	;  226
      002EEE D7 00                 1250 	.byte #0xd7, #0x00	;  215
      002EF0 CA 00                 1251 	.byte #0xca, #0x00	;  202
      002EF2 BD 00                 1252 	.byte #0xbd, #0x00	;  189
      002EF4 AE 00                 1253 	.byte #0xae, #0x00	;  174
      002EF6 9F 00                 1254 	.byte #0x9f, #0x00	;  159
      002EF8 8F 00                 1255 	.byte #0x8f, #0x00	;  143
      002EFA 80 00                 1256 	.byte #0x80, #0x00	;  128
      002EFC 70 00                 1257 	.byte #0x70, #0x00	;  112
      002EFE 60 00                 1258 	.byte #0x60, #0x00	;  96
      002F00 51 00                 1259 	.byte #0x51, #0x00	;  81
      002F02 42 00                 1260 	.byte #0x42, #0x00	;  66
      002F04 35 00                 1261 	.byte #0x35, #0x00	;  53
      002F06 28 00                 1262 	.byte #0x28, #0x00	;  40
      002F08 1D 00                 1263 	.byte #0x1d, #0x00	;  29
      002F0A 14 00                 1264 	.byte #0x14, #0x00	;  20
      002F0C 0C 00                 1265 	.byte #0x0c, #0x00	;  12
      002F0E 06 00                 1266 	.byte #0x06, #0x00	;  6
      002F10 02 00                 1267 	.byte #0x02, #0x00	;  2
      002F12 00 00                 1268 	.byte #0x00, #0x00	;  0
      002F14 00 00                 1269 	.byte #0x00, #0x00	;  0
      002F16 02 00                 1270 	.byte #0x02, #0x00	;  2
      002F18 06 00                 1271 	.byte #0x06, #0x00	;  6
      002F1A 0C 00                 1272 	.byte #0x0c, #0x00	;  12
      002F1C 14 00                 1273 	.byte #0x14, #0x00	;  20
      002F1E 1D 00                 1274 	.byte #0x1d, #0x00	;  29
      002F20 28 00                 1275 	.byte #0x28, #0x00	;  40
      002F22 35 00                 1276 	.byte #0x35, #0x00	;  53
      002F24 42 00                 1277 	.byte #0x42, #0x00	;  66
      002F26 51 00                 1278 	.byte #0x51, #0x00	;  81
      002F28 60 00                 1279 	.byte #0x60, #0x00	;  96
      002F2A 70 00                 1280 	.byte #0x70, #0x00	;  112
                                   1281 	.area CONST   (CODE)
      002F2C                       1282 ___str_0:
      002F2C 20 53 50 49 20 44 41  1283 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002F3C 0A                    1284 	.db 0x0a
      002F3D 0D                    1285 	.db 0x0d
      002F3E 00                    1286 	.db 0x00
                                   1287 	.area CSEG    (CODE)
                                   1288 	.area CONST   (CODE)
      002F3F                       1289 ___str_1:
      002F3F 53 50 49 20 54 52 41  1290 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002F57 0A                    1291 	.db 0x0a
      002F58 0D                    1292 	.db 0x0d
      002F59 00                    1293 	.db 0x00
                                   1294 	.area CSEG    (CODE)
                                   1295 	.area CONST   (CODE)
      002F5A                       1296 ___str_2:
      002F5A 77                    1297 	.ascii "w"
      002F5B 0A                    1298 	.db 0x0a
      002F5C 0D                    1299 	.db 0x0d
      002F5D 00                    1300 	.db 0x00
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
      002F5E                       1303 ___str_3:
      002F5E 4C 6F 77 20 62 79 74  1304 	.ascii "Low byte %d"
             65 20 25 64
      002F69 0A                    1305 	.db 0x0a
      002F6A 0D                    1306 	.db 0x0d
      002F6B 00                    1307 	.db 0x00
                                   1308 	.area CSEG    (CODE)
                                   1309 	.area CONST   (CODE)
      002F6C                       1310 ___str_4:
      002F6C 48 69 67 68 20 62 79  1311 	.ascii "High byte %d"
             74 65 20 25 64
      002F78 0A                    1312 	.db 0x0a
      002F79 0D                    1313 	.db 0x0d
      002F7A 00                    1314 	.db 0x00
                                   1315 	.area CSEG    (CODE)
                                   1316 	.area CONST   (CODE)
      002F7B                       1317 ___str_5:
      002F7B 45                    1318 	.ascii "E"
      002F7C 0A                    1319 	.db 0x0a
      002F7D 0D                    1320 	.db 0x0d
      002F7E 00                    1321 	.db 0x00
                                   1322 	.area CSEG    (CODE)
                                   1323 	.area CONST   (CODE)
      002F7F                       1324 ___str_6:
      002F7F 0A                    1325 	.db 0x0a
      002F80 0D                    1326 	.db 0x0d
      002F81 00                    1327 	.db 0x00
                                   1328 	.area CSEG    (CODE)
                                   1329 	.area CONST   (CODE)
      002F82                       1330 ___str_7:
      002F82 54 20                 1331 	.ascii "T "
      002F84 0A                    1332 	.db 0x0a
      002F85 0D                    1333 	.db 0x0d
      002F86 00                    1334 	.db 0x00
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area CONST   (CODE)
      002F87                       1337 ___str_8:
      002F87 73 70 69 20 69 73 72  1338 	.ascii "spi isr "
             20
      002F8F 0A                    1339 	.db 0x0a
      002F90 0D                    1340 	.db 0x0d
      002F91 00                    1341 	.db 0x00
                                   1342 	.area CSEG    (CODE)
                                   1343 	.area XINIT   (CODE)
      002F9D                       1344 __xinit__ms_flag:
      002F9D 00                    1345 	.db #0x00	; 0
      002F9E                       1346 __xinit__transmission_complete:
      002F9E 00 00                 1347 	.byte #0x00, #0x00	;  0
                                   1348 	.area CABS    (ABS,CODE)
