                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module ui_user_input
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _printf
                                     14 	.globl _P5_7
                                     15 	.globl _P5_6
                                     16 	.globl _P5_5
                                     17 	.globl _P5_4
                                     18 	.globl _P5_3
                                     19 	.globl _P5_2
                                     20 	.globl _P5_1
                                     21 	.globl _P5_0
                                     22 	.globl _P4_7
                                     23 	.globl _P4_6
                                     24 	.globl _P4_5
                                     25 	.globl _P4_4
                                     26 	.globl _P4_3
                                     27 	.globl _P4_2
                                     28 	.globl _P4_1
                                     29 	.globl _P4_0
                                     30 	.globl _PX0L
                                     31 	.globl _PT0L
                                     32 	.globl _PX1L
                                     33 	.globl _PT1L
                                     34 	.globl _PSL
                                     35 	.globl _PT2L
                                     36 	.globl _PPCL
                                     37 	.globl _EC
                                     38 	.globl _CCF0
                                     39 	.globl _CCF1
                                     40 	.globl _CCF2
                                     41 	.globl _CCF3
                                     42 	.globl _CCF4
                                     43 	.globl _CR
                                     44 	.globl _CF
                                     45 	.globl _TF2
                                     46 	.globl _EXF2
                                     47 	.globl _RCLK
                                     48 	.globl _TCLK
                                     49 	.globl _EXEN2
                                     50 	.globl _TR2
                                     51 	.globl _C_T2
                                     52 	.globl _CP_RL2
                                     53 	.globl _T2CON_7
                                     54 	.globl _T2CON_6
                                     55 	.globl _T2CON_5
                                     56 	.globl _T2CON_4
                                     57 	.globl _T2CON_3
                                     58 	.globl _T2CON_2
                                     59 	.globl _T2CON_1
                                     60 	.globl _T2CON_0
                                     61 	.globl _PT2
                                     62 	.globl _ET2
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _PS
                                     72 	.globl _PT1
                                     73 	.globl _PX1
                                     74 	.globl _PT0
                                     75 	.globl _PX0
                                     76 	.globl _RD
                                     77 	.globl _WR
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _INT1
                                     81 	.globl _INT0
                                     82 	.globl _TXD
                                     83 	.globl _RXD
                                     84 	.globl _P3_7
                                     85 	.globl _P3_6
                                     86 	.globl _P3_5
                                     87 	.globl _P3_4
                                     88 	.globl _P3_3
                                     89 	.globl _P3_2
                                     90 	.globl _P3_1
                                     91 	.globl _P3_0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _SM0
                                    107 	.globl _SM1
                                    108 	.globl _SM2
                                    109 	.globl _REN
                                    110 	.globl _TB8
                                    111 	.globl _RB8
                                    112 	.globl _TI
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _EECON
                                    139 	.globl _KBF
                                    140 	.globl _KBE
                                    141 	.globl _KBLS
                                    142 	.globl _BRL
                                    143 	.globl _BDRCON
                                    144 	.globl _T2MOD
                                    145 	.globl _SPDAT
                                    146 	.globl _SPSTA
                                    147 	.globl _SPCON
                                    148 	.globl _SADEN
                                    149 	.globl _SADDR
                                    150 	.globl _WDTPRG
                                    151 	.globl _WDTRST
                                    152 	.globl _P5
                                    153 	.globl _P4
                                    154 	.globl _IPH1
                                    155 	.globl _IPL1
                                    156 	.globl _IPH0
                                    157 	.globl _IPL0
                                    158 	.globl _IEN1
                                    159 	.globl _IEN0
                                    160 	.globl _CMOD
                                    161 	.globl _CL
                                    162 	.globl _CH
                                    163 	.globl _CCON
                                    164 	.globl _CCAPM4
                                    165 	.globl _CCAPM3
                                    166 	.globl _CCAPM2
                                    167 	.globl _CCAPM1
                                    168 	.globl _CCAPM0
                                    169 	.globl _CCAP4L
                                    170 	.globl _CCAP3L
                                    171 	.globl _CCAP2L
                                    172 	.globl _CCAP1L
                                    173 	.globl _CCAP0L
                                    174 	.globl _CCAP4H
                                    175 	.globl _CCAP3H
                                    176 	.globl _CCAP2H
                                    177 	.globl _CCAP1H
                                    178 	.globl _CCAP0H
                                    179 	.globl _CKCON1
                                    180 	.globl _CKCON0
                                    181 	.globl _CKRL
                                    182 	.globl _AUXR1
                                    183 	.globl _AUXR
                                    184 	.globl _TH2
                                    185 	.globl _TL2
                                    186 	.globl _RCAP2H
                                    187 	.globl _RCAP2L
                                    188 	.globl _T2CON
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _PSW
                                    192 	.globl _IP
                                    193 	.globl _P3
                                    194 	.globl _IE
                                    195 	.globl _P2
                                    196 	.globl _SBUF
                                    197 	.globl _SCON
                                    198 	.globl _P1
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _PCON
                                    206 	.globl _DPH
                                    207 	.globl _DPL
                                    208 	.globl _SP
                                    209 	.globl _P0
                                    210 	.globl _block
                                    211 	.globl _data_range_flag
                                    212 	.globl _address_range_flag
                                    213 	.globl _ui
                                    214 	.globl _command_menu
                                    215 	.globl _take_address
                                    216 	.globl _take_data
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0	=	0x0080
                           000081   223 _SP	=	0x0081
                           000082   224 _DPL	=	0x0082
                           000083   225 _DPH	=	0x0083
                           000087   226 _PCON	=	0x0087
                           000088   227 _TCON	=	0x0088
                           000089   228 _TMOD	=	0x0089
                           00008A   229 _TL0	=	0x008a
                           00008B   230 _TL1	=	0x008b
                           00008C   231 _TH0	=	0x008c
                           00008D   232 _TH1	=	0x008d
                           000090   233 _P1	=	0x0090
                           000098   234 _SCON	=	0x0098
                           000099   235 _SBUF	=	0x0099
                           0000A0   236 _P2	=	0x00a0
                           0000A8   237 _IE	=	0x00a8
                           0000B0   238 _P3	=	0x00b0
                           0000B8   239 _IP	=	0x00b8
                           0000D0   240 _PSW	=	0x00d0
                           0000E0   241 _ACC	=	0x00e0
                           0000F0   242 _B	=	0x00f0
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
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           000080   299 _P0_0	=	0x0080
                           000081   300 _P0_1	=	0x0081
                           000082   301 _P0_2	=	0x0082
                           000083   302 _P0_3	=	0x0083
                           000084   303 _P0_4	=	0x0084
                           000085   304 _P0_5	=	0x0085
                           000086   305 _P0_6	=	0x0086
                           000087   306 _P0_7	=	0x0087
                           000088   307 _IT0	=	0x0088
                           000089   308 _IE0	=	0x0089
                           00008A   309 _IT1	=	0x008a
                           00008B   310 _IE1	=	0x008b
                           00008C   311 _TR0	=	0x008c
                           00008D   312 _TF0	=	0x008d
                           00008E   313 _TR1	=	0x008e
                           00008F   314 _TF1	=	0x008f
                           000090   315 _P1_0	=	0x0090
                           000091   316 _P1_1	=	0x0091
                           000092   317 _P1_2	=	0x0092
                           000093   318 _P1_3	=	0x0093
                           000094   319 _P1_4	=	0x0094
                           000095   320 _P1_5	=	0x0095
                           000096   321 _P1_6	=	0x0096
                           000097   322 _P1_7	=	0x0097
                           000098   323 _RI	=	0x0098
                           000099   324 _TI	=	0x0099
                           00009A   325 _RB8	=	0x009a
                           00009B   326 _TB8	=	0x009b
                           00009C   327 _REN	=	0x009c
                           00009D   328 _SM2	=	0x009d
                           00009E   329 _SM1	=	0x009e
                           00009F   330 _SM0	=	0x009f
                           0000A0   331 _P2_0	=	0x00a0
                           0000A1   332 _P2_1	=	0x00a1
                           0000A2   333 _P2_2	=	0x00a2
                           0000A3   334 _P2_3	=	0x00a3
                           0000A4   335 _P2_4	=	0x00a4
                           0000A5   336 _P2_5	=	0x00a5
                           0000A6   337 _P2_6	=	0x00a6
                           0000A7   338 _P2_7	=	0x00a7
                           0000A8   339 _EX0	=	0x00a8
                           0000A9   340 _ET0	=	0x00a9
                           0000AA   341 _EX1	=	0x00aa
                           0000AB   342 _ET1	=	0x00ab
                           0000AC   343 _ES	=	0x00ac
                           0000AF   344 _EA	=	0x00af
                           0000B0   345 _P3_0	=	0x00b0
                           0000B1   346 _P3_1	=	0x00b1
                           0000B2   347 _P3_2	=	0x00b2
                           0000B3   348 _P3_3	=	0x00b3
                           0000B4   349 _P3_4	=	0x00b4
                           0000B5   350 _P3_5	=	0x00b5
                           0000B6   351 _P3_6	=	0x00b6
                           0000B7   352 _P3_7	=	0x00b7
                           0000B0   353 _RXD	=	0x00b0
                           0000B1   354 _TXD	=	0x00b1
                           0000B2   355 _INT0	=	0x00b2
                           0000B3   356 _INT1	=	0x00b3
                           0000B4   357 _T0	=	0x00b4
                           0000B5   358 _T1	=	0x00b5
                           0000B6   359 _WR	=	0x00b6
                           0000B7   360 _RD	=	0x00b7
                           0000B8   361 _PX0	=	0x00b8
                           0000B9   362 _PT0	=	0x00b9
                           0000BA   363 _PX1	=	0x00ba
                           0000BB   364 _PT1	=	0x00bb
                           0000BC   365 _PS	=	0x00bc
                           0000D0   366 _P	=	0x00d0
                           0000D1   367 _F1	=	0x00d1
                           0000D2   368 _OV	=	0x00d2
                           0000D3   369 _RS0	=	0x00d3
                           0000D4   370 _RS1	=	0x00d4
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 _CY	=	0x00d7
                           0000AD   374 _ET2	=	0x00ad
                           0000BD   375 _PT2	=	0x00bd
                           0000C8   376 _T2CON_0	=	0x00c8
                           0000C9   377 _T2CON_1	=	0x00c9
                           0000CA   378 _T2CON_2	=	0x00ca
                           0000CB   379 _T2CON_3	=	0x00cb
                           0000CC   380 _T2CON_4	=	0x00cc
                           0000CD   381 _T2CON_5	=	0x00cd
                           0000CE   382 _T2CON_6	=	0x00ce
                           0000CF   383 _T2CON_7	=	0x00cf
                           0000C8   384 _CP_RL2	=	0x00c8
                           0000C9   385 _C_T2	=	0x00c9
                           0000CA   386 _TR2	=	0x00ca
                           0000CB   387 _EXEN2	=	0x00cb
                           0000CC   388 _TCLK	=	0x00cc
                           0000CD   389 _RCLK	=	0x00cd
                           0000CE   390 _EXF2	=	0x00ce
                           0000CF   391 _TF2	=	0x00cf
                           0000DF   392 _CF	=	0x00df
                           0000DE   393 _CR	=	0x00de
                           0000DC   394 _CCF4	=	0x00dc
                           0000DB   395 _CCF3	=	0x00db
                           0000DA   396 _CCF2	=	0x00da
                           0000D9   397 _CCF1	=	0x00d9
                           0000D8   398 _CCF0	=	0x00d8
                           0000AE   399 _EC	=	0x00ae
                           0000BE   400 _PPCL	=	0x00be
                           0000BD   401 _PT2L	=	0x00bd
                           0000BC   402 _PSL	=	0x00bc
                           0000BB   403 _PT1L	=	0x00bb
                           0000BA   404 _PX1L	=	0x00ba
                           0000B9   405 _PT0L	=	0x00b9
                           0000B8   406 _PX0L	=	0x00b8
                           0000C0   407 _P4_0	=	0x00c0
                           0000C1   408 _P4_1	=	0x00c1
                           0000C2   409 _P4_2	=	0x00c2
                           0000C3   410 _P4_3	=	0x00c3
                           0000C4   411 _P4_4	=	0x00c4
                           0000C5   412 _P4_5	=	0x00c5
                           0000C6   413 _P4_6	=	0x00c6
                           0000C7   414 _P4_7	=	0x00c7
                           0000E8   415 _P5_0	=	0x00e8
                           0000E9   416 _P5_1	=	0x00e9
                           0000EA   417 _P5_2	=	0x00ea
                           0000EB   418 _P5_3	=	0x00eb
                           0000EC   419 _P5_4	=	0x00ec
                           0000ED   420 _P5_5	=	0x00ed
                           0000EE   421 _P5_6	=	0x00ee
                           0000EF   422 _P5_7	=	0x00ef
                                    423 ;--------------------------------------------------------
                                    424 ; overlayable register banks
                                    425 ;--------------------------------------------------------
                                    426 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        427 	.ds 8
                                    428 ;--------------------------------------------------------
                                    429 ; internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area DSEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable items in internal ram 
                                    434 ;--------------------------------------------------------
                                    435 ;--------------------------------------------------------
                                    436 ; indirectly addressable internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area ISEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
                                    448 ;--------------------------------------------------------
                                    449 ; paged external ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area PSEG    (PAG,XDATA)
                                    452 ;--------------------------------------------------------
                                    453 ; external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area XSEG    (XDATA)
      000416                        456 _take_address_input_65537_18:
      000416                        457 	.ds 4
      00041A                        458 _take_address_address_65538_22:
      00041A                        459 	.ds 2
      00041C                        460 _take_data_input_65537_28:
      00041C                        461 	.ds 4
      000420                        462 _take_data_data_65538_32:
      000420                        463 	.ds 1
                                    464 ;--------------------------------------------------------
                                    465 ; absolute external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XABS    (ABS,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external initialized ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XISEG   (XDATA)
      00045A                        472 _address_range_flag::
      00045A                        473 	.ds 2
      00045C                        474 _data_range_flag::
      00045C                        475 	.ds 2
      00045E                        476 _block::
      00045E                        477 	.ds 2
                                    478 	.area HOME    (CODE)
                                    479 	.area GSINIT0 (CODE)
                                    480 	.area GSINIT1 (CODE)
                                    481 	.area GSINIT2 (CODE)
                                    482 	.area GSINIT3 (CODE)
                                    483 	.area GSINIT4 (CODE)
                                    484 	.area GSINIT5 (CODE)
                                    485 	.area GSINIT  (CODE)
                                    486 	.area GSFINAL (CODE)
                                    487 	.area CSEG    (CODE)
                                    488 ;--------------------------------------------------------
                                    489 ; global & static initialisations
                                    490 ;--------------------------------------------------------
                                    491 	.area HOME    (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; Home
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
                                    499 	.area HOME    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; code
                                    502 ;--------------------------------------------------------
                                    503 	.area CSEG    (CODE)
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'ui'
                                    506 ;------------------------------------------------------------
                                    507 ;	src/ui_user_input.c:10: void ui()
                                    508 ;	-----------------------------------------
                                    509 ;	 function ui
                                    510 ;	-----------------------------------------
      002B9C                        511 _ui:
                           000007   512 	ar7 = 0x07
                           000006   513 	ar6 = 0x06
                           000005   514 	ar5 = 0x05
                           000004   515 	ar4 = 0x04
                           000003   516 	ar3 = 0x03
                           000002   517 	ar2 = 0x02
                           000001   518 	ar1 = 0x01
                           000000   519 	ar0 = 0x00
                                    520 ;	src/ui_user_input.c:12: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      002B9C 74 15            [12]  521 	mov	a,#___str_0
      002B9E C0 E0            [24]  522 	push	acc
      002BA0 74 43            [12]  523 	mov	a,#(___str_0 >> 8)
      002BA2 C0 E0            [24]  524 	push	acc
      002BA4 74 80            [12]  525 	mov	a,#0x80
      002BA6 C0 E0            [24]  526 	push	acc
      002BA8 12 30 C9         [24]  527 	lcall	_printf
      002BAB 15 81            [12]  528 	dec	sp
      002BAD 15 81            [12]  529 	dec	sp
      002BAF 15 81            [12]  530 	dec	sp
                                    531 ;	src/ui_user_input.c:13: printf("║           I2C Memory Management System v1.0            ║\n\r");
      002BB1 74 C7            [12]  532 	mov	a,#___str_1
      002BB3 C0 E0            [24]  533 	push	acc
      002BB5 74 43            [12]  534 	mov	a,#(___str_1 >> 8)
      002BB7 C0 E0            [24]  535 	push	acc
      002BB9 74 80            [12]  536 	mov	a,#0x80
      002BBB C0 E0            [24]  537 	push	acc
      002BBD 12 30 C9         [24]  538 	lcall	_printf
      002BC0 15 81            [12]  539 	dec	sp
      002BC2 15 81            [12]  540 	dec	sp
      002BC4 15 81            [12]  541 	dec	sp
                                    542 ;	src/ui_user_input.c:14: printf("╚════════════════════════════════════════════════════════╝\n\r");
      002BC6 74 08            [12]  543 	mov	a,#___str_2
      002BC8 C0 E0            [24]  544 	push	acc
      002BCA 74 44            [12]  545 	mov	a,#(___str_2 >> 8)
      002BCC C0 E0            [24]  546 	push	acc
      002BCE 74 80            [12]  547 	mov	a,#0x80
      002BD0 C0 E0            [24]  548 	push	acc
      002BD2 12 30 C9         [24]  549 	lcall	_printf
      002BD5 15 81            [12]  550 	dec	sp
      002BD7 15 81            [12]  551 	dec	sp
      002BD9 15 81            [12]  552 	dec	sp
                                    553 ;	src/ui_user_input.c:16: }
      002BDB 22               [24]  554 	ret
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'command_menu'
                                    557 ;------------------------------------------------------------
                                    558 ;	src/ui_user_input.c:21: void command_menu()
                                    559 ;	-----------------------------------------
                                    560 ;	 function command_menu
                                    561 ;	-----------------------------------------
      002BDC                        562 _command_menu:
                                    563 ;	src/ui_user_input.c:23: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      002BDC 74 B9            [12]  564 	mov	a,#___str_3
      002BDE C0 E0            [24]  565 	push	acc
      002BE0 74 44            [12]  566 	mov	a,#(___str_3 >> 8)
      002BE2 C0 E0            [24]  567 	push	acc
      002BE4 74 80            [12]  568 	mov	a,#0x80
      002BE6 C0 E0            [24]  569 	push	acc
      002BE8 12 30 C9         [24]  570 	lcall	_printf
      002BEB 15 81            [12]  571 	dec	sp
      002BED 15 81            [12]  572 	dec	sp
      002BEF 15 81            [12]  573 	dec	sp
                                    574 ;	src/ui_user_input.c:24: printf("│  Command   │               Description                  │\n\r");
      002BF1 74 6F            [12]  575 	mov	a,#___str_4
      002BF3 C0 E0            [24]  576 	push	acc
      002BF5 74 45            [12]  577 	mov	a,#(___str_4 >> 8)
      002BF7 C0 E0            [24]  578 	push	acc
      002BF9 74 80            [12]  579 	mov	a,#0x80
      002BFB C0 E0            [24]  580 	push	acc
      002BFD 12 30 C9         [24]  581 	lcall	_printf
      002C00 15 81            [12]  582 	dec	sp
      002C02 15 81            [12]  583 	dec	sp
      002C04 15 81            [12]  584 	dec	sp
                                    585 ;	src/ui_user_input.c:25: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      002C06 74 B3            [12]  586 	mov	a,#___str_5
      002C08 C0 E0            [24]  587 	push	acc
      002C0A 74 45            [12]  588 	mov	a,#(___str_5 >> 8)
      002C0C C0 E0            [24]  589 	push	acc
      002C0E 74 80            [12]  590 	mov	a,#0x80
      002C10 C0 E0            [24]  591 	push	acc
      002C12 12 30 C9         [24]  592 	lcall	_printf
      002C15 15 81            [12]  593 	dec	sp
      002C17 15 81            [12]  594 	dec	sp
      002C19 15 81            [12]  595 	dec	sp
                                    596 ;	src/ui_user_input.c:26: printf("│     R      │ Read from address                          │\n\r");
      002C1B 74 67            [12]  597 	mov	a,#___str_6
      002C1D C0 E0            [24]  598 	push	acc
      002C1F 74 46            [12]  599 	mov	a,#(___str_6 >> 8)
      002C21 C0 E0            [24]  600 	push	acc
      002C23 74 80            [12]  601 	mov	a,#0x80
      002C25 C0 E0            [24]  602 	push	acc
      002C27 12 30 C9         [24]  603 	lcall	_printf
      002C2A 15 81            [12]  604 	dec	sp
      002C2C 15 81            [12]  605 	dec	sp
      002C2E 15 81            [12]  606 	dec	sp
                                    607 ;	src/ui_user_input.c:27: printf("│     W      │ Write data to address                      │\n\r");
      002C30 74 AB            [12]  608 	mov	a,#___str_7
      002C32 C0 E0            [24]  609 	push	acc
      002C34 74 46            [12]  610 	mov	a,#(___str_7 >> 8)
      002C36 C0 E0            [24]  611 	push	acc
      002C38 74 80            [12]  612 	mov	a,#0x80
      002C3A C0 E0            [24]  613 	push	acc
      002C3C 12 30 C9         [24]  614 	lcall	_printf
      002C3F 15 81            [12]  615 	dec	sp
      002C41 15 81            [12]  616 	dec	sp
      002C43 15 81            [12]  617 	dec	sp
                                    618 ;	src/ui_user_input.c:28: printf("│     H      │ Display hex dump                           │\n\r");
      002C45 74 EF            [12]  619 	mov	a,#___str_8
      002C47 C0 E0            [24]  620 	push	acc
      002C49 74 46            [12]  621 	mov	a,#(___str_8 >> 8)
      002C4B C0 E0            [24]  622 	push	acc
      002C4D 74 80            [12]  623 	mov	a,#0x80
      002C4F C0 E0            [24]  624 	push	acc
      002C51 12 30 C9         [24]  625 	lcall	_printf
      002C54 15 81            [12]  626 	dec	sp
      002C56 15 81            [12]  627 	dec	sp
      002C58 15 81            [12]  628 	dec	sp
                                    629 ;	src/ui_user_input.c:29: printf("│     X      │ Reset memory system                        │\n\r");
      002C5A 74 33            [12]  630 	mov	a,#___str_9
      002C5C C0 E0            [24]  631 	push	acc
      002C5E 74 47            [12]  632 	mov	a,#(___str_9 >> 8)
      002C60 C0 E0            [24]  633 	push	acc
      002C62 74 80            [12]  634 	mov	a,#0x80
      002C64 C0 E0            [24]  635 	push	acc
      002C66 12 30 C9         [24]  636 	lcall	_printf
      002C69 15 81            [12]  637 	dec	sp
      002C6B 15 81            [12]  638 	dec	sp
      002C6D 15 81            [12]  639 	dec	sp
                                    640 ;	src/ui_user_input.c:30: printf("│     ?      │ Display this help menu                     │\n\r");
      002C6F 74 77            [12]  641 	mov	a,#___str_10
      002C71 C0 E0            [24]  642 	push	acc
      002C73 74 47            [12]  643 	mov	a,#(___str_10 >> 8)
      002C75 C0 E0            [24]  644 	push	acc
      002C77 74 80            [12]  645 	mov	a,#0x80
      002C79 C0 E0            [24]  646 	push	acc
      002C7B 12 30 C9         [24]  647 	lcall	_printf
      002C7E 15 81            [12]  648 	dec	sp
      002C80 15 81            [12]  649 	dec	sp
      002C82 15 81            [12]  650 	dec	sp
                                    651 ;	src/ui_user_input.c:31: printf("│     I      │ IO Expander Mode                           │\n\r");
      002C84 74 BB            [12]  652 	mov	a,#___str_11
      002C86 C0 E0            [24]  653 	push	acc
      002C88 74 47            [12]  654 	mov	a,#(___str_11 >> 8)
      002C8A C0 E0            [24]  655 	push	acc
      002C8C 74 80            [12]  656 	mov	a,#0x80
      002C8E C0 E0            [24]  657 	push	acc
      002C90 12 30 C9         [24]  658 	lcall	_printf
      002C93 15 81            [12]  659 	dec	sp
      002C95 15 81            [12]  660 	dec	sp
      002C97 15 81            [12]  661 	dec	sp
                                    662 ;	src/ui_user_input.c:32: printf("│     L      │ Exit IO Expander Mode                      │\n\r");
      002C99 74 FF            [12]  663 	mov	a,#___str_12
      002C9B C0 E0            [24]  664 	push	acc
      002C9D 74 47            [12]  665 	mov	a,#(___str_12 >> 8)
      002C9F C0 E0            [24]  666 	push	acc
      002CA1 74 80            [12]  667 	mov	a,#0x80
      002CA3 C0 E0            [24]  668 	push	acc
      002CA5 12 30 C9         [24]  669 	lcall	_printf
      002CA8 15 81            [12]  670 	dec	sp
      002CAA 15 81            [12]  671 	dec	sp
      002CAC 15 81            [12]  672 	dec	sp
                                    673 ;	src/ui_user_input.c:33: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      002CAE 74 43            [12]  674 	mov	a,#___str_13
      002CB0 C0 E0            [24]  675 	push	acc
      002CB2 74 48            [12]  676 	mov	a,#(___str_13 >> 8)
      002CB4 C0 E0            [24]  677 	push	acc
      002CB6 74 80            [12]  678 	mov	a,#0x80
      002CB8 C0 E0            [24]  679 	push	acc
      002CBA 12 30 C9         [24]  680 	lcall	_printf
      002CBD 15 81            [12]  681 	dec	sp
      002CBF 15 81            [12]  682 	dec	sp
      002CC1 15 81            [12]  683 	dec	sp
                                    684 ;	src/ui_user_input.c:36: }
      002CC3 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'take_address'
                                    688 ;------------------------------------------------------------
                                    689 ;input                     Allocated with name '_take_address_input_65537_18'
                                    690 ;i                         Allocated with name '_take_address_i_65537_18'
                                    691 ;c                         Allocated with name '_take_address_c_65537_18'
                                    692 ;address                   Allocated with name '_take_address_address_65538_22'
                                    693 ;block                     Allocated with name '_take_address_block_65539_26'
                                    694 ;------------------------------------------------------------
                                    695 ;	src/ui_user_input.c:43: unsigned int take_address() 
                                    696 ;	-----------------------------------------
                                    697 ;	 function take_address
                                    698 ;	-----------------------------------------
      002CC4                        699 _take_address:
                                    700 ;	src/ui_user_input.c:45: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      002CC4 74 F7            [12]  701 	mov	a,#___str_14
      002CC6 C0 E0            [24]  702 	push	acc
      002CC8 74 48            [12]  703 	mov	a,#(___str_14 >> 8)
      002CCA C0 E0            [24]  704 	push	acc
      002CCC 74 80            [12]  705 	mov	a,#0x80
      002CCE C0 E0            [24]  706 	push	acc
      002CD0 12 30 C9         [24]  707 	lcall	_printf
      002CD3 15 81            [12]  708 	dec	sp
      002CD5 15 81            [12]  709 	dec	sp
      002CD7 15 81            [12]  710 	dec	sp
                                    711 ;	src/ui_user_input.c:46: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002CD9 90 04 16         [24]  712 	mov	dptr,#_take_address_input_65537_18
      002CDC E4               [12]  713 	clr	a
      002CDD F0               [24]  714 	movx	@dptr,a
      002CDE 90 04 17         [24]  715 	mov	dptr,#(_take_address_input_65537_18 + 0x0001)
      002CE1 F0               [24]  716 	movx	@dptr,a
      002CE2 90 04 18         [24]  717 	mov	dptr,#(_take_address_input_65537_18 + 0x0002)
      002CE5 F0               [24]  718 	movx	@dptr,a
      002CE6 90 04 19         [24]  719 	mov	dptr,#(_take_address_input_65537_18 + 0x0003)
      002CE9 F0               [24]  720 	movx	@dptr,a
                                    721 ;	src/ui_user_input.c:50: printf("| $ ");
      002CEA 74 28            [12]  722 	mov	a,#___str_15
      002CEC C0 E0            [24]  723 	push	acc
      002CEE 74 49            [12]  724 	mov	a,#(___str_15 >> 8)
      002CF0 C0 E0            [24]  725 	push	acc
      002CF2 74 80            [12]  726 	mov	a,#0x80
      002CF4 C0 E0            [24]  727 	push	acc
      002CF6 12 30 C9         [24]  728 	lcall	_printf
      002CF9 15 81            [12]  729 	dec	sp
      002CFB 15 81            [12]  730 	dec	sp
      002CFD 15 81            [12]  731 	dec	sp
                                    732 ;	src/ui_user_input.c:52: while (i < 3) {
      002CFF 7E 00            [12]  733 	mov	r6,#0x00
      002D01 7F 00            [12]  734 	mov	r7,#0x00
      002D03                        735 00111$:
      002D03 C3               [12]  736 	clr	c
      002D04 EE               [12]  737 	mov	a,r6
      002D05 94 03            [12]  738 	subb	a,#0x03
      002D07 EF               [12]  739 	mov	a,r7
      002D08 64 80            [12]  740 	xrl	a,#0x80
      002D0A 94 80            [12]  741 	subb	a,#0x80
      002D0C 50 5B            [24]  742 	jnc	00113$
                                    743 ;	src/ui_user_input.c:54: c = getchar();
      002D0E C0 07            [24]  744 	push	ar7
      002D10 C0 06            [24]  745 	push	ar6
      002D12 12 29 A2         [24]  746 	lcall	_getchar
      002D15 AC 82            [24]  747 	mov	r4,dpl
      002D17 AD 83            [24]  748 	mov	r5,dph
      002D19 D0 06            [24]  749 	pop	ar6
      002D1B D0 07            [24]  750 	pop	ar7
                                    751 ;	src/ui_user_input.c:57: if (c == '\r' || c == '\n') {
      002D1D BC 0D 02         [24]  752 	cjne	r4,#0x0d,00200$
      002D20 80 47            [24]  753 	sjmp	00113$
      002D22                        754 00200$:
      002D22 BC 0A 02         [24]  755 	cjne	r4,#0x0a,00201$
      002D25 80 42            [24]  756 	sjmp	00113$
      002D27                        757 00201$:
                                    758 ;	src/ui_user_input.c:62: if ((c >= '0' && c <= '9') || 
      002D27 BC 30 00         [24]  759 	cjne	r4,#0x30,00202$
      002D2A                        760 00202$:
      002D2A 40 05            [24]  761 	jc	00108$
      002D2C EC               [12]  762 	mov	a,r4
      002D2D 24 C6            [12]  763 	add	a,#0xff - 0x39
      002D2F 50 14            [24]  764 	jnc	00104$
      002D31                        765 00108$:
                                    766 ;	src/ui_user_input.c:63: (c >= 'a' && c <= 'f') || 
      002D31 BC 61 00         [24]  767 	cjne	r4,#0x61,00205$
      002D34                        768 00205$:
      002D34 40 05            [24]  769 	jc	00110$
      002D36 EC               [12]  770 	mov	a,r4
      002D37 24 99            [12]  771 	add	a,#0xff - 0x66
      002D39 50 0A            [24]  772 	jnc	00104$
      002D3B                        773 00110$:
                                    774 ;	src/ui_user_input.c:64: (c >= 'A' && c <= 'F')) {
      002D3B BC 41 00         [24]  775 	cjne	r4,#0x41,00208$
      002D3E                        776 00208$:
      002D3E 40 C3            [24]  777 	jc	00111$
      002D40 EC               [12]  778 	mov	a,r4
      002D41 24 B9            [12]  779 	add	a,#0xff - 0x46
      002D43 40 BE            [24]  780 	jc	00111$
      002D45                        781 00104$:
                                    782 ;	src/ui_user_input.c:66: input[i] = c;
      002D45 EE               [12]  783 	mov	a,r6
      002D46 24 16            [12]  784 	add	a,#_take_address_input_65537_18
      002D48 F5 82            [12]  785 	mov	dpl,a
      002D4A EF               [12]  786 	mov	a,r7
      002D4B 34 04            [12]  787 	addc	a,#(_take_address_input_65537_18 >> 8)
      002D4D F5 83            [12]  788 	mov	dph,a
      002D4F EC               [12]  789 	mov	a,r4
      002D50 F0               [24]  790 	movx	@dptr,a
                                    791 ;	src/ui_user_input.c:67: putchar(c);  // Echo character back
      002D51 7D 00            [12]  792 	mov	r5,#0x00
      002D53 8C 82            [24]  793 	mov	dpl,r4
      002D55 8D 83            [24]  794 	mov	dph,r5
      002D57 C0 07            [24]  795 	push	ar7
      002D59 C0 06            [24]  796 	push	ar6
      002D5B 12 29 83         [24]  797 	lcall	_putchar
      002D5E D0 06            [24]  798 	pop	ar6
      002D60 D0 07            [24]  799 	pop	ar7
                                    800 ;	src/ui_user_input.c:68: i++;
      002D62 0E               [12]  801 	inc	r6
      002D63 BE 00 9D         [24]  802 	cjne	r6,#0x00,00111$
      002D66 0F               [12]  803 	inc	r7
      002D67 80 9A            [24]  804 	sjmp	00111$
      002D69                        805 00113$:
                                    806 ;	src/ui_user_input.c:72: input[i] = '\0';  // Null-terminate the string
      002D69 EE               [12]  807 	mov	a,r6
      002D6A 24 16            [12]  808 	add	a,#_take_address_input_65537_18
      002D6C F5 82            [12]  809 	mov	dpl,a
      002D6E EF               [12]  810 	mov	a,r7
      002D6F 34 04            [12]  811 	addc	a,#(_take_address_input_65537_18 >> 8)
      002D71 F5 83            [12]  812 	mov	dph,a
      002D73 E4               [12]  813 	clr	a
      002D74 F0               [24]  814 	movx	@dptr,a
                                    815 ;	src/ui_user_input.c:75: unsigned int address = 0;
      002D75 90 04 1A         [24]  816 	mov	dptr,#_take_address_address_65538_22
      002D78 F0               [24]  817 	movx	@dptr,a
      002D79 A3               [24]  818 	inc	dptr
      002D7A F0               [24]  819 	movx	@dptr,a
                                    820 ;	src/ui_user_input.c:76: for(i = 0; input[i] != '\0'; i++) {
      002D7B 7E 00            [12]  821 	mov	r6,#0x00
      002D7D 7F 00            [12]  822 	mov	r7,#0x00
      002D7F                        823 00129$:
      002D7F EE               [12]  824 	mov	a,r6
      002D80 24 16            [12]  825 	add	a,#_take_address_input_65537_18
      002D82 F5 82            [12]  826 	mov	dpl,a
      002D84 EF               [12]  827 	mov	a,r7
      002D85 34 04            [12]  828 	addc	a,#(_take_address_input_65537_18 >> 8)
      002D87 F5 83            [12]  829 	mov	dph,a
      002D89 E0               [24]  830 	movx	a,@dptr
      002D8A FD               [12]  831 	mov	r5,a
      002D8B 70 03            [24]  832 	jnz	00212$
      002D8D 02 2E 38         [24]  833 	ljmp	00125$
      002D90                        834 00212$:
                                    835 ;	src/ui_user_input.c:77: address = address * 16;
      002D90 90 04 1A         [24]  836 	mov	dptr,#_take_address_address_65538_22
      002D93 E0               [24]  837 	movx	a,@dptr
      002D94 FB               [12]  838 	mov	r3,a
      002D95 A3               [24]  839 	inc	dptr
      002D96 E0               [24]  840 	movx	a,@dptr
      002D97 C4               [12]  841 	swap	a
      002D98 54 F0            [12]  842 	anl	a,#0xf0
      002D9A CB               [12]  843 	xch	a,r3
      002D9B C4               [12]  844 	swap	a
      002D9C CB               [12]  845 	xch	a,r3
      002D9D 6B               [12]  846 	xrl	a,r3
      002D9E CB               [12]  847 	xch	a,r3
      002D9F 54 F0            [12]  848 	anl	a,#0xf0
      002DA1 CB               [12]  849 	xch	a,r3
      002DA2 6B               [12]  850 	xrl	a,r3
      002DA3 FC               [12]  851 	mov	r4,a
      002DA4 90 04 1A         [24]  852 	mov	dptr,#_take_address_address_65538_22
      002DA7 EB               [12]  853 	mov	a,r3
      002DA8 F0               [24]  854 	movx	@dptr,a
      002DA9 EC               [12]  855 	mov	a,r4
      002DAA A3               [24]  856 	inc	dptr
      002DAB F0               [24]  857 	movx	@dptr,a
                                    858 ;	src/ui_user_input.c:78: if(input[i] >= '0' && input[i] <= '9')
      002DAC BD 30 00         [24]  859 	cjne	r5,#0x30,00213$
      002DAF                        860 00213$:
      002DAF 40 23            [24]  861 	jc	00122$
      002DB1 ED               [12]  862 	mov	a,r5
      002DB2 24 C6            [12]  863 	add	a,#0xff - 0x39
      002DB4 40 1E            [24]  864 	jc	00122$
                                    865 ;	src/ui_user_input.c:79: address += input[i] - '0';
      002DB6 7C 00            [12]  866 	mov	r4,#0x00
      002DB8 ED               [12]  867 	mov	a,r5
      002DB9 24 D0            [12]  868 	add	a,#0xd0
      002DBB FD               [12]  869 	mov	r5,a
      002DBC EC               [12]  870 	mov	a,r4
      002DBD 34 FF            [12]  871 	addc	a,#0xff
      002DBF FC               [12]  872 	mov	r4,a
      002DC0 90 04 1A         [24]  873 	mov	dptr,#_take_address_address_65538_22
      002DC3 E0               [24]  874 	movx	a,@dptr
      002DC4 FA               [12]  875 	mov	r2,a
      002DC5 A3               [24]  876 	inc	dptr
      002DC6 E0               [24]  877 	movx	a,@dptr
      002DC7 FB               [12]  878 	mov	r3,a
      002DC8 90 04 1A         [24]  879 	mov	dptr,#_take_address_address_65538_22
      002DCB ED               [12]  880 	mov	a,r5
      002DCC 2A               [12]  881 	add	a,r2
      002DCD F0               [24]  882 	movx	@dptr,a
      002DCE EC               [12]  883 	mov	a,r4
      002DCF 3B               [12]  884 	addc	a,r3
      002DD0 A3               [24]  885 	inc	dptr
      002DD1 F0               [24]  886 	movx	@dptr,a
      002DD2 80 5C            [24]  887 	sjmp	00130$
      002DD4                        888 00122$:
                                    889 ;	src/ui_user_input.c:80: else if(input[i] >= 'A' && input[i] <= 'F')
      002DD4 EE               [12]  890 	mov	a,r6
      002DD5 24 16            [12]  891 	add	a,#_take_address_input_65537_18
      002DD7 F5 82            [12]  892 	mov	dpl,a
      002DD9 EF               [12]  893 	mov	a,r7
      002DDA 34 04            [12]  894 	addc	a,#(_take_address_input_65537_18 >> 8)
      002DDC F5 83            [12]  895 	mov	dph,a
      002DDE E0               [24]  896 	movx	a,@dptr
      002DDF FD               [12]  897 	mov	r5,a
      002DE0 BD 41 00         [24]  898 	cjne	r5,#0x41,00216$
      002DE3                        899 00216$:
      002DE3 40 25            [24]  900 	jc	00118$
      002DE5 ED               [12]  901 	mov	a,r5
      002DE6 24 B9            [12]  902 	add	a,#0xff - 0x46
      002DE8 40 20            [24]  903 	jc	00118$
                                    904 ;	src/ui_user_input.c:81: address += input[i] - 'A' + 10;
      002DEA 8D 03            [24]  905 	mov	ar3,r5
      002DEC 7C 00            [12]  906 	mov	r4,#0x00
      002DEE 74 C9            [12]  907 	mov	a,#0xc9
      002DF0 2B               [12]  908 	add	a,r3
      002DF1 FB               [12]  909 	mov	r3,a
      002DF2 74 FF            [12]  910 	mov	a,#0xff
      002DF4 3C               [12]  911 	addc	a,r4
      002DF5 FC               [12]  912 	mov	r4,a
      002DF6 90 04 1A         [24]  913 	mov	dptr,#_take_address_address_65538_22
      002DF9 E0               [24]  914 	movx	a,@dptr
      002DFA F9               [12]  915 	mov	r1,a
      002DFB A3               [24]  916 	inc	dptr
      002DFC E0               [24]  917 	movx	a,@dptr
      002DFD FA               [12]  918 	mov	r2,a
      002DFE 90 04 1A         [24]  919 	mov	dptr,#_take_address_address_65538_22
      002E01 EB               [12]  920 	mov	a,r3
      002E02 29               [12]  921 	add	a,r1
      002E03 F0               [24]  922 	movx	@dptr,a
      002E04 EC               [12]  923 	mov	a,r4
      002E05 3A               [12]  924 	addc	a,r2
      002E06 A3               [24]  925 	inc	dptr
      002E07 F0               [24]  926 	movx	@dptr,a
      002E08 80 26            [24]  927 	sjmp	00130$
      002E0A                        928 00118$:
                                    929 ;	src/ui_user_input.c:82: else if(input[i] >= 'a' && input[i] <= 'f')
      002E0A BD 61 00         [24]  930 	cjne	r5,#0x61,00219$
      002E0D                        931 00219$:
      002E0D 40 21            [24]  932 	jc	00130$
      002E0F ED               [12]  933 	mov	a,r5
      002E10 24 99            [12]  934 	add	a,#0xff - 0x66
      002E12 40 1C            [24]  935 	jc	00130$
                                    936 ;	src/ui_user_input.c:83: address += input[i] - 'a' + 10;
      002E14 7C 00            [12]  937 	mov	r4,#0x00
      002E16 74 A9            [12]  938 	mov	a,#0xa9
      002E18 2D               [12]  939 	add	a,r5
      002E19 FD               [12]  940 	mov	r5,a
      002E1A 74 FF            [12]  941 	mov	a,#0xff
      002E1C 3C               [12]  942 	addc	a,r4
      002E1D FC               [12]  943 	mov	r4,a
      002E1E 90 04 1A         [24]  944 	mov	dptr,#_take_address_address_65538_22
      002E21 E0               [24]  945 	movx	a,@dptr
      002E22 FA               [12]  946 	mov	r2,a
      002E23 A3               [24]  947 	inc	dptr
      002E24 E0               [24]  948 	movx	a,@dptr
      002E25 FB               [12]  949 	mov	r3,a
      002E26 90 04 1A         [24]  950 	mov	dptr,#_take_address_address_65538_22
      002E29 ED               [12]  951 	mov	a,r5
      002E2A 2A               [12]  952 	add	a,r2
      002E2B F0               [24]  953 	movx	@dptr,a
      002E2C EC               [12]  954 	mov	a,r4
      002E2D 3B               [12]  955 	addc	a,r3
      002E2E A3               [24]  956 	inc	dptr
      002E2F F0               [24]  957 	movx	@dptr,a
      002E30                        958 00130$:
                                    959 ;	src/ui_user_input.c:76: for(i = 0; input[i] != '\0'; i++) {
      002E30 0E               [12]  960 	inc	r6
      002E31 BE 00 01         [24]  961 	cjne	r6,#0x00,00222$
      002E34 0F               [12]  962 	inc	r7
      002E35                        963 00222$:
      002E35 02 2D 7F         [24]  964 	ljmp	00129$
      002E38                        965 00125$:
                                    966 ;	src/ui_user_input.c:86: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      002E38 90 04 1A         [24]  967 	mov	dptr,#_take_address_address_65538_22
      002E3B E0               [24]  968 	movx	a,@dptr
      002E3C FE               [12]  969 	mov	r6,a
      002E3D A3               [24]  970 	inc	dptr
      002E3E E0               [24]  971 	movx	a,@dptr
      002E3F FF               [12]  972 	mov	r7,a
      002E40 C0 07            [24]  973 	push	ar7
      002E42 C0 06            [24]  974 	push	ar6
      002E44 C0 06            [24]  975 	push	ar6
      002E46 C0 07            [24]  976 	push	ar7
      002E48 74 2D            [12]  977 	mov	a,#___str_16
      002E4A C0 E0            [24]  978 	push	acc
      002E4C 74 49            [12]  979 	mov	a,#(___str_16 >> 8)
      002E4E C0 E0            [24]  980 	push	acc
      002E50 74 80            [12]  981 	mov	a,#0x80
      002E52 C0 E0            [24]  982 	push	acc
      002E54 12 30 C9         [24]  983 	lcall	_printf
      002E57 E5 81            [12]  984 	mov	a,sp
      002E59 24 FB            [12]  985 	add	a,#0xfb
      002E5B F5 81            [12]  986 	mov	sp,a
      002E5D D0 06            [24]  987 	pop	ar6
      002E5F D0 07            [24]  988 	pop	ar7
                                    989 ;	src/ui_user_input.c:87: if(address > 0x7ff) 
      002E61 C3               [12]  990 	clr	c
      002E62 74 FF            [12]  991 	mov	a,#0xff
      002E64 9E               [12]  992 	subb	a,r6
      002E65 74 07            [12]  993 	mov	a,#0x07
      002E67 9F               [12]  994 	subb	a,r7
      002E68 50 5F            [24]  995 	jnc	00127$
                                    996 ;	src/ui_user_input.c:89: printf("╔══════════════════════════════════════════╗\n\r");
      002E6A 74 4D            [12]  997 	mov	a,#___str_17
      002E6C C0 E0            [24]  998 	push	acc
      002E6E 74 49            [12]  999 	mov	a,#(___str_17 >> 8)
      002E70 C0 E0            [24] 1000 	push	acc
      002E72 74 80            [12] 1001 	mov	a,#0x80
      002E74 C0 E0            [24] 1002 	push	acc
      002E76 12 30 C9         [24] 1003 	lcall	_printf
      002E79 15 81            [12] 1004 	dec	sp
      002E7B 15 81            [12] 1005 	dec	sp
      002E7D 15 81            [12] 1006 	dec	sp
                                   1007 ;	src/ui_user_input.c:90: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      002E7F 74 D4            [12] 1008 	mov	a,#___str_18
      002E81 C0 E0            [24] 1009 	push	acc
      002E83 74 49            [12] 1010 	mov	a,#(___str_18 >> 8)
      002E85 C0 E0            [24] 1011 	push	acc
      002E87 74 80            [12] 1012 	mov	a,#0x80
      002E89 C0 E0            [24] 1013 	push	acc
      002E8B 12 30 C9         [24] 1014 	lcall	_printf
      002E8E 15 81            [12] 1015 	dec	sp
      002E90 15 81            [12] 1016 	dec	sp
      002E92 15 81            [12] 1017 	dec	sp
                                   1018 ;	src/ui_user_input.c:91: printf("║     Please Enter Valid Address         ║\n\r");
      002E94 74 05            [12] 1019 	mov	a,#___str_19
      002E96 C0 E0            [24] 1020 	push	acc
      002E98 74 4A            [12] 1021 	mov	a,#(___str_19 >> 8)
      002E9A C0 E0            [24] 1022 	push	acc
      002E9C 74 80            [12] 1023 	mov	a,#0x80
      002E9E C0 E0            [24] 1024 	push	acc
      002EA0 12 30 C9         [24] 1025 	lcall	_printf
      002EA3 15 81            [12] 1026 	dec	sp
      002EA5 15 81            [12] 1027 	dec	sp
      002EA7 15 81            [12] 1028 	dec	sp
                                   1029 ;	src/ui_user_input.c:92: printf("╚══════════════════════════════════════════╝\n\r");
      002EA9 74 36            [12] 1030 	mov	a,#___str_20
      002EAB C0 E0            [24] 1031 	push	acc
      002EAD 74 4A            [12] 1032 	mov	a,#(___str_20 >> 8)
      002EAF C0 E0            [24] 1033 	push	acc
      002EB1 74 80            [12] 1034 	mov	a,#0x80
      002EB3 C0 E0            [24] 1035 	push	acc
      002EB5 12 30 C9         [24] 1036 	lcall	_printf
      002EB8 15 81            [12] 1037 	dec	sp
      002EBA 15 81            [12] 1038 	dec	sp
      002EBC 15 81            [12] 1039 	dec	sp
                                   1040 ;	src/ui_user_input.c:93: address_range_flag = 0;
      002EBE 90 04 5A         [24] 1041 	mov	dptr,#_address_range_flag
      002EC1 E4               [12] 1042 	clr	a
      002EC2 F0               [24] 1043 	movx	@dptr,a
      002EC3 A3               [24] 1044 	inc	dptr
      002EC4 F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	src/ui_user_input.c:94: return 0;
      002EC5 90 00 00         [24] 1047 	mov	dptr,#0x0000
      002EC8 22               [24] 1048 	ret
      002EC9                       1049 00127$:
                                   1050 ;	src/ui_user_input.c:96: unsigned int block = address/256;       //block address
      002EC9 8F 04            [24] 1051 	mov	ar4,r7
      002ECB 7D 00            [12] 1052 	mov	r5,#0x00
                                   1053 ;	src/ui_user_input.c:97: printf("| Block number %d                            \n\r", block);
      002ECD C0 07            [24] 1054 	push	ar7
      002ECF C0 06            [24] 1055 	push	ar6
      002ED1 C0 04            [24] 1056 	push	ar4
      002ED3 C0 05            [24] 1057 	push	ar5
      002ED5 74 BD            [12] 1058 	mov	a,#___str_21
      002ED7 C0 E0            [24] 1059 	push	acc
      002ED9 74 4A            [12] 1060 	mov	a,#(___str_21 >> 8)
      002EDB C0 E0            [24] 1061 	push	acc
      002EDD 74 80            [12] 1062 	mov	a,#0x80
      002EDF C0 E0            [24] 1063 	push	acc
      002EE1 12 30 C9         [24] 1064 	lcall	_printf
      002EE4 E5 81            [12] 1065 	mov	a,sp
      002EE6 24 FB            [12] 1066 	add	a,#0xfb
      002EE8 F5 81            [12] 1067 	mov	sp,a
      002EEA D0 06            [24] 1068 	pop	ar6
      002EEC D0 07            [24] 1069 	pop	ar7
                                   1070 ;	src/ui_user_input.c:98: address = address%256;     //word address
      002EEE 90 04 1A         [24] 1071 	mov	dptr,#_take_address_address_65538_22
      002EF1 EE               [12] 1072 	mov	a,r6
      002EF2 F0               [24] 1073 	movx	@dptr,a
      002EF3 E4               [12] 1074 	clr	a
      002EF4 A3               [24] 1075 	inc	dptr
      002EF5 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	src/ui_user_input.c:101: return address;
      002EF6 90 04 1A         [24] 1078 	mov	dptr,#_take_address_address_65538_22
      002EF9 E0               [24] 1079 	movx	a,@dptr
      002EFA FE               [12] 1080 	mov	r6,a
      002EFB A3               [24] 1081 	inc	dptr
      002EFC E0               [24] 1082 	movx	a,@dptr
                                   1083 ;	src/ui_user_input.c:102: }
      002EFD 8E 82            [24] 1084 	mov	dpl,r6
      002EFF F5 83            [12] 1085 	mov	dph,a
      002F01 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'take_data'
                                   1089 ;------------------------------------------------------------
                                   1090 ;input                     Allocated with name '_take_data_input_65537_28'
                                   1091 ;i                         Allocated with name '_take_data_i_65537_28'
                                   1092 ;c                         Allocated with name '_take_data_c_65537_28'
                                   1093 ;data                      Allocated with name '_take_data_data_65538_32'
                                   1094 ;------------------------------------------------------------
                                   1095 ;	src/ui_user_input.c:110: unsigned char take_data()
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function take_data
                                   1098 ;	-----------------------------------------
      002F02                       1099 _take_data:
                                   1100 ;	src/ui_user_input.c:112: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      002F02 74 ED            [12] 1101 	mov	a,#___str_22
      002F04 C0 E0            [24] 1102 	push	acc
      002F06 74 4A            [12] 1103 	mov	a,#(___str_22 >> 8)
      002F08 C0 E0            [24] 1104 	push	acc
      002F0A 74 80            [12] 1105 	mov	a,#0x80
      002F0C C0 E0            [24] 1106 	push	acc
      002F0E 12 30 C9         [24] 1107 	lcall	_printf
      002F11 15 81            [12] 1108 	dec	sp
      002F13 15 81            [12] 1109 	dec	sp
      002F15 15 81            [12] 1110 	dec	sp
                                   1111 ;	src/ui_user_input.c:113: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002F17 90 04 1C         [24] 1112 	mov	dptr,#_take_data_input_65537_28
      002F1A E4               [12] 1113 	clr	a
      002F1B F0               [24] 1114 	movx	@dptr,a
      002F1C 90 04 1D         [24] 1115 	mov	dptr,#(_take_data_input_65537_28 + 0x0001)
      002F1F F0               [24] 1116 	movx	@dptr,a
      002F20 90 04 1E         [24] 1117 	mov	dptr,#(_take_data_input_65537_28 + 0x0002)
      002F23 F0               [24] 1118 	movx	@dptr,a
      002F24 90 04 1F         [24] 1119 	mov	dptr,#(_take_data_input_65537_28 + 0x0003)
      002F27 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	src/ui_user_input.c:117: printf("$ ");
      002F28 74 1B            [12] 1122 	mov	a,#___str_23
      002F2A C0 E0            [24] 1123 	push	acc
      002F2C 74 4B            [12] 1124 	mov	a,#(___str_23 >> 8)
      002F2E C0 E0            [24] 1125 	push	acc
      002F30 74 80            [12] 1126 	mov	a,#0x80
      002F32 C0 E0            [24] 1127 	push	acc
      002F34 12 30 C9         [24] 1128 	lcall	_printf
      002F37 15 81            [12] 1129 	dec	sp
      002F39 15 81            [12] 1130 	dec	sp
      002F3B 15 81            [12] 1131 	dec	sp
                                   1132 ;	src/ui_user_input.c:119: while (i < 3) {
      002F3D 7E 00            [12] 1133 	mov	r6,#0x00
      002F3F 7F 00            [12] 1134 	mov	r7,#0x00
      002F41                       1135 00111$:
      002F41 C3               [12] 1136 	clr	c
      002F42 EE               [12] 1137 	mov	a,r6
      002F43 94 03            [12] 1138 	subb	a,#0x03
      002F45 EF               [12] 1139 	mov	a,r7
      002F46 64 80            [12] 1140 	xrl	a,#0x80
      002F48 94 80            [12] 1141 	subb	a,#0x80
      002F4A 50 5B            [24] 1142 	jnc	00113$
                                   1143 ;	src/ui_user_input.c:121: c = getchar();
      002F4C C0 07            [24] 1144 	push	ar7
      002F4E C0 06            [24] 1145 	push	ar6
      002F50 12 29 A2         [24] 1146 	lcall	_getchar
      002F53 AC 82            [24] 1147 	mov	r4,dpl
      002F55 AD 83            [24] 1148 	mov	r5,dph
      002F57 D0 06            [24] 1149 	pop	ar6
      002F59 D0 07            [24] 1150 	pop	ar7
                                   1151 ;	src/ui_user_input.c:124: if (c == '\r' || c == '\n') {
      002F5B BC 0D 02         [24] 1152 	cjne	r4,#0x0d,00200$
      002F5E 80 47            [24] 1153 	sjmp	00113$
      002F60                       1154 00200$:
      002F60 BC 0A 02         [24] 1155 	cjne	r4,#0x0a,00201$
      002F63 80 42            [24] 1156 	sjmp	00113$
      002F65                       1157 00201$:
                                   1158 ;	src/ui_user_input.c:129: if ((c >= '0' && c <= '9') ||
      002F65 BC 30 00         [24] 1159 	cjne	r4,#0x30,00202$
      002F68                       1160 00202$:
      002F68 40 05            [24] 1161 	jc	00108$
      002F6A EC               [12] 1162 	mov	a,r4
      002F6B 24 C6            [12] 1163 	add	a,#0xff - 0x39
      002F6D 50 14            [24] 1164 	jnc	00104$
      002F6F                       1165 00108$:
                                   1166 ;	src/ui_user_input.c:130: (c >= 'a' && c <= 'f') ||
      002F6F BC 61 00         [24] 1167 	cjne	r4,#0x61,00205$
      002F72                       1168 00205$:
      002F72 40 05            [24] 1169 	jc	00110$
      002F74 EC               [12] 1170 	mov	a,r4
      002F75 24 99            [12] 1171 	add	a,#0xff - 0x66
      002F77 50 0A            [24] 1172 	jnc	00104$
      002F79                       1173 00110$:
                                   1174 ;	src/ui_user_input.c:131: (c >= 'A' && c <= 'F')) {
      002F79 BC 41 00         [24] 1175 	cjne	r4,#0x41,00208$
      002F7C                       1176 00208$:
      002F7C 40 C3            [24] 1177 	jc	00111$
      002F7E EC               [12] 1178 	mov	a,r4
      002F7F 24 B9            [12] 1179 	add	a,#0xff - 0x46
      002F81 40 BE            [24] 1180 	jc	00111$
      002F83                       1181 00104$:
                                   1182 ;	src/ui_user_input.c:133: input[i] = c;
      002F83 EE               [12] 1183 	mov	a,r6
      002F84 24 1C            [12] 1184 	add	a,#_take_data_input_65537_28
      002F86 F5 82            [12] 1185 	mov	dpl,a
      002F88 EF               [12] 1186 	mov	a,r7
      002F89 34 04            [12] 1187 	addc	a,#(_take_data_input_65537_28 >> 8)
      002F8B F5 83            [12] 1188 	mov	dph,a
      002F8D EC               [12] 1189 	mov	a,r4
      002F8E F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	src/ui_user_input.c:134: putchar(c);  // Echo character back
      002F8F 7D 00            [12] 1192 	mov	r5,#0x00
      002F91 8C 82            [24] 1193 	mov	dpl,r4
      002F93 8D 83            [24] 1194 	mov	dph,r5
      002F95 C0 07            [24] 1195 	push	ar7
      002F97 C0 06            [24] 1196 	push	ar6
      002F99 12 29 83         [24] 1197 	lcall	_putchar
      002F9C D0 06            [24] 1198 	pop	ar6
      002F9E D0 07            [24] 1199 	pop	ar7
                                   1200 ;	src/ui_user_input.c:135: i++;
      002FA0 0E               [12] 1201 	inc	r6
      002FA1 BE 00 9D         [24] 1202 	cjne	r6,#0x00,00111$
      002FA4 0F               [12] 1203 	inc	r7
      002FA5 80 9A            [24] 1204 	sjmp	00111$
      002FA7                       1205 00113$:
                                   1206 ;	src/ui_user_input.c:139: input[i] = '\0';  // Null-terminate the string
      002FA7 EE               [12] 1207 	mov	a,r6
      002FA8 24 1C            [12] 1208 	add	a,#_take_data_input_65537_28
      002FAA F5 82            [12] 1209 	mov	dpl,a
      002FAC EF               [12] 1210 	mov	a,r7
      002FAD 34 04            [12] 1211 	addc	a,#(_take_data_input_65537_28 >> 8)
      002FAF F5 83            [12] 1212 	mov	dph,a
      002FB1 E4               [12] 1213 	clr	a
      002FB2 F0               [24] 1214 	movx	@dptr,a
                                   1215 ;	src/ui_user_input.c:142: unsigned char data = 0;
      002FB3 90 04 20         [24] 1216 	mov	dptr,#_take_data_data_65538_32
      002FB6 F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	src/ui_user_input.c:143: for (i = 0; input[i] != '\0'; i++) {
      002FB7 7E 00            [12] 1219 	mov	r6,#0x00
      002FB9 7F 00            [12] 1220 	mov	r7,#0x00
      002FBB                       1221 00129$:
      002FBB EE               [12] 1222 	mov	a,r6
      002FBC 24 1C            [12] 1223 	add	a,#_take_data_input_65537_28
      002FBE F5 82            [12] 1224 	mov	dpl,a
      002FC0 EF               [12] 1225 	mov	a,r7
      002FC1 34 04            [12] 1226 	addc	a,#(_take_data_input_65537_28 >> 8)
      002FC3 F5 83            [12] 1227 	mov	dph,a
      002FC5 E0               [24] 1228 	movx	a,@dptr
      002FC6 FD               [12] 1229 	mov	r5,a
      002FC7 70 03            [24] 1230 	jnz	00212$
      002FC9 02 30 2E         [24] 1231 	ljmp	00125$
      002FCC                       1232 00212$:
                                   1233 ;	src/ui_user_input.c:144: data = data * 16;
      002FCC 90 04 20         [24] 1234 	mov	dptr,#_take_data_data_65538_32
      002FCF E0               [24] 1235 	movx	a,@dptr
      002FD0 C4               [12] 1236 	swap	a
      002FD1 54 F0            [12] 1237 	anl	a,#0xf0
      002FD3 FC               [12] 1238 	mov	r4,a
      002FD4 F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	src/ui_user_input.c:145: if (input[i] >= '0' && input[i] <= '9')
      002FD5 BD 30 00         [24] 1241 	cjne	r5,#0x30,00213$
      002FD8                       1242 00213$:
      002FD8 40 12            [24] 1243 	jc	00122$
      002FDA ED               [12] 1244 	mov	a,r5
      002FDB 24 C6            [12] 1245 	add	a,#0xff - 0x39
      002FDD 40 0D            [24] 1246 	jc	00122$
                                   1247 ;	src/ui_user_input.c:146: data += input[i] - '0';
      002FDF ED               [12] 1248 	mov	a,r5
      002FE0 24 D0            [12] 1249 	add	a,#0xd0
      002FE2 FD               [12] 1250 	mov	r5,a
      002FE3 90 04 20         [24] 1251 	mov	dptr,#_take_data_data_65538_32
      002FE6 E0               [24] 1252 	movx	a,@dptr
      002FE7 FC               [12] 1253 	mov	r4,a
      002FE8 2D               [12] 1254 	add	a,r5
      002FE9 F0               [24] 1255 	movx	@dptr,a
      002FEA 80 3A            [24] 1256 	sjmp	00130$
      002FEC                       1257 00122$:
                                   1258 ;	src/ui_user_input.c:147: else if (input[i] >= 'A' && input[i] <= 'F')
      002FEC EE               [12] 1259 	mov	a,r6
      002FED 24 1C            [12] 1260 	add	a,#_take_data_input_65537_28
      002FEF F5 82            [12] 1261 	mov	dpl,a
      002FF1 EF               [12] 1262 	mov	a,r7
      002FF2 34 04            [12] 1263 	addc	a,#(_take_data_input_65537_28 >> 8)
      002FF4 F5 83            [12] 1264 	mov	dph,a
      002FF6 E0               [24] 1265 	movx	a,@dptr
      002FF7 FD               [12] 1266 	mov	r5,a
      002FF8 BD 41 00         [24] 1267 	cjne	r5,#0x41,00216$
      002FFB                       1268 00216$:
      002FFB 40 14            [24] 1269 	jc	00118$
      002FFD ED               [12] 1270 	mov	a,r5
      002FFE 24 B9            [12] 1271 	add	a,#0xff - 0x46
      003000 40 0F            [24] 1272 	jc	00118$
                                   1273 ;	src/ui_user_input.c:148: data += input[i] - 'A' + 10;
      003002 8D 04            [24] 1274 	mov	ar4,r5
      003004 74 C9            [12] 1275 	mov	a,#0xc9
      003006 2C               [12] 1276 	add	a,r4
      003007 FC               [12] 1277 	mov	r4,a
      003008 90 04 20         [24] 1278 	mov	dptr,#_take_data_data_65538_32
      00300B E0               [24] 1279 	movx	a,@dptr
      00300C FB               [12] 1280 	mov	r3,a
      00300D 2C               [12] 1281 	add	a,r4
      00300E F0               [24] 1282 	movx	@dptr,a
      00300F 80 15            [24] 1283 	sjmp	00130$
      003011                       1284 00118$:
                                   1285 ;	src/ui_user_input.c:149: else if (input[i] >= 'a' && input[i] <= 'f')
      003011 BD 61 00         [24] 1286 	cjne	r5,#0x61,00219$
      003014                       1287 00219$:
      003014 40 10            [24] 1288 	jc	00130$
      003016 ED               [12] 1289 	mov	a,r5
      003017 24 99            [12] 1290 	add	a,#0xff - 0x66
      003019 40 0B            [24] 1291 	jc	00130$
                                   1292 ;	src/ui_user_input.c:150: data += input[i] - 'a' + 10;
      00301B 74 A9            [12] 1293 	mov	a,#0xa9
      00301D 2D               [12] 1294 	add	a,r5
      00301E FD               [12] 1295 	mov	r5,a
      00301F 90 04 20         [24] 1296 	mov	dptr,#_take_data_data_65538_32
      003022 E0               [24] 1297 	movx	a,@dptr
      003023 FC               [12] 1298 	mov	r4,a
      003024 2D               [12] 1299 	add	a,r5
      003025 F0               [24] 1300 	movx	@dptr,a
      003026                       1301 00130$:
                                   1302 ;	src/ui_user_input.c:143: for (i = 0; input[i] != '\0'; i++) {
      003026 0E               [12] 1303 	inc	r6
      003027 BE 00 01         [24] 1304 	cjne	r6,#0x00,00222$
      00302A 0F               [12] 1305 	inc	r7
      00302B                       1306 00222$:
      00302B 02 2F BB         [24] 1307 	ljmp	00129$
      00302E                       1308 00125$:
                                   1309 ;	src/ui_user_input.c:153: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00302E 90 04 20         [24] 1310 	mov	dptr,#_take_data_data_65538_32
      003031 E0               [24] 1311 	movx	a,@dptr
      003032 FF               [12] 1312 	mov	r7,a
      003033 FD               [12] 1313 	mov	r5,a
      003034 7E 00            [12] 1314 	mov	r6,#0x00
      003036 C0 07            [24] 1315 	push	ar7
      003038 C0 05            [24] 1316 	push	ar5
      00303A C0 06            [24] 1317 	push	ar6
      00303C 74 1E            [12] 1318 	mov	a,#___str_24
      00303E C0 E0            [24] 1319 	push	acc
      003040 74 4B            [12] 1320 	mov	a,#(___str_24 >> 8)
      003042 C0 E0            [24] 1321 	push	acc
      003044 74 80            [12] 1322 	mov	a,#0x80
      003046 C0 E0            [24] 1323 	push	acc
      003048 12 30 C9         [24] 1324 	lcall	_printf
      00304B E5 81            [12] 1325 	mov	a,sp
      00304D 24 FB            [12] 1326 	add	a,#0xfb
      00304F F5 81            [12] 1327 	mov	sp,a
      003051 D0 07            [24] 1328 	pop	ar7
                                   1329 ;	src/ui_user_input.c:154: if(data > 0xfe)
      003053 EF               [12] 1330 	mov	a,r7
      003054 24 01            [12] 1331 	add	a,#0xff - 0xfe
      003056 50 20            [24] 1332 	jnc	00127$
                                   1333 ;	src/ui_user_input.c:156: printf("Data out of Range\n\r");
      003058 74 3B            [12] 1334 	mov	a,#___str_25
      00305A C0 E0            [24] 1335 	push	acc
      00305C 74 4B            [12] 1336 	mov	a,#(___str_25 >> 8)
      00305E C0 E0            [24] 1337 	push	acc
      003060 74 80            [12] 1338 	mov	a,#0x80
      003062 C0 E0            [24] 1339 	push	acc
      003064 12 30 C9         [24] 1340 	lcall	_printf
      003067 15 81            [12] 1341 	dec	sp
      003069 15 81            [12] 1342 	dec	sp
      00306B 15 81            [12] 1343 	dec	sp
                                   1344 ;	src/ui_user_input.c:157: data_range_flag = 0;
      00306D 90 04 5C         [24] 1345 	mov	dptr,#_data_range_flag
      003070 E4               [12] 1346 	clr	a
      003071 F0               [24] 1347 	movx	@dptr,a
      003072 A3               [24] 1348 	inc	dptr
      003073 F0               [24] 1349 	movx	@dptr,a
                                   1350 ;	src/ui_user_input.c:158: return 0;
      003074 75 82 00         [24] 1351 	mov	dpl,#0x00
      003077 22               [24] 1352 	ret
      003078                       1353 00127$:
                                   1354 ;	src/ui_user_input.c:160: return data;
      003078 8F 82            [24] 1355 	mov	dpl,r7
                                   1356 ;	src/ui_user_input.c:162: }
      00307A 22               [24] 1357 	ret
                                   1358 	.area CSEG    (CODE)
                                   1359 	.area CONST   (CODE)
                                   1360 	.area CONST   (CODE)
      004315                       1361 ___str_0:
      004315 0A                    1362 	.db 0x0a
      004316 E2                    1363 	.db 0xe2
      004317 95                    1364 	.db 0x95
      004318 94                    1365 	.db 0x94
      004319 E2                    1366 	.db 0xe2
      00431A 95                    1367 	.db 0x95
      00431B 90                    1368 	.db 0x90
      00431C E2                    1369 	.db 0xe2
      00431D 95                    1370 	.db 0x95
      00431E 90                    1371 	.db 0x90
      00431F E2                    1372 	.db 0xe2
      004320 95                    1373 	.db 0x95
      004321 90                    1374 	.db 0x90
      004322 E2                    1375 	.db 0xe2
      004323 95                    1376 	.db 0x95
      004324 90                    1377 	.db 0x90
      004325 E2                    1378 	.db 0xe2
      004326 95                    1379 	.db 0x95
      004327 90                    1380 	.db 0x90
      004328 E2                    1381 	.db 0xe2
      004329 95                    1382 	.db 0x95
      00432A 90                    1383 	.db 0x90
      00432B E2                    1384 	.db 0xe2
      00432C 95                    1385 	.db 0x95
      00432D 90                    1386 	.db 0x90
      00432E E2                    1387 	.db 0xe2
      00432F 95                    1388 	.db 0x95
      004330 90                    1389 	.db 0x90
      004331 E2                    1390 	.db 0xe2
      004332 95                    1391 	.db 0x95
      004333 90                    1392 	.db 0x90
      004334 E2                    1393 	.db 0xe2
      004335 95                    1394 	.db 0x95
      004336 90                    1395 	.db 0x90
      004337 E2                    1396 	.db 0xe2
      004338 95                    1397 	.db 0x95
      004339 90                    1398 	.db 0x90
      00433A E2                    1399 	.db 0xe2
      00433B 95                    1400 	.db 0x95
      00433C 90                    1401 	.db 0x90
      00433D E2                    1402 	.db 0xe2
      00433E 95                    1403 	.db 0x95
      00433F 90                    1404 	.db 0x90
      004340 E2                    1405 	.db 0xe2
      004341 95                    1406 	.db 0x95
      004342 90                    1407 	.db 0x90
      004343 E2                    1408 	.db 0xe2
      004344 95                    1409 	.db 0x95
      004345 90                    1410 	.db 0x90
      004346 E2                    1411 	.db 0xe2
      004347 95                    1412 	.db 0x95
      004348 90                    1413 	.db 0x90
      004349 E2                    1414 	.db 0xe2
      00434A 95                    1415 	.db 0x95
      00434B 90                    1416 	.db 0x90
      00434C E2                    1417 	.db 0xe2
      00434D 95                    1418 	.db 0x95
      00434E 90                    1419 	.db 0x90
      00434F E2                    1420 	.db 0xe2
      004350 95                    1421 	.db 0x95
      004351 90                    1422 	.db 0x90
      004352 E2                    1423 	.db 0xe2
      004353 95                    1424 	.db 0x95
      004354 90                    1425 	.db 0x90
      004355 E2                    1426 	.db 0xe2
      004356 95                    1427 	.db 0x95
      004357 90                    1428 	.db 0x90
      004358 E2                    1429 	.db 0xe2
      004359 95                    1430 	.db 0x95
      00435A 90                    1431 	.db 0x90
      00435B E2                    1432 	.db 0xe2
      00435C 95                    1433 	.db 0x95
      00435D 90                    1434 	.db 0x90
      00435E E2                    1435 	.db 0xe2
      00435F 95                    1436 	.db 0x95
      004360 90                    1437 	.db 0x90
      004361 E2                    1438 	.db 0xe2
      004362 95                    1439 	.db 0x95
      004363 90                    1440 	.db 0x90
      004364 E2                    1441 	.db 0xe2
      004365 95                    1442 	.db 0x95
      004366 90                    1443 	.db 0x90
      004367 E2                    1444 	.db 0xe2
      004368 95                    1445 	.db 0x95
      004369 90                    1446 	.db 0x90
      00436A E2                    1447 	.db 0xe2
      00436B 95                    1448 	.db 0x95
      00436C 90                    1449 	.db 0x90
      00436D E2                    1450 	.db 0xe2
      00436E 95                    1451 	.db 0x95
      00436F 90                    1452 	.db 0x90
      004370 E2                    1453 	.db 0xe2
      004371 95                    1454 	.db 0x95
      004372 90                    1455 	.db 0x90
      004373 E2                    1456 	.db 0xe2
      004374 95                    1457 	.db 0x95
      004375 90                    1458 	.db 0x90
      004376 E2                    1459 	.db 0xe2
      004377 95                    1460 	.db 0x95
      004378 90                    1461 	.db 0x90
      004379 E2                    1462 	.db 0xe2
      00437A 95                    1463 	.db 0x95
      00437B 90                    1464 	.db 0x90
      00437C E2                    1465 	.db 0xe2
      00437D 95                    1466 	.db 0x95
      00437E 90                    1467 	.db 0x90
      00437F E2                    1468 	.db 0xe2
      004380 95                    1469 	.db 0x95
      004381 90                    1470 	.db 0x90
      004382 E2                    1471 	.db 0xe2
      004383 95                    1472 	.db 0x95
      004384 90                    1473 	.db 0x90
      004385 E2                    1474 	.db 0xe2
      004386 95                    1475 	.db 0x95
      004387 90                    1476 	.db 0x90
      004388 E2                    1477 	.db 0xe2
      004389 95                    1478 	.db 0x95
      00438A 90                    1479 	.db 0x90
      00438B E2                    1480 	.db 0xe2
      00438C 95                    1481 	.db 0x95
      00438D 90                    1482 	.db 0x90
      00438E E2                    1483 	.db 0xe2
      00438F 95                    1484 	.db 0x95
      004390 90                    1485 	.db 0x90
      004391 E2                    1486 	.db 0xe2
      004392 95                    1487 	.db 0x95
      004393 90                    1488 	.db 0x90
      004394 E2                    1489 	.db 0xe2
      004395 95                    1490 	.db 0x95
      004396 90                    1491 	.db 0x90
      004397 E2                    1492 	.db 0xe2
      004398 95                    1493 	.db 0x95
      004399 90                    1494 	.db 0x90
      00439A E2                    1495 	.db 0xe2
      00439B 95                    1496 	.db 0x95
      00439C 90                    1497 	.db 0x90
      00439D E2                    1498 	.db 0xe2
      00439E 95                    1499 	.db 0x95
      00439F 90                    1500 	.db 0x90
      0043A0 E2                    1501 	.db 0xe2
      0043A1 95                    1502 	.db 0x95
      0043A2 90                    1503 	.db 0x90
      0043A3 E2                    1504 	.db 0xe2
      0043A4 95                    1505 	.db 0x95
      0043A5 90                    1506 	.db 0x90
      0043A6 E2                    1507 	.db 0xe2
      0043A7 95                    1508 	.db 0x95
      0043A8 90                    1509 	.db 0x90
      0043A9 E2                    1510 	.db 0xe2
      0043AA 95                    1511 	.db 0x95
      0043AB 90                    1512 	.db 0x90
      0043AC E2                    1513 	.db 0xe2
      0043AD 95                    1514 	.db 0x95
      0043AE 90                    1515 	.db 0x90
      0043AF E2                    1516 	.db 0xe2
      0043B0 95                    1517 	.db 0x95
      0043B1 90                    1518 	.db 0x90
      0043B2 E2                    1519 	.db 0xe2
      0043B3 95                    1520 	.db 0x95
      0043B4 90                    1521 	.db 0x90
      0043B5 E2                    1522 	.db 0xe2
      0043B6 95                    1523 	.db 0x95
      0043B7 90                    1524 	.db 0x90
      0043B8 E2                    1525 	.db 0xe2
      0043B9 95                    1526 	.db 0x95
      0043BA 90                    1527 	.db 0x90
      0043BB E2                    1528 	.db 0xe2
      0043BC 95                    1529 	.db 0x95
      0043BD 90                    1530 	.db 0x90
      0043BE E2                    1531 	.db 0xe2
      0043BF 95                    1532 	.db 0x95
      0043C0 90                    1533 	.db 0x90
      0043C1 E2                    1534 	.db 0xe2
      0043C2 95                    1535 	.db 0x95
      0043C3 97                    1536 	.db 0x97
      0043C4 0A                    1537 	.db 0x0a
      0043C5 0D                    1538 	.db 0x0d
      0043C6 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      0043C7                       1542 ___str_1:
      0043C7 E2                    1543 	.db 0xe2
      0043C8 95                    1544 	.db 0x95
      0043C9 91                    1545 	.db 0x91
      0043CA 20 20 20 20 20 20 20  1546 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004402 E2                    1547 	.db 0xe2
      004403 95                    1548 	.db 0x95
      004404 91                    1549 	.db 0x91
      004405 0A                    1550 	.db 0x0a
      004406 0D                    1551 	.db 0x0d
      004407 00                    1552 	.db 0x00
                                   1553 	.area CSEG    (CODE)
                                   1554 	.area CONST   (CODE)
      004408                       1555 ___str_2:
      004408 E2                    1556 	.db 0xe2
      004409 95                    1557 	.db 0x95
      00440A 9A                    1558 	.db 0x9a
      00440B E2                    1559 	.db 0xe2
      00440C 95                    1560 	.db 0x95
      00440D 90                    1561 	.db 0x90
      00440E E2                    1562 	.db 0xe2
      00440F 95                    1563 	.db 0x95
      004410 90                    1564 	.db 0x90
      004411 E2                    1565 	.db 0xe2
      004412 95                    1566 	.db 0x95
      004413 90                    1567 	.db 0x90
      004414 E2                    1568 	.db 0xe2
      004415 95                    1569 	.db 0x95
      004416 90                    1570 	.db 0x90
      004417 E2                    1571 	.db 0xe2
      004418 95                    1572 	.db 0x95
      004419 90                    1573 	.db 0x90
      00441A E2                    1574 	.db 0xe2
      00441B 95                    1575 	.db 0x95
      00441C 90                    1576 	.db 0x90
      00441D E2                    1577 	.db 0xe2
      00441E 95                    1578 	.db 0x95
      00441F 90                    1579 	.db 0x90
      004420 E2                    1580 	.db 0xe2
      004421 95                    1581 	.db 0x95
      004422 90                    1582 	.db 0x90
      004423 E2                    1583 	.db 0xe2
      004424 95                    1584 	.db 0x95
      004425 90                    1585 	.db 0x90
      004426 E2                    1586 	.db 0xe2
      004427 95                    1587 	.db 0x95
      004428 90                    1588 	.db 0x90
      004429 E2                    1589 	.db 0xe2
      00442A 95                    1590 	.db 0x95
      00442B 90                    1591 	.db 0x90
      00442C E2                    1592 	.db 0xe2
      00442D 95                    1593 	.db 0x95
      00442E 90                    1594 	.db 0x90
      00442F E2                    1595 	.db 0xe2
      004430 95                    1596 	.db 0x95
      004431 90                    1597 	.db 0x90
      004432 E2                    1598 	.db 0xe2
      004433 95                    1599 	.db 0x95
      004434 90                    1600 	.db 0x90
      004435 E2                    1601 	.db 0xe2
      004436 95                    1602 	.db 0x95
      004437 90                    1603 	.db 0x90
      004438 E2                    1604 	.db 0xe2
      004439 95                    1605 	.db 0x95
      00443A 90                    1606 	.db 0x90
      00443B E2                    1607 	.db 0xe2
      00443C 95                    1608 	.db 0x95
      00443D 90                    1609 	.db 0x90
      00443E E2                    1610 	.db 0xe2
      00443F 95                    1611 	.db 0x95
      004440 90                    1612 	.db 0x90
      004441 E2                    1613 	.db 0xe2
      004442 95                    1614 	.db 0x95
      004443 90                    1615 	.db 0x90
      004444 E2                    1616 	.db 0xe2
      004445 95                    1617 	.db 0x95
      004446 90                    1618 	.db 0x90
      004447 E2                    1619 	.db 0xe2
      004448 95                    1620 	.db 0x95
      004449 90                    1621 	.db 0x90
      00444A E2                    1622 	.db 0xe2
      00444B 95                    1623 	.db 0x95
      00444C 90                    1624 	.db 0x90
      00444D E2                    1625 	.db 0xe2
      00444E 95                    1626 	.db 0x95
      00444F 90                    1627 	.db 0x90
      004450 E2                    1628 	.db 0xe2
      004451 95                    1629 	.db 0x95
      004452 90                    1630 	.db 0x90
      004453 E2                    1631 	.db 0xe2
      004454 95                    1632 	.db 0x95
      004455 90                    1633 	.db 0x90
      004456 E2                    1634 	.db 0xe2
      004457 95                    1635 	.db 0x95
      004458 90                    1636 	.db 0x90
      004459 E2                    1637 	.db 0xe2
      00445A 95                    1638 	.db 0x95
      00445B 90                    1639 	.db 0x90
      00445C E2                    1640 	.db 0xe2
      00445D 95                    1641 	.db 0x95
      00445E 90                    1642 	.db 0x90
      00445F E2                    1643 	.db 0xe2
      004460 95                    1644 	.db 0x95
      004461 90                    1645 	.db 0x90
      004462 E2                    1646 	.db 0xe2
      004463 95                    1647 	.db 0x95
      004464 90                    1648 	.db 0x90
      004465 E2                    1649 	.db 0xe2
      004466 95                    1650 	.db 0x95
      004467 90                    1651 	.db 0x90
      004468 E2                    1652 	.db 0xe2
      004469 95                    1653 	.db 0x95
      00446A 90                    1654 	.db 0x90
      00446B E2                    1655 	.db 0xe2
      00446C 95                    1656 	.db 0x95
      00446D 90                    1657 	.db 0x90
      00446E E2                    1658 	.db 0xe2
      00446F 95                    1659 	.db 0x95
      004470 90                    1660 	.db 0x90
      004471 E2                    1661 	.db 0xe2
      004472 95                    1662 	.db 0x95
      004473 90                    1663 	.db 0x90
      004474 E2                    1664 	.db 0xe2
      004475 95                    1665 	.db 0x95
      004476 90                    1666 	.db 0x90
      004477 E2                    1667 	.db 0xe2
      004478 95                    1668 	.db 0x95
      004479 90                    1669 	.db 0x90
      00447A E2                    1670 	.db 0xe2
      00447B 95                    1671 	.db 0x95
      00447C 90                    1672 	.db 0x90
      00447D E2                    1673 	.db 0xe2
      00447E 95                    1674 	.db 0x95
      00447F 90                    1675 	.db 0x90
      004480 E2                    1676 	.db 0xe2
      004481 95                    1677 	.db 0x95
      004482 90                    1678 	.db 0x90
      004483 E2                    1679 	.db 0xe2
      004484 95                    1680 	.db 0x95
      004485 90                    1681 	.db 0x90
      004486 E2                    1682 	.db 0xe2
      004487 95                    1683 	.db 0x95
      004488 90                    1684 	.db 0x90
      004489 E2                    1685 	.db 0xe2
      00448A 95                    1686 	.db 0x95
      00448B 90                    1687 	.db 0x90
      00448C E2                    1688 	.db 0xe2
      00448D 95                    1689 	.db 0x95
      00448E 90                    1690 	.db 0x90
      00448F E2                    1691 	.db 0xe2
      004490 95                    1692 	.db 0x95
      004491 90                    1693 	.db 0x90
      004492 E2                    1694 	.db 0xe2
      004493 95                    1695 	.db 0x95
      004494 90                    1696 	.db 0x90
      004495 E2                    1697 	.db 0xe2
      004496 95                    1698 	.db 0x95
      004497 90                    1699 	.db 0x90
      004498 E2                    1700 	.db 0xe2
      004499 95                    1701 	.db 0x95
      00449A 90                    1702 	.db 0x90
      00449B E2                    1703 	.db 0xe2
      00449C 95                    1704 	.db 0x95
      00449D 90                    1705 	.db 0x90
      00449E E2                    1706 	.db 0xe2
      00449F 95                    1707 	.db 0x95
      0044A0 90                    1708 	.db 0x90
      0044A1 E2                    1709 	.db 0xe2
      0044A2 95                    1710 	.db 0x95
      0044A3 90                    1711 	.db 0x90
      0044A4 E2                    1712 	.db 0xe2
      0044A5 95                    1713 	.db 0x95
      0044A6 90                    1714 	.db 0x90
      0044A7 E2                    1715 	.db 0xe2
      0044A8 95                    1716 	.db 0x95
      0044A9 90                    1717 	.db 0x90
      0044AA E2                    1718 	.db 0xe2
      0044AB 95                    1719 	.db 0x95
      0044AC 90                    1720 	.db 0x90
      0044AD E2                    1721 	.db 0xe2
      0044AE 95                    1722 	.db 0x95
      0044AF 90                    1723 	.db 0x90
      0044B0 E2                    1724 	.db 0xe2
      0044B1 95                    1725 	.db 0x95
      0044B2 90                    1726 	.db 0x90
      0044B3 E2                    1727 	.db 0xe2
      0044B4 95                    1728 	.db 0x95
      0044B5 9D                    1729 	.db 0x9d
      0044B6 0A                    1730 	.db 0x0a
      0044B7 0D                    1731 	.db 0x0d
      0044B8 00                    1732 	.db 0x00
                                   1733 	.area CSEG    (CODE)
                                   1734 	.area CONST   (CODE)
      0044B9                       1735 ___str_3:
      0044B9 0A                    1736 	.db 0x0a
      0044BA 0D                    1737 	.db 0x0d
      0044BB E2                    1738 	.db 0xe2
      0044BC 94                    1739 	.db 0x94
      0044BD 8C                    1740 	.db 0x8c
      0044BE E2                    1741 	.db 0xe2
      0044BF 94                    1742 	.db 0x94
      0044C0 80                    1743 	.db 0x80
      0044C1 E2                    1744 	.db 0xe2
      0044C2 94                    1745 	.db 0x94
      0044C3 80                    1746 	.db 0x80
      0044C4 E2                    1747 	.db 0xe2
      0044C5 94                    1748 	.db 0x94
      0044C6 80                    1749 	.db 0x80
      0044C7 E2                    1750 	.db 0xe2
      0044C8 94                    1751 	.db 0x94
      0044C9 80                    1752 	.db 0x80
      0044CA E2                    1753 	.db 0xe2
      0044CB 94                    1754 	.db 0x94
      0044CC 80                    1755 	.db 0x80
      0044CD E2                    1756 	.db 0xe2
      0044CE 94                    1757 	.db 0x94
      0044CF 80                    1758 	.db 0x80
      0044D0 E2                    1759 	.db 0xe2
      0044D1 94                    1760 	.db 0x94
      0044D2 80                    1761 	.db 0x80
      0044D3 E2                    1762 	.db 0xe2
      0044D4 94                    1763 	.db 0x94
      0044D5 80                    1764 	.db 0x80
      0044D6 E2                    1765 	.db 0xe2
      0044D7 94                    1766 	.db 0x94
      0044D8 80                    1767 	.db 0x80
      0044D9 E2                    1768 	.db 0xe2
      0044DA 94                    1769 	.db 0x94
      0044DB 80                    1770 	.db 0x80
      0044DC E2                    1771 	.db 0xe2
      0044DD 94                    1772 	.db 0x94
      0044DE 80                    1773 	.db 0x80
      0044DF E2                    1774 	.db 0xe2
      0044E0 94                    1775 	.db 0x94
      0044E1 80                    1776 	.db 0x80
      0044E2 E2                    1777 	.db 0xe2
      0044E3 94                    1778 	.db 0x94
      0044E4 AC                    1779 	.db 0xac
      0044E5 E2                    1780 	.db 0xe2
      0044E6 94                    1781 	.db 0x94
      0044E7 80                    1782 	.db 0x80
      0044E8 E2                    1783 	.db 0xe2
      0044E9 94                    1784 	.db 0x94
      0044EA 80                    1785 	.db 0x80
      0044EB E2                    1786 	.db 0xe2
      0044EC 94                    1787 	.db 0x94
      0044ED 80                    1788 	.db 0x80
      0044EE E2                    1789 	.db 0xe2
      0044EF 94                    1790 	.db 0x94
      0044F0 80                    1791 	.db 0x80
      0044F1 E2                    1792 	.db 0xe2
      0044F2 94                    1793 	.db 0x94
      0044F3 80                    1794 	.db 0x80
      0044F4 E2                    1795 	.db 0xe2
      0044F5 94                    1796 	.db 0x94
      0044F6 80                    1797 	.db 0x80
      0044F7 E2                    1798 	.db 0xe2
      0044F8 94                    1799 	.db 0x94
      0044F9 80                    1800 	.db 0x80
      0044FA E2                    1801 	.db 0xe2
      0044FB 94                    1802 	.db 0x94
      0044FC 80                    1803 	.db 0x80
      0044FD E2                    1804 	.db 0xe2
      0044FE 94                    1805 	.db 0x94
      0044FF 80                    1806 	.db 0x80
      004500 E2                    1807 	.db 0xe2
      004501 94                    1808 	.db 0x94
      004502 80                    1809 	.db 0x80
      004503 E2                    1810 	.db 0xe2
      004504 94                    1811 	.db 0x94
      004505 80                    1812 	.db 0x80
      004506 E2                    1813 	.db 0xe2
      004507 94                    1814 	.db 0x94
      004508 80                    1815 	.db 0x80
      004509 E2                    1816 	.db 0xe2
      00450A 94                    1817 	.db 0x94
      00450B 80                    1818 	.db 0x80
      00450C E2                    1819 	.db 0xe2
      00450D 94                    1820 	.db 0x94
      00450E 80                    1821 	.db 0x80
      00450F E2                    1822 	.db 0xe2
      004510 94                    1823 	.db 0x94
      004511 80                    1824 	.db 0x80
      004512 E2                    1825 	.db 0xe2
      004513 94                    1826 	.db 0x94
      004514 80                    1827 	.db 0x80
      004515 E2                    1828 	.db 0xe2
      004516 94                    1829 	.db 0x94
      004517 80                    1830 	.db 0x80
      004518 E2                    1831 	.db 0xe2
      004519 94                    1832 	.db 0x94
      00451A 80                    1833 	.db 0x80
      00451B E2                    1834 	.db 0xe2
      00451C 94                    1835 	.db 0x94
      00451D 80                    1836 	.db 0x80
      00451E E2                    1837 	.db 0xe2
      00451F 94                    1838 	.db 0x94
      004520 80                    1839 	.db 0x80
      004521 E2                    1840 	.db 0xe2
      004522 94                    1841 	.db 0x94
      004523 80                    1842 	.db 0x80
      004524 E2                    1843 	.db 0xe2
      004525 94                    1844 	.db 0x94
      004526 80                    1845 	.db 0x80
      004527 E2                    1846 	.db 0xe2
      004528 94                    1847 	.db 0x94
      004529 80                    1848 	.db 0x80
      00452A E2                    1849 	.db 0xe2
      00452B 94                    1850 	.db 0x94
      00452C 80                    1851 	.db 0x80
      00452D E2                    1852 	.db 0xe2
      00452E 94                    1853 	.db 0x94
      00452F 80                    1854 	.db 0x80
      004530 E2                    1855 	.db 0xe2
      004531 94                    1856 	.db 0x94
      004532 80                    1857 	.db 0x80
      004533 E2                    1858 	.db 0xe2
      004534 94                    1859 	.db 0x94
      004535 80                    1860 	.db 0x80
      004536 E2                    1861 	.db 0xe2
      004537 94                    1862 	.db 0x94
      004538 80                    1863 	.db 0x80
      004539 E2                    1864 	.db 0xe2
      00453A 94                    1865 	.db 0x94
      00453B 80                    1866 	.db 0x80
      00453C E2                    1867 	.db 0xe2
      00453D 94                    1868 	.db 0x94
      00453E 80                    1869 	.db 0x80
      00453F E2                    1870 	.db 0xe2
      004540 94                    1871 	.db 0x94
      004541 80                    1872 	.db 0x80
      004542 E2                    1873 	.db 0xe2
      004543 94                    1874 	.db 0x94
      004544 80                    1875 	.db 0x80
      004545 E2                    1876 	.db 0xe2
      004546 94                    1877 	.db 0x94
      004547 80                    1878 	.db 0x80
      004548 E2                    1879 	.db 0xe2
      004549 94                    1880 	.db 0x94
      00454A 80                    1881 	.db 0x80
      00454B E2                    1882 	.db 0xe2
      00454C 94                    1883 	.db 0x94
      00454D 80                    1884 	.db 0x80
      00454E E2                    1885 	.db 0xe2
      00454F 94                    1886 	.db 0x94
      004550 80                    1887 	.db 0x80
      004551 E2                    1888 	.db 0xe2
      004552 94                    1889 	.db 0x94
      004553 80                    1890 	.db 0x80
      004554 E2                    1891 	.db 0xe2
      004555 94                    1892 	.db 0x94
      004556 80                    1893 	.db 0x80
      004557 E2                    1894 	.db 0xe2
      004558 94                    1895 	.db 0x94
      004559 80                    1896 	.db 0x80
      00455A E2                    1897 	.db 0xe2
      00455B 94                    1898 	.db 0x94
      00455C 80                    1899 	.db 0x80
      00455D E2                    1900 	.db 0xe2
      00455E 94                    1901 	.db 0x94
      00455F 80                    1902 	.db 0x80
      004560 E2                    1903 	.db 0xe2
      004561 94                    1904 	.db 0x94
      004562 80                    1905 	.db 0x80
      004563 E2                    1906 	.db 0xe2
      004564 94                    1907 	.db 0x94
      004565 80                    1908 	.db 0x80
      004566 E2                    1909 	.db 0xe2
      004567 94                    1910 	.db 0x94
      004568 80                    1911 	.db 0x80
      004569 E2                    1912 	.db 0xe2
      00456A 94                    1913 	.db 0x94
      00456B 90                    1914 	.db 0x90
      00456C 0A                    1915 	.db 0x0a
      00456D 0D                    1916 	.db 0x0d
      00456E 00                    1917 	.db 0x00
                                   1918 	.area CSEG    (CODE)
                                   1919 	.area CONST   (CODE)
      00456F                       1920 ___str_4:
      00456F E2                    1921 	.db 0xe2
      004570 94                    1922 	.db 0x94
      004571 82                    1923 	.db 0x82
      004572 20 20 43 6F 6D 6D 61  1924 	.ascii "  Command   "
             6E 64 20 20 20
      00457E E2                    1925 	.db 0xe2
      00457F 94                    1926 	.db 0x94
      004580 82                    1927 	.db 0x82
      004581 20 20 20 20 20 20 20  1928 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0045AD E2                    1929 	.db 0xe2
      0045AE 94                    1930 	.db 0x94
      0045AF 82                    1931 	.db 0x82
      0045B0 0A                    1932 	.db 0x0a
      0045B1 0D                    1933 	.db 0x0d
      0045B2 00                    1934 	.db 0x00
                                   1935 	.area CSEG    (CODE)
                                   1936 	.area CONST   (CODE)
      0045B3                       1937 ___str_5:
      0045B3 E2                    1938 	.db 0xe2
      0045B4 94                    1939 	.db 0x94
      0045B5 9C                    1940 	.db 0x9c
      0045B6 E2                    1941 	.db 0xe2
      0045B7 94                    1942 	.db 0x94
      0045B8 80                    1943 	.db 0x80
      0045B9 E2                    1944 	.db 0xe2
      0045BA 94                    1945 	.db 0x94
      0045BB 80                    1946 	.db 0x80
      0045BC E2                    1947 	.db 0xe2
      0045BD 94                    1948 	.db 0x94
      0045BE 80                    1949 	.db 0x80
      0045BF E2                    1950 	.db 0xe2
      0045C0 94                    1951 	.db 0x94
      0045C1 80                    1952 	.db 0x80
      0045C2 E2                    1953 	.db 0xe2
      0045C3 94                    1954 	.db 0x94
      0045C4 80                    1955 	.db 0x80
      0045C5 E2                    1956 	.db 0xe2
      0045C6 94                    1957 	.db 0x94
      0045C7 80                    1958 	.db 0x80
      0045C8 E2                    1959 	.db 0xe2
      0045C9 94                    1960 	.db 0x94
      0045CA 80                    1961 	.db 0x80
      0045CB E2                    1962 	.db 0xe2
      0045CC 94                    1963 	.db 0x94
      0045CD 80                    1964 	.db 0x80
      0045CE E2                    1965 	.db 0xe2
      0045CF 94                    1966 	.db 0x94
      0045D0 80                    1967 	.db 0x80
      0045D1 E2                    1968 	.db 0xe2
      0045D2 94                    1969 	.db 0x94
      0045D3 80                    1970 	.db 0x80
      0045D4 E2                    1971 	.db 0xe2
      0045D5 94                    1972 	.db 0x94
      0045D6 80                    1973 	.db 0x80
      0045D7 E2                    1974 	.db 0xe2
      0045D8 94                    1975 	.db 0x94
      0045D9 80                    1976 	.db 0x80
      0045DA E2                    1977 	.db 0xe2
      0045DB 94                    1978 	.db 0x94
      0045DC BC                    1979 	.db 0xbc
      0045DD E2                    1980 	.db 0xe2
      0045DE 94                    1981 	.db 0x94
      0045DF 80                    1982 	.db 0x80
      0045E0 E2                    1983 	.db 0xe2
      0045E1 94                    1984 	.db 0x94
      0045E2 80                    1985 	.db 0x80
      0045E3 E2                    1986 	.db 0xe2
      0045E4 94                    1987 	.db 0x94
      0045E5 80                    1988 	.db 0x80
      0045E6 E2                    1989 	.db 0xe2
      0045E7 94                    1990 	.db 0x94
      0045E8 80                    1991 	.db 0x80
      0045E9 E2                    1992 	.db 0xe2
      0045EA 94                    1993 	.db 0x94
      0045EB 80                    1994 	.db 0x80
      0045EC E2                    1995 	.db 0xe2
      0045ED 94                    1996 	.db 0x94
      0045EE 80                    1997 	.db 0x80
      0045EF E2                    1998 	.db 0xe2
      0045F0 94                    1999 	.db 0x94
      0045F1 80                    2000 	.db 0x80
      0045F2 E2                    2001 	.db 0xe2
      0045F3 94                    2002 	.db 0x94
      0045F4 80                    2003 	.db 0x80
      0045F5 E2                    2004 	.db 0xe2
      0045F6 94                    2005 	.db 0x94
      0045F7 80                    2006 	.db 0x80
      0045F8 E2                    2007 	.db 0xe2
      0045F9 94                    2008 	.db 0x94
      0045FA 80                    2009 	.db 0x80
      0045FB E2                    2010 	.db 0xe2
      0045FC 94                    2011 	.db 0x94
      0045FD 80                    2012 	.db 0x80
      0045FE E2                    2013 	.db 0xe2
      0045FF 94                    2014 	.db 0x94
      004600 80                    2015 	.db 0x80
      004601 E2                    2016 	.db 0xe2
      004602 94                    2017 	.db 0x94
      004603 80                    2018 	.db 0x80
      004604 E2                    2019 	.db 0xe2
      004605 94                    2020 	.db 0x94
      004606 80                    2021 	.db 0x80
      004607 E2                    2022 	.db 0xe2
      004608 94                    2023 	.db 0x94
      004609 80                    2024 	.db 0x80
      00460A E2                    2025 	.db 0xe2
      00460B 94                    2026 	.db 0x94
      00460C 80                    2027 	.db 0x80
      00460D E2                    2028 	.db 0xe2
      00460E 94                    2029 	.db 0x94
      00460F 80                    2030 	.db 0x80
      004610 E2                    2031 	.db 0xe2
      004611 94                    2032 	.db 0x94
      004612 80                    2033 	.db 0x80
      004613 E2                    2034 	.db 0xe2
      004614 94                    2035 	.db 0x94
      004615 80                    2036 	.db 0x80
      004616 E2                    2037 	.db 0xe2
      004617 94                    2038 	.db 0x94
      004618 80                    2039 	.db 0x80
      004619 E2                    2040 	.db 0xe2
      00461A 94                    2041 	.db 0x94
      00461B 80                    2042 	.db 0x80
      00461C E2                    2043 	.db 0xe2
      00461D 94                    2044 	.db 0x94
      00461E 80                    2045 	.db 0x80
      00461F E2                    2046 	.db 0xe2
      004620 94                    2047 	.db 0x94
      004621 80                    2048 	.db 0x80
      004622 E2                    2049 	.db 0xe2
      004623 94                    2050 	.db 0x94
      004624 80                    2051 	.db 0x80
      004625 E2                    2052 	.db 0xe2
      004626 94                    2053 	.db 0x94
      004627 80                    2054 	.db 0x80
      004628 E2                    2055 	.db 0xe2
      004629 94                    2056 	.db 0x94
      00462A 80                    2057 	.db 0x80
      00462B E2                    2058 	.db 0xe2
      00462C 94                    2059 	.db 0x94
      00462D 80                    2060 	.db 0x80
      00462E E2                    2061 	.db 0xe2
      00462F 94                    2062 	.db 0x94
      004630 80                    2063 	.db 0x80
      004631 E2                    2064 	.db 0xe2
      004632 94                    2065 	.db 0x94
      004633 80                    2066 	.db 0x80
      004634 E2                    2067 	.db 0xe2
      004635 94                    2068 	.db 0x94
      004636 80                    2069 	.db 0x80
      004637 E2                    2070 	.db 0xe2
      004638 94                    2071 	.db 0x94
      004639 80                    2072 	.db 0x80
      00463A E2                    2073 	.db 0xe2
      00463B 94                    2074 	.db 0x94
      00463C 80                    2075 	.db 0x80
      00463D E2                    2076 	.db 0xe2
      00463E 94                    2077 	.db 0x94
      00463F 80                    2078 	.db 0x80
      004640 E2                    2079 	.db 0xe2
      004641 94                    2080 	.db 0x94
      004642 80                    2081 	.db 0x80
      004643 E2                    2082 	.db 0xe2
      004644 94                    2083 	.db 0x94
      004645 80                    2084 	.db 0x80
      004646 E2                    2085 	.db 0xe2
      004647 94                    2086 	.db 0x94
      004648 80                    2087 	.db 0x80
      004649 E2                    2088 	.db 0xe2
      00464A 94                    2089 	.db 0x94
      00464B 80                    2090 	.db 0x80
      00464C E2                    2091 	.db 0xe2
      00464D 94                    2092 	.db 0x94
      00464E 80                    2093 	.db 0x80
      00464F E2                    2094 	.db 0xe2
      004650 94                    2095 	.db 0x94
      004651 80                    2096 	.db 0x80
      004652 E2                    2097 	.db 0xe2
      004653 94                    2098 	.db 0x94
      004654 80                    2099 	.db 0x80
      004655 E2                    2100 	.db 0xe2
      004656 94                    2101 	.db 0x94
      004657 80                    2102 	.db 0x80
      004658 E2                    2103 	.db 0xe2
      004659 94                    2104 	.db 0x94
      00465A 80                    2105 	.db 0x80
      00465B E2                    2106 	.db 0xe2
      00465C 94                    2107 	.db 0x94
      00465D 80                    2108 	.db 0x80
      00465E E2                    2109 	.db 0xe2
      00465F 94                    2110 	.db 0x94
      004660 80                    2111 	.db 0x80
      004661 E2                    2112 	.db 0xe2
      004662 94                    2113 	.db 0x94
      004663 A4                    2114 	.db 0xa4
      004664 0A                    2115 	.db 0x0a
      004665 0D                    2116 	.db 0x0d
      004666 00                    2117 	.db 0x00
                                   2118 	.area CSEG    (CODE)
                                   2119 	.area CONST   (CODE)
      004667                       2120 ___str_6:
      004667 E2                    2121 	.db 0xe2
      004668 94                    2122 	.db 0x94
      004669 82                    2123 	.db 0x82
      00466A 20 20 20 20 20 52 20  2124 	.ascii "     R      "
             20 20 20 20 20
      004676 E2                    2125 	.db 0xe2
      004677 94                    2126 	.db 0x94
      004678 82                    2127 	.db 0x82
      004679 20 52 65 61 64 20 66  2128 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0046A5 E2                    2129 	.db 0xe2
      0046A6 94                    2130 	.db 0x94
      0046A7 82                    2131 	.db 0x82
      0046A8 0A                    2132 	.db 0x0a
      0046A9 0D                    2133 	.db 0x0d
      0046AA 00                    2134 	.db 0x00
                                   2135 	.area CSEG    (CODE)
                                   2136 	.area CONST   (CODE)
      0046AB                       2137 ___str_7:
      0046AB E2                    2138 	.db 0xe2
      0046AC 94                    2139 	.db 0x94
      0046AD 82                    2140 	.db 0x82
      0046AE 20 20 20 20 20 57 20  2141 	.ascii "     W      "
             20 20 20 20 20
      0046BA E2                    2142 	.db 0xe2
      0046BB 94                    2143 	.db 0x94
      0046BC 82                    2144 	.db 0x82
      0046BD 20 57 72 69 74 65 20  2145 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0046E9 E2                    2146 	.db 0xe2
      0046EA 94                    2147 	.db 0x94
      0046EB 82                    2148 	.db 0x82
      0046EC 0A                    2149 	.db 0x0a
      0046ED 0D                    2150 	.db 0x0d
      0046EE 00                    2151 	.db 0x00
                                   2152 	.area CSEG    (CODE)
                                   2153 	.area CONST   (CODE)
      0046EF                       2154 ___str_8:
      0046EF E2                    2155 	.db 0xe2
      0046F0 94                    2156 	.db 0x94
      0046F1 82                    2157 	.db 0x82
      0046F2 20 20 20 20 20 48 20  2158 	.ascii "     H      "
             20 20 20 20 20
      0046FE E2                    2159 	.db 0xe2
      0046FF 94                    2160 	.db 0x94
      004700 82                    2161 	.db 0x82
      004701 20 44 69 73 70 6C 61  2162 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00472D E2                    2163 	.db 0xe2
      00472E 94                    2164 	.db 0x94
      00472F 82                    2165 	.db 0x82
      004730 0A                    2166 	.db 0x0a
      004731 0D                    2167 	.db 0x0d
      004732 00                    2168 	.db 0x00
                                   2169 	.area CSEG    (CODE)
                                   2170 	.area CONST   (CODE)
      004733                       2171 ___str_9:
      004733 E2                    2172 	.db 0xe2
      004734 94                    2173 	.db 0x94
      004735 82                    2174 	.db 0x82
      004736 20 20 20 20 20 58 20  2175 	.ascii "     X      "
             20 20 20 20 20
      004742 E2                    2176 	.db 0xe2
      004743 94                    2177 	.db 0x94
      004744 82                    2178 	.db 0x82
      004745 20 52 65 73 65 74 20  2179 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004771 E2                    2180 	.db 0xe2
      004772 94                    2181 	.db 0x94
      004773 82                    2182 	.db 0x82
      004774 0A                    2183 	.db 0x0a
      004775 0D                    2184 	.db 0x0d
      004776 00                    2185 	.db 0x00
                                   2186 	.area CSEG    (CODE)
                                   2187 	.area CONST   (CODE)
      004777                       2188 ___str_10:
      004777 E2                    2189 	.db 0xe2
      004778 94                    2190 	.db 0x94
      004779 82                    2191 	.db 0x82
      00477A 20 20 20 20 20 3F 20  2192 	.ascii "     ?      "
             20 20 20 20 20
      004786 E2                    2193 	.db 0xe2
      004787 94                    2194 	.db 0x94
      004788 82                    2195 	.db 0x82
      004789 20 44 69 73 70 6C 61  2196 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0047B5 E2                    2197 	.db 0xe2
      0047B6 94                    2198 	.db 0x94
      0047B7 82                    2199 	.db 0x82
      0047B8 0A                    2200 	.db 0x0a
      0047B9 0D                    2201 	.db 0x0d
      0047BA 00                    2202 	.db 0x00
                                   2203 	.area CSEG    (CODE)
                                   2204 	.area CONST   (CODE)
      0047BB                       2205 ___str_11:
      0047BB E2                    2206 	.db 0xe2
      0047BC 94                    2207 	.db 0x94
      0047BD 82                    2208 	.db 0x82
      0047BE 20 20 20 20 20 49 20  2209 	.ascii "     I      "
             20 20 20 20 20
      0047CA E2                    2210 	.db 0xe2
      0047CB 94                    2211 	.db 0x94
      0047CC 82                    2212 	.db 0x82
      0047CD 20 49 4F 20 45 78 70  2213 	.ascii " IO Expander Mode                           "
             61 6E 64 65 72 20 4D
             6F 64 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0047F9 E2                    2214 	.db 0xe2
      0047FA 94                    2215 	.db 0x94
      0047FB 82                    2216 	.db 0x82
      0047FC 0A                    2217 	.db 0x0a
      0047FD 0D                    2218 	.db 0x0d
      0047FE 00                    2219 	.db 0x00
                                   2220 	.area CSEG    (CODE)
                                   2221 	.area CONST   (CODE)
      0047FF                       2222 ___str_12:
      0047FF E2                    2223 	.db 0xe2
      004800 94                    2224 	.db 0x94
      004801 82                    2225 	.db 0x82
      004802 20 20 20 20 20 4C 20  2226 	.ascii "     L      "
             20 20 20 20 20
      00480E E2                    2227 	.db 0xe2
      00480F 94                    2228 	.db 0x94
      004810 82                    2229 	.db 0x82
      004811 20 45 78 69 74 20 49  2230 	.ascii " Exit IO Expander Mode                      "
             4F 20 45 78 70 61 6E
             64 65 72 20 4D 6F 64
             65 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00483D E2                    2231 	.db 0xe2
      00483E 94                    2232 	.db 0x94
      00483F 82                    2233 	.db 0x82
      004840 0A                    2234 	.db 0x0a
      004841 0D                    2235 	.db 0x0d
      004842 00                    2236 	.db 0x00
                                   2237 	.area CSEG    (CODE)
                                   2238 	.area CONST   (CODE)
      004843                       2239 ___str_13:
      004843 E2                    2240 	.db 0xe2
      004844 94                    2241 	.db 0x94
      004845 94                    2242 	.db 0x94
      004846 E2                    2243 	.db 0xe2
      004847 94                    2244 	.db 0x94
      004848 80                    2245 	.db 0x80
      004849 E2                    2246 	.db 0xe2
      00484A 94                    2247 	.db 0x94
      00484B 80                    2248 	.db 0x80
      00484C E2                    2249 	.db 0xe2
      00484D 94                    2250 	.db 0x94
      00484E 80                    2251 	.db 0x80
      00484F E2                    2252 	.db 0xe2
      004850 94                    2253 	.db 0x94
      004851 80                    2254 	.db 0x80
      004852 E2                    2255 	.db 0xe2
      004853 94                    2256 	.db 0x94
      004854 80                    2257 	.db 0x80
      004855 E2                    2258 	.db 0xe2
      004856 94                    2259 	.db 0x94
      004857 80                    2260 	.db 0x80
      004858 E2                    2261 	.db 0xe2
      004859 94                    2262 	.db 0x94
      00485A 80                    2263 	.db 0x80
      00485B E2                    2264 	.db 0xe2
      00485C 94                    2265 	.db 0x94
      00485D 80                    2266 	.db 0x80
      00485E E2                    2267 	.db 0xe2
      00485F 94                    2268 	.db 0x94
      004860 80                    2269 	.db 0x80
      004861 E2                    2270 	.db 0xe2
      004862 94                    2271 	.db 0x94
      004863 80                    2272 	.db 0x80
      004864 E2                    2273 	.db 0xe2
      004865 94                    2274 	.db 0x94
      004866 80                    2275 	.db 0x80
      004867 E2                    2276 	.db 0xe2
      004868 94                    2277 	.db 0x94
      004869 80                    2278 	.db 0x80
      00486A E2                    2279 	.db 0xe2
      00486B 94                    2280 	.db 0x94
      00486C B4                    2281 	.db 0xb4
      00486D E2                    2282 	.db 0xe2
      00486E 94                    2283 	.db 0x94
      00486F 80                    2284 	.db 0x80
      004870 E2                    2285 	.db 0xe2
      004871 94                    2286 	.db 0x94
      004872 80                    2287 	.db 0x80
      004873 E2                    2288 	.db 0xe2
      004874 94                    2289 	.db 0x94
      004875 80                    2290 	.db 0x80
      004876 E2                    2291 	.db 0xe2
      004877 94                    2292 	.db 0x94
      004878 80                    2293 	.db 0x80
      004879 E2                    2294 	.db 0xe2
      00487A 94                    2295 	.db 0x94
      00487B 80                    2296 	.db 0x80
      00487C E2                    2297 	.db 0xe2
      00487D 94                    2298 	.db 0x94
      00487E 80                    2299 	.db 0x80
      00487F E2                    2300 	.db 0xe2
      004880 94                    2301 	.db 0x94
      004881 80                    2302 	.db 0x80
      004882 E2                    2303 	.db 0xe2
      004883 94                    2304 	.db 0x94
      004884 80                    2305 	.db 0x80
      004885 E2                    2306 	.db 0xe2
      004886 94                    2307 	.db 0x94
      004887 80                    2308 	.db 0x80
      004888 E2                    2309 	.db 0xe2
      004889 94                    2310 	.db 0x94
      00488A 80                    2311 	.db 0x80
      00488B E2                    2312 	.db 0xe2
      00488C 94                    2313 	.db 0x94
      00488D 80                    2314 	.db 0x80
      00488E E2                    2315 	.db 0xe2
      00488F 94                    2316 	.db 0x94
      004890 80                    2317 	.db 0x80
      004891 E2                    2318 	.db 0xe2
      004892 94                    2319 	.db 0x94
      004893 80                    2320 	.db 0x80
      004894 E2                    2321 	.db 0xe2
      004895 94                    2322 	.db 0x94
      004896 80                    2323 	.db 0x80
      004897 E2                    2324 	.db 0xe2
      004898 94                    2325 	.db 0x94
      004899 80                    2326 	.db 0x80
      00489A E2                    2327 	.db 0xe2
      00489B 94                    2328 	.db 0x94
      00489C 80                    2329 	.db 0x80
      00489D E2                    2330 	.db 0xe2
      00489E 94                    2331 	.db 0x94
      00489F 80                    2332 	.db 0x80
      0048A0 E2                    2333 	.db 0xe2
      0048A1 94                    2334 	.db 0x94
      0048A2 80                    2335 	.db 0x80
      0048A3 E2                    2336 	.db 0xe2
      0048A4 94                    2337 	.db 0x94
      0048A5 80                    2338 	.db 0x80
      0048A6 E2                    2339 	.db 0xe2
      0048A7 94                    2340 	.db 0x94
      0048A8 80                    2341 	.db 0x80
      0048A9 E2                    2342 	.db 0xe2
      0048AA 94                    2343 	.db 0x94
      0048AB 80                    2344 	.db 0x80
      0048AC E2                    2345 	.db 0xe2
      0048AD 94                    2346 	.db 0x94
      0048AE 80                    2347 	.db 0x80
      0048AF E2                    2348 	.db 0xe2
      0048B0 94                    2349 	.db 0x94
      0048B1 80                    2350 	.db 0x80
      0048B2 E2                    2351 	.db 0xe2
      0048B3 94                    2352 	.db 0x94
      0048B4 80                    2353 	.db 0x80
      0048B5 E2                    2354 	.db 0xe2
      0048B6 94                    2355 	.db 0x94
      0048B7 80                    2356 	.db 0x80
      0048B8 E2                    2357 	.db 0xe2
      0048B9 94                    2358 	.db 0x94
      0048BA 80                    2359 	.db 0x80
      0048BB E2                    2360 	.db 0xe2
      0048BC 94                    2361 	.db 0x94
      0048BD 80                    2362 	.db 0x80
      0048BE E2                    2363 	.db 0xe2
      0048BF 94                    2364 	.db 0x94
      0048C0 80                    2365 	.db 0x80
      0048C1 E2                    2366 	.db 0xe2
      0048C2 94                    2367 	.db 0x94
      0048C3 80                    2368 	.db 0x80
      0048C4 E2                    2369 	.db 0xe2
      0048C5 94                    2370 	.db 0x94
      0048C6 80                    2371 	.db 0x80
      0048C7 E2                    2372 	.db 0xe2
      0048C8 94                    2373 	.db 0x94
      0048C9 80                    2374 	.db 0x80
      0048CA E2                    2375 	.db 0xe2
      0048CB 94                    2376 	.db 0x94
      0048CC 80                    2377 	.db 0x80
      0048CD E2                    2378 	.db 0xe2
      0048CE 94                    2379 	.db 0x94
      0048CF 80                    2380 	.db 0x80
      0048D0 E2                    2381 	.db 0xe2
      0048D1 94                    2382 	.db 0x94
      0048D2 80                    2383 	.db 0x80
      0048D3 E2                    2384 	.db 0xe2
      0048D4 94                    2385 	.db 0x94
      0048D5 80                    2386 	.db 0x80
      0048D6 E2                    2387 	.db 0xe2
      0048D7 94                    2388 	.db 0x94
      0048D8 80                    2389 	.db 0x80
      0048D9 E2                    2390 	.db 0xe2
      0048DA 94                    2391 	.db 0x94
      0048DB 80                    2392 	.db 0x80
      0048DC E2                    2393 	.db 0xe2
      0048DD 94                    2394 	.db 0x94
      0048DE 80                    2395 	.db 0x80
      0048DF E2                    2396 	.db 0xe2
      0048E0 94                    2397 	.db 0x94
      0048E1 80                    2398 	.db 0x80
      0048E2 E2                    2399 	.db 0xe2
      0048E3 94                    2400 	.db 0x94
      0048E4 80                    2401 	.db 0x80
      0048E5 E2                    2402 	.db 0xe2
      0048E6 94                    2403 	.db 0x94
      0048E7 80                    2404 	.db 0x80
      0048E8 E2                    2405 	.db 0xe2
      0048E9 94                    2406 	.db 0x94
      0048EA 80                    2407 	.db 0x80
      0048EB E2                    2408 	.db 0xe2
      0048EC 94                    2409 	.db 0x94
      0048ED 80                    2410 	.db 0x80
      0048EE E2                    2411 	.db 0xe2
      0048EF 94                    2412 	.db 0x94
      0048F0 80                    2413 	.db 0x80
      0048F1 E2                    2414 	.db 0xe2
      0048F2 94                    2415 	.db 0x94
      0048F3 98                    2416 	.db 0x98
      0048F4 0A                    2417 	.db 0x0a
      0048F5 0D                    2418 	.db 0x0d
      0048F6 00                    2419 	.db 0x00
                                   2420 	.area CSEG    (CODE)
                                   2421 	.area CONST   (CODE)
      0048F7                       2422 ___str_14:
      0048F7 E2                    2423 	.db 0xe2
      0048F8 94                    2424 	.db 0x94
      0048F9 82                    2425 	.db 0x82
      0048FA 20 45 6E 74 65 72 20  2426 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004924 0A                    2427 	.db 0x0a
      004925 0D                    2428 	.db 0x0d
      004926 7C                    2429 	.ascii "|"
      004927 00                    2430 	.db 0x00
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      004928                       2433 ___str_15:
      004928 7C 20 24 20           2434 	.ascii "| $ "
      00492C 00                    2435 	.db 0x00
                                   2436 	.area CSEG    (CODE)
                                   2437 	.area CONST   (CODE)
      00492D                       2438 ___str_16:
      00492D 0A                    2439 	.db 0x0a
      00492E 0D                    2440 	.db 0x0d
      00492F E2                    2441 	.db 0xe2
      004930 94                    2442 	.db 0x94
      004931 82                    2443 	.db 0x82
      004932 20 45 6E 74 65 72 65  2444 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      00494A 0A                    2445 	.db 0x0a
      00494B 0D                    2446 	.db 0x0d
      00494C 00                    2447 	.db 0x00
                                   2448 	.area CSEG    (CODE)
                                   2449 	.area CONST   (CODE)
      00494D                       2450 ___str_17:
      00494D E2                    2451 	.db 0xe2
      00494E 95                    2452 	.db 0x95
      00494F 94                    2453 	.db 0x94
      004950 E2                    2454 	.db 0xe2
      004951 95                    2455 	.db 0x95
      004952 90                    2456 	.db 0x90
      004953 E2                    2457 	.db 0xe2
      004954 95                    2458 	.db 0x95
      004955 90                    2459 	.db 0x90
      004956 E2                    2460 	.db 0xe2
      004957 95                    2461 	.db 0x95
      004958 90                    2462 	.db 0x90
      004959 E2                    2463 	.db 0xe2
      00495A 95                    2464 	.db 0x95
      00495B 90                    2465 	.db 0x90
      00495C E2                    2466 	.db 0xe2
      00495D 95                    2467 	.db 0x95
      00495E 90                    2468 	.db 0x90
      00495F E2                    2469 	.db 0xe2
      004960 95                    2470 	.db 0x95
      004961 90                    2471 	.db 0x90
      004962 E2                    2472 	.db 0xe2
      004963 95                    2473 	.db 0x95
      004964 90                    2474 	.db 0x90
      004965 E2                    2475 	.db 0xe2
      004966 95                    2476 	.db 0x95
      004967 90                    2477 	.db 0x90
      004968 E2                    2478 	.db 0xe2
      004969 95                    2479 	.db 0x95
      00496A 90                    2480 	.db 0x90
      00496B E2                    2481 	.db 0xe2
      00496C 95                    2482 	.db 0x95
      00496D 90                    2483 	.db 0x90
      00496E E2                    2484 	.db 0xe2
      00496F 95                    2485 	.db 0x95
      004970 90                    2486 	.db 0x90
      004971 E2                    2487 	.db 0xe2
      004972 95                    2488 	.db 0x95
      004973 90                    2489 	.db 0x90
      004974 E2                    2490 	.db 0xe2
      004975 95                    2491 	.db 0x95
      004976 90                    2492 	.db 0x90
      004977 E2                    2493 	.db 0xe2
      004978 95                    2494 	.db 0x95
      004979 90                    2495 	.db 0x90
      00497A E2                    2496 	.db 0xe2
      00497B 95                    2497 	.db 0x95
      00497C 90                    2498 	.db 0x90
      00497D E2                    2499 	.db 0xe2
      00497E 95                    2500 	.db 0x95
      00497F 90                    2501 	.db 0x90
      004980 E2                    2502 	.db 0xe2
      004981 95                    2503 	.db 0x95
      004982 90                    2504 	.db 0x90
      004983 E2                    2505 	.db 0xe2
      004984 95                    2506 	.db 0x95
      004985 90                    2507 	.db 0x90
      004986 E2                    2508 	.db 0xe2
      004987 95                    2509 	.db 0x95
      004988 90                    2510 	.db 0x90
      004989 E2                    2511 	.db 0xe2
      00498A 95                    2512 	.db 0x95
      00498B 90                    2513 	.db 0x90
      00498C E2                    2514 	.db 0xe2
      00498D 95                    2515 	.db 0x95
      00498E 90                    2516 	.db 0x90
      00498F E2                    2517 	.db 0xe2
      004990 95                    2518 	.db 0x95
      004991 90                    2519 	.db 0x90
      004992 E2                    2520 	.db 0xe2
      004993 95                    2521 	.db 0x95
      004994 90                    2522 	.db 0x90
      004995 E2                    2523 	.db 0xe2
      004996 95                    2524 	.db 0x95
      004997 90                    2525 	.db 0x90
      004998 E2                    2526 	.db 0xe2
      004999 95                    2527 	.db 0x95
      00499A 90                    2528 	.db 0x90
      00499B E2                    2529 	.db 0xe2
      00499C 95                    2530 	.db 0x95
      00499D 90                    2531 	.db 0x90
      00499E E2                    2532 	.db 0xe2
      00499F 95                    2533 	.db 0x95
      0049A0 90                    2534 	.db 0x90
      0049A1 E2                    2535 	.db 0xe2
      0049A2 95                    2536 	.db 0x95
      0049A3 90                    2537 	.db 0x90
      0049A4 E2                    2538 	.db 0xe2
      0049A5 95                    2539 	.db 0x95
      0049A6 90                    2540 	.db 0x90
      0049A7 E2                    2541 	.db 0xe2
      0049A8 95                    2542 	.db 0x95
      0049A9 90                    2543 	.db 0x90
      0049AA E2                    2544 	.db 0xe2
      0049AB 95                    2545 	.db 0x95
      0049AC 90                    2546 	.db 0x90
      0049AD E2                    2547 	.db 0xe2
      0049AE 95                    2548 	.db 0x95
      0049AF 90                    2549 	.db 0x90
      0049B0 E2                    2550 	.db 0xe2
      0049B1 95                    2551 	.db 0x95
      0049B2 90                    2552 	.db 0x90
      0049B3 E2                    2553 	.db 0xe2
      0049B4 95                    2554 	.db 0x95
      0049B5 90                    2555 	.db 0x90
      0049B6 E2                    2556 	.db 0xe2
      0049B7 95                    2557 	.db 0x95
      0049B8 90                    2558 	.db 0x90
      0049B9 E2                    2559 	.db 0xe2
      0049BA 95                    2560 	.db 0x95
      0049BB 90                    2561 	.db 0x90
      0049BC E2                    2562 	.db 0xe2
      0049BD 95                    2563 	.db 0x95
      0049BE 90                    2564 	.db 0x90
      0049BF E2                    2565 	.db 0xe2
      0049C0 95                    2566 	.db 0x95
      0049C1 90                    2567 	.db 0x90
      0049C2 E2                    2568 	.db 0xe2
      0049C3 95                    2569 	.db 0x95
      0049C4 90                    2570 	.db 0x90
      0049C5 E2                    2571 	.db 0xe2
      0049C6 95                    2572 	.db 0x95
      0049C7 90                    2573 	.db 0x90
      0049C8 E2                    2574 	.db 0xe2
      0049C9 95                    2575 	.db 0x95
      0049CA 90                    2576 	.db 0x90
      0049CB E2                    2577 	.db 0xe2
      0049CC 95                    2578 	.db 0x95
      0049CD 90                    2579 	.db 0x90
      0049CE E2                    2580 	.db 0xe2
      0049CF 95                    2581 	.db 0x95
      0049D0 97                    2582 	.db 0x97
      0049D1 0A                    2583 	.db 0x0a
      0049D2 0D                    2584 	.db 0x0d
      0049D3 00                    2585 	.db 0x00
                                   2586 	.area CSEG    (CODE)
                                   2587 	.area CONST   (CODE)
      0049D4                       2588 ___str_18:
      0049D4 E2                    2589 	.db 0xe2
      0049D5 95                    2590 	.db 0x95
      0049D6 91                    2591 	.db 0x91
      0049D7 20 20 20 20 20 20 20  2592 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      0049FF E2                    2593 	.db 0xe2
      004A00 95                    2594 	.db 0x95
      004A01 91                    2595 	.db 0x91
      004A02 0A                    2596 	.db 0x0a
      004A03 0D                    2597 	.db 0x0d
      004A04 00                    2598 	.db 0x00
                                   2599 	.area CSEG    (CODE)
                                   2600 	.area CONST   (CODE)
      004A05                       2601 ___str_19:
      004A05 E2                    2602 	.db 0xe2
      004A06 95                    2603 	.db 0x95
      004A07 91                    2604 	.db 0x91
      004A08 20 20 20 20 20 50 6C  2605 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004A30 E2                    2606 	.db 0xe2
      004A31 95                    2607 	.db 0x95
      004A32 91                    2608 	.db 0x91
      004A33 0A                    2609 	.db 0x0a
      004A34 0D                    2610 	.db 0x0d
      004A35 00                    2611 	.db 0x00
                                   2612 	.area CSEG    (CODE)
                                   2613 	.area CONST   (CODE)
      004A36                       2614 ___str_20:
      004A36 E2                    2615 	.db 0xe2
      004A37 95                    2616 	.db 0x95
      004A38 9A                    2617 	.db 0x9a
      004A39 E2                    2618 	.db 0xe2
      004A3A 95                    2619 	.db 0x95
      004A3B 90                    2620 	.db 0x90
      004A3C E2                    2621 	.db 0xe2
      004A3D 95                    2622 	.db 0x95
      004A3E 90                    2623 	.db 0x90
      004A3F E2                    2624 	.db 0xe2
      004A40 95                    2625 	.db 0x95
      004A41 90                    2626 	.db 0x90
      004A42 E2                    2627 	.db 0xe2
      004A43 95                    2628 	.db 0x95
      004A44 90                    2629 	.db 0x90
      004A45 E2                    2630 	.db 0xe2
      004A46 95                    2631 	.db 0x95
      004A47 90                    2632 	.db 0x90
      004A48 E2                    2633 	.db 0xe2
      004A49 95                    2634 	.db 0x95
      004A4A 90                    2635 	.db 0x90
      004A4B E2                    2636 	.db 0xe2
      004A4C 95                    2637 	.db 0x95
      004A4D 90                    2638 	.db 0x90
      004A4E E2                    2639 	.db 0xe2
      004A4F 95                    2640 	.db 0x95
      004A50 90                    2641 	.db 0x90
      004A51 E2                    2642 	.db 0xe2
      004A52 95                    2643 	.db 0x95
      004A53 90                    2644 	.db 0x90
      004A54 E2                    2645 	.db 0xe2
      004A55 95                    2646 	.db 0x95
      004A56 90                    2647 	.db 0x90
      004A57 E2                    2648 	.db 0xe2
      004A58 95                    2649 	.db 0x95
      004A59 90                    2650 	.db 0x90
      004A5A E2                    2651 	.db 0xe2
      004A5B 95                    2652 	.db 0x95
      004A5C 90                    2653 	.db 0x90
      004A5D E2                    2654 	.db 0xe2
      004A5E 95                    2655 	.db 0x95
      004A5F 90                    2656 	.db 0x90
      004A60 E2                    2657 	.db 0xe2
      004A61 95                    2658 	.db 0x95
      004A62 90                    2659 	.db 0x90
      004A63 E2                    2660 	.db 0xe2
      004A64 95                    2661 	.db 0x95
      004A65 90                    2662 	.db 0x90
      004A66 E2                    2663 	.db 0xe2
      004A67 95                    2664 	.db 0x95
      004A68 90                    2665 	.db 0x90
      004A69 E2                    2666 	.db 0xe2
      004A6A 95                    2667 	.db 0x95
      004A6B 90                    2668 	.db 0x90
      004A6C E2                    2669 	.db 0xe2
      004A6D 95                    2670 	.db 0x95
      004A6E 90                    2671 	.db 0x90
      004A6F E2                    2672 	.db 0xe2
      004A70 95                    2673 	.db 0x95
      004A71 90                    2674 	.db 0x90
      004A72 E2                    2675 	.db 0xe2
      004A73 95                    2676 	.db 0x95
      004A74 90                    2677 	.db 0x90
      004A75 E2                    2678 	.db 0xe2
      004A76 95                    2679 	.db 0x95
      004A77 90                    2680 	.db 0x90
      004A78 E2                    2681 	.db 0xe2
      004A79 95                    2682 	.db 0x95
      004A7A 90                    2683 	.db 0x90
      004A7B E2                    2684 	.db 0xe2
      004A7C 95                    2685 	.db 0x95
      004A7D 90                    2686 	.db 0x90
      004A7E E2                    2687 	.db 0xe2
      004A7F 95                    2688 	.db 0x95
      004A80 90                    2689 	.db 0x90
      004A81 E2                    2690 	.db 0xe2
      004A82 95                    2691 	.db 0x95
      004A83 90                    2692 	.db 0x90
      004A84 E2                    2693 	.db 0xe2
      004A85 95                    2694 	.db 0x95
      004A86 90                    2695 	.db 0x90
      004A87 E2                    2696 	.db 0xe2
      004A88 95                    2697 	.db 0x95
      004A89 90                    2698 	.db 0x90
      004A8A E2                    2699 	.db 0xe2
      004A8B 95                    2700 	.db 0x95
      004A8C 90                    2701 	.db 0x90
      004A8D E2                    2702 	.db 0xe2
      004A8E 95                    2703 	.db 0x95
      004A8F 90                    2704 	.db 0x90
      004A90 E2                    2705 	.db 0xe2
      004A91 95                    2706 	.db 0x95
      004A92 90                    2707 	.db 0x90
      004A93 E2                    2708 	.db 0xe2
      004A94 95                    2709 	.db 0x95
      004A95 90                    2710 	.db 0x90
      004A96 E2                    2711 	.db 0xe2
      004A97 95                    2712 	.db 0x95
      004A98 90                    2713 	.db 0x90
      004A99 E2                    2714 	.db 0xe2
      004A9A 95                    2715 	.db 0x95
      004A9B 90                    2716 	.db 0x90
      004A9C E2                    2717 	.db 0xe2
      004A9D 95                    2718 	.db 0x95
      004A9E 90                    2719 	.db 0x90
      004A9F E2                    2720 	.db 0xe2
      004AA0 95                    2721 	.db 0x95
      004AA1 90                    2722 	.db 0x90
      004AA2 E2                    2723 	.db 0xe2
      004AA3 95                    2724 	.db 0x95
      004AA4 90                    2725 	.db 0x90
      004AA5 E2                    2726 	.db 0xe2
      004AA6 95                    2727 	.db 0x95
      004AA7 90                    2728 	.db 0x90
      004AA8 E2                    2729 	.db 0xe2
      004AA9 95                    2730 	.db 0x95
      004AAA 90                    2731 	.db 0x90
      004AAB E2                    2732 	.db 0xe2
      004AAC 95                    2733 	.db 0x95
      004AAD 90                    2734 	.db 0x90
      004AAE E2                    2735 	.db 0xe2
      004AAF 95                    2736 	.db 0x95
      004AB0 90                    2737 	.db 0x90
      004AB1 E2                    2738 	.db 0xe2
      004AB2 95                    2739 	.db 0x95
      004AB3 90                    2740 	.db 0x90
      004AB4 E2                    2741 	.db 0xe2
      004AB5 95                    2742 	.db 0x95
      004AB6 90                    2743 	.db 0x90
      004AB7 E2                    2744 	.db 0xe2
      004AB8 95                    2745 	.db 0x95
      004AB9 9D                    2746 	.db 0x9d
      004ABA 0A                    2747 	.db 0x0a
      004ABB 0D                    2748 	.db 0x0d
      004ABC 00                    2749 	.db 0x00
                                   2750 	.area CSEG    (CODE)
                                   2751 	.area CONST   (CODE)
      004ABD                       2752 ___str_21:
      004ABD 7C 20 42 6C 6F 63 6B  2753 	.ascii "| Block number %d                            "
             20 6E 75 6D 62 65 72
             20 25 64 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004AEA 0A                    2754 	.db 0x0a
      004AEB 0D                    2755 	.db 0x0d
      004AEC 00                    2756 	.db 0x00
                                   2757 	.area CSEG    (CODE)
                                   2758 	.area CONST   (CODE)
      004AED                       2759 ___str_22:
      004AED E2                    2760 	.db 0xe2
      004AEE 94                    2761 	.db 0x94
      004AEF 82                    2762 	.db 0x82
      004AF0 20 45 6E 74 65 72 20  2763 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004B17 0A                    2764 	.db 0x0a
      004B18 0D                    2765 	.db 0x0d
      004B19 7C                    2766 	.ascii "|"
      004B1A 00                    2767 	.db 0x00
                                   2768 	.area CSEG    (CODE)
                                   2769 	.area CONST   (CODE)
      004B1B                       2770 ___str_23:
      004B1B 24 20                 2771 	.ascii "$ "
      004B1D 00                    2772 	.db 0x00
                                   2773 	.area CSEG    (CODE)
                                   2774 	.area CONST   (CODE)
      004B1E                       2775 ___str_24:
      004B1E 0A                    2776 	.db 0x0a
      004B1F 0D                    2777 	.db 0x0d
      004B20 E2                    2778 	.db 0xe2
      004B21 94                    2779 	.db 0x94
      004B22 82                    2780 	.db 0x82
      004B23 20 45 6E 74 65 72 65  2781 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004B38 0A                    2782 	.db 0x0a
      004B39 0D                    2783 	.db 0x0d
      004B3A 00                    2784 	.db 0x00
                                   2785 	.area CSEG    (CODE)
                                   2786 	.area CONST   (CODE)
      004B3B                       2787 ___str_25:
      004B3B 44 61 74 61 20 6F 75  2788 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004B4C 0A                    2789 	.db 0x0a
      004B4D 0D                    2790 	.db 0x0d
      004B4E 00                    2791 	.db 0x00
                                   2792 	.area CSEG    (CODE)
                                   2793 	.area XINIT   (CODE)
      004B5A                       2794 __xinit__address_range_flag:
      004B5A 01 00                 2795 	.byte #0x01, #0x00	;  1
      004B5C                       2796 __xinit__data_range_flag:
      004B5C 01 00                 2797 	.byte #0x01, #0x00	;  1
      004B5E                       2798 __xinit__block:
      004B5E 00 00                 2799 	.byte #0x00, #0x00	; 0
                                   2800 	.area CABS    (ABS,CODE)
