                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_bit_banging
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay_ms
                                     13 	.globl _getchar
                                     14 	.globl _putchar
                                     15 	.globl _printf
                                     16 	.globl _P5_7
                                     17 	.globl _P5_6
                                     18 	.globl _P5_5
                                     19 	.globl _P5_4
                                     20 	.globl _P5_3
                                     21 	.globl _P5_2
                                     22 	.globl _P5_1
                                     23 	.globl _P5_0
                                     24 	.globl _P4_7
                                     25 	.globl _P4_6
                                     26 	.globl _P4_5
                                     27 	.globl _P4_4
                                     28 	.globl _P4_3
                                     29 	.globl _P4_2
                                     30 	.globl _P4_1
                                     31 	.globl _P4_0
                                     32 	.globl _PX0L
                                     33 	.globl _PT0L
                                     34 	.globl _PX1L
                                     35 	.globl _PT1L
                                     36 	.globl _PSL
                                     37 	.globl _PT2L
                                     38 	.globl _PPCL
                                     39 	.globl _EC
                                     40 	.globl _CCF0
                                     41 	.globl _CCF1
                                     42 	.globl _CCF2
                                     43 	.globl _CCF3
                                     44 	.globl _CCF4
                                     45 	.globl _CR
                                     46 	.globl _CF
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _ET2
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _PS
                                     74 	.globl _PT1
                                     75 	.globl _PX1
                                     76 	.globl _PT0
                                     77 	.globl _PX0
                                     78 	.globl _RD
                                     79 	.globl _WR
                                     80 	.globl _T1
                                     81 	.globl _T0
                                     82 	.globl _INT1
                                     83 	.globl _INT0
                                     84 	.globl _TXD
                                     85 	.globl _RXD
                                     86 	.globl _P3_7
                                     87 	.globl _P3_6
                                     88 	.globl _P3_5
                                     89 	.globl _P3_4
                                     90 	.globl _P3_3
                                     91 	.globl _P3_2
                                     92 	.globl _P3_1
                                     93 	.globl _P3_0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _EECON
                                    141 	.globl _KBF
                                    142 	.globl _KBE
                                    143 	.globl _KBLS
                                    144 	.globl _BRL
                                    145 	.globl _BDRCON
                                    146 	.globl _T2MOD
                                    147 	.globl _SPDAT
                                    148 	.globl _SPSTA
                                    149 	.globl _SPCON
                                    150 	.globl _SADEN
                                    151 	.globl _SADDR
                                    152 	.globl _WDTPRG
                                    153 	.globl _WDTRST
                                    154 	.globl _P5
                                    155 	.globl _P4
                                    156 	.globl _IPH1
                                    157 	.globl _IPL1
                                    158 	.globl _IPH0
                                    159 	.globl _IPL0
                                    160 	.globl _IEN1
                                    161 	.globl _IEN0
                                    162 	.globl _CMOD
                                    163 	.globl _CL
                                    164 	.globl _CH
                                    165 	.globl _CCON
                                    166 	.globl _CCAPM4
                                    167 	.globl _CCAPM3
                                    168 	.globl _CCAPM2
                                    169 	.globl _CCAPM1
                                    170 	.globl _CCAPM0
                                    171 	.globl _CCAP4L
                                    172 	.globl _CCAP3L
                                    173 	.globl _CCAP2L
                                    174 	.globl _CCAP1L
                                    175 	.globl _CCAP0L
                                    176 	.globl _CCAP4H
                                    177 	.globl _CCAP3H
                                    178 	.globl _CCAP2H
                                    179 	.globl _CCAP1H
                                    180 	.globl _CCAP0H
                                    181 	.globl _CKCON1
                                    182 	.globl _CKCON0
                                    183 	.globl _CKRL
                                    184 	.globl _AUXR1
                                    185 	.globl _AUXR
                                    186 	.globl _TH2
                                    187 	.globl _TL2
                                    188 	.globl _RCAP2H
                                    189 	.globl _RCAP2L
                                    190 	.globl _T2CON
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _PSW
                                    194 	.globl _IP
                                    195 	.globl _P3
                                    196 	.globl _IE
                                    197 	.globl _P2
                                    198 	.globl _SBUF
                                    199 	.globl _SCON
                                    200 	.globl _P1
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 	.globl _spi_write
                                    213 	.globl _i2c_delay
                                    214 ;--------------------------------------------------------
                                    215 ; special function registers
                                    216 ;--------------------------------------------------------
                                    217 	.area RSEG    (ABS,DATA)
      000000                        218 	.org 0x0000
                           000080   219 _P0	=	0x0080
                           000081   220 _SP	=	0x0081
                           000082   221 _DPL	=	0x0082
                           000083   222 _DPH	=	0x0083
                           000087   223 _PCON	=	0x0087
                           000088   224 _TCON	=	0x0088
                           000089   225 _TMOD	=	0x0089
                           00008A   226 _TL0	=	0x008a
                           00008B   227 _TL1	=	0x008b
                           00008C   228 _TH0	=	0x008c
                           00008D   229 _TH1	=	0x008d
                           000090   230 _P1	=	0x0090
                           000098   231 _SCON	=	0x0098
                           000099   232 _SBUF	=	0x0099
                           0000A0   233 _P2	=	0x00a0
                           0000A8   234 _IE	=	0x00a8
                           0000B0   235 _P3	=	0x00b0
                           0000B8   236 _IP	=	0x00b8
                           0000D0   237 _PSW	=	0x00d0
                           0000E0   238 _ACC	=	0x00e0
                           0000F0   239 _B	=	0x00f0
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                                    291 ;--------------------------------------------------------
                                    292 ; special function bits
                                    293 ;--------------------------------------------------------
                                    294 	.area RSEG    (ABS,DATA)
      000000                        295 	.org 0x0000
                           000080   296 _P0_0	=	0x0080
                           000081   297 _P0_1	=	0x0081
                           000082   298 _P0_2	=	0x0082
                           000083   299 _P0_3	=	0x0083
                           000084   300 _P0_4	=	0x0084
                           000085   301 _P0_5	=	0x0085
                           000086   302 _P0_6	=	0x0086
                           000087   303 _P0_7	=	0x0087
                           000088   304 _IT0	=	0x0088
                           000089   305 _IE0	=	0x0089
                           00008A   306 _IT1	=	0x008a
                           00008B   307 _IE1	=	0x008b
                           00008C   308 _TR0	=	0x008c
                           00008D   309 _TF0	=	0x008d
                           00008E   310 _TR1	=	0x008e
                           00008F   311 _TF1	=	0x008f
                           000090   312 _P1_0	=	0x0090
                           000091   313 _P1_1	=	0x0091
                           000092   314 _P1_2	=	0x0092
                           000093   315 _P1_3	=	0x0093
                           000094   316 _P1_4	=	0x0094
                           000095   317 _P1_5	=	0x0095
                           000096   318 _P1_6	=	0x0096
                           000097   319 _P1_7	=	0x0097
                           000098   320 _RI	=	0x0098
                           000099   321 _TI	=	0x0099
                           00009A   322 _RB8	=	0x009a
                           00009B   323 _TB8	=	0x009b
                           00009C   324 _REN	=	0x009c
                           00009D   325 _SM2	=	0x009d
                           00009E   326 _SM1	=	0x009e
                           00009F   327 _SM0	=	0x009f
                           0000A0   328 _P2_0	=	0x00a0
                           0000A1   329 _P2_1	=	0x00a1
                           0000A2   330 _P2_2	=	0x00a2
                           0000A3   331 _P2_3	=	0x00a3
                           0000A4   332 _P2_4	=	0x00a4
                           0000A5   333 _P2_5	=	0x00a5
                           0000A6   334 _P2_6	=	0x00a6
                           0000A7   335 _P2_7	=	0x00a7
                           0000A8   336 _EX0	=	0x00a8
                           0000A9   337 _ET0	=	0x00a9
                           0000AA   338 _EX1	=	0x00aa
                           0000AB   339 _ET1	=	0x00ab
                           0000AC   340 _ES	=	0x00ac
                           0000AF   341 _EA	=	0x00af
                           0000B0   342 _P3_0	=	0x00b0
                           0000B1   343 _P3_1	=	0x00b1
                           0000B2   344 _P3_2	=	0x00b2
                           0000B3   345 _P3_3	=	0x00b3
                           0000B4   346 _P3_4	=	0x00b4
                           0000B5   347 _P3_5	=	0x00b5
                           0000B6   348 _P3_6	=	0x00b6
                           0000B7   349 _P3_7	=	0x00b7
                           0000B0   350 _RXD	=	0x00b0
                           0000B1   351 _TXD	=	0x00b1
                           0000B2   352 _INT0	=	0x00b2
                           0000B3   353 _INT1	=	0x00b3
                           0000B4   354 _T0	=	0x00b4
                           0000B5   355 _T1	=	0x00b5
                           0000B6   356 _WR	=	0x00b6
                           0000B7   357 _RD	=	0x00b7
                           0000B8   358 _PX0	=	0x00b8
                           0000B9   359 _PT0	=	0x00b9
                           0000BA   360 _PX1	=	0x00ba
                           0000BB   361 _PT1	=	0x00bb
                           0000BC   362 _PS	=	0x00bc
                           0000D0   363 _P	=	0x00d0
                           0000D1   364 _F1	=	0x00d1
                           0000D2   365 _OV	=	0x00d2
                           0000D3   366 _RS0	=	0x00d3
                           0000D4   367 _RS1	=	0x00d4
                           0000D5   368 _F0	=	0x00d5
                           0000D6   369 _AC	=	0x00d6
                           0000D7   370 _CY	=	0x00d7
                           0000AD   371 _ET2	=	0x00ad
                           0000BD   372 _PT2	=	0x00bd
                           0000C8   373 _T2CON_0	=	0x00c8
                           0000C9   374 _T2CON_1	=	0x00c9
                           0000CA   375 _T2CON_2	=	0x00ca
                           0000CB   376 _T2CON_3	=	0x00cb
                           0000CC   377 _T2CON_4	=	0x00cc
                           0000CD   378 _T2CON_5	=	0x00cd
                           0000CE   379 _T2CON_6	=	0x00ce
                           0000CF   380 _T2CON_7	=	0x00cf
                           0000C8   381 _CP_RL2	=	0x00c8
                           0000C9   382 _C_T2	=	0x00c9
                           0000CA   383 _TR2	=	0x00ca
                           0000CB   384 _EXEN2	=	0x00cb
                           0000CC   385 _TCLK	=	0x00cc
                           0000CD   386 _RCLK	=	0x00cd
                           0000CE   387 _EXF2	=	0x00ce
                           0000CF   388 _TF2	=	0x00cf
                           0000DF   389 _CF	=	0x00df
                           0000DE   390 _CR	=	0x00de
                           0000DC   391 _CCF4	=	0x00dc
                           0000DB   392 _CCF3	=	0x00db
                           0000DA   393 _CCF2	=	0x00da
                           0000D9   394 _CCF1	=	0x00d9
                           0000D8   395 _CCF0	=	0x00d8
                           0000AE   396 _EC	=	0x00ae
                           0000BE   397 _PPCL	=	0x00be
                           0000BD   398 _PT2L	=	0x00bd
                           0000BC   399 _PSL	=	0x00bc
                           0000BB   400 _PT1L	=	0x00bb
                           0000BA   401 _PX1L	=	0x00ba
                           0000B9   402 _PT0L	=	0x00b9
                           0000B8   403 _PX0L	=	0x00b8
                           0000C0   404 _P4_0	=	0x00c0
                           0000C1   405 _P4_1	=	0x00c1
                           0000C2   406 _P4_2	=	0x00c2
                           0000C3   407 _P4_3	=	0x00c3
                           0000C4   408 _P4_4	=	0x00c4
                           0000C5   409 _P4_5	=	0x00c5
                           0000C6   410 _P4_6	=	0x00c6
                           0000C7   411 _P4_7	=	0x00c7
                           0000E8   412 _P5_0	=	0x00e8
                           0000E9   413 _P5_1	=	0x00e9
                           0000EA   414 _P5_2	=	0x00ea
                           0000EB   415 _P5_3	=	0x00eb
                           0000EC   416 _P5_4	=	0x00ec
                           0000ED   417 _P5_5	=	0x00ed
                           0000EE   418 _P5_6	=	0x00ee
                           0000EF   419 _P5_7	=	0x00ef
                                    420 ;--------------------------------------------------------
                                    421 ; overlayable register banks
                                    422 ;--------------------------------------------------------
                                    423 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        424 	.ds 8
                                    425 ;--------------------------------------------------------
                                    426 ; internal ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area DSEG    (DATA)
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable items in internal ram 
                                    431 ;--------------------------------------------------------
                                    432 ;--------------------------------------------------------
                                    433 ; Stack segment in internal ram 
                                    434 ;--------------------------------------------------------
                                    435 	.area	SSEG
      000014                        436 __start__stack:
      000014                        437 	.ds	1
                                    438 
                                    439 ;--------------------------------------------------------
                                    440 ; indirectly addressable internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area ISEG    (DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; absolute internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area IABS    (ABS,DATA)
                                    447 	.area IABS    (ABS,DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; bit data
                                    450 ;--------------------------------------------------------
                                    451 	.area BSEG    (BIT)
                                    452 ;--------------------------------------------------------
                                    453 ; paged external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area PSEG    (PAG,XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XSEG    (XDATA)
      000400                        460 _putchar_charToSend_65536_14:
      000400                        461 	.ds 2
      000402                        462 _delay_ms_ms_65536_18:
      000402                        463 	.ds 2
      000404                        464 _spi_write_data_65536_23:
      000404                        465 	.ds 1
                                    466 ;--------------------------------------------------------
                                    467 ; absolute external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area XABS    (ABS,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external initialized ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XISEG   (XDATA)
                                    474 	.area HOME    (CODE)
                                    475 	.area GSINIT0 (CODE)
                                    476 	.area GSINIT1 (CODE)
                                    477 	.area GSINIT2 (CODE)
                                    478 	.area GSINIT3 (CODE)
                                    479 	.area GSINIT4 (CODE)
                                    480 	.area GSINIT5 (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 	.area GSFINAL (CODE)
                                    483 	.area CSEG    (CODE)
                                    484 ;--------------------------------------------------------
                                    485 ; interrupt vector 
                                    486 ;--------------------------------------------------------
                                    487 	.area HOME    (CODE)
      002000                        488 __interrupt_vect:
      002000 02 20 06         [24]  489 	ljmp	__sdcc_gsinit_startup
                                    490 ;--------------------------------------------------------
                                    491 ; global & static initialisations
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area GSINIT  (CODE)
                                    497 	.globl __sdcc_gsinit_startup
                                    498 	.globl __sdcc_program_startup
                                    499 	.globl __start__stack
                                    500 	.globl __mcs51_genXINIT
                                    501 	.globl __mcs51_genXRAMCLEAR
                                    502 	.globl __mcs51_genRAMCLEAR
                                    503 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  504 	ljmp	__sdcc_program_startup
                                    505 ;--------------------------------------------------------
                                    506 ; Home
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area HOME    (CODE)
      002003                        510 __sdcc_program_startup:
      002003 02 20 C2         [24]  511 	ljmp	_main
                                    512 ;	return from main will return to caller
                                    513 ;--------------------------------------------------------
                                    514 ; code
                                    515 ;--------------------------------------------------------
                                    516 	.area CSEG    (CODE)
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'putchar'
                                    519 ;------------------------------------------------------------
                                    520 ;charToSend                Allocated with name '_putchar_charToSend_65536_14'
                                    521 ;------------------------------------------------------------
                                    522 ;	spi_bit_banging.c:20: int putchar(int charToSend) {
                                    523 ;	-----------------------------------------
                                    524 ;	 function putchar
                                    525 ;	-----------------------------------------
      002062                        526 _putchar:
                           000007   527 	ar7 = 0x07
                           000006   528 	ar6 = 0x06
                           000005   529 	ar5 = 0x05
                           000004   530 	ar4 = 0x04
                           000003   531 	ar3 = 0x03
                           000002   532 	ar2 = 0x02
                           000001   533 	ar1 = 0x01
                           000000   534 	ar0 = 0x00
      002062 AF 83            [24]  535 	mov	r7,dph
      002064 E5 82            [12]  536 	mov	a,dpl
      002066 90 04 00         [24]  537 	mov	dptr,#_putchar_charToSend_65536_14
      002069 F0               [24]  538 	movx	@dptr,a
      00206A EF               [12]  539 	mov	a,r7
      00206B A3               [24]  540 	inc	dptr
      00206C F0               [24]  541 	movx	@dptr,a
                                    542 ;	spi_bit_banging.c:21: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  543 	mov	dptr,#_putchar_charToSend_65536_14
      002070 E0               [24]  544 	movx	a,@dptr
      002071 FE               [12]  545 	mov	r6,a
      002072 A3               [24]  546 	inc	dptr
      002073 E0               [24]  547 	movx	a,@dptr
      002074 FF               [12]  548 	mov	r7,a
      002075 8E 99            [24]  549 	mov	_SBUF,r6
                                    550 ;	spi_bit_banging.c:22: while (!TI);             /* Wait for transmission completion */
      002077                        551 00101$:
                                    552 ;	spi_bit_banging.c:23: TI = 0;                  /* Clear transmission flag */
                                    553 ;	assignBit
      002077 10 99 02         [24]  554 	jbc	_TI,00114$
      00207A 80 FB            [24]  555 	sjmp	00101$
      00207C                        556 00114$:
                                    557 ;	spi_bit_banging.c:24: return charToSend;
      00207C 8E 82            [24]  558 	mov	dpl,r6
      00207E 8F 83            [24]  559 	mov	dph,r7
                                    560 ;	spi_bit_banging.c:25: }
      002080 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'getchar'
                                    564 ;------------------------------------------------------------
                                    565 ;	spi_bit_banging.c:31: int getchar(void) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function getchar
                                    568 ;	-----------------------------------------
      002081                        569 _getchar:
                                    570 ;	spi_bit_banging.c:32: while (!RI);             /* Wait for reception completion */
      002081                        571 00101$:
                                    572 ;	spi_bit_banging.c:33: RI = 0;                  /* Clear reception flag */
                                    573 ;	assignBit
      002081 10 98 02         [24]  574 	jbc	_RI,00114$
      002084 80 FB            [24]  575 	sjmp	00101$
      002086                        576 00114$:
                                    577 ;	spi_bit_banging.c:34: return SBUF;             /* Return received character */
      002086 AE 99            [24]  578 	mov	r6,_SBUF
      002088 7F 00            [12]  579 	mov	r7,#0x00
      00208A 8E 82            [24]  580 	mov	dpl,r6
      00208C 8F 83            [24]  581 	mov	dph,r7
                                    582 ;	spi_bit_banging.c:35: }
      00208E 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'delay_ms'
                                    586 ;------------------------------------------------------------
                                    587 ;ms                        Allocated with name '_delay_ms_ms_65536_18'
                                    588 ;i                         Allocated with name '_delay_ms_i_65536_19'
                                    589 ;j                         Allocated with name '_delay_ms_j_65536_19'
                                    590 ;------------------------------------------------------------
                                    591 ;	spi_bit_banging.c:37: void delay_ms(unsigned int ms) {
                                    592 ;	-----------------------------------------
                                    593 ;	 function delay_ms
                                    594 ;	-----------------------------------------
      00208F                        595 _delay_ms:
      00208F AF 83            [24]  596 	mov	r7,dph
      002091 E5 82            [12]  597 	mov	a,dpl
      002093 90 04 02         [24]  598 	mov	dptr,#_delay_ms_ms_65536_18
      002096 F0               [24]  599 	movx	@dptr,a
      002097 EF               [12]  600 	mov	a,r7
      002098 A3               [24]  601 	inc	dptr
      002099 F0               [24]  602 	movx	@dptr,a
                                    603 ;	spi_bit_banging.c:39: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  604 	mov	dptr,#_delay_ms_ms_65536_18
      00209D E0               [24]  605 	movx	a,@dptr
      00209E FE               [12]  606 	mov	r6,a
      00209F A3               [24]  607 	inc	dptr
      0020A0 E0               [24]  608 	movx	a,@dptr
      0020A1 FF               [12]  609 	mov	r7,a
      0020A2 7C 00            [12]  610 	mov	r4,#0x00
      0020A4 7D 00            [12]  611 	mov	r5,#0x00
      0020A6                        612 00107$:
      0020A6 C3               [12]  613 	clr	c
      0020A7 EC               [12]  614 	mov	a,r4
      0020A8 9E               [12]  615 	subb	a,r6
      0020A9 ED               [12]  616 	mov	a,r5
      0020AA 9F               [12]  617 	subb	a,r7
      0020AB 50 14            [24]  618 	jnc	00109$
                                    619 ;	spi_bit_banging.c:40: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  620 	mov	r2,#0x7b
      0020AF 7B 00            [12]  621 	mov	r3,#0x00
      0020B1                        622 00105$:
      0020B1 1A               [12]  623 	dec	r2
      0020B2 BA FF 01         [24]  624 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  625 	dec	r3
      0020B6                        626 00130$:
      0020B6 EA               [12]  627 	mov	a,r2
      0020B7 4B               [12]  628 	orl	a,r3
      0020B8 70 F7            [24]  629 	jnz	00105$
                                    630 ;	spi_bit_banging.c:39: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  631 	inc	r4
      0020BB BC 00 E8         [24]  632 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  633 	inc	r5
      0020BF 80 E5            [24]  634 	sjmp	00107$
      0020C1                        635 00109$:
                                    636 ;	spi_bit_banging.c:41: }
      0020C1 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'main'
                                    640 ;------------------------------------------------------------
                                    641 ;	spi_bit_banging.c:43: int main()
                                    642 ;	-----------------------------------------
                                    643 ;	 function main
                                    644 ;	-----------------------------------------
      0020C2                        645 _main:
                                    646 ;	spi_bit_banging.c:46: SS = 1;
                                    647 ;	assignBit
      0020C2 D2 91            [12]  648 	setb	_P1_1
                                    649 ;	spi_bit_banging.c:47: printf("  SPI BIT BANGING PROGRAM\n\r");
      0020C4 74 0C            [12]  650 	mov	a,#___str_0
      0020C6 C0 E0            [24]  651 	push	acc
      0020C8 74 2C            [12]  652 	mov	a,#(___str_0 >> 8)
      0020CA C0 E0            [24]  653 	push	acc
      0020CC 74 80            [12]  654 	mov	a,#0x80
      0020CE C0 E0            [24]  655 	push	acc
      0020D0 12 21 AA         [24]  656 	lcall	_printf
      0020D3 15 81            [12]  657 	dec	sp
      0020D5 15 81            [12]  658 	dec	sp
      0020D7 15 81            [12]  659 	dec	sp
                                    660 ;	spi_bit_banging.c:48: spi_write(0x1F);
      0020D9 75 82 1F         [24]  661 	mov	dpl,#0x1f
      0020DC 12 21 10         [24]  662 	lcall	_spi_write
                                    663 ;	spi_bit_banging.c:49: spi_write(0x18);
      0020DF 75 82 18         [24]  664 	mov	dpl,#0x18
      0020E2 12 21 10         [24]  665 	lcall	_spi_write
                                    666 ;	spi_bit_banging.c:50: delay_ms(5);
      0020E5 90 00 05         [24]  667 	mov	dptr,#0x0005
      0020E8 12 20 8F         [24]  668 	lcall	_delay_ms
                                    669 ;	spi_bit_banging.c:51: spi_write(0x00);
      0020EB 75 82 00         [24]  670 	mov	dpl,#0x00
      0020EE 12 21 10         [24]  671 	lcall	_spi_write
                                    672 ;	spi_bit_banging.c:52: delay_ms(5);
      0020F1 90 00 05         [24]  673 	mov	dptr,#0x0005
      0020F4 12 20 8F         [24]  674 	lcall	_delay_ms
                                    675 ;	spi_bit_banging.c:53: printf("  ITS DONE\n\r");
      0020F7 74 28            [12]  676 	mov	a,#___str_1
      0020F9 C0 E0            [24]  677 	push	acc
      0020FB 74 2C            [12]  678 	mov	a,#(___str_1 >> 8)
      0020FD C0 E0            [24]  679 	push	acc
      0020FF 74 80            [12]  680 	mov	a,#0x80
      002101 C0 E0            [24]  681 	push	acc
      002103 12 21 AA         [24]  682 	lcall	_printf
      002106 15 81            [12]  683 	dec	sp
      002108 15 81            [12]  684 	dec	sp
      00210A 15 81            [12]  685 	dec	sp
                                    686 ;	spi_bit_banging.c:54: return 0;
      00210C 90 00 00         [24]  687 	mov	dptr,#0x0000
                                    688 ;	spi_bit_banging.c:56: }
      00210F 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'spi_write'
                                    692 ;------------------------------------------------------------
                                    693 ;data                      Allocated with name '_spi_write_data_65536_23'
                                    694 ;i                         Allocated with name '_spi_write_i_65537_25'
                                    695 ;------------------------------------------------------------
                                    696 ;	spi_bit_banging.c:58: int spi_write(uint8_t data)
                                    697 ;	-----------------------------------------
                                    698 ;	 function spi_write
                                    699 ;	-----------------------------------------
      002110                        700 _spi_write:
      002110 E5 82            [12]  701 	mov	a,dpl
      002112 90 04 04         [24]  702 	mov	dptr,#_spi_write_data_65536_23
      002115 F0               [24]  703 	movx	@dptr,a
                                    704 ;	spi_bit_banging.c:61: SS = 0;
                                    705 ;	assignBit
      002116 C2 91            [12]  706 	clr	_P1_1
                                    707 ;	spi_bit_banging.c:63: for(i=0;i<=7;i++)
      002118 7E 00            [12]  708 	mov	r6,#0x00
      00211A 7F 00            [12]  709 	mov	r7,#0x00
      00211C                        710 00102$:
                                    711 ;	spi_bit_banging.c:65: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00211C 90 04 04         [24]  712 	mov	dptr,#_spi_write_data_65536_23
      00211F E0               [24]  713 	movx	a,@dptr
      002120 FD               [12]  714 	mov	r5,a
      002121 23               [12]  715 	rl	a
      002122 54 01            [12]  716 	anl	a,#0x01
      002124 24 FF            [12]  717 	add	a,#0xff
      002126 92 97            [24]  718 	mov	_P1_7,c
                                    719 ;	spi_bit_banging.c:66: SCL=1;
                                    720 ;	assignBit
      002128 D2 96            [12]  721 	setb	_P1_6
                                    722 ;	spi_bit_banging.c:68: SCL=0;
                                    723 ;	assignBit
      00212A C2 96            [12]  724 	clr	_P1_6
                                    725 ;	spi_bit_banging.c:70: data = data << 1;
      00212C ED               [12]  726 	mov	a,r5
      00212D 2D               [12]  727 	add	a,r5
      00212E 90 04 04         [24]  728 	mov	dptr,#_spi_write_data_65536_23
      002131 F0               [24]  729 	movx	@dptr,a
                                    730 ;	spi_bit_banging.c:63: for(i=0;i<=7;i++)
      002132 0E               [12]  731 	inc	r6
      002133 BE 00 01         [24]  732 	cjne	r6,#0x00,00115$
      002136 0F               [12]  733 	inc	r7
      002137                        734 00115$:
      002137 C3               [12]  735 	clr	c
      002138 74 07            [12]  736 	mov	a,#0x07
      00213A 9E               [12]  737 	subb	a,r6
      00213B E4               [12]  738 	clr	a
      00213C 9F               [12]  739 	subb	a,r7
      00213D 50 DD            [24]  740 	jnc	00102$
                                    741 ;	spi_bit_banging.c:72: SS = 1;
                                    742 ;	assignBit
      00213F D2 91            [12]  743 	setb	_P1_1
                                    744 ;	spi_bit_banging.c:74: return 1;           // Success
      002141 90 00 01         [24]  745 	mov	dptr,#0x0001
                                    746 ;	spi_bit_banging.c:76: }
      002144 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'i2c_delay'
                                    750 ;------------------------------------------------------------
                                    751 ;i                         Allocated with name '_i2c_delay_i_131072_29'
                                    752 ;------------------------------------------------------------
                                    753 ;	spi_bit_banging.c:78: void i2c_delay() 
                                    754 ;	-----------------------------------------
                                    755 ;	 function i2c_delay
                                    756 ;	-----------------------------------------
      002145                        757 _i2c_delay:
                                    758 ;	spi_bit_banging.c:80: for(int i = 0; i<500; i++);
      002145 7E 00            [12]  759 	mov	r6,#0x00
      002147 7F 00            [12]  760 	mov	r7,#0x00
      002149                        761 00103$:
      002149 C3               [12]  762 	clr	c
      00214A EE               [12]  763 	mov	a,r6
      00214B 94 F4            [12]  764 	subb	a,#0xf4
      00214D EF               [12]  765 	mov	a,r7
      00214E 64 80            [12]  766 	xrl	a,#0x80
      002150 94 81            [12]  767 	subb	a,#0x81
      002152 50 07            [24]  768 	jnc	00105$
      002154 0E               [12]  769 	inc	r6
      002155 BE 00 F1         [24]  770 	cjne	r6,#0x00,00103$
      002158 0F               [12]  771 	inc	r7
      002159 80 EE            [24]  772 	sjmp	00103$
      00215B                        773 00105$:
                                    774 ;	spi_bit_banging.c:81: }
      00215B 22               [24]  775 	ret
                                    776 	.area CSEG    (CODE)
                                    777 	.area CONST   (CODE)
                                    778 	.area CONST   (CODE)
      002C0C                        779 ___str_0:
      002C0C 20 20 53 50 49 20 42   780 	.ascii "  SPI BIT BANGING PROGRAM"
             49 54 20 42 41 4E 47
             49 4E 47 20 50 52 4F
             47 52 41 4D
      002C25 0A                     781 	.db 0x0a
      002C26 0D                     782 	.db 0x0d
      002C27 00                     783 	.db 0x00
                                    784 	.area CSEG    (CODE)
                                    785 	.area CONST   (CODE)
      002C28                        786 ___str_1:
      002C28 20 20 49 54 53 20 44   787 	.ascii "  ITS DONE"
             4F 4E 45
      002C32 0A                     788 	.db 0x0a
      002C33 0D                     789 	.db 0x0d
      002C34 00                     790 	.db 0x00
                                    791 	.area CSEG    (CODE)
                                    792 	.area XINIT   (CODE)
                                    793 	.area CABS    (ABS,CODE)
