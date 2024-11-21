                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module io_expander
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _getchar
                                     13 	.globl _putchar
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _i2c_write
                                    212 	.globl _i2c_read
                                    213 	.globl _i2c_start
                                    214 	.globl _i2c_stop
                                    215 	.globl _i2c_delay
                                    216 ;--------------------------------------------------------
                                    217 ; special function registers
                                    218 ;--------------------------------------------------------
                                    219 	.area RSEG    (ABS,DATA)
      000000                        220 	.org 0x0000
                           000080   221 _P0	=	0x0080
                           000081   222 _SP	=	0x0081
                           000082   223 _DPL	=	0x0082
                           000083   224 _DPH	=	0x0083
                           000087   225 _PCON	=	0x0087
                           000088   226 _TCON	=	0x0088
                           000089   227 _TMOD	=	0x0089
                           00008A   228 _TL0	=	0x008a
                           00008B   229 _TL1	=	0x008b
                           00008C   230 _TH0	=	0x008c
                           00008D   231 _TH1	=	0x008d
                           000090   232 _P1	=	0x0090
                           000098   233 _SCON	=	0x0098
                           000099   234 _SBUF	=	0x0099
                           0000A0   235 _P2	=	0x00a0
                           0000A8   236 _IE	=	0x00a8
                           0000B0   237 _P3	=	0x00b0
                           0000B8   238 _IP	=	0x00b8
                           0000D0   239 _PSW	=	0x00d0
                           0000E0   240 _ACC	=	0x00e0
                           0000F0   241 _B	=	0x00f0
                           0000C8   242 _T2CON	=	0x00c8
                           0000CA   243 _RCAP2L	=	0x00ca
                           0000CB   244 _RCAP2H	=	0x00cb
                           0000CC   245 _TL2	=	0x00cc
                           0000CD   246 _TH2	=	0x00cd
                           00008E   247 _AUXR	=	0x008e
                           0000A2   248 _AUXR1	=	0x00a2
                           000097   249 _CKRL	=	0x0097
                           00008F   250 _CKCON0	=	0x008f
                           0000AF   251 _CKCON1	=	0x00af
                           0000FA   252 _CCAP0H	=	0x00fa
                           0000FB   253 _CCAP1H	=	0x00fb
                           0000FC   254 _CCAP2H	=	0x00fc
                           0000FD   255 _CCAP3H	=	0x00fd
                           0000FE   256 _CCAP4H	=	0x00fe
                           0000EA   257 _CCAP0L	=	0x00ea
                           0000EB   258 _CCAP1L	=	0x00eb
                           0000EC   259 _CCAP2L	=	0x00ec
                           0000ED   260 _CCAP3L	=	0x00ed
                           0000EE   261 _CCAP4L	=	0x00ee
                           0000DA   262 _CCAPM0	=	0x00da
                           0000DB   263 _CCAPM1	=	0x00db
                           0000DC   264 _CCAPM2	=	0x00dc
                           0000DD   265 _CCAPM3	=	0x00dd
                           0000DE   266 _CCAPM4	=	0x00de
                           0000D8   267 _CCON	=	0x00d8
                           0000F9   268 _CH	=	0x00f9
                           0000E9   269 _CL	=	0x00e9
                           0000D9   270 _CMOD	=	0x00d9
                           0000A8   271 _IEN0	=	0x00a8
                           0000B1   272 _IEN1	=	0x00b1
                           0000B8   273 _IPL0	=	0x00b8
                           0000B7   274 _IPH0	=	0x00b7
                           0000B2   275 _IPL1	=	0x00b2
                           0000B3   276 _IPH1	=	0x00b3
                           0000C0   277 _P4	=	0x00c0
                           0000E8   278 _P5	=	0x00e8
                           0000A6   279 _WDTRST	=	0x00a6
                           0000A7   280 _WDTPRG	=	0x00a7
                           0000A9   281 _SADDR	=	0x00a9
                           0000B9   282 _SADEN	=	0x00b9
                           0000C3   283 _SPCON	=	0x00c3
                           0000C4   284 _SPSTA	=	0x00c4
                           0000C5   285 _SPDAT	=	0x00c5
                           0000C9   286 _T2MOD	=	0x00c9
                           00009B   287 _BDRCON	=	0x009b
                           00009A   288 _BRL	=	0x009a
                           00009C   289 _KBLS	=	0x009c
                           00009D   290 _KBE	=	0x009d
                           00009E   291 _KBF	=	0x009e
                           0000D2   292 _EECON	=	0x00d2
                                    293 ;--------------------------------------------------------
                                    294 ; special function bits
                                    295 ;--------------------------------------------------------
                                    296 	.area RSEG    (ABS,DATA)
      000000                        297 	.org 0x0000
                           000080   298 _P0_0	=	0x0080
                           000081   299 _P0_1	=	0x0081
                           000082   300 _P0_2	=	0x0082
                           000083   301 _P0_3	=	0x0083
                           000084   302 _P0_4	=	0x0084
                           000085   303 _P0_5	=	0x0085
                           000086   304 _P0_6	=	0x0086
                           000087   305 _P0_7	=	0x0087
                           000088   306 _IT0	=	0x0088
                           000089   307 _IE0	=	0x0089
                           00008A   308 _IT1	=	0x008a
                           00008B   309 _IE1	=	0x008b
                           00008C   310 _TR0	=	0x008c
                           00008D   311 _TF0	=	0x008d
                           00008E   312 _TR1	=	0x008e
                           00008F   313 _TF1	=	0x008f
                           000090   314 _P1_0	=	0x0090
                           000091   315 _P1_1	=	0x0091
                           000092   316 _P1_2	=	0x0092
                           000093   317 _P1_3	=	0x0093
                           000094   318 _P1_4	=	0x0094
                           000095   319 _P1_5	=	0x0095
                           000096   320 _P1_6	=	0x0096
                           000097   321 _P1_7	=	0x0097
                           000098   322 _RI	=	0x0098
                           000099   323 _TI	=	0x0099
                           00009A   324 _RB8	=	0x009a
                           00009B   325 _TB8	=	0x009b
                           00009C   326 _REN	=	0x009c
                           00009D   327 _SM2	=	0x009d
                           00009E   328 _SM1	=	0x009e
                           00009F   329 _SM0	=	0x009f
                           0000A0   330 _P2_0	=	0x00a0
                           0000A1   331 _P2_1	=	0x00a1
                           0000A2   332 _P2_2	=	0x00a2
                           0000A3   333 _P2_3	=	0x00a3
                           0000A4   334 _P2_4	=	0x00a4
                           0000A5   335 _P2_5	=	0x00a5
                           0000A6   336 _P2_6	=	0x00a6
                           0000A7   337 _P2_7	=	0x00a7
                           0000A8   338 _EX0	=	0x00a8
                           0000A9   339 _ET0	=	0x00a9
                           0000AA   340 _EX1	=	0x00aa
                           0000AB   341 _ET1	=	0x00ab
                           0000AC   342 _ES	=	0x00ac
                           0000AF   343 _EA	=	0x00af
                           0000B0   344 _P3_0	=	0x00b0
                           0000B1   345 _P3_1	=	0x00b1
                           0000B2   346 _P3_2	=	0x00b2
                           0000B3   347 _P3_3	=	0x00b3
                           0000B4   348 _P3_4	=	0x00b4
                           0000B5   349 _P3_5	=	0x00b5
                           0000B6   350 _P3_6	=	0x00b6
                           0000B7   351 _P3_7	=	0x00b7
                           0000B0   352 _RXD	=	0x00b0
                           0000B1   353 _TXD	=	0x00b1
                           0000B2   354 _INT0	=	0x00b2
                           0000B3   355 _INT1	=	0x00b3
                           0000B4   356 _T0	=	0x00b4
                           0000B5   357 _T1	=	0x00b5
                           0000B6   358 _WR	=	0x00b6
                           0000B7   359 _RD	=	0x00b7
                           0000B8   360 _PX0	=	0x00b8
                           0000B9   361 _PT0	=	0x00b9
                           0000BA   362 _PX1	=	0x00ba
                           0000BB   363 _PT1	=	0x00bb
                           0000BC   364 _PS	=	0x00bc
                           0000D0   365 _P	=	0x00d0
                           0000D1   366 _F1	=	0x00d1
                           0000D2   367 _OV	=	0x00d2
                           0000D3   368 _RS0	=	0x00d3
                           0000D4   369 _RS1	=	0x00d4
                           0000D5   370 _F0	=	0x00d5
                           0000D6   371 _AC	=	0x00d6
                           0000D7   372 _CY	=	0x00d7
                           0000AD   373 _ET2	=	0x00ad
                           0000BD   374 _PT2	=	0x00bd
                           0000C8   375 _T2CON_0	=	0x00c8
                           0000C9   376 _T2CON_1	=	0x00c9
                           0000CA   377 _T2CON_2	=	0x00ca
                           0000CB   378 _T2CON_3	=	0x00cb
                           0000CC   379 _T2CON_4	=	0x00cc
                           0000CD   380 _T2CON_5	=	0x00cd
                           0000CE   381 _T2CON_6	=	0x00ce
                           0000CF   382 _T2CON_7	=	0x00cf
                           0000C8   383 _CP_RL2	=	0x00c8
                           0000C9   384 _C_T2	=	0x00c9
                           0000CA   385 _TR2	=	0x00ca
                           0000CB   386 _EXEN2	=	0x00cb
                           0000CC   387 _TCLK	=	0x00cc
                           0000CD   388 _RCLK	=	0x00cd
                           0000CE   389 _EXF2	=	0x00ce
                           0000CF   390 _TF2	=	0x00cf
                           0000DF   391 _CF	=	0x00df
                           0000DE   392 _CR	=	0x00de
                           0000DC   393 _CCF4	=	0x00dc
                           0000DB   394 _CCF3	=	0x00db
                           0000DA   395 _CCF2	=	0x00da
                           0000D9   396 _CCF1	=	0x00d9
                           0000D8   397 _CCF0	=	0x00d8
                           0000AE   398 _EC	=	0x00ae
                           0000BE   399 _PPCL	=	0x00be
                           0000BD   400 _PT2L	=	0x00bd
                           0000BC   401 _PSL	=	0x00bc
                           0000BB   402 _PT1L	=	0x00bb
                           0000BA   403 _PX1L	=	0x00ba
                           0000B9   404 _PT0L	=	0x00b9
                           0000B8   405 _PX0L	=	0x00b8
                           0000C0   406 _P4_0	=	0x00c0
                           0000C1   407 _P4_1	=	0x00c1
                           0000C2   408 _P4_2	=	0x00c2
                           0000C3   409 _P4_3	=	0x00c3
                           0000C4   410 _P4_4	=	0x00c4
                           0000C5   411 _P4_5	=	0x00c5
                           0000C6   412 _P4_6	=	0x00c6
                           0000C7   413 _P4_7	=	0x00c7
                           0000E8   414 _P5_0	=	0x00e8
                           0000E9   415 _P5_1	=	0x00e9
                           0000EA   416 _P5_2	=	0x00ea
                           0000EB   417 _P5_3	=	0x00eb
                           0000EC   418 _P5_4	=	0x00ec
                           0000ED   419 _P5_5	=	0x00ed
                           0000EE   420 _P5_6	=	0x00ee
                           0000EF   421 _P5_7	=	0x00ef
                                    422 ;--------------------------------------------------------
                                    423 ; overlayable register banks
                                    424 ;--------------------------------------------------------
                                    425 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        426 	.ds 8
                                    427 ;--------------------------------------------------------
                                    428 ; internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area DSEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable items in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 ;--------------------------------------------------------
                                    435 ; Stack segment in internal ram 
                                    436 ;--------------------------------------------------------
                                    437 	.area	SSEG
      000014                        438 __start__stack:
      000014                        439 	.ds	1
                                    440 
                                    441 ;--------------------------------------------------------
                                    442 ; indirectly addressable internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area ISEG    (DATA)
                                    445 ;--------------------------------------------------------
                                    446 ; absolute internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area IABS    (ABS,DATA)
                                    449 	.area IABS    (ABS,DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; bit data
                                    452 ;--------------------------------------------------------
                                    453 	.area BSEG    (BIT)
                                    454 ;--------------------------------------------------------
                                    455 ; paged external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area PSEG    (PAG,XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XSEG    (XDATA)
      000400                        462 _putchar_charToSend_65536_17:
      000400                        463 	.ds 2
      000402                        464 _i2c_write_data_65536_25:
      000402                        465 	.ds 1
      000403                        466 _i2c_read_ACK_65536_30:
      000403                        467 	.ds 2
      000405                        468 _i2c_read_buff_65536_31:
      000405                        469 	.ds 1
                                    470 ;--------------------------------------------------------
                                    471 ; absolute external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XABS    (ABS,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external initialized ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XISEG   (XDATA)
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
                                    489 ; interrupt vector 
                                    490 ;--------------------------------------------------------
                                    491 	.area HOME    (CODE)
      003000                        492 __interrupt_vect:
      003000 02 30 06         [24]  493 	ljmp	__sdcc_gsinit_startup
                                    494 ;--------------------------------------------------------
                                    495 ; global & static initialisations
                                    496 ;--------------------------------------------------------
                                    497 	.area HOME    (CODE)
                                    498 	.area GSINIT  (CODE)
                                    499 	.area GSFINAL (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.globl __sdcc_gsinit_startup
                                    502 	.globl __sdcc_program_startup
                                    503 	.globl __start__stack
                                    504 	.globl __mcs51_genXINIT
                                    505 	.globl __mcs51_genXRAMCLEAR
                                    506 	.globl __mcs51_genRAMCLEAR
                                    507 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  508 	ljmp	__sdcc_program_startup
                                    509 ;--------------------------------------------------------
                                    510 ; Home
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area HOME    (CODE)
      003003                        514 __sdcc_program_startup:
      003003 02 30 8F         [24]  515 	ljmp	_main
                                    516 ;	return from main will return to caller
                                    517 ;--------------------------------------------------------
                                    518 ; code
                                    519 ;--------------------------------------------------------
                                    520 	.area CSEG    (CODE)
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'putchar'
                                    523 ;------------------------------------------------------------
                                    524 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    525 ;------------------------------------------------------------
                                    526 ;	io_expander.c:28: int putchar(int charToSend) {
                                    527 ;	-----------------------------------------
                                    528 ;	 function putchar
                                    529 ;	-----------------------------------------
      003062                        530 _putchar:
                           000007   531 	ar7 = 0x07
                           000006   532 	ar6 = 0x06
                           000005   533 	ar5 = 0x05
                           000004   534 	ar4 = 0x04
                           000003   535 	ar3 = 0x03
                           000002   536 	ar2 = 0x02
                           000001   537 	ar1 = 0x01
                           000000   538 	ar0 = 0x00
      003062 AF 83            [24]  539 	mov	r7,dph
      003064 E5 82            [12]  540 	mov	a,dpl
      003066 90 04 00         [24]  541 	mov	dptr,#_putchar_charToSend_65536_17
      003069 F0               [24]  542 	movx	@dptr,a
      00306A EF               [12]  543 	mov	a,r7
      00306B A3               [24]  544 	inc	dptr
      00306C F0               [24]  545 	movx	@dptr,a
                                    546 ;	io_expander.c:29: SBUF = charToSend;       /* Load character into serial buffer */
      00306D 90 04 00         [24]  547 	mov	dptr,#_putchar_charToSend_65536_17
      003070 E0               [24]  548 	movx	a,@dptr
      003071 FE               [12]  549 	mov	r6,a
      003072 A3               [24]  550 	inc	dptr
      003073 E0               [24]  551 	movx	a,@dptr
      003074 FF               [12]  552 	mov	r7,a
      003075 8E 99            [24]  553 	mov	_SBUF,r6
                                    554 ;	io_expander.c:30: while (!TI);             /* Wait for transmission completion */
      003077                        555 00101$:
                                    556 ;	io_expander.c:31: TI = 0;                  /* Clear transmission flag */
                                    557 ;	assignBit
      003077 10 99 02         [24]  558 	jbc	_TI,00114$
      00307A 80 FB            [24]  559 	sjmp	00101$
      00307C                        560 00114$:
                                    561 ;	io_expander.c:32: return charToSend;
      00307C 8E 82            [24]  562 	mov	dpl,r6
      00307E 8F 83            [24]  563 	mov	dph,r7
                                    564 ;	io_expander.c:33: }
      003080 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'getchar'
                                    568 ;------------------------------------------------------------
                                    569 ;	io_expander.c:39: int getchar(void) {
                                    570 ;	-----------------------------------------
                                    571 ;	 function getchar
                                    572 ;	-----------------------------------------
      003081                        573 _getchar:
                                    574 ;	io_expander.c:40: while (!RI);             /* Wait for reception completion */
      003081                        575 00101$:
                                    576 ;	io_expander.c:41: RI = 0;                  /* Clear reception flag */
                                    577 ;	assignBit
      003081 10 98 02         [24]  578 	jbc	_RI,00114$
      003084 80 FB            [24]  579 	sjmp	00101$
      003086                        580 00114$:
                                    581 ;	io_expander.c:42: return SBUF;             /* Return received character */
      003086 AE 99            [24]  582 	mov	r6,_SBUF
      003088 7F 00            [12]  583 	mov	r7,#0x00
      00308A 8E 82            [24]  584 	mov	dpl,r6
      00308C 8F 83            [24]  585 	mov	dph,r7
                                    586 ;	io_expander.c:43: }
      00308E 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'main'
                                    590 ;------------------------------------------------------------
                                    591 ;read_value                Allocated with name '_main_read_value_65537_22'
                                    592 ;------------------------------------------------------------
                                    593 ;	io_expander.c:45: int main()
                                    594 ;	-----------------------------------------
                                    595 ;	 function main
                                    596 ;	-----------------------------------------
      00308F                        597 _main:
                                    598 ;	io_expander.c:47: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  599 	anl	_P1,#0xf7
                                    600 ;	io_expander.c:48: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  601 	anl	_P1,#0xef
                                    602 ;	io_expander.c:50: printf("IO EXPANDER PROGRAM\n\r");
      003095 74 C7            [12]  603 	mov	a,#___str_0
      003097 C0 E0            [24]  604 	push	acc
      003099 74 3C            [12]  605 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24]  606 	push	acc
      00309D 74 80            [12]  607 	mov	a,#0x80
      00309F C0 E0            [24]  608 	push	acc
      0030A1 12 32 65         [24]  609 	lcall	_printf
      0030A4 15 81            [12]  610 	dec	sp
      0030A6 15 81            [12]  611 	dec	sp
      0030A8 15 81            [12]  612 	dec	sp
                                    613 ;	io_expander.c:53: i2c_start();
      0030AA 12 31 DE         [24]  614 	lcall	_i2c_start
                                    615 ;	io_expander.c:54: i2c_write(IO_EXPANDER_ID | WRITE);
      0030AD 75 82 40         [24]  616 	mov	dpl,#0x40
      0030B0 12 30 F1         [24]  617 	lcall	_i2c_write
                                    618 ;	io_expander.c:55: i2c_write(INPUT_OUTPUT);
      0030B3 75 82 03         [24]  619 	mov	dpl,#0x03
      0030B6 12 30 F1         [24]  620 	lcall	_i2c_write
                                    621 ;	io_expander.c:58: i2c_start();
      0030B9 12 31 DE         [24]  622 	lcall	_i2c_start
                                    623 ;	io_expander.c:59: i2c_write(IO_EXPANDER_ID | READ);
      0030BC 75 82 41         [24]  624 	mov	dpl,#0x41
      0030BF 12 30 F1         [24]  625 	lcall	_i2c_write
                                    626 ;	io_expander.c:60: unsigned char read_value = i2c_read(0);
      0030C2 90 00 00         [24]  627 	mov	dptr,#0x0000
      0030C5 12 31 59         [24]  628 	lcall	_i2c_read
      0030C8 AE 82            [24]  629 	mov	r6,dpl
                                    630 ;	io_expander.c:62: if(read_value == 0)
      0030CA EE               [12]  631 	mov	a,r6
      0030CB 70 11            [24]  632 	jnz	00102$
                                    633 ;	io_expander.c:65: i2c_start();
      0030CD 12 31 DE         [24]  634 	lcall	_i2c_start
                                    635 ;	io_expander.c:66: i2c_write(IO_EXPANDER_ID | WRITE);
      0030D0 75 82 40         [24]  636 	mov	dpl,#0x40
      0030D3 12 30 F1         [24]  637 	lcall	_i2c_write
                                    638 ;	io_expander.c:67: i2c_write(INPUT_MASK | 0xFF);
      0030D6 75 82 FF         [24]  639 	mov	dpl,#0xff
      0030D9 12 30 F1         [24]  640 	lcall	_i2c_write
      0030DC 80 0F            [24]  641 	sjmp	00103$
      0030DE                        642 00102$:
                                    643 ;	io_expander.c:75: i2c_start();
      0030DE 12 31 DE         [24]  644 	lcall	_i2c_start
                                    645 ;	io_expander.c:76: i2c_write(IO_EXPANDER_ID | WRITE);
      0030E1 75 82 40         [24]  646 	mov	dpl,#0x40
      0030E4 12 30 F1         [24]  647 	lcall	_i2c_write
                                    648 ;	io_expander.c:77: i2c_write(INPUT_MASK | 0x00);
      0030E7 75 82 03         [24]  649 	mov	dpl,#0x03
      0030EA 12 30 F1         [24]  650 	lcall	_i2c_write
      0030ED                        651 00103$:
                                    652 ;	io_expander.c:79: return 0;
      0030ED 90 00 00         [24]  653 	mov	dptr,#0x0000
                                    654 ;	io_expander.c:82: }
      0030F0 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'i2c_write'
                                    658 ;------------------------------------------------------------
                                    659 ;data                      Allocated with name '_i2c_write_data_65536_25'
                                    660 ;i                         Allocated with name '_i2c_write_i_65536_26'
                                    661 ;------------------------------------------------------------
                                    662 ;	io_expander.c:94: int i2c_write(unsigned char data)
                                    663 ;	-----------------------------------------
                                    664 ;	 function i2c_write
                                    665 ;	-----------------------------------------
      0030F1                        666 _i2c_write:
      0030F1 E5 82            [12]  667 	mov	a,dpl
      0030F3 90 04 02         [24]  668 	mov	dptr,#_i2c_write_data_65536_25
      0030F6 F0               [24]  669 	movx	@dptr,a
                                    670 ;	io_expander.c:98: for(i=0;i<=7;i++)
      0030F7 7E 00            [12]  671 	mov	r6,#0x00
      0030F9 7F 00            [12]  672 	mov	r7,#0x00
      0030FB                        673 00104$:
                                    674 ;	io_expander.c:100: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0030FB 90 04 02         [24]  675 	mov	dptr,#_i2c_write_data_65536_25
      0030FE E0               [24]  676 	movx	a,@dptr
      0030FF FD               [12]  677 	mov	r5,a
      003100 23               [12]  678 	rl	a
      003101 54 01            [12]  679 	anl	a,#0x01
      003103 24 FF            [12]  680 	add	a,#0xff
      003105 92 94            [24]  681 	mov	_P1_4,c
                                    682 ;	io_expander.c:101: i2c_delay();        // Setup time for data
      003107 C0 07            [24]  683 	push	ar7
      003109 C0 06            [24]  684 	push	ar6
      00310B C0 05            [24]  685 	push	ar5
      00310D 12 32 00         [24]  686 	lcall	_i2c_delay
                                    687 ;	io_expander.c:102: SCL=1;
                                    688 ;	assignBit
      003110 D2 93            [12]  689 	setb	_P1_3
                                    690 ;	io_expander.c:103: i2c_delay();        // Hold time for clock
      003112 12 32 00         [24]  691 	lcall	_i2c_delay
      003115 D0 05            [24]  692 	pop	ar5
      003117 D0 06            [24]  693 	pop	ar6
      003119 D0 07            [24]  694 	pop	ar7
                                    695 ;	io_expander.c:104: SCL=0;
                                    696 ;	assignBit
      00311B C2 93            [12]  697 	clr	_P1_3
                                    698 ;	io_expander.c:105: data = data << 1;
      00311D ED               [12]  699 	mov	a,r5
      00311E 2D               [12]  700 	add	a,r5
      00311F 90 04 02         [24]  701 	mov	dptr,#_i2c_write_data_65536_25
      003122 F0               [24]  702 	movx	@dptr,a
                                    703 ;	io_expander.c:98: for(i=0;i<=7;i++)
      003123 0E               [12]  704 	inc	r6
      003124 BE 00 01         [24]  705 	cjne	r6,#0x00,00121$
      003127 0F               [12]  706 	inc	r7
      003128                        707 00121$:
      003128 C3               [12]  708 	clr	c
      003129 74 07            [12]  709 	mov	a,#0x07
      00312B 9E               [12]  710 	subb	a,r6
      00312C E4               [12]  711 	clr	a
      00312D 9F               [12]  712 	subb	a,r7
      00312E 50 CB            [24]  713 	jnc	00104$
                                    714 ;	io_expander.c:109: SDA = 1;            // Release SDA for slave
                                    715 ;	assignBit
      003130 D2 94            [12]  716 	setb	_P1_4
                                    717 ;	io_expander.c:110: SCL = 1;            // 9th clock pulse for ACK
                                    718 ;	assignBit
      003132 D2 93            [12]  719 	setb	_P1_3
                                    720 ;	io_expander.c:111: i2c_delay();
      003134 12 32 00         [24]  721 	lcall	_i2c_delay
                                    722 ;	io_expander.c:112: if(SDA == 1)        // If SDA is still high, no ACK received
      003137 30 94 19         [24]  723 	jnb	_P1_4,00103$
                                    724 ;	io_expander.c:115: printf("ACK DID NOT ARRIVE\n\r");
      00313A 74 DD            [12]  725 	mov	a,#___str_1
      00313C C0 E0            [24]  726 	push	acc
      00313E 74 3C            [12]  727 	mov	a,#(___str_1 >> 8)
      003140 C0 E0            [24]  728 	push	acc
      003142 74 80            [12]  729 	mov	a,#0x80
      003144 C0 E0            [24]  730 	push	acc
      003146 12 32 65         [24]  731 	lcall	_printf
      003149 15 81            [12]  732 	dec	sp
      00314B 15 81            [12]  733 	dec	sp
      00314D 15 81            [12]  734 	dec	sp
                                    735 ;	io_expander.c:116: return 0;       // Error
      00314F 90 00 00         [24]  736 	mov	dptr,#0x0000
      003152 22               [24]  737 	ret
      003153                        738 00103$:
                                    739 ;	io_expander.c:118: SCL = 0;
                                    740 ;	assignBit
      003153 C2 93            [12]  741 	clr	_P1_3
                                    742 ;	io_expander.c:120: return 1;           // Success
      003155 90 00 01         [24]  743 	mov	dptr,#0x0001
                                    744 ;	io_expander.c:122: }
      003158 22               [24]  745 	ret
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'i2c_read'
                                    748 ;------------------------------------------------------------
                                    749 ;ACK                       Allocated with name '_i2c_read_ACK_65536_30'
                                    750 ;buff                      Allocated with name '_i2c_read_buff_65536_31'
                                    751 ;i                         Allocated with name '_i2c_read_i_131072_32'
                                    752 ;------------------------------------------------------------
                                    753 ;	io_expander.c:132: int i2c_read(int ACK)
                                    754 ;	-----------------------------------------
                                    755 ;	 function i2c_read
                                    756 ;	-----------------------------------------
      003159                        757 _i2c_read:
      003159 AF 83            [24]  758 	mov	r7,dph
      00315B E5 82            [12]  759 	mov	a,dpl
      00315D 90 04 03         [24]  760 	mov	dptr,#_i2c_read_ACK_65536_30
      003160 F0               [24]  761 	movx	@dptr,a
      003161 EF               [12]  762 	mov	a,r7
      003162 A3               [24]  763 	inc	dptr
      003163 F0               [24]  764 	movx	@dptr,a
                                    765 ;	io_expander.c:134: unsigned char buff=0;
      003164 90 04 05         [24]  766 	mov	dptr,#_i2c_read_buff_65536_31
      003167 E4               [12]  767 	clr	a
      003168 F0               [24]  768 	movx	@dptr,a
                                    769 ;	io_expander.c:135: SCL = 0;
                                    770 ;	assignBit
      003169 C2 93            [12]  771 	clr	_P1_3
                                    772 ;	io_expander.c:136: for(int i=0;i<8;i++)
      00316B 7E 00            [12]  773 	mov	r6,#0x00
      00316D 7F 00            [12]  774 	mov	r7,#0x00
      00316F                        775 00103$:
      00316F C3               [12]  776 	clr	c
      003170 EE               [12]  777 	mov	a,r6
      003171 94 08            [12]  778 	subb	a,#0x08
      003173 EF               [12]  779 	mov	a,r7
      003174 64 80            [12]  780 	xrl	a,#0x80
      003176 94 80            [12]  781 	subb	a,#0x80
      003178 50 40            [24]  782 	jnc	00101$
                                    783 ;	io_expander.c:138: SCL = 1;
                                    784 ;	assignBit
      00317A D2 93            [12]  785 	setb	_P1_3
                                    786 ;	io_expander.c:139: i2c_delay();
      00317C C0 07            [24]  787 	push	ar7
      00317E C0 06            [24]  788 	push	ar6
      003180 12 32 00         [24]  789 	lcall	_i2c_delay
      003183 D0 06            [24]  790 	pop	ar6
      003185 D0 07            [24]  791 	pop	ar7
                                    792 ;	io_expander.c:140: buff |= (SDA << (7 - i));
      003187 A2 94            [12]  793 	mov	c,_P1_4
      003189 E4               [12]  794 	clr	a
      00318A 33               [12]  795 	rlc	a
      00318B FD               [12]  796 	mov	r5,a
      00318C 8E 04            [24]  797 	mov	ar4,r6
      00318E 74 07            [12]  798 	mov	a,#0x07
      003190 C3               [12]  799 	clr	c
      003191 9C               [12]  800 	subb	a,r4
      003192 FC               [12]  801 	mov	r4,a
      003193 8C F0            [24]  802 	mov	b,r4
      003195 05 F0            [12]  803 	inc	b
      003197 ED               [12]  804 	mov	a,r5
      003198 80 02            [24]  805 	sjmp	00119$
      00319A                        806 00117$:
      00319A 25 E0            [12]  807 	add	a,acc
      00319C                        808 00119$:
      00319C D5 F0 FB         [24]  809 	djnz	b,00117$
      00319F FC               [12]  810 	mov	r4,a
      0031A0 90 04 05         [24]  811 	mov	dptr,#_i2c_read_buff_65536_31
      0031A3 E0               [24]  812 	movx	a,@dptr
      0031A4 4C               [12]  813 	orl	a,r4
      0031A5 F0               [24]  814 	movx	@dptr,a
                                    815 ;	io_expander.c:141: i2c_delay();
      0031A6 C0 07            [24]  816 	push	ar7
      0031A8 C0 06            [24]  817 	push	ar6
      0031AA 12 32 00         [24]  818 	lcall	_i2c_delay
      0031AD D0 06            [24]  819 	pop	ar6
      0031AF D0 07            [24]  820 	pop	ar7
                                    821 ;	io_expander.c:142: SCL=0;
                                    822 ;	assignBit
      0031B1 C2 93            [12]  823 	clr	_P1_3
                                    824 ;	io_expander.c:136: for(int i=0;i<8;i++)
      0031B3 0E               [12]  825 	inc	r6
      0031B4 BE 00 B8         [24]  826 	cjne	r6,#0x00,00103$
      0031B7 0F               [12]  827 	inc	r7
      0031B8 80 B5            [24]  828 	sjmp	00103$
      0031BA                        829 00101$:
                                    830 ;	io_expander.c:146: SDA = !ACK;         // ACK = 0, NACK = 1
      0031BA 90 04 03         [24]  831 	mov	dptr,#_i2c_read_ACK_65536_30
      0031BD E0               [24]  832 	movx	a,@dptr
      0031BE FE               [12]  833 	mov	r6,a
      0031BF A3               [24]  834 	inc	dptr
      0031C0 E0               [24]  835 	movx	a,@dptr
      0031C1 4E               [12]  836 	orl	a,r6
      0031C2 B4 01 00         [24]  837 	cjne	a,#0x01,00121$
      0031C5                        838 00121$:
      0031C5 E4               [12]  839 	clr	a
      0031C6 33               [12]  840 	rlc	a
      0031C7 24 FF            [12]  841 	add	a,#0xff
      0031C9 92 94            [24]  842 	mov	_P1_4,c
                                    843 ;	io_expander.c:147: SCL = 1;
                                    844 ;	assignBit
      0031CB D2 93            [12]  845 	setb	_P1_3
                                    846 ;	io_expander.c:148: i2c_delay();
      0031CD 12 32 00         [24]  847 	lcall	_i2c_delay
                                    848 ;	io_expander.c:149: SCL = 0;
                                    849 ;	assignBit
      0031D0 C2 93            [12]  850 	clr	_P1_3
                                    851 ;	io_expander.c:151: return buff;
      0031D2 90 04 05         [24]  852 	mov	dptr,#_i2c_read_buff_65536_31
      0031D5 E0               [24]  853 	movx	a,@dptr
      0031D6 FF               [12]  854 	mov	r7,a
      0031D7 7E 00            [12]  855 	mov	r6,#0x00
      0031D9 8F 82            [24]  856 	mov	dpl,r7
      0031DB 8E 83            [24]  857 	mov	dph,r6
                                    858 ;	io_expander.c:152: }
      0031DD 22               [24]  859 	ret
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'i2c_start'
                                    862 ;------------------------------------------------------------
                                    863 ;	io_expander.c:159: void i2c_start(void)
                                    864 ;	-----------------------------------------
                                    865 ;	 function i2c_start
                                    866 ;	-----------------------------------------
      0031DE                        867 _i2c_start:
                                    868 ;	io_expander.c:161: i2c_delay();
      0031DE 12 32 00         [24]  869 	lcall	_i2c_delay
                                    870 ;	io_expander.c:162: SDA = 1;
                                    871 ;	assignBit
      0031E1 D2 94            [12]  872 	setb	_P1_4
                                    873 ;	io_expander.c:163: i2c_delay();
      0031E3 12 32 00         [24]  874 	lcall	_i2c_delay
                                    875 ;	io_expander.c:164: SCL = 1;
                                    876 ;	assignBit
      0031E6 D2 93            [12]  877 	setb	_P1_3
                                    878 ;	io_expander.c:165: i2c_delay();
      0031E8 12 32 00         [24]  879 	lcall	_i2c_delay
                                    880 ;	io_expander.c:166: SDA = 0;
                                    881 ;	assignBit
      0031EB C2 94            [12]  882 	clr	_P1_4
                                    883 ;	io_expander.c:167: i2c_delay();
      0031ED 12 32 00         [24]  884 	lcall	_i2c_delay
                                    885 ;	io_expander.c:168: SCL = 0;
                                    886 ;	assignBit
      0031F0 C2 93            [12]  887 	clr	_P1_3
                                    888 ;	io_expander.c:169: }
      0031F2 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'i2c_stop'
                                    892 ;------------------------------------------------------------
                                    893 ;	io_expander.c:176: void i2c_stop(void)
                                    894 ;	-----------------------------------------
                                    895 ;	 function i2c_stop
                                    896 ;	-----------------------------------------
      0031F3                        897 _i2c_stop:
                                    898 ;	io_expander.c:178: SDA = 0;
                                    899 ;	assignBit
      0031F3 C2 94            [12]  900 	clr	_P1_4
                                    901 ;	io_expander.c:179: i2c_delay();
      0031F5 12 32 00         [24]  902 	lcall	_i2c_delay
                                    903 ;	io_expander.c:180: SCL = 1;
                                    904 ;	assignBit
      0031F8 D2 93            [12]  905 	setb	_P1_3
                                    906 ;	io_expander.c:181: i2c_delay();
      0031FA 12 32 00         [24]  907 	lcall	_i2c_delay
                                    908 ;	io_expander.c:182: SDA = 1; 
                                    909 ;	assignBit
      0031FD D2 94            [12]  910 	setb	_P1_4
                                    911 ;	io_expander.c:183: }
      0031FF 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'i2c_delay'
                                    915 ;------------------------------------------------------------
                                    916 ;i                         Allocated with name '_i2c_delay_i_131072_39'
                                    917 ;------------------------------------------------------------
                                    918 ;	io_expander.c:192: void i2c_delay() 
                                    919 ;	-----------------------------------------
                                    920 ;	 function i2c_delay
                                    921 ;	-----------------------------------------
      003200                        922 _i2c_delay:
                                    923 ;	io_expander.c:194: for(int i = 0; i<500; i++);
      003200 7E 00            [12]  924 	mov	r6,#0x00
      003202 7F 00            [12]  925 	mov	r7,#0x00
      003204                        926 00103$:
      003204 C3               [12]  927 	clr	c
      003205 EE               [12]  928 	mov	a,r6
      003206 94 F4            [12]  929 	subb	a,#0xf4
      003208 EF               [12]  930 	mov	a,r7
      003209 64 80            [12]  931 	xrl	a,#0x80
      00320B 94 81            [12]  932 	subb	a,#0x81
      00320D 50 07            [24]  933 	jnc	00105$
      00320F 0E               [12]  934 	inc	r6
      003210 BE 00 F1         [24]  935 	cjne	r6,#0x00,00103$
      003213 0F               [12]  936 	inc	r7
      003214 80 EE            [24]  937 	sjmp	00103$
      003216                        938 00105$:
                                    939 ;	io_expander.c:195: }
      003216 22               [24]  940 	ret
                                    941 	.area CSEG    (CODE)
                                    942 	.area CONST   (CODE)
                                    943 	.area CONST   (CODE)
      003CC7                        944 ___str_0:
      003CC7 49 4F 20 45 58 50 41   945 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      003CDA 0A                     946 	.db 0x0a
      003CDB 0D                     947 	.db 0x0d
      003CDC 00                     948 	.db 0x00
                                    949 	.area CSEG    (CODE)
                                    950 	.area CONST   (CODE)
      003CDD                        951 ___str_1:
      003CDD 41 43 4B 20 44 49 44   952 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003CEF 0A                     953 	.db 0x0a
      003CF0 0D                     954 	.db 0x0d
      003CF1 00                     955 	.db 0x00
                                    956 	.area CSEG    (CODE)
                                    957 	.area XINIT   (CODE)
                                    958 	.area CABS    (ABS,CODE)
