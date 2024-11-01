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
                                    221 	.globl _refresh_wdt
                                    222 ;--------------------------------------------------------
                                    223 ; special function registers
                                    224 ;--------------------------------------------------------
                                    225 	.area RSEG    (ABS,DATA)
      000000                        226 	.org 0x0000
                           0000C8   227 _T2CON	=	0x00c8
                           0000CA   228 _RCAP2L	=	0x00ca
                           0000CB   229 _RCAP2H	=	0x00cb
                           0000CC   230 _TL2	=	0x00cc
                           0000CD   231 _TH2	=	0x00cd
                           00008E   232 _AUXR	=	0x008e
                           0000A2   233 _AUXR1	=	0x00a2
                           000097   234 _CKRL	=	0x0097
                           00008F   235 _CKCON0	=	0x008f
                           0000AF   236 _CKCON1	=	0x00af
                           0000FA   237 _CCAP0H	=	0x00fa
                           0000FB   238 _CCAP1H	=	0x00fb
                           0000FC   239 _CCAP2H	=	0x00fc
                           0000FD   240 _CCAP3H	=	0x00fd
                           0000FE   241 _CCAP4H	=	0x00fe
                           0000EA   242 _CCAP0L	=	0x00ea
                           0000EB   243 _CCAP1L	=	0x00eb
                           0000EC   244 _CCAP2L	=	0x00ec
                           0000ED   245 _CCAP3L	=	0x00ed
                           0000EE   246 _CCAP4L	=	0x00ee
                           0000DA   247 _CCAPM0	=	0x00da
                           0000DB   248 _CCAPM1	=	0x00db
                           0000DC   249 _CCAPM2	=	0x00dc
                           0000DD   250 _CCAPM3	=	0x00dd
                           0000DE   251 _CCAPM4	=	0x00de
                           0000D8   252 _CCON	=	0x00d8
                           0000F9   253 _CH	=	0x00f9
                           0000E9   254 _CL	=	0x00e9
                           0000D9   255 _CMOD	=	0x00d9
                           0000A8   256 _IEN0	=	0x00a8
                           0000B1   257 _IEN1	=	0x00b1
                           0000B8   258 _IPL0	=	0x00b8
                           0000B7   259 _IPH0	=	0x00b7
                           0000B2   260 _IPL1	=	0x00b2
                           0000B3   261 _IPH1	=	0x00b3
                           0000C0   262 _P4	=	0x00c0
                           0000E8   263 _P5	=	0x00e8
                           0000A6   264 _WDTRST	=	0x00a6
                           0000A7   265 _WDTPRG	=	0x00a7
                           0000A9   266 _SADDR	=	0x00a9
                           0000B9   267 _SADEN	=	0x00b9
                           0000C3   268 _SPCON	=	0x00c3
                           0000C4   269 _SPSTA	=	0x00c4
                           0000C5   270 _SPDAT	=	0x00c5
                           0000C9   271 _T2MOD	=	0x00c9
                           00009B   272 _BDRCON	=	0x009b
                           00009A   273 _BRL	=	0x009a
                           00009C   274 _KBLS	=	0x009c
                           00009D   275 _KBE	=	0x009d
                           00009E   276 _KBF	=	0x009e
                           0000D2   277 _EECON	=	0x00d2
                           0000E0   278 _ACC	=	0x00e0
                           0000F0   279 _B	=	0x00f0
                           000083   280 _DPH	=	0x0083
                           000083   281 _DP0H	=	0x0083
                           000082   282 _DPL	=	0x0082
                           000082   283 _DP0L	=	0x0082
                           0000A8   284 _IE	=	0x00a8
                           0000B8   285 _IP	=	0x00b8
                           000080   286 _P0	=	0x0080
                           000090   287 _P1	=	0x0090
                           0000A0   288 _P2	=	0x00a0
                           0000B0   289 _P3	=	0x00b0
                           000087   290 _PCON	=	0x0087
                           0000D0   291 _PSW	=	0x00d0
                           000099   292 _SBUF	=	0x0099
                           000099   293 _SBUF0	=	0x0099
                           000098   294 _SCON	=	0x0098
                           000081   295 _SP	=	0x0081
                           000088   296 _TCON	=	0x0088
                           00008C   297 _TH0	=	0x008c
                           00008D   298 _TH1	=	0x008d
                           00008A   299 _TL0	=	0x008a
                           00008B   300 _TL1	=	0x008b
                           000089   301 _TMOD	=	0x0089
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           0000AD   307 _ET2	=	0x00ad
                           0000BD   308 _PT2	=	0x00bd
                           0000C8   309 _T2CON_0	=	0x00c8
                           0000C9   310 _T2CON_1	=	0x00c9
                           0000CA   311 _T2CON_2	=	0x00ca
                           0000CB   312 _T2CON_3	=	0x00cb
                           0000CC   313 _T2CON_4	=	0x00cc
                           0000CD   314 _T2CON_5	=	0x00cd
                           0000CE   315 _T2CON_6	=	0x00ce
                           0000CF   316 _T2CON_7	=	0x00cf
                           0000C8   317 _CP_RL2	=	0x00c8
                           0000C9   318 _C_T2	=	0x00c9
                           0000CA   319 _TR2	=	0x00ca
                           0000CB   320 _EXEN2	=	0x00cb
                           0000CC   321 _TCLK	=	0x00cc
                           0000CD   322 _RCLK	=	0x00cd
                           0000CE   323 _EXF2	=	0x00ce
                           0000CF   324 _TF2	=	0x00cf
                           0000DF   325 _CF	=	0x00df
                           0000DE   326 _CR	=	0x00de
                           0000DC   327 _CCF4	=	0x00dc
                           0000DB   328 _CCF3	=	0x00db
                           0000DA   329 _CCF2	=	0x00da
                           0000D9   330 _CCF1	=	0x00d9
                           0000D8   331 _CCF0	=	0x00d8
                           0000AE   332 _EC	=	0x00ae
                           0000BE   333 _PPCL	=	0x00be
                           0000BD   334 _PT2L	=	0x00bd
                           0000BC   335 _PSL	=	0x00bc
                           0000BB   336 _PT1L	=	0x00bb
                           0000BA   337 _PX1L	=	0x00ba
                           0000B9   338 _PT0L	=	0x00b9
                           0000B8   339 _PX0L	=	0x00b8
                           0000C0   340 _P4_0	=	0x00c0
                           0000C1   341 _P4_1	=	0x00c1
                           0000C2   342 _P4_2	=	0x00c2
                           0000C3   343 _P4_3	=	0x00c3
                           0000C4   344 _P4_4	=	0x00c4
                           0000C5   345 _P4_5	=	0x00c5
                           0000C6   346 _P4_6	=	0x00c6
                           0000C7   347 _P4_7	=	0x00c7
                           0000E8   348 _P5_0	=	0x00e8
                           0000E9   349 _P5_1	=	0x00e9
                           0000EA   350 _P5_2	=	0x00ea
                           0000EB   351 _P5_3	=	0x00eb
                           0000EC   352 _P5_4	=	0x00ec
                           0000ED   353 _P5_5	=	0x00ed
                           0000EE   354 _P5_6	=	0x00ee
                           0000EF   355 _P5_7	=	0x00ef
                           0000F0   356 _BREG_F0	=	0x00f0
                           0000F1   357 _BREG_F1	=	0x00f1
                           0000F2   358 _BREG_F2	=	0x00f2
                           0000F3   359 _BREG_F3	=	0x00f3
                           0000F4   360 _BREG_F4	=	0x00f4
                           0000F5   361 _BREG_F5	=	0x00f5
                           0000F6   362 _BREG_F6	=	0x00f6
                           0000F7   363 _BREG_F7	=	0x00f7
                           0000A8   364 _EX0	=	0x00a8
                           0000A9   365 _ET0	=	0x00a9
                           0000AA   366 _EX1	=	0x00aa
                           0000AB   367 _ET1	=	0x00ab
                           0000AC   368 _ES	=	0x00ac
                           0000AF   369 _EA	=	0x00af
                           0000B8   370 _PX0	=	0x00b8
                           0000B9   371 _PT0	=	0x00b9
                           0000BA   372 _PX1	=	0x00ba
                           0000BB   373 _PT1	=	0x00bb
                           0000BC   374 _PS	=	0x00bc
                           000080   375 _P0_0	=	0x0080
                           000081   376 _P0_1	=	0x0081
                           000082   377 _P0_2	=	0x0082
                           000083   378 _P0_3	=	0x0083
                           000084   379 _P0_4	=	0x0084
                           000085   380 _P0_5	=	0x0085
                           000086   381 _P0_6	=	0x0086
                           000087   382 _P0_7	=	0x0087
                           000090   383 _P1_0	=	0x0090
                           000091   384 _P1_1	=	0x0091
                           000092   385 _P1_2	=	0x0092
                           000093   386 _P1_3	=	0x0093
                           000094   387 _P1_4	=	0x0094
                           000095   388 _P1_5	=	0x0095
                           000096   389 _P1_6	=	0x0096
                           000097   390 _P1_7	=	0x0097
                           0000A0   391 _P2_0	=	0x00a0
                           0000A1   392 _P2_1	=	0x00a1
                           0000A2   393 _P2_2	=	0x00a2
                           0000A3   394 _P2_3	=	0x00a3
                           0000A4   395 _P2_4	=	0x00a4
                           0000A5   396 _P2_5	=	0x00a5
                           0000A6   397 _P2_6	=	0x00a6
                           0000A7   398 _P2_7	=	0x00a7
                           0000B0   399 _P3_0	=	0x00b0
                           0000B1   400 _P3_1	=	0x00b1
                           0000B2   401 _P3_2	=	0x00b2
                           0000B3   402 _P3_3	=	0x00b3
                           0000B4   403 _P3_4	=	0x00b4
                           0000B5   404 _P3_5	=	0x00b5
                           0000B6   405 _P3_6	=	0x00b6
                           0000B7   406 _P3_7	=	0x00b7
                           0000B0   407 _RXD	=	0x00b0
                           0000B0   408 _RXD0	=	0x00b0
                           0000B1   409 _TXD	=	0x00b1
                           0000B1   410 _TXD0	=	0x00b1
                           0000B2   411 _INT0	=	0x00b2
                           0000B3   412 _INT1	=	0x00b3
                           0000B4   413 _T0	=	0x00b4
                           0000B5   414 _T1	=	0x00b5
                           0000B6   415 _WR	=	0x00b6
                           0000B7   416 _RD	=	0x00b7
                           0000D0   417 _P	=	0x00d0
                           0000D1   418 _F1	=	0x00d1
                           0000D2   419 _OV	=	0x00d2
                           0000D3   420 _RS0	=	0x00d3
                           0000D4   421 _RS1	=	0x00d4
                           0000D5   422 _F0	=	0x00d5
                           0000D6   423 _AC	=	0x00d6
                           0000D7   424 _CY	=	0x00d7
                           000098   425 _RI	=	0x0098
                           000099   426 _TI	=	0x0099
                           00009A   427 _RB8	=	0x009a
                           00009B   428 _TB8	=	0x009b
                           00009C   429 _REN	=	0x009c
                           00009D   430 _SM2	=	0x009d
                           00009E   431 _SM1	=	0x009e
                           00009F   432 _SM0	=	0x009f
                           000088   433 _IT0	=	0x0088
                           000089   434 _IE0	=	0x0089
                           00008A   435 _IT1	=	0x008a
                           00008B   436 _IE1	=	0x008b
                           00008C   437 _TR0	=	0x008c
                           00008D   438 _TF0	=	0x008d
                           00008E   439 _TR1	=	0x008e
                           00008F   440 _TF1	=	0x008f
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable register banks
                                    443 ;--------------------------------------------------------
                                    444 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        445 	.ds 8
                                    446 ;--------------------------------------------------------
                                    447 ; internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area DSEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable items in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 ;--------------------------------------------------------
                                    454 ; Stack segment in internal ram 
                                    455 ;--------------------------------------------------------
                                    456 	.area	SSEG
      000008                        457 __start__stack:
      000008                        458 	.ds	1
                                    459 
                                    460 ;--------------------------------------------------------
                                    461 ; indirectly addressable internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area ISEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area IABS    (ABS,DATA)
                                    468 	.area IABS    (ABS,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; bit data
                                    471 ;--------------------------------------------------------
                                    472 	.area BSEG    (BIT)
                                    473 ;--------------------------------------------------------
                                    474 ; paged external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area PSEG    (PAG,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XSEG    (XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XABS    (ABS,XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; external initialized ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XISEG   (XDATA)
                                    489 	.area HOME    (CODE)
                                    490 	.area GSINIT0 (CODE)
                                    491 	.area GSINIT1 (CODE)
                                    492 	.area GSINIT2 (CODE)
                                    493 	.area GSINIT3 (CODE)
                                    494 	.area GSINIT4 (CODE)
                                    495 	.area GSINIT5 (CODE)
                                    496 	.area GSINIT  (CODE)
                                    497 	.area GSFINAL (CODE)
                                    498 	.area CSEG    (CODE)
                                    499 ;--------------------------------------------------------
                                    500 ; interrupt vector 
                                    501 ;--------------------------------------------------------
                                    502 	.area HOME    (CODE)
      005000                        503 __interrupt_vect:
      005000 02 50 06         [24]  504 	ljmp	__sdcc_gsinit_startup
                                    505 ;--------------------------------------------------------
                                    506 ; global & static initialisations
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.globl __sdcc_gsinit_startup
                                    513 	.globl __sdcc_program_startup
                                    514 	.globl __start__stack
                                    515 	.globl __mcs51_genXINIT
                                    516 	.globl __mcs51_genXRAMCLEAR
                                    517 	.globl __mcs51_genRAMCLEAR
                                    518 	.area GSFINAL (CODE)
      00505F 02 50 03         [24]  519 	ljmp	__sdcc_program_startup
                                    520 ;--------------------------------------------------------
                                    521 ; Home
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area HOME    (CODE)
      005003                        525 __sdcc_program_startup:
      005003 02 50 62         [24]  526 	ljmp	_main
                                    527 ;	return from main will return to caller
                                    528 ;--------------------------------------------------------
                                    529 ; code
                                    530 ;--------------------------------------------------------
                                    531 	.area CSEG    (CODE)
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'main'
                                    534 ;------------------------------------------------------------
                                    535 ;i                         Allocated with name '_main_i_196608_4'
                                    536 ;------------------------------------------------------------
                                    537 ;	watchdog.c:6: void main(void)
                                    538 ;	-----------------------------------------
                                    539 ;	 function main
                                    540 ;	-----------------------------------------
      005062                        541 _main:
                           000007   542 	ar7 = 0x07
                           000006   543 	ar6 = 0x06
                           000005   544 	ar5 = 0x05
                           000004   545 	ar4 = 0x04
                           000003   546 	ar3 = 0x03
                           000002   547 	ar2 = 0x02
                           000001   548 	ar1 = 0x01
                           000000   549 	ar0 = 0x00
                                    550 ;	watchdog.c:8: CMOD = CMOD | 0X42;
      005062 43 D9 42         [24]  551 	orl	_CMOD,#0x42
                                    552 ;	watchdog.c:10: CCAPM4 = 0x44;
      005065 75 DE 44         [24]  553 	mov	_CCAPM4,#0x44
                                    554 ;	watchdog.c:11: CCAP4L = 0XFF;
      005068 75 EE FF         [24]  555 	mov	_CCAP4L,#0xff
                                    556 ;	watchdog.c:12: CCAP4H = 0XFF;
      00506B 75 FE FF         [24]  557 	mov	_CCAP4H,#0xff
                                    558 ;	watchdog.c:14: while(1)
      00506E                        559 00103$:
                                    560 ;	watchdog.c:16: refresh_wdt();
      00506E 12 50 87         [24]  561 	lcall	_refresh_wdt
                                    562 ;	watchdog.c:17: for(int i = 0; i< 195; i++) {}
      005071 7E 00            [12]  563 	mov	r6,#0x00
      005073 7F 00            [12]  564 	mov	r7,#0x00
      005075                        565 00106$:
      005075 C3               [12]  566 	clr	c
      005076 EE               [12]  567 	mov	a,r6
      005077 94 C3            [12]  568 	subb	a,#0xc3
      005079 EF               [12]  569 	mov	a,r7
      00507A 64 80            [12]  570 	xrl	a,#0x80
      00507C 94 80            [12]  571 	subb	a,#0x80
      00507E 50 EE            [24]  572 	jnc	00103$
      005080 0E               [12]  573 	inc	r6
      005081 BE 00 F1         [24]  574 	cjne	r6,#0x00,00106$
      005084 0F               [12]  575 	inc	r7
                                    576 ;	watchdog.c:20: }
      005085 80 EE            [24]  577 	sjmp	00106$
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'refresh_wdt'
                                    580 ;------------------------------------------------------------
                                    581 ;	watchdog.c:22: void refresh_wdt()
                                    582 ;	-----------------------------------------
                                    583 ;	 function refresh_wdt
                                    584 ;	-----------------------------------------
      005087                        585 _refresh_wdt:
                                    586 ;	watchdog.c:24: CCAP4L = 0X00;
      005087 75 EE 00         [24]  587 	mov	_CCAP4L,#0x00
                                    588 ;	watchdog.c:25: CCAP4H = 0X00;
      00508A 75 FE 00         [24]  589 	mov	_CCAP4H,#0x00
                                    590 ;	watchdog.c:26: }
      00508D 22               [24]  591 	ret
                                    592 	.area CSEG    (CODE)
                                    593 	.area CONST   (CODE)
                                    594 	.area XINIT   (CODE)
                                    595 	.area CABS    (ABS,CODE)
