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
                                    216 	.globl _take_data
                                    217 	.globl _mannual_spi
                                    218 	.globl _spi_init
                                    219 	.globl _spi_transmission_start
                                    220 ;--------------------------------------------------------
                                    221 ; special function registers
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0	=	0x0080
                           000081   226 _SP	=	0x0081
                           000082   227 _DPL	=	0x0082
                           000083   228 _DPH	=	0x0083
                           000087   229 _PCON	=	0x0087
                           000088   230 _TCON	=	0x0088
                           000089   231 _TMOD	=	0x0089
                           00008A   232 _TL0	=	0x008a
                           00008B   233 _TL1	=	0x008b
                           00008C   234 _TH0	=	0x008c
                           00008D   235 _TH1	=	0x008d
                           000090   236 _P1	=	0x0090
                           000098   237 _SCON	=	0x0098
                           000099   238 _SBUF	=	0x0099
                           0000A0   239 _P2	=	0x00a0
                           0000A8   240 _IE	=	0x00a8
                           0000B0   241 _P3	=	0x00b0
                           0000B8   242 _IP	=	0x00b8
                           0000D0   243 _PSW	=	0x00d0
                           0000E0   244 _ACC	=	0x00e0
                           0000F0   245 _B	=	0x00f0
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                                    297 ;--------------------------------------------------------
                                    298 ; special function bits
                                    299 ;--------------------------------------------------------
                                    300 	.area RSEG    (ABS,DATA)
      000000                        301 	.org 0x0000
                           000080   302 _P0_0	=	0x0080
                           000081   303 _P0_1	=	0x0081
                           000082   304 _P0_2	=	0x0082
                           000083   305 _P0_3	=	0x0083
                           000084   306 _P0_4	=	0x0084
                           000085   307 _P0_5	=	0x0085
                           000086   308 _P0_6	=	0x0086
                           000087   309 _P0_7	=	0x0087
                           000088   310 _IT0	=	0x0088
                           000089   311 _IE0	=	0x0089
                           00008A   312 _IT1	=	0x008a
                           00008B   313 _IE1	=	0x008b
                           00008C   314 _TR0	=	0x008c
                           00008D   315 _TF0	=	0x008d
                           00008E   316 _TR1	=	0x008e
                           00008F   317 _TF1	=	0x008f
                           000090   318 _P1_0	=	0x0090
                           000091   319 _P1_1	=	0x0091
                           000092   320 _P1_2	=	0x0092
                           000093   321 _P1_3	=	0x0093
                           000094   322 _P1_4	=	0x0094
                           000095   323 _P1_5	=	0x0095
                           000096   324 _P1_6	=	0x0096
                           000097   325 _P1_7	=	0x0097
                           000098   326 _RI	=	0x0098
                           000099   327 _TI	=	0x0099
                           00009A   328 _RB8	=	0x009a
                           00009B   329 _TB8	=	0x009b
                           00009C   330 _REN	=	0x009c
                           00009D   331 _SM2	=	0x009d
                           00009E   332 _SM1	=	0x009e
                           00009F   333 _SM0	=	0x009f
                           0000A0   334 _P2_0	=	0x00a0
                           0000A1   335 _P2_1	=	0x00a1
                           0000A2   336 _P2_2	=	0x00a2
                           0000A3   337 _P2_3	=	0x00a3
                           0000A4   338 _P2_4	=	0x00a4
                           0000A5   339 _P2_5	=	0x00a5
                           0000A6   340 _P2_6	=	0x00a6
                           0000A7   341 _P2_7	=	0x00a7
                           0000A8   342 _EX0	=	0x00a8
                           0000A9   343 _ET0	=	0x00a9
                           0000AA   344 _EX1	=	0x00aa
                           0000AB   345 _ET1	=	0x00ab
                           0000AC   346 _ES	=	0x00ac
                           0000AF   347 _EA	=	0x00af
                           0000B0   348 _P3_0	=	0x00b0
                           0000B1   349 _P3_1	=	0x00b1
                           0000B2   350 _P3_2	=	0x00b2
                           0000B3   351 _P3_3	=	0x00b3
                           0000B4   352 _P3_4	=	0x00b4
                           0000B5   353 _P3_5	=	0x00b5
                           0000B6   354 _P3_6	=	0x00b6
                           0000B7   355 _P3_7	=	0x00b7
                           0000B0   356 _RXD	=	0x00b0
                           0000B1   357 _TXD	=	0x00b1
                           0000B2   358 _INT0	=	0x00b2
                           0000B3   359 _INT1	=	0x00b3
                           0000B4   360 _T0	=	0x00b4
                           0000B5   361 _T1	=	0x00b5
                           0000B6   362 _WR	=	0x00b6
                           0000B7   363 _RD	=	0x00b7
                           0000B8   364 _PX0	=	0x00b8
                           0000B9   365 _PT0	=	0x00b9
                           0000BA   366 _PX1	=	0x00ba
                           0000BB   367 _PT1	=	0x00bb
                           0000BC   368 _PS	=	0x00bc
                           0000D0   369 _P	=	0x00d0
                           0000D1   370 _F1	=	0x00d1
                           0000D2   371 _OV	=	0x00d2
                           0000D3   372 _RS0	=	0x00d3
                           0000D4   373 _RS1	=	0x00d4
                           0000D5   374 _F0	=	0x00d5
                           0000D6   375 _AC	=	0x00d6
                           0000D7   376 _CY	=	0x00d7
                           0000AD   377 _ET2	=	0x00ad
                           0000BD   378 _PT2	=	0x00bd
                           0000C8   379 _T2CON_0	=	0x00c8
                           0000C9   380 _T2CON_1	=	0x00c9
                           0000CA   381 _T2CON_2	=	0x00ca
                           0000CB   382 _T2CON_3	=	0x00cb
                           0000CC   383 _T2CON_4	=	0x00cc
                           0000CD   384 _T2CON_5	=	0x00cd
                           0000CE   385 _T2CON_6	=	0x00ce
                           0000CF   386 _T2CON_7	=	0x00cf
                           0000C8   387 _CP_RL2	=	0x00c8
                           0000C9   388 _C_T2	=	0x00c9
                           0000CA   389 _TR2	=	0x00ca
                           0000CB   390 _EXEN2	=	0x00cb
                           0000CC   391 _TCLK	=	0x00cc
                           0000CD   392 _RCLK	=	0x00cd
                           0000CE   393 _EXF2	=	0x00ce
                           0000CF   394 _TF2	=	0x00cf
                           0000DF   395 _CF	=	0x00df
                           0000DE   396 _CR	=	0x00de
                           0000DC   397 _CCF4	=	0x00dc
                           0000DB   398 _CCF3	=	0x00db
                           0000DA   399 _CCF2	=	0x00da
                           0000D9   400 _CCF1	=	0x00d9
                           0000D8   401 _CCF0	=	0x00d8
                           0000AE   402 _EC	=	0x00ae
                           0000BE   403 _PPCL	=	0x00be
                           0000BD   404 _PT2L	=	0x00bd
                           0000BC   405 _PSL	=	0x00bc
                           0000BB   406 _PT1L	=	0x00bb
                           0000BA   407 _PX1L	=	0x00ba
                           0000B9   408 _PT0L	=	0x00b9
                           0000B8   409 _PX0L	=	0x00b8
                           0000C0   410 _P4_0	=	0x00c0
                           0000C1   411 _P4_1	=	0x00c1
                           0000C2   412 _P4_2	=	0x00c2
                           0000C3   413 _P4_3	=	0x00c3
                           0000C4   414 _P4_4	=	0x00c4
                           0000C5   415 _P4_5	=	0x00c5
                           0000C6   416 _P4_6	=	0x00c6
                           0000C7   417 _P4_7	=	0x00c7
                           0000E8   418 _P5_0	=	0x00e8
                           0000E9   419 _P5_1	=	0x00e9
                           0000EA   420 _P5_2	=	0x00ea
                           0000EB   421 _P5_3	=	0x00eb
                           0000EC   422 _P5_4	=	0x00ec
                           0000ED   423 _P5_5	=	0x00ed
                           0000EE   424 _P5_6	=	0x00ee
                           0000EF   425 _P5_7	=	0x00ef
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram 
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; Stack segment in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 	.area	SSEG
      000014                        442 __start__stack:
      000014                        443 	.ds	1
                                    444 
                                    445 ;--------------------------------------------------------
                                    446 ; indirectly addressable internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area ISEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area IABS    (ABS,DATA)
                                    453 	.area IABS    (ABS,DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; bit data
                                    456 ;--------------------------------------------------------
                                    457 	.area BSEG    (BIT)
                                    458 ;--------------------------------------------------------
                                    459 ; paged external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area PSEG    (PAG,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XSEG    (XDATA)
      000400                        466 _putchar_charToSend_65536_17:
      000400                        467 	.ds 2
      000402                        468 _delay_ms_ms_65536_21:
      000402                        469 	.ds 2
      000404                        470 _take_data_input_65537_34:
      000404                        471 	.ds 4
      000408                        472 _take_data_data_65538_38:
      000408                        473 	.ds 1
      000409                        474 _mannual_spi_number_65536_41:
      000409                        475 	.ds 1
      00040A                        476 _mannual_spi_dac_value_index_65536_42:
      00040A                        477 	.ds 2
      00040C                        478 _mannual_spi_dac_data_65536_42:
      00040C                        479 	.ds 2
                                    480 ;--------------------------------------------------------
                                    481 ; absolute external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XABS    (ABS,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; external initialized ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XISEG   (XDATA)
      000447                        488 _ms_flag::
      000447                        489 	.ds 1
      000448                        490 _transmission_complete::
      000448                        491 	.ds 2
                                    492 	.area HOME    (CODE)
                                    493 	.area GSINIT0 (CODE)
                                    494 	.area GSINIT1 (CODE)
                                    495 	.area GSINIT2 (CODE)
                                    496 	.area GSINIT3 (CODE)
                                    497 	.area GSINIT4 (CODE)
                                    498 	.area GSINIT5 (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 	.area GSFINAL (CODE)
                                    501 	.area CSEG    (CODE)
                                    502 ;--------------------------------------------------------
                                    503 ; interrupt vector 
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
      002000                        506 __interrupt_vect:
      002000 02 20 06         [24]  507 	ljmp	__sdcc_gsinit_startup
                                    508 ;--------------------------------------------------------
                                    509 ; global & static initialisations
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.globl __sdcc_gsinit_startup
                                    516 	.globl __sdcc_program_startup
                                    517 	.globl __start__stack
                                    518 	.globl __mcs51_genXINIT
                                    519 	.globl __mcs51_genXRAMCLEAR
                                    520 	.globl __mcs51_genRAMCLEAR
                                    521 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  522 	ljmp	__sdcc_program_startup
                                    523 ;--------------------------------------------------------
                                    524 ; Home
                                    525 ;--------------------------------------------------------
                                    526 	.area HOME    (CODE)
                                    527 	.area HOME    (CODE)
      002003                        528 __sdcc_program_startup:
      002003 02 22 3D         [24]  529 	ljmp	_main
                                    530 ;	return from main will return to caller
                                    531 ;--------------------------------------------------------
                                    532 ; code
                                    533 ;--------------------------------------------------------
                                    534 	.area CSEG    (CODE)
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'putchar'
                                    537 ;------------------------------------------------------------
                                    538 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    539 ;------------------------------------------------------------
                                    540 ;	spi_dac.c:180: int putchar(int charToSend) {
                                    541 ;	-----------------------------------------
                                    542 ;	 function putchar
                                    543 ;	-----------------------------------------
      002062                        544 _putchar:
                           000007   545 	ar7 = 0x07
                           000006   546 	ar6 = 0x06
                           000005   547 	ar5 = 0x05
                           000004   548 	ar4 = 0x04
                           000003   549 	ar3 = 0x03
                           000002   550 	ar2 = 0x02
                           000001   551 	ar1 = 0x01
                           000000   552 	ar0 = 0x00
      002062 AF 83            [24]  553 	mov	r7,dph
      002064 E5 82            [12]  554 	mov	a,dpl
      002066 90 04 00         [24]  555 	mov	dptr,#_putchar_charToSend_65536_17
      002069 F0               [24]  556 	movx	@dptr,a
      00206A EF               [12]  557 	mov	a,r7
      00206B A3               [24]  558 	inc	dptr
      00206C F0               [24]  559 	movx	@dptr,a
                                    560 ;	spi_dac.c:181: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  561 	mov	dptr,#_putchar_charToSend_65536_17
      002070 E0               [24]  562 	movx	a,@dptr
      002071 FE               [12]  563 	mov	r6,a
      002072 A3               [24]  564 	inc	dptr
      002073 E0               [24]  565 	movx	a,@dptr
      002074 FF               [12]  566 	mov	r7,a
      002075 8E 99            [24]  567 	mov	_SBUF,r6
                                    568 ;	spi_dac.c:182: while (!TI);             /* Wait for transmission completion */
      002077                        569 00101$:
                                    570 ;	spi_dac.c:183: TI = 0;                  /* Clear transmission flag */
                                    571 ;	assignBit
      002077 10 99 02         [24]  572 	jbc	_TI,00114$
      00207A 80 FB            [24]  573 	sjmp	00101$
      00207C                        574 00114$:
                                    575 ;	spi_dac.c:184: return charToSend;
      00207C 8E 82            [24]  576 	mov	dpl,r6
      00207E 8F 83            [24]  577 	mov	dph,r7
                                    578 ;	spi_dac.c:185: }
      002080 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'getchar'
                                    582 ;------------------------------------------------------------
                                    583 ;	spi_dac.c:191: int getchar(void) {
                                    584 ;	-----------------------------------------
                                    585 ;	 function getchar
                                    586 ;	-----------------------------------------
      002081                        587 _getchar:
                                    588 ;	spi_dac.c:192: while (!RI);             /* Wait for reception completion */
      002081                        589 00101$:
                                    590 ;	spi_dac.c:193: RI = 0;                  /* Clear reception flag */
                                    591 ;	assignBit
      002081 10 98 02         [24]  592 	jbc	_RI,00114$
      002084 80 FB            [24]  593 	sjmp	00101$
      002086                        594 00114$:
                                    595 ;	spi_dac.c:194: return SBUF;             /* Return received character */
      002086 AE 99            [24]  596 	mov	r6,_SBUF
      002088 7F 00            [12]  597 	mov	r7,#0x00
      00208A 8E 82            [24]  598 	mov	dpl,r6
      00208C 8F 83            [24]  599 	mov	dph,r7
                                    600 ;	spi_dac.c:195: }
      00208E 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'delay_ms'
                                    604 ;------------------------------------------------------------
                                    605 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    606 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    607 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    608 ;------------------------------------------------------------
                                    609 ;	spi_dac.c:197: void delay_ms(unsigned int ms) {
                                    610 ;	-----------------------------------------
                                    611 ;	 function delay_ms
                                    612 ;	-----------------------------------------
      00208F                        613 _delay_ms:
      00208F AF 83            [24]  614 	mov	r7,dph
      002091 E5 82            [12]  615 	mov	a,dpl
      002093 90 04 02         [24]  616 	mov	dptr,#_delay_ms_ms_65536_21
      002096 F0               [24]  617 	movx	@dptr,a
      002097 EF               [12]  618 	mov	a,r7
      002098 A3               [24]  619 	inc	dptr
      002099 F0               [24]  620 	movx	@dptr,a
                                    621 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  622 	mov	dptr,#_delay_ms_ms_65536_21
      00209D E0               [24]  623 	movx	a,@dptr
      00209E FE               [12]  624 	mov	r6,a
      00209F A3               [24]  625 	inc	dptr
      0020A0 E0               [24]  626 	movx	a,@dptr
      0020A1 FF               [12]  627 	mov	r7,a
      0020A2 7C 00            [12]  628 	mov	r4,#0x00
      0020A4 7D 00            [12]  629 	mov	r5,#0x00
      0020A6                        630 00107$:
      0020A6 C3               [12]  631 	clr	c
      0020A7 EC               [12]  632 	mov	a,r4
      0020A8 9E               [12]  633 	subb	a,r6
      0020A9 ED               [12]  634 	mov	a,r5
      0020AA 9F               [12]  635 	subb	a,r7
      0020AB 50 14            [24]  636 	jnc	00109$
                                    637 ;	spi_dac.c:200: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  638 	mov	r2,#0x7b
      0020AF 7B 00            [12]  639 	mov	r3,#0x00
      0020B1                        640 00105$:
      0020B1 1A               [12]  641 	dec	r2
      0020B2 BA FF 01         [24]  642 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  643 	dec	r3
      0020B6                        644 00130$:
      0020B6 EA               [12]  645 	mov	a,r2
      0020B7 4B               [12]  646 	orl	a,r3
      0020B8 70 F7            [24]  647 	jnz	00105$
                                    648 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  649 	inc	r4
      0020BB BC 00 E8         [24]  650 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  651 	inc	r5
      0020BF 80 E5            [24]  652 	sjmp	00107$
      0020C1                        653 00109$:
                                    654 ;	spi_dac.c:201: }
      0020C1 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'display_menu'
                                    658 ;------------------------------------------------------------
                                    659 ;	spi_dac.c:204: void display_menu(void) {
                                    660 ;	-----------------------------------------
                                    661 ;	 function display_menu
                                    662 ;	-----------------------------------------
      0020C2                        663 _display_menu:
                                    664 ;	spi_dac.c:205: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      0020C2 74 58            [12]  665 	mov	a,#___str_0
      0020C4 C0 E0            [24]  666 	push	acc
      0020C6 74 31            [12]  667 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  668 	push	acc
      0020CA 74 80            [12]  669 	mov	a,#0x80
      0020CC C0 E0            [24]  670 	push	acc
      0020CE 12 24 F6         [24]  671 	lcall	_printf
      0020D1 15 81            [12]  672 	dec	sp
      0020D3 15 81            [12]  673 	dec	sp
      0020D5 15 81            [12]  674 	dec	sp
                                    675 ;	spi_dac.c:206: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 1D            [12]  676 	mov	a,#___str_1
      0020D9 C0 E0            [24]  677 	push	acc
      0020DB 74 32            [12]  678 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  679 	push	acc
      0020DF 74 80            [12]  680 	mov	a,#0x80
      0020E1 C0 E0            [24]  681 	push	acc
      0020E3 12 24 F6         [24]  682 	lcall	_printf
      0020E6 15 81            [12]  683 	dec	sp
      0020E8 15 81            [12]  684 	dec	sp
      0020EA 15 81            [12]  685 	dec	sp
                                    686 ;	spi_dac.c:207: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 64            [12]  687 	mov	a,#___str_2
      0020EE C0 E0            [24]  688 	push	acc
      0020F0 74 32            [12]  689 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  690 	push	acc
      0020F4 74 80            [12]  691 	mov	a,#0x80
      0020F6 C0 E0            [24]  692 	push	acc
      0020F8 12 24 F6         [24]  693 	lcall	_printf
      0020FB 15 81            [12]  694 	dec	sp
      0020FD 15 81            [12]  695 	dec	sp
      0020FF 15 81            [12]  696 	dec	sp
                                    697 ;	spi_dac.c:208: printf("│  Command   │               Description                       │\n\r");
      002101 74 27            [12]  698 	mov	a,#___str_3
      002103 C0 E0            [24]  699 	push	acc
      002105 74 33            [12]  700 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  701 	push	acc
      002109 74 80            [12]  702 	mov	a,#0x80
      00210B C0 E0            [24]  703 	push	acc
      00210D 12 24 F6         [24]  704 	lcall	_printf
      002110 15 81            [12]  705 	dec	sp
      002112 15 81            [12]  706 	dec	sp
      002114 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:209: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 70            [12]  709 	mov	a,#___str_4
      002118 C0 E0            [24]  710 	push	acc
      00211A 74 33            [12]  711 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  712 	push	acc
      00211E 74 80            [12]  713 	mov	a,#0x80
      002120 C0 E0            [24]  714 	push	acc
      002122 12 24 F6         [24]  715 	lcall	_printf
      002125 15 81            [12]  716 	dec	sp
      002127 15 81            [12]  717 	dec	sp
      002129 15 81            [12]  718 	dec	sp
                                    719 ;	spi_dac.c:210: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 2A            [12]  720 	mov	a,#___str_5
      00212D C0 E0            [24]  721 	push	acc
      00212F 74 34            [12]  722 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  723 	push	acc
      002133 74 80            [12]  724 	mov	a,#0x80
      002135 C0 E0            [24]  725 	push	acc
      002137 12 24 F6         [24]  726 	lcall	_printf
      00213A 15 81            [12]  727 	dec	sp
      00213C 15 81            [12]  728 	dec	sp
      00213E 15 81            [12]  729 	dec	sp
                                    730 ;	spi_dac.c:211: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 71            [12]  731 	mov	a,#___str_6
      002142 C0 E0            [24]  732 	push	acc
      002144 74 34            [12]  733 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  734 	push	acc
      002148 74 80            [12]  735 	mov	a,#0x80
      00214A C0 E0            [24]  736 	push	acc
      00214C 12 24 F6         [24]  737 	lcall	_printf
      00214F 15 81            [12]  738 	dec	sp
      002151 15 81            [12]  739 	dec	sp
      002153 15 81            [12]  740 	dec	sp
                                    741 ;	spi_dac.c:212: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 B7            [12]  742 	mov	a,#___str_7
      002157 C0 E0            [24]  743 	push	acc
      002159 74 34            [12]  744 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  745 	push	acc
      00215D 74 80            [12]  746 	mov	a,#0x80
      00215F C0 E0            [24]  747 	push	acc
      002161 12 24 F6         [24]  748 	lcall	_printf
      002164 15 81            [12]  749 	dec	sp
      002166 15 81            [12]  750 	dec	sp
      002168 15 81            [12]  751 	dec	sp
                                    752 ;	spi_dac.c:213: printf("│    Q      │ Generate Square Wave                          │\n\r");
      00216A 74 FD            [12]  753 	mov	a,#___str_8
      00216C C0 E0            [24]  754 	push	acc
      00216E 74 34            [12]  755 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  756 	push	acc
      002172 74 80            [12]  757 	mov	a,#0x80
      002174 C0 E0            [24]  758 	push	acc
      002176 12 24 F6         [24]  759 	lcall	_printf
      002179 15 81            [12]  760 	dec	sp
      00217B 15 81            [12]  761 	dec	sp
      00217D 15 81            [12]  762 	dec	sp
                                    763 ;	spi_dac.c:214: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00217F 74 43            [12]  764 	mov	a,#___str_9
      002181 C0 E0            [24]  765 	push	acc
      002183 74 35            [12]  766 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  767 	push	acc
      002187 74 80            [12]  768 	mov	a,#0x80
      002189 C0 E0            [24]  769 	push	acc
      00218B 12 24 F6         [24]  770 	lcall	_printf
      00218E 15 81            [12]  771 	dec	sp
      002190 15 81            [12]  772 	dec	sp
      002192 15 81            [12]  773 	dec	sp
                                    774 ;	spi_dac.c:215: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      002194 74 89            [12]  775 	mov	a,#___str_10
      002196 C0 E0            [24]  776 	push	acc
      002198 74 35            [12]  777 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  778 	push	acc
      00219C 74 80            [12]  779 	mov	a,#0x80
      00219E C0 E0            [24]  780 	push	acc
      0021A0 12 24 F6         [24]  781 	lcall	_printf
      0021A3 15 81            [12]  782 	dec	sp
      0021A5 15 81            [12]  783 	dec	sp
      0021A7 15 81            [12]  784 	dec	sp
                                    785 ;	spi_dac.c:216: printf("│    C      │ Configure SPI Parameters                      │\n\r");
      0021A9 74 CF            [12]  786 	mov	a,#___str_11
      0021AB C0 E0            [24]  787 	push	acc
      0021AD 74 35            [12]  788 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  789 	push	acc
      0021B1 74 80            [12]  790 	mov	a,#0x80
      0021B3 C0 E0            [24]  791 	push	acc
      0021B5 12 24 F6         [24]  792 	lcall	_printf
      0021B8 15 81            [12]  793 	dec	sp
      0021BA 15 81            [12]  794 	dec	sp
      0021BC 15 81            [12]  795 	dec	sp
                                    796 ;	spi_dac.c:217: printf("│    R      │ Read SPI Data                                 │\n\r");
      0021BE 74 15            [12]  797 	mov	a,#___str_12
      0021C0 C0 E0            [24]  798 	push	acc
      0021C2 74 36            [12]  799 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  800 	push	acc
      0021C6 74 80            [12]  801 	mov	a,#0x80
      0021C8 C0 E0            [24]  802 	push	acc
      0021CA 12 24 F6         [24]  803 	lcall	_printf
      0021CD 15 81            [12]  804 	dec	sp
      0021CF 15 81            [12]  805 	dec	sp
      0021D1 15 81            [12]  806 	dec	sp
                                    807 ;	spi_dac.c:218: printf("│    W      │ Write SPI Data                                │\n\r");
      0021D3 74 5B            [12]  808 	mov	a,#___str_13
      0021D5 C0 E0            [24]  809 	push	acc
      0021D7 74 36            [12]  810 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  811 	push	acc
      0021DB 74 80            [12]  812 	mov	a,#0x80
      0021DD C0 E0            [24]  813 	push	acc
      0021DF 12 24 F6         [24]  814 	lcall	_printf
      0021E2 15 81            [12]  815 	dec	sp
      0021E4 15 81            [12]  816 	dec	sp
      0021E6 15 81            [12]  817 	dec	sp
                                    818 ;	spi_dac.c:219: printf("│    ?      │ Display this help menu                        │\n\r");
      0021E8 74 A1            [12]  819 	mov	a,#___str_14
      0021EA C0 E0            [24]  820 	push	acc
      0021EC 74 36            [12]  821 	mov	a,#(___str_14 >> 8)
      0021EE C0 E0            [24]  822 	push	acc
      0021F0 74 80            [12]  823 	mov	a,#0x80
      0021F2 C0 E0            [24]  824 	push	acc
      0021F4 12 24 F6         [24]  825 	lcall	_printf
      0021F7 15 81            [12]  826 	dec	sp
      0021F9 15 81            [12]  827 	dec	sp
      0021FB 15 81            [12]  828 	dec	sp
                                    829 ;	spi_dac.c:220: printf("│    X      │ Exit Program                                  │\n\r");
      0021FD 74 E7            [12]  830 	mov	a,#___str_15
      0021FF C0 E0            [24]  831 	push	acc
      002201 74 36            [12]  832 	mov	a,#(___str_15 >> 8)
      002203 C0 E0            [24]  833 	push	acc
      002205 74 80            [12]  834 	mov	a,#0x80
      002207 C0 E0            [24]  835 	push	acc
      002209 12 24 F6         [24]  836 	lcall	_printf
      00220C 15 81            [12]  837 	dec	sp
      00220E 15 81            [12]  838 	dec	sp
      002210 15 81            [12]  839 	dec	sp
                                    840 ;	spi_dac.c:221: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002212 74 2D            [12]  841 	mov	a,#___str_16
      002214 C0 E0            [24]  842 	push	acc
      002216 74 37            [12]  843 	mov	a,#(___str_16 >> 8)
      002218 C0 E0            [24]  844 	push	acc
      00221A 74 80            [12]  845 	mov	a,#0x80
      00221C C0 E0            [24]  846 	push	acc
      00221E 12 24 F6         [24]  847 	lcall	_printf
      002221 15 81            [12]  848 	dec	sp
      002223 15 81            [12]  849 	dec	sp
      002225 15 81            [12]  850 	dec	sp
                                    851 ;	spi_dac.c:222: printf("\n\rEnter command: ");
      002227 74 E7            [12]  852 	mov	a,#___str_17
      002229 C0 E0            [24]  853 	push	acc
      00222B 74 37            [12]  854 	mov	a,#(___str_17 >> 8)
      00222D C0 E0            [24]  855 	push	acc
      00222F 74 80            [12]  856 	mov	a,#0x80
      002231 C0 E0            [24]  857 	push	acc
      002233 12 24 F6         [24]  858 	lcall	_printf
      002236 15 81            [12]  859 	dec	sp
      002238 15 81            [12]  860 	dec	sp
      00223A 15 81            [12]  861 	dec	sp
                                    862 ;	spi_dac.c:223: }
      00223C 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'main'
                                    866 ;------------------------------------------------------------
                                    867 ;user_input                Allocated with name '_main_user_input_131072_30'
                                    868 ;result                    Allocated with name '_main_result_196609_32'
                                    869 ;------------------------------------------------------------
                                    870 ;	spi_dac.c:225: int main(void)
                                    871 ;	-----------------------------------------
                                    872 ;	 function main
                                    873 ;	-----------------------------------------
      00223D                        874 _main:
                                    875 ;	spi_dac.c:227: display_menu();
      00223D 12 20 C2         [24]  876 	lcall	_display_menu
                                    877 ;	spi_dac.c:229: while(1)
      002240                        878 00105$:
                                    879 ;	spi_dac.c:231: char user_input = getchar();
      002240 12 20 81         [24]  880 	lcall	_getchar
      002243 AE 82            [24]  881 	mov	r6,dpl
                                    882 ;	spi_dac.c:232: printf("| $ %c\n\r", user_input);
      002245 8E 05            [24]  883 	mov	ar5,r6
      002247 7F 00            [12]  884 	mov	r7,#0x00
      002249 C0 06            [24]  885 	push	ar6
      00224B C0 05            [24]  886 	push	ar5
      00224D C0 07            [24]  887 	push	ar7
      00224F 74 F9            [12]  888 	mov	a,#___str_18
      002251 C0 E0            [24]  889 	push	acc
      002253 74 37            [12]  890 	mov	a,#(___str_18 >> 8)
      002255 C0 E0            [24]  891 	push	acc
      002257 74 80            [12]  892 	mov	a,#0x80
      002259 C0 E0            [24]  893 	push	acc
      00225B 12 24 F6         [24]  894 	lcall	_printf
      00225E E5 81            [12]  895 	mov	a,sp
      002260 24 FB            [12]  896 	add	a,#0xfb
      002262 F5 81            [12]  897 	mov	sp,a
                                    898 ;	spi_dac.c:233: printf("\n\r");
      002264 74 02            [12]  899 	mov	a,#___str_19
      002266 C0 E0            [24]  900 	push	acc
      002268 74 38            [12]  901 	mov	a,#(___str_19 >> 8)
      00226A C0 E0            [24]  902 	push	acc
      00226C 74 80            [12]  903 	mov	a,#0x80
      00226E C0 E0            [24]  904 	push	acc
      002270 12 24 F6         [24]  905 	lcall	_printf
      002273 15 81            [12]  906 	dec	sp
      002275 15 81            [12]  907 	dec	sp
      002277 15 81            [12]  908 	dec	sp
      002279 D0 06            [24]  909 	pop	ar6
                                    910 ;	spi_dac.c:234: switch(user_input)
      00227B BE 42 02         [24]  911 	cjne	r6,#0x42,00121$
      00227E 80 C0            [24]  912 	sjmp	00105$
      002280                        913 00121$:
      002280 BE 4D BD         [24]  914 	cjne	r6,#0x4d,00105$
                                    915 ;	spi_dac.c:237: spi_init();
      002283 12 24 98         [24]  916 	lcall	_spi_init
                                    917 ;	spi_dac.c:238: unsigned char result = take_data();
      002286 12 22 A3         [24]  918 	lcall	_take_data
                                    919 ;	spi_dac.c:239: mannual_spi(result);
      002289 12 23 F7         [24]  920 	lcall	_mannual_spi
                                    921 ;	spi_dac.c:240: printf("SIN WAVE DONE\n\r");
      00228C 74 05            [12]  922 	mov	a,#___str_20
      00228E C0 E0            [24]  923 	push	acc
      002290 74 38            [12]  924 	mov	a,#(___str_20 >> 8)
      002292 C0 E0            [24]  925 	push	acc
      002294 74 80            [12]  926 	mov	a,#0x80
      002296 C0 E0            [24]  927 	push	acc
      002298 12 24 F6         [24]  928 	lcall	_printf
      00229B 15 81            [12]  929 	dec	sp
      00229D 15 81            [12]  930 	dec	sp
      00229F 15 81            [12]  931 	dec	sp
                                    932 ;	spi_dac.c:241: break;
                                    933 ;	spi_dac.c:246: }
                                    934 ;	spi_dac.c:256: }
      0022A1 80 9D            [24]  935 	sjmp	00105$
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'take_data'
                                    938 ;------------------------------------------------------------
                                    939 ;input                     Allocated with name '_take_data_input_65537_34'
                                    940 ;i                         Allocated with name '_take_data_i_65537_34'
                                    941 ;c                         Allocated with name '_take_data_c_65537_34'
                                    942 ;data                      Allocated with name '_take_data_data_65538_38'
                                    943 ;------------------------------------------------------------
                                    944 ;	spi_dac.c:258: unsigned char take_data()
                                    945 ;	-----------------------------------------
                                    946 ;	 function take_data
                                    947 ;	-----------------------------------------
      0022A3                        948 _take_data:
                                    949 ;	spi_dac.c:260: printf("│ Enter number (hex, up to 2 characters): \n\r|");
      0022A3 74 15            [12]  950 	mov	a,#___str_21
      0022A5 C0 E0            [24]  951 	push	acc
      0022A7 74 38            [12]  952 	mov	a,#(___str_21 >> 8)
      0022A9 C0 E0            [24]  953 	push	acc
      0022AB 74 80            [12]  954 	mov	a,#0x80
      0022AD C0 E0            [24]  955 	push	acc
      0022AF 12 24 F6         [24]  956 	lcall	_printf
      0022B2 15 81            [12]  957 	dec	sp
      0022B4 15 81            [12]  958 	dec	sp
      0022B6 15 81            [12]  959 	dec	sp
                                    960 ;	spi_dac.c:261: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0022B8 90 04 04         [24]  961 	mov	dptr,#_take_data_input_65537_34
      0022BB E4               [12]  962 	clr	a
      0022BC F0               [24]  963 	movx	@dptr,a
      0022BD 90 04 05         [24]  964 	mov	dptr,#(_take_data_input_65537_34 + 0x0001)
      0022C0 F0               [24]  965 	movx	@dptr,a
      0022C1 90 04 06         [24]  966 	mov	dptr,#(_take_data_input_65537_34 + 0x0002)
      0022C4 F0               [24]  967 	movx	@dptr,a
      0022C5 90 04 07         [24]  968 	mov	dptr,#(_take_data_input_65537_34 + 0x0003)
      0022C8 F0               [24]  969 	movx	@dptr,a
                                    970 ;	spi_dac.c:265: printf("$ ");
      0022C9 74 45            [12]  971 	mov	a,#___str_22
      0022CB C0 E0            [24]  972 	push	acc
      0022CD 74 38            [12]  973 	mov	a,#(___str_22 >> 8)
      0022CF C0 E0            [24]  974 	push	acc
      0022D1 74 80            [12]  975 	mov	a,#0x80
      0022D3 C0 E0            [24]  976 	push	acc
      0022D5 12 24 F6         [24]  977 	lcall	_printf
      0022D8 15 81            [12]  978 	dec	sp
      0022DA 15 81            [12]  979 	dec	sp
      0022DC 15 81            [12]  980 	dec	sp
                                    981 ;	spi_dac.c:267: while (i < 3) {
      0022DE 7E 00            [12]  982 	mov	r6,#0x00
      0022E0 7F 00            [12]  983 	mov	r7,#0x00
      0022E2                        984 00111$:
      0022E2 C3               [12]  985 	clr	c
      0022E3 EE               [12]  986 	mov	a,r6
      0022E4 94 03            [12]  987 	subb	a,#0x03
      0022E6 EF               [12]  988 	mov	a,r7
      0022E7 64 80            [12]  989 	xrl	a,#0x80
      0022E9 94 80            [12]  990 	subb	a,#0x80
      0022EB 50 5B            [24]  991 	jnc	00113$
                                    992 ;	spi_dac.c:269: c = getchar();
      0022ED C0 07            [24]  993 	push	ar7
      0022EF C0 06            [24]  994 	push	ar6
      0022F1 12 20 81         [24]  995 	lcall	_getchar
      0022F4 AC 82            [24]  996 	mov	r4,dpl
      0022F6 AD 83            [24]  997 	mov	r5,dph
      0022F8 D0 06            [24]  998 	pop	ar6
      0022FA D0 07            [24]  999 	pop	ar7
                                   1000 ;	spi_dac.c:272: if (c == '\r' || c == '\n') {
      0022FC BC 0D 02         [24] 1001 	cjne	r4,#0x0d,00194$
      0022FF 80 47            [24] 1002 	sjmp	00113$
      002301                       1003 00194$:
      002301 BC 0A 02         [24] 1004 	cjne	r4,#0x0a,00195$
      002304 80 42            [24] 1005 	sjmp	00113$
      002306                       1006 00195$:
                                   1007 ;	spi_dac.c:277: if ((c >= '0' && c <= '9') ||
      002306 BC 30 00         [24] 1008 	cjne	r4,#0x30,00196$
      002309                       1009 00196$:
      002309 40 05            [24] 1010 	jc	00108$
      00230B EC               [12] 1011 	mov	a,r4
      00230C 24 C6            [12] 1012 	add	a,#0xff - 0x39
      00230E 50 14            [24] 1013 	jnc	00104$
      002310                       1014 00108$:
                                   1015 ;	spi_dac.c:278: (c >= 'a' && c <= 'f') ||
      002310 BC 61 00         [24] 1016 	cjne	r4,#0x61,00199$
      002313                       1017 00199$:
      002313 40 05            [24] 1018 	jc	00110$
      002315 EC               [12] 1019 	mov	a,r4
      002316 24 99            [12] 1020 	add	a,#0xff - 0x66
      002318 50 0A            [24] 1021 	jnc	00104$
      00231A                       1022 00110$:
                                   1023 ;	spi_dac.c:279: (c >= 'A' && c <= 'F')) {
      00231A BC 41 00         [24] 1024 	cjne	r4,#0x41,00202$
      00231D                       1025 00202$:
      00231D 40 C3            [24] 1026 	jc	00111$
      00231F EC               [12] 1027 	mov	a,r4
      002320 24 B9            [12] 1028 	add	a,#0xff - 0x46
      002322 40 BE            [24] 1029 	jc	00111$
      002324                       1030 00104$:
                                   1031 ;	spi_dac.c:281: input[i] = c;
      002324 EE               [12] 1032 	mov	a,r6
      002325 24 04            [12] 1033 	add	a,#_take_data_input_65537_34
      002327 F5 82            [12] 1034 	mov	dpl,a
      002329 EF               [12] 1035 	mov	a,r7
      00232A 34 04            [12] 1036 	addc	a,#(_take_data_input_65537_34 >> 8)
      00232C F5 83            [12] 1037 	mov	dph,a
      00232E EC               [12] 1038 	mov	a,r4
      00232F F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	spi_dac.c:282: putchar(c);  // Echo character back
      002330 7D 00            [12] 1041 	mov	r5,#0x00
      002332 8C 82            [24] 1042 	mov	dpl,r4
      002334 8D 83            [24] 1043 	mov	dph,r5
      002336 C0 07            [24] 1044 	push	ar7
      002338 C0 06            [24] 1045 	push	ar6
      00233A 12 20 62         [24] 1046 	lcall	_putchar
      00233D D0 06            [24] 1047 	pop	ar6
      00233F D0 07            [24] 1048 	pop	ar7
                                   1049 ;	spi_dac.c:283: i++;
      002341 0E               [12] 1050 	inc	r6
      002342 BE 00 9D         [24] 1051 	cjne	r6,#0x00,00111$
      002345 0F               [12] 1052 	inc	r7
      002346 80 9A            [24] 1053 	sjmp	00111$
      002348                       1054 00113$:
                                   1055 ;	spi_dac.c:287: input[i] = '\0';  // Null-terminate the string
      002348 EE               [12] 1056 	mov	a,r6
      002349 24 04            [12] 1057 	add	a,#_take_data_input_65537_34
      00234B F5 82            [12] 1058 	mov	dpl,a
      00234D EF               [12] 1059 	mov	a,r7
      00234E 34 04            [12] 1060 	addc	a,#(_take_data_input_65537_34 >> 8)
      002350 F5 83            [12] 1061 	mov	dph,a
      002352 E4               [12] 1062 	clr	a
      002353 F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	spi_dac.c:290: unsigned char data = 0;
      002354 90 04 08         [24] 1065 	mov	dptr,#_take_data_data_65538_38
      002357 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	spi_dac.c:291: for (i = 0; input[i] != '\0'; i++) {
      002358 7E 00            [12] 1068 	mov	r6,#0x00
      00235A 7F 00            [12] 1069 	mov	r7,#0x00
      00235C                       1070 00127$:
      00235C EE               [12] 1071 	mov	a,r6
      00235D 24 04            [12] 1072 	add	a,#_take_data_input_65537_34
      00235F F5 82            [12] 1073 	mov	dpl,a
      002361 EF               [12] 1074 	mov	a,r7
      002362 34 04            [12] 1075 	addc	a,#(_take_data_input_65537_34 >> 8)
      002364 F5 83            [12] 1076 	mov	dph,a
      002366 E0               [24] 1077 	movx	a,@dptr
      002367 FD               [12] 1078 	mov	r5,a
      002368 70 03            [24] 1079 	jnz	00206$
      00236A 02 23 CF         [24] 1080 	ljmp	00125$
      00236D                       1081 00206$:
                                   1082 ;	spi_dac.c:292: data = data * 16;
      00236D 90 04 08         [24] 1083 	mov	dptr,#_take_data_data_65538_38
      002370 E0               [24] 1084 	movx	a,@dptr
      002371 C4               [12] 1085 	swap	a
      002372 54 F0            [12] 1086 	anl	a,#0xf0
      002374 FC               [12] 1087 	mov	r4,a
      002375 F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	spi_dac.c:293: if (input[i] >= '0' && input[i] <= '9')
      002376 BD 30 00         [24] 1090 	cjne	r5,#0x30,00207$
      002379                       1091 00207$:
      002379 40 12            [24] 1092 	jc	00122$
      00237B ED               [12] 1093 	mov	a,r5
      00237C 24 C6            [12] 1094 	add	a,#0xff - 0x39
      00237E 40 0D            [24] 1095 	jc	00122$
                                   1096 ;	spi_dac.c:294: data += input[i] - '0';
      002380 ED               [12] 1097 	mov	a,r5
      002381 24 D0            [12] 1098 	add	a,#0xd0
      002383 FD               [12] 1099 	mov	r5,a
      002384 90 04 08         [24] 1100 	mov	dptr,#_take_data_data_65538_38
      002387 E0               [24] 1101 	movx	a,@dptr
      002388 FC               [12] 1102 	mov	r4,a
      002389 2D               [12] 1103 	add	a,r5
      00238A F0               [24] 1104 	movx	@dptr,a
      00238B 80 3A            [24] 1105 	sjmp	00128$
      00238D                       1106 00122$:
                                   1107 ;	spi_dac.c:295: else if (input[i] >= 'A' && input[i] <= 'F')
      00238D EE               [12] 1108 	mov	a,r6
      00238E 24 04            [12] 1109 	add	a,#_take_data_input_65537_34
      002390 F5 82            [12] 1110 	mov	dpl,a
      002392 EF               [12] 1111 	mov	a,r7
      002393 34 04            [12] 1112 	addc	a,#(_take_data_input_65537_34 >> 8)
      002395 F5 83            [12] 1113 	mov	dph,a
      002397 E0               [24] 1114 	movx	a,@dptr
      002398 FD               [12] 1115 	mov	r5,a
      002399 BD 41 00         [24] 1116 	cjne	r5,#0x41,00210$
      00239C                       1117 00210$:
      00239C 40 14            [24] 1118 	jc	00118$
      00239E ED               [12] 1119 	mov	a,r5
      00239F 24 B9            [12] 1120 	add	a,#0xff - 0x46
      0023A1 40 0F            [24] 1121 	jc	00118$
                                   1122 ;	spi_dac.c:296: data += input[i] - 'A' + 10;
      0023A3 8D 04            [24] 1123 	mov	ar4,r5
      0023A5 74 C9            [12] 1124 	mov	a,#0xc9
      0023A7 2C               [12] 1125 	add	a,r4
      0023A8 FC               [12] 1126 	mov	r4,a
      0023A9 90 04 08         [24] 1127 	mov	dptr,#_take_data_data_65538_38
      0023AC E0               [24] 1128 	movx	a,@dptr
      0023AD FB               [12] 1129 	mov	r3,a
      0023AE 2C               [12] 1130 	add	a,r4
      0023AF F0               [24] 1131 	movx	@dptr,a
      0023B0 80 15            [24] 1132 	sjmp	00128$
      0023B2                       1133 00118$:
                                   1134 ;	spi_dac.c:297: else if (input[i] >= 'a' && input[i] <= 'f')
      0023B2 BD 61 00         [24] 1135 	cjne	r5,#0x61,00213$
      0023B5                       1136 00213$:
      0023B5 40 10            [24] 1137 	jc	00128$
      0023B7 ED               [12] 1138 	mov	a,r5
      0023B8 24 99            [12] 1139 	add	a,#0xff - 0x66
      0023BA 40 0B            [24] 1140 	jc	00128$
                                   1141 ;	spi_dac.c:298: data += input[i] - 'a' + 10;
      0023BC 74 A9            [12] 1142 	mov	a,#0xa9
      0023BE 2D               [12] 1143 	add	a,r5
      0023BF FD               [12] 1144 	mov	r5,a
      0023C0 90 04 08         [24] 1145 	mov	dptr,#_take_data_data_65538_38
      0023C3 E0               [24] 1146 	movx	a,@dptr
      0023C4 FC               [12] 1147 	mov	r4,a
      0023C5 2D               [12] 1148 	add	a,r5
      0023C6 F0               [24] 1149 	movx	@dptr,a
      0023C7                       1150 00128$:
                                   1151 ;	spi_dac.c:291: for (i = 0; input[i] != '\0'; i++) {
      0023C7 0E               [12] 1152 	inc	r6
      0023C8 BE 00 01         [24] 1153 	cjne	r6,#0x00,00216$
      0023CB 0F               [12] 1154 	inc	r7
      0023CC                       1155 00216$:
      0023CC 02 23 5C         [24] 1156 	ljmp	00127$
      0023CF                       1157 00125$:
                                   1158 ;	spi_dac.c:301: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0023CF 90 04 08         [24] 1159 	mov	dptr,#_take_data_data_65538_38
      0023D2 E0               [24] 1160 	movx	a,@dptr
      0023D3 FF               [12] 1161 	mov	r7,a
      0023D4 FD               [12] 1162 	mov	r5,a
      0023D5 7E 00            [12] 1163 	mov	r6,#0x00
      0023D7 C0 07            [24] 1164 	push	ar7
      0023D9 C0 05            [24] 1165 	push	ar5
      0023DB C0 06            [24] 1166 	push	ar6
      0023DD 74 48            [12] 1167 	mov	a,#___str_23
      0023DF C0 E0            [24] 1168 	push	acc
      0023E1 74 38            [12] 1169 	mov	a,#(___str_23 >> 8)
      0023E3 C0 E0            [24] 1170 	push	acc
      0023E5 74 80            [12] 1171 	mov	a,#0x80
      0023E7 C0 E0            [24] 1172 	push	acc
      0023E9 12 24 F6         [24] 1173 	lcall	_printf
      0023EC E5 81            [12] 1174 	mov	a,sp
      0023EE 24 FB            [12] 1175 	add	a,#0xfb
      0023F0 F5 81            [12] 1176 	mov	sp,a
      0023F2 D0 07            [24] 1177 	pop	ar7
                                   1178 ;	spi_dac.c:308: return data;
      0023F4 8F 82            [24] 1179 	mov	dpl,r7
                                   1180 ;	spi_dac.c:310: }
      0023F6 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'mannual_spi'
                                   1184 ;------------------------------------------------------------
                                   1185 ;number                    Allocated with name '_mannual_spi_number_65536_41'
                                   1186 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_42'
                                   1187 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_42'
                                   1188 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_42'
                                   1189 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_42'
                                   1190 ;------------------------------------------------------------
                                   1191 ;	spi_dac.c:312: void mannual_spi(unsigned char number)
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function mannual_spi
                                   1194 ;	-----------------------------------------
      0023F7                       1195 _mannual_spi:
      0023F7 E5 82            [12] 1196 	mov	a,dpl
      0023F9 90 04 09         [24] 1197 	mov	dptr,#_mannual_spi_number_65536_41
      0023FC F0               [24] 1198 	movx	@dptr,a
                                   1199 ;	spi_dac.c:314: int dac_value_index = 0;
      0023FD 90 04 0A         [24] 1200 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002400 E4               [12] 1201 	clr	a
      002401 F0               [24] 1202 	movx	@dptr,a
      002402 A3               [24] 1203 	inc	dptr
      002403 F0               [24] 1204 	movx	@dptr,a
                                   1205 ;	spi_dac.c:315: int dac_data = 0;
      002404 90 04 0C         [24] 1206 	mov	dptr,#_mannual_spi_dac_data_65536_42
      002407 F0               [24] 1207 	movx	@dptr,a
      002408 A3               [24] 1208 	inc	dptr
      002409 F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	spi_dac.c:317: while(number > 0)
      00240A                       1211 00110$:
      00240A 90 04 09         [24] 1212 	mov	dptr,#_mannual_spi_number_65536_41
      00240D E0               [24] 1213 	movx	a,@dptr
      00240E 70 01            [24] 1214 	jnz	00143$
      002410 22               [24] 1215 	ret
      002411                       1216 00143$:
                                   1217 ;	spi_dac.c:322: if(dac_value_index < SINE_MAX_INDEX)
      002411 90 04 0A         [24] 1218 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002414 E0               [24] 1219 	movx	a,@dptr
      002415 FE               [12] 1220 	mov	r6,a
      002416 A3               [24] 1221 	inc	dptr
      002417 E0               [24] 1222 	movx	a,@dptr
      002418 FF               [12] 1223 	mov	r7,a
      002419 C3               [12] 1224 	clr	c
      00241A 64 80            [12] 1225 	xrl	a,#0x80
      00241C 94 81            [12] 1226 	subb	a,#0x81
      00241E 50 21            [24] 1227 	jnc	00102$
                                   1228 ;	spi_dac.c:326: dac_data = dac_values[dac_value_index];
      002420 EE               [12] 1229 	mov	a,r6
      002421 2E               [12] 1230 	add	a,r6
      002422 FE               [12] 1231 	mov	r6,a
      002423 EF               [12] 1232 	mov	a,r7
      002424 33               [12] 1233 	rlc	a
      002425 FF               [12] 1234 	mov	r7,a
      002426 EE               [12] 1235 	mov	a,r6
      002427 24 58            [12] 1236 	add	a,#_dac_values
      002429 F5 82            [12] 1237 	mov	dpl,a
      00242B EF               [12] 1238 	mov	a,r7
      00242C 34 2F            [12] 1239 	addc	a,#(_dac_values >> 8)
      00242E F5 83            [12] 1240 	mov	dph,a
      002430 E4               [12] 1241 	clr	a
      002431 93               [24] 1242 	movc	a,@a+dptr
      002432 FE               [12] 1243 	mov	r6,a
      002433 A3               [24] 1244 	inc	dptr
      002434 E4               [12] 1245 	clr	a
      002435 93               [24] 1246 	movc	a,@a+dptr
      002436 FF               [12] 1247 	mov	r7,a
      002437 90 04 0C         [24] 1248 	mov	dptr,#_mannual_spi_dac_data_65536_42
      00243A EE               [12] 1249 	mov	a,r6
      00243B F0               [24] 1250 	movx	@dptr,a
      00243C EF               [12] 1251 	mov	a,r7
      00243D A3               [24] 1252 	inc	dptr
      00243E F0               [24] 1253 	movx	@dptr,a
      00243F 80 07            [24] 1254 	sjmp	00103$
      002441                       1255 00102$:
                                   1256 ;	spi_dac.c:330: dac_value_index = 0;  // Reset index for next cycle
      002441 90 04 0A         [24] 1257 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002444 E4               [12] 1258 	clr	a
      002445 F0               [24] 1259 	movx	@dptr,a
      002446 A3               [24] 1260 	inc	dptr
      002447 F0               [24] 1261 	movx	@dptr,a
      002448                       1262 00103$:
                                   1263 ;	spi_dac.c:337: ((dac_data >> 4) & 0x0F);
      002448 90 04 0C         [24] 1264 	mov	dptr,#_mannual_spi_dac_data_65536_42
      00244B E0               [24] 1265 	movx	a,@dptr
      00244C FE               [12] 1266 	mov	r6,a
      00244D A3               [24] 1267 	inc	dptr
      00244E E0               [24] 1268 	movx	a,@dptr
      00244F 8E 04            [24] 1269 	mov	ar4,r6
      002451 C4               [12] 1270 	swap	a
      002452 CC               [12] 1271 	xch	a,r4
      002453 C4               [12] 1272 	swap	a
      002454 54 0F            [12] 1273 	anl	a,#0x0f
      002456 6C               [12] 1274 	xrl	a,r4
      002457 CC               [12] 1275 	xch	a,r4
      002458 54 0F            [12] 1276 	anl	a,#0x0f
      00245A CC               [12] 1277 	xch	a,r4
      00245B 6C               [12] 1278 	xrl	a,r4
      00245C CC               [12] 1279 	xch	a,r4
      00245D 30 E3 02         [24] 1280 	jnb	acc.3,00145$
      002460 44 F0            [12] 1281 	orl	a,#0xf0
      002462                       1282 00145$:
      002462 74 0F            [12] 1283 	mov	a,#0x0f
      002464 5C               [12] 1284 	anl	a,r4
      002465 44 10            [12] 1285 	orl	a,#0x10
      002467 FD               [12] 1286 	mov	r5,a
                                   1287 ;	spi_dac.c:340: low_byte = (dac_data & 0x0F) << 4;
      002468 53 06 0F         [24] 1288 	anl	ar6,#0x0f
      00246B EE               [12] 1289 	mov	a,r6
      00246C C4               [12] 1290 	swap	a
      00246D 54 F0            [12] 1291 	anl	a,#0xf0
      00246F FF               [12] 1292 	mov	r7,a
                                   1293 ;	spi_dac.c:344: P1_1 = 0;  // Select DAC
                                   1294 ;	assignBit
      002470 C2 91            [12] 1295 	clr	_P1_1
                                   1296 ;	spi_dac.c:347: SPDAT = high_byte;
      002472 8D C5            [24] 1297 	mov	_SPDAT,r5
                                   1298 ;	spi_dac.c:348: while (!(SPSTA & (1<<7))); 
      002474                       1299 00104$:
      002474 E5 C4            [12] 1300 	mov	a,_SPSTA
      002476 30 E7 FB         [24] 1301 	jnb	acc.7,00104$
                                   1302 ;	spi_dac.c:352: SPDAT = low_byte;
      002479 8F C5            [24] 1303 	mov	_SPDAT,r7
                                   1304 ;	spi_dac.c:353: while (!(SPSTA & (1<<7))); 
      00247B                       1305 00107$:
      00247B E5 C4            [12] 1306 	mov	a,_SPSTA
      00247D 30 E7 FB         [24] 1307 	jnb	acc.7,00107$
                                   1308 ;	spi_dac.c:355: P1_1 = 1;  // Deselect DAC
                                   1309 ;	assignBit
      002480 D2 91            [12] 1310 	setb	_P1_1
                                   1311 ;	spi_dac.c:357: dac_value_index++;
      002482 90 04 0A         [24] 1312 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002485 E0               [24] 1313 	movx	a,@dptr
      002486 24 01            [12] 1314 	add	a,#0x01
      002488 F0               [24] 1315 	movx	@dptr,a
      002489 A3               [24] 1316 	inc	dptr
      00248A E0               [24] 1317 	movx	a,@dptr
      00248B 34 00            [12] 1318 	addc	a,#0x00
      00248D F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	spi_dac.c:358: number = number - 1;
      00248E 90 04 09         [24] 1321 	mov	dptr,#_mannual_spi_number_65536_41
      002491 E0               [24] 1322 	movx	a,@dptr
      002492 FF               [12] 1323 	mov	r7,a
      002493 14               [12] 1324 	dec	a
      002494 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	spi_dac.c:360: }
      002495 02 24 0A         [24] 1327 	ljmp	00110$
                                   1328 ;------------------------------------------------------------
                                   1329 ;Allocation info for local variables in function 'spi_init'
                                   1330 ;------------------------------------------------------------
                                   1331 ;	spi_dac.c:371: void spi_init(void) 
                                   1332 ;	-----------------------------------------
                                   1333 ;	 function spi_init
                                   1334 ;	-----------------------------------------
      002498                       1335 _spi_init:
                                   1336 ;	spi_dac.c:392: SPCON |= 0x10;
      002498 43 C3 10         [24] 1337 	orl	_SPCON,#0x10
                                   1338 ;	spi_dac.c:393: SPCON |= 0x20;
      00249B 43 C3 20         [24] 1339 	orl	_SPCON,#0x20
                                   1340 ;	spi_dac.c:394: SPCON |= 0x40;
      00249E 43 C3 40         [24] 1341 	orl	_SPCON,#0x40
                                   1342 ;	spi_dac.c:401: }
      0024A1 22               [24] 1343 	ret
                                   1344 ;------------------------------------------------------------
                                   1345 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1346 ;------------------------------------------------------------
                                   1347 ;	spi_dac.c:408: void spi_transmission_start(void)
                                   1348 ;	-----------------------------------------
                                   1349 ;	 function spi_transmission_start
                                   1350 ;	-----------------------------------------
      0024A2                       1351 _spi_transmission_start:
                                   1352 ;	spi_dac.c:410: SPCON |= SPI_ENABLE;           // Enable SPI
      0024A2 43 C3 40         [24] 1353 	orl	_SPCON,#0x40
                                   1354 ;	spi_dac.c:411: P1_1 = 0;
                                   1355 ;	assignBit
      0024A5 C2 91            [12] 1356 	clr	_P1_1
                                   1357 ;	spi_dac.c:412: }
      0024A7 22               [24] 1358 	ret
                                   1359 	.area CSEG    (CODE)
                                   1360 	.area CONST   (CODE)
      002F58                       1361 _dac_values:
      002F58 80 00                 1362 	.byte #0x80, #0x00	;  128
      002F5A 83 00                 1363 	.byte #0x83, #0x00	;  131
      002F5C 86 00                 1364 	.byte #0x86, #0x00	;  134
      002F5E 89 00                 1365 	.byte #0x89, #0x00	;  137
      002F60 8C 00                 1366 	.byte #0x8c, #0x00	;  140
      002F62 90 00                 1367 	.byte #0x90, #0x00	;  144
      002F64 93 00                 1368 	.byte #0x93, #0x00	;  147
      002F66 96 00                 1369 	.byte #0x96, #0x00	;  150
      002F68 99 00                 1370 	.byte #0x99, #0x00	;  153
      002F6A 9C 00                 1371 	.byte #0x9c, #0x00	;  156
      002F6C 9F 00                 1372 	.byte #0x9f, #0x00	;  159
      002F6E A2 00                 1373 	.byte #0xa2, #0x00	;  162
      002F70 A5 00                 1374 	.byte #0xa5, #0x00	;  165
      002F72 A8 00                 1375 	.byte #0xa8, #0x00	;  168
      002F74 AB 00                 1376 	.byte #0xab, #0x00	;  171
      002F76 AE 00                 1377 	.byte #0xae, #0x00	;  174
      002F78 B1 00                 1378 	.byte #0xb1, #0x00	;  177
      002F7A B3 00                 1379 	.byte #0xb3, #0x00	;  179
      002F7C B6 00                 1380 	.byte #0xb6, #0x00	;  182
      002F7E B9 00                 1381 	.byte #0xb9, #0x00	;  185
      002F80 BC 00                 1382 	.byte #0xbc, #0x00	;  188
      002F82 BF 00                 1383 	.byte #0xbf, #0x00	;  191
      002F84 C1 00                 1384 	.byte #0xc1, #0x00	;  193
      002F86 C4 00                 1385 	.byte #0xc4, #0x00	;  196
      002F88 C7 00                 1386 	.byte #0xc7, #0x00	;  199
      002F8A C9 00                 1387 	.byte #0xc9, #0x00	;  201
      002F8C CC 00                 1388 	.byte #0xcc, #0x00	;  204
      002F8E CE 00                 1389 	.byte #0xce, #0x00	;  206
      002F90 D1 00                 1390 	.byte #0xd1, #0x00	;  209
      002F92 D3 00                 1391 	.byte #0xd3, #0x00	;  211
      002F94 D5 00                 1392 	.byte #0xd5, #0x00	;  213
      002F96 D8 00                 1393 	.byte #0xd8, #0x00	;  216
      002F98 DA 00                 1394 	.byte #0xda, #0x00	;  218
      002F9A DC 00                 1395 	.byte #0xdc, #0x00	;  220
      002F9C DE 00                 1396 	.byte #0xde, #0x00	;  222
      002F9E E0 00                 1397 	.byte #0xe0, #0x00	;  224
      002FA0 E2 00                 1398 	.byte #0xe2, #0x00	;  226
      002FA2 E4 00                 1399 	.byte #0xe4, #0x00	;  228
      002FA4 E6 00                 1400 	.byte #0xe6, #0x00	;  230
      002FA6 E8 00                 1401 	.byte #0xe8, #0x00	;  232
      002FA8 EA 00                 1402 	.byte #0xea, #0x00	;  234
      002FAA EB 00                 1403 	.byte #0xeb, #0x00	;  235
      002FAC ED 00                 1404 	.byte #0xed, #0x00	;  237
      002FAE EF 00                 1405 	.byte #0xef, #0x00	;  239
      002FB0 F0 00                 1406 	.byte #0xf0, #0x00	;  240
      002FB2 F1 00                 1407 	.byte #0xf1, #0x00	;  241
      002FB4 F3 00                 1408 	.byte #0xf3, #0x00	;  243
      002FB6 F4 00                 1409 	.byte #0xf4, #0x00	;  244
      002FB8 F5 00                 1410 	.byte #0xf5, #0x00	;  245
      002FBA F6 00                 1411 	.byte #0xf6, #0x00	;  246
      002FBC F8 00                 1412 	.byte #0xf8, #0x00	;  248
      002FBE F9 00                 1413 	.byte #0xf9, #0x00	;  249
      002FC0 FA 00                 1414 	.byte #0xfa, #0x00	;  250
      002FC2 FA 00                 1415 	.byte #0xfa, #0x00	;  250
      002FC4 FB 00                 1416 	.byte #0xfb, #0x00	;  251
      002FC6 FC 00                 1417 	.byte #0xfc, #0x00	;  252
      002FC8 FD 00                 1418 	.byte #0xfd, #0x00	;  253
      002FCA FD 00                 1419 	.byte #0xfd, #0x00	;  253
      002FCC FE 00                 1420 	.byte #0xfe, #0x00	;  254
      002FCE FE 00                 1421 	.byte #0xfe, #0x00	;  254
      002FD0 FE 00                 1422 	.byte #0xfe, #0x00	;  254
      002FD2 FF 00                 1423 	.byte #0xff, #0x00	;  255
      002FD4 FF 00                 1424 	.byte #0xff, #0x00	;  255
      002FD6 FF 00                 1425 	.byte #0xff, #0x00	;  255
      002FD8 FF 00                 1426 	.byte #0xff, #0x00	;  255
      002FDA FF 00                 1427 	.byte #0xff, #0x00	;  255
      002FDC FF 00                 1428 	.byte #0xff, #0x00	;  255
      002FDE FF 00                 1429 	.byte #0xff, #0x00	;  255
      002FE0 FE 00                 1430 	.byte #0xfe, #0x00	;  254
      002FE2 FE 00                 1431 	.byte #0xfe, #0x00	;  254
      002FE4 FE 00                 1432 	.byte #0xfe, #0x00	;  254
      002FE6 FD 00                 1433 	.byte #0xfd, #0x00	;  253
      002FE8 FD 00                 1434 	.byte #0xfd, #0x00	;  253
      002FEA FC 00                 1435 	.byte #0xfc, #0x00	;  252
      002FEC FB 00                 1436 	.byte #0xfb, #0x00	;  251
      002FEE FA 00                 1437 	.byte #0xfa, #0x00	;  250
      002FF0 FA 00                 1438 	.byte #0xfa, #0x00	;  250
      002FF2 F9 00                 1439 	.byte #0xf9, #0x00	;  249
      002FF4 F8 00                 1440 	.byte #0xf8, #0x00	;  248
      002FF6 F6 00                 1441 	.byte #0xf6, #0x00	;  246
      002FF8 F5 00                 1442 	.byte #0xf5, #0x00	;  245
      002FFA F4 00                 1443 	.byte #0xf4, #0x00	;  244
      002FFC F3 00                 1444 	.byte #0xf3, #0x00	;  243
      002FFE F1 00                 1445 	.byte #0xf1, #0x00	;  241
      003000 F0 00                 1446 	.byte #0xf0, #0x00	;  240
      003002 EF 00                 1447 	.byte #0xef, #0x00	;  239
      003004 ED 00                 1448 	.byte #0xed, #0x00	;  237
      003006 EB 00                 1449 	.byte #0xeb, #0x00	;  235
      003008 EA 00                 1450 	.byte #0xea, #0x00	;  234
      00300A E8 00                 1451 	.byte #0xe8, #0x00	;  232
      00300C E6 00                 1452 	.byte #0xe6, #0x00	;  230
      00300E E4 00                 1453 	.byte #0xe4, #0x00	;  228
      003010 E2 00                 1454 	.byte #0xe2, #0x00	;  226
      003012 E0 00                 1455 	.byte #0xe0, #0x00	;  224
      003014 DE 00                 1456 	.byte #0xde, #0x00	;  222
      003016 DC 00                 1457 	.byte #0xdc, #0x00	;  220
      003018 DA 00                 1458 	.byte #0xda, #0x00	;  218
      00301A D8 00                 1459 	.byte #0xd8, #0x00	;  216
      00301C D5 00                 1460 	.byte #0xd5, #0x00	;  213
      00301E D3 00                 1461 	.byte #0xd3, #0x00	;  211
      003020 D1 00                 1462 	.byte #0xd1, #0x00	;  209
      003022 CE 00                 1463 	.byte #0xce, #0x00	;  206
      003024 CC 00                 1464 	.byte #0xcc, #0x00	;  204
      003026 C9 00                 1465 	.byte #0xc9, #0x00	;  201
      003028 C7 00                 1466 	.byte #0xc7, #0x00	;  199
      00302A C4 00                 1467 	.byte #0xc4, #0x00	;  196
      00302C C1 00                 1468 	.byte #0xc1, #0x00	;  193
      00302E BF 00                 1469 	.byte #0xbf, #0x00	;  191
      003030 BC 00                 1470 	.byte #0xbc, #0x00	;  188
      003032 B9 00                 1471 	.byte #0xb9, #0x00	;  185
      003034 B6 00                 1472 	.byte #0xb6, #0x00	;  182
      003036 B3 00                 1473 	.byte #0xb3, #0x00	;  179
      003038 B1 00                 1474 	.byte #0xb1, #0x00	;  177
      00303A AE 00                 1475 	.byte #0xae, #0x00	;  174
      00303C AB 00                 1476 	.byte #0xab, #0x00	;  171
      00303E A8 00                 1477 	.byte #0xa8, #0x00	;  168
      003040 A5 00                 1478 	.byte #0xa5, #0x00	;  165
      003042 A2 00                 1479 	.byte #0xa2, #0x00	;  162
      003044 9F 00                 1480 	.byte #0x9f, #0x00	;  159
      003046 9C 00                 1481 	.byte #0x9c, #0x00	;  156
      003048 99 00                 1482 	.byte #0x99, #0x00	;  153
      00304A 96 00                 1483 	.byte #0x96, #0x00	;  150
      00304C 93 00                 1484 	.byte #0x93, #0x00	;  147
      00304E 90 00                 1485 	.byte #0x90, #0x00	;  144
      003050 8C 00                 1486 	.byte #0x8c, #0x00	;  140
      003052 89 00                 1487 	.byte #0x89, #0x00	;  137
      003054 86 00                 1488 	.byte #0x86, #0x00	;  134
      003056 83 00                 1489 	.byte #0x83, #0x00	;  131
      003058 80 00                 1490 	.byte #0x80, #0x00	;  128
      00305A 7D 00                 1491 	.byte #0x7d, #0x00	;  125
      00305C 7A 00                 1492 	.byte #0x7a, #0x00	;  122
      00305E 77 00                 1493 	.byte #0x77, #0x00	;  119
      003060 74 00                 1494 	.byte #0x74, #0x00	;  116
      003062 70 00                 1495 	.byte #0x70, #0x00	;  112
      003064 6D 00                 1496 	.byte #0x6d, #0x00	;  109
      003066 6A 00                 1497 	.byte #0x6a, #0x00	;  106
      003068 67 00                 1498 	.byte #0x67, #0x00	;  103
      00306A 64 00                 1499 	.byte #0x64, #0x00	;  100
      00306C 61 00                 1500 	.byte #0x61, #0x00	;  97
      00306E 5E 00                 1501 	.byte #0x5e, #0x00	;  94
      003070 5B 00                 1502 	.byte #0x5b, #0x00	;  91
      003072 58 00                 1503 	.byte #0x58, #0x00	;  88
      003074 55 00                 1504 	.byte #0x55, #0x00	;  85
      003076 52 00                 1505 	.byte #0x52, #0x00	;  82
      003078 4F 00                 1506 	.byte #0x4f, #0x00	;  79
      00307A 4D 00                 1507 	.byte #0x4d, #0x00	;  77
      00307C 4A 00                 1508 	.byte #0x4a, #0x00	;  74
      00307E 47 00                 1509 	.byte #0x47, #0x00	;  71
      003080 44 00                 1510 	.byte #0x44, #0x00	;  68
      003082 41 00                 1511 	.byte #0x41, #0x00	;  65
      003084 3F 00                 1512 	.byte #0x3f, #0x00	;  63
      003086 3C 00                 1513 	.byte #0x3c, #0x00	;  60
      003088 39 00                 1514 	.byte #0x39, #0x00	;  57
      00308A 37 00                 1515 	.byte #0x37, #0x00	;  55
      00308C 34 00                 1516 	.byte #0x34, #0x00	;  52
      00308E 32 00                 1517 	.byte #0x32, #0x00	;  50
      003090 2F 00                 1518 	.byte #0x2f, #0x00	;  47
      003092 2D 00                 1519 	.byte #0x2d, #0x00	;  45
      003094 2B 00                 1520 	.byte #0x2b, #0x00	;  43
      003096 28 00                 1521 	.byte #0x28, #0x00	;  40
      003098 26 00                 1522 	.byte #0x26, #0x00	;  38
      00309A 24 00                 1523 	.byte #0x24, #0x00	;  36
      00309C 22 00                 1524 	.byte #0x22, #0x00	;  34
      00309E 20 00                 1525 	.byte #0x20, #0x00	;  32
      0030A0 1E 00                 1526 	.byte #0x1e, #0x00	;  30
      0030A2 1C 00                 1527 	.byte #0x1c, #0x00	;  28
      0030A4 1A 00                 1528 	.byte #0x1a, #0x00	;  26
      0030A6 18 00                 1529 	.byte #0x18, #0x00	;  24
      0030A8 16 00                 1530 	.byte #0x16, #0x00	;  22
      0030AA 15 00                 1531 	.byte #0x15, #0x00	;  21
      0030AC 13 00                 1532 	.byte #0x13, #0x00	;  19
      0030AE 11 00                 1533 	.byte #0x11, #0x00	;  17
      0030B0 10 00                 1534 	.byte #0x10, #0x00	;  16
      0030B2 0F 00                 1535 	.byte #0x0f, #0x00	;  15
      0030B4 0D 00                 1536 	.byte #0x0d, #0x00	;  13
      0030B6 0C 00                 1537 	.byte #0x0c, #0x00	;  12
      0030B8 0B 00                 1538 	.byte #0x0b, #0x00	;  11
      0030BA 0A 00                 1539 	.byte #0x0a, #0x00	;  10
      0030BC 08 00                 1540 	.byte #0x08, #0x00	;  8
      0030BE 07 00                 1541 	.byte #0x07, #0x00	;  7
      0030C0 06 00                 1542 	.byte #0x06, #0x00	;  6
      0030C2 06 00                 1543 	.byte #0x06, #0x00	;  6
      0030C4 05 00                 1544 	.byte #0x05, #0x00	;  5
      0030C6 04 00                 1545 	.byte #0x04, #0x00	;  4
      0030C8 03 00                 1546 	.byte #0x03, #0x00	;  3
      0030CA 03 00                 1547 	.byte #0x03, #0x00	;  3
      0030CC 02 00                 1548 	.byte #0x02, #0x00	;  2
      0030CE 02 00                 1549 	.byte #0x02, #0x00	;  2
      0030D0 02 00                 1550 	.byte #0x02, #0x00	;  2
      0030D2 01 00                 1551 	.byte #0x01, #0x00	;  1
      0030D4 01 00                 1552 	.byte #0x01, #0x00	;  1
      0030D6 01 00                 1553 	.byte #0x01, #0x00	;  1
      0030D8 01 00                 1554 	.byte #0x01, #0x00	;  1
      0030DA 01 00                 1555 	.byte #0x01, #0x00	;  1
      0030DC 01 00                 1556 	.byte #0x01, #0x00	;  1
      0030DE 01 00                 1557 	.byte #0x01, #0x00	;  1
      0030E0 02 00                 1558 	.byte #0x02, #0x00	;  2
      0030E2 02 00                 1559 	.byte #0x02, #0x00	;  2
      0030E4 02 00                 1560 	.byte #0x02, #0x00	;  2
      0030E6 03 00                 1561 	.byte #0x03, #0x00	;  3
      0030E8 03 00                 1562 	.byte #0x03, #0x00	;  3
      0030EA 04 00                 1563 	.byte #0x04, #0x00	;  4
      0030EC 05 00                 1564 	.byte #0x05, #0x00	;  5
      0030EE 06 00                 1565 	.byte #0x06, #0x00	;  6
      0030F0 06 00                 1566 	.byte #0x06, #0x00	;  6
      0030F2 07 00                 1567 	.byte #0x07, #0x00	;  7
      0030F4 08 00                 1568 	.byte #0x08, #0x00	;  8
      0030F6 0A 00                 1569 	.byte #0x0a, #0x00	;  10
      0030F8 0B 00                 1570 	.byte #0x0b, #0x00	;  11
      0030FA 0C 00                 1571 	.byte #0x0c, #0x00	;  12
      0030FC 0D 00                 1572 	.byte #0x0d, #0x00	;  13
      0030FE 0F 00                 1573 	.byte #0x0f, #0x00	;  15
      003100 10 00                 1574 	.byte #0x10, #0x00	;  16
      003102 11 00                 1575 	.byte #0x11, #0x00	;  17
      003104 13 00                 1576 	.byte #0x13, #0x00	;  19
      003106 15 00                 1577 	.byte #0x15, #0x00	;  21
      003108 16 00                 1578 	.byte #0x16, #0x00	;  22
      00310A 18 00                 1579 	.byte #0x18, #0x00	;  24
      00310C 1A 00                 1580 	.byte #0x1a, #0x00	;  26
      00310E 1C 00                 1581 	.byte #0x1c, #0x00	;  28
      003110 1E 00                 1582 	.byte #0x1e, #0x00	;  30
      003112 20 00                 1583 	.byte #0x20, #0x00	;  32
      003114 22 00                 1584 	.byte #0x22, #0x00	;  34
      003116 24 00                 1585 	.byte #0x24, #0x00	;  36
      003118 26 00                 1586 	.byte #0x26, #0x00	;  38
      00311A 28 00                 1587 	.byte #0x28, #0x00	;  40
      00311C 2B 00                 1588 	.byte #0x2b, #0x00	;  43
      00311E 2D 00                 1589 	.byte #0x2d, #0x00	;  45
      003120 2F 00                 1590 	.byte #0x2f, #0x00	;  47
      003122 32 00                 1591 	.byte #0x32, #0x00	;  50
      003124 34 00                 1592 	.byte #0x34, #0x00	;  52
      003126 37 00                 1593 	.byte #0x37, #0x00	;  55
      003128 39 00                 1594 	.byte #0x39, #0x00	;  57
      00312A 3C 00                 1595 	.byte #0x3c, #0x00	;  60
      00312C 3F 00                 1596 	.byte #0x3f, #0x00	;  63
      00312E 41 00                 1597 	.byte #0x41, #0x00	;  65
      003130 44 00                 1598 	.byte #0x44, #0x00	;  68
      003132 47 00                 1599 	.byte #0x47, #0x00	;  71
      003134 4A 00                 1600 	.byte #0x4a, #0x00	;  74
      003136 4D 00                 1601 	.byte #0x4d, #0x00	;  77
      003138 4F 00                 1602 	.byte #0x4f, #0x00	;  79
      00313A 52 00                 1603 	.byte #0x52, #0x00	;  82
      00313C 55 00                 1604 	.byte #0x55, #0x00	;  85
      00313E 58 00                 1605 	.byte #0x58, #0x00	;  88
      003140 5B 00                 1606 	.byte #0x5b, #0x00	;  91
      003142 5E 00                 1607 	.byte #0x5e, #0x00	;  94
      003144 61 00                 1608 	.byte #0x61, #0x00	;  97
      003146 64 00                 1609 	.byte #0x64, #0x00	;  100
      003148 67 00                 1610 	.byte #0x67, #0x00	;  103
      00314A 6A 00                 1611 	.byte #0x6a, #0x00	;  106
      00314C 6D 00                 1612 	.byte #0x6d, #0x00	;  109
      00314E 70 00                 1613 	.byte #0x70, #0x00	;  112
      003150 74 00                 1614 	.byte #0x74, #0x00	;  116
      003152 77 00                 1615 	.byte #0x77, #0x00	;  119
      003154 7A 00                 1616 	.byte #0x7a, #0x00	;  122
      003156 7D 00                 1617 	.byte #0x7d, #0x00	;  125
                                   1618 	.area CONST   (CODE)
      003158                       1619 ___str_0:
      003158 0A                    1620 	.db 0x0a
      003159 0D                    1621 	.db 0x0d
      00315A E2                    1622 	.db 0xe2
      00315B 94                    1623 	.db 0x94
      00315C 8C                    1624 	.db 0x8c
      00315D E2                    1625 	.db 0xe2
      00315E 94                    1626 	.db 0x94
      00315F 80                    1627 	.db 0x80
      003160 E2                    1628 	.db 0xe2
      003161 94                    1629 	.db 0x94
      003162 80                    1630 	.db 0x80
      003163 E2                    1631 	.db 0xe2
      003164 94                    1632 	.db 0x94
      003165 80                    1633 	.db 0x80
      003166 E2                    1634 	.db 0xe2
      003167 94                    1635 	.db 0x94
      003168 80                    1636 	.db 0x80
      003169 E2                    1637 	.db 0xe2
      00316A 94                    1638 	.db 0x94
      00316B 80                    1639 	.db 0x80
      00316C E2                    1640 	.db 0xe2
      00316D 94                    1641 	.db 0x94
      00316E 80                    1642 	.db 0x80
      00316F E2                    1643 	.db 0xe2
      003170 94                    1644 	.db 0x94
      003171 80                    1645 	.db 0x80
      003172 E2                    1646 	.db 0xe2
      003173 94                    1647 	.db 0x94
      003174 80                    1648 	.db 0x80
      003175 E2                    1649 	.db 0xe2
      003176 94                    1650 	.db 0x94
      003177 80                    1651 	.db 0x80
      003178 E2                    1652 	.db 0xe2
      003179 94                    1653 	.db 0x94
      00317A 80                    1654 	.db 0x80
      00317B E2                    1655 	.db 0xe2
      00317C 94                    1656 	.db 0x94
      00317D 80                    1657 	.db 0x80
      00317E E2                    1658 	.db 0xe2
      00317F 94                    1659 	.db 0x94
      003180 80                    1660 	.db 0x80
      003181 E2                    1661 	.db 0xe2
      003182 94                    1662 	.db 0x94
      003183 80                    1663 	.db 0x80
      003184 E2                    1664 	.db 0xe2
      003185 94                    1665 	.db 0x94
      003186 80                    1666 	.db 0x80
      003187 E2                    1667 	.db 0xe2
      003188 94                    1668 	.db 0x94
      003189 80                    1669 	.db 0x80
      00318A E2                    1670 	.db 0xe2
      00318B 94                    1671 	.db 0x94
      00318C 80                    1672 	.db 0x80
      00318D E2                    1673 	.db 0xe2
      00318E 94                    1674 	.db 0x94
      00318F 80                    1675 	.db 0x80
      003190 E2                    1676 	.db 0xe2
      003191 94                    1677 	.db 0x94
      003192 80                    1678 	.db 0x80
      003193 E2                    1679 	.db 0xe2
      003194 94                    1680 	.db 0x94
      003195 80                    1681 	.db 0x80
      003196 E2                    1682 	.db 0xe2
      003197 94                    1683 	.db 0x94
      003198 80                    1684 	.db 0x80
      003199 E2                    1685 	.db 0xe2
      00319A 94                    1686 	.db 0x94
      00319B 80                    1687 	.db 0x80
      00319C E2                    1688 	.db 0xe2
      00319D 94                    1689 	.db 0x94
      00319E 80                    1690 	.db 0x80
      00319F E2                    1691 	.db 0xe2
      0031A0 94                    1692 	.db 0x94
      0031A1 80                    1693 	.db 0x80
      0031A2 E2                    1694 	.db 0xe2
      0031A3 94                    1695 	.db 0x94
      0031A4 80                    1696 	.db 0x80
      0031A5 E2                    1697 	.db 0xe2
      0031A6 94                    1698 	.db 0x94
      0031A7 80                    1699 	.db 0x80
      0031A8 E2                    1700 	.db 0xe2
      0031A9 94                    1701 	.db 0x94
      0031AA 80                    1702 	.db 0x80
      0031AB E2                    1703 	.db 0xe2
      0031AC 94                    1704 	.db 0x94
      0031AD 80                    1705 	.db 0x80
      0031AE E2                    1706 	.db 0xe2
      0031AF 94                    1707 	.db 0x94
      0031B0 80                    1708 	.db 0x80
      0031B1 E2                    1709 	.db 0xe2
      0031B2 94                    1710 	.db 0x94
      0031B3 80                    1711 	.db 0x80
      0031B4 E2                    1712 	.db 0xe2
      0031B5 94                    1713 	.db 0x94
      0031B6 80                    1714 	.db 0x80
      0031B7 E2                    1715 	.db 0xe2
      0031B8 94                    1716 	.db 0x94
      0031B9 80                    1717 	.db 0x80
      0031BA E2                    1718 	.db 0xe2
      0031BB 94                    1719 	.db 0x94
      0031BC 80                    1720 	.db 0x80
      0031BD E2                    1721 	.db 0xe2
      0031BE 94                    1722 	.db 0x94
      0031BF 80                    1723 	.db 0x80
      0031C0 E2                    1724 	.db 0xe2
      0031C1 94                    1725 	.db 0x94
      0031C2 80                    1726 	.db 0x80
      0031C3 E2                    1727 	.db 0xe2
      0031C4 94                    1728 	.db 0x94
      0031C5 80                    1729 	.db 0x80
      0031C6 E2                    1730 	.db 0xe2
      0031C7 94                    1731 	.db 0x94
      0031C8 80                    1732 	.db 0x80
      0031C9 E2                    1733 	.db 0xe2
      0031CA 94                    1734 	.db 0x94
      0031CB 80                    1735 	.db 0x80
      0031CC E2                    1736 	.db 0xe2
      0031CD 94                    1737 	.db 0x94
      0031CE 80                    1738 	.db 0x80
      0031CF E2                    1739 	.db 0xe2
      0031D0 94                    1740 	.db 0x94
      0031D1 80                    1741 	.db 0x80
      0031D2 E2                    1742 	.db 0xe2
      0031D3 94                    1743 	.db 0x94
      0031D4 80                    1744 	.db 0x80
      0031D5 E2                    1745 	.db 0xe2
      0031D6 94                    1746 	.db 0x94
      0031D7 80                    1747 	.db 0x80
      0031D8 E2                    1748 	.db 0xe2
      0031D9 94                    1749 	.db 0x94
      0031DA 80                    1750 	.db 0x80
      0031DB E2                    1751 	.db 0xe2
      0031DC 94                    1752 	.db 0x94
      0031DD 80                    1753 	.db 0x80
      0031DE E2                    1754 	.db 0xe2
      0031DF 94                    1755 	.db 0x94
      0031E0 80                    1756 	.db 0x80
      0031E1 E2                    1757 	.db 0xe2
      0031E2 94                    1758 	.db 0x94
      0031E3 80                    1759 	.db 0x80
      0031E4 E2                    1760 	.db 0xe2
      0031E5 94                    1761 	.db 0x94
      0031E6 80                    1762 	.db 0x80
      0031E7 E2                    1763 	.db 0xe2
      0031E8 94                    1764 	.db 0x94
      0031E9 80                    1765 	.db 0x80
      0031EA E2                    1766 	.db 0xe2
      0031EB 94                    1767 	.db 0x94
      0031EC 80                    1768 	.db 0x80
      0031ED E2                    1769 	.db 0xe2
      0031EE 94                    1770 	.db 0x94
      0031EF 80                    1771 	.db 0x80
      0031F0 E2                    1772 	.db 0xe2
      0031F1 94                    1773 	.db 0x94
      0031F2 80                    1774 	.db 0x80
      0031F3 E2                    1775 	.db 0xe2
      0031F4 94                    1776 	.db 0x94
      0031F5 80                    1777 	.db 0x80
      0031F6 E2                    1778 	.db 0xe2
      0031F7 94                    1779 	.db 0x94
      0031F8 80                    1780 	.db 0x80
      0031F9 E2                    1781 	.db 0xe2
      0031FA 94                    1782 	.db 0x94
      0031FB 80                    1783 	.db 0x80
      0031FC E2                    1784 	.db 0xe2
      0031FD 94                    1785 	.db 0x94
      0031FE 80                    1786 	.db 0x80
      0031FF E2                    1787 	.db 0xe2
      003200 94                    1788 	.db 0x94
      003201 80                    1789 	.db 0x80
      003202 E2                    1790 	.db 0xe2
      003203 94                    1791 	.db 0x94
      003204 80                    1792 	.db 0x80
      003205 E2                    1793 	.db 0xe2
      003206 94                    1794 	.db 0x94
      003207 80                    1795 	.db 0x80
      003208 E2                    1796 	.db 0xe2
      003209 94                    1797 	.db 0x94
      00320A 80                    1798 	.db 0x80
      00320B E2                    1799 	.db 0xe2
      00320C 94                    1800 	.db 0x94
      00320D 80                    1801 	.db 0x80
      00320E E2                    1802 	.db 0xe2
      00320F 94                    1803 	.db 0x94
      003210 80                    1804 	.db 0x80
      003211 E2                    1805 	.db 0xe2
      003212 94                    1806 	.db 0x94
      003213 80                    1807 	.db 0x80
      003214 E2                    1808 	.db 0xe2
      003215 94                    1809 	.db 0x94
      003216 80                    1810 	.db 0x80
      003217 E2                    1811 	.db 0xe2
      003218 94                    1812 	.db 0x94
      003219 90                    1813 	.db 0x90
      00321A 0A                    1814 	.db 0x0a
      00321B 0D                    1815 	.db 0x0d
      00321C 00                    1816 	.db 0x00
                                   1817 	.area CSEG    (CODE)
                                   1818 	.area CONST   (CODE)
      00321D                       1819 ___str_1:
      00321D E2                    1820 	.db 0xe2
      00321E 94                    1821 	.db 0x94
      00321F 82                    1822 	.db 0x82
      003220 20 20 20 20 20 20 20  1823 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00325C 20 20                 1824 	.ascii "  "
      00325E E2                    1825 	.db 0xe2
      00325F 94                    1826 	.db 0x94
      003260 82                    1827 	.db 0x82
      003261 0A                    1828 	.db 0x0a
      003262 0D                    1829 	.db 0x0d
      003263 00                    1830 	.db 0x00
                                   1831 	.area CSEG    (CODE)
                                   1832 	.area CONST   (CODE)
      003264                       1833 ___str_2:
      003264 E2                    1834 	.db 0xe2
      003265 94                    1835 	.db 0x94
      003266 9C                    1836 	.db 0x9c
      003267 E2                    1837 	.db 0xe2
      003268 94                    1838 	.db 0x94
      003269 80                    1839 	.db 0x80
      00326A E2                    1840 	.db 0xe2
      00326B 94                    1841 	.db 0x94
      00326C 80                    1842 	.db 0x80
      00326D E2                    1843 	.db 0xe2
      00326E 94                    1844 	.db 0x94
      00326F 80                    1845 	.db 0x80
      003270 E2                    1846 	.db 0xe2
      003271 94                    1847 	.db 0x94
      003272 80                    1848 	.db 0x80
      003273 E2                    1849 	.db 0xe2
      003274 94                    1850 	.db 0x94
      003275 80                    1851 	.db 0x80
      003276 E2                    1852 	.db 0xe2
      003277 94                    1853 	.db 0x94
      003278 80                    1854 	.db 0x80
      003279 E2                    1855 	.db 0xe2
      00327A 94                    1856 	.db 0x94
      00327B 80                    1857 	.db 0x80
      00327C E2                    1858 	.db 0xe2
      00327D 94                    1859 	.db 0x94
      00327E 80                    1860 	.db 0x80
      00327F E2                    1861 	.db 0xe2
      003280 94                    1862 	.db 0x94
      003281 80                    1863 	.db 0x80
      003282 E2                    1864 	.db 0xe2
      003283 94                    1865 	.db 0x94
      003284 80                    1866 	.db 0x80
      003285 E2                    1867 	.db 0xe2
      003286 94                    1868 	.db 0x94
      003287 80                    1869 	.db 0x80
      003288 E2                    1870 	.db 0xe2
      003289 94                    1871 	.db 0x94
      00328A 80                    1872 	.db 0x80
      00328B E2                    1873 	.db 0xe2
      00328C 94                    1874 	.db 0x94
      00328D 80                    1875 	.db 0x80
      00328E E2                    1876 	.db 0xe2
      00328F 94                    1877 	.db 0x94
      003290 80                    1878 	.db 0x80
      003291 E2                    1879 	.db 0xe2
      003292 94                    1880 	.db 0x94
      003293 80                    1881 	.db 0x80
      003294 E2                    1882 	.db 0xe2
      003295 94                    1883 	.db 0x94
      003296 80                    1884 	.db 0x80
      003297 E2                    1885 	.db 0xe2
      003298 94                    1886 	.db 0x94
      003299 80                    1887 	.db 0x80
      00329A E2                    1888 	.db 0xe2
      00329B 94                    1889 	.db 0x94
      00329C 80                    1890 	.db 0x80
      00329D E2                    1891 	.db 0xe2
      00329E 94                    1892 	.db 0x94
      00329F 80                    1893 	.db 0x80
      0032A0 E2                    1894 	.db 0xe2
      0032A1 94                    1895 	.db 0x94
      0032A2 80                    1896 	.db 0x80
      0032A3 E2                    1897 	.db 0xe2
      0032A4 94                    1898 	.db 0x94
      0032A5 80                    1899 	.db 0x80
      0032A6 E2                    1900 	.db 0xe2
      0032A7 94                    1901 	.db 0x94
      0032A8 80                    1902 	.db 0x80
      0032A9 E2                    1903 	.db 0xe2
      0032AA 94                    1904 	.db 0x94
      0032AB 80                    1905 	.db 0x80
      0032AC E2                    1906 	.db 0xe2
      0032AD 94                    1907 	.db 0x94
      0032AE 80                    1908 	.db 0x80
      0032AF E2                    1909 	.db 0xe2
      0032B0 94                    1910 	.db 0x94
      0032B1 80                    1911 	.db 0x80
      0032B2 E2                    1912 	.db 0xe2
      0032B3 94                    1913 	.db 0x94
      0032B4 80                    1914 	.db 0x80
      0032B5 E2                    1915 	.db 0xe2
      0032B6 94                    1916 	.db 0x94
      0032B7 80                    1917 	.db 0x80
      0032B8 E2                    1918 	.db 0xe2
      0032B9 94                    1919 	.db 0x94
      0032BA 80                    1920 	.db 0x80
      0032BB E2                    1921 	.db 0xe2
      0032BC 94                    1922 	.db 0x94
      0032BD 80                    1923 	.db 0x80
      0032BE E2                    1924 	.db 0xe2
      0032BF 94                    1925 	.db 0x94
      0032C0 80                    1926 	.db 0x80
      0032C1 E2                    1927 	.db 0xe2
      0032C2 94                    1928 	.db 0x94
      0032C3 80                    1929 	.db 0x80
      0032C4 E2                    1930 	.db 0xe2
      0032C5 94                    1931 	.db 0x94
      0032C6 80                    1932 	.db 0x80
      0032C7 E2                    1933 	.db 0xe2
      0032C8 94                    1934 	.db 0x94
      0032C9 80                    1935 	.db 0x80
      0032CA E2                    1936 	.db 0xe2
      0032CB 94                    1937 	.db 0x94
      0032CC 80                    1938 	.db 0x80
      0032CD E2                    1939 	.db 0xe2
      0032CE 94                    1940 	.db 0x94
      0032CF 80                    1941 	.db 0x80
      0032D0 E2                    1942 	.db 0xe2
      0032D1 94                    1943 	.db 0x94
      0032D2 80                    1944 	.db 0x80
      0032D3 E2                    1945 	.db 0xe2
      0032D4 94                    1946 	.db 0x94
      0032D5 80                    1947 	.db 0x80
      0032D6 E2                    1948 	.db 0xe2
      0032D7 94                    1949 	.db 0x94
      0032D8 80                    1950 	.db 0x80
      0032D9 E2                    1951 	.db 0xe2
      0032DA 94                    1952 	.db 0x94
      0032DB 80                    1953 	.db 0x80
      0032DC E2                    1954 	.db 0xe2
      0032DD 94                    1955 	.db 0x94
      0032DE 80                    1956 	.db 0x80
      0032DF E2                    1957 	.db 0xe2
      0032E0 94                    1958 	.db 0x94
      0032E1 80                    1959 	.db 0x80
      0032E2 E2                    1960 	.db 0xe2
      0032E3 94                    1961 	.db 0x94
      0032E4 80                    1962 	.db 0x80
      0032E5 E2                    1963 	.db 0xe2
      0032E6 94                    1964 	.db 0x94
      0032E7 80                    1965 	.db 0x80
      0032E8 E2                    1966 	.db 0xe2
      0032E9 94                    1967 	.db 0x94
      0032EA 80                    1968 	.db 0x80
      0032EB E2                    1969 	.db 0xe2
      0032EC 94                    1970 	.db 0x94
      0032ED 80                    1971 	.db 0x80
      0032EE E2                    1972 	.db 0xe2
      0032EF 94                    1973 	.db 0x94
      0032F0 80                    1974 	.db 0x80
      0032F1 E2                    1975 	.db 0xe2
      0032F2 94                    1976 	.db 0x94
      0032F3 80                    1977 	.db 0x80
      0032F4 E2                    1978 	.db 0xe2
      0032F5 94                    1979 	.db 0x94
      0032F6 80                    1980 	.db 0x80
      0032F7 E2                    1981 	.db 0xe2
      0032F8 94                    1982 	.db 0x94
      0032F9 80                    1983 	.db 0x80
      0032FA E2                    1984 	.db 0xe2
      0032FB 94                    1985 	.db 0x94
      0032FC 80                    1986 	.db 0x80
      0032FD E2                    1987 	.db 0xe2
      0032FE 94                    1988 	.db 0x94
      0032FF 80                    1989 	.db 0x80
      003300 E2                    1990 	.db 0xe2
      003301 94                    1991 	.db 0x94
      003302 80                    1992 	.db 0x80
      003303 E2                    1993 	.db 0xe2
      003304 94                    1994 	.db 0x94
      003305 80                    1995 	.db 0x80
      003306 E2                    1996 	.db 0xe2
      003307 94                    1997 	.db 0x94
      003308 80                    1998 	.db 0x80
      003309 E2                    1999 	.db 0xe2
      00330A 94                    2000 	.db 0x94
      00330B 80                    2001 	.db 0x80
      00330C E2                    2002 	.db 0xe2
      00330D 94                    2003 	.db 0x94
      00330E 80                    2004 	.db 0x80
      00330F E2                    2005 	.db 0xe2
      003310 94                    2006 	.db 0x94
      003311 80                    2007 	.db 0x80
      003312 E2                    2008 	.db 0xe2
      003313 94                    2009 	.db 0x94
      003314 80                    2010 	.db 0x80
      003315 E2                    2011 	.db 0xe2
      003316 94                    2012 	.db 0x94
      003317 80                    2013 	.db 0x80
      003318 E2                    2014 	.db 0xe2
      003319 94                    2015 	.db 0x94
      00331A 80                    2016 	.db 0x80
      00331B E2                    2017 	.db 0xe2
      00331C 94                    2018 	.db 0x94
      00331D 80                    2019 	.db 0x80
      00331E E2                    2020 	.db 0xe2
      00331F 94                    2021 	.db 0x94
      003320 80                    2022 	.db 0x80
      003321 E2                    2023 	.db 0xe2
      003322 94                    2024 	.db 0x94
      003323 A4                    2025 	.db 0xa4
      003324 0A                    2026 	.db 0x0a
      003325 0D                    2027 	.db 0x0d
      003326 00                    2028 	.db 0x00
                                   2029 	.area CSEG    (CODE)
                                   2030 	.area CONST   (CODE)
      003327                       2031 ___str_3:
      003327 E2                    2032 	.db 0xe2
      003328 94                    2033 	.db 0x94
      003329 82                    2034 	.db 0x82
      00332A 20 20 43 6F 6D 6D 61  2035 	.ascii "  Command   "
             6E 64 20 20 20
      003336 E2                    2036 	.db 0xe2
      003337 94                    2037 	.db 0x94
      003338 82                    2038 	.db 0x82
      003339 20 20 20 20 20 20 20  2039 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      00336A E2                    2040 	.db 0xe2
      00336B 94                    2041 	.db 0x94
      00336C 82                    2042 	.db 0x82
      00336D 0A                    2043 	.db 0x0a
      00336E 0D                    2044 	.db 0x0d
      00336F 00                    2045 	.db 0x00
                                   2046 	.area CSEG    (CODE)
                                   2047 	.area CONST   (CODE)
      003370                       2048 ___str_4:
      003370 E2                    2049 	.db 0xe2
      003371 94                    2050 	.db 0x94
      003372 9C                    2051 	.db 0x9c
      003373 E2                    2052 	.db 0xe2
      003374 94                    2053 	.db 0x94
      003375 80                    2054 	.db 0x80
      003376 E2                    2055 	.db 0xe2
      003377 94                    2056 	.db 0x94
      003378 80                    2057 	.db 0x80
      003379 E2                    2058 	.db 0xe2
      00337A 94                    2059 	.db 0x94
      00337B 80                    2060 	.db 0x80
      00337C E2                    2061 	.db 0xe2
      00337D 94                    2062 	.db 0x94
      00337E 80                    2063 	.db 0x80
      00337F E2                    2064 	.db 0xe2
      003380 94                    2065 	.db 0x94
      003381 80                    2066 	.db 0x80
      003382 E2                    2067 	.db 0xe2
      003383 94                    2068 	.db 0x94
      003384 80                    2069 	.db 0x80
      003385 E2                    2070 	.db 0xe2
      003386 94                    2071 	.db 0x94
      003387 80                    2072 	.db 0x80
      003388 E2                    2073 	.db 0xe2
      003389 94                    2074 	.db 0x94
      00338A 80                    2075 	.db 0x80
      00338B E2                    2076 	.db 0xe2
      00338C 94                    2077 	.db 0x94
      00338D 80                    2078 	.db 0x80
      00338E E2                    2079 	.db 0xe2
      00338F 94                    2080 	.db 0x94
      003390 80                    2081 	.db 0x80
      003391 E2                    2082 	.db 0xe2
      003392 94                    2083 	.db 0x94
      003393 80                    2084 	.db 0x80
      003394 E2                    2085 	.db 0xe2
      003395 94                    2086 	.db 0x94
      003396 BC                    2087 	.db 0xbc
      003397 E2                    2088 	.db 0xe2
      003398 94                    2089 	.db 0x94
      003399 80                    2090 	.db 0x80
      00339A E2                    2091 	.db 0xe2
      00339B 94                    2092 	.db 0x94
      00339C 80                    2093 	.db 0x80
      00339D E2                    2094 	.db 0xe2
      00339E 94                    2095 	.db 0x94
      00339F 80                    2096 	.db 0x80
      0033A0 E2                    2097 	.db 0xe2
      0033A1 94                    2098 	.db 0x94
      0033A2 80                    2099 	.db 0x80
      0033A3 E2                    2100 	.db 0xe2
      0033A4 94                    2101 	.db 0x94
      0033A5 80                    2102 	.db 0x80
      0033A6 E2                    2103 	.db 0xe2
      0033A7 94                    2104 	.db 0x94
      0033A8 80                    2105 	.db 0x80
      0033A9 E2                    2106 	.db 0xe2
      0033AA 94                    2107 	.db 0x94
      0033AB 80                    2108 	.db 0x80
      0033AC E2                    2109 	.db 0xe2
      0033AD 94                    2110 	.db 0x94
      0033AE 80                    2111 	.db 0x80
      0033AF E2                    2112 	.db 0xe2
      0033B0 94                    2113 	.db 0x94
      0033B1 80                    2114 	.db 0x80
      0033B2 E2                    2115 	.db 0xe2
      0033B3 94                    2116 	.db 0x94
      0033B4 80                    2117 	.db 0x80
      0033B5 E2                    2118 	.db 0xe2
      0033B6 94                    2119 	.db 0x94
      0033B7 80                    2120 	.db 0x80
      0033B8 E2                    2121 	.db 0xe2
      0033B9 94                    2122 	.db 0x94
      0033BA 80                    2123 	.db 0x80
      0033BB E2                    2124 	.db 0xe2
      0033BC 94                    2125 	.db 0x94
      0033BD 80                    2126 	.db 0x80
      0033BE E2                    2127 	.db 0xe2
      0033BF 94                    2128 	.db 0x94
      0033C0 80                    2129 	.db 0x80
      0033C1 E2                    2130 	.db 0xe2
      0033C2 94                    2131 	.db 0x94
      0033C3 80                    2132 	.db 0x80
      0033C4 E2                    2133 	.db 0xe2
      0033C5 94                    2134 	.db 0x94
      0033C6 80                    2135 	.db 0x80
      0033C7 E2                    2136 	.db 0xe2
      0033C8 94                    2137 	.db 0x94
      0033C9 80                    2138 	.db 0x80
      0033CA E2                    2139 	.db 0xe2
      0033CB 94                    2140 	.db 0x94
      0033CC 80                    2141 	.db 0x80
      0033CD E2                    2142 	.db 0xe2
      0033CE 94                    2143 	.db 0x94
      0033CF 80                    2144 	.db 0x80
      0033D0 E2                    2145 	.db 0xe2
      0033D1 94                    2146 	.db 0x94
      0033D2 80                    2147 	.db 0x80
      0033D3 E2                    2148 	.db 0xe2
      0033D4 94                    2149 	.db 0x94
      0033D5 80                    2150 	.db 0x80
      0033D6 E2                    2151 	.db 0xe2
      0033D7 94                    2152 	.db 0x94
      0033D8 80                    2153 	.db 0x80
      0033D9 E2                    2154 	.db 0xe2
      0033DA 94                    2155 	.db 0x94
      0033DB 80                    2156 	.db 0x80
      0033DC E2                    2157 	.db 0xe2
      0033DD 94                    2158 	.db 0x94
      0033DE 80                    2159 	.db 0x80
      0033DF E2                    2160 	.db 0xe2
      0033E0 94                    2161 	.db 0x94
      0033E1 80                    2162 	.db 0x80
      0033E2 E2                    2163 	.db 0xe2
      0033E3 94                    2164 	.db 0x94
      0033E4 80                    2165 	.db 0x80
      0033E5 E2                    2166 	.db 0xe2
      0033E6 94                    2167 	.db 0x94
      0033E7 80                    2168 	.db 0x80
      0033E8 E2                    2169 	.db 0xe2
      0033E9 94                    2170 	.db 0x94
      0033EA 80                    2171 	.db 0x80
      0033EB E2                    2172 	.db 0xe2
      0033EC 94                    2173 	.db 0x94
      0033ED 80                    2174 	.db 0x80
      0033EE E2                    2175 	.db 0xe2
      0033EF 94                    2176 	.db 0x94
      0033F0 80                    2177 	.db 0x80
      0033F1 E2                    2178 	.db 0xe2
      0033F2 94                    2179 	.db 0x94
      0033F3 80                    2180 	.db 0x80
      0033F4 E2                    2181 	.db 0xe2
      0033F5 94                    2182 	.db 0x94
      0033F6 80                    2183 	.db 0x80
      0033F7 E2                    2184 	.db 0xe2
      0033F8 94                    2185 	.db 0x94
      0033F9 80                    2186 	.db 0x80
      0033FA E2                    2187 	.db 0xe2
      0033FB 94                    2188 	.db 0x94
      0033FC 80                    2189 	.db 0x80
      0033FD E2                    2190 	.db 0xe2
      0033FE 94                    2191 	.db 0x94
      0033FF 80                    2192 	.db 0x80
      003400 E2                    2193 	.db 0xe2
      003401 94                    2194 	.db 0x94
      003402 80                    2195 	.db 0x80
      003403 E2                    2196 	.db 0xe2
      003404 94                    2197 	.db 0x94
      003405 80                    2198 	.db 0x80
      003406 E2                    2199 	.db 0xe2
      003407 94                    2200 	.db 0x94
      003408 80                    2201 	.db 0x80
      003409 E2                    2202 	.db 0xe2
      00340A 94                    2203 	.db 0x94
      00340B 80                    2204 	.db 0x80
      00340C E2                    2205 	.db 0xe2
      00340D 94                    2206 	.db 0x94
      00340E 80                    2207 	.db 0x80
      00340F E2                    2208 	.db 0xe2
      003410 94                    2209 	.db 0x94
      003411 80                    2210 	.db 0x80
      003412 E2                    2211 	.db 0xe2
      003413 94                    2212 	.db 0x94
      003414 80                    2213 	.db 0x80
      003415 E2                    2214 	.db 0xe2
      003416 94                    2215 	.db 0x94
      003417 80                    2216 	.db 0x80
      003418 E2                    2217 	.db 0xe2
      003419 94                    2218 	.db 0x94
      00341A 80                    2219 	.db 0x80
      00341B E2                    2220 	.db 0xe2
      00341C 94                    2221 	.db 0x94
      00341D 80                    2222 	.db 0x80
      00341E E2                    2223 	.db 0xe2
      00341F 94                    2224 	.db 0x94
      003420 80                    2225 	.db 0x80
      003421 E2                    2226 	.db 0xe2
      003422 94                    2227 	.db 0x94
      003423 80                    2228 	.db 0x80
      003424 E2                    2229 	.db 0xe2
      003425 94                    2230 	.db 0x94
      003426 A4                    2231 	.db 0xa4
      003427 0A                    2232 	.db 0x0a
      003428 0D                    2233 	.db 0x0d
      003429 00                    2234 	.db 0x00
                                   2235 	.area CSEG    (CODE)
                                   2236 	.area CONST   (CODE)
      00342A                       2237 ___str_5:
      00342A E2                    2238 	.db 0xe2
      00342B 94                    2239 	.db 0x94
      00342C 82                    2240 	.db 0x82
      00342D 20 20 20 20 4D 20 20  2241 	.ascii "    M      "
             20 20 20 20
      003438 E2                    2242 	.db 0xe2
      003439 94                    2243 	.db 0x94
      00343A 82                    2244 	.db 0x82
      00343B 20 4D 61 6E 75 61 6C  2245 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      00346B E2                    2246 	.db 0xe2
      00346C 94                    2247 	.db 0x94
      00346D 82                    2248 	.db 0x82
      00346E 0A                    2249 	.db 0x0a
      00346F 0D                    2250 	.db 0x0d
      003470 00                    2251 	.db 0x00
                                   2252 	.area CSEG    (CODE)
                                   2253 	.area CONST   (CODE)
      003471                       2254 ___str_6:
      003471 E2                    2255 	.db 0xe2
      003472 94                    2256 	.db 0x94
      003473 82                    2257 	.db 0x82
      003474 20 20 20 20 42 20 20  2258 	.ascii "    B      "
             20 20 20 20
      00347F E2                    2259 	.db 0xe2
      003480 94                    2260 	.db 0x94
      003481 82                    2261 	.db 0x82
      003482 20 42 69 74 20 42 61  2262 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0034B1 E2                    2263 	.db 0xe2
      0034B2 94                    2264 	.db 0x94
      0034B3 82                    2265 	.db 0x82
      0034B4 0A                    2266 	.db 0x0a
      0034B5 0D                    2267 	.db 0x0d
      0034B6 00                    2268 	.db 0x00
                                   2269 	.area CSEG    (CODE)
                                   2270 	.area CONST   (CODE)
      0034B7                       2271 ___str_7:
      0034B7 E2                    2272 	.db 0xe2
      0034B8 94                    2273 	.db 0x94
      0034B9 82                    2274 	.db 0x82
      0034BA 20 20 20 20 53 20 20  2275 	.ascii "    S      "
             20 20 20 20
      0034C5 E2                    2276 	.db 0xe2
      0034C6 94                    2277 	.db 0x94
      0034C7 82                    2278 	.db 0x82
      0034C8 20 47 65 6E 65 72 61  2279 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0034F7 E2                    2280 	.db 0xe2
      0034F8 94                    2281 	.db 0x94
      0034F9 82                    2282 	.db 0x82
      0034FA 0A                    2283 	.db 0x0a
      0034FB 0D                    2284 	.db 0x0d
      0034FC 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      0034FD                       2288 ___str_8:
      0034FD E2                    2289 	.db 0xe2
      0034FE 94                    2290 	.db 0x94
      0034FF 82                    2291 	.db 0x82
      003500 20 20 20 20 51 20 20  2292 	.ascii "    Q      "
             20 20 20 20
      00350B E2                    2293 	.db 0xe2
      00350C 94                    2294 	.db 0x94
      00350D 82                    2295 	.db 0x82
      00350E 20 47 65 6E 65 72 61  2296 	.ascii " Generate Square Wave                          "
             74 65 20 53 71 75 61
             72 65 20 57 61 76 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00353D E2                    2297 	.db 0xe2
      00353E 94                    2298 	.db 0x94
      00353F 82                    2299 	.db 0x82
      003540 0A                    2300 	.db 0x0a
      003541 0D                    2301 	.db 0x0d
      003542 00                    2302 	.db 0x00
                                   2303 	.area CSEG    (CODE)
                                   2304 	.area CONST   (CODE)
      003543                       2305 ___str_9:
      003543 E2                    2306 	.db 0xe2
      003544 94                    2307 	.db 0x94
      003545 82                    2308 	.db 0x82
      003546 20 20 20 20 54 20 20  2309 	.ascii "    T      "
             20 20 20 20
      003551 E2                    2310 	.db 0xe2
      003552 94                    2311 	.db 0x94
      003553 82                    2312 	.db 0x82
      003554 20 47 65 6E 65 72 61  2313 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003583 E2                    2314 	.db 0xe2
      003584 94                    2315 	.db 0x94
      003585 82                    2316 	.db 0x82
      003586 0A                    2317 	.db 0x0a
      003587 0D                    2318 	.db 0x0d
      003588 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      003589                       2322 ___str_10:
      003589 E2                    2323 	.db 0xe2
      00358A 94                    2324 	.db 0x94
      00358B 82                    2325 	.db 0x82
      00358C 20 20 20 20 44 20 20  2326 	.ascii "    D      "
             20 20 20 20
      003597 E2                    2327 	.db 0xe2
      003598 94                    2328 	.db 0x94
      003599 82                    2329 	.db 0x82
      00359A 20 44 65 6D 6F 20 4D  2330 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      0035C9 E2                    2331 	.db 0xe2
      0035CA 94                    2332 	.db 0x94
      0035CB 82                    2333 	.db 0x82
      0035CC 0A                    2334 	.db 0x0a
      0035CD 0D                    2335 	.db 0x0d
      0035CE 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      0035CF                       2339 ___str_11:
      0035CF E2                    2340 	.db 0xe2
      0035D0 94                    2341 	.db 0x94
      0035D1 82                    2342 	.db 0x82
      0035D2 20 20 20 20 43 20 20  2343 	.ascii "    C      "
             20 20 20 20
      0035DD E2                    2344 	.db 0xe2
      0035DE 94                    2345 	.db 0x94
      0035DF 82                    2346 	.db 0x82
      0035E0 20 43 6F 6E 66 69 67  2347 	.ascii " Configure SPI Parameters                      "
             75 72 65 20 53 50 49
             20 50 61 72 61 6D 65
             74 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00360F E2                    2348 	.db 0xe2
      003610 94                    2349 	.db 0x94
      003611 82                    2350 	.db 0x82
      003612 0A                    2351 	.db 0x0a
      003613 0D                    2352 	.db 0x0d
      003614 00                    2353 	.db 0x00
                                   2354 	.area CSEG    (CODE)
                                   2355 	.area CONST   (CODE)
      003615                       2356 ___str_12:
      003615 E2                    2357 	.db 0xe2
      003616 94                    2358 	.db 0x94
      003617 82                    2359 	.db 0x82
      003618 20 20 20 20 52 20 20  2360 	.ascii "    R      "
             20 20 20 20
      003623 E2                    2361 	.db 0xe2
      003624 94                    2362 	.db 0x94
      003625 82                    2363 	.db 0x82
      003626 20 52 65 61 64 20 53  2364 	.ascii " Read SPI Data                                 "
             50 49 20 44 61 74 61
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003655 E2                    2365 	.db 0xe2
      003656 94                    2366 	.db 0x94
      003657 82                    2367 	.db 0x82
      003658 0A                    2368 	.db 0x0a
      003659 0D                    2369 	.db 0x0d
      00365A 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      00365B                       2373 ___str_13:
      00365B E2                    2374 	.db 0xe2
      00365C 94                    2375 	.db 0x94
      00365D 82                    2376 	.db 0x82
      00365E 20 20 20 20 57 20 20  2377 	.ascii "    W      "
             20 20 20 20
      003669 E2                    2378 	.db 0xe2
      00366A 94                    2379 	.db 0x94
      00366B 82                    2380 	.db 0x82
      00366C 20 57 72 69 74 65 20  2381 	.ascii " Write SPI Data                                "
             53 50 49 20 44 61 74
             61 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00369B E2                    2382 	.db 0xe2
      00369C 94                    2383 	.db 0x94
      00369D 82                    2384 	.db 0x82
      00369E 0A                    2385 	.db 0x0a
      00369F 0D                    2386 	.db 0x0d
      0036A0 00                    2387 	.db 0x00
                                   2388 	.area CSEG    (CODE)
                                   2389 	.area CONST   (CODE)
      0036A1                       2390 ___str_14:
      0036A1 E2                    2391 	.db 0xe2
      0036A2 94                    2392 	.db 0x94
      0036A3 82                    2393 	.db 0x82
      0036A4 20 20 20 20 3F 20 20  2394 	.ascii "    ?      "
             20 20 20 20
      0036AF E2                    2395 	.db 0xe2
      0036B0 94                    2396 	.db 0x94
      0036B1 82                    2397 	.db 0x82
      0036B2 20 44 69 73 70 6C 61  2398 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0036E1 E2                    2399 	.db 0xe2
      0036E2 94                    2400 	.db 0x94
      0036E3 82                    2401 	.db 0x82
      0036E4 0A                    2402 	.db 0x0a
      0036E5 0D                    2403 	.db 0x0d
      0036E6 00                    2404 	.db 0x00
                                   2405 	.area CSEG    (CODE)
                                   2406 	.area CONST   (CODE)
      0036E7                       2407 ___str_15:
      0036E7 E2                    2408 	.db 0xe2
      0036E8 94                    2409 	.db 0x94
      0036E9 82                    2410 	.db 0x82
      0036EA 20 20 20 20 58 20 20  2411 	.ascii "    X      "
             20 20 20 20
      0036F5 E2                    2412 	.db 0xe2
      0036F6 94                    2413 	.db 0x94
      0036F7 82                    2414 	.db 0x82
      0036F8 20 45 78 69 74 20 50  2415 	.ascii " Exit Program                                  "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003727 E2                    2416 	.db 0xe2
      003728 94                    2417 	.db 0x94
      003729 82                    2418 	.db 0x82
      00372A 0A                    2419 	.db 0x0a
      00372B 0D                    2420 	.db 0x0d
      00372C 00                    2421 	.db 0x00
                                   2422 	.area CSEG    (CODE)
                                   2423 	.area CONST   (CODE)
      00372D                       2424 ___str_16:
      00372D E2                    2425 	.db 0xe2
      00372E 94                    2426 	.db 0x94
      00372F 94                    2427 	.db 0x94
      003730 E2                    2428 	.db 0xe2
      003731 94                    2429 	.db 0x94
      003732 80                    2430 	.db 0x80
      003733 E2                    2431 	.db 0xe2
      003734 94                    2432 	.db 0x94
      003735 80                    2433 	.db 0x80
      003736 E2                    2434 	.db 0xe2
      003737 94                    2435 	.db 0x94
      003738 80                    2436 	.db 0x80
      003739 E2                    2437 	.db 0xe2
      00373A 94                    2438 	.db 0x94
      00373B 80                    2439 	.db 0x80
      00373C E2                    2440 	.db 0xe2
      00373D 94                    2441 	.db 0x94
      00373E 80                    2442 	.db 0x80
      00373F E2                    2443 	.db 0xe2
      003740 94                    2444 	.db 0x94
      003741 80                    2445 	.db 0x80
      003742 E2                    2446 	.db 0xe2
      003743 94                    2447 	.db 0x94
      003744 80                    2448 	.db 0x80
      003745 E2                    2449 	.db 0xe2
      003746 94                    2450 	.db 0x94
      003747 80                    2451 	.db 0x80
      003748 E2                    2452 	.db 0xe2
      003749 94                    2453 	.db 0x94
      00374A 80                    2454 	.db 0x80
      00374B E2                    2455 	.db 0xe2
      00374C 94                    2456 	.db 0x94
      00374D 80                    2457 	.db 0x80
      00374E E2                    2458 	.db 0xe2
      00374F 94                    2459 	.db 0x94
      003750 80                    2460 	.db 0x80
      003751 E2                    2461 	.db 0xe2
      003752 94                    2462 	.db 0x94
      003753 B4                    2463 	.db 0xb4
      003754 E2                    2464 	.db 0xe2
      003755 94                    2465 	.db 0x94
      003756 80                    2466 	.db 0x80
      003757 E2                    2467 	.db 0xe2
      003758 94                    2468 	.db 0x94
      003759 80                    2469 	.db 0x80
      00375A E2                    2470 	.db 0xe2
      00375B 94                    2471 	.db 0x94
      00375C 80                    2472 	.db 0x80
      00375D E2                    2473 	.db 0xe2
      00375E 94                    2474 	.db 0x94
      00375F 80                    2475 	.db 0x80
      003760 E2                    2476 	.db 0xe2
      003761 94                    2477 	.db 0x94
      003762 80                    2478 	.db 0x80
      003763 E2                    2479 	.db 0xe2
      003764 94                    2480 	.db 0x94
      003765 80                    2481 	.db 0x80
      003766 E2                    2482 	.db 0xe2
      003767 94                    2483 	.db 0x94
      003768 80                    2484 	.db 0x80
      003769 E2                    2485 	.db 0xe2
      00376A 94                    2486 	.db 0x94
      00376B 80                    2487 	.db 0x80
      00376C E2                    2488 	.db 0xe2
      00376D 94                    2489 	.db 0x94
      00376E 80                    2490 	.db 0x80
      00376F E2                    2491 	.db 0xe2
      003770 94                    2492 	.db 0x94
      003771 80                    2493 	.db 0x80
      003772 E2                    2494 	.db 0xe2
      003773 94                    2495 	.db 0x94
      003774 80                    2496 	.db 0x80
      003775 E2                    2497 	.db 0xe2
      003776 94                    2498 	.db 0x94
      003777 80                    2499 	.db 0x80
      003778 E2                    2500 	.db 0xe2
      003779 94                    2501 	.db 0x94
      00377A 80                    2502 	.db 0x80
      00377B E2                    2503 	.db 0xe2
      00377C 94                    2504 	.db 0x94
      00377D 80                    2505 	.db 0x80
      00377E E2                    2506 	.db 0xe2
      00377F 94                    2507 	.db 0x94
      003780 80                    2508 	.db 0x80
      003781 E2                    2509 	.db 0xe2
      003782 94                    2510 	.db 0x94
      003783 80                    2511 	.db 0x80
      003784 E2                    2512 	.db 0xe2
      003785 94                    2513 	.db 0x94
      003786 80                    2514 	.db 0x80
      003787 E2                    2515 	.db 0xe2
      003788 94                    2516 	.db 0x94
      003789 80                    2517 	.db 0x80
      00378A E2                    2518 	.db 0xe2
      00378B 94                    2519 	.db 0x94
      00378C 80                    2520 	.db 0x80
      00378D E2                    2521 	.db 0xe2
      00378E 94                    2522 	.db 0x94
      00378F 80                    2523 	.db 0x80
      003790 E2                    2524 	.db 0xe2
      003791 94                    2525 	.db 0x94
      003792 80                    2526 	.db 0x80
      003793 E2                    2527 	.db 0xe2
      003794 94                    2528 	.db 0x94
      003795 80                    2529 	.db 0x80
      003796 E2                    2530 	.db 0xe2
      003797 94                    2531 	.db 0x94
      003798 80                    2532 	.db 0x80
      003799 E2                    2533 	.db 0xe2
      00379A 94                    2534 	.db 0x94
      00379B 80                    2535 	.db 0x80
      00379C E2                    2536 	.db 0xe2
      00379D 94                    2537 	.db 0x94
      00379E 80                    2538 	.db 0x80
      00379F E2                    2539 	.db 0xe2
      0037A0 94                    2540 	.db 0x94
      0037A1 80                    2541 	.db 0x80
      0037A2 E2                    2542 	.db 0xe2
      0037A3 94                    2543 	.db 0x94
      0037A4 80                    2544 	.db 0x80
      0037A5 E2                    2545 	.db 0xe2
      0037A6 94                    2546 	.db 0x94
      0037A7 80                    2547 	.db 0x80
      0037A8 E2                    2548 	.db 0xe2
      0037A9 94                    2549 	.db 0x94
      0037AA 80                    2550 	.db 0x80
      0037AB E2                    2551 	.db 0xe2
      0037AC 94                    2552 	.db 0x94
      0037AD 80                    2553 	.db 0x80
      0037AE E2                    2554 	.db 0xe2
      0037AF 94                    2555 	.db 0x94
      0037B0 80                    2556 	.db 0x80
      0037B1 E2                    2557 	.db 0xe2
      0037B2 94                    2558 	.db 0x94
      0037B3 80                    2559 	.db 0x80
      0037B4 E2                    2560 	.db 0xe2
      0037B5 94                    2561 	.db 0x94
      0037B6 80                    2562 	.db 0x80
      0037B7 E2                    2563 	.db 0xe2
      0037B8 94                    2564 	.db 0x94
      0037B9 80                    2565 	.db 0x80
      0037BA E2                    2566 	.db 0xe2
      0037BB 94                    2567 	.db 0x94
      0037BC 80                    2568 	.db 0x80
      0037BD E2                    2569 	.db 0xe2
      0037BE 94                    2570 	.db 0x94
      0037BF 80                    2571 	.db 0x80
      0037C0 E2                    2572 	.db 0xe2
      0037C1 94                    2573 	.db 0x94
      0037C2 80                    2574 	.db 0x80
      0037C3 E2                    2575 	.db 0xe2
      0037C4 94                    2576 	.db 0x94
      0037C5 80                    2577 	.db 0x80
      0037C6 E2                    2578 	.db 0xe2
      0037C7 94                    2579 	.db 0x94
      0037C8 80                    2580 	.db 0x80
      0037C9 E2                    2581 	.db 0xe2
      0037CA 94                    2582 	.db 0x94
      0037CB 80                    2583 	.db 0x80
      0037CC E2                    2584 	.db 0xe2
      0037CD 94                    2585 	.db 0x94
      0037CE 80                    2586 	.db 0x80
      0037CF E2                    2587 	.db 0xe2
      0037D0 94                    2588 	.db 0x94
      0037D1 80                    2589 	.db 0x80
      0037D2 E2                    2590 	.db 0xe2
      0037D3 94                    2591 	.db 0x94
      0037D4 80                    2592 	.db 0x80
      0037D5 E2                    2593 	.db 0xe2
      0037D6 94                    2594 	.db 0x94
      0037D7 80                    2595 	.db 0x80
      0037D8 E2                    2596 	.db 0xe2
      0037D9 94                    2597 	.db 0x94
      0037DA 80                    2598 	.db 0x80
      0037DB E2                    2599 	.db 0xe2
      0037DC 94                    2600 	.db 0x94
      0037DD 80                    2601 	.db 0x80
      0037DE E2                    2602 	.db 0xe2
      0037DF 94                    2603 	.db 0x94
      0037E0 80                    2604 	.db 0x80
      0037E1 E2                    2605 	.db 0xe2
      0037E2 94                    2606 	.db 0x94
      0037E3 98                    2607 	.db 0x98
      0037E4 0A                    2608 	.db 0x0a
      0037E5 0D                    2609 	.db 0x0d
      0037E6 00                    2610 	.db 0x00
                                   2611 	.area CSEG    (CODE)
                                   2612 	.area CONST   (CODE)
      0037E7                       2613 ___str_17:
      0037E7 0A                    2614 	.db 0x0a
      0037E8 0D                    2615 	.db 0x0d
      0037E9 45 6E 74 65 72 20 63  2616 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      0037F8 00                    2617 	.db 0x00
                                   2618 	.area CSEG    (CODE)
                                   2619 	.area CONST   (CODE)
      0037F9                       2620 ___str_18:
      0037F9 7C 20 24 20 25 63     2621 	.ascii "| $ %c"
      0037FF 0A                    2622 	.db 0x0a
      003800 0D                    2623 	.db 0x0d
      003801 00                    2624 	.db 0x00
                                   2625 	.area CSEG    (CODE)
                                   2626 	.area CONST   (CODE)
      003802                       2627 ___str_19:
      003802 0A                    2628 	.db 0x0a
      003803 0D                    2629 	.db 0x0d
      003804 00                    2630 	.db 0x00
                                   2631 	.area CSEG    (CODE)
                                   2632 	.area CONST   (CODE)
      003805                       2633 ___str_20:
      003805 53 49 4E 20 57 41 56  2634 	.ascii "SIN WAVE DONE"
             45 20 44 4F 4E 45
      003812 0A                    2635 	.db 0x0a
      003813 0D                    2636 	.db 0x0d
      003814 00                    2637 	.db 0x00
                                   2638 	.area CSEG    (CODE)
                                   2639 	.area CONST   (CODE)
      003815                       2640 ___str_21:
      003815 E2                    2641 	.db 0xe2
      003816 94                    2642 	.db 0x94
      003817 82                    2643 	.db 0x82
      003818 20 45 6E 74 65 72 20  2644 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      003841 0A                    2645 	.db 0x0a
      003842 0D                    2646 	.db 0x0d
      003843 7C                    2647 	.ascii "|"
      003844 00                    2648 	.db 0x00
                                   2649 	.area CSEG    (CODE)
                                   2650 	.area CONST   (CODE)
      003845                       2651 ___str_22:
      003845 24 20                 2652 	.ascii "$ "
      003847 00                    2653 	.db 0x00
                                   2654 	.area CSEG    (CODE)
                                   2655 	.area CONST   (CODE)
      003848                       2656 ___str_23:
      003848 0A                    2657 	.db 0x0a
      003849 0D                    2658 	.db 0x0d
      00384A E2                    2659 	.db 0xe2
      00384B 94                    2660 	.db 0x94
      00384C 82                    2661 	.db 0x82
      00384D 20 45 6E 74 65 72 65  2662 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003862 0A                    2663 	.db 0x0a
      003863 0D                    2664 	.db 0x0d
      003864 00                    2665 	.db 0x00
                                   2666 	.area CSEG    (CODE)
                                   2667 	.area XINIT   (CODE)
      003870                       2668 __xinit__ms_flag:
      003870 00                    2669 	.db #0x00	; 0
      003871                       2670 __xinit__transmission_complete:
      003871 00 00                 2671 	.byte #0x00, #0x00	;  0
                                   2672 	.area CABS    (ABS,CODE)
