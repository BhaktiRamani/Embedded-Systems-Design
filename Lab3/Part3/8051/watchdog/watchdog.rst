                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module watchdog
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _PCA_ISR
                                     12 	.globl _main
                                     13 	.globl _getchar
                                     14 	.globl _putchar
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
                                    225 	.globl _refresh_wdt
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           0000C8   231 _T2CON	=	0x00c8
                           0000CA   232 _RCAP2L	=	0x00ca
                           0000CB   233 _RCAP2H	=	0x00cb
                           0000CC   234 _TL2	=	0x00cc
                           0000CD   235 _TH2	=	0x00cd
                           00008E   236 _AUXR	=	0x008e
                           0000A2   237 _AUXR1	=	0x00a2
                           000097   238 _CKRL	=	0x0097
                           00008F   239 _CKCON0	=	0x008f
                           0000AF   240 _CKCON1	=	0x00af
                           0000FA   241 _CCAP0H	=	0x00fa
                           0000FB   242 _CCAP1H	=	0x00fb
                           0000FC   243 _CCAP2H	=	0x00fc
                           0000FD   244 _CCAP3H	=	0x00fd
                           0000FE   245 _CCAP4H	=	0x00fe
                           0000EA   246 _CCAP0L	=	0x00ea
                           0000EB   247 _CCAP1L	=	0x00eb
                           0000EC   248 _CCAP2L	=	0x00ec
                           0000ED   249 _CCAP3L	=	0x00ed
                           0000EE   250 _CCAP4L	=	0x00ee
                           0000DA   251 _CCAPM0	=	0x00da
                           0000DB   252 _CCAPM1	=	0x00db
                           0000DC   253 _CCAPM2	=	0x00dc
                           0000DD   254 _CCAPM3	=	0x00dd
                           0000DE   255 _CCAPM4	=	0x00de
                           0000D8   256 _CCON	=	0x00d8
                           0000F9   257 _CH	=	0x00f9
                           0000E9   258 _CL	=	0x00e9
                           0000D9   259 _CMOD	=	0x00d9
                           0000A8   260 _IEN0	=	0x00a8
                           0000B1   261 _IEN1	=	0x00b1
                           0000B8   262 _IPL0	=	0x00b8
                           0000B7   263 _IPH0	=	0x00b7
                           0000B2   264 _IPL1	=	0x00b2
                           0000B3   265 _IPH1	=	0x00b3
                           0000C0   266 _P4	=	0x00c0
                           0000E8   267 _P5	=	0x00e8
                           0000A6   268 _WDTRST	=	0x00a6
                           0000A7   269 _WDTPRG	=	0x00a7
                           0000A9   270 _SADDR	=	0x00a9
                           0000B9   271 _SADEN	=	0x00b9
                           0000C3   272 _SPCON	=	0x00c3
                           0000C4   273 _SPSTA	=	0x00c4
                           0000C5   274 _SPDAT	=	0x00c5
                           0000C9   275 _T2MOD	=	0x00c9
                           00009B   276 _BDRCON	=	0x009b
                           00009A   277 _BRL	=	0x009a
                           00009C   278 _KBLS	=	0x009c
                           00009D   279 _KBE	=	0x009d
                           00009E   280 _KBF	=	0x009e
                           0000D2   281 _EECON	=	0x00d2
                           0000E0   282 _ACC	=	0x00e0
                           0000F0   283 _B	=	0x00f0
                           000083   284 _DPH	=	0x0083
                           000083   285 _DP0H	=	0x0083
                           000082   286 _DPL	=	0x0082
                           000082   287 _DP0L	=	0x0082
                           0000A8   288 _IE	=	0x00a8
                           0000B8   289 _IP	=	0x00b8
                           000080   290 _P0	=	0x0080
                           000090   291 _P1	=	0x0090
                           0000A0   292 _P2	=	0x00a0
                           0000B0   293 _P3	=	0x00b0
                           000087   294 _PCON	=	0x0087
                           0000D0   295 _PSW	=	0x00d0
                           000099   296 _SBUF	=	0x0099
                           000099   297 _SBUF0	=	0x0099
                           000098   298 _SCON	=	0x0098
                           000081   299 _SP	=	0x0081
                           000088   300 _TCON	=	0x0088
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           000089   305 _TMOD	=	0x0089
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           0000AD   311 _ET2	=	0x00ad
                           0000BD   312 _PT2	=	0x00bd
                           0000C8   313 _T2CON_0	=	0x00c8
                           0000C9   314 _T2CON_1	=	0x00c9
                           0000CA   315 _T2CON_2	=	0x00ca
                           0000CB   316 _T2CON_3	=	0x00cb
                           0000CC   317 _T2CON_4	=	0x00cc
                           0000CD   318 _T2CON_5	=	0x00cd
                           0000CE   319 _T2CON_6	=	0x00ce
                           0000CF   320 _T2CON_7	=	0x00cf
                           0000C8   321 _CP_RL2	=	0x00c8
                           0000C9   322 _C_T2	=	0x00c9
                           0000CA   323 _TR2	=	0x00ca
                           0000CB   324 _EXEN2	=	0x00cb
                           0000CC   325 _TCLK	=	0x00cc
                           0000CD   326 _RCLK	=	0x00cd
                           0000CE   327 _EXF2	=	0x00ce
                           0000CF   328 _TF2	=	0x00cf
                           0000DF   329 _CF	=	0x00df
                           0000DE   330 _CR	=	0x00de
                           0000DC   331 _CCF4	=	0x00dc
                           0000DB   332 _CCF3	=	0x00db
                           0000DA   333 _CCF2	=	0x00da
                           0000D9   334 _CCF1	=	0x00d9
                           0000D8   335 _CCF0	=	0x00d8
                           0000AE   336 _EC	=	0x00ae
                           0000BE   337 _PPCL	=	0x00be
                           0000BD   338 _PT2L	=	0x00bd
                           0000BC   339 _PSL	=	0x00bc
                           0000BB   340 _PT1L	=	0x00bb
                           0000BA   341 _PX1L	=	0x00ba
                           0000B9   342 _PT0L	=	0x00b9
                           0000B8   343 _PX0L	=	0x00b8
                           0000C0   344 _P4_0	=	0x00c0
                           0000C1   345 _P4_1	=	0x00c1
                           0000C2   346 _P4_2	=	0x00c2
                           0000C3   347 _P4_3	=	0x00c3
                           0000C4   348 _P4_4	=	0x00c4
                           0000C5   349 _P4_5	=	0x00c5
                           0000C6   350 _P4_6	=	0x00c6
                           0000C7   351 _P4_7	=	0x00c7
                           0000E8   352 _P5_0	=	0x00e8
                           0000E9   353 _P5_1	=	0x00e9
                           0000EA   354 _P5_2	=	0x00ea
                           0000EB   355 _P5_3	=	0x00eb
                           0000EC   356 _P5_4	=	0x00ec
                           0000ED   357 _P5_5	=	0x00ed
                           0000EE   358 _P5_6	=	0x00ee
                           0000EF   359 _P5_7	=	0x00ef
                           0000F0   360 _BREG_F0	=	0x00f0
                           0000F1   361 _BREG_F1	=	0x00f1
                           0000F2   362 _BREG_F2	=	0x00f2
                           0000F3   363 _BREG_F3	=	0x00f3
                           0000F4   364 _BREG_F4	=	0x00f4
                           0000F5   365 _BREG_F5	=	0x00f5
                           0000F6   366 _BREG_F6	=	0x00f6
                           0000F7   367 _BREG_F7	=	0x00f7
                           0000A8   368 _EX0	=	0x00a8
                           0000A9   369 _ET0	=	0x00a9
                           0000AA   370 _EX1	=	0x00aa
                           0000AB   371 _ET1	=	0x00ab
                           0000AC   372 _ES	=	0x00ac
                           0000AF   373 _EA	=	0x00af
                           0000B8   374 _PX0	=	0x00b8
                           0000B9   375 _PT0	=	0x00b9
                           0000BA   376 _PX1	=	0x00ba
                           0000BB   377 _PT1	=	0x00bb
                           0000BC   378 _PS	=	0x00bc
                           000080   379 _P0_0	=	0x0080
                           000081   380 _P0_1	=	0x0081
                           000082   381 _P0_2	=	0x0082
                           000083   382 _P0_3	=	0x0083
                           000084   383 _P0_4	=	0x0084
                           000085   384 _P0_5	=	0x0085
                           000086   385 _P0_6	=	0x0086
                           000087   386 _P0_7	=	0x0087
                           000090   387 _P1_0	=	0x0090
                           000091   388 _P1_1	=	0x0091
                           000092   389 _P1_2	=	0x0092
                           000093   390 _P1_3	=	0x0093
                           000094   391 _P1_4	=	0x0094
                           000095   392 _P1_5	=	0x0095
                           000096   393 _P1_6	=	0x0096
                           000097   394 _P1_7	=	0x0097
                           0000A0   395 _P2_0	=	0x00a0
                           0000A1   396 _P2_1	=	0x00a1
                           0000A2   397 _P2_2	=	0x00a2
                           0000A3   398 _P2_3	=	0x00a3
                           0000A4   399 _P2_4	=	0x00a4
                           0000A5   400 _P2_5	=	0x00a5
                           0000A6   401 _P2_6	=	0x00a6
                           0000A7   402 _P2_7	=	0x00a7
                           0000B0   403 _P3_0	=	0x00b0
                           0000B1   404 _P3_1	=	0x00b1
                           0000B2   405 _P3_2	=	0x00b2
                           0000B3   406 _P3_3	=	0x00b3
                           0000B4   407 _P3_4	=	0x00b4
                           0000B5   408 _P3_5	=	0x00b5
                           0000B6   409 _P3_6	=	0x00b6
                           0000B7   410 _P3_7	=	0x00b7
                           0000B0   411 _RXD	=	0x00b0
                           0000B0   412 _RXD0	=	0x00b0
                           0000B1   413 _TXD	=	0x00b1
                           0000B1   414 _TXD0	=	0x00b1
                           0000B2   415 _INT0	=	0x00b2
                           0000B3   416 _INT1	=	0x00b3
                           0000B4   417 _T0	=	0x00b4
                           0000B5   418 _T1	=	0x00b5
                           0000B6   419 _WR	=	0x00b6
                           0000B7   420 _RD	=	0x00b7
                           0000D0   421 _P	=	0x00d0
                           0000D1   422 _F1	=	0x00d1
                           0000D2   423 _OV	=	0x00d2
                           0000D3   424 _RS0	=	0x00d3
                           0000D4   425 _RS1	=	0x00d4
                           0000D5   426 _F0	=	0x00d5
                           0000D6   427 _AC	=	0x00d6
                           0000D7   428 _CY	=	0x00d7
                           000098   429 _RI	=	0x0098
                           000099   430 _TI	=	0x0099
                           00009A   431 _RB8	=	0x009a
                           00009B   432 _TB8	=	0x009b
                           00009C   433 _REN	=	0x009c
                           00009D   434 _SM2	=	0x009d
                           00009E   435 _SM1	=	0x009e
                           00009F   436 _SM0	=	0x009f
                           000088   437 _IT0	=	0x0088
                           000089   438 _IE0	=	0x0089
                           00008A   439 _IT1	=	0x008a
                           00008B   440 _IE1	=	0x008b
                           00008C   441 _TR0	=	0x008c
                           00008D   442 _TF0	=	0x008d
                           00008E   443 _TR1	=	0x008e
                           00008F   444 _TF1	=	0x008f
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable bit register bank
                                    452 ;--------------------------------------------------------
                                    453 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        454 bits:
      000020                        455 	.ds 1
                           008000   456 	b0 = bits[0]
                           008100   457 	b1 = bits[1]
                           008200   458 	b2 = bits[2]
                           008300   459 	b3 = bits[3]
                           008400   460 	b4 = bits[4]
                           008500   461 	b5 = bits[5]
                           008600   462 	b6 = bits[6]
                           008700   463 	b7 = bits[7]
                                    464 ;--------------------------------------------------------
                                    465 ; internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area DSEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; overlayable items in internal ram 
                                    470 ;--------------------------------------------------------
                                    471 ;--------------------------------------------------------
                                    472 ; Stack segment in internal ram 
                                    473 ;--------------------------------------------------------
                                    474 	.area	SSEG
      000021                        475 __start__stack:
      000021                        476 	.ds	1
                                    477 
                                    478 ;--------------------------------------------------------
                                    479 ; indirectly addressable internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area ISEG    (DATA)
                                    482 ;--------------------------------------------------------
                                    483 ; absolute internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area IABS    (ABS,DATA)
                                    486 	.area IABS    (ABS,DATA)
                                    487 ;--------------------------------------------------------
                                    488 ; bit data
                                    489 ;--------------------------------------------------------
                                    490 	.area BSEG    (BIT)
                                    491 ;--------------------------------------------------------
                                    492 ; paged external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area PSEG    (PAG,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XSEG    (XDATA)
      000400                        499 _putchar_charToSend_65536_13:
      000400                        500 	.ds 2
                                    501 ;--------------------------------------------------------
                                    502 ; absolute external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XABS    (ABS,XDATA)
                                    505 ;--------------------------------------------------------
                                    506 ; external initialized ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XISEG   (XDATA)
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT0 (CODE)
                                    511 	.area GSINIT1 (CODE)
                                    512 	.area GSINIT2 (CODE)
                                    513 	.area GSINIT3 (CODE)
                                    514 	.area GSINIT4 (CODE)
                                    515 	.area GSINIT5 (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area CSEG    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; interrupt vector 
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
      005000                        523 __interrupt_vect:
      005000 02 50 39         [24]  524 	ljmp	__sdcc_gsinit_startup
      005003 32               [24]  525 	reti
      005004                        526 	.ds	7
      00500B 32               [24]  527 	reti
      00500C                        528 	.ds	7
      005013 32               [24]  529 	reti
      005014                        530 	.ds	7
      00501B 32               [24]  531 	reti
      00501C                        532 	.ds	7
      005023 32               [24]  533 	reti
      005024                        534 	.ds	7
      00502B 32               [24]  535 	reti
      00502C                        536 	.ds	7
      005033 02 51 19         [24]  537 	ljmp	_PCA_ISR
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.globl __sdcc_gsinit_startup
                                    546 	.globl __sdcc_program_startup
                                    547 	.globl __start__stack
                                    548 	.globl __mcs51_genXINIT
                                    549 	.globl __mcs51_genXRAMCLEAR
                                    550 	.globl __mcs51_genRAMCLEAR
                                    551 	.area GSFINAL (CODE)
      005092 02 50 36         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      005036                        558 __sdcc_program_startup:
      005036 02 50 C2         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'putchar'
                                    567 ;------------------------------------------------------------
                                    568 ;charToSend                Allocated with name '_putchar_charToSend_65536_13'
                                    569 ;------------------------------------------------------------
                                    570 ;	watchdog.c:8: int putchar(int charToSend) {
                                    571 ;	-----------------------------------------
                                    572 ;	 function putchar
                                    573 ;	-----------------------------------------
      005095                        574 _putchar:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
      005095 AF 83            [24]  583 	mov	r7,dph
      005097 E5 82            [12]  584 	mov	a,dpl
      005099 90 04 00         [24]  585 	mov	dptr,#_putchar_charToSend_65536_13
      00509C F0               [24]  586 	movx	@dptr,a
      00509D EF               [12]  587 	mov	a,r7
      00509E A3               [24]  588 	inc	dptr
      00509F F0               [24]  589 	movx	@dptr,a
                                    590 ;	watchdog.c:9: SBUF = charToSend;  // Send character to serial buffer
      0050A0 90 04 00         [24]  591 	mov	dptr,#_putchar_charToSend_65536_13
      0050A3 E0               [24]  592 	movx	a,@dptr
      0050A4 FE               [12]  593 	mov	r6,a
      0050A5 A3               [24]  594 	inc	dptr
      0050A6 E0               [24]  595 	movx	a,@dptr
      0050A7 FF               [12]  596 	mov	r7,a
      0050A8 8E 99            [24]  597 	mov	_SBUF,r6
                                    598 ;	watchdog.c:10: while (!TI);        // Wait for transmission to complete
      0050AA                        599 00101$:
                                    600 ;	watchdog.c:11: TI = 0;            // Clear transmission interrupt flag
                                    601 ;	assignBit
      0050AA 10 99 02         [24]  602 	jbc	_TI,00114$
      0050AD 80 FB            [24]  603 	sjmp	00101$
      0050AF                        604 00114$:
                                    605 ;	watchdog.c:12: return charToSend;
      0050AF 8E 82            [24]  606 	mov	dpl,r6
      0050B1 8F 83            [24]  607 	mov	dph,r7
                                    608 ;	watchdog.c:13: }
      0050B3 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'getchar'
                                    612 ;------------------------------------------------------------
                                    613 ;	watchdog.c:19: int getchar(void)
                                    614 ;	-----------------------------------------
                                    615 ;	 function getchar
                                    616 ;	-----------------------------------------
      0050B4                        617 _getchar:
                                    618 ;	watchdog.c:21: while (!RI);        // Wait for reception to complete
      0050B4                        619 00101$:
                                    620 ;	watchdog.c:22: RI = 0;            // Clear reception interrupt flag
                                    621 ;	assignBit
      0050B4 10 98 02         [24]  622 	jbc	_RI,00114$
      0050B7 80 FB            [24]  623 	sjmp	00101$
      0050B9                        624 00114$:
                                    625 ;	watchdog.c:23: return SBUF;       // Return received character
      0050B9 AE 99            [24]  626 	mov	r6,_SBUF
      0050BB 7F 00            [12]  627 	mov	r7,#0x00
      0050BD 8E 82            [24]  628 	mov	dpl,r6
      0050BF 8F 83            [24]  629 	mov	dph,r7
                                    630 ;	watchdog.c:24: }
      0050C1 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'main'
                                    634 ;------------------------------------------------------------
                                    635 ;i                         Allocated with name '_main_i_196608_20'
                                    636 ;------------------------------------------------------------
                                    637 ;	watchdog.c:28: void main(void)
                                    638 ;	-----------------------------------------
                                    639 ;	 function main
                                    640 ;	-----------------------------------------
      0050C2                        641 _main:
                                    642 ;	watchdog.c:30: printf("WATCHDOG TIMER MODE\n\r");
      0050C2 74 24            [12]  643 	mov	a,#___str_0
      0050C4 C0 E0            [24]  644 	push	acc
      0050C6 74 5C            [12]  645 	mov	a,#(___str_0 >> 8)
      0050C8 C0 E0            [24]  646 	push	acc
      0050CA 74 80            [12]  647 	mov	a,#0x80
      0050CC C0 E0            [24]  648 	push	acc
      0050CE 12 51 C2         [24]  649 	lcall	_printf
      0050D1 15 81            [12]  650 	dec	sp
      0050D3 15 81            [12]  651 	dec	sp
      0050D5 15 81            [12]  652 	dec	sp
                                    653 ;	watchdog.c:32: CMOD |= 0x42;       // PCA counter is clocked by Fosc/6, enable watchdog mode
      0050D7 43 D9 42         [24]  654 	orl	_CMOD,#0x42
                                    655 ;	watchdog.c:34: CCAPM4 = 0x4C;      // Enable WDT mode and interrupt for PCA Module 4
      0050DA 75 DE 4C         [24]  656 	mov	_CCAPM4,#0x4c
                                    657 ;	watchdog.c:35: CCAP4L = 0xFF;      // Set low byte of compare/capture register
      0050DD 75 EE FF         [24]  658 	mov	_CCAP4L,#0xff
                                    659 ;	watchdog.c:36: CCAP4H = 0xFF;      // Set high byte of compare/capture register
      0050E0 75 FE FF         [24]  660 	mov	_CCAP4H,#0xff
                                    661 ;	watchdog.c:39: EA = 1;             // Enable global interrupts
                                    662 ;	assignBit
      0050E3 D2 AF            [12]  663 	setb	_EA
                                    664 ;	watchdog.c:40: EC = 1;             // Enable PCA interrupt
                                    665 ;	assignBit
      0050E5 D2 AE            [12]  666 	setb	_EC
                                    667 ;	watchdog.c:42: while (1)
      0050E7                        668 00103$:
                                    669 ;	watchdog.c:45: printf("- - - - ");
      0050E7 74 3A            [12]  670 	mov	a,#___str_1
      0050E9 C0 E0            [24]  671 	push	acc
      0050EB 74 5C            [12]  672 	mov	a,#(___str_1 >> 8)
      0050ED C0 E0            [24]  673 	push	acc
      0050EF 74 80            [12]  674 	mov	a,#0x80
      0050F1 C0 E0            [24]  675 	push	acc
      0050F3 12 51 C2         [24]  676 	lcall	_printf
      0050F6 15 81            [12]  677 	dec	sp
      0050F8 15 81            [12]  678 	dec	sp
      0050FA 15 81            [12]  679 	dec	sp
                                    680 ;	watchdog.c:46: for (int i = 0; i < 10000; i++) {}
      0050FC 7E 00            [12]  681 	mov	r6,#0x00
      0050FE 7F 00            [12]  682 	mov	r7,#0x00
      005100                        683 00106$:
      005100 C3               [12]  684 	clr	c
      005101 EE               [12]  685 	mov	a,r6
      005102 94 10            [12]  686 	subb	a,#0x10
      005104 EF               [12]  687 	mov	a,r7
      005105 64 80            [12]  688 	xrl	a,#0x80
      005107 94 A7            [12]  689 	subb	a,#0xa7
      005109 50 DC            [24]  690 	jnc	00103$
      00510B 0E               [12]  691 	inc	r6
      00510C BE 00 F1         [24]  692 	cjne	r6,#0x00,00106$
      00510F 0F               [12]  693 	inc	r7
                                    694 ;	watchdog.c:52: }
      005110 80 EE            [24]  695 	sjmp	00106$
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'refresh_wdt'
                                    698 ;------------------------------------------------------------
                                    699 ;	watchdog.c:55: void refresh_wdt()
                                    700 ;	-----------------------------------------
                                    701 ;	 function refresh_wdt
                                    702 ;	-----------------------------------------
      005112                        703 _refresh_wdt:
                                    704 ;	watchdog.c:58: CCAP4L = 0x00;
      005112 75 EE 00         [24]  705 	mov	_CCAP4L,#0x00
                                    706 ;	watchdog.c:59: CCAP4H = 0x00;
      005115 75 FE 00         [24]  707 	mov	_CCAP4H,#0x00
                                    708 ;	watchdog.c:60: }
      005118 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'PCA_ISR'
                                    712 ;------------------------------------------------------------
                                    713 ;	watchdog.c:63: void PCA_ISR(void) __interrupt 6
                                    714 ;	-----------------------------------------
                                    715 ;	 function PCA_ISR
                                    716 ;	-----------------------------------------
      005119                        717 _PCA_ISR:
      005119 C0 20            [24]  718 	push	bits
      00511B C0 E0            [24]  719 	push	acc
      00511D C0 F0            [24]  720 	push	b
      00511F C0 82            [24]  721 	push	dpl
      005121 C0 83            [24]  722 	push	dph
      005123 C0 07            [24]  723 	push	(0+7)
      005125 C0 06            [24]  724 	push	(0+6)
      005127 C0 05            [24]  725 	push	(0+5)
      005129 C0 04            [24]  726 	push	(0+4)
      00512B C0 03            [24]  727 	push	(0+3)
      00512D C0 02            [24]  728 	push	(0+2)
      00512F C0 01            [24]  729 	push	(0+1)
      005131 C0 00            [24]  730 	push	(0+0)
      005133 C0 D0            [24]  731 	push	psw
      005135 75 D0 00         [24]  732 	mov	psw,#0x00
                                    733 ;	watchdog.c:65: if (CCF4) {           // Check if the interrupt is from Module 4 (WDT)
                                    734 ;	watchdog.c:66: CCF4 = 0;         // Clear the interrupt flag for Module 4
                                    735 ;	assignBit
      005138 10 DC 02         [24]  736 	jbc	_CCF4,00109$
      00513B 80 1A            [24]  737 	sjmp	00103$
      00513D                        738 00109$:
                                    739 ;	watchdog.c:71: CCAP4L = 0x00;
                                    740 ;	watchdog.c:72: CCAP4H = 0x00;
                                    741 ;	watchdog.c:73: printf("WATCHDOG TRIGGERED\n\r");
      00513D E4               [12]  742 	clr	a
      00513E F5 EE            [12]  743 	mov	_CCAP4L,a
      005140 F5 FE            [12]  744 	mov	_CCAP4H,a
      005142 74 43            [12]  745 	mov	a,#___str_2
      005144 C0 E0            [24]  746 	push	acc
      005146 74 5C            [12]  747 	mov	a,#(___str_2 >> 8)
      005148 C0 E0            [24]  748 	push	acc
      00514A 74 80            [12]  749 	mov	a,#0x80
      00514C C0 E0            [24]  750 	push	acc
      00514E 12 51 C2         [24]  751 	lcall	_printf
      005151 15 81            [12]  752 	dec	sp
      005153 15 81            [12]  753 	dec	sp
      005155 15 81            [12]  754 	dec	sp
      005157                        755 00103$:
                                    756 ;	watchdog.c:75: }
      005157 D0 D0            [24]  757 	pop	psw
      005159 D0 00            [24]  758 	pop	(0+0)
      00515B D0 01            [24]  759 	pop	(0+1)
      00515D D0 02            [24]  760 	pop	(0+2)
      00515F D0 03            [24]  761 	pop	(0+3)
      005161 D0 04            [24]  762 	pop	(0+4)
      005163 D0 05            [24]  763 	pop	(0+5)
      005165 D0 06            [24]  764 	pop	(0+6)
      005167 D0 07            [24]  765 	pop	(0+7)
      005169 D0 83            [24]  766 	pop	dph
      00516B D0 82            [24]  767 	pop	dpl
      00516D D0 F0            [24]  768 	pop	b
      00516F D0 E0            [24]  769 	pop	acc
      005171 D0 20            [24]  770 	pop	bits
      005173 32               [24]  771 	reti
                                    772 	.area CSEG    (CODE)
                                    773 	.area CONST   (CODE)
                                    774 	.area CONST   (CODE)
      005C24                        775 ___str_0:
      005C24 57 41 54 43 48 44 4F   776 	.ascii "WATCHDOG TIMER MODE"
             47 20 54 49 4D 45 52
             20 4D 4F 44 45
      005C37 0A                     777 	.db 0x0a
      005C38 0D                     778 	.db 0x0d
      005C39 00                     779 	.db 0x00
                                    780 	.area CSEG    (CODE)
                                    781 	.area CONST   (CODE)
      005C3A                        782 ___str_1:
      005C3A 2D 20 2D 20 2D 20 2D   783 	.ascii "- - - - "
             20
      005C42 00                     784 	.db 0x00
                                    785 	.area CSEG    (CODE)
                                    786 	.area CONST   (CODE)
      005C43                        787 ___str_2:
      005C43 57 41 54 43 48 44 4F   788 	.ascii "WATCHDOG TRIGGERED"
             47 20 54 52 49 47 47
             45 52 45 44
      005C55 0A                     789 	.db 0x0a
      005C56 0D                     790 	.db 0x0d
      005C57 00                     791 	.db 0x00
                                    792 	.area CSEG    (CODE)
                                    793 	.area XINIT   (CODE)
                                    794 	.area CABS    (ABS,CODE)
