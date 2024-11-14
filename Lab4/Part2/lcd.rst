                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _lcd_init
                                     13 	.globl _print_string
                                     14 	.globl _print_char
                                     15 	.globl _lcd_instruction
                                     16 	.globl _lcd_wait
                                     17 	.globl _delay_ms
                                     18 	.globl _TF1
                                     19 	.globl _TR1
                                     20 	.globl _TF0
                                     21 	.globl _TR0
                                     22 	.globl _IE1
                                     23 	.globl _IT1
                                     24 	.globl _IE0
                                     25 	.globl _IT0
                                     26 	.globl _SM0
                                     27 	.globl _SM1
                                     28 	.globl _SM2
                                     29 	.globl _REN
                                     30 	.globl _TB8
                                     31 	.globl _RB8
                                     32 	.globl _TI
                                     33 	.globl _RI
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD0
                                     49 	.globl _TXD
                                     50 	.globl _RXD0
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _P0_7
                                     77 	.globl _P0_6
                                     78 	.globl _P0_5
                                     79 	.globl _P0_4
                                     80 	.globl _P0_3
                                     81 	.globl _P0_2
                                     82 	.globl _P0_1
                                     83 	.globl _P0_0
                                     84 	.globl _PS
                                     85 	.globl _PT1
                                     86 	.globl _PX1
                                     87 	.globl _PT0
                                     88 	.globl _PX0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _BREG_F7
                                     96 	.globl _BREG_F6
                                     97 	.globl _BREG_F5
                                     98 	.globl _BREG_F4
                                     99 	.globl _BREG_F3
                                    100 	.globl _BREG_F2
                                    101 	.globl _BREG_F1
                                    102 	.globl _BREG_F0
                                    103 	.globl _P5_7
                                    104 	.globl _P5_6
                                    105 	.globl _P5_5
                                    106 	.globl _P5_4
                                    107 	.globl _P5_3
                                    108 	.globl _P5_2
                                    109 	.globl _P5_1
                                    110 	.globl _P5_0
                                    111 	.globl _P4_7
                                    112 	.globl _P4_6
                                    113 	.globl _P4_5
                                    114 	.globl _P4_4
                                    115 	.globl _P4_3
                                    116 	.globl _P4_2
                                    117 	.globl _P4_1
                                    118 	.globl _P4_0
                                    119 	.globl _PX0L
                                    120 	.globl _PT0L
                                    121 	.globl _PX1L
                                    122 	.globl _PT1L
                                    123 	.globl _PSL
                                    124 	.globl _PT2L
                                    125 	.globl _PPCL
                                    126 	.globl _EC
                                    127 	.globl _CCF0
                                    128 	.globl _CCF1
                                    129 	.globl _CCF2
                                    130 	.globl _CCF3
                                    131 	.globl _CCF4
                                    132 	.globl _CR
                                    133 	.globl _CF
                                    134 	.globl _TF2
                                    135 	.globl _EXF2
                                    136 	.globl _RCLK
                                    137 	.globl _TCLK
                                    138 	.globl _EXEN2
                                    139 	.globl _TR2
                                    140 	.globl _C_T2
                                    141 	.globl _CP_RL2
                                    142 	.globl _T2CON_7
                                    143 	.globl _T2CON_6
                                    144 	.globl _T2CON_5
                                    145 	.globl _T2CON_4
                                    146 	.globl _T2CON_3
                                    147 	.globl _T2CON_2
                                    148 	.globl _T2CON_1
                                    149 	.globl _T2CON_0
                                    150 	.globl _PT2
                                    151 	.globl _ET2
                                    152 	.globl _TMOD
                                    153 	.globl _TL1
                                    154 	.globl _TL0
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TCON
                                    158 	.globl _SP
                                    159 	.globl _SCON
                                    160 	.globl _SBUF0
                                    161 	.globl _SBUF
                                    162 	.globl _PSW
                                    163 	.globl _PCON
                                    164 	.globl _P3
                                    165 	.globl _P2
                                    166 	.globl _P1
                                    167 	.globl _P0
                                    168 	.globl _IP
                                    169 	.globl _IE
                                    170 	.globl _DP0L
                                    171 	.globl _DPL
                                    172 	.globl _DP0H
                                    173 	.globl _DPH
                                    174 	.globl _B
                                    175 	.globl _ACC
                                    176 	.globl _EECON
                                    177 	.globl _KBF
                                    178 	.globl _KBE
                                    179 	.globl _KBLS
                                    180 	.globl _BRL
                                    181 	.globl _BDRCON
                                    182 	.globl _T2MOD
                                    183 	.globl _SPDAT
                                    184 	.globl _SPSTA
                                    185 	.globl _SPCON
                                    186 	.globl _SADEN
                                    187 	.globl _SADDR
                                    188 	.globl _WDTPRG
                                    189 	.globl _WDTRST
                                    190 	.globl _P5
                                    191 	.globl _P4
                                    192 	.globl _IPH1
                                    193 	.globl _IPL1
                                    194 	.globl _IPH0
                                    195 	.globl _IPL0
                                    196 	.globl _IEN1
                                    197 	.globl _IEN0
                                    198 	.globl _CMOD
                                    199 	.globl _CL
                                    200 	.globl _CH
                                    201 	.globl _CCON
                                    202 	.globl _CCAPM4
                                    203 	.globl _CCAPM3
                                    204 	.globl _CCAPM2
                                    205 	.globl _CCAPM1
                                    206 	.globl _CCAPM0
                                    207 	.globl _CCAP4L
                                    208 	.globl _CCAP3L
                                    209 	.globl _CCAP2L
                                    210 	.globl _CCAP1L
                                    211 	.globl _CCAP0L
                                    212 	.globl _CCAP4H
                                    213 	.globl _CCAP3H
                                    214 	.globl _CCAP2H
                                    215 	.globl _CCAP1H
                                    216 	.globl _CCAP0H
                                    217 	.globl _CKCON1
                                    218 	.globl _CKCON0
                                    219 	.globl _CKRL
                                    220 	.globl _AUXR1
                                    221 	.globl _AUXR
                                    222 	.globl _TH2
                                    223 	.globl _TL2
                                    224 	.globl _RCAP2H
                                    225 	.globl _RCAP2L
                                    226 	.globl _T2CON
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           0000C8   232 _T2CON	=	0x00c8
                           0000CA   233 _RCAP2L	=	0x00ca
                           0000CB   234 _RCAP2H	=	0x00cb
                           0000CC   235 _TL2	=	0x00cc
                           0000CD   236 _TH2	=	0x00cd
                           00008E   237 _AUXR	=	0x008e
                           0000A2   238 _AUXR1	=	0x00a2
                           000097   239 _CKRL	=	0x0097
                           00008F   240 _CKCON0	=	0x008f
                           0000AF   241 _CKCON1	=	0x00af
                           0000FA   242 _CCAP0H	=	0x00fa
                           0000FB   243 _CCAP1H	=	0x00fb
                           0000FC   244 _CCAP2H	=	0x00fc
                           0000FD   245 _CCAP3H	=	0x00fd
                           0000FE   246 _CCAP4H	=	0x00fe
                           0000EA   247 _CCAP0L	=	0x00ea
                           0000EB   248 _CCAP1L	=	0x00eb
                           0000EC   249 _CCAP2L	=	0x00ec
                           0000ED   250 _CCAP3L	=	0x00ed
                           0000EE   251 _CCAP4L	=	0x00ee
                           0000DA   252 _CCAPM0	=	0x00da
                           0000DB   253 _CCAPM1	=	0x00db
                           0000DC   254 _CCAPM2	=	0x00dc
                           0000DD   255 _CCAPM3	=	0x00dd
                           0000DE   256 _CCAPM4	=	0x00de
                           0000D8   257 _CCON	=	0x00d8
                           0000F9   258 _CH	=	0x00f9
                           0000E9   259 _CL	=	0x00e9
                           0000D9   260 _CMOD	=	0x00d9
                           0000A8   261 _IEN0	=	0x00a8
                           0000B1   262 _IEN1	=	0x00b1
                           0000B8   263 _IPL0	=	0x00b8
                           0000B7   264 _IPH0	=	0x00b7
                           0000B2   265 _IPL1	=	0x00b2
                           0000B3   266 _IPH1	=	0x00b3
                           0000C0   267 _P4	=	0x00c0
                           0000E8   268 _P5	=	0x00e8
                           0000A6   269 _WDTRST	=	0x00a6
                           0000A7   270 _WDTPRG	=	0x00a7
                           0000A9   271 _SADDR	=	0x00a9
                           0000B9   272 _SADEN	=	0x00b9
                           0000C3   273 _SPCON	=	0x00c3
                           0000C4   274 _SPSTA	=	0x00c4
                           0000C5   275 _SPDAT	=	0x00c5
                           0000C9   276 _T2MOD	=	0x00c9
                           00009B   277 _BDRCON	=	0x009b
                           00009A   278 _BRL	=	0x009a
                           00009C   279 _KBLS	=	0x009c
                           00009D   280 _KBE	=	0x009d
                           00009E   281 _KBF	=	0x009e
                           0000D2   282 _EECON	=	0x00d2
                           0000E0   283 _ACC	=	0x00e0
                           0000F0   284 _B	=	0x00f0
                           000083   285 _DPH	=	0x0083
                           000083   286 _DP0H	=	0x0083
                           000082   287 _DPL	=	0x0082
                           000082   288 _DP0L	=	0x0082
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           000080   291 _P0	=	0x0080
                           000090   292 _P1	=	0x0090
                           0000A0   293 _P2	=	0x00a0
                           0000B0   294 _P3	=	0x00b0
                           000087   295 _PCON	=	0x0087
                           0000D0   296 _PSW	=	0x00d0
                           000099   297 _SBUF	=	0x0099
                           000099   298 _SBUF0	=	0x0099
                           000098   299 _SCON	=	0x0098
                           000081   300 _SP	=	0x0081
                           000088   301 _TCON	=	0x0088
                           00008C   302 _TH0	=	0x008c
                           00008D   303 _TH1	=	0x008d
                           00008A   304 _TL0	=	0x008a
                           00008B   305 _TL1	=	0x008b
                           000089   306 _TMOD	=	0x0089
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           0000AD   312 _ET2	=	0x00ad
                           0000BD   313 _PT2	=	0x00bd
                           0000C8   314 _T2CON_0	=	0x00c8
                           0000C9   315 _T2CON_1	=	0x00c9
                           0000CA   316 _T2CON_2	=	0x00ca
                           0000CB   317 _T2CON_3	=	0x00cb
                           0000CC   318 _T2CON_4	=	0x00cc
                           0000CD   319 _T2CON_5	=	0x00cd
                           0000CE   320 _T2CON_6	=	0x00ce
                           0000CF   321 _T2CON_7	=	0x00cf
                           0000C8   322 _CP_RL2	=	0x00c8
                           0000C9   323 _C_T2	=	0x00c9
                           0000CA   324 _TR2	=	0x00ca
                           0000CB   325 _EXEN2	=	0x00cb
                           0000CC   326 _TCLK	=	0x00cc
                           0000CD   327 _RCLK	=	0x00cd
                           0000CE   328 _EXF2	=	0x00ce
                           0000CF   329 _TF2	=	0x00cf
                           0000DF   330 _CF	=	0x00df
                           0000DE   331 _CR	=	0x00de
                           0000DC   332 _CCF4	=	0x00dc
                           0000DB   333 _CCF3	=	0x00db
                           0000DA   334 _CCF2	=	0x00da
                           0000D9   335 _CCF1	=	0x00d9
                           0000D8   336 _CCF0	=	0x00d8
                           0000AE   337 _EC	=	0x00ae
                           0000BE   338 _PPCL	=	0x00be
                           0000BD   339 _PT2L	=	0x00bd
                           0000BC   340 _PSL	=	0x00bc
                           0000BB   341 _PT1L	=	0x00bb
                           0000BA   342 _PX1L	=	0x00ba
                           0000B9   343 _PT0L	=	0x00b9
                           0000B8   344 _PX0L	=	0x00b8
                           0000C0   345 _P4_0	=	0x00c0
                           0000C1   346 _P4_1	=	0x00c1
                           0000C2   347 _P4_2	=	0x00c2
                           0000C3   348 _P4_3	=	0x00c3
                           0000C4   349 _P4_4	=	0x00c4
                           0000C5   350 _P4_5	=	0x00c5
                           0000C6   351 _P4_6	=	0x00c6
                           0000C7   352 _P4_7	=	0x00c7
                           0000E8   353 _P5_0	=	0x00e8
                           0000E9   354 _P5_1	=	0x00e9
                           0000EA   355 _P5_2	=	0x00ea
                           0000EB   356 _P5_3	=	0x00eb
                           0000EC   357 _P5_4	=	0x00ec
                           0000ED   358 _P5_5	=	0x00ed
                           0000EE   359 _P5_6	=	0x00ee
                           0000EF   360 _P5_7	=	0x00ef
                           0000F0   361 _BREG_F0	=	0x00f0
                           0000F1   362 _BREG_F1	=	0x00f1
                           0000F2   363 _BREG_F2	=	0x00f2
                           0000F3   364 _BREG_F3	=	0x00f3
                           0000F4   365 _BREG_F4	=	0x00f4
                           0000F5   366 _BREG_F5	=	0x00f5
                           0000F6   367 _BREG_F6	=	0x00f6
                           0000F7   368 _BREG_F7	=	0x00f7
                           0000A8   369 _EX0	=	0x00a8
                           0000A9   370 _ET0	=	0x00a9
                           0000AA   371 _EX1	=	0x00aa
                           0000AB   372 _ET1	=	0x00ab
                           0000AC   373 _ES	=	0x00ac
                           0000AF   374 _EA	=	0x00af
                           0000B8   375 _PX0	=	0x00b8
                           0000B9   376 _PT0	=	0x00b9
                           0000BA   377 _PX1	=	0x00ba
                           0000BB   378 _PT1	=	0x00bb
                           0000BC   379 _PS	=	0x00bc
                           000080   380 _P0_0	=	0x0080
                           000081   381 _P0_1	=	0x0081
                           000082   382 _P0_2	=	0x0082
                           000083   383 _P0_3	=	0x0083
                           000084   384 _P0_4	=	0x0084
                           000085   385 _P0_5	=	0x0085
                           000086   386 _P0_6	=	0x0086
                           000087   387 _P0_7	=	0x0087
                           000090   388 _P1_0	=	0x0090
                           000091   389 _P1_1	=	0x0091
                           000092   390 _P1_2	=	0x0092
                           000093   391 _P1_3	=	0x0093
                           000094   392 _P1_4	=	0x0094
                           000095   393 _P1_5	=	0x0095
                           000096   394 _P1_6	=	0x0096
                           000097   395 _P1_7	=	0x0097
                           0000A0   396 _P2_0	=	0x00a0
                           0000A1   397 _P2_1	=	0x00a1
                           0000A2   398 _P2_2	=	0x00a2
                           0000A3   399 _P2_3	=	0x00a3
                           0000A4   400 _P2_4	=	0x00a4
                           0000A5   401 _P2_5	=	0x00a5
                           0000A6   402 _P2_6	=	0x00a6
                           0000A7   403 _P2_7	=	0x00a7
                           0000B0   404 _P3_0	=	0x00b0
                           0000B1   405 _P3_1	=	0x00b1
                           0000B2   406 _P3_2	=	0x00b2
                           0000B3   407 _P3_3	=	0x00b3
                           0000B4   408 _P3_4	=	0x00b4
                           0000B5   409 _P3_5	=	0x00b5
                           0000B6   410 _P3_6	=	0x00b6
                           0000B7   411 _P3_7	=	0x00b7
                           0000B0   412 _RXD	=	0x00b0
                           0000B0   413 _RXD0	=	0x00b0
                           0000B1   414 _TXD	=	0x00b1
                           0000B1   415 _TXD0	=	0x00b1
                           0000B2   416 _INT0	=	0x00b2
                           0000B3   417 _INT1	=	0x00b3
                           0000B4   418 _T0	=	0x00b4
                           0000B5   419 _T1	=	0x00b5
                           0000B6   420 _WR	=	0x00b6
                           0000B7   421 _RD	=	0x00b7
                           0000D0   422 _P	=	0x00d0
                           0000D1   423 _F1	=	0x00d1
                           0000D2   424 _OV	=	0x00d2
                           0000D3   425 _RS0	=	0x00d3
                           0000D4   426 _RS1	=	0x00d4
                           0000D5   427 _F0	=	0x00d5
                           0000D6   428 _AC	=	0x00d6
                           0000D7   429 _CY	=	0x00d7
                           000098   430 _RI	=	0x0098
                           000099   431 _TI	=	0x0099
                           00009A   432 _RB8	=	0x009a
                           00009B   433 _TB8	=	0x009b
                           00009C   434 _REN	=	0x009c
                           00009D   435 _SM2	=	0x009d
                           00009E   436 _SM1	=	0x009e
                           00009F   437 _SM0	=	0x009f
                           000088   438 _IT0	=	0x0088
                           000089   439 _IE0	=	0x0089
                           00008A   440 _IT1	=	0x008a
                           00008B   441 _IE1	=	0x008b
                           00008C   442 _TR0	=	0x008c
                           00008D   443 _TF0	=	0x008d
                           00008E   444 _TR1	=	0x008e
                           00008F   445 _TF1	=	0x008f
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable register banks
                                    448 ;--------------------------------------------------------
                                    449 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        450 	.ds 8
                                    451 ;--------------------------------------------------------
                                    452 ; internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area DSEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable items in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 ;--------------------------------------------------------
                                    459 ; Stack segment in internal ram 
                                    460 ;--------------------------------------------------------
                                    461 	.area	SSEG
      000008                        462 __start__stack:
      000008                        463 	.ds	1
                                    464 
                                    465 ;--------------------------------------------------------
                                    466 ; indirectly addressable internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area ISEG    (DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; absolute internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area IABS    (ABS,DATA)
                                    473 	.area IABS    (ABS,DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; bit data
                                    476 ;--------------------------------------------------------
                                    477 	.area BSEG    (BIT)
                                    478 ;--------------------------------------------------------
                                    479 ; paged external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area PSEG    (PAG,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XSEG    (XDATA)
      000400                        486 _delay_ms_ms_65536_27:
      000400                        487 	.ds 2
      000402                        488 _lcd_wait_busy_65536_32:
      000402                        489 	.ds 1
      000403                        490 _lcd_instruction_command_65536_34:
      000403                        491 	.ds 1
      000404                        492 _print_char_c_65536_36:
      000404                        493 	.ds 1
      000405                        494 _print_string_str_65536_38:
      000405                        495 	.ds 3
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external initialized ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT0 (CODE)
                                    506 	.area GSINIT1 (CODE)
                                    507 	.area GSINIT2 (CODE)
                                    508 	.area GSINIT3 (CODE)
                                    509 	.area GSINIT4 (CODE)
                                    510 	.area GSINIT5 (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area CSEG    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; interrupt vector 
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
      003000                        518 __interrupt_vect:
      003000 02 30 06         [24]  519 	ljmp	__sdcc_gsinit_startup
                                    520 ;--------------------------------------------------------
                                    521 ; global & static initialisations
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area GSINIT  (CODE)
                                    525 	.area GSFINAL (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.globl __sdcc_gsinit_startup
                                    528 	.globl __sdcc_program_startup
                                    529 	.globl __start__stack
                                    530 	.globl __mcs51_genXINIT
                                    531 	.globl __mcs51_genXRAMCLEAR
                                    532 	.globl __mcs51_genRAMCLEAR
                                    533 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  534 	ljmp	__sdcc_program_startup
                                    535 ;--------------------------------------------------------
                                    536 ; Home
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area HOME    (CODE)
      003003                        540 __sdcc_program_startup:
      003003 02 31 75         [24]  541 	ljmp	_main
                                    542 ;	return from main will return to caller
                                    543 ;--------------------------------------------------------
                                    544 ; code
                                    545 ;--------------------------------------------------------
                                    546 	.area CSEG    (CODE)
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'delay_ms'
                                    549 ;------------------------------------------------------------
                                    550 ;ms                        Allocated with name '_delay_ms_ms_65536_27'
                                    551 ;i                         Allocated with name '_delay_ms_i_65536_28'
                                    552 ;j                         Allocated with name '_delay_ms_j_65536_28'
                                    553 ;------------------------------------------------------------
                                    554 ;	lcd.c:26: void delay_ms(unsigned int ms) {
                                    555 ;	-----------------------------------------
                                    556 ;	 function delay_ms
                                    557 ;	-----------------------------------------
      003062                        558 _delay_ms:
                           000007   559 	ar7 = 0x07
                           000006   560 	ar6 = 0x06
                           000005   561 	ar5 = 0x05
                           000004   562 	ar4 = 0x04
                           000003   563 	ar3 = 0x03
                           000002   564 	ar2 = 0x02
                           000001   565 	ar1 = 0x01
                           000000   566 	ar0 = 0x00
      003062 AF 83            [24]  567 	mov	r7,dph
      003064 E5 82            [12]  568 	mov	a,dpl
      003066 90 04 00         [24]  569 	mov	dptr,#_delay_ms_ms_65536_27
      003069 F0               [24]  570 	movx	@dptr,a
      00306A EF               [12]  571 	mov	a,r7
      00306B A3               [24]  572 	inc	dptr
      00306C F0               [24]  573 	movx	@dptr,a
                                    574 ;	lcd.c:28: for (i = 0; i < ms; i++)
      00306D 90 04 00         [24]  575 	mov	dptr,#_delay_ms_ms_65536_27
      003070 E0               [24]  576 	movx	a,@dptr
      003071 FE               [12]  577 	mov	r6,a
      003072 A3               [24]  578 	inc	dptr
      003073 E0               [24]  579 	movx	a,@dptr
      003074 FF               [12]  580 	mov	r7,a
      003075 7C 00            [12]  581 	mov	r4,#0x00
      003077 7D 00            [12]  582 	mov	r5,#0x00
      003079                        583 00107$:
      003079 C3               [12]  584 	clr	c
      00307A EC               [12]  585 	mov	a,r4
      00307B 9E               [12]  586 	subb	a,r6
      00307C ED               [12]  587 	mov	a,r5
      00307D 9F               [12]  588 	subb	a,r7
      00307E 50 14            [24]  589 	jnc	00109$
                                    590 ;	lcd.c:29: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      003080 7A 7B            [12]  591 	mov	r2,#0x7b
      003082 7B 00            [12]  592 	mov	r3,#0x00
      003084                        593 00105$:
      003084 1A               [12]  594 	dec	r2
      003085 BA FF 01         [24]  595 	cjne	r2,#0xff,00130$
      003088 1B               [12]  596 	dec	r3
      003089                        597 00130$:
      003089 EA               [12]  598 	mov	a,r2
      00308A 4B               [12]  599 	orl	a,r3
      00308B 70 F7            [24]  600 	jnz	00105$
                                    601 ;	lcd.c:28: for (i = 0; i < ms; i++)
      00308D 0C               [12]  602 	inc	r4
      00308E BC 00 E8         [24]  603 	cjne	r4,#0x00,00107$
      003091 0D               [12]  604 	inc	r5
      003092 80 E5            [24]  605 	sjmp	00107$
      003094                        606 00109$:
                                    607 ;	lcd.c:30: }
      003094 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'lcd_wait'
                                    611 ;------------------------------------------------------------
                                    612 ;busy                      Allocated with name '_lcd_wait_busy_65536_32'
                                    613 ;------------------------------------------------------------
                                    614 ;	lcd.c:44: void lcd_wait(void) {
                                    615 ;	-----------------------------------------
                                    616 ;	 function lcd_wait
                                    617 ;	-----------------------------------------
      003095                        618 _lcd_wait:
                                    619 ;	lcd.c:48: LCD_DATA = 0xFF;           // Set LCD data port as input
      003095 75 80 FF         [24]  620 	mov	_P0,#0xff
                                    621 ;	lcd.c:51: LCD_RS = 0;               // Command mode
                                    622 ;	assignBit
      003098 C2 95            [12]  623 	clr	_P1_5
                                    624 ;	lcd.c:52: LCD_RW = 1;               // Read mode
                                    625 ;	assignBit
      00309A D2 96            [12]  626 	setb	_P1_6
                                    627 ;	lcd.c:54: do {
      00309C                        628 00101$:
                                    629 ;	lcd.c:55: LCD_EN = 1;           // Enable high
                                    630 ;	assignBit
      00309C D2 97            [12]  631 	setb	_P1_7
                                    632 ;	lcd.c:56: delay_ms(1);          // Small delay
      00309E 90 00 01         [24]  633 	mov	dptr,#0x0001
      0030A1 12 30 62         [24]  634 	lcall	_delay_ms
                                    635 ;	lcd.c:57: busy = LCD_DATA;      // Read busy flag
      0030A4 90 04 02         [24]  636 	mov	dptr,#_lcd_wait_busy_65536_32
      0030A7 E5 80            [12]  637 	mov	a,_P0
      0030A9 F0               [24]  638 	movx	@dptr,a
                                    639 ;	lcd.c:58: LCD_EN = 0;           // Enable low
                                    640 ;	assignBit
      0030AA C2 97            [12]  641 	clr	_P1_7
                                    642 ;	lcd.c:59: delay_ms(1);          // Small delay
      0030AC 90 00 01         [24]  643 	mov	dptr,#0x0001
      0030AF 12 30 62         [24]  644 	lcall	_delay_ms
                                    645 ;	lcd.c:60: } while (busy & 0x80);    // Check busy flag
      0030B2 90 04 02         [24]  646 	mov	dptr,#_lcd_wait_busy_65536_32
      0030B5 E0               [24]  647 	movx	a,@dptr
      0030B6 20 E7 E3         [24]  648 	jb	acc.7,00101$
                                    649 ;	lcd.c:62: LCD_DATA = 0x00;
      0030B9 75 80 00         [24]  650 	mov	_P0,#0x00
                                    651 ;	lcd.c:63: LCD_RW = 0;               // Write mode
                                    652 ;	assignBit
      0030BC C2 96            [12]  653 	clr	_P1_6
                                    654 ;	lcd.c:64: }
      0030BE 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'lcd_instruction'
                                    658 ;------------------------------------------------------------
                                    659 ;command                   Allocated with name '_lcd_instruction_command_65536_34'
                                    660 ;------------------------------------------------------------
                                    661 ;	lcd.c:67: void lcd_instruction(unsigned char command)
                                    662 ;	-----------------------------------------
                                    663 ;	 function lcd_instruction
                                    664 ;	-----------------------------------------
      0030BF                        665 _lcd_instruction:
      0030BF E5 82            [12]  666 	mov	a,dpl
      0030C1 90 04 03         [24]  667 	mov	dptr,#_lcd_instruction_command_65536_34
      0030C4 F0               [24]  668 	movx	@dptr,a
                                    669 ;	lcd.c:69: lcd_wait();               // Wait until LCD is ready
      0030C5 12 30 95         [24]  670 	lcall	_lcd_wait
                                    671 ;	lcd.c:70: P0 = command;       // Send command
      0030C8 90 04 03         [24]  672 	mov	dptr,#_lcd_instruction_command_65536_34
      0030CB E0               [24]  673 	movx	a,@dptr
      0030CC F5 80            [12]  674 	mov	_P0,a
                                    675 ;	lcd.c:71: LCD_RS = 0;              // Select command register
                                    676 ;	assignBit
      0030CE C2 95            [12]  677 	clr	_P1_5
                                    678 ;	lcd.c:72: LCD_RW = 0;              // Write mode
                                    679 ;	assignBit
      0030D0 C2 96            [12]  680 	clr	_P1_6
                                    681 ;	lcd.c:73: LCD_EN = 1; 
                                    682 ;	assignBit
      0030D2 D2 97            [12]  683 	setb	_P1_7
                                    684 ;	lcd.c:74: delay_ms(1);
      0030D4 90 00 01         [24]  685 	mov	dptr,#0x0001
      0030D7 12 30 62         [24]  686 	lcall	_delay_ms
                                    687 ;	lcd.c:75: LCD_EN = 0;              // Enable low
                                    688 ;	assignBit
      0030DA C2 97            [12]  689 	clr	_P1_7
                                    690 ;	lcd.c:78: }
      0030DC 22               [24]  691 	ret
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'print_char'
                                    694 ;------------------------------------------------------------
                                    695 ;c                         Allocated with name '_print_char_c_65536_36'
                                    696 ;------------------------------------------------------------
                                    697 ;	lcd.c:81: void print_char(unsigned char c) {
                                    698 ;	-----------------------------------------
                                    699 ;	 function print_char
                                    700 ;	-----------------------------------------
      0030DD                        701 _print_char:
      0030DD E5 82            [12]  702 	mov	a,dpl
      0030DF 90 04 04         [24]  703 	mov	dptr,#_print_char_c_65536_36
      0030E2 F0               [24]  704 	movx	@dptr,a
                                    705 ;	lcd.c:82: lcd_wait();               // Wait until LCD is ready
      0030E3 12 30 95         [24]  706 	lcall	_lcd_wait
                                    707 ;	lcd.c:83: P0 =  c;            // Send character
      0030E6 90 04 04         [24]  708 	mov	dptr,#_print_char_c_65536_36
      0030E9 E0               [24]  709 	movx	a,@dptr
      0030EA F5 80            [12]  710 	mov	_P0,a
                                    711 ;	lcd.c:84: LCD_RS = 1;              // Select data register
                                    712 ;	assignBit
      0030EC D2 95            [12]  713 	setb	_P1_5
                                    714 ;	lcd.c:85: LCD_RW = 0;              // Write mode
                                    715 ;	assignBit
      0030EE C2 96            [12]  716 	clr	_P1_6
                                    717 ;	lcd.c:89: LCD_EN = 1;              // Enable high
                                    718 ;	assignBit
      0030F0 D2 97            [12]  719 	setb	_P1_7
                                    720 ;	lcd.c:90: delay_ms(1);             // Small delay
      0030F2 90 00 01         [24]  721 	mov	dptr,#0x0001
      0030F5 12 30 62         [24]  722 	lcall	_delay_ms
                                    723 ;	lcd.c:91: LCD_EN = 0;              // Enable low
                                    724 ;	assignBit
      0030F8 C2 97            [12]  725 	clr	_P1_7
                                    726 ;	lcd.c:93: }
      0030FA 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'print_string'
                                    730 ;------------------------------------------------------------
                                    731 ;str                       Allocated with name '_print_string_str_65536_38'
                                    732 ;------------------------------------------------------------
                                    733 ;	lcd.c:96: void print_string(char *str)
                                    734 ;	-----------------------------------------
                                    735 ;	 function print_string
                                    736 ;	-----------------------------------------
      0030FB                        737 _print_string:
      0030FB AF F0            [24]  738 	mov	r7,b
      0030FD AE 83            [24]  739 	mov	r6,dph
      0030FF E5 82            [12]  740 	mov	a,dpl
      003101 90 04 05         [24]  741 	mov	dptr,#_print_string_str_65536_38
      003104 F0               [24]  742 	movx	@dptr,a
      003105 EE               [12]  743 	mov	a,r6
      003106 A3               [24]  744 	inc	dptr
      003107 F0               [24]  745 	movx	@dptr,a
      003108 EF               [12]  746 	mov	a,r7
      003109 A3               [24]  747 	inc	dptr
      00310A F0               [24]  748 	movx	@dptr,a
                                    749 ;	lcd.c:98: while (*str) print_char(*str++);
      00310B 90 04 05         [24]  750 	mov	dptr,#_print_string_str_65536_38
      00310E E0               [24]  751 	movx	a,@dptr
      00310F FD               [12]  752 	mov	r5,a
      003110 A3               [24]  753 	inc	dptr
      003111 E0               [24]  754 	movx	a,@dptr
      003112 FE               [12]  755 	mov	r6,a
      003113 A3               [24]  756 	inc	dptr
      003114 E0               [24]  757 	movx	a,@dptr
      003115 FF               [12]  758 	mov	r7,a
      003116                        759 00101$:
      003116 8D 82            [24]  760 	mov	dpl,r5
      003118 8E 83            [24]  761 	mov	dph,r6
      00311A 8F F0            [24]  762 	mov	b,r7
      00311C 12 31 86         [24]  763 	lcall	__gptrget
      00311F FC               [12]  764 	mov	r4,a
      003120 60 23            [24]  765 	jz	00108$
      003122 0D               [12]  766 	inc	r5
      003123 BD 00 01         [24]  767 	cjne	r5,#0x00,00116$
      003126 0E               [12]  768 	inc	r6
      003127                        769 00116$:
      003127 90 04 05         [24]  770 	mov	dptr,#_print_string_str_65536_38
      00312A ED               [12]  771 	mov	a,r5
      00312B F0               [24]  772 	movx	@dptr,a
      00312C EE               [12]  773 	mov	a,r6
      00312D A3               [24]  774 	inc	dptr
      00312E F0               [24]  775 	movx	@dptr,a
      00312F EF               [12]  776 	mov	a,r7
      003130 A3               [24]  777 	inc	dptr
      003131 F0               [24]  778 	movx	@dptr,a
      003132 8C 82            [24]  779 	mov	dpl,r4
      003134 C0 07            [24]  780 	push	ar7
      003136 C0 06            [24]  781 	push	ar6
      003138 C0 05            [24]  782 	push	ar5
      00313A 12 30 DD         [24]  783 	lcall	_print_char
      00313D D0 05            [24]  784 	pop	ar5
      00313F D0 06            [24]  785 	pop	ar6
      003141 D0 07            [24]  786 	pop	ar7
      003143 80 D1            [24]  787 	sjmp	00101$
      003145                        788 00108$:
      003145 90 04 05         [24]  789 	mov	dptr,#_print_string_str_65536_38
      003148 ED               [12]  790 	mov	a,r5
      003149 F0               [24]  791 	movx	@dptr,a
      00314A EE               [12]  792 	mov	a,r6
      00314B A3               [24]  793 	inc	dptr
      00314C F0               [24]  794 	movx	@dptr,a
      00314D EF               [12]  795 	mov	a,r7
      00314E A3               [24]  796 	inc	dptr
      00314F F0               [24]  797 	movx	@dptr,a
                                    798 ;	lcd.c:99: }
      003150 22               [24]  799 	ret
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'lcd_init'
                                    802 ;------------------------------------------------------------
                                    803 ;	lcd.c:102: void lcd_init(void) {
                                    804 ;	-----------------------------------------
                                    805 ;	 function lcd_init
                                    806 ;	-----------------------------------------
      003151                        807 _lcd_init:
                                    808 ;	lcd.c:103: delay_ms(20);            // Power-on delay
      003151 90 00 14         [24]  809 	mov	dptr,#0x0014
      003154 12 30 62         [24]  810 	lcall	_delay_ms
                                    811 ;	lcd.c:106: lcd_instruction(LCD_FUNCTION_SET);    // 8-bit mode, 2 lines, 5x7 dots
      003157 75 82 38         [24]  812 	mov	dpl,#0x38
      00315A 12 30 BF         [24]  813 	lcall	_lcd_instruction
                                    814 ;	lcd.c:112: lcd_instruction(LCD_DISPLAY_ON);      // Display ON, cursor ON, blink ON
      00315D 75 82 0F         [24]  815 	mov	dpl,#0x0f
      003160 12 30 BF         [24]  816 	lcall	_lcd_instruction
                                    817 ;	lcd.c:113: lcd_instruction(LCD_ENTRY_MODE);      // Entry mode set
      003163 75 82 06         [24]  818 	mov	dpl,#0x06
      003166 12 30 BF         [24]  819 	lcall	_lcd_instruction
                                    820 ;	lcd.c:114: lcd_instruction(LCD_CLEAR);           // Clear display
      003169 75 82 01         [24]  821 	mov	dpl,#0x01
      00316C 12 30 BF         [24]  822 	lcall	_lcd_instruction
                                    823 ;	lcd.c:115: lcd_instruction(LCD_SET_CURSOR);
      00316F 75 82 80         [24]  824 	mov	dpl,#0x80
                                    825 ;	lcd.c:117: }
      003172 02 30 BF         [24]  826 	ljmp	_lcd_instruction
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'main'
                                    829 ;------------------------------------------------------------
                                    830 ;	lcd.c:120: void main(void) {
                                    831 ;	-----------------------------------------
                                    832 ;	 function main
                                    833 ;	-----------------------------------------
      003175                        834 _main:
                                    835 ;	lcd.c:121: delay_ms(40);
      003175 90 00 28         [24]  836 	mov	dptr,#0x0028
      003178 12 30 62         [24]  837 	lcall	_delay_ms
                                    838 ;	lcd.c:123: lcd_init();
      00317B 12 31 51         [24]  839 	lcall	_lcd_init
                                    840 ;	lcd.c:125: print_char('H');
      00317E 75 82 48         [24]  841 	mov	dpl,#0x48
      003181 12 30 DD         [24]  842 	lcall	_print_char
                                    843 ;	lcd.c:130: while(1) 
      003184                        844 00102$:
                                    845 ;	lcd.c:134: }
      003184 80 FE            [24]  846 	sjmp	00102$
                                    847 	.area CSEG    (CODE)
                                    848 	.area CONST   (CODE)
                                    849 	.area XINIT   (CODE)
                                    850 	.area CABS    (ABS,CODE)
