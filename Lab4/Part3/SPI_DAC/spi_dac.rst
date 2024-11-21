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
      00200B 02 22 D8         [24]  517 	ljmp	_timer0_isr
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
      00204B 02 23 35         [24]  533 	ljmp	_spi_isr
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
      00210D 74 CA            [12]  696 	mov	a,#___str_0
      00210F C0 E0            [24]  697 	push	acc
      002111 74 2E            [12]  698 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  699 	push	acc
      002115 74 80            [12]  700 	mov	a,#0x80
      002117 C0 E0            [24]  701 	push	acc
      002119 12 24 04         [24]  702 	lcall	_printf
      00211C 15 81            [12]  703 	dec	sp
      00211E 15 81            [12]  704 	dec	sp
      002120 15 81            [12]  705 	dec	sp
                                    706 ;	spi_dac.c:123: spi_init();
      002122 12 23 94         [24]  707 	lcall	_spi_init
                                    708 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002125 74 DD            [12]  709 	mov	a,#___str_1
      002127 C0 E0            [24]  710 	push	acc
      002129 74 2E            [12]  711 	mov	a,#(___str_1 >> 8)
      00212B C0 E0            [24]  712 	push	acc
      00212D 74 80            [12]  713 	mov	a,#0x80
      00212F C0 E0            [24]  714 	push	acc
      002131 12 24 04         [24]  715 	lcall	_printf
      002134 15 81            [12]  716 	dec	sp
      002136 15 81            [12]  717 	dec	sp
      002138 15 81            [12]  718 	dec	sp
                                    719 ;	spi_dac.c:132: while(1)
      00213A                        720 00126$:
                                    721 ;	spi_dac.c:134: printf("while start\n\r");
      00213A 74 F8            [12]  722 	mov	a,#___str_2
      00213C C0 E0            [24]  723 	push	acc
      00213E 74 2E            [12]  724 	mov	a,#(___str_2 >> 8)
      002140 C0 E0            [24]  725 	push	acc
      002142 74 80            [12]  726 	mov	a,#0x80
      002144 C0 E0            [24]  727 	push	acc
      002146 12 24 04         [24]  728 	lcall	_printf
      002149 15 81            [12]  729 	dec	sp
      00214B 15 81            [12]  730 	dec	sp
      00214D 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:155: low_byte = (dac_data & 0x0F) << 4;
      00214F 90 04 04         [24]  733 	mov	dptr,#_main_low_byte_65538_28
      002152 E4               [12]  734 	clr	a
      002153 F0               [24]  735 	movx	@dptr,a
      002154 A3               [24]  736 	inc	dptr
      002155 F0               [24]  737 	movx	@dptr,a
                                    738 ;	spi_dac.c:160: delay_ms(10);
      002156 90 00 0A         [24]  739 	mov	dptr,#0x000a
      002159 12 20 DA         [24]  740 	lcall	_delay_ms
                                    741 ;	spi_dac.c:163: P1_1 = 0;  // Select DAC
                                    742 ;	assignBit
      00215C C2 91            [12]  743 	clr	_P1_1
                                    744 ;	spi_dac.c:165: printf("Low byte %d\n\r", low_byte);
      00215E E4               [12]  745 	clr	a
      00215F C0 E0            [24]  746 	push	acc
      002161 C0 E0            [24]  747 	push	acc
      002163 74 06            [12]  748 	mov	a,#___str_3
      002165 C0 E0            [24]  749 	push	acc
      002167 74 2F            [12]  750 	mov	a,#(___str_3 >> 8)
      002169 C0 E0            [24]  751 	push	acc
      00216B 74 80            [12]  752 	mov	a,#0x80
      00216D C0 E0            [24]  753 	push	acc
      00216F 12 24 04         [24]  754 	lcall	_printf
      002172 E5 81            [12]  755 	mov	a,sp
      002174 24 FB            [12]  756 	add	a,#0xfb
      002176 F5 81            [12]  757 	mov	sp,a
                                    758 ;	spi_dac.c:166: printf("High byte %d\n\r", high_byte);
      002178 74 30            [12]  759 	mov	a,#0x30
      00217A C0 E0            [24]  760 	push	acc
      00217C E4               [12]  761 	clr	a
      00217D C0 E0            [24]  762 	push	acc
      00217F 74 14            [12]  763 	mov	a,#___str_4
      002181 C0 E0            [24]  764 	push	acc
      002183 74 2F            [12]  765 	mov	a,#(___str_4 >> 8)
      002185 C0 E0            [24]  766 	push	acc
      002187 74 80            [12]  767 	mov	a,#0x80
      002189 C0 E0            [24]  768 	push	acc
      00218B 12 24 04         [24]  769 	lcall	_printf
      00218E E5 81            [12]  770 	mov	a,sp
      002190 24 FB            [12]  771 	add	a,#0xfb
      002192 F5 81            [12]  772 	mov	sp,a
                                    773 ;	spi_dac.c:169: SPDAT = high_byte;
      002194 75 C5 30         [24]  774 	mov	_SPDAT,#0x30
                                    775 ;	spi_dac.c:170: while (SPSTA & (1<<7)); 
      002197                        776 00101$:
      002197 E5 C4            [12]  777 	mov	a,_SPSTA
      002199 20 E7 FB         [24]  778 	jb	acc.7,00101$
                                    779 ;	spi_dac.c:175: SPDAT = low_byte;
      00219C 90 04 04         [24]  780 	mov	dptr,#_main_low_byte_65538_28
      00219F E0               [24]  781 	movx	a,@dptr
      0021A0 FE               [12]  782 	mov	r6,a
      0021A1 A3               [24]  783 	inc	dptr
      0021A2 E0               [24]  784 	movx	a,@dptr
      0021A3 8E C5            [24]  785 	mov	_SPDAT,r6
                                    786 ;	spi_dac.c:176: while (SPSTA & (1<<7));
      0021A5                        787 00104$:
      0021A5 E5 C4            [12]  788 	mov	a,_SPSTA
      0021A7 20 E7 FB         [24]  789 	jb	acc.7,00104$
                                    790 ;	spi_dac.c:180: P1_1 = 1;  // Deselect DAC
                                    791 ;	assignBit
      0021AA D2 91            [12]  792 	setb	_P1_1
                                    793 ;	spi_dac.c:192: low_byte = (dac_data & 0x0F) << 4;
      0021AC 90 04 04         [24]  794 	mov	dptr,#_main_low_byte_65538_28
      0021AF 74 F0            [12]  795 	mov	a,#0xf0
      0021B1 F0               [24]  796 	movx	@dptr,a
      0021B2 E4               [12]  797 	clr	a
      0021B3 A3               [24]  798 	inc	dptr
      0021B4 F0               [24]  799 	movx	@dptr,a
                                    800 ;	spi_dac.c:193: delay_ms(10);
      0021B5 90 00 0A         [24]  801 	mov	dptr,#0x000a
      0021B8 12 20 DA         [24]  802 	lcall	_delay_ms
                                    803 ;	spi_dac.c:196: P1_1 = 0;  // Select DAC
                                    804 ;	assignBit
      0021BB C2 91            [12]  805 	clr	_P1_1
                                    806 ;	spi_dac.c:198: printf("Low byte %d\n\r", low_byte);
      0021BD 74 F0            [12]  807 	mov	a,#0xf0
      0021BF C0 E0            [24]  808 	push	acc
      0021C1 E4               [12]  809 	clr	a
      0021C2 C0 E0            [24]  810 	push	acc
      0021C4 74 06            [12]  811 	mov	a,#___str_3
      0021C6 C0 E0            [24]  812 	push	acc
      0021C8 74 2F            [12]  813 	mov	a,#(___str_3 >> 8)
      0021CA C0 E0            [24]  814 	push	acc
      0021CC 74 80            [12]  815 	mov	a,#0x80
      0021CE C0 E0            [24]  816 	push	acc
      0021D0 12 24 04         [24]  817 	lcall	_printf
      0021D3 E5 81            [12]  818 	mov	a,sp
      0021D5 24 FB            [12]  819 	add	a,#0xfb
      0021D7 F5 81            [12]  820 	mov	sp,a
                                    821 ;	spi_dac.c:199: printf("High byte %d\n\r", high_byte);
      0021D9 74 3F            [12]  822 	mov	a,#0x3f
      0021DB C0 E0            [24]  823 	push	acc
      0021DD E4               [12]  824 	clr	a
      0021DE C0 E0            [24]  825 	push	acc
      0021E0 74 14            [12]  826 	mov	a,#___str_4
      0021E2 C0 E0            [24]  827 	push	acc
      0021E4 74 2F            [12]  828 	mov	a,#(___str_4 >> 8)
      0021E6 C0 E0            [24]  829 	push	acc
      0021E8 74 80            [12]  830 	mov	a,#0x80
      0021EA C0 E0            [24]  831 	push	acc
      0021EC 12 24 04         [24]  832 	lcall	_printf
      0021EF E5 81            [12]  833 	mov	a,sp
      0021F1 24 FB            [12]  834 	add	a,#0xfb
      0021F3 F5 81            [12]  835 	mov	sp,a
                                    836 ;	spi_dac.c:202: SPDAT = high_byte;
      0021F5 75 C5 3F         [24]  837 	mov	_SPDAT,#0x3f
                                    838 ;	spi_dac.c:203: while (SPSTA & (1<<7)); 
      0021F8                        839 00107$:
      0021F8 E5 C4            [12]  840 	mov	a,_SPSTA
      0021FA 20 E7 FB         [24]  841 	jb	acc.7,00107$
                                    842 ;	spi_dac.c:208: SPDAT = low_byte;
      0021FD 90 04 04         [24]  843 	mov	dptr,#_main_low_byte_65538_28
      002200 E0               [24]  844 	movx	a,@dptr
      002201 FE               [12]  845 	mov	r6,a
      002202 A3               [24]  846 	inc	dptr
      002203 E0               [24]  847 	movx	a,@dptr
      002204 8E C5            [24]  848 	mov	_SPDAT,r6
                                    849 ;	spi_dac.c:209: while (SPSTA & (1<<7));
      002206                        850 00110$:
      002206 E5 C4            [12]  851 	mov	a,_SPSTA
      002208 20 E7 FB         [24]  852 	jb	acc.7,00110$
                                    853 ;	spi_dac.c:213: P1_1 = 1;  // Deselect DAC
                                    854 ;	assignBit
      00220B D2 91            [12]  855 	setb	_P1_1
                                    856 ;	spi_dac.c:229: delay_ms(10);
      00220D 90 00 0A         [24]  857 	mov	dptr,#0x000a
      002210 12 20 DA         [24]  858 	lcall	_delay_ms
                                    859 ;	spi_dac.c:232: P1_1 = 0;  // Select DAC
                                    860 ;	assignBit
      002213 C2 91            [12]  861 	clr	_P1_1
                                    862 ;	spi_dac.c:234: printf("Low byte %d\n\r", low_byte);
      002215 E4               [12]  863 	clr	a
      002216 C0 E0            [24]  864 	push	acc
      002218 C0 E0            [24]  865 	push	acc
      00221A 74 06            [12]  866 	mov	a,#___str_3
      00221C C0 E0            [24]  867 	push	acc
      00221E 74 2F            [12]  868 	mov	a,#(___str_3 >> 8)
      002220 C0 E0            [24]  869 	push	acc
      002222 74 80            [12]  870 	mov	a,#0x80
      002224 C0 E0            [24]  871 	push	acc
      002226 12 24 04         [24]  872 	lcall	_printf
      002229 E5 81            [12]  873 	mov	a,sp
      00222B 24 FB            [12]  874 	add	a,#0xfb
      00222D F5 81            [12]  875 	mov	sp,a
                                    876 ;	spi_dac.c:235: printf("High byte %d\n\r", high_byte);
      00222F 74 30            [12]  877 	mov	a,#0x30
      002231 C0 E0            [24]  878 	push	acc
      002233 E4               [12]  879 	clr	a
      002234 C0 E0            [24]  880 	push	acc
      002236 74 14            [12]  881 	mov	a,#___str_4
      002238 C0 E0            [24]  882 	push	acc
      00223A 74 2F            [12]  883 	mov	a,#(___str_4 >> 8)
      00223C C0 E0            [24]  884 	push	acc
      00223E 74 80            [12]  885 	mov	a,#0x80
      002240 C0 E0            [24]  886 	push	acc
      002242 12 24 04         [24]  887 	lcall	_printf
      002245 E5 81            [12]  888 	mov	a,sp
      002247 24 FB            [12]  889 	add	a,#0xfb
      002249 F5 81            [12]  890 	mov	sp,a
                                    891 ;	spi_dac.c:238: SPDAT = high_byte;
      00224B 75 C5 30         [24]  892 	mov	_SPDAT,#0x30
                                    893 ;	spi_dac.c:239: while (SPSTA & (1<<7)); 
      00224E                        894 00113$:
      00224E E5 C4            [12]  895 	mov	a,_SPSTA
      002250 20 E7 FB         [24]  896 	jb	acc.7,00113$
                                    897 ;	spi_dac.c:244: SPDAT = low_byte;
      002253 75 C5 00         [24]  898 	mov	_SPDAT,#0x00
                                    899 ;	spi_dac.c:245: while (SPSTA & (1<<7));
      002256                        900 00116$:
      002256 E5 C4            [12]  901 	mov	a,_SPSTA
      002258 20 E7 FB         [24]  902 	jb	acc.7,00116$
                                    903 ;	spi_dac.c:249: P1_1 = 1;  // Deselect DAC
                                    904 ;	assignBit
      00225B D2 91            [12]  905 	setb	_P1_1
                                    906 ;	spi_dac.c:259: delay_ms(10);
      00225D 90 00 0A         [24]  907 	mov	dptr,#0x000a
      002260 12 20 DA         [24]  908 	lcall	_delay_ms
                                    909 ;	spi_dac.c:262: P1_1 = 0;  // Select DAC
                                    910 ;	assignBit
      002263 C2 91            [12]  911 	clr	_P1_1
                                    912 ;	spi_dac.c:264: printf("Low byte %d\n\r", low_byte);
      002265 74 F0            [12]  913 	mov	a,#0xf0
      002267 C0 E0            [24]  914 	push	acc
      002269 E4               [12]  915 	clr	a
      00226A C0 E0            [24]  916 	push	acc
      00226C 74 06            [12]  917 	mov	a,#___str_3
      00226E C0 E0            [24]  918 	push	acc
      002270 74 2F            [12]  919 	mov	a,#(___str_3 >> 8)
      002272 C0 E0            [24]  920 	push	acc
      002274 74 80            [12]  921 	mov	a,#0x80
      002276 C0 E0            [24]  922 	push	acc
      002278 12 24 04         [24]  923 	lcall	_printf
      00227B E5 81            [12]  924 	mov	a,sp
      00227D 24 FB            [12]  925 	add	a,#0xfb
      00227F F5 81            [12]  926 	mov	sp,a
                                    927 ;	spi_dac.c:265: printf("High byte %d\n\r", high_byte);
      002281 74 3F            [12]  928 	mov	a,#0x3f
      002283 C0 E0            [24]  929 	push	acc
      002285 E4               [12]  930 	clr	a
      002286 C0 E0            [24]  931 	push	acc
      002288 74 14            [12]  932 	mov	a,#___str_4
      00228A C0 E0            [24]  933 	push	acc
      00228C 74 2F            [12]  934 	mov	a,#(___str_4 >> 8)
      00228E C0 E0            [24]  935 	push	acc
      002290 74 80            [12]  936 	mov	a,#0x80
      002292 C0 E0            [24]  937 	push	acc
      002294 12 24 04         [24]  938 	lcall	_printf
      002297 E5 81            [12]  939 	mov	a,sp
      002299 24 FB            [12]  940 	add	a,#0xfb
      00229B F5 81            [12]  941 	mov	sp,a
                                    942 ;	spi_dac.c:268: SPDAT = high_byte;
      00229D 75 C5 3F         [24]  943 	mov	_SPDAT,#0x3f
                                    944 ;	spi_dac.c:269: while (SPSTA & (1<<7)); 
      0022A0                        945 00119$:
      0022A0 E5 C4            [12]  946 	mov	a,_SPSTA
      0022A2 20 E7 FB         [24]  947 	jb	acc.7,00119$
                                    948 ;	spi_dac.c:274: SPDAT = low_byte;
      0022A5 75 C5 F0         [24]  949 	mov	_SPDAT,#0xf0
                                    950 ;	spi_dac.c:275: while (SPSTA & (1<<7));
      0022A8                        951 00122$:
      0022A8 E5 C4            [12]  952 	mov	a,_SPSTA
      0022AA 20 E7 FB         [24]  953 	jb	acc.7,00122$
                                    954 ;	spi_dac.c:279: P1_1 = 1;  // Deselect DAC
                                    955 ;	assignBit
      0022AD D2 91            [12]  956 	setb	_P1_1
                                    957 ;	spi_dac.c:282: printf("E\n\r");
      0022AF 74 23            [12]  958 	mov	a,#___str_5
      0022B1 C0 E0            [24]  959 	push	acc
      0022B3 74 2F            [12]  960 	mov	a,#(___str_5 >> 8)
      0022B5 C0 E0            [24]  961 	push	acc
      0022B7 74 80            [12]  962 	mov	a,#0x80
      0022B9 C0 E0            [24]  963 	push	acc
      0022BB 12 24 04         [24]  964 	lcall	_printf
      0022BE 15 81            [12]  965 	dec	sp
      0022C0 15 81            [12]  966 	dec	sp
      0022C2 15 81            [12]  967 	dec	sp
                                    968 ;	spi_dac.c:285: dac_value_index++;
                                    969 ;	spi_dac.c:287: }
      0022C4 02 21 3A         [24]  970 	ljmp	00126$
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'timer0_init'
                                    973 ;------------------------------------------------------------
                                    974 ;	spi_dac.c:289: void timer0_init(void)
                                    975 ;	-----------------------------------------
                                    976 ;	 function timer0_init
                                    977 ;	-----------------------------------------
      0022C7                        978 _timer0_init:
                                    979 ;	spi_dac.c:291: TMOD &= 0xF0;    // Clear Timer0 mode bits
      0022C7 53 89 F0         [24]  980 	anl	_TMOD,#0xf0
                                    981 ;	spi_dac.c:292: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      0022CA 43 89 01         [24]  982 	orl	_TMOD,#0x01
                                    983 ;	spi_dac.c:295: TH0 = TH0_RELOAD;
      0022CD 75 8C FC         [24]  984 	mov	_TH0,#0xfc
                                    985 ;	spi_dac.c:296: TL0 = TL0_RELOAD;
      0022D0 75 8A 66         [24]  986 	mov	_TL0,#0x66
                                    987 ;	spi_dac.c:298: ET0 = 1;         // Enable Timer0 interrupt
                                    988 ;	assignBit
      0022D3 D2 A9            [12]  989 	setb	_ET0
                                    990 ;	spi_dac.c:299: TR0 = 1;         // Start Timer0
                                    991 ;	assignBit
      0022D5 D2 8C            [12]  992 	setb	_TR0
                                    993 ;	spi_dac.c:300: }
      0022D7 22               [24]  994 	ret
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'timer0_isr'
                                    997 ;------------------------------------------------------------
                                    998 ;	spi_dac.c:303: void timer0_isr(void) __interrupt 1
                                    999 ;	-----------------------------------------
                                   1000 ;	 function timer0_isr
                                   1001 ;	-----------------------------------------
      0022D8                       1002 _timer0_isr:
      0022D8 C0 20            [24] 1003 	push	bits
      0022DA C0 E0            [24] 1004 	push	acc
      0022DC C0 F0            [24] 1005 	push	b
      0022DE C0 82            [24] 1006 	push	dpl
      0022E0 C0 83            [24] 1007 	push	dph
      0022E2 C0 07            [24] 1008 	push	(0+7)
      0022E4 C0 06            [24] 1009 	push	(0+6)
      0022E6 C0 05            [24] 1010 	push	(0+5)
      0022E8 C0 04            [24] 1011 	push	(0+4)
      0022EA C0 03            [24] 1012 	push	(0+3)
      0022EC C0 02            [24] 1013 	push	(0+2)
      0022EE C0 01            [24] 1014 	push	(0+1)
      0022F0 C0 00            [24] 1015 	push	(0+0)
      0022F2 C0 D0            [24] 1016 	push	psw
      0022F4 75 D0 00         [24] 1017 	mov	psw,#0x00
                                   1018 ;	spi_dac.c:306: TH0 = 0x4B;
      0022F7 75 8C 4B         [24] 1019 	mov	_TH0,#0x4b
                                   1020 ;	spi_dac.c:307: TL0 = 0x1C;
      0022FA 75 8A 1C         [24] 1021 	mov	_TL0,#0x1c
                                   1022 ;	spi_dac.c:309: ms_flag = 1;     // Set 1ms flag
      0022FD 90 04 3F         [24] 1023 	mov	dptr,#_ms_flag
      002300 74 01            [12] 1024 	mov	a,#0x01
      002302 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	spi_dac.c:311: printf("T \n\r");
      002303 74 27            [12] 1027 	mov	a,#___str_6
      002305 C0 E0            [24] 1028 	push	acc
      002307 74 2F            [12] 1029 	mov	a,#(___str_6 >> 8)
      002309 C0 E0            [24] 1030 	push	acc
      00230B 74 80            [12] 1031 	mov	a,#0x80
      00230D C0 E0            [24] 1032 	push	acc
      00230F 12 24 04         [24] 1033 	lcall	_printf
      002312 15 81            [12] 1034 	dec	sp
      002314 15 81            [12] 1035 	dec	sp
      002316 15 81            [12] 1036 	dec	sp
                                   1037 ;	spi_dac.c:314: }
      002318 D0 D0            [24] 1038 	pop	psw
      00231A D0 00            [24] 1039 	pop	(0+0)
      00231C D0 01            [24] 1040 	pop	(0+1)
      00231E D0 02            [24] 1041 	pop	(0+2)
      002320 D0 03            [24] 1042 	pop	(0+3)
      002322 D0 04            [24] 1043 	pop	(0+4)
      002324 D0 05            [24] 1044 	pop	(0+5)
      002326 D0 06            [24] 1045 	pop	(0+6)
      002328 D0 07            [24] 1046 	pop	(0+7)
      00232A D0 83            [24] 1047 	pop	dph
      00232C D0 82            [24] 1048 	pop	dpl
      00232E D0 F0            [24] 1049 	pop	b
      002330 D0 E0            [24] 1050 	pop	acc
      002332 D0 20            [24] 1051 	pop	bits
      002334 32               [24] 1052 	reti
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'spi_isr'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	spi_dac.c:322: void spi_isr(void) __interrupt 9
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function spi_isr
                                   1059 ;	-----------------------------------------
      002335                       1060 _spi_isr:
      002335 C0 20            [24] 1061 	push	bits
      002337 C0 E0            [24] 1062 	push	acc
      002339 C0 F0            [24] 1063 	push	b
      00233B C0 82            [24] 1064 	push	dpl
      00233D C0 83            [24] 1065 	push	dph
      00233F C0 07            [24] 1066 	push	(0+7)
      002341 C0 06            [24] 1067 	push	(0+6)
      002343 C0 05            [24] 1068 	push	(0+5)
      002345 C0 04            [24] 1069 	push	(0+4)
      002347 C0 03            [24] 1070 	push	(0+3)
      002349 C0 02            [24] 1071 	push	(0+2)
      00234B C0 01            [24] 1072 	push	(0+1)
      00234D C0 00            [24] 1073 	push	(0+0)
      00234F C0 D0            [24] 1074 	push	psw
      002351 75 D0 00         [24] 1075 	mov	psw,#0x00
                                   1076 ;	spi_dac.c:324: if(SPSTA == 0x80)  // Check for successful transmission
      002354 74 80            [12] 1077 	mov	a,#0x80
      002356 B5 C4 1E         [24] 1078 	cjne	a,_SPSTA,00103$
                                   1079 ;	spi_dac.c:326: transmission_complete = 1;
      002359 90 04 40         [24] 1080 	mov	dptr,#_transmission_complete
      00235C 74 01            [12] 1081 	mov	a,#0x01
      00235E F0               [24] 1082 	movx	@dptr,a
      00235F E4               [12] 1083 	clr	a
      002360 A3               [24] 1084 	inc	dptr
      002361 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	spi_dac.c:327: printf("spi isr \n\r");
      002362 74 2C            [12] 1087 	mov	a,#___str_7
      002364 C0 E0            [24] 1088 	push	acc
      002366 74 2F            [12] 1089 	mov	a,#(___str_7 >> 8)
      002368 C0 E0            [24] 1090 	push	acc
      00236A 74 80            [12] 1091 	mov	a,#0x80
      00236C C0 E0            [24] 1092 	push	acc
      00236E 12 24 04         [24] 1093 	lcall	_printf
      002371 15 81            [12] 1094 	dec	sp
      002373 15 81            [12] 1095 	dec	sp
      002375 15 81            [12] 1096 	dec	sp
      002377                       1097 00103$:
                                   1098 ;	spi_dac.c:330: }
      002377 D0 D0            [24] 1099 	pop	psw
      002379 D0 00            [24] 1100 	pop	(0+0)
      00237B D0 01            [24] 1101 	pop	(0+1)
      00237D D0 02            [24] 1102 	pop	(0+2)
      00237F D0 03            [24] 1103 	pop	(0+3)
      002381 D0 04            [24] 1104 	pop	(0+4)
      002383 D0 05            [24] 1105 	pop	(0+5)
      002385 D0 06            [24] 1106 	pop	(0+6)
      002387 D0 07            [24] 1107 	pop	(0+7)
      002389 D0 83            [24] 1108 	pop	dph
      00238B D0 82            [24] 1109 	pop	dpl
      00238D D0 F0            [24] 1110 	pop	b
      00238F D0 E0            [24] 1111 	pop	acc
      002391 D0 20            [24] 1112 	pop	bits
      002393 32               [24] 1113 	reti
                                   1114 ;------------------------------------------------------------
                                   1115 ;Allocation info for local variables in function 'spi_init'
                                   1116 ;------------------------------------------------------------
                                   1117 ;	spi_dac.c:342: void spi_init(void) 
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function spi_init
                                   1120 ;	-----------------------------------------
      002394                       1121 _spi_init:
                                   1122 ;	spi_dac.c:345: SPCON = 0;
      002394 75 C3 00         [24] 1123 	mov	_SPCON,#0x00
                                   1124 ;	spi_dac.c:353: SPCON &= ~SPI_CPOL_HIGH;        // Clock polarity active high
      002397 53 C3 F7         [24] 1125 	anl	_SPCON,#0xf7
                                   1126 ;	spi_dac.c:354: SPCON &= ~SPI_CPHA_FIRST;      // Sample data on first clock edge 
      00239A 53 C3 FB         [24] 1127 	anl	_SPCON,#0xfb
                                   1128 ;	spi_dac.c:355: SPCON &= ~SPI_SSDIS;
      00239D 53 C3 DF         [24] 1129 	anl	_SPCON,#0xdf
                                   1130 ;	spi_dac.c:357: SPCON |= 0x10;
      0023A0 43 C3 10         [24] 1131 	orl	_SPCON,#0x10
                                   1132 ;	spi_dac.c:358: P1_1 = 1;
                                   1133 ;	assignBit
      0023A3 D2 91            [12] 1134 	setb	_P1_1
                                   1135 ;	spi_dac.c:359: SPCON |= 0x82;
      0023A5 43 C3 82         [24] 1136 	orl	_SPCON,#0x82
                                   1137 ;	spi_dac.c:361: SPCON |= 0x40;
      0023A8 43 C3 40         [24] 1138 	orl	_SPCON,#0x40
                                   1139 ;	spi_dac.c:368: }
      0023AB 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1143 ;------------------------------------------------------------
                                   1144 ;	spi_dac.c:375: void spi_transmission_start(void)
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function spi_transmission_start
                                   1147 ;	-----------------------------------------
      0023AC                       1148 _spi_transmission_start:
                                   1149 ;	spi_dac.c:377: SPCON |= SPI_ENABLE;           // Enable SPI
      0023AC 43 C3 40         [24] 1150 	orl	_SPCON,#0x40
                                   1151 ;	spi_dac.c:378: P1_1 = 0;
                                   1152 ;	assignBit
      0023AF C2 91            [12] 1153 	clr	_P1_1
                                   1154 ;	spi_dac.c:379: }
      0023B1 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	spi_dac.c:386: void spi_transmission_stop(void) 
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function spi_transmission_stop
                                   1162 ;	-----------------------------------------
      0023B2                       1163 _spi_transmission_stop:
                                   1164 ;	spi_dac.c:388: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0023B2 53 C3 BF         [24] 1165 	anl	_SPCON,#0xbf
                                   1166 ;	spi_dac.c:389: }
      0023B5 22               [24] 1167 	ret
                                   1168 	.area CSEG    (CODE)
                                   1169 	.area CONST   (CODE)
      002E66                       1170 _dac_values:
      002E66 80 00                 1171 	.byte #0x80, #0x00	;  128
      002E68 8F 00                 1172 	.byte #0x8f, #0x00	;  143
      002E6A 9F 00                 1173 	.byte #0x9f, #0x00	;  159
      002E6C AE 00                 1174 	.byte #0xae, #0x00	;  174
      002E6E BD 00                 1175 	.byte #0xbd, #0x00	;  189
      002E70 CA 00                 1176 	.byte #0xca, #0x00	;  202
      002E72 D7 00                 1177 	.byte #0xd7, #0x00	;  215
      002E74 E2 00                 1178 	.byte #0xe2, #0x00	;  226
      002E76 EB 00                 1179 	.byte #0xeb, #0x00	;  235
      002E78 F3 00                 1180 	.byte #0xf3, #0x00	;  243
      002E7A F9 00                 1181 	.byte #0xf9, #0x00	;  249
      002E7C FD 00                 1182 	.byte #0xfd, #0x00	;  253
      002E7E FF 00                 1183 	.byte #0xff, #0x00	;  255
      002E80 FF 00                 1184 	.byte #0xff, #0x00	;  255
      002E82 FD 00                 1185 	.byte #0xfd, #0x00	;  253
      002E84 F9 00                 1186 	.byte #0xf9, #0x00	;  249
      002E86 F3 00                 1187 	.byte #0xf3, #0x00	;  243
      002E88 EB 00                 1188 	.byte #0xeb, #0x00	;  235
      002E8A E2 00                 1189 	.byte #0xe2, #0x00	;  226
      002E8C D7 00                 1190 	.byte #0xd7, #0x00	;  215
      002E8E CA 00                 1191 	.byte #0xca, #0x00	;  202
      002E90 BD 00                 1192 	.byte #0xbd, #0x00	;  189
      002E92 AE 00                 1193 	.byte #0xae, #0x00	;  174
      002E94 9F 00                 1194 	.byte #0x9f, #0x00	;  159
      002E96 8F 00                 1195 	.byte #0x8f, #0x00	;  143
      002E98 80 00                 1196 	.byte #0x80, #0x00	;  128
      002E9A 70 00                 1197 	.byte #0x70, #0x00	;  112
      002E9C 60 00                 1198 	.byte #0x60, #0x00	;  96
      002E9E 51 00                 1199 	.byte #0x51, #0x00	;  81
      002EA0 42 00                 1200 	.byte #0x42, #0x00	;  66
      002EA2 35 00                 1201 	.byte #0x35, #0x00	;  53
      002EA4 28 00                 1202 	.byte #0x28, #0x00	;  40
      002EA6 1D 00                 1203 	.byte #0x1d, #0x00	;  29
      002EA8 14 00                 1204 	.byte #0x14, #0x00	;  20
      002EAA 0C 00                 1205 	.byte #0x0c, #0x00	;  12
      002EAC 06 00                 1206 	.byte #0x06, #0x00	;  6
      002EAE 02 00                 1207 	.byte #0x02, #0x00	;  2
      002EB0 00 00                 1208 	.byte #0x00, #0x00	;  0
      002EB2 00 00                 1209 	.byte #0x00, #0x00	;  0
      002EB4 02 00                 1210 	.byte #0x02, #0x00	;  2
      002EB6 06 00                 1211 	.byte #0x06, #0x00	;  6
      002EB8 0C 00                 1212 	.byte #0x0c, #0x00	;  12
      002EBA 14 00                 1213 	.byte #0x14, #0x00	;  20
      002EBC 1D 00                 1214 	.byte #0x1d, #0x00	;  29
      002EBE 28 00                 1215 	.byte #0x28, #0x00	;  40
      002EC0 35 00                 1216 	.byte #0x35, #0x00	;  53
      002EC2 42 00                 1217 	.byte #0x42, #0x00	;  66
      002EC4 51 00                 1218 	.byte #0x51, #0x00	;  81
      002EC6 60 00                 1219 	.byte #0x60, #0x00	;  96
      002EC8 70 00                 1220 	.byte #0x70, #0x00	;  112
                                   1221 	.area CONST   (CODE)
      002ECA                       1222 ___str_0:
      002ECA 20 53 50 49 20 44 41  1223 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002EDA 0A                    1224 	.db 0x0a
      002EDB 0D                    1225 	.db 0x0d
      002EDC 00                    1226 	.db 0x00
                                   1227 	.area CSEG    (CODE)
                                   1228 	.area CONST   (CODE)
      002EDD                       1229 ___str_1:
      002EDD 53 50 49 20 54 52 41  1230 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002EF5 0A                    1231 	.db 0x0a
      002EF6 0D                    1232 	.db 0x0d
      002EF7 00                    1233 	.db 0x00
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      002EF8                       1236 ___str_2:
      002EF8 77 68 69 6C 65 20 73  1237 	.ascii "while start"
             74 61 72 74
      002F03 0A                    1238 	.db 0x0a
      002F04 0D                    1239 	.db 0x0d
      002F05 00                    1240 	.db 0x00
                                   1241 	.area CSEG    (CODE)
                                   1242 	.area CONST   (CODE)
      002F06                       1243 ___str_3:
      002F06 4C 6F 77 20 62 79 74  1244 	.ascii "Low byte %d"
             65 20 25 64
      002F11 0A                    1245 	.db 0x0a
      002F12 0D                    1246 	.db 0x0d
      002F13 00                    1247 	.db 0x00
                                   1248 	.area CSEG    (CODE)
                                   1249 	.area CONST   (CODE)
      002F14                       1250 ___str_4:
      002F14 48 69 67 68 20 62 79  1251 	.ascii "High byte %d"
             74 65 20 25 64
      002F20 0A                    1252 	.db 0x0a
      002F21 0D                    1253 	.db 0x0d
      002F22 00                    1254 	.db 0x00
                                   1255 	.area CSEG    (CODE)
                                   1256 	.area CONST   (CODE)
      002F23                       1257 ___str_5:
      002F23 45                    1258 	.ascii "E"
      002F24 0A                    1259 	.db 0x0a
      002F25 0D                    1260 	.db 0x0d
      002F26 00                    1261 	.db 0x00
                                   1262 	.area CSEG    (CODE)
                                   1263 	.area CONST   (CODE)
      002F27                       1264 ___str_6:
      002F27 54 20                 1265 	.ascii "T "
      002F29 0A                    1266 	.db 0x0a
      002F2A 0D                    1267 	.db 0x0d
      002F2B 00                    1268 	.db 0x00
                                   1269 	.area CSEG    (CODE)
                                   1270 	.area CONST   (CODE)
      002F2C                       1271 ___str_7:
      002F2C 73 70 69 20 69 73 72  1272 	.ascii "spi isr "
             20
      002F34 0A                    1273 	.db 0x0a
      002F35 0D                    1274 	.db 0x0d
      002F36 00                    1275 	.db 0x00
                                   1276 	.area CSEG    (CODE)
                                   1277 	.area XINIT   (CODE)
      002F42                       1278 __xinit__ms_flag:
      002F42 00                    1279 	.db #0x00	; 0
      002F43                       1280 __xinit__transmission_complete:
      002F43 00 00                 1281 	.byte #0x00, #0x00	;  0
                                   1282 	.area CABS    (ABS,CODE)
