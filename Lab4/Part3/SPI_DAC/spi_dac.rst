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
      0020C2 74 6F            [12]  665 	mov	a,#___str_0
      0020C4 C0 E0            [24]  666 	push	acc
      0020C6 74 31            [12]  667 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  668 	push	acc
      0020CA 74 80            [12]  669 	mov	a,#0x80
      0020CC C0 E0            [24]  670 	push	acc
      0020CE 12 25 0D         [24]  671 	lcall	_printf
      0020D1 15 81            [12]  672 	dec	sp
      0020D3 15 81            [12]  673 	dec	sp
      0020D5 15 81            [12]  674 	dec	sp
                                    675 ;	spi_dac.c:206: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 34            [12]  676 	mov	a,#___str_1
      0020D9 C0 E0            [24]  677 	push	acc
      0020DB 74 32            [12]  678 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  679 	push	acc
      0020DF 74 80            [12]  680 	mov	a,#0x80
      0020E1 C0 E0            [24]  681 	push	acc
      0020E3 12 25 0D         [24]  682 	lcall	_printf
      0020E6 15 81            [12]  683 	dec	sp
      0020E8 15 81            [12]  684 	dec	sp
      0020EA 15 81            [12]  685 	dec	sp
                                    686 ;	spi_dac.c:207: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 7B            [12]  687 	mov	a,#___str_2
      0020EE C0 E0            [24]  688 	push	acc
      0020F0 74 32            [12]  689 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  690 	push	acc
      0020F4 74 80            [12]  691 	mov	a,#0x80
      0020F6 C0 E0            [24]  692 	push	acc
      0020F8 12 25 0D         [24]  693 	lcall	_printf
      0020FB 15 81            [12]  694 	dec	sp
      0020FD 15 81            [12]  695 	dec	sp
      0020FF 15 81            [12]  696 	dec	sp
                                    697 ;	spi_dac.c:208: printf("│  Command   │               Description                       │\n\r");
      002101 74 3E            [12]  698 	mov	a,#___str_3
      002103 C0 E0            [24]  699 	push	acc
      002105 74 33            [12]  700 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  701 	push	acc
      002109 74 80            [12]  702 	mov	a,#0x80
      00210B C0 E0            [24]  703 	push	acc
      00210D 12 25 0D         [24]  704 	lcall	_printf
      002110 15 81            [12]  705 	dec	sp
      002112 15 81            [12]  706 	dec	sp
      002114 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:209: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 87            [12]  709 	mov	a,#___str_4
      002118 C0 E0            [24]  710 	push	acc
      00211A 74 33            [12]  711 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  712 	push	acc
      00211E 74 80            [12]  713 	mov	a,#0x80
      002120 C0 E0            [24]  714 	push	acc
      002122 12 25 0D         [24]  715 	lcall	_printf
      002125 15 81            [12]  716 	dec	sp
      002127 15 81            [12]  717 	dec	sp
      002129 15 81            [12]  718 	dec	sp
                                    719 ;	spi_dac.c:210: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 41            [12]  720 	mov	a,#___str_5
      00212D C0 E0            [24]  721 	push	acc
      00212F 74 34            [12]  722 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  723 	push	acc
      002133 74 80            [12]  724 	mov	a,#0x80
      002135 C0 E0            [24]  725 	push	acc
      002137 12 25 0D         [24]  726 	lcall	_printf
      00213A 15 81            [12]  727 	dec	sp
      00213C 15 81            [12]  728 	dec	sp
      00213E 15 81            [12]  729 	dec	sp
                                    730 ;	spi_dac.c:211: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 88            [12]  731 	mov	a,#___str_6
      002142 C0 E0            [24]  732 	push	acc
      002144 74 34            [12]  733 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  734 	push	acc
      002148 74 80            [12]  735 	mov	a,#0x80
      00214A C0 E0            [24]  736 	push	acc
      00214C 12 25 0D         [24]  737 	lcall	_printf
      00214F 15 81            [12]  738 	dec	sp
      002151 15 81            [12]  739 	dec	sp
      002153 15 81            [12]  740 	dec	sp
                                    741 ;	spi_dac.c:212: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 CE            [12]  742 	mov	a,#___str_7
      002157 C0 E0            [24]  743 	push	acc
      002159 74 34            [12]  744 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  745 	push	acc
      00215D 74 80            [12]  746 	mov	a,#0x80
      00215F C0 E0            [24]  747 	push	acc
      002161 12 25 0D         [24]  748 	lcall	_printf
      002164 15 81            [12]  749 	dec	sp
      002166 15 81            [12]  750 	dec	sp
      002168 15 81            [12]  751 	dec	sp
                                    752 ;	spi_dac.c:213: printf("│    Q      │ Generate Square Wave                          │\n\r");
      00216A 74 14            [12]  753 	mov	a,#___str_8
      00216C C0 E0            [24]  754 	push	acc
      00216E 74 35            [12]  755 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  756 	push	acc
      002172 74 80            [12]  757 	mov	a,#0x80
      002174 C0 E0            [24]  758 	push	acc
      002176 12 25 0D         [24]  759 	lcall	_printf
      002179 15 81            [12]  760 	dec	sp
      00217B 15 81            [12]  761 	dec	sp
      00217D 15 81            [12]  762 	dec	sp
                                    763 ;	spi_dac.c:214: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00217F 74 5A            [12]  764 	mov	a,#___str_9
      002181 C0 E0            [24]  765 	push	acc
      002183 74 35            [12]  766 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  767 	push	acc
      002187 74 80            [12]  768 	mov	a,#0x80
      002189 C0 E0            [24]  769 	push	acc
      00218B 12 25 0D         [24]  770 	lcall	_printf
      00218E 15 81            [12]  771 	dec	sp
      002190 15 81            [12]  772 	dec	sp
      002192 15 81            [12]  773 	dec	sp
                                    774 ;	spi_dac.c:215: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      002194 74 A0            [12]  775 	mov	a,#___str_10
      002196 C0 E0            [24]  776 	push	acc
      002198 74 35            [12]  777 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  778 	push	acc
      00219C 74 80            [12]  779 	mov	a,#0x80
      00219E C0 E0            [24]  780 	push	acc
      0021A0 12 25 0D         [24]  781 	lcall	_printf
      0021A3 15 81            [12]  782 	dec	sp
      0021A5 15 81            [12]  783 	dec	sp
      0021A7 15 81            [12]  784 	dec	sp
                                    785 ;	spi_dac.c:216: printf("│    C      │ Configure SPI Parameters                      │\n\r");
      0021A9 74 E6            [12]  786 	mov	a,#___str_11
      0021AB C0 E0            [24]  787 	push	acc
      0021AD 74 35            [12]  788 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  789 	push	acc
      0021B1 74 80            [12]  790 	mov	a,#0x80
      0021B3 C0 E0            [24]  791 	push	acc
      0021B5 12 25 0D         [24]  792 	lcall	_printf
      0021B8 15 81            [12]  793 	dec	sp
      0021BA 15 81            [12]  794 	dec	sp
      0021BC 15 81            [12]  795 	dec	sp
                                    796 ;	spi_dac.c:217: printf("│    R      │ Read SPI Data                                 │\n\r");
      0021BE 74 2C            [12]  797 	mov	a,#___str_12
      0021C0 C0 E0            [24]  798 	push	acc
      0021C2 74 36            [12]  799 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  800 	push	acc
      0021C6 74 80            [12]  801 	mov	a,#0x80
      0021C8 C0 E0            [24]  802 	push	acc
      0021CA 12 25 0D         [24]  803 	lcall	_printf
      0021CD 15 81            [12]  804 	dec	sp
      0021CF 15 81            [12]  805 	dec	sp
      0021D1 15 81            [12]  806 	dec	sp
                                    807 ;	spi_dac.c:218: printf("│    W      │ Write SPI Data                                │\n\r");
      0021D3 74 72            [12]  808 	mov	a,#___str_13
      0021D5 C0 E0            [24]  809 	push	acc
      0021D7 74 36            [12]  810 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  811 	push	acc
      0021DB 74 80            [12]  812 	mov	a,#0x80
      0021DD C0 E0            [24]  813 	push	acc
      0021DF 12 25 0D         [24]  814 	lcall	_printf
      0021E2 15 81            [12]  815 	dec	sp
      0021E4 15 81            [12]  816 	dec	sp
      0021E6 15 81            [12]  817 	dec	sp
                                    818 ;	spi_dac.c:219: printf("│    ?      │ Display this help menu                        │\n\r");
      0021E8 74 B8            [12]  819 	mov	a,#___str_14
      0021EA C0 E0            [24]  820 	push	acc
      0021EC 74 36            [12]  821 	mov	a,#(___str_14 >> 8)
      0021EE C0 E0            [24]  822 	push	acc
      0021F0 74 80            [12]  823 	mov	a,#0x80
      0021F2 C0 E0            [24]  824 	push	acc
      0021F4 12 25 0D         [24]  825 	lcall	_printf
      0021F7 15 81            [12]  826 	dec	sp
      0021F9 15 81            [12]  827 	dec	sp
      0021FB 15 81            [12]  828 	dec	sp
                                    829 ;	spi_dac.c:220: printf("│    X      │ Exit Program                                  │\n\r");
      0021FD 74 FE            [12]  830 	mov	a,#___str_15
      0021FF C0 E0            [24]  831 	push	acc
      002201 74 36            [12]  832 	mov	a,#(___str_15 >> 8)
      002203 C0 E0            [24]  833 	push	acc
      002205 74 80            [12]  834 	mov	a,#0x80
      002207 C0 E0            [24]  835 	push	acc
      002209 12 25 0D         [24]  836 	lcall	_printf
      00220C 15 81            [12]  837 	dec	sp
      00220E 15 81            [12]  838 	dec	sp
      002210 15 81            [12]  839 	dec	sp
                                    840 ;	spi_dac.c:221: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002212 74 44            [12]  841 	mov	a,#___str_16
      002214 C0 E0            [24]  842 	push	acc
      002216 74 37            [12]  843 	mov	a,#(___str_16 >> 8)
      002218 C0 E0            [24]  844 	push	acc
      00221A 74 80            [12]  845 	mov	a,#0x80
      00221C C0 E0            [24]  846 	push	acc
      00221E 12 25 0D         [24]  847 	lcall	_printf
      002221 15 81            [12]  848 	dec	sp
      002223 15 81            [12]  849 	dec	sp
      002225 15 81            [12]  850 	dec	sp
                                    851 ;	spi_dac.c:222: printf("\n\rEnter command: ");
      002227 74 FE            [12]  852 	mov	a,#___str_17
      002229 C0 E0            [24]  853 	push	acc
      00222B 74 37            [12]  854 	mov	a,#(___str_17 >> 8)
      00222D C0 E0            [24]  855 	push	acc
      00222F 74 80            [12]  856 	mov	a,#0x80
      002231 C0 E0            [24]  857 	push	acc
      002233 12 25 0D         [24]  858 	lcall	_printf
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
      00224F 74 10            [12]  888 	mov	a,#___str_18
      002251 C0 E0            [24]  889 	push	acc
      002253 74 38            [12]  890 	mov	a,#(___str_18 >> 8)
      002255 C0 E0            [24]  891 	push	acc
      002257 74 80            [12]  892 	mov	a,#0x80
      002259 C0 E0            [24]  893 	push	acc
      00225B 12 25 0D         [24]  894 	lcall	_printf
      00225E E5 81            [12]  895 	mov	a,sp
      002260 24 FB            [12]  896 	add	a,#0xfb
      002262 F5 81            [12]  897 	mov	sp,a
                                    898 ;	spi_dac.c:233: printf("\n\r");
      002264 74 19            [12]  899 	mov	a,#___str_19
      002266 C0 E0            [24]  900 	push	acc
      002268 74 38            [12]  901 	mov	a,#(___str_19 >> 8)
      00226A C0 E0            [24]  902 	push	acc
      00226C 74 80            [12]  903 	mov	a,#0x80
      00226E C0 E0            [24]  904 	push	acc
      002270 12 25 0D         [24]  905 	lcall	_printf
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
      002283 12 24 AF         [24]  916 	lcall	_spi_init
                                    917 ;	spi_dac.c:238: unsigned char result = take_data();
      002286 12 22 A3         [24]  918 	lcall	_take_data
                                    919 ;	spi_dac.c:239: mannual_spi(result);
      002289 12 23 F7         [24]  920 	lcall	_mannual_spi
                                    921 ;	spi_dac.c:240: printf("SIN WAVE DONE\n\r");
      00228C 74 1C            [12]  922 	mov	a,#___str_20
      00228E C0 E0            [24]  923 	push	acc
      002290 74 38            [12]  924 	mov	a,#(___str_20 >> 8)
      002292 C0 E0            [24]  925 	push	acc
      002294 74 80            [12]  926 	mov	a,#0x80
      002296 C0 E0            [24]  927 	push	acc
      002298 12 25 0D         [24]  928 	lcall	_printf
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
      0022A3 74 2C            [12]  950 	mov	a,#___str_21
      0022A5 C0 E0            [24]  951 	push	acc
      0022A7 74 38            [12]  952 	mov	a,#(___str_21 >> 8)
      0022A9 C0 E0            [24]  953 	push	acc
      0022AB 74 80            [12]  954 	mov	a,#0x80
      0022AD C0 E0            [24]  955 	push	acc
      0022AF 12 25 0D         [24]  956 	lcall	_printf
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
      0022C9 74 5C            [12]  971 	mov	a,#___str_22
      0022CB C0 E0            [24]  972 	push	acc
      0022CD 74 38            [12]  973 	mov	a,#(___str_22 >> 8)
      0022CF C0 E0            [24]  974 	push	acc
      0022D1 74 80            [12]  975 	mov	a,#0x80
      0022D3 C0 E0            [24]  976 	push	acc
      0022D5 12 25 0D         [24]  977 	lcall	_printf
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
      0023DD 74 5F            [12] 1167 	mov	a,#___str_23
      0023DF C0 E0            [24] 1168 	push	acc
      0023E1 74 38            [12] 1169 	mov	a,#(___str_23 >> 8)
      0023E3 C0 E0            [24] 1170 	push	acc
      0023E5 74 80            [12] 1171 	mov	a,#0x80
      0023E7 C0 E0            [24] 1172 	push	acc
      0023E9 12 25 0D         [24] 1173 	lcall	_printf
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
                                   1190 ;i                         Allocated with name '_mannual_spi_i_196608_44'
                                   1191 ;------------------------------------------------------------
                                   1192 ;	spi_dac.c:312: void mannual_spi(unsigned char number)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function mannual_spi
                                   1195 ;	-----------------------------------------
      0023F7                       1196 _mannual_spi:
      0023F7 E5 82            [12] 1197 	mov	a,dpl
      0023F9 90 04 09         [24] 1198 	mov	dptr,#_mannual_spi_number_65536_41
      0023FC F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	spi_dac.c:314: int dac_value_index = 0;
      0023FD 90 04 0A         [24] 1201 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002400 E4               [12] 1202 	clr	a
      002401 F0               [24] 1203 	movx	@dptr,a
      002402 A3               [24] 1204 	inc	dptr
      002403 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	spi_dac.c:315: int dac_data = 0;
      002404 90 04 0C         [24] 1207 	mov	dptr,#_mannual_spi_dac_data_65536_42
      002407 F0               [24] 1208 	movx	@dptr,a
      002408 A3               [24] 1209 	inc	dptr
      002409 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	spi_dac.c:317: while(number > 0)
      00240A                       1212 00111$:
      00240A 90 04 09         [24] 1213 	mov	dptr,#_mannual_spi_number_65536_41
      00240D E0               [24] 1214 	movx	a,@dptr
      00240E 70 01            [24] 1215 	jnz	00156$
      002410 22               [24] 1216 	ret
      002411                       1217 00156$:
                                   1218 ;	spi_dac.c:320: for(int i = 0; i<256; i++)
      002411 7E 00            [12] 1219 	mov	r6,#0x00
      002413 7F 00            [12] 1220 	mov	r7,#0x00
      002415                       1221 00115$:
      002415 C3               [12] 1222 	clr	c
      002416 EF               [12] 1223 	mov	a,r7
      002417 64 80            [12] 1224 	xrl	a,#0x80
      002419 94 81            [12] 1225 	subb	a,#0x81
      00241B 40 03            [24] 1226 	jc	00157$
      00241D 02 24 A5         [24] 1227 	ljmp	00110$
      002420                       1228 00157$:
                                   1229 ;	spi_dac.c:323: if(dac_value_index < SINE_MAX_INDEX)
      002420 90 04 0A         [24] 1230 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002423 E0               [24] 1231 	movx	a,@dptr
      002424 FC               [12] 1232 	mov	r4,a
      002425 A3               [24] 1233 	inc	dptr
      002426 E0               [24] 1234 	movx	a,@dptr
      002427 FD               [12] 1235 	mov	r5,a
      002428 C3               [12] 1236 	clr	c
      002429 64 80            [12] 1237 	xrl	a,#0x80
      00242B 94 81            [12] 1238 	subb	a,#0x81
      00242D 50 21            [24] 1239 	jnc	00102$
                                   1240 ;	spi_dac.c:327: dac_data = dac_values[dac_value_index];
      00242F EC               [12] 1241 	mov	a,r4
      002430 2C               [12] 1242 	add	a,r4
      002431 FC               [12] 1243 	mov	r4,a
      002432 ED               [12] 1244 	mov	a,r5
      002433 33               [12] 1245 	rlc	a
      002434 FD               [12] 1246 	mov	r5,a
      002435 EC               [12] 1247 	mov	a,r4
      002436 24 6F            [12] 1248 	add	a,#_dac_values
      002438 F5 82            [12] 1249 	mov	dpl,a
      00243A ED               [12] 1250 	mov	a,r5
      00243B 34 2F            [12] 1251 	addc	a,#(_dac_values >> 8)
      00243D F5 83            [12] 1252 	mov	dph,a
      00243F E4               [12] 1253 	clr	a
      002440 93               [24] 1254 	movc	a,@a+dptr
      002441 FC               [12] 1255 	mov	r4,a
      002442 A3               [24] 1256 	inc	dptr
      002443 E4               [12] 1257 	clr	a
      002444 93               [24] 1258 	movc	a,@a+dptr
      002445 FD               [12] 1259 	mov	r5,a
      002446 90 04 0C         [24] 1260 	mov	dptr,#_mannual_spi_dac_data_65536_42
      002449 EC               [12] 1261 	mov	a,r4
      00244A F0               [24] 1262 	movx	@dptr,a
      00244B ED               [12] 1263 	mov	a,r5
      00244C A3               [24] 1264 	inc	dptr
      00244D F0               [24] 1265 	movx	@dptr,a
      00244E 80 07            [24] 1266 	sjmp	00103$
      002450                       1267 00102$:
                                   1268 ;	spi_dac.c:331: dac_value_index = 0;  // Reset index for next cycle
      002450 90 04 0A         [24] 1269 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002453 E4               [12] 1270 	clr	a
      002454 F0               [24] 1271 	movx	@dptr,a
      002455 A3               [24] 1272 	inc	dptr
      002456 F0               [24] 1273 	movx	@dptr,a
      002457                       1274 00103$:
                                   1275 ;	spi_dac.c:338: ((dac_data >> 4) & 0x0F);
      002457 90 04 0C         [24] 1276 	mov	dptr,#_mannual_spi_dac_data_65536_42
      00245A E0               [24] 1277 	movx	a,@dptr
      00245B FC               [12] 1278 	mov	r4,a
      00245C A3               [24] 1279 	inc	dptr
      00245D E0               [24] 1280 	movx	a,@dptr
      00245E 8C 02            [24] 1281 	mov	ar2,r4
      002460 C4               [12] 1282 	swap	a
      002461 CA               [12] 1283 	xch	a,r2
      002462 C4               [12] 1284 	swap	a
      002463 54 0F            [12] 1285 	anl	a,#0x0f
      002465 6A               [12] 1286 	xrl	a,r2
      002466 CA               [12] 1287 	xch	a,r2
      002467 54 0F            [12] 1288 	anl	a,#0x0f
      002469 CA               [12] 1289 	xch	a,r2
      00246A 6A               [12] 1290 	xrl	a,r2
      00246B CA               [12] 1291 	xch	a,r2
      00246C 30 E3 02         [24] 1292 	jnb	acc.3,00159$
      00246F 44 F0            [12] 1293 	orl	a,#0xf0
      002471                       1294 00159$:
      002471 74 0F            [12] 1295 	mov	a,#0x0f
      002473 5A               [12] 1296 	anl	a,r2
      002474 44 10            [12] 1297 	orl	a,#0x10
      002476 FB               [12] 1298 	mov	r3,a
                                   1299 ;	spi_dac.c:341: low_byte = (dac_data & 0x0F) << 4;
      002477 53 04 0F         [24] 1300 	anl	ar4,#0x0f
      00247A EC               [12] 1301 	mov	a,r4
      00247B C4               [12] 1302 	swap	a
      00247C 54 F0            [12] 1303 	anl	a,#0xf0
      00247E FD               [12] 1304 	mov	r5,a
                                   1305 ;	spi_dac.c:345: P1_1 = 0;  // Select DAC
                                   1306 ;	assignBit
      00247F C2 91            [12] 1307 	clr	_P1_1
                                   1308 ;	spi_dac.c:348: SPDAT = high_byte;
      002481 8B C5            [24] 1309 	mov	_SPDAT,r3
                                   1310 ;	spi_dac.c:349: while (!(SPSTA & (1<<7))); 
      002483                       1311 00104$:
      002483 E5 C4            [12] 1312 	mov	a,_SPSTA
      002485 30 E7 FB         [24] 1313 	jnb	acc.7,00104$
                                   1314 ;	spi_dac.c:353: SPDAT = low_byte;
      002488 8D C5            [24] 1315 	mov	_SPDAT,r5
                                   1316 ;	spi_dac.c:354: while (!(SPSTA & (1<<7))); 
      00248A                       1317 00107$:
      00248A E5 C4            [12] 1318 	mov	a,_SPSTA
      00248C 30 E7 FB         [24] 1319 	jnb	acc.7,00107$
                                   1320 ;	spi_dac.c:356: P1_1 = 1;  // Deselect DAC
                                   1321 ;	assignBit
      00248F D2 91            [12] 1322 	setb	_P1_1
                                   1323 ;	spi_dac.c:358: dac_value_index++;
      002491 90 04 0A         [24] 1324 	mov	dptr,#_mannual_spi_dac_value_index_65536_42
      002494 E0               [24] 1325 	movx	a,@dptr
      002495 24 01            [12] 1326 	add	a,#0x01
      002497 F0               [24] 1327 	movx	@dptr,a
      002498 A3               [24] 1328 	inc	dptr
      002499 E0               [24] 1329 	movx	a,@dptr
      00249A 34 00            [12] 1330 	addc	a,#0x00
      00249C F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	spi_dac.c:320: for(int i = 0; i<256; i++)
      00249D 0E               [12] 1333 	inc	r6
      00249E BE 00 01         [24] 1334 	cjne	r6,#0x00,00162$
      0024A1 0F               [12] 1335 	inc	r7
      0024A2                       1336 00162$:
      0024A2 02 24 15         [24] 1337 	ljmp	00115$
      0024A5                       1338 00110$:
                                   1339 ;	spi_dac.c:361: number = number - 1;
      0024A5 90 04 09         [24] 1340 	mov	dptr,#_mannual_spi_number_65536_41
      0024A8 E0               [24] 1341 	movx	a,@dptr
      0024A9 FF               [12] 1342 	mov	r7,a
      0024AA 14               [12] 1343 	dec	a
      0024AB F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	spi_dac.c:363: }
      0024AC 02 24 0A         [24] 1346 	ljmp	00111$
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'spi_init'
                                   1349 ;------------------------------------------------------------
                                   1350 ;	spi_dac.c:374: void spi_init(void) 
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function spi_init
                                   1353 ;	-----------------------------------------
      0024AF                       1354 _spi_init:
                                   1355 ;	spi_dac.c:395: SPCON |= 0x10;
      0024AF 43 C3 10         [24] 1356 	orl	_SPCON,#0x10
                                   1357 ;	spi_dac.c:396: SPCON |= 0x20;
      0024B2 43 C3 20         [24] 1358 	orl	_SPCON,#0x20
                                   1359 ;	spi_dac.c:397: SPCON |= 0x40;
      0024B5 43 C3 40         [24] 1360 	orl	_SPCON,#0x40
                                   1361 ;	spi_dac.c:404: }
      0024B8 22               [24] 1362 	ret
                                   1363 ;------------------------------------------------------------
                                   1364 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1365 ;------------------------------------------------------------
                                   1366 ;	spi_dac.c:411: void spi_transmission_start(void)
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function spi_transmission_start
                                   1369 ;	-----------------------------------------
      0024B9                       1370 _spi_transmission_start:
                                   1371 ;	spi_dac.c:413: SPCON |= SPI_ENABLE;           // Enable SPI
      0024B9 43 C3 40         [24] 1372 	orl	_SPCON,#0x40
                                   1373 ;	spi_dac.c:414: P1_1 = 0;
                                   1374 ;	assignBit
      0024BC C2 91            [12] 1375 	clr	_P1_1
                                   1376 ;	spi_dac.c:415: }
      0024BE 22               [24] 1377 	ret
                                   1378 	.area CSEG    (CODE)
                                   1379 	.area CONST   (CODE)
      002F6F                       1380 _dac_values:
      002F6F 80 00                 1381 	.byte #0x80, #0x00	;  128
      002F71 83 00                 1382 	.byte #0x83, #0x00	;  131
      002F73 86 00                 1383 	.byte #0x86, #0x00	;  134
      002F75 89 00                 1384 	.byte #0x89, #0x00	;  137
      002F77 8C 00                 1385 	.byte #0x8c, #0x00	;  140
      002F79 90 00                 1386 	.byte #0x90, #0x00	;  144
      002F7B 93 00                 1387 	.byte #0x93, #0x00	;  147
      002F7D 96 00                 1388 	.byte #0x96, #0x00	;  150
      002F7F 99 00                 1389 	.byte #0x99, #0x00	;  153
      002F81 9C 00                 1390 	.byte #0x9c, #0x00	;  156
      002F83 9F 00                 1391 	.byte #0x9f, #0x00	;  159
      002F85 A2 00                 1392 	.byte #0xa2, #0x00	;  162
      002F87 A5 00                 1393 	.byte #0xa5, #0x00	;  165
      002F89 A8 00                 1394 	.byte #0xa8, #0x00	;  168
      002F8B AB 00                 1395 	.byte #0xab, #0x00	;  171
      002F8D AE 00                 1396 	.byte #0xae, #0x00	;  174
      002F8F B1 00                 1397 	.byte #0xb1, #0x00	;  177
      002F91 B3 00                 1398 	.byte #0xb3, #0x00	;  179
      002F93 B6 00                 1399 	.byte #0xb6, #0x00	;  182
      002F95 B9 00                 1400 	.byte #0xb9, #0x00	;  185
      002F97 BC 00                 1401 	.byte #0xbc, #0x00	;  188
      002F99 BF 00                 1402 	.byte #0xbf, #0x00	;  191
      002F9B C1 00                 1403 	.byte #0xc1, #0x00	;  193
      002F9D C4 00                 1404 	.byte #0xc4, #0x00	;  196
      002F9F C7 00                 1405 	.byte #0xc7, #0x00	;  199
      002FA1 C9 00                 1406 	.byte #0xc9, #0x00	;  201
      002FA3 CC 00                 1407 	.byte #0xcc, #0x00	;  204
      002FA5 CE 00                 1408 	.byte #0xce, #0x00	;  206
      002FA7 D1 00                 1409 	.byte #0xd1, #0x00	;  209
      002FA9 D3 00                 1410 	.byte #0xd3, #0x00	;  211
      002FAB D5 00                 1411 	.byte #0xd5, #0x00	;  213
      002FAD D8 00                 1412 	.byte #0xd8, #0x00	;  216
      002FAF DA 00                 1413 	.byte #0xda, #0x00	;  218
      002FB1 DC 00                 1414 	.byte #0xdc, #0x00	;  220
      002FB3 DE 00                 1415 	.byte #0xde, #0x00	;  222
      002FB5 E0 00                 1416 	.byte #0xe0, #0x00	;  224
      002FB7 E2 00                 1417 	.byte #0xe2, #0x00	;  226
      002FB9 E4 00                 1418 	.byte #0xe4, #0x00	;  228
      002FBB E6 00                 1419 	.byte #0xe6, #0x00	;  230
      002FBD E8 00                 1420 	.byte #0xe8, #0x00	;  232
      002FBF EA 00                 1421 	.byte #0xea, #0x00	;  234
      002FC1 EB 00                 1422 	.byte #0xeb, #0x00	;  235
      002FC3 ED 00                 1423 	.byte #0xed, #0x00	;  237
      002FC5 EF 00                 1424 	.byte #0xef, #0x00	;  239
      002FC7 F0 00                 1425 	.byte #0xf0, #0x00	;  240
      002FC9 F1 00                 1426 	.byte #0xf1, #0x00	;  241
      002FCB F3 00                 1427 	.byte #0xf3, #0x00	;  243
      002FCD F4 00                 1428 	.byte #0xf4, #0x00	;  244
      002FCF F5 00                 1429 	.byte #0xf5, #0x00	;  245
      002FD1 F6 00                 1430 	.byte #0xf6, #0x00	;  246
      002FD3 F8 00                 1431 	.byte #0xf8, #0x00	;  248
      002FD5 F9 00                 1432 	.byte #0xf9, #0x00	;  249
      002FD7 FA 00                 1433 	.byte #0xfa, #0x00	;  250
      002FD9 FA 00                 1434 	.byte #0xfa, #0x00	;  250
      002FDB FB 00                 1435 	.byte #0xfb, #0x00	;  251
      002FDD FC 00                 1436 	.byte #0xfc, #0x00	;  252
      002FDF FD 00                 1437 	.byte #0xfd, #0x00	;  253
      002FE1 FD 00                 1438 	.byte #0xfd, #0x00	;  253
      002FE3 FE 00                 1439 	.byte #0xfe, #0x00	;  254
      002FE5 FE 00                 1440 	.byte #0xfe, #0x00	;  254
      002FE7 FE 00                 1441 	.byte #0xfe, #0x00	;  254
      002FE9 FF 00                 1442 	.byte #0xff, #0x00	;  255
      002FEB FF 00                 1443 	.byte #0xff, #0x00	;  255
      002FED FF 00                 1444 	.byte #0xff, #0x00	;  255
      002FEF FF 00                 1445 	.byte #0xff, #0x00	;  255
      002FF1 FF 00                 1446 	.byte #0xff, #0x00	;  255
      002FF3 FF 00                 1447 	.byte #0xff, #0x00	;  255
      002FF5 FF 00                 1448 	.byte #0xff, #0x00	;  255
      002FF7 FE 00                 1449 	.byte #0xfe, #0x00	;  254
      002FF9 FE 00                 1450 	.byte #0xfe, #0x00	;  254
      002FFB FE 00                 1451 	.byte #0xfe, #0x00	;  254
      002FFD FD 00                 1452 	.byte #0xfd, #0x00	;  253
      002FFF FD 00                 1453 	.byte #0xfd, #0x00	;  253
      003001 FC 00                 1454 	.byte #0xfc, #0x00	;  252
      003003 FB 00                 1455 	.byte #0xfb, #0x00	;  251
      003005 FA 00                 1456 	.byte #0xfa, #0x00	;  250
      003007 FA 00                 1457 	.byte #0xfa, #0x00	;  250
      003009 F9 00                 1458 	.byte #0xf9, #0x00	;  249
      00300B F8 00                 1459 	.byte #0xf8, #0x00	;  248
      00300D F6 00                 1460 	.byte #0xf6, #0x00	;  246
      00300F F5 00                 1461 	.byte #0xf5, #0x00	;  245
      003011 F4 00                 1462 	.byte #0xf4, #0x00	;  244
      003013 F3 00                 1463 	.byte #0xf3, #0x00	;  243
      003015 F1 00                 1464 	.byte #0xf1, #0x00	;  241
      003017 F0 00                 1465 	.byte #0xf0, #0x00	;  240
      003019 EF 00                 1466 	.byte #0xef, #0x00	;  239
      00301B ED 00                 1467 	.byte #0xed, #0x00	;  237
      00301D EB 00                 1468 	.byte #0xeb, #0x00	;  235
      00301F EA 00                 1469 	.byte #0xea, #0x00	;  234
      003021 E8 00                 1470 	.byte #0xe8, #0x00	;  232
      003023 E6 00                 1471 	.byte #0xe6, #0x00	;  230
      003025 E4 00                 1472 	.byte #0xe4, #0x00	;  228
      003027 E2 00                 1473 	.byte #0xe2, #0x00	;  226
      003029 E0 00                 1474 	.byte #0xe0, #0x00	;  224
      00302B DE 00                 1475 	.byte #0xde, #0x00	;  222
      00302D DC 00                 1476 	.byte #0xdc, #0x00	;  220
      00302F DA 00                 1477 	.byte #0xda, #0x00	;  218
      003031 D8 00                 1478 	.byte #0xd8, #0x00	;  216
      003033 D5 00                 1479 	.byte #0xd5, #0x00	;  213
      003035 D3 00                 1480 	.byte #0xd3, #0x00	;  211
      003037 D1 00                 1481 	.byte #0xd1, #0x00	;  209
      003039 CE 00                 1482 	.byte #0xce, #0x00	;  206
      00303B CC 00                 1483 	.byte #0xcc, #0x00	;  204
      00303D C9 00                 1484 	.byte #0xc9, #0x00	;  201
      00303F C7 00                 1485 	.byte #0xc7, #0x00	;  199
      003041 C4 00                 1486 	.byte #0xc4, #0x00	;  196
      003043 C1 00                 1487 	.byte #0xc1, #0x00	;  193
      003045 BF 00                 1488 	.byte #0xbf, #0x00	;  191
      003047 BC 00                 1489 	.byte #0xbc, #0x00	;  188
      003049 B9 00                 1490 	.byte #0xb9, #0x00	;  185
      00304B B6 00                 1491 	.byte #0xb6, #0x00	;  182
      00304D B3 00                 1492 	.byte #0xb3, #0x00	;  179
      00304F B1 00                 1493 	.byte #0xb1, #0x00	;  177
      003051 AE 00                 1494 	.byte #0xae, #0x00	;  174
      003053 AB 00                 1495 	.byte #0xab, #0x00	;  171
      003055 A8 00                 1496 	.byte #0xa8, #0x00	;  168
      003057 A5 00                 1497 	.byte #0xa5, #0x00	;  165
      003059 A2 00                 1498 	.byte #0xa2, #0x00	;  162
      00305B 9F 00                 1499 	.byte #0x9f, #0x00	;  159
      00305D 9C 00                 1500 	.byte #0x9c, #0x00	;  156
      00305F 99 00                 1501 	.byte #0x99, #0x00	;  153
      003061 96 00                 1502 	.byte #0x96, #0x00	;  150
      003063 93 00                 1503 	.byte #0x93, #0x00	;  147
      003065 90 00                 1504 	.byte #0x90, #0x00	;  144
      003067 8C 00                 1505 	.byte #0x8c, #0x00	;  140
      003069 89 00                 1506 	.byte #0x89, #0x00	;  137
      00306B 86 00                 1507 	.byte #0x86, #0x00	;  134
      00306D 83 00                 1508 	.byte #0x83, #0x00	;  131
      00306F 80 00                 1509 	.byte #0x80, #0x00	;  128
      003071 7D 00                 1510 	.byte #0x7d, #0x00	;  125
      003073 7A 00                 1511 	.byte #0x7a, #0x00	;  122
      003075 77 00                 1512 	.byte #0x77, #0x00	;  119
      003077 74 00                 1513 	.byte #0x74, #0x00	;  116
      003079 70 00                 1514 	.byte #0x70, #0x00	;  112
      00307B 6D 00                 1515 	.byte #0x6d, #0x00	;  109
      00307D 6A 00                 1516 	.byte #0x6a, #0x00	;  106
      00307F 67 00                 1517 	.byte #0x67, #0x00	;  103
      003081 64 00                 1518 	.byte #0x64, #0x00	;  100
      003083 61 00                 1519 	.byte #0x61, #0x00	;  97
      003085 5E 00                 1520 	.byte #0x5e, #0x00	;  94
      003087 5B 00                 1521 	.byte #0x5b, #0x00	;  91
      003089 58 00                 1522 	.byte #0x58, #0x00	;  88
      00308B 55 00                 1523 	.byte #0x55, #0x00	;  85
      00308D 52 00                 1524 	.byte #0x52, #0x00	;  82
      00308F 4F 00                 1525 	.byte #0x4f, #0x00	;  79
      003091 4D 00                 1526 	.byte #0x4d, #0x00	;  77
      003093 4A 00                 1527 	.byte #0x4a, #0x00	;  74
      003095 47 00                 1528 	.byte #0x47, #0x00	;  71
      003097 44 00                 1529 	.byte #0x44, #0x00	;  68
      003099 41 00                 1530 	.byte #0x41, #0x00	;  65
      00309B 3F 00                 1531 	.byte #0x3f, #0x00	;  63
      00309D 3C 00                 1532 	.byte #0x3c, #0x00	;  60
      00309F 39 00                 1533 	.byte #0x39, #0x00	;  57
      0030A1 37 00                 1534 	.byte #0x37, #0x00	;  55
      0030A3 34 00                 1535 	.byte #0x34, #0x00	;  52
      0030A5 32 00                 1536 	.byte #0x32, #0x00	;  50
      0030A7 2F 00                 1537 	.byte #0x2f, #0x00	;  47
      0030A9 2D 00                 1538 	.byte #0x2d, #0x00	;  45
      0030AB 2B 00                 1539 	.byte #0x2b, #0x00	;  43
      0030AD 28 00                 1540 	.byte #0x28, #0x00	;  40
      0030AF 26 00                 1541 	.byte #0x26, #0x00	;  38
      0030B1 24 00                 1542 	.byte #0x24, #0x00	;  36
      0030B3 22 00                 1543 	.byte #0x22, #0x00	;  34
      0030B5 20 00                 1544 	.byte #0x20, #0x00	;  32
      0030B7 1E 00                 1545 	.byte #0x1e, #0x00	;  30
      0030B9 1C 00                 1546 	.byte #0x1c, #0x00	;  28
      0030BB 1A 00                 1547 	.byte #0x1a, #0x00	;  26
      0030BD 18 00                 1548 	.byte #0x18, #0x00	;  24
      0030BF 16 00                 1549 	.byte #0x16, #0x00	;  22
      0030C1 15 00                 1550 	.byte #0x15, #0x00	;  21
      0030C3 13 00                 1551 	.byte #0x13, #0x00	;  19
      0030C5 11 00                 1552 	.byte #0x11, #0x00	;  17
      0030C7 10 00                 1553 	.byte #0x10, #0x00	;  16
      0030C9 0F 00                 1554 	.byte #0x0f, #0x00	;  15
      0030CB 0D 00                 1555 	.byte #0x0d, #0x00	;  13
      0030CD 0C 00                 1556 	.byte #0x0c, #0x00	;  12
      0030CF 0B 00                 1557 	.byte #0x0b, #0x00	;  11
      0030D1 0A 00                 1558 	.byte #0x0a, #0x00	;  10
      0030D3 08 00                 1559 	.byte #0x08, #0x00	;  8
      0030D5 07 00                 1560 	.byte #0x07, #0x00	;  7
      0030D7 06 00                 1561 	.byte #0x06, #0x00	;  6
      0030D9 06 00                 1562 	.byte #0x06, #0x00	;  6
      0030DB 05 00                 1563 	.byte #0x05, #0x00	;  5
      0030DD 04 00                 1564 	.byte #0x04, #0x00	;  4
      0030DF 03 00                 1565 	.byte #0x03, #0x00	;  3
      0030E1 03 00                 1566 	.byte #0x03, #0x00	;  3
      0030E3 02 00                 1567 	.byte #0x02, #0x00	;  2
      0030E5 02 00                 1568 	.byte #0x02, #0x00	;  2
      0030E7 02 00                 1569 	.byte #0x02, #0x00	;  2
      0030E9 01 00                 1570 	.byte #0x01, #0x00	;  1
      0030EB 01 00                 1571 	.byte #0x01, #0x00	;  1
      0030ED 01 00                 1572 	.byte #0x01, #0x00	;  1
      0030EF 01 00                 1573 	.byte #0x01, #0x00	;  1
      0030F1 01 00                 1574 	.byte #0x01, #0x00	;  1
      0030F3 01 00                 1575 	.byte #0x01, #0x00	;  1
      0030F5 01 00                 1576 	.byte #0x01, #0x00	;  1
      0030F7 02 00                 1577 	.byte #0x02, #0x00	;  2
      0030F9 02 00                 1578 	.byte #0x02, #0x00	;  2
      0030FB 02 00                 1579 	.byte #0x02, #0x00	;  2
      0030FD 03 00                 1580 	.byte #0x03, #0x00	;  3
      0030FF 03 00                 1581 	.byte #0x03, #0x00	;  3
      003101 04 00                 1582 	.byte #0x04, #0x00	;  4
      003103 05 00                 1583 	.byte #0x05, #0x00	;  5
      003105 06 00                 1584 	.byte #0x06, #0x00	;  6
      003107 06 00                 1585 	.byte #0x06, #0x00	;  6
      003109 07 00                 1586 	.byte #0x07, #0x00	;  7
      00310B 08 00                 1587 	.byte #0x08, #0x00	;  8
      00310D 0A 00                 1588 	.byte #0x0a, #0x00	;  10
      00310F 0B 00                 1589 	.byte #0x0b, #0x00	;  11
      003111 0C 00                 1590 	.byte #0x0c, #0x00	;  12
      003113 0D 00                 1591 	.byte #0x0d, #0x00	;  13
      003115 0F 00                 1592 	.byte #0x0f, #0x00	;  15
      003117 10 00                 1593 	.byte #0x10, #0x00	;  16
      003119 11 00                 1594 	.byte #0x11, #0x00	;  17
      00311B 13 00                 1595 	.byte #0x13, #0x00	;  19
      00311D 15 00                 1596 	.byte #0x15, #0x00	;  21
      00311F 16 00                 1597 	.byte #0x16, #0x00	;  22
      003121 18 00                 1598 	.byte #0x18, #0x00	;  24
      003123 1A 00                 1599 	.byte #0x1a, #0x00	;  26
      003125 1C 00                 1600 	.byte #0x1c, #0x00	;  28
      003127 1E 00                 1601 	.byte #0x1e, #0x00	;  30
      003129 20 00                 1602 	.byte #0x20, #0x00	;  32
      00312B 22 00                 1603 	.byte #0x22, #0x00	;  34
      00312D 24 00                 1604 	.byte #0x24, #0x00	;  36
      00312F 26 00                 1605 	.byte #0x26, #0x00	;  38
      003131 28 00                 1606 	.byte #0x28, #0x00	;  40
      003133 2B 00                 1607 	.byte #0x2b, #0x00	;  43
      003135 2D 00                 1608 	.byte #0x2d, #0x00	;  45
      003137 2F 00                 1609 	.byte #0x2f, #0x00	;  47
      003139 32 00                 1610 	.byte #0x32, #0x00	;  50
      00313B 34 00                 1611 	.byte #0x34, #0x00	;  52
      00313D 37 00                 1612 	.byte #0x37, #0x00	;  55
      00313F 39 00                 1613 	.byte #0x39, #0x00	;  57
      003141 3C 00                 1614 	.byte #0x3c, #0x00	;  60
      003143 3F 00                 1615 	.byte #0x3f, #0x00	;  63
      003145 41 00                 1616 	.byte #0x41, #0x00	;  65
      003147 44 00                 1617 	.byte #0x44, #0x00	;  68
      003149 47 00                 1618 	.byte #0x47, #0x00	;  71
      00314B 4A 00                 1619 	.byte #0x4a, #0x00	;  74
      00314D 4D 00                 1620 	.byte #0x4d, #0x00	;  77
      00314F 4F 00                 1621 	.byte #0x4f, #0x00	;  79
      003151 52 00                 1622 	.byte #0x52, #0x00	;  82
      003153 55 00                 1623 	.byte #0x55, #0x00	;  85
      003155 58 00                 1624 	.byte #0x58, #0x00	;  88
      003157 5B 00                 1625 	.byte #0x5b, #0x00	;  91
      003159 5E 00                 1626 	.byte #0x5e, #0x00	;  94
      00315B 61 00                 1627 	.byte #0x61, #0x00	;  97
      00315D 64 00                 1628 	.byte #0x64, #0x00	;  100
      00315F 67 00                 1629 	.byte #0x67, #0x00	;  103
      003161 6A 00                 1630 	.byte #0x6a, #0x00	;  106
      003163 6D 00                 1631 	.byte #0x6d, #0x00	;  109
      003165 70 00                 1632 	.byte #0x70, #0x00	;  112
      003167 74 00                 1633 	.byte #0x74, #0x00	;  116
      003169 77 00                 1634 	.byte #0x77, #0x00	;  119
      00316B 7A 00                 1635 	.byte #0x7a, #0x00	;  122
      00316D 7D 00                 1636 	.byte #0x7d, #0x00	;  125
                                   1637 	.area CONST   (CODE)
      00316F                       1638 ___str_0:
      00316F 0A                    1639 	.db 0x0a
      003170 0D                    1640 	.db 0x0d
      003171 E2                    1641 	.db 0xe2
      003172 94                    1642 	.db 0x94
      003173 8C                    1643 	.db 0x8c
      003174 E2                    1644 	.db 0xe2
      003175 94                    1645 	.db 0x94
      003176 80                    1646 	.db 0x80
      003177 E2                    1647 	.db 0xe2
      003178 94                    1648 	.db 0x94
      003179 80                    1649 	.db 0x80
      00317A E2                    1650 	.db 0xe2
      00317B 94                    1651 	.db 0x94
      00317C 80                    1652 	.db 0x80
      00317D E2                    1653 	.db 0xe2
      00317E 94                    1654 	.db 0x94
      00317F 80                    1655 	.db 0x80
      003180 E2                    1656 	.db 0xe2
      003181 94                    1657 	.db 0x94
      003182 80                    1658 	.db 0x80
      003183 E2                    1659 	.db 0xe2
      003184 94                    1660 	.db 0x94
      003185 80                    1661 	.db 0x80
      003186 E2                    1662 	.db 0xe2
      003187 94                    1663 	.db 0x94
      003188 80                    1664 	.db 0x80
      003189 E2                    1665 	.db 0xe2
      00318A 94                    1666 	.db 0x94
      00318B 80                    1667 	.db 0x80
      00318C E2                    1668 	.db 0xe2
      00318D 94                    1669 	.db 0x94
      00318E 80                    1670 	.db 0x80
      00318F E2                    1671 	.db 0xe2
      003190 94                    1672 	.db 0x94
      003191 80                    1673 	.db 0x80
      003192 E2                    1674 	.db 0xe2
      003193 94                    1675 	.db 0x94
      003194 80                    1676 	.db 0x80
      003195 E2                    1677 	.db 0xe2
      003196 94                    1678 	.db 0x94
      003197 80                    1679 	.db 0x80
      003198 E2                    1680 	.db 0xe2
      003199 94                    1681 	.db 0x94
      00319A 80                    1682 	.db 0x80
      00319B E2                    1683 	.db 0xe2
      00319C 94                    1684 	.db 0x94
      00319D 80                    1685 	.db 0x80
      00319E E2                    1686 	.db 0xe2
      00319F 94                    1687 	.db 0x94
      0031A0 80                    1688 	.db 0x80
      0031A1 E2                    1689 	.db 0xe2
      0031A2 94                    1690 	.db 0x94
      0031A3 80                    1691 	.db 0x80
      0031A4 E2                    1692 	.db 0xe2
      0031A5 94                    1693 	.db 0x94
      0031A6 80                    1694 	.db 0x80
      0031A7 E2                    1695 	.db 0xe2
      0031A8 94                    1696 	.db 0x94
      0031A9 80                    1697 	.db 0x80
      0031AA E2                    1698 	.db 0xe2
      0031AB 94                    1699 	.db 0x94
      0031AC 80                    1700 	.db 0x80
      0031AD E2                    1701 	.db 0xe2
      0031AE 94                    1702 	.db 0x94
      0031AF 80                    1703 	.db 0x80
      0031B0 E2                    1704 	.db 0xe2
      0031B1 94                    1705 	.db 0x94
      0031B2 80                    1706 	.db 0x80
      0031B3 E2                    1707 	.db 0xe2
      0031B4 94                    1708 	.db 0x94
      0031B5 80                    1709 	.db 0x80
      0031B6 E2                    1710 	.db 0xe2
      0031B7 94                    1711 	.db 0x94
      0031B8 80                    1712 	.db 0x80
      0031B9 E2                    1713 	.db 0xe2
      0031BA 94                    1714 	.db 0x94
      0031BB 80                    1715 	.db 0x80
      0031BC E2                    1716 	.db 0xe2
      0031BD 94                    1717 	.db 0x94
      0031BE 80                    1718 	.db 0x80
      0031BF E2                    1719 	.db 0xe2
      0031C0 94                    1720 	.db 0x94
      0031C1 80                    1721 	.db 0x80
      0031C2 E2                    1722 	.db 0xe2
      0031C3 94                    1723 	.db 0x94
      0031C4 80                    1724 	.db 0x80
      0031C5 E2                    1725 	.db 0xe2
      0031C6 94                    1726 	.db 0x94
      0031C7 80                    1727 	.db 0x80
      0031C8 E2                    1728 	.db 0xe2
      0031C9 94                    1729 	.db 0x94
      0031CA 80                    1730 	.db 0x80
      0031CB E2                    1731 	.db 0xe2
      0031CC 94                    1732 	.db 0x94
      0031CD 80                    1733 	.db 0x80
      0031CE E2                    1734 	.db 0xe2
      0031CF 94                    1735 	.db 0x94
      0031D0 80                    1736 	.db 0x80
      0031D1 E2                    1737 	.db 0xe2
      0031D2 94                    1738 	.db 0x94
      0031D3 80                    1739 	.db 0x80
      0031D4 E2                    1740 	.db 0xe2
      0031D5 94                    1741 	.db 0x94
      0031D6 80                    1742 	.db 0x80
      0031D7 E2                    1743 	.db 0xe2
      0031D8 94                    1744 	.db 0x94
      0031D9 80                    1745 	.db 0x80
      0031DA E2                    1746 	.db 0xe2
      0031DB 94                    1747 	.db 0x94
      0031DC 80                    1748 	.db 0x80
      0031DD E2                    1749 	.db 0xe2
      0031DE 94                    1750 	.db 0x94
      0031DF 80                    1751 	.db 0x80
      0031E0 E2                    1752 	.db 0xe2
      0031E1 94                    1753 	.db 0x94
      0031E2 80                    1754 	.db 0x80
      0031E3 E2                    1755 	.db 0xe2
      0031E4 94                    1756 	.db 0x94
      0031E5 80                    1757 	.db 0x80
      0031E6 E2                    1758 	.db 0xe2
      0031E7 94                    1759 	.db 0x94
      0031E8 80                    1760 	.db 0x80
      0031E9 E2                    1761 	.db 0xe2
      0031EA 94                    1762 	.db 0x94
      0031EB 80                    1763 	.db 0x80
      0031EC E2                    1764 	.db 0xe2
      0031ED 94                    1765 	.db 0x94
      0031EE 80                    1766 	.db 0x80
      0031EF E2                    1767 	.db 0xe2
      0031F0 94                    1768 	.db 0x94
      0031F1 80                    1769 	.db 0x80
      0031F2 E2                    1770 	.db 0xe2
      0031F3 94                    1771 	.db 0x94
      0031F4 80                    1772 	.db 0x80
      0031F5 E2                    1773 	.db 0xe2
      0031F6 94                    1774 	.db 0x94
      0031F7 80                    1775 	.db 0x80
      0031F8 E2                    1776 	.db 0xe2
      0031F9 94                    1777 	.db 0x94
      0031FA 80                    1778 	.db 0x80
      0031FB E2                    1779 	.db 0xe2
      0031FC 94                    1780 	.db 0x94
      0031FD 80                    1781 	.db 0x80
      0031FE E2                    1782 	.db 0xe2
      0031FF 94                    1783 	.db 0x94
      003200 80                    1784 	.db 0x80
      003201 E2                    1785 	.db 0xe2
      003202 94                    1786 	.db 0x94
      003203 80                    1787 	.db 0x80
      003204 E2                    1788 	.db 0xe2
      003205 94                    1789 	.db 0x94
      003206 80                    1790 	.db 0x80
      003207 E2                    1791 	.db 0xe2
      003208 94                    1792 	.db 0x94
      003209 80                    1793 	.db 0x80
      00320A E2                    1794 	.db 0xe2
      00320B 94                    1795 	.db 0x94
      00320C 80                    1796 	.db 0x80
      00320D E2                    1797 	.db 0xe2
      00320E 94                    1798 	.db 0x94
      00320F 80                    1799 	.db 0x80
      003210 E2                    1800 	.db 0xe2
      003211 94                    1801 	.db 0x94
      003212 80                    1802 	.db 0x80
      003213 E2                    1803 	.db 0xe2
      003214 94                    1804 	.db 0x94
      003215 80                    1805 	.db 0x80
      003216 E2                    1806 	.db 0xe2
      003217 94                    1807 	.db 0x94
      003218 80                    1808 	.db 0x80
      003219 E2                    1809 	.db 0xe2
      00321A 94                    1810 	.db 0x94
      00321B 80                    1811 	.db 0x80
      00321C E2                    1812 	.db 0xe2
      00321D 94                    1813 	.db 0x94
      00321E 80                    1814 	.db 0x80
      00321F E2                    1815 	.db 0xe2
      003220 94                    1816 	.db 0x94
      003221 80                    1817 	.db 0x80
      003222 E2                    1818 	.db 0xe2
      003223 94                    1819 	.db 0x94
      003224 80                    1820 	.db 0x80
      003225 E2                    1821 	.db 0xe2
      003226 94                    1822 	.db 0x94
      003227 80                    1823 	.db 0x80
      003228 E2                    1824 	.db 0xe2
      003229 94                    1825 	.db 0x94
      00322A 80                    1826 	.db 0x80
      00322B E2                    1827 	.db 0xe2
      00322C 94                    1828 	.db 0x94
      00322D 80                    1829 	.db 0x80
      00322E E2                    1830 	.db 0xe2
      00322F 94                    1831 	.db 0x94
      003230 90                    1832 	.db 0x90
      003231 0A                    1833 	.db 0x0a
      003232 0D                    1834 	.db 0x0d
      003233 00                    1835 	.db 0x00
                                   1836 	.area CSEG    (CODE)
                                   1837 	.area CONST   (CODE)
      003234                       1838 ___str_1:
      003234 E2                    1839 	.db 0xe2
      003235 94                    1840 	.db 0x94
      003236 82                    1841 	.db 0x82
      003237 20 20 20 20 20 20 20  1842 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003273 20 20                 1843 	.ascii "  "
      003275 E2                    1844 	.db 0xe2
      003276 94                    1845 	.db 0x94
      003277 82                    1846 	.db 0x82
      003278 0A                    1847 	.db 0x0a
      003279 0D                    1848 	.db 0x0d
      00327A 00                    1849 	.db 0x00
                                   1850 	.area CSEG    (CODE)
                                   1851 	.area CONST   (CODE)
      00327B                       1852 ___str_2:
      00327B E2                    1853 	.db 0xe2
      00327C 94                    1854 	.db 0x94
      00327D 9C                    1855 	.db 0x9c
      00327E E2                    1856 	.db 0xe2
      00327F 94                    1857 	.db 0x94
      003280 80                    1858 	.db 0x80
      003281 E2                    1859 	.db 0xe2
      003282 94                    1860 	.db 0x94
      003283 80                    1861 	.db 0x80
      003284 E2                    1862 	.db 0xe2
      003285 94                    1863 	.db 0x94
      003286 80                    1864 	.db 0x80
      003287 E2                    1865 	.db 0xe2
      003288 94                    1866 	.db 0x94
      003289 80                    1867 	.db 0x80
      00328A E2                    1868 	.db 0xe2
      00328B 94                    1869 	.db 0x94
      00328C 80                    1870 	.db 0x80
      00328D E2                    1871 	.db 0xe2
      00328E 94                    1872 	.db 0x94
      00328F 80                    1873 	.db 0x80
      003290 E2                    1874 	.db 0xe2
      003291 94                    1875 	.db 0x94
      003292 80                    1876 	.db 0x80
      003293 E2                    1877 	.db 0xe2
      003294 94                    1878 	.db 0x94
      003295 80                    1879 	.db 0x80
      003296 E2                    1880 	.db 0xe2
      003297 94                    1881 	.db 0x94
      003298 80                    1882 	.db 0x80
      003299 E2                    1883 	.db 0xe2
      00329A 94                    1884 	.db 0x94
      00329B 80                    1885 	.db 0x80
      00329C E2                    1886 	.db 0xe2
      00329D 94                    1887 	.db 0x94
      00329E 80                    1888 	.db 0x80
      00329F E2                    1889 	.db 0xe2
      0032A0 94                    1890 	.db 0x94
      0032A1 80                    1891 	.db 0x80
      0032A2 E2                    1892 	.db 0xe2
      0032A3 94                    1893 	.db 0x94
      0032A4 80                    1894 	.db 0x80
      0032A5 E2                    1895 	.db 0xe2
      0032A6 94                    1896 	.db 0x94
      0032A7 80                    1897 	.db 0x80
      0032A8 E2                    1898 	.db 0xe2
      0032A9 94                    1899 	.db 0x94
      0032AA 80                    1900 	.db 0x80
      0032AB E2                    1901 	.db 0xe2
      0032AC 94                    1902 	.db 0x94
      0032AD 80                    1903 	.db 0x80
      0032AE E2                    1904 	.db 0xe2
      0032AF 94                    1905 	.db 0x94
      0032B0 80                    1906 	.db 0x80
      0032B1 E2                    1907 	.db 0xe2
      0032B2 94                    1908 	.db 0x94
      0032B3 80                    1909 	.db 0x80
      0032B4 E2                    1910 	.db 0xe2
      0032B5 94                    1911 	.db 0x94
      0032B6 80                    1912 	.db 0x80
      0032B7 E2                    1913 	.db 0xe2
      0032B8 94                    1914 	.db 0x94
      0032B9 80                    1915 	.db 0x80
      0032BA E2                    1916 	.db 0xe2
      0032BB 94                    1917 	.db 0x94
      0032BC 80                    1918 	.db 0x80
      0032BD E2                    1919 	.db 0xe2
      0032BE 94                    1920 	.db 0x94
      0032BF 80                    1921 	.db 0x80
      0032C0 E2                    1922 	.db 0xe2
      0032C1 94                    1923 	.db 0x94
      0032C2 80                    1924 	.db 0x80
      0032C3 E2                    1925 	.db 0xe2
      0032C4 94                    1926 	.db 0x94
      0032C5 80                    1927 	.db 0x80
      0032C6 E2                    1928 	.db 0xe2
      0032C7 94                    1929 	.db 0x94
      0032C8 80                    1930 	.db 0x80
      0032C9 E2                    1931 	.db 0xe2
      0032CA 94                    1932 	.db 0x94
      0032CB 80                    1933 	.db 0x80
      0032CC E2                    1934 	.db 0xe2
      0032CD 94                    1935 	.db 0x94
      0032CE 80                    1936 	.db 0x80
      0032CF E2                    1937 	.db 0xe2
      0032D0 94                    1938 	.db 0x94
      0032D1 80                    1939 	.db 0x80
      0032D2 E2                    1940 	.db 0xe2
      0032D3 94                    1941 	.db 0x94
      0032D4 80                    1942 	.db 0x80
      0032D5 E2                    1943 	.db 0xe2
      0032D6 94                    1944 	.db 0x94
      0032D7 80                    1945 	.db 0x80
      0032D8 E2                    1946 	.db 0xe2
      0032D9 94                    1947 	.db 0x94
      0032DA 80                    1948 	.db 0x80
      0032DB E2                    1949 	.db 0xe2
      0032DC 94                    1950 	.db 0x94
      0032DD 80                    1951 	.db 0x80
      0032DE E2                    1952 	.db 0xe2
      0032DF 94                    1953 	.db 0x94
      0032E0 80                    1954 	.db 0x80
      0032E1 E2                    1955 	.db 0xe2
      0032E2 94                    1956 	.db 0x94
      0032E3 80                    1957 	.db 0x80
      0032E4 E2                    1958 	.db 0xe2
      0032E5 94                    1959 	.db 0x94
      0032E6 80                    1960 	.db 0x80
      0032E7 E2                    1961 	.db 0xe2
      0032E8 94                    1962 	.db 0x94
      0032E9 80                    1963 	.db 0x80
      0032EA E2                    1964 	.db 0xe2
      0032EB 94                    1965 	.db 0x94
      0032EC 80                    1966 	.db 0x80
      0032ED E2                    1967 	.db 0xe2
      0032EE 94                    1968 	.db 0x94
      0032EF 80                    1969 	.db 0x80
      0032F0 E2                    1970 	.db 0xe2
      0032F1 94                    1971 	.db 0x94
      0032F2 80                    1972 	.db 0x80
      0032F3 E2                    1973 	.db 0xe2
      0032F4 94                    1974 	.db 0x94
      0032F5 80                    1975 	.db 0x80
      0032F6 E2                    1976 	.db 0xe2
      0032F7 94                    1977 	.db 0x94
      0032F8 80                    1978 	.db 0x80
      0032F9 E2                    1979 	.db 0xe2
      0032FA 94                    1980 	.db 0x94
      0032FB 80                    1981 	.db 0x80
      0032FC E2                    1982 	.db 0xe2
      0032FD 94                    1983 	.db 0x94
      0032FE 80                    1984 	.db 0x80
      0032FF E2                    1985 	.db 0xe2
      003300 94                    1986 	.db 0x94
      003301 80                    1987 	.db 0x80
      003302 E2                    1988 	.db 0xe2
      003303 94                    1989 	.db 0x94
      003304 80                    1990 	.db 0x80
      003305 E2                    1991 	.db 0xe2
      003306 94                    1992 	.db 0x94
      003307 80                    1993 	.db 0x80
      003308 E2                    1994 	.db 0xe2
      003309 94                    1995 	.db 0x94
      00330A 80                    1996 	.db 0x80
      00330B E2                    1997 	.db 0xe2
      00330C 94                    1998 	.db 0x94
      00330D 80                    1999 	.db 0x80
      00330E E2                    2000 	.db 0xe2
      00330F 94                    2001 	.db 0x94
      003310 80                    2002 	.db 0x80
      003311 E2                    2003 	.db 0xe2
      003312 94                    2004 	.db 0x94
      003313 80                    2005 	.db 0x80
      003314 E2                    2006 	.db 0xe2
      003315 94                    2007 	.db 0x94
      003316 80                    2008 	.db 0x80
      003317 E2                    2009 	.db 0xe2
      003318 94                    2010 	.db 0x94
      003319 80                    2011 	.db 0x80
      00331A E2                    2012 	.db 0xe2
      00331B 94                    2013 	.db 0x94
      00331C 80                    2014 	.db 0x80
      00331D E2                    2015 	.db 0xe2
      00331E 94                    2016 	.db 0x94
      00331F 80                    2017 	.db 0x80
      003320 E2                    2018 	.db 0xe2
      003321 94                    2019 	.db 0x94
      003322 80                    2020 	.db 0x80
      003323 E2                    2021 	.db 0xe2
      003324 94                    2022 	.db 0x94
      003325 80                    2023 	.db 0x80
      003326 E2                    2024 	.db 0xe2
      003327 94                    2025 	.db 0x94
      003328 80                    2026 	.db 0x80
      003329 E2                    2027 	.db 0xe2
      00332A 94                    2028 	.db 0x94
      00332B 80                    2029 	.db 0x80
      00332C E2                    2030 	.db 0xe2
      00332D 94                    2031 	.db 0x94
      00332E 80                    2032 	.db 0x80
      00332F E2                    2033 	.db 0xe2
      003330 94                    2034 	.db 0x94
      003331 80                    2035 	.db 0x80
      003332 E2                    2036 	.db 0xe2
      003333 94                    2037 	.db 0x94
      003334 80                    2038 	.db 0x80
      003335 E2                    2039 	.db 0xe2
      003336 94                    2040 	.db 0x94
      003337 80                    2041 	.db 0x80
      003338 E2                    2042 	.db 0xe2
      003339 94                    2043 	.db 0x94
      00333A A4                    2044 	.db 0xa4
      00333B 0A                    2045 	.db 0x0a
      00333C 0D                    2046 	.db 0x0d
      00333D 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      00333E                       2050 ___str_3:
      00333E E2                    2051 	.db 0xe2
      00333F 94                    2052 	.db 0x94
      003340 82                    2053 	.db 0x82
      003341 20 20 43 6F 6D 6D 61  2054 	.ascii "  Command   "
             6E 64 20 20 20
      00334D E2                    2055 	.db 0xe2
      00334E 94                    2056 	.db 0x94
      00334F 82                    2057 	.db 0x82
      003350 20 20 20 20 20 20 20  2058 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003381 E2                    2059 	.db 0xe2
      003382 94                    2060 	.db 0x94
      003383 82                    2061 	.db 0x82
      003384 0A                    2062 	.db 0x0a
      003385 0D                    2063 	.db 0x0d
      003386 00                    2064 	.db 0x00
                                   2065 	.area CSEG    (CODE)
                                   2066 	.area CONST   (CODE)
      003387                       2067 ___str_4:
      003387 E2                    2068 	.db 0xe2
      003388 94                    2069 	.db 0x94
      003389 9C                    2070 	.db 0x9c
      00338A E2                    2071 	.db 0xe2
      00338B 94                    2072 	.db 0x94
      00338C 80                    2073 	.db 0x80
      00338D E2                    2074 	.db 0xe2
      00338E 94                    2075 	.db 0x94
      00338F 80                    2076 	.db 0x80
      003390 E2                    2077 	.db 0xe2
      003391 94                    2078 	.db 0x94
      003392 80                    2079 	.db 0x80
      003393 E2                    2080 	.db 0xe2
      003394 94                    2081 	.db 0x94
      003395 80                    2082 	.db 0x80
      003396 E2                    2083 	.db 0xe2
      003397 94                    2084 	.db 0x94
      003398 80                    2085 	.db 0x80
      003399 E2                    2086 	.db 0xe2
      00339A 94                    2087 	.db 0x94
      00339B 80                    2088 	.db 0x80
      00339C E2                    2089 	.db 0xe2
      00339D 94                    2090 	.db 0x94
      00339E 80                    2091 	.db 0x80
      00339F E2                    2092 	.db 0xe2
      0033A0 94                    2093 	.db 0x94
      0033A1 80                    2094 	.db 0x80
      0033A2 E2                    2095 	.db 0xe2
      0033A3 94                    2096 	.db 0x94
      0033A4 80                    2097 	.db 0x80
      0033A5 E2                    2098 	.db 0xe2
      0033A6 94                    2099 	.db 0x94
      0033A7 80                    2100 	.db 0x80
      0033A8 E2                    2101 	.db 0xe2
      0033A9 94                    2102 	.db 0x94
      0033AA 80                    2103 	.db 0x80
      0033AB E2                    2104 	.db 0xe2
      0033AC 94                    2105 	.db 0x94
      0033AD BC                    2106 	.db 0xbc
      0033AE E2                    2107 	.db 0xe2
      0033AF 94                    2108 	.db 0x94
      0033B0 80                    2109 	.db 0x80
      0033B1 E2                    2110 	.db 0xe2
      0033B2 94                    2111 	.db 0x94
      0033B3 80                    2112 	.db 0x80
      0033B4 E2                    2113 	.db 0xe2
      0033B5 94                    2114 	.db 0x94
      0033B6 80                    2115 	.db 0x80
      0033B7 E2                    2116 	.db 0xe2
      0033B8 94                    2117 	.db 0x94
      0033B9 80                    2118 	.db 0x80
      0033BA E2                    2119 	.db 0xe2
      0033BB 94                    2120 	.db 0x94
      0033BC 80                    2121 	.db 0x80
      0033BD E2                    2122 	.db 0xe2
      0033BE 94                    2123 	.db 0x94
      0033BF 80                    2124 	.db 0x80
      0033C0 E2                    2125 	.db 0xe2
      0033C1 94                    2126 	.db 0x94
      0033C2 80                    2127 	.db 0x80
      0033C3 E2                    2128 	.db 0xe2
      0033C4 94                    2129 	.db 0x94
      0033C5 80                    2130 	.db 0x80
      0033C6 E2                    2131 	.db 0xe2
      0033C7 94                    2132 	.db 0x94
      0033C8 80                    2133 	.db 0x80
      0033C9 E2                    2134 	.db 0xe2
      0033CA 94                    2135 	.db 0x94
      0033CB 80                    2136 	.db 0x80
      0033CC E2                    2137 	.db 0xe2
      0033CD 94                    2138 	.db 0x94
      0033CE 80                    2139 	.db 0x80
      0033CF E2                    2140 	.db 0xe2
      0033D0 94                    2141 	.db 0x94
      0033D1 80                    2142 	.db 0x80
      0033D2 E2                    2143 	.db 0xe2
      0033D3 94                    2144 	.db 0x94
      0033D4 80                    2145 	.db 0x80
      0033D5 E2                    2146 	.db 0xe2
      0033D6 94                    2147 	.db 0x94
      0033D7 80                    2148 	.db 0x80
      0033D8 E2                    2149 	.db 0xe2
      0033D9 94                    2150 	.db 0x94
      0033DA 80                    2151 	.db 0x80
      0033DB E2                    2152 	.db 0xe2
      0033DC 94                    2153 	.db 0x94
      0033DD 80                    2154 	.db 0x80
      0033DE E2                    2155 	.db 0xe2
      0033DF 94                    2156 	.db 0x94
      0033E0 80                    2157 	.db 0x80
      0033E1 E2                    2158 	.db 0xe2
      0033E2 94                    2159 	.db 0x94
      0033E3 80                    2160 	.db 0x80
      0033E4 E2                    2161 	.db 0xe2
      0033E5 94                    2162 	.db 0x94
      0033E6 80                    2163 	.db 0x80
      0033E7 E2                    2164 	.db 0xe2
      0033E8 94                    2165 	.db 0x94
      0033E9 80                    2166 	.db 0x80
      0033EA E2                    2167 	.db 0xe2
      0033EB 94                    2168 	.db 0x94
      0033EC 80                    2169 	.db 0x80
      0033ED E2                    2170 	.db 0xe2
      0033EE 94                    2171 	.db 0x94
      0033EF 80                    2172 	.db 0x80
      0033F0 E2                    2173 	.db 0xe2
      0033F1 94                    2174 	.db 0x94
      0033F2 80                    2175 	.db 0x80
      0033F3 E2                    2176 	.db 0xe2
      0033F4 94                    2177 	.db 0x94
      0033F5 80                    2178 	.db 0x80
      0033F6 E2                    2179 	.db 0xe2
      0033F7 94                    2180 	.db 0x94
      0033F8 80                    2181 	.db 0x80
      0033F9 E2                    2182 	.db 0xe2
      0033FA 94                    2183 	.db 0x94
      0033FB 80                    2184 	.db 0x80
      0033FC E2                    2185 	.db 0xe2
      0033FD 94                    2186 	.db 0x94
      0033FE 80                    2187 	.db 0x80
      0033FF E2                    2188 	.db 0xe2
      003400 94                    2189 	.db 0x94
      003401 80                    2190 	.db 0x80
      003402 E2                    2191 	.db 0xe2
      003403 94                    2192 	.db 0x94
      003404 80                    2193 	.db 0x80
      003405 E2                    2194 	.db 0xe2
      003406 94                    2195 	.db 0x94
      003407 80                    2196 	.db 0x80
      003408 E2                    2197 	.db 0xe2
      003409 94                    2198 	.db 0x94
      00340A 80                    2199 	.db 0x80
      00340B E2                    2200 	.db 0xe2
      00340C 94                    2201 	.db 0x94
      00340D 80                    2202 	.db 0x80
      00340E E2                    2203 	.db 0xe2
      00340F 94                    2204 	.db 0x94
      003410 80                    2205 	.db 0x80
      003411 E2                    2206 	.db 0xe2
      003412 94                    2207 	.db 0x94
      003413 80                    2208 	.db 0x80
      003414 E2                    2209 	.db 0xe2
      003415 94                    2210 	.db 0x94
      003416 80                    2211 	.db 0x80
      003417 E2                    2212 	.db 0xe2
      003418 94                    2213 	.db 0x94
      003419 80                    2214 	.db 0x80
      00341A E2                    2215 	.db 0xe2
      00341B 94                    2216 	.db 0x94
      00341C 80                    2217 	.db 0x80
      00341D E2                    2218 	.db 0xe2
      00341E 94                    2219 	.db 0x94
      00341F 80                    2220 	.db 0x80
      003420 E2                    2221 	.db 0xe2
      003421 94                    2222 	.db 0x94
      003422 80                    2223 	.db 0x80
      003423 E2                    2224 	.db 0xe2
      003424 94                    2225 	.db 0x94
      003425 80                    2226 	.db 0x80
      003426 E2                    2227 	.db 0xe2
      003427 94                    2228 	.db 0x94
      003428 80                    2229 	.db 0x80
      003429 E2                    2230 	.db 0xe2
      00342A 94                    2231 	.db 0x94
      00342B 80                    2232 	.db 0x80
      00342C E2                    2233 	.db 0xe2
      00342D 94                    2234 	.db 0x94
      00342E 80                    2235 	.db 0x80
      00342F E2                    2236 	.db 0xe2
      003430 94                    2237 	.db 0x94
      003431 80                    2238 	.db 0x80
      003432 E2                    2239 	.db 0xe2
      003433 94                    2240 	.db 0x94
      003434 80                    2241 	.db 0x80
      003435 E2                    2242 	.db 0xe2
      003436 94                    2243 	.db 0x94
      003437 80                    2244 	.db 0x80
      003438 E2                    2245 	.db 0xe2
      003439 94                    2246 	.db 0x94
      00343A 80                    2247 	.db 0x80
      00343B E2                    2248 	.db 0xe2
      00343C 94                    2249 	.db 0x94
      00343D A4                    2250 	.db 0xa4
      00343E 0A                    2251 	.db 0x0a
      00343F 0D                    2252 	.db 0x0d
      003440 00                    2253 	.db 0x00
                                   2254 	.area CSEG    (CODE)
                                   2255 	.area CONST   (CODE)
      003441                       2256 ___str_5:
      003441 E2                    2257 	.db 0xe2
      003442 94                    2258 	.db 0x94
      003443 82                    2259 	.db 0x82
      003444 20 20 20 20 4D 20 20  2260 	.ascii "    M      "
             20 20 20 20
      00344F E2                    2261 	.db 0xe2
      003450 94                    2262 	.db 0x94
      003451 82                    2263 	.db 0x82
      003452 20 4D 61 6E 75 61 6C  2264 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003482 E2                    2265 	.db 0xe2
      003483 94                    2266 	.db 0x94
      003484 82                    2267 	.db 0x82
      003485 0A                    2268 	.db 0x0a
      003486 0D                    2269 	.db 0x0d
      003487 00                    2270 	.db 0x00
                                   2271 	.area CSEG    (CODE)
                                   2272 	.area CONST   (CODE)
      003488                       2273 ___str_6:
      003488 E2                    2274 	.db 0xe2
      003489 94                    2275 	.db 0x94
      00348A 82                    2276 	.db 0x82
      00348B 20 20 20 20 42 20 20  2277 	.ascii "    B      "
             20 20 20 20
      003496 E2                    2278 	.db 0xe2
      003497 94                    2279 	.db 0x94
      003498 82                    2280 	.db 0x82
      003499 20 42 69 74 20 42 61  2281 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0034C8 E2                    2282 	.db 0xe2
      0034C9 94                    2283 	.db 0x94
      0034CA 82                    2284 	.db 0x82
      0034CB 0A                    2285 	.db 0x0a
      0034CC 0D                    2286 	.db 0x0d
      0034CD 00                    2287 	.db 0x00
                                   2288 	.area CSEG    (CODE)
                                   2289 	.area CONST   (CODE)
      0034CE                       2290 ___str_7:
      0034CE E2                    2291 	.db 0xe2
      0034CF 94                    2292 	.db 0x94
      0034D0 82                    2293 	.db 0x82
      0034D1 20 20 20 20 53 20 20  2294 	.ascii "    S      "
             20 20 20 20
      0034DC E2                    2295 	.db 0xe2
      0034DD 94                    2296 	.db 0x94
      0034DE 82                    2297 	.db 0x82
      0034DF 20 47 65 6E 65 72 61  2298 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00350E E2                    2299 	.db 0xe2
      00350F 94                    2300 	.db 0x94
      003510 82                    2301 	.db 0x82
      003511 0A                    2302 	.db 0x0a
      003512 0D                    2303 	.db 0x0d
      003513 00                    2304 	.db 0x00
                                   2305 	.area CSEG    (CODE)
                                   2306 	.area CONST   (CODE)
      003514                       2307 ___str_8:
      003514 E2                    2308 	.db 0xe2
      003515 94                    2309 	.db 0x94
      003516 82                    2310 	.db 0x82
      003517 20 20 20 20 51 20 20  2311 	.ascii "    Q      "
             20 20 20 20
      003522 E2                    2312 	.db 0xe2
      003523 94                    2313 	.db 0x94
      003524 82                    2314 	.db 0x82
      003525 20 47 65 6E 65 72 61  2315 	.ascii " Generate Square Wave                          "
             74 65 20 53 71 75 61
             72 65 20 57 61 76 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003554 E2                    2316 	.db 0xe2
      003555 94                    2317 	.db 0x94
      003556 82                    2318 	.db 0x82
      003557 0A                    2319 	.db 0x0a
      003558 0D                    2320 	.db 0x0d
      003559 00                    2321 	.db 0x00
                                   2322 	.area CSEG    (CODE)
                                   2323 	.area CONST   (CODE)
      00355A                       2324 ___str_9:
      00355A E2                    2325 	.db 0xe2
      00355B 94                    2326 	.db 0x94
      00355C 82                    2327 	.db 0x82
      00355D 20 20 20 20 54 20 20  2328 	.ascii "    T      "
             20 20 20 20
      003568 E2                    2329 	.db 0xe2
      003569 94                    2330 	.db 0x94
      00356A 82                    2331 	.db 0x82
      00356B 20 47 65 6E 65 72 61  2332 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00359A E2                    2333 	.db 0xe2
      00359B 94                    2334 	.db 0x94
      00359C 82                    2335 	.db 0x82
      00359D 0A                    2336 	.db 0x0a
      00359E 0D                    2337 	.db 0x0d
      00359F 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      0035A0                       2341 ___str_10:
      0035A0 E2                    2342 	.db 0xe2
      0035A1 94                    2343 	.db 0x94
      0035A2 82                    2344 	.db 0x82
      0035A3 20 20 20 20 44 20 20  2345 	.ascii "    D      "
             20 20 20 20
      0035AE E2                    2346 	.db 0xe2
      0035AF 94                    2347 	.db 0x94
      0035B0 82                    2348 	.db 0x82
      0035B1 20 44 65 6D 6F 20 4D  2349 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      0035E0 E2                    2350 	.db 0xe2
      0035E1 94                    2351 	.db 0x94
      0035E2 82                    2352 	.db 0x82
      0035E3 0A                    2353 	.db 0x0a
      0035E4 0D                    2354 	.db 0x0d
      0035E5 00                    2355 	.db 0x00
                                   2356 	.area CSEG    (CODE)
                                   2357 	.area CONST   (CODE)
      0035E6                       2358 ___str_11:
      0035E6 E2                    2359 	.db 0xe2
      0035E7 94                    2360 	.db 0x94
      0035E8 82                    2361 	.db 0x82
      0035E9 20 20 20 20 43 20 20  2362 	.ascii "    C      "
             20 20 20 20
      0035F4 E2                    2363 	.db 0xe2
      0035F5 94                    2364 	.db 0x94
      0035F6 82                    2365 	.db 0x82
      0035F7 20 43 6F 6E 66 69 67  2366 	.ascii " Configure SPI Parameters                      "
             75 72 65 20 53 50 49
             20 50 61 72 61 6D 65
             74 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003626 E2                    2367 	.db 0xe2
      003627 94                    2368 	.db 0x94
      003628 82                    2369 	.db 0x82
      003629 0A                    2370 	.db 0x0a
      00362A 0D                    2371 	.db 0x0d
      00362B 00                    2372 	.db 0x00
                                   2373 	.area CSEG    (CODE)
                                   2374 	.area CONST   (CODE)
      00362C                       2375 ___str_12:
      00362C E2                    2376 	.db 0xe2
      00362D 94                    2377 	.db 0x94
      00362E 82                    2378 	.db 0x82
      00362F 20 20 20 20 52 20 20  2379 	.ascii "    R      "
             20 20 20 20
      00363A E2                    2380 	.db 0xe2
      00363B 94                    2381 	.db 0x94
      00363C 82                    2382 	.db 0x82
      00363D 20 52 65 61 64 20 53  2383 	.ascii " Read SPI Data                                 "
             50 49 20 44 61 74 61
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00366C E2                    2384 	.db 0xe2
      00366D 94                    2385 	.db 0x94
      00366E 82                    2386 	.db 0x82
      00366F 0A                    2387 	.db 0x0a
      003670 0D                    2388 	.db 0x0d
      003671 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      003672                       2392 ___str_13:
      003672 E2                    2393 	.db 0xe2
      003673 94                    2394 	.db 0x94
      003674 82                    2395 	.db 0x82
      003675 20 20 20 20 57 20 20  2396 	.ascii "    W      "
             20 20 20 20
      003680 E2                    2397 	.db 0xe2
      003681 94                    2398 	.db 0x94
      003682 82                    2399 	.db 0x82
      003683 20 57 72 69 74 65 20  2400 	.ascii " Write SPI Data                                "
             53 50 49 20 44 61 74
             61 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0036B2 E2                    2401 	.db 0xe2
      0036B3 94                    2402 	.db 0x94
      0036B4 82                    2403 	.db 0x82
      0036B5 0A                    2404 	.db 0x0a
      0036B6 0D                    2405 	.db 0x0d
      0036B7 00                    2406 	.db 0x00
                                   2407 	.area CSEG    (CODE)
                                   2408 	.area CONST   (CODE)
      0036B8                       2409 ___str_14:
      0036B8 E2                    2410 	.db 0xe2
      0036B9 94                    2411 	.db 0x94
      0036BA 82                    2412 	.db 0x82
      0036BB 20 20 20 20 3F 20 20  2413 	.ascii "    ?      "
             20 20 20 20
      0036C6 E2                    2414 	.db 0xe2
      0036C7 94                    2415 	.db 0x94
      0036C8 82                    2416 	.db 0x82
      0036C9 20 44 69 73 70 6C 61  2417 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0036F8 E2                    2418 	.db 0xe2
      0036F9 94                    2419 	.db 0x94
      0036FA 82                    2420 	.db 0x82
      0036FB 0A                    2421 	.db 0x0a
      0036FC 0D                    2422 	.db 0x0d
      0036FD 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      0036FE                       2426 ___str_15:
      0036FE E2                    2427 	.db 0xe2
      0036FF 94                    2428 	.db 0x94
      003700 82                    2429 	.db 0x82
      003701 20 20 20 20 58 20 20  2430 	.ascii "    X      "
             20 20 20 20
      00370C E2                    2431 	.db 0xe2
      00370D 94                    2432 	.db 0x94
      00370E 82                    2433 	.db 0x82
      00370F 20 45 78 69 74 20 50  2434 	.ascii " Exit Program                                  "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00373E E2                    2435 	.db 0xe2
      00373F 94                    2436 	.db 0x94
      003740 82                    2437 	.db 0x82
      003741 0A                    2438 	.db 0x0a
      003742 0D                    2439 	.db 0x0d
      003743 00                    2440 	.db 0x00
                                   2441 	.area CSEG    (CODE)
                                   2442 	.area CONST   (CODE)
      003744                       2443 ___str_16:
      003744 E2                    2444 	.db 0xe2
      003745 94                    2445 	.db 0x94
      003746 94                    2446 	.db 0x94
      003747 E2                    2447 	.db 0xe2
      003748 94                    2448 	.db 0x94
      003749 80                    2449 	.db 0x80
      00374A E2                    2450 	.db 0xe2
      00374B 94                    2451 	.db 0x94
      00374C 80                    2452 	.db 0x80
      00374D E2                    2453 	.db 0xe2
      00374E 94                    2454 	.db 0x94
      00374F 80                    2455 	.db 0x80
      003750 E2                    2456 	.db 0xe2
      003751 94                    2457 	.db 0x94
      003752 80                    2458 	.db 0x80
      003753 E2                    2459 	.db 0xe2
      003754 94                    2460 	.db 0x94
      003755 80                    2461 	.db 0x80
      003756 E2                    2462 	.db 0xe2
      003757 94                    2463 	.db 0x94
      003758 80                    2464 	.db 0x80
      003759 E2                    2465 	.db 0xe2
      00375A 94                    2466 	.db 0x94
      00375B 80                    2467 	.db 0x80
      00375C E2                    2468 	.db 0xe2
      00375D 94                    2469 	.db 0x94
      00375E 80                    2470 	.db 0x80
      00375F E2                    2471 	.db 0xe2
      003760 94                    2472 	.db 0x94
      003761 80                    2473 	.db 0x80
      003762 E2                    2474 	.db 0xe2
      003763 94                    2475 	.db 0x94
      003764 80                    2476 	.db 0x80
      003765 E2                    2477 	.db 0xe2
      003766 94                    2478 	.db 0x94
      003767 80                    2479 	.db 0x80
      003768 E2                    2480 	.db 0xe2
      003769 94                    2481 	.db 0x94
      00376A B4                    2482 	.db 0xb4
      00376B E2                    2483 	.db 0xe2
      00376C 94                    2484 	.db 0x94
      00376D 80                    2485 	.db 0x80
      00376E E2                    2486 	.db 0xe2
      00376F 94                    2487 	.db 0x94
      003770 80                    2488 	.db 0x80
      003771 E2                    2489 	.db 0xe2
      003772 94                    2490 	.db 0x94
      003773 80                    2491 	.db 0x80
      003774 E2                    2492 	.db 0xe2
      003775 94                    2493 	.db 0x94
      003776 80                    2494 	.db 0x80
      003777 E2                    2495 	.db 0xe2
      003778 94                    2496 	.db 0x94
      003779 80                    2497 	.db 0x80
      00377A E2                    2498 	.db 0xe2
      00377B 94                    2499 	.db 0x94
      00377C 80                    2500 	.db 0x80
      00377D E2                    2501 	.db 0xe2
      00377E 94                    2502 	.db 0x94
      00377F 80                    2503 	.db 0x80
      003780 E2                    2504 	.db 0xe2
      003781 94                    2505 	.db 0x94
      003782 80                    2506 	.db 0x80
      003783 E2                    2507 	.db 0xe2
      003784 94                    2508 	.db 0x94
      003785 80                    2509 	.db 0x80
      003786 E2                    2510 	.db 0xe2
      003787 94                    2511 	.db 0x94
      003788 80                    2512 	.db 0x80
      003789 E2                    2513 	.db 0xe2
      00378A 94                    2514 	.db 0x94
      00378B 80                    2515 	.db 0x80
      00378C E2                    2516 	.db 0xe2
      00378D 94                    2517 	.db 0x94
      00378E 80                    2518 	.db 0x80
      00378F E2                    2519 	.db 0xe2
      003790 94                    2520 	.db 0x94
      003791 80                    2521 	.db 0x80
      003792 E2                    2522 	.db 0xe2
      003793 94                    2523 	.db 0x94
      003794 80                    2524 	.db 0x80
      003795 E2                    2525 	.db 0xe2
      003796 94                    2526 	.db 0x94
      003797 80                    2527 	.db 0x80
      003798 E2                    2528 	.db 0xe2
      003799 94                    2529 	.db 0x94
      00379A 80                    2530 	.db 0x80
      00379B E2                    2531 	.db 0xe2
      00379C 94                    2532 	.db 0x94
      00379D 80                    2533 	.db 0x80
      00379E E2                    2534 	.db 0xe2
      00379F 94                    2535 	.db 0x94
      0037A0 80                    2536 	.db 0x80
      0037A1 E2                    2537 	.db 0xe2
      0037A2 94                    2538 	.db 0x94
      0037A3 80                    2539 	.db 0x80
      0037A4 E2                    2540 	.db 0xe2
      0037A5 94                    2541 	.db 0x94
      0037A6 80                    2542 	.db 0x80
      0037A7 E2                    2543 	.db 0xe2
      0037A8 94                    2544 	.db 0x94
      0037A9 80                    2545 	.db 0x80
      0037AA E2                    2546 	.db 0xe2
      0037AB 94                    2547 	.db 0x94
      0037AC 80                    2548 	.db 0x80
      0037AD E2                    2549 	.db 0xe2
      0037AE 94                    2550 	.db 0x94
      0037AF 80                    2551 	.db 0x80
      0037B0 E2                    2552 	.db 0xe2
      0037B1 94                    2553 	.db 0x94
      0037B2 80                    2554 	.db 0x80
      0037B3 E2                    2555 	.db 0xe2
      0037B4 94                    2556 	.db 0x94
      0037B5 80                    2557 	.db 0x80
      0037B6 E2                    2558 	.db 0xe2
      0037B7 94                    2559 	.db 0x94
      0037B8 80                    2560 	.db 0x80
      0037B9 E2                    2561 	.db 0xe2
      0037BA 94                    2562 	.db 0x94
      0037BB 80                    2563 	.db 0x80
      0037BC E2                    2564 	.db 0xe2
      0037BD 94                    2565 	.db 0x94
      0037BE 80                    2566 	.db 0x80
      0037BF E2                    2567 	.db 0xe2
      0037C0 94                    2568 	.db 0x94
      0037C1 80                    2569 	.db 0x80
      0037C2 E2                    2570 	.db 0xe2
      0037C3 94                    2571 	.db 0x94
      0037C4 80                    2572 	.db 0x80
      0037C5 E2                    2573 	.db 0xe2
      0037C6 94                    2574 	.db 0x94
      0037C7 80                    2575 	.db 0x80
      0037C8 E2                    2576 	.db 0xe2
      0037C9 94                    2577 	.db 0x94
      0037CA 80                    2578 	.db 0x80
      0037CB E2                    2579 	.db 0xe2
      0037CC 94                    2580 	.db 0x94
      0037CD 80                    2581 	.db 0x80
      0037CE E2                    2582 	.db 0xe2
      0037CF 94                    2583 	.db 0x94
      0037D0 80                    2584 	.db 0x80
      0037D1 E2                    2585 	.db 0xe2
      0037D2 94                    2586 	.db 0x94
      0037D3 80                    2587 	.db 0x80
      0037D4 E2                    2588 	.db 0xe2
      0037D5 94                    2589 	.db 0x94
      0037D6 80                    2590 	.db 0x80
      0037D7 E2                    2591 	.db 0xe2
      0037D8 94                    2592 	.db 0x94
      0037D9 80                    2593 	.db 0x80
      0037DA E2                    2594 	.db 0xe2
      0037DB 94                    2595 	.db 0x94
      0037DC 80                    2596 	.db 0x80
      0037DD E2                    2597 	.db 0xe2
      0037DE 94                    2598 	.db 0x94
      0037DF 80                    2599 	.db 0x80
      0037E0 E2                    2600 	.db 0xe2
      0037E1 94                    2601 	.db 0x94
      0037E2 80                    2602 	.db 0x80
      0037E3 E2                    2603 	.db 0xe2
      0037E4 94                    2604 	.db 0x94
      0037E5 80                    2605 	.db 0x80
      0037E6 E2                    2606 	.db 0xe2
      0037E7 94                    2607 	.db 0x94
      0037E8 80                    2608 	.db 0x80
      0037E9 E2                    2609 	.db 0xe2
      0037EA 94                    2610 	.db 0x94
      0037EB 80                    2611 	.db 0x80
      0037EC E2                    2612 	.db 0xe2
      0037ED 94                    2613 	.db 0x94
      0037EE 80                    2614 	.db 0x80
      0037EF E2                    2615 	.db 0xe2
      0037F0 94                    2616 	.db 0x94
      0037F1 80                    2617 	.db 0x80
      0037F2 E2                    2618 	.db 0xe2
      0037F3 94                    2619 	.db 0x94
      0037F4 80                    2620 	.db 0x80
      0037F5 E2                    2621 	.db 0xe2
      0037F6 94                    2622 	.db 0x94
      0037F7 80                    2623 	.db 0x80
      0037F8 E2                    2624 	.db 0xe2
      0037F9 94                    2625 	.db 0x94
      0037FA 98                    2626 	.db 0x98
      0037FB 0A                    2627 	.db 0x0a
      0037FC 0D                    2628 	.db 0x0d
      0037FD 00                    2629 	.db 0x00
                                   2630 	.area CSEG    (CODE)
                                   2631 	.area CONST   (CODE)
      0037FE                       2632 ___str_17:
      0037FE 0A                    2633 	.db 0x0a
      0037FF 0D                    2634 	.db 0x0d
      003800 45 6E 74 65 72 20 63  2635 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      00380F 00                    2636 	.db 0x00
                                   2637 	.area CSEG    (CODE)
                                   2638 	.area CONST   (CODE)
      003810                       2639 ___str_18:
      003810 7C 20 24 20 25 63     2640 	.ascii "| $ %c"
      003816 0A                    2641 	.db 0x0a
      003817 0D                    2642 	.db 0x0d
      003818 00                    2643 	.db 0x00
                                   2644 	.area CSEG    (CODE)
                                   2645 	.area CONST   (CODE)
      003819                       2646 ___str_19:
      003819 0A                    2647 	.db 0x0a
      00381A 0D                    2648 	.db 0x0d
      00381B 00                    2649 	.db 0x00
                                   2650 	.area CSEG    (CODE)
                                   2651 	.area CONST   (CODE)
      00381C                       2652 ___str_20:
      00381C 53 49 4E 20 57 41 56  2653 	.ascii "SIN WAVE DONE"
             45 20 44 4F 4E 45
      003829 0A                    2654 	.db 0x0a
      00382A 0D                    2655 	.db 0x0d
      00382B 00                    2656 	.db 0x00
                                   2657 	.area CSEG    (CODE)
                                   2658 	.area CONST   (CODE)
      00382C                       2659 ___str_21:
      00382C E2                    2660 	.db 0xe2
      00382D 94                    2661 	.db 0x94
      00382E 82                    2662 	.db 0x82
      00382F 20 45 6E 74 65 72 20  2663 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      003858 0A                    2664 	.db 0x0a
      003859 0D                    2665 	.db 0x0d
      00385A 7C                    2666 	.ascii "|"
      00385B 00                    2667 	.db 0x00
                                   2668 	.area CSEG    (CODE)
                                   2669 	.area CONST   (CODE)
      00385C                       2670 ___str_22:
      00385C 24 20                 2671 	.ascii "$ "
      00385E 00                    2672 	.db 0x00
                                   2673 	.area CSEG    (CODE)
                                   2674 	.area CONST   (CODE)
      00385F                       2675 ___str_23:
      00385F 0A                    2676 	.db 0x0a
      003860 0D                    2677 	.db 0x0d
      003861 E2                    2678 	.db 0xe2
      003862 94                    2679 	.db 0x94
      003863 82                    2680 	.db 0x82
      003864 20 45 6E 74 65 72 65  2681 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003879 0A                    2682 	.db 0x0a
      00387A 0D                    2683 	.db 0x0d
      00387B 00                    2684 	.db 0x00
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area XINIT   (CODE)
      003887                       2687 __xinit__ms_flag:
      003887 00                    2688 	.db #0x00	; 0
      003888                       2689 __xinit__transmission_complete:
      003888 00 00                 2690 	.byte #0x00, #0x00	;  0
                                   2691 	.area CABS    (ABS,CODE)
