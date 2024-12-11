                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mannual_spi
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _mannual_spi
                                    208 	.globl _spi_init
                                    209 ;--------------------------------------------------------
                                    210 ; special function registers
                                    211 ;--------------------------------------------------------
                                    212 	.area RSEG    (ABS,DATA)
      000000                        213 	.org 0x0000
                           000080   214 _P0	=	0x0080
                           000081   215 _SP	=	0x0081
                           000082   216 _DPL	=	0x0082
                           000083   217 _DPH	=	0x0083
                           000087   218 _PCON	=	0x0087
                           000088   219 _TCON	=	0x0088
                           000089   220 _TMOD	=	0x0089
                           00008A   221 _TL0	=	0x008a
                           00008B   222 _TL1	=	0x008b
                           00008C   223 _TH0	=	0x008c
                           00008D   224 _TH1	=	0x008d
                           000090   225 _P1	=	0x0090
                           000098   226 _SCON	=	0x0098
                           000099   227 _SBUF	=	0x0099
                           0000A0   228 _P2	=	0x00a0
                           0000A8   229 _IE	=	0x00a8
                           0000B0   230 _P3	=	0x00b0
                           0000B8   231 _IP	=	0x00b8
                           0000D0   232 _PSW	=	0x00d0
                           0000E0   233 _ACC	=	0x00e0
                           0000F0   234 _B	=	0x00f0
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                                    286 ;--------------------------------------------------------
                                    287 ; special function bits
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           000080   291 _P0_0	=	0x0080
                           000081   292 _P0_1	=	0x0081
                           000082   293 _P0_2	=	0x0082
                           000083   294 _P0_3	=	0x0083
                           000084   295 _P0_4	=	0x0084
                           000085   296 _P0_5	=	0x0085
                           000086   297 _P0_6	=	0x0086
                           000087   298 _P0_7	=	0x0087
                           000088   299 _IT0	=	0x0088
                           000089   300 _IE0	=	0x0089
                           00008A   301 _IT1	=	0x008a
                           00008B   302 _IE1	=	0x008b
                           00008C   303 _TR0	=	0x008c
                           00008D   304 _TF0	=	0x008d
                           00008E   305 _TR1	=	0x008e
                           00008F   306 _TF1	=	0x008f
                           000090   307 _P1_0	=	0x0090
                           000091   308 _P1_1	=	0x0091
                           000092   309 _P1_2	=	0x0092
                           000093   310 _P1_3	=	0x0093
                           000094   311 _P1_4	=	0x0094
                           000095   312 _P1_5	=	0x0095
                           000096   313 _P1_6	=	0x0096
                           000097   314 _P1_7	=	0x0097
                           000098   315 _RI	=	0x0098
                           000099   316 _TI	=	0x0099
                           00009A   317 _RB8	=	0x009a
                           00009B   318 _TB8	=	0x009b
                           00009C   319 _REN	=	0x009c
                           00009D   320 _SM2	=	0x009d
                           00009E   321 _SM1	=	0x009e
                           00009F   322 _SM0	=	0x009f
                           0000A0   323 _P2_0	=	0x00a0
                           0000A1   324 _P2_1	=	0x00a1
                           0000A2   325 _P2_2	=	0x00a2
                           0000A3   326 _P2_3	=	0x00a3
                           0000A4   327 _P2_4	=	0x00a4
                           0000A5   328 _P2_5	=	0x00a5
                           0000A6   329 _P2_6	=	0x00a6
                           0000A7   330 _P2_7	=	0x00a7
                           0000A8   331 _EX0	=	0x00a8
                           0000A9   332 _ET0	=	0x00a9
                           0000AA   333 _EX1	=	0x00aa
                           0000AB   334 _ET1	=	0x00ab
                           0000AC   335 _ES	=	0x00ac
                           0000AF   336 _EA	=	0x00af
                           0000B0   337 _P3_0	=	0x00b0
                           0000B1   338 _P3_1	=	0x00b1
                           0000B2   339 _P3_2	=	0x00b2
                           0000B3   340 _P3_3	=	0x00b3
                           0000B4   341 _P3_4	=	0x00b4
                           0000B5   342 _P3_5	=	0x00b5
                           0000B6   343 _P3_6	=	0x00b6
                           0000B7   344 _P3_7	=	0x00b7
                           0000B0   345 _RXD	=	0x00b0
                           0000B1   346 _TXD	=	0x00b1
                           0000B2   347 _INT0	=	0x00b2
                           0000B3   348 _INT1	=	0x00b3
                           0000B4   349 _T0	=	0x00b4
                           0000B5   350 _T1	=	0x00b5
                           0000B6   351 _WR	=	0x00b6
                           0000B7   352 _RD	=	0x00b7
                           0000B8   353 _PX0	=	0x00b8
                           0000B9   354 _PT0	=	0x00b9
                           0000BA   355 _PX1	=	0x00ba
                           0000BB   356 _PT1	=	0x00bb
                           0000BC   357 _PS	=	0x00bc
                           0000D0   358 _P	=	0x00d0
                           0000D1   359 _F1	=	0x00d1
                           0000D2   360 _OV	=	0x00d2
                           0000D3   361 _RS0	=	0x00d3
                           0000D4   362 _RS1	=	0x00d4
                           0000D5   363 _F0	=	0x00d5
                           0000D6   364 _AC	=	0x00d6
                           0000D7   365 _CY	=	0x00d7
                           0000AD   366 _ET2	=	0x00ad
                           0000BD   367 _PT2	=	0x00bd
                           0000C8   368 _T2CON_0	=	0x00c8
                           0000C9   369 _T2CON_1	=	0x00c9
                           0000CA   370 _T2CON_2	=	0x00ca
                           0000CB   371 _T2CON_3	=	0x00cb
                           0000CC   372 _T2CON_4	=	0x00cc
                           0000CD   373 _T2CON_5	=	0x00cd
                           0000CE   374 _T2CON_6	=	0x00ce
                           0000CF   375 _T2CON_7	=	0x00cf
                           0000C8   376 _CP_RL2	=	0x00c8
                           0000C9   377 _C_T2	=	0x00c9
                           0000CA   378 _TR2	=	0x00ca
                           0000CB   379 _EXEN2	=	0x00cb
                           0000CC   380 _TCLK	=	0x00cc
                           0000CD   381 _RCLK	=	0x00cd
                           0000CE   382 _EXF2	=	0x00ce
                           0000CF   383 _TF2	=	0x00cf
                           0000DF   384 _CF	=	0x00df
                           0000DE   385 _CR	=	0x00de
                           0000DC   386 _CCF4	=	0x00dc
                           0000DB   387 _CCF3	=	0x00db
                           0000DA   388 _CCF2	=	0x00da
                           0000D9   389 _CCF1	=	0x00d9
                           0000D8   390 _CCF0	=	0x00d8
                           0000AE   391 _EC	=	0x00ae
                           0000BE   392 _PPCL	=	0x00be
                           0000BD   393 _PT2L	=	0x00bd
                           0000BC   394 _PSL	=	0x00bc
                           0000BB   395 _PT1L	=	0x00bb
                           0000BA   396 _PX1L	=	0x00ba
                           0000B9   397 _PT0L	=	0x00b9
                           0000B8   398 _PX0L	=	0x00b8
                           0000C0   399 _P4_0	=	0x00c0
                           0000C1   400 _P4_1	=	0x00c1
                           0000C2   401 _P4_2	=	0x00c2
                           0000C3   402 _P4_3	=	0x00c3
                           0000C4   403 _P4_4	=	0x00c4
                           0000C5   404 _P4_5	=	0x00c5
                           0000C6   405 _P4_6	=	0x00c6
                           0000C7   406 _P4_7	=	0x00c7
                           0000E8   407 _P5_0	=	0x00e8
                           0000E9   408 _P5_1	=	0x00e9
                           0000EA   409 _P5_2	=	0x00ea
                           0000EB   410 _P5_3	=	0x00eb
                           0000EC   411 _P5_4	=	0x00ec
                           0000ED   412 _P5_5	=	0x00ed
                           0000EE   413 _P5_6	=	0x00ee
                           0000EF   414 _P5_7	=	0x00ef
                                    415 ;--------------------------------------------------------
                                    416 ; overlayable register banks
                                    417 ;--------------------------------------------------------
                                    418 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        419 	.ds 8
                                    420 ;--------------------------------------------------------
                                    421 ; internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area DSEG    (DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable items in internal ram 
                                    426 ;--------------------------------------------------------
                                    427 ;--------------------------------------------------------
                                    428 ; indirectly addressable internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area ISEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; absolute internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area IABS    (ABS,DATA)
                                    435 	.area IABS    (ABS,DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; bit data
                                    438 ;--------------------------------------------------------
                                    439 	.area BSEG    (BIT)
                                    440 ;--------------------------------------------------------
                                    441 ; paged external ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area PSEG    (PAG,XDATA)
                                    444 ;--------------------------------------------------------
                                    445 ; external ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area XSEG    (XDATA)
      000407                        448 _mannual_spi_number_65536_15:
      000407                        449 	.ds 1
      000408                        450 _mannual_spi_dac_value_index_65536_16:
      000408                        451 	.ds 2
      00040A                        452 _mannual_spi_dac_data_65536_16:
      00040A                        453 	.ds 2
                                    454 ;--------------------------------------------------------
                                    455 ; absolute external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XABS    (ABS,XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; external initialized ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XISEG   (XDATA)
                                    462 	.area HOME    (CODE)
                                    463 	.area GSINIT0 (CODE)
                                    464 	.area GSINIT1 (CODE)
                                    465 	.area GSINIT2 (CODE)
                                    466 	.area GSINIT3 (CODE)
                                    467 	.area GSINIT4 (CODE)
                                    468 	.area GSINIT5 (CODE)
                                    469 	.area GSINIT  (CODE)
                                    470 	.area GSFINAL (CODE)
                                    471 	.area CSEG    (CODE)
                                    472 ;--------------------------------------------------------
                                    473 ; global & static initialisations
                                    474 ;--------------------------------------------------------
                                    475 	.area HOME    (CODE)
                                    476 	.area GSINIT  (CODE)
                                    477 	.area GSFINAL (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; Home
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area HOME    (CODE)
                                    484 ;--------------------------------------------------------
                                    485 ; code
                                    486 ;--------------------------------------------------------
                                    487 	.area CSEG    (CODE)
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'mannual_spi'
                                    490 ;------------------------------------------------------------
                                    491 ;number                    Allocated with name '_mannual_spi_number_65536_15'
                                    492 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_16'
                                    493 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_16'
                                    494 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_16'
                                    495 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_16'
                                    496 ;i                         Allocated with name '_mannual_spi_i_196608_18'
                                    497 ;------------------------------------------------------------
                                    498 ;	src/mannual_spi.c:4: void mannual_spi(unsigned char number)
                                    499 ;	-----------------------------------------
                                    500 ;	 function mannual_spi
                                    501 ;	-----------------------------------------
      002149                        502 _mannual_spi:
                           000007   503 	ar7 = 0x07
                           000006   504 	ar6 = 0x06
                           000005   505 	ar5 = 0x05
                           000004   506 	ar4 = 0x04
                           000003   507 	ar3 = 0x03
                           000002   508 	ar2 = 0x02
                           000001   509 	ar1 = 0x01
                           000000   510 	ar0 = 0x00
      002149 E5 82            [12]  511 	mov	a,dpl
      00214B 90 04 07         [24]  512 	mov	dptr,#_mannual_spi_number_65536_15
      00214E F0               [24]  513 	movx	@dptr,a
                                    514 ;	src/mannual_spi.c:6: int dac_value_index = 0;
      00214F 90 04 08         [24]  515 	mov	dptr,#_mannual_spi_dac_value_index_65536_16
      002152 E4               [12]  516 	clr	a
      002153 F0               [24]  517 	movx	@dptr,a
      002154 A3               [24]  518 	inc	dptr
      002155 F0               [24]  519 	movx	@dptr,a
                                    520 ;	src/mannual_spi.c:7: int dac_data = 0;
      002156 90 04 0A         [24]  521 	mov	dptr,#_mannual_spi_dac_data_65536_16
      002159 F0               [24]  522 	movx	@dptr,a
      00215A A3               [24]  523 	inc	dptr
      00215B F0               [24]  524 	movx	@dptr,a
                                    525 ;	src/mannual_spi.c:9: while(number > 0)
      00215C                        526 00111$:
      00215C 90 04 07         [24]  527 	mov	dptr,#_mannual_spi_number_65536_15
      00215F E0               [24]  528 	movx	a,@dptr
      002160 70 01            [24]  529 	jnz	00156$
      002162 22               [24]  530 	ret
      002163                        531 00156$:
                                    532 ;	src/mannual_spi.c:12: for(int i = 0; i<256; i++)
      002163 7E 00            [12]  533 	mov	r6,#0x00
      002165 7F 00            [12]  534 	mov	r7,#0x00
      002167                        535 00115$:
      002167 C3               [12]  536 	clr	c
      002168 EF               [12]  537 	mov	a,r7
      002169 64 80            [12]  538 	xrl	a,#0x80
      00216B 94 81            [12]  539 	subb	a,#0x81
      00216D 40 03            [24]  540 	jc	00157$
      00216F 02 21 F7         [24]  541 	ljmp	00110$
      002172                        542 00157$:
                                    543 ;	src/mannual_spi.c:15: if(dac_value_index < SINE_MAX_INDEX)
      002172 90 04 08         [24]  544 	mov	dptr,#_mannual_spi_dac_value_index_65536_16
      002175 E0               [24]  545 	movx	a,@dptr
      002176 FC               [12]  546 	mov	r4,a
      002177 A3               [24]  547 	inc	dptr
      002178 E0               [24]  548 	movx	a,@dptr
      002179 FD               [12]  549 	mov	r5,a
      00217A C3               [12]  550 	clr	c
      00217B 64 80            [12]  551 	xrl	a,#0x80
      00217D 94 81            [12]  552 	subb	a,#0x81
      00217F 50 21            [24]  553 	jnc	00102$
                                    554 ;	src/mannual_spi.c:19: dac_data = dac_values[dac_value_index];
      002181 EC               [12]  555 	mov	a,r4
      002182 2C               [12]  556 	add	a,r4
      002183 FC               [12]  557 	mov	r4,a
      002184 ED               [12]  558 	mov	a,r5
      002185 33               [12]  559 	rlc	a
      002186 FD               [12]  560 	mov	r5,a
      002187 EC               [12]  561 	mov	a,r4
      002188 24 58            [12]  562 	add	a,#_dac_values
      00218A F5 82            [12]  563 	mov	dpl,a
      00218C ED               [12]  564 	mov	a,r5
      00218D 34 37            [12]  565 	addc	a,#(_dac_values >> 8)
      00218F F5 83            [12]  566 	mov	dph,a
      002191 E4               [12]  567 	clr	a
      002192 93               [24]  568 	movc	a,@a+dptr
      002193 FC               [12]  569 	mov	r4,a
      002194 A3               [24]  570 	inc	dptr
      002195 E4               [12]  571 	clr	a
      002196 93               [24]  572 	movc	a,@a+dptr
      002197 FD               [12]  573 	mov	r5,a
      002198 90 04 0A         [24]  574 	mov	dptr,#_mannual_spi_dac_data_65536_16
      00219B EC               [12]  575 	mov	a,r4
      00219C F0               [24]  576 	movx	@dptr,a
      00219D ED               [12]  577 	mov	a,r5
      00219E A3               [24]  578 	inc	dptr
      00219F F0               [24]  579 	movx	@dptr,a
      0021A0 80 07            [24]  580 	sjmp	00103$
      0021A2                        581 00102$:
                                    582 ;	src/mannual_spi.c:23: dac_value_index = 0;  // Reset index for next cycle
      0021A2 90 04 08         [24]  583 	mov	dptr,#_mannual_spi_dac_value_index_65536_16
      0021A5 E4               [12]  584 	clr	a
      0021A6 F0               [24]  585 	movx	@dptr,a
      0021A7 A3               [24]  586 	inc	dptr
      0021A8 F0               [24]  587 	movx	@dptr,a
      0021A9                        588 00103$:
                                    589 ;	src/mannual_spi.c:30: ((dac_data >> 4) & 0x0F);
      0021A9 90 04 0A         [24]  590 	mov	dptr,#_mannual_spi_dac_data_65536_16
      0021AC E0               [24]  591 	movx	a,@dptr
      0021AD FC               [12]  592 	mov	r4,a
      0021AE A3               [24]  593 	inc	dptr
      0021AF E0               [24]  594 	movx	a,@dptr
      0021B0 8C 02            [24]  595 	mov	ar2,r4
      0021B2 C4               [12]  596 	swap	a
      0021B3 CA               [12]  597 	xch	a,r2
      0021B4 C4               [12]  598 	swap	a
      0021B5 54 0F            [12]  599 	anl	a,#0x0f
      0021B7 6A               [12]  600 	xrl	a,r2
      0021B8 CA               [12]  601 	xch	a,r2
      0021B9 54 0F            [12]  602 	anl	a,#0x0f
      0021BB CA               [12]  603 	xch	a,r2
      0021BC 6A               [12]  604 	xrl	a,r2
      0021BD CA               [12]  605 	xch	a,r2
      0021BE 30 E3 02         [24]  606 	jnb	acc.3,00159$
      0021C1 44 F0            [12]  607 	orl	a,#0xf0
      0021C3                        608 00159$:
      0021C3 74 0F            [12]  609 	mov	a,#0x0f
      0021C5 5A               [12]  610 	anl	a,r2
      0021C6 44 10            [12]  611 	orl	a,#0x10
      0021C8 FB               [12]  612 	mov	r3,a
                                    613 ;	src/mannual_spi.c:33: low_byte = (dac_data & 0x0F) << 4;
      0021C9 53 04 0F         [24]  614 	anl	ar4,#0x0f
      0021CC EC               [12]  615 	mov	a,r4
      0021CD C4               [12]  616 	swap	a
      0021CE 54 F0            [12]  617 	anl	a,#0xf0
      0021D0 FD               [12]  618 	mov	r5,a
                                    619 ;	src/mannual_spi.c:37: P1_1 = 0;  // Select DAC
                                    620 ;	assignBit
      0021D1 C2 91            [12]  621 	clr	_P1_1
                                    622 ;	src/mannual_spi.c:40: SPDAT = high_byte;
      0021D3 8B C5            [24]  623 	mov	_SPDAT,r3
                                    624 ;	src/mannual_spi.c:41: while (!(SPSTA & (1<<7))); 
      0021D5                        625 00104$:
      0021D5 E5 C4            [12]  626 	mov	a,_SPSTA
      0021D7 30 E7 FB         [24]  627 	jnb	acc.7,00104$
                                    628 ;	src/mannual_spi.c:45: SPDAT = low_byte;
      0021DA 8D C5            [24]  629 	mov	_SPDAT,r5
                                    630 ;	src/mannual_spi.c:46: while (!(SPSTA & (1<<7))); 
      0021DC                        631 00107$:
      0021DC E5 C4            [12]  632 	mov	a,_SPSTA
      0021DE 30 E7 FB         [24]  633 	jnb	acc.7,00107$
                                    634 ;	src/mannual_spi.c:48: P1_1 = 1;  // Deselect DAC
                                    635 ;	assignBit
      0021E1 D2 91            [12]  636 	setb	_P1_1
                                    637 ;	src/mannual_spi.c:50: dac_value_index++;
      0021E3 90 04 08         [24]  638 	mov	dptr,#_mannual_spi_dac_value_index_65536_16
      0021E6 E0               [24]  639 	movx	a,@dptr
      0021E7 24 01            [12]  640 	add	a,#0x01
      0021E9 F0               [24]  641 	movx	@dptr,a
      0021EA A3               [24]  642 	inc	dptr
      0021EB E0               [24]  643 	movx	a,@dptr
      0021EC 34 00            [12]  644 	addc	a,#0x00
      0021EE F0               [24]  645 	movx	@dptr,a
                                    646 ;	src/mannual_spi.c:12: for(int i = 0; i<256; i++)
      0021EF 0E               [12]  647 	inc	r6
      0021F0 BE 00 01         [24]  648 	cjne	r6,#0x00,00162$
      0021F3 0F               [12]  649 	inc	r7
      0021F4                        650 00162$:
      0021F4 02 21 67         [24]  651 	ljmp	00115$
      0021F7                        652 00110$:
                                    653 ;	src/mannual_spi.c:53: number = number - 1;
      0021F7 90 04 07         [24]  654 	mov	dptr,#_mannual_spi_number_65536_15
      0021FA E0               [24]  655 	movx	a,@dptr
      0021FB FF               [12]  656 	mov	r7,a
      0021FC 14               [12]  657 	dec	a
      0021FD F0               [24]  658 	movx	@dptr,a
                                    659 ;	src/mannual_spi.c:55: }
      0021FE 02 21 5C         [24]  660 	ljmp	00111$
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'spi_init'
                                    663 ;------------------------------------------------------------
                                    664 ;	src/mannual_spi.c:67: void spi_init(void) 
                                    665 ;	-----------------------------------------
                                    666 ;	 function spi_init
                                    667 ;	-----------------------------------------
      002201                        668 _spi_init:
                                    669 ;	src/mannual_spi.c:88: SPCON |= 0x10;
      002201 43 C3 10         [24]  670 	orl	_SPCON,#0x10
                                    671 ;	src/mannual_spi.c:89: SPCON |= 0x20;
      002204 43 C3 20         [24]  672 	orl	_SPCON,#0x20
                                    673 ;	src/mannual_spi.c:90: SPCON |= 0x40;
      002207 43 C3 40         [24]  674 	orl	_SPCON,#0x40
                                    675 ;	src/mannual_spi.c:95: }
      00220A 22               [24]  676 	ret
                                    677 	.area CSEG    (CODE)
                                    678 	.area CONST   (CODE)
                                    679 	.area XINIT   (CODE)
                                    680 	.area CABS    (ABS,CODE)
