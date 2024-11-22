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
                                     12 	.globl _printf
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _putchar
                                    210 	.globl _getchar
                                    211 	.globl _delay_ms
                                    212 	.globl _spi_init
                                    213 	.globl _spi_write
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
      000400                        460 _putchar_charToSend_65536_18:
      000400                        461 	.ds 2
      000402                        462 _delay_ms_ms_65536_22:
      000402                        463 	.ds 2
      000404                        464 _spi_write_data_65536_31:
      000404                        465 	.ds 2
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
                                    520 ;charToSend                Allocated with name '_putchar_charToSend_65536_18'
                                    521 ;------------------------------------------------------------
                                    522 ;	spi_bit_banging.c:54: int putchar(int charToSend) {
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
      002066 90 04 00         [24]  537 	mov	dptr,#_putchar_charToSend_65536_18
      002069 F0               [24]  538 	movx	@dptr,a
      00206A EF               [12]  539 	mov	a,r7
      00206B A3               [24]  540 	inc	dptr
      00206C F0               [24]  541 	movx	@dptr,a
                                    542 ;	spi_bit_banging.c:55: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  543 	mov	dptr,#_putchar_charToSend_65536_18
      002070 E0               [24]  544 	movx	a,@dptr
      002071 FE               [12]  545 	mov	r6,a
      002072 A3               [24]  546 	inc	dptr
      002073 E0               [24]  547 	movx	a,@dptr
      002074 FF               [12]  548 	mov	r7,a
      002075 8E 99            [24]  549 	mov	_SBUF,r6
                                    550 ;	spi_bit_banging.c:56: while (!TI);             /* Wait for transmission completion */
      002077                        551 00101$:
                                    552 ;	spi_bit_banging.c:57: TI = 0;                  /* Clear transmission flag */
                                    553 ;	assignBit
      002077 10 99 02         [24]  554 	jbc	_TI,00114$
      00207A 80 FB            [24]  555 	sjmp	00101$
      00207C                        556 00114$:
                                    557 ;	spi_bit_banging.c:58: return charToSend;
      00207C 8E 82            [24]  558 	mov	dpl,r6
      00207E 8F 83            [24]  559 	mov	dph,r7
                                    560 ;	spi_bit_banging.c:59: }
      002080 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'getchar'
                                    564 ;------------------------------------------------------------
                                    565 ;	spi_bit_banging.c:65: int getchar(void) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function getchar
                                    568 ;	-----------------------------------------
      002081                        569 _getchar:
                                    570 ;	spi_bit_banging.c:66: while (!RI);             /* Wait for reception completion */
      002081                        571 00101$:
                                    572 ;	spi_bit_banging.c:67: RI = 0;                  /* Clear reception flag */
                                    573 ;	assignBit
      002081 10 98 02         [24]  574 	jbc	_RI,00114$
      002084 80 FB            [24]  575 	sjmp	00101$
      002086                        576 00114$:
                                    577 ;	spi_bit_banging.c:68: return SBUF;             /* Return received character */
      002086 AE 99            [24]  578 	mov	r6,_SBUF
      002088 7F 00            [12]  579 	mov	r7,#0x00
      00208A 8E 82            [24]  580 	mov	dpl,r6
      00208C 8F 83            [24]  581 	mov	dph,r7
                                    582 ;	spi_bit_banging.c:69: }
      00208E 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'delay_ms'
                                    586 ;------------------------------------------------------------
                                    587 ;ms                        Allocated with name '_delay_ms_ms_65536_22'
                                    588 ;i                         Allocated with name '_delay_ms_i_65536_23'
                                    589 ;j                         Allocated with name '_delay_ms_j_65536_23'
                                    590 ;------------------------------------------------------------
                                    591 ;	spi_bit_banging.c:76: void delay_ms(unsigned int ms) {
                                    592 ;	-----------------------------------------
                                    593 ;	 function delay_ms
                                    594 ;	-----------------------------------------
      00208F                        595 _delay_ms:
      00208F AF 83            [24]  596 	mov	r7,dph
      002091 E5 82            [12]  597 	mov	a,dpl
      002093 90 04 02         [24]  598 	mov	dptr,#_delay_ms_ms_65536_22
      002096 F0               [24]  599 	movx	@dptr,a
      002097 EF               [12]  600 	mov	a,r7
      002098 A3               [24]  601 	inc	dptr
      002099 F0               [24]  602 	movx	@dptr,a
                                    603 ;	spi_bit_banging.c:78: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  604 	mov	dptr,#_delay_ms_ms_65536_22
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
                                    619 ;	spi_bit_banging.c:79: for (j = 0; j < DELAY_LOOP_COUNT; j++);
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
                                    630 ;	spi_bit_banging.c:78: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  631 	inc	r4
      0020BB BC 00 E8         [24]  632 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  633 	inc	r5
      0020BF 80 E5            [24]  634 	sjmp	00107$
      0020C1                        635 00109$:
                                    636 ;	spi_bit_banging.c:80: }
      0020C1 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'main'
                                    640 ;------------------------------------------------------------
                                    641 ;	spi_bit_banging.c:86: int main(void) {
                                    642 ;	-----------------------------------------
                                    643 ;	 function main
                                    644 ;	-----------------------------------------
      0020C2                        645 _main:
                                    646 ;	spi_bit_banging.c:87: spi_init();
      0020C2 12 21 09         [24]  647 	lcall	_spi_init
                                    648 ;	spi_bit_banging.c:88: printf("SPI BIT BANGING PROGRAM\n\r");
      0020C5 74 0D            [12]  649 	mov	a,#___str_0
      0020C7 C0 E0            [24]  650 	push	acc
      0020C9 74 2C            [12]  651 	mov	a,#(___str_0 >> 8)
      0020CB C0 E0            [24]  652 	push	acc
      0020CD 74 80            [12]  653 	mov	a,#0x80
      0020CF C0 E0            [24]  654 	push	acc
      0020D1 12 21 AB         [24]  655 	lcall	_printf
      0020D4 15 81            [12]  656 	dec	sp
      0020D6 15 81            [12]  657 	dec	sp
      0020D8 15 81            [12]  658 	dec	sp
                                    659 ;	spi_bit_banging.c:90: while(1) {
      0020DA                        660 00102$:
                                    661 ;	spi_bit_banging.c:91: printf("r\n\r");
      0020DA 74 27            [12]  662 	mov	a,#___str_1
      0020DC C0 E0            [24]  663 	push	acc
      0020DE 74 2C            [12]  664 	mov	a,#(___str_1 >> 8)
      0020E0 C0 E0            [24]  665 	push	acc
      0020E2 74 80            [12]  666 	mov	a,#0x80
      0020E4 C0 E0            [24]  667 	push	acc
      0020E6 12 21 AB         [24]  668 	lcall	_printf
      0020E9 15 81            [12]  669 	dec	sp
      0020EB 15 81            [12]  670 	dec	sp
      0020ED 15 81            [12]  671 	dec	sp
                                    672 ;	spi_bit_banging.c:92: spi_write(TEST_DATA);
      0020EF 90 1F F0         [24]  673 	mov	dptr,#0x1ff0
      0020F2 12 21 13         [24]  674 	lcall	_spi_write
                                    675 ;	spi_bit_banging.c:93: delay_ms(DELAY_PERIOD);
      0020F5 90 01 F4         [24]  676 	mov	dptr,#0x01f4
      0020F8 12 20 8F         [24]  677 	lcall	_delay_ms
                                    678 ;	spi_bit_banging.c:94: spi_write(IDLE_DATA);
      0020FB 90 10 00         [24]  679 	mov	dptr,#0x1000
      0020FE 12 21 13         [24]  680 	lcall	_spi_write
                                    681 ;	spi_bit_banging.c:95: delay_ms(DELAY_PERIOD);
      002101 90 01 F4         [24]  682 	mov	dptr,#0x01f4
      002104 12 20 8F         [24]  683 	lcall	_delay_ms
                                    684 ;	spi_bit_banging.c:97: }
      002107 80 D1            [24]  685 	sjmp	00102$
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'spi_init'
                                    688 ;------------------------------------------------------------
                                    689 ;	spi_bit_banging.c:103: void spi_init(void) {
                                    690 ;	-----------------------------------------
                                    691 ;	 function spi_init
                                    692 ;	-----------------------------------------
      002109                        693 _spi_init:
                                    694 ;	spi_bit_banging.c:104: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002109 75 C3 00         [24]  695 	mov	_SPCON,#0x00
                                    696 ;	spi_bit_banging.c:105: SDA = DATA_HIGH;                 /* Set data line high */
                                    697 ;	assignBit
      00210C D2 97            [12]  698 	setb	_P1_7
                                    699 ;	spi_bit_banging.c:106: SCL = CLOCK_LOW;                 /* Set clock line low */
                                    700 ;	assignBit
      00210E C2 96            [12]  701 	clr	_P1_6
                                    702 ;	spi_bit_banging.c:107: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                    703 ;	assignBit
      002110 D2 91            [12]  704 	setb	_P1_1
                                    705 ;	spi_bit_banging.c:108: }
      002112 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'spi_write'
                                    709 ;------------------------------------------------------------
                                    710 ;data                      Allocated with name '_spi_write_data_65536_31'
                                    711 ;i                         Allocated with name '_spi_write_i_65536_32'
                                    712 ;------------------------------------------------------------
                                    713 ;	spi_bit_banging.c:115: int spi_write(uint16_t data) {
                                    714 ;	-----------------------------------------
                                    715 ;	 function spi_write
                                    716 ;	-----------------------------------------
      002113                        717 _spi_write:
      002113 AF 83            [24]  718 	mov	r7,dph
      002115 E5 82            [12]  719 	mov	a,dpl
      002117 90 04 04         [24]  720 	mov	dptr,#_spi_write_data_65536_31
      00211A F0               [24]  721 	movx	@dptr,a
      00211B EF               [12]  722 	mov	a,r7
      00211C A3               [24]  723 	inc	dptr
      00211D F0               [24]  724 	movx	@dptr,a
                                    725 ;	spi_bit_banging.c:118: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                    726 ;	assignBit
      00211E C2 91            [12]  727 	clr	_P1_1
                                    728 ;	spi_bit_banging.c:121: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002120 7E 00            [12]  729 	mov	r6,#0x00
      002122 7F 00            [12]  730 	mov	r7,#0x00
      002124                        731 00102$:
                                    732 ;	spi_bit_banging.c:122: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      002124 90 04 04         [24]  733 	mov	dptr,#_spi_write_data_65536_31
      002127 E0               [24]  734 	movx	a,@dptr
      002128 FC               [12]  735 	mov	r4,a
      002129 A3               [24]  736 	inc	dptr
      00212A E0               [24]  737 	movx	a,@dptr
      00212B FD               [12]  738 	mov	r5,a
      00212C 23               [12]  739 	rl	a
      00212D 54 01            [12]  740 	anl	a,#0x01
      00212F 24 FF            [12]  741 	add	a,#0xff
      002131 92 97            [24]  742 	mov	_P1_7,c
                                    743 ;	spi_bit_banging.c:123: SCL = CLOCK_HIGH;            /* Clock high */
                                    744 ;	assignBit
      002133 D2 96            [12]  745 	setb	_P1_6
                                    746 ;	spi_bit_banging.c:124: SCL = CLOCK_LOW;             /* Clock low */
                                    747 ;	assignBit
      002135 C2 96            [12]  748 	clr	_P1_6
                                    749 ;	spi_bit_banging.c:125: data <<= 1;                  /* Shift to next bit */
      002137 EC               [12]  750 	mov	a,r4
      002138 2C               [12]  751 	add	a,r4
      002139 FC               [12]  752 	mov	r4,a
      00213A ED               [12]  753 	mov	a,r5
      00213B 33               [12]  754 	rlc	a
      00213C FD               [12]  755 	mov	r5,a
      00213D 90 04 04         [24]  756 	mov	dptr,#_spi_write_data_65536_31
      002140 EC               [12]  757 	mov	a,r4
      002141 F0               [24]  758 	movx	@dptr,a
      002142 ED               [12]  759 	mov	a,r5
      002143 A3               [24]  760 	inc	dptr
      002144 F0               [24]  761 	movx	@dptr,a
                                    762 ;	spi_bit_banging.c:121: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002145 0E               [12]  763 	inc	r6
      002146 BE 00 01         [24]  764 	cjne	r6,#0x00,00115$
      002149 0F               [12]  765 	inc	r7
      00214A                        766 00115$:
      00214A C3               [12]  767 	clr	c
      00214B EE               [12]  768 	mov	a,r6
      00214C 94 10            [12]  769 	subb	a,#0x10
      00214E EF               [12]  770 	mov	a,r7
      00214F 94 00            [12]  771 	subb	a,#0x00
      002151 40 D1            [24]  772 	jc	00102$
                                    773 ;	spi_bit_banging.c:129: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                    774 ;	assignBit
      002153 D2 91            [12]  775 	setb	_P1_1
                                    776 ;	spi_bit_banging.c:130: SCL = CLOCK_LOW;                 /* Clock low */
                                    777 ;	assignBit
      002155 C2 96            [12]  778 	clr	_P1_6
                                    779 ;	spi_bit_banging.c:131: SDA = DATA_HIGH;                 /* Data high */
                                    780 ;	assignBit
      002157 D2 97            [12]  781 	setb	_P1_7
                                    782 ;	spi_bit_banging.c:133: return 0;
      002159 90 00 00         [24]  783 	mov	dptr,#0x0000
                                    784 ;	spi_bit_banging.c:134: }
      00215C 22               [24]  785 	ret
                                    786 	.area CSEG    (CODE)
                                    787 	.area CONST   (CODE)
                                    788 	.area CONST   (CODE)
      002C0D                        789 ___str_0:
      002C0D 53 50 49 20 42 49 54   790 	.ascii "SPI BIT BANGING PROGRAM"
             20 42 41 4E 47 49 4E
             47 20 50 52 4F 47 52
             41 4D
      002C24 0A                     791 	.db 0x0a
      002C25 0D                     792 	.db 0x0d
      002C26 00                     793 	.db 0x00
                                    794 	.area CSEG    (CODE)
                                    795 	.area CONST   (CODE)
      002C27                        796 ___str_1:
      002C27 72                     797 	.ascii "r"
      002C28 0A                     798 	.db 0x0a
      002C29 0D                     799 	.db 0x0d
      002C2A 00                     800 	.db 0x00
                                    801 	.area CSEG    (CODE)
                                    802 	.area XINIT   (CODE)
                                    803 	.area CABS    (ABS,CODE)
