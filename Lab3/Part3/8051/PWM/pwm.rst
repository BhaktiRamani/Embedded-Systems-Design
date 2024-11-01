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
                                    224 	.globl _set_x2_mode
                                    225 	.globl _idle_mode
                                    226 	.globl _power_down_mode
                                    227 	.globl _freq_max
                                    228 	.globl _freq_min
                                    229 	.globl _pwm_init
                                    230 	.globl _pwm_start
                                    231 	.globl _pwm_stop
                                    232 	.globl _HS0_mode_on
                                    233 	.globl _HS0_mode_off
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                           0000E0   290 _ACC	=	0x00e0
                           0000F0   291 _B	=	0x00f0
                           000083   292 _DPH	=	0x0083
                           000083   293 _DP0H	=	0x0083
                           000082   294 _DPL	=	0x0082
                           000082   295 _DP0L	=	0x0082
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           000080   298 _P0	=	0x0080
                           000090   299 _P1	=	0x0090
                           0000A0   300 _P2	=	0x00a0
                           0000B0   301 _P3	=	0x00b0
                           000087   302 _PCON	=	0x0087
                           0000D0   303 _PSW	=	0x00d0
                           000099   304 _SBUF	=	0x0099
                           000099   305 _SBUF0	=	0x0099
                           000098   306 _SCON	=	0x0098
                           000081   307 _SP	=	0x0081
                           000088   308 _TCON	=	0x0088
                           00008C   309 _TH0	=	0x008c
                           00008D   310 _TH1	=	0x008d
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           000089   313 _TMOD	=	0x0089
                                    314 ;--------------------------------------------------------
                                    315 ; special function bits
                                    316 ;--------------------------------------------------------
                                    317 	.area RSEG    (ABS,DATA)
      000000                        318 	.org 0x0000
                           0000AD   319 _ET2	=	0x00ad
                           0000BD   320 _PT2	=	0x00bd
                           0000C8   321 _T2CON_0	=	0x00c8
                           0000C9   322 _T2CON_1	=	0x00c9
                           0000CA   323 _T2CON_2	=	0x00ca
                           0000CB   324 _T2CON_3	=	0x00cb
                           0000CC   325 _T2CON_4	=	0x00cc
                           0000CD   326 _T2CON_5	=	0x00cd
                           0000CE   327 _T2CON_6	=	0x00ce
                           0000CF   328 _T2CON_7	=	0x00cf
                           0000C8   329 _CP_RL2	=	0x00c8
                           0000C9   330 _C_T2	=	0x00c9
                           0000CA   331 _TR2	=	0x00ca
                           0000CB   332 _EXEN2	=	0x00cb
                           0000CC   333 _TCLK	=	0x00cc
                           0000CD   334 _RCLK	=	0x00cd
                           0000CE   335 _EXF2	=	0x00ce
                           0000CF   336 _TF2	=	0x00cf
                           0000DF   337 _CF	=	0x00df
                           0000DE   338 _CR	=	0x00de
                           0000DC   339 _CCF4	=	0x00dc
                           0000DB   340 _CCF3	=	0x00db
                           0000DA   341 _CCF2	=	0x00da
                           0000D9   342 _CCF1	=	0x00d9
                           0000D8   343 _CCF0	=	0x00d8
                           0000AE   344 _EC	=	0x00ae
                           0000BE   345 _PPCL	=	0x00be
                           0000BD   346 _PT2L	=	0x00bd
                           0000BC   347 _PSL	=	0x00bc
                           0000BB   348 _PT1L	=	0x00bb
                           0000BA   349 _PX1L	=	0x00ba
                           0000B9   350 _PT0L	=	0x00b9
                           0000B8   351 _PX0L	=	0x00b8
                           0000C0   352 _P4_0	=	0x00c0
                           0000C1   353 _P4_1	=	0x00c1
                           0000C2   354 _P4_2	=	0x00c2
                           0000C3   355 _P4_3	=	0x00c3
                           0000C4   356 _P4_4	=	0x00c4
                           0000C5   357 _P4_5	=	0x00c5
                           0000C6   358 _P4_6	=	0x00c6
                           0000C7   359 _P4_7	=	0x00c7
                           0000E8   360 _P5_0	=	0x00e8
                           0000E9   361 _P5_1	=	0x00e9
                           0000EA   362 _P5_2	=	0x00ea
                           0000EB   363 _P5_3	=	0x00eb
                           0000EC   364 _P5_4	=	0x00ec
                           0000ED   365 _P5_5	=	0x00ed
                           0000EE   366 _P5_6	=	0x00ee
                           0000EF   367 _P5_7	=	0x00ef
                           0000F0   368 _BREG_F0	=	0x00f0
                           0000F1   369 _BREG_F1	=	0x00f1
                           0000F2   370 _BREG_F2	=	0x00f2
                           0000F3   371 _BREG_F3	=	0x00f3
                           0000F4   372 _BREG_F4	=	0x00f4
                           0000F5   373 _BREG_F5	=	0x00f5
                           0000F6   374 _BREG_F6	=	0x00f6
                           0000F7   375 _BREG_F7	=	0x00f7
                           0000A8   376 _EX0	=	0x00a8
                           0000A9   377 _ET0	=	0x00a9
                           0000AA   378 _EX1	=	0x00aa
                           0000AB   379 _ET1	=	0x00ab
                           0000AC   380 _ES	=	0x00ac
                           0000AF   381 _EA	=	0x00af
                           0000B8   382 _PX0	=	0x00b8
                           0000B9   383 _PT0	=	0x00b9
                           0000BA   384 _PX1	=	0x00ba
                           0000BB   385 _PT1	=	0x00bb
                           0000BC   386 _PS	=	0x00bc
                           000080   387 _P0_0	=	0x0080
                           000081   388 _P0_1	=	0x0081
                           000082   389 _P0_2	=	0x0082
                           000083   390 _P0_3	=	0x0083
                           000084   391 _P0_4	=	0x0084
                           000085   392 _P0_5	=	0x0085
                           000086   393 _P0_6	=	0x0086
                           000087   394 _P0_7	=	0x0087
                           000090   395 _P1_0	=	0x0090
                           000091   396 _P1_1	=	0x0091
                           000092   397 _P1_2	=	0x0092
                           000093   398 _P1_3	=	0x0093
                           000094   399 _P1_4	=	0x0094
                           000095   400 _P1_5	=	0x0095
                           000096   401 _P1_6	=	0x0096
                           000097   402 _P1_7	=	0x0097
                           0000A0   403 _P2_0	=	0x00a0
                           0000A1   404 _P2_1	=	0x00a1
                           0000A2   405 _P2_2	=	0x00a2
                           0000A3   406 _P2_3	=	0x00a3
                           0000A4   407 _P2_4	=	0x00a4
                           0000A5   408 _P2_5	=	0x00a5
                           0000A6   409 _P2_6	=	0x00a6
                           0000A7   410 _P2_7	=	0x00a7
                           0000B0   411 _P3_0	=	0x00b0
                           0000B1   412 _P3_1	=	0x00b1
                           0000B2   413 _P3_2	=	0x00b2
                           0000B3   414 _P3_3	=	0x00b3
                           0000B4   415 _P3_4	=	0x00b4
                           0000B5   416 _P3_5	=	0x00b5
                           0000B6   417 _P3_6	=	0x00b6
                           0000B7   418 _P3_7	=	0x00b7
                           0000B0   419 _RXD	=	0x00b0
                           0000B0   420 _RXD0	=	0x00b0
                           0000B1   421 _TXD	=	0x00b1
                           0000B1   422 _TXD0	=	0x00b1
                           0000B2   423 _INT0	=	0x00b2
                           0000B3   424 _INT1	=	0x00b3
                           0000B4   425 _T0	=	0x00b4
                           0000B5   426 _T1	=	0x00b5
                           0000B6   427 _WR	=	0x00b6
                           0000B7   428 _RD	=	0x00b7
                           0000D0   429 _P	=	0x00d0
                           0000D1   430 _F1	=	0x00d1
                           0000D2   431 _OV	=	0x00d2
                           0000D3   432 _RS0	=	0x00d3
                           0000D4   433 _RS1	=	0x00d4
                           0000D5   434 _F0	=	0x00d5
                           0000D6   435 _AC	=	0x00d6
                           0000D7   436 _CY	=	0x00d7
                           000098   437 _RI	=	0x0098
                           000099   438 _TI	=	0x0099
                           00009A   439 _RB8	=	0x009a
                           00009B   440 _TB8	=	0x009b
                           00009C   441 _REN	=	0x009c
                           00009D   442 _SM2	=	0x009d
                           00009E   443 _SM1	=	0x009e
                           00009F   444 _SM0	=	0x009f
                           000088   445 _IT0	=	0x0088
                           000089   446 _IE0	=	0x0089
                           00008A   447 _IT1	=	0x008a
                           00008B   448 _IE1	=	0x008b
                           00008C   449 _TR0	=	0x008c
                           00008D   450 _TF0	=	0x008d
                           00008E   451 _TR1	=	0x008e
                           00008F   452 _TF1	=	0x008f
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable register banks
                                    455 ;--------------------------------------------------------
                                    456 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        457 	.ds 8
                                    458 ;--------------------------------------------------------
                                    459 ; internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area DSEG    (DATA)
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable items in internal ram 
                                    464 ;--------------------------------------------------------
                                    465 ;--------------------------------------------------------
                                    466 ; Stack segment in internal ram 
                                    467 ;--------------------------------------------------------
                                    468 	.area	SSEG
      000014                        469 __start__stack:
      000014                        470 	.ds	1
                                    471 
                                    472 ;--------------------------------------------------------
                                    473 ; indirectly addressable internal ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area ISEG    (DATA)
                                    476 ;--------------------------------------------------------
                                    477 ; absolute internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area IABS    (ABS,DATA)
                                    480 	.area IABS    (ABS,DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; bit data
                                    483 ;--------------------------------------------------------
                                    484 	.area BSEG    (BIT)
                                    485 ;--------------------------------------------------------
                                    486 ; paged external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area PSEG    (PAG,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XSEG    (XDATA)
      000400                        493 _putchar_charToSend_65536_75:
      000400                        494 	.ds 2
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; interrupt vector 
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
      003000                        517 __interrupt_vect:
      003000 02 30 06         [24]  518 	ljmp	__sdcc_gsinit_startup
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      003003                        539 __sdcc_program_startup:
      003003 02 30 8F         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;charToSend                Allocated with name '_putchar_charToSend_65536_75'
                                    550 ;------------------------------------------------------------
                                    551 ;	pwm.c:26: int putchar(int charToSend) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      003062                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      003062 AF 83            [24]  564 	mov	r7,dph
      003064 E5 82            [12]  565 	mov	a,dpl
      003066 90 04 00         [24]  566 	mov	dptr,#_putchar_charToSend_65536_75
      003069 F0               [24]  567 	movx	@dptr,a
      00306A EF               [12]  568 	mov	a,r7
      00306B A3               [24]  569 	inc	dptr
      00306C F0               [24]  570 	movx	@dptr,a
                                    571 ;	pwm.c:27: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 00         [24]  572 	mov	dptr,#_putchar_charToSend_65536_75
      003070 E0               [24]  573 	movx	a,@dptr
      003071 FE               [12]  574 	mov	r6,a
      003072 A3               [24]  575 	inc	dptr
      003073 E0               [24]  576 	movx	a,@dptr
      003074 FF               [12]  577 	mov	r7,a
      003075 8E 99            [24]  578 	mov	_SBUF,r6
                                    579 ;	pwm.c:28: while (!TI);        // Wait for transmission to complete
      003077                        580 00101$:
                                    581 ;	pwm.c:29: TI = 0;            // Clear transmission interrupt flag
                                    582 ;	assignBit
      003077 10 99 02         [24]  583 	jbc	_TI,00114$
      00307A 80 FB            [24]  584 	sjmp	00101$
      00307C                        585 00114$:
                                    586 ;	pwm.c:30: return charToSend;
      00307C 8E 82            [24]  587 	mov	dpl,r6
      00307E 8F 83            [24]  588 	mov	dph,r7
                                    589 ;	pwm.c:31: }
      003080 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'getchar'
                                    593 ;------------------------------------------------------------
                                    594 ;	pwm.c:37: int getchar(void) 
                                    595 ;	-----------------------------------------
                                    596 ;	 function getchar
                                    597 ;	-----------------------------------------
      003081                        598 _getchar:
                                    599 ;	pwm.c:39: while (!RI);        // Wait for reception to complete
      003081                        600 00101$:
                                    601 ;	pwm.c:40: RI = 0;            // Clear reception interrupt flag
                                    602 ;	assignBit
      003081 10 98 02         [24]  603 	jbc	_RI,00114$
      003084 80 FB            [24]  604 	sjmp	00101$
      003086                        605 00114$:
                                    606 ;	pwm.c:41: return SBUF;       // Return received character
      003086 AE 99            [24]  607 	mov	r6,_SBUF
      003088 7F 00            [12]  608 	mov	r7,#0x00
      00308A 8E 82            [24]  609 	mov	dpl,r6
      00308C 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	pwm.c:42: }
      00308E 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'main'
                                    615 ;------------------------------------------------------------
                                    616 ;command                   Allocated with name '_main_command_131072_81'
                                    617 ;------------------------------------------------------------
                                    618 ;	pwm.c:44: void main(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function main
                                    621 ;	-----------------------------------------
      00308F                        622 _main:
                                    623 ;	pwm.c:47: pwm_init();
      00308F 12 32 94         [24]  624 	lcall	_pwm_init
                                    625 ;	pwm.c:49: printf("PCA DEMO\n\r");
      003092 74 D0            [12]  626 	mov	a,#___str_0
      003094 C0 E0            [24]  627 	push	acc
      003096 74 3D            [12]  628 	mov	a,#(___str_0 >> 8)
      003098 C0 E0            [24]  629 	push	acc
      00309A 74 80            [12]  630 	mov	a,#0x80
      00309C C0 E0            [24]  631 	push	acc
      00309E 12 33 6E         [24]  632 	lcall	_printf
      0030A1 15 81            [12]  633 	dec	sp
      0030A3 15 81            [12]  634 	dec	sp
      0030A5 15 81            [12]  635 	dec	sp
                                    636 ;	pwm.c:50: set_x2_mode();
      0030A7 12 32 26         [24]  637 	lcall	_set_x2_mode
                                    638 ;	pwm.c:51: printf("in X2 MODE\n\r");
      0030AA 74 DB            [12]  639 	mov	a,#___str_1
      0030AC C0 E0            [24]  640 	push	acc
      0030AE 74 3D            [12]  641 	mov	a,#(___str_1 >> 8)
      0030B0 C0 E0            [24]  642 	push	acc
      0030B2 74 80            [12]  643 	mov	a,#0x80
      0030B4 C0 E0            [24]  644 	push	acc
      0030B6 12 33 6E         [24]  645 	lcall	_printf
      0030B9 15 81            [12]  646 	dec	sp
      0030BB 15 81            [12]  647 	dec	sp
      0030BD 15 81            [12]  648 	dec	sp
                                    649 ;	pwm.c:52: printf("ENTER COMMANDS\n\r");
      0030BF 74 E8            [12]  650 	mov	a,#___str_2
      0030C1 C0 E0            [24]  651 	push	acc
      0030C3 74 3D            [12]  652 	mov	a,#(___str_2 >> 8)
      0030C5 C0 E0            [24]  653 	push	acc
      0030C7 74 80            [12]  654 	mov	a,#0x80
      0030C9 C0 E0            [24]  655 	push	acc
      0030CB 12 33 6E         [24]  656 	lcall	_printf
      0030CE 15 81            [12]  657 	dec	sp
      0030D0 15 81            [12]  658 	dec	sp
      0030D2 15 81            [12]  659 	dec	sp
                                    660 ;	pwm.c:53: printf("COMMAND MENU :\n\r");
      0030D4 74 F9            [12]  661 	mov	a,#___str_3
      0030D6 C0 E0            [24]  662 	push	acc
      0030D8 74 3D            [12]  663 	mov	a,#(___str_3 >> 8)
      0030DA C0 E0            [24]  664 	push	acc
      0030DC 74 80            [12]  665 	mov	a,#0x80
      0030DE C0 E0            [24]  666 	push	acc
      0030E0 12 33 6E         [24]  667 	lcall	_printf
      0030E3 15 81            [12]  668 	dec	sp
      0030E5 15 81            [12]  669 	dec	sp
      0030E7 15 81            [12]  670 	dec	sp
                                    671 ;	pwm.c:54: printf(" R - RUN PWM\n\r");
      0030E9 74 0A            [12]  672 	mov	a,#___str_4
      0030EB C0 E0            [24]  673 	push	acc
      0030ED 74 3E            [12]  674 	mov	a,#(___str_4 >> 8)
      0030EF C0 E0            [24]  675 	push	acc
      0030F1 74 80            [12]  676 	mov	a,#0x80
      0030F3 C0 E0            [24]  677 	push	acc
      0030F5 12 33 6E         [24]  678 	lcall	_printf
      0030F8 15 81            [12]  679 	dec	sp
      0030FA 15 81            [12]  680 	dec	sp
      0030FC 15 81            [12]  681 	dec	sp
                                    682 ;	pwm.c:55: printf(" S - STOP PWM\n\r");
      0030FE 74 19            [12]  683 	mov	a,#___str_5
      003100 C0 E0            [24]  684 	push	acc
      003102 74 3E            [12]  685 	mov	a,#(___str_5 >> 8)
      003104 C0 E0            [24]  686 	push	acc
      003106 74 80            [12]  687 	mov	a,#0x80
      003108 C0 E0            [24]  688 	push	acc
      00310A 12 33 6E         [24]  689 	lcall	_printf
      00310D 15 81            [12]  690 	dec	sp
      00310F 15 81            [12]  691 	dec	sp
      003111 15 81            [12]  692 	dec	sp
                                    693 ;	pwm.c:56: printf(" F - MAX FREQUENCY MODE\n\r");
      003113 74 29            [12]  694 	mov	a,#___str_6
      003115 C0 E0            [24]  695 	push	acc
      003117 74 3E            [12]  696 	mov	a,#(___str_6 >> 8)
      003119 C0 E0            [24]  697 	push	acc
      00311B 74 80            [12]  698 	mov	a,#0x80
      00311D C0 E0            [24]  699 	push	acc
      00311F 12 33 6E         [24]  700 	lcall	_printf
      003122 15 81            [12]  701 	dec	sp
      003124 15 81            [12]  702 	dec	sp
      003126 15 81            [12]  703 	dec	sp
                                    704 ;	pwm.c:57: printf(" M - MIN FREQUENCY MODE\n\r");
      003128 74 43            [12]  705 	mov	a,#___str_7
      00312A C0 E0            [24]  706 	push	acc
      00312C 74 3E            [12]  707 	mov	a,#(___str_7 >> 8)
      00312E C0 E0            [24]  708 	push	acc
      003130 74 80            [12]  709 	mov	a,#0x80
      003132 C0 E0            [24]  710 	push	acc
      003134 12 33 6E         [24]  711 	lcall	_printf
      003137 15 81            [12]  712 	dec	sp
      003139 15 81            [12]  713 	dec	sp
      00313B 15 81            [12]  714 	dec	sp
                                    715 ;	pwm.c:58: printf(" I - IDLE MODE\n\r");
      00313D 74 5D            [12]  716 	mov	a,#___str_8
      00313F C0 E0            [24]  717 	push	acc
      003141 74 3E            [12]  718 	mov	a,#(___str_8 >> 8)
      003143 C0 E0            [24]  719 	push	acc
      003145 74 80            [12]  720 	mov	a,#0x80
      003147 C0 E0            [24]  721 	push	acc
      003149 12 33 6E         [24]  722 	lcall	_printf
      00314C 15 81            [12]  723 	dec	sp
      00314E 15 81            [12]  724 	dec	sp
      003150 15 81            [12]  725 	dec	sp
                                    726 ;	pwm.c:59: printf(" P - POWER DOWN MODE\n\r");
      003152 74 6E            [12]  727 	mov	a,#___str_9
      003154 C0 E0            [24]  728 	push	acc
      003156 74 3E            [12]  729 	mov	a,#(___str_9 >> 8)
      003158 C0 E0            [24]  730 	push	acc
      00315A 74 80            [12]  731 	mov	a,#0x80
      00315C C0 E0            [24]  732 	push	acc
      00315E 12 33 6E         [24]  733 	lcall	_printf
      003161 15 81            [12]  734 	dec	sp
      003163 15 81            [12]  735 	dec	sp
      003165 15 81            [12]  736 	dec	sp
                                    737 ;	pwm.c:60: printf(" H - HIGH SPEED MODE ON\n\r");
      003167 74 85            [12]  738 	mov	a,#___str_10
      003169 C0 E0            [24]  739 	push	acc
      00316B 74 3E            [12]  740 	mov	a,#(___str_10 >> 8)
      00316D C0 E0            [24]  741 	push	acc
      00316F 74 80            [12]  742 	mov	a,#0x80
      003171 C0 E0            [24]  743 	push	acc
      003173 12 33 6E         [24]  744 	lcall	_printf
      003176 15 81            [12]  745 	dec	sp
      003178 15 81            [12]  746 	dec	sp
      00317A 15 81            [12]  747 	dec	sp
                                    748 ;	pwm.c:61: printf(" Q - HIGH SPEED MODE OFF\n\r");
      00317C 74 9F            [12]  749 	mov	a,#___str_11
      00317E C0 E0            [24]  750 	push	acc
      003180 74 3E            [12]  751 	mov	a,#(___str_11 >> 8)
      003182 C0 E0            [24]  752 	push	acc
      003184 74 80            [12]  753 	mov	a,#0x80
      003186 C0 E0            [24]  754 	push	acc
      003188 12 33 6E         [24]  755 	lcall	_printf
      00318B 15 81            [12]  756 	dec	sp
      00318D 15 81            [12]  757 	dec	sp
      00318F 15 81            [12]  758 	dec	sp
                                    759 ;	pwm.c:63: TCON |= 0x01;
      003191 43 88 01         [24]  760 	orl	_TCON,#0x01
                                    761 ;	pwm.c:64: IE |= 0x81;
      003194 43 A8 81         [24]  762 	orl	_IE,#0x81
                                    763 ;	pwm.c:66: while(1)
      003197                        764 00112$:
                                    765 ;	pwm.c:69: command = getchar();    // Wait for input
      003197 12 30 81         [24]  766 	lcall	_getchar
      00319A AE 82            [24]  767 	mov	r6,dpl
                                    768 ;	pwm.c:72: putchar(command);
      00319C 8E 05            [24]  769 	mov	ar5,r6
      00319E 7F 00            [12]  770 	mov	r7,#0x00
      0031A0 8D 82            [24]  771 	mov	dpl,r5
      0031A2 8F 83            [24]  772 	mov	dph,r7
      0031A4 C0 06            [24]  773 	push	ar6
      0031A6 12 30 62         [24]  774 	lcall	_putchar
                                    775 ;	pwm.c:73: printf("\n\r");        // New line after command
      0031A9 74 BA            [12]  776 	mov	a,#___str_12
      0031AB C0 E0            [24]  777 	push	acc
      0031AD 74 3E            [12]  778 	mov	a,#(___str_12 >> 8)
      0031AF C0 E0            [24]  779 	push	acc
      0031B1 74 80            [12]  780 	mov	a,#0x80
      0031B3 C0 E0            [24]  781 	push	acc
      0031B5 12 33 6E         [24]  782 	lcall	_printf
      0031B8 15 81            [12]  783 	dec	sp
      0031BA 15 81            [12]  784 	dec	sp
      0031BC 15 81            [12]  785 	dec	sp
      0031BE D0 06            [24]  786 	pop	ar6
                                    787 ;	pwm.c:75: switch(command)
      0031C0 BE 46 02         [24]  788 	cjne	r6,#0x46,00152$
      0031C3 80 2D            [24]  789 	sjmp	00103$
      0031C5                        790 00152$:
      0031C5 BE 48 02         [24]  791 	cjne	r6,#0x48,00153$
      0031C8 80 3C            [24]  792 	sjmp	00107$
      0031CA                        793 00153$:
      0031CA BE 49 02         [24]  794 	cjne	r6,#0x49,00154$
      0031CD 80 2D            [24]  795 	sjmp	00105$
      0031CF                        796 00154$:
      0031CF BE 4D 02         [24]  797 	cjne	r6,#0x4d,00155$
      0031D2 80 23            [24]  798 	sjmp	00104$
      0031D4                        799 00155$:
      0031D4 BE 50 02         [24]  800 	cjne	r6,#0x50,00156$
      0031D7 80 28            [24]  801 	sjmp	00106$
      0031D9                        802 00156$:
      0031D9 BE 51 02         [24]  803 	cjne	r6,#0x51,00157$
      0031DC 80 2D            [24]  804 	sjmp	00108$
      0031DE                        805 00157$:
      0031DE BE 52 02         [24]  806 	cjne	r6,#0x52,00158$
      0031E1 80 05            [24]  807 	sjmp	00101$
      0031E3                        808 00158$:
                                    809 ;	pwm.c:77: case 'R':
      0031E3 BE 53 28         [24]  810 	cjne	r6,#0x53,00109$
      0031E6 80 05            [24]  811 	sjmp	00102$
      0031E8                        812 00101$:
                                    813 ;	pwm.c:78: pwm_start();
      0031E8 12 32 AA         [24]  814 	lcall	_pwm_start
                                    815 ;	pwm.c:79: break;
                                    816 ;	pwm.c:80: case 'S':
      0031EB 80 AA            [24]  817 	sjmp	00112$
      0031ED                        818 00102$:
                                    819 ;	pwm.c:81: pwm_stop();
      0031ED 12 32 C3         [24]  820 	lcall	_pwm_stop
                                    821 ;	pwm.c:82: break;
                                    822 ;	pwm.c:83: case 'F':
      0031F0 80 A5            [24]  823 	sjmp	00112$
      0031F2                        824 00103$:
                                    825 ;	pwm.c:84: freq_max();
      0031F2 12 32 62         [24]  826 	lcall	_freq_max
                                    827 ;	pwm.c:85: break;
                                    828 ;	pwm.c:86: case 'M':
      0031F5 80 A0            [24]  829 	sjmp	00112$
      0031F7                        830 00104$:
                                    831 ;	pwm.c:87: freq_min();
      0031F7 12 32 7B         [24]  832 	lcall	_freq_min
                                    833 ;	pwm.c:88: break;
                                    834 ;	pwm.c:89: case 'I':
      0031FA 80 9B            [24]  835 	sjmp	00112$
      0031FC                        836 00105$:
                                    837 ;	pwm.c:90: idle_mode();
      0031FC 12 32 30         [24]  838 	lcall	_idle_mode
                                    839 ;	pwm.c:91: break;
                                    840 ;	pwm.c:92: case 'P':
      0031FF 80 96            [24]  841 	sjmp	00112$
      003201                        842 00106$:
                                    843 ;	pwm.c:93: power_down_mode();
      003201 12 32 49         [24]  844 	lcall	_power_down_mode
                                    845 ;	pwm.c:94: break;
                                    846 ;	pwm.c:95: case 'H':
      003204 80 91            [24]  847 	sjmp	00112$
      003206                        848 00107$:
                                    849 ;	pwm.c:96: HS0_mode_on();
      003206 12 32 DC         [24]  850 	lcall	_HS0_mode_on
                                    851 ;	pwm.c:97: break;
                                    852 ;	pwm.c:98: case 'Q':
      003209 80 8C            [24]  853 	sjmp	00112$
      00320B                        854 00108$:
                                    855 ;	pwm.c:99: HS0_mode_off();
      00320B 12 33 07         [24]  856 	lcall	_HS0_mode_off
                                    857 ;	pwm.c:100: default:
      00320E                        858 00109$:
                                    859 ;	pwm.c:101: printf("Invalid Command\n\r");
      00320E 74 BD            [12]  860 	mov	a,#___str_13
      003210 C0 E0            [24]  861 	push	acc
      003212 74 3E            [12]  862 	mov	a,#(___str_13 >> 8)
      003214 C0 E0            [24]  863 	push	acc
      003216 74 80            [12]  864 	mov	a,#0x80
      003218 C0 E0            [24]  865 	push	acc
      00321A 12 33 6E         [24]  866 	lcall	_printf
      00321D 15 81            [12]  867 	dec	sp
      00321F 15 81            [12]  868 	dec	sp
      003221 15 81            [12]  869 	dec	sp
                                    870 ;	pwm.c:102: }
                                    871 ;	pwm.c:104: }
      003223 02 31 97         [24]  872 	ljmp	00112$
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'set_x2_mode'
                                    875 ;------------------------------------------------------------
                                    876 ;	pwm.c:112: void set_x2_mode(void)
                                    877 ;	-----------------------------------------
                                    878 ;	 function set_x2_mode
                                    879 ;	-----------------------------------------
      003226                        880 _set_x2_mode:
                                    881 ;	pwm.c:114: CKCON0 = 0x00;
      003226 75 8F 00         [24]  882 	mov	_CKCON0,#0x00
                                    883 ;	pwm.c:115: CKCON0 |= CKCON0_X2_BIT;
      003229 43 8F 01         [24]  884 	orl	_CKCON0,#0x01
                                    885 ;	pwm.c:116: CKCON0 |= CKCON0_TIX2_BIT;
      00322C 43 8F 04         [24]  886 	orl	_CKCON0,#0x04
                                    887 ;	pwm.c:117: }
      00322F 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'idle_mode'
                                    891 ;------------------------------------------------------------
                                    892 ;	pwm.c:119: void idle_mode()
                                    893 ;	-----------------------------------------
                                    894 ;	 function idle_mode
                                    895 ;	-----------------------------------------
      003230                        896 _idle_mode:
                                    897 ;	pwm.c:121: printf("IDLE MODE\n\r");
      003230 74 CF            [12]  898 	mov	a,#___str_14
      003232 C0 E0            [24]  899 	push	acc
      003234 74 3E            [12]  900 	mov	a,#(___str_14 >> 8)
      003236 C0 E0            [24]  901 	push	acc
      003238 74 80            [12]  902 	mov	a,#0x80
      00323A C0 E0            [24]  903 	push	acc
      00323C 12 33 6E         [24]  904 	lcall	_printf
      00323F 15 81            [12]  905 	dec	sp
      003241 15 81            [12]  906 	dec	sp
      003243 15 81            [12]  907 	dec	sp
                                    908 ;	pwm.c:122: PCON |= 0x01;
      003245 43 87 01         [24]  909 	orl	_PCON,#0x01
                                    910 ;	pwm.c:123: }
      003248 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'power_down_mode'
                                    914 ;------------------------------------------------------------
                                    915 ;	pwm.c:125: void power_down_mode()
                                    916 ;	-----------------------------------------
                                    917 ;	 function power_down_mode
                                    918 ;	-----------------------------------------
      003249                        919 _power_down_mode:
                                    920 ;	pwm.c:127: printf("POWER DOWN MODE\n\r");
      003249 74 DB            [12]  921 	mov	a,#___str_15
      00324B C0 E0            [24]  922 	push	acc
      00324D 74 3E            [12]  923 	mov	a,#(___str_15 >> 8)
      00324F C0 E0            [24]  924 	push	acc
      003251 74 80            [12]  925 	mov	a,#0x80
      003253 C0 E0            [24]  926 	push	acc
      003255 12 33 6E         [24]  927 	lcall	_printf
      003258 15 81            [12]  928 	dec	sp
      00325A 15 81            [12]  929 	dec	sp
      00325C 15 81            [12]  930 	dec	sp
                                    931 ;	pwm.c:128: PCON |= 0x02;
      00325E 43 87 02         [24]  932 	orl	_PCON,#0x02
                                    933 ;	pwm.c:129: }
      003261 22               [24]  934 	ret
                                    935 ;------------------------------------------------------------
                                    936 ;Allocation info for local variables in function 'freq_max'
                                    937 ;------------------------------------------------------------
                                    938 ;	pwm.c:130: void freq_max()
                                    939 ;	-----------------------------------------
                                    940 ;	 function freq_max
                                    941 ;	-----------------------------------------
      003262                        942 _freq_max:
                                    943 ;	pwm.c:132: printf("MAXIMUM FREQUENCY\n\r");
      003262 74 ED            [12]  944 	mov	a,#___str_16
      003264 C0 E0            [24]  945 	push	acc
      003266 74 3E            [12]  946 	mov	a,#(___str_16 >> 8)
      003268 C0 E0            [24]  947 	push	acc
      00326A 74 80            [12]  948 	mov	a,#0x80
      00326C C0 E0            [24]  949 	push	acc
      00326E 12 33 6E         [24]  950 	lcall	_printf
      003271 15 81            [12]  951 	dec	sp
      003273 15 81            [12]  952 	dec	sp
      003275 15 81            [12]  953 	dec	sp
                                    954 ;	pwm.c:133: CKRL = 0xFF;
      003277 75 97 FF         [24]  955 	mov	_CKRL,#0xff
                                    956 ;	pwm.c:134: }
      00327A 22               [24]  957 	ret
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'freq_min'
                                    960 ;------------------------------------------------------------
                                    961 ;	pwm.c:136: void freq_min()
                                    962 ;	-----------------------------------------
                                    963 ;	 function freq_min
                                    964 ;	-----------------------------------------
      00327B                        965 _freq_min:
                                    966 ;	pwm.c:138: printf("MINIMUM FREQUENCY\n\r");
      00327B 74 01            [12]  967 	mov	a,#___str_17
      00327D C0 E0            [24]  968 	push	acc
      00327F 74 3F            [12]  969 	mov	a,#(___str_17 >> 8)
      003281 C0 E0            [24]  970 	push	acc
      003283 74 80            [12]  971 	mov	a,#0x80
      003285 C0 E0            [24]  972 	push	acc
      003287 12 33 6E         [24]  973 	lcall	_printf
      00328A 15 81            [12]  974 	dec	sp
      00328C 15 81            [12]  975 	dec	sp
      00328E 15 81            [12]  976 	dec	sp
                                    977 ;	pwm.c:139: CKRL = 0x01;
      003290 75 97 01         [24]  978 	mov	_CKRL,#0x01
                                    979 ;	pwm.c:140: }
      003293 22               [24]  980 	ret
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'pwm_init'
                                    983 ;------------------------------------------------------------
                                    984 ;	pwm.c:142: void pwm_init()
                                    985 ;	-----------------------------------------
                                    986 ;	 function pwm_init
                                    987 ;	-----------------------------------------
      003294                        988 _pwm_init:
                                    989 ;	pwm.c:144: CCAPM0 = 0x00;
      003294 75 DA 00         [24]  990 	mov	_CCAPM0,#0x00
                                    991 ;	pwm.c:145: CMOD = 0X82;
      003297 75 D9 82         [24]  992 	mov	_CMOD,#0x82
                                    993 ;	pwm.c:146: CL = 0X00;
      00329A 75 E9 00         [24]  994 	mov	_CL,#0x00
                                    995 ;	pwm.c:147: CH = 0X00;
      00329D 75 F9 00         [24]  996 	mov	_CH,#0x00
                                    997 ;	pwm.c:149: CCAP0L = 0XAC;
      0032A0 75 EA AC         [24]  998 	mov	_CCAP0L,#0xac
                                    999 ;	pwm.c:150: CCAP0H = 0XAC;
      0032A3 75 FA AC         [24] 1000 	mov	_CCAP0H,#0xac
                                   1001 ;	pwm.c:151: CCAPM0 = 0X42;
      0032A6 75 DA 42         [24] 1002 	mov	_CCAPM0,#0x42
                                   1003 ;	pwm.c:152: }
      0032A9 22               [24] 1004 	ret
                                   1005 ;------------------------------------------------------------
                                   1006 ;Allocation info for local variables in function 'pwm_start'
                                   1007 ;------------------------------------------------------------
                                   1008 ;	pwm.c:154: void pwm_start()
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function pwm_start
                                   1011 ;	-----------------------------------------
      0032AA                       1012 _pwm_start:
                                   1013 ;	pwm.c:156: printf("PWM START\n\r");
      0032AA 74 15            [12] 1014 	mov	a,#___str_18
      0032AC C0 E0            [24] 1015 	push	acc
      0032AE 74 3F            [12] 1016 	mov	a,#(___str_18 >> 8)
      0032B0 C0 E0            [24] 1017 	push	acc
      0032B2 74 80            [12] 1018 	mov	a,#0x80
      0032B4 C0 E0            [24] 1019 	push	acc
      0032B6 12 33 6E         [24] 1020 	lcall	_printf
      0032B9 15 81            [12] 1021 	dec	sp
      0032BB 15 81            [12] 1022 	dec	sp
      0032BD 15 81            [12] 1023 	dec	sp
                                   1024 ;	pwm.c:157: CCON = 0x40;
      0032BF 75 D8 40         [24] 1025 	mov	_CCON,#0x40
                                   1026 ;	pwm.c:158: }
      0032C2 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'pwm_stop'
                                   1030 ;------------------------------------------------------------
                                   1031 ;	pwm.c:160: void pwm_stop()
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function pwm_stop
                                   1034 ;	-----------------------------------------
      0032C3                       1035 _pwm_stop:
                                   1036 ;	pwm.c:162: printf("PWM STOP\n\r");
      0032C3 74 21            [12] 1037 	mov	a,#___str_19
      0032C5 C0 E0            [24] 1038 	push	acc
      0032C7 74 3F            [12] 1039 	mov	a,#(___str_19 >> 8)
      0032C9 C0 E0            [24] 1040 	push	acc
      0032CB 74 80            [12] 1041 	mov	a,#0x80
      0032CD C0 E0            [24] 1042 	push	acc
      0032CF 12 33 6E         [24] 1043 	lcall	_printf
      0032D2 15 81            [12] 1044 	dec	sp
      0032D4 15 81            [12] 1045 	dec	sp
      0032D6 15 81            [12] 1046 	dec	sp
                                   1047 ;	pwm.c:163: CCON = 0x00;
      0032D8 75 D8 00         [24] 1048 	mov	_CCON,#0x00
                                   1049 ;	pwm.c:164: }
      0032DB 22               [24] 1050 	ret
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'HS0_mode_on'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	pwm.c:166: void HS0_mode_on(void)
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function HS0_mode_on
                                   1057 ;	-----------------------------------------
      0032DC                       1058 _HS0_mode_on:
                                   1059 ;	pwm.c:168: printf("HIGH SPEED MODE ON\n\r");
      0032DC 74 2C            [12] 1060 	mov	a,#___str_20
      0032DE C0 E0            [24] 1061 	push	acc
      0032E0 74 3F            [12] 1062 	mov	a,#(___str_20 >> 8)
      0032E2 C0 E0            [24] 1063 	push	acc
      0032E4 74 80            [12] 1064 	mov	a,#0x80
      0032E6 C0 E0            [24] 1065 	push	acc
      0032E8 12 33 6E         [24] 1066 	lcall	_printf
      0032EB 15 81            [12] 1067 	dec	sp
      0032ED 15 81            [12] 1068 	dec	sp
      0032EF 15 81            [12] 1069 	dec	sp
                                   1070 ;	pwm.c:169: CCON |= 0x4C;
      0032F1 43 D8 4C         [24] 1071 	orl	_CCON,#0x4c
                                   1072 ;	pwm.c:170: CMOD |= 0x02;     // Fclk/2 freq set for PCA mode
      0032F4 43 D9 02         [24] 1073 	orl	_CMOD,#0x02
                                   1074 ;	pwm.c:171: CCAPM0 = 0x4C;   // Compare mode + HSO, no interrupt
      0032F7 75 DA 4C         [24] 1075 	mov	_CCAPM0,#0x4c
                                   1076 ;	pwm.c:172: CL = 0x00;       // Clear PCA counter
      0032FA 75 E9 00         [24] 1077 	mov	_CL,#0x00
                                   1078 ;	pwm.c:173: CH = 0x00;
      0032FD 75 F9 00         [24] 1079 	mov	_CH,#0x00
                                   1080 ;	pwm.c:176: CCAP0L = 0xAC;   // Load compare low byte
      003300 75 EA AC         [24] 1081 	mov	_CCAP0L,#0xac
                                   1082 ;	pwm.c:177: CCAP0H = 0xAC;   // Load compare high byte
      003303 75 FA AC         [24] 1083 	mov	_CCAP0H,#0xac
                                   1084 ;	pwm.c:178: }
      003306 22               [24] 1085 	ret
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'HS0_mode_off'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	pwm.c:180: void HS0_mode_off(void)
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function HS0_mode_off
                                   1092 ;	-----------------------------------------
      003307                       1093 _HS0_mode_off:
                                   1094 ;	pwm.c:182: printf("HIGH SPEED MODE OFF\n\r");
      003307 74 41            [12] 1095 	mov	a,#___str_21
      003309 C0 E0            [24] 1096 	push	acc
      00330B 74 3F            [12] 1097 	mov	a,#(___str_21 >> 8)
      00330D C0 E0            [24] 1098 	push	acc
      00330F 74 80            [12] 1099 	mov	a,#0x80
      003311 C0 E0            [24] 1100 	push	acc
      003313 12 33 6E         [24] 1101 	lcall	_printf
      003316 15 81            [12] 1102 	dec	sp
      003318 15 81            [12] 1103 	dec	sp
      00331A 15 81            [12] 1104 	dec	sp
                                   1105 ;	pwm.c:183: CCAPM0 = 0x00;
      00331C 75 DA 00         [24] 1106 	mov	_CCAPM0,#0x00
                                   1107 ;	pwm.c:184: return;
                                   1108 ;	pwm.c:185: }
      00331F 22               [24] 1109 	ret
                                   1110 	.area CSEG    (CODE)
                                   1111 	.area CONST   (CODE)
                                   1112 	.area CONST   (CODE)
      003DD0                       1113 ___str_0:
      003DD0 50 43 41 20 44 45 4D  1114 	.ascii "PCA DEMO"
             4F
      003DD8 0A                    1115 	.db 0x0a
      003DD9 0D                    1116 	.db 0x0d
      003DDA 00                    1117 	.db 0x00
                                   1118 	.area CSEG    (CODE)
                                   1119 	.area CONST   (CODE)
      003DDB                       1120 ___str_1:
      003DDB 69 6E 20 58 32 20 4D  1121 	.ascii "in X2 MODE"
             4F 44 45
      003DE5 0A                    1122 	.db 0x0a
      003DE6 0D                    1123 	.db 0x0d
      003DE7 00                    1124 	.db 0x00
                                   1125 	.area CSEG    (CODE)
                                   1126 	.area CONST   (CODE)
      003DE8                       1127 ___str_2:
      003DE8 45 4E 54 45 52 20 43  1128 	.ascii "ENTER COMMANDS"
             4F 4D 4D 41 4E 44 53
      003DF6 0A                    1129 	.db 0x0a
      003DF7 0D                    1130 	.db 0x0d
      003DF8 00                    1131 	.db 0x00
                                   1132 	.area CSEG    (CODE)
                                   1133 	.area CONST   (CODE)
      003DF9                       1134 ___str_3:
      003DF9 43 4F 4D 4D 41 4E 44  1135 	.ascii "COMMAND MENU :"
             20 4D 45 4E 55 20 3A
      003E07 0A                    1136 	.db 0x0a
      003E08 0D                    1137 	.db 0x0d
      003E09 00                    1138 	.db 0x00
                                   1139 	.area CSEG    (CODE)
                                   1140 	.area CONST   (CODE)
      003E0A                       1141 ___str_4:
      003E0A 20 52 20 2D 20 52 55  1142 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      003E16 0A                    1143 	.db 0x0a
      003E17 0D                    1144 	.db 0x0d
      003E18 00                    1145 	.db 0x00
                                   1146 	.area CSEG    (CODE)
                                   1147 	.area CONST   (CODE)
      003E19                       1148 ___str_5:
      003E19 20 53 20 2D 20 53 54  1149 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      003E26 0A                    1150 	.db 0x0a
      003E27 0D                    1151 	.db 0x0d
      003E28 00                    1152 	.db 0x00
                                   1153 	.area CSEG    (CODE)
                                   1154 	.area CONST   (CODE)
      003E29                       1155 ___str_6:
      003E29 20 46 20 2D 20 4D 41  1156 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003E40 0A                    1157 	.db 0x0a
      003E41 0D                    1158 	.db 0x0d
      003E42 00                    1159 	.db 0x00
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
      003E43                       1162 ___str_7:
      003E43 20 4D 20 2D 20 4D 49  1163 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      003E5A 0A                    1164 	.db 0x0a
      003E5B 0D                    1165 	.db 0x0d
      003E5C 00                    1166 	.db 0x00
                                   1167 	.area CSEG    (CODE)
                                   1168 	.area CONST   (CODE)
      003E5D                       1169 ___str_8:
      003E5D 20 49 20 2D 20 49 44  1170 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      003E6B 0A                    1171 	.db 0x0a
      003E6C 0D                    1172 	.db 0x0d
      003E6D 00                    1173 	.db 0x00
                                   1174 	.area CSEG    (CODE)
                                   1175 	.area CONST   (CODE)
      003E6E                       1176 ___str_9:
      003E6E 20 50 20 2D 20 50 4F  1177 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      003E82 0A                    1178 	.db 0x0a
      003E83 0D                    1179 	.db 0x0d
      003E84 00                    1180 	.db 0x00
                                   1181 	.area CSEG    (CODE)
                                   1182 	.area CONST   (CODE)
      003E85                       1183 ___str_10:
      003E85 20 48 20 2D 20 48 49  1184 	.ascii " H - HIGH SPEED MODE ON"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 4E
      003E9C 0A                    1185 	.db 0x0a
      003E9D 0D                    1186 	.db 0x0d
      003E9E 00                    1187 	.db 0x00
                                   1188 	.area CSEG    (CODE)
                                   1189 	.area CONST   (CODE)
      003E9F                       1190 ___str_11:
      003E9F 20 51 20 2D 20 48 49  1191 	.ascii " Q - HIGH SPEED MODE OFF"
             47 48 20 53 50 45 45
             44 20 4D 4F 44 45 20
             4F 46 46
      003EB7 0A                    1192 	.db 0x0a
      003EB8 0D                    1193 	.db 0x0d
      003EB9 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area CONST   (CODE)
      003EBA                       1197 ___str_12:
      003EBA 0A                    1198 	.db 0x0a
      003EBB 0D                    1199 	.db 0x0d
      003EBC 00                    1200 	.db 0x00
                                   1201 	.area CSEG    (CODE)
                                   1202 	.area CONST   (CODE)
      003EBD                       1203 ___str_13:
      003EBD 49 6E 76 61 6C 69 64  1204 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      003ECC 0A                    1205 	.db 0x0a
      003ECD 0D                    1206 	.db 0x0d
      003ECE 00                    1207 	.db 0x00
                                   1208 	.area CSEG    (CODE)
                                   1209 	.area CONST   (CODE)
      003ECF                       1210 ___str_14:
      003ECF 49 44 4C 45 20 4D 4F  1211 	.ascii "IDLE MODE"
             44 45
      003ED8 0A                    1212 	.db 0x0a
      003ED9 0D                    1213 	.db 0x0d
      003EDA 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      003EDB                       1217 ___str_15:
      003EDB 50 4F 57 45 52 20 44  1218 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      003EEA 0A                    1219 	.db 0x0a
      003EEB 0D                    1220 	.db 0x0d
      003EEC 00                    1221 	.db 0x00
                                   1222 	.area CSEG    (CODE)
                                   1223 	.area CONST   (CODE)
      003EED                       1224 ___str_16:
      003EED 4D 41 58 49 4D 55 4D  1225 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003EFE 0A                    1226 	.db 0x0a
      003EFF 0D                    1227 	.db 0x0d
      003F00 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      003F01                       1231 ___str_17:
      003F01 4D 49 4E 49 4D 55 4D  1232 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      003F12 0A                    1233 	.db 0x0a
      003F13 0D                    1234 	.db 0x0d
      003F14 00                    1235 	.db 0x00
                                   1236 	.area CSEG    (CODE)
                                   1237 	.area CONST   (CODE)
      003F15                       1238 ___str_18:
      003F15 50 57 4D 20 53 54 41  1239 	.ascii "PWM START"
             52 54
      003F1E 0A                    1240 	.db 0x0a
      003F1F 0D                    1241 	.db 0x0d
      003F20 00                    1242 	.db 0x00
                                   1243 	.area CSEG    (CODE)
                                   1244 	.area CONST   (CODE)
      003F21                       1245 ___str_19:
      003F21 50 57 4D 20 53 54 4F  1246 	.ascii "PWM STOP"
             50
      003F29 0A                    1247 	.db 0x0a
      003F2A 0D                    1248 	.db 0x0d
      003F2B 00                    1249 	.db 0x00
                                   1250 	.area CSEG    (CODE)
                                   1251 	.area CONST   (CODE)
      003F2C                       1252 ___str_20:
      003F2C 48 49 47 48 20 53 50  1253 	.ascii "HIGH SPEED MODE ON"
             45 45 44 20 4D 4F 44
             45 20 4F 4E
      003F3E 0A                    1254 	.db 0x0a
      003F3F 0D                    1255 	.db 0x0d
      003F40 00                    1256 	.db 0x00
                                   1257 	.area CSEG    (CODE)
                                   1258 	.area CONST   (CODE)
      003F41                       1259 ___str_21:
      003F41 48 49 47 48 20 53 50  1260 	.ascii "HIGH SPEED MODE OFF"
             45 45 44 20 4D 4F 44
             45 20 4F 46 46
      003F54 0A                    1261 	.db 0x0a
      003F55 0D                    1262 	.db 0x0d
      003F56 00                    1263 	.db 0x00
                                   1264 	.area CSEG    (CODE)
                                   1265 	.area XINIT   (CODE)
                                   1266 	.area CABS    (ABS,CODE)
