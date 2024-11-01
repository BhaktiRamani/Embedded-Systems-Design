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
                                     14 	.globl _init_uart
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
                                    225 	.globl _idle_mode
                                    226 	.globl _power_down_mode
                                    227 	.globl _freq_max
                                    228 	.globl _freq_min
                                    229 	.globl _pwm_init
                                    230 	.globl _pwm_start
                                    231 	.globl _pwm_stop
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000083   290 _DPH	=	0x0083
                           000083   291 _DP0H	=	0x0083
                           000082   292 _DPL	=	0x0082
                           000082   293 _DP0L	=	0x0082
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           000080   296 _P0	=	0x0080
                           000090   297 _P1	=	0x0090
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000087   300 _PCON	=	0x0087
                           0000D0   301 _PSW	=	0x00d0
                           000099   302 _SBUF	=	0x0099
                           000099   303 _SBUF0	=	0x0099
                           000098   304 _SCON	=	0x0098
                           000081   305 _SP	=	0x0081
                           000088   306 _TCON	=	0x0088
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           000089   311 _TMOD	=	0x0089
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000AD   317 _ET2	=	0x00ad
                           0000BD   318 _PT2	=	0x00bd
                           0000C8   319 _T2CON_0	=	0x00c8
                           0000C9   320 _T2CON_1	=	0x00c9
                           0000CA   321 _T2CON_2	=	0x00ca
                           0000CB   322 _T2CON_3	=	0x00cb
                           0000CC   323 _T2CON_4	=	0x00cc
                           0000CD   324 _T2CON_5	=	0x00cd
                           0000CE   325 _T2CON_6	=	0x00ce
                           0000CF   326 _T2CON_7	=	0x00cf
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C9   328 _C_T2	=	0x00c9
                           0000CA   329 _TR2	=	0x00ca
                           0000CB   330 _EXEN2	=	0x00cb
                           0000CC   331 _TCLK	=	0x00cc
                           0000CD   332 _RCLK	=	0x00cd
                           0000CE   333 _EXF2	=	0x00ce
                           0000CF   334 _TF2	=	0x00cf
                           0000DF   335 _CF	=	0x00df
                           0000DE   336 _CR	=	0x00de
                           0000DC   337 _CCF4	=	0x00dc
                           0000DB   338 _CCF3	=	0x00db
                           0000DA   339 _CCF2	=	0x00da
                           0000D9   340 _CCF1	=	0x00d9
                           0000D8   341 _CCF0	=	0x00d8
                           0000AE   342 _EC	=	0x00ae
                           0000BE   343 _PPCL	=	0x00be
                           0000BD   344 _PT2L	=	0x00bd
                           0000BC   345 _PSL	=	0x00bc
                           0000BB   346 _PT1L	=	0x00bb
                           0000BA   347 _PX1L	=	0x00ba
                           0000B9   348 _PT0L	=	0x00b9
                           0000B8   349 _PX0L	=	0x00b8
                           0000C0   350 _P4_0	=	0x00c0
                           0000C1   351 _P4_1	=	0x00c1
                           0000C2   352 _P4_2	=	0x00c2
                           0000C3   353 _P4_3	=	0x00c3
                           0000C4   354 _P4_4	=	0x00c4
                           0000C5   355 _P4_5	=	0x00c5
                           0000C6   356 _P4_6	=	0x00c6
                           0000C7   357 _P4_7	=	0x00c7
                           0000E8   358 _P5_0	=	0x00e8
                           0000E9   359 _P5_1	=	0x00e9
                           0000EA   360 _P5_2	=	0x00ea
                           0000EB   361 _P5_3	=	0x00eb
                           0000EC   362 _P5_4	=	0x00ec
                           0000ED   363 _P5_5	=	0x00ed
                           0000EE   364 _P5_6	=	0x00ee
                           0000EF   365 _P5_7	=	0x00ef
                           0000F0   366 _BREG_F0	=	0x00f0
                           0000F1   367 _BREG_F1	=	0x00f1
                           0000F2   368 _BREG_F2	=	0x00f2
                           0000F3   369 _BREG_F3	=	0x00f3
                           0000F4   370 _BREG_F4	=	0x00f4
                           0000F5   371 _BREG_F5	=	0x00f5
                           0000F6   372 _BREG_F6	=	0x00f6
                           0000F7   373 _BREG_F7	=	0x00f7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B8   380 _PX0	=	0x00b8
                           0000B9   381 _PT0	=	0x00b9
                           0000BA   382 _PX1	=	0x00ba
                           0000BB   383 _PT1	=	0x00bb
                           0000BC   384 _PS	=	0x00bc
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B0   418 _RXD0	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B1   420 _TXD0	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                           000098   435 _RI	=	0x0098
                           000099   436 _TI	=	0x0099
                           00009A   437 _RB8	=	0x009a
                           00009B   438 _TB8	=	0x009b
                           00009C   439 _REN	=	0x009c
                           00009D   440 _SM2	=	0x009d
                           00009E   441 _SM1	=	0x009e
                           00009F   442 _SM0	=	0x009f
                           000088   443 _IT0	=	0x0088
                           000089   444 _IE0	=	0x0089
                           00008A   445 _IT1	=	0x008a
                           00008B   446 _IE1	=	0x008b
                           00008C   447 _TR0	=	0x008c
                           00008D   448 _TF0	=	0x008d
                           00008E   449 _TR1	=	0x008e
                           00008F   450 _TF1	=	0x008f
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram 
                                    462 ;--------------------------------------------------------
                                    463 ;--------------------------------------------------------
                                    464 ; Stack segment in internal ram 
                                    465 ;--------------------------------------------------------
                                    466 	.area	SSEG
      000014                        467 __start__stack:
      000014                        468 	.ds	1
                                    469 
                                    470 ;--------------------------------------------------------
                                    471 ; indirectly addressable internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area ISEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; absolute internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area IABS    (ABS,DATA)
                                    478 	.area IABS    (ABS,DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; bit data
                                    481 ;--------------------------------------------------------
                                    482 	.area BSEG    (BIT)
                                    483 ;--------------------------------------------------------
                                    484 ; paged external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area PSEG    (PAG,XDATA)
                                    487 ;--------------------------------------------------------
                                    488 ; external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XSEG    (XDATA)
      000400                        491 _putchar_chr_65536_15:
      000400                        492 	.ds 2
      000402                        493 _getchar_c_65536_18:
      000402                        494 	.ds 1
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
      000000                        517 __interrupt_vect:
      000000 02 00 06         [24]  518 	ljmp	__sdcc_gsinit_startup
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
      00005F 02 00 03         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      000003                        539 __sdcc_program_startup:
      000003 02 00 A6         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'init_uart'
                                    548 ;------------------------------------------------------------
                                    549 ;	pwm.c:13: void init_uart(void)
                                    550 ;	-----------------------------------------
                                    551 ;	 function init_uart
                                    552 ;	-----------------------------------------
      000062                        553 _init_uart:
                           000007   554 	ar7 = 0x07
                           000006   555 	ar6 = 0x06
                           000005   556 	ar5 = 0x05
                           000004   557 	ar4 = 0x04
                           000003   558 	ar3 = 0x03
                           000002   559 	ar2 = 0x02
                           000001   560 	ar1 = 0x01
                           000000   561 	ar0 = 0x00
                                    562 ;	pwm.c:15: SCON = 0x50;    // Serial mode 1, 8-bit UART, enable receiver
      000062 75 98 50         [24]  563 	mov	_SCON,#0x50
                                    564 ;	pwm.c:16: TMOD = 0x20;    // Timer 1, mode 2 (8-bit auto-reload)
      000065 75 89 20         [24]  565 	mov	_TMOD,#0x20
                                    566 ;	pwm.c:17: TH1 = 0xFD;     // For 9600 baud rate with 11.059MHz crystal
      000068 75 8D FD         [24]  567 	mov	_TH1,#0xfd
                                    568 ;	pwm.c:18: TR1 = 1;        // Start timer 1
                                    569 ;	assignBit
      00006B D2 8E            [12]  570 	setb	_TR1
                                    571 ;	pwm.c:19: TI = 1;         // Set TI for first transmission
                                    572 ;	assignBit
      00006D D2 99            [12]  573 	setb	_TI
                                    574 ;	pwm.c:20: }
      00006F 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'putchar'
                                    578 ;------------------------------------------------------------
                                    579 ;chr                       Allocated with name '_putchar_chr_65536_15'
                                    580 ;------------------------------------------------------------
                                    581 ;	pwm.c:23: int putchar(int chr)
                                    582 ;	-----------------------------------------
                                    583 ;	 function putchar
                                    584 ;	-----------------------------------------
      000070                        585 _putchar:
      000070 AF 83            [24]  586 	mov	r7,dph
      000072 E5 82            [12]  587 	mov	a,dpl
      000074 90 04 00         [24]  588 	mov	dptr,#_putchar_chr_65536_15
      000077 F0               [24]  589 	movx	@dptr,a
      000078 EF               [12]  590 	mov	a,r7
      000079 A3               [24]  591 	inc	dptr
      00007A F0               [24]  592 	movx	@dptr,a
                                    593 ;	pwm.c:25: while(!TI);      // Wait until TI is set
      00007B                        594 00101$:
                                    595 ;	pwm.c:26: TI = 0;          // Clear TI flag
                                    596 ;	assignBit
      00007B 10 99 02         [24]  597 	jbc	_TI,00114$
      00007E 80 FB            [24]  598 	sjmp	00101$
      000080                        599 00114$:
                                    600 ;	pwm.c:27: SBUF = chr;      // Load data into buffer
      000080 90 04 00         [24]  601 	mov	dptr,#_putchar_chr_65536_15
      000083 E0               [24]  602 	movx	a,@dptr
      000084 FE               [12]  603 	mov	r6,a
      000085 A3               [24]  604 	inc	dptr
      000086 E0               [24]  605 	movx	a,@dptr
      000087 FF               [12]  606 	mov	r7,a
      000088 8E 99            [24]  607 	mov	_SBUF,r6
                                    608 ;	pwm.c:28: return chr;
      00008A 8E 82            [24]  609 	mov	dpl,r6
      00008C 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	pwm.c:29: }
      00008E 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'getchar'
                                    615 ;------------------------------------------------------------
                                    616 ;c                         Allocated with name '_getchar_c_65536_18'
                                    617 ;------------------------------------------------------------
                                    618 ;	pwm.c:32: int getchar(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function getchar
                                    621 ;	-----------------------------------------
      00008F                        622 _getchar:
                                    623 ;	pwm.c:35: while(!RI);      // Wait until RI is set
      00008F                        624 00101$:
      00008F 30 98 FD         [24]  625 	jnb	_RI,00101$
                                    626 ;	pwm.c:36: c = SBUF;        // Read received data
      000092 90 04 02         [24]  627 	mov	dptr,#_getchar_c_65536_18
      000095 E5 99            [12]  628 	mov	a,_SBUF
      000097 F0               [24]  629 	movx	@dptr,a
                                    630 ;	pwm.c:37: RI = 0;          // Clear RI flag
                                    631 ;	assignBit
      000098 C2 98            [12]  632 	clr	_RI
                                    633 ;	pwm.c:38: return c;
      00009A 90 04 02         [24]  634 	mov	dptr,#_getchar_c_65536_18
      00009D E0               [24]  635 	movx	a,@dptr
      00009E FF               [12]  636 	mov	r7,a
      00009F 7E 00            [12]  637 	mov	r6,#0x00
      0000A1 8F 82            [24]  638 	mov	dpl,r7
      0000A3 8E 83            [24]  639 	mov	dph,r6
                                    640 ;	pwm.c:39: }
      0000A5 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'main'
                                    644 ;------------------------------------------------------------
                                    645 ;command                   Allocated with name '_main_command_131072_21'
                                    646 ;------------------------------------------------------------
                                    647 ;	pwm.c:41: void main(void)
                                    648 ;	-----------------------------------------
                                    649 ;	 function main
                                    650 ;	-----------------------------------------
      0000A6                        651 _main:
                                    652 ;	pwm.c:43: init_uart();
      0000A6 12 00 62         [24]  653 	lcall	_init_uart
                                    654 ;	pwm.c:44: pwm_init();
      0000A9 12 02 3B         [24]  655 	lcall	_pwm_init
                                    656 ;	pwm.c:46: printf("PCA MODE : PWM\n\r");
      0000AC 74 30            [12]  657 	mov	a,#___str_0
      0000AE C0 E0            [24]  658 	push	acc
      0000B0 74 0D            [12]  659 	mov	a,#(___str_0 >> 8)
      0000B2 C0 E0            [24]  660 	push	acc
      0000B4 74 80            [12]  661 	mov	a,#0x80
      0000B6 C0 E0            [24]  662 	push	acc
      0000B8 12 02 CE         [24]  663 	lcall	_printf
      0000BB 15 81            [12]  664 	dec	sp
      0000BD 15 81            [12]  665 	dec	sp
      0000BF 15 81            [12]  666 	dec	sp
                                    667 ;	pwm.c:47: printf("COMMANDS :\n\r");
      0000C1 74 41            [12]  668 	mov	a,#___str_1
      0000C3 C0 E0            [24]  669 	push	acc
      0000C5 74 0D            [12]  670 	mov	a,#(___str_1 >> 8)
      0000C7 C0 E0            [24]  671 	push	acc
      0000C9 74 80            [12]  672 	mov	a,#0x80
      0000CB C0 E0            [24]  673 	push	acc
      0000CD 12 02 CE         [24]  674 	lcall	_printf
      0000D0 15 81            [12]  675 	dec	sp
      0000D2 15 81            [12]  676 	dec	sp
      0000D4 15 81            [12]  677 	dec	sp
                                    678 ;	pwm.c:48: printf(" R - RUN PWM\n\r");
      0000D6 74 4E            [12]  679 	mov	a,#___str_2
      0000D8 C0 E0            [24]  680 	push	acc
      0000DA 74 0D            [12]  681 	mov	a,#(___str_2 >> 8)
      0000DC C0 E0            [24]  682 	push	acc
      0000DE 74 80            [12]  683 	mov	a,#0x80
      0000E0 C0 E0            [24]  684 	push	acc
      0000E2 12 02 CE         [24]  685 	lcall	_printf
      0000E5 15 81            [12]  686 	dec	sp
      0000E7 15 81            [12]  687 	dec	sp
      0000E9 15 81            [12]  688 	dec	sp
                                    689 ;	pwm.c:49: printf(" S - STOP PWM\n\r");
      0000EB 74 5D            [12]  690 	mov	a,#___str_3
      0000ED C0 E0            [24]  691 	push	acc
      0000EF 74 0D            [12]  692 	mov	a,#(___str_3 >> 8)
      0000F1 C0 E0            [24]  693 	push	acc
      0000F3 74 80            [12]  694 	mov	a,#0x80
      0000F5 C0 E0            [24]  695 	push	acc
      0000F7 12 02 CE         [24]  696 	lcall	_printf
      0000FA 15 81            [12]  697 	dec	sp
      0000FC 15 81            [12]  698 	dec	sp
      0000FE 15 81            [12]  699 	dec	sp
                                    700 ;	pwm.c:50: printf(" F - MAX FREQUENCY MODE\n\r");
      000100 74 6D            [12]  701 	mov	a,#___str_4
      000102 C0 E0            [24]  702 	push	acc
      000104 74 0D            [12]  703 	mov	a,#(___str_4 >> 8)
      000106 C0 E0            [24]  704 	push	acc
      000108 74 80            [12]  705 	mov	a,#0x80
      00010A C0 E0            [24]  706 	push	acc
      00010C 12 02 CE         [24]  707 	lcall	_printf
      00010F 15 81            [12]  708 	dec	sp
      000111 15 81            [12]  709 	dec	sp
      000113 15 81            [12]  710 	dec	sp
                                    711 ;	pwm.c:51: printf(" M - MIN FREQUENCY MODE\n\r");
      000115 74 87            [12]  712 	mov	a,#___str_5
      000117 C0 E0            [24]  713 	push	acc
      000119 74 0D            [12]  714 	mov	a,#(___str_5 >> 8)
      00011B C0 E0            [24]  715 	push	acc
      00011D 74 80            [12]  716 	mov	a,#0x80
      00011F C0 E0            [24]  717 	push	acc
      000121 12 02 CE         [24]  718 	lcall	_printf
      000124 15 81            [12]  719 	dec	sp
      000126 15 81            [12]  720 	dec	sp
      000128 15 81            [12]  721 	dec	sp
                                    722 ;	pwm.c:52: printf(" I - IDLE MODE\n\r");
      00012A 74 A1            [12]  723 	mov	a,#___str_6
      00012C C0 E0            [24]  724 	push	acc
      00012E 74 0D            [12]  725 	mov	a,#(___str_6 >> 8)
      000130 C0 E0            [24]  726 	push	acc
      000132 74 80            [12]  727 	mov	a,#0x80
      000134 C0 E0            [24]  728 	push	acc
      000136 12 02 CE         [24]  729 	lcall	_printf
      000139 15 81            [12]  730 	dec	sp
      00013B 15 81            [12]  731 	dec	sp
      00013D 15 81            [12]  732 	dec	sp
                                    733 ;	pwm.c:53: printf(" P - POWER DOWN MODE\n\r");
      00013F 74 B2            [12]  734 	mov	a,#___str_7
      000141 C0 E0            [24]  735 	push	acc
      000143 74 0D            [12]  736 	mov	a,#(___str_7 >> 8)
      000145 C0 E0            [24]  737 	push	acc
      000147 74 80            [12]  738 	mov	a,#0x80
      000149 C0 E0            [24]  739 	push	acc
      00014B 12 02 CE         [24]  740 	lcall	_printf
      00014E 15 81            [12]  741 	dec	sp
      000150 15 81            [12]  742 	dec	sp
      000152 15 81            [12]  743 	dec	sp
                                    744 ;	pwm.c:55: TCON = 0x01;
      000154 75 88 01         [24]  745 	mov	_TCON,#0x01
                                    746 ;	pwm.c:56: IE = 0x81;
      000157 75 A8 81         [24]  747 	mov	_IE,#0x81
                                    748 ;	pwm.c:58: while(1)
      00015A                        749 00110$:
                                    750 ;	pwm.c:61: command = getchar();    // Wait for input
      00015A 12 00 8F         [24]  751 	lcall	_getchar
      00015D AE 82            [24]  752 	mov	r6,dpl
                                    753 ;	pwm.c:64: putchar(command);
      00015F 8E 05            [24]  754 	mov	ar5,r6
      000161 7F 00            [12]  755 	mov	r7,#0x00
      000163 8D 82            [24]  756 	mov	dpl,r5
      000165 8F 83            [24]  757 	mov	dph,r7
      000167 C0 06            [24]  758 	push	ar6
      000169 12 00 70         [24]  759 	lcall	_putchar
                                    760 ;	pwm.c:65: printf("\n\r");        // New line after command
      00016C 74 C9            [12]  761 	mov	a,#___str_8
      00016E C0 E0            [24]  762 	push	acc
      000170 74 0D            [12]  763 	mov	a,#(___str_8 >> 8)
      000172 C0 E0            [24]  764 	push	acc
      000174 74 80            [12]  765 	mov	a,#0x80
      000176 C0 E0            [24]  766 	push	acc
      000178 12 02 CE         [24]  767 	lcall	_printf
      00017B 15 81            [12]  768 	dec	sp
      00017D 15 81            [12]  769 	dec	sp
      00017F 15 81            [12]  770 	dec	sp
      000181 D0 06            [24]  771 	pop	ar6
                                    772 ;	pwm.c:67: switch(command)
      000183 BE 46 02         [24]  773 	cjne	r6,#0x46,00142$
      000186 80 23            [24]  774 	sjmp	00103$
      000188                        775 00142$:
      000188 BE 49 02         [24]  776 	cjne	r6,#0x49,00143$
      00018B 80 28            [24]  777 	sjmp	00105$
      00018D                        778 00143$:
      00018D BE 4D 02         [24]  779 	cjne	r6,#0x4d,00144$
      000190 80 1E            [24]  780 	sjmp	00104$
      000192                        781 00144$:
      000192 BE 50 02         [24]  782 	cjne	r6,#0x50,00145$
      000195 80 23            [24]  783 	sjmp	00106$
      000197                        784 00145$:
      000197 BE 52 02         [24]  785 	cjne	r6,#0x52,00146$
      00019A 80 05            [24]  786 	sjmp	00101$
      00019C                        787 00146$:
                                    788 ;	pwm.c:69: case 'R':
      00019C BE 53 20         [24]  789 	cjne	r6,#0x53,00107$
      00019F 80 05            [24]  790 	sjmp	00102$
      0001A1                        791 00101$:
                                    792 ;	pwm.c:70: pwm_start();
      0001A1 12 02 4E         [24]  793 	lcall	_pwm_start
                                    794 ;	pwm.c:71: break;
                                    795 ;	pwm.c:72: case 'S':
      0001A4 80 B4            [24]  796 	sjmp	00110$
      0001A6                        797 00102$:
                                    798 ;	pwm.c:73: pwm_stop();
      0001A6 12 02 67         [24]  799 	lcall	_pwm_stop
                                    800 ;	pwm.c:74: break;
                                    801 ;	pwm.c:75: case 'F':
      0001A9 80 AF            [24]  802 	sjmp	00110$
      0001AB                        803 00103$:
                                    804 ;	pwm.c:76: freq_max();
      0001AB 12 02 09         [24]  805 	lcall	_freq_max
                                    806 ;	pwm.c:77: break;
                                    807 ;	pwm.c:78: case 'M':
      0001AE 80 AA            [24]  808 	sjmp	00110$
      0001B0                        809 00104$:
                                    810 ;	pwm.c:79: freq_min();
      0001B0 12 02 22         [24]  811 	lcall	_freq_min
                                    812 ;	pwm.c:80: break;
                                    813 ;	pwm.c:81: case 'I':
      0001B3 80 A5            [24]  814 	sjmp	00110$
      0001B5                        815 00105$:
                                    816 ;	pwm.c:82: idle_mode();
      0001B5 12 01 D7         [24]  817 	lcall	_idle_mode
                                    818 ;	pwm.c:83: break;
                                    819 ;	pwm.c:84: case 'P':
      0001B8 80 A0            [24]  820 	sjmp	00110$
      0001BA                        821 00106$:
                                    822 ;	pwm.c:85: power_down_mode();
      0001BA 12 01 F0         [24]  823 	lcall	_power_down_mode
                                    824 ;	pwm.c:86: break;
                                    825 ;	pwm.c:87: default:
      0001BD 80 9B            [24]  826 	sjmp	00110$
      0001BF                        827 00107$:
                                    828 ;	pwm.c:88: printf("Invalid Command\n\r");
      0001BF 74 CC            [12]  829 	mov	a,#___str_9
      0001C1 C0 E0            [24]  830 	push	acc
      0001C3 74 0D            [12]  831 	mov	a,#(___str_9 >> 8)
      0001C5 C0 E0            [24]  832 	push	acc
      0001C7 74 80            [12]  833 	mov	a,#0x80
      0001C9 C0 E0            [24]  834 	push	acc
      0001CB 12 02 CE         [24]  835 	lcall	_printf
      0001CE 15 81            [12]  836 	dec	sp
      0001D0 15 81            [12]  837 	dec	sp
      0001D2 15 81            [12]  838 	dec	sp
                                    839 ;	pwm.c:89: }
                                    840 ;	pwm.c:91: }
      0001D4 02 01 5A         [24]  841 	ljmp	00110$
                                    842 ;------------------------------------------------------------
                                    843 ;Allocation info for local variables in function 'idle_mode'
                                    844 ;------------------------------------------------------------
                                    845 ;	pwm.c:100: void idle_mode()
                                    846 ;	-----------------------------------------
                                    847 ;	 function idle_mode
                                    848 ;	-----------------------------------------
      0001D7                        849 _idle_mode:
                                    850 ;	pwm.c:102: printf("IDLE MODE\n\r");
      0001D7 74 DE            [12]  851 	mov	a,#___str_10
      0001D9 C0 E0            [24]  852 	push	acc
      0001DB 74 0D            [12]  853 	mov	a,#(___str_10 >> 8)
      0001DD C0 E0            [24]  854 	push	acc
      0001DF 74 80            [12]  855 	mov	a,#0x80
      0001E1 C0 E0            [24]  856 	push	acc
      0001E3 12 02 CE         [24]  857 	lcall	_printf
      0001E6 15 81            [12]  858 	dec	sp
      0001E8 15 81            [12]  859 	dec	sp
      0001EA 15 81            [12]  860 	dec	sp
                                    861 ;	pwm.c:103: PCON = 0x01;
      0001EC 75 87 01         [24]  862 	mov	_PCON,#0x01
                                    863 ;	pwm.c:104: }
      0001EF 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'power_down_mode'
                                    867 ;------------------------------------------------------------
                                    868 ;	pwm.c:106: void power_down_mode()
                                    869 ;	-----------------------------------------
                                    870 ;	 function power_down_mode
                                    871 ;	-----------------------------------------
      0001F0                        872 _power_down_mode:
                                    873 ;	pwm.c:108: printf("POWER DOWN MODE\n\r");
      0001F0 74 EA            [12]  874 	mov	a,#___str_11
      0001F2 C0 E0            [24]  875 	push	acc
      0001F4 74 0D            [12]  876 	mov	a,#(___str_11 >> 8)
      0001F6 C0 E0            [24]  877 	push	acc
      0001F8 74 80            [12]  878 	mov	a,#0x80
      0001FA C0 E0            [24]  879 	push	acc
      0001FC 12 02 CE         [24]  880 	lcall	_printf
      0001FF 15 81            [12]  881 	dec	sp
      000201 15 81            [12]  882 	dec	sp
      000203 15 81            [12]  883 	dec	sp
                                    884 ;	pwm.c:109: PCON = 0x02;
      000205 75 87 02         [24]  885 	mov	_PCON,#0x02
                                    886 ;	pwm.c:110: }
      000208 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'freq_max'
                                    890 ;------------------------------------------------------------
                                    891 ;	pwm.c:111: void freq_max()
                                    892 ;	-----------------------------------------
                                    893 ;	 function freq_max
                                    894 ;	-----------------------------------------
      000209                        895 _freq_max:
                                    896 ;	pwm.c:113: printf("MAXIMUM FREQUENCY\n\r");
      000209 74 FC            [12]  897 	mov	a,#___str_12
      00020B C0 E0            [24]  898 	push	acc
      00020D 74 0D            [12]  899 	mov	a,#(___str_12 >> 8)
      00020F C0 E0            [24]  900 	push	acc
      000211 74 80            [12]  901 	mov	a,#0x80
      000213 C0 E0            [24]  902 	push	acc
      000215 12 02 CE         [24]  903 	lcall	_printf
      000218 15 81            [12]  904 	dec	sp
      00021A 15 81            [12]  905 	dec	sp
      00021C 15 81            [12]  906 	dec	sp
                                    907 ;	pwm.c:114: CKRL = 0xFF;
      00021E 75 97 FF         [24]  908 	mov	_CKRL,#0xff
                                    909 ;	pwm.c:115: }
      000221 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'freq_min'
                                    913 ;------------------------------------------------------------
                                    914 ;	pwm.c:117: void freq_min()
                                    915 ;	-----------------------------------------
                                    916 ;	 function freq_min
                                    917 ;	-----------------------------------------
      000222                        918 _freq_min:
                                    919 ;	pwm.c:119: printf("MINIMUM FREQUENCY\n\r");
      000222 74 10            [12]  920 	mov	a,#___str_13
      000224 C0 E0            [24]  921 	push	acc
      000226 74 0E            [12]  922 	mov	a,#(___str_13 >> 8)
      000228 C0 E0            [24]  923 	push	acc
      00022A 74 80            [12]  924 	mov	a,#0x80
      00022C C0 E0            [24]  925 	push	acc
      00022E 12 02 CE         [24]  926 	lcall	_printf
      000231 15 81            [12]  927 	dec	sp
      000233 15 81            [12]  928 	dec	sp
      000235 15 81            [12]  929 	dec	sp
                                    930 ;	pwm.c:120: CKRL = 0x00;
      000237 75 97 00         [24]  931 	mov	_CKRL,#0x00
                                    932 ;	pwm.c:121: }
      00023A 22               [24]  933 	ret
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'pwm_init'
                                    936 ;------------------------------------------------------------
                                    937 ;	pwm.c:122: void pwm_init()
                                    938 ;	-----------------------------------------
                                    939 ;	 function pwm_init
                                    940 ;	-----------------------------------------
      00023B                        941 _pwm_init:
                                    942 ;	pwm.c:124: CMOD = 0X82;
      00023B 75 D9 82         [24]  943 	mov	_CMOD,#0x82
                                    944 ;	pwm.c:125: CL = 0X00;
      00023E 75 E9 00         [24]  945 	mov	_CL,#0x00
                                    946 ;	pwm.c:126: CH = 0X00;
      000241 75 F9 00         [24]  947 	mov	_CH,#0x00
                                    948 ;	pwm.c:128: CCAP0L = 0X1C;
      000244 75 EA 1C         [24]  949 	mov	_CCAP0L,#0x1c
                                    950 ;	pwm.c:129: CCAP0H = 0X1C;
      000247 75 FA 1C         [24]  951 	mov	_CCAP0H,#0x1c
                                    952 ;	pwm.c:130: CCAPM0 = 0X42;
      00024A 75 DA 42         [24]  953 	mov	_CCAPM0,#0x42
                                    954 ;	pwm.c:131: }
      00024D 22               [24]  955 	ret
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'pwm_start'
                                    958 ;------------------------------------------------------------
                                    959 ;	pwm.c:133: void pwm_start()
                                    960 ;	-----------------------------------------
                                    961 ;	 function pwm_start
                                    962 ;	-----------------------------------------
      00024E                        963 _pwm_start:
                                    964 ;	pwm.c:135: printf("PWM START\n\r");
      00024E 74 24            [12]  965 	mov	a,#___str_14
      000250 C0 E0            [24]  966 	push	acc
      000252 74 0E            [12]  967 	mov	a,#(___str_14 >> 8)
      000254 C0 E0            [24]  968 	push	acc
      000256 74 80            [12]  969 	mov	a,#0x80
      000258 C0 E0            [24]  970 	push	acc
      00025A 12 02 CE         [24]  971 	lcall	_printf
      00025D 15 81            [12]  972 	dec	sp
      00025F 15 81            [12]  973 	dec	sp
      000261 15 81            [12]  974 	dec	sp
                                    975 ;	pwm.c:136: CCON = 0x40;
      000263 75 D8 40         [24]  976 	mov	_CCON,#0x40
                                    977 ;	pwm.c:137: }
      000266 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'pwm_stop'
                                    981 ;------------------------------------------------------------
                                    982 ;	pwm.c:139: void pwm_stop()
                                    983 ;	-----------------------------------------
                                    984 ;	 function pwm_stop
                                    985 ;	-----------------------------------------
      000267                        986 _pwm_stop:
                                    987 ;	pwm.c:141: printf("PWM STOP\n\r");
      000267 74 30            [12]  988 	mov	a,#___str_15
      000269 C0 E0            [24]  989 	push	acc
      00026B 74 0E            [12]  990 	mov	a,#(___str_15 >> 8)
      00026D C0 E0            [24]  991 	push	acc
      00026F 74 80            [12]  992 	mov	a,#0x80
      000271 C0 E0            [24]  993 	push	acc
      000273 12 02 CE         [24]  994 	lcall	_printf
      000276 15 81            [12]  995 	dec	sp
      000278 15 81            [12]  996 	dec	sp
      00027A 15 81            [12]  997 	dec	sp
                                    998 ;	pwm.c:142: CCON = 0x00;
      00027C 75 D8 00         [24]  999 	mov	_CCON,#0x00
                                   1000 ;	pwm.c:143: }
      00027F 22               [24] 1001 	ret
                                   1002 	.area CSEG    (CODE)
                                   1003 	.area CONST   (CODE)
                                   1004 	.area CONST   (CODE)
      000D30                       1005 ___str_0:
      000D30 50 43 41 20 4D 4F 44  1006 	.ascii "PCA MODE : PWM"
             45 20 3A 20 50 57 4D
      000D3E 0A                    1007 	.db 0x0a
      000D3F 0D                    1008 	.db 0x0d
      000D40 00                    1009 	.db 0x00
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
      000D41                       1012 ___str_1:
      000D41 43 4F 4D 4D 41 4E 44  1013 	.ascii "COMMANDS :"
             53 20 3A
      000D4B 0A                    1014 	.db 0x0a
      000D4C 0D                    1015 	.db 0x0d
      000D4D 00                    1016 	.db 0x00
                                   1017 	.area CSEG    (CODE)
                                   1018 	.area CONST   (CODE)
      000D4E                       1019 ___str_2:
      000D4E 20 52 20 2D 20 52 55  1020 	.ascii " R - RUN PWM"
             4E 20 50 57 4D
      000D5A 0A                    1021 	.db 0x0a
      000D5B 0D                    1022 	.db 0x0d
      000D5C 00                    1023 	.db 0x00
                                   1024 	.area CSEG    (CODE)
                                   1025 	.area CONST   (CODE)
      000D5D                       1026 ___str_3:
      000D5D 20 53 20 2D 20 53 54  1027 	.ascii " S - STOP PWM"
             4F 50 20 50 57 4D
      000D6A 0A                    1028 	.db 0x0a
      000D6B 0D                    1029 	.db 0x0d
      000D6C 00                    1030 	.db 0x00
                                   1031 	.area CSEG    (CODE)
                                   1032 	.area CONST   (CODE)
      000D6D                       1033 ___str_4:
      000D6D 20 46 20 2D 20 4D 41  1034 	.ascii " F - MAX FREQUENCY MODE"
             58 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000D84 0A                    1035 	.db 0x0a
      000D85 0D                    1036 	.db 0x0d
      000D86 00                    1037 	.db 0x00
                                   1038 	.area CSEG    (CODE)
                                   1039 	.area CONST   (CODE)
      000D87                       1040 ___str_5:
      000D87 20 4D 20 2D 20 4D 49  1041 	.ascii " M - MIN FREQUENCY MODE"
             4E 20 46 52 45 51 55
             45 4E 43 59 20 4D 4F
             44 45
      000D9E 0A                    1042 	.db 0x0a
      000D9F 0D                    1043 	.db 0x0d
      000DA0 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      000DA1                       1047 ___str_6:
      000DA1 20 49 20 2D 20 49 44  1048 	.ascii " I - IDLE MODE"
             4C 45 20 4D 4F 44 45
      000DAF 0A                    1049 	.db 0x0a
      000DB0 0D                    1050 	.db 0x0d
      000DB1 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      000DB2                       1054 ___str_7:
      000DB2 20 50 20 2D 20 50 4F  1055 	.ascii " P - POWER DOWN MODE"
             57 45 52 20 44 4F 57
             4E 20 4D 4F 44 45
      000DC6 0A                    1056 	.db 0x0a
      000DC7 0D                    1057 	.db 0x0d
      000DC8 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area CONST   (CODE)
      000DC9                       1061 ___str_8:
      000DC9 0A                    1062 	.db 0x0a
      000DCA 0D                    1063 	.db 0x0d
      000DCB 00                    1064 	.db 0x00
                                   1065 	.area CSEG    (CODE)
                                   1066 	.area CONST   (CODE)
      000DCC                       1067 ___str_9:
      000DCC 49 6E 76 61 6C 69 64  1068 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      000DDB 0A                    1069 	.db 0x0a
      000DDC 0D                    1070 	.db 0x0d
      000DDD 00                    1071 	.db 0x00
                                   1072 	.area CSEG    (CODE)
                                   1073 	.area CONST   (CODE)
      000DDE                       1074 ___str_10:
      000DDE 49 44 4C 45 20 4D 4F  1075 	.ascii "IDLE MODE"
             44 45
      000DE7 0A                    1076 	.db 0x0a
      000DE8 0D                    1077 	.db 0x0d
      000DE9 00                    1078 	.db 0x00
                                   1079 	.area CSEG    (CODE)
                                   1080 	.area CONST   (CODE)
      000DEA                       1081 ___str_11:
      000DEA 50 4F 57 45 52 20 44  1082 	.ascii "POWER DOWN MODE"
             4F 57 4E 20 4D 4F 44
             45
      000DF9 0A                    1083 	.db 0x0a
      000DFA 0D                    1084 	.db 0x0d
      000DFB 00                    1085 	.db 0x00
                                   1086 	.area CSEG    (CODE)
                                   1087 	.area CONST   (CODE)
      000DFC                       1088 ___str_12:
      000DFC 4D 41 58 49 4D 55 4D  1089 	.ascii "MAXIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E0D 0A                    1090 	.db 0x0a
      000E0E 0D                    1091 	.db 0x0d
      000E0F 00                    1092 	.db 0x00
                                   1093 	.area CSEG    (CODE)
                                   1094 	.area CONST   (CODE)
      000E10                       1095 ___str_13:
      000E10 4D 49 4E 49 4D 55 4D  1096 	.ascii "MINIMUM FREQUENCY"
             20 46 52 45 51 55 45
             4E 43 59
      000E21 0A                    1097 	.db 0x0a
      000E22 0D                    1098 	.db 0x0d
      000E23 00                    1099 	.db 0x00
                                   1100 	.area CSEG    (CODE)
                                   1101 	.area CONST   (CODE)
      000E24                       1102 ___str_14:
      000E24 50 57 4D 20 53 54 41  1103 	.ascii "PWM START"
             52 54
      000E2D 0A                    1104 	.db 0x0a
      000E2E 0D                    1105 	.db 0x0d
      000E2F 00                    1106 	.db 0x00
                                   1107 	.area CSEG    (CODE)
                                   1108 	.area CONST   (CODE)
      000E30                       1109 ___str_15:
      000E30 50 57 4D 20 53 54 4F  1110 	.ascii "PWM STOP"
             50
      000E38 0A                    1111 	.db 0x0a
      000E39 0D                    1112 	.db 0x0d
      000E3A 00                    1113 	.db 0x00
                                   1114 	.area CSEG    (CODE)
                                   1115 	.area XINIT   (CODE)
                                   1116 	.area CABS    (ABS,CODE)
