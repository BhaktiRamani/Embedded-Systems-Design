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
      00198F                        514 _one_twentyth_of_Second::
      00198F                        515 	.ds 1
      001990                        516 _one_tenth_of_second::
      001990                        517 	.ds 1
      001991                        518 _seconds::
      001991                        519 	.ds 1
      001992                        520 _minutes::
      001992                        521 	.ds 1
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
      00200B 02 36 19         [24]  540 	ljmp	_timer0_isr
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
      00200E 02 36 AE         [24]  562 	ljmp	_main
                                    563 ;	return from main will return to caller
                                    564 ;--------------------------------------------------------
                                    565 ; code
                                    566 ;--------------------------------------------------------
                                    567 	.area CSEG    (CODE)
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'timer0_isr'
                                    570 ;------------------------------------------------------------
                                    571 ;	src/main.c:60: void timer0_isr(void) __interrupt (1) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function timer0_isr
                                    574 ;	-----------------------------------------
      003619                        575 _timer0_isr:
                           000007   576 	ar7 = 0x07
                           000006   577 	ar6 = 0x06
                           000005   578 	ar5 = 0x05
                           000004   579 	ar4 = 0x04
                           000003   580 	ar3 = 0x03
                           000002   581 	ar2 = 0x02
                           000001   582 	ar1 = 0x01
                           000000   583 	ar0 = 0x00
      003619 C0 20            [24]  584 	push	bits
      00361B C0 E0            [24]  585 	push	acc
      00361D C0 F0            [24]  586 	push	b
      00361F C0 82            [24]  587 	push	dpl
      003621 C0 83            [24]  588 	push	dph
      003623 C0 07            [24]  589 	push	(0+7)
      003625 C0 06            [24]  590 	push	(0+6)
      003627 C0 05            [24]  591 	push	(0+5)
      003629 C0 04            [24]  592 	push	(0+4)
      00362B C0 03            [24]  593 	push	(0+3)
      00362D C0 02            [24]  594 	push	(0+2)
      00362F C0 01            [24]  595 	push	(0+1)
      003631 C0 00            [24]  596 	push	(0+0)
      003633 C0 D0            [24]  597 	push	psw
      003635 75 D0 00         [24]  598 	mov	psw,#0x00
                                    599 ;	src/main.c:61: TH0 = TH0_FOR_50MS;       // High byte for 50ms delay
      003638 75 8C 4B         [24]  600 	mov	_TH0,#0x4b
                                    601 ;	src/main.c:62: TL0 = TL0_FOR_50MS;       // Low byte for 50ms delay
      00363B 75 8A 1C         [24]  602 	mov	_TL0,#0x1c
                                    603 ;	src/main.c:63: one_twentyth_of_Second++; // Increment 1/20th of a second counter
      00363E 90 19 8F         [24]  604 	mov	dptr,#_one_twentyth_of_Second
      003641 E0               [24]  605 	movx	a,@dptr
      003642 04               [12]  606 	inc	a
      003643 F0               [24]  607 	movx	@dptr,a
                                    608 ;	src/main.c:64: TR0 = 1;                  // Restart the timer
                                    609 ;	assignBit
      003644 D2 8C            [12]  610 	setb	_TR0
                                    611 ;	src/main.c:67: if (one_twentyth_of_Second == 20) {
      003646 90 19 8F         [24]  612 	mov	dptr,#_one_twentyth_of_Second
      003649 E0               [24]  613 	movx	a,@dptr
      00364A FF               [12]  614 	mov	r7,a
      00364B BF 14 1B         [24]  615 	cjne	r7,#0x14,00104$
                                    616 ;	src/main.c:68: one_twentyth_of_Second = 0;
      00364E 90 19 8F         [24]  617 	mov	dptr,#_one_twentyth_of_Second
      003651 E4               [12]  618 	clr	a
      003652 F0               [24]  619 	movx	@dptr,a
                                    620 ;	src/main.c:69: seconds++;
      003653 90 19 91         [24]  621 	mov	dptr,#_seconds
      003656 E0               [24]  622 	movx	a,@dptr
      003657 04               [12]  623 	inc	a
      003658 F0               [24]  624 	movx	@dptr,a
                                    625 ;	src/main.c:72: if (seconds == 60) {
      003659 E0               [24]  626 	movx	a,@dptr
      00365A FF               [12]  627 	mov	r7,a
      00365B BF 3C 0B         [24]  628 	cjne	r7,#0x3c,00104$
                                    629 ;	src/main.c:73: seconds = 0;
      00365E 90 19 91         [24]  630 	mov	dptr,#_seconds
      003661 E4               [12]  631 	clr	a
      003662 F0               [24]  632 	movx	@dptr,a
                                    633 ;	src/main.c:74: minutes++;
      003663 90 19 92         [24]  634 	mov	dptr,#_minutes
      003666 E0               [24]  635 	movx	a,@dptr
      003667 04               [12]  636 	inc	a
      003668 F0               [24]  637 	movx	@dptr,a
      003669                        638 00104$:
                                    639 ;	src/main.c:79: if (one_twentyth_of_Second % 2 == 0) {
      003669 90 19 8F         [24]  640 	mov	dptr,#_one_twentyth_of_Second
      00366C E0               [24]  641 	movx	a,@dptr
      00366D 20 E0 21         [24]  642 	jb	acc.0,00107$
                                    643 ;	src/main.c:80: one_tenth_of_second = one_twentyth_of_Second / 2;
      003670 90 19 8F         [24]  644 	mov	dptr,#_one_twentyth_of_Second
      003673 E0               [24]  645 	movx	a,@dptr
      003674 FF               [12]  646 	mov	r7,a
      003675 7E 00            [12]  647 	mov	r6,#0x00
      003677 90 19 43         [24]  648 	mov	dptr,#__divsint_PARM_2
      00367A 74 02            [12]  649 	mov	a,#0x02
      00367C F0               [24]  650 	movx	@dptr,a
      00367D E4               [12]  651 	clr	a
      00367E A3               [24]  652 	inc	dptr
      00367F F0               [24]  653 	movx	@dptr,a
      003680 8F 82            [24]  654 	mov	dpl,r7
      003682 8E 83            [24]  655 	mov	dph,r6
      003684 12 3B 2B         [24]  656 	lcall	__divsint
      003687 AE 82            [24]  657 	mov	r6,dpl
      003689 90 19 90         [24]  658 	mov	dptr,#_one_tenth_of_second
      00368C EE               [12]  659 	mov	a,r6
      00368D F0               [24]  660 	movx	@dptr,a
                                    661 ;	src/main.c:81: current_time_display(); // Update time display on LCD
      00368E 12 38 CB         [24]  662 	lcall	_current_time_display
      003691                        663 00107$:
                                    664 ;	src/main.c:83: }
      003691 D0 D0            [24]  665 	pop	psw
      003693 D0 00            [24]  666 	pop	(0+0)
      003695 D0 01            [24]  667 	pop	(0+1)
      003697 D0 02            [24]  668 	pop	(0+2)
      003699 D0 03            [24]  669 	pop	(0+3)
      00369B D0 04            [24]  670 	pop	(0+4)
      00369D D0 05            [24]  671 	pop	(0+5)
      00369F D0 06            [24]  672 	pop	(0+6)
      0036A1 D0 07            [24]  673 	pop	(0+7)
      0036A3 D0 83            [24]  674 	pop	dph
      0036A5 D0 82            [24]  675 	pop	dpl
      0036A7 D0 F0            [24]  676 	pop	b
      0036A9 D0 E0            [24]  677 	pop	acc
      0036AB D0 20            [24]  678 	pop	bits
      0036AD 32               [24]  679 	reti
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'main'
                                    682 ;------------------------------------------------------------
                                    683 ;char_received             Allocated with name '_main_char_received_65536_63'
                                    684 ;------------------------------------------------------------
                                    685 ;	src/main.c:95: void main() {
                                    686 ;	-----------------------------------------
                                    687 ;	 function main
                                    688 ;	-----------------------------------------
      0036AE                        689 _main:
                                    690 ;	src/main.c:99: lcd_init();
      0036AE 12 33 FC         [24]  691 	lcall	_lcd_init
                                    692 ;	src/main.c:100: one_twentyth_of_Second = 0;
      0036B1 90 19 8F         [24]  693 	mov	dptr,#_one_twentyth_of_Second
      0036B4 E4               [12]  694 	clr	a
      0036B5 F0               [24]  695 	movx	@dptr,a
                                    696 ;	src/main.c:101: seconds = 0;
      0036B6 90 19 91         [24]  697 	mov	dptr,#_seconds
      0036B9 F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/main.c:102: minutes = 0;
      0036BA 90 19 92         [24]  700 	mov	dptr,#_minutes
      0036BD F0               [24]  701 	movx	@dptr,a
                                    702 ;	src/main.c:103: timer0_init();
      0036BE 12 38 84         [24]  703 	lcall	_timer0_init
                                    704 ;	src/main.c:106: printf("╔════════════════════════════════════════════════════════════════╗\n\r");
      0036C1 74 39            [12]  705 	mov	a,#___str_0
      0036C3 C0 E0            [24]  706 	push	acc
      0036C5 74 54            [12]  707 	mov	a,#(___str_0 >> 8)
      0036C7 C0 E0            [24]  708 	push	acc
      0036C9 74 80            [12]  709 	mov	a,#0x80
      0036CB C0 E0            [24]  710 	push	acc
      0036CD 12 3C 78         [24]  711 	lcall	_printf
      0036D0 15 81            [12]  712 	dec	sp
      0036D2 15 81            [12]  713 	dec	sp
      0036D4 15 81            [12]  714 	dec	sp
                                    715 ;	src/main.c:107: printf("║                     Welcome to LCD Demo                         ║\n\r");
      0036D6 74 02            [12]  716 	mov	a,#___str_1
      0036D8 C0 E0            [24]  717 	push	acc
      0036DA 74 55            [12]  718 	mov	a,#(___str_1 >> 8)
      0036DC C0 E0            [24]  719 	push	acc
      0036DE 74 80            [12]  720 	mov	a,#0x80
      0036E0 C0 E0            [24]  721 	push	acc
      0036E2 12 3C 78         [24]  722 	lcall	_printf
      0036E5 15 81            [12]  723 	dec	sp
      0036E7 15 81            [12]  724 	dec	sp
      0036E9 15 81            [12]  725 	dec	sp
                                    726 ;	src/main.c:108: printf("╠═══════════╦════════════════════════════════════════════════════╣\n\r");
      0036EB 74 4C            [12]  727 	mov	a,#___str_2
      0036ED C0 E0            [24]  728 	push	acc
      0036EF 74 55            [12]  729 	mov	a,#(___str_2 >> 8)
      0036F1 C0 E0            [24]  730 	push	acc
      0036F3 74 80            [12]  731 	mov	a,#0x80
      0036F5 C0 E0            [24]  732 	push	acc
      0036F7 12 3C 78         [24]  733 	lcall	_printf
      0036FA 15 81            [12]  734 	dec	sp
      0036FC 15 81            [12]  735 	dec	sp
      0036FE 15 81            [12]  736 	dec	sp
                                    737 ;	src/main.c:109: printf("║ Command   ║                    Description                      ║\n\r");
      003700 74 15            [12]  738 	mov	a,#___str_3
      003702 C0 E0            [24]  739 	push	acc
      003704 74 56            [12]  740 	mov	a,#(___str_3 >> 8)
      003706 C0 E0            [24]  741 	push	acc
      003708 74 80            [12]  742 	mov	a,#0x80
      00370A C0 E0            [24]  743 	push	acc
      00370C 12 3C 78         [24]  744 	lcall	_printf
      00370F 15 81            [12]  745 	dec	sp
      003711 15 81            [12]  746 	dec	sp
      003713 15 81            [12]  747 	dec	sp
                                    748 ;	src/main.c:110: printf("╠═══════════╬════════════════════════════════════════════════════╣\n\r");
      003715 74 61            [12]  749 	mov	a,#___str_4
      003717 C0 E0            [24]  750 	push	acc
      003719 74 56            [12]  751 	mov	a,#(___str_4 >> 8)
      00371B C0 E0            [24]  752 	push	acc
      00371D 74 80            [12]  753 	mov	a,#0x80
      00371F C0 E0            [24]  754 	push	acc
      003721 12 3C 78         [24]  755 	lcall	_printf
      003724 15 81            [12]  756 	dec	sp
      003726 15 81            [12]  757 	dec	sp
      003728 15 81            [12]  758 	dec	sp
                                    759 ;	src/main.c:111: printf("║    W      ║ Write a string                                     ║\n\r");
      00372A 74 2A            [12]  760 	mov	a,#___str_5
      00372C C0 E0            [24]  761 	push	acc
      00372E 74 57            [12]  762 	mov	a,#(___str_5 >> 8)
      003730 C0 E0            [24]  763 	push	acc
      003732 74 80            [12]  764 	mov	a,#0x80
      003734 C0 E0            [24]  765 	push	acc
      003736 12 3C 78         [24]  766 	lcall	_printf
      003739 15 81            [12]  767 	dec	sp
      00373B 15 81            [12]  768 	dec	sp
      00373D 15 81            [12]  769 	dec	sp
                                    770 ;	src/main.c:112: printf("║    T      ║ Write to a specific position in the LCD           ║\n\r");
      00373F 74 75            [12]  771 	mov	a,#___str_6
      003741 C0 E0            [24]  772 	push	acc
      003743 74 57            [12]  773 	mov	a,#(___str_6 >> 8)
      003745 C0 E0            [24]  774 	push	acc
      003747 74 80            [12]  775 	mov	a,#0x80
      003749 C0 E0            [24]  776 	push	acc
      00374B 12 3C 78         [24]  777 	lcall	_printf
      00374E 15 81            [12]  778 	dec	sp
      003750 15 81            [12]  779 	dec	sp
      003752 15 81            [12]  780 	dec	sp
                                    781 ;	src/main.c:113: printf("║    E      ║ Clear the display                                 ║\n\r");
      003754 74 BF            [12]  782 	mov	a,#___str_7
      003756 C0 E0            [24]  783 	push	acc
      003758 74 57            [12]  784 	mov	a,#(___str_7 >> 8)
      00375A C0 E0            [24]  785 	push	acc
      00375C 74 80            [12]  786 	mov	a,#0x80
      00375E C0 E0            [24]  787 	push	acc
      003760 12 3C 78         [24]  788 	lcall	_printf
      003763 15 81            [12]  789 	dec	sp
      003765 15 81            [12]  790 	dec	sp
      003767 15 81            [12]  791 	dec	sp
                                    792 ;	src/main.c:114: printf("║    P      ║ Pause the Timer                                   ║\n\r\r");
      003769 74 09            [12]  793 	mov	a,#___str_8
      00376B C0 E0            [24]  794 	push	acc
      00376D 74 58            [12]  795 	mov	a,#(___str_8 >> 8)
      00376F C0 E0            [24]  796 	push	acc
      003771 74 80            [12]  797 	mov	a,#0x80
      003773 C0 E0            [24]  798 	push	acc
      003775 12 3C 78         [24]  799 	lcall	_printf
      003778 15 81            [12]  800 	dec	sp
      00377A 15 81            [12]  801 	dec	sp
      00377C 15 81            [12]  802 	dec	sp
                                    803 ;	src/main.c:115: printf("║    S      ║ Start the Timer                                   ║\n\r\r");
      00377E 74 54            [12]  804 	mov	a,#___str_9
      003780 C0 E0            [24]  805 	push	acc
      003782 74 58            [12]  806 	mov	a,#(___str_9 >> 8)
      003784 C0 E0            [24]  807 	push	acc
      003786 74 80            [12]  808 	mov	a,#0x80
      003788 C0 E0            [24]  809 	push	acc
      00378A 12 3C 78         [24]  810 	lcall	_printf
      00378D 15 81            [12]  811 	dec	sp
      00378F 15 81            [12]  812 	dec	sp
      003791 15 81            [12]  813 	dec	sp
                                    814 ;	src/main.c:116: printf("║    R      ║ Stop and reset the Timer                          ║\n\r\r");
      003793 74 9F            [12]  815 	mov	a,#___str_10
      003795 C0 E0            [24]  816 	push	acc
      003797 74 58            [12]  817 	mov	a,#(___str_10 >> 8)
      003799 C0 E0            [24]  818 	push	acc
      00379B 74 80            [12]  819 	mov	a,#0x80
      00379D C0 E0            [24]  820 	push	acc
      00379F 12 3C 78         [24]  821 	lcall	_printf
      0037A2 15 81            [12]  822 	dec	sp
      0037A4 15 81            [12]  823 	dec	sp
      0037A6 15 81            [12]  824 	dec	sp
                                    825 ;	src/main.c:117: printf("║    H      ║ Hexdump of DDRAM contents                         ║\n\r\r");
      0037A8 74 EA            [12]  826 	mov	a,#___str_11
      0037AA C0 E0            [24]  827 	push	acc
      0037AC 74 58            [12]  828 	mov	a,#(___str_11 >> 8)
      0037AE C0 E0            [24]  829 	push	acc
      0037B0 74 80            [12]  830 	mov	a,#0x80
      0037B2 C0 E0            [24]  831 	push	acc
      0037B4 12 3C 78         [24]  832 	lcall	_printf
      0037B7 15 81            [12]  833 	dec	sp
      0037B9 15 81            [12]  834 	dec	sp
      0037BB 15 81            [12]  835 	dec	sp
                                    836 ;	src/main.c:118: printf("║    C      ║ Hexdump of CGRAM contents                         ║\n\r\r");
      0037BD 74 35            [12]  837 	mov	a,#___str_12
      0037BF C0 E0            [24]  838 	push	acc
      0037C1 74 59            [12]  839 	mov	a,#(___str_12 >> 8)
      0037C3 C0 E0            [24]  840 	push	acc
      0037C5 74 80            [12]  841 	mov	a,#0x80
      0037C7 C0 E0            [24]  842 	push	acc
      0037C9 12 3C 78         [24]  843 	lcall	_printf
      0037CC 15 81            [12]  844 	dec	sp
      0037CE 15 81            [12]  845 	dec	sp
      0037D0 15 81            [12]  846 	dec	sp
                                    847 ;	src/main.c:119: printf("║    A      ║ Create a CGRAM character                          ║\n\r\r");
      0037D2 74 80            [12]  848 	mov	a,#___str_13
      0037D4 C0 E0            [24]  849 	push	acc
      0037D6 74 59            [12]  850 	mov	a,#(___str_13 >> 8)
      0037D8 C0 E0            [24]  851 	push	acc
      0037DA 74 80            [12]  852 	mov	a,#0x80
      0037DC C0 E0            [24]  853 	push	acc
      0037DE 12 3C 78         [24]  854 	lcall	_printf
      0037E1 15 81            [12]  855 	dec	sp
      0037E3 15 81            [12]  856 	dec	sp
      0037E5 15 81            [12]  857 	dec	sp
                                    858 ;	src/main.c:120: printf("║    D      ║ Display a CGRAM character                         ║\n\r\r");
      0037E7 74 CB            [12]  859 	mov	a,#___str_14
      0037E9 C0 E0            [24]  860 	push	acc
      0037EB 74 59            [12]  861 	mov	a,#(___str_14 >> 8)
      0037ED C0 E0            [24]  862 	push	acc
      0037EF 74 80            [12]  863 	mov	a,#0x80
      0037F1 C0 E0            [24]  864 	push	acc
      0037F3 12 3C 78         [24]  865 	lcall	_printf
      0037F6 15 81            [12]  866 	dec	sp
      0037F8 15 81            [12]  867 	dec	sp
      0037FA 15 81            [12]  868 	dec	sp
                                    869 ;	src/main.c:121: printf("║    ?      ║ Help menu                                         ║\n\r");
      0037FC 74 16            [12]  870 	mov	a,#___str_15
      0037FE C0 E0            [24]  871 	push	acc
      003800 74 5A            [12]  872 	mov	a,#(___str_15 >> 8)
      003802 C0 E0            [24]  873 	push	acc
      003804 74 80            [12]  874 	mov	a,#0x80
      003806 C0 E0            [24]  875 	push	acc
      003808 12 3C 78         [24]  876 	lcall	_printf
      00380B 15 81            [12]  877 	dec	sp
      00380D 15 81            [12]  878 	dec	sp
      00380F 15 81            [12]  879 	dec	sp
                                    880 ;	src/main.c:122: printf("╚═══════════╩════════════════════════════════════════════════════╝\n\r");
      003811 74 60            [12]  881 	mov	a,#___str_16
      003813 C0 E0            [24]  882 	push	acc
      003815 74 5A            [12]  883 	mov	a,#(___str_16 >> 8)
      003817 C0 E0            [24]  884 	push	acc
      003819 74 80            [12]  885 	mov	a,#0x80
      00381B C0 E0            [24]  886 	push	acc
      00381D 12 3C 78         [24]  887 	lcall	_printf
      003820 15 81            [12]  888 	dec	sp
      003822 15 81            [12]  889 	dec	sp
      003824 15 81            [12]  890 	dec	sp
                                    891 ;	src/main.c:124: while(1) {
      003826                        892 00102$:
                                    893 ;	src/main.c:126: printf("\r\n\r >> Enter Command:");
      003826 74 29            [12]  894 	mov	a,#___str_17
      003828 C0 E0            [24]  895 	push	acc
      00382A 74 5B            [12]  896 	mov	a,#(___str_17 >> 8)
      00382C C0 E0            [24]  897 	push	acc
      00382E 74 80            [12]  898 	mov	a,#0x80
      003830 C0 E0            [24]  899 	push	acc
      003832 12 3C 78         [24]  900 	lcall	_printf
      003835 15 81            [12]  901 	dec	sp
      003837 15 81            [12]  902 	dec	sp
      003839 15 81            [12]  903 	dec	sp
                                    904 ;	src/main.c:127: printf("\n\r");
      00383B 74 3F            [12]  905 	mov	a,#___str_18
      00383D C0 E0            [24]  906 	push	acc
      00383F 74 5B            [12]  907 	mov	a,#(___str_18 >> 8)
      003841 C0 E0            [24]  908 	push	acc
      003843 74 80            [12]  909 	mov	a,#0x80
      003845 C0 E0            [24]  910 	push	acc
      003847 12 3C 78         [24]  911 	lcall	_printf
      00384A 15 81            [12]  912 	dec	sp
      00384C 15 81            [12]  913 	dec	sp
      00384E 15 81            [12]  914 	dec	sp
                                    915 ;	src/main.c:128: char_received = getchar();  // Get user input
      003850 12 32 34         [24]  916 	lcall	_getchar
      003853 AE 82            [24]  917 	mov	r6,dpl
                                    918 ;	src/main.c:129: printf(" $$ ");
      003855 C0 06            [24]  919 	push	ar6
      003857 74 42            [12]  920 	mov	a,#___str_19
      003859 C0 E0            [24]  921 	push	acc
      00385B 74 5B            [12]  922 	mov	a,#(___str_19 >> 8)
      00385D C0 E0            [24]  923 	push	acc
      00385F 74 80            [12]  924 	mov	a,#0x80
      003861 C0 E0            [24]  925 	push	acc
      003863 12 3C 78         [24]  926 	lcall	_printf
      003866 15 81            [12]  927 	dec	sp
      003868 15 81            [12]  928 	dec	sp
      00386A 15 81            [12]  929 	dec	sp
      00386C D0 06            [24]  930 	pop	ar6
                                    931 ;	src/main.c:130: putchar(char_received);     // Echo the received character
      00386E 8E 05            [24]  932 	mov	ar5,r6
      003870 7F 00            [12]  933 	mov	r7,#0x00
      003872 8D 82            [24]  934 	mov	dpl,r5
      003874 8F 83            [24]  935 	mov	dph,r7
      003876 C0 06            [24]  936 	push	ar6
      003878 12 32 15         [24]  937 	lcall	_putchar
      00387B D0 06            [24]  938 	pop	ar6
                                    939 ;	src/main.c:131: command_parser(char_received);  // Parse the command and take appropriate action
      00387D 8E 82            [24]  940 	mov	dpl,r6
      00387F 12 20 6D         [24]  941 	lcall	_command_parser
                                    942 ;	src/main.c:133: }
      003882 80 A2            [24]  943 	sjmp	00102$
                                    944 	.area CSEG    (CODE)
                                    945 	.area CONST   (CODE)
                                    946 	.area CONST   (CODE)
      005439                        947 ___str_0:
      005439 E2                     948 	.db 0xe2
      00543A 95                     949 	.db 0x95
      00543B 94                     950 	.db 0x94
      00543C E2                     951 	.db 0xe2
      00543D 95                     952 	.db 0x95
      00543E 90                     953 	.db 0x90
      00543F E2                     954 	.db 0xe2
      005440 95                     955 	.db 0x95
      005441 90                     956 	.db 0x90
      005442 E2                     957 	.db 0xe2
      005443 95                     958 	.db 0x95
      005444 90                     959 	.db 0x90
      005445 E2                     960 	.db 0xe2
      005446 95                     961 	.db 0x95
      005447 90                     962 	.db 0x90
      005448 E2                     963 	.db 0xe2
      005449 95                     964 	.db 0x95
      00544A 90                     965 	.db 0x90
      00544B E2                     966 	.db 0xe2
      00544C 95                     967 	.db 0x95
      00544D 90                     968 	.db 0x90
      00544E E2                     969 	.db 0xe2
      00544F 95                     970 	.db 0x95
      005450 90                     971 	.db 0x90
      005451 E2                     972 	.db 0xe2
      005452 95                     973 	.db 0x95
      005453 90                     974 	.db 0x90
      005454 E2                     975 	.db 0xe2
      005455 95                     976 	.db 0x95
      005456 90                     977 	.db 0x90
      005457 E2                     978 	.db 0xe2
      005458 95                     979 	.db 0x95
      005459 90                     980 	.db 0x90
      00545A E2                     981 	.db 0xe2
      00545B 95                     982 	.db 0x95
      00545C 90                     983 	.db 0x90
      00545D E2                     984 	.db 0xe2
      00545E 95                     985 	.db 0x95
      00545F 90                     986 	.db 0x90
      005460 E2                     987 	.db 0xe2
      005461 95                     988 	.db 0x95
      005462 90                     989 	.db 0x90
      005463 E2                     990 	.db 0xe2
      005464 95                     991 	.db 0x95
      005465 90                     992 	.db 0x90
      005466 E2                     993 	.db 0xe2
      005467 95                     994 	.db 0x95
      005468 90                     995 	.db 0x90
      005469 E2                     996 	.db 0xe2
      00546A 95                     997 	.db 0x95
      00546B 90                     998 	.db 0x90
      00546C E2                     999 	.db 0xe2
      00546D 95                    1000 	.db 0x95
      00546E 90                    1001 	.db 0x90
      00546F E2                    1002 	.db 0xe2
      005470 95                    1003 	.db 0x95
      005471 90                    1004 	.db 0x90
      005472 E2                    1005 	.db 0xe2
      005473 95                    1006 	.db 0x95
      005474 90                    1007 	.db 0x90
      005475 E2                    1008 	.db 0xe2
      005476 95                    1009 	.db 0x95
      005477 90                    1010 	.db 0x90
      005478 E2                    1011 	.db 0xe2
      005479 95                    1012 	.db 0x95
      00547A 90                    1013 	.db 0x90
      00547B E2                    1014 	.db 0xe2
      00547C 95                    1015 	.db 0x95
      00547D 90                    1016 	.db 0x90
      00547E E2                    1017 	.db 0xe2
      00547F 95                    1018 	.db 0x95
      005480 90                    1019 	.db 0x90
      005481 E2                    1020 	.db 0xe2
      005482 95                    1021 	.db 0x95
      005483 90                    1022 	.db 0x90
      005484 E2                    1023 	.db 0xe2
      005485 95                    1024 	.db 0x95
      005486 90                    1025 	.db 0x90
      005487 E2                    1026 	.db 0xe2
      005488 95                    1027 	.db 0x95
      005489 90                    1028 	.db 0x90
      00548A E2                    1029 	.db 0xe2
      00548B 95                    1030 	.db 0x95
      00548C 90                    1031 	.db 0x90
      00548D E2                    1032 	.db 0xe2
      00548E 95                    1033 	.db 0x95
      00548F 90                    1034 	.db 0x90
      005490 E2                    1035 	.db 0xe2
      005491 95                    1036 	.db 0x95
      005492 90                    1037 	.db 0x90
      005493 E2                    1038 	.db 0xe2
      005494 95                    1039 	.db 0x95
      005495 90                    1040 	.db 0x90
      005496 E2                    1041 	.db 0xe2
      005497 95                    1042 	.db 0x95
      005498 90                    1043 	.db 0x90
      005499 E2                    1044 	.db 0xe2
      00549A 95                    1045 	.db 0x95
      00549B 90                    1046 	.db 0x90
      00549C E2                    1047 	.db 0xe2
      00549D 95                    1048 	.db 0x95
      00549E 90                    1049 	.db 0x90
      00549F E2                    1050 	.db 0xe2
      0054A0 95                    1051 	.db 0x95
      0054A1 90                    1052 	.db 0x90
      0054A2 E2                    1053 	.db 0xe2
      0054A3 95                    1054 	.db 0x95
      0054A4 90                    1055 	.db 0x90
      0054A5 E2                    1056 	.db 0xe2
      0054A6 95                    1057 	.db 0x95
      0054A7 90                    1058 	.db 0x90
      0054A8 E2                    1059 	.db 0xe2
      0054A9 95                    1060 	.db 0x95
      0054AA 90                    1061 	.db 0x90
      0054AB E2                    1062 	.db 0xe2
      0054AC 95                    1063 	.db 0x95
      0054AD 90                    1064 	.db 0x90
      0054AE E2                    1065 	.db 0xe2
      0054AF 95                    1066 	.db 0x95
      0054B0 90                    1067 	.db 0x90
      0054B1 E2                    1068 	.db 0xe2
      0054B2 95                    1069 	.db 0x95
      0054B3 90                    1070 	.db 0x90
      0054B4 E2                    1071 	.db 0xe2
      0054B5 95                    1072 	.db 0x95
      0054B6 90                    1073 	.db 0x90
      0054B7 E2                    1074 	.db 0xe2
      0054B8 95                    1075 	.db 0x95
      0054B9 90                    1076 	.db 0x90
      0054BA E2                    1077 	.db 0xe2
      0054BB 95                    1078 	.db 0x95
      0054BC 90                    1079 	.db 0x90
      0054BD E2                    1080 	.db 0xe2
      0054BE 95                    1081 	.db 0x95
      0054BF 90                    1082 	.db 0x90
      0054C0 E2                    1083 	.db 0xe2
      0054C1 95                    1084 	.db 0x95
      0054C2 90                    1085 	.db 0x90
      0054C3 E2                    1086 	.db 0xe2
      0054C4 95                    1087 	.db 0x95
      0054C5 90                    1088 	.db 0x90
      0054C6 E2                    1089 	.db 0xe2
      0054C7 95                    1090 	.db 0x95
      0054C8 90                    1091 	.db 0x90
      0054C9 E2                    1092 	.db 0xe2
      0054CA 95                    1093 	.db 0x95
      0054CB 90                    1094 	.db 0x90
      0054CC E2                    1095 	.db 0xe2
      0054CD 95                    1096 	.db 0x95
      0054CE 90                    1097 	.db 0x90
      0054CF E2                    1098 	.db 0xe2
      0054D0 95                    1099 	.db 0x95
      0054D1 90                    1100 	.db 0x90
      0054D2 E2                    1101 	.db 0xe2
      0054D3 95                    1102 	.db 0x95
      0054D4 90                    1103 	.db 0x90
      0054D5 E2                    1104 	.db 0xe2
      0054D6 95                    1105 	.db 0x95
      0054D7 90                    1106 	.db 0x90
      0054D8 E2                    1107 	.db 0xe2
      0054D9 95                    1108 	.db 0x95
      0054DA 90                    1109 	.db 0x90
      0054DB E2                    1110 	.db 0xe2
      0054DC 95                    1111 	.db 0x95
      0054DD 90                    1112 	.db 0x90
      0054DE E2                    1113 	.db 0xe2
      0054DF 95                    1114 	.db 0x95
      0054E0 90                    1115 	.db 0x90
      0054E1 E2                    1116 	.db 0xe2
      0054E2 95                    1117 	.db 0x95
      0054E3 90                    1118 	.db 0x90
      0054E4 E2                    1119 	.db 0xe2
      0054E5 95                    1120 	.db 0x95
      0054E6 90                    1121 	.db 0x90
      0054E7 E2                    1122 	.db 0xe2
      0054E8 95                    1123 	.db 0x95
      0054E9 90                    1124 	.db 0x90
      0054EA E2                    1125 	.db 0xe2
      0054EB 95                    1126 	.db 0x95
      0054EC 90                    1127 	.db 0x90
      0054ED E2                    1128 	.db 0xe2
      0054EE 95                    1129 	.db 0x95
      0054EF 90                    1130 	.db 0x90
      0054F0 E2                    1131 	.db 0xe2
      0054F1 95                    1132 	.db 0x95
      0054F2 90                    1133 	.db 0x90
      0054F3 E2                    1134 	.db 0xe2
      0054F4 95                    1135 	.db 0x95
      0054F5 90                    1136 	.db 0x90
      0054F6 E2                    1137 	.db 0xe2
      0054F7 95                    1138 	.db 0x95
      0054F8 90                    1139 	.db 0x90
      0054F9 E2                    1140 	.db 0xe2
      0054FA 95                    1141 	.db 0x95
      0054FB 90                    1142 	.db 0x90
      0054FC E2                    1143 	.db 0xe2
      0054FD 95                    1144 	.db 0x95
      0054FE 97                    1145 	.db 0x97
      0054FF 0A                    1146 	.db 0x0a
      005500 0D                    1147 	.db 0x0d
      005501 00                    1148 	.db 0x00
                                   1149 	.area CSEG    (CODE)
                                   1150 	.area CONST   (CODE)
      005502                       1151 ___str_1:
      005502 E2                    1152 	.db 0xe2
      005503 95                    1153 	.db 0x95
      005504 91                    1154 	.db 0x91
      005505 20 20 20 20 20 20 20  1155 	.ascii "                     Welcome to LCD Demo                    "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             57 65 6C 63 6F 6D 65
             20 74 6F 20 4C 43 44
             20 44 65 6D 6F 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005541 20 20 20 20 20        1156 	.ascii "     "
      005546 E2                    1157 	.db 0xe2
      005547 95                    1158 	.db 0x95
      005548 91                    1159 	.db 0x91
      005549 0A                    1160 	.db 0x0a
      00554A 0D                    1161 	.db 0x0d
      00554B 00                    1162 	.db 0x00
                                   1163 	.area CSEG    (CODE)
                                   1164 	.area CONST   (CODE)
      00554C                       1165 ___str_2:
      00554C E2                    1166 	.db 0xe2
      00554D 95                    1167 	.db 0x95
      00554E A0                    1168 	.db 0xa0
      00554F E2                    1169 	.db 0xe2
      005550 95                    1170 	.db 0x95
      005551 90                    1171 	.db 0x90
      005552 E2                    1172 	.db 0xe2
      005553 95                    1173 	.db 0x95
      005554 90                    1174 	.db 0x90
      005555 E2                    1175 	.db 0xe2
      005556 95                    1176 	.db 0x95
      005557 90                    1177 	.db 0x90
      005558 E2                    1178 	.db 0xe2
      005559 95                    1179 	.db 0x95
      00555A 90                    1180 	.db 0x90
      00555B E2                    1181 	.db 0xe2
      00555C 95                    1182 	.db 0x95
      00555D 90                    1183 	.db 0x90
      00555E E2                    1184 	.db 0xe2
      00555F 95                    1185 	.db 0x95
      005560 90                    1186 	.db 0x90
      005561 E2                    1187 	.db 0xe2
      005562 95                    1188 	.db 0x95
      005563 90                    1189 	.db 0x90
      005564 E2                    1190 	.db 0xe2
      005565 95                    1191 	.db 0x95
      005566 90                    1192 	.db 0x90
      005567 E2                    1193 	.db 0xe2
      005568 95                    1194 	.db 0x95
      005569 90                    1195 	.db 0x90
      00556A E2                    1196 	.db 0xe2
      00556B 95                    1197 	.db 0x95
      00556C 90                    1198 	.db 0x90
      00556D E2                    1199 	.db 0xe2
      00556E 95                    1200 	.db 0x95
      00556F 90                    1201 	.db 0x90
      005570 E2                    1202 	.db 0xe2
      005571 95                    1203 	.db 0x95
      005572 A6                    1204 	.db 0xa6
      005573 E2                    1205 	.db 0xe2
      005574 95                    1206 	.db 0x95
      005575 90                    1207 	.db 0x90
      005576 E2                    1208 	.db 0xe2
      005577 95                    1209 	.db 0x95
      005578 90                    1210 	.db 0x90
      005579 E2                    1211 	.db 0xe2
      00557A 95                    1212 	.db 0x95
      00557B 90                    1213 	.db 0x90
      00557C E2                    1214 	.db 0xe2
      00557D 95                    1215 	.db 0x95
      00557E 90                    1216 	.db 0x90
      00557F E2                    1217 	.db 0xe2
      005580 95                    1218 	.db 0x95
      005581 90                    1219 	.db 0x90
      005582 E2                    1220 	.db 0xe2
      005583 95                    1221 	.db 0x95
      005584 90                    1222 	.db 0x90
      005585 E2                    1223 	.db 0xe2
      005586 95                    1224 	.db 0x95
      005587 90                    1225 	.db 0x90
      005588 E2                    1226 	.db 0xe2
      005589 95                    1227 	.db 0x95
      00558A 90                    1228 	.db 0x90
      00558B E2                    1229 	.db 0xe2
      00558C 95                    1230 	.db 0x95
      00558D 90                    1231 	.db 0x90
      00558E E2                    1232 	.db 0xe2
      00558F 95                    1233 	.db 0x95
      005590 90                    1234 	.db 0x90
      005591 E2                    1235 	.db 0xe2
      005592 95                    1236 	.db 0x95
      005593 90                    1237 	.db 0x90
      005594 E2                    1238 	.db 0xe2
      005595 95                    1239 	.db 0x95
      005596 90                    1240 	.db 0x90
      005597 E2                    1241 	.db 0xe2
      005598 95                    1242 	.db 0x95
      005599 90                    1243 	.db 0x90
      00559A E2                    1244 	.db 0xe2
      00559B 95                    1245 	.db 0x95
      00559C 90                    1246 	.db 0x90
      00559D E2                    1247 	.db 0xe2
      00559E 95                    1248 	.db 0x95
      00559F 90                    1249 	.db 0x90
      0055A0 E2                    1250 	.db 0xe2
      0055A1 95                    1251 	.db 0x95
      0055A2 90                    1252 	.db 0x90
      0055A3 E2                    1253 	.db 0xe2
      0055A4 95                    1254 	.db 0x95
      0055A5 90                    1255 	.db 0x90
      0055A6 E2                    1256 	.db 0xe2
      0055A7 95                    1257 	.db 0x95
      0055A8 90                    1258 	.db 0x90
      0055A9 E2                    1259 	.db 0xe2
      0055AA 95                    1260 	.db 0x95
      0055AB 90                    1261 	.db 0x90
      0055AC E2                    1262 	.db 0xe2
      0055AD 95                    1263 	.db 0x95
      0055AE 90                    1264 	.db 0x90
      0055AF E2                    1265 	.db 0xe2
      0055B0 95                    1266 	.db 0x95
      0055B1 90                    1267 	.db 0x90
      0055B2 E2                    1268 	.db 0xe2
      0055B3 95                    1269 	.db 0x95
      0055B4 90                    1270 	.db 0x90
      0055B5 E2                    1271 	.db 0xe2
      0055B6 95                    1272 	.db 0x95
      0055B7 90                    1273 	.db 0x90
      0055B8 E2                    1274 	.db 0xe2
      0055B9 95                    1275 	.db 0x95
      0055BA 90                    1276 	.db 0x90
      0055BB E2                    1277 	.db 0xe2
      0055BC 95                    1278 	.db 0x95
      0055BD 90                    1279 	.db 0x90
      0055BE E2                    1280 	.db 0xe2
      0055BF 95                    1281 	.db 0x95
      0055C0 90                    1282 	.db 0x90
      0055C1 E2                    1283 	.db 0xe2
      0055C2 95                    1284 	.db 0x95
      0055C3 90                    1285 	.db 0x90
      0055C4 E2                    1286 	.db 0xe2
      0055C5 95                    1287 	.db 0x95
      0055C6 90                    1288 	.db 0x90
      0055C7 E2                    1289 	.db 0xe2
      0055C8 95                    1290 	.db 0x95
      0055C9 90                    1291 	.db 0x90
      0055CA E2                    1292 	.db 0xe2
      0055CB 95                    1293 	.db 0x95
      0055CC 90                    1294 	.db 0x90
      0055CD E2                    1295 	.db 0xe2
      0055CE 95                    1296 	.db 0x95
      0055CF 90                    1297 	.db 0x90
      0055D0 E2                    1298 	.db 0xe2
      0055D1 95                    1299 	.db 0x95
      0055D2 90                    1300 	.db 0x90
      0055D3 E2                    1301 	.db 0xe2
      0055D4 95                    1302 	.db 0x95
      0055D5 90                    1303 	.db 0x90
      0055D6 E2                    1304 	.db 0xe2
      0055D7 95                    1305 	.db 0x95
      0055D8 90                    1306 	.db 0x90
      0055D9 E2                    1307 	.db 0xe2
      0055DA 95                    1308 	.db 0x95
      0055DB 90                    1309 	.db 0x90
      0055DC E2                    1310 	.db 0xe2
      0055DD 95                    1311 	.db 0x95
      0055DE 90                    1312 	.db 0x90
      0055DF E2                    1313 	.db 0xe2
      0055E0 95                    1314 	.db 0x95
      0055E1 90                    1315 	.db 0x90
      0055E2 E2                    1316 	.db 0xe2
      0055E3 95                    1317 	.db 0x95
      0055E4 90                    1318 	.db 0x90
      0055E5 E2                    1319 	.db 0xe2
      0055E6 95                    1320 	.db 0x95
      0055E7 90                    1321 	.db 0x90
      0055E8 E2                    1322 	.db 0xe2
      0055E9 95                    1323 	.db 0x95
      0055EA 90                    1324 	.db 0x90
      0055EB E2                    1325 	.db 0xe2
      0055EC 95                    1326 	.db 0x95
      0055ED 90                    1327 	.db 0x90
      0055EE E2                    1328 	.db 0xe2
      0055EF 95                    1329 	.db 0x95
      0055F0 90                    1330 	.db 0x90
      0055F1 E2                    1331 	.db 0xe2
      0055F2 95                    1332 	.db 0x95
      0055F3 90                    1333 	.db 0x90
      0055F4 E2                    1334 	.db 0xe2
      0055F5 95                    1335 	.db 0x95
      0055F6 90                    1336 	.db 0x90
      0055F7 E2                    1337 	.db 0xe2
      0055F8 95                    1338 	.db 0x95
      0055F9 90                    1339 	.db 0x90
      0055FA E2                    1340 	.db 0xe2
      0055FB 95                    1341 	.db 0x95
      0055FC 90                    1342 	.db 0x90
      0055FD E2                    1343 	.db 0xe2
      0055FE 95                    1344 	.db 0x95
      0055FF 90                    1345 	.db 0x90
      005600 E2                    1346 	.db 0xe2
      005601 95                    1347 	.db 0x95
      005602 90                    1348 	.db 0x90
      005603 E2                    1349 	.db 0xe2
      005604 95                    1350 	.db 0x95
      005605 90                    1351 	.db 0x90
      005606 E2                    1352 	.db 0xe2
      005607 95                    1353 	.db 0x95
      005608 90                    1354 	.db 0x90
      005609 E2                    1355 	.db 0xe2
      00560A 95                    1356 	.db 0x95
      00560B 90                    1357 	.db 0x90
      00560C E2                    1358 	.db 0xe2
      00560D 95                    1359 	.db 0x95
      00560E 90                    1360 	.db 0x90
      00560F E2                    1361 	.db 0xe2
      005610 95                    1362 	.db 0x95
      005611 A3                    1363 	.db 0xa3
      005612 0A                    1364 	.db 0x0a
      005613 0D                    1365 	.db 0x0d
      005614 00                    1366 	.db 0x00
                                   1367 	.area CSEG    (CODE)
                                   1368 	.area CONST   (CODE)
      005615                       1369 ___str_3:
      005615 E2                    1370 	.db 0xe2
      005616 95                    1371 	.db 0x95
      005617 91                    1372 	.db 0x91
      005618 20 43 6F 6D 6D 61 6E  1373 	.ascii " Command   "
             64 20 20 20
      005623 E2                    1374 	.db 0xe2
      005624 95                    1375 	.db 0x95
      005625 91                    1376 	.db 0x91
      005626 20 20 20 20 20 20 20  1377 	.ascii "                    Description                      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 44
             65 73 63 72 69 70 74
             69 6F 6E 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00565B E2                    1378 	.db 0xe2
      00565C 95                    1379 	.db 0x95
      00565D 91                    1380 	.db 0x91
      00565E 0A                    1381 	.db 0x0a
      00565F 0D                    1382 	.db 0x0d
      005660 00                    1383 	.db 0x00
                                   1384 	.area CSEG    (CODE)
                                   1385 	.area CONST   (CODE)
      005661                       1386 ___str_4:
      005661 E2                    1387 	.db 0xe2
      005662 95                    1388 	.db 0x95
      005663 A0                    1389 	.db 0xa0
      005664 E2                    1390 	.db 0xe2
      005665 95                    1391 	.db 0x95
      005666 90                    1392 	.db 0x90
      005667 E2                    1393 	.db 0xe2
      005668 95                    1394 	.db 0x95
      005669 90                    1395 	.db 0x90
      00566A E2                    1396 	.db 0xe2
      00566B 95                    1397 	.db 0x95
      00566C 90                    1398 	.db 0x90
      00566D E2                    1399 	.db 0xe2
      00566E 95                    1400 	.db 0x95
      00566F 90                    1401 	.db 0x90
      005670 E2                    1402 	.db 0xe2
      005671 95                    1403 	.db 0x95
      005672 90                    1404 	.db 0x90
      005673 E2                    1405 	.db 0xe2
      005674 95                    1406 	.db 0x95
      005675 90                    1407 	.db 0x90
      005676 E2                    1408 	.db 0xe2
      005677 95                    1409 	.db 0x95
      005678 90                    1410 	.db 0x90
      005679 E2                    1411 	.db 0xe2
      00567A 95                    1412 	.db 0x95
      00567B 90                    1413 	.db 0x90
      00567C E2                    1414 	.db 0xe2
      00567D 95                    1415 	.db 0x95
      00567E 90                    1416 	.db 0x90
      00567F E2                    1417 	.db 0xe2
      005680 95                    1418 	.db 0x95
      005681 90                    1419 	.db 0x90
      005682 E2                    1420 	.db 0xe2
      005683 95                    1421 	.db 0x95
      005684 90                    1422 	.db 0x90
      005685 E2                    1423 	.db 0xe2
      005686 95                    1424 	.db 0x95
      005687 AC                    1425 	.db 0xac
      005688 E2                    1426 	.db 0xe2
      005689 95                    1427 	.db 0x95
      00568A 90                    1428 	.db 0x90
      00568B E2                    1429 	.db 0xe2
      00568C 95                    1430 	.db 0x95
      00568D 90                    1431 	.db 0x90
      00568E E2                    1432 	.db 0xe2
      00568F 95                    1433 	.db 0x95
      005690 90                    1434 	.db 0x90
      005691 E2                    1435 	.db 0xe2
      005692 95                    1436 	.db 0x95
      005693 90                    1437 	.db 0x90
      005694 E2                    1438 	.db 0xe2
      005695 95                    1439 	.db 0x95
      005696 90                    1440 	.db 0x90
      005697 E2                    1441 	.db 0xe2
      005698 95                    1442 	.db 0x95
      005699 90                    1443 	.db 0x90
      00569A E2                    1444 	.db 0xe2
      00569B 95                    1445 	.db 0x95
      00569C 90                    1446 	.db 0x90
      00569D E2                    1447 	.db 0xe2
      00569E 95                    1448 	.db 0x95
      00569F 90                    1449 	.db 0x90
      0056A0 E2                    1450 	.db 0xe2
      0056A1 95                    1451 	.db 0x95
      0056A2 90                    1452 	.db 0x90
      0056A3 E2                    1453 	.db 0xe2
      0056A4 95                    1454 	.db 0x95
      0056A5 90                    1455 	.db 0x90
      0056A6 E2                    1456 	.db 0xe2
      0056A7 95                    1457 	.db 0x95
      0056A8 90                    1458 	.db 0x90
      0056A9 E2                    1459 	.db 0xe2
      0056AA 95                    1460 	.db 0x95
      0056AB 90                    1461 	.db 0x90
      0056AC E2                    1462 	.db 0xe2
      0056AD 95                    1463 	.db 0x95
      0056AE 90                    1464 	.db 0x90
      0056AF E2                    1465 	.db 0xe2
      0056B0 95                    1466 	.db 0x95
      0056B1 90                    1467 	.db 0x90
      0056B2 E2                    1468 	.db 0xe2
      0056B3 95                    1469 	.db 0x95
      0056B4 90                    1470 	.db 0x90
      0056B5 E2                    1471 	.db 0xe2
      0056B6 95                    1472 	.db 0x95
      0056B7 90                    1473 	.db 0x90
      0056B8 E2                    1474 	.db 0xe2
      0056B9 95                    1475 	.db 0x95
      0056BA 90                    1476 	.db 0x90
      0056BB E2                    1477 	.db 0xe2
      0056BC 95                    1478 	.db 0x95
      0056BD 90                    1479 	.db 0x90
      0056BE E2                    1480 	.db 0xe2
      0056BF 95                    1481 	.db 0x95
      0056C0 90                    1482 	.db 0x90
      0056C1 E2                    1483 	.db 0xe2
      0056C2 95                    1484 	.db 0x95
      0056C3 90                    1485 	.db 0x90
      0056C4 E2                    1486 	.db 0xe2
      0056C5 95                    1487 	.db 0x95
      0056C6 90                    1488 	.db 0x90
      0056C7 E2                    1489 	.db 0xe2
      0056C8 95                    1490 	.db 0x95
      0056C9 90                    1491 	.db 0x90
      0056CA E2                    1492 	.db 0xe2
      0056CB 95                    1493 	.db 0x95
      0056CC 90                    1494 	.db 0x90
      0056CD E2                    1495 	.db 0xe2
      0056CE 95                    1496 	.db 0x95
      0056CF 90                    1497 	.db 0x90
      0056D0 E2                    1498 	.db 0xe2
      0056D1 95                    1499 	.db 0x95
      0056D2 90                    1500 	.db 0x90
      0056D3 E2                    1501 	.db 0xe2
      0056D4 95                    1502 	.db 0x95
      0056D5 90                    1503 	.db 0x90
      0056D6 E2                    1504 	.db 0xe2
      0056D7 95                    1505 	.db 0x95
      0056D8 90                    1506 	.db 0x90
      0056D9 E2                    1507 	.db 0xe2
      0056DA 95                    1508 	.db 0x95
      0056DB 90                    1509 	.db 0x90
      0056DC E2                    1510 	.db 0xe2
      0056DD 95                    1511 	.db 0x95
      0056DE 90                    1512 	.db 0x90
      0056DF E2                    1513 	.db 0xe2
      0056E0 95                    1514 	.db 0x95
      0056E1 90                    1515 	.db 0x90
      0056E2 E2                    1516 	.db 0xe2
      0056E3 95                    1517 	.db 0x95
      0056E4 90                    1518 	.db 0x90
      0056E5 E2                    1519 	.db 0xe2
      0056E6 95                    1520 	.db 0x95
      0056E7 90                    1521 	.db 0x90
      0056E8 E2                    1522 	.db 0xe2
      0056E9 95                    1523 	.db 0x95
      0056EA 90                    1524 	.db 0x90
      0056EB E2                    1525 	.db 0xe2
      0056EC 95                    1526 	.db 0x95
      0056ED 90                    1527 	.db 0x90
      0056EE E2                    1528 	.db 0xe2
      0056EF 95                    1529 	.db 0x95
      0056F0 90                    1530 	.db 0x90
      0056F1 E2                    1531 	.db 0xe2
      0056F2 95                    1532 	.db 0x95
      0056F3 90                    1533 	.db 0x90
      0056F4 E2                    1534 	.db 0xe2
      0056F5 95                    1535 	.db 0x95
      0056F6 90                    1536 	.db 0x90
      0056F7 E2                    1537 	.db 0xe2
      0056F8 95                    1538 	.db 0x95
      0056F9 90                    1539 	.db 0x90
      0056FA E2                    1540 	.db 0xe2
      0056FB 95                    1541 	.db 0x95
      0056FC 90                    1542 	.db 0x90
      0056FD E2                    1543 	.db 0xe2
      0056FE 95                    1544 	.db 0x95
      0056FF 90                    1545 	.db 0x90
      005700 E2                    1546 	.db 0xe2
      005701 95                    1547 	.db 0x95
      005702 90                    1548 	.db 0x90
      005703 E2                    1549 	.db 0xe2
      005704 95                    1550 	.db 0x95
      005705 90                    1551 	.db 0x90
      005706 E2                    1552 	.db 0xe2
      005707 95                    1553 	.db 0x95
      005708 90                    1554 	.db 0x90
      005709 E2                    1555 	.db 0xe2
      00570A 95                    1556 	.db 0x95
      00570B 90                    1557 	.db 0x90
      00570C E2                    1558 	.db 0xe2
      00570D 95                    1559 	.db 0x95
      00570E 90                    1560 	.db 0x90
      00570F E2                    1561 	.db 0xe2
      005710 95                    1562 	.db 0x95
      005711 90                    1563 	.db 0x90
      005712 E2                    1564 	.db 0xe2
      005713 95                    1565 	.db 0x95
      005714 90                    1566 	.db 0x90
      005715 E2                    1567 	.db 0xe2
      005716 95                    1568 	.db 0x95
      005717 90                    1569 	.db 0x90
      005718 E2                    1570 	.db 0xe2
      005719 95                    1571 	.db 0x95
      00571A 90                    1572 	.db 0x90
      00571B E2                    1573 	.db 0xe2
      00571C 95                    1574 	.db 0x95
      00571D 90                    1575 	.db 0x90
      00571E E2                    1576 	.db 0xe2
      00571F 95                    1577 	.db 0x95
      005720 90                    1578 	.db 0x90
      005721 E2                    1579 	.db 0xe2
      005722 95                    1580 	.db 0x95
      005723 90                    1581 	.db 0x90
      005724 E2                    1582 	.db 0xe2
      005725 95                    1583 	.db 0x95
      005726 A3                    1584 	.db 0xa3
      005727 0A                    1585 	.db 0x0a
      005728 0D                    1586 	.db 0x0d
      005729 00                    1587 	.db 0x00
                                   1588 	.area CSEG    (CODE)
                                   1589 	.area CONST   (CODE)
      00572A                       1590 ___str_5:
      00572A E2                    1591 	.db 0xe2
      00572B 95                    1592 	.db 0x95
      00572C 91                    1593 	.db 0x91
      00572D 20 20 20 20 57 20 20  1594 	.ascii "    W      "
             20 20 20 20
      005738 E2                    1595 	.db 0xe2
      005739 95                    1596 	.db 0x95
      00573A 91                    1597 	.db 0x91
      00573B 20 57 72 69 74 65 20  1598 	.ascii " Write a string                                     "
             61 20 73 74 72 69 6E
             67 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      00576F E2                    1599 	.db 0xe2
      005770 95                    1600 	.db 0x95
      005771 91                    1601 	.db 0x91
      005772 0A                    1602 	.db 0x0a
      005773 0D                    1603 	.db 0x0d
      005774 00                    1604 	.db 0x00
                                   1605 	.area CSEG    (CODE)
                                   1606 	.area CONST   (CODE)
      005775                       1607 ___str_6:
      005775 E2                    1608 	.db 0xe2
      005776 95                    1609 	.db 0x95
      005777 91                    1610 	.db 0x91
      005778 20 20 20 20 54 20 20  1611 	.ascii "    T      "
             20 20 20 20
      005783 E2                    1612 	.db 0xe2
      005784 95                    1613 	.db 0x95
      005785 91                    1614 	.db 0x91
      005786 20 57 72 69 74 65 20  1615 	.ascii " Write to a specific position in the LCD           "
             74 6F 20 61 20 73 70
             65 63 69 66 69 63 20
             70 6F 73 69 74 69 6F
             6E 20 69 6E 20 74 68
             65 20 4C 43 44 20 20
             20 20 20 20 20 20 20
             20 20
      0057B9 E2                    1616 	.db 0xe2
      0057BA 95                    1617 	.db 0x95
      0057BB 91                    1618 	.db 0x91
      0057BC 0A                    1619 	.db 0x0a
      0057BD 0D                    1620 	.db 0x0d
      0057BE 00                    1621 	.db 0x00
                                   1622 	.area CSEG    (CODE)
                                   1623 	.area CONST   (CODE)
      0057BF                       1624 ___str_7:
      0057BF E2                    1625 	.db 0xe2
      0057C0 95                    1626 	.db 0x95
      0057C1 91                    1627 	.db 0x91
      0057C2 20 20 20 20 45 20 20  1628 	.ascii "    E      "
             20 20 20 20
      0057CD E2                    1629 	.db 0xe2
      0057CE 95                    1630 	.db 0x95
      0057CF 91                    1631 	.db 0x91
      0057D0 20 43 6C 65 61 72 20  1632 	.ascii " Clear the display                                 "
             74 68 65 20 64 69 73
             70 6C 61 79 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      005803 E2                    1633 	.db 0xe2
      005804 95                    1634 	.db 0x95
      005805 91                    1635 	.db 0x91
      005806 0A                    1636 	.db 0x0a
      005807 0D                    1637 	.db 0x0d
      005808 00                    1638 	.db 0x00
                                   1639 	.area CSEG    (CODE)
                                   1640 	.area CONST   (CODE)
      005809                       1641 ___str_8:
      005809 E2                    1642 	.db 0xe2
      00580A 95                    1643 	.db 0x95
      00580B 91                    1644 	.db 0x91
      00580C 20 20 20 20 50 20 20  1645 	.ascii "    P      "
             20 20 20 20
      005817 E2                    1646 	.db 0xe2
      005818 95                    1647 	.db 0x95
      005819 91                    1648 	.db 0x91
      00581A 20 50 61 75 73 65 20  1649 	.ascii " Pause the Timer                                   "
             74 68 65 20 54 69 6D
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00584D E2                    1650 	.db 0xe2
      00584E 95                    1651 	.db 0x95
      00584F 91                    1652 	.db 0x91
      005850 0A                    1653 	.db 0x0a
      005851 0D                    1654 	.db 0x0d
      005852 0D                    1655 	.db 0x0d
      005853 00                    1656 	.db 0x00
                                   1657 	.area CSEG    (CODE)
                                   1658 	.area CONST   (CODE)
      005854                       1659 ___str_9:
      005854 E2                    1660 	.db 0xe2
      005855 95                    1661 	.db 0x95
      005856 91                    1662 	.db 0x91
      005857 20 20 20 20 53 20 20  1663 	.ascii "    S      "
             20 20 20 20
      005862 E2                    1664 	.db 0xe2
      005863 95                    1665 	.db 0x95
      005864 91                    1666 	.db 0x91
      005865 20 53 74 61 72 74 20  1667 	.ascii " Start the Timer                                   "
             74 68 65 20 54 69 6D
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      005898 E2                    1668 	.db 0xe2
      005899 95                    1669 	.db 0x95
      00589A 91                    1670 	.db 0x91
      00589B 0A                    1671 	.db 0x0a
      00589C 0D                    1672 	.db 0x0d
      00589D 0D                    1673 	.db 0x0d
      00589E 00                    1674 	.db 0x00
                                   1675 	.area CSEG    (CODE)
                                   1676 	.area CONST   (CODE)
      00589F                       1677 ___str_10:
      00589F E2                    1678 	.db 0xe2
      0058A0 95                    1679 	.db 0x95
      0058A1 91                    1680 	.db 0x91
      0058A2 20 20 20 20 52 20 20  1681 	.ascii "    R      "
             20 20 20 20
      0058AD E2                    1682 	.db 0xe2
      0058AE 95                    1683 	.db 0x95
      0058AF 91                    1684 	.db 0x91
      0058B0 20 53 74 6F 70 20 61  1685 	.ascii " Stop and reset the Timer                          "
             6E 64 20 72 65 73 65
             74 20 74 68 65 20 54
             69 6D 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0058E3 E2                    1686 	.db 0xe2
      0058E4 95                    1687 	.db 0x95
      0058E5 91                    1688 	.db 0x91
      0058E6 0A                    1689 	.db 0x0a
      0058E7 0D                    1690 	.db 0x0d
      0058E8 0D                    1691 	.db 0x0d
      0058E9 00                    1692 	.db 0x00
                                   1693 	.area CSEG    (CODE)
                                   1694 	.area CONST   (CODE)
      0058EA                       1695 ___str_11:
      0058EA E2                    1696 	.db 0xe2
      0058EB 95                    1697 	.db 0x95
      0058EC 91                    1698 	.db 0x91
      0058ED 20 20 20 20 48 20 20  1699 	.ascii "    H      "
             20 20 20 20
      0058F8 E2                    1700 	.db 0xe2
      0058F9 95                    1701 	.db 0x95
      0058FA 91                    1702 	.db 0x91
      0058FB 20 48 65 78 64 75 6D  1703 	.ascii " Hexdump of DDRAM contents                         "
             70 20 6F 66 20 44 44
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00592E E2                    1704 	.db 0xe2
      00592F 95                    1705 	.db 0x95
      005930 91                    1706 	.db 0x91
      005931 0A                    1707 	.db 0x0a
      005932 0D                    1708 	.db 0x0d
      005933 0D                    1709 	.db 0x0d
      005934 00                    1710 	.db 0x00
                                   1711 	.area CSEG    (CODE)
                                   1712 	.area CONST   (CODE)
      005935                       1713 ___str_12:
      005935 E2                    1714 	.db 0xe2
      005936 95                    1715 	.db 0x95
      005937 91                    1716 	.db 0x91
      005938 20 20 20 20 43 20 20  1717 	.ascii "    C      "
             20 20 20 20
      005943 E2                    1718 	.db 0xe2
      005944 95                    1719 	.db 0x95
      005945 91                    1720 	.db 0x91
      005946 20 48 65 78 64 75 6D  1721 	.ascii " Hexdump of CGRAM contents                         "
             70 20 6F 66 20 43 47
             52 41 4D 20 63 6F 6E
             74 65 6E 74 73 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      005979 E2                    1722 	.db 0xe2
      00597A 95                    1723 	.db 0x95
      00597B 91                    1724 	.db 0x91
      00597C 0A                    1725 	.db 0x0a
      00597D 0D                    1726 	.db 0x0d
      00597E 0D                    1727 	.db 0x0d
      00597F 00                    1728 	.db 0x00
                                   1729 	.area CSEG    (CODE)
                                   1730 	.area CONST   (CODE)
      005980                       1731 ___str_13:
      005980 E2                    1732 	.db 0xe2
      005981 95                    1733 	.db 0x95
      005982 91                    1734 	.db 0x91
      005983 20 20 20 20 41 20 20  1735 	.ascii "    A      "
             20 20 20 20
      00598E E2                    1736 	.db 0xe2
      00598F 95                    1737 	.db 0x95
      005990 91                    1738 	.db 0x91
      005991 20 43 72 65 61 74 65  1739 	.ascii " Create a CGRAM character                          "
             20 61 20 43 47 52 41
             4D 20 63 68 61 72 61
             63 74 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0059C4 E2                    1740 	.db 0xe2
      0059C5 95                    1741 	.db 0x95
      0059C6 91                    1742 	.db 0x91
      0059C7 0A                    1743 	.db 0x0a
      0059C8 0D                    1744 	.db 0x0d
      0059C9 0D                    1745 	.db 0x0d
      0059CA 00                    1746 	.db 0x00
                                   1747 	.area CSEG    (CODE)
                                   1748 	.area CONST   (CODE)
      0059CB                       1749 ___str_14:
      0059CB E2                    1750 	.db 0xe2
      0059CC 95                    1751 	.db 0x95
      0059CD 91                    1752 	.db 0x91
      0059CE 20 20 20 20 44 20 20  1753 	.ascii "    D      "
             20 20 20 20
      0059D9 E2                    1754 	.db 0xe2
      0059DA 95                    1755 	.db 0x95
      0059DB 91                    1756 	.db 0x91
      0059DC 20 44 69 73 70 6C 61  1757 	.ascii " Display a CGRAM character                         "
             79 20 61 20 43 47 52
             41 4D 20 63 68 61 72
             61 63 74 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      005A0F E2                    1758 	.db 0xe2
      005A10 95                    1759 	.db 0x95
      005A11 91                    1760 	.db 0x91
      005A12 0A                    1761 	.db 0x0a
      005A13 0D                    1762 	.db 0x0d
      005A14 0D                    1763 	.db 0x0d
      005A15 00                    1764 	.db 0x00
                                   1765 	.area CSEG    (CODE)
                                   1766 	.area CONST   (CODE)
      005A16                       1767 ___str_15:
      005A16 E2                    1768 	.db 0xe2
      005A17 95                    1769 	.db 0x95
      005A18 91                    1770 	.db 0x91
      005A19 20 20 20 20 3F 20 20  1771 	.ascii "    ?      "
             20 20 20 20
      005A24 E2                    1772 	.db 0xe2
      005A25 95                    1773 	.db 0x95
      005A26 91                    1774 	.db 0x91
      005A27 20 48 65 6C 70 20 6D  1775 	.ascii " Help menu                                         "
             65 6E 75 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      005A5A E2                    1776 	.db 0xe2
      005A5B 95                    1777 	.db 0x95
      005A5C 91                    1778 	.db 0x91
      005A5D 0A                    1779 	.db 0x0a
      005A5E 0D                    1780 	.db 0x0d
      005A5F 00                    1781 	.db 0x00
                                   1782 	.area CSEG    (CODE)
                                   1783 	.area CONST   (CODE)
      005A60                       1784 ___str_16:
      005A60 E2                    1785 	.db 0xe2
      005A61 95                    1786 	.db 0x95
      005A62 9A                    1787 	.db 0x9a
      005A63 E2                    1788 	.db 0xe2
      005A64 95                    1789 	.db 0x95
      005A65 90                    1790 	.db 0x90
      005A66 E2                    1791 	.db 0xe2
      005A67 95                    1792 	.db 0x95
      005A68 90                    1793 	.db 0x90
      005A69 E2                    1794 	.db 0xe2
      005A6A 95                    1795 	.db 0x95
      005A6B 90                    1796 	.db 0x90
      005A6C E2                    1797 	.db 0xe2
      005A6D 95                    1798 	.db 0x95
      005A6E 90                    1799 	.db 0x90
      005A6F E2                    1800 	.db 0xe2
      005A70 95                    1801 	.db 0x95
      005A71 90                    1802 	.db 0x90
      005A72 E2                    1803 	.db 0xe2
      005A73 95                    1804 	.db 0x95
      005A74 90                    1805 	.db 0x90
      005A75 E2                    1806 	.db 0xe2
      005A76 95                    1807 	.db 0x95
      005A77 90                    1808 	.db 0x90
      005A78 E2                    1809 	.db 0xe2
      005A79 95                    1810 	.db 0x95
      005A7A 90                    1811 	.db 0x90
      005A7B E2                    1812 	.db 0xe2
      005A7C 95                    1813 	.db 0x95
      005A7D 90                    1814 	.db 0x90
      005A7E E2                    1815 	.db 0xe2
      005A7F 95                    1816 	.db 0x95
      005A80 90                    1817 	.db 0x90
      005A81 E2                    1818 	.db 0xe2
      005A82 95                    1819 	.db 0x95
      005A83 90                    1820 	.db 0x90
      005A84 E2                    1821 	.db 0xe2
      005A85 95                    1822 	.db 0x95
      005A86 A9                    1823 	.db 0xa9
      005A87 E2                    1824 	.db 0xe2
      005A88 95                    1825 	.db 0x95
      005A89 90                    1826 	.db 0x90
      005A8A E2                    1827 	.db 0xe2
      005A8B 95                    1828 	.db 0x95
      005A8C 90                    1829 	.db 0x90
      005A8D E2                    1830 	.db 0xe2
      005A8E 95                    1831 	.db 0x95
      005A8F 90                    1832 	.db 0x90
      005A90 E2                    1833 	.db 0xe2
      005A91 95                    1834 	.db 0x95
      005A92 90                    1835 	.db 0x90
      005A93 E2                    1836 	.db 0xe2
      005A94 95                    1837 	.db 0x95
      005A95 90                    1838 	.db 0x90
      005A96 E2                    1839 	.db 0xe2
      005A97 95                    1840 	.db 0x95
      005A98 90                    1841 	.db 0x90
      005A99 E2                    1842 	.db 0xe2
      005A9A 95                    1843 	.db 0x95
      005A9B 90                    1844 	.db 0x90
      005A9C E2                    1845 	.db 0xe2
      005A9D 95                    1846 	.db 0x95
      005A9E 90                    1847 	.db 0x90
      005A9F E2                    1848 	.db 0xe2
      005AA0 95                    1849 	.db 0x95
      005AA1 90                    1850 	.db 0x90
      005AA2 E2                    1851 	.db 0xe2
      005AA3 95                    1852 	.db 0x95
      005AA4 90                    1853 	.db 0x90
      005AA5 E2                    1854 	.db 0xe2
      005AA6 95                    1855 	.db 0x95
      005AA7 90                    1856 	.db 0x90
      005AA8 E2                    1857 	.db 0xe2
      005AA9 95                    1858 	.db 0x95
      005AAA 90                    1859 	.db 0x90
      005AAB E2                    1860 	.db 0xe2
      005AAC 95                    1861 	.db 0x95
      005AAD 90                    1862 	.db 0x90
      005AAE E2                    1863 	.db 0xe2
      005AAF 95                    1864 	.db 0x95
      005AB0 90                    1865 	.db 0x90
      005AB1 E2                    1866 	.db 0xe2
      005AB2 95                    1867 	.db 0x95
      005AB3 90                    1868 	.db 0x90
      005AB4 E2                    1869 	.db 0xe2
      005AB5 95                    1870 	.db 0x95
      005AB6 90                    1871 	.db 0x90
      005AB7 E2                    1872 	.db 0xe2
      005AB8 95                    1873 	.db 0x95
      005AB9 90                    1874 	.db 0x90
      005ABA E2                    1875 	.db 0xe2
      005ABB 95                    1876 	.db 0x95
      005ABC 90                    1877 	.db 0x90
      005ABD E2                    1878 	.db 0xe2
      005ABE 95                    1879 	.db 0x95
      005ABF 90                    1880 	.db 0x90
      005AC0 E2                    1881 	.db 0xe2
      005AC1 95                    1882 	.db 0x95
      005AC2 90                    1883 	.db 0x90
      005AC3 E2                    1884 	.db 0xe2
      005AC4 95                    1885 	.db 0x95
      005AC5 90                    1886 	.db 0x90
      005AC6 E2                    1887 	.db 0xe2
      005AC7 95                    1888 	.db 0x95
      005AC8 90                    1889 	.db 0x90
      005AC9 E2                    1890 	.db 0xe2
      005ACA 95                    1891 	.db 0x95
      005ACB 90                    1892 	.db 0x90
      005ACC E2                    1893 	.db 0xe2
      005ACD 95                    1894 	.db 0x95
      005ACE 90                    1895 	.db 0x90
      005ACF E2                    1896 	.db 0xe2
      005AD0 95                    1897 	.db 0x95
      005AD1 90                    1898 	.db 0x90
      005AD2 E2                    1899 	.db 0xe2
      005AD3 95                    1900 	.db 0x95
      005AD4 90                    1901 	.db 0x90
      005AD5 E2                    1902 	.db 0xe2
      005AD6 95                    1903 	.db 0x95
      005AD7 90                    1904 	.db 0x90
      005AD8 E2                    1905 	.db 0xe2
      005AD9 95                    1906 	.db 0x95
      005ADA 90                    1907 	.db 0x90
      005ADB E2                    1908 	.db 0xe2
      005ADC 95                    1909 	.db 0x95
      005ADD 90                    1910 	.db 0x90
      005ADE E2                    1911 	.db 0xe2
      005ADF 95                    1912 	.db 0x95
      005AE0 90                    1913 	.db 0x90
      005AE1 E2                    1914 	.db 0xe2
      005AE2 95                    1915 	.db 0x95
      005AE3 90                    1916 	.db 0x90
      005AE4 E2                    1917 	.db 0xe2
      005AE5 95                    1918 	.db 0x95
      005AE6 90                    1919 	.db 0x90
      005AE7 E2                    1920 	.db 0xe2
      005AE8 95                    1921 	.db 0x95
      005AE9 90                    1922 	.db 0x90
      005AEA E2                    1923 	.db 0xe2
      005AEB 95                    1924 	.db 0x95
      005AEC 90                    1925 	.db 0x90
      005AED E2                    1926 	.db 0xe2
      005AEE 95                    1927 	.db 0x95
      005AEF 90                    1928 	.db 0x90
      005AF0 E2                    1929 	.db 0xe2
      005AF1 95                    1930 	.db 0x95
      005AF2 90                    1931 	.db 0x90
      005AF3 E2                    1932 	.db 0xe2
      005AF4 95                    1933 	.db 0x95
      005AF5 90                    1934 	.db 0x90
      005AF6 E2                    1935 	.db 0xe2
      005AF7 95                    1936 	.db 0x95
      005AF8 90                    1937 	.db 0x90
      005AF9 E2                    1938 	.db 0xe2
      005AFA 95                    1939 	.db 0x95
      005AFB 90                    1940 	.db 0x90
      005AFC E2                    1941 	.db 0xe2
      005AFD 95                    1942 	.db 0x95
      005AFE 90                    1943 	.db 0x90
      005AFF E2                    1944 	.db 0xe2
      005B00 95                    1945 	.db 0x95
      005B01 90                    1946 	.db 0x90
      005B02 E2                    1947 	.db 0xe2
      005B03 95                    1948 	.db 0x95
      005B04 90                    1949 	.db 0x90
      005B05 E2                    1950 	.db 0xe2
      005B06 95                    1951 	.db 0x95
      005B07 90                    1952 	.db 0x90
      005B08 E2                    1953 	.db 0xe2
      005B09 95                    1954 	.db 0x95
      005B0A 90                    1955 	.db 0x90
      005B0B E2                    1956 	.db 0xe2
      005B0C 95                    1957 	.db 0x95
      005B0D 90                    1958 	.db 0x90
      005B0E E2                    1959 	.db 0xe2
      005B0F 95                    1960 	.db 0x95
      005B10 90                    1961 	.db 0x90
      005B11 E2                    1962 	.db 0xe2
      005B12 95                    1963 	.db 0x95
      005B13 90                    1964 	.db 0x90
      005B14 E2                    1965 	.db 0xe2
      005B15 95                    1966 	.db 0x95
      005B16 90                    1967 	.db 0x90
      005B17 E2                    1968 	.db 0xe2
      005B18 95                    1969 	.db 0x95
      005B19 90                    1970 	.db 0x90
      005B1A E2                    1971 	.db 0xe2
      005B1B 95                    1972 	.db 0x95
      005B1C 90                    1973 	.db 0x90
      005B1D E2                    1974 	.db 0xe2
      005B1E 95                    1975 	.db 0x95
      005B1F 90                    1976 	.db 0x90
      005B20 E2                    1977 	.db 0xe2
      005B21 95                    1978 	.db 0x95
      005B22 90                    1979 	.db 0x90
      005B23 E2                    1980 	.db 0xe2
      005B24 95                    1981 	.db 0x95
      005B25 9D                    1982 	.db 0x9d
      005B26 0A                    1983 	.db 0x0a
      005B27 0D                    1984 	.db 0x0d
      005B28 00                    1985 	.db 0x00
                                   1986 	.area CSEG    (CODE)
                                   1987 	.area CONST   (CODE)
      005B29                       1988 ___str_17:
      005B29 0D                    1989 	.db 0x0d
      005B2A 0A                    1990 	.db 0x0a
      005B2B 0D                    1991 	.db 0x0d
      005B2C 20 3E 3E 20 45 6E 74  1992 	.ascii " >> Enter Command:"
             65 72 20 43 6F 6D 6D
             61 6E 64 3A
      005B3E 00                    1993 	.db 0x00
                                   1994 	.area CSEG    (CODE)
                                   1995 	.area CONST   (CODE)
      005B3F                       1996 ___str_18:
      005B3F 0A                    1997 	.db 0x0a
      005B40 0D                    1998 	.db 0x0d
      005B41 00                    1999 	.db 0x00
                                   2000 	.area CSEG    (CODE)
                                   2001 	.area CONST   (CODE)
      005B42                       2002 ___str_19:
      005B42 20 24 24 20           2003 	.ascii " $$ "
      005B46 00                    2004 	.db 0x00
                                   2005 	.area CSEG    (CODE)
                                   2006 	.area XINIT   (CODE)
      005B5A                       2007 __xinit__one_twentyth_of_Second:
      005B5A 00                    2008 	.db #0x00	; 0
      005B5B                       2009 __xinit__one_tenth_of_second:
      005B5B 00                    2010 	.db #0x00	; 0
      005B5C                       2011 __xinit__seconds:
      005B5C 00                    2012 	.db #0x00	; 0
      005B5D                       2013 __xinit__minutes:
      005B5D 00                    2014 	.db #0x00	; 0
                                   2015 	.area CABS    (ABS,CODE)
