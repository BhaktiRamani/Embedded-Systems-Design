                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_dac
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dac_values
                                     12 	.globl _main
                                     13 	.globl _display_menu
                                     14 	.globl _delay_ms
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _printf
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _transmission_complete
                                    215 	.globl _ms_flag
                                    216 	.globl _bit_bang_spi
                                    217 	.globl _take_data
                                    218 	.globl _mannual_spi
                                    219 	.globl _spi_init
                                    220 	.globl _bit_bang_spi_init
                                    221 	.globl _bit_bang_spi_write
                                    222 	.globl _spi_transmission_start
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           000080   228 _P0	=	0x0080
                           000081   229 _SP	=	0x0081
                           000082   230 _DPL	=	0x0082
                           000083   231 _DPH	=	0x0083
                           000087   232 _PCON	=	0x0087
                           000088   233 _TCON	=	0x0088
                           000089   234 _TMOD	=	0x0089
                           00008A   235 _TL0	=	0x008a
                           00008B   236 _TL1	=	0x008b
                           00008C   237 _TH0	=	0x008c
                           00008D   238 _TH1	=	0x008d
                           000090   239 _P1	=	0x0090
                           000098   240 _SCON	=	0x0098
                           000099   241 _SBUF	=	0x0099
                           0000A0   242 _P2	=	0x00a0
                           0000A8   243 _IE	=	0x00a8
                           0000B0   244 _P3	=	0x00b0
                           0000B8   245 _IP	=	0x00b8
                           0000D0   246 _PSW	=	0x00d0
                           0000E0   247 _ACC	=	0x00e0
                           0000F0   248 _B	=	0x00f0
                           0000C8   249 _T2CON	=	0x00c8
                           0000CA   250 _RCAP2L	=	0x00ca
                           0000CB   251 _RCAP2H	=	0x00cb
                           0000CC   252 _TL2	=	0x00cc
                           0000CD   253 _TH2	=	0x00cd
                           00008E   254 _AUXR	=	0x008e
                           0000A2   255 _AUXR1	=	0x00a2
                           000097   256 _CKRL	=	0x0097
                           00008F   257 _CKCON0	=	0x008f
                           0000AF   258 _CKCON1	=	0x00af
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 _CCAP1H	=	0x00fb
                           0000FC   261 _CCAP2H	=	0x00fc
                           0000FD   262 _CCAP3H	=	0x00fd
                           0000FE   263 _CCAP4H	=	0x00fe
                           0000EA   264 _CCAP0L	=	0x00ea
                           0000EB   265 _CCAP1L	=	0x00eb
                           0000EC   266 _CCAP2L	=	0x00ec
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 _CCAP4L	=	0x00ee
                           0000DA   269 _CCAPM0	=	0x00da
                           0000DB   270 _CCAPM1	=	0x00db
                           0000DC   271 _CCAPM2	=	0x00dc
                           0000DD   272 _CCAPM3	=	0x00dd
                           0000DE   273 _CCAPM4	=	0x00de
                           0000D8   274 _CCON	=	0x00d8
                           0000F9   275 _CH	=	0x00f9
                           0000E9   276 _CL	=	0x00e9
                           0000D9   277 _CMOD	=	0x00d9
                           0000A8   278 _IEN0	=	0x00a8
                           0000B1   279 _IEN1	=	0x00b1
                           0000B8   280 _IPL0	=	0x00b8
                           0000B7   281 _IPH0	=	0x00b7
                           0000B2   282 _IPL1	=	0x00b2
                           0000B3   283 _IPH1	=	0x00b3
                           0000C0   284 _P4	=	0x00c0
                           0000E8   285 _P5	=	0x00e8
                           0000A6   286 _WDTRST	=	0x00a6
                           0000A7   287 _WDTPRG	=	0x00a7
                           0000A9   288 _SADDR	=	0x00a9
                           0000B9   289 _SADEN	=	0x00b9
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C9   293 _T2MOD	=	0x00c9
                           00009B   294 _BDRCON	=	0x009b
                           00009A   295 _BRL	=	0x009a
                           00009C   296 _KBLS	=	0x009c
                           00009D   297 _KBE	=	0x009d
                           00009E   298 _KBF	=	0x009e
                           0000D2   299 _EECON	=	0x00d2
                                    300 ;--------------------------------------------------------
                                    301 ; special function bits
                                    302 ;--------------------------------------------------------
                                    303 	.area RSEG    (ABS,DATA)
      000000                        304 	.org 0x0000
                           000080   305 _P0_0	=	0x0080
                           000081   306 _P0_1	=	0x0081
                           000082   307 _P0_2	=	0x0082
                           000083   308 _P0_3	=	0x0083
                           000084   309 _P0_4	=	0x0084
                           000085   310 _P0_5	=	0x0085
                           000086   311 _P0_6	=	0x0086
                           000087   312 _P0_7	=	0x0087
                           000088   313 _IT0	=	0x0088
                           000089   314 _IE0	=	0x0089
                           00008A   315 _IT1	=	0x008a
                           00008B   316 _IE1	=	0x008b
                           00008C   317 _TR0	=	0x008c
                           00008D   318 _TF0	=	0x008d
                           00008E   319 _TR1	=	0x008e
                           00008F   320 _TF1	=	0x008f
                           000090   321 _P1_0	=	0x0090
                           000091   322 _P1_1	=	0x0091
                           000092   323 _P1_2	=	0x0092
                           000093   324 _P1_3	=	0x0093
                           000094   325 _P1_4	=	0x0094
                           000095   326 _P1_5	=	0x0095
                           000096   327 _P1_6	=	0x0096
                           000097   328 _P1_7	=	0x0097
                           000098   329 _RI	=	0x0098
                           000099   330 _TI	=	0x0099
                           00009A   331 _RB8	=	0x009a
                           00009B   332 _TB8	=	0x009b
                           00009C   333 _REN	=	0x009c
                           00009D   334 _SM2	=	0x009d
                           00009E   335 _SM1	=	0x009e
                           00009F   336 _SM0	=	0x009f
                           0000A0   337 _P2_0	=	0x00a0
                           0000A1   338 _P2_1	=	0x00a1
                           0000A2   339 _P2_2	=	0x00a2
                           0000A3   340 _P2_3	=	0x00a3
                           0000A4   341 _P2_4	=	0x00a4
                           0000A5   342 _P2_5	=	0x00a5
                           0000A6   343 _P2_6	=	0x00a6
                           0000A7   344 _P2_7	=	0x00a7
                           0000A8   345 _EX0	=	0x00a8
                           0000A9   346 _ET0	=	0x00a9
                           0000AA   347 _EX1	=	0x00aa
                           0000AB   348 _ET1	=	0x00ab
                           0000AC   349 _ES	=	0x00ac
                           0000AF   350 _EA	=	0x00af
                           0000B0   351 _P3_0	=	0x00b0
                           0000B1   352 _P3_1	=	0x00b1
                           0000B2   353 _P3_2	=	0x00b2
                           0000B3   354 _P3_3	=	0x00b3
                           0000B4   355 _P3_4	=	0x00b4
                           0000B5   356 _P3_5	=	0x00b5
                           0000B6   357 _P3_6	=	0x00b6
                           0000B7   358 _P3_7	=	0x00b7
                           0000B0   359 _RXD	=	0x00b0
                           0000B1   360 _TXD	=	0x00b1
                           0000B2   361 _INT0	=	0x00b2
                           0000B3   362 _INT1	=	0x00b3
                           0000B4   363 _T0	=	0x00b4
                           0000B5   364 _T1	=	0x00b5
                           0000B6   365 _WR	=	0x00b6
                           0000B7   366 _RD	=	0x00b7
                           0000B8   367 _PX0	=	0x00b8
                           0000B9   368 _PT0	=	0x00b9
                           0000BA   369 _PX1	=	0x00ba
                           0000BB   370 _PT1	=	0x00bb
                           0000BC   371 _PS	=	0x00bc
                           0000D0   372 _P	=	0x00d0
                           0000D1   373 _F1	=	0x00d1
                           0000D2   374 _OV	=	0x00d2
                           0000D3   375 _RS0	=	0x00d3
                           0000D4   376 _RS1	=	0x00d4
                           0000D5   377 _F0	=	0x00d5
                           0000D6   378 _AC	=	0x00d6
                           0000D7   379 _CY	=	0x00d7
                           0000AD   380 _ET2	=	0x00ad
                           0000BD   381 _PT2	=	0x00bd
                           0000C8   382 _T2CON_0	=	0x00c8
                           0000C9   383 _T2CON_1	=	0x00c9
                           0000CA   384 _T2CON_2	=	0x00ca
                           0000CB   385 _T2CON_3	=	0x00cb
                           0000CC   386 _T2CON_4	=	0x00cc
                           0000CD   387 _T2CON_5	=	0x00cd
                           0000CE   388 _T2CON_6	=	0x00ce
                           0000CF   389 _T2CON_7	=	0x00cf
                           0000C8   390 _CP_RL2	=	0x00c8
                           0000C9   391 _C_T2	=	0x00c9
                           0000CA   392 _TR2	=	0x00ca
                           0000CB   393 _EXEN2	=	0x00cb
                           0000CC   394 _TCLK	=	0x00cc
                           0000CD   395 _RCLK	=	0x00cd
                           0000CE   396 _EXF2	=	0x00ce
                           0000CF   397 _TF2	=	0x00cf
                           0000DF   398 _CF	=	0x00df
                           0000DE   399 _CR	=	0x00de
                           0000DC   400 _CCF4	=	0x00dc
                           0000DB   401 _CCF3	=	0x00db
                           0000DA   402 _CCF2	=	0x00da
                           0000D9   403 _CCF1	=	0x00d9
                           0000D8   404 _CCF0	=	0x00d8
                           0000AE   405 _EC	=	0x00ae
                           0000BE   406 _PPCL	=	0x00be
                           0000BD   407 _PT2L	=	0x00bd
                           0000BC   408 _PSL	=	0x00bc
                           0000BB   409 _PT1L	=	0x00bb
                           0000BA   410 _PX1L	=	0x00ba
                           0000B9   411 _PT0L	=	0x00b9
                           0000B8   412 _PX0L	=	0x00b8
                           0000C0   413 _P4_0	=	0x00c0
                           0000C1   414 _P4_1	=	0x00c1
                           0000C2   415 _P4_2	=	0x00c2
                           0000C3   416 _P4_3	=	0x00c3
                           0000C4   417 _P4_4	=	0x00c4
                           0000C5   418 _P4_5	=	0x00c5
                           0000C6   419 _P4_6	=	0x00c6
                           0000C7   420 _P4_7	=	0x00c7
                           0000E8   421 _P5_0	=	0x00e8
                           0000E9   422 _P5_1	=	0x00e9
                           0000EA   423 _P5_2	=	0x00ea
                           0000EB   424 _P5_3	=	0x00eb
                           0000EC   425 _P5_4	=	0x00ec
                           0000ED   426 _P5_5	=	0x00ed
                           0000EE   427 _P5_6	=	0x00ee
                           0000EF   428 _P5_7	=	0x00ef
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable register banks
                                    431 ;--------------------------------------------------------
                                    432 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        433 	.ds 8
                                    434 ;--------------------------------------------------------
                                    435 ; internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area DSEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable items in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 ;--------------------------------------------------------
                                    442 ; Stack segment in internal ram 
                                    443 ;--------------------------------------------------------
                                    444 	.area	SSEG
      000014                        445 __start__stack:
      000014                        446 	.ds	1
                                    447 
                                    448 ;--------------------------------------------------------
                                    449 ; indirectly addressable internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area ISEG    (DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; absolute internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area IABS    (ABS,DATA)
                                    456 	.area IABS    (ABS,DATA)
                                    457 ;--------------------------------------------------------
                                    458 ; bit data
                                    459 ;--------------------------------------------------------
                                    460 	.area BSEG    (BIT)
                                    461 ;--------------------------------------------------------
                                    462 ; paged external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area PSEG    (PAG,XDATA)
                                    465 ;--------------------------------------------------------
                                    466 ; external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XSEG    (XDATA)
      000400                        469 _putchar_charToSend_65536_17:
      000400                        470 	.ds 2
      000402                        471 _delay_ms_ms_65536_21:
      000402                        472 	.ds 2
      000404                        473 _bit_bang_spi_number_65536_37:
      000404                        474 	.ds 1
      000405                        475 _take_data_input_65537_41:
      000405                        476 	.ds 4
      000409                        477 _take_data_data_65538_45:
      000409                        478 	.ds 1
      00040A                        479 _mannual_spi_number_65536_48:
      00040A                        480 	.ds 1
      00040B                        481 _mannual_spi_dac_value_index_65536_49:
      00040B                        482 	.ds 2
      00040D                        483 _mannual_spi_dac_data_65536_49:
      00040D                        484 	.ds 2
      00040F                        485 _bit_bang_spi_write_data_65536_59:
      00040F                        486 	.ds 2
                                    487 ;--------------------------------------------------------
                                    488 ; absolute external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XABS    (ABS,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external initialized ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XISEG   (XDATA)
      00044A                        495 _ms_flag::
      00044A                        496 	.ds 1
      00044B                        497 _transmission_complete::
      00044B                        498 	.ds 2
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; interrupt vector 
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
      002000                        513 __interrupt_vect:
      002000 02 20 06         [24]  514 	ljmp	__sdcc_gsinit_startup
                                    515 ;--------------------------------------------------------
                                    516 ; global & static initialisations
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.area GSFINAL (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.globl __sdcc_gsinit_startup
                                    523 	.globl __sdcc_program_startup
                                    524 	.globl __start__stack
                                    525 	.globl __mcs51_genXINIT
                                    526 	.globl __mcs51_genXRAMCLEAR
                                    527 	.globl __mcs51_genRAMCLEAR
                                    528 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  529 	ljmp	__sdcc_program_startup
                                    530 ;--------------------------------------------------------
                                    531 ; Home
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
                                    534 	.area HOME    (CODE)
      002003                        535 __sdcc_program_startup:
      002003 02 22 3D         [24]  536 	ljmp	_main
                                    537 ;	return from main will return to caller
                                    538 ;--------------------------------------------------------
                                    539 ; code
                                    540 ;--------------------------------------------------------
                                    541 	.area CSEG    (CODE)
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'putchar'
                                    544 ;------------------------------------------------------------
                                    545 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    546 ;------------------------------------------------------------
                                    547 ;	spi_dac.c:205: int putchar(int charToSend) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function putchar
                                    550 ;	-----------------------------------------
      002062                        551 _putchar:
                           000007   552 	ar7 = 0x07
                           000006   553 	ar6 = 0x06
                           000005   554 	ar5 = 0x05
                           000004   555 	ar4 = 0x04
                           000003   556 	ar3 = 0x03
                           000002   557 	ar2 = 0x02
                           000001   558 	ar1 = 0x01
                           000000   559 	ar0 = 0x00
      002062 AF 83            [24]  560 	mov	r7,dph
      002064 E5 82            [12]  561 	mov	a,dpl
      002066 90 04 00         [24]  562 	mov	dptr,#_putchar_charToSend_65536_17
      002069 F0               [24]  563 	movx	@dptr,a
      00206A EF               [12]  564 	mov	a,r7
      00206B A3               [24]  565 	inc	dptr
      00206C F0               [24]  566 	movx	@dptr,a
                                    567 ;	spi_dac.c:206: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  568 	mov	dptr,#_putchar_charToSend_65536_17
      002070 E0               [24]  569 	movx	a,@dptr
      002071 FE               [12]  570 	mov	r6,a
      002072 A3               [24]  571 	inc	dptr
      002073 E0               [24]  572 	movx	a,@dptr
      002074 FF               [12]  573 	mov	r7,a
      002075 8E 99            [24]  574 	mov	_SBUF,r6
                                    575 ;	spi_dac.c:207: while (!TI);             /* Wait for transmission completion */
      002077                        576 00101$:
                                    577 ;	spi_dac.c:208: TI = 0;                  /* Clear transmission flag */
                                    578 ;	assignBit
      002077 10 99 02         [24]  579 	jbc	_TI,00114$
      00207A 80 FB            [24]  580 	sjmp	00101$
      00207C                        581 00114$:
                                    582 ;	spi_dac.c:209: return charToSend;
      00207C 8E 82            [24]  583 	mov	dpl,r6
      00207E 8F 83            [24]  584 	mov	dph,r7
                                    585 ;	spi_dac.c:210: }
      002080 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'getchar'
                                    589 ;------------------------------------------------------------
                                    590 ;	spi_dac.c:216: int getchar(void) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function getchar
                                    593 ;	-----------------------------------------
      002081                        594 _getchar:
                                    595 ;	spi_dac.c:217: while (!RI);             /* Wait for reception completion */
      002081                        596 00101$:
                                    597 ;	spi_dac.c:218: RI = 0;                  /* Clear reception flag */
                                    598 ;	assignBit
      002081 10 98 02         [24]  599 	jbc	_RI,00114$
      002084 80 FB            [24]  600 	sjmp	00101$
      002086                        601 00114$:
                                    602 ;	spi_dac.c:219: return SBUF;             /* Return received character */
      002086 AE 99            [24]  603 	mov	r6,_SBUF
      002088 7F 00            [12]  604 	mov	r7,#0x00
      00208A 8E 82            [24]  605 	mov	dpl,r6
      00208C 8F 83            [24]  606 	mov	dph,r7
                                    607 ;	spi_dac.c:220: }
      00208E 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'delay_ms'
                                    611 ;------------------------------------------------------------
                                    612 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    613 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    614 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    615 ;------------------------------------------------------------
                                    616 ;	spi_dac.c:222: void delay_ms(unsigned int ms) {
                                    617 ;	-----------------------------------------
                                    618 ;	 function delay_ms
                                    619 ;	-----------------------------------------
      00208F                        620 _delay_ms:
      00208F AF 83            [24]  621 	mov	r7,dph
      002091 E5 82            [12]  622 	mov	a,dpl
      002093 90 04 02         [24]  623 	mov	dptr,#_delay_ms_ms_65536_21
      002096 F0               [24]  624 	movx	@dptr,a
      002097 EF               [12]  625 	mov	a,r7
      002098 A3               [24]  626 	inc	dptr
      002099 F0               [24]  627 	movx	@dptr,a
                                    628 ;	spi_dac.c:224: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  629 	mov	dptr,#_delay_ms_ms_65536_21
      00209D E0               [24]  630 	movx	a,@dptr
      00209E FE               [12]  631 	mov	r6,a
      00209F A3               [24]  632 	inc	dptr
      0020A0 E0               [24]  633 	movx	a,@dptr
      0020A1 FF               [12]  634 	mov	r7,a
      0020A2 7C 00            [12]  635 	mov	r4,#0x00
      0020A4 7D 00            [12]  636 	mov	r5,#0x00
      0020A6                        637 00107$:
      0020A6 C3               [12]  638 	clr	c
      0020A7 EC               [12]  639 	mov	a,r4
      0020A8 9E               [12]  640 	subb	a,r6
      0020A9 ED               [12]  641 	mov	a,r5
      0020AA 9F               [12]  642 	subb	a,r7
      0020AB 50 14            [24]  643 	jnc	00109$
                                    644 ;	spi_dac.c:225: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  645 	mov	r2,#0x7b
      0020AF 7B 00            [12]  646 	mov	r3,#0x00
      0020B1                        647 00105$:
      0020B1 1A               [12]  648 	dec	r2
      0020B2 BA FF 01         [24]  649 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  650 	dec	r3
      0020B6                        651 00130$:
      0020B6 EA               [12]  652 	mov	a,r2
      0020B7 4B               [12]  653 	orl	a,r3
      0020B8 70 F7            [24]  654 	jnz	00105$
                                    655 ;	spi_dac.c:224: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  656 	inc	r4
      0020BB BC 00 E8         [24]  657 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  658 	inc	r5
      0020BF 80 E5            [24]  659 	sjmp	00107$
      0020C1                        660 00109$:
                                    661 ;	spi_dac.c:226: }
      0020C1 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'display_menu'
                                    665 ;------------------------------------------------------------
                                    666 ;	spi_dac.c:233: void display_menu(void) {
                                    667 ;	-----------------------------------------
                                    668 ;	 function display_menu
                                    669 ;	-----------------------------------------
      0020C2                        670 _display_menu:
                                    671 ;	spi_dac.c:234: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      0020C2 74 2C            [12]  672 	mov	a,#___str_0
      0020C4 C0 E0            [24]  673 	push	acc
      0020C6 74 32            [12]  674 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  675 	push	acc
      0020CA 74 80            [12]  676 	mov	a,#0x80
      0020CC C0 E0            [24]  677 	push	acc
      0020CE 12 25 CA         [24]  678 	lcall	_printf
      0020D1 15 81            [12]  679 	dec	sp
      0020D3 15 81            [12]  680 	dec	sp
      0020D5 15 81            [12]  681 	dec	sp
                                    682 ;	spi_dac.c:235: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 F1            [12]  683 	mov	a,#___str_1
      0020D9 C0 E0            [24]  684 	push	acc
      0020DB 74 32            [12]  685 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  686 	push	acc
      0020DF 74 80            [12]  687 	mov	a,#0x80
      0020E1 C0 E0            [24]  688 	push	acc
      0020E3 12 25 CA         [24]  689 	lcall	_printf
      0020E6 15 81            [12]  690 	dec	sp
      0020E8 15 81            [12]  691 	dec	sp
      0020EA 15 81            [12]  692 	dec	sp
                                    693 ;	spi_dac.c:236: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 38            [12]  694 	mov	a,#___str_2
      0020EE C0 E0            [24]  695 	push	acc
      0020F0 74 33            [12]  696 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  697 	push	acc
      0020F4 74 80            [12]  698 	mov	a,#0x80
      0020F6 C0 E0            [24]  699 	push	acc
      0020F8 12 25 CA         [24]  700 	lcall	_printf
      0020FB 15 81            [12]  701 	dec	sp
      0020FD 15 81            [12]  702 	dec	sp
      0020FF 15 81            [12]  703 	dec	sp
                                    704 ;	spi_dac.c:237: printf("│  Command   │               Description                       │\n\r");
      002101 74 FB            [12]  705 	mov	a,#___str_3
      002103 C0 E0            [24]  706 	push	acc
      002105 74 33            [12]  707 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  708 	push	acc
      002109 74 80            [12]  709 	mov	a,#0x80
      00210B C0 E0            [24]  710 	push	acc
      00210D 12 25 CA         [24]  711 	lcall	_printf
      002110 15 81            [12]  712 	dec	sp
      002112 15 81            [12]  713 	dec	sp
      002114 15 81            [12]  714 	dec	sp
                                    715 ;	spi_dac.c:238: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 44            [12]  716 	mov	a,#___str_4
      002118 C0 E0            [24]  717 	push	acc
      00211A 74 34            [12]  718 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  719 	push	acc
      00211E 74 80            [12]  720 	mov	a,#0x80
      002120 C0 E0            [24]  721 	push	acc
      002122 12 25 CA         [24]  722 	lcall	_printf
      002125 15 81            [12]  723 	dec	sp
      002127 15 81            [12]  724 	dec	sp
      002129 15 81            [12]  725 	dec	sp
                                    726 ;	spi_dac.c:239: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 FE            [12]  727 	mov	a,#___str_5
      00212D C0 E0            [24]  728 	push	acc
      00212F 74 34            [12]  729 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  730 	push	acc
      002133 74 80            [12]  731 	mov	a,#0x80
      002135 C0 E0            [24]  732 	push	acc
      002137 12 25 CA         [24]  733 	lcall	_printf
      00213A 15 81            [12]  734 	dec	sp
      00213C 15 81            [12]  735 	dec	sp
      00213E 15 81            [12]  736 	dec	sp
                                    737 ;	spi_dac.c:240: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 45            [12]  738 	mov	a,#___str_6
      002142 C0 E0            [24]  739 	push	acc
      002144 74 35            [12]  740 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  741 	push	acc
      002148 74 80            [12]  742 	mov	a,#0x80
      00214A C0 E0            [24]  743 	push	acc
      00214C 12 25 CA         [24]  744 	lcall	_printf
      00214F 15 81            [12]  745 	dec	sp
      002151 15 81            [12]  746 	dec	sp
      002153 15 81            [12]  747 	dec	sp
                                    748 ;	spi_dac.c:241: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 8B            [12]  749 	mov	a,#___str_7
      002157 C0 E0            [24]  750 	push	acc
      002159 74 35            [12]  751 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  752 	push	acc
      00215D 74 80            [12]  753 	mov	a,#0x80
      00215F C0 E0            [24]  754 	push	acc
      002161 12 25 CA         [24]  755 	lcall	_printf
      002164 15 81            [12]  756 	dec	sp
      002166 15 81            [12]  757 	dec	sp
      002168 15 81            [12]  758 	dec	sp
                                    759 ;	spi_dac.c:242: printf("│    Q      │ Generate Square Wave                          │\n\r");
      00216A 74 D1            [12]  760 	mov	a,#___str_8
      00216C C0 E0            [24]  761 	push	acc
      00216E 74 35            [12]  762 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  763 	push	acc
      002172 74 80            [12]  764 	mov	a,#0x80
      002174 C0 E0            [24]  765 	push	acc
      002176 12 25 CA         [24]  766 	lcall	_printf
      002179 15 81            [12]  767 	dec	sp
      00217B 15 81            [12]  768 	dec	sp
      00217D 15 81            [12]  769 	dec	sp
                                    770 ;	spi_dac.c:243: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00217F 74 17            [12]  771 	mov	a,#___str_9
      002181 C0 E0            [24]  772 	push	acc
      002183 74 36            [12]  773 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  774 	push	acc
      002187 74 80            [12]  775 	mov	a,#0x80
      002189 C0 E0            [24]  776 	push	acc
      00218B 12 25 CA         [24]  777 	lcall	_printf
      00218E 15 81            [12]  778 	dec	sp
      002190 15 81            [12]  779 	dec	sp
      002192 15 81            [12]  780 	dec	sp
                                    781 ;	spi_dac.c:244: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      002194 74 5D            [12]  782 	mov	a,#___str_10
      002196 C0 E0            [24]  783 	push	acc
      002198 74 36            [12]  784 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  785 	push	acc
      00219C 74 80            [12]  786 	mov	a,#0x80
      00219E C0 E0            [24]  787 	push	acc
      0021A0 12 25 CA         [24]  788 	lcall	_printf
      0021A3 15 81            [12]  789 	dec	sp
      0021A5 15 81            [12]  790 	dec	sp
      0021A7 15 81            [12]  791 	dec	sp
                                    792 ;	spi_dac.c:245: printf("│    C      │ Configure SPI Parameters                      │\n\r");
      0021A9 74 A3            [12]  793 	mov	a,#___str_11
      0021AB C0 E0            [24]  794 	push	acc
      0021AD 74 36            [12]  795 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  796 	push	acc
      0021B1 74 80            [12]  797 	mov	a,#0x80
      0021B3 C0 E0            [24]  798 	push	acc
      0021B5 12 25 CA         [24]  799 	lcall	_printf
      0021B8 15 81            [12]  800 	dec	sp
      0021BA 15 81            [12]  801 	dec	sp
      0021BC 15 81            [12]  802 	dec	sp
                                    803 ;	spi_dac.c:246: printf("│    R      │ Read SPI Data                                 │\n\r");
      0021BE 74 E9            [12]  804 	mov	a,#___str_12
      0021C0 C0 E0            [24]  805 	push	acc
      0021C2 74 36            [12]  806 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  807 	push	acc
      0021C6 74 80            [12]  808 	mov	a,#0x80
      0021C8 C0 E0            [24]  809 	push	acc
      0021CA 12 25 CA         [24]  810 	lcall	_printf
      0021CD 15 81            [12]  811 	dec	sp
      0021CF 15 81            [12]  812 	dec	sp
      0021D1 15 81            [12]  813 	dec	sp
                                    814 ;	spi_dac.c:247: printf("│    W      │ Write SPI Data                                │\n\r");
      0021D3 74 2F            [12]  815 	mov	a,#___str_13
      0021D5 C0 E0            [24]  816 	push	acc
      0021D7 74 37            [12]  817 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  818 	push	acc
      0021DB 74 80            [12]  819 	mov	a,#0x80
      0021DD C0 E0            [24]  820 	push	acc
      0021DF 12 25 CA         [24]  821 	lcall	_printf
      0021E2 15 81            [12]  822 	dec	sp
      0021E4 15 81            [12]  823 	dec	sp
      0021E6 15 81            [12]  824 	dec	sp
                                    825 ;	spi_dac.c:248: printf("│    ?      │ Display this help menu                        │\n\r");
      0021E8 74 75            [12]  826 	mov	a,#___str_14
      0021EA C0 E0            [24]  827 	push	acc
      0021EC 74 37            [12]  828 	mov	a,#(___str_14 >> 8)
      0021EE C0 E0            [24]  829 	push	acc
      0021F0 74 80            [12]  830 	mov	a,#0x80
      0021F2 C0 E0            [24]  831 	push	acc
      0021F4 12 25 CA         [24]  832 	lcall	_printf
      0021F7 15 81            [12]  833 	dec	sp
      0021F9 15 81            [12]  834 	dec	sp
      0021FB 15 81            [12]  835 	dec	sp
                                    836 ;	spi_dac.c:249: printf("│    X      │ Exit Program                                  │\n\r");
      0021FD 74 BB            [12]  837 	mov	a,#___str_15
      0021FF C0 E0            [24]  838 	push	acc
      002201 74 37            [12]  839 	mov	a,#(___str_15 >> 8)
      002203 C0 E0            [24]  840 	push	acc
      002205 74 80            [12]  841 	mov	a,#0x80
      002207 C0 E0            [24]  842 	push	acc
      002209 12 25 CA         [24]  843 	lcall	_printf
      00220C 15 81            [12]  844 	dec	sp
      00220E 15 81            [12]  845 	dec	sp
      002210 15 81            [12]  846 	dec	sp
                                    847 ;	spi_dac.c:250: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002212 74 01            [12]  848 	mov	a,#___str_16
      002214 C0 E0            [24]  849 	push	acc
      002216 74 38            [12]  850 	mov	a,#(___str_16 >> 8)
      002218 C0 E0            [24]  851 	push	acc
      00221A 74 80            [12]  852 	mov	a,#0x80
      00221C C0 E0            [24]  853 	push	acc
      00221E 12 25 CA         [24]  854 	lcall	_printf
      002221 15 81            [12]  855 	dec	sp
      002223 15 81            [12]  856 	dec	sp
      002225 15 81            [12]  857 	dec	sp
                                    858 ;	spi_dac.c:251: printf("\n\rEnter command: ");
      002227 74 BB            [12]  859 	mov	a,#___str_17
      002229 C0 E0            [24]  860 	push	acc
      00222B 74 38            [12]  861 	mov	a,#(___str_17 >> 8)
      00222D C0 E0            [24]  862 	push	acc
      00222F 74 80            [12]  863 	mov	a,#0x80
      002231 C0 E0            [24]  864 	push	acc
      002233 12 25 CA         [24]  865 	lcall	_printf
      002236 15 81            [12]  866 	dec	sp
      002238 15 81            [12]  867 	dec	sp
      00223A 15 81            [12]  868 	dec	sp
                                    869 ;	spi_dac.c:252: }
      00223C 22               [24]  870 	ret
                                    871 ;------------------------------------------------------------
                                    872 ;Allocation info for local variables in function 'main'
                                    873 ;------------------------------------------------------------
                                    874 ;user_input                Allocated with name '_main_user_input_131072_33'
                                    875 ;result                    Allocated with name '_main_result_196609_35'
                                    876 ;result2                   Allocated with name '_main_result2_196610_36'
                                    877 ;------------------------------------------------------------
                                    878 ;	spi_dac.c:254: int main(void)
                                    879 ;	-----------------------------------------
                                    880 ;	 function main
                                    881 ;	-----------------------------------------
      00223D                        882 _main:
                                    883 ;	spi_dac.c:256: display_menu();
      00223D 12 20 C2         [24]  884 	lcall	_display_menu
                                    885 ;	spi_dac.c:258: while(1)
      002240                        886 00105$:
                                    887 ;	spi_dac.c:260: char user_input = getchar();
      002240 12 20 81         [24]  888 	lcall	_getchar
      002243 AE 82            [24]  889 	mov	r6,dpl
                                    890 ;	spi_dac.c:261: printf("| $ %c\n\r", user_input);
      002245 8E 05            [24]  891 	mov	ar5,r6
      002247 7F 00            [12]  892 	mov	r7,#0x00
      002249 C0 06            [24]  893 	push	ar6
      00224B C0 05            [24]  894 	push	ar5
      00224D C0 07            [24]  895 	push	ar7
      00224F 74 CD            [12]  896 	mov	a,#___str_18
      002251 C0 E0            [24]  897 	push	acc
      002253 74 38            [12]  898 	mov	a,#(___str_18 >> 8)
      002255 C0 E0            [24]  899 	push	acc
      002257 74 80            [12]  900 	mov	a,#0x80
      002259 C0 E0            [24]  901 	push	acc
      00225B 12 25 CA         [24]  902 	lcall	_printf
      00225E E5 81            [12]  903 	mov	a,sp
      002260 24 FB            [12]  904 	add	a,#0xfb
      002262 F5 81            [12]  905 	mov	sp,a
                                    906 ;	spi_dac.c:262: printf("\n\r");
      002264 74 D6            [12]  907 	mov	a,#___str_19
      002266 C0 E0            [24]  908 	push	acc
      002268 74 38            [12]  909 	mov	a,#(___str_19 >> 8)
      00226A C0 E0            [24]  910 	push	acc
      00226C 74 80            [12]  911 	mov	a,#0x80
      00226E C0 E0            [24]  912 	push	acc
      002270 12 25 CA         [24]  913 	lcall	_printf
      002273 15 81            [12]  914 	dec	sp
      002275 15 81            [12]  915 	dec	sp
      002277 15 81            [12]  916 	dec	sp
      002279 D0 06            [24]  917 	pop	ar6
                                    918 ;	spi_dac.c:263: switch(user_input)
      00227B BE 42 02         [24]  919 	cjne	r6,#0x42,00121$
      00227E 80 23            [24]  920 	sjmp	00102$
      002280                        921 00121$:
      002280 BE 4D BD         [24]  922 	cjne	r6,#0x4d,00105$
                                    923 ;	spi_dac.c:266: spi_init();
      002283 12 25 18         [24]  924 	lcall	_spi_init
                                    925 ;	spi_dac.c:267: unsigned char result = take_data();
      002286 12 23 0C         [24]  926 	lcall	_take_data
                                    927 ;	spi_dac.c:268: mannual_spi(result);
      002289 12 24 60         [24]  928 	lcall	_mannual_spi
                                    929 ;	spi_dac.c:269: printf("SIN WAVE DONE\n\r");
      00228C 74 D9            [12]  930 	mov	a,#___str_20
      00228E C0 E0            [24]  931 	push	acc
      002290 74 38            [12]  932 	mov	a,#(___str_20 >> 8)
      002292 C0 E0            [24]  933 	push	acc
      002294 74 80            [12]  934 	mov	a,#0x80
      002296 C0 E0            [24]  935 	push	acc
      002298 12 25 CA         [24]  936 	lcall	_printf
      00229B 15 81            [12]  937 	dec	sp
      00229D 15 81            [12]  938 	dec	sp
      00229F 15 81            [12]  939 	dec	sp
                                    940 ;	spi_dac.c:270: break;
                                    941 ;	spi_dac.c:272: case 'B':
      0022A1 80 9D            [24]  942 	sjmp	00105$
      0022A3                        943 00102$:
                                    944 ;	spi_dac.c:273: bit_bang_spi_init();
      0022A3 12 25 22         [24]  945 	lcall	_bit_bang_spi_init
                                    946 ;	spi_dac.c:274: unsigned char result2 = take_data();
      0022A6 12 23 0C         [24]  947 	lcall	_take_data
                                    948 ;	spi_dac.c:275: bit_bang_spi(result2);
      0022A9 12 22 C4         [24]  949 	lcall	_bit_bang_spi
                                    950 ;	spi_dac.c:276: printf("SQUARE WAVE DONE\n\r");
      0022AC 74 E9            [12]  951 	mov	a,#___str_21
      0022AE C0 E0            [24]  952 	push	acc
      0022B0 74 38            [12]  953 	mov	a,#(___str_21 >> 8)
      0022B2 C0 E0            [24]  954 	push	acc
      0022B4 74 80            [12]  955 	mov	a,#0x80
      0022B6 C0 E0            [24]  956 	push	acc
      0022B8 12 25 CA         [24]  957 	lcall	_printf
      0022BB 15 81            [12]  958 	dec	sp
      0022BD 15 81            [12]  959 	dec	sp
      0022BF 15 81            [12]  960 	dec	sp
                                    961 ;	spi_dac.c:280: }
                                    962 ;	spi_dac.c:290: }
      0022C1 02 22 40         [24]  963 	ljmp	00105$
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'bit_bang_spi'
                                    966 ;------------------------------------------------------------
                                    967 ;number                    Allocated with name '_bit_bang_spi_number_65536_37'
                                    968 ;------------------------------------------------------------
                                    969 ;	spi_dac.c:292: void bit_bang_spi(unsigned char number)
                                    970 ;	-----------------------------------------
                                    971 ;	 function bit_bang_spi
                                    972 ;	-----------------------------------------
      0022C4                        973 _bit_bang_spi:
      0022C4 E5 82            [12]  974 	mov	a,dpl
      0022C6 90 04 04         [24]  975 	mov	dptr,#_bit_bang_spi_number_65536_37
      0022C9 F0               [24]  976 	movx	@dptr,a
                                    977 ;	spi_dac.c:294: while(number > 0)
      0022CA                        978 00101$:
      0022CA 90 04 04         [24]  979 	mov	dptr,#_bit_bang_spi_number_65536_37
      0022CD E0               [24]  980 	movx	a,@dptr
      0022CE FF               [12]  981 	mov	r7,a
      0022CF E0               [24]  982 	movx	a,@dptr
      0022D0 60 39            [24]  983 	jz	00104$
                                    984 ;	spi_dac.c:296: printf("r\n\r");
      0022D2 C0 07            [24]  985 	push	ar7
      0022D4 74 FC            [12]  986 	mov	a,#___str_22
      0022D6 C0 E0            [24]  987 	push	acc
      0022D8 74 38            [12]  988 	mov	a,#(___str_22 >> 8)
      0022DA C0 E0            [24]  989 	push	acc
      0022DC 74 80            [12]  990 	mov	a,#0x80
      0022DE C0 E0            [24]  991 	push	acc
      0022E0 12 25 CA         [24]  992 	lcall	_printf
      0022E3 15 81            [12]  993 	dec	sp
      0022E5 15 81            [12]  994 	dec	sp
      0022E7 15 81            [12]  995 	dec	sp
                                    996 ;	spi_dac.c:297: bit_bang_spi_write(TEST_DATA);
      0022E9 90 1F F0         [24]  997 	mov	dptr,#0x1ff0
      0022EC 12 25 2C         [24]  998 	lcall	_bit_bang_spi_write
                                    999 ;	spi_dac.c:298: delay_ms(DELAY_PERIOD);
      0022EF 90 01 F4         [24] 1000 	mov	dptr,#0x01f4
      0022F2 12 20 8F         [24] 1001 	lcall	_delay_ms
                                   1002 ;	spi_dac.c:299: bit_bang_spi_write(IDLE_DATA);
      0022F5 90 10 00         [24] 1003 	mov	dptr,#0x1000
      0022F8 12 25 2C         [24] 1004 	lcall	_bit_bang_spi_write
                                   1005 ;	spi_dac.c:300: delay_ms(DELAY_PERIOD);
      0022FB 90 01 F4         [24] 1006 	mov	dptr,#0x01f4
      0022FE 12 20 8F         [24] 1007 	lcall	_delay_ms
      002301 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	spi_dac.c:301: number = number - 1;
      002303 EF               [12] 1010 	mov	a,r7
      002304 14               [12] 1011 	dec	a
      002305 90 04 04         [24] 1012 	mov	dptr,#_bit_bang_spi_number_65536_37
      002308 F0               [24] 1013 	movx	@dptr,a
      002309 80 BF            [24] 1014 	sjmp	00101$
      00230B                       1015 00104$:
                                   1016 ;	spi_dac.c:303: }
      00230B 22               [24] 1017 	ret
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'take_data'
                                   1020 ;------------------------------------------------------------
                                   1021 ;input                     Allocated with name '_take_data_input_65537_41'
                                   1022 ;i                         Allocated with name '_take_data_i_65537_41'
                                   1023 ;c                         Allocated with name '_take_data_c_65537_41'
                                   1024 ;data                      Allocated with name '_take_data_data_65538_45'
                                   1025 ;------------------------------------------------------------
                                   1026 ;	spi_dac.c:304: unsigned char take_data()
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function take_data
                                   1029 ;	-----------------------------------------
      00230C                       1030 _take_data:
                                   1031 ;	spi_dac.c:306: printf("│ Enter number (hex, up to 2 characters): \n\r|");
      00230C 74 00            [12] 1032 	mov	a,#___str_23
      00230E C0 E0            [24] 1033 	push	acc
      002310 74 39            [12] 1034 	mov	a,#(___str_23 >> 8)
      002312 C0 E0            [24] 1035 	push	acc
      002314 74 80            [12] 1036 	mov	a,#0x80
      002316 C0 E0            [24] 1037 	push	acc
      002318 12 25 CA         [24] 1038 	lcall	_printf
      00231B 15 81            [12] 1039 	dec	sp
      00231D 15 81            [12] 1040 	dec	sp
      00231F 15 81            [12] 1041 	dec	sp
                                   1042 ;	spi_dac.c:307: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002321 90 04 05         [24] 1043 	mov	dptr,#_take_data_input_65537_41
      002324 E4               [12] 1044 	clr	a
      002325 F0               [24] 1045 	movx	@dptr,a
      002326 90 04 06         [24] 1046 	mov	dptr,#(_take_data_input_65537_41 + 0x0001)
      002329 F0               [24] 1047 	movx	@dptr,a
      00232A 90 04 07         [24] 1048 	mov	dptr,#(_take_data_input_65537_41 + 0x0002)
      00232D F0               [24] 1049 	movx	@dptr,a
      00232E 90 04 08         [24] 1050 	mov	dptr,#(_take_data_input_65537_41 + 0x0003)
      002331 F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	spi_dac.c:311: printf("$ ");
      002332 74 30            [12] 1053 	mov	a,#___str_24
      002334 C0 E0            [24] 1054 	push	acc
      002336 74 39            [12] 1055 	mov	a,#(___str_24 >> 8)
      002338 C0 E0            [24] 1056 	push	acc
      00233A 74 80            [12] 1057 	mov	a,#0x80
      00233C C0 E0            [24] 1058 	push	acc
      00233E 12 25 CA         [24] 1059 	lcall	_printf
      002341 15 81            [12] 1060 	dec	sp
      002343 15 81            [12] 1061 	dec	sp
      002345 15 81            [12] 1062 	dec	sp
                                   1063 ;	spi_dac.c:313: while (i < 3) {
      002347 7E 00            [12] 1064 	mov	r6,#0x00
      002349 7F 00            [12] 1065 	mov	r7,#0x00
      00234B                       1066 00111$:
      00234B C3               [12] 1067 	clr	c
      00234C EE               [12] 1068 	mov	a,r6
      00234D 94 03            [12] 1069 	subb	a,#0x03
      00234F EF               [12] 1070 	mov	a,r7
      002350 64 80            [12] 1071 	xrl	a,#0x80
      002352 94 80            [12] 1072 	subb	a,#0x80
      002354 50 5B            [24] 1073 	jnc	00113$
                                   1074 ;	spi_dac.c:315: c = getchar();
      002356 C0 07            [24] 1075 	push	ar7
      002358 C0 06            [24] 1076 	push	ar6
      00235A 12 20 81         [24] 1077 	lcall	_getchar
      00235D AC 82            [24] 1078 	mov	r4,dpl
      00235F AD 83            [24] 1079 	mov	r5,dph
      002361 D0 06            [24] 1080 	pop	ar6
      002363 D0 07            [24] 1081 	pop	ar7
                                   1082 ;	spi_dac.c:318: if (c == '\r' || c == '\n') {
      002365 BC 0D 02         [24] 1083 	cjne	r4,#0x0d,00194$
      002368 80 47            [24] 1084 	sjmp	00113$
      00236A                       1085 00194$:
      00236A BC 0A 02         [24] 1086 	cjne	r4,#0x0a,00195$
      00236D 80 42            [24] 1087 	sjmp	00113$
      00236F                       1088 00195$:
                                   1089 ;	spi_dac.c:323: if ((c >= '0' && c <= '9') ||
      00236F BC 30 00         [24] 1090 	cjne	r4,#0x30,00196$
      002372                       1091 00196$:
      002372 40 05            [24] 1092 	jc	00108$
      002374 EC               [12] 1093 	mov	a,r4
      002375 24 C6            [12] 1094 	add	a,#0xff - 0x39
      002377 50 14            [24] 1095 	jnc	00104$
      002379                       1096 00108$:
                                   1097 ;	spi_dac.c:324: (c >= 'a' && c <= 'f') ||
      002379 BC 61 00         [24] 1098 	cjne	r4,#0x61,00199$
      00237C                       1099 00199$:
      00237C 40 05            [24] 1100 	jc	00110$
      00237E EC               [12] 1101 	mov	a,r4
      00237F 24 99            [12] 1102 	add	a,#0xff - 0x66
      002381 50 0A            [24] 1103 	jnc	00104$
      002383                       1104 00110$:
                                   1105 ;	spi_dac.c:325: (c >= 'A' && c <= 'F')) {
      002383 BC 41 00         [24] 1106 	cjne	r4,#0x41,00202$
      002386                       1107 00202$:
      002386 40 C3            [24] 1108 	jc	00111$
      002388 EC               [12] 1109 	mov	a,r4
      002389 24 B9            [12] 1110 	add	a,#0xff - 0x46
      00238B 40 BE            [24] 1111 	jc	00111$
      00238D                       1112 00104$:
                                   1113 ;	spi_dac.c:327: input[i] = c;
      00238D EE               [12] 1114 	mov	a,r6
      00238E 24 05            [12] 1115 	add	a,#_take_data_input_65537_41
      002390 F5 82            [12] 1116 	mov	dpl,a
      002392 EF               [12] 1117 	mov	a,r7
      002393 34 04            [12] 1118 	addc	a,#(_take_data_input_65537_41 >> 8)
      002395 F5 83            [12] 1119 	mov	dph,a
      002397 EC               [12] 1120 	mov	a,r4
      002398 F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	spi_dac.c:328: putchar(c);  // Echo character back
      002399 7D 00            [12] 1123 	mov	r5,#0x00
      00239B 8C 82            [24] 1124 	mov	dpl,r4
      00239D 8D 83            [24] 1125 	mov	dph,r5
      00239F C0 07            [24] 1126 	push	ar7
      0023A1 C0 06            [24] 1127 	push	ar6
      0023A3 12 20 62         [24] 1128 	lcall	_putchar
      0023A6 D0 06            [24] 1129 	pop	ar6
      0023A8 D0 07            [24] 1130 	pop	ar7
                                   1131 ;	spi_dac.c:329: i++;
      0023AA 0E               [12] 1132 	inc	r6
      0023AB BE 00 9D         [24] 1133 	cjne	r6,#0x00,00111$
      0023AE 0F               [12] 1134 	inc	r7
      0023AF 80 9A            [24] 1135 	sjmp	00111$
      0023B1                       1136 00113$:
                                   1137 ;	spi_dac.c:333: input[i] = '\0';  // Null-terminate the string
      0023B1 EE               [12] 1138 	mov	a,r6
      0023B2 24 05            [12] 1139 	add	a,#_take_data_input_65537_41
      0023B4 F5 82            [12] 1140 	mov	dpl,a
      0023B6 EF               [12] 1141 	mov	a,r7
      0023B7 34 04            [12] 1142 	addc	a,#(_take_data_input_65537_41 >> 8)
      0023B9 F5 83            [12] 1143 	mov	dph,a
      0023BB E4               [12] 1144 	clr	a
      0023BC F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	spi_dac.c:336: unsigned char data = 0;
      0023BD 90 04 09         [24] 1147 	mov	dptr,#_take_data_data_65538_45
      0023C0 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	spi_dac.c:337: for (i = 0; input[i] != '\0'; i++) {
      0023C1 7E 00            [12] 1150 	mov	r6,#0x00
      0023C3 7F 00            [12] 1151 	mov	r7,#0x00
      0023C5                       1152 00127$:
      0023C5 EE               [12] 1153 	mov	a,r6
      0023C6 24 05            [12] 1154 	add	a,#_take_data_input_65537_41
      0023C8 F5 82            [12] 1155 	mov	dpl,a
      0023CA EF               [12] 1156 	mov	a,r7
      0023CB 34 04            [12] 1157 	addc	a,#(_take_data_input_65537_41 >> 8)
      0023CD F5 83            [12] 1158 	mov	dph,a
      0023CF E0               [24] 1159 	movx	a,@dptr
      0023D0 FD               [12] 1160 	mov	r5,a
      0023D1 70 03            [24] 1161 	jnz	00206$
      0023D3 02 24 38         [24] 1162 	ljmp	00125$
      0023D6                       1163 00206$:
                                   1164 ;	spi_dac.c:338: data = data * 16;
      0023D6 90 04 09         [24] 1165 	mov	dptr,#_take_data_data_65538_45
      0023D9 E0               [24] 1166 	movx	a,@dptr
      0023DA C4               [12] 1167 	swap	a
      0023DB 54 F0            [12] 1168 	anl	a,#0xf0
      0023DD FC               [12] 1169 	mov	r4,a
      0023DE F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	spi_dac.c:339: if (input[i] >= '0' && input[i] <= '9')
      0023DF BD 30 00         [24] 1172 	cjne	r5,#0x30,00207$
      0023E2                       1173 00207$:
      0023E2 40 12            [24] 1174 	jc	00122$
      0023E4 ED               [12] 1175 	mov	a,r5
      0023E5 24 C6            [12] 1176 	add	a,#0xff - 0x39
      0023E7 40 0D            [24] 1177 	jc	00122$
                                   1178 ;	spi_dac.c:340: data += input[i] - '0';
      0023E9 ED               [12] 1179 	mov	a,r5
      0023EA 24 D0            [12] 1180 	add	a,#0xd0
      0023EC FD               [12] 1181 	mov	r5,a
      0023ED 90 04 09         [24] 1182 	mov	dptr,#_take_data_data_65538_45
      0023F0 E0               [24] 1183 	movx	a,@dptr
      0023F1 FC               [12] 1184 	mov	r4,a
      0023F2 2D               [12] 1185 	add	a,r5
      0023F3 F0               [24] 1186 	movx	@dptr,a
      0023F4 80 3A            [24] 1187 	sjmp	00128$
      0023F6                       1188 00122$:
                                   1189 ;	spi_dac.c:341: else if (input[i] >= 'A' && input[i] <= 'F')
      0023F6 EE               [12] 1190 	mov	a,r6
      0023F7 24 05            [12] 1191 	add	a,#_take_data_input_65537_41
      0023F9 F5 82            [12] 1192 	mov	dpl,a
      0023FB EF               [12] 1193 	mov	a,r7
      0023FC 34 04            [12] 1194 	addc	a,#(_take_data_input_65537_41 >> 8)
      0023FE F5 83            [12] 1195 	mov	dph,a
      002400 E0               [24] 1196 	movx	a,@dptr
      002401 FD               [12] 1197 	mov	r5,a
      002402 BD 41 00         [24] 1198 	cjne	r5,#0x41,00210$
      002405                       1199 00210$:
      002405 40 14            [24] 1200 	jc	00118$
      002407 ED               [12] 1201 	mov	a,r5
      002408 24 B9            [12] 1202 	add	a,#0xff - 0x46
      00240A 40 0F            [24] 1203 	jc	00118$
                                   1204 ;	spi_dac.c:342: data += input[i] - 'A' + 10;
      00240C 8D 04            [24] 1205 	mov	ar4,r5
      00240E 74 C9            [12] 1206 	mov	a,#0xc9
      002410 2C               [12] 1207 	add	a,r4
      002411 FC               [12] 1208 	mov	r4,a
      002412 90 04 09         [24] 1209 	mov	dptr,#_take_data_data_65538_45
      002415 E0               [24] 1210 	movx	a,@dptr
      002416 FB               [12] 1211 	mov	r3,a
      002417 2C               [12] 1212 	add	a,r4
      002418 F0               [24] 1213 	movx	@dptr,a
      002419 80 15            [24] 1214 	sjmp	00128$
      00241B                       1215 00118$:
                                   1216 ;	spi_dac.c:343: else if (input[i] >= 'a' && input[i] <= 'f')
      00241B BD 61 00         [24] 1217 	cjne	r5,#0x61,00213$
      00241E                       1218 00213$:
      00241E 40 10            [24] 1219 	jc	00128$
      002420 ED               [12] 1220 	mov	a,r5
      002421 24 99            [12] 1221 	add	a,#0xff - 0x66
      002423 40 0B            [24] 1222 	jc	00128$
                                   1223 ;	spi_dac.c:344: data += input[i] - 'a' + 10;
      002425 74 A9            [12] 1224 	mov	a,#0xa9
      002427 2D               [12] 1225 	add	a,r5
      002428 FD               [12] 1226 	mov	r5,a
      002429 90 04 09         [24] 1227 	mov	dptr,#_take_data_data_65538_45
      00242C E0               [24] 1228 	movx	a,@dptr
      00242D FC               [12] 1229 	mov	r4,a
      00242E 2D               [12] 1230 	add	a,r5
      00242F F0               [24] 1231 	movx	@dptr,a
      002430                       1232 00128$:
                                   1233 ;	spi_dac.c:337: for (i = 0; input[i] != '\0'; i++) {
      002430 0E               [12] 1234 	inc	r6
      002431 BE 00 01         [24] 1235 	cjne	r6,#0x00,00216$
      002434 0F               [12] 1236 	inc	r7
      002435                       1237 00216$:
      002435 02 23 C5         [24] 1238 	ljmp	00127$
      002438                       1239 00125$:
                                   1240 ;	spi_dac.c:347: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      002438 90 04 09         [24] 1241 	mov	dptr,#_take_data_data_65538_45
      00243B E0               [24] 1242 	movx	a,@dptr
      00243C FF               [12] 1243 	mov	r7,a
      00243D FD               [12] 1244 	mov	r5,a
      00243E 7E 00            [12] 1245 	mov	r6,#0x00
      002440 C0 07            [24] 1246 	push	ar7
      002442 C0 05            [24] 1247 	push	ar5
      002444 C0 06            [24] 1248 	push	ar6
      002446 74 33            [12] 1249 	mov	a,#___str_25
      002448 C0 E0            [24] 1250 	push	acc
      00244A 74 39            [12] 1251 	mov	a,#(___str_25 >> 8)
      00244C C0 E0            [24] 1252 	push	acc
      00244E 74 80            [12] 1253 	mov	a,#0x80
      002450 C0 E0            [24] 1254 	push	acc
      002452 12 25 CA         [24] 1255 	lcall	_printf
      002455 E5 81            [12] 1256 	mov	a,sp
      002457 24 FB            [12] 1257 	add	a,#0xfb
      002459 F5 81            [12] 1258 	mov	sp,a
      00245B D0 07            [24] 1259 	pop	ar7
                                   1260 ;	spi_dac.c:354: return data;
      00245D 8F 82            [24] 1261 	mov	dpl,r7
                                   1262 ;	spi_dac.c:356: }
      00245F 22               [24] 1263 	ret
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'mannual_spi'
                                   1266 ;------------------------------------------------------------
                                   1267 ;number                    Allocated with name '_mannual_spi_number_65536_48'
                                   1268 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_49'
                                   1269 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_49'
                                   1270 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_49'
                                   1271 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_49'
                                   1272 ;i                         Allocated with name '_mannual_spi_i_196608_51'
                                   1273 ;------------------------------------------------------------
                                   1274 ;	spi_dac.c:358: void mannual_spi(unsigned char number)
                                   1275 ;	-----------------------------------------
                                   1276 ;	 function mannual_spi
                                   1277 ;	-----------------------------------------
      002460                       1278 _mannual_spi:
      002460 E5 82            [12] 1279 	mov	a,dpl
      002462 90 04 0A         [24] 1280 	mov	dptr,#_mannual_spi_number_65536_48
      002465 F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	spi_dac.c:360: int dac_value_index = 0;
      002466 90 04 0B         [24] 1283 	mov	dptr,#_mannual_spi_dac_value_index_65536_49
      002469 E4               [12] 1284 	clr	a
      00246A F0               [24] 1285 	movx	@dptr,a
      00246B A3               [24] 1286 	inc	dptr
      00246C F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	spi_dac.c:361: int dac_data = 0;
      00246D 90 04 0D         [24] 1289 	mov	dptr,#_mannual_spi_dac_data_65536_49
      002470 F0               [24] 1290 	movx	@dptr,a
      002471 A3               [24] 1291 	inc	dptr
      002472 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	spi_dac.c:363: while(number > 0)
      002473                       1294 00111$:
      002473 90 04 0A         [24] 1295 	mov	dptr,#_mannual_spi_number_65536_48
      002476 E0               [24] 1296 	movx	a,@dptr
      002477 70 01            [24] 1297 	jnz	00156$
      002479 22               [24] 1298 	ret
      00247A                       1299 00156$:
                                   1300 ;	spi_dac.c:366: for(int i = 0; i<256; i++)
      00247A 7E 00            [12] 1301 	mov	r6,#0x00
      00247C 7F 00            [12] 1302 	mov	r7,#0x00
      00247E                       1303 00115$:
      00247E C3               [12] 1304 	clr	c
      00247F EF               [12] 1305 	mov	a,r7
      002480 64 80            [12] 1306 	xrl	a,#0x80
      002482 94 81            [12] 1307 	subb	a,#0x81
      002484 40 03            [24] 1308 	jc	00157$
      002486 02 25 0E         [24] 1309 	ljmp	00110$
      002489                       1310 00157$:
                                   1311 ;	spi_dac.c:369: if(dac_value_index < SINE_MAX_INDEX)
      002489 90 04 0B         [24] 1312 	mov	dptr,#_mannual_spi_dac_value_index_65536_49
      00248C E0               [24] 1313 	movx	a,@dptr
      00248D FC               [12] 1314 	mov	r4,a
      00248E A3               [24] 1315 	inc	dptr
      00248F E0               [24] 1316 	movx	a,@dptr
      002490 FD               [12] 1317 	mov	r5,a
      002491 C3               [12] 1318 	clr	c
      002492 64 80            [12] 1319 	xrl	a,#0x80
      002494 94 81            [12] 1320 	subb	a,#0x81
      002496 50 21            [24] 1321 	jnc	00102$
                                   1322 ;	spi_dac.c:373: dac_data = dac_values[dac_value_index];
      002498 EC               [12] 1323 	mov	a,r4
      002499 2C               [12] 1324 	add	a,r4
      00249A FC               [12] 1325 	mov	r4,a
      00249B ED               [12] 1326 	mov	a,r5
      00249C 33               [12] 1327 	rlc	a
      00249D FD               [12] 1328 	mov	r5,a
      00249E EC               [12] 1329 	mov	a,r4
      00249F 24 2C            [12] 1330 	add	a,#_dac_values
      0024A1 F5 82            [12] 1331 	mov	dpl,a
      0024A3 ED               [12] 1332 	mov	a,r5
      0024A4 34 30            [12] 1333 	addc	a,#(_dac_values >> 8)
      0024A6 F5 83            [12] 1334 	mov	dph,a
      0024A8 E4               [12] 1335 	clr	a
      0024A9 93               [24] 1336 	movc	a,@a+dptr
      0024AA FC               [12] 1337 	mov	r4,a
      0024AB A3               [24] 1338 	inc	dptr
      0024AC E4               [12] 1339 	clr	a
      0024AD 93               [24] 1340 	movc	a,@a+dptr
      0024AE FD               [12] 1341 	mov	r5,a
      0024AF 90 04 0D         [24] 1342 	mov	dptr,#_mannual_spi_dac_data_65536_49
      0024B2 EC               [12] 1343 	mov	a,r4
      0024B3 F0               [24] 1344 	movx	@dptr,a
      0024B4 ED               [12] 1345 	mov	a,r5
      0024B5 A3               [24] 1346 	inc	dptr
      0024B6 F0               [24] 1347 	movx	@dptr,a
      0024B7 80 07            [24] 1348 	sjmp	00103$
      0024B9                       1349 00102$:
                                   1350 ;	spi_dac.c:377: dac_value_index = 0;  // Reset index for next cycle
      0024B9 90 04 0B         [24] 1351 	mov	dptr,#_mannual_spi_dac_value_index_65536_49
      0024BC E4               [12] 1352 	clr	a
      0024BD F0               [24] 1353 	movx	@dptr,a
      0024BE A3               [24] 1354 	inc	dptr
      0024BF F0               [24] 1355 	movx	@dptr,a
      0024C0                       1356 00103$:
                                   1357 ;	spi_dac.c:384: ((dac_data >> 4) & 0x0F);
      0024C0 90 04 0D         [24] 1358 	mov	dptr,#_mannual_spi_dac_data_65536_49
      0024C3 E0               [24] 1359 	movx	a,@dptr
      0024C4 FC               [12] 1360 	mov	r4,a
      0024C5 A3               [24] 1361 	inc	dptr
      0024C6 E0               [24] 1362 	movx	a,@dptr
      0024C7 8C 02            [24] 1363 	mov	ar2,r4
      0024C9 C4               [12] 1364 	swap	a
      0024CA CA               [12] 1365 	xch	a,r2
      0024CB C4               [12] 1366 	swap	a
      0024CC 54 0F            [12] 1367 	anl	a,#0x0f
      0024CE 6A               [12] 1368 	xrl	a,r2
      0024CF CA               [12] 1369 	xch	a,r2
      0024D0 54 0F            [12] 1370 	anl	a,#0x0f
      0024D2 CA               [12] 1371 	xch	a,r2
      0024D3 6A               [12] 1372 	xrl	a,r2
      0024D4 CA               [12] 1373 	xch	a,r2
      0024D5 30 E3 02         [24] 1374 	jnb	acc.3,00159$
      0024D8 44 F0            [12] 1375 	orl	a,#0xf0
      0024DA                       1376 00159$:
      0024DA 74 0F            [12] 1377 	mov	a,#0x0f
      0024DC 5A               [12] 1378 	anl	a,r2
      0024DD 44 10            [12] 1379 	orl	a,#0x10
      0024DF FB               [12] 1380 	mov	r3,a
                                   1381 ;	spi_dac.c:387: low_byte = (dac_data & 0x0F) << 4;
      0024E0 53 04 0F         [24] 1382 	anl	ar4,#0x0f
      0024E3 EC               [12] 1383 	mov	a,r4
      0024E4 C4               [12] 1384 	swap	a
      0024E5 54 F0            [12] 1385 	anl	a,#0xf0
      0024E7 FD               [12] 1386 	mov	r5,a
                                   1387 ;	spi_dac.c:391: P1_1 = 0;  // Select DAC
                                   1388 ;	assignBit
      0024E8 C2 91            [12] 1389 	clr	_P1_1
                                   1390 ;	spi_dac.c:394: SPDAT = high_byte;
      0024EA 8B C5            [24] 1391 	mov	_SPDAT,r3
                                   1392 ;	spi_dac.c:395: while (!(SPSTA & (1<<7))); 
      0024EC                       1393 00104$:
      0024EC E5 C4            [12] 1394 	mov	a,_SPSTA
      0024EE 30 E7 FB         [24] 1395 	jnb	acc.7,00104$
                                   1396 ;	spi_dac.c:399: SPDAT = low_byte;
      0024F1 8D C5            [24] 1397 	mov	_SPDAT,r5
                                   1398 ;	spi_dac.c:400: while (!(SPSTA & (1<<7))); 
      0024F3                       1399 00107$:
      0024F3 E5 C4            [12] 1400 	mov	a,_SPSTA
      0024F5 30 E7 FB         [24] 1401 	jnb	acc.7,00107$
                                   1402 ;	spi_dac.c:402: P1_1 = 1;  // Deselect DAC
                                   1403 ;	assignBit
      0024F8 D2 91            [12] 1404 	setb	_P1_1
                                   1405 ;	spi_dac.c:404: dac_value_index++;
      0024FA 90 04 0B         [24] 1406 	mov	dptr,#_mannual_spi_dac_value_index_65536_49
      0024FD E0               [24] 1407 	movx	a,@dptr
      0024FE 24 01            [12] 1408 	add	a,#0x01
      002500 F0               [24] 1409 	movx	@dptr,a
      002501 A3               [24] 1410 	inc	dptr
      002502 E0               [24] 1411 	movx	a,@dptr
      002503 34 00            [12] 1412 	addc	a,#0x00
      002505 F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	spi_dac.c:366: for(int i = 0; i<256; i++)
      002506 0E               [12] 1415 	inc	r6
      002507 BE 00 01         [24] 1416 	cjne	r6,#0x00,00162$
      00250A 0F               [12] 1417 	inc	r7
      00250B                       1418 00162$:
      00250B 02 24 7E         [24] 1419 	ljmp	00115$
      00250E                       1420 00110$:
                                   1421 ;	spi_dac.c:407: number = number - 1;
      00250E 90 04 0A         [24] 1422 	mov	dptr,#_mannual_spi_number_65536_48
      002511 E0               [24] 1423 	movx	a,@dptr
      002512 FF               [12] 1424 	mov	r7,a
      002513 14               [12] 1425 	dec	a
      002514 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	spi_dac.c:409: }
      002515 02 24 73         [24] 1428 	ljmp	00111$
                                   1429 ;------------------------------------------------------------
                                   1430 ;Allocation info for local variables in function 'spi_init'
                                   1431 ;------------------------------------------------------------
                                   1432 ;	spi_dac.c:420: void spi_init(void) 
                                   1433 ;	-----------------------------------------
                                   1434 ;	 function spi_init
                                   1435 ;	-----------------------------------------
      002518                       1436 _spi_init:
                                   1437 ;	spi_dac.c:441: SPCON |= 0x10;
      002518 43 C3 10         [24] 1438 	orl	_SPCON,#0x10
                                   1439 ;	spi_dac.c:442: SPCON |= 0x20;
      00251B 43 C3 20         [24] 1440 	orl	_SPCON,#0x20
                                   1441 ;	spi_dac.c:443: SPCON |= 0x40;
      00251E 43 C3 40         [24] 1442 	orl	_SPCON,#0x40
                                   1443 ;	spi_dac.c:450: }
      002521 22               [24] 1444 	ret
                                   1445 ;------------------------------------------------------------
                                   1446 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1447 ;------------------------------------------------------------
                                   1448 ;	spi_dac.c:452: void bit_bang_spi_init(void) {
                                   1449 ;	-----------------------------------------
                                   1450 ;	 function bit_bang_spi_init
                                   1451 ;	-----------------------------------------
      002522                       1452 _bit_bang_spi_init:
                                   1453 ;	spi_dac.c:453: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002522 75 C3 00         [24] 1454 	mov	_SPCON,#0x00
                                   1455 ;	spi_dac.c:454: SDA = DATA_HIGH;                 /* Set data line high */
                                   1456 ;	assignBit
      002525 D2 97            [12] 1457 	setb	_P1_7
                                   1458 ;	spi_dac.c:455: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1459 ;	assignBit
      002527 C2 96            [12] 1460 	clr	_P1_6
                                   1461 ;	spi_dac.c:456: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1462 ;	assignBit
      002529 D2 91            [12] 1463 	setb	_P1_1
                                   1464 ;	spi_dac.c:457: }
      00252B 22               [24] 1465 	ret
                                   1466 ;------------------------------------------------------------
                                   1467 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1468 ;------------------------------------------------------------
                                   1469 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_59'
                                   1470 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_60'
                                   1471 ;------------------------------------------------------------
                                   1472 ;	spi_dac.c:459: int bit_bang_spi_write(uint16_t data) {
                                   1473 ;	-----------------------------------------
                                   1474 ;	 function bit_bang_spi_write
                                   1475 ;	-----------------------------------------
      00252C                       1476 _bit_bang_spi_write:
      00252C AF 83            [24] 1477 	mov	r7,dph
      00252E E5 82            [12] 1478 	mov	a,dpl
      002530 90 04 0F         [24] 1479 	mov	dptr,#_bit_bang_spi_write_data_65536_59
      002533 F0               [24] 1480 	movx	@dptr,a
      002534 EF               [12] 1481 	mov	a,r7
      002535 A3               [24] 1482 	inc	dptr
      002536 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	spi_dac.c:462: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1485 ;	assignBit
      002537 C2 91            [12] 1486 	clr	_P1_1
                                   1487 ;	spi_dac.c:465: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002539 7E 00            [12] 1488 	mov	r6,#0x00
      00253B 7F 00            [12] 1489 	mov	r7,#0x00
      00253D                       1490 00102$:
                                   1491 ;	spi_dac.c:466: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      00253D 90 04 0F         [24] 1492 	mov	dptr,#_bit_bang_spi_write_data_65536_59
      002540 E0               [24] 1493 	movx	a,@dptr
      002541 FC               [12] 1494 	mov	r4,a
      002542 A3               [24] 1495 	inc	dptr
      002543 E0               [24] 1496 	movx	a,@dptr
      002544 FD               [12] 1497 	mov	r5,a
      002545 23               [12] 1498 	rl	a
      002546 54 01            [12] 1499 	anl	a,#0x01
      002548 24 FF            [12] 1500 	add	a,#0xff
      00254A 92 97            [24] 1501 	mov	_P1_7,c
                                   1502 ;	spi_dac.c:467: SCL = CLOCK_HIGH;            /* Clock high */
                                   1503 ;	assignBit
      00254C D2 96            [12] 1504 	setb	_P1_6
                                   1505 ;	spi_dac.c:468: SCL = CLOCK_LOW;             /* Clock low */
                                   1506 ;	assignBit
      00254E C2 96            [12] 1507 	clr	_P1_6
                                   1508 ;	spi_dac.c:469: data <<= 1;                  /* Shift to next bit */
      002550 EC               [12] 1509 	mov	a,r4
      002551 2C               [12] 1510 	add	a,r4
      002552 FC               [12] 1511 	mov	r4,a
      002553 ED               [12] 1512 	mov	a,r5
      002554 33               [12] 1513 	rlc	a
      002555 FD               [12] 1514 	mov	r5,a
      002556 90 04 0F         [24] 1515 	mov	dptr,#_bit_bang_spi_write_data_65536_59
      002559 EC               [12] 1516 	mov	a,r4
      00255A F0               [24] 1517 	movx	@dptr,a
      00255B ED               [12] 1518 	mov	a,r5
      00255C A3               [24] 1519 	inc	dptr
      00255D F0               [24] 1520 	movx	@dptr,a
                                   1521 ;	spi_dac.c:465: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00255E 0E               [12] 1522 	inc	r6
      00255F BE 00 01         [24] 1523 	cjne	r6,#0x00,00115$
      002562 0F               [12] 1524 	inc	r7
      002563                       1525 00115$:
      002563 C3               [12] 1526 	clr	c
      002564 EE               [12] 1527 	mov	a,r6
      002565 94 10            [12] 1528 	subb	a,#0x10
      002567 EF               [12] 1529 	mov	a,r7
      002568 94 00            [12] 1530 	subb	a,#0x00
      00256A 40 D1            [24] 1531 	jc	00102$
                                   1532 ;	spi_dac.c:473: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1533 ;	assignBit
      00256C D2 91            [12] 1534 	setb	_P1_1
                                   1535 ;	spi_dac.c:474: SCL = CLOCK_LOW;                 /* Clock low */
                                   1536 ;	assignBit
      00256E C2 96            [12] 1537 	clr	_P1_6
                                   1538 ;	spi_dac.c:475: SDA = DATA_HIGH;                 /* Data high */
                                   1539 ;	assignBit
      002570 D2 97            [12] 1540 	setb	_P1_7
                                   1541 ;	spi_dac.c:477: return 0;
      002572 90 00 00         [24] 1542 	mov	dptr,#0x0000
                                   1543 ;	spi_dac.c:478: }
      002575 22               [24] 1544 	ret
                                   1545 ;------------------------------------------------------------
                                   1546 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1547 ;------------------------------------------------------------
                                   1548 ;	spi_dac.c:485: void spi_transmission_start(void)
                                   1549 ;	-----------------------------------------
                                   1550 ;	 function spi_transmission_start
                                   1551 ;	-----------------------------------------
      002576                       1552 _spi_transmission_start:
                                   1553 ;	spi_dac.c:487: SPCON |= SPI_ENABLE;           // Enable SPI
      002576 43 C3 40         [24] 1554 	orl	_SPCON,#0x40
                                   1555 ;	spi_dac.c:488: P1_1 = 0;
                                   1556 ;	assignBit
      002579 C2 91            [12] 1557 	clr	_P1_1
                                   1558 ;	spi_dac.c:489: }
      00257B 22               [24] 1559 	ret
                                   1560 	.area CSEG    (CODE)
                                   1561 	.area CONST   (CODE)
      00302C                       1562 _dac_values:
      00302C 80 00                 1563 	.byte #0x80, #0x00	;  128
      00302E 83 00                 1564 	.byte #0x83, #0x00	;  131
      003030 86 00                 1565 	.byte #0x86, #0x00	;  134
      003032 89 00                 1566 	.byte #0x89, #0x00	;  137
      003034 8C 00                 1567 	.byte #0x8c, #0x00	;  140
      003036 90 00                 1568 	.byte #0x90, #0x00	;  144
      003038 93 00                 1569 	.byte #0x93, #0x00	;  147
      00303A 96 00                 1570 	.byte #0x96, #0x00	;  150
      00303C 99 00                 1571 	.byte #0x99, #0x00	;  153
      00303E 9C 00                 1572 	.byte #0x9c, #0x00	;  156
      003040 9F 00                 1573 	.byte #0x9f, #0x00	;  159
      003042 A2 00                 1574 	.byte #0xa2, #0x00	;  162
      003044 A5 00                 1575 	.byte #0xa5, #0x00	;  165
      003046 A8 00                 1576 	.byte #0xa8, #0x00	;  168
      003048 AB 00                 1577 	.byte #0xab, #0x00	;  171
      00304A AE 00                 1578 	.byte #0xae, #0x00	;  174
      00304C B1 00                 1579 	.byte #0xb1, #0x00	;  177
      00304E B3 00                 1580 	.byte #0xb3, #0x00	;  179
      003050 B6 00                 1581 	.byte #0xb6, #0x00	;  182
      003052 B9 00                 1582 	.byte #0xb9, #0x00	;  185
      003054 BC 00                 1583 	.byte #0xbc, #0x00	;  188
      003056 BF 00                 1584 	.byte #0xbf, #0x00	;  191
      003058 C1 00                 1585 	.byte #0xc1, #0x00	;  193
      00305A C4 00                 1586 	.byte #0xc4, #0x00	;  196
      00305C C7 00                 1587 	.byte #0xc7, #0x00	;  199
      00305E C9 00                 1588 	.byte #0xc9, #0x00	;  201
      003060 CC 00                 1589 	.byte #0xcc, #0x00	;  204
      003062 CE 00                 1590 	.byte #0xce, #0x00	;  206
      003064 D1 00                 1591 	.byte #0xd1, #0x00	;  209
      003066 D3 00                 1592 	.byte #0xd3, #0x00	;  211
      003068 D5 00                 1593 	.byte #0xd5, #0x00	;  213
      00306A D8 00                 1594 	.byte #0xd8, #0x00	;  216
      00306C DA 00                 1595 	.byte #0xda, #0x00	;  218
      00306E DC 00                 1596 	.byte #0xdc, #0x00	;  220
      003070 DE 00                 1597 	.byte #0xde, #0x00	;  222
      003072 E0 00                 1598 	.byte #0xe0, #0x00	;  224
      003074 E2 00                 1599 	.byte #0xe2, #0x00	;  226
      003076 E4 00                 1600 	.byte #0xe4, #0x00	;  228
      003078 E6 00                 1601 	.byte #0xe6, #0x00	;  230
      00307A E8 00                 1602 	.byte #0xe8, #0x00	;  232
      00307C EA 00                 1603 	.byte #0xea, #0x00	;  234
      00307E EB 00                 1604 	.byte #0xeb, #0x00	;  235
      003080 ED 00                 1605 	.byte #0xed, #0x00	;  237
      003082 EF 00                 1606 	.byte #0xef, #0x00	;  239
      003084 F0 00                 1607 	.byte #0xf0, #0x00	;  240
      003086 F1 00                 1608 	.byte #0xf1, #0x00	;  241
      003088 F3 00                 1609 	.byte #0xf3, #0x00	;  243
      00308A F4 00                 1610 	.byte #0xf4, #0x00	;  244
      00308C F5 00                 1611 	.byte #0xf5, #0x00	;  245
      00308E F6 00                 1612 	.byte #0xf6, #0x00	;  246
      003090 F8 00                 1613 	.byte #0xf8, #0x00	;  248
      003092 F9 00                 1614 	.byte #0xf9, #0x00	;  249
      003094 FA 00                 1615 	.byte #0xfa, #0x00	;  250
      003096 FA 00                 1616 	.byte #0xfa, #0x00	;  250
      003098 FB 00                 1617 	.byte #0xfb, #0x00	;  251
      00309A FC 00                 1618 	.byte #0xfc, #0x00	;  252
      00309C FD 00                 1619 	.byte #0xfd, #0x00	;  253
      00309E FD 00                 1620 	.byte #0xfd, #0x00	;  253
      0030A0 FE 00                 1621 	.byte #0xfe, #0x00	;  254
      0030A2 FE 00                 1622 	.byte #0xfe, #0x00	;  254
      0030A4 FE 00                 1623 	.byte #0xfe, #0x00	;  254
      0030A6 FF 00                 1624 	.byte #0xff, #0x00	;  255
      0030A8 FF 00                 1625 	.byte #0xff, #0x00	;  255
      0030AA FF 00                 1626 	.byte #0xff, #0x00	;  255
      0030AC FF 00                 1627 	.byte #0xff, #0x00	;  255
      0030AE FF 00                 1628 	.byte #0xff, #0x00	;  255
      0030B0 FF 00                 1629 	.byte #0xff, #0x00	;  255
      0030B2 FF 00                 1630 	.byte #0xff, #0x00	;  255
      0030B4 FE 00                 1631 	.byte #0xfe, #0x00	;  254
      0030B6 FE 00                 1632 	.byte #0xfe, #0x00	;  254
      0030B8 FE 00                 1633 	.byte #0xfe, #0x00	;  254
      0030BA FD 00                 1634 	.byte #0xfd, #0x00	;  253
      0030BC FD 00                 1635 	.byte #0xfd, #0x00	;  253
      0030BE FC 00                 1636 	.byte #0xfc, #0x00	;  252
      0030C0 FB 00                 1637 	.byte #0xfb, #0x00	;  251
      0030C2 FA 00                 1638 	.byte #0xfa, #0x00	;  250
      0030C4 FA 00                 1639 	.byte #0xfa, #0x00	;  250
      0030C6 F9 00                 1640 	.byte #0xf9, #0x00	;  249
      0030C8 F8 00                 1641 	.byte #0xf8, #0x00	;  248
      0030CA F6 00                 1642 	.byte #0xf6, #0x00	;  246
      0030CC F5 00                 1643 	.byte #0xf5, #0x00	;  245
      0030CE F4 00                 1644 	.byte #0xf4, #0x00	;  244
      0030D0 F3 00                 1645 	.byte #0xf3, #0x00	;  243
      0030D2 F1 00                 1646 	.byte #0xf1, #0x00	;  241
      0030D4 F0 00                 1647 	.byte #0xf0, #0x00	;  240
      0030D6 EF 00                 1648 	.byte #0xef, #0x00	;  239
      0030D8 ED 00                 1649 	.byte #0xed, #0x00	;  237
      0030DA EB 00                 1650 	.byte #0xeb, #0x00	;  235
      0030DC EA 00                 1651 	.byte #0xea, #0x00	;  234
      0030DE E8 00                 1652 	.byte #0xe8, #0x00	;  232
      0030E0 E6 00                 1653 	.byte #0xe6, #0x00	;  230
      0030E2 E4 00                 1654 	.byte #0xe4, #0x00	;  228
      0030E4 E2 00                 1655 	.byte #0xe2, #0x00	;  226
      0030E6 E0 00                 1656 	.byte #0xe0, #0x00	;  224
      0030E8 DE 00                 1657 	.byte #0xde, #0x00	;  222
      0030EA DC 00                 1658 	.byte #0xdc, #0x00	;  220
      0030EC DA 00                 1659 	.byte #0xda, #0x00	;  218
      0030EE D8 00                 1660 	.byte #0xd8, #0x00	;  216
      0030F0 D5 00                 1661 	.byte #0xd5, #0x00	;  213
      0030F2 D3 00                 1662 	.byte #0xd3, #0x00	;  211
      0030F4 D1 00                 1663 	.byte #0xd1, #0x00	;  209
      0030F6 CE 00                 1664 	.byte #0xce, #0x00	;  206
      0030F8 CC 00                 1665 	.byte #0xcc, #0x00	;  204
      0030FA C9 00                 1666 	.byte #0xc9, #0x00	;  201
      0030FC C7 00                 1667 	.byte #0xc7, #0x00	;  199
      0030FE C4 00                 1668 	.byte #0xc4, #0x00	;  196
      003100 C1 00                 1669 	.byte #0xc1, #0x00	;  193
      003102 BF 00                 1670 	.byte #0xbf, #0x00	;  191
      003104 BC 00                 1671 	.byte #0xbc, #0x00	;  188
      003106 B9 00                 1672 	.byte #0xb9, #0x00	;  185
      003108 B6 00                 1673 	.byte #0xb6, #0x00	;  182
      00310A B3 00                 1674 	.byte #0xb3, #0x00	;  179
      00310C B1 00                 1675 	.byte #0xb1, #0x00	;  177
      00310E AE 00                 1676 	.byte #0xae, #0x00	;  174
      003110 AB 00                 1677 	.byte #0xab, #0x00	;  171
      003112 A8 00                 1678 	.byte #0xa8, #0x00	;  168
      003114 A5 00                 1679 	.byte #0xa5, #0x00	;  165
      003116 A2 00                 1680 	.byte #0xa2, #0x00	;  162
      003118 9F 00                 1681 	.byte #0x9f, #0x00	;  159
      00311A 9C 00                 1682 	.byte #0x9c, #0x00	;  156
      00311C 99 00                 1683 	.byte #0x99, #0x00	;  153
      00311E 96 00                 1684 	.byte #0x96, #0x00	;  150
      003120 93 00                 1685 	.byte #0x93, #0x00	;  147
      003122 90 00                 1686 	.byte #0x90, #0x00	;  144
      003124 8C 00                 1687 	.byte #0x8c, #0x00	;  140
      003126 89 00                 1688 	.byte #0x89, #0x00	;  137
      003128 86 00                 1689 	.byte #0x86, #0x00	;  134
      00312A 83 00                 1690 	.byte #0x83, #0x00	;  131
      00312C 80 00                 1691 	.byte #0x80, #0x00	;  128
      00312E 7D 00                 1692 	.byte #0x7d, #0x00	;  125
      003130 7A 00                 1693 	.byte #0x7a, #0x00	;  122
      003132 77 00                 1694 	.byte #0x77, #0x00	;  119
      003134 74 00                 1695 	.byte #0x74, #0x00	;  116
      003136 70 00                 1696 	.byte #0x70, #0x00	;  112
      003138 6D 00                 1697 	.byte #0x6d, #0x00	;  109
      00313A 6A 00                 1698 	.byte #0x6a, #0x00	;  106
      00313C 67 00                 1699 	.byte #0x67, #0x00	;  103
      00313E 64 00                 1700 	.byte #0x64, #0x00	;  100
      003140 61 00                 1701 	.byte #0x61, #0x00	;  97
      003142 5E 00                 1702 	.byte #0x5e, #0x00	;  94
      003144 5B 00                 1703 	.byte #0x5b, #0x00	;  91
      003146 58 00                 1704 	.byte #0x58, #0x00	;  88
      003148 55 00                 1705 	.byte #0x55, #0x00	;  85
      00314A 52 00                 1706 	.byte #0x52, #0x00	;  82
      00314C 4F 00                 1707 	.byte #0x4f, #0x00	;  79
      00314E 4D 00                 1708 	.byte #0x4d, #0x00	;  77
      003150 4A 00                 1709 	.byte #0x4a, #0x00	;  74
      003152 47 00                 1710 	.byte #0x47, #0x00	;  71
      003154 44 00                 1711 	.byte #0x44, #0x00	;  68
      003156 41 00                 1712 	.byte #0x41, #0x00	;  65
      003158 3F 00                 1713 	.byte #0x3f, #0x00	;  63
      00315A 3C 00                 1714 	.byte #0x3c, #0x00	;  60
      00315C 39 00                 1715 	.byte #0x39, #0x00	;  57
      00315E 37 00                 1716 	.byte #0x37, #0x00	;  55
      003160 34 00                 1717 	.byte #0x34, #0x00	;  52
      003162 32 00                 1718 	.byte #0x32, #0x00	;  50
      003164 2F 00                 1719 	.byte #0x2f, #0x00	;  47
      003166 2D 00                 1720 	.byte #0x2d, #0x00	;  45
      003168 2B 00                 1721 	.byte #0x2b, #0x00	;  43
      00316A 28 00                 1722 	.byte #0x28, #0x00	;  40
      00316C 26 00                 1723 	.byte #0x26, #0x00	;  38
      00316E 24 00                 1724 	.byte #0x24, #0x00	;  36
      003170 22 00                 1725 	.byte #0x22, #0x00	;  34
      003172 20 00                 1726 	.byte #0x20, #0x00	;  32
      003174 1E 00                 1727 	.byte #0x1e, #0x00	;  30
      003176 1C 00                 1728 	.byte #0x1c, #0x00	;  28
      003178 1A 00                 1729 	.byte #0x1a, #0x00	;  26
      00317A 18 00                 1730 	.byte #0x18, #0x00	;  24
      00317C 16 00                 1731 	.byte #0x16, #0x00	;  22
      00317E 15 00                 1732 	.byte #0x15, #0x00	;  21
      003180 13 00                 1733 	.byte #0x13, #0x00	;  19
      003182 11 00                 1734 	.byte #0x11, #0x00	;  17
      003184 10 00                 1735 	.byte #0x10, #0x00	;  16
      003186 0F 00                 1736 	.byte #0x0f, #0x00	;  15
      003188 0D 00                 1737 	.byte #0x0d, #0x00	;  13
      00318A 0C 00                 1738 	.byte #0x0c, #0x00	;  12
      00318C 0B 00                 1739 	.byte #0x0b, #0x00	;  11
      00318E 0A 00                 1740 	.byte #0x0a, #0x00	;  10
      003190 08 00                 1741 	.byte #0x08, #0x00	;  8
      003192 07 00                 1742 	.byte #0x07, #0x00	;  7
      003194 06 00                 1743 	.byte #0x06, #0x00	;  6
      003196 06 00                 1744 	.byte #0x06, #0x00	;  6
      003198 05 00                 1745 	.byte #0x05, #0x00	;  5
      00319A 04 00                 1746 	.byte #0x04, #0x00	;  4
      00319C 03 00                 1747 	.byte #0x03, #0x00	;  3
      00319E 03 00                 1748 	.byte #0x03, #0x00	;  3
      0031A0 02 00                 1749 	.byte #0x02, #0x00	;  2
      0031A2 02 00                 1750 	.byte #0x02, #0x00	;  2
      0031A4 02 00                 1751 	.byte #0x02, #0x00	;  2
      0031A6 01 00                 1752 	.byte #0x01, #0x00	;  1
      0031A8 01 00                 1753 	.byte #0x01, #0x00	;  1
      0031AA 01 00                 1754 	.byte #0x01, #0x00	;  1
      0031AC 01 00                 1755 	.byte #0x01, #0x00	;  1
      0031AE 01 00                 1756 	.byte #0x01, #0x00	;  1
      0031B0 01 00                 1757 	.byte #0x01, #0x00	;  1
      0031B2 01 00                 1758 	.byte #0x01, #0x00	;  1
      0031B4 02 00                 1759 	.byte #0x02, #0x00	;  2
      0031B6 02 00                 1760 	.byte #0x02, #0x00	;  2
      0031B8 02 00                 1761 	.byte #0x02, #0x00	;  2
      0031BA 03 00                 1762 	.byte #0x03, #0x00	;  3
      0031BC 03 00                 1763 	.byte #0x03, #0x00	;  3
      0031BE 04 00                 1764 	.byte #0x04, #0x00	;  4
      0031C0 05 00                 1765 	.byte #0x05, #0x00	;  5
      0031C2 06 00                 1766 	.byte #0x06, #0x00	;  6
      0031C4 06 00                 1767 	.byte #0x06, #0x00	;  6
      0031C6 07 00                 1768 	.byte #0x07, #0x00	;  7
      0031C8 08 00                 1769 	.byte #0x08, #0x00	;  8
      0031CA 0A 00                 1770 	.byte #0x0a, #0x00	;  10
      0031CC 0B 00                 1771 	.byte #0x0b, #0x00	;  11
      0031CE 0C 00                 1772 	.byte #0x0c, #0x00	;  12
      0031D0 0D 00                 1773 	.byte #0x0d, #0x00	;  13
      0031D2 0F 00                 1774 	.byte #0x0f, #0x00	;  15
      0031D4 10 00                 1775 	.byte #0x10, #0x00	;  16
      0031D6 11 00                 1776 	.byte #0x11, #0x00	;  17
      0031D8 13 00                 1777 	.byte #0x13, #0x00	;  19
      0031DA 15 00                 1778 	.byte #0x15, #0x00	;  21
      0031DC 16 00                 1779 	.byte #0x16, #0x00	;  22
      0031DE 18 00                 1780 	.byte #0x18, #0x00	;  24
      0031E0 1A 00                 1781 	.byte #0x1a, #0x00	;  26
      0031E2 1C 00                 1782 	.byte #0x1c, #0x00	;  28
      0031E4 1E 00                 1783 	.byte #0x1e, #0x00	;  30
      0031E6 20 00                 1784 	.byte #0x20, #0x00	;  32
      0031E8 22 00                 1785 	.byte #0x22, #0x00	;  34
      0031EA 24 00                 1786 	.byte #0x24, #0x00	;  36
      0031EC 26 00                 1787 	.byte #0x26, #0x00	;  38
      0031EE 28 00                 1788 	.byte #0x28, #0x00	;  40
      0031F0 2B 00                 1789 	.byte #0x2b, #0x00	;  43
      0031F2 2D 00                 1790 	.byte #0x2d, #0x00	;  45
      0031F4 2F 00                 1791 	.byte #0x2f, #0x00	;  47
      0031F6 32 00                 1792 	.byte #0x32, #0x00	;  50
      0031F8 34 00                 1793 	.byte #0x34, #0x00	;  52
      0031FA 37 00                 1794 	.byte #0x37, #0x00	;  55
      0031FC 39 00                 1795 	.byte #0x39, #0x00	;  57
      0031FE 3C 00                 1796 	.byte #0x3c, #0x00	;  60
      003200 3F 00                 1797 	.byte #0x3f, #0x00	;  63
      003202 41 00                 1798 	.byte #0x41, #0x00	;  65
      003204 44 00                 1799 	.byte #0x44, #0x00	;  68
      003206 47 00                 1800 	.byte #0x47, #0x00	;  71
      003208 4A 00                 1801 	.byte #0x4a, #0x00	;  74
      00320A 4D 00                 1802 	.byte #0x4d, #0x00	;  77
      00320C 4F 00                 1803 	.byte #0x4f, #0x00	;  79
      00320E 52 00                 1804 	.byte #0x52, #0x00	;  82
      003210 55 00                 1805 	.byte #0x55, #0x00	;  85
      003212 58 00                 1806 	.byte #0x58, #0x00	;  88
      003214 5B 00                 1807 	.byte #0x5b, #0x00	;  91
      003216 5E 00                 1808 	.byte #0x5e, #0x00	;  94
      003218 61 00                 1809 	.byte #0x61, #0x00	;  97
      00321A 64 00                 1810 	.byte #0x64, #0x00	;  100
      00321C 67 00                 1811 	.byte #0x67, #0x00	;  103
      00321E 6A 00                 1812 	.byte #0x6a, #0x00	;  106
      003220 6D 00                 1813 	.byte #0x6d, #0x00	;  109
      003222 70 00                 1814 	.byte #0x70, #0x00	;  112
      003224 74 00                 1815 	.byte #0x74, #0x00	;  116
      003226 77 00                 1816 	.byte #0x77, #0x00	;  119
      003228 7A 00                 1817 	.byte #0x7a, #0x00	;  122
      00322A 7D 00                 1818 	.byte #0x7d, #0x00	;  125
                                   1819 	.area CONST   (CODE)
      00322C                       1820 ___str_0:
      00322C 0A                    1821 	.db 0x0a
      00322D 0D                    1822 	.db 0x0d
      00322E E2                    1823 	.db 0xe2
      00322F 94                    1824 	.db 0x94
      003230 8C                    1825 	.db 0x8c
      003231 E2                    1826 	.db 0xe2
      003232 94                    1827 	.db 0x94
      003233 80                    1828 	.db 0x80
      003234 E2                    1829 	.db 0xe2
      003235 94                    1830 	.db 0x94
      003236 80                    1831 	.db 0x80
      003237 E2                    1832 	.db 0xe2
      003238 94                    1833 	.db 0x94
      003239 80                    1834 	.db 0x80
      00323A E2                    1835 	.db 0xe2
      00323B 94                    1836 	.db 0x94
      00323C 80                    1837 	.db 0x80
      00323D E2                    1838 	.db 0xe2
      00323E 94                    1839 	.db 0x94
      00323F 80                    1840 	.db 0x80
      003240 E2                    1841 	.db 0xe2
      003241 94                    1842 	.db 0x94
      003242 80                    1843 	.db 0x80
      003243 E2                    1844 	.db 0xe2
      003244 94                    1845 	.db 0x94
      003245 80                    1846 	.db 0x80
      003246 E2                    1847 	.db 0xe2
      003247 94                    1848 	.db 0x94
      003248 80                    1849 	.db 0x80
      003249 E2                    1850 	.db 0xe2
      00324A 94                    1851 	.db 0x94
      00324B 80                    1852 	.db 0x80
      00324C E2                    1853 	.db 0xe2
      00324D 94                    1854 	.db 0x94
      00324E 80                    1855 	.db 0x80
      00324F E2                    1856 	.db 0xe2
      003250 94                    1857 	.db 0x94
      003251 80                    1858 	.db 0x80
      003252 E2                    1859 	.db 0xe2
      003253 94                    1860 	.db 0x94
      003254 80                    1861 	.db 0x80
      003255 E2                    1862 	.db 0xe2
      003256 94                    1863 	.db 0x94
      003257 80                    1864 	.db 0x80
      003258 E2                    1865 	.db 0xe2
      003259 94                    1866 	.db 0x94
      00325A 80                    1867 	.db 0x80
      00325B E2                    1868 	.db 0xe2
      00325C 94                    1869 	.db 0x94
      00325D 80                    1870 	.db 0x80
      00325E E2                    1871 	.db 0xe2
      00325F 94                    1872 	.db 0x94
      003260 80                    1873 	.db 0x80
      003261 E2                    1874 	.db 0xe2
      003262 94                    1875 	.db 0x94
      003263 80                    1876 	.db 0x80
      003264 E2                    1877 	.db 0xe2
      003265 94                    1878 	.db 0x94
      003266 80                    1879 	.db 0x80
      003267 E2                    1880 	.db 0xe2
      003268 94                    1881 	.db 0x94
      003269 80                    1882 	.db 0x80
      00326A E2                    1883 	.db 0xe2
      00326B 94                    1884 	.db 0x94
      00326C 80                    1885 	.db 0x80
      00326D E2                    1886 	.db 0xe2
      00326E 94                    1887 	.db 0x94
      00326F 80                    1888 	.db 0x80
      003270 E2                    1889 	.db 0xe2
      003271 94                    1890 	.db 0x94
      003272 80                    1891 	.db 0x80
      003273 E2                    1892 	.db 0xe2
      003274 94                    1893 	.db 0x94
      003275 80                    1894 	.db 0x80
      003276 E2                    1895 	.db 0xe2
      003277 94                    1896 	.db 0x94
      003278 80                    1897 	.db 0x80
      003279 E2                    1898 	.db 0xe2
      00327A 94                    1899 	.db 0x94
      00327B 80                    1900 	.db 0x80
      00327C E2                    1901 	.db 0xe2
      00327D 94                    1902 	.db 0x94
      00327E 80                    1903 	.db 0x80
      00327F E2                    1904 	.db 0xe2
      003280 94                    1905 	.db 0x94
      003281 80                    1906 	.db 0x80
      003282 E2                    1907 	.db 0xe2
      003283 94                    1908 	.db 0x94
      003284 80                    1909 	.db 0x80
      003285 E2                    1910 	.db 0xe2
      003286 94                    1911 	.db 0x94
      003287 80                    1912 	.db 0x80
      003288 E2                    1913 	.db 0xe2
      003289 94                    1914 	.db 0x94
      00328A 80                    1915 	.db 0x80
      00328B E2                    1916 	.db 0xe2
      00328C 94                    1917 	.db 0x94
      00328D 80                    1918 	.db 0x80
      00328E E2                    1919 	.db 0xe2
      00328F 94                    1920 	.db 0x94
      003290 80                    1921 	.db 0x80
      003291 E2                    1922 	.db 0xe2
      003292 94                    1923 	.db 0x94
      003293 80                    1924 	.db 0x80
      003294 E2                    1925 	.db 0xe2
      003295 94                    1926 	.db 0x94
      003296 80                    1927 	.db 0x80
      003297 E2                    1928 	.db 0xe2
      003298 94                    1929 	.db 0x94
      003299 80                    1930 	.db 0x80
      00329A E2                    1931 	.db 0xe2
      00329B 94                    1932 	.db 0x94
      00329C 80                    1933 	.db 0x80
      00329D E2                    1934 	.db 0xe2
      00329E 94                    1935 	.db 0x94
      00329F 80                    1936 	.db 0x80
      0032A0 E2                    1937 	.db 0xe2
      0032A1 94                    1938 	.db 0x94
      0032A2 80                    1939 	.db 0x80
      0032A3 E2                    1940 	.db 0xe2
      0032A4 94                    1941 	.db 0x94
      0032A5 80                    1942 	.db 0x80
      0032A6 E2                    1943 	.db 0xe2
      0032A7 94                    1944 	.db 0x94
      0032A8 80                    1945 	.db 0x80
      0032A9 E2                    1946 	.db 0xe2
      0032AA 94                    1947 	.db 0x94
      0032AB 80                    1948 	.db 0x80
      0032AC E2                    1949 	.db 0xe2
      0032AD 94                    1950 	.db 0x94
      0032AE 80                    1951 	.db 0x80
      0032AF E2                    1952 	.db 0xe2
      0032B0 94                    1953 	.db 0x94
      0032B1 80                    1954 	.db 0x80
      0032B2 E2                    1955 	.db 0xe2
      0032B3 94                    1956 	.db 0x94
      0032B4 80                    1957 	.db 0x80
      0032B5 E2                    1958 	.db 0xe2
      0032B6 94                    1959 	.db 0x94
      0032B7 80                    1960 	.db 0x80
      0032B8 E2                    1961 	.db 0xe2
      0032B9 94                    1962 	.db 0x94
      0032BA 80                    1963 	.db 0x80
      0032BB E2                    1964 	.db 0xe2
      0032BC 94                    1965 	.db 0x94
      0032BD 80                    1966 	.db 0x80
      0032BE E2                    1967 	.db 0xe2
      0032BF 94                    1968 	.db 0x94
      0032C0 80                    1969 	.db 0x80
      0032C1 E2                    1970 	.db 0xe2
      0032C2 94                    1971 	.db 0x94
      0032C3 80                    1972 	.db 0x80
      0032C4 E2                    1973 	.db 0xe2
      0032C5 94                    1974 	.db 0x94
      0032C6 80                    1975 	.db 0x80
      0032C7 E2                    1976 	.db 0xe2
      0032C8 94                    1977 	.db 0x94
      0032C9 80                    1978 	.db 0x80
      0032CA E2                    1979 	.db 0xe2
      0032CB 94                    1980 	.db 0x94
      0032CC 80                    1981 	.db 0x80
      0032CD E2                    1982 	.db 0xe2
      0032CE 94                    1983 	.db 0x94
      0032CF 80                    1984 	.db 0x80
      0032D0 E2                    1985 	.db 0xe2
      0032D1 94                    1986 	.db 0x94
      0032D2 80                    1987 	.db 0x80
      0032D3 E2                    1988 	.db 0xe2
      0032D4 94                    1989 	.db 0x94
      0032D5 80                    1990 	.db 0x80
      0032D6 E2                    1991 	.db 0xe2
      0032D7 94                    1992 	.db 0x94
      0032D8 80                    1993 	.db 0x80
      0032D9 E2                    1994 	.db 0xe2
      0032DA 94                    1995 	.db 0x94
      0032DB 80                    1996 	.db 0x80
      0032DC E2                    1997 	.db 0xe2
      0032DD 94                    1998 	.db 0x94
      0032DE 80                    1999 	.db 0x80
      0032DF E2                    2000 	.db 0xe2
      0032E0 94                    2001 	.db 0x94
      0032E1 80                    2002 	.db 0x80
      0032E2 E2                    2003 	.db 0xe2
      0032E3 94                    2004 	.db 0x94
      0032E4 80                    2005 	.db 0x80
      0032E5 E2                    2006 	.db 0xe2
      0032E6 94                    2007 	.db 0x94
      0032E7 80                    2008 	.db 0x80
      0032E8 E2                    2009 	.db 0xe2
      0032E9 94                    2010 	.db 0x94
      0032EA 80                    2011 	.db 0x80
      0032EB E2                    2012 	.db 0xe2
      0032EC 94                    2013 	.db 0x94
      0032ED 90                    2014 	.db 0x90
      0032EE 0A                    2015 	.db 0x0a
      0032EF 0D                    2016 	.db 0x0d
      0032F0 00                    2017 	.db 0x00
                                   2018 	.area CSEG    (CODE)
                                   2019 	.area CONST   (CODE)
      0032F1                       2020 ___str_1:
      0032F1 E2                    2021 	.db 0xe2
      0032F2 94                    2022 	.db 0x94
      0032F3 82                    2023 	.db 0x82
      0032F4 20 20 20 20 20 20 20  2024 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003330 20 20                 2025 	.ascii "  "
      003332 E2                    2026 	.db 0xe2
      003333 94                    2027 	.db 0x94
      003334 82                    2028 	.db 0x82
      003335 0A                    2029 	.db 0x0a
      003336 0D                    2030 	.db 0x0d
      003337 00                    2031 	.db 0x00
                                   2032 	.area CSEG    (CODE)
                                   2033 	.area CONST   (CODE)
      003338                       2034 ___str_2:
      003338 E2                    2035 	.db 0xe2
      003339 94                    2036 	.db 0x94
      00333A 9C                    2037 	.db 0x9c
      00333B E2                    2038 	.db 0xe2
      00333C 94                    2039 	.db 0x94
      00333D 80                    2040 	.db 0x80
      00333E E2                    2041 	.db 0xe2
      00333F 94                    2042 	.db 0x94
      003340 80                    2043 	.db 0x80
      003341 E2                    2044 	.db 0xe2
      003342 94                    2045 	.db 0x94
      003343 80                    2046 	.db 0x80
      003344 E2                    2047 	.db 0xe2
      003345 94                    2048 	.db 0x94
      003346 80                    2049 	.db 0x80
      003347 E2                    2050 	.db 0xe2
      003348 94                    2051 	.db 0x94
      003349 80                    2052 	.db 0x80
      00334A E2                    2053 	.db 0xe2
      00334B 94                    2054 	.db 0x94
      00334C 80                    2055 	.db 0x80
      00334D E2                    2056 	.db 0xe2
      00334E 94                    2057 	.db 0x94
      00334F 80                    2058 	.db 0x80
      003350 E2                    2059 	.db 0xe2
      003351 94                    2060 	.db 0x94
      003352 80                    2061 	.db 0x80
      003353 E2                    2062 	.db 0xe2
      003354 94                    2063 	.db 0x94
      003355 80                    2064 	.db 0x80
      003356 E2                    2065 	.db 0xe2
      003357 94                    2066 	.db 0x94
      003358 80                    2067 	.db 0x80
      003359 E2                    2068 	.db 0xe2
      00335A 94                    2069 	.db 0x94
      00335B 80                    2070 	.db 0x80
      00335C E2                    2071 	.db 0xe2
      00335D 94                    2072 	.db 0x94
      00335E 80                    2073 	.db 0x80
      00335F E2                    2074 	.db 0xe2
      003360 94                    2075 	.db 0x94
      003361 80                    2076 	.db 0x80
      003362 E2                    2077 	.db 0xe2
      003363 94                    2078 	.db 0x94
      003364 80                    2079 	.db 0x80
      003365 E2                    2080 	.db 0xe2
      003366 94                    2081 	.db 0x94
      003367 80                    2082 	.db 0x80
      003368 E2                    2083 	.db 0xe2
      003369 94                    2084 	.db 0x94
      00336A 80                    2085 	.db 0x80
      00336B E2                    2086 	.db 0xe2
      00336C 94                    2087 	.db 0x94
      00336D 80                    2088 	.db 0x80
      00336E E2                    2089 	.db 0xe2
      00336F 94                    2090 	.db 0x94
      003370 80                    2091 	.db 0x80
      003371 E2                    2092 	.db 0xe2
      003372 94                    2093 	.db 0x94
      003373 80                    2094 	.db 0x80
      003374 E2                    2095 	.db 0xe2
      003375 94                    2096 	.db 0x94
      003376 80                    2097 	.db 0x80
      003377 E2                    2098 	.db 0xe2
      003378 94                    2099 	.db 0x94
      003379 80                    2100 	.db 0x80
      00337A E2                    2101 	.db 0xe2
      00337B 94                    2102 	.db 0x94
      00337C 80                    2103 	.db 0x80
      00337D E2                    2104 	.db 0xe2
      00337E 94                    2105 	.db 0x94
      00337F 80                    2106 	.db 0x80
      003380 E2                    2107 	.db 0xe2
      003381 94                    2108 	.db 0x94
      003382 80                    2109 	.db 0x80
      003383 E2                    2110 	.db 0xe2
      003384 94                    2111 	.db 0x94
      003385 80                    2112 	.db 0x80
      003386 E2                    2113 	.db 0xe2
      003387 94                    2114 	.db 0x94
      003388 80                    2115 	.db 0x80
      003389 E2                    2116 	.db 0xe2
      00338A 94                    2117 	.db 0x94
      00338B 80                    2118 	.db 0x80
      00338C E2                    2119 	.db 0xe2
      00338D 94                    2120 	.db 0x94
      00338E 80                    2121 	.db 0x80
      00338F E2                    2122 	.db 0xe2
      003390 94                    2123 	.db 0x94
      003391 80                    2124 	.db 0x80
      003392 E2                    2125 	.db 0xe2
      003393 94                    2126 	.db 0x94
      003394 80                    2127 	.db 0x80
      003395 E2                    2128 	.db 0xe2
      003396 94                    2129 	.db 0x94
      003397 80                    2130 	.db 0x80
      003398 E2                    2131 	.db 0xe2
      003399 94                    2132 	.db 0x94
      00339A 80                    2133 	.db 0x80
      00339B E2                    2134 	.db 0xe2
      00339C 94                    2135 	.db 0x94
      00339D 80                    2136 	.db 0x80
      00339E E2                    2137 	.db 0xe2
      00339F 94                    2138 	.db 0x94
      0033A0 80                    2139 	.db 0x80
      0033A1 E2                    2140 	.db 0xe2
      0033A2 94                    2141 	.db 0x94
      0033A3 80                    2142 	.db 0x80
      0033A4 E2                    2143 	.db 0xe2
      0033A5 94                    2144 	.db 0x94
      0033A6 80                    2145 	.db 0x80
      0033A7 E2                    2146 	.db 0xe2
      0033A8 94                    2147 	.db 0x94
      0033A9 80                    2148 	.db 0x80
      0033AA E2                    2149 	.db 0xe2
      0033AB 94                    2150 	.db 0x94
      0033AC 80                    2151 	.db 0x80
      0033AD E2                    2152 	.db 0xe2
      0033AE 94                    2153 	.db 0x94
      0033AF 80                    2154 	.db 0x80
      0033B0 E2                    2155 	.db 0xe2
      0033B1 94                    2156 	.db 0x94
      0033B2 80                    2157 	.db 0x80
      0033B3 E2                    2158 	.db 0xe2
      0033B4 94                    2159 	.db 0x94
      0033B5 80                    2160 	.db 0x80
      0033B6 E2                    2161 	.db 0xe2
      0033B7 94                    2162 	.db 0x94
      0033B8 80                    2163 	.db 0x80
      0033B9 E2                    2164 	.db 0xe2
      0033BA 94                    2165 	.db 0x94
      0033BB 80                    2166 	.db 0x80
      0033BC E2                    2167 	.db 0xe2
      0033BD 94                    2168 	.db 0x94
      0033BE 80                    2169 	.db 0x80
      0033BF E2                    2170 	.db 0xe2
      0033C0 94                    2171 	.db 0x94
      0033C1 80                    2172 	.db 0x80
      0033C2 E2                    2173 	.db 0xe2
      0033C3 94                    2174 	.db 0x94
      0033C4 80                    2175 	.db 0x80
      0033C5 E2                    2176 	.db 0xe2
      0033C6 94                    2177 	.db 0x94
      0033C7 80                    2178 	.db 0x80
      0033C8 E2                    2179 	.db 0xe2
      0033C9 94                    2180 	.db 0x94
      0033CA 80                    2181 	.db 0x80
      0033CB E2                    2182 	.db 0xe2
      0033CC 94                    2183 	.db 0x94
      0033CD 80                    2184 	.db 0x80
      0033CE E2                    2185 	.db 0xe2
      0033CF 94                    2186 	.db 0x94
      0033D0 80                    2187 	.db 0x80
      0033D1 E2                    2188 	.db 0xe2
      0033D2 94                    2189 	.db 0x94
      0033D3 80                    2190 	.db 0x80
      0033D4 E2                    2191 	.db 0xe2
      0033D5 94                    2192 	.db 0x94
      0033D6 80                    2193 	.db 0x80
      0033D7 E2                    2194 	.db 0xe2
      0033D8 94                    2195 	.db 0x94
      0033D9 80                    2196 	.db 0x80
      0033DA E2                    2197 	.db 0xe2
      0033DB 94                    2198 	.db 0x94
      0033DC 80                    2199 	.db 0x80
      0033DD E2                    2200 	.db 0xe2
      0033DE 94                    2201 	.db 0x94
      0033DF 80                    2202 	.db 0x80
      0033E0 E2                    2203 	.db 0xe2
      0033E1 94                    2204 	.db 0x94
      0033E2 80                    2205 	.db 0x80
      0033E3 E2                    2206 	.db 0xe2
      0033E4 94                    2207 	.db 0x94
      0033E5 80                    2208 	.db 0x80
      0033E6 E2                    2209 	.db 0xe2
      0033E7 94                    2210 	.db 0x94
      0033E8 80                    2211 	.db 0x80
      0033E9 E2                    2212 	.db 0xe2
      0033EA 94                    2213 	.db 0x94
      0033EB 80                    2214 	.db 0x80
      0033EC E2                    2215 	.db 0xe2
      0033ED 94                    2216 	.db 0x94
      0033EE 80                    2217 	.db 0x80
      0033EF E2                    2218 	.db 0xe2
      0033F0 94                    2219 	.db 0x94
      0033F1 80                    2220 	.db 0x80
      0033F2 E2                    2221 	.db 0xe2
      0033F3 94                    2222 	.db 0x94
      0033F4 80                    2223 	.db 0x80
      0033F5 E2                    2224 	.db 0xe2
      0033F6 94                    2225 	.db 0x94
      0033F7 A4                    2226 	.db 0xa4
      0033F8 0A                    2227 	.db 0x0a
      0033F9 0D                    2228 	.db 0x0d
      0033FA 00                    2229 	.db 0x00
                                   2230 	.area CSEG    (CODE)
                                   2231 	.area CONST   (CODE)
      0033FB                       2232 ___str_3:
      0033FB E2                    2233 	.db 0xe2
      0033FC 94                    2234 	.db 0x94
      0033FD 82                    2235 	.db 0x82
      0033FE 20 20 43 6F 6D 6D 61  2236 	.ascii "  Command   "
             6E 64 20 20 20
      00340A E2                    2237 	.db 0xe2
      00340B 94                    2238 	.db 0x94
      00340C 82                    2239 	.db 0x82
      00340D 20 20 20 20 20 20 20  2240 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      00343E E2                    2241 	.db 0xe2
      00343F 94                    2242 	.db 0x94
      003440 82                    2243 	.db 0x82
      003441 0A                    2244 	.db 0x0a
      003442 0D                    2245 	.db 0x0d
      003443 00                    2246 	.db 0x00
                                   2247 	.area CSEG    (CODE)
                                   2248 	.area CONST   (CODE)
      003444                       2249 ___str_4:
      003444 E2                    2250 	.db 0xe2
      003445 94                    2251 	.db 0x94
      003446 9C                    2252 	.db 0x9c
      003447 E2                    2253 	.db 0xe2
      003448 94                    2254 	.db 0x94
      003449 80                    2255 	.db 0x80
      00344A E2                    2256 	.db 0xe2
      00344B 94                    2257 	.db 0x94
      00344C 80                    2258 	.db 0x80
      00344D E2                    2259 	.db 0xe2
      00344E 94                    2260 	.db 0x94
      00344F 80                    2261 	.db 0x80
      003450 E2                    2262 	.db 0xe2
      003451 94                    2263 	.db 0x94
      003452 80                    2264 	.db 0x80
      003453 E2                    2265 	.db 0xe2
      003454 94                    2266 	.db 0x94
      003455 80                    2267 	.db 0x80
      003456 E2                    2268 	.db 0xe2
      003457 94                    2269 	.db 0x94
      003458 80                    2270 	.db 0x80
      003459 E2                    2271 	.db 0xe2
      00345A 94                    2272 	.db 0x94
      00345B 80                    2273 	.db 0x80
      00345C E2                    2274 	.db 0xe2
      00345D 94                    2275 	.db 0x94
      00345E 80                    2276 	.db 0x80
      00345F E2                    2277 	.db 0xe2
      003460 94                    2278 	.db 0x94
      003461 80                    2279 	.db 0x80
      003462 E2                    2280 	.db 0xe2
      003463 94                    2281 	.db 0x94
      003464 80                    2282 	.db 0x80
      003465 E2                    2283 	.db 0xe2
      003466 94                    2284 	.db 0x94
      003467 80                    2285 	.db 0x80
      003468 E2                    2286 	.db 0xe2
      003469 94                    2287 	.db 0x94
      00346A BC                    2288 	.db 0xbc
      00346B E2                    2289 	.db 0xe2
      00346C 94                    2290 	.db 0x94
      00346D 80                    2291 	.db 0x80
      00346E E2                    2292 	.db 0xe2
      00346F 94                    2293 	.db 0x94
      003470 80                    2294 	.db 0x80
      003471 E2                    2295 	.db 0xe2
      003472 94                    2296 	.db 0x94
      003473 80                    2297 	.db 0x80
      003474 E2                    2298 	.db 0xe2
      003475 94                    2299 	.db 0x94
      003476 80                    2300 	.db 0x80
      003477 E2                    2301 	.db 0xe2
      003478 94                    2302 	.db 0x94
      003479 80                    2303 	.db 0x80
      00347A E2                    2304 	.db 0xe2
      00347B 94                    2305 	.db 0x94
      00347C 80                    2306 	.db 0x80
      00347D E2                    2307 	.db 0xe2
      00347E 94                    2308 	.db 0x94
      00347F 80                    2309 	.db 0x80
      003480 E2                    2310 	.db 0xe2
      003481 94                    2311 	.db 0x94
      003482 80                    2312 	.db 0x80
      003483 E2                    2313 	.db 0xe2
      003484 94                    2314 	.db 0x94
      003485 80                    2315 	.db 0x80
      003486 E2                    2316 	.db 0xe2
      003487 94                    2317 	.db 0x94
      003488 80                    2318 	.db 0x80
      003489 E2                    2319 	.db 0xe2
      00348A 94                    2320 	.db 0x94
      00348B 80                    2321 	.db 0x80
      00348C E2                    2322 	.db 0xe2
      00348D 94                    2323 	.db 0x94
      00348E 80                    2324 	.db 0x80
      00348F E2                    2325 	.db 0xe2
      003490 94                    2326 	.db 0x94
      003491 80                    2327 	.db 0x80
      003492 E2                    2328 	.db 0xe2
      003493 94                    2329 	.db 0x94
      003494 80                    2330 	.db 0x80
      003495 E2                    2331 	.db 0xe2
      003496 94                    2332 	.db 0x94
      003497 80                    2333 	.db 0x80
      003498 E2                    2334 	.db 0xe2
      003499 94                    2335 	.db 0x94
      00349A 80                    2336 	.db 0x80
      00349B E2                    2337 	.db 0xe2
      00349C 94                    2338 	.db 0x94
      00349D 80                    2339 	.db 0x80
      00349E E2                    2340 	.db 0xe2
      00349F 94                    2341 	.db 0x94
      0034A0 80                    2342 	.db 0x80
      0034A1 E2                    2343 	.db 0xe2
      0034A2 94                    2344 	.db 0x94
      0034A3 80                    2345 	.db 0x80
      0034A4 E2                    2346 	.db 0xe2
      0034A5 94                    2347 	.db 0x94
      0034A6 80                    2348 	.db 0x80
      0034A7 E2                    2349 	.db 0xe2
      0034A8 94                    2350 	.db 0x94
      0034A9 80                    2351 	.db 0x80
      0034AA E2                    2352 	.db 0xe2
      0034AB 94                    2353 	.db 0x94
      0034AC 80                    2354 	.db 0x80
      0034AD E2                    2355 	.db 0xe2
      0034AE 94                    2356 	.db 0x94
      0034AF 80                    2357 	.db 0x80
      0034B0 E2                    2358 	.db 0xe2
      0034B1 94                    2359 	.db 0x94
      0034B2 80                    2360 	.db 0x80
      0034B3 E2                    2361 	.db 0xe2
      0034B4 94                    2362 	.db 0x94
      0034B5 80                    2363 	.db 0x80
      0034B6 E2                    2364 	.db 0xe2
      0034B7 94                    2365 	.db 0x94
      0034B8 80                    2366 	.db 0x80
      0034B9 E2                    2367 	.db 0xe2
      0034BA 94                    2368 	.db 0x94
      0034BB 80                    2369 	.db 0x80
      0034BC E2                    2370 	.db 0xe2
      0034BD 94                    2371 	.db 0x94
      0034BE 80                    2372 	.db 0x80
      0034BF E2                    2373 	.db 0xe2
      0034C0 94                    2374 	.db 0x94
      0034C1 80                    2375 	.db 0x80
      0034C2 E2                    2376 	.db 0xe2
      0034C3 94                    2377 	.db 0x94
      0034C4 80                    2378 	.db 0x80
      0034C5 E2                    2379 	.db 0xe2
      0034C6 94                    2380 	.db 0x94
      0034C7 80                    2381 	.db 0x80
      0034C8 E2                    2382 	.db 0xe2
      0034C9 94                    2383 	.db 0x94
      0034CA 80                    2384 	.db 0x80
      0034CB E2                    2385 	.db 0xe2
      0034CC 94                    2386 	.db 0x94
      0034CD 80                    2387 	.db 0x80
      0034CE E2                    2388 	.db 0xe2
      0034CF 94                    2389 	.db 0x94
      0034D0 80                    2390 	.db 0x80
      0034D1 E2                    2391 	.db 0xe2
      0034D2 94                    2392 	.db 0x94
      0034D3 80                    2393 	.db 0x80
      0034D4 E2                    2394 	.db 0xe2
      0034D5 94                    2395 	.db 0x94
      0034D6 80                    2396 	.db 0x80
      0034D7 E2                    2397 	.db 0xe2
      0034D8 94                    2398 	.db 0x94
      0034D9 80                    2399 	.db 0x80
      0034DA E2                    2400 	.db 0xe2
      0034DB 94                    2401 	.db 0x94
      0034DC 80                    2402 	.db 0x80
      0034DD E2                    2403 	.db 0xe2
      0034DE 94                    2404 	.db 0x94
      0034DF 80                    2405 	.db 0x80
      0034E0 E2                    2406 	.db 0xe2
      0034E1 94                    2407 	.db 0x94
      0034E2 80                    2408 	.db 0x80
      0034E3 E2                    2409 	.db 0xe2
      0034E4 94                    2410 	.db 0x94
      0034E5 80                    2411 	.db 0x80
      0034E6 E2                    2412 	.db 0xe2
      0034E7 94                    2413 	.db 0x94
      0034E8 80                    2414 	.db 0x80
      0034E9 E2                    2415 	.db 0xe2
      0034EA 94                    2416 	.db 0x94
      0034EB 80                    2417 	.db 0x80
      0034EC E2                    2418 	.db 0xe2
      0034ED 94                    2419 	.db 0x94
      0034EE 80                    2420 	.db 0x80
      0034EF E2                    2421 	.db 0xe2
      0034F0 94                    2422 	.db 0x94
      0034F1 80                    2423 	.db 0x80
      0034F2 E2                    2424 	.db 0xe2
      0034F3 94                    2425 	.db 0x94
      0034F4 80                    2426 	.db 0x80
      0034F5 E2                    2427 	.db 0xe2
      0034F6 94                    2428 	.db 0x94
      0034F7 80                    2429 	.db 0x80
      0034F8 E2                    2430 	.db 0xe2
      0034F9 94                    2431 	.db 0x94
      0034FA A4                    2432 	.db 0xa4
      0034FB 0A                    2433 	.db 0x0a
      0034FC 0D                    2434 	.db 0x0d
      0034FD 00                    2435 	.db 0x00
                                   2436 	.area CSEG    (CODE)
                                   2437 	.area CONST   (CODE)
      0034FE                       2438 ___str_5:
      0034FE E2                    2439 	.db 0xe2
      0034FF 94                    2440 	.db 0x94
      003500 82                    2441 	.db 0x82
      003501 20 20 20 20 4D 20 20  2442 	.ascii "    M      "
             20 20 20 20
      00350C E2                    2443 	.db 0xe2
      00350D 94                    2444 	.db 0x94
      00350E 82                    2445 	.db 0x82
      00350F 20 4D 61 6E 75 61 6C  2446 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      00353F E2                    2447 	.db 0xe2
      003540 94                    2448 	.db 0x94
      003541 82                    2449 	.db 0x82
      003542 0A                    2450 	.db 0x0a
      003543 0D                    2451 	.db 0x0d
      003544 00                    2452 	.db 0x00
                                   2453 	.area CSEG    (CODE)
                                   2454 	.area CONST   (CODE)
      003545                       2455 ___str_6:
      003545 E2                    2456 	.db 0xe2
      003546 94                    2457 	.db 0x94
      003547 82                    2458 	.db 0x82
      003548 20 20 20 20 42 20 20  2459 	.ascii "    B      "
             20 20 20 20
      003553 E2                    2460 	.db 0xe2
      003554 94                    2461 	.db 0x94
      003555 82                    2462 	.db 0x82
      003556 20 42 69 74 20 42 61  2463 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003585 E2                    2464 	.db 0xe2
      003586 94                    2465 	.db 0x94
      003587 82                    2466 	.db 0x82
      003588 0A                    2467 	.db 0x0a
      003589 0D                    2468 	.db 0x0d
      00358A 00                    2469 	.db 0x00
                                   2470 	.area CSEG    (CODE)
                                   2471 	.area CONST   (CODE)
      00358B                       2472 ___str_7:
      00358B E2                    2473 	.db 0xe2
      00358C 94                    2474 	.db 0x94
      00358D 82                    2475 	.db 0x82
      00358E 20 20 20 20 53 20 20  2476 	.ascii "    S      "
             20 20 20 20
      003599 E2                    2477 	.db 0xe2
      00359A 94                    2478 	.db 0x94
      00359B 82                    2479 	.db 0x82
      00359C 20 47 65 6E 65 72 61  2480 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0035CB E2                    2481 	.db 0xe2
      0035CC 94                    2482 	.db 0x94
      0035CD 82                    2483 	.db 0x82
      0035CE 0A                    2484 	.db 0x0a
      0035CF 0D                    2485 	.db 0x0d
      0035D0 00                    2486 	.db 0x00
                                   2487 	.area CSEG    (CODE)
                                   2488 	.area CONST   (CODE)
      0035D1                       2489 ___str_8:
      0035D1 E2                    2490 	.db 0xe2
      0035D2 94                    2491 	.db 0x94
      0035D3 82                    2492 	.db 0x82
      0035D4 20 20 20 20 51 20 20  2493 	.ascii "    Q      "
             20 20 20 20
      0035DF E2                    2494 	.db 0xe2
      0035E0 94                    2495 	.db 0x94
      0035E1 82                    2496 	.db 0x82
      0035E2 20 47 65 6E 65 72 61  2497 	.ascii " Generate Square Wave                          "
             74 65 20 53 71 75 61
             72 65 20 57 61 76 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003611 E2                    2498 	.db 0xe2
      003612 94                    2499 	.db 0x94
      003613 82                    2500 	.db 0x82
      003614 0A                    2501 	.db 0x0a
      003615 0D                    2502 	.db 0x0d
      003616 00                    2503 	.db 0x00
                                   2504 	.area CSEG    (CODE)
                                   2505 	.area CONST   (CODE)
      003617                       2506 ___str_9:
      003617 E2                    2507 	.db 0xe2
      003618 94                    2508 	.db 0x94
      003619 82                    2509 	.db 0x82
      00361A 20 20 20 20 54 20 20  2510 	.ascii "    T      "
             20 20 20 20
      003625 E2                    2511 	.db 0xe2
      003626 94                    2512 	.db 0x94
      003627 82                    2513 	.db 0x82
      003628 20 47 65 6E 65 72 61  2514 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003657 E2                    2515 	.db 0xe2
      003658 94                    2516 	.db 0x94
      003659 82                    2517 	.db 0x82
      00365A 0A                    2518 	.db 0x0a
      00365B 0D                    2519 	.db 0x0d
      00365C 00                    2520 	.db 0x00
                                   2521 	.area CSEG    (CODE)
                                   2522 	.area CONST   (CODE)
      00365D                       2523 ___str_10:
      00365D E2                    2524 	.db 0xe2
      00365E 94                    2525 	.db 0x94
      00365F 82                    2526 	.db 0x82
      003660 20 20 20 20 44 20 20  2527 	.ascii "    D      "
             20 20 20 20
      00366B E2                    2528 	.db 0xe2
      00366C 94                    2529 	.db 0x94
      00366D 82                    2530 	.db 0x82
      00366E 20 44 65 6D 6F 20 4D  2531 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      00369D E2                    2532 	.db 0xe2
      00369E 94                    2533 	.db 0x94
      00369F 82                    2534 	.db 0x82
      0036A0 0A                    2535 	.db 0x0a
      0036A1 0D                    2536 	.db 0x0d
      0036A2 00                    2537 	.db 0x00
                                   2538 	.area CSEG    (CODE)
                                   2539 	.area CONST   (CODE)
      0036A3                       2540 ___str_11:
      0036A3 E2                    2541 	.db 0xe2
      0036A4 94                    2542 	.db 0x94
      0036A5 82                    2543 	.db 0x82
      0036A6 20 20 20 20 43 20 20  2544 	.ascii "    C      "
             20 20 20 20
      0036B1 E2                    2545 	.db 0xe2
      0036B2 94                    2546 	.db 0x94
      0036B3 82                    2547 	.db 0x82
      0036B4 20 43 6F 6E 66 69 67  2548 	.ascii " Configure SPI Parameters                      "
             75 72 65 20 53 50 49
             20 50 61 72 61 6D 65
             74 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0036E3 E2                    2549 	.db 0xe2
      0036E4 94                    2550 	.db 0x94
      0036E5 82                    2551 	.db 0x82
      0036E6 0A                    2552 	.db 0x0a
      0036E7 0D                    2553 	.db 0x0d
      0036E8 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      0036E9                       2557 ___str_12:
      0036E9 E2                    2558 	.db 0xe2
      0036EA 94                    2559 	.db 0x94
      0036EB 82                    2560 	.db 0x82
      0036EC 20 20 20 20 52 20 20  2561 	.ascii "    R      "
             20 20 20 20
      0036F7 E2                    2562 	.db 0xe2
      0036F8 94                    2563 	.db 0x94
      0036F9 82                    2564 	.db 0x82
      0036FA 20 52 65 61 64 20 53  2565 	.ascii " Read SPI Data                                 "
             50 49 20 44 61 74 61
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003729 E2                    2566 	.db 0xe2
      00372A 94                    2567 	.db 0x94
      00372B 82                    2568 	.db 0x82
      00372C 0A                    2569 	.db 0x0a
      00372D 0D                    2570 	.db 0x0d
      00372E 00                    2571 	.db 0x00
                                   2572 	.area CSEG    (CODE)
                                   2573 	.area CONST   (CODE)
      00372F                       2574 ___str_13:
      00372F E2                    2575 	.db 0xe2
      003730 94                    2576 	.db 0x94
      003731 82                    2577 	.db 0x82
      003732 20 20 20 20 57 20 20  2578 	.ascii "    W      "
             20 20 20 20
      00373D E2                    2579 	.db 0xe2
      00373E 94                    2580 	.db 0x94
      00373F 82                    2581 	.db 0x82
      003740 20 57 72 69 74 65 20  2582 	.ascii " Write SPI Data                                "
             53 50 49 20 44 61 74
             61 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00376F E2                    2583 	.db 0xe2
      003770 94                    2584 	.db 0x94
      003771 82                    2585 	.db 0x82
      003772 0A                    2586 	.db 0x0a
      003773 0D                    2587 	.db 0x0d
      003774 00                    2588 	.db 0x00
                                   2589 	.area CSEG    (CODE)
                                   2590 	.area CONST   (CODE)
      003775                       2591 ___str_14:
      003775 E2                    2592 	.db 0xe2
      003776 94                    2593 	.db 0x94
      003777 82                    2594 	.db 0x82
      003778 20 20 20 20 3F 20 20  2595 	.ascii "    ?      "
             20 20 20 20
      003783 E2                    2596 	.db 0xe2
      003784 94                    2597 	.db 0x94
      003785 82                    2598 	.db 0x82
      003786 20 44 69 73 70 6C 61  2599 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0037B5 E2                    2600 	.db 0xe2
      0037B6 94                    2601 	.db 0x94
      0037B7 82                    2602 	.db 0x82
      0037B8 0A                    2603 	.db 0x0a
      0037B9 0D                    2604 	.db 0x0d
      0037BA 00                    2605 	.db 0x00
                                   2606 	.area CSEG    (CODE)
                                   2607 	.area CONST   (CODE)
      0037BB                       2608 ___str_15:
      0037BB E2                    2609 	.db 0xe2
      0037BC 94                    2610 	.db 0x94
      0037BD 82                    2611 	.db 0x82
      0037BE 20 20 20 20 58 20 20  2612 	.ascii "    X      "
             20 20 20 20
      0037C9 E2                    2613 	.db 0xe2
      0037CA 94                    2614 	.db 0x94
      0037CB 82                    2615 	.db 0x82
      0037CC 20 45 78 69 74 20 50  2616 	.ascii " Exit Program                                  "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0037FB E2                    2617 	.db 0xe2
      0037FC 94                    2618 	.db 0x94
      0037FD 82                    2619 	.db 0x82
      0037FE 0A                    2620 	.db 0x0a
      0037FF 0D                    2621 	.db 0x0d
      003800 00                    2622 	.db 0x00
                                   2623 	.area CSEG    (CODE)
                                   2624 	.area CONST   (CODE)
      003801                       2625 ___str_16:
      003801 E2                    2626 	.db 0xe2
      003802 94                    2627 	.db 0x94
      003803 94                    2628 	.db 0x94
      003804 E2                    2629 	.db 0xe2
      003805 94                    2630 	.db 0x94
      003806 80                    2631 	.db 0x80
      003807 E2                    2632 	.db 0xe2
      003808 94                    2633 	.db 0x94
      003809 80                    2634 	.db 0x80
      00380A E2                    2635 	.db 0xe2
      00380B 94                    2636 	.db 0x94
      00380C 80                    2637 	.db 0x80
      00380D E2                    2638 	.db 0xe2
      00380E 94                    2639 	.db 0x94
      00380F 80                    2640 	.db 0x80
      003810 E2                    2641 	.db 0xe2
      003811 94                    2642 	.db 0x94
      003812 80                    2643 	.db 0x80
      003813 E2                    2644 	.db 0xe2
      003814 94                    2645 	.db 0x94
      003815 80                    2646 	.db 0x80
      003816 E2                    2647 	.db 0xe2
      003817 94                    2648 	.db 0x94
      003818 80                    2649 	.db 0x80
      003819 E2                    2650 	.db 0xe2
      00381A 94                    2651 	.db 0x94
      00381B 80                    2652 	.db 0x80
      00381C E2                    2653 	.db 0xe2
      00381D 94                    2654 	.db 0x94
      00381E 80                    2655 	.db 0x80
      00381F E2                    2656 	.db 0xe2
      003820 94                    2657 	.db 0x94
      003821 80                    2658 	.db 0x80
      003822 E2                    2659 	.db 0xe2
      003823 94                    2660 	.db 0x94
      003824 80                    2661 	.db 0x80
      003825 E2                    2662 	.db 0xe2
      003826 94                    2663 	.db 0x94
      003827 B4                    2664 	.db 0xb4
      003828 E2                    2665 	.db 0xe2
      003829 94                    2666 	.db 0x94
      00382A 80                    2667 	.db 0x80
      00382B E2                    2668 	.db 0xe2
      00382C 94                    2669 	.db 0x94
      00382D 80                    2670 	.db 0x80
      00382E E2                    2671 	.db 0xe2
      00382F 94                    2672 	.db 0x94
      003830 80                    2673 	.db 0x80
      003831 E2                    2674 	.db 0xe2
      003832 94                    2675 	.db 0x94
      003833 80                    2676 	.db 0x80
      003834 E2                    2677 	.db 0xe2
      003835 94                    2678 	.db 0x94
      003836 80                    2679 	.db 0x80
      003837 E2                    2680 	.db 0xe2
      003838 94                    2681 	.db 0x94
      003839 80                    2682 	.db 0x80
      00383A E2                    2683 	.db 0xe2
      00383B 94                    2684 	.db 0x94
      00383C 80                    2685 	.db 0x80
      00383D E2                    2686 	.db 0xe2
      00383E 94                    2687 	.db 0x94
      00383F 80                    2688 	.db 0x80
      003840 E2                    2689 	.db 0xe2
      003841 94                    2690 	.db 0x94
      003842 80                    2691 	.db 0x80
      003843 E2                    2692 	.db 0xe2
      003844 94                    2693 	.db 0x94
      003845 80                    2694 	.db 0x80
      003846 E2                    2695 	.db 0xe2
      003847 94                    2696 	.db 0x94
      003848 80                    2697 	.db 0x80
      003849 E2                    2698 	.db 0xe2
      00384A 94                    2699 	.db 0x94
      00384B 80                    2700 	.db 0x80
      00384C E2                    2701 	.db 0xe2
      00384D 94                    2702 	.db 0x94
      00384E 80                    2703 	.db 0x80
      00384F E2                    2704 	.db 0xe2
      003850 94                    2705 	.db 0x94
      003851 80                    2706 	.db 0x80
      003852 E2                    2707 	.db 0xe2
      003853 94                    2708 	.db 0x94
      003854 80                    2709 	.db 0x80
      003855 E2                    2710 	.db 0xe2
      003856 94                    2711 	.db 0x94
      003857 80                    2712 	.db 0x80
      003858 E2                    2713 	.db 0xe2
      003859 94                    2714 	.db 0x94
      00385A 80                    2715 	.db 0x80
      00385B E2                    2716 	.db 0xe2
      00385C 94                    2717 	.db 0x94
      00385D 80                    2718 	.db 0x80
      00385E E2                    2719 	.db 0xe2
      00385F 94                    2720 	.db 0x94
      003860 80                    2721 	.db 0x80
      003861 E2                    2722 	.db 0xe2
      003862 94                    2723 	.db 0x94
      003863 80                    2724 	.db 0x80
      003864 E2                    2725 	.db 0xe2
      003865 94                    2726 	.db 0x94
      003866 80                    2727 	.db 0x80
      003867 E2                    2728 	.db 0xe2
      003868 94                    2729 	.db 0x94
      003869 80                    2730 	.db 0x80
      00386A E2                    2731 	.db 0xe2
      00386B 94                    2732 	.db 0x94
      00386C 80                    2733 	.db 0x80
      00386D E2                    2734 	.db 0xe2
      00386E 94                    2735 	.db 0x94
      00386F 80                    2736 	.db 0x80
      003870 E2                    2737 	.db 0xe2
      003871 94                    2738 	.db 0x94
      003872 80                    2739 	.db 0x80
      003873 E2                    2740 	.db 0xe2
      003874 94                    2741 	.db 0x94
      003875 80                    2742 	.db 0x80
      003876 E2                    2743 	.db 0xe2
      003877 94                    2744 	.db 0x94
      003878 80                    2745 	.db 0x80
      003879 E2                    2746 	.db 0xe2
      00387A 94                    2747 	.db 0x94
      00387B 80                    2748 	.db 0x80
      00387C E2                    2749 	.db 0xe2
      00387D 94                    2750 	.db 0x94
      00387E 80                    2751 	.db 0x80
      00387F E2                    2752 	.db 0xe2
      003880 94                    2753 	.db 0x94
      003881 80                    2754 	.db 0x80
      003882 E2                    2755 	.db 0xe2
      003883 94                    2756 	.db 0x94
      003884 80                    2757 	.db 0x80
      003885 E2                    2758 	.db 0xe2
      003886 94                    2759 	.db 0x94
      003887 80                    2760 	.db 0x80
      003888 E2                    2761 	.db 0xe2
      003889 94                    2762 	.db 0x94
      00388A 80                    2763 	.db 0x80
      00388B E2                    2764 	.db 0xe2
      00388C 94                    2765 	.db 0x94
      00388D 80                    2766 	.db 0x80
      00388E E2                    2767 	.db 0xe2
      00388F 94                    2768 	.db 0x94
      003890 80                    2769 	.db 0x80
      003891 E2                    2770 	.db 0xe2
      003892 94                    2771 	.db 0x94
      003893 80                    2772 	.db 0x80
      003894 E2                    2773 	.db 0xe2
      003895 94                    2774 	.db 0x94
      003896 80                    2775 	.db 0x80
      003897 E2                    2776 	.db 0xe2
      003898 94                    2777 	.db 0x94
      003899 80                    2778 	.db 0x80
      00389A E2                    2779 	.db 0xe2
      00389B 94                    2780 	.db 0x94
      00389C 80                    2781 	.db 0x80
      00389D E2                    2782 	.db 0xe2
      00389E 94                    2783 	.db 0x94
      00389F 80                    2784 	.db 0x80
      0038A0 E2                    2785 	.db 0xe2
      0038A1 94                    2786 	.db 0x94
      0038A2 80                    2787 	.db 0x80
      0038A3 E2                    2788 	.db 0xe2
      0038A4 94                    2789 	.db 0x94
      0038A5 80                    2790 	.db 0x80
      0038A6 E2                    2791 	.db 0xe2
      0038A7 94                    2792 	.db 0x94
      0038A8 80                    2793 	.db 0x80
      0038A9 E2                    2794 	.db 0xe2
      0038AA 94                    2795 	.db 0x94
      0038AB 80                    2796 	.db 0x80
      0038AC E2                    2797 	.db 0xe2
      0038AD 94                    2798 	.db 0x94
      0038AE 80                    2799 	.db 0x80
      0038AF E2                    2800 	.db 0xe2
      0038B0 94                    2801 	.db 0x94
      0038B1 80                    2802 	.db 0x80
      0038B2 E2                    2803 	.db 0xe2
      0038B3 94                    2804 	.db 0x94
      0038B4 80                    2805 	.db 0x80
      0038B5 E2                    2806 	.db 0xe2
      0038B6 94                    2807 	.db 0x94
      0038B7 98                    2808 	.db 0x98
      0038B8 0A                    2809 	.db 0x0a
      0038B9 0D                    2810 	.db 0x0d
      0038BA 00                    2811 	.db 0x00
                                   2812 	.area CSEG    (CODE)
                                   2813 	.area CONST   (CODE)
      0038BB                       2814 ___str_17:
      0038BB 0A                    2815 	.db 0x0a
      0038BC 0D                    2816 	.db 0x0d
      0038BD 45 6E 74 65 72 20 63  2817 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      0038CC 00                    2818 	.db 0x00
                                   2819 	.area CSEG    (CODE)
                                   2820 	.area CONST   (CODE)
      0038CD                       2821 ___str_18:
      0038CD 7C 20 24 20 25 63     2822 	.ascii "| $ %c"
      0038D3 0A                    2823 	.db 0x0a
      0038D4 0D                    2824 	.db 0x0d
      0038D5 00                    2825 	.db 0x00
                                   2826 	.area CSEG    (CODE)
                                   2827 	.area CONST   (CODE)
      0038D6                       2828 ___str_19:
      0038D6 0A                    2829 	.db 0x0a
      0038D7 0D                    2830 	.db 0x0d
      0038D8 00                    2831 	.db 0x00
                                   2832 	.area CSEG    (CODE)
                                   2833 	.area CONST   (CODE)
      0038D9                       2834 ___str_20:
      0038D9 53 49 4E 20 57 41 56  2835 	.ascii "SIN WAVE DONE"
             45 20 44 4F 4E 45
      0038E6 0A                    2836 	.db 0x0a
      0038E7 0D                    2837 	.db 0x0d
      0038E8 00                    2838 	.db 0x00
                                   2839 	.area CSEG    (CODE)
                                   2840 	.area CONST   (CODE)
      0038E9                       2841 ___str_21:
      0038E9 53 51 55 41 52 45 20  2842 	.ascii "SQUARE WAVE DONE"
             57 41 56 45 20 44 4F
             4E 45
      0038F9 0A                    2843 	.db 0x0a
      0038FA 0D                    2844 	.db 0x0d
      0038FB 00                    2845 	.db 0x00
                                   2846 	.area CSEG    (CODE)
                                   2847 	.area CONST   (CODE)
      0038FC                       2848 ___str_22:
      0038FC 72                    2849 	.ascii "r"
      0038FD 0A                    2850 	.db 0x0a
      0038FE 0D                    2851 	.db 0x0d
      0038FF 00                    2852 	.db 0x00
                                   2853 	.area CSEG    (CODE)
                                   2854 	.area CONST   (CODE)
      003900                       2855 ___str_23:
      003900 E2                    2856 	.db 0xe2
      003901 94                    2857 	.db 0x94
      003902 82                    2858 	.db 0x82
      003903 20 45 6E 74 65 72 20  2859 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      00392C 0A                    2860 	.db 0x0a
      00392D 0D                    2861 	.db 0x0d
      00392E 7C                    2862 	.ascii "|"
      00392F 00                    2863 	.db 0x00
                                   2864 	.area CSEG    (CODE)
                                   2865 	.area CONST   (CODE)
      003930                       2866 ___str_24:
      003930 24 20                 2867 	.ascii "$ "
      003932 00                    2868 	.db 0x00
                                   2869 	.area CSEG    (CODE)
                                   2870 	.area CONST   (CODE)
      003933                       2871 ___str_25:
      003933 0A                    2872 	.db 0x0a
      003934 0D                    2873 	.db 0x0d
      003935 E2                    2874 	.db 0xe2
      003936 94                    2875 	.db 0x94
      003937 82                    2876 	.db 0x82
      003938 20 45 6E 74 65 72 65  2877 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      00394D 0A                    2878 	.db 0x0a
      00394E 0D                    2879 	.db 0x0d
      00394F 00                    2880 	.db 0x00
                                   2881 	.area CSEG    (CODE)
                                   2882 	.area XINIT   (CODE)
      00395B                       2883 __xinit__ms_flag:
      00395B 00                    2884 	.db #0x00	; 0
      00395C                       2885 __xinit__transmission_complete:
      00395C 00 00                 2886 	.byte #0x00, #0x00	;  0
                                   2887 	.area CABS    (ABS,CODE)
