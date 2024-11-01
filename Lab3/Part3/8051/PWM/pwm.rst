                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwm
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _external_ISR
                                     13 	.globl _getchar
                                     14 	.globl _putchar
                                     15 	.globl _init_uart
                                     16 	.globl _printf
                                     17 	.globl _TF1
                                     18 	.globl _TR1
                                     19 	.globl _TF0
                                     20 	.globl _TR0
                                     21 	.globl _IE1
                                     22 	.globl _IT1
                                     23 	.globl _IE0
                                     24 	.globl _IT0
                                     25 	.globl _SM0
                                     26 	.globl _SM1
                                     27 	.globl _SM2
                                     28 	.globl _REN
                                     29 	.globl _TB8
                                     30 	.globl _RB8
                                     31 	.globl _TI
                                     32 	.globl _RI
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD0
                                     48 	.globl _TXD
                                     49 	.globl _RXD0
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _P0_7
                                     76 	.globl _P0_6
                                     77 	.globl _P0_5
                                     78 	.globl _P0_4
                                     79 	.globl _P0_3
                                     80 	.globl _P0_2
                                     81 	.globl _P0_1
                                     82 	.globl _P0_0
                                     83 	.globl _PS
                                     84 	.globl _PT1
                                     85 	.globl _PX1
                                     86 	.globl _PT0
                                     87 	.globl _PX0
                                     88 	.globl _EA
                                     89 	.globl _ES
                                     90 	.globl _ET1
                                     91 	.globl _EX1
                                     92 	.globl _ET0
                                     93 	.globl _EX0
                                     94 	.globl _BREG_F7
                                     95 	.globl _BREG_F6
                                     96 	.globl _BREG_F5
                                     97 	.globl _BREG_F4
                                     98 	.globl _BREG_F3
                                     99 	.globl _BREG_F2
                                    100 	.globl _BREG_F1
                                    101 	.globl _BREG_F0
                                    102 	.globl _P5_7
                                    103 	.globl _P5_6
                                    104 	.globl _P5_5
                                    105 	.globl _P5_4
                                    106 	.globl _P5_3
                                    107 	.globl _P5_2
                                    108 	.globl _P5_1
                                    109 	.globl _P5_0
                                    110 	.globl _P4_7
                                    111 	.globl _P4_6
                                    112 	.globl _P4_5
                                    113 	.globl _P4_4
                                    114 	.globl _P4_3
                                    115 	.globl _P4_2
                                    116 	.globl _P4_1
                                    117 	.globl _P4_0
                                    118 	.globl _PX0L
                                    119 	.globl _PT0L
                                    120 	.globl _PX1L
                                    121 	.globl _PT1L
                                    122 	.globl _PSL
                                    123 	.globl _PT2L
                                    124 	.globl _PPCL
                                    125 	.globl _EC
                                    126 	.globl _CCF0
                                    127 	.globl _CCF1
                                    128 	.globl _CCF2
                                    129 	.globl _CCF3
                                    130 	.globl _CCF4
                                    131 	.globl _CR
                                    132 	.globl _CF
                                    133 	.globl _TF2
                                    134 	.globl _EXF2
                                    135 	.globl _RCLK
                                    136 	.globl _TCLK
                                    137 	.globl _EXEN2
                                    138 	.globl _TR2
                                    139 	.globl _C_T2
                                    140 	.globl _CP_RL2
                                    141 	.globl _T2CON_7
                                    142 	.globl _T2CON_6
                                    143 	.globl _T2CON_5
                                    144 	.globl _T2CON_4
                                    145 	.globl _T2CON_3
                                    146 	.globl _T2CON_2
                                    147 	.globl _T2CON_1
                                    148 	.globl _T2CON_0
                                    149 	.globl _PT2
                                    150 	.globl _ET2
                                    151 	.globl _TMOD
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TCON
                                    157 	.globl _SP
                                    158 	.globl _SCON
                                    159 	.globl _SBUF0
                                    160 	.globl _SBUF
                                    161 	.globl _PSW
                                    162 	.globl _PCON
                                    163 	.globl _P3
                                    164 	.globl _P2
                                    165 	.globl _P1
                                    166 	.globl _P0
                                    167 	.globl _IP
                                    168 	.globl _IE
                                    169 	.globl _DP0L
                                    170 	.globl _DPL
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _idle_mode
                                    227 	.globl _power_down_mode
                                    228 	.globl _freq_max
                                    229 	.globl _freq_min
                                    230 	.globl _pwm_init
                                    231 	.globl _pwm_start
                                    232 	.globl _pwm_stop
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
                           0000E0   289 _ACC	=	0x00e0
                           0000F0   290 _B	=	0x00f0
                           000083   291 _DPH	=	0x0083
                           000083   292 _DP0H	=	0x0083
                           000082   293 _DPL	=	0x0082
                           000082   294 _DP0L	=	0x0082
                           0000A8   295 _IE	=	0x00a8
                           0000B8   296 _IP	=	0x00b8
                           000080   297 _P0	=	0x0080
                           000090   298 _P1	=	0x0090
                           0000A0   299 _P2	=	0x00a0
                           0000B0   300 _P3	=	0x00b0
                           000087   301 _PCON	=	0x0087
                           0000D0   302 _PSW	=	0x00d0
                           000099   303 _SBUF	=	0x0099
                           000099   304 _SBUF0	=	0x0099
                           000098   305 _SCON	=	0x0098
                           000081   306 _SP	=	0x0081
                           000088   307 _TCON	=	0x0088
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           000089   312 _TMOD	=	0x0089
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
                           0000A8   375 _EX0	=	0x00a8
                           0000A9   376 _ET0	=	0x00a9
                           0000AA   377 _EX1	=	0x00aa
                           0000AB   378 _ET1	=	0x00ab
                           0000AC   379 _ES	=	0x00ac
                           0000AF   380 _EA	=	0x00af
                           0000B8   381 _PX0	=	0x00b8
                           0000B9   382 _PT0	=	0x00b9
                           0000BA   383 _PX1	=	0x00ba
                           0000BB   384 _PT1	=	0x00bb
                           0000BC   385 _PS	=	0x00bc
                           000080   386 _P0_0	=	0x0080
                           000081   387 _P0_1	=	0x0081
                           000082   388 _P0_2	=	0x0082
                           000083   389 _P0_3	=	0x0083
                           000084   390 _P0_4	=	0x0084
                           000085   391 _P0_5	=	0x0085
                           000086   392 _P0_6	=	0x0086
                           000087   393 _P0_7	=	0x0087
                           000090   394 _P1_0	=	0x0090
                           000091   395 _P1_1	=	0x0091
                           000092   396 _P1_2	=	0x0092
                           000093   397 _P1_3	=	0x0093
                           000094   398 _P1_4	=	0x0094
                           000095   399 _P1_5	=	0x0095
                           000096   400 _P1_6	=	0x0096
                           000097   401 _P1_7	=	0x0097
                           0000A0   402 _P2_0	=	0x00a0
                           0000A1   403 _P2_1	=	0x00a1
                           0000A2   404 _P2_2	=	0x00a2
                           0000A3   405 _P2_3	=	0x00a3
                           0000A4   406 _P2_4	=	0x00a4
                           0000A5   407 _P2_5	=	0x00a5
                           0000A6   408 _P2_6	=	0x00a6
                           0000A7   409 _P2_7	=	0x00a7
                           0000B0   410 _P3_0	=	0x00b0
                           0000B1   411 _P3_1	=	0x00b1
                           0000B2   412 _P3_2	=	0x00b2
                           0000B3   413 _P3_3	=	0x00b3
                           0000B4   414 _P3_4	=	0x00b4
                           0000B5   415 _P3_5	=	0x00b5
                           0000B6   416 _P3_6	=	0x00b6
                           0000B7   417 _P3_7	=	0x00b7
                           0000B0   418 _RXD	=	0x00b0
                           0000B0   419 _RXD0	=	0x00b0
                           0000B1   420 _TXD	=	0x00b1
                           0000B1   421 _TXD0	=	0x00b1
                           0000B2   422 _INT0	=	0x00b2
                           0000B3   423 _INT1	=	0x00b3
                           0000B4   424 _T0	=	0x00b4
                           0000B5   425 _T1	=	0x00b5
                           0000B6   426 _WR	=	0x00b6
                           0000B7   427 _RD	=	0x00b7
                           0000D0   428 _P	=	0x00d0
                           0000D1   429 _F1	=	0x00d1
                           0000D2   430 _OV	=	0x00d2
                           0000D3   431 _RS0	=	0x00d3
                           0000D4   432 _RS1	=	0x00d4
                           0000D5   433 _F0	=	0x00d5
                           0000D6   434 _AC	=	0x00d6
                           0000D7   435 _CY	=	0x00d7
                           000098   436 _RI	=	0x0098
                           000099   437 _TI	=	0x0099
                           00009A   438 _RB8	=	0x009a
                           00009B   439 _TB8	=	0x009b
                           00009C   440 _REN	=	0x009c
                           00009D   441 _SM2	=	0x009d
                           00009E   442 _SM1	=	0x009e
                           00009F   443 _SM0	=	0x009f
                           000088   444 _IT0	=	0x0088
                           000089   445 _IE0	=	0x0089
                           00008A   446 _IT1	=	0x008a
                           00008B   447 _IE1	=	0x008b
                           00008C   448 _TR0	=	0x008c
                           00008D   449 _TF0	=	0x008d
                           00008E   450 _TR1	=	0x008e
                           00008F   451 _TF1	=	0x008f
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
      000021                        482 __start__stack:
      000021                        483 	.ds	1
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
      000400                        506 _putchar_chr_65536_15:
      000400                        507 	.ds 2
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; external initialized ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; interrupt vector 
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
      000000                        530 __interrupt_vect:
      000000 02 00 09         [24]  531 	ljmp	__sdcc_gsinit_startup
      000003 02 00 9C         [24]  532 	ljmp	_external_ISR
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
      000062 02 00 06         [24]  547 	ljmp	__sdcc_program_startup
                                    548 ;--------------------------------------------------------
                                    549 ; Home
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area HOME    (CODE)
      000006                        553 __sdcc_program_startup:
      000006 02 00 ED         [24]  554 	ljmp	_main
                                    555 ;	return from main will return to caller
                                    556 ;--------------------------------------------------------
                                    557 ; code
                                    558 ;--------------------------------------------------------
                                    559 	.area CSEG    (CODE)
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'init_uart'
                                    562 ;------------------------------------------------------------
                                    563 ;	pwm.c:13: void init_uart(void)
                                    564 ;	-----------------------------------------
                                    565 ;	 function init_uart
                                    566 ;	-----------------------------------------
      000065                        567 _init_uart:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
                                    576 ;	pwm.c:15: SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
      000065 75 98 50         [24]  577 	mov	_SCON,#0x50
                                    578 ;	pwm.c:16: TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
      000068 75 89 20         [24]  579 	mov	_TMOD,#0x20
                                    580 ;	pwm.c:17: TH1 = 0xFD;                // 9600 baud rate
      00006B 75 8D FD         [24]  581 	mov	_TH1,#0xfd
                                    582 ;	pwm.c:18: TR1 = 1;                   // Start timer 1
                                    583 ;	assignBit
      00006E D2 8E            [12]  584 	setb	_TR1
                                    585 ;	pwm.c:19: }
      000070 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'putchar'
                                    589 ;------------------------------------------------------------
                                    590 ;chr                       Allocated with name '_putchar_chr_65536_15'
                                    591 ;------------------------------------------------------------
                                    592 ;	pwm.c:21: int putchar(int chr)
                                    593 ;	-----------------------------------------
                                    594 ;	 function putchar
                                    595 ;	-----------------------------------------
      000071                        596 _putchar:
      000071 AF 83            [24]  597 	mov	r7,dph
      000073 E5 82            [12]  598 	mov	a,dpl
      000075 90 04 00         [24]  599 	mov	dptr,#_putchar_chr_65536_15
      000078 F0               [24]  600 	movx	@dptr,a
      000079 EF               [12]  601 	mov	a,r7
      00007A A3               [24]  602 	inc	dptr
      00007B F0               [24]  603 	movx	@dptr,a
                                    604 ;	pwm.c:23: SBUF = chr;                 // Load character to send
      00007C 90 04 00         [24]  605 	mov	dptr,#_putchar_chr_65536_15
      00007F E0               [24]  606 	movx	a,@dptr
      000080 FE               [12]  607 	mov	r6,a
      000081 A3               [24]  608 	inc	dptr
      000082 E0               [24]  609 	movx	a,@dptr
      000083 8E 99            [24]  610 	mov	_SBUF,r6
                                    611 ;	pwm.c:24: while(!TI);                 // Wait for transmission complete
      000085                        612 00101$:
                                    613 ;	pwm.c:26: TI = 0;                     // Clear transmission flag
                                    614 ;	assignBit
      000085 10 99 02         [24]  615 	jbc	_TI,00114$
      000088 80 FB            [24]  616 	sjmp	00101$
      00008A                        617 00114$:
                                    618 ;	pwm.c:27: return 1;
      00008A 90 00 01         [24]  619 	mov	dptr,#0x0001
                                    620 ;	pwm.c:28: }
      00008D 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'getchar'
                                    624 ;------------------------------------------------------------
                                    625 ;a                         Allocated with name '_getchar_a_65537_19'
                                    626 ;------------------------------------------------------------
                                    627 ;	pwm.c:30: int getchar(void){
                                    628 ;	-----------------------------------------
                                    629 ;	 function getchar
                                    630 ;	-----------------------------------------
      00008E                        631 _getchar:
                                    632 ;	pwm.c:31: while(!RI);                 // Wait for character reception
      00008E                        633 00101$:
      00008E 30 98 FD         [24]  634 	jnb	_RI,00101$
                                    635 ;	pwm.c:32: int a = SBUF;               // Get received character
      000091 AE 99            [24]  636 	mov	r6,_SBUF
      000093 7F 00            [12]  637 	mov	r7,#0x00
                                    638 ;	pwm.c:34: RI = 0;                     // Clear reception flag
                                    639 ;	assignBit
      000095 C2 98            [12]  640 	clr	_RI
                                    641 ;	pwm.c:35: return a;
      000097 8E 82            [24]  642 	mov	dpl,r6
      000099 8F 83            [24]  643 	mov	dph,r7
                                    644 ;	pwm.c:36: }
      00009B 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'external_ISR'
                                    648 ;------------------------------------------------------------
                                    649 ;	pwm.c:39: void external_ISR(void) __interrupt (0)
                                    650 ;	-----------------------------------------
                                    651 ;	 function external_ISR
                                    652 ;	-----------------------------------------
      00009C                        653 _external_ISR:
      00009C C0 20            [24]  654 	push	bits
      00009E C0 E0            [24]  655 	push	acc
      0000A0 C0 F0            [24]  656 	push	b
      0000A2 C0 82            [24]  657 	push	dpl
      0000A4 C0 83            [24]  658 	push	dph
      0000A6 C0 07            [24]  659 	push	(0+7)
      0000A8 C0 06            [24]  660 	push	(0+6)
      0000AA C0 05            [24]  661 	push	(0+5)
      0000AC C0 04            [24]  662 	push	(0+4)
      0000AE C0 03            [24]  663 	push	(0+3)
      0000B0 C0 02            [24]  664 	push	(0+2)
      0000B2 C0 01            [24]  665 	push	(0+1)
      0000B4 C0 00            [24]  666 	push	(0+0)
      0000B6 C0 D0            [24]  667 	push	psw
      0000B8 75 D0 00         [24]  668 	mov	psw,#0x00
                                    669 ;	pwm.c:41: printf("EXIT FROM IDEL MODE\n\r");
      0000BB 74 3B            [12]  670 	mov	a,#___str_0
      0000BD C0 E0            [24]  671 	push	acc
      0000BF 74 0D            [12]  672 	mov	a,#(___str_0 >> 8)
      0000C1 C0 E0            [24]  673 	push	acc
      0000C3 74 80            [12]  674 	mov	a,#0x80
      0000C5 C0 E0            [24]  675 	push	acc
      0000C7 12 02 D9         [24]  676 	lcall	_printf
      0000CA 15 81            [12]  677 	dec	sp
      0000CC 15 81            [12]  678 	dec	sp
      0000CE 15 81            [12]  679 	dec	sp
                                    680 ;	pwm.c:42: }
      0000D0 D0 D0            [24]  681 	pop	psw
      0000D2 D0 00            [24]  682 	pop	(0+0)
      0000D4 D0 01            [24]  683 	pop	(0+1)
      0000D6 D0 02            [24]  684 	pop	(0+2)
      0000D8 D0 03            [24]  685 	pop	(0+3)
      0000DA D0 04            [24]  686 	pop	(0+4)
      0000DC D0 05            [24]  687 	pop	(0+5)
      0000DE D0 06            [24]  688 	pop	(0+6)
      0000E0 D0 07            [24]  689 	pop	(0+7)
      0000E2 D0 83            [24]  690 	pop	dph
      0000E4 D0 82            [24]  691 	pop	dpl
      0000E6 D0 F0            [24]  692 	pop	b
      0000E8 D0 E0            [24]  693 	pop	acc
      0000EA D0 20            [24]  694 	pop	bits
      0000EC 32               [24]  695 	reti
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'main'
                                    698 ;------------------------------------------------------------
                                    699 ;command                   Allocated with name '_main_command_131072_24'
                                    700 ;------------------------------------------------------------
                                    701 ;	pwm.c:47: void main(void)
                                    702 ;	-----------------------------------------
                                    703 ;	 function main
                                    704 ;	-----------------------------------------
      0000ED                        705 _main:
                                    706 ;	pwm.c:52: init_uart();
      0000ED 12 00 65         [24]  707 	lcall	_init_uart
                                    708 ;	pwm.c:54: pwm_init();
      0000F0 12 02 46         [24]  709 	lcall	_pwm_init
                                    710 ;	pwm.c:55: printf("PCA MODE : PWM\n\r");
      0000F3 74 51            [12]  711 	mov	a,#___str_1
      0000F5 C0 E0            [24]  712 	push	acc
      0000F7 74 0D            [12]  713 	mov	a,#(___str_1 >> 8)
      0000F9 C0 E0            [24]  714 	push	acc
      0000FB 74 80            [12]  715 	mov	a,#0x80
      0000FD C0 E0            [24]  716 	push	acc
      0000FF 12 02 D9         [24]  717 	lcall	_printf
      000102 15 81            [12]  718 	dec	sp
      000104 15 81            [12]  719 	dec	sp
      000106 15 81            [12]  720 	dec	sp
                                    721 ;	pwm.c:59: printf("COMMANDS :\n\r");
      000108 74 62            [12]  722 	mov	a,#___str_2
      00010A C0 E0            [24]  723 	push	acc
      00010C 74 0D            [12]  724 	mov	a,#(___str_2 >> 8)
      00010E C0 E0            [24]  725 	push	acc
      000110 74 80            [12]  726 	mov	a,#0x80
      000112 C0 E0            [24]  727 	push	acc
      000114 12 02 D9         [24]  728 	lcall	_printf
      000117 15 81            [12]  729 	dec	sp
      000119 15 81            [12]  730 	dec	sp
      00011B 15 81            [12]  731 	dec	sp
                                    732 ;	pwm.c:60: printf(" R - RUN PWM\n\r");
      00011D 74 6F            [12]  733 	mov	a,#___str_3
      00011F C0 E0            [24]  734 	push	acc
      000121 74 0D            [12]  735 	mov	a,#(___str_3 >> 8)
      000123 C0 E0            [24]  736 	push	acc
      000125 74 80            [12]  737 	mov	a,#0x80
      000127 C0 E0            [24]  738 	push	acc
      000129 12 02 D9         [24]  739 	lcall	_printf
      00012C 15 81            [12]  740 	dec	sp
      00012E 15 81            [12]  741 	dec	sp
      000130 15 81            [12]  742 	dec	sp
                                    743 ;	pwm.c:61: printf(" S - STOP PWM\n\r");
      000132 74 7E            [12]  744 	mov	a,#___str_4
      000134 C0 E0            [24]  745 	push	acc
      000136 74 0D            [12]  746 	mov	a,#(___str_4 >> 8)
      000138 C0 E0            [24]  747 	push	acc
      00013A 74 80            [12]  748 	mov	a,#0x80
      00013C C0 E0            [24]  749 	push	acc
      00013E 12 02 D9         [24]  750 	lcall	_printf
      000141 15 81            [12]  751 	dec	sp
      000143 15 81            [12]  752 	dec	sp
      000145 15 81            [12]  753 	dec	sp
                                    754 ;	pwm.c:62: printf(" F - MAX FREQUENCY MODE\n\r");
      000147 74 8E            [12]  755 	mov	a,#___str_5
      000149 C0 E0            [24]  756 	push	acc
      00014B 74 0D            [12]  757 	mov	a,#(___str_5 >> 8)
      00014D C0 E0            [24]  758 	push	acc
      00014F 74 80            [12]  759 	mov	a,#0x80
      000151 C0 E0            [24]  760 	push	acc
      000153 12 02 D9         [24]  761 	lcall	_printf
      000156 15 81            [12]  762 	dec	sp
      000158 15 81            [12]  763 	dec	sp
      00015A 15 81            [12]  764 	dec	sp
                                    765 ;	pwm.c:63: printf(" M - MIN FREQUENCY MODE\n\r");
      00015C 74 A8            [12]  766 	mov	a,#___str_6
      00015E C0 E0            [24]  767 	push	acc
      000160 74 0D            [12]  768 	mov	a,#(___str_6 >> 8)
      000162 C0 E0            [24]  769 	push	acc
      000164 74 80            [12]  770 	mov	a,#0x80
      000166 C0 E0            [24]  771 	push	acc
      000168 12 02 D9         [24]  772 	lcall	_printf
      00016B 15 81            [12]  773 	dec	sp
      00016D 15 81            [12]  774 	dec	sp
      00016F 15 81            [12]  775 	dec	sp
                                    776 ;	pwm.c:64: printf(" I - IDLE MODE\n\r");
      000171 74 C2            [12]  777 	mov	a,#___str_7
      000173 C0 E0            [24]  778 	push	acc
      000175 74 0D            [12]  779 	mov	a,#(___str_7 >> 8)
      000177 C0 E0            [24]  780 	push	acc
      000179 74 80            [12]  781 	mov	a,#0x80
      00017B C0 E0            [24]  782 	push	acc
      00017D 12 02 D9         [24]  783 	lcall	_printf
      000180 15 81            [12]  784 	dec	sp
      000182 15 81            [12]  785 	dec	sp
      000184 15 81            [12]  786 	dec	sp
                                    787 ;	pwm.c:65: printf(" P - POWER DOWN MODE\n\r");
      000186 74 D3            [12]  788 	mov	a,#___str_8
      000188 C0 E0            [24]  789 	push	acc
      00018A 74 0D            [12]  790 	mov	a,#(___str_8 >> 8)
      00018C C0 E0            [24]  791 	push	acc
      00018E 74 80            [12]  792 	mov	a,#0x80
      000190 C0 E0            [24]  793 	push	acc
      000192 12 02 D9         [24]  794 	lcall	_printf
      000195 15 81            [12]  795 	dec	sp
      000197 15 81            [12]  796 	dec	sp
      000199 15 81            [12]  797 	dec	sp
                                    798 ;	pwm.c:67: TCON = 0x01;
      00019B 75 88 01         [24]  799 	mov	_TCON,#0x01
                                    800 ;	pwm.c:68: IE = 0x81;
      00019E 75 A8 81         [24]  801 	mov	_IE,#0x81
                                    802 ;	pwm.c:69: while(1)
      0001A1                        803 00114$:
                                    804 ;	pwm.c:71: char command = getchar();
      0001A1 12 00 8E         [24]  805 	lcall	_getchar
      0001A4 AE 82            [24]  806 	mov	r6,dpl
      0001A6 AF 83            [24]  807 	mov	r7,dph
                                    808 ;	pwm.c:72: if(command == 'R')
      0001A8 BE 52 07         [24]  809 	cjne	r6,#0x52,00102$
                                    810 ;	pwm.c:75: pwm_start();
      0001AB C0 06            [24]  811 	push	ar6
      0001AD 12 02 59         [24]  812 	lcall	_pwm_start
      0001B0 D0 06            [24]  813 	pop	ar6
      0001B2                        814 00102$:
                                    815 ;	pwm.c:77: if(command == 'S')
      0001B2 BE 53 07         [24]  816 	cjne	r6,#0x53,00104$
                                    817 ;	pwm.c:80: pwm_stop();
      0001B5 C0 06            [24]  818 	push	ar6
      0001B7 12 02 72         [24]  819 	lcall	_pwm_stop
      0001BA D0 06            [24]  820 	pop	ar6
      0001BC                        821 00104$:
                                    822 ;	pwm.c:82: if(command == 'F')
      0001BC BE 46 07         [24]  823 	cjne	r6,#0x46,00106$
                                    824 ;	pwm.c:85: freq_max();
      0001BF C0 06            [24]  825 	push	ar6
      0001C1 12 02 14         [24]  826 	lcall	_freq_max
      0001C4 D0 06            [24]  827 	pop	ar6
      0001C6                        828 00106$:
                                    829 ;	pwm.c:87: if(command == 'M')
      0001C6 BE 4D 07         [24]  830 	cjne	r6,#0x4d,00108$
                                    831 ;	pwm.c:90: freq_min();
      0001C9 C0 06            [24]  832 	push	ar6
      0001CB 12 02 2D         [24]  833 	lcall	_freq_min
      0001CE D0 06            [24]  834 	pop	ar6
      0001D0                        835 00108$:
                                    836 ;	pwm.c:92: if(command == 'I')
      0001D0 BE 49 07         [24]  837 	cjne	r6,#0x49,00110$
                                    838 ;	pwm.c:94: idle_mode();
      0001D3 C0 06            [24]  839 	push	ar6
      0001D5 12 01 E2         [24]  840 	lcall	_idle_mode
      0001D8 D0 06            [24]  841 	pop	ar6
      0001DA                        842 00110$:
                                    843 ;	pwm.c:96: if(command == 'P')
      0001DA BE 50 C4         [24]  844 	cjne	r6,#0x50,00114$
                                    845 ;	pwm.c:98: power_down_mode();
      0001DD 12 01 FB         [24]  846 	lcall	_power_down_mode
                                    847 ;	pwm.c:102: }
      0001E0 80 BF            [24]  848 	sjmp	00114$
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'idle_mode'
                                    851 ;------------------------------------------------------------
                                    852 ;	pwm.c:111: void idle_mode()
                                    853 ;	-----------------------------------------
                                    854 ;	 function idle_mode
                                    855 ;	-----------------------------------------
      0001E2                        856 _idle_mode:
                                    857 ;	pwm.c:113: printf("IDLE MODE\n\r");
      0001E2 74 EA            [12]  858 	mov	a,#___str_9
      0001E4 C0 E0            [24]  859 	push	acc
      0001E6 74 0D            [12]  860 	mov	a,#(___str_9 >> 8)
      0001E8 C0 E0            [24]  861 	push	acc
      0001EA 74 80            [12]  862 	mov	a,#0x80
      0001EC C0 E0            [24]  863 	push	acc
      0001EE 12 02 D9         [24]  864 	lcall	_printf
      0001F1 15 81            [12]  865 	dec	sp
      0001F3 15 81            [12]  866 	dec	sp
      0001F5 15 81            [12]  867 	dec	sp
                                    868 ;	pwm.c:114: PCON = 0x01;
      0001F7 75 87 01         [24]  869 	mov	_PCON,#0x01
                                    870 ;	pwm.c:115: }
      0001FA 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'power_down_mode'
                                    874 ;------------------------------------------------------------
                                    875 ;	pwm.c:117: void power_down_mode()
                                    876 ;	-----------------------------------------
                                    877 ;	 function power_down_mode
                                    878 ;	-----------------------------------------
      0001FB                        879 _power_down_mode:
                                    880 ;	pwm.c:119: printf("POWER DOWN MODE\n\r");
      0001FB 74 F6            [12]  881 	mov	a,#___str_10
      0001FD C0 E0            [24]  882 	push	acc
      0001FF 74 0D            [12]  883 	mov	a,#(___str_10 >> 8)
      000201 C0 E0            [24]  884 	push	acc
      000203 74 80            [12]  885 	mov	a,#0x80
      000205 C0 E0            [24]  886 	push	acc
      000207 12 02 D9         [24]  887 	lcall	_printf
      00020A 15 81            [12]  888 	dec	sp
      00020C 15 81            [12]  889 	dec	sp
      00020E 15 81            [12]  890 	dec	sp
                                    891 ;	pwm.c:120: PCON = 0x02;
      000210 75 87 02         [24]  892 	mov	_PCON,#0x02
                                    893 ;	pwm.c:121: }
      000213 22               [24]  894 	ret
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'freq_max'
                                    897 ;------------------------------------------------------------
                                    898 ;	pwm.c:122: void freq_max()
                                    899 ;	-----------------------------------------
                                    900 ;	 function freq_max
                                    901 ;	-----------------------------------------
      000214                        902 _freq_max:
                                    903 ;	pwm.c:124: printf("MAXIMUM FREQUENCY\n\r");
      000214 74 08            [12]  904 	mov	a,#___str_11
      000216 C0 E0            [24]  905 	push	acc
      000218 74 0E            [12]  906 	mov	a,#(___str_11 >> 8)
      00021A C0 E0            [24]  907 	push	acc
      00021C 74 80            [12]  908 	mov	a,#0x80
      00021E C0 E0            [24]  909 	push	acc
      000220 12 02 D9         [24]  910 	lcall	_printf
      000223 15 81            [12]  911 	dec	sp
      000225 15 81            [12]  912 	dec	sp
      000227 15 81            [12]  913 	dec	sp
                                    914 ;	pwm.c:125: CKRL = 0xFF;
      000229 75 97 FF         [24]  915 	mov	_CKRL,#0xff
                                    916 ;	pwm.c:126: }
      00022C 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'freq_min'
                                    920 ;------------------------------------------------------------
                                    921 ;	pwm.c:128: void freq_min()
                                    922 ;	-----------------------------------------
                                    923 ;	 function freq_min
                                    924 ;	-----------------------------------------
      00022D                        925 _freq_min:
                                    926 ;	pwm.c:130: printf("MINIMUM FREQUENCY\n\r");
      00022D 74 1C            [12]  927 	mov	a,#___str_12
      00022F C0 E0            [24]  928 	push	acc
      000231 74 0E            [12]  929 	mov	a,#(___str_12 >> 8)
      000233 C0 E0            [24]  930 	push	acc
      000235 74 80            [12]  931 	mov	a,#0x80
      000237 C0 E0            [24]  932 	push	acc
      000239 12 02 D9         [24]  933 	lcall	_printf
      00023C 15 81            [12]  934 	dec	sp
      00023E 15 81            [12]  935 	dec	sp
      000240 15 81            [12]  936 	dec	sp
                                    937 ;	pwm.c:131: CKRL = 0x00;
      000242 75 97 00         [24]  938 	mov	_CKRL,#0x00
                                    939 ;	pwm.c:132: }
      000245 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'pwm_init'
                                    943 ;------------------------------------------------------------
                                    944 ;	pwm.c:133: void pwm_init()
                                    945 ;	-----------------------------------------
                                    946 ;	 function pwm_init
                                    947 ;	-----------------------------------------
      000246                        948 _pwm_init:
                                    949 ;	pwm.c:135: CMOD = 0X82;
      000246 75 D9 82         [24]  950 	mov	_CMOD,#0x82
                                    951 ;	pwm.c:136: CL = 0X00;
      000249 75 E9 00         [24]  952 	mov	_CL,#0x00
                                    953 ;	pwm.c:137: CH = 0X00;
      00024C 75 F9 00         [24]  954 	mov	_CH,#0x00
                                    955 ;	pwm.c:139: CCAP0L = 0X1C;
      00024F 75 EA 1C         [24]  956 	mov	_CCAP0L,#0x1c
                                    957 ;	pwm.c:140: CCAP0H = 0X1C;
      000252 75 FA 1C         [24]  958 	mov	_CCAP0H,#0x1c
                                    959 ;	pwm.c:141: CCAPM0 = 0X42;
      000255 75 DA 42         [24]  960 	mov	_CCAPM0,#0x42
                                    961 ;	pwm.c:142: }
      000258 22               [24]  962 	ret
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'pwm_start'
                                    965 ;------------------------------------------------------------
                                    966 ;	pwm.c:144: void pwm_start()
                                    967 ;	-----------------------------------------
                                    968 ;	 function pwm_start
                                    969 ;	-----------------------------------------
      000259                        970 _pwm_start:
                                    971 ;	pwm.c:146: printf("PWM START\n\r");
      000259 74 30            [12]  972 	mov	a,#___str_13
      00025B C0 E0            [24]  973 	push	acc
      00025D 74 0E            [12]  974 	mov	a,#(___str_13 >> 8)
      00025F C0 E0            [24]  975 	push	acc
      000261 74 80            [12]  976 	mov	a,#0x80
      000263 C0 E0            [24]  977 	push	acc
      000265 12 02 D9         [24]  978 	lcall	_printf
      000268 15 81            [12]  979 	dec	sp
      00026A 15 81            [12]  980 	dec	sp
      00026C 15 81            [12]  981 	dec	sp
                                    982 ;	pwm.c:147: CCON = 0x40;
      00026E 75 D8 40         [24]  983 	mov	_CCON,#0x40
                                    984 ;	pwm.c:148: }
      000271 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'pwm_stop'
                                    988 ;------------------------------------------------------------
                                    989 ;	pwm.c:150: void pwm_stop()
                                    990 ;	-----------------------------------------
                                    991 ;	 function pwm_stop
                                    992 ;	-----------------------------------------
      000272                        993 _pwm_stop:
                                    994 ;	pwm.c:152: printf("PWM STOP\n\r");
      000272 74 3C            [12]  995 	mov	a,#___str_14
      000274 C0 E0            [24]  996 	push	acc
      000276 74 0E            [12]  997 	mov	a,#(___str_14 >> 8)
      000278 C0 E0            [24]  998 	push	acc
      00027A 74 80            [12]  999 	mov	a,#0x80
      00027C C0 E0            [24] 1000 	push	acc
      00027E 12 02 D9         [24] 1001 	lcall	_printf
      000281 15 81            [12] 1002 	dec	sp
      000283 15 81            [12] 1003 	dec	sp
      000285 15 81            [12] 1004 	dec	sp
                                   1005 ;	pwm.c:153: CCON = 0x00;
      000287 75 D8 00         [24] 1006 	mov	_CCON,#0x00
                                   1007 ;	pwm.c:154: }
      00028A 22               [24] 1008 	ret
                                   1009 	.area CSEG    (CODE)
                                   1010 	.area CONST   (CODE)
                                   1011 	.area CONST   (CODE)
      000D3B                       1012 ___str_0:
      000D3B 45 58 49 54 20 46 52  1013 	.ascii "EXIT FROM IDEL MODE"
             4F 4D 20 49 44 45 4C
             20 4D 4F 44 45
      000D4E 0A                    1014 	.db 0x0a
      000D4F 0D                    1015 	.db 0x0d
      000D50 00                    1016 	.db 0x00
                                   1017 	.area CSEG    (CODE)
                                   1018 	.area CONST   (CODE)
      000D51                       1019 ___str_1:
      000D51 50 43 41 20 4D 4F 44  1020 	.ascii "PCA MODE : PWM"
             45 20 3A 20 50 57 4D
      000D5F 0A                    1021 	.db 0x0a
      000D60 0D                    1022 	.db 0x0d
      000D61 00                    1023 	.db 0x00
                                   1024 	.area CSEG    (CODE)
                                   1025 	.area CONST   (CODE)
      000D62                       1026 ___str_2:
      000D62 43 4F 4D 4D 41 4E 44  1027 	.ascii "COMMANDS :"
             53 20 3A
      000D6C 0A                    1028 	.db 0x0a
      000D6D 0D                    1029 	.db 0x0d
      000D6E 00                    1030 	.db 0x00
                                   1031 	.area CSEG    (CODE)
                                   1032 	.area CONST   (CODE)
      000D6F                       1033 ___str_3:
      000D6F 20 52 20 2D 20 52 55  1034 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      000D7B 0A                    1035 	.db 0x0a
      000D7C 0D                    1036 	.db 0x0d
      000D7D 00                    1037 	.db 0x00
                                   1038 	.area CSEG    (CODE)
                                   1039 	.area CONST   (CODE)
      000D7E                       1040 ___str_4:
      000D7E 20 53 20 2D 20 53 54  1041 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      000D8B 0A                    1042 	.db 0x0a
      000D8C 0D                    1043 	.db 0x0d
      000D8D 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      000D8E                       1047 ___str_5:
      000D8E 20 46 20 2D 20 4D 41  1048 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000DA5 0A                    1049 	.db 0x0a
      000DA6 0D                    1050 	.db 0x0d
      000DA7 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      000DA8                       1054 ___str_6:
      000DA8 20 4D 20 2D 20 4D 49  1055 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000DBF 0A                    1056 	.db 0x0a
      000DC0 0D                    1057 	.db 0x0d
      000DC1 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area CONST   (CODE)
      000DC2                       1061 ___str_7:
      000DC2 20 49 20 2D 20 49 44  1062 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      000DD0 0A                    1063 	.db 0x0a
      000DD1 0D                    1064 	.db 0x0d
      000DD2 00                    1065 	.db 0x00
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      000DD3                       1068 ___str_8:
      000DD3 20 50 20 2D 20 50 4F  1069 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      000DE7 0A                    1070 	.db 0x0a
      000DE8 0D                    1071 	.db 0x0d
      000DE9 00                    1072 	.db 0x00
                                   1073 	.area CSEG    (CODE)
                                   1074 	.area CONST   (CODE)
      000DEA                       1075 ___str_9:
      000DEA 49 44 4C 45 20 4D 4F  1076 	.ascii "IDLE MODE"
             44 45
      000DF3 0A                    1077 	.db 0x0a
      000DF4 0D                    1078 	.db 0x0d
      000DF5 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      000DF6                       1082 ___str_10:
      000DF6 50 4F 57 45 52 20 44  1083 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      000E05 0A                    1084 	.db 0x0a
      000E06 0D                    1085 	.db 0x0d
      000E07 00                    1086 	.db 0x00
                                   1087 	.area CSEG    (CODE)
                                   1088 	.area CONST   (CODE)
      000E08                       1089 ___str_11:
      000E08 4D 41 58 49 4D 55 4D  1090 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E19 0A                    1091 	.db 0x0a
      000E1A 0D                    1092 	.db 0x0d
      000E1B 00                    1093 	.db 0x00
                                   1094 	.area CSEG    (CODE)
                                   1095 	.area CONST   (CODE)
      000E1C                       1096 ___str_12:
      000E1C 4D 49 4E 49 4D 55 4D  1097 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E2D 0A                    1098 	.db 0x0a
      000E2E 0D                    1099 	.db 0x0d
      000E2F 00                    1100 	.db 0x00
                                   1101 	.area CSEG    (CODE)
                                   1102 	.area CONST   (CODE)
      000E30                       1103 ___str_13:
      000E30 50 57 4D 20 53 54 41  1104 	.ascii "PWM START"
             52 54
      000E39 0A                    1105 	.db 0x0a
      000E3A 0D                    1106 	.db 0x0d
      000E3B 00                    1107 	.db 0x00
                                   1108 	.area CSEG    (CODE)
                                   1109 	.area CONST   (CODE)
      000E3C                       1110 ___str_14:
      000E3C 50 57 4D 20 53 54 4F  1111 	.ascii "PWM STOP"
             50
      000E44 0A                    1112 	.db 0x0a
      000E45 0D                    1113 	.db 0x0d
      000E46 00                    1114 	.db 0x00
                                   1115 	.area CSEG    (CODE)
                                   1116 	.area XINIT   (CODE)
                                   1117 	.area CABS    (ABS,CODE)
