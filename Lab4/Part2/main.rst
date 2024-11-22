                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_isr
                                     13 	.globl _command_parser
                                     14 	.globl _current_time_display
                                     15 	.globl _timer0_init
                                     16 	.globl _lcd_init
                                     17 	.globl _putchar
                                     18 	.globl _getchar
                                     19 	.globl _printf
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _TXD0
                                     96 	.globl _RXD0
                                     97 	.globl _BREG_F7
                                     98 	.globl _BREG_F6
                                     99 	.globl _BREG_F5
                                    100 	.globl _BREG_F4
                                    101 	.globl _BREG_F3
                                    102 	.globl _BREG_F2
                                    103 	.globl _BREG_F1
                                    104 	.globl _BREG_F0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _B
                                    155 	.globl _ACC
                                    156 	.globl _PSW
                                    157 	.globl _IP
                                    158 	.globl _P3
                                    159 	.globl _IE
                                    160 	.globl _P2
                                    161 	.globl _SBUF
                                    162 	.globl _SCON
                                    163 	.globl _P1
                                    164 	.globl _TH1
                                    165 	.globl _TH0
                                    166 	.globl _TL1
                                    167 	.globl _TL0
                                    168 	.globl _TMOD
                                    169 	.globl _TCON
                                    170 	.globl _PCON
                                    171 	.globl _DPH
                                    172 	.globl _DPL
                                    173 	.globl _SP
                                    174 	.globl _P0
                                    175 	.globl _SBUF0
                                    176 	.globl _DP0L
                                    177 	.globl _DP0H
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
                                    229 	.globl _minutes
                                    230 	.globl _seconds
                                    231 	.globl _one_tenth_of_second
                                    232 	.globl _one_twentyth_of_Second
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                           000083   289 _DP0H	=	0x0083
                           000082   290 _DP0L	=	0x0082
                           000099   291 _SBUF0	=	0x0099
                           000080   292 _P0	=	0x0080
                           000081   293 _SP	=	0x0081
                           000082   294 _DPL	=	0x0082
                           000083   295 _DPH	=	0x0083
                           000087   296 _PCON	=	0x0087
                           000088   297 _TCON	=	0x0088
                           000089   298 _TMOD	=	0x0089
                           00008A   299 _TL0	=	0x008a
                           00008B   300 _TL1	=	0x008b
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           000090   303 _P1	=	0x0090
                           000098   304 _SCON	=	0x0098
                           000099   305 _SBUF	=	0x0099
                           0000A0   306 _P2	=	0x00a0
                           0000A8   307 _IE	=	0x00a8
                           0000B0   308 _P3	=	0x00b0
                           0000B8   309 _IP	=	0x00b8
                           0000D0   310 _PSW	=	0x00d0
                           0000E0   311 _ACC	=	0x00e0
                           0000F0   312 _B	=	0x00f0
                                    313 ;--------------------------------------------------------
                                    314 ; special function bits
                                    315 ;--------------------------------------------------------
                                    316 	.area RSEG    (ABS,DATA)
      000000                        317 	.org 0x0000
                           0000AD   318 _ET2	=	0x00ad
                           0000BD   319 _PT2	=	0x00bd
                           0000C8   320 _T2CON_0	=	0x00c8
                           0000C9   321 _T2CON_1	=	0x00c9
                           0000CA   322 _T2CON_2	=	0x00ca
                           0000CB   323 _T2CON_3	=	0x00cb
                           0000CC   324 _T2CON_4	=	0x00cc
                           0000CD   325 _T2CON_5	=	0x00cd
                           0000CE   326 _T2CON_6	=	0x00ce
                           0000CF   327 _T2CON_7	=	0x00cf
                           0000C8   328 _CP_RL2	=	0x00c8
                           0000C9   329 _C_T2	=	0x00c9
                           0000CA   330 _TR2	=	0x00ca
                           0000CB   331 _EXEN2	=	0x00cb
                           0000CC   332 _TCLK	=	0x00cc
                           0000CD   333 _RCLK	=	0x00cd
                           0000CE   334 _EXF2	=	0x00ce
                           0000CF   335 _TF2	=	0x00cf
                           0000DF   336 _CF	=	0x00df
                           0000DE   337 _CR	=	0x00de
                           0000DC   338 _CCF4	=	0x00dc
                           0000DB   339 _CCF3	=	0x00db
                           0000DA   340 _CCF2	=	0x00da
                           0000D9   341 _CCF1	=	0x00d9
                           0000D8   342 _CCF0	=	0x00d8
                           0000AE   343 _EC	=	0x00ae
                           0000BE   344 _PPCL	=	0x00be
                           0000BD   345 _PT2L	=	0x00bd
                           0000BC   346 _PSL	=	0x00bc
                           0000BB   347 _PT1L	=	0x00bb
                           0000BA   348 _PX1L	=	0x00ba
                           0000B9   349 _PT0L	=	0x00b9
                           0000B8   350 _PX0L	=	0x00b8
                           0000C0   351 _P4_0	=	0x00c0
                           0000C1   352 _P4_1	=	0x00c1
                           0000C2   353 _P4_2	=	0x00c2
                           0000C3   354 _P4_3	=	0x00c3
                           0000C4   355 _P4_4	=	0x00c4
                           0000C5   356 _P4_5	=	0x00c5
                           0000C6   357 _P4_6	=	0x00c6
                           0000C7   358 _P4_7	=	0x00c7
                           0000E8   359 _P5_0	=	0x00e8
                           0000E9   360 _P5_1	=	0x00e9
                           0000EA   361 _P5_2	=	0x00ea
                           0000EB   362 _P5_3	=	0x00eb
                           0000EC   363 _P5_4	=	0x00ec
                           0000ED   364 _P5_5	=	0x00ed
                           0000EE   365 _P5_6	=	0x00ee
                           0000EF   366 _P5_7	=	0x00ef
                           0000F0   367 _BREG_F0	=	0x00f0
                           0000F1   368 _BREG_F1	=	0x00f1
                           0000F2   369 _BREG_F2	=	0x00f2
                           0000F3   370 _BREG_F3	=	0x00f3
                           0000F4   371 _BREG_F4	=	0x00f4
                           0000F5   372 _BREG_F5	=	0x00f5
                           0000F6   373 _BREG_F6	=	0x00f6
                           0000F7   374 _BREG_F7	=	0x00f7
                           0000B0   375 _RXD0	=	0x00b0
                           0000B1   376 _TXD0	=	0x00b1
                           000080   377 _P0_0	=	0x0080
                           000081   378 _P0_1	=	0x0081
                           000082   379 _P0_2	=	0x0082
                           000083   380 _P0_3	=	0x0083
                           000084   381 _P0_4	=	0x0084
                           000085   382 _P0_5	=	0x0085
                           000086   383 _P0_6	=	0x0086
                           000087   384 _P0_7	=	0x0087
                           000088   385 _IT0	=	0x0088
                           000089   386 _IE0	=	0x0089
                           00008A   387 _IT1	=	0x008a
                           00008B   388 _IE1	=	0x008b
                           00008C   389 _TR0	=	0x008c
                           00008D   390 _TF0	=	0x008d
                           00008E   391 _TR1	=	0x008e
                           00008F   392 _TF1	=	0x008f
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           000098   401 _RI	=	0x0098
                           000099   402 _TI	=	0x0099
                           00009A   403 _RB8	=	0x009a
                           00009B   404 _TB8	=	0x009b
                           00009C   405 _REN	=	0x009c
                           00009D   406 _SM2	=	0x009d
                           00009E   407 _SM1	=	0x009e
                           00009F   408 _SM0	=	0x009f
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000A8   417 _EX0	=	0x00a8
                           0000A9   418 _ET0	=	0x00a9
                           0000AA   419 _EX1	=	0x00aa
                           0000AB   420 _ET1	=	0x00ab
                           0000AC   421 _ES	=	0x00ac
                           0000AF   422 _EA	=	0x00af
                           0000B0   423 _P3_0	=	0x00b0
                           0000B1   424 _P3_1	=	0x00b1
                           0000B2   425 _P3_2	=	0x00b2
                           0000B3   426 _P3_3	=	0x00b3
                           0000B4   427 _P3_4	=	0x00b4
                           0000B5   428 _P3_5	=	0x00b5
                           0000B6   429 _P3_6	=	0x00b6
                           0000B7   430 _P3_7	=	0x00b7
                           0000B0   431 _RXD	=	0x00b0
                           0000B1   432 _TXD	=	0x00b1
                           0000B2   433 _INT0	=	0x00b2
                           0000B3   434 _INT1	=	0x00b3
                           0000B4   435 _T0	=	0x00b4
                           0000B5   436 _T1	=	0x00b5
                           0000B6   437 _WR	=	0x00b6
                           0000B7   438 _RD	=	0x00b7
                           0000B8   439 _PX0	=	0x00b8
                           0000B9   440 _PT0	=	0x00b9
                           0000BA   441 _PX1	=	0x00ba
                           0000BB   442 _PT1	=	0x00bb
                           0000BC   443 _PS	=	0x00bc
                           0000D0   444 _P	=	0x00d0
                           0000D1   445 _F1	=	0x00d1
                           0000D2   446 _OV	=	0x00d2
                           0000D3   447 _RS0	=	0x00d3
                           0000D4   448 _RS1	=	0x00d4
                           0000D5   449 _F0	=	0x00d5
                           0000D6   450 _AC	=	0x00d6
                           0000D7   451 _CY	=	0x00d7
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable register banks
                                    454 ;--------------------------------------------------------
                                    455 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        456 	.ds 8
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable bit register bank
                                    459 ;--------------------------------------------------------
                                    460 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        461 bits:
      000020                        462 	.ds 1
                           008000   463 	b0 = bits[0]
                           008100   464 	b1 = bits[1]
                           008200   465 	b2 = bits[2]
                           008300   466 	b3 = bits[3]
                           008400   467 	b4 = bits[4]
                           008500   468 	b5 = bits[5]
                           008600   469 	b6 = bits[6]
                           008700   470 	b7 = bits[7]
                                    471 ;--------------------------------------------------------
                                    472 ; internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area DSEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; overlayable items in internal ram 
                                    477 ;--------------------------------------------------------
                                    478 ;--------------------------------------------------------
                                    479 ; Stack segment in internal ram 
                                    480 ;--------------------------------------------------------
                                    481 	.area	SSEG
      00002B                        482 __start__stack:
      00002B                        483 	.ds	1
                                    484 
                                    485 ;--------------------------------------------------------
                                    486 ; indirectly addressable internal ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area ISEG    (DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; absolute internal ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area IABS    (ABS,DATA)
                                    493 	.area IABS    (ABS,DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; bit data
                                    496 ;--------------------------------------------------------
                                    497 	.area BSEG    (BIT)
                                    498 ;--------------------------------------------------------
                                    499 ; paged external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area PSEG    (PAG,XDATA)
                                    502 ;--------------------------------------------------------
                                    503 ; external ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area XSEG    (XDATA)
                                    506 ;--------------------------------------------------------
                                    507 ; absolute external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XABS    (ABS,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external initialized ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XISEG   (XDATA)
      001995                        514 _one_twentyth_of_Second::
      001995                        515 	.ds 1
      001996                        516 _one_tenth_of_second::
      001996                        517 	.ds 1
      001997                        518 _seconds::
      001997                        519 	.ds 1
      001998                        520 _minutes::
      001998                        521 	.ds 1
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT0 (CODE)
                                    524 	.area GSINIT1 (CODE)
                                    525 	.area GSINIT2 (CODE)
                                    526 	.area GSINIT3 (CODE)
                                    527 	.area GSINIT4 (CODE)
                                    528 	.area GSINIT5 (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area CSEG    (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; interrupt vector 
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
      002000                        536 __interrupt_vect:
      002000 02 20 11         [24]  537 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  538 	reti
      002004                        539 	.ds	7
      00200B 02 37 94         [24]  540 	ljmp	_timer0_isr
                                    541 ;--------------------------------------------------------
                                    542 ; global & static initialisations
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.area GSFINAL (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.globl __sdcc_gsinit_startup
                                    549 	.globl __sdcc_program_startup
                                    550 	.globl __start__stack
                                    551 	.globl __mcs51_genXINIT
                                    552 	.globl __mcs51_genXRAMCLEAR
                                    553 	.globl __mcs51_genRAMCLEAR
                                    554 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  555 	ljmp	__sdcc_program_startup
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
      00200E                        561 __sdcc_program_startup:
      00200E 02 38 29         [24]  562 	ljmp	_main
                                    563 ;	return from main will return to caller
                                    564 ;--------------------------------------------------------
                                    565 ; code
                                    566 ;--------------------------------------------------------
                                    567 	.area CSEG    (CODE)
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'timer0_isr'
                                    570 ;------------------------------------------------------------
                                    571 ;	src/main.c:23: void timer0_isr(void) __interrupt (1) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function timer0_isr
                                    574 ;	-----------------------------------------
      003794                        575 _timer0_isr:
                           000007   576 	ar7 = 0x07
                           000006   577 	ar6 = 0x06
                           000005   578 	ar5 = 0x05
                           000004   579 	ar4 = 0x04
                           000003   580 	ar3 = 0x03
                           000002   581 	ar2 = 0x02
                           000001   582 	ar1 = 0x01
                           000000   583 	ar0 = 0x00
      003794 C0 20            [24]  584 	push	bits
      003796 C0 E0            [24]  585 	push	acc
      003798 C0 F0            [24]  586 	push	b
      00379A C0 82            [24]  587 	push	dpl
      00379C C0 83            [24]  588 	push	dph
      00379E C0 07            [24]  589 	push	(0+7)
      0037A0 C0 06            [24]  590 	push	(0+6)
      0037A2 C0 05            [24]  591 	push	(0+5)
      0037A4 C0 04            [24]  592 	push	(0+4)
      0037A6 C0 03            [24]  593 	push	(0+3)
      0037A8 C0 02            [24]  594 	push	(0+2)
      0037AA C0 01            [24]  595 	push	(0+1)
      0037AC C0 00            [24]  596 	push	(0+0)
      0037AE C0 D0            [24]  597 	push	psw
      0037B0 75 D0 00         [24]  598 	mov	psw,#0x00
                                    599 ;	src/main.c:24: TH0 = TH0_FOR_50MS;       // High byte for 100ms delay
      0037B3 75 8C 4B         [24]  600 	mov	_TH0,#0x4b
                                    601 ;	src/main.c:25: TL0 = TL0_FOR_50MS;       // Low byte for 100ms delay
      0037B6 75 8A 1C         [24]  602 	mov	_TL0,#0x1c
                                    603 ;	src/main.c:26: one_twentyth_of_Second++;
      0037B9 90 19 95         [24]  604 	mov	dptr,#_one_twentyth_of_Second
      0037BC E0               [24]  605 	movx	a,@dptr
      0037BD 04               [12]  606 	inc	a
      0037BE F0               [24]  607 	movx	@dptr,a
                                    608 ;	src/main.c:27: TR0 = 1;
                                    609 ;	assignBit
      0037BF D2 8C            [12]  610 	setb	_TR0
                                    611 ;	src/main.c:28: if(one_twentyth_of_Second==20)
      0037C1 90 19 95         [24]  612 	mov	dptr,#_one_twentyth_of_Second
      0037C4 E0               [24]  613 	movx	a,@dptr
      0037C5 FF               [12]  614 	mov	r7,a
      0037C6 BF 14 1B         [24]  615 	cjne	r7,#0x14,00104$
                                    616 ;	src/main.c:30: one_twentyth_of_Second = 0;
      0037C9 90 19 95         [24]  617 	mov	dptr,#_one_twentyth_of_Second
      0037CC E4               [12]  618 	clr	a
      0037CD F0               [24]  619 	movx	@dptr,a
                                    620 ;	src/main.c:31: seconds++;
      0037CE 90 19 97         [24]  621 	mov	dptr,#_seconds
      0037D1 E0               [24]  622 	movx	a,@dptr
      0037D2 04               [12]  623 	inc	a
      0037D3 F0               [24]  624 	movx	@dptr,a
                                    625 ;	src/main.c:32: if(seconds==60)
      0037D4 E0               [24]  626 	movx	a,@dptr
      0037D5 FF               [12]  627 	mov	r7,a
      0037D6 BF 3C 0B         [24]  628 	cjne	r7,#0x3c,00104$
                                    629 ;	src/main.c:34: seconds=0;
      0037D9 90 19 97         [24]  630 	mov	dptr,#_seconds
      0037DC E4               [12]  631 	clr	a
      0037DD F0               [24]  632 	movx	@dptr,a
                                    633 ;	src/main.c:35: minutes++;
      0037DE 90 19 98         [24]  634 	mov	dptr,#_minutes
      0037E1 E0               [24]  635 	movx	a,@dptr
      0037E2 04               [12]  636 	inc	a
      0037E3 F0               [24]  637 	movx	@dptr,a
      0037E4                        638 00104$:
                                    639 ;	src/main.c:39: if(one_twentyth_of_Second%2==0)
      0037E4 90 19 95         [24]  640 	mov	dptr,#_one_twentyth_of_Second
      0037E7 E0               [24]  641 	movx	a,@dptr
      0037E8 20 E0 21         [24]  642 	jb	acc.0,00107$
                                    643 ;	src/main.c:41: one_tenth_of_second = one_twentyth_of_Second/2;
      0037EB 90 19 95         [24]  644 	mov	dptr,#_one_twentyth_of_Second
      0037EE E0               [24]  645 	movx	a,@dptr
      0037EF FF               [12]  646 	mov	r7,a
      0037F0 7E 00            [12]  647 	mov	r6,#0x00
      0037F2 90 19 49         [24]  648 	mov	dptr,#__divsint_PARM_2
      0037F5 74 02            [12]  649 	mov	a,#0x02
      0037F7 F0               [24]  650 	movx	@dptr,a
      0037F8 E4               [12]  651 	clr	a
      0037F9 A3               [24]  652 	inc	dptr
      0037FA F0               [24]  653 	movx	@dptr,a
      0037FB 8F 82            [24]  654 	mov	dpl,r7
      0037FD 8E 83            [24]  655 	mov	dph,r6
      0037FF 12 3C 4E         [24]  656 	lcall	__divsint
      003802 AE 82            [24]  657 	mov	r6,dpl
      003804 90 19 96         [24]  658 	mov	dptr,#_one_tenth_of_second
      003807 EE               [12]  659 	mov	a,r6
      003808 F0               [24]  660 	movx	@dptr,a
                                    661 ;	src/main.c:42: current_time_display();
      003809 12 39 EE         [24]  662 	lcall	_current_time_display
      00380C                        663 00107$:
                                    664 ;	src/main.c:45: }
      00380C D0 D0            [24]  665 	pop	psw
      00380E D0 00            [24]  666 	pop	(0+0)
      003810 D0 01            [24]  667 	pop	(0+1)
      003812 D0 02            [24]  668 	pop	(0+2)
      003814 D0 03            [24]  669 	pop	(0+3)
      003816 D0 04            [24]  670 	pop	(0+4)
      003818 D0 05            [24]  671 	pop	(0+5)
      00381A D0 06            [24]  672 	pop	(0+6)
      00381C D0 07            [24]  673 	pop	(0+7)
      00381E D0 83            [24]  674 	pop	dph
      003820 D0 82            [24]  675 	pop	dpl
      003822 D0 F0            [24]  676 	pop	b
      003824 D0 E0            [24]  677 	pop	acc
      003826 D0 20            [24]  678 	pop	bits
      003828 32               [24]  679 	reti
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'main'
                                    682 ;------------------------------------------------------------
                                    683 ;char_received             Allocated with name '_main_char_received_65536_63'
                                    684 ;------------------------------------------------------------
                                    685 ;	src/main.c:48: void main()
                                    686 ;	-----------------------------------------
                                    687 ;	 function main
                                    688 ;	-----------------------------------------
      003829                        689 _main:
                                    690 ;	src/main.c:51: lcd_init();
      003829 12 33 69         [24]  691 	lcall	_lcd_init
                                    692 ;	src/main.c:52: one_twentyth_of_Second = 0;
      00382C 90 19 95         [24]  693 	mov	dptr,#_one_twentyth_of_Second
      00382F E4               [12]  694 	clr	a
      003830 F0               [24]  695 	movx	@dptr,a
                                    696 ;	src/main.c:53: seconds = 0;
      003831 90 19 97         [24]  697 	mov	dptr,#_seconds
      003834 F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/main.c:54: minutes = 0;
      003835 90 19 98         [24]  700 	mov	dptr,#_minutes
      003838 F0               [24]  701 	movx	@dptr,a
                                    702 ;	src/main.c:55: timer0_init();
      003839 12 39 A7         [24]  703 	lcall	_timer0_init
                                    704 ;	src/main.c:56: printf("--------------------------------------------------------------------------------------------\r\n");
      00383C 74 39            [12]  705 	mov	a,#___str_0
      00383E C0 E0            [24]  706 	push	acc
      003840 74 50            [12]  707 	mov	a,#(___str_0 >> 8)
      003842 C0 E0            [24]  708 	push	acc
      003844 74 80            [12]  709 	mov	a,#0x80
      003846 C0 E0            [24]  710 	push	acc
      003848 12 3D 9B         [24]  711 	lcall	_printf
      00384B 15 81            [12]  712 	dec	sp
      00384D 15 81            [12]  713 	dec	sp
      00384F 15 81            [12]  714 	dec	sp
                                    715 ;	src/main.c:57: printf("                           Welcome to LCD demo                                       \r\n");
      003851 74 98            [12]  716 	mov	a,#___str_1
      003853 C0 E0            [24]  717 	push	acc
      003855 74 50            [12]  718 	mov	a,#(___str_1 >> 8)
      003857 C0 E0            [24]  719 	push	acc
      003859 74 80            [12]  720 	mov	a,#0x80
      00385B C0 E0            [24]  721 	push	acc
      00385D 12 3D 9B         [24]  722 	lcall	_printf
      003860 15 81            [12]  723 	dec	sp
      003862 15 81            [12]  724 	dec	sp
      003864 15 81            [12]  725 	dec	sp
                                    726 ;	src/main.c:59: printf("----------------------------     Usage          --------------------------------------------\r\n");
      003866 74 F0            [12]  727 	mov	a,#___str_2
      003868 C0 E0            [24]  728 	push	acc
      00386A 74 50            [12]  729 	mov	a,#(___str_2 >> 8)
      00386C C0 E0            [24]  730 	push	acc
      00386E 74 80            [12]  731 	mov	a,#0x80
      003870 C0 E0            [24]  732 	push	acc
      003872 12 3D 9B         [24]  733 	lcall	_printf
      003875 15 81            [12]  734 	dec	sp
      003877 15 81            [12]  735 	dec	sp
      003879 15 81            [12]  736 	dec	sp
                                    737 ;	src/main.c:60: printf(" W       : Write a string\r\n");
      00387B 74 4F            [12]  738 	mov	a,#___str_3
      00387D C0 E0            [24]  739 	push	acc
      00387F 74 51            [12]  740 	mov	a,#(___str_3 >> 8)
      003881 C0 E0            [24]  741 	push	acc
      003883 74 80            [12]  742 	mov	a,#0x80
      003885 C0 E0            [24]  743 	push	acc
      003887 12 3D 9B         [24]  744 	lcall	_printf
      00388A 15 81            [12]  745 	dec	sp
      00388C 15 81            [12]  746 	dec	sp
      00388E 15 81            [12]  747 	dec	sp
                                    748 ;	src/main.c:61: printf(" T       : Write to a specific position in the LCD\r\n");
      003890 74 6B            [12]  749 	mov	a,#___str_4
      003892 C0 E0            [24]  750 	push	acc
      003894 74 51            [12]  751 	mov	a,#(___str_4 >> 8)
      003896 C0 E0            [24]  752 	push	acc
      003898 74 80            [12]  753 	mov	a,#0x80
      00389A C0 E0            [24]  754 	push	acc
      00389C 12 3D 9B         [24]  755 	lcall	_printf
      00389F 15 81            [12]  756 	dec	sp
      0038A1 15 81            [12]  757 	dec	sp
      0038A3 15 81            [12]  758 	dec	sp
                                    759 ;	src/main.c:62: printf(" E       : Clear the display\r\n");
      0038A5 74 A0            [12]  760 	mov	a,#___str_5
      0038A7 C0 E0            [24]  761 	push	acc
      0038A9 74 51            [12]  762 	mov	a,#(___str_5 >> 8)
      0038AB C0 E0            [24]  763 	push	acc
      0038AD 74 80            [12]  764 	mov	a,#0x80
      0038AF C0 E0            [24]  765 	push	acc
      0038B1 12 3D 9B         [24]  766 	lcall	_printf
      0038B4 15 81            [12]  767 	dec	sp
      0038B6 15 81            [12]  768 	dec	sp
      0038B8 15 81            [12]  769 	dec	sp
                                    770 ;	src/main.c:63: printf(" P       : Pause the Timer\r\n");
      0038BA 74 BF            [12]  771 	mov	a,#___str_6
      0038BC C0 E0            [24]  772 	push	acc
      0038BE 74 51            [12]  773 	mov	a,#(___str_6 >> 8)
      0038C0 C0 E0            [24]  774 	push	acc
      0038C2 74 80            [12]  775 	mov	a,#0x80
      0038C4 C0 E0            [24]  776 	push	acc
      0038C6 12 3D 9B         [24]  777 	lcall	_printf
      0038C9 15 81            [12]  778 	dec	sp
      0038CB 15 81            [12]  779 	dec	sp
      0038CD 15 81            [12]  780 	dec	sp
                                    781 ;	src/main.c:64: printf(" S       : Start the Timer\r\n");
      0038CF 74 DC            [12]  782 	mov	a,#___str_7
      0038D1 C0 E0            [24]  783 	push	acc
      0038D3 74 51            [12]  784 	mov	a,#(___str_7 >> 8)
      0038D5 C0 E0            [24]  785 	push	acc
      0038D7 74 80            [12]  786 	mov	a,#0x80
      0038D9 C0 E0            [24]  787 	push	acc
      0038DB 12 3D 9B         [24]  788 	lcall	_printf
      0038DE 15 81            [12]  789 	dec	sp
      0038E0 15 81            [12]  790 	dec	sp
      0038E2 15 81            [12]  791 	dec	sp
                                    792 ;	src/main.c:65: printf(" R       : Stop and reset the Timer\r\n");
      0038E4 74 F9            [12]  793 	mov	a,#___str_8
      0038E6 C0 E0            [24]  794 	push	acc
      0038E8 74 51            [12]  795 	mov	a,#(___str_8 >> 8)
      0038EA C0 E0            [24]  796 	push	acc
      0038EC 74 80            [12]  797 	mov	a,#0x80
      0038EE C0 E0            [24]  798 	push	acc
      0038F0 12 3D 9B         [24]  799 	lcall	_printf
      0038F3 15 81            [12]  800 	dec	sp
      0038F5 15 81            [12]  801 	dec	sp
      0038F7 15 81            [12]  802 	dec	sp
                                    803 ;	src/main.c:66: printf(" H       : Hexdump of DDRAM contents\r\n");
      0038F9 74 1F            [12]  804 	mov	a,#___str_9
      0038FB C0 E0            [24]  805 	push	acc
      0038FD 74 52            [12]  806 	mov	a,#(___str_9 >> 8)
      0038FF C0 E0            [24]  807 	push	acc
      003901 74 80            [12]  808 	mov	a,#0x80
      003903 C0 E0            [24]  809 	push	acc
      003905 12 3D 9B         [24]  810 	lcall	_printf
      003908 15 81            [12]  811 	dec	sp
      00390A 15 81            [12]  812 	dec	sp
      00390C 15 81            [12]  813 	dec	sp
                                    814 ;	src/main.c:67: printf(" C       : Hexdump of CGRAM contents\r\n");
      00390E 74 46            [12]  815 	mov	a,#___str_10
      003910 C0 E0            [24]  816 	push	acc
      003912 74 52            [12]  817 	mov	a,#(___str_10 >> 8)
      003914 C0 E0            [24]  818 	push	acc
      003916 74 80            [12]  819 	mov	a,#0x80
      003918 C0 E0            [24]  820 	push	acc
      00391A 12 3D 9B         [24]  821 	lcall	_printf
      00391D 15 81            [12]  822 	dec	sp
      00391F 15 81            [12]  823 	dec	sp
      003921 15 81            [12]  824 	dec	sp
                                    825 ;	src/main.c:68: printf(" A       : Create a CGRAM character\r\n");
      003923 74 6D            [12]  826 	mov	a,#___str_11
      003925 C0 E0            [24]  827 	push	acc
      003927 74 52            [12]  828 	mov	a,#(___str_11 >> 8)
      003929 C0 E0            [24]  829 	push	acc
      00392B 74 80            [12]  830 	mov	a,#0x80
      00392D C0 E0            [24]  831 	push	acc
      00392F 12 3D 9B         [24]  832 	lcall	_printf
      003932 15 81            [12]  833 	dec	sp
      003934 15 81            [12]  834 	dec	sp
      003936 15 81            [12]  835 	dec	sp
                                    836 ;	src/main.c:69: printf(" D       : Display a CGRAM character\r\n");
      003938 74 93            [12]  837 	mov	a,#___str_12
      00393A C0 E0            [24]  838 	push	acc
      00393C 74 52            [12]  839 	mov	a,#(___str_12 >> 8)
      00393E C0 E0            [24]  840 	push	acc
      003940 74 80            [12]  841 	mov	a,#0x80
      003942 C0 E0            [24]  842 	push	acc
      003944 12 3D 9B         [24]  843 	lcall	_printf
      003947 15 81            [12]  844 	dec	sp
      003949 15 81            [12]  845 	dec	sp
      00394B 15 81            [12]  846 	dec	sp
                                    847 ;	src/main.c:70: printf(" ?       : Help menu\r\n");
      00394D 74 BA            [12]  848 	mov	a,#___str_13
      00394F C0 E0            [24]  849 	push	acc
      003951 74 52            [12]  850 	mov	a,#(___str_13 >> 8)
      003953 C0 E0            [24]  851 	push	acc
      003955 74 80            [12]  852 	mov	a,#0x80
      003957 C0 E0            [24]  853 	push	acc
      003959 12 3D 9B         [24]  854 	lcall	_printf
      00395C 15 81            [12]  855 	dec	sp
      00395E 15 81            [12]  856 	dec	sp
      003960 15 81            [12]  857 	dec	sp
                                    858 ;	src/main.c:71: printf("--------------------------------------------------------------------------------------------\r\n");
      003962 74 39            [12]  859 	mov	a,#___str_0
      003964 C0 E0            [24]  860 	push	acc
      003966 74 50            [12]  861 	mov	a,#(___str_0 >> 8)
      003968 C0 E0            [24]  862 	push	acc
      00396A 74 80            [12]  863 	mov	a,#0x80
      00396C C0 E0            [24]  864 	push	acc
      00396E 12 3D 9B         [24]  865 	lcall	_printf
      003971 15 81            [12]  866 	dec	sp
      003973 15 81            [12]  867 	dec	sp
      003975 15 81            [12]  868 	dec	sp
                                    869 ;	src/main.c:73: while(1)
      003977                        870 00102$:
                                    871 ;	src/main.c:77: printf("\r\nEnter your option:");
      003977 74 D1            [12]  872 	mov	a,#___str_14
      003979 C0 E0            [24]  873 	push	acc
      00397B 74 52            [12]  874 	mov	a,#(___str_14 >> 8)
      00397D C0 E0            [24]  875 	push	acc
      00397F 74 80            [12]  876 	mov	a,#0x80
      003981 C0 E0            [24]  877 	push	acc
      003983 12 3D 9B         [24]  878 	lcall	_printf
      003986 15 81            [12]  879 	dec	sp
      003988 15 81            [12]  880 	dec	sp
      00398A 15 81            [12]  881 	dec	sp
                                    882 ;	src/main.c:78: char_received = getchar();
      00398C 12 31 A1         [24]  883 	lcall	_getchar
      00398F AE 82            [24]  884 	mov	r6,dpl
                                    885 ;	src/main.c:79: putchar(char_received);
      003991 8E 05            [24]  886 	mov	ar5,r6
      003993 7F 00            [12]  887 	mov	r7,#0x00
      003995 8D 82            [24]  888 	mov	dpl,r5
      003997 8F 83            [24]  889 	mov	dph,r7
      003999 C0 06            [24]  890 	push	ar6
      00399B 12 31 82         [24]  891 	lcall	_putchar
      00399E D0 06            [24]  892 	pop	ar6
                                    893 ;	src/main.c:80: command_parser(char_received);
      0039A0 8E 82            [24]  894 	mov	dpl,r6
      0039A2 12 20 6D         [24]  895 	lcall	_command_parser
                                    896 ;	src/main.c:82: }
      0039A5 80 D0            [24]  897 	sjmp	00102$
                                    898 	.area CSEG    (CODE)
                                    899 	.area CONST   (CODE)
                                    900 	.area CONST   (CODE)
      005039                        901 ___str_0:
      005039 2D 2D 2D 2D 2D 2D 2D   902 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005075 2D 2D 2D 2D 2D 2D 2D   903 	.ascii "--------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005095 0D                     904 	.db 0x0d
      005096 0A                     905 	.db 0x0a
      005097 00                     906 	.db 0x00
                                    907 	.area CSEG    (CODE)
                                    908 	.area CONST   (CODE)
      005098                        909 ___str_1:
      005098 20 20 20 20 20 20 20   910 	.ascii "                           Welcome to LCD demo              "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 57
             65 6C 63 6F 6D 65 20
             74 6F 20 4C 43 44 20
             64 65 6D 6F 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0050D4 20 20 20 20 20 20 20   911 	.ascii "                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0050ED 0D                     912 	.db 0x0d
      0050EE 0A                     913 	.db 0x0a
      0050EF 00                     914 	.db 0x00
                                    915 	.area CSEG    (CODE)
                                    916 	.area CONST   (CODE)
      0050F0                        917 ___str_2:
      0050F0 2D 2D 2D 2D 2D 2D 2D   918 	.ascii "----------------------------     Usage          ------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             20 20 20 20 20 55 73
             61 67 65 20 20 20 20
             20 20 20 20 20 20 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00512C 2D 2D 2D 2D 2D 2D 2D   919 	.ascii "--------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00514C 0D                     920 	.db 0x0d
      00514D 0A                     921 	.db 0x0a
      00514E 00                     922 	.db 0x00
                                    923 	.area CSEG    (CODE)
                                    924 	.area CONST   (CODE)
      00514F                        925 ___str_3:
      00514F 20 57 20 20 20 20 20   926 	.ascii " W       : Write a string"
             20 20 3A 20 57 72 69
             74 65 20 61 20 73 74
             72 69 6E 67
      005168 0D                     927 	.db 0x0d
      005169 0A                     928 	.db 0x0a
      00516A 00                     929 	.db 0x00
                                    930 	.area CSEG    (CODE)
                                    931 	.area CONST   (CODE)
      00516B                        932 ___str_4:
      00516B 20 54 20 20 20 20 20   933 	.ascii " T       : Write to a specific position in the LCD"
             20 20 3A 20 57 72 69
             74 65 20 74 6F 20 61
             20 73 70 65 63 69 66
             69 63 20 70 6F 73 69
             74 69 6F 6E 20 69 6E
             20 74 68 65 20 4C 43
             44
      00519D 0D                     934 	.db 0x0d
      00519E 0A                     935 	.db 0x0a
      00519F 00                     936 	.db 0x00
                                    937 	.area CSEG    (CODE)
                                    938 	.area CONST   (CODE)
      0051A0                        939 ___str_5:
      0051A0 20 45 20 20 20 20 20   940 	.ascii " E       : Clear the display"
             20 20 3A 20 43 6C 65
             61 72 20 74 68 65 20
             64 69 73 70 6C 61 79
      0051BC 0D                     941 	.db 0x0d
      0051BD 0A                     942 	.db 0x0a
      0051BE 00                     943 	.db 0x00
                                    944 	.area CSEG    (CODE)
                                    945 	.area CONST   (CODE)
      0051BF                        946 ___str_6:
      0051BF 20 50 20 20 20 20 20   947 	.ascii " P       : Pause the Timer"
             20 20 3A 20 50 61 75
             73 65 20 74 68 65 20
             54 69 6D 65 72
      0051D9 0D                     948 	.db 0x0d
      0051DA 0A                     949 	.db 0x0a
      0051DB 00                     950 	.db 0x00
                                    951 	.area CSEG    (CODE)
                                    952 	.area CONST   (CODE)
      0051DC                        953 ___str_7:
      0051DC 20 53 20 20 20 20 20   954 	.ascii " S       : Start the Timer"
             20 20 3A 20 53 74 61
             72 74 20 74 68 65 20
             54 69 6D 65 72
      0051F6 0D                     955 	.db 0x0d
      0051F7 0A                     956 	.db 0x0a
      0051F8 00                     957 	.db 0x00
                                    958 	.area CSEG    (CODE)
                                    959 	.area CONST   (CODE)
      0051F9                        960 ___str_8:
      0051F9 20 52 20 20 20 20 20   961 	.ascii " R       : Stop and reset the Timer"
             20 20 3A 20 53 74 6F
             70 20 61 6E 64 20 72
             65 73 65 74 20 74 68
             65 20 54 69 6D 65 72
      00521C 0D                     962 	.db 0x0d
      00521D 0A                     963 	.db 0x0a
      00521E 00                     964 	.db 0x00
                                    965 	.area CSEG    (CODE)
                                    966 	.area CONST   (CODE)
      00521F                        967 ___str_9:
      00521F 20 48 20 20 20 20 20   968 	.ascii " H       : Hexdump of DDRAM contents"
             20 20 3A 20 48 65 78
             64 75 6D 70 20 6F 66
             20 44 44 52 41 4D 20
             63 6F 6E 74 65 6E 74
             73
      005243 0D                     969 	.db 0x0d
      005244 0A                     970 	.db 0x0a
      005245 00                     971 	.db 0x00
                                    972 	.area CSEG    (CODE)
                                    973 	.area CONST   (CODE)
      005246                        974 ___str_10:
      005246 20 43 20 20 20 20 20   975 	.ascii " C       : Hexdump of CGRAM contents"
             20 20 3A 20 48 65 78
             64 75 6D 70 20 6F 66
             20 43 47 52 41 4D 20
             63 6F 6E 74 65 6E 74
             73
      00526A 0D                     976 	.db 0x0d
      00526B 0A                     977 	.db 0x0a
      00526C 00                     978 	.db 0x00
                                    979 	.area CSEG    (CODE)
                                    980 	.area CONST   (CODE)
      00526D                        981 ___str_11:
      00526D 20 41 20 20 20 20 20   982 	.ascii " A       : Create a CGRAM character"
             20 20 3A 20 43 72 65
             61 74 65 20 61 20 43
             47 52 41 4D 20 63 68
             61 72 61 63 74 65 72
      005290 0D                     983 	.db 0x0d
      005291 0A                     984 	.db 0x0a
      005292 00                     985 	.db 0x00
                                    986 	.area CSEG    (CODE)
                                    987 	.area CONST   (CODE)
      005293                        988 ___str_12:
      005293 20 44 20 20 20 20 20   989 	.ascii " D       : Display a CGRAM character"
             20 20 3A 20 44 69 73
             70 6C 61 79 20 61 20
             43 47 52 41 4D 20 63
             68 61 72 61 63 74 65
             72
      0052B7 0D                     990 	.db 0x0d
      0052B8 0A                     991 	.db 0x0a
      0052B9 00                     992 	.db 0x00
                                    993 	.area CSEG    (CODE)
                                    994 	.area CONST   (CODE)
      0052BA                        995 ___str_13:
      0052BA 20 3F 20 20 20 20 20   996 	.ascii " ?       : Help menu"
             20 20 3A 20 48 65 6C
             70 20 6D 65 6E 75
      0052CE 0D                     997 	.db 0x0d
      0052CF 0A                     998 	.db 0x0a
      0052D0 00                     999 	.db 0x00
                                   1000 	.area CSEG    (CODE)
                                   1001 	.area CONST   (CODE)
      0052D1                       1002 ___str_14:
      0052D1 0D                    1003 	.db 0x0d
      0052D2 0A                    1004 	.db 0x0a
      0052D3 45 6E 74 65 72 20 79  1005 	.ascii "Enter your option:"
             6F 75 72 20 6F 70 74
             69 6F 6E 3A
      0052E5 00                    1006 	.db 0x00
                                   1007 	.area CSEG    (CODE)
                                   1008 	.area XINIT   (CODE)
      0052F9                       1009 __xinit__one_twentyth_of_Second:
      0052F9 00                    1010 	.db #0x00	; 0
      0052FA                       1011 __xinit__one_tenth_of_second:
      0052FA 00                    1012 	.db #0x00	; 0
      0052FB                       1013 __xinit__seconds:
      0052FB 00                    1014 	.db #0x00	; 0
      0052FC                       1015 __xinit__minutes:
      0052FC 00                    1016 	.db #0x00	; 0
                                   1017 	.area CABS    (ABS,CODE)
