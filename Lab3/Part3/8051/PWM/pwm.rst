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
      000402                        508 _getchar_c_65536_18:
      000402                        509 	.ds 1
                                    510 ;--------------------------------------------------------
                                    511 ; absolute external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XABS    (ABS,XDATA)
                                    514 ;--------------------------------------------------------
                                    515 ; external initialized ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XISEG   (XDATA)
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT0 (CODE)
                                    520 	.area GSINIT1 (CODE)
                                    521 	.area GSINIT2 (CODE)
                                    522 	.area GSINIT3 (CODE)
                                    523 	.area GSINIT4 (CODE)
                                    524 	.area GSINIT5 (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area CSEG    (CODE)
                                    528 ;--------------------------------------------------------
                                    529 ; interrupt vector 
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
      000000                        532 __interrupt_vect:
      000000 02 00 09         [24]  533 	ljmp	__sdcc_gsinit_startup
      000003 02 00 A9         [24]  534 	ljmp	_external_ISR
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.globl __sdcc_gsinit_startup
                                    543 	.globl __sdcc_program_startup
                                    544 	.globl __start__stack
                                    545 	.globl __mcs51_genXINIT
                                    546 	.globl __mcs51_genXRAMCLEAR
                                    547 	.globl __mcs51_genRAMCLEAR
                                    548 	.area GSFINAL (CODE)
      000062 02 00 06         [24]  549 	ljmp	__sdcc_program_startup
                                    550 ;--------------------------------------------------------
                                    551 ; Home
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area HOME    (CODE)
      000006                        555 __sdcc_program_startup:
      000006 02 00 FA         [24]  556 	ljmp	_main
                                    557 ;	return from main will return to caller
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'init_uart'
                                    564 ;------------------------------------------------------------
                                    565 ;	pwm.c:13: void init_uart(void)
                                    566 ;	-----------------------------------------
                                    567 ;	 function init_uart
                                    568 ;	-----------------------------------------
      000065                        569 _init_uart:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	pwm.c:15: SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
      000065 75 98 50         [24]  579 	mov	_SCON,#0x50
                                    580 ;	pwm.c:16: TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
      000068 75 89 20         [24]  581 	mov	_TMOD,#0x20
                                    582 ;	pwm.c:17: TH1 = 0xFD;                // 9600 baud rate
      00006B 75 8D FD         [24]  583 	mov	_TH1,#0xfd
                                    584 ;	pwm.c:18: TR1 = 1;                   // Start timer 1
                                    585 ;	assignBit
      00006E D2 8E            [12]  586 	setb	_TR1
                                    587 ;	pwm.c:19: TI = 1;
                                    588 ;	assignBit
      000070 D2 99            [12]  589 	setb	_TI
                                    590 ;	pwm.c:20: }
      000072 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'putchar'
                                    594 ;------------------------------------------------------------
                                    595 ;chr                       Allocated with name '_putchar_chr_65536_15'
                                    596 ;------------------------------------------------------------
                                    597 ;	pwm.c:23: int putchar(int chr)
                                    598 ;	-----------------------------------------
                                    599 ;	 function putchar
                                    600 ;	-----------------------------------------
      000073                        601 _putchar:
      000073 AF 83            [24]  602 	mov	r7,dph
      000075 E5 82            [12]  603 	mov	a,dpl
      000077 90 04 00         [24]  604 	mov	dptr,#_putchar_chr_65536_15
      00007A F0               [24]  605 	movx	@dptr,a
      00007B EF               [12]  606 	mov	a,r7
      00007C A3               [24]  607 	inc	dptr
      00007D F0               [24]  608 	movx	@dptr,a
                                    609 ;	pwm.c:25: while(!TI);      // Wait until TI is set
      00007E                        610 00101$:
                                    611 ;	pwm.c:26: TI = 0;          // Clear TI flag
                                    612 ;	assignBit
      00007E 10 99 02         [24]  613 	jbc	_TI,00114$
      000081 80 FB            [24]  614 	sjmp	00101$
      000083                        615 00114$:
                                    616 ;	pwm.c:27: SBUF = chr;      // Load data into buffer
      000083 90 04 00         [24]  617 	mov	dptr,#_putchar_chr_65536_15
      000086 E0               [24]  618 	movx	a,@dptr
      000087 FE               [12]  619 	mov	r6,a
      000088 A3               [24]  620 	inc	dptr
      000089 E0               [24]  621 	movx	a,@dptr
      00008A FF               [12]  622 	mov	r7,a
      00008B 8E 99            [24]  623 	mov	_SBUF,r6
                                    624 ;	pwm.c:28: return chr;
      00008D 8E 82            [24]  625 	mov	dpl,r6
      00008F 8F 83            [24]  626 	mov	dph,r7
                                    627 ;	pwm.c:29: }
      000091 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'getchar'
                                    631 ;------------------------------------------------------------
                                    632 ;c                         Allocated with name '_getchar_c_65536_18'
                                    633 ;------------------------------------------------------------
                                    634 ;	pwm.c:31: int getchar(void)
                                    635 ;	-----------------------------------------
                                    636 ;	 function getchar
                                    637 ;	-----------------------------------------
      000092                        638 _getchar:
                                    639 ;	pwm.c:34: while(!RI);      // Wait until RI is set
      000092                        640 00101$:
      000092 30 98 FD         [24]  641 	jnb	_RI,00101$
                                    642 ;	pwm.c:35: c = SBUF;        // Read received data
      000095 90 04 02         [24]  643 	mov	dptr,#_getchar_c_65536_18
      000098 E5 99            [12]  644 	mov	a,_SBUF
      00009A F0               [24]  645 	movx	@dptr,a
                                    646 ;	pwm.c:36: RI = 0;          // Clear RI flag
                                    647 ;	assignBit
      00009B C2 98            [12]  648 	clr	_RI
                                    649 ;	pwm.c:37: return c;
      00009D 90 04 02         [24]  650 	mov	dptr,#_getchar_c_65536_18
      0000A0 E0               [24]  651 	movx	a,@dptr
      0000A1 FF               [12]  652 	mov	r7,a
      0000A2 7E 00            [12]  653 	mov	r6,#0x00
      0000A4 8F 82            [24]  654 	mov	dpl,r7
      0000A6 8E 83            [24]  655 	mov	dph,r6
                                    656 ;	pwm.c:38: }
      0000A8 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'external_ISR'
                                    660 ;------------------------------------------------------------
                                    661 ;	pwm.c:41: void external_ISR(void) __interrupt (0)
                                    662 ;	-----------------------------------------
                                    663 ;	 function external_ISR
                                    664 ;	-----------------------------------------
      0000A9                        665 _external_ISR:
      0000A9 C0 20            [24]  666 	push	bits
      0000AB C0 E0            [24]  667 	push	acc
      0000AD C0 F0            [24]  668 	push	b
      0000AF C0 82            [24]  669 	push	dpl
      0000B1 C0 83            [24]  670 	push	dph
      0000B3 C0 07            [24]  671 	push	(0+7)
      0000B5 C0 06            [24]  672 	push	(0+6)
      0000B7 C0 05            [24]  673 	push	(0+5)
      0000B9 C0 04            [24]  674 	push	(0+4)
      0000BB C0 03            [24]  675 	push	(0+3)
      0000BD C0 02            [24]  676 	push	(0+2)
      0000BF C0 01            [24]  677 	push	(0+1)
      0000C1 C0 00            [24]  678 	push	(0+0)
      0000C3 C0 D0            [24]  679 	push	psw
      0000C5 75 D0 00         [24]  680 	mov	psw,#0x00
                                    681 ;	pwm.c:43: printf("EXIT FROM IDEL MODE\n\r");
      0000C8 74 67            [12]  682 	mov	a,#___str_0
      0000CA C0 E0            [24]  683 	push	acc
      0000CC 74 0D            [12]  684 	mov	a,#(___str_0 >> 8)
      0000CE C0 E0            [24]  685 	push	acc
      0000D0 74 80            [12]  686 	mov	a,#0x80
      0000D2 C0 E0            [24]  687 	push	acc
      0000D4 12 03 05         [24]  688 	lcall	_printf
      0000D7 15 81            [12]  689 	dec	sp
      0000D9 15 81            [12]  690 	dec	sp
      0000DB 15 81            [12]  691 	dec	sp
                                    692 ;	pwm.c:44: }
      0000DD D0 D0            [24]  693 	pop	psw
      0000DF D0 00            [24]  694 	pop	(0+0)
      0000E1 D0 01            [24]  695 	pop	(0+1)
      0000E3 D0 02            [24]  696 	pop	(0+2)
      0000E5 D0 03            [24]  697 	pop	(0+3)
      0000E7 D0 04            [24]  698 	pop	(0+4)
      0000E9 D0 05            [24]  699 	pop	(0+5)
      0000EB D0 06            [24]  700 	pop	(0+6)
      0000ED D0 07            [24]  701 	pop	(0+7)
      0000EF D0 83            [24]  702 	pop	dph
      0000F1 D0 82            [24]  703 	pop	dpl
      0000F3 D0 F0            [24]  704 	pop	b
      0000F5 D0 E0            [24]  705 	pop	acc
      0000F7 D0 20            [24]  706 	pop	bits
      0000F9 32               [24]  707 	reti
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'main'
                                    710 ;------------------------------------------------------------
                                    711 ;command                   Allocated with name '_main_command_131072_23'
                                    712 ;------------------------------------------------------------
                                    713 ;	pwm.c:49: void main(void)
                                    714 ;	-----------------------------------------
                                    715 ;	 function main
                                    716 ;	-----------------------------------------
      0000FA                        717 _main:
                                    718 ;	pwm.c:54: init_uart();
      0000FA 12 00 65         [24]  719 	lcall	_init_uart
                                    720 ;	pwm.c:56: pwm_init();
      0000FD 12 02 72         [24]  721 	lcall	_pwm_init
                                    722 ;	pwm.c:57: printf("PCA MODE : PWM\n\r");
      000100 74 7D            [12]  723 	mov	a,#___str_1
      000102 C0 E0            [24]  724 	push	acc
      000104 74 0D            [12]  725 	mov	a,#(___str_1 >> 8)
      000106 C0 E0            [24]  726 	push	acc
      000108 74 80            [12]  727 	mov	a,#0x80
      00010A C0 E0            [24]  728 	push	acc
      00010C 12 03 05         [24]  729 	lcall	_printf
      00010F 15 81            [12]  730 	dec	sp
      000111 15 81            [12]  731 	dec	sp
      000113 15 81            [12]  732 	dec	sp
                                    733 ;	pwm.c:61: printf("COMMANDS :\n\r");
      000115 74 8E            [12]  734 	mov	a,#___str_2
      000117 C0 E0            [24]  735 	push	acc
      000119 74 0D            [12]  736 	mov	a,#(___str_2 >> 8)
      00011B C0 E0            [24]  737 	push	acc
      00011D 74 80            [12]  738 	mov	a,#0x80
      00011F C0 E0            [24]  739 	push	acc
      000121 12 03 05         [24]  740 	lcall	_printf
      000124 15 81            [12]  741 	dec	sp
      000126 15 81            [12]  742 	dec	sp
      000128 15 81            [12]  743 	dec	sp
                                    744 ;	pwm.c:62: printf(" R - RUN PWM\n\r");
      00012A 74 9B            [12]  745 	mov	a,#___str_3
      00012C C0 E0            [24]  746 	push	acc
      00012E 74 0D            [12]  747 	mov	a,#(___str_3 >> 8)
      000130 C0 E0            [24]  748 	push	acc
      000132 74 80            [12]  749 	mov	a,#0x80
      000134 C0 E0            [24]  750 	push	acc
      000136 12 03 05         [24]  751 	lcall	_printf
      000139 15 81            [12]  752 	dec	sp
      00013B 15 81            [12]  753 	dec	sp
      00013D 15 81            [12]  754 	dec	sp
                                    755 ;	pwm.c:63: printf(" S - STOP PWM\n\r");
      00013F 74 AA            [12]  756 	mov	a,#___str_4
      000141 C0 E0            [24]  757 	push	acc
      000143 74 0D            [12]  758 	mov	a,#(___str_4 >> 8)
      000145 C0 E0            [24]  759 	push	acc
      000147 74 80            [12]  760 	mov	a,#0x80
      000149 C0 E0            [24]  761 	push	acc
      00014B 12 03 05         [24]  762 	lcall	_printf
      00014E 15 81            [12]  763 	dec	sp
      000150 15 81            [12]  764 	dec	sp
      000152 15 81            [12]  765 	dec	sp
                                    766 ;	pwm.c:64: printf(" F - MAX FREQUENCY MODE\n\r");
      000154 74 BA            [12]  767 	mov	a,#___str_5
      000156 C0 E0            [24]  768 	push	acc
      000158 74 0D            [12]  769 	mov	a,#(___str_5 >> 8)
      00015A C0 E0            [24]  770 	push	acc
      00015C 74 80            [12]  771 	mov	a,#0x80
      00015E C0 E0            [24]  772 	push	acc
      000160 12 03 05         [24]  773 	lcall	_printf
      000163 15 81            [12]  774 	dec	sp
      000165 15 81            [12]  775 	dec	sp
      000167 15 81            [12]  776 	dec	sp
                                    777 ;	pwm.c:65: printf(" M - MIN FREQUENCY MODE\n\r");
      000169 74 D4            [12]  778 	mov	a,#___str_6
      00016B C0 E0            [24]  779 	push	acc
      00016D 74 0D            [12]  780 	mov	a,#(___str_6 >> 8)
      00016F C0 E0            [24]  781 	push	acc
      000171 74 80            [12]  782 	mov	a,#0x80
      000173 C0 E0            [24]  783 	push	acc
      000175 12 03 05         [24]  784 	lcall	_printf
      000178 15 81            [12]  785 	dec	sp
      00017A 15 81            [12]  786 	dec	sp
      00017C 15 81            [12]  787 	dec	sp
                                    788 ;	pwm.c:66: printf(" I - IDLE MODE\n\r");
      00017E 74 EE            [12]  789 	mov	a,#___str_7
      000180 C0 E0            [24]  790 	push	acc
      000182 74 0D            [12]  791 	mov	a,#(___str_7 >> 8)
      000184 C0 E0            [24]  792 	push	acc
      000186 74 80            [12]  793 	mov	a,#0x80
      000188 C0 E0            [24]  794 	push	acc
      00018A 12 03 05         [24]  795 	lcall	_printf
      00018D 15 81            [12]  796 	dec	sp
      00018F 15 81            [12]  797 	dec	sp
      000191 15 81            [12]  798 	dec	sp
                                    799 ;	pwm.c:67: printf(" P - POWER DOWN MODE\n\r");
      000193 74 FF            [12]  800 	mov	a,#___str_8
      000195 C0 E0            [24]  801 	push	acc
      000197 74 0D            [12]  802 	mov	a,#(___str_8 >> 8)
      000199 C0 E0            [24]  803 	push	acc
      00019B 74 80            [12]  804 	mov	a,#0x80
      00019D C0 E0            [24]  805 	push	acc
      00019F 12 03 05         [24]  806 	lcall	_printf
      0001A2 15 81            [12]  807 	dec	sp
      0001A4 15 81            [12]  808 	dec	sp
      0001A6 15 81            [12]  809 	dec	sp
                                    810 ;	pwm.c:70: TCON = 0x01;
      0001A8 75 88 01         [24]  811 	mov	_TCON,#0x01
                                    812 ;	pwm.c:71: IE = 0x81;
      0001AB 75 A8 81         [24]  813 	mov	_IE,#0x81
                                    814 ;	pwm.c:72: while(1)
      0001AE                        815 00114$:
                                    816 ;	pwm.c:74: char command = getchar();
      0001AE 12 00 92         [24]  817 	lcall	_getchar
      0001B1 AE 82            [24]  818 	mov	r6,dpl
                                    819 ;	pwm.c:75: printf("COMMAND ENTERED %c\n\r", command);
      0001B3 8E 05            [24]  820 	mov	ar5,r6
      0001B5 7F 00            [12]  821 	mov	r7,#0x00
      0001B7 C0 06            [24]  822 	push	ar6
      0001B9 C0 05            [24]  823 	push	ar5
      0001BB C0 07            [24]  824 	push	ar7
      0001BD 74 16            [12]  825 	mov	a,#___str_9
      0001BF C0 E0            [24]  826 	push	acc
      0001C1 74 0E            [12]  827 	mov	a,#(___str_9 >> 8)
      0001C3 C0 E0            [24]  828 	push	acc
      0001C5 74 80            [12]  829 	mov	a,#0x80
      0001C7 C0 E0            [24]  830 	push	acc
      0001C9 12 03 05         [24]  831 	lcall	_printf
      0001CC E5 81            [12]  832 	mov	a,sp
      0001CE 24 FB            [12]  833 	add	a,#0xfb
      0001D0 F5 81            [12]  834 	mov	sp,a
      0001D2 D0 06            [24]  835 	pop	ar6
                                    836 ;	pwm.c:76: if(command == 'R')
      0001D4 BE 52 07         [24]  837 	cjne	r6,#0x52,00102$
                                    838 ;	pwm.c:79: pwm_start();
      0001D7 C0 06            [24]  839 	push	ar6
      0001D9 12 02 85         [24]  840 	lcall	_pwm_start
      0001DC D0 06            [24]  841 	pop	ar6
      0001DE                        842 00102$:
                                    843 ;	pwm.c:81: if(command == 'S')
      0001DE BE 53 07         [24]  844 	cjne	r6,#0x53,00104$
                                    845 ;	pwm.c:84: pwm_stop();
      0001E1 C0 06            [24]  846 	push	ar6
      0001E3 12 02 9E         [24]  847 	lcall	_pwm_stop
      0001E6 D0 06            [24]  848 	pop	ar6
      0001E8                        849 00104$:
                                    850 ;	pwm.c:86: if(command == 'F')
      0001E8 BE 46 07         [24]  851 	cjne	r6,#0x46,00106$
                                    852 ;	pwm.c:89: freq_max();
      0001EB C0 06            [24]  853 	push	ar6
      0001ED 12 02 40         [24]  854 	lcall	_freq_max
      0001F0 D0 06            [24]  855 	pop	ar6
      0001F2                        856 00106$:
                                    857 ;	pwm.c:91: if(command == 'M')
      0001F2 BE 4D 07         [24]  858 	cjne	r6,#0x4d,00108$
                                    859 ;	pwm.c:94: freq_min();
      0001F5 C0 06            [24]  860 	push	ar6
      0001F7 12 02 59         [24]  861 	lcall	_freq_min
      0001FA D0 06            [24]  862 	pop	ar6
      0001FC                        863 00108$:
                                    864 ;	pwm.c:96: if(command == 'I')
      0001FC BE 49 07         [24]  865 	cjne	r6,#0x49,00110$
                                    866 ;	pwm.c:98: idle_mode();
      0001FF C0 06            [24]  867 	push	ar6
      000201 12 02 0E         [24]  868 	lcall	_idle_mode
      000204 D0 06            [24]  869 	pop	ar6
      000206                        870 00110$:
                                    871 ;	pwm.c:100: if(command == 'P')
      000206 BE 50 A5         [24]  872 	cjne	r6,#0x50,00114$
                                    873 ;	pwm.c:102: power_down_mode();
      000209 12 02 27         [24]  874 	lcall	_power_down_mode
                                    875 ;	pwm.c:106: }
      00020C 80 A0            [24]  876 	sjmp	00114$
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'idle_mode'
                                    879 ;------------------------------------------------------------
                                    880 ;	pwm.c:115: void idle_mode()
                                    881 ;	-----------------------------------------
                                    882 ;	 function idle_mode
                                    883 ;	-----------------------------------------
      00020E                        884 _idle_mode:
                                    885 ;	pwm.c:117: printf("IDLE MODE\n\r");
      00020E 74 2B            [12]  886 	mov	a,#___str_10
      000210 C0 E0            [24]  887 	push	acc
      000212 74 0E            [12]  888 	mov	a,#(___str_10 >> 8)
      000214 C0 E0            [24]  889 	push	acc
      000216 74 80            [12]  890 	mov	a,#0x80
      000218 C0 E0            [24]  891 	push	acc
      00021A 12 03 05         [24]  892 	lcall	_printf
      00021D 15 81            [12]  893 	dec	sp
      00021F 15 81            [12]  894 	dec	sp
      000221 15 81            [12]  895 	dec	sp
                                    896 ;	pwm.c:118: PCON = 0x01;
      000223 75 87 01         [24]  897 	mov	_PCON,#0x01
                                    898 ;	pwm.c:119: }
      000226 22               [24]  899 	ret
                                    900 ;------------------------------------------------------------
                                    901 ;Allocation info for local variables in function 'power_down_mode'
                                    902 ;------------------------------------------------------------
                                    903 ;	pwm.c:121: void power_down_mode()
                                    904 ;	-----------------------------------------
                                    905 ;	 function power_down_mode
                                    906 ;	-----------------------------------------
      000227                        907 _power_down_mode:
                                    908 ;	pwm.c:123: printf("POWER DOWN MODE\n\r");
      000227 74 37            [12]  909 	mov	a,#___str_11
      000229 C0 E0            [24]  910 	push	acc
      00022B 74 0E            [12]  911 	mov	a,#(___str_11 >> 8)
      00022D C0 E0            [24]  912 	push	acc
      00022F 74 80            [12]  913 	mov	a,#0x80
      000231 C0 E0            [24]  914 	push	acc
      000233 12 03 05         [24]  915 	lcall	_printf
      000236 15 81            [12]  916 	dec	sp
      000238 15 81            [12]  917 	dec	sp
      00023A 15 81            [12]  918 	dec	sp
                                    919 ;	pwm.c:124: PCON = 0x02;
      00023C 75 87 02         [24]  920 	mov	_PCON,#0x02
                                    921 ;	pwm.c:125: }
      00023F 22               [24]  922 	ret
                                    923 ;------------------------------------------------------------
                                    924 ;Allocation info for local variables in function 'freq_max'
                                    925 ;------------------------------------------------------------
                                    926 ;	pwm.c:126: void freq_max()
                                    927 ;	-----------------------------------------
                                    928 ;	 function freq_max
                                    929 ;	-----------------------------------------
      000240                        930 _freq_max:
                                    931 ;	pwm.c:128: printf("MAXIMUM FREQUENCY\n\r");
      000240 74 49            [12]  932 	mov	a,#___str_12
      000242 C0 E0            [24]  933 	push	acc
      000244 74 0E            [12]  934 	mov	a,#(___str_12 >> 8)
      000246 C0 E0            [24]  935 	push	acc
      000248 74 80            [12]  936 	mov	a,#0x80
      00024A C0 E0            [24]  937 	push	acc
      00024C 12 03 05         [24]  938 	lcall	_printf
      00024F 15 81            [12]  939 	dec	sp
      000251 15 81            [12]  940 	dec	sp
      000253 15 81            [12]  941 	dec	sp
                                    942 ;	pwm.c:129: CKRL = 0xFF;
      000255 75 97 FF         [24]  943 	mov	_CKRL,#0xff
                                    944 ;	pwm.c:130: }
      000258 22               [24]  945 	ret
                                    946 ;------------------------------------------------------------
                                    947 ;Allocation info for local variables in function 'freq_min'
                                    948 ;------------------------------------------------------------
                                    949 ;	pwm.c:132: void freq_min()
                                    950 ;	-----------------------------------------
                                    951 ;	 function freq_min
                                    952 ;	-----------------------------------------
      000259                        953 _freq_min:
                                    954 ;	pwm.c:134: printf("MINIMUM FREQUENCY\n\r");
      000259 74 5D            [12]  955 	mov	a,#___str_13
      00025B C0 E0            [24]  956 	push	acc
      00025D 74 0E            [12]  957 	mov	a,#(___str_13 >> 8)
      00025F C0 E0            [24]  958 	push	acc
      000261 74 80            [12]  959 	mov	a,#0x80
      000263 C0 E0            [24]  960 	push	acc
      000265 12 03 05         [24]  961 	lcall	_printf
      000268 15 81            [12]  962 	dec	sp
      00026A 15 81            [12]  963 	dec	sp
      00026C 15 81            [12]  964 	dec	sp
                                    965 ;	pwm.c:135: CKRL = 0x00;
      00026E 75 97 00         [24]  966 	mov	_CKRL,#0x00
                                    967 ;	pwm.c:136: }
      000271 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'pwm_init'
                                    971 ;------------------------------------------------------------
                                    972 ;	pwm.c:137: void pwm_init()
                                    973 ;	-----------------------------------------
                                    974 ;	 function pwm_init
                                    975 ;	-----------------------------------------
      000272                        976 _pwm_init:
                                    977 ;	pwm.c:139: CMOD = 0X82;
      000272 75 D9 82         [24]  978 	mov	_CMOD,#0x82
                                    979 ;	pwm.c:140: CL = 0X00;
      000275 75 E9 00         [24]  980 	mov	_CL,#0x00
                                    981 ;	pwm.c:141: CH = 0X00;
      000278 75 F9 00         [24]  982 	mov	_CH,#0x00
                                    983 ;	pwm.c:143: CCAP0L = 0X1C;
      00027B 75 EA 1C         [24]  984 	mov	_CCAP0L,#0x1c
                                    985 ;	pwm.c:144: CCAP0H = 0X1C;
      00027E 75 FA 1C         [24]  986 	mov	_CCAP0H,#0x1c
                                    987 ;	pwm.c:145: CCAPM0 = 0X42;
      000281 75 DA 42         [24]  988 	mov	_CCAPM0,#0x42
                                    989 ;	pwm.c:146: }
      000284 22               [24]  990 	ret
                                    991 ;------------------------------------------------------------
                                    992 ;Allocation info for local variables in function 'pwm_start'
                                    993 ;------------------------------------------------------------
                                    994 ;	pwm.c:148: void pwm_start()
                                    995 ;	-----------------------------------------
                                    996 ;	 function pwm_start
                                    997 ;	-----------------------------------------
      000285                        998 _pwm_start:
                                    999 ;	pwm.c:150: printf("PWM START\n\r");
      000285 74 71            [12] 1000 	mov	a,#___str_14
      000287 C0 E0            [24] 1001 	push	acc
      000289 74 0E            [12] 1002 	mov	a,#(___str_14 >> 8)
      00028B C0 E0            [24] 1003 	push	acc
      00028D 74 80            [12] 1004 	mov	a,#0x80
      00028F C0 E0            [24] 1005 	push	acc
      000291 12 03 05         [24] 1006 	lcall	_printf
      000294 15 81            [12] 1007 	dec	sp
      000296 15 81            [12] 1008 	dec	sp
      000298 15 81            [12] 1009 	dec	sp
                                   1010 ;	pwm.c:151: CCON = 0x40;
      00029A 75 D8 40         [24] 1011 	mov	_CCON,#0x40
                                   1012 ;	pwm.c:152: }
      00029D 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'pwm_stop'
                                   1016 ;------------------------------------------------------------
                                   1017 ;	pwm.c:154: void pwm_stop()
                                   1018 ;	-----------------------------------------
                                   1019 ;	 function pwm_stop
                                   1020 ;	-----------------------------------------
      00029E                       1021 _pwm_stop:
                                   1022 ;	pwm.c:156: printf("PWM STOP\n\r");
      00029E 74 7D            [12] 1023 	mov	a,#___str_15
      0002A0 C0 E0            [24] 1024 	push	acc
      0002A2 74 0E            [12] 1025 	mov	a,#(___str_15 >> 8)
      0002A4 C0 E0            [24] 1026 	push	acc
      0002A6 74 80            [12] 1027 	mov	a,#0x80
      0002A8 C0 E0            [24] 1028 	push	acc
      0002AA 12 03 05         [24] 1029 	lcall	_printf
      0002AD 15 81            [12] 1030 	dec	sp
      0002AF 15 81            [12] 1031 	dec	sp
      0002B1 15 81            [12] 1032 	dec	sp
                                   1033 ;	pwm.c:157: CCON = 0x00;
      0002B3 75 D8 00         [24] 1034 	mov	_CCON,#0x00
                                   1035 ;	pwm.c:158: }
      0002B6 22               [24] 1036 	ret
                                   1037 	.area CSEG    (CODE)
                                   1038 	.area CONST   (CODE)
                                   1039 	.area CONST   (CODE)
      000D67                       1040 ___str_0:
      000D67 45 58 49 54 20 46 52  1041 	.ascii "EXIT FROM IDEL MODE"
             4F 4D 20 49 44 45 4C
             20 4D 4F 44 45
      000D7A 0A                    1042 	.db 0x0a
      000D7B 0D                    1043 	.db 0x0d
      000D7C 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      000D7D                       1047 ___str_1:
      000D7D 50 43 41 20 4D 4F 44  1048 	.ascii "PCA MODE : PWM"
             45 20 3A 20 50 57 4D
      000D8B 0A                    1049 	.db 0x0a
      000D8C 0D                    1050 	.db 0x0d
      000D8D 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      000D8E                       1054 ___str_2:
      000D8E 43 4F 4D 4D 41 4E 44  1055 	.ascii "COMMANDS :"
             53 20 3A
      000D98 0A                    1056 	.db 0x0a
      000D99 0D                    1057 	.db 0x0d
      000D9A 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area CONST   (CODE)
      000D9B                       1061 ___str_3:
      000D9B 20 52 20 2D 20 52 55  1062 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      000DA7 0A                    1063 	.db 0x0a
      000DA8 0D                    1064 	.db 0x0d
      000DA9 00                    1065 	.db 0x00
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      000DAA                       1068 ___str_4:
      000DAA 20 53 20 2D 20 53 54  1069 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      000DB7 0A                    1070 	.db 0x0a
      000DB8 0D                    1071 	.db 0x0d
      000DB9 00                    1072 	.db 0x00
                                   1073 	.area CSEG    (CODE)
                                   1074 	.area CONST   (CODE)
      000DBA                       1075 ___str_5:
      000DBA 20 46 20 2D 20 4D 41  1076 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000DD1 0A                    1077 	.db 0x0a
      000DD2 0D                    1078 	.db 0x0d
      000DD3 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      000DD4                       1082 ___str_6:
      000DD4 20 4D 20 2D 20 4D 49  1083 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000DEB 0A                    1084 	.db 0x0a
      000DEC 0D                    1085 	.db 0x0d
      000DED 00                    1086 	.db 0x00
                                   1087 	.area CSEG    (CODE)
                                   1088 	.area CONST   (CODE)
      000DEE                       1089 ___str_7:
      000DEE 20 49 20 2D 20 49 44  1090 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      000DFC 0A                    1091 	.db 0x0a
      000DFD 0D                    1092 	.db 0x0d
      000DFE 00                    1093 	.db 0x00
                                   1094 	.area CSEG    (CODE)
                                   1095 	.area CONST   (CODE)
      000DFF                       1096 ___str_8:
      000DFF 20 50 20 2D 20 50 4F  1097 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      000E13 0A                    1098 	.db 0x0a
      000E14 0D                    1099 	.db 0x0d
      000E15 00                    1100 	.db 0x00
                                   1101 	.area CSEG    (CODE)
                                   1102 	.area CONST   (CODE)
      000E16                       1103 ___str_9:
      000E16 43 4F 4D 4D 41 4E 44  1104 	.ascii "COMMAND ENTERED %c"
             20 45 4E 54 45 52 45
             44 20 25 63
      000E28 0A                    1105 	.db 0x0a
      000E29 0D                    1106 	.db 0x0d
      000E2A 00                    1107 	.db 0x00
                                   1108 	.area CSEG    (CODE)
                                   1109 	.area CONST   (CODE)
      000E2B                       1110 ___str_10:
      000E2B 49 44 4C 45 20 4D 4F  1111 	.ascii "IDLE MODE"
             44 45
      000E34 0A                    1112 	.db 0x0a
      000E35 0D                    1113 	.db 0x0d
      000E36 00                    1114 	.db 0x00
                                   1115 	.area CSEG    (CODE)
                                   1116 	.area CONST   (CODE)
      000E37                       1117 ___str_11:
      000E37 50 4F 57 45 52 20 44  1118 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      000E46 0A                    1119 	.db 0x0a
      000E47 0D                    1120 	.db 0x0d
      000E48 00                    1121 	.db 0x00
                                   1122 	.area CSEG    (CODE)
                                   1123 	.area CONST   (CODE)
      000E49                       1124 ___str_12:
      000E49 4D 41 58 49 4D 55 4D  1125 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E5A 0A                    1126 	.db 0x0a
      000E5B 0D                    1127 	.db 0x0d
      000E5C 00                    1128 	.db 0x00
                                   1129 	.area CSEG    (CODE)
                                   1130 	.area CONST   (CODE)
      000E5D                       1131 ___str_13:
      000E5D 4D 49 4E 49 4D 55 4D  1132 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E6E 0A                    1133 	.db 0x0a
      000E6F 0D                    1134 	.db 0x0d
      000E70 00                    1135 	.db 0x00
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area CONST   (CODE)
      000E71                       1138 ___str_14:
      000E71 50 57 4D 20 53 54 41  1139 	.ascii "PWM START"
             52 54
      000E7A 0A                    1140 	.db 0x0a
      000E7B 0D                    1141 	.db 0x0d
      000E7C 00                    1142 	.db 0x00
                                   1143 	.area CSEG    (CODE)
                                   1144 	.area CONST   (CODE)
      000E7D                       1145 ___str_15:
      000E7D 50 57 4D 20 53 54 4F  1146 	.ascii "PWM STOP"
             50
      000E85 0A                    1147 	.db 0x0a
      000E86 0D                    1148 	.db 0x0d
      000E87 00                    1149 	.db 0x00
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area XINIT   (CODE)
                                   1152 	.area CABS    (ABS,CODE)
