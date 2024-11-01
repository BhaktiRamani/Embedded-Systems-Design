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
                                     12 	.globl _getchar
                                     13 	.globl _putchar
                                     14 	.globl _external_ISR
                                     15 	.globl _printf
                                     16 	.globl _TF1
                                     17 	.globl _TR1
                                     18 	.globl _TF0
                                     19 	.globl _TR0
                                     20 	.globl _IE1
                                     21 	.globl _IT1
                                     22 	.globl _IE0
                                     23 	.globl _IT0
                                     24 	.globl _SM0
                                     25 	.globl _SM1
                                     26 	.globl _SM2
                                     27 	.globl _REN
                                     28 	.globl _TB8
                                     29 	.globl _RB8
                                     30 	.globl _TI
                                     31 	.globl _RI
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD0
                                     47 	.globl _TXD
                                     48 	.globl _RXD0
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _P0_7
                                     75 	.globl _P0_6
                                     76 	.globl _P0_5
                                     77 	.globl _P0_4
                                     78 	.globl _P0_3
                                     79 	.globl _P0_2
                                     80 	.globl _P0_1
                                     81 	.globl _P0_0
                                     82 	.globl _PS
                                     83 	.globl _PT1
                                     84 	.globl _PX1
                                     85 	.globl _PT0
                                     86 	.globl _PX0
                                     87 	.globl _EA
                                     88 	.globl _ES
                                     89 	.globl _ET1
                                     90 	.globl _EX1
                                     91 	.globl _ET0
                                     92 	.globl _EX0
                                     93 	.globl _BREG_F7
                                     94 	.globl _BREG_F6
                                     95 	.globl _BREG_F5
                                     96 	.globl _BREG_F4
                                     97 	.globl _BREG_F3
                                     98 	.globl _BREG_F2
                                     99 	.globl _BREG_F1
                                    100 	.globl _BREG_F0
                                    101 	.globl _P5_7
                                    102 	.globl _P5_6
                                    103 	.globl _P5_5
                                    104 	.globl _P5_4
                                    105 	.globl _P5_3
                                    106 	.globl _P5_2
                                    107 	.globl _P5_1
                                    108 	.globl _P5_0
                                    109 	.globl _P4_7
                                    110 	.globl _P4_6
                                    111 	.globl _P4_5
                                    112 	.globl _P4_4
                                    113 	.globl _P4_3
                                    114 	.globl _P4_2
                                    115 	.globl _P4_1
                                    116 	.globl _P4_0
                                    117 	.globl _PX0L
                                    118 	.globl _PT0L
                                    119 	.globl _PX1L
                                    120 	.globl _PT1L
                                    121 	.globl _PSL
                                    122 	.globl _PT2L
                                    123 	.globl _PPCL
                                    124 	.globl _EC
                                    125 	.globl _CCF0
                                    126 	.globl _CCF1
                                    127 	.globl _CCF2
                                    128 	.globl _CCF3
                                    129 	.globl _CCF4
                                    130 	.globl _CR
                                    131 	.globl _CF
                                    132 	.globl _TF2
                                    133 	.globl _EXF2
                                    134 	.globl _RCLK
                                    135 	.globl _TCLK
                                    136 	.globl _EXEN2
                                    137 	.globl _TR2
                                    138 	.globl _C_T2
                                    139 	.globl _CP_RL2
                                    140 	.globl _T2CON_7
                                    141 	.globl _T2CON_6
                                    142 	.globl _T2CON_5
                                    143 	.globl _T2CON_4
                                    144 	.globl _T2CON_3
                                    145 	.globl _T2CON_2
                                    146 	.globl _T2CON_1
                                    147 	.globl _T2CON_0
                                    148 	.globl _PT2
                                    149 	.globl _ET2
                                    150 	.globl _TMOD
                                    151 	.globl _TL1
                                    152 	.globl _TL0
                                    153 	.globl _TH1
                                    154 	.globl _TH0
                                    155 	.globl _TCON
                                    156 	.globl _SP
                                    157 	.globl _SCON
                                    158 	.globl _SBUF0
                                    159 	.globl _SBUF
                                    160 	.globl _PSW
                                    161 	.globl _PCON
                                    162 	.globl _P3
                                    163 	.globl _P2
                                    164 	.globl _P1
                                    165 	.globl _P0
                                    166 	.globl _IP
                                    167 	.globl _IE
                                    168 	.globl _DP0L
                                    169 	.globl _DPL
                                    170 	.globl _DP0H
                                    171 	.globl _DPH
                                    172 	.globl _B
                                    173 	.globl _ACC
                                    174 	.globl _EECON
                                    175 	.globl _KBF
                                    176 	.globl _KBE
                                    177 	.globl _KBLS
                                    178 	.globl _BRL
                                    179 	.globl _BDRCON
                                    180 	.globl _T2MOD
                                    181 	.globl _SPDAT
                                    182 	.globl _SPSTA
                                    183 	.globl _SPCON
                                    184 	.globl _SADEN
                                    185 	.globl _SADDR
                                    186 	.globl _WDTPRG
                                    187 	.globl _WDTRST
                                    188 	.globl _P5
                                    189 	.globl _P4
                                    190 	.globl _IPH1
                                    191 	.globl _IPL1
                                    192 	.globl _IPH0
                                    193 	.globl _IPL0
                                    194 	.globl _IEN1
                                    195 	.globl _IEN0
                                    196 	.globl _CMOD
                                    197 	.globl _CL
                                    198 	.globl _CH
                                    199 	.globl _CCON
                                    200 	.globl _CCAPM4
                                    201 	.globl _CCAPM3
                                    202 	.globl _CCAPM2
                                    203 	.globl _CCAPM1
                                    204 	.globl _CCAPM0
                                    205 	.globl _CCAP4L
                                    206 	.globl _CCAP3L
                                    207 	.globl _CCAP2L
                                    208 	.globl _CCAP1L
                                    209 	.globl _CCAP0L
                                    210 	.globl _CCAP4H
                                    211 	.globl _CCAP3H
                                    212 	.globl _CCAP2H
                                    213 	.globl _CCAP1H
                                    214 	.globl _CCAP0H
                                    215 	.globl _CKCON1
                                    216 	.globl _CKCON0
                                    217 	.globl _CKRL
                                    218 	.globl _AUXR1
                                    219 	.globl _AUXR
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _RCAP2H
                                    223 	.globl _RCAP2L
                                    224 	.globl _T2CON
                                    225 	.globl _set_x2_mode
                                    226 	.globl _idle_mode
                                    227 	.globl _power_down_mode
                                    228 	.globl _freq_max
                                    229 	.globl _freq_min
                                    230 	.globl _pwm_init
                                    231 	.globl _pwm_start
                                    232 	.globl _pwm_stop
                                    233 	.globl _HS0_mode_on
                                    234 	.globl _HS0_mode_off
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                           000083   293 _DPH	=	0x0083
                           000083   294 _DP0H	=	0x0083
                           000082   295 _DPL	=	0x0082
                           000082   296 _DP0L	=	0x0082
                           0000A8   297 _IE	=	0x00a8
                           0000B8   298 _IP	=	0x00b8
                           000080   299 _P0	=	0x0080
                           000090   300 _P1	=	0x0090
                           0000A0   301 _P2	=	0x00a0
                           0000B0   302 _P3	=	0x00b0
                           000087   303 _PCON	=	0x0087
                           0000D0   304 _PSW	=	0x00d0
                           000099   305 _SBUF	=	0x0099
                           000099   306 _SBUF0	=	0x0099
                           000098   307 _SCON	=	0x0098
                           000081   308 _SP	=	0x0081
                           000088   309 _TCON	=	0x0088
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           000089   314 _TMOD	=	0x0089
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           0000AD   320 _ET2	=	0x00ad
                           0000BD   321 _PT2	=	0x00bd
                           0000C8   322 _T2CON_0	=	0x00c8
                           0000C9   323 _T2CON_1	=	0x00c9
                           0000CA   324 _T2CON_2	=	0x00ca
                           0000CB   325 _T2CON_3	=	0x00cb
                           0000CC   326 _T2CON_4	=	0x00cc
                           0000CD   327 _T2CON_5	=	0x00cd
                           0000CE   328 _T2CON_6	=	0x00ce
                           0000CF   329 _T2CON_7	=	0x00cf
                           0000C8   330 _CP_RL2	=	0x00c8
                           0000C9   331 _C_T2	=	0x00c9
                           0000CA   332 _TR2	=	0x00ca
                           0000CB   333 _EXEN2	=	0x00cb
                           0000CC   334 _TCLK	=	0x00cc
                           0000CD   335 _RCLK	=	0x00cd
                           0000CE   336 _EXF2	=	0x00ce
                           0000CF   337 _TF2	=	0x00cf
                           0000DF   338 _CF	=	0x00df
                           0000DE   339 _CR	=	0x00de
                           0000DC   340 _CCF4	=	0x00dc
                           0000DB   341 _CCF3	=	0x00db
                           0000DA   342 _CCF2	=	0x00da
                           0000D9   343 _CCF1	=	0x00d9
                           0000D8   344 _CCF0	=	0x00d8
                           0000AE   345 _EC	=	0x00ae
                           0000BE   346 _PPCL	=	0x00be
                           0000BD   347 _PT2L	=	0x00bd
                           0000BC   348 _PSL	=	0x00bc
                           0000BB   349 _PT1L	=	0x00bb
                           0000BA   350 _PX1L	=	0x00ba
                           0000B9   351 _PT0L	=	0x00b9
                           0000B8   352 _PX0L	=	0x00b8
                           0000C0   353 _P4_0	=	0x00c0
                           0000C1   354 _P4_1	=	0x00c1
                           0000C2   355 _P4_2	=	0x00c2
                           0000C3   356 _P4_3	=	0x00c3
                           0000C4   357 _P4_4	=	0x00c4
                           0000C5   358 _P4_5	=	0x00c5
                           0000C6   359 _P4_6	=	0x00c6
                           0000C7   360 _P4_7	=	0x00c7
                           0000E8   361 _P5_0	=	0x00e8
                           0000E9   362 _P5_1	=	0x00e9
                           0000EA   363 _P5_2	=	0x00ea
                           0000EB   364 _P5_3	=	0x00eb
                           0000EC   365 _P5_4	=	0x00ec
                           0000ED   366 _P5_5	=	0x00ed
                           0000EE   367 _P5_6	=	0x00ee
                           0000EF   368 _P5_7	=	0x00ef
                           0000F0   369 _BREG_F0	=	0x00f0
                           0000F1   370 _BREG_F1	=	0x00f1
                           0000F2   371 _BREG_F2	=	0x00f2
                           0000F3   372 _BREG_F3	=	0x00f3
                           0000F4   373 _BREG_F4	=	0x00f4
                           0000F5   374 _BREG_F5	=	0x00f5
                           0000F6   375 _BREG_F6	=	0x00f6
                           0000F7   376 _BREG_F7	=	0x00f7
                           0000A8   377 _EX0	=	0x00a8
                           0000A9   378 _ET0	=	0x00a9
                           0000AA   379 _EX1	=	0x00aa
                           0000AB   380 _ET1	=	0x00ab
                           0000AC   381 _ES	=	0x00ac
                           0000AF   382 _EA	=	0x00af
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           000080   388 _P0_0	=	0x0080
                           000081   389 _P0_1	=	0x0081
                           000082   390 _P0_2	=	0x0082
                           000083   391 _P0_3	=	0x0083
                           000084   392 _P0_4	=	0x0084
                           000085   393 _P0_5	=	0x0085
                           000086   394 _P0_6	=	0x0086
                           000087   395 _P0_7	=	0x0087
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           0000A0   404 _P2_0	=	0x00a0
                           0000A1   405 _P2_1	=	0x00a1
                           0000A2   406 _P2_2	=	0x00a2
                           0000A3   407 _P2_3	=	0x00a3
                           0000A4   408 _P2_4	=	0x00a4
                           0000A5   409 _P2_5	=	0x00a5
                           0000A6   410 _P2_6	=	0x00a6
                           0000A7   411 _P2_7	=	0x00a7
                           0000B0   412 _P3_0	=	0x00b0
                           0000B1   413 _P3_1	=	0x00b1
                           0000B2   414 _P3_2	=	0x00b2
                           0000B3   415 _P3_3	=	0x00b3
                           0000B4   416 _P3_4	=	0x00b4
                           0000B5   417 _P3_5	=	0x00b5
                           0000B6   418 _P3_6	=	0x00b6
                           0000B7   419 _P3_7	=	0x00b7
                           0000B0   420 _RXD	=	0x00b0
                           0000B0   421 _RXD0	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B1   423 _TXD0	=	0x00b1
                           0000B2   424 _INT0	=	0x00b2
                           0000B3   425 _INT1	=	0x00b3
                           0000B4   426 _T0	=	0x00b4
                           0000B5   427 _T1	=	0x00b5
                           0000B6   428 _WR	=	0x00b6
                           0000B7   429 _RD	=	0x00b7
                           0000D0   430 _P	=	0x00d0
                           0000D1   431 _F1	=	0x00d1
                           0000D2   432 _OV	=	0x00d2
                           0000D3   433 _RS0	=	0x00d3
                           0000D4   434 _RS1	=	0x00d4
                           0000D5   435 _F0	=	0x00d5
                           0000D6   436 _AC	=	0x00d6
                           0000D7   437 _CY	=	0x00d7
                           000098   438 _RI	=	0x0098
                           000099   439 _TI	=	0x0099
                           00009A   440 _RB8	=	0x009a
                           00009B   441 _TB8	=	0x009b
                           00009C   442 _REN	=	0x009c
                           00009D   443 _SM2	=	0x009d
                           00009E   444 _SM1	=	0x009e
                           00009F   445 _SM0	=	0x009f
                           000088   446 _IT0	=	0x0088
                           000089   447 _IE0	=	0x0089
                           00008A   448 _IT1	=	0x008a
                           00008B   449 _IE1	=	0x008b
                           00008C   450 _TR0	=	0x008c
                           00008D   451 _TF0	=	0x008d
                           00008E   452 _TR1	=	0x008e
                           00008F   453 _TF1	=	0x008f
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable register banks
                                    456 ;--------------------------------------------------------
                                    457 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        458 	.ds 8
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable bit register bank
                                    461 ;--------------------------------------------------------
                                    462 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        463 bits:
      000020                        464 	.ds 1
                           008000   465 	b0 = bits[0]
                           008100   466 	b1 = bits[1]
                           008200   467 	b2 = bits[2]
                           008300   468 	b3 = bits[3]
                           008400   469 	b4 = bits[4]
                           008500   470 	b5 = bits[5]
                           008600   471 	b6 = bits[6]
                           008700   472 	b7 = bits[7]
                                    473 ;--------------------------------------------------------
                                    474 ; internal ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area DSEG    (DATA)
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram 
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; Stack segment in internal ram 
                                    482 ;--------------------------------------------------------
                                    483 	.area	SSEG
      000021                        484 __start__stack:
      000021                        485 	.ds	1
                                    486 
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
                                    500 ;--------------------------------------------------------
                                    501 ; paged external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area PSEG    (PAG,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XSEG    (XDATA)
      000400                        508 _putchar_charToSend_65536_84:
      000400                        509 	.ds 2
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
      003000                        532 __interrupt_vect:
      003000 02 30 09         [24]  533 	ljmp	__sdcc_gsinit_startup
      003003 02 30 65         [24]  534 	ljmp	_external_ISR
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
      003062 02 30 06         [24]  549 	ljmp	__sdcc_program_startup
                                    550 ;--------------------------------------------------------
                                    551 ; Home
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area HOME    (CODE)
      003006                        555 __sdcc_program_startup:
      003006 02 30 E3         [24]  556 	ljmp	_main
                                    557 ;	return from main will return to caller
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'external_ISR'
                                    564 ;------------------------------------------------------------
                                    565 ;	pwm.c:53: void external_ISR(void) __interrupt (0)
                                    566 ;	-----------------------------------------
                                    567 ;	 function external_ISR
                                    568 ;	-----------------------------------------
      003065                        569 _external_ISR:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
      003065 C0 20            [24]  578 	push	bits
      003067 C0 E0            [24]  579 	push	acc
      003069 C0 F0            [24]  580 	push	b
      00306B C0 82            [24]  581 	push	dpl
      00306D C0 83            [24]  582 	push	dph
      00306F C0 07            [24]  583 	push	(0+7)
      003071 C0 06            [24]  584 	push	(0+6)
      003073 C0 05            [24]  585 	push	(0+5)
      003075 C0 04            [24]  586 	push	(0+4)
      003077 C0 03            [24]  587 	push	(0+3)
      003079 C0 02            [24]  588 	push	(0+2)
      00307B C0 01            [24]  589 	push	(0+1)
      00307D C0 00            [24]  590 	push	(0+0)
      00307F C0 D0            [24]  591 	push	psw
      003081 75 D0 00         [24]  592 	mov	psw,#0x00
                                    593 ;	pwm.c:55: printf("EXIT FROM IDEL MODE\n\r");
      003084 74 26            [12]  594 	mov	a,#___str_0
      003086 C0 E0            [24]  595 	push	acc
      003088 74 3E            [12]  596 	mov	a,#(___str_0 >> 8)
      00308A C0 E0            [24]  597 	push	acc
      00308C 74 80            [12]  598 	mov	a,#0x80
      00308E C0 E0            [24]  599 	push	acc
      003090 12 33 C4         [24]  600 	lcall	_printf
      003093 15 81            [12]  601 	dec	sp
      003095 15 81            [12]  602 	dec	sp
      003097 15 81            [12]  603 	dec	sp
                                    604 ;	pwm.c:56: return;
                                    605 ;	pwm.c:57: }
      003099 D0 D0            [24]  606 	pop	psw
      00309B D0 00            [24]  607 	pop	(0+0)
      00309D D0 01            [24]  608 	pop	(0+1)
      00309F D0 02            [24]  609 	pop	(0+2)
      0030A1 D0 03            [24]  610 	pop	(0+3)
      0030A3 D0 04            [24]  611 	pop	(0+4)
      0030A5 D0 05            [24]  612 	pop	(0+5)
      0030A7 D0 06            [24]  613 	pop	(0+6)
      0030A9 D0 07            [24]  614 	pop	(0+7)
      0030AB D0 83            [24]  615 	pop	dph
      0030AD D0 82            [24]  616 	pop	dpl
      0030AF D0 F0            [24]  617 	pop	b
      0030B1 D0 E0            [24]  618 	pop	acc
      0030B3 D0 20            [24]  619 	pop	bits
      0030B5 32               [24]  620 	reti
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'putchar'
                                    623 ;------------------------------------------------------------
                                    624 ;charToSend                Allocated with name '_putchar_charToSend_65536_84'
                                    625 ;------------------------------------------------------------
                                    626 ;	pwm.c:63: int putchar(int charToSend) {
                                    627 ;	-----------------------------------------
                                    628 ;	 function putchar
                                    629 ;	-----------------------------------------
      0030B6                        630 _putchar:
      0030B6 AF 83            [24]  631 	mov	r7,dph
      0030B8 E5 82            [12]  632 	mov	a,dpl
      0030BA 90 04 00         [24]  633 	mov	dptr,#_putchar_charToSend_65536_84
      0030BD F0               [24]  634 	movx	@dptr,a
      0030BE EF               [12]  635 	mov	a,r7
      0030BF A3               [24]  636 	inc	dptr
      0030C0 F0               [24]  637 	movx	@dptr,a
                                    638 ;	pwm.c:64: SBUF = charToSend;      // Send character to serial buffer
      0030C1 90 04 00         [24]  639 	mov	dptr,#_putchar_charToSend_65536_84
      0030C4 E0               [24]  640 	movx	a,@dptr
      0030C5 FE               [12]  641 	mov	r6,a
      0030C6 A3               [24]  642 	inc	dptr
      0030C7 E0               [24]  643 	movx	a,@dptr
      0030C8 FF               [12]  644 	mov	r7,a
      0030C9 8E 99            [24]  645 	mov	_SBUF,r6
                                    646 ;	pwm.c:65: while (!TI);            // Wait for transmission to complete
      0030CB                        647 00101$:
                                    648 ;	pwm.c:66: TI = 0;                 // Clear transmission interrupt flag
                                    649 ;	assignBit
      0030CB 10 99 02         [24]  650 	jbc	_TI,00114$
      0030CE 80 FB            [24]  651 	sjmp	00101$
      0030D0                        652 00114$:
                                    653 ;	pwm.c:67: return charToSend;
      0030D0 8E 82            [24]  654 	mov	dpl,r6
      0030D2 8F 83            [24]  655 	mov	dph,r7
                                    656 ;	pwm.c:68: }
      0030D4 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'getchar'
                                    660 ;------------------------------------------------------------
                                    661 ;	pwm.c:74: int getchar(void) {
                                    662 ;	-----------------------------------------
                                    663 ;	 function getchar
                                    664 ;	-----------------------------------------
      0030D5                        665 _getchar:
                                    666 ;	pwm.c:75: while (!RI);            // Wait for reception to complete
      0030D5                        667 00101$:
                                    668 ;	pwm.c:76: RI = 0;                 // Clear reception interrupt flag
                                    669 ;	assignBit
      0030D5 10 98 02         [24]  670 	jbc	_RI,00114$
      0030D8 80 FB            [24]  671 	sjmp	00101$
      0030DA                        672 00114$:
                                    673 ;	pwm.c:77: return SBUF;            // Return received character
      0030DA AE 99            [24]  674 	mov	r6,_SBUF
      0030DC 7F 00            [12]  675 	mov	r7,#0x00
      0030DE 8E 82            [24]  676 	mov	dpl,r6
      0030E0 8F 83            [24]  677 	mov	dph,r7
                                    678 ;	pwm.c:78: }
      0030E2 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'main'
                                    682 ;------------------------------------------------------------
                                    683 ;command                   Allocated with name '_main_command_131072_90'
                                    684 ;------------------------------------------------------------
                                    685 ;	pwm.c:83: void main(void) {
                                    686 ;	-----------------------------------------
                                    687 ;	 function main
                                    688 ;	-----------------------------------------
      0030E3                        689 _main:
                                    690 ;	pwm.c:84: pwm_init();
      0030E3 12 32 EA         [24]  691 	lcall	_pwm_init
                                    692 ;	pwm.c:87: printf("PCA DEMO\n\r");
      0030E6 74 3C            [12]  693 	mov	a,#___str_1
      0030E8 C0 E0            [24]  694 	push	acc
      0030EA 74 3E            [12]  695 	mov	a,#(___str_1 >> 8)
      0030EC C0 E0            [24]  696 	push	acc
      0030EE 74 80            [12]  697 	mov	a,#0x80
      0030F0 C0 E0            [24]  698 	push	acc
      0030F2 12 33 C4         [24]  699 	lcall	_printf
      0030F5 15 81            [12]  700 	dec	sp
      0030F7 15 81            [12]  701 	dec	sp
      0030F9 15 81            [12]  702 	dec	sp
                                    703 ;	pwm.c:88: set_x2_mode();
      0030FB 12 32 7C         [24]  704 	lcall	_set_x2_mode
                                    705 ;	pwm.c:89: printf("in X2 MODE\n\r");
      0030FE 74 47            [12]  706 	mov	a,#___str_2
      003100 C0 E0            [24]  707 	push	acc
      003102 74 3E            [12]  708 	mov	a,#(___str_2 >> 8)
      003104 C0 E0            [24]  709 	push	acc
      003106 74 80            [12]  710 	mov	a,#0x80
      003108 C0 E0            [24]  711 	push	acc
      00310A 12 33 C4         [24]  712 	lcall	_printf
      00310D 15 81            [12]  713 	dec	sp
      00310F 15 81            [12]  714 	dec	sp
      003111 15 81            [12]  715 	dec	sp
                                    716 ;	pwm.c:90: printf("ENTER COMMANDS\n\r");
      003113 74 54            [12]  717 	mov	a,#___str_3
      003115 C0 E0            [24]  718 	push	acc
      003117 74 3E            [12]  719 	mov	a,#(___str_3 >> 8)
      003119 C0 E0            [24]  720 	push	acc
      00311B 74 80            [12]  721 	mov	a,#0x80
      00311D C0 E0            [24]  722 	push	acc
      00311F 12 33 C4         [24]  723 	lcall	_printf
      003122 15 81            [12]  724 	dec	sp
      003124 15 81            [12]  725 	dec	sp
      003126 15 81            [12]  726 	dec	sp
                                    727 ;	pwm.c:91: printf("COMMAND MENU :\n\r");
      003128 74 65            [12]  728 	mov	a,#___str_4
      00312A C0 E0            [24]  729 	push	acc
      00312C 74 3E            [12]  730 	mov	a,#(___str_4 >> 8)
      00312E C0 E0            [24]  731 	push	acc
      003130 74 80            [12]  732 	mov	a,#0x80
      003132 C0 E0            [24]  733 	push	acc
      003134 12 33 C4         [24]  734 	lcall	_printf
      003137 15 81            [12]  735 	dec	sp
      003139 15 81            [12]  736 	dec	sp
      00313B 15 81            [12]  737 	dec	sp
                                    738 ;	pwm.c:92: printf(" R - RUN PWM\n\r");
      00313D 74 76            [12]  739 	mov	a,#___str_5
      00313F C0 E0            [24]  740 	push	acc
      003141 74 3E            [12]  741 	mov	a,#(___str_5 >> 8)
      003143 C0 E0            [24]  742 	push	acc
      003145 74 80            [12]  743 	mov	a,#0x80
      003147 C0 E0            [24]  744 	push	acc
      003149 12 33 C4         [24]  745 	lcall	_printf
      00314C 15 81            [12]  746 	dec	sp
      00314E 15 81            [12]  747 	dec	sp
      003150 15 81            [12]  748 	dec	sp
                                    749 ;	pwm.c:93: printf(" S - STOP PWM\n\r");
      003152 74 85            [12]  750 	mov	a,#___str_6
      003154 C0 E0            [24]  751 	push	acc
      003156 74 3E            [12]  752 	mov	a,#(___str_6 >> 8)
      003158 C0 E0            [24]  753 	push	acc
      00315A 74 80            [12]  754 	mov	a,#0x80
      00315C C0 E0            [24]  755 	push	acc
      00315E 12 33 C4         [24]  756 	lcall	_printf
      003161 15 81            [12]  757 	dec	sp
      003163 15 81            [12]  758 	dec	sp
      003165 15 81            [12]  759 	dec	sp
                                    760 ;	pwm.c:94: printf(" F - MAX FREQUENCY MODE\n\r");
      003167 74 95            [12]  761 	mov	a,#___str_7
      003169 C0 E0            [24]  762 	push	acc
      00316B 74 3E            [12]  763 	mov	a,#(___str_7 >> 8)
      00316D C0 E0            [24]  764 	push	acc
      00316F 74 80            [12]  765 	mov	a,#0x80
      003171 C0 E0            [24]  766 	push	acc
      003173 12 33 C4         [24]  767 	lcall	_printf
      003176 15 81            [12]  768 	dec	sp
      003178 15 81            [12]  769 	dec	sp
      00317A 15 81            [12]  770 	dec	sp
                                    771 ;	pwm.c:95: printf(" M - MIN FREQUENCY MODE\n\r");
      00317C 74 AF            [12]  772 	mov	a,#___str_8
      00317E C0 E0            [24]  773 	push	acc
      003180 74 3E            [12]  774 	mov	a,#(___str_8 >> 8)
      003182 C0 E0            [24]  775 	push	acc
      003184 74 80            [12]  776 	mov	a,#0x80
      003186 C0 E0            [24]  777 	push	acc
      003188 12 33 C4         [24]  778 	lcall	_printf
      00318B 15 81            [12]  779 	dec	sp
      00318D 15 81            [12]  780 	dec	sp
      00318F 15 81            [12]  781 	dec	sp
                                    782 ;	pwm.c:96: printf(" I - IDLE MODE\n\r");
      003191 74 C9            [12]  783 	mov	a,#___str_9
      003193 C0 E0            [24]  784 	push	acc
      003195 74 3E            [12]  785 	mov	a,#(___str_9 >> 8)
      003197 C0 E0            [24]  786 	push	acc
      003199 74 80            [12]  787 	mov	a,#0x80
      00319B C0 E0            [24]  788 	push	acc
      00319D 12 33 C4         [24]  789 	lcall	_printf
      0031A0 15 81            [12]  790 	dec	sp
      0031A2 15 81            [12]  791 	dec	sp
      0031A4 15 81            [12]  792 	dec	sp
                                    793 ;	pwm.c:97: printf(" P - POWER DOWN MODE\n\r");
      0031A6 74 DA            [12]  794 	mov	a,#___str_10
      0031A8 C0 E0            [24]  795 	push	acc
      0031AA 74 3E            [12]  796 	mov	a,#(___str_10 >> 8)
      0031AC C0 E0            [24]  797 	push	acc
      0031AE 74 80            [12]  798 	mov	a,#0x80
      0031B0 C0 E0            [24]  799 	push	acc
      0031B2 12 33 C4         [24]  800 	lcall	_printf
      0031B5 15 81            [12]  801 	dec	sp
      0031B7 15 81            [12]  802 	dec	sp
      0031B9 15 81            [12]  803 	dec	sp
                                    804 ;	pwm.c:98: printf(" H - HIGH SPEED MODE ON\n\r");
      0031BB 74 F1            [12]  805 	mov	a,#___str_11
      0031BD C0 E0            [24]  806 	push	acc
      0031BF 74 3E            [12]  807 	mov	a,#(___str_11 >> 8)
      0031C1 C0 E0            [24]  808 	push	acc
      0031C3 74 80            [12]  809 	mov	a,#0x80
      0031C5 C0 E0            [24]  810 	push	acc
      0031C7 12 33 C4         [24]  811 	lcall	_printf
      0031CA 15 81            [12]  812 	dec	sp
      0031CC 15 81            [12]  813 	dec	sp
      0031CE 15 81            [12]  814 	dec	sp
                                    815 ;	pwm.c:99: printf(" Q - HIGH SPEED MODE OFF\n\r");
      0031D0 74 0B            [12]  816 	mov	a,#___str_12
      0031D2 C0 E0            [24]  817 	push	acc
      0031D4 74 3F            [12]  818 	mov	a,#(___str_12 >> 8)
      0031D6 C0 E0            [24]  819 	push	acc
      0031D8 74 80            [12]  820 	mov	a,#0x80
      0031DA C0 E0            [24]  821 	push	acc
      0031DC 12 33 C4         [24]  822 	lcall	_printf
      0031DF 15 81            [12]  823 	dec	sp
      0031E1 15 81            [12]  824 	dec	sp
      0031E3 15 81            [12]  825 	dec	sp
                                    826 ;	pwm.c:102: TCON |= 0x01;
      0031E5 43 88 01         [24]  827 	orl	_TCON,#0x01
                                    828 ;	pwm.c:103: IE |= 0x81;
      0031E8 43 A8 81         [24]  829 	orl	_IE,#0x81
                                    830 ;	pwm.c:105: while(1) {
      0031EB                        831 00112$:
                                    832 ;	pwm.c:107: command = getchar();    // Wait for input
      0031EB 12 30 D5         [24]  833 	lcall	_getchar
      0031EE AE 82            [24]  834 	mov	r6,dpl
                                    835 ;	pwm.c:110: putchar(command);
      0031F0 8E 05            [24]  836 	mov	ar5,r6
      0031F2 7F 00            [12]  837 	mov	r7,#0x00
      0031F4 8D 82            [24]  838 	mov	dpl,r5
      0031F6 8F 83            [24]  839 	mov	dph,r7
      0031F8 C0 06            [24]  840 	push	ar6
      0031FA 12 30 B6         [24]  841 	lcall	_putchar
                                    842 ;	pwm.c:111: printf("\n\r");        // New line after command
      0031FD 74 26            [12]  843 	mov	a,#___str_13
      0031FF C0 E0            [24]  844 	push	acc
      003201 74 3F            [12]  845 	mov	a,#(___str_13 >> 8)
      003203 C0 E0            [24]  846 	push	acc
      003205 74 80            [12]  847 	mov	a,#0x80
      003207 C0 E0            [24]  848 	push	acc
      003209 12 33 C4         [24]  849 	lcall	_printf
      00320C 15 81            [12]  850 	dec	sp
      00320E 15 81            [12]  851 	dec	sp
      003210 15 81            [12]  852 	dec	sp
      003212 D0 06            [24]  853 	pop	ar6
                                    854 ;	pwm.c:113: switch(command) {
      003214 BE 46 02         [24]  855 	cjne	r6,#0x46,00152$
      003217 80 2D            [24]  856 	sjmp	00103$
      003219                        857 00152$:
      003219 BE 48 02         [24]  858 	cjne	r6,#0x48,00153$
      00321C 80 3C            [24]  859 	sjmp	00107$
      00321E                        860 00153$:
      00321E BE 49 02         [24]  861 	cjne	r6,#0x49,00154$
      003221 80 2D            [24]  862 	sjmp	00105$
      003223                        863 00154$:
      003223 BE 4D 02         [24]  864 	cjne	r6,#0x4d,00155$
      003226 80 23            [24]  865 	sjmp	00104$
      003228                        866 00155$:
      003228 BE 50 02         [24]  867 	cjne	r6,#0x50,00156$
      00322B 80 28            [24]  868 	sjmp	00106$
      00322D                        869 00156$:
      00322D BE 51 02         [24]  870 	cjne	r6,#0x51,00157$
      003230 80 2D            [24]  871 	sjmp	00108$
      003232                        872 00157$:
      003232 BE 52 02         [24]  873 	cjne	r6,#0x52,00158$
      003235 80 05            [24]  874 	sjmp	00101$
      003237                        875 00158$:
                                    876 ;	pwm.c:114: case 'R': pwm_start(); break;
      003237 BE 53 2A         [24]  877 	cjne	r6,#0x53,00109$
      00323A 80 05            [24]  878 	sjmp	00102$
      00323C                        879 00101$:
      00323C 12 33 00         [24]  880 	lcall	_pwm_start
                                    881 ;	pwm.c:115: case 'S': pwm_stop(); break;
      00323F 80 AA            [24]  882 	sjmp	00112$
      003241                        883 00102$:
      003241 12 33 19         [24]  884 	lcall	_pwm_stop
                                    885 ;	pwm.c:116: case 'F': freq_max(); break;
      003244 80 A5            [24]  886 	sjmp	00112$
      003246                        887 00103$:
      003246 12 32 B8         [24]  888 	lcall	_freq_max
                                    889 ;	pwm.c:117: case 'M': freq_min(); break;
      003249 80 A0            [24]  890 	sjmp	00112$
      00324B                        891 00104$:
      00324B 12 32 D1         [24]  892 	lcall	_freq_min
                                    893 ;	pwm.c:118: case 'I': idle_mode(); break;
      00324E 80 9B            [24]  894 	sjmp	00112$
      003250                        895 00105$:
      003250 12 32 86         [24]  896 	lcall	_idle_mode
                                    897 ;	pwm.c:119: case 'P': power_down_mode(); break;
      003253 80 96            [24]  898 	sjmp	00112$
      003255                        899 00106$:
      003255 12 32 9F         [24]  900 	lcall	_power_down_mode
                                    901 ;	pwm.c:120: case 'H': HS0_mode_on(); break;
      003258 80 91            [24]  902 	sjmp	00112$
      00325A                        903 00107$:
      00325A 12 33 32         [24]  904 	lcall	_HS0_mode_on
                                    905 ;	pwm.c:121: case 'Q': HS0_mode_off(); break;
      00325D 80 8C            [24]  906 	sjmp	00112$
      00325F                        907 00108$:
      00325F 12 33 5D         [24]  908 	lcall	_HS0_mode_off
                                    909 ;	pwm.c:122: default: printf("Invalid Command\n\r");
      003262 80 87            [24]  910 	sjmp	00112$
      003264                        911 00109$:
      003264 74 29            [12]  912 	mov	a,#___str_14
      003266 C0 E0            [24]  913 	push	acc
      003268 74 3F            [12]  914 	mov	a,#(___str_14 >> 8)
      00326A C0 E0            [24]  915 	push	acc
      00326C 74 80            [12]  916 	mov	a,#0x80
      00326E C0 E0            [24]  917 	push	acc
      003270 12 33 C4         [24]  918 	lcall	_printf
      003273 15 81            [12]  919 	dec	sp
      003275 15 81            [12]  920 	dec	sp
      003277 15 81            [12]  921 	dec	sp
                                    922 ;	pwm.c:123: }
                                    923 ;	pwm.c:125: }
      003279 02 31 EB         [24]  924 	ljmp	00112$
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'set_x2_mode'
                                    927 ;------------------------------------------------------------
                                    928 ;	pwm.c:131: void set_x2_mode(void) {
                                    929 ;	-----------------------------------------
                                    930 ;	 function set_x2_mode
                                    931 ;	-----------------------------------------
      00327C                        932 _set_x2_mode:
                                    933 ;	pwm.c:132: CKCON0 = 0x00;
      00327C 75 8F 00         [24]  934 	mov	_CKCON0,#0x00
                                    935 ;	pwm.c:133: CKCON0 |= CKCON0_X2_BIT;
      00327F 43 8F 01         [24]  936 	orl	_CKCON0,#0x01
                                    937 ;	pwm.c:134: CKCON0 |= CKCON0_TIX2_BIT;
      003282 43 8F 04         [24]  938 	orl	_CKCON0,#0x04
                                    939 ;	pwm.c:135: }
      003285 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'idle_mode'
                                    943 ;------------------------------------------------------------
                                    944 ;	pwm.c:141: void idle_mode(void) {
                                    945 ;	-----------------------------------------
                                    946 ;	 function idle_mode
                                    947 ;	-----------------------------------------
      003286                        948 _idle_mode:
                                    949 ;	pwm.c:142: printf("IDLE MODE\n\r");
      003286 74 3B            [12]  950 	mov	a,#___str_15
      003288 C0 E0            [24]  951 	push	acc
      00328A 74 3F            [12]  952 	mov	a,#(___str_15 >> 8)
      00328C C0 E0            [24]  953 	push	acc
      00328E 74 80            [12]  954 	mov	a,#0x80
      003290 C0 E0            [24]  955 	push	acc
      003292 12 33 C4         [24]  956 	lcall	_printf
      003295 15 81            [12]  957 	dec	sp
      003297 15 81            [12]  958 	dec	sp
      003299 15 81            [12]  959 	dec	sp
                                    960 ;	pwm.c:143: PCON |= PCON_IDLE_BIT;
      00329B 43 87 01         [24]  961 	orl	_PCON,#0x01
                                    962 ;	pwm.c:144: }
      00329E 22               [24]  963 	ret
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'power_down_mode'
                                    966 ;------------------------------------------------------------
                                    967 ;	pwm.c:150: void power_down_mode(void) {
                                    968 ;	-----------------------------------------
                                    969 ;	 function power_down_mode
                                    970 ;	-----------------------------------------
      00329F                        971 _power_down_mode:
                                    972 ;	pwm.c:151: printf("POWER DOWN MODE\n\r");
      00329F 74 47            [12]  973 	mov	a,#___str_16
      0032A1 C0 E0            [24]  974 	push	acc
      0032A3 74 3F            [12]  975 	mov	a,#(___str_16 >> 8)
      0032A5 C0 E0            [24]  976 	push	acc
      0032A7 74 80            [12]  977 	mov	a,#0x80
      0032A9 C0 E0            [24]  978 	push	acc
      0032AB 12 33 C4         [24]  979 	lcall	_printf
      0032AE 15 81            [12]  980 	dec	sp
      0032B0 15 81            [12]  981 	dec	sp
      0032B2 15 81            [12]  982 	dec	sp
                                    983 ;	pwm.c:152: PCON |= PCON_POWERDOWN_BIT;
      0032B4 43 87 02         [24]  984 	orl	_PCON,#0x02
                                    985 ;	pwm.c:153: }
      0032B7 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'freq_max'
                                    989 ;------------------------------------------------------------
                                    990 ;	pwm.c:158: void freq_max(void) {
                                    991 ;	-----------------------------------------
                                    992 ;	 function freq_max
                                    993 ;	-----------------------------------------
      0032B8                        994 _freq_max:
                                    995 ;	pwm.c:159: printf("MAXIMUM FREQUENCY\n\r");
      0032B8 74 59            [12]  996 	mov	a,#___str_17
      0032BA C0 E0            [24]  997 	push	acc
      0032BC 74 3F            [12]  998 	mov	a,#(___str_17 >> 8)
      0032BE C0 E0            [24]  999 	push	acc
      0032C0 74 80            [12] 1000 	mov	a,#0x80
      0032C2 C0 E0            [24] 1001 	push	acc
      0032C4 12 33 C4         [24] 1002 	lcall	_printf
      0032C7 15 81            [12] 1003 	dec	sp
      0032C9 15 81            [12] 1004 	dec	sp
      0032CB 15 81            [12] 1005 	dec	sp
                                   1006 ;	pwm.c:160: CKRL = CLOCK_MAX_FREQ;
      0032CD 75 97 FF         [24] 1007 	mov	_CKRL,#0xff
                                   1008 ;	pwm.c:161: }
      0032D0 22               [24] 1009 	ret
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'freq_min'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	pwm.c:166: void freq_min(void) {
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function freq_min
                                   1016 ;	-----------------------------------------
      0032D1                       1017 _freq_min:
                                   1018 ;	pwm.c:167: printf("MINIMUM FREQUENCY\n\r");
      0032D1 74 6D            [12] 1019 	mov	a,#___str_18
      0032D3 C0 E0            [24] 1020 	push	acc
      0032D5 74 3F            [12] 1021 	mov	a,#(___str_18 >> 8)
      0032D7 C0 E0            [24] 1022 	push	acc
      0032D9 74 80            [12] 1023 	mov	a,#0x80
      0032DB C0 E0            [24] 1024 	push	acc
      0032DD 12 33 C4         [24] 1025 	lcall	_printf
      0032E0 15 81            [12] 1026 	dec	sp
      0032E2 15 81            [12] 1027 	dec	sp
      0032E4 15 81            [12] 1028 	dec	sp
                                   1029 ;	pwm.c:168: CKRL = CLOCK_MIN_FREQ;
      0032E6 75 97 01         [24] 1030 	mov	_CKRL,#0x01
                                   1031 ;	pwm.c:169: }
      0032E9 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'pwm_init'
                                   1035 ;------------------------------------------------------------
                                   1036 ;	pwm.c:175: void pwm_init(void) {
                                   1037 ;	-----------------------------------------
                                   1038 ;	 function pwm_init
                                   1039 ;	-----------------------------------------
      0032EA                       1040 _pwm_init:
                                   1041 ;	pwm.c:176: CCAPM0 = 0x00;                     // Clear all mode bits
      0032EA 75 DA 00         [24] 1042 	mov	_CCAPM0,#0x00
                                   1043 ;	pwm.c:177: CMOD = 0X82;                       // Set PCA timer mode
      0032ED 75 D9 82         [24] 1044 	mov	_CMOD,#0x82
                                   1045 ;	pwm.c:178: CL = PCA_COUNTER_INIT;             // Initialize counter low byte
      0032F0 75 E9 00         [24] 1046 	mov	_CL,#0x00
                                   1047 ;	pwm.c:179: CH = PCA_COUNTER_INIT;             // Initialize counter high byte
      0032F3 75 F9 00         [24] 1048 	mov	_CH,#0x00
                                   1049 ;	pwm.c:181: CCAP0L = PCA_PWM_COMPARE_VALUE;    // Set PWM compare value low byte
      0032F6 75 EA AC         [24] 1050 	mov	_CCAP0L,#0xac
                                   1051 ;	pwm.c:182: CCAP0H = PCA_PWM_COMPARE_VALUE;    // Set PWM compare value high byte
      0032F9 75 FA AC         [24] 1052 	mov	_CCAP0H,#0xac
                                   1053 ;	pwm.c:183: CCAPM0 = 0X42;                     // Enable PWM mode
      0032FC 75 DA 42         [24] 1054 	mov	_CCAPM0,#0x42
                                   1055 ;	pwm.c:184: }
      0032FF 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'pwm_start'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	pwm.c:189: void pwm_start(void) {
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function pwm_start
                                   1063 ;	-----------------------------------------
      003300                       1064 _pwm_start:
                                   1065 ;	pwm.c:190: printf("PWM START\n\r");
      003300 74 81            [12] 1066 	mov	a,#___str_19
      003302 C0 E0            [24] 1067 	push	acc
      003304 74 3F            [12] 1068 	mov	a,#(___str_19 >> 8)
      003306 C0 E0            [24] 1069 	push	acc
      003308 74 80            [12] 1070 	mov	a,#0x80
      00330A C0 E0            [24] 1071 	push	acc
      00330C 12 33 C4         [24] 1072 	lcall	_printf
      00330F 15 81            [12] 1073 	dec	sp
      003311 15 81            [12] 1074 	dec	sp
      003313 15 81            [12] 1075 	dec	sp
                                   1076 ;	pwm.c:191: CCON = PCA_PWM_START_VALUE;
      003315 75 D8 40         [24] 1077 	mov	_CCON,#0x40
                                   1078 ;	pwm.c:192: }
      003318 22               [24] 1079 	ret
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'pwm_stop'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	pwm.c:197: void pwm_stop(void) {
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function pwm_stop
                                   1086 ;	-----------------------------------------
      003319                       1087 _pwm_stop:
                                   1088 ;	pwm.c:198: printf("PWM STOP\n\r");
      003319 74 8D            [12] 1089 	mov	a,#___str_20
      00331B C0 E0            [24] 1090 	push	acc
      00331D 74 3F            [12] 1091 	mov	a,#(___str_20 >> 8)
      00331F C0 E0            [24] 1092 	push	acc
      003321 74 80            [12] 1093 	mov	a,#0x80
      003323 C0 E0            [24] 1094 	push	acc
      003325 12 33 C4         [24] 1095 	lcall	_printf
      003328 15 81            [12] 1096 	dec	sp
      00332A 15 81            [12] 1097 	dec	sp
      00332C 15 81            [12] 1098 	dec	sp
                                   1099 ;	pwm.c:199: CCON = PCA_COUNTER_INIT;
      00332E 75 D8 00         [24] 1100 	mov	_CCON,#0x00
                                   1101 ;	pwm.c:200: }
      003331 22               [24] 1102 	ret
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'HS0_mode_on'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	pwm.c:206: void HS0_mode_on(void) {
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function HS0_mode_on
                                   1109 ;	-----------------------------------------
      003332                       1110 _HS0_mode_on:
                                   1111 ;	pwm.c:207: printf("HIGH SPEED MODE ON\n\r");
      003332 74 98            [12] 1112 	mov	a,#___str_21
      003334 C0 E0            [24] 1113 	push	acc
      003336 74 3F            [12] 1114 	mov	a,#(___str_21 >> 8)
      003338 C0 E0            [24] 1115 	push	acc
      00333A 74 80            [12] 1116 	mov	a,#0x80
      00333C C0 E0            [24] 1117 	push	acc
      00333E 12 33 C4         [24] 1118 	lcall	_printf
      003341 15 81            [12] 1119 	dec	sp
      003343 15 81            [12] 1120 	dec	sp
      003345 15 81            [12] 1121 	dec	sp
                                   1122 ;	pwm.c:208: CCON |= PCA_HSO_START_VALUE;
      003347 43 D8 4C         [24] 1123 	orl	_CCON,#0x4c
                                   1124 ;	pwm.c:209: CMOD |= 0x02;                      // Fclk/2 freq set for PCA mode
      00334A 43 D9 02         [24] 1125 	orl	_CMOD,#0x02
                                   1126 ;	pwm.c:210: CCAPM0 = PCA_HSO_START_VALUE;      // Compare mode + HSO, no interrupt
      00334D 75 DA 4C         [24] 1127 	mov	_CCAPM0,#0x4c
                                   1128 ;	pwm.c:211: CL = PCA_COUNTER_INIT;             // Clear PCA counter
      003350 75 E9 00         [24] 1129 	mov	_CL,#0x00
                                   1130 ;	pwm.c:212: CH = PCA_COUNTER_INIT;
      003353 75 F9 00         [24] 1131 	mov	_CH,#0x00
                                   1132 ;	pwm.c:215: CCAP0L = PCA_PWM_COMPARE_VALUE;    // Load compare low byte
      003356 75 EA AC         [24] 1133 	mov	_CCAP0L,#0xac
                                   1134 ;	pwm.c:216: CCAP0H = PCA_PWM_COMPARE_VALUE;    // Load compare high byte
      003359 75 FA AC         [24] 1135 	mov	_CCAP0H,#0xac
                                   1136 ;	pwm.c:217: }
      00335C 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'HS0_mode_off'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	pwm.c:222: void HS0_mode_off(void) {
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function HS0_mode_off
                                   1144 ;	-----------------------------------------
      00335D                       1145 _HS0_mode_off:
                                   1146 ;	pwm.c:223: printf("HIGH SPEED MODE OFF\n\r");
      00335D 74 AD            [12] 1147 	mov	a,#___str_22
      00335F C0 E0            [24] 1148 	push	acc
      003361 74 3F            [12] 1149 	mov	a,#(___str_22 >> 8)
      003363 C0 E0            [24] 1150 	push	acc
      003365 74 80            [12] 1151 	mov	a,#0x80
      003367 C0 E0            [24] 1152 	push	acc
      003369 12 33 C4         [24] 1153 	lcall	_printf
      00336C 15 81            [12] 1154 	dec	sp
      00336E 15 81            [12] 1155 	dec	sp
      003370 15 81            [12] 1156 	dec	sp
                                   1157 ;	pwm.c:224: CCAPM0 = 0x00;
      003372 75 DA 00         [24] 1158 	mov	_CCAPM0,#0x00
                                   1159 ;	pwm.c:225: }
      003375 22               [24] 1160 	ret
                                   1161 	.area CSEG    (CODE)
                                   1162 	.area CONST   (CODE)
                                   1163 	.area CONST   (CODE)
      003E26                       1164 ___str_0:
      003E26 45 58 49 54 20 46 52  1165 	.ascii "EXIT FROM IDEL MODE"
             4F 4D 20 49 44 45 4C
             20 4D 4F 44 45
      003E39 0A                    1166 	.db 0x0a
      003E3A 0D                    1167 	.db 0x0d
      003E3B 00                    1168 	.db 0x00
                                   1169 	.area CSEG    (CODE)
                                   1170 	.area CONST   (CODE)
      003E3C                       1171 ___str_1:
      003E3C 50 43 41 20 44 45 4D  1172 	.ascii "PCA DEMO"
             4F
      003E44 0A                    1173 	.db 0x0a
      003E45 0D                    1174 	.db 0x0d
      003E46 00                    1175 	.db 0x00
                                   1176 	.area CSEG    (CODE)
                                   1177 	.area CONST   (CODE)
      003E47                       1178 ___str_2:
      003E47 69 6E 20 58 32 20 4D  1179 	.ascii "in X2 MODE"
             4F 44 45
      003E51 0A                    1180 	.db 0x0a
      003E52 0D                    1181 	.db 0x0d
      003E53 00                    1182 	.db 0x00
                                   1183 	.area CSEG    (CODE)
                                   1184 	.area CONST   (CODE)
      003E54                       1185 ___str_3:
      003E54 45 4E 54 45 52 20 43  1186 	.ascii "ENTER COMMANDS"
             4F 4D 4D 41 4E 44 53
      003E62 0A                    1187 	.db 0x0a
      003E63 0D                    1188 	.db 0x0d
      003E64 00                    1189 	.db 0x00
                                   1190 	.area CSEG    (CODE)
                                   1191 	.area CONST   (CODE)
      003E65                       1192 ___str_4:
      003E65 43 4F 4D 4D 41 4E 44  1193 	.ascii "COMMAND MENU :"
             20 4D 45 4E 55 20 3A
      003E73 0A                    1194 	.db 0x0a
      003E74 0D                    1195 	.db 0x0d
      003E75 00                    1196 	.db 0x00
                                   1197 	.area CSEG    (CODE)
                                   1198 	.area CONST   (CODE)
      003E76                       1199 ___str_5:
      003E76 20 52 20 2D 20 52 55  1200 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      003E82 0A                    1201 	.db 0x0a
      003E83 0D                    1202 	.db 0x0d
      003E84 00                    1203 	.db 0x00
                                   1204 	.area CSEG    (CODE)
                                   1205 	.area CONST   (CODE)
      003E85                       1206 ___str_6:
      003E85 20 53 20 2D 20 53 54  1207 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      003E92 0A                    1208 	.db 0x0a
      003E93 0D                    1209 	.db 0x0d
      003E94 00                    1210 	.db 0x00
                                   1211 	.area CSEG    (CODE)
                                   1212 	.area CONST   (CODE)
      003E95                       1213 ___str_7:
      003E95 20 46 20 2D 20 4D 41  1214 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003EAC 0A                    1215 	.db 0x0a
      003EAD 0D                    1216 	.db 0x0d
      003EAE 00                    1217 	.db 0x00
                                   1218 	.area CSEG    (CODE)
                                   1219 	.area CONST   (CODE)
      003EAF                       1220 ___str_8:
      003EAF 20 4D 20 2D 20 4D 49  1221 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003EC6 0A                    1222 	.db 0x0a
      003EC7 0D                    1223 	.db 0x0d
      003EC8 00                    1224 	.db 0x00
                                   1225 	.area CSEG    (CODE)
                                   1226 	.area CONST   (CODE)
      003EC9                       1227 ___str_9:
      003EC9 20 49 20 2D 20 49 44  1228 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      003ED7 0A                    1229 	.db 0x0a
      003ED8 0D                    1230 	.db 0x0d
      003ED9 00                    1231 	.db 0x00
                                   1232 	.area CSEG    (CODE)
                                   1233 	.area CONST   (CODE)
      003EDA                       1234 ___str_10:
      003EDA 20 50 20 2D 20 50 4F  1235 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      003EEE 0A                    1236 	.db 0x0a
      003EEF 0D                    1237 	.db 0x0d
      003EF0 00                    1238 	.db 0x00
                                   1239 	.area CSEG    (CODE)
                                   1240 	.area CONST   (CODE)
      003EF1                       1241 ___str_11:
      003EF1 20 48 20 2D 20 48 49  1242 	.ascii " H - HIGH SPEED MODE ON"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 4E
      003F08 0A                    1243 	.db 0x0a
      003F09 0D                    1244 	.db 0x0d
      003F0A 00                    1245 	.db 0x00
                                   1246 	.area CSEG    (CODE)
                                   1247 	.area CONST   (CODE)
      003F0B                       1248 ___str_12:
      003F0B 20 51 20 2D 20 48 49  1249 	.ascii " Q - HIGH SPEED MODE OFF"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 46 46
      003F23 0A                    1250 	.db 0x0a
      003F24 0D                    1251 	.db 0x0d
      003F25 00                    1252 	.db 0x00
                                   1253 	.area CSEG    (CODE)
                                   1254 	.area CONST   (CODE)
      003F26                       1255 ___str_13:
      003F26 0A                    1256 	.db 0x0a
      003F27 0D                    1257 	.db 0x0d
      003F28 00                    1258 	.db 0x00
                                   1259 	.area CSEG    (CODE)
                                   1260 	.area CONST   (CODE)
      003F29                       1261 ___str_14:
      003F29 49 6E 76 61 6C 69 64  1262 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      003F38 0A                    1263 	.db 0x0a
      003F39 0D                    1264 	.db 0x0d
      003F3A 00                    1265 	.db 0x00
                                   1266 	.area CSEG    (CODE)
                                   1267 	.area CONST   (CODE)
      003F3B                       1268 ___str_15:
      003F3B 49 44 4C 45 20 4D 4F  1269 	.ascii "IDLE MODE"
             44 45
      003F44 0A                    1270 	.db 0x0a
      003F45 0D                    1271 	.db 0x0d
      003F46 00                    1272 	.db 0x00
                                   1273 	.area CSEG    (CODE)
                                   1274 	.area CONST   (CODE)
      003F47                       1275 ___str_16:
      003F47 50 4F 57 45 52 20 44  1276 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      003F56 0A                    1277 	.db 0x0a
      003F57 0D                    1278 	.db 0x0d
      003F58 00                    1279 	.db 0x00
                                   1280 	.area CSEG    (CODE)
                                   1281 	.area CONST   (CODE)
      003F59                       1282 ___str_17:
      003F59 4D 41 58 49 4D 55 4D  1283 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003F6A 0A                    1284 	.db 0x0a
      003F6B 0D                    1285 	.db 0x0d
      003F6C 00                    1286 	.db 0x00
                                   1287 	.area CSEG    (CODE)
                                   1288 	.area CONST   (CODE)
      003F6D                       1289 ___str_18:
      003F6D 4D 49 4E 49 4D 55 4D  1290 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003F7E 0A                    1291 	.db 0x0a
      003F7F 0D                    1292 	.db 0x0d
      003F80 00                    1293 	.db 0x00
                                   1294 	.area CSEG    (CODE)
                                   1295 	.area CONST   (CODE)
      003F81                       1296 ___str_19:
      003F81 50 57 4D 20 53 54 41  1297 	.ascii "PWM START"
             52 54
      003F8A 0A                    1298 	.db 0x0a
      003F8B 0D                    1299 	.db 0x0d
      003F8C 00                    1300 	.db 0x00
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
      003F8D                       1303 ___str_20:
      003F8D 50 57 4D 20 53 54 4F  1304 	.ascii "PWM STOP"
             50
      003F95 0A                    1305 	.db 0x0a
      003F96 0D                    1306 	.db 0x0d
      003F97 00                    1307 	.db 0x00
                                   1308 	.area CSEG    (CODE)
                                   1309 	.area CONST   (CODE)
      003F98                       1310 ___str_21:
      003F98 48 49 47 48 20 53 50  1311 	.ascii "HIGH SPEED MODE ON"
             45 45 44 20 4D 4F 44
             45 20 4F 4E
      003FAA 0A                    1312 	.db 0x0a
      003FAB 0D                    1313 	.db 0x0d
      003FAC 00                    1314 	.db 0x00
                                   1315 	.area CSEG    (CODE)
                                   1316 	.area CONST   (CODE)
      003FAD                       1317 ___str_22:
      003FAD 48 49 47 48 20 53 50  1318 	.ascii "HIGH SPEED MODE OFF"
             45 45 44 20 4D 4F 44
             45 20 4F 46 46
      003FC0 0A                    1319 	.db 0x0a
      003FC1 0D                    1320 	.db 0x0d
      003FC2 00                    1321 	.db 0x00
                                   1322 	.area CSEG    (CODE)
                                   1323 	.area XINIT   (CODE)
                                   1324 	.area CABS    (ABS,CODE)
