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
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           0000C8   226 _T2CON	=	0x00c8
                           0000CA   227 _RCAP2L	=	0x00ca
                           0000CB   228 _RCAP2H	=	0x00cb
                           0000CC   229 _TL2	=	0x00cc
                           0000CD   230 _TH2	=	0x00cd
                           00008E   231 _AUXR	=	0x008e
                           0000A2   232 _AUXR1	=	0x00a2
                           000097   233 _CKRL	=	0x0097
                           00008F   234 _CKCON0	=	0x008f
                           0000AF   235 _CKCON1	=	0x00af
                           0000FA   236 _CCAP0H	=	0x00fa
                           0000FB   237 _CCAP1H	=	0x00fb
                           0000FC   238 _CCAP2H	=	0x00fc
                           0000FD   239 _CCAP3H	=	0x00fd
                           0000FE   240 _CCAP4H	=	0x00fe
                           0000EA   241 _CCAP0L	=	0x00ea
                           0000EB   242 _CCAP1L	=	0x00eb
                           0000EC   243 _CCAP2L	=	0x00ec
                           0000ED   244 _CCAP3L	=	0x00ed
                           0000EE   245 _CCAP4L	=	0x00ee
                           0000DA   246 _CCAPM0	=	0x00da
                           0000DB   247 _CCAPM1	=	0x00db
                           0000DC   248 _CCAPM2	=	0x00dc
                           0000DD   249 _CCAPM3	=	0x00dd
                           0000DE   250 _CCAPM4	=	0x00de
                           0000D8   251 _CCON	=	0x00d8
                           0000F9   252 _CH	=	0x00f9
                           0000E9   253 _CL	=	0x00e9
                           0000D9   254 _CMOD	=	0x00d9
                           0000A8   255 _IEN0	=	0x00a8
                           0000B1   256 _IEN1	=	0x00b1
                           0000B8   257 _IPL0	=	0x00b8
                           0000B7   258 _IPH0	=	0x00b7
                           0000B2   259 _IPL1	=	0x00b2
                           0000B3   260 _IPH1	=	0x00b3
                           0000C0   261 _P4	=	0x00c0
                           0000E8   262 _P5	=	0x00e8
                           0000A6   263 _WDTRST	=	0x00a6
                           0000A7   264 _WDTPRG	=	0x00a7
                           0000A9   265 _SADDR	=	0x00a9
                           0000B9   266 _SADEN	=	0x00b9
                           0000C3   267 _SPCON	=	0x00c3
                           0000C4   268 _SPSTA	=	0x00c4
                           0000C5   269 _SPDAT	=	0x00c5
                           0000C9   270 _T2MOD	=	0x00c9
                           00009B   271 _BDRCON	=	0x009b
                           00009A   272 _BRL	=	0x009a
                           00009C   273 _KBLS	=	0x009c
                           00009D   274 _KBE	=	0x009d
                           00009E   275 _KBF	=	0x009e
                           0000D2   276 _EECON	=	0x00d2
                           0000E0   277 _ACC	=	0x00e0
                           0000F0   278 _B	=	0x00f0
                           000083   279 _DPH	=	0x0083
                           000083   280 _DP0H	=	0x0083
                           000082   281 _DPL	=	0x0082
                           000082   282 _DP0L	=	0x0082
                           0000A8   283 _IE	=	0x00a8
                           0000B8   284 _IP	=	0x00b8
                           000080   285 _P0	=	0x0080
                           000090   286 _P1	=	0x0090
                           0000A0   287 _P2	=	0x00a0
                           0000B0   288 _P3	=	0x00b0
                           000087   289 _PCON	=	0x0087
                           0000D0   290 _PSW	=	0x00d0
                           000099   291 _SBUF	=	0x0099
                           000099   292 _SBUF0	=	0x0099
                           000098   293 _SCON	=	0x0098
                           000081   294 _SP	=	0x0081
                           000088   295 _TCON	=	0x0088
                           00008C   296 _TH0	=	0x008c
                           00008D   297 _TH1	=	0x008d
                           00008A   298 _TL0	=	0x008a
                           00008B   299 _TL1	=	0x008b
                           000089   300 _TMOD	=	0x0089
                                    301 ;--------------------------------------------------------
                                    302 ; special function bits
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           0000AD   306 _ET2	=	0x00ad
                           0000BD   307 _PT2	=	0x00bd
                           0000C8   308 _T2CON_0	=	0x00c8
                           0000C9   309 _T2CON_1	=	0x00c9
                           0000CA   310 _T2CON_2	=	0x00ca
                           0000CB   311 _T2CON_3	=	0x00cb
                           0000CC   312 _T2CON_4	=	0x00cc
                           0000CD   313 _T2CON_5	=	0x00cd
                           0000CE   314 _T2CON_6	=	0x00ce
                           0000CF   315 _T2CON_7	=	0x00cf
                           0000C8   316 _CP_RL2	=	0x00c8
                           0000C9   317 _C_T2	=	0x00c9
                           0000CA   318 _TR2	=	0x00ca
                           0000CB   319 _EXEN2	=	0x00cb
                           0000CC   320 _TCLK	=	0x00cc
                           0000CD   321 _RCLK	=	0x00cd
                           0000CE   322 _EXF2	=	0x00ce
                           0000CF   323 _TF2	=	0x00cf
                           0000DF   324 _CF	=	0x00df
                           0000DE   325 _CR	=	0x00de
                           0000DC   326 _CCF4	=	0x00dc
                           0000DB   327 _CCF3	=	0x00db
                           0000DA   328 _CCF2	=	0x00da
                           0000D9   329 _CCF1	=	0x00d9
                           0000D8   330 _CCF0	=	0x00d8
                           0000AE   331 _EC	=	0x00ae
                           0000BE   332 _PPCL	=	0x00be
                           0000BD   333 _PT2L	=	0x00bd
                           0000BC   334 _PSL	=	0x00bc
                           0000BB   335 _PT1L	=	0x00bb
                           0000BA   336 _PX1L	=	0x00ba
                           0000B9   337 _PT0L	=	0x00b9
                           0000B8   338 _PX0L	=	0x00b8
                           0000C0   339 _P4_0	=	0x00c0
                           0000C1   340 _P4_1	=	0x00c1
                           0000C2   341 _P4_2	=	0x00c2
                           0000C3   342 _P4_3	=	0x00c3
                           0000C4   343 _P4_4	=	0x00c4
                           0000C5   344 _P4_5	=	0x00c5
                           0000C6   345 _P4_6	=	0x00c6
                           0000C7   346 _P4_7	=	0x00c7
                           0000E8   347 _P5_0	=	0x00e8
                           0000E9   348 _P5_1	=	0x00e9
                           0000EA   349 _P5_2	=	0x00ea
                           0000EB   350 _P5_3	=	0x00eb
                           0000EC   351 _P5_4	=	0x00ec
                           0000ED   352 _P5_5	=	0x00ed
                           0000EE   353 _P5_6	=	0x00ee
                           0000EF   354 _P5_7	=	0x00ef
                           0000F0   355 _BREG_F0	=	0x00f0
                           0000F1   356 _BREG_F1	=	0x00f1
                           0000F2   357 _BREG_F2	=	0x00f2
                           0000F3   358 _BREG_F3	=	0x00f3
                           0000F4   359 _BREG_F4	=	0x00f4
                           0000F5   360 _BREG_F5	=	0x00f5
                           0000F6   361 _BREG_F6	=	0x00f6
                           0000F7   362 _BREG_F7	=	0x00f7
                           0000A8   363 _EX0	=	0x00a8
                           0000A9   364 _ET0	=	0x00a9
                           0000AA   365 _EX1	=	0x00aa
                           0000AB   366 _ET1	=	0x00ab
                           0000AC   367 _ES	=	0x00ac
                           0000AF   368 _EA	=	0x00af
                           0000B8   369 _PX0	=	0x00b8
                           0000B9   370 _PT0	=	0x00b9
                           0000BA   371 _PX1	=	0x00ba
                           0000BB   372 _PT1	=	0x00bb
                           0000BC   373 _PS	=	0x00bc
                           000080   374 _P0_0	=	0x0080
                           000081   375 _P0_1	=	0x0081
                           000082   376 _P0_2	=	0x0082
                           000083   377 _P0_3	=	0x0083
                           000084   378 _P0_4	=	0x0084
                           000085   379 _P0_5	=	0x0085
                           000086   380 _P0_6	=	0x0086
                           000087   381 _P0_7	=	0x0087
                           000090   382 _P1_0	=	0x0090
                           000091   383 _P1_1	=	0x0091
                           000092   384 _P1_2	=	0x0092
                           000093   385 _P1_3	=	0x0093
                           000094   386 _P1_4	=	0x0094
                           000095   387 _P1_5	=	0x0095
                           000096   388 _P1_6	=	0x0096
                           000097   389 _P1_7	=	0x0097
                           0000A0   390 _P2_0	=	0x00a0
                           0000A1   391 _P2_1	=	0x00a1
                           0000A2   392 _P2_2	=	0x00a2
                           0000A3   393 _P2_3	=	0x00a3
                           0000A4   394 _P2_4	=	0x00a4
                           0000A5   395 _P2_5	=	0x00a5
                           0000A6   396 _P2_6	=	0x00a6
                           0000A7   397 _P2_7	=	0x00a7
                           0000B0   398 _P3_0	=	0x00b0
                           0000B1   399 _P3_1	=	0x00b1
                           0000B2   400 _P3_2	=	0x00b2
                           0000B3   401 _P3_3	=	0x00b3
                           0000B4   402 _P3_4	=	0x00b4
                           0000B5   403 _P3_5	=	0x00b5
                           0000B6   404 _P3_6	=	0x00b6
                           0000B7   405 _P3_7	=	0x00b7
                           0000B0   406 _RXD	=	0x00b0
                           0000B0   407 _RXD0	=	0x00b0
                           0000B1   408 _TXD	=	0x00b1
                           0000B1   409 _TXD0	=	0x00b1
                           0000B2   410 _INT0	=	0x00b2
                           0000B3   411 _INT1	=	0x00b3
                           0000B4   412 _T0	=	0x00b4
                           0000B5   413 _T1	=	0x00b5
                           0000B6   414 _WR	=	0x00b6
                           0000B7   415 _RD	=	0x00b7
                           0000D0   416 _P	=	0x00d0
                           0000D1   417 _F1	=	0x00d1
                           0000D2   418 _OV	=	0x00d2
                           0000D3   419 _RS0	=	0x00d3
                           0000D4   420 _RS1	=	0x00d4
                           0000D5   421 _F0	=	0x00d5
                           0000D6   422 _AC	=	0x00d6
                           0000D7   423 _CY	=	0x00d7
                           000098   424 _RI	=	0x0098
                           000099   425 _TI	=	0x0099
                           00009A   426 _RB8	=	0x009a
                           00009B   427 _TB8	=	0x009b
                           00009C   428 _REN	=	0x009c
                           00009D   429 _SM2	=	0x009d
                           00009E   430 _SM1	=	0x009e
                           00009F   431 _SM0	=	0x009f
                           000088   432 _IT0	=	0x0088
                           000089   433 _IE0	=	0x0089
                           00008A   434 _IT1	=	0x008a
                           00008B   435 _IE1	=	0x008b
                           00008C   436 _TR0	=	0x008c
                           00008D   437 _TF0	=	0x008d
                           00008E   438 _TR1	=	0x008e
                           00008F   439 _TF1	=	0x008f
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable register banks
                                    442 ;--------------------------------------------------------
                                    443 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        444 	.ds 8
                                    445 ;--------------------------------------------------------
                                    446 ; internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area DSEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable items in internal ram 
                                    451 ;--------------------------------------------------------
                                    452 ;--------------------------------------------------------
                                    453 ; Stack segment in internal ram 
                                    454 ;--------------------------------------------------------
                                    455 	.area	SSEG
      000008                        456 __start__stack:
      000008                        457 	.ds	1
                                    458 
                                    459 ;--------------------------------------------------------
                                    460 ; indirectly addressable internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area ISEG    (DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; absolute internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area IABS    (ABS,DATA)
                                    467 	.area IABS    (ABS,DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; bit data
                                    470 ;--------------------------------------------------------
                                    471 	.area BSEG    (BIT)
                                    472 ;--------------------------------------------------------
                                    473 ; paged external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area PSEG    (PAG,XDATA)
                                    476 ;--------------------------------------------------------
                                    477 ; external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area XSEG    (XDATA)
                                    480 ;--------------------------------------------------------
                                    481 ; absolute external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XABS    (ABS,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; external initialized ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XISEG   (XDATA)
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT0 (CODE)
                                    490 	.area GSINIT1 (CODE)
                                    491 	.area GSINIT2 (CODE)
                                    492 	.area GSINIT3 (CODE)
                                    493 	.area GSINIT4 (CODE)
                                    494 	.area GSINIT5 (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area CSEG    (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; interrupt vector 
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
      003000                        502 __interrupt_vect:
      003000 02 30 06         [24]  503 	ljmp	__sdcc_gsinit_startup
                                    504 ;--------------------------------------------------------
                                    505 ; global & static initialisations
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.globl __sdcc_gsinit_startup
                                    512 	.globl __sdcc_program_startup
                                    513 	.globl __start__stack
                                    514 	.globl __mcs51_genXINIT
                                    515 	.globl __mcs51_genXRAMCLEAR
                                    516 	.globl __mcs51_genRAMCLEAR
                                    517 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  518 	ljmp	__sdcc_program_startup
                                    519 ;--------------------------------------------------------
                                    520 ; Home
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area HOME    (CODE)
      003003                        524 __sdcc_program_startup:
      003003 02 30 62         [24]  525 	ljmp	_main
                                    526 ;	return from main will return to caller
                                    527 ;--------------------------------------------------------
                                    528 ; code
                                    529 ;--------------------------------------------------------
                                    530 	.area CSEG    (CODE)
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'main'
                                    533 ;------------------------------------------------------------
                                    534 ;	pwm.c:4: void main(void)
                                    535 ;	-----------------------------------------
                                    536 ;	 function main
                                    537 ;	-----------------------------------------
      003062                        538 _main:
                           000007   539 	ar7 = 0x07
                           000006   540 	ar6 = 0x06
                           000005   541 	ar5 = 0x05
                           000004   542 	ar4 = 0x04
                           000003   543 	ar3 = 0x03
                           000002   544 	ar2 = 0x02
                           000001   545 	ar1 = 0x01
                           000000   546 	ar0 = 0x00
                                    547 ;	pwm.c:6: CMOD = 0X02;
      003062 75 D9 02         [24]  548 	mov	_CMOD,#0x02
                                    549 ;	pwm.c:7: CL = 0X00;
      003065 75 E9 00         [24]  550 	mov	_CL,#0x00
                                    551 ;	pwm.c:8: CH = 0X00;
      003068 75 F9 00         [24]  552 	mov	_CH,#0x00
                                    553 ;	pwm.c:10: CCAP0L = 0X40;
      00306B 75 EA 40         [24]  554 	mov	_CCAP0L,#0x40
                                    555 ;	pwm.c:11: CCAP0H = 0X40;
      00306E 75 FA 40         [24]  556 	mov	_CCAP0H,#0x40
                                    557 ;	pwm.c:12: CCAPM0 = 0X42;
      003071 75 DA 42         [24]  558 	mov	_CCAPM0,#0x42
                                    559 ;	pwm.c:14: CCON = 0x40;
      003074 75 D8 40         [24]  560 	mov	_CCON,#0x40
                                    561 ;	pwm.c:17: while(1)
      003077                        562 00102$:
                                    563 ;	pwm.c:23: }
      003077 80 FE            [24]  564 	sjmp	00102$
                                    565 	.area CSEG    (CODE)
                                    566 	.area CONST   (CODE)
                                    567 	.area XINIT   (CODE)
                                    568 	.area CABS    (ABS,CODE)
