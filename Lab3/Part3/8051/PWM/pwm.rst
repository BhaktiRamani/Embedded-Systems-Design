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
                                     14 	.globl _printf
                                     15 	.globl _TF1
                                     16 	.globl _TR1
                                     17 	.globl _TF0
                                     18 	.globl _TR0
                                     19 	.globl _IE1
                                     20 	.globl _IT1
                                     21 	.globl _IE0
                                     22 	.globl _IT0
                                     23 	.globl _SM0
                                     24 	.globl _SM1
                                     25 	.globl _SM2
                                     26 	.globl _REN
                                     27 	.globl _TB8
                                     28 	.globl _RB8
                                     29 	.globl _TI
                                     30 	.globl _RI
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD0
                                     46 	.globl _TXD
                                     47 	.globl _RXD0
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _P0_7
                                     74 	.globl _P0_6
                                     75 	.globl _P0_5
                                     76 	.globl _P0_4
                                     77 	.globl _P0_3
                                     78 	.globl _P0_2
                                     79 	.globl _P0_1
                                     80 	.globl _P0_0
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _EA
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _BREG_F7
                                     93 	.globl _BREG_F6
                                     94 	.globl _BREG_F5
                                     95 	.globl _BREG_F4
                                     96 	.globl _BREG_F3
                                     97 	.globl _BREG_F2
                                     98 	.globl _BREG_F1
                                     99 	.globl _BREG_F0
                                    100 	.globl _P5_7
                                    101 	.globl _P5_6
                                    102 	.globl _P5_5
                                    103 	.globl _P5_4
                                    104 	.globl _P5_3
                                    105 	.globl _P5_2
                                    106 	.globl _P5_1
                                    107 	.globl _P5_0
                                    108 	.globl _P4_7
                                    109 	.globl _P4_6
                                    110 	.globl _P4_5
                                    111 	.globl _P4_4
                                    112 	.globl _P4_3
                                    113 	.globl _P4_2
                                    114 	.globl _P4_1
                                    115 	.globl _P4_0
                                    116 	.globl _PX0L
                                    117 	.globl _PT0L
                                    118 	.globl _PX1L
                                    119 	.globl _PT1L
                                    120 	.globl _PSL
                                    121 	.globl _PT2L
                                    122 	.globl _PPCL
                                    123 	.globl _EC
                                    124 	.globl _CCF0
                                    125 	.globl _CCF1
                                    126 	.globl _CCF2
                                    127 	.globl _CCF3
                                    128 	.globl _CCF4
                                    129 	.globl _CR
                                    130 	.globl _CF
                                    131 	.globl _TF2
                                    132 	.globl _EXF2
                                    133 	.globl _RCLK
                                    134 	.globl _TCLK
                                    135 	.globl _EXEN2
                                    136 	.globl _TR2
                                    137 	.globl _C_T2
                                    138 	.globl _CP_RL2
                                    139 	.globl _T2CON_7
                                    140 	.globl _T2CON_6
                                    141 	.globl _T2CON_5
                                    142 	.globl _T2CON_4
                                    143 	.globl _T2CON_3
                                    144 	.globl _T2CON_2
                                    145 	.globl _T2CON_1
                                    146 	.globl _T2CON_0
                                    147 	.globl _PT2
                                    148 	.globl _ET2
                                    149 	.globl _TMOD
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TCON
                                    155 	.globl _SP
                                    156 	.globl _SCON
                                    157 	.globl _SBUF0
                                    158 	.globl _SBUF
                                    159 	.globl _PSW
                                    160 	.globl _PCON
                                    161 	.globl _P3
                                    162 	.globl _P2
                                    163 	.globl _P1
                                    164 	.globl _P0
                                    165 	.globl _IP
                                    166 	.globl _IE
                                    167 	.globl _DP0L
                                    168 	.globl _DPL
                                    169 	.globl _DP0H
                                    170 	.globl _DPH
                                    171 	.globl _B
                                    172 	.globl _ACC
                                    173 	.globl _EECON
                                    174 	.globl _KBF
                                    175 	.globl _KBE
                                    176 	.globl _KBLS
                                    177 	.globl _BRL
                                    178 	.globl _BDRCON
                                    179 	.globl _T2MOD
                                    180 	.globl _SPDAT
                                    181 	.globl _SPSTA
                                    182 	.globl _SPCON
                                    183 	.globl _SADEN
                                    184 	.globl _SADDR
                                    185 	.globl _WDTPRG
                                    186 	.globl _WDTRST
                                    187 	.globl _P5
                                    188 	.globl _P4
                                    189 	.globl _IPH1
                                    190 	.globl _IPL1
                                    191 	.globl _IPH0
                                    192 	.globl _IPL0
                                    193 	.globl _IEN1
                                    194 	.globl _IEN0
                                    195 	.globl _CMOD
                                    196 	.globl _CL
                                    197 	.globl _CH
                                    198 	.globl _CCON
                                    199 	.globl _CCAPM4
                                    200 	.globl _CCAPM3
                                    201 	.globl _CCAPM2
                                    202 	.globl _CCAPM1
                                    203 	.globl _CCAPM0
                                    204 	.globl _CCAP4L
                                    205 	.globl _CCAP3L
                                    206 	.globl _CCAP2L
                                    207 	.globl _CCAP1L
                                    208 	.globl _CCAP0L
                                    209 	.globl _CCAP4H
                                    210 	.globl _CCAP3H
                                    211 	.globl _CCAP2H
                                    212 	.globl _CCAP1H
                                    213 	.globl _CCAP0H
                                    214 	.globl _CKCON1
                                    215 	.globl _CKCON0
                                    216 	.globl _CKRL
                                    217 	.globl _AUXR1
                                    218 	.globl _AUXR
                                    219 	.globl _TH2
                                    220 	.globl _TL2
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _T2CON
                                    224 	.globl _idle_mode
                                    225 	.globl _power_down_mode
                                    226 	.globl _freq_max
                                    227 	.globl _freq_min
                                    228 	.globl _pwm_init
                                    229 	.globl _pwm_start
                                    230 	.globl _pwm_stop
                                    231 	.globl _HS0_mode_on
                                    232 	.globl _HS0_mode_off
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
                                    458 ; internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area DSEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable items in internal ram 
                                    463 ;--------------------------------------------------------
                                    464 ;--------------------------------------------------------
                                    465 ; Stack segment in internal ram 
                                    466 ;--------------------------------------------------------
                                    467 	.area	SSEG
      000014                        468 __start__stack:
      000014                        469 	.ds	1
                                    470 
                                    471 ;--------------------------------------------------------
                                    472 ; indirectly addressable internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area ISEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
      000400                        492 _putchar_charToSend_65536_74:
      000400                        493 	.ds 2
                                    494 ;--------------------------------------------------------
                                    495 ; absolute external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XABS    (ABS,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; external initialized ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XISEG   (XDATA)
                                    502 	.area HOME    (CODE)
                                    503 	.area GSINIT0 (CODE)
                                    504 	.area GSINIT1 (CODE)
                                    505 	.area GSINIT2 (CODE)
                                    506 	.area GSINIT3 (CODE)
                                    507 	.area GSINIT4 (CODE)
                                    508 	.area GSINIT5 (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area CSEG    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; interrupt vector 
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
      003000                        516 __interrupt_vect:
      003000 02 30 06         [24]  517 	ljmp	__sdcc_gsinit_startup
                                    518 ;--------------------------------------------------------
                                    519 ; global & static initialisations
                                    520 ;--------------------------------------------------------
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.area GSFINAL (CODE)
                                    524 	.area GSINIT  (CODE)
                                    525 	.globl __sdcc_gsinit_startup
                                    526 	.globl __sdcc_program_startup
                                    527 	.globl __start__stack
                                    528 	.globl __mcs51_genXINIT
                                    529 	.globl __mcs51_genXRAMCLEAR
                                    530 	.globl __mcs51_genRAMCLEAR
                                    531 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  532 	ljmp	__sdcc_program_startup
                                    533 ;--------------------------------------------------------
                                    534 ; Home
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
                                    537 	.area HOME    (CODE)
      003003                        538 __sdcc_program_startup:
      003003 02 30 8F         [24]  539 	ljmp	_main
                                    540 ;	return from main will return to caller
                                    541 ;--------------------------------------------------------
                                    542 ; code
                                    543 ;--------------------------------------------------------
                                    544 	.area CSEG    (CODE)
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'putchar'
                                    547 ;------------------------------------------------------------
                                    548 ;charToSend                Allocated with name '_putchar_charToSend_65536_74'
                                    549 ;------------------------------------------------------------
                                    550 ;	pwm.c:21: int putchar(int charToSend) {
                                    551 ;	-----------------------------------------
                                    552 ;	 function putchar
                                    553 ;	-----------------------------------------
      003062                        554 _putchar:
                           000007   555 	ar7 = 0x07
                           000006   556 	ar6 = 0x06
                           000005   557 	ar5 = 0x05
                           000004   558 	ar4 = 0x04
                           000003   559 	ar3 = 0x03
                           000002   560 	ar2 = 0x02
                           000001   561 	ar1 = 0x01
                           000000   562 	ar0 = 0x00
      003062 AF 83            [24]  563 	mov	r7,dph
      003064 E5 82            [12]  564 	mov	a,dpl
      003066 90 04 00         [24]  565 	mov	dptr,#_putchar_charToSend_65536_74
      003069 F0               [24]  566 	movx	@dptr,a
      00306A EF               [12]  567 	mov	a,r7
      00306B A3               [24]  568 	inc	dptr
      00306C F0               [24]  569 	movx	@dptr,a
                                    570 ;	pwm.c:22: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 00         [24]  571 	mov	dptr,#_putchar_charToSend_65536_74
      003070 E0               [24]  572 	movx	a,@dptr
      003071 FE               [12]  573 	mov	r6,a
      003072 A3               [24]  574 	inc	dptr
      003073 E0               [24]  575 	movx	a,@dptr
      003074 FF               [12]  576 	mov	r7,a
      003075 8E 99            [24]  577 	mov	_SBUF,r6
                                    578 ;	pwm.c:23: while (!TI);        // Wait for transmission to complete
      003077                        579 00101$:
                                    580 ;	pwm.c:24: TI = 0;            // Clear transmission interrupt flag
                                    581 ;	assignBit
      003077 10 99 02         [24]  582 	jbc	_TI,00114$
      00307A 80 FB            [24]  583 	sjmp	00101$
      00307C                        584 00114$:
                                    585 ;	pwm.c:25: return charToSend;
      00307C 8E 82            [24]  586 	mov	dpl,r6
      00307E 8F 83            [24]  587 	mov	dph,r7
                                    588 ;	pwm.c:26: }
      003080 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'getchar'
                                    592 ;------------------------------------------------------------
                                    593 ;	pwm.c:32: int getchar(void) 
                                    594 ;	-----------------------------------------
                                    595 ;	 function getchar
                                    596 ;	-----------------------------------------
      003081                        597 _getchar:
                                    598 ;	pwm.c:34: while (!RI);        // Wait for reception to complete
      003081                        599 00101$:
                                    600 ;	pwm.c:35: RI = 0;            // Clear reception interrupt flag
                                    601 ;	assignBit
      003081 10 98 02         [24]  602 	jbc	_RI,00114$
      003084 80 FB            [24]  603 	sjmp	00101$
      003086                        604 00114$:
                                    605 ;	pwm.c:36: return SBUF;       // Return received character
      003086 AE 99            [24]  606 	mov	r6,_SBUF
      003088 7F 00            [12]  607 	mov	r7,#0x00
      00308A 8E 82            [24]  608 	mov	dpl,r6
      00308C 8F 83            [24]  609 	mov	dph,r7
                                    610 ;	pwm.c:37: }
      00308E 22               [24]  611 	ret
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'main'
                                    614 ;------------------------------------------------------------
                                    615 ;command                   Allocated with name '_main_command_131072_80'
                                    616 ;------------------------------------------------------------
                                    617 ;	pwm.c:39: void main(void)
                                    618 ;	-----------------------------------------
                                    619 ;	 function main
                                    620 ;	-----------------------------------------
      00308F                        621 _main:
                                    622 ;	pwm.c:42: pwm_init();
      00308F 12 32 5D         [24]  623 	lcall	_pwm_init
                                    624 ;	pwm.c:44: printf("PCA DEMO\n\r");
      003092 74 99            [12]  625 	mov	a,#___str_0
      003094 C0 E0            [24]  626 	push	acc
      003096 74 3D            [12]  627 	mov	a,#(___str_0 >> 8)
      003098 C0 E0            [24]  628 	push	acc
      00309A 74 80            [12]  629 	mov	a,#0x80
      00309C C0 E0            [24]  630 	push	acc
      00309E 12 33 37         [24]  631 	lcall	_printf
      0030A1 15 81            [12]  632 	dec	sp
      0030A3 15 81            [12]  633 	dec	sp
      0030A5 15 81            [12]  634 	dec	sp
                                    635 ;	pwm.c:45: printf("COMMANDS :\n\r");
      0030A7 74 A4            [12]  636 	mov	a,#___str_1
      0030A9 C0 E0            [24]  637 	push	acc
      0030AB 74 3D            [12]  638 	mov	a,#(___str_1 >> 8)
      0030AD C0 E0            [24]  639 	push	acc
      0030AF 74 80            [12]  640 	mov	a,#0x80
      0030B1 C0 E0            [24]  641 	push	acc
      0030B3 12 33 37         [24]  642 	lcall	_printf
      0030B6 15 81            [12]  643 	dec	sp
      0030B8 15 81            [12]  644 	dec	sp
      0030BA 15 81            [12]  645 	dec	sp
                                    646 ;	pwm.c:46: printf(" R - RUN PWM\n\r");
      0030BC 74 B1            [12]  647 	mov	a,#___str_2
      0030BE C0 E0            [24]  648 	push	acc
      0030C0 74 3D            [12]  649 	mov	a,#(___str_2 >> 8)
      0030C2 C0 E0            [24]  650 	push	acc
      0030C4 74 80            [12]  651 	mov	a,#0x80
      0030C6 C0 E0            [24]  652 	push	acc
      0030C8 12 33 37         [24]  653 	lcall	_printf
      0030CB 15 81            [12]  654 	dec	sp
      0030CD 15 81            [12]  655 	dec	sp
      0030CF 15 81            [12]  656 	dec	sp
                                    657 ;	pwm.c:47: printf(" S - STOP PWM\n\r");
      0030D1 74 C0            [12]  658 	mov	a,#___str_3
      0030D3 C0 E0            [24]  659 	push	acc
      0030D5 74 3D            [12]  660 	mov	a,#(___str_3 >> 8)
      0030D7 C0 E0            [24]  661 	push	acc
      0030D9 74 80            [12]  662 	mov	a,#0x80
      0030DB C0 E0            [24]  663 	push	acc
      0030DD 12 33 37         [24]  664 	lcall	_printf
      0030E0 15 81            [12]  665 	dec	sp
      0030E2 15 81            [12]  666 	dec	sp
      0030E4 15 81            [12]  667 	dec	sp
                                    668 ;	pwm.c:48: printf(" F - MAX FREQUENCY MODE\n\r");
      0030E6 74 D0            [12]  669 	mov	a,#___str_4
      0030E8 C0 E0            [24]  670 	push	acc
      0030EA 74 3D            [12]  671 	mov	a,#(___str_4 >> 8)
      0030EC C0 E0            [24]  672 	push	acc
      0030EE 74 80            [12]  673 	mov	a,#0x80
      0030F0 C0 E0            [24]  674 	push	acc
      0030F2 12 33 37         [24]  675 	lcall	_printf
      0030F5 15 81            [12]  676 	dec	sp
      0030F7 15 81            [12]  677 	dec	sp
      0030F9 15 81            [12]  678 	dec	sp
                                    679 ;	pwm.c:49: printf(" M - MIN FREQUENCY MODE\n\r");
      0030FB 74 EA            [12]  680 	mov	a,#___str_5
      0030FD C0 E0            [24]  681 	push	acc
      0030FF 74 3D            [12]  682 	mov	a,#(___str_5 >> 8)
      003101 C0 E0            [24]  683 	push	acc
      003103 74 80            [12]  684 	mov	a,#0x80
      003105 C0 E0            [24]  685 	push	acc
      003107 12 33 37         [24]  686 	lcall	_printf
      00310A 15 81            [12]  687 	dec	sp
      00310C 15 81            [12]  688 	dec	sp
      00310E 15 81            [12]  689 	dec	sp
                                    690 ;	pwm.c:50: printf(" I - IDLE MODE\n\r");
      003110 74 04            [12]  691 	mov	a,#___str_6
      003112 C0 E0            [24]  692 	push	acc
      003114 74 3E            [12]  693 	mov	a,#(___str_6 >> 8)
      003116 C0 E0            [24]  694 	push	acc
      003118 74 80            [12]  695 	mov	a,#0x80
      00311A C0 E0            [24]  696 	push	acc
      00311C 12 33 37         [24]  697 	lcall	_printf
      00311F 15 81            [12]  698 	dec	sp
      003121 15 81            [12]  699 	dec	sp
      003123 15 81            [12]  700 	dec	sp
                                    701 ;	pwm.c:51: printf(" P - POWER DOWN MODE\n\r");
      003125 74 15            [12]  702 	mov	a,#___str_7
      003127 C0 E0            [24]  703 	push	acc
      003129 74 3E            [12]  704 	mov	a,#(___str_7 >> 8)
      00312B C0 E0            [24]  705 	push	acc
      00312D 74 80            [12]  706 	mov	a,#0x80
      00312F C0 E0            [24]  707 	push	acc
      003131 12 33 37         [24]  708 	lcall	_printf
      003134 15 81            [12]  709 	dec	sp
      003136 15 81            [12]  710 	dec	sp
      003138 15 81            [12]  711 	dec	sp
                                    712 ;	pwm.c:52: printf(" H - HIGH SPEED MODE ON\n\r");
      00313A 74 2C            [12]  713 	mov	a,#___str_8
      00313C C0 E0            [24]  714 	push	acc
      00313E 74 3E            [12]  715 	mov	a,#(___str_8 >> 8)
      003140 C0 E0            [24]  716 	push	acc
      003142 74 80            [12]  717 	mov	a,#0x80
      003144 C0 E0            [24]  718 	push	acc
      003146 12 33 37         [24]  719 	lcall	_printf
      003149 15 81            [12]  720 	dec	sp
      00314B 15 81            [12]  721 	dec	sp
      00314D 15 81            [12]  722 	dec	sp
                                    723 ;	pwm.c:53: printf(" Q - HIGH SPEED MODE OFF\n\r");
      00314F 74 46            [12]  724 	mov	a,#___str_9
      003151 C0 E0            [24]  725 	push	acc
      003153 74 3E            [12]  726 	mov	a,#(___str_9 >> 8)
      003155 C0 E0            [24]  727 	push	acc
      003157 74 80            [12]  728 	mov	a,#0x80
      003159 C0 E0            [24]  729 	push	acc
      00315B 12 33 37         [24]  730 	lcall	_printf
      00315E 15 81            [12]  731 	dec	sp
      003160 15 81            [12]  732 	dec	sp
      003162 15 81            [12]  733 	dec	sp
                                    734 ;	pwm.c:55: TCON |= 0x01;
      003164 43 88 01         [24]  735 	orl	_TCON,#0x01
                                    736 ;	pwm.c:56: IE |= 0x81;
      003167 43 A8 81         [24]  737 	orl	_IE,#0x81
                                    738 ;	pwm.c:58: while(1)
      00316A                        739 00112$:
                                    740 ;	pwm.c:61: command = getchar();    // Wait for input
      00316A 12 30 81         [24]  741 	lcall	_getchar
      00316D AE 82            [24]  742 	mov	r6,dpl
                                    743 ;	pwm.c:64: putchar(command);
      00316F 8E 05            [24]  744 	mov	ar5,r6
      003171 7F 00            [12]  745 	mov	r7,#0x00
      003173 8D 82            [24]  746 	mov	dpl,r5
      003175 8F 83            [24]  747 	mov	dph,r7
      003177 C0 06            [24]  748 	push	ar6
      003179 12 30 62         [24]  749 	lcall	_putchar
                                    750 ;	pwm.c:65: printf("\n\r");        // New line after command
      00317C 74 61            [12]  751 	mov	a,#___str_10
      00317E C0 E0            [24]  752 	push	acc
      003180 74 3E            [12]  753 	mov	a,#(___str_10 >> 8)
      003182 C0 E0            [24]  754 	push	acc
      003184 74 80            [12]  755 	mov	a,#0x80
      003186 C0 E0            [24]  756 	push	acc
      003188 12 33 37         [24]  757 	lcall	_printf
      00318B 15 81            [12]  758 	dec	sp
      00318D 15 81            [12]  759 	dec	sp
      00318F 15 81            [12]  760 	dec	sp
      003191 D0 06            [24]  761 	pop	ar6
                                    762 ;	pwm.c:67: switch(command)
      003193 BE 46 02         [24]  763 	cjne	r6,#0x46,00152$
      003196 80 2D            [24]  764 	sjmp	00103$
      003198                        765 00152$:
      003198 BE 48 02         [24]  766 	cjne	r6,#0x48,00153$
      00319B 80 3C            [24]  767 	sjmp	00107$
      00319D                        768 00153$:
      00319D BE 49 02         [24]  769 	cjne	r6,#0x49,00154$
      0031A0 80 2D            [24]  770 	sjmp	00105$
      0031A2                        771 00154$:
      0031A2 BE 4D 02         [24]  772 	cjne	r6,#0x4d,00155$
      0031A5 80 23            [24]  773 	sjmp	00104$
      0031A7                        774 00155$:
      0031A7 BE 50 02         [24]  775 	cjne	r6,#0x50,00156$
      0031AA 80 28            [24]  776 	sjmp	00106$
      0031AC                        777 00156$:
      0031AC BE 51 02         [24]  778 	cjne	r6,#0x51,00157$
      0031AF 80 2D            [24]  779 	sjmp	00108$
      0031B1                        780 00157$:
      0031B1 BE 52 02         [24]  781 	cjne	r6,#0x52,00158$
      0031B4 80 05            [24]  782 	sjmp	00101$
      0031B6                        783 00158$:
                                    784 ;	pwm.c:69: case 'R':
      0031B6 BE 53 28         [24]  785 	cjne	r6,#0x53,00109$
      0031B9 80 05            [24]  786 	sjmp	00102$
      0031BB                        787 00101$:
                                    788 ;	pwm.c:70: pwm_start();
      0031BB 12 32 73         [24]  789 	lcall	_pwm_start
                                    790 ;	pwm.c:71: break;
                                    791 ;	pwm.c:72: case 'S':
      0031BE 80 AA            [24]  792 	sjmp	00112$
      0031C0                        793 00102$:
                                    794 ;	pwm.c:73: pwm_stop();
      0031C0 12 32 8C         [24]  795 	lcall	_pwm_stop
                                    796 ;	pwm.c:74: break;
                                    797 ;	pwm.c:75: case 'F':
      0031C3 80 A5            [24]  798 	sjmp	00112$
      0031C5                        799 00103$:
                                    800 ;	pwm.c:76: freq_max();
      0031C5 12 32 2B         [24]  801 	lcall	_freq_max
                                    802 ;	pwm.c:77: break;
                                    803 ;	pwm.c:78: case 'M':
      0031C8 80 A0            [24]  804 	sjmp	00112$
      0031CA                        805 00104$:
                                    806 ;	pwm.c:79: freq_min();
      0031CA 12 32 44         [24]  807 	lcall	_freq_min
                                    808 ;	pwm.c:80: break;
                                    809 ;	pwm.c:81: case 'I':
      0031CD 80 9B            [24]  810 	sjmp	00112$
      0031CF                        811 00105$:
                                    812 ;	pwm.c:82: idle_mode();
      0031CF 12 31 F9         [24]  813 	lcall	_idle_mode
                                    814 ;	pwm.c:83: break;
                                    815 ;	pwm.c:84: case 'P':
      0031D2 80 96            [24]  816 	sjmp	00112$
      0031D4                        817 00106$:
                                    818 ;	pwm.c:85: power_down_mode();
      0031D4 12 32 12         [24]  819 	lcall	_power_down_mode
                                    820 ;	pwm.c:86: break;
                                    821 ;	pwm.c:87: case 'H':
      0031D7 80 91            [24]  822 	sjmp	00112$
      0031D9                        823 00107$:
                                    824 ;	pwm.c:88: HS0_mode_on();
      0031D9 12 32 A5         [24]  825 	lcall	_HS0_mode_on
                                    826 ;	pwm.c:89: break;
                                    827 ;	pwm.c:90: case 'Q':
      0031DC 80 8C            [24]  828 	sjmp	00112$
      0031DE                        829 00108$:
                                    830 ;	pwm.c:91: HS0_mode_off();
      0031DE 12 32 D0         [24]  831 	lcall	_HS0_mode_off
                                    832 ;	pwm.c:92: default:
      0031E1                        833 00109$:
                                    834 ;	pwm.c:93: printf("Invalid Command\n\r");
      0031E1 74 64            [12]  835 	mov	a,#___str_11
      0031E3 C0 E0            [24]  836 	push	acc
      0031E5 74 3E            [12]  837 	mov	a,#(___str_11 >> 8)
      0031E7 C0 E0            [24]  838 	push	acc
      0031E9 74 80            [12]  839 	mov	a,#0x80
      0031EB C0 E0            [24]  840 	push	acc
      0031ED 12 33 37         [24]  841 	lcall	_printf
      0031F0 15 81            [12]  842 	dec	sp
      0031F2 15 81            [12]  843 	dec	sp
      0031F4 15 81            [12]  844 	dec	sp
                                    845 ;	pwm.c:94: }
                                    846 ;	pwm.c:96: }
      0031F6 02 31 6A         [24]  847 	ljmp	00112$
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'idle_mode'
                                    850 ;------------------------------------------------------------
                                    851 ;	pwm.c:105: void idle_mode()
                                    852 ;	-----------------------------------------
                                    853 ;	 function idle_mode
                                    854 ;	-----------------------------------------
      0031F9                        855 _idle_mode:
                                    856 ;	pwm.c:107: printf("IDLE MODE\n\r");
      0031F9 74 76            [12]  857 	mov	a,#___str_12
      0031FB C0 E0            [24]  858 	push	acc
      0031FD 74 3E            [12]  859 	mov	a,#(___str_12 >> 8)
      0031FF C0 E0            [24]  860 	push	acc
      003201 74 80            [12]  861 	mov	a,#0x80
      003203 C0 E0            [24]  862 	push	acc
      003205 12 33 37         [24]  863 	lcall	_printf
      003208 15 81            [12]  864 	dec	sp
      00320A 15 81            [12]  865 	dec	sp
      00320C 15 81            [12]  866 	dec	sp
                                    867 ;	pwm.c:108: PCON |= 0x01;
      00320E 43 87 01         [24]  868 	orl	_PCON,#0x01
                                    869 ;	pwm.c:109: }
      003211 22               [24]  870 	ret
                                    871 ;------------------------------------------------------------
                                    872 ;Allocation info for local variables in function 'power_down_mode'
                                    873 ;------------------------------------------------------------
                                    874 ;	pwm.c:111: void power_down_mode()
                                    875 ;	-----------------------------------------
                                    876 ;	 function power_down_mode
                                    877 ;	-----------------------------------------
      003212                        878 _power_down_mode:
                                    879 ;	pwm.c:113: printf("POWER DOWN MODE\n\r");
      003212 74 82            [12]  880 	mov	a,#___str_13
      003214 C0 E0            [24]  881 	push	acc
      003216 74 3E            [12]  882 	mov	a,#(___str_13 >> 8)
      003218 C0 E0            [24]  883 	push	acc
      00321A 74 80            [12]  884 	mov	a,#0x80
      00321C C0 E0            [24]  885 	push	acc
      00321E 12 33 37         [24]  886 	lcall	_printf
      003221 15 81            [12]  887 	dec	sp
      003223 15 81            [12]  888 	dec	sp
      003225 15 81            [12]  889 	dec	sp
                                    890 ;	pwm.c:114: PCON |= 0x02;
      003227 43 87 02         [24]  891 	orl	_PCON,#0x02
                                    892 ;	pwm.c:115: }
      00322A 22               [24]  893 	ret
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'freq_max'
                                    896 ;------------------------------------------------------------
                                    897 ;	pwm.c:116: void freq_max()
                                    898 ;	-----------------------------------------
                                    899 ;	 function freq_max
                                    900 ;	-----------------------------------------
      00322B                        901 _freq_max:
                                    902 ;	pwm.c:118: printf("MAXIMUM FREQUENCY\n\r");
      00322B 74 94            [12]  903 	mov	a,#___str_14
      00322D C0 E0            [24]  904 	push	acc
      00322F 74 3E            [12]  905 	mov	a,#(___str_14 >> 8)
      003231 C0 E0            [24]  906 	push	acc
      003233 74 80            [12]  907 	mov	a,#0x80
      003235 C0 E0            [24]  908 	push	acc
      003237 12 33 37         [24]  909 	lcall	_printf
      00323A 15 81            [12]  910 	dec	sp
      00323C 15 81            [12]  911 	dec	sp
      00323E 15 81            [12]  912 	dec	sp
                                    913 ;	pwm.c:119: CKRL = 0xFF;
      003240 75 97 FF         [24]  914 	mov	_CKRL,#0xff
                                    915 ;	pwm.c:120: }
      003243 22               [24]  916 	ret
                                    917 ;------------------------------------------------------------
                                    918 ;Allocation info for local variables in function 'freq_min'
                                    919 ;------------------------------------------------------------
                                    920 ;	pwm.c:122: void freq_min()
                                    921 ;	-----------------------------------------
                                    922 ;	 function freq_min
                                    923 ;	-----------------------------------------
      003244                        924 _freq_min:
                                    925 ;	pwm.c:124: printf("MINIMUM FREQUENCY\n\r");
      003244 74 A8            [12]  926 	mov	a,#___str_15
      003246 C0 E0            [24]  927 	push	acc
      003248 74 3E            [12]  928 	mov	a,#(___str_15 >> 8)
      00324A C0 E0            [24]  929 	push	acc
      00324C 74 80            [12]  930 	mov	a,#0x80
      00324E C0 E0            [24]  931 	push	acc
      003250 12 33 37         [24]  932 	lcall	_printf
      003253 15 81            [12]  933 	dec	sp
      003255 15 81            [12]  934 	dec	sp
      003257 15 81            [12]  935 	dec	sp
                                    936 ;	pwm.c:125: CKRL = 0x01;
      003259 75 97 01         [24]  937 	mov	_CKRL,#0x01
                                    938 ;	pwm.c:126: }
      00325C 22               [24]  939 	ret
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'pwm_init'
                                    942 ;------------------------------------------------------------
                                    943 ;	pwm.c:128: void pwm_init()
                                    944 ;	-----------------------------------------
                                    945 ;	 function pwm_init
                                    946 ;	-----------------------------------------
      00325D                        947 _pwm_init:
                                    948 ;	pwm.c:130: CCAPM0 = 0x00;
      00325D 75 DA 00         [24]  949 	mov	_CCAPM0,#0x00
                                    950 ;	pwm.c:131: CMOD = 0X82;
      003260 75 D9 82         [24]  951 	mov	_CMOD,#0x82
                                    952 ;	pwm.c:132: CL = 0X00;
      003263 75 E9 00         [24]  953 	mov	_CL,#0x00
                                    954 ;	pwm.c:133: CH = 0X00;
      003266 75 F9 00         [24]  955 	mov	_CH,#0x00
                                    956 ;	pwm.c:135: CCAP0L = 0XAC;
      003269 75 EA AC         [24]  957 	mov	_CCAP0L,#0xac
                                    958 ;	pwm.c:136: CCAP0H = 0XAC;
      00326C 75 FA AC         [24]  959 	mov	_CCAP0H,#0xac
                                    960 ;	pwm.c:137: CCAPM0 = 0X42;
      00326F 75 DA 42         [24]  961 	mov	_CCAPM0,#0x42
                                    962 ;	pwm.c:138: }
      003272 22               [24]  963 	ret
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'pwm_start'
                                    966 ;------------------------------------------------------------
                                    967 ;	pwm.c:140: void pwm_start()
                                    968 ;	-----------------------------------------
                                    969 ;	 function pwm_start
                                    970 ;	-----------------------------------------
      003273                        971 _pwm_start:
                                    972 ;	pwm.c:142: printf("PWM START\n\r");
      003273 74 BC            [12]  973 	mov	a,#___str_16
      003275 C0 E0            [24]  974 	push	acc
      003277 74 3E            [12]  975 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  976 	push	acc
      00327B 74 80            [12]  977 	mov	a,#0x80
      00327D C0 E0            [24]  978 	push	acc
      00327F 12 33 37         [24]  979 	lcall	_printf
      003282 15 81            [12]  980 	dec	sp
      003284 15 81            [12]  981 	dec	sp
      003286 15 81            [12]  982 	dec	sp
                                    983 ;	pwm.c:143: CCON = 0x40;
      003288 75 D8 40         [24]  984 	mov	_CCON,#0x40
                                    985 ;	pwm.c:144: }
      00328B 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'pwm_stop'
                                    989 ;------------------------------------------------------------
                                    990 ;	pwm.c:146: void pwm_stop()
                                    991 ;	-----------------------------------------
                                    992 ;	 function pwm_stop
                                    993 ;	-----------------------------------------
      00328C                        994 _pwm_stop:
                                    995 ;	pwm.c:148: printf("PWM STOP\n\r");
      00328C 74 C8            [12]  996 	mov	a,#___str_17
      00328E C0 E0            [24]  997 	push	acc
      003290 74 3E            [12]  998 	mov	a,#(___str_17 >> 8)
      003292 C0 E0            [24]  999 	push	acc
      003294 74 80            [12] 1000 	mov	a,#0x80
      003296 C0 E0            [24] 1001 	push	acc
      003298 12 33 37         [24] 1002 	lcall	_printf
      00329B 15 81            [12] 1003 	dec	sp
      00329D 15 81            [12] 1004 	dec	sp
      00329F 15 81            [12] 1005 	dec	sp
                                   1006 ;	pwm.c:149: CCON = 0x00;
      0032A1 75 D8 00         [24] 1007 	mov	_CCON,#0x00
                                   1008 ;	pwm.c:150: }
      0032A4 22               [24] 1009 	ret
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'HS0_mode_on'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	pwm.c:152: void HS0_mode_on(void)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function HS0_mode_on
                                   1016 ;	-----------------------------------------
      0032A5                       1017 _HS0_mode_on:
                                   1018 ;	pwm.c:154: printf("HIGH SPEED MODE ON\n\r");
      0032A5 74 D3            [12] 1019 	mov	a,#___str_18
      0032A7 C0 E0            [24] 1020 	push	acc
      0032A9 74 3E            [12] 1021 	mov	a,#(___str_18 >> 8)
      0032AB C0 E0            [24] 1022 	push	acc
      0032AD 74 80            [12] 1023 	mov	a,#0x80
      0032AF C0 E0            [24] 1024 	push	acc
      0032B1 12 33 37         [24] 1025 	lcall	_printf
      0032B4 15 81            [12] 1026 	dec	sp
      0032B6 15 81            [12] 1027 	dec	sp
      0032B8 15 81            [12] 1028 	dec	sp
                                   1029 ;	pwm.c:155: CCON |= 0x4C;
      0032BA 43 D8 4C         [24] 1030 	orl	_CCON,#0x4c
                                   1031 ;	pwm.c:156: CMOD |= 0x02;     // Fclk/2 freq set for PCA mode
      0032BD 43 D9 02         [24] 1032 	orl	_CMOD,#0x02
                                   1033 ;	pwm.c:157: CCAPM0 = 0x4C;   // Compare mode + HSO, no interrupt
      0032C0 75 DA 4C         [24] 1034 	mov	_CCAPM0,#0x4c
                                   1035 ;	pwm.c:158: CL = 0x00;       // Clear PCA counter
      0032C3 75 E9 00         [24] 1036 	mov	_CL,#0x00
                                   1037 ;	pwm.c:159: CH = 0x00;
      0032C6 75 F9 00         [24] 1038 	mov	_CH,#0x00
                                   1039 ;	pwm.c:162: CCAP0L = 0xAC;   // Load compare low byte
      0032C9 75 EA AC         [24] 1040 	mov	_CCAP0L,#0xac
                                   1041 ;	pwm.c:163: CCAP0H = 0xAC;   // Load compare high byte
      0032CC 75 FA AC         [24] 1042 	mov	_CCAP0H,#0xac
                                   1043 ;	pwm.c:164: }
      0032CF 22               [24] 1044 	ret
                                   1045 ;------------------------------------------------------------
                                   1046 ;Allocation info for local variables in function 'HS0_mode_off'
                                   1047 ;------------------------------------------------------------
                                   1048 ;	pwm.c:166: void HS0_mode_off(void)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function HS0_mode_off
                                   1051 ;	-----------------------------------------
      0032D0                       1052 _HS0_mode_off:
                                   1053 ;	pwm.c:168: printf("HIGH SPEED MODE OFF\n\r");
      0032D0 74 E8            [12] 1054 	mov	a,#___str_19
      0032D2 C0 E0            [24] 1055 	push	acc
      0032D4 74 3E            [12] 1056 	mov	a,#(___str_19 >> 8)
      0032D6 C0 E0            [24] 1057 	push	acc
      0032D8 74 80            [12] 1058 	mov	a,#0x80
      0032DA C0 E0            [24] 1059 	push	acc
      0032DC 12 33 37         [24] 1060 	lcall	_printf
      0032DF 15 81            [12] 1061 	dec	sp
      0032E1 15 81            [12] 1062 	dec	sp
      0032E3 15 81            [12] 1063 	dec	sp
                                   1064 ;	pwm.c:169: CCAPM0 = 0x00;
      0032E5 75 DA 00         [24] 1065 	mov	_CCAPM0,#0x00
                                   1066 ;	pwm.c:170: return;
                                   1067 ;	pwm.c:171: }
      0032E8 22               [24] 1068 	ret
                                   1069 	.area CSEG    (CODE)
                                   1070 	.area CONST   (CODE)
                                   1071 	.area CONST   (CODE)
      003D99                       1072 ___str_0:
      003D99 50 43 41 20 44 45 4D  1073 	.ascii "PCA DEMO"
             4F
      003DA1 0A                    1074 	.db 0x0a
      003DA2 0D                    1075 	.db 0x0d
      003DA3 00                    1076 	.db 0x00
                                   1077 	.area CSEG    (CODE)
                                   1078 	.area CONST   (CODE)
      003DA4                       1079 ___str_1:
      003DA4 43 4F 4D 4D 41 4E 44  1080 	.ascii "COMMANDS :"
             53 20 3A
      003DAE 0A                    1081 	.db 0x0a
      003DAF 0D                    1082 	.db 0x0d
      003DB0 00                    1083 	.db 0x00
                                   1084 	.area CSEG    (CODE)
                                   1085 	.area CONST   (CODE)
      003DB1                       1086 ___str_2:
      003DB1 20 52 20 2D 20 52 55  1087 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      003DBD 0A                    1088 	.db 0x0a
      003DBE 0D                    1089 	.db 0x0d
      003DBF 00                    1090 	.db 0x00
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area CONST   (CODE)
      003DC0                       1093 ___str_3:
      003DC0 20 53 20 2D 20 53 54  1094 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      003DCD 0A                    1095 	.db 0x0a
      003DCE 0D                    1096 	.db 0x0d
      003DCF 00                    1097 	.db 0x00
                                   1098 	.area CSEG    (CODE)
                                   1099 	.area CONST   (CODE)
      003DD0                       1100 ___str_4:
      003DD0 20 46 20 2D 20 4D 41  1101 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003DE7 0A                    1102 	.db 0x0a
      003DE8 0D                    1103 	.db 0x0d
      003DE9 00                    1104 	.db 0x00
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area CONST   (CODE)
      003DEA                       1107 ___str_5:
      003DEA 20 4D 20 2D 20 4D 49  1108 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003E01 0A                    1109 	.db 0x0a
      003E02 0D                    1110 	.db 0x0d
      003E03 00                    1111 	.db 0x00
                                   1112 	.area CSEG    (CODE)
                                   1113 	.area CONST   (CODE)
      003E04                       1114 ___str_6:
      003E04 20 49 20 2D 20 49 44  1115 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      003E12 0A                    1116 	.db 0x0a
      003E13 0D                    1117 	.db 0x0d
      003E14 00                    1118 	.db 0x00
                                   1119 	.area CSEG    (CODE)
                                   1120 	.area CONST   (CODE)
      003E15                       1121 ___str_7:
      003E15 20 50 20 2D 20 50 4F  1122 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      003E29 0A                    1123 	.db 0x0a
      003E2A 0D                    1124 	.db 0x0d
      003E2B 00                    1125 	.db 0x00
                                   1126 	.area CSEG    (CODE)
                                   1127 	.area CONST   (CODE)
      003E2C                       1128 ___str_8:
      003E2C 20 48 20 2D 20 48 49  1129 	.ascii " H - HIGH SPEED MODE ON"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 4E
      003E43 0A                    1130 	.db 0x0a
      003E44 0D                    1131 	.db 0x0d
      003E45 00                    1132 	.db 0x00
                                   1133 	.area CSEG    (CODE)
                                   1134 	.area CONST   (CODE)
      003E46                       1135 ___str_9:
      003E46 20 51 20 2D 20 48 49  1136 	.ascii " Q - HIGH SPEED MODE OFF"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 46 46
      003E5E 0A                    1137 	.db 0x0a
      003E5F 0D                    1138 	.db 0x0d
      003E60 00                    1139 	.db 0x00
                                   1140 	.area CSEG    (CODE)
                                   1141 	.area CONST   (CODE)
      003E61                       1142 ___str_10:
      003E61 0A                    1143 	.db 0x0a
      003E62 0D                    1144 	.db 0x0d
      003E63 00                    1145 	.db 0x00
                                   1146 	.area CSEG    (CODE)
                                   1147 	.area CONST   (CODE)
      003E64                       1148 ___str_11:
      003E64 49 6E 76 61 6C 69 64  1149 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      003E73 0A                    1150 	.db 0x0a
      003E74 0D                    1151 	.db 0x0d
      003E75 00                    1152 	.db 0x00
                                   1153 	.area CSEG    (CODE)
                                   1154 	.area CONST   (CODE)
      003E76                       1155 ___str_12:
      003E76 49 44 4C 45 20 4D 4F  1156 	.ascii "IDLE MODE"
             44 45
      003E7F 0A                    1157 	.db 0x0a
      003E80 0D                    1158 	.db 0x0d
      003E81 00                    1159 	.db 0x00
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
      003E82                       1162 ___str_13:
      003E82 50 4F 57 45 52 20 44  1163 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      003E91 0A                    1164 	.db 0x0a
      003E92 0D                    1165 	.db 0x0d
      003E93 00                    1166 	.db 0x00
                                   1167 	.area CSEG    (CODE)
                                   1168 	.area CONST   (CODE)
      003E94                       1169 ___str_14:
      003E94 4D 41 58 49 4D 55 4D  1170 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003EA5 0A                    1171 	.db 0x0a
      003EA6 0D                    1172 	.db 0x0d
      003EA7 00                    1173 	.db 0x00
                                   1174 	.area CSEG    (CODE)
                                   1175 	.area CONST   (CODE)
      003EA8                       1176 ___str_15:
      003EA8 4D 49 4E 49 4D 55 4D  1177 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003EB9 0A                    1178 	.db 0x0a
      003EBA 0D                    1179 	.db 0x0d
      003EBB 00                    1180 	.db 0x00
                                   1181 	.area CSEG    (CODE)
                                   1182 	.area CONST   (CODE)
      003EBC                       1183 ___str_16:
      003EBC 50 57 4D 20 53 54 41  1184 	.ascii "PWM START"
             52 54
      003EC5 0A                    1185 	.db 0x0a
      003EC6 0D                    1186 	.db 0x0d
      003EC7 00                    1187 	.db 0x00
                                   1188 	.area CSEG    (CODE)
                                   1189 	.area CONST   (CODE)
      003EC8                       1190 ___str_17:
      003EC8 50 57 4D 20 53 54 4F  1191 	.ascii "PWM STOP"
             50
      003ED0 0A                    1192 	.db 0x0a
      003ED1 0D                    1193 	.db 0x0d
      003ED2 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area CONST   (CODE)
      003ED3                       1197 ___str_18:
      003ED3 48 49 47 48 20 53 50  1198 	.ascii "HIGH SPEED MODE ON"
             45 45 44 20 4D 4F 44
             45 20 4F 4E
      003EE5 0A                    1199 	.db 0x0a
      003EE6 0D                    1200 	.db 0x0d
      003EE7 00                    1201 	.db 0x00
                                   1202 	.area CSEG    (CODE)
                                   1203 	.area CONST   (CODE)
      003EE8                       1204 ___str_19:
      003EE8 48 49 47 48 20 53 50  1205 	.ascii "HIGH SPEED MODE OFF"
             45 45 44 20 4D 4F 44
             45 20 4F 46 46
      003EFB 0A                    1206 	.db 0x0a
      003EFC 0D                    1207 	.db 0x0d
      003EFD 00                    1208 	.db 0x00
                                   1209 	.area CSEG    (CODE)
                                   1210 	.area XINIT   (CODE)
                                   1211 	.area CABS    (ABS,CODE)
