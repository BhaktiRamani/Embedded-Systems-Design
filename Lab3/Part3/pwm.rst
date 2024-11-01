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
                                     12 	.globl _stop_high_speed_mode
                                     13 	.globl _init_high_speed_mode
                                     14 	.globl _init_pca_sw_timer
                                     15 	.globl _PCA_ISR
                                     16 	.globl _set_x2_mode
                                     17 	.globl _enable_interrupt0
                                     18 	.globl _init_watchdog
                                     19 	.globl _enter_power_down_mode
                                     20 	.globl _enter_idle_mode
                                     21 	.globl _set_fclk_to_min
                                     22 	.globl _set_fclk_to_max
                                     23 	.globl _init_registers
                                     24 	.globl _PWM_stop
                                     25 	.globl _PWM_start
                                     26 	.globl _getchar
                                     27 	.globl _putchar
                                     28 	.globl _printf
                                     29 	.globl _TF1
                                     30 	.globl _TR1
                                     31 	.globl _TF0
                                     32 	.globl _TR0
                                     33 	.globl _IE1
                                     34 	.globl _IT1
                                     35 	.globl _IE0
                                     36 	.globl _IT0
                                     37 	.globl _SM0
                                     38 	.globl _SM1
                                     39 	.globl _SM2
                                     40 	.globl _REN
                                     41 	.globl _TB8
                                     42 	.globl _RB8
                                     43 	.globl _TI
                                     44 	.globl _RI
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD0
                                     60 	.globl _TXD
                                     61 	.globl _RXD0
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _PS
                                     96 	.globl _PT1
                                     97 	.globl _PX1
                                     98 	.globl _PT0
                                     99 	.globl _PX0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _TMOD
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TCON
                                    169 	.globl _SP
                                    170 	.globl _SCON
                                    171 	.globl _SBUF0
                                    172 	.globl _SBUF
                                    173 	.globl _PSW
                                    174 	.globl _PCON
                                    175 	.globl _P3
                                    176 	.globl _P2
                                    177 	.globl _P1
                                    178 	.globl _P0
                                    179 	.globl _IP
                                    180 	.globl _IE
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _DP0H
                                    184 	.globl _DPH
                                    185 	.globl _B
                                    186 	.globl _ACC
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                           000083   296 _DPH	=	0x0083
                           000083   297 _DP0H	=	0x0083
                           000082   298 _DPL	=	0x0082
                           000082   299 _DP0L	=	0x0082
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           000080   302 _P0	=	0x0080
                           000090   303 _P1	=	0x0090
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000087   306 _PCON	=	0x0087
                           0000D0   307 _PSW	=	0x00d0
                           000099   308 _SBUF	=	0x0099
                           000099   309 _SBUF0	=	0x0099
                           000098   310 _SCON	=	0x0098
                           000081   311 _SP	=	0x0081
                           000088   312 _TCON	=	0x0088
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008A   315 _TL0	=	0x008a
                           00008B   316 _TL1	=	0x008b
                           000089   317 _TMOD	=	0x0089
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           0000AD   323 _ET2	=	0x00ad
                           0000BD   324 _PT2	=	0x00bd
                           0000C8   325 _T2CON_0	=	0x00c8
                           0000C9   326 _T2CON_1	=	0x00c9
                           0000CA   327 _T2CON_2	=	0x00ca
                           0000CB   328 _T2CON_3	=	0x00cb
                           0000CC   329 _T2CON_4	=	0x00cc
                           0000CD   330 _T2CON_5	=	0x00cd
                           0000CE   331 _T2CON_6	=	0x00ce
                           0000CF   332 _T2CON_7	=	0x00cf
                           0000C8   333 _CP_RL2	=	0x00c8
                           0000C9   334 _C_T2	=	0x00c9
                           0000CA   335 _TR2	=	0x00ca
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CC   337 _TCLK	=	0x00cc
                           0000CD   338 _RCLK	=	0x00cd
                           0000CE   339 _EXF2	=	0x00ce
                           0000CF   340 _TF2	=	0x00cf
                           0000DF   341 _CF	=	0x00df
                           0000DE   342 _CR	=	0x00de
                           0000DC   343 _CCF4	=	0x00dc
                           0000DB   344 _CCF3	=	0x00db
                           0000DA   345 _CCF2	=	0x00da
                           0000D9   346 _CCF1	=	0x00d9
                           0000D8   347 _CCF0	=	0x00d8
                           0000AE   348 _EC	=	0x00ae
                           0000BE   349 _PPCL	=	0x00be
                           0000BD   350 _PT2L	=	0x00bd
                           0000BC   351 _PSL	=	0x00bc
                           0000BB   352 _PT1L	=	0x00bb
                           0000BA   353 _PX1L	=	0x00ba
                           0000B9   354 _PT0L	=	0x00b9
                           0000B8   355 _PX0L	=	0x00b8
                           0000C0   356 _P4_0	=	0x00c0
                           0000C1   357 _P4_1	=	0x00c1
                           0000C2   358 _P4_2	=	0x00c2
                           0000C3   359 _P4_3	=	0x00c3
                           0000C4   360 _P4_4	=	0x00c4
                           0000C5   361 _P4_5	=	0x00c5
                           0000C6   362 _P4_6	=	0x00c6
                           0000C7   363 _P4_7	=	0x00c7
                           0000E8   364 _P5_0	=	0x00e8
                           0000E9   365 _P5_1	=	0x00e9
                           0000EA   366 _P5_2	=	0x00ea
                           0000EB   367 _P5_3	=	0x00eb
                           0000EC   368 _P5_4	=	0x00ec
                           0000ED   369 _P5_5	=	0x00ed
                           0000EE   370 _P5_6	=	0x00ee
                           0000EF   371 _P5_7	=	0x00ef
                           0000F0   372 _BREG_F0	=	0x00f0
                           0000F1   373 _BREG_F1	=	0x00f1
                           0000F2   374 _BREG_F2	=	0x00f2
                           0000F3   375 _BREG_F3	=	0x00f3
                           0000F4   376 _BREG_F4	=	0x00f4
                           0000F5   377 _BREG_F5	=	0x00f5
                           0000F6   378 _BREG_F6	=	0x00f6
                           0000F7   379 _BREG_F7	=	0x00f7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B8   386 _PX0	=	0x00b8
                           0000B9   387 _PT0	=	0x00b9
                           0000BA   388 _PX1	=	0x00ba
                           0000BB   389 _PT1	=	0x00bb
                           0000BC   390 _PS	=	0x00bc
                           000080   391 _P0_0	=	0x0080
                           000081   392 _P0_1	=	0x0081
                           000082   393 _P0_2	=	0x0082
                           000083   394 _P0_3	=	0x0083
                           000084   395 _P0_4	=	0x0084
                           000085   396 _P0_5	=	0x0085
                           000086   397 _P0_6	=	0x0086
                           000087   398 _P0_7	=	0x0087
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           0000A0   407 _P2_0	=	0x00a0
                           0000A1   408 _P2_1	=	0x00a1
                           0000A2   409 _P2_2	=	0x00a2
                           0000A3   410 _P2_3	=	0x00a3
                           0000A4   411 _P2_4	=	0x00a4
                           0000A5   412 _P2_5	=	0x00a5
                           0000A6   413 _P2_6	=	0x00a6
                           0000A7   414 _P2_7	=	0x00a7
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B0   424 _RXD0	=	0x00b0
                           0000B1   425 _TXD	=	0x00b1
                           0000B1   426 _TXD0	=	0x00b1
                           0000B2   427 _INT0	=	0x00b2
                           0000B3   428 _INT1	=	0x00b3
                           0000B4   429 _T0	=	0x00b4
                           0000B5   430 _T1	=	0x00b5
                           0000B6   431 _WR	=	0x00b6
                           0000B7   432 _RD	=	0x00b7
                           0000D0   433 _P	=	0x00d0
                           0000D1   434 _F1	=	0x00d1
                           0000D2   435 _OV	=	0x00d2
                           0000D3   436 _RS0	=	0x00d3
                           0000D4   437 _RS1	=	0x00d4
                           0000D5   438 _F0	=	0x00d5
                           0000D6   439 _AC	=	0x00d6
                           0000D7   440 _CY	=	0x00d7
                           000098   441 _RI	=	0x0098
                           000099   442 _TI	=	0x0099
                           00009A   443 _RB8	=	0x009a
                           00009B   444 _TB8	=	0x009b
                           00009C   445 _REN	=	0x009c
                           00009D   446 _SM2	=	0x009d
                           00009E   447 _SM1	=	0x009e
                           00009F   448 _SM0	=	0x009f
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable bit register bank
                                    464 ;--------------------------------------------------------
                                    465 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        466 bits:
      000020                        467 	.ds 1
                           008000   468 	b0 = bits[0]
                           008100   469 	b1 = bits[1]
                           008200   470 	b2 = bits[2]
                           008300   471 	b3 = bits[3]
                           008400   472 	b4 = bits[4]
                           008500   473 	b5 = bits[5]
                           008600   474 	b6 = bits[6]
                           008700   475 	b7 = bits[7]
                                    476 ;--------------------------------------------------------
                                    477 ; internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area DSEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; overlayable items in internal ram 
                                    482 ;--------------------------------------------------------
                                    483 ;--------------------------------------------------------
                                    484 ; Stack segment in internal ram 
                                    485 ;--------------------------------------------------------
                                    486 	.area	SSEG
      000021                        487 __start__stack:
      000021                        488 	.ds	1
                                    489 
                                    490 ;--------------------------------------------------------
                                    491 ; indirectly addressable internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area ISEG    (DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; absolute internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area IABS    (ABS,DATA)
                                    498 	.area IABS    (ABS,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; bit data
                                    501 ;--------------------------------------------------------
                                    502 	.area BSEG    (BIT)
                                    503 ;--------------------------------------------------------
                                    504 ; paged external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area PSEG    (PAG,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XSEG    (XDATA)
      000400                        511 _putchar_charToSend_65536_72:
      000400                        512 	.ds 2
                                    513 ;--------------------------------------------------------
                                    514 ; absolute external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area XABS    (ABS,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external initialized ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XISEG   (XDATA)
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT0 (CODE)
                                    523 	.area GSINIT1 (CODE)
                                    524 	.area GSINIT2 (CODE)
                                    525 	.area GSINIT3 (CODE)
                                    526 	.area GSINIT4 (CODE)
                                    527 	.area GSINIT5 (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area CSEG    (CODE)
                                    531 ;--------------------------------------------------------
                                    532 ; interrupt vector 
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
      003000                        535 __interrupt_vect:
      003000 02 30 41         [24]  536 	ljmp	__sdcc_gsinit_startup
      003003 32               [24]  537 	reti
      003004                        538 	.ds	7
      00300B 32               [24]  539 	reti
      00300C                        540 	.ds	7
      003013 32               [24]  541 	reti
      003014                        542 	.ds	7
      00301B 32               [24]  543 	reti
      00301C                        544 	.ds	7
      003023 32               [24]  545 	reti
      003024                        546 	.ds	7
      00302B 32               [24]  547 	reti
      00302C                        548 	.ds	7
      003033 32               [24]  549 	reti
      003034                        550 	.ds	7
      00303B 02 31 27         [24]  551 	ljmp	_PCA_ISR
                                    552 ;--------------------------------------------------------
                                    553 ; global & static initialisations
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 	.globl __sdcc_gsinit_startup
                                    560 	.globl __sdcc_program_startup
                                    561 	.globl __start__stack
                                    562 	.globl __mcs51_genXINIT
                                    563 	.globl __mcs51_genXRAMCLEAR
                                    564 	.globl __mcs51_genRAMCLEAR
                                    565 	.area GSFINAL (CODE)
      00309A 02 30 3E         [24]  566 	ljmp	__sdcc_program_startup
                                    567 ;--------------------------------------------------------
                                    568 ; Home
                                    569 ;--------------------------------------------------------
                                    570 	.area HOME    (CODE)
                                    571 	.area HOME    (CODE)
      00303E                        572 __sdcc_program_startup:
      00303E 02 31 D9         [24]  573 	ljmp	_main
                                    574 ;	return from main will return to caller
                                    575 ;--------------------------------------------------------
                                    576 ; code
                                    577 ;--------------------------------------------------------
                                    578 	.area CSEG    (CODE)
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'putchar'
                                    581 ;------------------------------------------------------------
                                    582 ;charToSend                Allocated with name '_putchar_charToSend_65536_72'
                                    583 ;------------------------------------------------------------
                                    584 ;	pwm.c:42: int putchar(int charToSend) {
                                    585 ;	-----------------------------------------
                                    586 ;	 function putchar
                                    587 ;	-----------------------------------------
      00309D                        588 _putchar:
                           000007   589 	ar7 = 0x07
                           000006   590 	ar6 = 0x06
                           000005   591 	ar5 = 0x05
                           000004   592 	ar4 = 0x04
                           000003   593 	ar3 = 0x03
                           000002   594 	ar2 = 0x02
                           000001   595 	ar1 = 0x01
                           000000   596 	ar0 = 0x00
      00309D AF 83            [24]  597 	mov	r7,dph
      00309F E5 82            [12]  598 	mov	a,dpl
      0030A1 90 04 00         [24]  599 	mov	dptr,#_putchar_charToSend_65536_72
      0030A4 F0               [24]  600 	movx	@dptr,a
      0030A5 EF               [12]  601 	mov	a,r7
      0030A6 A3               [24]  602 	inc	dptr
      0030A7 F0               [24]  603 	movx	@dptr,a
                                    604 ;	pwm.c:43: SBUF = charToSend;  // Send character to serial buffer
      0030A8 90 04 00         [24]  605 	mov	dptr,#_putchar_charToSend_65536_72
      0030AB E0               [24]  606 	movx	a,@dptr
      0030AC FE               [12]  607 	mov	r6,a
      0030AD A3               [24]  608 	inc	dptr
      0030AE E0               [24]  609 	movx	a,@dptr
      0030AF FF               [12]  610 	mov	r7,a
      0030B0 8E 99            [24]  611 	mov	_SBUF,r6
                                    612 ;	pwm.c:44: while (!TI);        // Wait for transmission to complete
      0030B2                        613 00101$:
                                    614 ;	pwm.c:45: TI = 0;            // Clear transmission interrupt flag
                                    615 ;	assignBit
      0030B2 10 99 02         [24]  616 	jbc	_TI,00114$
      0030B5 80 FB            [24]  617 	sjmp	00101$
      0030B7                        618 00114$:
                                    619 ;	pwm.c:46: return charToSend;
      0030B7 8E 82            [24]  620 	mov	dpl,r6
      0030B9 8F 83            [24]  621 	mov	dph,r7
                                    622 ;	pwm.c:47: }
      0030BB 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'getchar'
                                    626 ;------------------------------------------------------------
                                    627 ;	pwm.c:53: int getchar(void)
                                    628 ;	-----------------------------------------
                                    629 ;	 function getchar
                                    630 ;	-----------------------------------------
      0030BC                        631 _getchar:
                                    632 ;	pwm.c:55: while (!RI);        // Wait for reception to complete
      0030BC                        633 00101$:
                                    634 ;	pwm.c:56: RI = 0;            // Clear reception interrupt flag
                                    635 ;	assignBit
      0030BC 10 98 02         [24]  636 	jbc	_RI,00114$
      0030BF 80 FB            [24]  637 	sjmp	00101$
      0030C1                        638 00114$:
                                    639 ;	pwm.c:57: return SBUF;       // Return received character
      0030C1 AE 99            [24]  640 	mov	r6,_SBUF
      0030C3 7F 00            [12]  641 	mov	r7,#0x00
      0030C5 8E 82            [24]  642 	mov	dpl,r6
      0030C7 8F 83            [24]  643 	mov	dph,r7
                                    644 ;	pwm.c:58: }
      0030C9 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'PWM_start'
                                    648 ;------------------------------------------------------------
                                    649 ;	pwm.c:62: void PWM_start(void)
                                    650 ;	-----------------------------------------
                                    651 ;	 function PWM_start
                                    652 ;	-----------------------------------------
      0030CA                        653 _PWM_start:
                                    654 ;	pwm.c:66: CCAP0L = 0x00;  // Clear low byte of PCA module 0
      0030CA 75 EA 00         [24]  655 	mov	_CCAP0L,#0x00
                                    656 ;	pwm.c:67: CCAP0H = 0x00;  // Clear high byte of PCA module 0
      0030CD 75 FA 00         [24]  657 	mov	_CCAP0H,#0x00
                                    658 ;	pwm.c:68: CCAPM0 = 0x00;  // Clear PCA module 0 control register
      0030D0 75 DA 00         [24]  659 	mov	_CCAPM0,#0x00
                                    660 ;	pwm.c:72: CCAP0L = 0xAC;
      0030D3 75 EA AC         [24]  661 	mov	_CCAP0L,#0xac
                                    662 ;	pwm.c:73: CCAP0H = 0xAC;
      0030D6 75 FA AC         [24]  663 	mov	_CCAP0H,#0xac
                                    664 ;	pwm.c:76: CMOD &= ~(CMOD_CIDL_BIT);
      0030D9 53 D9 7F         [24]  665 	anl	_CMOD,#0x7f
                                    666 ;	pwm.c:78: CCON |= CCON_CR_BIT;
      0030DC 43 D8 40         [24]  667 	orl	_CCON,#0x40
                                    668 ;	pwm.c:81: CCAPM0 |= CCAPM0_ECOM_ENABLE_BIT |CCAPM0_PWM_ENABLE_BIT;
      0030DF 43 DA 42         [24]  669 	orl	_CCAPM0,#0x42
                                    670 ;	pwm.c:82: }
      0030E2 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'PWM_stop'
                                    674 ;------------------------------------------------------------
                                    675 ;	pwm.c:86: void PWM_stop(void)
                                    676 ;	-----------------------------------------
                                    677 ;	 function PWM_stop
                                    678 ;	-----------------------------------------
      0030E3                        679 _PWM_stop:
                                    680 ;	pwm.c:90: CCAPM0 &= ~(CCAPM0_ECOM_ENABLE_BIT);
      0030E3 53 DA BF         [24]  681 	anl	_CCAPM0,#0xbf
                                    682 ;	pwm.c:91: CCAPM0 &= ~(CCAPM0_PWM_ENABLE_BIT);
      0030E6 53 DA FD         [24]  683 	anl	_CCAPM0,#0xfd
                                    684 ;	pwm.c:94: }
      0030E9 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'init_registers'
                                    688 ;------------------------------------------------------------
                                    689 ;	pwm.c:99: void init_registers(void)
                                    690 ;	-----------------------------------------
                                    691 ;	 function init_registers
                                    692 ;	-----------------------------------------
      0030EA                        693 _init_registers:
                                    694 ;	pwm.c:102: CMOD = 0x00;    // Clear control mode register
      0030EA 75 D9 00         [24]  695 	mov	_CMOD,#0x00
                                    696 ;	pwm.c:103: CL = 0x00;      // Clear low byte of PCA timer
      0030ED 75 E9 00         [24]  697 	mov	_CL,#0x00
                                    698 ;	pwm.c:104: CH = 0x00;      // Clear high byte of PCA timer
      0030F0 75 F9 00         [24]  699 	mov	_CH,#0x00
                                    700 ;	pwm.c:105: CCON = 0x00;    // Clear control register
      0030F3 75 D8 00         [24]  701 	mov	_CCON,#0x00
                                    702 ;	pwm.c:106: }
      0030F6 22               [24]  703 	ret
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'set_fclk_to_max'
                                    706 ;------------------------------------------------------------
                                    707 ;	pwm.c:111: void set_fclk_to_max(void)
                                    708 ;	-----------------------------------------
                                    709 ;	 function set_fclk_to_max
                                    710 ;	-----------------------------------------
      0030F7                        711 _set_fclk_to_max:
                                    712 ;	pwm.c:113: CKRL = 0xFF;
      0030F7 75 97 FF         [24]  713 	mov	_CKRL,#0xff
                                    714 ;	pwm.c:114: }
      0030FA 22               [24]  715 	ret
                                    716 ;------------------------------------------------------------
                                    717 ;Allocation info for local variables in function 'set_fclk_to_min'
                                    718 ;------------------------------------------------------------
                                    719 ;	pwm.c:120: void set_fclk_to_min(void)
                                    720 ;	-----------------------------------------
                                    721 ;	 function set_fclk_to_min
                                    722 ;	-----------------------------------------
      0030FB                        723 _set_fclk_to_min:
                                    724 ;	pwm.c:122: CKRL = 0x01;
      0030FB 75 97 01         [24]  725 	mov	_CKRL,#0x01
                                    726 ;	pwm.c:123: }
      0030FE 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'enter_idle_mode'
                                    730 ;------------------------------------------------------------
                                    731 ;	pwm.c:128: void enter_idle_mode(void)
                                    732 ;	-----------------------------------------
                                    733 ;	 function enter_idle_mode
                                    734 ;	-----------------------------------------
      0030FF                        735 _enter_idle_mode:
                                    736 ;	pwm.c:130: PCON |= PCON_IDLE_MODE_BIT;
      0030FF 43 87 01         [24]  737 	orl	_PCON,#0x01
                                    738 ;	pwm.c:131: }
      003102 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'enter_power_down_mode'
                                    742 ;------------------------------------------------------------
                                    743 ;	pwm.c:135: void enter_power_down_mode(void)
                                    744 ;	-----------------------------------------
                                    745 ;	 function enter_power_down_mode
                                    746 ;	-----------------------------------------
      003103                        747 _enter_power_down_mode:
                                    748 ;	pwm.c:137: PCON |= PCON_POWER_DOWN_BIT;
      003103 43 87 02         [24]  749 	orl	_PCON,#0x02
                                    750 ;	pwm.c:138: }
      003106 22               [24]  751 	ret
                                    752 ;------------------------------------------------------------
                                    753 ;Allocation info for local variables in function 'init_watchdog'
                                    754 ;------------------------------------------------------------
                                    755 ;	pwm.c:142: void init_watchdog(void)
                                    756 ;	-----------------------------------------
                                    757 ;	 function init_watchdog
                                    758 ;	-----------------------------------------
      003107                        759 _init_watchdog:
                                    760 ;	pwm.c:145: CMOD |= CMOD_WDOG_ENABLE_BIT;   // set the watchdog timer to use external oscillator
      003107 43 D9 40         [24]  761 	orl	_CMOD,#0x40
                                    762 ;	pwm.c:146: CCAP4L = 0x80; // Initialise the low byte of the capture and compare register 4 with 0xff
      00310A 75 EE 80         [24]  763 	mov	_CCAP4L,#0x80
                                    764 ;	pwm.c:147: CCAP4H = 0xFF; // Initialise the high byte of the capture and compare register 4 with 0xff
      00310D 75 FE FF         [24]  765 	mov	_CCAP4H,#0xff
                                    766 ;	pwm.c:148: CCAPM4 |= CCAPM4_MAT_BIT| CCAPM4_ECOM_BIT;  // set capture and compare mode for register 4 to high-byte-only mode with edge detection
      003110 43 DE 48         [24]  767 	orl	_CCAPM4,#0x48
                                    768 ;	pwm.c:149: CR=1;
                                    769 ;	assignBit
      003113 D2 DE            [12]  770 	setb	_CR
                                    771 ;	pwm.c:150: }
      003115 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'enable_interrupt0'
                                    775 ;------------------------------------------------------------
                                    776 ;	pwm.c:155: void enable_interrupt0(void)
                                    777 ;	-----------------------------------------
                                    778 ;	 function enable_interrupt0
                                    779 ;	-----------------------------------------
      003116                        780 _enable_interrupt0:
                                    781 ;	pwm.c:158: IT0 = 1;           // Set INT0 to be edge-triggered
                                    782 ;	assignBit
      003116 D2 88            [12]  783 	setb	_IT0
                                    784 ;	pwm.c:159: EX0 = 1;          // Enable INT0 interrupt
                                    785 ;	assignBit
      003118 D2 A8            [12]  786 	setb	_EX0
                                    787 ;	pwm.c:160: EA = 1;           // Enable global interrupts
                                    788 ;	assignBit
      00311A D2 AF            [12]  789 	setb	_EA
                                    790 ;	pwm.c:162: }
      00311C 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'set_x2_mode'
                                    794 ;------------------------------------------------------------
                                    795 ;	pwm.c:166: void set_x2_mode(void)
                                    796 ;	-----------------------------------------
                                    797 ;	 function set_x2_mode
                                    798 ;	-----------------------------------------
      00311D                        799 _set_x2_mode:
                                    800 ;	pwm.c:168: CKCON0 = 0x00;
      00311D 75 8F 00         [24]  801 	mov	_CKCON0,#0x00
                                    802 ;	pwm.c:169: CKCON0 |= CKCON0_X2_BIT;
      003120 43 8F 01         [24]  803 	orl	_CKCON0,#0x01
                                    804 ;	pwm.c:170: CKCON0 |= CKCON0_TIX2_BIT;
      003123 43 8F 04         [24]  805 	orl	_CKCON0,#0x04
                                    806 ;	pwm.c:171: }
      003126 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'PCA_ISR'
                                    810 ;------------------------------------------------------------
                                    811 ;	pwm.c:174: void PCA_ISR(void) __interrupt (7){
                                    812 ;	-----------------------------------------
                                    813 ;	 function PCA_ISR
                                    814 ;	-----------------------------------------
      003127                        815 _PCA_ISR:
      003127 C0 20            [24]  816 	push	bits
      003129 C0 E0            [24]  817 	push	acc
      00312B C0 F0            [24]  818 	push	b
      00312D C0 82            [24]  819 	push	dpl
      00312F C0 83            [24]  820 	push	dph
      003131 C0 07            [24]  821 	push	(0+7)
      003133 C0 06            [24]  822 	push	(0+6)
      003135 C0 05            [24]  823 	push	(0+5)
      003137 C0 04            [24]  824 	push	(0+4)
      003139 C0 03            [24]  825 	push	(0+3)
      00313B C0 02            [24]  826 	push	(0+2)
      00313D C0 01            [24]  827 	push	(0+1)
      00313F C0 00            [24]  828 	push	(0+0)
      003141 C0 D0            [24]  829 	push	psw
      003143 75 D0 00         [24]  830 	mov	psw,#0x00
                                    831 ;	pwm.c:175: if (CCON & CCON_CCF1_BIT) {       // Check if PCA Module 1 triggered the interrupt
      003146 E5 D8            [12]  832 	mov	a,_CCON
      003148 30 E1 1E         [24]  833 	jnb	acc.1,00102$
                                    834 ;	pwm.c:176: CCON &= ~(CCON_CCF1_BIT);       // Clear the interrupt flag for PCA Module 1
      00314B 53 D8 FD         [24]  835 	anl	_CCON,#0xfd
                                    836 ;	pwm.c:179: CCAP4H = 0xFF;           // Set high byte of the compare value
      00314E 75 FE FF         [24]  837 	mov	_CCAP4H,#0xff
                                    838 ;	pwm.c:180: CCAP4L = 0x80;           // Set low byte of the compare value (e.g., 0xFF80)
      003151 75 EE 80         [24]  839 	mov	_CCAP4L,#0x80
                                    840 ;	pwm.c:181: printf("WR");
      003154 74 25            [12]  841 	mov	a,#___str_0
      003156 C0 E0            [24]  842 	push	acc
      003158 74 3F            [12]  843 	mov	a,#(___str_0 >> 8)
      00315A C0 E0            [24]  844 	push	acc
      00315C 74 80            [12]  845 	mov	a,#0x80
      00315E C0 E0            [24]  846 	push	acc
      003160 12 34 C3         [24]  847 	lcall	_printf
      003163 15 81            [12]  848 	dec	sp
      003165 15 81            [12]  849 	dec	sp
      003167 15 81            [12]  850 	dec	sp
      003169                        851 00102$:
                                    852 ;	pwm.c:183: printf("V");
      003169 74 28            [12]  853 	mov	a,#___str_1
      00316B C0 E0            [24]  854 	push	acc
      00316D 74 3F            [12]  855 	mov	a,#(___str_1 >> 8)
      00316F C0 E0            [24]  856 	push	acc
      003171 74 80            [12]  857 	mov	a,#0x80
      003173 C0 E0            [24]  858 	push	acc
      003175 12 34 C3         [24]  859 	lcall	_printf
      003178 15 81            [12]  860 	dec	sp
      00317A 15 81            [12]  861 	dec	sp
      00317C 15 81            [12]  862 	dec	sp
                                    863 ;	pwm.c:184: }
      00317E D0 D0            [24]  864 	pop	psw
      003180 D0 00            [24]  865 	pop	(0+0)
      003182 D0 01            [24]  866 	pop	(0+1)
      003184 D0 02            [24]  867 	pop	(0+2)
      003186 D0 03            [24]  868 	pop	(0+3)
      003188 D0 04            [24]  869 	pop	(0+4)
      00318A D0 05            [24]  870 	pop	(0+5)
      00318C D0 06            [24]  871 	pop	(0+6)
      00318E D0 07            [24]  872 	pop	(0+7)
      003190 D0 83            [24]  873 	pop	dph
      003192 D0 82            [24]  874 	pop	dpl
      003194 D0 F0            [24]  875 	pop	b
      003196 D0 E0            [24]  876 	pop	acc
      003198 D0 20            [24]  877 	pop	bits
      00319A 32               [24]  878 	reti
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'init_pca_sw_timer'
                                    881 ;------------------------------------------------------------
                                    882 ;	pwm.c:189: void init_pca_sw_timer()
                                    883 ;	-----------------------------------------
                                    884 ;	 function init_pca_sw_timer
                                    885 ;	-----------------------------------------
      00319B                        886 _init_pca_sw_timer:
                                    887 ;	pwm.c:191: CCAP1L |= 0xFF; // load the low byte of the capture and compare register 4 with 0xff
      00319B E5 EB            [12]  888 	mov	a,_CCAP1L
      00319D 75 EB FF         [24]  889 	mov	_CCAP1L,#0xff
                                    890 ;	pwm.c:192: CCAP1H |= 0x50; // load the high byte of the capture and compare register 4 with 0x50
      0031A0 43 FB 50         [24]  891 	orl	_CCAP1H,#0x50
                                    892 ;	pwm.c:194: CCON |= CCON_CR_BIT;
      0031A3 43 D8 40         [24]  893 	orl	_CCON,#0x40
                                    894 ;	pwm.c:196: CMOD |=CMOD_ECF_BIT; //Enable PCA Counter flow interrupt ,if set it enables the CF bit in CCON to generate an interrupt
      0031A6 43 D9 01         [24]  895 	orl	_CMOD,#0x01
                                    896 ;	pwm.c:198: CMOD |= CMOD_CPS0_BIT ;
      0031A9 43 D9 02         [24]  897 	orl	_CMOD,#0x02
                                    898 ;	pwm.c:199: CMOD &= ~(CMOD_CPS1_BIT);
      0031AC 53 D9 FB         [24]  899 	anl	_CMOD,#0xfb
                                    900 ;	pwm.c:200: CH = 0x00;
      0031AF 75 F9 00         [24]  901 	mov	_CH,#0x00
                                    902 ;	pwm.c:201: CL = 0x00;
      0031B2 75 E9 00         [24]  903 	mov	_CL,#0x00
                                    904 ;	pwm.c:203: IEN0 |= (1<<6);
      0031B5 43 A8 40         [24]  905 	orl	_IEN0,#0x40
                                    906 ;	pwm.c:205: CCAPM1 |= CCAPM1_CCF1_BIT |CCAPM1_MAT_BIT |CCAPM1_ECOM_BIT  ;
      0031B8 43 DB 4A         [24]  907 	orl	_CCAPM1,#0x4a
                                    908 ;	pwm.c:209: EA = 1;              // Enable global interrupts
                                    909 ;	assignBit
      0031BB D2 AF            [12]  910 	setb	_EA
                                    911 ;	pwm.c:210: EC = 1;              // Enable PCA interrupt
                                    912 ;	assignBit
      0031BD D2 AE            [12]  913 	setb	_EC
                                    914 ;	pwm.c:211: CR = 1;              // Start PCA by setting CR bit in CCON
                                    915 ;	assignBit
      0031BF D2 DE            [12]  916 	setb	_CR
                                    917 ;	pwm.c:213: }
      0031C1 22               [24]  918 	ret
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'init_high_speed_mode'
                                    921 ;------------------------------------------------------------
                                    922 ;	pwm.c:217: void init_high_speed_mode(void)
                                    923 ;	-----------------------------------------
                                    924 ;	 function init_high_speed_mode
                                    925 ;	-----------------------------------------
      0031C2                        926 _init_high_speed_mode:
                                    927 ;	pwm.c:221: CMOD |= CMOD_CPS0_BIT ;
      0031C2 43 D9 02         [24]  928 	orl	_CMOD,#0x02
                                    929 ;	pwm.c:222: CMOD &= ~(CMOD_CPS1_BIT);
      0031C5 53 D9 FB         [24]  930 	anl	_CMOD,#0xfb
                                    931 ;	pwm.c:223: CCAP2L = 0xAC;
      0031C8 75 EC AC         [24]  932 	mov	_CCAP2L,#0xac
                                    933 ;	pwm.c:224: CCAP2H = 0xAC;
      0031CB 75 FC AC         [24]  934 	mov	_CCAP2H,#0xac
                                    935 ;	pwm.c:227: CCON |= CCON_CR_BIT;
      0031CE 43 D8 40         [24]  936 	orl	_CCON,#0x40
                                    937 ;	pwm.c:229: CCAPM2 = 0x4C; // Set capture/compare register mode to set toggle, MAT and ECOM register
      0031D1 75 DC 4C         [24]  938 	mov	_CCAPM2,#0x4c
                                    939 ;	pwm.c:230: }
      0031D4 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'stop_high_speed_mode'
                                    943 ;------------------------------------------------------------
                                    944 ;	pwm.c:234: void stop_high_speed_mode(void)
                                    945 ;	-----------------------------------------
                                    946 ;	 function stop_high_speed_mode
                                    947 ;	-----------------------------------------
      0031D5                        948 _stop_high_speed_mode:
                                    949 ;	pwm.c:237: CCAPM0 = 0x00;
      0031D5 75 DA 00         [24]  950 	mov	_CCAPM0,#0x00
                                    951 ;	pwm.c:239: return;
                                    952 ;	pwm.c:240: }
      0031D8 22               [24]  953 	ret
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'main'
                                    956 ;------------------------------------------------------------
                                    957 ;cmd_received              Allocated with name '_main_cmd_received_65537_106'
                                    958 ;------------------------------------------------------------
                                    959 ;	pwm.c:243: void main(void)
                                    960 ;	-----------------------------------------
                                    961 ;	 function main
                                    962 ;	-----------------------------------------
      0031D9                        963 _main:
                                    964 ;	pwm.c:247: printf("--------------------------------------------------------------------------------------------\r\n");
      0031D9 74 2A            [12]  965 	mov	a,#___str_2
      0031DB C0 E0            [24]  966 	push	acc
      0031DD 74 3F            [12]  967 	mov	a,#(___str_2 >> 8)
      0031DF C0 E0            [24]  968 	push	acc
      0031E1 74 80            [12]  969 	mov	a,#0x80
      0031E3 C0 E0            [24]  970 	push	acc
      0031E5 12 34 C3         [24]  971 	lcall	_printf
      0031E8 15 81            [12]  972 	dec	sp
      0031EA 15 81            [12]  973 	dec	sp
      0031EC 15 81            [12]  974 	dec	sp
                                    975 ;	pwm.c:248: printf("                           Welcome to PCA demo  Lab 3 Part3                                 \r\n");
      0031EE 74 89            [12]  976 	mov	a,#___str_3
      0031F0 C0 E0            [24]  977 	push	acc
      0031F2 74 3F            [12]  978 	mov	a,#(___str_3 >> 8)
      0031F4 C0 E0            [24]  979 	push	acc
      0031F6 74 80            [12]  980 	mov	a,#0x80
      0031F8 C0 E0            [24]  981 	push	acc
      0031FA 12 34 C3         [24]  982 	lcall	_printf
      0031FD 15 81            [12]  983 	dec	sp
      0031FF 15 81            [12]  984 	dec	sp
      003201 15 81            [12]  985 	dec	sp
                                    986 ;	pwm.c:249: printf("--------------------------------------------------------------------------------------------\r\n");
      003203 74 2A            [12]  987 	mov	a,#___str_2
      003205 C0 E0            [24]  988 	push	acc
      003207 74 3F            [12]  989 	mov	a,#(___str_2 >> 8)
      003209 C0 E0            [24]  990 	push	acc
      00320B 74 80            [12]  991 	mov	a,#0x80
      00320D C0 E0            [24]  992 	push	acc
      00320F 12 34 C3         [24]  993 	lcall	_printf
      003212 15 81            [12]  994 	dec	sp
      003214 15 81            [12]  995 	dec	sp
      003216 15 81            [12]  996 	dec	sp
                                    997 ;	pwm.c:250: printf("Press A : To Run PWM\r\n");
      003218 74 E8            [12]  998 	mov	a,#___str_4
      00321A C0 E0            [24]  999 	push	acc
      00321C 74 3F            [12] 1000 	mov	a,#(___str_4 >> 8)
      00321E C0 E0            [24] 1001 	push	acc
      003220 74 80            [12] 1002 	mov	a,#0x80
      003222 C0 E0            [24] 1003 	push	acc
      003224 12 34 C3         [24] 1004 	lcall	_printf
      003227 15 81            [12] 1005 	dec	sp
      003229 15 81            [12] 1006 	dec	sp
      00322B 15 81            [12] 1007 	dec	sp
                                   1008 ;	pwm.c:251: printf("Press B : To Stop PWM\r\n");
      00322D 74 FF            [12] 1009 	mov	a,#___str_5
      00322F C0 E0            [24] 1010 	push	acc
      003231 74 3F            [12] 1011 	mov	a,#(___str_5 >> 8)
      003233 C0 E0            [24] 1012 	push	acc
      003235 74 80            [12] 1013 	mov	a,#0x80
      003237 C0 E0            [24] 1014 	push	acc
      003239 12 34 C3         [24] 1015 	lcall	_printf
      00323C 15 81            [12] 1016 	dec	sp
      00323E 15 81            [12] 1017 	dec	sp
      003240 15 81            [12] 1018 	dec	sp
                                   1019 ;	pwm.c:252: printf("Press C : To set Fclk Peripheral to minimum frequency\r\n");
      003242 74 17            [12] 1020 	mov	a,#___str_6
      003244 C0 E0            [24] 1021 	push	acc
      003246 74 40            [12] 1022 	mov	a,#(___str_6 >> 8)
      003248 C0 E0            [24] 1023 	push	acc
      00324A 74 80            [12] 1024 	mov	a,#0x80
      00324C C0 E0            [24] 1025 	push	acc
      00324E 12 34 C3         [24] 1026 	lcall	_printf
      003251 15 81            [12] 1027 	dec	sp
      003253 15 81            [12] 1028 	dec	sp
      003255 15 81            [12] 1029 	dec	sp
                                   1030 ;	pwm.c:253: printf("Press D : To set Fclk Peripheral to maximum frequency\r\n");
      003257 74 4F            [12] 1031 	mov	a,#___str_7
      003259 C0 E0            [24] 1032 	push	acc
      00325B 74 40            [12] 1033 	mov	a,#(___str_7 >> 8)
      00325D C0 E0            [24] 1034 	push	acc
      00325F 74 80            [12] 1035 	mov	a,#0x80
      003261 C0 E0            [24] 1036 	push	acc
      003263 12 34 C3         [24] 1037 	lcall	_printf
      003266 15 81            [12] 1038 	dec	sp
      003268 15 81            [12] 1039 	dec	sp
      00326A 15 81            [12] 1040 	dec	sp
                                   1041 ;	pwm.c:254: printf("Press E : To enter IDLE mode\r\n");
      00326C 74 87            [12] 1042 	mov	a,#___str_8
      00326E C0 E0            [24] 1043 	push	acc
      003270 74 40            [12] 1044 	mov	a,#(___str_8 >> 8)
      003272 C0 E0            [24] 1045 	push	acc
      003274 74 80            [12] 1046 	mov	a,#0x80
      003276 C0 E0            [24] 1047 	push	acc
      003278 12 34 C3         [24] 1048 	lcall	_printf
      00327B 15 81            [12] 1049 	dec	sp
      00327D 15 81            [12] 1050 	dec	sp
      00327F 15 81            [12] 1051 	dec	sp
                                   1052 ;	pwm.c:255: printf("Press F : To enter power down mode\r\n");
      003281 74 A6            [12] 1053 	mov	a,#___str_9
      003283 C0 E0            [24] 1054 	push	acc
      003285 74 40            [12] 1055 	mov	a,#(___str_9 >> 8)
      003287 C0 E0            [24] 1056 	push	acc
      003289 74 80            [12] 1057 	mov	a,#0x80
      00328B C0 E0            [24] 1058 	push	acc
      00328D 12 34 C3         [24] 1059 	lcall	_printf
      003290 15 81            [12] 1060 	dec	sp
      003292 15 81            [12] 1061 	dec	sp
      003294 15 81            [12] 1062 	dec	sp
                                   1063 ;	pwm.c:256: printf("Press G : To activate watchdog timer\r\n");
      003296 74 CB            [12] 1064 	mov	a,#___str_10
      003298 C0 E0            [24] 1065 	push	acc
      00329A 74 40            [12] 1066 	mov	a,#(___str_10 >> 8)
      00329C C0 E0            [24] 1067 	push	acc
      00329E 74 80            [12] 1068 	mov	a,#0x80
      0032A0 C0 E0            [24] 1069 	push	acc
      0032A2 12 34 C3         [24] 1070 	lcall	_printf
      0032A5 15 81            [12] 1071 	dec	sp
      0032A7 15 81            [12] 1072 	dec	sp
      0032A9 15 81            [12] 1073 	dec	sp
                                   1074 ;	pwm.c:257: printf("Press H : To activate High speed mode\r\n");
      0032AB 74 F2            [12] 1075 	mov	a,#___str_11
      0032AD C0 E0            [24] 1076 	push	acc
      0032AF 74 40            [12] 1077 	mov	a,#(___str_11 >> 8)
      0032B1 C0 E0            [24] 1078 	push	acc
      0032B3 74 80            [12] 1079 	mov	a,#0x80
      0032B5 C0 E0            [24] 1080 	push	acc
      0032B7 12 34 C3         [24] 1081 	lcall	_printf
      0032BA 15 81            [12] 1082 	dec	sp
      0032BC 15 81            [12] 1083 	dec	sp
      0032BE 15 81            [12] 1084 	dec	sp
                                   1085 ;	pwm.c:258: printf("Press I : To deactivate High speed mode\r\n");
      0032C0 74 1A            [12] 1086 	mov	a,#___str_12
      0032C2 C0 E0            [24] 1087 	push	acc
      0032C4 74 41            [12] 1088 	mov	a,#(___str_12 >> 8)
      0032C6 C0 E0            [24] 1089 	push	acc
      0032C8 74 80            [12] 1090 	mov	a,#0x80
      0032CA C0 E0            [24] 1091 	push	acc
      0032CC 12 34 C3         [24] 1092 	lcall	_printf
      0032CF 15 81            [12] 1093 	dec	sp
      0032D1 15 81            [12] 1094 	dec	sp
      0032D3 15 81            [12] 1095 	dec	sp
                                   1096 ;	pwm.c:260: init_registers();
      0032D5 12 30 EA         [24] 1097 	lcall	_init_registers
                                   1098 ;	pwm.c:261: set_x2_mode();
      0032D8 12 31 1D         [24] 1099 	lcall	_set_x2_mode
                                   1100 ;	pwm.c:266: while (1)
      0032DB                       1101 00113$:
                                   1102 ;	pwm.c:268: printf("\r\n Enter the command:");
      0032DB 74 44            [12] 1103 	mov	a,#___str_13
      0032DD C0 E0            [24] 1104 	push	acc
      0032DF 74 41            [12] 1105 	mov	a,#(___str_13 >> 8)
      0032E1 C0 E0            [24] 1106 	push	acc
      0032E3 74 80            [12] 1107 	mov	a,#0x80
      0032E5 C0 E0            [24] 1108 	push	acc
      0032E7 12 34 C3         [24] 1109 	lcall	_printf
      0032EA 15 81            [12] 1110 	dec	sp
      0032EC 15 81            [12] 1111 	dec	sp
      0032EE 15 81            [12] 1112 	dec	sp
                                   1113 ;	pwm.c:269: cmd_received= getchar();
      0032F0 12 30 BC         [24] 1114 	lcall	_getchar
      0032F3 AE 82            [24] 1115 	mov	r6,dpl
                                   1116 ;	pwm.c:270: printf("%c\r\n",cmd_received);
      0032F5 EE               [12] 1117 	mov	a,r6
      0032F6 FD               [12] 1118 	mov	r5,a
      0032F7 33               [12] 1119 	rlc	a
      0032F8 95 E0            [12] 1120 	subb	a,acc
      0032FA FF               [12] 1121 	mov	r7,a
      0032FB C0 06            [24] 1122 	push	ar6
      0032FD C0 05            [24] 1123 	push	ar5
      0032FF C0 07            [24] 1124 	push	ar7
      003301 74 5A            [12] 1125 	mov	a,#___str_14
      003303 C0 E0            [24] 1126 	push	acc
      003305 74 41            [12] 1127 	mov	a,#(___str_14 >> 8)
      003307 C0 E0            [24] 1128 	push	acc
      003309 74 80            [12] 1129 	mov	a,#0x80
      00330B C0 E0            [24] 1130 	push	acc
      00330D 12 34 C3         [24] 1131 	lcall	_printf
      003310 E5 81            [12] 1132 	mov	a,sp
      003312 24 FB            [12] 1133 	add	a,#0xfb
      003314 F5 81            [12] 1134 	mov	sp,a
      003316 D0 06            [24] 1135 	pop	ar6
                                   1136 ;	pwm.c:271: switch (cmd_received)
      003318 C3               [12] 1137 	clr	c
      003319 EE               [12] 1138 	mov	a,r6
      00331A 64 80            [12] 1139 	xrl	a,#0x80
      00331C 94 C1            [12] 1140 	subb	a,#0xc1
      00331E 50 03            [24] 1141 	jnc	00129$
      003320 02 34 5D         [24] 1142 	ljmp	00110$
      003323                       1143 00129$:
      003323 C3               [12] 1144 	clr	c
      003324 74 C9            [12] 1145 	mov	a,#(0x49 ^ 0x80)
      003326 8E F0            [24] 1146 	mov	b,r6
      003328 63 F0 80         [24] 1147 	xrl	b,#0x80
      00332B 95 F0            [12] 1148 	subb	a,b
      00332D 50 03            [24] 1149 	jnc	00130$
      00332F 02 34 5D         [24] 1150 	ljmp	00110$
      003332                       1151 00130$:
      003332 EE               [12] 1152 	mov	a,r6
      003333 24 BF            [12] 1153 	add	a,#0xbf
      003335 FE               [12] 1154 	mov	r6,a
      003336 24 0A            [12] 1155 	add	a,#(00131$-3-.)
      003338 83               [24] 1156 	movc	a,@a+pc
      003339 F5 82            [12] 1157 	mov	dpl,a
      00333B EE               [12] 1158 	mov	a,r6
      00333C 24 0D            [12] 1159 	add	a,#(00132$-3-.)
      00333E 83               [24] 1160 	movc	a,@a+pc
      00333F F5 83            [12] 1161 	mov	dph,a
      003341 E4               [12] 1162 	clr	a
      003342 73               [24] 1163 	jmp	@a+dptr
      003343                       1164 00131$:
      003343 55                    1165 	.db	00101$
      003344 70                    1166 	.db	00102$
      003345 8B                    1167 	.db	00103$
      003346 A6                    1168 	.db	00104$
      003347 C1                    1169 	.db	00105$
      003348 F4                    1170 	.db	00106$
      003349 0F                    1171 	.db	00107$
      00334A 2A                    1172 	.db	00108$
      00334B 45                    1173 	.db	00109$
      00334C                       1174 00132$:
      00334C 33                    1175 	.db	00101$>>8
      00334D 33                    1176 	.db	00102$>>8
      00334E 33                    1177 	.db	00103$>>8
      00334F 33                    1178 	.db	00104$>>8
      003350 33                    1179 	.db	00105$>>8
      003351 33                    1180 	.db	00106$>>8
      003352 34                    1181 	.db	00107$>>8
      003353 34                    1182 	.db	00108$>>8
      003354 34                    1183 	.db	00109$>>8
                                   1184 ;	pwm.c:273: case 'A':
      003355                       1185 00101$:
                                   1186 ;	pwm.c:274: PWM_start();
      003355 12 30 CA         [24] 1187 	lcall	_PWM_start
                                   1188 ;	pwm.c:275: printf("Started PWM \r\n");
      003358 74 5F            [12] 1189 	mov	a,#___str_15
      00335A C0 E0            [24] 1190 	push	acc
      00335C 74 41            [12] 1191 	mov	a,#(___str_15 >> 8)
      00335E C0 E0            [24] 1192 	push	acc
      003360 74 80            [12] 1193 	mov	a,#0x80
      003362 C0 E0            [24] 1194 	push	acc
      003364 12 34 C3         [24] 1195 	lcall	_printf
      003367 15 81            [12] 1196 	dec	sp
      003369 15 81            [12] 1197 	dec	sp
      00336B 15 81            [12] 1198 	dec	sp
                                   1199 ;	pwm.c:276: break;
      00336D 02 32 DB         [24] 1200 	ljmp	00113$
                                   1201 ;	pwm.c:277: case 'B':
      003370                       1202 00102$:
                                   1203 ;	pwm.c:278: PWM_stop();
      003370 12 30 E3         [24] 1204 	lcall	_PWM_stop
                                   1205 ;	pwm.c:279: printf("Stopped PWM\r\n");
      003373 74 6E            [12] 1206 	mov	a,#___str_16
      003375 C0 E0            [24] 1207 	push	acc
      003377 74 41            [12] 1208 	mov	a,#(___str_16 >> 8)
      003379 C0 E0            [24] 1209 	push	acc
      00337B 74 80            [12] 1210 	mov	a,#0x80
      00337D C0 E0            [24] 1211 	push	acc
      00337F 12 34 C3         [24] 1212 	lcall	_printf
      003382 15 81            [12] 1213 	dec	sp
      003384 15 81            [12] 1214 	dec	sp
      003386 15 81            [12] 1215 	dec	sp
                                   1216 ;	pwm.c:280: break;
      003388 02 32 DB         [24] 1217 	ljmp	00113$
                                   1218 ;	pwm.c:281: case 'C':
      00338B                       1219 00103$:
                                   1220 ;	pwm.c:282: set_fclk_to_min();
      00338B 12 30 FB         [24] 1221 	lcall	_set_fclk_to_min
                                   1222 ;	pwm.c:283: printf("Fclk peripheral is set to minimum frequency\r\n");
      00338E 74 7C            [12] 1223 	mov	a,#___str_17
      003390 C0 E0            [24] 1224 	push	acc
      003392 74 41            [12] 1225 	mov	a,#(___str_17 >> 8)
      003394 C0 E0            [24] 1226 	push	acc
      003396 74 80            [12] 1227 	mov	a,#0x80
      003398 C0 E0            [24] 1228 	push	acc
      00339A 12 34 C3         [24] 1229 	lcall	_printf
      00339D 15 81            [12] 1230 	dec	sp
      00339F 15 81            [12] 1231 	dec	sp
      0033A1 15 81            [12] 1232 	dec	sp
                                   1233 ;	pwm.c:284: break;
      0033A3 02 32 DB         [24] 1234 	ljmp	00113$
                                   1235 ;	pwm.c:285: case 'D':
      0033A6                       1236 00104$:
                                   1237 ;	pwm.c:286: set_fclk_to_max();
      0033A6 12 30 F7         [24] 1238 	lcall	_set_fclk_to_max
                                   1239 ;	pwm.c:287: printf("Fclk peripheral is set to maximum frequency\r\n");
      0033A9 74 AA            [12] 1240 	mov	a,#___str_18
      0033AB C0 E0            [24] 1241 	push	acc
      0033AD 74 41            [12] 1242 	mov	a,#(___str_18 >> 8)
      0033AF C0 E0            [24] 1243 	push	acc
      0033B1 74 80            [12] 1244 	mov	a,#0x80
      0033B3 C0 E0            [24] 1245 	push	acc
      0033B5 12 34 C3         [24] 1246 	lcall	_printf
      0033B8 15 81            [12] 1247 	dec	sp
      0033BA 15 81            [12] 1248 	dec	sp
      0033BC 15 81            [12] 1249 	dec	sp
                                   1250 ;	pwm.c:288: break;
      0033BE 02 32 DB         [24] 1251 	ljmp	00113$
                                   1252 ;	pwm.c:289: case 'E':
      0033C1                       1253 00105$:
                                   1254 ;	pwm.c:290: printf("Enabling INT0. To exit IDLE mode connect INT0 line to GND\r\n");
      0033C1 74 D8            [12] 1255 	mov	a,#___str_19
      0033C3 C0 E0            [24] 1256 	push	acc
      0033C5 74 41            [12] 1257 	mov	a,#(___str_19 >> 8)
      0033C7 C0 E0            [24] 1258 	push	acc
      0033C9 74 80            [12] 1259 	mov	a,#0x80
      0033CB C0 E0            [24] 1260 	push	acc
      0033CD 12 34 C3         [24] 1261 	lcall	_printf
      0033D0 15 81            [12] 1262 	dec	sp
      0033D2 15 81            [12] 1263 	dec	sp
      0033D4 15 81            [12] 1264 	dec	sp
                                   1265 ;	pwm.c:291: enable_interrupt0();
      0033D6 12 31 16         [24] 1266 	lcall	_enable_interrupt0
                                   1267 ;	pwm.c:292: printf("Entering IDLE mode\r\n");
      0033D9 74 14            [12] 1268 	mov	a,#___str_20
      0033DB C0 E0            [24] 1269 	push	acc
      0033DD 74 42            [12] 1270 	mov	a,#(___str_20 >> 8)
      0033DF C0 E0            [24] 1271 	push	acc
      0033E1 74 80            [12] 1272 	mov	a,#0x80
      0033E3 C0 E0            [24] 1273 	push	acc
      0033E5 12 34 C3         [24] 1274 	lcall	_printf
      0033E8 15 81            [12] 1275 	dec	sp
      0033EA 15 81            [12] 1276 	dec	sp
      0033EC 15 81            [12] 1277 	dec	sp
                                   1278 ;	pwm.c:293: enter_idle_mode();
      0033EE 12 30 FF         [24] 1279 	lcall	_enter_idle_mode
                                   1280 ;	pwm.c:294: break;
      0033F1 02 32 DB         [24] 1281 	ljmp	00113$
                                   1282 ;	pwm.c:295: case 'F':
      0033F4                       1283 00106$:
                                   1284 ;	pwm.c:296: printf("Entering power down mode\r\n");
      0033F4 74 29            [12] 1285 	mov	a,#___str_21
      0033F6 C0 E0            [24] 1286 	push	acc
      0033F8 74 42            [12] 1287 	mov	a,#(___str_21 >> 8)
      0033FA C0 E0            [24] 1288 	push	acc
      0033FC 74 80            [12] 1289 	mov	a,#0x80
      0033FE C0 E0            [24] 1290 	push	acc
      003400 12 34 C3         [24] 1291 	lcall	_printf
      003403 15 81            [12] 1292 	dec	sp
      003405 15 81            [12] 1293 	dec	sp
      003407 15 81            [12] 1294 	dec	sp
                                   1295 ;	pwm.c:297: enter_power_down_mode();
      003409 12 31 03         [24] 1296 	lcall	_enter_power_down_mode
                                   1297 ;	pwm.c:298: break;
      00340C 02 32 DB         [24] 1298 	ljmp	00113$
                                   1299 ;	pwm.c:299: case 'G':
      00340F                       1300 00107$:
                                   1301 ;	pwm.c:300: printf("Activating watchdog\r\n");
      00340F 74 44            [12] 1302 	mov	a,#___str_22
      003411 C0 E0            [24] 1303 	push	acc
      003413 74 42            [12] 1304 	mov	a,#(___str_22 >> 8)
      003415 C0 E0            [24] 1305 	push	acc
      003417 74 80            [12] 1306 	mov	a,#0x80
      003419 C0 E0            [24] 1307 	push	acc
      00341B 12 34 C3         [24] 1308 	lcall	_printf
      00341E 15 81            [12] 1309 	dec	sp
      003420 15 81            [12] 1310 	dec	sp
      003422 15 81            [12] 1311 	dec	sp
                                   1312 ;	pwm.c:301: init_watchdog();
      003424 12 31 07         [24] 1313 	lcall	_init_watchdog
                                   1314 ;	pwm.c:302: break;
      003427 02 32 DB         [24] 1315 	ljmp	00113$
                                   1316 ;	pwm.c:303: case 'H':
      00342A                       1317 00108$:
                                   1318 ;	pwm.c:304: printf("Activating High speed mode");
      00342A 74 5A            [12] 1319 	mov	a,#___str_23
      00342C C0 E0            [24] 1320 	push	acc
      00342E 74 42            [12] 1321 	mov	a,#(___str_23 >> 8)
      003430 C0 E0            [24] 1322 	push	acc
      003432 74 80            [12] 1323 	mov	a,#0x80
      003434 C0 E0            [24] 1324 	push	acc
      003436 12 34 C3         [24] 1325 	lcall	_printf
      003439 15 81            [12] 1326 	dec	sp
      00343B 15 81            [12] 1327 	dec	sp
      00343D 15 81            [12] 1328 	dec	sp
                                   1329 ;	pwm.c:305: init_high_speed_mode();
      00343F 12 31 C2         [24] 1330 	lcall	_init_high_speed_mode
                                   1331 ;	pwm.c:306: break;
      003442 02 32 DB         [24] 1332 	ljmp	00113$
                                   1333 ;	pwm.c:307: case 'I':
      003445                       1334 00109$:
                                   1335 ;	pwm.c:308: printf("Deactivating High speed mode");
      003445 74 75            [12] 1336 	mov	a,#___str_24
      003447 C0 E0            [24] 1337 	push	acc
      003449 74 42            [12] 1338 	mov	a,#(___str_24 >> 8)
      00344B C0 E0            [24] 1339 	push	acc
      00344D 74 80            [12] 1340 	mov	a,#0x80
      00344F C0 E0            [24] 1341 	push	acc
      003451 12 34 C3         [24] 1342 	lcall	_printf
      003454 15 81            [12] 1343 	dec	sp
      003456 15 81            [12] 1344 	dec	sp
      003458 15 81            [12] 1345 	dec	sp
                                   1346 ;	pwm.c:309: stop_high_speed_mode();
      00345A 12 31 D5         [24] 1347 	lcall	_stop_high_speed_mode
                                   1348 ;	pwm.c:310: default:
      00345D                       1349 00110$:
                                   1350 ;	pwm.c:311: printf("Invalid input\r\n");
      00345D 74 92            [12] 1351 	mov	a,#___str_25
      00345F C0 E0            [24] 1352 	push	acc
      003461 74 42            [12] 1353 	mov	a,#(___str_25 >> 8)
      003463 C0 E0            [24] 1354 	push	acc
      003465 74 80            [12] 1355 	mov	a,#0x80
      003467 C0 E0            [24] 1356 	push	acc
      003469 12 34 C3         [24] 1357 	lcall	_printf
      00346C 15 81            [12] 1358 	dec	sp
      00346E 15 81            [12] 1359 	dec	sp
      003470 15 81            [12] 1360 	dec	sp
                                   1361 ;	pwm.c:313: }
                                   1362 ;	pwm.c:315: }
      003472 02 32 DB         [24] 1363 	ljmp	00113$
                                   1364 	.area CSEG    (CODE)
                                   1365 	.area CONST   (CODE)
                                   1366 	.area CONST   (CODE)
      003F25                       1367 ___str_0:
      003F25 57 52                 1368 	.ascii "WR"
      003F27 00                    1369 	.db 0x00
                                   1370 	.area CSEG    (CODE)
                                   1371 	.area CONST   (CODE)
      003F28                       1372 ___str_1:
      003F28 56                    1373 	.ascii "V"
      003F29 00                    1374 	.db 0x00
                                   1375 	.area CSEG    (CODE)
                                   1376 	.area CONST   (CODE)
      003F2A                       1377 ___str_2:
      003F2A 2D 2D 2D 2D 2D 2D 2D  1378 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      003F66 2D 2D 2D 2D 2D 2D 2D  1379 	.ascii "--------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      003F86 0D                    1380 	.db 0x0d
      003F87 0A                    1381 	.db 0x0a
      003F88 00                    1382 	.db 0x00
                                   1383 	.area CSEG    (CODE)
                                   1384 	.area CONST   (CODE)
      003F89                       1385 ___str_3:
      003F89 20 20 20 20 20 20 20  1386 	.ascii "                           Welcome to PCA demo  Lab 3 Part3 "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 57
             65 6C 63 6F 6D 65 20
             74 6F 20 50 43 41 20
             64 65 6D 6F 20 20 4C
             61 62 20 33 20 50 61
             72 74 33 20
      003FC5 20 20 20 20 20 20 20  1387 	.ascii "                                "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003FE5 0D                    1388 	.db 0x0d
      003FE6 0A                    1389 	.db 0x0a
      003FE7 00                    1390 	.db 0x00
                                   1391 	.area CSEG    (CODE)
                                   1392 	.area CONST   (CODE)
      003FE8                       1393 ___str_4:
      003FE8 50 72 65 73 73 20 41  1394 	.ascii "Press A : To Run PWM"
             20 3A 20 54 6F 20 52
             75 6E 20 50 57 4D
      003FFC 0D                    1395 	.db 0x0d
      003FFD 0A                    1396 	.db 0x0a
      003FFE 00                    1397 	.db 0x00
                                   1398 	.area CSEG    (CODE)
                                   1399 	.area CONST   (CODE)
      003FFF                       1400 ___str_5:
      003FFF 50 72 65 73 73 20 42  1401 	.ascii "Press B : To Stop PWM"
             20 3A 20 54 6F 20 53
             74 6F 70 20 50 57 4D
      004014 0D                    1402 	.db 0x0d
      004015 0A                    1403 	.db 0x0a
      004016 00                    1404 	.db 0x00
                                   1405 	.area CSEG    (CODE)
                                   1406 	.area CONST   (CODE)
      004017                       1407 ___str_6:
      004017 50 72 65 73 73 20 43  1408 	.ascii "Press C : To set Fclk Peripheral to minimum frequency"
             20 3A 20 54 6F 20 73
             65 74 20 46 63 6C 6B
             20 50 65 72 69 70 68
             65 72 61 6C 20 74 6F
             20 6D 69 6E 69 6D 75
             6D 20 66 72 65 71 75
             65 6E 63 79
      00404C 0D                    1409 	.db 0x0d
      00404D 0A                    1410 	.db 0x0a
      00404E 00                    1411 	.db 0x00
                                   1412 	.area CSEG    (CODE)
                                   1413 	.area CONST   (CODE)
      00404F                       1414 ___str_7:
      00404F 50 72 65 73 73 20 44  1415 	.ascii "Press D : To set Fclk Peripheral to maximum frequency"
             20 3A 20 54 6F 20 73
             65 74 20 46 63 6C 6B
             20 50 65 72 69 70 68
             65 72 61 6C 20 74 6F
             20 6D 61 78 69 6D 75
             6D 20 66 72 65 71 75
             65 6E 63 79
      004084 0D                    1416 	.db 0x0d
      004085 0A                    1417 	.db 0x0a
      004086 00                    1418 	.db 0x00
                                   1419 	.area CSEG    (CODE)
                                   1420 	.area CONST   (CODE)
      004087                       1421 ___str_8:
      004087 50 72 65 73 73 20 45  1422 	.ascii "Press E : To enter IDLE mode"
             20 3A 20 54 6F 20 65
             6E 74 65 72 20 49 44
             4C 45 20 6D 6F 64 65
      0040A3 0D                    1423 	.db 0x0d
      0040A4 0A                    1424 	.db 0x0a
      0040A5 00                    1425 	.db 0x00
                                   1426 	.area CSEG    (CODE)
                                   1427 	.area CONST   (CODE)
      0040A6                       1428 ___str_9:
      0040A6 50 72 65 73 73 20 46  1429 	.ascii "Press F : To enter power down mode"
             20 3A 20 54 6F 20 65
             6E 74 65 72 20 70 6F
             77 65 72 20 64 6F 77
             6E 20 6D 6F 64 65
      0040C8 0D                    1430 	.db 0x0d
      0040C9 0A                    1431 	.db 0x0a
      0040CA 00                    1432 	.db 0x00
                                   1433 	.area CSEG    (CODE)
                                   1434 	.area CONST   (CODE)
      0040CB                       1435 ___str_10:
      0040CB 50 72 65 73 73 20 47  1436 	.ascii "Press G : To activate watchdog timer"
             20 3A 20 54 6F 20 61
             63 74 69 76 61 74 65
             20 77 61 74 63 68 64
             6F 67 20 74 69 6D 65
             72
      0040EF 0D                    1437 	.db 0x0d
      0040F0 0A                    1438 	.db 0x0a
      0040F1 00                    1439 	.db 0x00
                                   1440 	.area CSEG    (CODE)
                                   1441 	.area CONST   (CODE)
      0040F2                       1442 ___str_11:
      0040F2 50 72 65 73 73 20 48  1443 	.ascii "Press H : To activate High speed mode"
             20 3A 20 54 6F 20 61
             63 74 69 76 61 74 65
             20 48 69 67 68 20 73
             70 65 65 64 20 6D 6F
             64 65
      004117 0D                    1444 	.db 0x0d
      004118 0A                    1445 	.db 0x0a
      004119 00                    1446 	.db 0x00
                                   1447 	.area CSEG    (CODE)
                                   1448 	.area CONST   (CODE)
      00411A                       1449 ___str_12:
      00411A 50 72 65 73 73 20 49  1450 	.ascii "Press I : To deactivate High speed mode"
             20 3A 20 54 6F 20 64
             65 61 63 74 69 76 61
             74 65 20 48 69 67 68
             20 73 70 65 65 64 20
             6D 6F 64 65
      004141 0D                    1451 	.db 0x0d
      004142 0A                    1452 	.db 0x0a
      004143 00                    1453 	.db 0x00
                                   1454 	.area CSEG    (CODE)
                                   1455 	.area CONST   (CODE)
      004144                       1456 ___str_13:
      004144 0D                    1457 	.db 0x0d
      004145 0A                    1458 	.db 0x0a
      004146 20 45 6E 74 65 72 20  1459 	.ascii " Enter the command:"
             74 68 65 20 63 6F 6D
             6D 61 6E 64 3A
      004159 00                    1460 	.db 0x00
                                   1461 	.area CSEG    (CODE)
                                   1462 	.area CONST   (CODE)
      00415A                       1463 ___str_14:
      00415A 25 63                 1464 	.ascii "%c"
      00415C 0D                    1465 	.db 0x0d
      00415D 0A                    1466 	.db 0x0a
      00415E 00                    1467 	.db 0x00
                                   1468 	.area CSEG    (CODE)
                                   1469 	.area CONST   (CODE)
      00415F                       1470 ___str_15:
      00415F 53 74 61 72 74 65 64  1471 	.ascii "Started PWM "
             20 50 57 4D 20
      00416B 0D                    1472 	.db 0x0d
      00416C 0A                    1473 	.db 0x0a
      00416D 00                    1474 	.db 0x00
                                   1475 	.area CSEG    (CODE)
                                   1476 	.area CONST   (CODE)
      00416E                       1477 ___str_16:
      00416E 53 74 6F 70 70 65 64  1478 	.ascii "Stopped PWM"
             20 50 57 4D
      004179 0D                    1479 	.db 0x0d
      00417A 0A                    1480 	.db 0x0a
      00417B 00                    1481 	.db 0x00
                                   1482 	.area CSEG    (CODE)
                                   1483 	.area CONST   (CODE)
      00417C                       1484 ___str_17:
      00417C 46 63 6C 6B 20 70 65  1485 	.ascii "Fclk peripheral is set to minimum frequency"
             72 69 70 68 65 72 61
             6C 20 69 73 20 73 65
             74 20 74 6F 20 6D 69
             6E 69 6D 75 6D 20 66
             72 65 71 75 65 6E 63
             79
      0041A7 0D                    1486 	.db 0x0d
      0041A8 0A                    1487 	.db 0x0a
      0041A9 00                    1488 	.db 0x00
                                   1489 	.area CSEG    (CODE)
                                   1490 	.area CONST   (CODE)
      0041AA                       1491 ___str_18:
      0041AA 46 63 6C 6B 20 70 65  1492 	.ascii "Fclk peripheral is set to maximum frequency"
             72 69 70 68 65 72 61
             6C 20 69 73 20 73 65
             74 20 74 6F 20 6D 61
             78 69 6D 75 6D 20 66
             72 65 71 75 65 6E 63
             79
      0041D5 0D                    1493 	.db 0x0d
      0041D6 0A                    1494 	.db 0x0a
      0041D7 00                    1495 	.db 0x00
                                   1496 	.area CSEG    (CODE)
                                   1497 	.area CONST   (CODE)
      0041D8                       1498 ___str_19:
      0041D8 45 6E 61 62 6C 69 6E  1499 	.ascii "Enabling INT0. To exit IDLE mode connect INT0 line to GND"
             67 20 49 4E 54 30 2E
             20 54 6F 20 65 78 69
             74 20 49 44 4C 45 20
             6D 6F 64 65 20 63 6F
             6E 6E 65 63 74 20 49
             4E 54 30 20 6C 69 6E
             65 20 74 6F 20 47 4E
             44
      004211 0D                    1500 	.db 0x0d
      004212 0A                    1501 	.db 0x0a
      004213 00                    1502 	.db 0x00
                                   1503 	.area CSEG    (CODE)
                                   1504 	.area CONST   (CODE)
      004214                       1505 ___str_20:
      004214 45 6E 74 65 72 69 6E  1506 	.ascii "Entering IDLE mode"
             67 20 49 44 4C 45 20
             6D 6F 64 65
      004226 0D                    1507 	.db 0x0d
      004227 0A                    1508 	.db 0x0a
      004228 00                    1509 	.db 0x00
                                   1510 	.area CSEG    (CODE)
                                   1511 	.area CONST   (CODE)
      004229                       1512 ___str_21:
      004229 45 6E 74 65 72 69 6E  1513 	.ascii "Entering power down mode"
             67 20 70 6F 77 65 72
             20 64 6F 77 6E 20 6D
             6F 64 65
      004241 0D                    1514 	.db 0x0d
      004242 0A                    1515 	.db 0x0a
      004243 00                    1516 	.db 0x00
                                   1517 	.area CSEG    (CODE)
                                   1518 	.area CONST   (CODE)
      004244                       1519 ___str_22:
      004244 41 63 74 69 76 61 74  1520 	.ascii "Activating watchdog"
             69 6E 67 20 77 61 74
             63 68 64 6F 67
      004257 0D                    1521 	.db 0x0d
      004258 0A                    1522 	.db 0x0a
      004259 00                    1523 	.db 0x00
                                   1524 	.area CSEG    (CODE)
                                   1525 	.area CONST   (CODE)
      00425A                       1526 ___str_23:
      00425A 41 63 74 69 76 61 74  1527 	.ascii "Activating High speed mode"
             69 6E 67 20 48 69 67
             68 20 73 70 65 65 64
             20 6D 6F 64 65
      004274 00                    1528 	.db 0x00
                                   1529 	.area CSEG    (CODE)
                                   1530 	.area CONST   (CODE)
      004275                       1531 ___str_24:
      004275 44 65 61 63 74 69 76  1532 	.ascii "Deactivating High speed mode"
             61 74 69 6E 67 20 48
             69 67 68 20 73 70 65
             65 64 20 6D 6F 64 65
      004291 00                    1533 	.db 0x00
                                   1534 	.area CSEG    (CODE)
                                   1535 	.area CONST   (CODE)
      004292                       1536 ___str_25:
      004292 49 6E 76 61 6C 69 64  1537 	.ascii "Invalid input"
             20 69 6E 70 75 74
      00429F 0D                    1538 	.db 0x0d
      0042A0 0A                    1539 	.db 0x0a
      0042A1 00                    1540 	.db 0x00
                                   1541 	.area CSEG    (CODE)
                                   1542 	.area XINIT   (CODE)
                                   1543 	.area CABS    (ABS,CODE)
