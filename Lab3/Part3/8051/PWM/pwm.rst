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
      003000                        530 __interrupt_vect:
      003000 02 30 09         [24]  531 	ljmp	__sdcc_gsinit_startup
      003003 02 30 9C         [24]  532 	ljmp	_external_ISR
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
      003062 02 30 06         [24]  547 	ljmp	__sdcc_program_startup
                                    548 ;--------------------------------------------------------
                                    549 ; Home
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area HOME    (CODE)
      003006                        553 __sdcc_program_startup:
      003006 02 30 ED         [24]  554 	ljmp	_main
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
      003065                        567 _init_uart:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
                                    576 ;	pwm.c:15: SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
      003065 75 98 50         [24]  577 	mov	_SCON,#0x50
                                    578 ;	pwm.c:16: TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
      003068 75 89 20         [24]  579 	mov	_TMOD,#0x20
                                    580 ;	pwm.c:17: TH1 = 0xFD;                // 9600 baud rate
      00306B 75 8D FD         [24]  581 	mov	_TH1,#0xfd
                                    582 ;	pwm.c:18: TR1 = 1;                   // Start timer 1
                                    583 ;	assignBit
      00306E D2 8E            [12]  584 	setb	_TR1
                                    585 ;	pwm.c:19: }
      003070 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'putchar'
                                    589 ;------------------------------------------------------------
                                    590 ;chr                       Allocated with name '_putchar_chr_65536_15'
                                    591 ;------------------------------------------------------------
                                    592 ;	pwm.c:21: int putchar(int chr)
                                    593 ;	-----------------------------------------
                                    594 ;	 function putchar
                                    595 ;	-----------------------------------------
      003071                        596 _putchar:
      003071 AF 83            [24]  597 	mov	r7,dph
      003073 E5 82            [12]  598 	mov	a,dpl
      003075 90 04 00         [24]  599 	mov	dptr,#_putchar_chr_65536_15
      003078 F0               [24]  600 	movx	@dptr,a
      003079 EF               [12]  601 	mov	a,r7
      00307A A3               [24]  602 	inc	dptr
      00307B F0               [24]  603 	movx	@dptr,a
                                    604 ;	pwm.c:23: SBUF = chr;                 // Load character to send
      00307C 90 04 00         [24]  605 	mov	dptr,#_putchar_chr_65536_15
      00307F E0               [24]  606 	movx	a,@dptr
      003080 FE               [12]  607 	mov	r6,a
      003081 A3               [24]  608 	inc	dptr
      003082 E0               [24]  609 	movx	a,@dptr
      003083 8E 99            [24]  610 	mov	_SBUF,r6
                                    611 ;	pwm.c:24: while(!TI);                 // Wait for transmission complete
      003085                        612 00101$:
                                    613 ;	pwm.c:26: TI = 0;                     // Clear transmission flag
                                    614 ;	assignBit
      003085 10 99 02         [24]  615 	jbc	_TI,00114$
      003088 80 FB            [24]  616 	sjmp	00101$
      00308A                        617 00114$:
                                    618 ;	pwm.c:27: return 1;
      00308A 90 00 01         [24]  619 	mov	dptr,#0x0001
                                    620 ;	pwm.c:28: }
      00308D 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'getchar'
                                    624 ;------------------------------------------------------------
                                    625 ;a                         Allocated with name '_getchar_a_65537_19'
                                    626 ;------------------------------------------------------------
                                    627 ;	pwm.c:30: int getchar(void){
                                    628 ;	-----------------------------------------
                                    629 ;	 function getchar
                                    630 ;	-----------------------------------------
      00308E                        631 _getchar:
                                    632 ;	pwm.c:31: while(!RI);                 // Wait for character reception
      00308E                        633 00101$:
      00308E 30 98 FD         [24]  634 	jnb	_RI,00101$
                                    635 ;	pwm.c:32: int a = SBUF;               // Get received character
      003091 AE 99            [24]  636 	mov	r6,_SBUF
      003093 7F 00            [12]  637 	mov	r7,#0x00
                                    638 ;	pwm.c:34: RI = 0;                     // Clear reception flag
                                    639 ;	assignBit
      003095 C2 98            [12]  640 	clr	_RI
                                    641 ;	pwm.c:35: return a;
      003097 8E 82            [24]  642 	mov	dpl,r6
      003099 8F 83            [24]  643 	mov	dph,r7
                                    644 ;	pwm.c:36: }
      00309B 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'external_ISR'
                                    648 ;------------------------------------------------------------
                                    649 ;	pwm.c:39: void external_ISR(void) __interrupt (0)
                                    650 ;	-----------------------------------------
                                    651 ;	 function external_ISR
                                    652 ;	-----------------------------------------
      00309C                        653 _external_ISR:
      00309C C0 20            [24]  654 	push	bits
      00309E C0 E0            [24]  655 	push	acc
      0030A0 C0 F0            [24]  656 	push	b
      0030A2 C0 82            [24]  657 	push	dpl
      0030A4 C0 83            [24]  658 	push	dph
      0030A6 C0 07            [24]  659 	push	(0+7)
      0030A8 C0 06            [24]  660 	push	(0+6)
      0030AA C0 05            [24]  661 	push	(0+5)
      0030AC C0 04            [24]  662 	push	(0+4)
      0030AE C0 03            [24]  663 	push	(0+3)
      0030B0 C0 02            [24]  664 	push	(0+2)
      0030B2 C0 01            [24]  665 	push	(0+1)
      0030B4 C0 00            [24]  666 	push	(0+0)
      0030B6 C0 D0            [24]  667 	push	psw
      0030B8 75 D0 00         [24]  668 	mov	psw,#0x00
                                    669 ;	pwm.c:41: printf("EXIT FROM IDEL MODE\n\r");
      0030BB 74 59            [12]  670 	mov	a,#___str_0
      0030BD C0 E0            [24]  671 	push	acc
      0030BF 74 3D            [12]  672 	mov	a,#(___str_0 >> 8)
      0030C1 C0 E0            [24]  673 	push	acc
      0030C3 74 80            [12]  674 	mov	a,#0x80
      0030C5 C0 E0            [24]  675 	push	acc
      0030C7 12 32 F7         [24]  676 	lcall	_printf
      0030CA 15 81            [12]  677 	dec	sp
      0030CC 15 81            [12]  678 	dec	sp
      0030CE 15 81            [12]  679 	dec	sp
                                    680 ;	pwm.c:42: }
      0030D0 D0 D0            [24]  681 	pop	psw
      0030D2 D0 00            [24]  682 	pop	(0+0)
      0030D4 D0 01            [24]  683 	pop	(0+1)
      0030D6 D0 02            [24]  684 	pop	(0+2)
      0030D8 D0 03            [24]  685 	pop	(0+3)
      0030DA D0 04            [24]  686 	pop	(0+4)
      0030DC D0 05            [24]  687 	pop	(0+5)
      0030DE D0 06            [24]  688 	pop	(0+6)
      0030E0 D0 07            [24]  689 	pop	(0+7)
      0030E2 D0 83            [24]  690 	pop	dph
      0030E4 D0 82            [24]  691 	pop	dpl
      0030E6 D0 F0            [24]  692 	pop	b
      0030E8 D0 E0            [24]  693 	pop	acc
      0030EA D0 20            [24]  694 	pop	bits
      0030EC 32               [24]  695 	reti
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'main'
                                    698 ;------------------------------------------------------------
                                    699 ;command                   Allocated with name '_main_command_131072_24'
                                    700 ;------------------------------------------------------------
                                    701 ;	pwm.c:47: void main(void)
                                    702 ;	-----------------------------------------
                                    703 ;	 function main
                                    704 ;	-----------------------------------------
      0030ED                        705 _main:
                                    706 ;	pwm.c:49: CKCON0 = 0x00;
      0030ED 75 8F 00         [24]  707 	mov	_CKCON0,#0x00
                                    708 ;	pwm.c:50: CKCON0 |= CKCON0_X2_BIT;
      0030F0 43 8F 01         [24]  709 	orl	_CKCON0,#0x01
                                    710 ;	pwm.c:51: CKCON0 |= CKCON0_TIX2_BIT;
      0030F3 43 8F 04         [24]  711 	orl	_CKCON0,#0x04
                                    712 ;	pwm.c:52: init_uart();
      0030F6 12 30 65         [24]  713 	lcall	_init_uart
                                    714 ;	pwm.c:53: printf("X2 mode initialized\n\r");
      0030F9 74 6F            [12]  715 	mov	a,#___str_1
      0030FB C0 E0            [24]  716 	push	acc
      0030FD 74 3D            [12]  717 	mov	a,#(___str_1 >> 8)
      0030FF C0 E0            [24]  718 	push	acc
      003101 74 80            [12]  719 	mov	a,#0x80
      003103 C0 E0            [24]  720 	push	acc
      003105 12 32 F7         [24]  721 	lcall	_printf
      003108 15 81            [12]  722 	dec	sp
      00310A 15 81            [12]  723 	dec	sp
      00310C 15 81            [12]  724 	dec	sp
                                    725 ;	pwm.c:54: pwm_init();
      00310E 12 32 64         [24]  726 	lcall	_pwm_init
                                    727 ;	pwm.c:55: printf("PCA MODE : PWM\n\r");
      003111 74 85            [12]  728 	mov	a,#___str_2
      003113 C0 E0            [24]  729 	push	acc
      003115 74 3D            [12]  730 	mov	a,#(___str_2 >> 8)
      003117 C0 E0            [24]  731 	push	acc
      003119 74 80            [12]  732 	mov	a,#0x80
      00311B C0 E0            [24]  733 	push	acc
      00311D 12 32 F7         [24]  734 	lcall	_printf
      003120 15 81            [12]  735 	dec	sp
      003122 15 81            [12]  736 	dec	sp
      003124 15 81            [12]  737 	dec	sp
                                    738 ;	pwm.c:59: printf("COMMANDS :\n\r");
      003126 74 96            [12]  739 	mov	a,#___str_3
      003128 C0 E0            [24]  740 	push	acc
      00312A 74 3D            [12]  741 	mov	a,#(___str_3 >> 8)
      00312C C0 E0            [24]  742 	push	acc
      00312E 74 80            [12]  743 	mov	a,#0x80
      003130 C0 E0            [24]  744 	push	acc
      003132 12 32 F7         [24]  745 	lcall	_printf
      003135 15 81            [12]  746 	dec	sp
      003137 15 81            [12]  747 	dec	sp
      003139 15 81            [12]  748 	dec	sp
                                    749 ;	pwm.c:60: printf(" R - RUN PWM\n\r");
      00313B 74 A3            [12]  750 	mov	a,#___str_4
      00313D C0 E0            [24]  751 	push	acc
      00313F 74 3D            [12]  752 	mov	a,#(___str_4 >> 8)
      003141 C0 E0            [24]  753 	push	acc
      003143 74 80            [12]  754 	mov	a,#0x80
      003145 C0 E0            [24]  755 	push	acc
      003147 12 32 F7         [24]  756 	lcall	_printf
      00314A 15 81            [12]  757 	dec	sp
      00314C 15 81            [12]  758 	dec	sp
      00314E 15 81            [12]  759 	dec	sp
                                    760 ;	pwm.c:61: printf(" S - STOP PWM\n\r");
      003150 74 B2            [12]  761 	mov	a,#___str_5
      003152 C0 E0            [24]  762 	push	acc
      003154 74 3D            [12]  763 	mov	a,#(___str_5 >> 8)
      003156 C0 E0            [24]  764 	push	acc
      003158 74 80            [12]  765 	mov	a,#0x80
      00315A C0 E0            [24]  766 	push	acc
      00315C 12 32 F7         [24]  767 	lcall	_printf
      00315F 15 81            [12]  768 	dec	sp
      003161 15 81            [12]  769 	dec	sp
      003163 15 81            [12]  770 	dec	sp
                                    771 ;	pwm.c:62: printf(" F - MAX FREQUENCY MODE\n\r");
      003165 74 C2            [12]  772 	mov	a,#___str_6
      003167 C0 E0            [24]  773 	push	acc
      003169 74 3D            [12]  774 	mov	a,#(___str_6 >> 8)
      00316B C0 E0            [24]  775 	push	acc
      00316D 74 80            [12]  776 	mov	a,#0x80
      00316F C0 E0            [24]  777 	push	acc
      003171 12 32 F7         [24]  778 	lcall	_printf
      003174 15 81            [12]  779 	dec	sp
      003176 15 81            [12]  780 	dec	sp
      003178 15 81            [12]  781 	dec	sp
                                    782 ;	pwm.c:63: printf(" M - MIN FREQUENCY MODE\n\r");
      00317A 74 DC            [12]  783 	mov	a,#___str_7
      00317C C0 E0            [24]  784 	push	acc
      00317E 74 3D            [12]  785 	mov	a,#(___str_7 >> 8)
      003180 C0 E0            [24]  786 	push	acc
      003182 74 80            [12]  787 	mov	a,#0x80
      003184 C0 E0            [24]  788 	push	acc
      003186 12 32 F7         [24]  789 	lcall	_printf
      003189 15 81            [12]  790 	dec	sp
      00318B 15 81            [12]  791 	dec	sp
      00318D 15 81            [12]  792 	dec	sp
                                    793 ;	pwm.c:64: printf(" I - IDLE MODE\n\r");
      00318F 74 F6            [12]  794 	mov	a,#___str_8
      003191 C0 E0            [24]  795 	push	acc
      003193 74 3D            [12]  796 	mov	a,#(___str_8 >> 8)
      003195 C0 E0            [24]  797 	push	acc
      003197 74 80            [12]  798 	mov	a,#0x80
      003199 C0 E0            [24]  799 	push	acc
      00319B 12 32 F7         [24]  800 	lcall	_printf
      00319E 15 81            [12]  801 	dec	sp
      0031A0 15 81            [12]  802 	dec	sp
      0031A2 15 81            [12]  803 	dec	sp
                                    804 ;	pwm.c:65: printf(" P - POWER DOWN MODE\n\r");
      0031A4 74 07            [12]  805 	mov	a,#___str_9
      0031A6 C0 E0            [24]  806 	push	acc
      0031A8 74 3E            [12]  807 	mov	a,#(___str_9 >> 8)
      0031AA C0 E0            [24]  808 	push	acc
      0031AC 74 80            [12]  809 	mov	a,#0x80
      0031AE C0 E0            [24]  810 	push	acc
      0031B0 12 32 F7         [24]  811 	lcall	_printf
      0031B3 15 81            [12]  812 	dec	sp
      0031B5 15 81            [12]  813 	dec	sp
      0031B7 15 81            [12]  814 	dec	sp
                                    815 ;	pwm.c:67: TCON = 0x01;
      0031B9 75 88 01         [24]  816 	mov	_TCON,#0x01
                                    817 ;	pwm.c:68: IE = 0x81;
      0031BC 75 A8 81         [24]  818 	mov	_IE,#0x81
                                    819 ;	pwm.c:69: while(1)
      0031BF                        820 00114$:
                                    821 ;	pwm.c:71: char command = getchar();
      0031BF 12 30 8E         [24]  822 	lcall	_getchar
      0031C2 AE 82            [24]  823 	mov	r6,dpl
      0031C4 AF 83            [24]  824 	mov	r7,dph
                                    825 ;	pwm.c:72: if(command == 'R')
      0031C6 BE 52 07         [24]  826 	cjne	r6,#0x52,00102$
                                    827 ;	pwm.c:75: pwm_start();
      0031C9 C0 06            [24]  828 	push	ar6
      0031CB 12 32 77         [24]  829 	lcall	_pwm_start
      0031CE D0 06            [24]  830 	pop	ar6
      0031D0                        831 00102$:
                                    832 ;	pwm.c:77: if(command == 'S')
      0031D0 BE 53 07         [24]  833 	cjne	r6,#0x53,00104$
                                    834 ;	pwm.c:80: pwm_stop();
      0031D3 C0 06            [24]  835 	push	ar6
      0031D5 12 32 90         [24]  836 	lcall	_pwm_stop
      0031D8 D0 06            [24]  837 	pop	ar6
      0031DA                        838 00104$:
                                    839 ;	pwm.c:82: if(command == 'F')
      0031DA BE 46 07         [24]  840 	cjne	r6,#0x46,00106$
                                    841 ;	pwm.c:85: freq_max();
      0031DD C0 06            [24]  842 	push	ar6
      0031DF 12 32 32         [24]  843 	lcall	_freq_max
      0031E2 D0 06            [24]  844 	pop	ar6
      0031E4                        845 00106$:
                                    846 ;	pwm.c:87: if(command == 'M')
      0031E4 BE 4D 07         [24]  847 	cjne	r6,#0x4d,00108$
                                    848 ;	pwm.c:90: freq_min();
      0031E7 C0 06            [24]  849 	push	ar6
      0031E9 12 32 4B         [24]  850 	lcall	_freq_min
      0031EC D0 06            [24]  851 	pop	ar6
      0031EE                        852 00108$:
                                    853 ;	pwm.c:92: if(command == 'I')
      0031EE BE 49 07         [24]  854 	cjne	r6,#0x49,00110$
                                    855 ;	pwm.c:94: idle_mode();
      0031F1 C0 06            [24]  856 	push	ar6
      0031F3 12 32 00         [24]  857 	lcall	_idle_mode
      0031F6 D0 06            [24]  858 	pop	ar6
      0031F8                        859 00110$:
                                    860 ;	pwm.c:96: if(command == 'P')
      0031F8 BE 50 C4         [24]  861 	cjne	r6,#0x50,00114$
                                    862 ;	pwm.c:98: power_down_mode();
      0031FB 12 32 19         [24]  863 	lcall	_power_down_mode
                                    864 ;	pwm.c:102: }
      0031FE 80 BF            [24]  865 	sjmp	00114$
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'idle_mode'
                                    868 ;------------------------------------------------------------
                                    869 ;	pwm.c:111: void idle_mode()
                                    870 ;	-----------------------------------------
                                    871 ;	 function idle_mode
                                    872 ;	-----------------------------------------
      003200                        873 _idle_mode:
                                    874 ;	pwm.c:113: printf("IDLE MODE\n\r");
      003200 74 1E            [12]  875 	mov	a,#___str_10
      003202 C0 E0            [24]  876 	push	acc
      003204 74 3E            [12]  877 	mov	a,#(___str_10 >> 8)
      003206 C0 E0            [24]  878 	push	acc
      003208 74 80            [12]  879 	mov	a,#0x80
      00320A C0 E0            [24]  880 	push	acc
      00320C 12 32 F7         [24]  881 	lcall	_printf
      00320F 15 81            [12]  882 	dec	sp
      003211 15 81            [12]  883 	dec	sp
      003213 15 81            [12]  884 	dec	sp
                                    885 ;	pwm.c:114: PCON = 0x01;
      003215 75 87 01         [24]  886 	mov	_PCON,#0x01
                                    887 ;	pwm.c:115: }
      003218 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'power_down_mode'
                                    891 ;------------------------------------------------------------
                                    892 ;	pwm.c:117: void power_down_mode()
                                    893 ;	-----------------------------------------
                                    894 ;	 function power_down_mode
                                    895 ;	-----------------------------------------
      003219                        896 _power_down_mode:
                                    897 ;	pwm.c:119: printf("POWER DOWN MODE\n\r");
      003219 74 2A            [12]  898 	mov	a,#___str_11
      00321B C0 E0            [24]  899 	push	acc
      00321D 74 3E            [12]  900 	mov	a,#(___str_11 >> 8)
      00321F C0 E0            [24]  901 	push	acc
      003221 74 80            [12]  902 	mov	a,#0x80
      003223 C0 E0            [24]  903 	push	acc
      003225 12 32 F7         [24]  904 	lcall	_printf
      003228 15 81            [12]  905 	dec	sp
      00322A 15 81            [12]  906 	dec	sp
      00322C 15 81            [12]  907 	dec	sp
                                    908 ;	pwm.c:120: PCON = 0x02;
      00322E 75 87 02         [24]  909 	mov	_PCON,#0x02
                                    910 ;	pwm.c:121: }
      003231 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'freq_max'
                                    914 ;------------------------------------------------------------
                                    915 ;	pwm.c:122: void freq_max()
                                    916 ;	-----------------------------------------
                                    917 ;	 function freq_max
                                    918 ;	-----------------------------------------
      003232                        919 _freq_max:
                                    920 ;	pwm.c:124: printf("MAXIMUM FREQUENCY\n\r");
      003232 74 3C            [12]  921 	mov	a,#___str_12
      003234 C0 E0            [24]  922 	push	acc
      003236 74 3E            [12]  923 	mov	a,#(___str_12 >> 8)
      003238 C0 E0            [24]  924 	push	acc
      00323A 74 80            [12]  925 	mov	a,#0x80
      00323C C0 E0            [24]  926 	push	acc
      00323E 12 32 F7         [24]  927 	lcall	_printf
      003241 15 81            [12]  928 	dec	sp
      003243 15 81            [12]  929 	dec	sp
      003245 15 81            [12]  930 	dec	sp
                                    931 ;	pwm.c:125: CKRL = 0xFF;
      003247 75 97 FF         [24]  932 	mov	_CKRL,#0xff
                                    933 ;	pwm.c:126: }
      00324A 22               [24]  934 	ret
                                    935 ;------------------------------------------------------------
                                    936 ;Allocation info for local variables in function 'freq_min'
                                    937 ;------------------------------------------------------------
                                    938 ;	pwm.c:128: void freq_min()
                                    939 ;	-----------------------------------------
                                    940 ;	 function freq_min
                                    941 ;	-----------------------------------------
      00324B                        942 _freq_min:
                                    943 ;	pwm.c:130: printf("MINIMUM FREQUENCY\n\r");
      00324B 74 50            [12]  944 	mov	a,#___str_13
      00324D C0 E0            [24]  945 	push	acc
      00324F 74 3E            [12]  946 	mov	a,#(___str_13 >> 8)
      003251 C0 E0            [24]  947 	push	acc
      003253 74 80            [12]  948 	mov	a,#0x80
      003255 C0 E0            [24]  949 	push	acc
      003257 12 32 F7         [24]  950 	lcall	_printf
      00325A 15 81            [12]  951 	dec	sp
      00325C 15 81            [12]  952 	dec	sp
      00325E 15 81            [12]  953 	dec	sp
                                    954 ;	pwm.c:131: CKRL = 0x00;
      003260 75 97 00         [24]  955 	mov	_CKRL,#0x00
                                    956 ;	pwm.c:132: }
      003263 22               [24]  957 	ret
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'pwm_init'
                                    960 ;------------------------------------------------------------
                                    961 ;	pwm.c:133: void pwm_init()
                                    962 ;	-----------------------------------------
                                    963 ;	 function pwm_init
                                    964 ;	-----------------------------------------
      003264                        965 _pwm_init:
                                    966 ;	pwm.c:135: CMOD = 0X82;
      003264 75 D9 82         [24]  967 	mov	_CMOD,#0x82
                                    968 ;	pwm.c:136: CL = 0X00;
      003267 75 E9 00         [24]  969 	mov	_CL,#0x00
                                    970 ;	pwm.c:137: CH = 0X00;
      00326A 75 F9 00         [24]  971 	mov	_CH,#0x00
                                    972 ;	pwm.c:139: CCAP0L = 0X1C;
      00326D 75 EA 1C         [24]  973 	mov	_CCAP0L,#0x1c
                                    974 ;	pwm.c:140: CCAP0H = 0X1C;
      003270 75 FA 1C         [24]  975 	mov	_CCAP0H,#0x1c
                                    976 ;	pwm.c:141: CCAPM0 = 0X42;
      003273 75 DA 42         [24]  977 	mov	_CCAPM0,#0x42
                                    978 ;	pwm.c:142: }
      003276 22               [24]  979 	ret
                                    980 ;------------------------------------------------------------
                                    981 ;Allocation info for local variables in function 'pwm_start'
                                    982 ;------------------------------------------------------------
                                    983 ;	pwm.c:144: void pwm_start()
                                    984 ;	-----------------------------------------
                                    985 ;	 function pwm_start
                                    986 ;	-----------------------------------------
      003277                        987 _pwm_start:
                                    988 ;	pwm.c:146: printf("PWM START\n\r");
      003277 74 64            [12]  989 	mov	a,#___str_14
      003279 C0 E0            [24]  990 	push	acc
      00327B 74 3E            [12]  991 	mov	a,#(___str_14 >> 8)
      00327D C0 E0            [24]  992 	push	acc
      00327F 74 80            [12]  993 	mov	a,#0x80
      003281 C0 E0            [24]  994 	push	acc
      003283 12 32 F7         [24]  995 	lcall	_printf
      003286 15 81            [12]  996 	dec	sp
      003288 15 81            [12]  997 	dec	sp
      00328A 15 81            [12]  998 	dec	sp
                                    999 ;	pwm.c:147: CCON = 0x40;
      00328C 75 D8 40         [24] 1000 	mov	_CCON,#0x40
                                   1001 ;	pwm.c:148: }
      00328F 22               [24] 1002 	ret
                                   1003 ;------------------------------------------------------------
                                   1004 ;Allocation info for local variables in function 'pwm_stop'
                                   1005 ;------------------------------------------------------------
                                   1006 ;	pwm.c:150: void pwm_stop()
                                   1007 ;	-----------------------------------------
                                   1008 ;	 function pwm_stop
                                   1009 ;	-----------------------------------------
      003290                       1010 _pwm_stop:
                                   1011 ;	pwm.c:152: printf("PWM STOP\n\r");
      003290 74 70            [12] 1012 	mov	a,#___str_15
      003292 C0 E0            [24] 1013 	push	acc
      003294 74 3E            [12] 1014 	mov	a,#(___str_15 >> 8)
      003296 C0 E0            [24] 1015 	push	acc
      003298 74 80            [12] 1016 	mov	a,#0x80
      00329A C0 E0            [24] 1017 	push	acc
      00329C 12 32 F7         [24] 1018 	lcall	_printf
      00329F 15 81            [12] 1019 	dec	sp
      0032A1 15 81            [12] 1020 	dec	sp
      0032A3 15 81            [12] 1021 	dec	sp
                                   1022 ;	pwm.c:153: CCON = 0x00;
      0032A5 75 D8 00         [24] 1023 	mov	_CCON,#0x00
                                   1024 ;	pwm.c:154: }
      0032A8 22               [24] 1025 	ret
                                   1026 	.area CSEG    (CODE)
                                   1027 	.area CONST   (CODE)
                                   1028 	.area CONST   (CODE)
      003D59                       1029 ___str_0:
      003D59 45 58 49 54 20 46 52  1030 	.ascii "EXIT FROM IDEL MODE"
             4F 4D 20 49 44 45 4C
             20 4D 4F 44 45
      003D6C 0A                    1031 	.db 0x0a
      003D6D 0D                    1032 	.db 0x0d
      003D6E 00                    1033 	.db 0x00
                                   1034 	.area CSEG    (CODE)
                                   1035 	.area CONST   (CODE)
      003D6F                       1036 ___str_1:
      003D6F 58 32 20 6D 6F 64 65  1037 	.ascii "X2 mode initialized"
             20 69 6E 69 74 69 61
             6C 69 7A 65 64
      003D82 0A                    1038 	.db 0x0a
      003D83 0D                    1039 	.db 0x0d
      003D84 00                    1040 	.db 0x00
                                   1041 	.area CSEG    (CODE)
                                   1042 	.area CONST   (CODE)
      003D85                       1043 ___str_2:
      003D85 50 43 41 20 4D 4F 44  1044 	.ascii "PCA MODE : PWM"
             45 20 3A 20 50 57 4D
      003D93 0A                    1045 	.db 0x0a
      003D94 0D                    1046 	.db 0x0d
      003D95 00                    1047 	.db 0x00
                                   1048 	.area CSEG    (CODE)
                                   1049 	.area CONST   (CODE)
      003D96                       1050 ___str_3:
      003D96 43 4F 4D 4D 41 4E 44  1051 	.ascii "COMMANDS :"
             53 20 3A
      003DA0 0A                    1052 	.db 0x0a
      003DA1 0D                    1053 	.db 0x0d
      003DA2 00                    1054 	.db 0x00
                                   1055 	.area CSEG    (CODE)
                                   1056 	.area CONST   (CODE)
      003DA3                       1057 ___str_4:
      003DA3 20 52 20 2D 20 52 55  1058 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      003DAF 0A                    1059 	.db 0x0a
      003DB0 0D                    1060 	.db 0x0d
      003DB1 00                    1061 	.db 0x00
                                   1062 	.area CSEG    (CODE)
                                   1063 	.area CONST   (CODE)
      003DB2                       1064 ___str_5:
      003DB2 20 53 20 2D 20 53 54  1065 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      003DBF 0A                    1066 	.db 0x0a
      003DC0 0D                    1067 	.db 0x0d
      003DC1 00                    1068 	.db 0x00
                                   1069 	.area CSEG    (CODE)
                                   1070 	.area CONST   (CODE)
      003DC2                       1071 ___str_6:
      003DC2 20 46 20 2D 20 4D 41  1072 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003DD9 0A                    1073 	.db 0x0a
      003DDA 0D                    1074 	.db 0x0d
      003DDB 00                    1075 	.db 0x00
                                   1076 	.area CSEG    (CODE)
                                   1077 	.area CONST   (CODE)
      003DDC                       1078 ___str_7:
      003DDC 20 4D 20 2D 20 4D 49  1079 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003DF3 0A                    1080 	.db 0x0a
      003DF4 0D                    1081 	.db 0x0d
      003DF5 00                    1082 	.db 0x00
                                   1083 	.area CSEG    (CODE)
                                   1084 	.area CONST   (CODE)
      003DF6                       1085 ___str_8:
      003DF6 20 49 20 2D 20 49 44  1086 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      003E04 0A                    1087 	.db 0x0a
      003E05 0D                    1088 	.db 0x0d
      003E06 00                    1089 	.db 0x00
                                   1090 	.area CSEG    (CODE)
                                   1091 	.area CONST   (CODE)
      003E07                       1092 ___str_9:
      003E07 20 50 20 2D 20 50 4F  1093 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      003E1B 0A                    1094 	.db 0x0a
      003E1C 0D                    1095 	.db 0x0d
      003E1D 00                    1096 	.db 0x00
                                   1097 	.area CSEG    (CODE)
                                   1098 	.area CONST   (CODE)
      003E1E                       1099 ___str_10:
      003E1E 49 44 4C 45 20 4D 4F  1100 	.ascii "IDLE MODE"
             44 45
      003E27 0A                    1101 	.db 0x0a
      003E28 0D                    1102 	.db 0x0d
      003E29 00                    1103 	.db 0x00
                                   1104 	.area CSEG    (CODE)
                                   1105 	.area CONST   (CODE)
      003E2A                       1106 ___str_11:
      003E2A 50 4F 57 45 52 20 44  1107 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      003E39 0A                    1108 	.db 0x0a
      003E3A 0D                    1109 	.db 0x0d
      003E3B 00                    1110 	.db 0x00
                                   1111 	.area CSEG    (CODE)
                                   1112 	.area CONST   (CODE)
      003E3C                       1113 ___str_12:
      003E3C 4D 41 58 49 4D 55 4D  1114 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003E4D 0A                    1115 	.db 0x0a
      003E4E 0D                    1116 	.db 0x0d
      003E4F 00                    1117 	.db 0x00
                                   1118 	.area CSEG    (CODE)
                                   1119 	.area CONST   (CODE)
      003E50                       1120 ___str_13:
      003E50 4D 49 4E 49 4D 55 4D  1121 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003E61 0A                    1122 	.db 0x0a
      003E62 0D                    1123 	.db 0x0d
      003E63 00                    1124 	.db 0x00
                                   1125 	.area CSEG    (CODE)
                                   1126 	.area CONST   (CODE)
      003E64                       1127 ___str_14:
      003E64 50 57 4D 20 53 54 41  1128 	.ascii "PWM START"
             52 54
      003E6D 0A                    1129 	.db 0x0a
      003E6E 0D                    1130 	.db 0x0d
      003E6F 00                    1131 	.db 0x00
                                   1132 	.area CSEG    (CODE)
                                   1133 	.area CONST   (CODE)
      003E70                       1134 ___str_15:
      003E70 50 57 4D 20 53 54 4F  1135 	.ascii "PWM STOP"
             50
      003E78 0A                    1136 	.db 0x0a
      003E79 0D                    1137 	.db 0x0d
      003E7A 00                    1138 	.db 0x00
                                   1139 	.area CSEG    (CODE)
                                   1140 	.area XINIT   (CODE)
                                   1141 	.area CABS    (ABS,CODE)
