                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module syntax
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _printf
                                     13 	.globl _malloc
                                     14 	.globl _TF1
                                     15 	.globl _TR1
                                     16 	.globl _TF0
                                     17 	.globl _TR0
                                     18 	.globl _IE1
                                     19 	.globl _IT1
                                     20 	.globl _IE0
                                     21 	.globl _IT0
                                     22 	.globl _SM0
                                     23 	.globl _SM1
                                     24 	.globl _SM2
                                     25 	.globl _REN
                                     26 	.globl _TB8
                                     27 	.globl _RB8
                                     28 	.globl _TI
                                     29 	.globl _RI
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD0
                                     45 	.globl _TXD
                                     46 	.globl _RXD0
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _P0_7
                                     73 	.globl _P0_6
                                     74 	.globl _P0_5
                                     75 	.globl _P0_4
                                     76 	.globl _P0_3
                                     77 	.globl _P0_2
                                     78 	.globl _P0_1
                                     79 	.globl _P0_0
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _EA
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _TMOD
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TCON
                                    154 	.globl _SP
                                    155 	.globl _SCON
                                    156 	.globl _SBUF0
                                    157 	.globl _SBUF
                                    158 	.globl _PSW
                                    159 	.globl _PCON
                                    160 	.globl _P3
                                    161 	.globl _P2
                                    162 	.globl _P1
                                    163 	.globl _P0
                                    164 	.globl _IP
                                    165 	.globl _IE
                                    166 	.globl _DP0L
                                    167 	.globl _DPL
                                    168 	.globl _DP0H
                                    169 	.globl _DPH
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           0000C8   228 _T2CON	=	0x00c8
                           0000CA   229 _RCAP2L	=	0x00ca
                           0000CB   230 _RCAP2H	=	0x00cb
                           0000CC   231 _TL2	=	0x00cc
                           0000CD   232 _TH2	=	0x00cd
                           00008E   233 _AUXR	=	0x008e
                           0000A2   234 _AUXR1	=	0x00a2
                           000097   235 _CKRL	=	0x0097
                           00008F   236 _CKCON0	=	0x008f
                           0000AF   237 _CKCON1	=	0x00af
                           0000FA   238 _CCAP0H	=	0x00fa
                           0000FB   239 _CCAP1H	=	0x00fb
                           0000FC   240 _CCAP2H	=	0x00fc
                           0000FD   241 _CCAP3H	=	0x00fd
                           0000FE   242 _CCAP4H	=	0x00fe
                           0000EA   243 _CCAP0L	=	0x00ea
                           0000EB   244 _CCAP1L	=	0x00eb
                           0000EC   245 _CCAP2L	=	0x00ec
                           0000ED   246 _CCAP3L	=	0x00ed
                           0000EE   247 _CCAP4L	=	0x00ee
                           0000DA   248 _CCAPM0	=	0x00da
                           0000DB   249 _CCAPM1	=	0x00db
                           0000DC   250 _CCAPM2	=	0x00dc
                           0000DD   251 _CCAPM3	=	0x00dd
                           0000DE   252 _CCAPM4	=	0x00de
                           0000D8   253 _CCON	=	0x00d8
                           0000F9   254 _CH	=	0x00f9
                           0000E9   255 _CL	=	0x00e9
                           0000D9   256 _CMOD	=	0x00d9
                           0000A8   257 _IEN0	=	0x00a8
                           0000B1   258 _IEN1	=	0x00b1
                           0000B8   259 _IPL0	=	0x00b8
                           0000B7   260 _IPH0	=	0x00b7
                           0000B2   261 _IPL1	=	0x00b2
                           0000B3   262 _IPH1	=	0x00b3
                           0000C0   263 _P4	=	0x00c0
                           0000E8   264 _P5	=	0x00e8
                           0000A6   265 _WDTRST	=	0x00a6
                           0000A7   266 _WDTPRG	=	0x00a7
                           0000A9   267 _SADDR	=	0x00a9
                           0000B9   268 _SADEN	=	0x00b9
                           0000C3   269 _SPCON	=	0x00c3
                           0000C4   270 _SPSTA	=	0x00c4
                           0000C5   271 _SPDAT	=	0x00c5
                           0000C9   272 _T2MOD	=	0x00c9
                           00009B   273 _BDRCON	=	0x009b
                           00009A   274 _BRL	=	0x009a
                           00009C   275 _KBLS	=	0x009c
                           00009D   276 _KBE	=	0x009d
                           00009E   277 _KBF	=	0x009e
                           0000D2   278 _EECON	=	0x00d2
                           0000E0   279 _ACC	=	0x00e0
                           0000F0   280 _B	=	0x00f0
                           000083   281 _DPH	=	0x0083
                           000083   282 _DP0H	=	0x0083
                           000082   283 _DPL	=	0x0082
                           000082   284 _DP0L	=	0x0082
                           0000A8   285 _IE	=	0x00a8
                           0000B8   286 _IP	=	0x00b8
                           000080   287 _P0	=	0x0080
                           000090   288 _P1	=	0x0090
                           0000A0   289 _P2	=	0x00a0
                           0000B0   290 _P3	=	0x00b0
                           000087   291 _PCON	=	0x0087
                           0000D0   292 _PSW	=	0x00d0
                           000099   293 _SBUF	=	0x0099
                           000099   294 _SBUF0	=	0x0099
                           000098   295 _SCON	=	0x0098
                           000081   296 _SP	=	0x0081
                           000088   297 _TCON	=	0x0088
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           00008A   300 _TL0	=	0x008a
                           00008B   301 _TL1	=	0x008b
                           000089   302 _TMOD	=	0x0089
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           0000AD   308 _ET2	=	0x00ad
                           0000BD   309 _PT2	=	0x00bd
                           0000C8   310 _T2CON_0	=	0x00c8
                           0000C9   311 _T2CON_1	=	0x00c9
                           0000CA   312 _T2CON_2	=	0x00ca
                           0000CB   313 _T2CON_3	=	0x00cb
                           0000CC   314 _T2CON_4	=	0x00cc
                           0000CD   315 _T2CON_5	=	0x00cd
                           0000CE   316 _T2CON_6	=	0x00ce
                           0000CF   317 _T2CON_7	=	0x00cf
                           0000C8   318 _CP_RL2	=	0x00c8
                           0000C9   319 _C_T2	=	0x00c9
                           0000CA   320 _TR2	=	0x00ca
                           0000CB   321 _EXEN2	=	0x00cb
                           0000CC   322 _TCLK	=	0x00cc
                           0000CD   323 _RCLK	=	0x00cd
                           0000CE   324 _EXF2	=	0x00ce
                           0000CF   325 _TF2	=	0x00cf
                           0000DF   326 _CF	=	0x00df
                           0000DE   327 _CR	=	0x00de
                           0000DC   328 _CCF4	=	0x00dc
                           0000DB   329 _CCF3	=	0x00db
                           0000DA   330 _CCF2	=	0x00da
                           0000D9   331 _CCF1	=	0x00d9
                           0000D8   332 _CCF0	=	0x00d8
                           0000AE   333 _EC	=	0x00ae
                           0000BE   334 _PPCL	=	0x00be
                           0000BD   335 _PT2L	=	0x00bd
                           0000BC   336 _PSL	=	0x00bc
                           0000BB   337 _PT1L	=	0x00bb
                           0000BA   338 _PX1L	=	0x00ba
                           0000B9   339 _PT0L	=	0x00b9
                           0000B8   340 _PX0L	=	0x00b8
                           0000C0   341 _P4_0	=	0x00c0
                           0000C1   342 _P4_1	=	0x00c1
                           0000C2   343 _P4_2	=	0x00c2
                           0000C3   344 _P4_3	=	0x00c3
                           0000C4   345 _P4_4	=	0x00c4
                           0000C5   346 _P4_5	=	0x00c5
                           0000C6   347 _P4_6	=	0x00c6
                           0000C7   348 _P4_7	=	0x00c7
                           0000E8   349 _P5_0	=	0x00e8
                           0000E9   350 _P5_1	=	0x00e9
                           0000EA   351 _P5_2	=	0x00ea
                           0000EB   352 _P5_3	=	0x00eb
                           0000EC   353 _P5_4	=	0x00ec
                           0000ED   354 _P5_5	=	0x00ed
                           0000EE   355 _P5_6	=	0x00ee
                           0000EF   356 _P5_7	=	0x00ef
                           0000F0   357 _BREG_F0	=	0x00f0
                           0000F1   358 _BREG_F1	=	0x00f1
                           0000F2   359 _BREG_F2	=	0x00f2
                           0000F3   360 _BREG_F3	=	0x00f3
                           0000F4   361 _BREG_F4	=	0x00f4
                           0000F5   362 _BREG_F5	=	0x00f5
                           0000F6   363 _BREG_F6	=	0x00f6
                           0000F7   364 _BREG_F7	=	0x00f7
                           0000A8   365 _EX0	=	0x00a8
                           0000A9   366 _ET0	=	0x00a9
                           0000AA   367 _EX1	=	0x00aa
                           0000AB   368 _ET1	=	0x00ab
                           0000AC   369 _ES	=	0x00ac
                           0000AF   370 _EA	=	0x00af
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           000080   376 _P0_0	=	0x0080
                           000081   377 _P0_1	=	0x0081
                           000082   378 _P0_2	=	0x0082
                           000083   379 _P0_3	=	0x0083
                           000084   380 _P0_4	=	0x0084
                           000085   381 _P0_5	=	0x0085
                           000086   382 _P0_6	=	0x0086
                           000087   383 _P0_7	=	0x0087
                           000090   384 _P1_0	=	0x0090
                           000091   385 _P1_1	=	0x0091
                           000092   386 _P1_2	=	0x0092
                           000093   387 _P1_3	=	0x0093
                           000094   388 _P1_4	=	0x0094
                           000095   389 _P1_5	=	0x0095
                           000096   390 _P1_6	=	0x0096
                           000097   391 _P1_7	=	0x0097
                           0000A0   392 _P2_0	=	0x00a0
                           0000A1   393 _P2_1	=	0x00a1
                           0000A2   394 _P2_2	=	0x00a2
                           0000A3   395 _P2_3	=	0x00a3
                           0000A4   396 _P2_4	=	0x00a4
                           0000A5   397 _P2_5	=	0x00a5
                           0000A6   398 _P2_6	=	0x00a6
                           0000A7   399 _P2_7	=	0x00a7
                           0000B0   400 _P3_0	=	0x00b0
                           0000B1   401 _P3_1	=	0x00b1
                           0000B2   402 _P3_2	=	0x00b2
                           0000B3   403 _P3_3	=	0x00b3
                           0000B4   404 _P3_4	=	0x00b4
                           0000B5   405 _P3_5	=	0x00b5
                           0000B6   406 _P3_6	=	0x00b6
                           0000B7   407 _P3_7	=	0x00b7
                           0000B0   408 _RXD	=	0x00b0
                           0000B0   409 _RXD0	=	0x00b0
                           0000B1   410 _TXD	=	0x00b1
                           0000B1   411 _TXD0	=	0x00b1
                           0000B2   412 _INT0	=	0x00b2
                           0000B3   413 _INT1	=	0x00b3
                           0000B4   414 _T0	=	0x00b4
                           0000B5   415 _T1	=	0x00b5
                           0000B6   416 _WR	=	0x00b6
                           0000B7   417 _RD	=	0x00b7
                           0000D0   418 _P	=	0x00d0
                           0000D1   419 _F1	=	0x00d1
                           0000D2   420 _OV	=	0x00d2
                           0000D3   421 _RS0	=	0x00d3
                           0000D4   422 _RS1	=	0x00d4
                           0000D5   423 _F0	=	0x00d5
                           0000D6   424 _AC	=	0x00d6
                           0000D7   425 _CY	=	0x00d7
                           000098   426 _RI	=	0x0098
                           000099   427 _TI	=	0x0099
                           00009A   428 _RB8	=	0x009a
                           00009B   429 _TB8	=	0x009b
                           00009C   430 _REN	=	0x009c
                           00009D   431 _SM2	=	0x009d
                           00009E   432 _SM1	=	0x009e
                           00009F   433 _SM0	=	0x009f
                           000088   434 _IT0	=	0x0088
                           000089   435 _IE0	=	0x0089
                           00008A   436 _IT1	=	0x008a
                           00008B   437 _IE1	=	0x008b
                           00008C   438 _TR0	=	0x008c
                           00008D   439 _TF0	=	0x008d
                           00008E   440 _TR1	=	0x008e
                           00008F   441 _TF1	=	0x008f
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable register banks
                                    444 ;--------------------------------------------------------
                                    445 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        446 	.ds 8
                                    447 ;--------------------------------------------------------
                                    448 ; internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area DSEG    (DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable items in internal ram 
                                    453 ;--------------------------------------------------------
                                    454 ;--------------------------------------------------------
                                    455 ; Stack segment in internal ram 
                                    456 ;--------------------------------------------------------
                                    457 	.area	SSEG
      000016                        458 __start__stack:
      000016                        459 	.ds	1
                                    460 
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; interrupt vector 
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
      000000                        504 __interrupt_vect:
      000000 02 00 06         [24]  505 	ljmp	__sdcc_gsinit_startup
                                    506 ;--------------------------------------------------------
                                    507 ; global & static initialisations
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.globl __sdcc_gsinit_startup
                                    514 	.globl __sdcc_program_startup
                                    515 	.globl __start__stack
                                    516 	.globl __mcs51_genXINIT
                                    517 	.globl __mcs51_genXRAMCLEAR
                                    518 	.globl __mcs51_genRAMCLEAR
                                    519 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  520 	ljmp	__sdcc_program_startup
                                    521 ;--------------------------------------------------------
                                    522 ; Home
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
                                    525 	.area HOME    (CODE)
      000003                        526 __sdcc_program_startup:
      000003 02 00 62         [24]  527 	ljmp	_main
                                    528 ;	return from main will return to caller
                                    529 ;--------------------------------------------------------
                                    530 ; code
                                    531 ;--------------------------------------------------------
                                    532 	.area CSEG    (CODE)
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'main'
                                    535 ;------------------------------------------------------------
                                    536 ;ptr                       Allocated with name '_main_ptr_65536_24'
                                    537 ;i                         Allocated with name '_main_i_65536_24'
                                    538 ;count                     Allocated with name '_main_count_65536_24'
                                    539 ;------------------------------------------------------------
                                    540 ;	syntax.c:11: void main(void)
                                    541 ;	-----------------------------------------
                                    542 ;	 function main
                                    543 ;	-----------------------------------------
      000062                        544 _main:
                           000007   545 	ar7 = 0x07
                           000006   546 	ar6 = 0x06
                           000005   547 	ar5 = 0x05
                           000004   548 	ar4 = 0x04
                           000003   549 	ar3 = 0x03
                           000002   550 	ar2 = 0x02
                           000001   551 	ar1 = 0x01
                           000000   552 	ar0 = 0x00
                                    553 ;	syntax.c:18: ptr = (__xdata char*)malloc(1000);
      000062 75 82 E8         [24]  554 	mov	dpl,#0xe8
      000065 12 01 5E         [24]  555 	lcall	_malloc
      000068 AE 82            [24]  556 	mov	r6,dpl
      00006A 7F 00            [12]  557 	mov	r7,#0x00
                                    558 ;	syntax.c:20: if(ptr == NULL)
      00006C EE               [12]  559 	mov	a,r6
      00006D 4F               [12]  560 	orl	a,r7
      00006E 70 18            [24]  561 	jnz	00109$
                                    562 ;	syntax.c:22: printf("Heap allocation failed\n");
      000070 74 77            [12]  563 	mov	a,#___str_0
      000072 C0 E0            [24]  564 	push	acc
      000074 74 0D            [12]  565 	mov	a,#(___str_0 >> 8)
      000076 C0 E0            [24]  566 	push	acc
      000078 74 80            [12]  567 	mov	a,#0x80
      00007A C0 E0            [24]  568 	push	acc
      00007C 12 03 15         [24]  569 	lcall	_printf
      00007F 15 81            [12]  570 	dec	sp
      000081 15 81            [12]  571 	dec	sp
      000083 15 81            [12]  572 	dec	sp
      000085 02 01 20         [24]  573 	ljmp	00112$
      000088                        574 00109$:
                                    575 ;	syntax.c:26: printf("Heap allocation of 2048 bytes successful\n");
      000088 C0 07            [24]  576 	push	ar7
      00008A C0 06            [24]  577 	push	ar6
      00008C 74 8F            [12]  578 	mov	a,#___str_1
      00008E C0 E0            [24]  579 	push	acc
      000090 74 0D            [12]  580 	mov	a,#(___str_1 >> 8)
      000092 C0 E0            [24]  581 	push	acc
      000094 74 80            [12]  582 	mov	a,#0x80
      000096 C0 E0            [24]  583 	push	acc
      000098 12 03 15         [24]  584 	lcall	_printf
      00009B 15 81            [12]  585 	dec	sp
      00009D 15 81            [12]  586 	dec	sp
      00009F 15 81            [12]  587 	dec	sp
      0000A1 D0 06            [24]  588 	pop	ar6
      0000A3 D0 07            [24]  589 	pop	ar7
                                    590 ;	syntax.c:29: for(i = 0; i < 1000; i++)
      0000A5 7C 00            [12]  591 	mov	r4,#0x00
      0000A7 7D 00            [12]  592 	mov	r5,#0x00
      0000A9                        593 00114$:
                                    594 ;	syntax.c:31: ptr[i] = 55;
      0000A9 EC               [12]  595 	mov	a,r4
      0000AA 2E               [12]  596 	add	a,r6
      0000AB F5 82            [12]  597 	mov	dpl,a
      0000AD ED               [12]  598 	mov	a,r5
      0000AE 3F               [12]  599 	addc	a,r7
      0000AF F5 83            [12]  600 	mov	dph,a
      0000B1 74 37            [12]  601 	mov	a,#0x37
      0000B3 F0               [24]  602 	movx	@dptr,a
                                    603 ;	syntax.c:29: for(i = 0; i < 1000; i++)
      0000B4 0C               [12]  604 	inc	r4
      0000B5 BC 00 01         [24]  605 	cjne	r4,#0x00,00155$
      0000B8 0D               [12]  606 	inc	r5
      0000B9                        607 00155$:
      0000B9 C3               [12]  608 	clr	c
      0000BA EC               [12]  609 	mov	a,r4
      0000BB 94 E8            [12]  610 	subb	a,#0xe8
      0000BD ED               [12]  611 	mov	a,r5
      0000BE 64 80            [12]  612 	xrl	a,#0x80
      0000C0 94 83            [12]  613 	subb	a,#0x83
      0000C2 40 E5            [24]  614 	jc	00114$
                                    615 ;	syntax.c:35: for(i = 0; i < 1000; i++)
      0000C4 7C 00            [12]  616 	mov	r4,#0x00
      0000C6 7D 00            [12]  617 	mov	r5,#0x00
      0000C8 7A 00            [12]  618 	mov	r2,#0x00
      0000CA 7B 00            [12]  619 	mov	r3,#0x00
      0000CC                        620 00116$:
                                    621 ;	syntax.c:37: if(ptr[i] == 55)
      0000CC EA               [12]  622 	mov	a,r2
      0000CD 2E               [12]  623 	add	a,r6
      0000CE F5 82            [12]  624 	mov	dpl,a
      0000D0 EB               [12]  625 	mov	a,r3
      0000D1 3F               [12]  626 	addc	a,r7
      0000D2 F5 83            [12]  627 	mov	dph,a
      0000D4 E0               [24]  628 	movx	a,@dptr
      0000D5 F9               [12]  629 	mov	r1,a
      0000D6 B9 37 05         [24]  630 	cjne	r1,#0x37,00117$
                                    631 ;	syntax.c:39: count++;
      0000D9 0C               [12]  632 	inc	r4
      0000DA BC 00 01         [24]  633 	cjne	r4,#0x00,00159$
      0000DD 0D               [12]  634 	inc	r5
      0000DE                        635 00159$:
      0000DE                        636 00117$:
                                    637 ;	syntax.c:35: for(i = 0; i < 1000; i++)
      0000DE 0A               [12]  638 	inc	r2
      0000DF BA 00 01         [24]  639 	cjne	r2,#0x00,00160$
      0000E2 0B               [12]  640 	inc	r3
      0000E3                        641 00160$:
      0000E3 C3               [12]  642 	clr	c
      0000E4 EA               [12]  643 	mov	a,r2
      0000E5 94 E8            [12]  644 	subb	a,#0xe8
      0000E7 EB               [12]  645 	mov	a,r3
      0000E8 64 80            [12]  646 	xrl	a,#0x80
      0000EA 94 83            [12]  647 	subb	a,#0x83
      0000EC 40 DE            [24]  648 	jc	00116$
                                    649 ;	syntax.c:44: if(count == 1000)
      0000EE BC E8 1A         [24]  650 	cjne	r4,#0xe8,00106$
      0000F1 BD 03 17         [24]  651 	cjne	r5,#0x03,00106$
                                    652 ;	syntax.c:46: printf("Successfully wrote 2048 bytes in memory\n");
      0000F4 74 B9            [12]  653 	mov	a,#___str_2
      0000F6 C0 E0            [24]  654 	push	acc
      0000F8 74 0D            [12]  655 	mov	a,#(___str_2 >> 8)
      0000FA C0 E0            [24]  656 	push	acc
      0000FC 74 80            [12]  657 	mov	a,#0x80
      0000FE C0 E0            [24]  658 	push	acc
      000100 12 03 15         [24]  659 	lcall	_printf
      000103 15 81            [12]  660 	dec	sp
      000105 15 81            [12]  661 	dec	sp
      000107 15 81            [12]  662 	dec	sp
      000109 80 15            [24]  663 	sjmp	00112$
      00010B                        664 00106$:
                                    665 ;	syntax.c:50: printf("Error writing to memory\n");
      00010B 74 E2            [12]  666 	mov	a,#___str_3
      00010D C0 E0            [24]  667 	push	acc
      00010F 74 0D            [12]  668 	mov	a,#(___str_3 >> 8)
      000111 C0 E0            [24]  669 	push	acc
      000113 74 80            [12]  670 	mov	a,#0x80
      000115 C0 E0            [24]  671 	push	acc
      000117 12 03 15         [24]  672 	lcall	_printf
      00011A 15 81            [12]  673 	dec	sp
      00011C 15 81            [12]  674 	dec	sp
      00011E 15 81            [12]  675 	dec	sp
                                    676 ;	syntax.c:57: while(1);  // Infinite loop to keep the program running
      000120                        677 00112$:
                                    678 ;	syntax.c:58: }
      000120 80 FE            [24]  679 	sjmp	00112$
                                    680 	.area CSEG    (CODE)
                                    681 	.area CONST   (CODE)
                                    682 	.area CONST   (CODE)
      000D77                        683 ___str_0:
      000D77 48 65 61 70 20 61 6C   684 	.ascii "Heap allocation failed"
             6C 6F 63 61 74 69 6F
             6E 20 66 61 69 6C 65
             64
      000D8D 0A                     685 	.db 0x0a
      000D8E 00                     686 	.db 0x00
                                    687 	.area CSEG    (CODE)
                                    688 	.area CONST   (CODE)
      000D8F                        689 ___str_1:
      000D8F 48 65 61 70 20 61 6C   690 	.ascii "Heap allocation of 2048 bytes successful"
             6C 6F 63 61 74 69 6F
             6E 20 6F 66 20 32 30
             34 38 20 62 79 74 65
             73 20 73 75 63 63 65
             73 73 66 75 6C
      000DB7 0A                     691 	.db 0x0a
      000DB8 00                     692 	.db 0x00
                                    693 	.area CSEG    (CODE)
                                    694 	.area CONST   (CODE)
      000DB9                        695 ___str_2:
      000DB9 53 75 63 63 65 73 73   696 	.ascii "Successfully wrote 2048 bytes in memory"
             66 75 6C 6C 79 20 77
             72 6F 74 65 20 32 30
             34 38 20 62 79 74 65
             73 20 69 6E 20 6D 65
             6D 6F 72 79
      000DE0 0A                     697 	.db 0x0a
      000DE1 00                     698 	.db 0x00
                                    699 	.area CSEG    (CODE)
                                    700 	.area CONST   (CODE)
      000DE2                        701 ___str_3:
      000DE2 45 72 72 6F 72 20 77   702 	.ascii "Error writing to memory"
             72 69 74 69 6E 67 20
             74 6F 20 6D 65 6D 6F
             72 79
      000DF9 0A                     703 	.db 0x0a
      000DFA 00                     704 	.db 0x00
                                    705 	.area CSEG    (CODE)
                                    706 	.area XINIT   (CODE)
                                    707 	.area CABS    (ABS,CODE)
