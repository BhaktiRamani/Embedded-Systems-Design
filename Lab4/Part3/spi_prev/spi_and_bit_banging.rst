                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_and_bit_banging
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _trig_dac_values
                                     12 	.globl _dac_values
                                     13 	.globl _main
                                     14 	.globl _display_menu
                                     15 	.globl _delay_ms
                                     16 	.globl _getchar
                                     17 	.globl _putchar
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _transmission_complete
                                    216 	.globl _ms_flag
                                    217 	.globl _spi_transmission_stop
                                    218 	.globl _demo_mode
                                    219 	.globl _bit_bang_spi
                                    220 	.globl _take_data
                                    221 	.globl _mannual_spi
                                    222 	.globl _spi_init
                                    223 	.globl _bit_bang_spi_init
                                    224 	.globl _bit_bang_spi_write
                                    225 	.globl _spi_transmission_start
                                    226 	.globl _spi_triangular_wave
                                    227 	.globl _spi_ramp_signal
                                    228 ;--------------------------------------------------------
                                    229 ; special function registers
                                    230 ;--------------------------------------------------------
                                    231 	.area RSEG    (ABS,DATA)
      000000                        232 	.org 0x0000
                           000080   233 _P0	=	0x0080
                           000081   234 _SP	=	0x0081
                           000082   235 _DPL	=	0x0082
                           000083   236 _DPH	=	0x0083
                           000087   237 _PCON	=	0x0087
                           000088   238 _TCON	=	0x0088
                           000089   239 _TMOD	=	0x0089
                           00008A   240 _TL0	=	0x008a
                           00008B   241 _TL1	=	0x008b
                           00008C   242 _TH0	=	0x008c
                           00008D   243 _TH1	=	0x008d
                           000090   244 _P1	=	0x0090
                           000098   245 _SCON	=	0x0098
                           000099   246 _SBUF	=	0x0099
                           0000A0   247 _P2	=	0x00a0
                           0000A8   248 _IE	=	0x00a8
                           0000B0   249 _P3	=	0x00b0
                           0000B8   250 _IP	=	0x00b8
                           0000D0   251 _PSW	=	0x00d0
                           0000E0   252 _ACC	=	0x00e0
                           0000F0   253 _B	=	0x00f0
                           0000C8   254 _T2CON	=	0x00c8
                           0000CA   255 _RCAP2L	=	0x00ca
                           0000CB   256 _RCAP2H	=	0x00cb
                           0000CC   257 _TL2	=	0x00cc
                           0000CD   258 _TH2	=	0x00cd
                           00008E   259 _AUXR	=	0x008e
                           0000A2   260 _AUXR1	=	0x00a2
                           000097   261 _CKRL	=	0x0097
                           00008F   262 _CKCON0	=	0x008f
                           0000AF   263 _CKCON1	=	0x00af
                           0000FA   264 _CCAP0H	=	0x00fa
                           0000FB   265 _CCAP1H	=	0x00fb
                           0000FC   266 _CCAP2H	=	0x00fc
                           0000FD   267 _CCAP3H	=	0x00fd
                           0000FE   268 _CCAP4H	=	0x00fe
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 _CCAP1L	=	0x00eb
                           0000EC   271 _CCAP2L	=	0x00ec
                           0000ED   272 _CCAP3L	=	0x00ed
                           0000EE   273 _CCAP4L	=	0x00ee
                           0000DA   274 _CCAPM0	=	0x00da
                           0000DB   275 _CCAPM1	=	0x00db
                           0000DC   276 _CCAPM2	=	0x00dc
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 _CCAPM4	=	0x00de
                           0000D8   279 _CCON	=	0x00d8
                           0000F9   280 _CH	=	0x00f9
                           0000E9   281 _CL	=	0x00e9
                           0000D9   282 _CMOD	=	0x00d9
                           0000A8   283 _IEN0	=	0x00a8
                           0000B1   284 _IEN1	=	0x00b1
                           0000B8   285 _IPL0	=	0x00b8
                           0000B7   286 _IPH0	=	0x00b7
                           0000B2   287 _IPL1	=	0x00b2
                           0000B3   288 _IPH1	=	0x00b3
                           0000C0   289 _P4	=	0x00c0
                           0000E8   290 _P5	=	0x00e8
                           0000A6   291 _WDTRST	=	0x00a6
                           0000A7   292 _WDTPRG	=	0x00a7
                           0000A9   293 _SADDR	=	0x00a9
                           0000B9   294 _SADEN	=	0x00b9
                           0000C3   295 _SPCON	=	0x00c3
                           0000C4   296 _SPSTA	=	0x00c4
                           0000C5   297 _SPDAT	=	0x00c5
                           0000C9   298 _T2MOD	=	0x00c9
                           00009B   299 _BDRCON	=	0x009b
                           00009A   300 _BRL	=	0x009a
                           00009C   301 _KBLS	=	0x009c
                           00009D   302 _KBE	=	0x009d
                           00009E   303 _KBF	=	0x009e
                           0000D2   304 _EECON	=	0x00d2
                                    305 ;--------------------------------------------------------
                                    306 ; special function bits
                                    307 ;--------------------------------------------------------
                                    308 	.area RSEG    (ABS,DATA)
      000000                        309 	.org 0x0000
                           000080   310 _P0_0	=	0x0080
                           000081   311 _P0_1	=	0x0081
                           000082   312 _P0_2	=	0x0082
                           000083   313 _P0_3	=	0x0083
                           000084   314 _P0_4	=	0x0084
                           000085   315 _P0_5	=	0x0085
                           000086   316 _P0_6	=	0x0086
                           000087   317 _P0_7	=	0x0087
                           000088   318 _IT0	=	0x0088
                           000089   319 _IE0	=	0x0089
                           00008A   320 _IT1	=	0x008a
                           00008B   321 _IE1	=	0x008b
                           00008C   322 _TR0	=	0x008c
                           00008D   323 _TF0	=	0x008d
                           00008E   324 _TR1	=	0x008e
                           00008F   325 _TF1	=	0x008f
                           000090   326 _P1_0	=	0x0090
                           000091   327 _P1_1	=	0x0091
                           000092   328 _P1_2	=	0x0092
                           000093   329 _P1_3	=	0x0093
                           000094   330 _P1_4	=	0x0094
                           000095   331 _P1_5	=	0x0095
                           000096   332 _P1_6	=	0x0096
                           000097   333 _P1_7	=	0x0097
                           000098   334 _RI	=	0x0098
                           000099   335 _TI	=	0x0099
                           00009A   336 _RB8	=	0x009a
                           00009B   337 _TB8	=	0x009b
                           00009C   338 _REN	=	0x009c
                           00009D   339 _SM2	=	0x009d
                           00009E   340 _SM1	=	0x009e
                           00009F   341 _SM0	=	0x009f
                           0000A0   342 _P2_0	=	0x00a0
                           0000A1   343 _P2_1	=	0x00a1
                           0000A2   344 _P2_2	=	0x00a2
                           0000A3   345 _P2_3	=	0x00a3
                           0000A4   346 _P2_4	=	0x00a4
                           0000A5   347 _P2_5	=	0x00a5
                           0000A6   348 _P2_6	=	0x00a6
                           0000A7   349 _P2_7	=	0x00a7
                           0000A8   350 _EX0	=	0x00a8
                           0000A9   351 _ET0	=	0x00a9
                           0000AA   352 _EX1	=	0x00aa
                           0000AB   353 _ET1	=	0x00ab
                           0000AC   354 _ES	=	0x00ac
                           0000AF   355 _EA	=	0x00af
                           0000B0   356 _P3_0	=	0x00b0
                           0000B1   357 _P3_1	=	0x00b1
                           0000B2   358 _P3_2	=	0x00b2
                           0000B3   359 _P3_3	=	0x00b3
                           0000B4   360 _P3_4	=	0x00b4
                           0000B5   361 _P3_5	=	0x00b5
                           0000B6   362 _P3_6	=	0x00b6
                           0000B7   363 _P3_7	=	0x00b7
                           0000B0   364 _RXD	=	0x00b0
                           0000B1   365 _TXD	=	0x00b1
                           0000B2   366 _INT0	=	0x00b2
                           0000B3   367 _INT1	=	0x00b3
                           0000B4   368 _T0	=	0x00b4
                           0000B5   369 _T1	=	0x00b5
                           0000B6   370 _WR	=	0x00b6
                           0000B7   371 _RD	=	0x00b7
                           0000B8   372 _PX0	=	0x00b8
                           0000B9   373 _PT0	=	0x00b9
                           0000BA   374 _PX1	=	0x00ba
                           0000BB   375 _PT1	=	0x00bb
                           0000BC   376 _PS	=	0x00bc
                           0000D0   377 _P	=	0x00d0
                           0000D1   378 _F1	=	0x00d1
                           0000D2   379 _OV	=	0x00d2
                           0000D3   380 _RS0	=	0x00d3
                           0000D4   381 _RS1	=	0x00d4
                           0000D5   382 _F0	=	0x00d5
                           0000D6   383 _AC	=	0x00d6
                           0000D7   384 _CY	=	0x00d7
                           0000AD   385 _ET2	=	0x00ad
                           0000BD   386 _PT2	=	0x00bd
                           0000C8   387 _T2CON_0	=	0x00c8
                           0000C9   388 _T2CON_1	=	0x00c9
                           0000CA   389 _T2CON_2	=	0x00ca
                           0000CB   390 _T2CON_3	=	0x00cb
                           0000CC   391 _T2CON_4	=	0x00cc
                           0000CD   392 _T2CON_5	=	0x00cd
                           0000CE   393 _T2CON_6	=	0x00ce
                           0000CF   394 _T2CON_7	=	0x00cf
                           0000C8   395 _CP_RL2	=	0x00c8
                           0000C9   396 _C_T2	=	0x00c9
                           0000CA   397 _TR2	=	0x00ca
                           0000CB   398 _EXEN2	=	0x00cb
                           0000CC   399 _TCLK	=	0x00cc
                           0000CD   400 _RCLK	=	0x00cd
                           0000CE   401 _EXF2	=	0x00ce
                           0000CF   402 _TF2	=	0x00cf
                           0000DF   403 _CF	=	0x00df
                           0000DE   404 _CR	=	0x00de
                           0000DC   405 _CCF4	=	0x00dc
                           0000DB   406 _CCF3	=	0x00db
                           0000DA   407 _CCF2	=	0x00da
                           0000D9   408 _CCF1	=	0x00d9
                           0000D8   409 _CCF0	=	0x00d8
                           0000AE   410 _EC	=	0x00ae
                           0000BE   411 _PPCL	=	0x00be
                           0000BD   412 _PT2L	=	0x00bd
                           0000BC   413 _PSL	=	0x00bc
                           0000BB   414 _PT1L	=	0x00bb
                           0000BA   415 _PX1L	=	0x00ba
                           0000B9   416 _PT0L	=	0x00b9
                           0000B8   417 _PX0L	=	0x00b8
                           0000C0   418 _P4_0	=	0x00c0
                           0000C1   419 _P4_1	=	0x00c1
                           0000C2   420 _P4_2	=	0x00c2
                           0000C3   421 _P4_3	=	0x00c3
                           0000C4   422 _P4_4	=	0x00c4
                           0000C5   423 _P4_5	=	0x00c5
                           0000C6   424 _P4_6	=	0x00c6
                           0000C7   425 _P4_7	=	0x00c7
                           0000E8   426 _P5_0	=	0x00e8
                           0000E9   427 _P5_1	=	0x00e9
                           0000EA   428 _P5_2	=	0x00ea
                           0000EB   429 _P5_3	=	0x00eb
                           0000EC   430 _P5_4	=	0x00ec
                           0000ED   431 _P5_5	=	0x00ed
                           0000EE   432 _P5_6	=	0x00ee
                           0000EF   433 _P5_7	=	0x00ef
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable register banks
                                    436 ;--------------------------------------------------------
                                    437 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        438 	.ds 8
                                    439 ;--------------------------------------------------------
                                    440 ; internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area DSEG    (DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable items in internal ram 
                                    445 ;--------------------------------------------------------
                                    446 ;--------------------------------------------------------
                                    447 ; Stack segment in internal ram 
                                    448 ;--------------------------------------------------------
                                    449 	.area	SSEG
      000014                        450 __start__stack:
      000014                        451 	.ds	1
                                    452 
                                    453 ;--------------------------------------------------------
                                    454 ; indirectly addressable internal ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area ISEG    (DATA)
                                    457 ;--------------------------------------------------------
                                    458 ; absolute internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area IABS    (ABS,DATA)
                                    461 	.area IABS    (ABS,DATA)
                                    462 ;--------------------------------------------------------
                                    463 ; bit data
                                    464 ;--------------------------------------------------------
                                    465 	.area BSEG    (BIT)
                                    466 ;--------------------------------------------------------
                                    467 ; paged external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area PSEG    (PAG,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XSEG    (XDATA)
      000400                        474 _putchar_charToSend_65536_17:
      000400                        475 	.ds 2
      000402                        476 _delay_ms_ms_65536_21:
      000402                        477 	.ds 2
      000404                        478 _bit_bang_spi_number_65536_47:
      000404                        479 	.ds 1
      000405                        480 _take_data_input_65537_51:
      000405                        481 	.ds 4
      000409                        482 _take_data_data_65538_55:
      000409                        483 	.ds 1
      00040A                        484 _mannual_spi_number_65536_58:
      00040A                        485 	.ds 1
      00040B                        486 _mannual_spi_dac_value_index_65536_59:
      00040B                        487 	.ds 2
      00040D                        488 _mannual_spi_dac_data_65536_59:
      00040D                        489 	.ds 2
      00040F                        490 _bit_bang_spi_write_data_65536_69:
      00040F                        491 	.ds 2
      000411                        492 _spi_triangular_wave_number_65536_75:
      000411                        493 	.ds 2
      000413                        494 _spi_triangular_wave_dac_value_index_65536_76:
      000413                        495 	.ds 2
      000415                        496 _spi_triangular_wave_dac_data_65536_76:
      000415                        497 	.ds 2
      000417                        498 _spi_ramp_signal_number_65536_82:
      000417                        499 	.ds 2
      000419                        500 _spi_ramp_signal_dac_value_index_65536_83:
      000419                        501 	.ds 2
      00041B                        502 _spi_ramp_signal_dac_data_65536_83:
      00041B                        503 	.ds 2
                                    504 ;--------------------------------------------------------
                                    505 ; absolute external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XABS    (ABS,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external initialized ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XISEG   (XDATA)
      000456                        512 _ms_flag::
      000456                        513 	.ds 1
      000457                        514 _transmission_complete::
      000457                        515 	.ds 2
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; interrupt vector 
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
      002000                        530 __interrupt_vect:
      002000 02 20 06         [24]  531 	ljmp	__sdcc_gsinit_startup
                                    532 ;--------------------------------------------------------
                                    533 ; global & static initialisations
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.globl __sdcc_gsinit_startup
                                    540 	.globl __sdcc_program_startup
                                    541 	.globl __start__stack
                                    542 	.globl __mcs51_genXINIT
                                    543 	.globl __mcs51_genXRAMCLEAR
                                    544 	.globl __mcs51_genRAMCLEAR
                                    545 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  546 	ljmp	__sdcc_program_startup
                                    547 ;--------------------------------------------------------
                                    548 ; Home
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area HOME    (CODE)
      002003                        552 __sdcc_program_startup:
      002003 02 21 C3         [24]  553 	ljmp	_main
                                    554 ;	return from main will return to caller
                                    555 ;--------------------------------------------------------
                                    556 ; code
                                    557 ;--------------------------------------------------------
                                    558 	.area CSEG    (CODE)
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'putchar'
                                    561 ;------------------------------------------------------------
                                    562 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    563 ;------------------------------------------------------------
                                    564 ;	spi_and_bit_banging.c:208: int putchar(int charToSend) {
                                    565 ;	-----------------------------------------
                                    566 ;	 function putchar
                                    567 ;	-----------------------------------------
      002062                        568 _putchar:
                           000007   569 	ar7 = 0x07
                           000006   570 	ar6 = 0x06
                           000005   571 	ar5 = 0x05
                           000004   572 	ar4 = 0x04
                           000003   573 	ar3 = 0x03
                           000002   574 	ar2 = 0x02
                           000001   575 	ar1 = 0x01
                           000000   576 	ar0 = 0x00
      002062 AF 83            [24]  577 	mov	r7,dph
      002064 E5 82            [12]  578 	mov	a,dpl
      002066 90 04 00         [24]  579 	mov	dptr,#_putchar_charToSend_65536_17
      002069 F0               [24]  580 	movx	@dptr,a
      00206A EF               [12]  581 	mov	a,r7
      00206B A3               [24]  582 	inc	dptr
      00206C F0               [24]  583 	movx	@dptr,a
                                    584 ;	spi_and_bit_banging.c:209: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  585 	mov	dptr,#_putchar_charToSend_65536_17
      002070 E0               [24]  586 	movx	a,@dptr
      002071 FE               [12]  587 	mov	r6,a
      002072 A3               [24]  588 	inc	dptr
      002073 E0               [24]  589 	movx	a,@dptr
      002074 FF               [12]  590 	mov	r7,a
      002075 8E 99            [24]  591 	mov	_SBUF,r6
                                    592 ;	spi_and_bit_banging.c:210: while (!TI);             /* Wait for transmission completion */
      002077                        593 00101$:
                                    594 ;	spi_and_bit_banging.c:211: TI = 0;                  /* Clear transmission flag */
                                    595 ;	assignBit
      002077 10 99 02         [24]  596 	jbc	_TI,00114$
      00207A 80 FB            [24]  597 	sjmp	00101$
      00207C                        598 00114$:
                                    599 ;	spi_and_bit_banging.c:212: return charToSend;
      00207C 8E 82            [24]  600 	mov	dpl,r6
      00207E 8F 83            [24]  601 	mov	dph,r7
                                    602 ;	spi_and_bit_banging.c:213: }
      002080 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'getchar'
                                    606 ;------------------------------------------------------------
                                    607 ;	spi_and_bit_banging.c:219: int getchar(void) {
                                    608 ;	-----------------------------------------
                                    609 ;	 function getchar
                                    610 ;	-----------------------------------------
      002081                        611 _getchar:
                                    612 ;	spi_and_bit_banging.c:220: while (!RI);             /* Wait for reception completion */
      002081                        613 00101$:
                                    614 ;	spi_and_bit_banging.c:221: RI = 0;                  /* Clear reception flag */
                                    615 ;	assignBit
      002081 10 98 02         [24]  616 	jbc	_RI,00114$
      002084 80 FB            [24]  617 	sjmp	00101$
      002086                        618 00114$:
                                    619 ;	spi_and_bit_banging.c:222: return SBUF;             /* Return received character */
      002086 AE 99            [24]  620 	mov	r6,_SBUF
      002088 7F 00            [12]  621 	mov	r7,#0x00
      00208A 8E 82            [24]  622 	mov	dpl,r6
      00208C 8F 83            [24]  623 	mov	dph,r7
                                    624 ;	spi_and_bit_banging.c:223: }
      00208E 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'delay_ms'
                                    628 ;------------------------------------------------------------
                                    629 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    630 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    631 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    632 ;------------------------------------------------------------
                                    633 ;	spi_and_bit_banging.c:225: void delay_ms(unsigned int ms) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function delay_ms
                                    636 ;	-----------------------------------------
      00208F                        637 _delay_ms:
      00208F AF 83            [24]  638 	mov	r7,dph
      002091 E5 82            [12]  639 	mov	a,dpl
      002093 90 04 02         [24]  640 	mov	dptr,#_delay_ms_ms_65536_21
      002096 F0               [24]  641 	movx	@dptr,a
      002097 EF               [12]  642 	mov	a,r7
      002098 A3               [24]  643 	inc	dptr
      002099 F0               [24]  644 	movx	@dptr,a
                                    645 ;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  646 	mov	dptr,#_delay_ms_ms_65536_21
      00209D E0               [24]  647 	movx	a,@dptr
      00209E FE               [12]  648 	mov	r6,a
      00209F A3               [24]  649 	inc	dptr
      0020A0 E0               [24]  650 	movx	a,@dptr
      0020A1 FF               [12]  651 	mov	r7,a
      0020A2 7C 00            [12]  652 	mov	r4,#0x00
      0020A4 7D 00            [12]  653 	mov	r5,#0x00
      0020A6                        654 00107$:
      0020A6 C3               [12]  655 	clr	c
      0020A7 EC               [12]  656 	mov	a,r4
      0020A8 9E               [12]  657 	subb	a,r6
      0020A9 ED               [12]  658 	mov	a,r5
      0020AA 9F               [12]  659 	subb	a,r7
      0020AB 50 14            [24]  660 	jnc	00109$
                                    661 ;	spi_and_bit_banging.c:228: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  662 	mov	r2,#0x7b
      0020AF 7B 00            [12]  663 	mov	r3,#0x00
      0020B1                        664 00105$:
      0020B1 1A               [12]  665 	dec	r2
      0020B2 BA FF 01         [24]  666 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  667 	dec	r3
      0020B6                        668 00130$:
      0020B6 EA               [12]  669 	mov	a,r2
      0020B7 4B               [12]  670 	orl	a,r3
      0020B8 70 F7            [24]  671 	jnz	00105$
                                    672 ;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  673 	inc	r4
      0020BB BC 00 E8         [24]  674 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  675 	inc	r5
      0020BF 80 E5            [24]  676 	sjmp	00107$
      0020C1                        677 00109$:
                                    678 ;	spi_and_bit_banging.c:229: }
      0020C1 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'display_menu'
                                    682 ;------------------------------------------------------------
                                    683 ;	spi_and_bit_banging.c:238: void display_menu(void) {
                                    684 ;	-----------------------------------------
                                    685 ;	 function display_menu
                                    686 ;	-----------------------------------------
      0020C2                        687 _display_menu:
                                    688 ;	spi_and_bit_banging.c:239: printf(" ───────────┴───────────────────────────────────────────────\n\r");
      0020C2 74 0E            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 38            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 AC         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                        │\n\r");
      0020D7 74 C3            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 AC         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├───────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 07            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 AC         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                    │\n\r");
      002101 74 C1            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 AC         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────────────────────────────────────────────────────┤\n\r");
      002116 74 07            [12]  733 	mov	a,#___str_2
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 39            [12]  735 	mov	a,#(___str_2 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 AC         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)     │\n\r");
      00212B 74 07            [12]  744 	mov	a,#___str_4
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_4 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 AC         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002140 74 4D            [12]  755 	mov	a,#___str_5
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3A            [12]  757 	mov	a,#(___str_5 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 AC         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      002155 74 93            [12]  766 	mov	a,#___str_6
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3A            [12]  768 	mov	a,#(___str_6 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 AC         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    R      │ Ramp wave                                     │\n\r");
      00216A 74 D9            [12]  777 	mov	a,#___str_7
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3A            [12]  779 	mov	a,#(___str_7 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 AC         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    ?      │ Display this help menu                        │\n\r");
      00217F 74 1F            [12]  788 	mov	a,#___str_8
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_8 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 AC         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002194 74 65            [12]  799 	mov	a,#___str_9
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3B            [12]  801 	mov	a,#(___str_9 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 AC         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("\n\r>> Enter command: ");
      0021A9 74 1F            [12]  810 	mov	a,#___str_10
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_10 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 AC         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: }
      0021BE 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    824 ;------------------------------------------------------------
                                    825 ;	spi_and_bit_banging.c:254: void spi_transmission_stop(void) 
                                    826 ;	-----------------------------------------
                                    827 ;	 function spi_transmission_stop
                                    828 ;	-----------------------------------------
      0021BF                        829 _spi_transmission_stop:
                                    830 ;	spi_and_bit_banging.c:256: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0021BF 53 C3 BF         [24]  831 	anl	_SPCON,#0xbf
                                    832 ;	spi_and_bit_banging.c:257: }
      0021C2 22               [24]  833 	ret
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'main'
                                    836 ;------------------------------------------------------------
                                    837 ;user_input                Allocated with name '_main_user_input_131072_37'
                                    838 ;result                    Allocated with name '_main_result_262145_40'
                                    839 ;result3                   Allocated with name '_main_result3_262145_42'
                                    840 ;result4                   Allocated with name '_main_result4_262145_44'
                                    841 ;result5                   Allocated with name '_main_result5_262144_45'
                                    842 ;------------------------------------------------------------
                                    843 ;	spi_and_bit_banging.c:258: int main(void)
                                    844 ;	-----------------------------------------
                                    845 ;	 function main
                                    846 ;	-----------------------------------------
      0021C3                        847 _main:
                                    848 ;	spi_and_bit_banging.c:260: display_menu();
      0021C3 12 20 C2         [24]  849 	lcall	_display_menu
                                    850 ;	spi_and_bit_banging.c:262: while(1)
      0021C6                        851 00109$:
                                    852 ;	spi_and_bit_banging.c:264: char user_input = getchar();
      0021C6 12 20 81         [24]  853 	lcall	_getchar
      0021C9 AE 82            [24]  854 	mov	r6,dpl
                                    855 ;	spi_and_bit_banging.c:265: printf("| $ %c\n\r", user_input);
      0021CB 8E 05            [24]  856 	mov	ar5,r6
      0021CD 7F 00            [12]  857 	mov	r7,#0x00
      0021CF C0 06            [24]  858 	push	ar6
      0021D1 C0 05            [24]  859 	push	ar5
      0021D3 C0 07            [24]  860 	push	ar7
      0021D5 74 34            [12]  861 	mov	a,#___str_11
      0021D7 C0 E0            [24]  862 	push	acc
      0021D9 74 3C            [12]  863 	mov	a,#(___str_11 >> 8)
      0021DB C0 E0            [24]  864 	push	acc
      0021DD 74 80            [12]  865 	mov	a,#0x80
      0021DF C0 E0            [24]  866 	push	acc
      0021E1 12 27 AC         [24]  867 	lcall	_printf
      0021E4 E5 81            [12]  868 	mov	a,sp
      0021E6 24 FB            [12]  869 	add	a,#0xfb
      0021E8 F5 81            [12]  870 	mov	sp,a
                                    871 ;	spi_and_bit_banging.c:266: printf("\n\r");
      0021EA 74 3D            [12]  872 	mov	a,#___str_12
      0021EC C0 E0            [24]  873 	push	acc
      0021EE 74 3C            [12]  874 	mov	a,#(___str_12 >> 8)
      0021F0 C0 E0            [24]  875 	push	acc
      0021F2 74 80            [12]  876 	mov	a,#0x80
      0021F4 C0 E0            [24]  877 	push	acc
      0021F6 12 27 AC         [24]  878 	lcall	_printf
      0021F9 15 81            [12]  879 	dec	sp
      0021FB 15 81            [12]  880 	dec	sp
      0021FD 15 81            [12]  881 	dec	sp
      0021FF D0 06            [24]  882 	pop	ar6
                                    883 ;	spi_and_bit_banging.c:267: switch(user_input)
      002201 BE 3F 03         [24]  884 	cjne	r6,#0x3f,00137$
      002204 02 22 A6         [24]  885 	ljmp	00105$
      002207                        886 00137$:
      002207 BE 4D 02         [24]  887 	cjne	r6,#0x4d,00138$
      00220A 80 12            [24]  888 	sjmp	00101$
      00220C                        889 00138$:
      00220C BE 52 02         [24]  890 	cjne	r6,#0x52,00139$
      00220F 80 73            [24]  891 	sjmp	00104$
      002211                        892 00139$:
      002211 BE 53 02         [24]  893 	cjne	r6,#0x53,00140$
      002214 80 28            [24]  894 	sjmp	00102$
      002216                        895 00140$:
      002216 BE 54 02         [24]  896 	cjne	r6,#0x54,00141$
      002219 80 44            [24]  897 	sjmp	00103$
      00221B                        898 00141$:
      00221B 02 22 AC         [24]  899 	ljmp	00106$
                                    900 ;	spi_and_bit_banging.c:269: case 'M':
      00221E                        901 00101$:
                                    902 ;	spi_and_bit_banging.c:271: spi_init();
      00221E 12 25 3E         [24]  903 	lcall	_spi_init
                                    904 ;	spi_and_bit_banging.c:272: unsigned char result = take_data();
      002221 12 23 0F         [24]  905 	lcall	_take_data
                                    906 ;	spi_and_bit_banging.c:273: mannual_spi(result);
      002224 12 24 63         [24]  907 	lcall	_mannual_spi
                                    908 ;	spi_and_bit_banging.c:274: printf(">> SINE WAVE GENERATION COMPLETE\n\r");
      002227 74 40            [12]  909 	mov	a,#___str_13
      002229 C0 E0            [24]  910 	push	acc
      00222B 74 3C            [12]  911 	mov	a,#(___str_13 >> 8)
      00222D C0 E0            [24]  912 	push	acc
      00222F 74 80            [12]  913 	mov	a,#0x80
      002231 C0 E0            [24]  914 	push	acc
      002233 12 27 AC         [24]  915 	lcall	_printf
      002236 15 81            [12]  916 	dec	sp
      002238 15 81            [12]  917 	dec	sp
      00223A 15 81            [12]  918 	dec	sp
                                    919 ;	spi_and_bit_banging.c:276: break;
                                    920 ;	spi_and_bit_banging.c:281: case 'S':
      00223C 80 88            [24]  921 	sjmp	00109$
      00223E                        922 00102$:
                                    923 ;	spi_and_bit_banging.c:283: spi_init();
      00223E 12 25 3E         [24]  924 	lcall	_spi_init
                                    925 ;	spi_and_bit_banging.c:284: unsigned char result3 = take_data();
      002241 12 23 0F         [24]  926 	lcall	_take_data
                                    927 ;	spi_and_bit_banging.c:285: mannual_spi(result3);
      002244 12 24 63         [24]  928 	lcall	_mannual_spi
                                    929 ;	spi_and_bit_banging.c:286: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      002247 74 63            [12]  930 	mov	a,#___str_14
      002249 C0 E0            [24]  931 	push	acc
      00224B 74 3C            [12]  932 	mov	a,#(___str_14 >> 8)
      00224D C0 E0            [24]  933 	push	acc
      00224F 74 80            [12]  934 	mov	a,#0x80
      002251 C0 E0            [24]  935 	push	acc
      002253 12 27 AC         [24]  936 	lcall	_printf
      002256 15 81            [12]  937 	dec	sp
      002258 15 81            [12]  938 	dec	sp
      00225A 15 81            [12]  939 	dec	sp
                                    940 ;	spi_and_bit_banging.c:287: break;
      00225C 02 21 C6         [24]  941 	ljmp	00109$
                                    942 ;	spi_and_bit_banging.c:291: case 'T':
      00225F                        943 00103$:
                                    944 ;	spi_and_bit_banging.c:293: spi_init();
      00225F 12 25 3E         [24]  945 	lcall	_spi_init
                                    946 ;	spi_and_bit_banging.c:294: unsigned char result4 = take_data();
      002262 12 23 0F         [24]  947 	lcall	_take_data
                                    948 ;	spi_and_bit_banging.c:295: spi_triangular_wave(result4);
      002265 7E 00            [12]  949 	mov	r6,#0x00
      002267 8E 83            [24]  950 	mov	dph,r6
      002269 12 25 A2         [24]  951 	lcall	_spi_triangular_wave
                                    952 ;	spi_and_bit_banging.c:296: printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
      00226C 74 85            [12]  953 	mov	a,#___str_15
      00226E C0 E0            [24]  954 	push	acc
      002270 74 3C            [12]  955 	mov	a,#(___str_15 >> 8)
      002272 C0 E0            [24]  956 	push	acc
      002274 74 80            [12]  957 	mov	a,#0x80
      002276 C0 E0            [24]  958 	push	acc
      002278 12 27 AC         [24]  959 	lcall	_printf
      00227B 15 81            [12]  960 	dec	sp
      00227D 15 81            [12]  961 	dec	sp
      00227F 15 81            [12]  962 	dec	sp
                                    963 ;	spi_and_bit_banging.c:297: break;
      002281 02 21 C6         [24]  964 	ljmp	00109$
                                    965 ;	spi_and_bit_banging.c:300: case 'R':
      002284                        966 00104$:
                                    967 ;	spi_and_bit_banging.c:302: unsigned char result5 = take_data();
      002284 12 23 0F         [24]  968 	lcall	_take_data
                                    969 ;	spi_and_bit_banging.c:303: spi_ramp_signal(result5);
      002287 7E 00            [12]  970 	mov	r6,#0x00
      002289 8E 83            [24]  971 	mov	dph,r6
      00228B 12 26 80         [24]  972 	lcall	_spi_ramp_signal
                                    973 ;	spi_and_bit_banging.c:304: printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
      00228E 74 AE            [12]  974 	mov	a,#___str_16
      002290 C0 E0            [24]  975 	push	acc
      002292 74 3C            [12]  976 	mov	a,#(___str_16 >> 8)
      002294 C0 E0            [24]  977 	push	acc
      002296 74 80            [12]  978 	mov	a,#0x80
      002298 C0 E0            [24]  979 	push	acc
      00229A 12 27 AC         [24]  980 	lcall	_printf
      00229D 15 81            [12]  981 	dec	sp
      00229F 15 81            [12]  982 	dec	sp
      0022A1 15 81            [12]  983 	dec	sp
                                    984 ;	spi_and_bit_banging.c:305: break;
      0022A3 02 21 C6         [24]  985 	ljmp	00109$
                                    986 ;	spi_and_bit_banging.c:308: case '?':
      0022A6                        987 00105$:
                                    988 ;	spi_and_bit_banging.c:309: display_menu();
      0022A6 12 20 C2         [24]  989 	lcall	_display_menu
                                    990 ;	spi_and_bit_banging.c:310: break;  
      0022A9 02 21 C6         [24]  991 	ljmp	00109$
                                    992 ;	spi_and_bit_banging.c:312: default:
      0022AC                        993 00106$:
                                    994 ;	spi_and_bit_banging.c:313: printf(">> INVALID INPUT\n\r");
      0022AC 74 D1            [12]  995 	mov	a,#___str_17
      0022AE C0 E0            [24]  996 	push	acc
      0022B0 74 3C            [12]  997 	mov	a,#(___str_17 >> 8)
      0022B2 C0 E0            [24]  998 	push	acc
      0022B4 74 80            [12]  999 	mov	a,#0x80
      0022B6 C0 E0            [24] 1000 	push	acc
      0022B8 12 27 AC         [24] 1001 	lcall	_printf
      0022BB 15 81            [12] 1002 	dec	sp
      0022BD 15 81            [12] 1003 	dec	sp
      0022BF 15 81            [12] 1004 	dec	sp
                                   1005 ;	spi_and_bit_banging.c:318: }
                                   1006 ;	spi_and_bit_banging.c:320: }
      0022C1 02 21 C6         [24] 1007 	ljmp	00109$
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'demo_mode'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	spi_and_bit_banging.c:326: void demo_mode()
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function demo_mode
                                   1014 ;	-----------------------------------------
      0022C4                       1015 _demo_mode:
                                   1016 ;	spi_and_bit_banging.c:328: mannual_spi(7);
      0022C4 75 82 07         [24] 1017 	mov	dpl,#0x07
      0022C7 12 24 63         [24] 1018 	lcall	_mannual_spi
                                   1019 ;	spi_and_bit_banging.c:329: bit_bang_spi(7);
      0022CA 75 82 07         [24] 1020 	mov	dpl,#0x07
      0022CD 12 22 DC         [24] 1021 	lcall	_bit_bang_spi
                                   1022 ;	spi_and_bit_banging.c:330: spi_ramp_signal(7);
      0022D0 90 00 07         [24] 1023 	mov	dptr,#0x0007
      0022D3 12 26 80         [24] 1024 	lcall	_spi_ramp_signal
                                   1025 ;	spi_and_bit_banging.c:331: spi_triangular_wave(7);
      0022D6 90 00 07         [24] 1026 	mov	dptr,#0x0007
                                   1027 ;	spi_and_bit_banging.c:332: }
      0022D9 02 25 A2         [24] 1028 	ljmp	_spi_triangular_wave
                                   1029 ;------------------------------------------------------------
                                   1030 ;Allocation info for local variables in function 'bit_bang_spi'
                                   1031 ;------------------------------------------------------------
                                   1032 ;number                    Allocated with name '_bit_bang_spi_number_65536_47'
                                   1033 ;------------------------------------------------------------
                                   1034 ;	spi_and_bit_banging.c:336: void bit_bang_spi(unsigned char number)
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function bit_bang_spi
                                   1037 ;	-----------------------------------------
      0022DC                       1038 _bit_bang_spi:
      0022DC E5 82            [12] 1039 	mov	a,dpl
      0022DE 90 04 04         [24] 1040 	mov	dptr,#_bit_bang_spi_number_65536_47
      0022E1 F0               [24] 1041 	movx	@dptr,a
                                   1042 ;	spi_and_bit_banging.c:338: while(number > 0)
      0022E2                       1043 00101$:
      0022E2 90 04 04         [24] 1044 	mov	dptr,#_bit_bang_spi_number_65536_47
      0022E5 E0               [24] 1045 	movx	a,@dptr
      0022E6 FF               [12] 1046 	mov	r7,a
      0022E7 E0               [24] 1047 	movx	a,@dptr
      0022E8 60 24            [24] 1048 	jz	00104$
                                   1049 ;	spi_and_bit_banging.c:340: bit_bang_spi_write(TEST_DATA);
      0022EA 90 1F F0         [24] 1050 	mov	dptr,#0x1ff0
      0022ED C0 07            [24] 1051 	push	ar7
      0022EF 12 25 52         [24] 1052 	lcall	_bit_bang_spi_write
                                   1053 ;	spi_and_bit_banging.c:341: delay_ms(DELAY_PERIOD);
      0022F2 90 01 F4         [24] 1054 	mov	dptr,#0x01f4
      0022F5 12 20 8F         [24] 1055 	lcall	_delay_ms
                                   1056 ;	spi_and_bit_banging.c:342: bit_bang_spi_write(IDLE_DATA);
      0022F8 90 10 00         [24] 1057 	mov	dptr,#0x1000
      0022FB 12 25 52         [24] 1058 	lcall	_bit_bang_spi_write
                                   1059 ;	spi_and_bit_banging.c:343: delay_ms(DELAY_PERIOD);
      0022FE 90 01 F4         [24] 1060 	mov	dptr,#0x01f4
      002301 12 20 8F         [24] 1061 	lcall	_delay_ms
      002304 D0 07            [24] 1062 	pop	ar7
                                   1063 ;	spi_and_bit_banging.c:344: number = number - 1;
      002306 EF               [12] 1064 	mov	a,r7
      002307 14               [12] 1065 	dec	a
      002308 90 04 04         [24] 1066 	mov	dptr,#_bit_bang_spi_number_65536_47
      00230B F0               [24] 1067 	movx	@dptr,a
      00230C 80 D4            [24] 1068 	sjmp	00101$
      00230E                       1069 00104$:
                                   1070 ;	spi_and_bit_banging.c:346: }
      00230E 22               [24] 1071 	ret
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'take_data'
                                   1074 ;------------------------------------------------------------
                                   1075 ;input                     Allocated with name '_take_data_input_65537_51'
                                   1076 ;i                         Allocated with name '_take_data_i_65537_51'
                                   1077 ;c                         Allocated with name '_take_data_c_65537_51'
                                   1078 ;data                      Allocated with name '_take_data_data_65538_55'
                                   1079 ;------------------------------------------------------------
                                   1080 ;	spi_and_bit_banging.c:347: unsigned char take_data()
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function take_data
                                   1083 ;	-----------------------------------------
      00230F                       1084 _take_data:
                                   1085 ;	spi_and_bit_banging.c:349: printf("│ Enter number (up to 2 characters): \n\r|");
      00230F 74 E4            [12] 1086 	mov	a,#___str_18
      002311 C0 E0            [24] 1087 	push	acc
      002313 74 3C            [12] 1088 	mov	a,#(___str_18 >> 8)
      002315 C0 E0            [24] 1089 	push	acc
      002317 74 80            [12] 1090 	mov	a,#0x80
      002319 C0 E0            [24] 1091 	push	acc
      00231B 12 27 AC         [24] 1092 	lcall	_printf
      00231E 15 81            [12] 1093 	dec	sp
      002320 15 81            [12] 1094 	dec	sp
      002322 15 81            [12] 1095 	dec	sp
                                   1096 ;	spi_and_bit_banging.c:350: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002324 90 04 05         [24] 1097 	mov	dptr,#_take_data_input_65537_51
      002327 E4               [12] 1098 	clr	a
      002328 F0               [24] 1099 	movx	@dptr,a
      002329 90 04 06         [24] 1100 	mov	dptr,#(_take_data_input_65537_51 + 0x0001)
      00232C F0               [24] 1101 	movx	@dptr,a
      00232D 90 04 07         [24] 1102 	mov	dptr,#(_take_data_input_65537_51 + 0x0002)
      002330 F0               [24] 1103 	movx	@dptr,a
      002331 90 04 08         [24] 1104 	mov	dptr,#(_take_data_input_65537_51 + 0x0003)
      002334 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	spi_and_bit_banging.c:354: printf("$ ");
      002335 74 0F            [12] 1107 	mov	a,#___str_19
      002337 C0 E0            [24] 1108 	push	acc
      002339 74 3D            [12] 1109 	mov	a,#(___str_19 >> 8)
      00233B C0 E0            [24] 1110 	push	acc
      00233D 74 80            [12] 1111 	mov	a,#0x80
      00233F C0 E0            [24] 1112 	push	acc
      002341 12 27 AC         [24] 1113 	lcall	_printf
      002344 15 81            [12] 1114 	dec	sp
      002346 15 81            [12] 1115 	dec	sp
      002348 15 81            [12] 1116 	dec	sp
                                   1117 ;	spi_and_bit_banging.c:356: while (i < 3) {
      00234A 7E 00            [12] 1118 	mov	r6,#0x00
      00234C 7F 00            [12] 1119 	mov	r7,#0x00
      00234E                       1120 00111$:
      00234E C3               [12] 1121 	clr	c
      00234F EE               [12] 1122 	mov	a,r6
      002350 94 03            [12] 1123 	subb	a,#0x03
      002352 EF               [12] 1124 	mov	a,r7
      002353 64 80            [12] 1125 	xrl	a,#0x80
      002355 94 80            [12] 1126 	subb	a,#0x80
      002357 50 5B            [24] 1127 	jnc	00113$
                                   1128 ;	spi_and_bit_banging.c:358: c = getchar();
      002359 C0 07            [24] 1129 	push	ar7
      00235B C0 06            [24] 1130 	push	ar6
      00235D 12 20 81         [24] 1131 	lcall	_getchar
      002360 AC 82            [24] 1132 	mov	r4,dpl
      002362 AD 83            [24] 1133 	mov	r5,dph
      002364 D0 06            [24] 1134 	pop	ar6
      002366 D0 07            [24] 1135 	pop	ar7
                                   1136 ;	spi_and_bit_banging.c:361: if (c == '\r' || c == '\n') {
      002368 BC 0D 02         [24] 1137 	cjne	r4,#0x0d,00194$
      00236B 80 47            [24] 1138 	sjmp	00113$
      00236D                       1139 00194$:
      00236D BC 0A 02         [24] 1140 	cjne	r4,#0x0a,00195$
      002370 80 42            [24] 1141 	sjmp	00113$
      002372                       1142 00195$:
                                   1143 ;	spi_and_bit_banging.c:366: if ((c >= '0' && c <= '9') ||
      002372 BC 30 00         [24] 1144 	cjne	r4,#0x30,00196$
      002375                       1145 00196$:
      002375 40 05            [24] 1146 	jc	00108$
      002377 EC               [12] 1147 	mov	a,r4
      002378 24 C6            [12] 1148 	add	a,#0xff - 0x39
      00237A 50 14            [24] 1149 	jnc	00104$
      00237C                       1150 00108$:
                                   1151 ;	spi_and_bit_banging.c:367: (c >= 'a' && c <= 'f') ||
      00237C BC 61 00         [24] 1152 	cjne	r4,#0x61,00199$
      00237F                       1153 00199$:
      00237F 40 05            [24] 1154 	jc	00110$
      002381 EC               [12] 1155 	mov	a,r4
      002382 24 99            [12] 1156 	add	a,#0xff - 0x66
      002384 50 0A            [24] 1157 	jnc	00104$
      002386                       1158 00110$:
                                   1159 ;	spi_and_bit_banging.c:368: (c >= 'A' && c <= 'F')) {
      002386 BC 41 00         [24] 1160 	cjne	r4,#0x41,00202$
      002389                       1161 00202$:
      002389 40 C3            [24] 1162 	jc	00111$
      00238B EC               [12] 1163 	mov	a,r4
      00238C 24 B9            [12] 1164 	add	a,#0xff - 0x46
      00238E 40 BE            [24] 1165 	jc	00111$
      002390                       1166 00104$:
                                   1167 ;	spi_and_bit_banging.c:370: input[i] = c;
      002390 EE               [12] 1168 	mov	a,r6
      002391 24 05            [12] 1169 	add	a,#_take_data_input_65537_51
      002393 F5 82            [12] 1170 	mov	dpl,a
      002395 EF               [12] 1171 	mov	a,r7
      002396 34 04            [12] 1172 	addc	a,#(_take_data_input_65537_51 >> 8)
      002398 F5 83            [12] 1173 	mov	dph,a
      00239A EC               [12] 1174 	mov	a,r4
      00239B F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	spi_and_bit_banging.c:371: putchar(c);  // Echo character back
      00239C 7D 00            [12] 1177 	mov	r5,#0x00
      00239E 8C 82            [24] 1178 	mov	dpl,r4
      0023A0 8D 83            [24] 1179 	mov	dph,r5
      0023A2 C0 07            [24] 1180 	push	ar7
      0023A4 C0 06            [24] 1181 	push	ar6
      0023A6 12 20 62         [24] 1182 	lcall	_putchar
      0023A9 D0 06            [24] 1183 	pop	ar6
      0023AB D0 07            [24] 1184 	pop	ar7
                                   1185 ;	spi_and_bit_banging.c:372: i++;
      0023AD 0E               [12] 1186 	inc	r6
      0023AE BE 00 9D         [24] 1187 	cjne	r6,#0x00,00111$
      0023B1 0F               [12] 1188 	inc	r7
      0023B2 80 9A            [24] 1189 	sjmp	00111$
      0023B4                       1190 00113$:
                                   1191 ;	spi_and_bit_banging.c:376: input[i] = '\0';  // Null-terminate the string
      0023B4 EE               [12] 1192 	mov	a,r6
      0023B5 24 05            [12] 1193 	add	a,#_take_data_input_65537_51
      0023B7 F5 82            [12] 1194 	mov	dpl,a
      0023B9 EF               [12] 1195 	mov	a,r7
      0023BA 34 04            [12] 1196 	addc	a,#(_take_data_input_65537_51 >> 8)
      0023BC F5 83            [12] 1197 	mov	dph,a
      0023BE E4               [12] 1198 	clr	a
      0023BF F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	spi_and_bit_banging.c:379: unsigned char data = 0;
      0023C0 90 04 09         [24] 1201 	mov	dptr,#_take_data_data_65538_55
      0023C3 F0               [24] 1202 	movx	@dptr,a
                                   1203 ;	spi_and_bit_banging.c:380: for (i = 0; input[i] != '\0'; i++) {
      0023C4 7E 00            [12] 1204 	mov	r6,#0x00
      0023C6 7F 00            [12] 1205 	mov	r7,#0x00
      0023C8                       1206 00127$:
      0023C8 EE               [12] 1207 	mov	a,r6
      0023C9 24 05            [12] 1208 	add	a,#_take_data_input_65537_51
      0023CB F5 82            [12] 1209 	mov	dpl,a
      0023CD EF               [12] 1210 	mov	a,r7
      0023CE 34 04            [12] 1211 	addc	a,#(_take_data_input_65537_51 >> 8)
      0023D0 F5 83            [12] 1212 	mov	dph,a
      0023D2 E0               [24] 1213 	movx	a,@dptr
      0023D3 FD               [12] 1214 	mov	r5,a
      0023D4 70 03            [24] 1215 	jnz	00206$
      0023D6 02 24 3B         [24] 1216 	ljmp	00125$
      0023D9                       1217 00206$:
                                   1218 ;	spi_and_bit_banging.c:381: data = data * 16;
      0023D9 90 04 09         [24] 1219 	mov	dptr,#_take_data_data_65538_55
      0023DC E0               [24] 1220 	movx	a,@dptr
      0023DD C4               [12] 1221 	swap	a
      0023DE 54 F0            [12] 1222 	anl	a,#0xf0
      0023E0 FC               [12] 1223 	mov	r4,a
      0023E1 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	spi_and_bit_banging.c:382: if (input[i] >= '0' && input[i] <= '9')
      0023E2 BD 30 00         [24] 1226 	cjne	r5,#0x30,00207$
      0023E5                       1227 00207$:
      0023E5 40 12            [24] 1228 	jc	00122$
      0023E7 ED               [12] 1229 	mov	a,r5
      0023E8 24 C6            [12] 1230 	add	a,#0xff - 0x39
      0023EA 40 0D            [24] 1231 	jc	00122$
                                   1232 ;	spi_and_bit_banging.c:383: data += input[i] - '0';
      0023EC ED               [12] 1233 	mov	a,r5
      0023ED 24 D0            [12] 1234 	add	a,#0xd0
      0023EF FD               [12] 1235 	mov	r5,a
      0023F0 90 04 09         [24] 1236 	mov	dptr,#_take_data_data_65538_55
      0023F3 E0               [24] 1237 	movx	a,@dptr
      0023F4 FC               [12] 1238 	mov	r4,a
      0023F5 2D               [12] 1239 	add	a,r5
      0023F6 F0               [24] 1240 	movx	@dptr,a
      0023F7 80 3A            [24] 1241 	sjmp	00128$
      0023F9                       1242 00122$:
                                   1243 ;	spi_and_bit_banging.c:384: else if (input[i] >= 'A' && input[i] <= 'F')
      0023F9 EE               [12] 1244 	mov	a,r6
      0023FA 24 05            [12] 1245 	add	a,#_take_data_input_65537_51
      0023FC F5 82            [12] 1246 	mov	dpl,a
      0023FE EF               [12] 1247 	mov	a,r7
      0023FF 34 04            [12] 1248 	addc	a,#(_take_data_input_65537_51 >> 8)
      002401 F5 83            [12] 1249 	mov	dph,a
      002403 E0               [24] 1250 	movx	a,@dptr
      002404 FD               [12] 1251 	mov	r5,a
      002405 BD 41 00         [24] 1252 	cjne	r5,#0x41,00210$
      002408                       1253 00210$:
      002408 40 14            [24] 1254 	jc	00118$
      00240A ED               [12] 1255 	mov	a,r5
      00240B 24 B9            [12] 1256 	add	a,#0xff - 0x46
      00240D 40 0F            [24] 1257 	jc	00118$
                                   1258 ;	spi_and_bit_banging.c:385: data += input[i] - 'A' + 10;
      00240F 8D 04            [24] 1259 	mov	ar4,r5
      002411 74 C9            [12] 1260 	mov	a,#0xc9
      002413 2C               [12] 1261 	add	a,r4
      002414 FC               [12] 1262 	mov	r4,a
      002415 90 04 09         [24] 1263 	mov	dptr,#_take_data_data_65538_55
      002418 E0               [24] 1264 	movx	a,@dptr
      002419 FB               [12] 1265 	mov	r3,a
      00241A 2C               [12] 1266 	add	a,r4
      00241B F0               [24] 1267 	movx	@dptr,a
      00241C 80 15            [24] 1268 	sjmp	00128$
      00241E                       1269 00118$:
                                   1270 ;	spi_and_bit_banging.c:386: else if (input[i] >= 'a' && input[i] <= 'f')
      00241E BD 61 00         [24] 1271 	cjne	r5,#0x61,00213$
      002421                       1272 00213$:
      002421 40 10            [24] 1273 	jc	00128$
      002423 ED               [12] 1274 	mov	a,r5
      002424 24 99            [12] 1275 	add	a,#0xff - 0x66
      002426 40 0B            [24] 1276 	jc	00128$
                                   1277 ;	spi_and_bit_banging.c:387: data += input[i] - 'a' + 10;
      002428 74 A9            [12] 1278 	mov	a,#0xa9
      00242A 2D               [12] 1279 	add	a,r5
      00242B FD               [12] 1280 	mov	r5,a
      00242C 90 04 09         [24] 1281 	mov	dptr,#_take_data_data_65538_55
      00242F E0               [24] 1282 	movx	a,@dptr
      002430 FC               [12] 1283 	mov	r4,a
      002431 2D               [12] 1284 	add	a,r5
      002432 F0               [24] 1285 	movx	@dptr,a
      002433                       1286 00128$:
                                   1287 ;	spi_and_bit_banging.c:380: for (i = 0; input[i] != '\0'; i++) {
      002433 0E               [12] 1288 	inc	r6
      002434 BE 00 01         [24] 1289 	cjne	r6,#0x00,00216$
      002437 0F               [12] 1290 	inc	r7
      002438                       1291 00216$:
      002438 02 23 C8         [24] 1292 	ljmp	00127$
      00243B                       1293 00125$:
                                   1294 ;	spi_and_bit_banging.c:390: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00243B 90 04 09         [24] 1295 	mov	dptr,#_take_data_data_65538_55
      00243E E0               [24] 1296 	movx	a,@dptr
      00243F FF               [12] 1297 	mov	r7,a
      002440 FD               [12] 1298 	mov	r5,a
      002441 7E 00            [12] 1299 	mov	r6,#0x00
      002443 C0 07            [24] 1300 	push	ar7
      002445 C0 05            [24] 1301 	push	ar5
      002447 C0 06            [24] 1302 	push	ar6
      002449 74 12            [12] 1303 	mov	a,#___str_20
      00244B C0 E0            [24] 1304 	push	acc
      00244D 74 3D            [12] 1305 	mov	a,#(___str_20 >> 8)
      00244F C0 E0            [24] 1306 	push	acc
      002451 74 80            [12] 1307 	mov	a,#0x80
      002453 C0 E0            [24] 1308 	push	acc
      002455 12 27 AC         [24] 1309 	lcall	_printf
      002458 E5 81            [12] 1310 	mov	a,sp
      00245A 24 FB            [12] 1311 	add	a,#0xfb
      00245C F5 81            [12] 1312 	mov	sp,a
      00245E D0 07            [24] 1313 	pop	ar7
                                   1314 ;	spi_and_bit_banging.c:397: return data;
      002460 8F 82            [24] 1315 	mov	dpl,r7
                                   1316 ;	spi_and_bit_banging.c:399: }
      002462 22               [24] 1317 	ret
                                   1318 ;------------------------------------------------------------
                                   1319 ;Allocation info for local variables in function 'mannual_spi'
                                   1320 ;------------------------------------------------------------
                                   1321 ;number                    Allocated with name '_mannual_spi_number_65536_58'
                                   1322 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_59'
                                   1323 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_59'
                                   1324 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_59'
                                   1325 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_59'
                                   1326 ;i                         Allocated with name '_mannual_spi_i_196608_61'
                                   1327 ;------------------------------------------------------------
                                   1328 ;	spi_and_bit_banging.c:401: void mannual_spi(unsigned char number)
                                   1329 ;	-----------------------------------------
                                   1330 ;	 function mannual_spi
                                   1331 ;	-----------------------------------------
      002463                       1332 _mannual_spi:
      002463 E5 82            [12] 1333 	mov	a,dpl
      002465 90 04 0A         [24] 1334 	mov	dptr,#_mannual_spi_number_65536_58
      002468 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	spi_and_bit_banging.c:403: int dac_value_index = 0;
      002469 90 04 0B         [24] 1337 	mov	dptr,#_mannual_spi_dac_value_index_65536_59
      00246C E4               [12] 1338 	clr	a
      00246D F0               [24] 1339 	movx	@dptr,a
      00246E A3               [24] 1340 	inc	dptr
      00246F F0               [24] 1341 	movx	@dptr,a
                                   1342 ;	spi_and_bit_banging.c:404: int dac_data = 0;
      002470 90 04 0D         [24] 1343 	mov	dptr,#_mannual_spi_dac_data_65536_59
      002473 F0               [24] 1344 	movx	@dptr,a
      002474 A3               [24] 1345 	inc	dptr
      002475 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	spi_and_bit_banging.c:407: printf("%d\n\r", number);
      002476 90 04 0A         [24] 1348 	mov	dptr,#_mannual_spi_number_65536_58
      002479 E0               [24] 1349 	movx	a,@dptr
      00247A FF               [12] 1350 	mov	r7,a
      00247B 7E 00            [12] 1351 	mov	r6,#0x00
      00247D C0 07            [24] 1352 	push	ar7
      00247F C0 06            [24] 1353 	push	ar6
      002481 74 2F            [12] 1354 	mov	a,#___str_21
      002483 C0 E0            [24] 1355 	push	acc
      002485 74 3D            [12] 1356 	mov	a,#(___str_21 >> 8)
      002487 C0 E0            [24] 1357 	push	acc
      002489 74 80            [12] 1358 	mov	a,#0x80
      00248B C0 E0            [24] 1359 	push	acc
      00248D 12 27 AC         [24] 1360 	lcall	_printf
      002490 E5 81            [12] 1361 	mov	a,sp
      002492 24 FB            [12] 1362 	add	a,#0xfb
      002494 F5 81            [12] 1363 	mov	sp,a
                                   1364 ;	spi_and_bit_banging.c:408: while(number > 0)
      002496                       1365 00111$:
      002496 90 04 0A         [24] 1366 	mov	dptr,#_mannual_spi_number_65536_58
      002499 E0               [24] 1367 	movx	a,@dptr
      00249A 70 01            [24] 1368 	jnz	00156$
      00249C 22               [24] 1369 	ret
      00249D                       1370 00156$:
                                   1371 ;	spi_and_bit_banging.c:412: for(int i = 0; i<255; i++)
      00249D 7E 00            [12] 1372 	mov	r6,#0x00
      00249F 7F 00            [12] 1373 	mov	r7,#0x00
      0024A1                       1374 00115$:
      0024A1 C3               [12] 1375 	clr	c
      0024A2 EE               [12] 1376 	mov	a,r6
      0024A3 94 FF            [12] 1377 	subb	a,#0xff
      0024A5 EF               [12] 1378 	mov	a,r7
      0024A6 64 80            [12] 1379 	xrl	a,#0x80
      0024A8 94 80            [12] 1380 	subb	a,#0x80
      0024AA 40 03            [24] 1381 	jc	00157$
      0024AC 02 25 34         [24] 1382 	ljmp	00110$
      0024AF                       1383 00157$:
                                   1384 ;	spi_and_bit_banging.c:415: if(dac_value_index < SINE_MAX_INDEX)
      0024AF 90 04 0B         [24] 1385 	mov	dptr,#_mannual_spi_dac_value_index_65536_59
      0024B2 E0               [24] 1386 	movx	a,@dptr
      0024B3 FC               [12] 1387 	mov	r4,a
      0024B4 A3               [24] 1388 	inc	dptr
      0024B5 E0               [24] 1389 	movx	a,@dptr
      0024B6 FD               [12] 1390 	mov	r5,a
      0024B7 C3               [12] 1391 	clr	c
      0024B8 64 80            [12] 1392 	xrl	a,#0x80
      0024BA 94 81            [12] 1393 	subb	a,#0x81
      0024BC 50 21            [24] 1394 	jnc	00102$
                                   1395 ;	spi_and_bit_banging.c:419: dac_data = dac_values[dac_value_index];
      0024BE EC               [12] 1396 	mov	a,r4
      0024BF 2C               [12] 1397 	add	a,r4
      0024C0 FC               [12] 1398 	mov	r4,a
      0024C1 ED               [12] 1399 	mov	a,r5
      0024C2 33               [12] 1400 	rlc	a
      0024C3 FD               [12] 1401 	mov	r5,a
      0024C4 EC               [12] 1402 	mov	a,r4
      0024C5 24 0E            [12] 1403 	add	a,#_dac_values
      0024C7 F5 82            [12] 1404 	mov	dpl,a
      0024C9 ED               [12] 1405 	mov	a,r5
      0024CA 34 32            [12] 1406 	addc	a,#(_dac_values >> 8)
      0024CC F5 83            [12] 1407 	mov	dph,a
      0024CE E4               [12] 1408 	clr	a
      0024CF 93               [24] 1409 	movc	a,@a+dptr
      0024D0 FC               [12] 1410 	mov	r4,a
      0024D1 A3               [24] 1411 	inc	dptr
      0024D2 E4               [12] 1412 	clr	a
      0024D3 93               [24] 1413 	movc	a,@a+dptr
      0024D4 FD               [12] 1414 	mov	r5,a
      0024D5 90 04 0D         [24] 1415 	mov	dptr,#_mannual_spi_dac_data_65536_59
      0024D8 EC               [12] 1416 	mov	a,r4
      0024D9 F0               [24] 1417 	movx	@dptr,a
      0024DA ED               [12] 1418 	mov	a,r5
      0024DB A3               [24] 1419 	inc	dptr
      0024DC F0               [24] 1420 	movx	@dptr,a
      0024DD 80 07            [24] 1421 	sjmp	00103$
      0024DF                       1422 00102$:
                                   1423 ;	spi_and_bit_banging.c:423: dac_value_index = 0;  // Reset index for next cycle
      0024DF 90 04 0B         [24] 1424 	mov	dptr,#_mannual_spi_dac_value_index_65536_59
      0024E2 E4               [12] 1425 	clr	a
      0024E3 F0               [24] 1426 	movx	@dptr,a
      0024E4 A3               [24] 1427 	inc	dptr
      0024E5 F0               [24] 1428 	movx	@dptr,a
      0024E6                       1429 00103$:
                                   1430 ;	spi_and_bit_banging.c:430: ((dac_data >> 4) & 0x0F);
      0024E6 90 04 0D         [24] 1431 	mov	dptr,#_mannual_spi_dac_data_65536_59
      0024E9 E0               [24] 1432 	movx	a,@dptr
      0024EA FC               [12] 1433 	mov	r4,a
      0024EB A3               [24] 1434 	inc	dptr
      0024EC E0               [24] 1435 	movx	a,@dptr
      0024ED 8C 02            [24] 1436 	mov	ar2,r4
      0024EF C4               [12] 1437 	swap	a
      0024F0 CA               [12] 1438 	xch	a,r2
      0024F1 C4               [12] 1439 	swap	a
      0024F2 54 0F            [12] 1440 	anl	a,#0x0f
      0024F4 6A               [12] 1441 	xrl	a,r2
      0024F5 CA               [12] 1442 	xch	a,r2
      0024F6 54 0F            [12] 1443 	anl	a,#0x0f
      0024F8 CA               [12] 1444 	xch	a,r2
      0024F9 6A               [12] 1445 	xrl	a,r2
      0024FA CA               [12] 1446 	xch	a,r2
      0024FB 30 E3 02         [24] 1447 	jnb	acc.3,00159$
      0024FE 44 F0            [12] 1448 	orl	a,#0xf0
      002500                       1449 00159$:
      002500 74 0F            [12] 1450 	mov	a,#0x0f
      002502 5A               [12] 1451 	anl	a,r2
      002503 44 10            [12] 1452 	orl	a,#0x10
      002505 FB               [12] 1453 	mov	r3,a
                                   1454 ;	spi_and_bit_banging.c:433: low_byte = (dac_data & 0x0F) << 4;
      002506 53 04 0F         [24] 1455 	anl	ar4,#0x0f
      002509 EC               [12] 1456 	mov	a,r4
      00250A C4               [12] 1457 	swap	a
      00250B 54 F0            [12] 1458 	anl	a,#0xf0
      00250D FD               [12] 1459 	mov	r5,a
                                   1460 ;	spi_and_bit_banging.c:437: P1_1 = 0;  // Select DAC
                                   1461 ;	assignBit
      00250E C2 91            [12] 1462 	clr	_P1_1
                                   1463 ;	spi_and_bit_banging.c:440: SPDAT = high_byte;
      002510 8B C5            [24] 1464 	mov	_SPDAT,r3
                                   1465 ;	spi_and_bit_banging.c:441: while (!(SPSTA & (1<<7))); 
      002512                       1466 00104$:
      002512 E5 C4            [12] 1467 	mov	a,_SPSTA
      002514 30 E7 FB         [24] 1468 	jnb	acc.7,00104$
                                   1469 ;	spi_and_bit_banging.c:445: SPDAT = low_byte;
      002517 8D C5            [24] 1470 	mov	_SPDAT,r5
                                   1471 ;	spi_and_bit_banging.c:446: while (!(SPSTA & (1<<7))); 
      002519                       1472 00107$:
      002519 E5 C4            [12] 1473 	mov	a,_SPSTA
      00251B 30 E7 FB         [24] 1474 	jnb	acc.7,00107$
                                   1475 ;	spi_and_bit_banging.c:448: P1_1 = 1;  // Deselect DAC
                                   1476 ;	assignBit
      00251E D2 91            [12] 1477 	setb	_P1_1
                                   1478 ;	spi_and_bit_banging.c:450: dac_value_index++;
      002520 90 04 0B         [24] 1479 	mov	dptr,#_mannual_spi_dac_value_index_65536_59
      002523 E0               [24] 1480 	movx	a,@dptr
      002524 24 01            [12] 1481 	add	a,#0x01
      002526 F0               [24] 1482 	movx	@dptr,a
      002527 A3               [24] 1483 	inc	dptr
      002528 E0               [24] 1484 	movx	a,@dptr
      002529 34 00            [12] 1485 	addc	a,#0x00
      00252B F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	spi_and_bit_banging.c:412: for(int i = 0; i<255; i++)
      00252C 0E               [12] 1488 	inc	r6
      00252D BE 00 01         [24] 1489 	cjne	r6,#0x00,00162$
      002530 0F               [12] 1490 	inc	r7
      002531                       1491 00162$:
      002531 02 24 A1         [24] 1492 	ljmp	00115$
      002534                       1493 00110$:
                                   1494 ;	spi_and_bit_banging.c:453: number = number - 1;
      002534 90 04 0A         [24] 1495 	mov	dptr,#_mannual_spi_number_65536_58
      002537 E0               [24] 1496 	movx	a,@dptr
      002538 FF               [12] 1497 	mov	r7,a
      002539 14               [12] 1498 	dec	a
      00253A F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	spi_and_bit_banging.c:455: }
      00253B 02 24 96         [24] 1501 	ljmp	00111$
                                   1502 ;------------------------------------------------------------
                                   1503 ;Allocation info for local variables in function 'spi_init'
                                   1504 ;------------------------------------------------------------
                                   1505 ;	spi_and_bit_banging.c:466: void spi_init(void) 
                                   1506 ;	-----------------------------------------
                                   1507 ;	 function spi_init
                                   1508 ;	-----------------------------------------
      00253E                       1509 _spi_init:
                                   1510 ;	spi_and_bit_banging.c:487: SPCON |= 0x10;
      00253E 43 C3 10         [24] 1511 	orl	_SPCON,#0x10
                                   1512 ;	spi_and_bit_banging.c:488: SPCON |= 0x20;
      002541 43 C3 20         [24] 1513 	orl	_SPCON,#0x20
                                   1514 ;	spi_and_bit_banging.c:489: SPCON |= 0x40;
      002544 43 C3 40         [24] 1515 	orl	_SPCON,#0x40
                                   1516 ;	spi_and_bit_banging.c:496: }
      002547 22               [24] 1517 	ret
                                   1518 ;------------------------------------------------------------
                                   1519 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1520 ;------------------------------------------------------------
                                   1521 ;	spi_and_bit_banging.c:498: void bit_bang_spi_init(void) {
                                   1522 ;	-----------------------------------------
                                   1523 ;	 function bit_bang_spi_init
                                   1524 ;	-----------------------------------------
      002548                       1525 _bit_bang_spi_init:
                                   1526 ;	spi_and_bit_banging.c:499: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002548 75 C3 00         [24] 1527 	mov	_SPCON,#0x00
                                   1528 ;	spi_and_bit_banging.c:500: SDA = DATA_HIGH;                 /* Set data line high */
                                   1529 ;	assignBit
      00254B D2 97            [12] 1530 	setb	_P1_7
                                   1531 ;	spi_and_bit_banging.c:501: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1532 ;	assignBit
      00254D C2 96            [12] 1533 	clr	_P1_6
                                   1534 ;	spi_and_bit_banging.c:502: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1535 ;	assignBit
      00254F D2 91            [12] 1536 	setb	_P1_1
                                   1537 ;	spi_and_bit_banging.c:503: }
      002551 22               [24] 1538 	ret
                                   1539 ;------------------------------------------------------------
                                   1540 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1541 ;------------------------------------------------------------
                                   1542 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_69'
                                   1543 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_70'
                                   1544 ;------------------------------------------------------------
                                   1545 ;	spi_and_bit_banging.c:505: int bit_bang_spi_write(uint16_t data) {
                                   1546 ;	-----------------------------------------
                                   1547 ;	 function bit_bang_spi_write
                                   1548 ;	-----------------------------------------
      002552                       1549 _bit_bang_spi_write:
      002552 AF 83            [24] 1550 	mov	r7,dph
      002554 E5 82            [12] 1551 	mov	a,dpl
      002556 90 04 0F         [24] 1552 	mov	dptr,#_bit_bang_spi_write_data_65536_69
      002559 F0               [24] 1553 	movx	@dptr,a
      00255A EF               [12] 1554 	mov	a,r7
      00255B A3               [24] 1555 	inc	dptr
      00255C F0               [24] 1556 	movx	@dptr,a
                                   1557 ;	spi_and_bit_banging.c:508: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1558 ;	assignBit
      00255D C2 91            [12] 1559 	clr	_P1_1
                                   1560 ;	spi_and_bit_banging.c:511: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00255F 7E 00            [12] 1561 	mov	r6,#0x00
      002561 7F 00            [12] 1562 	mov	r7,#0x00
      002563                       1563 00102$:
                                   1564 ;	spi_and_bit_banging.c:512: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      002563 90 04 0F         [24] 1565 	mov	dptr,#_bit_bang_spi_write_data_65536_69
      002566 E0               [24] 1566 	movx	a,@dptr
      002567 FC               [12] 1567 	mov	r4,a
      002568 A3               [24] 1568 	inc	dptr
      002569 E0               [24] 1569 	movx	a,@dptr
      00256A FD               [12] 1570 	mov	r5,a
      00256B 23               [12] 1571 	rl	a
      00256C 54 01            [12] 1572 	anl	a,#0x01
      00256E 24 FF            [12] 1573 	add	a,#0xff
      002570 92 97            [24] 1574 	mov	_P1_7,c
                                   1575 ;	spi_and_bit_banging.c:513: SCL = CLOCK_HIGH;            /* Clock high */
                                   1576 ;	assignBit
      002572 D2 96            [12] 1577 	setb	_P1_6
                                   1578 ;	spi_and_bit_banging.c:514: SCL = CLOCK_LOW;             /* Clock low */
                                   1579 ;	assignBit
      002574 C2 96            [12] 1580 	clr	_P1_6
                                   1581 ;	spi_and_bit_banging.c:515: data <<= 1;                  /* Shift to next bit */
      002576 EC               [12] 1582 	mov	a,r4
      002577 2C               [12] 1583 	add	a,r4
      002578 FC               [12] 1584 	mov	r4,a
      002579 ED               [12] 1585 	mov	a,r5
      00257A 33               [12] 1586 	rlc	a
      00257B FD               [12] 1587 	mov	r5,a
      00257C 90 04 0F         [24] 1588 	mov	dptr,#_bit_bang_spi_write_data_65536_69
      00257F EC               [12] 1589 	mov	a,r4
      002580 F0               [24] 1590 	movx	@dptr,a
      002581 ED               [12] 1591 	mov	a,r5
      002582 A3               [24] 1592 	inc	dptr
      002583 F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	spi_and_bit_banging.c:511: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002584 0E               [12] 1595 	inc	r6
      002585 BE 00 01         [24] 1596 	cjne	r6,#0x00,00115$
      002588 0F               [12] 1597 	inc	r7
      002589                       1598 00115$:
      002589 C3               [12] 1599 	clr	c
      00258A EE               [12] 1600 	mov	a,r6
      00258B 94 10            [12] 1601 	subb	a,#0x10
      00258D EF               [12] 1602 	mov	a,r7
      00258E 94 00            [12] 1603 	subb	a,#0x00
      002590 40 D1            [24] 1604 	jc	00102$
                                   1605 ;	spi_and_bit_banging.c:519: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1606 ;	assignBit
      002592 D2 91            [12] 1607 	setb	_P1_1
                                   1608 ;	spi_and_bit_banging.c:520: SCL = CLOCK_LOW;                 /* Clock low */
                                   1609 ;	assignBit
      002594 C2 96            [12] 1610 	clr	_P1_6
                                   1611 ;	spi_and_bit_banging.c:521: SDA = DATA_HIGH;                 /* Data high */
                                   1612 ;	assignBit
      002596 D2 97            [12] 1613 	setb	_P1_7
                                   1614 ;	spi_and_bit_banging.c:523: return 0;
      002598 90 00 00         [24] 1615 	mov	dptr,#0x0000
                                   1616 ;	spi_and_bit_banging.c:524: }
      00259B 22               [24] 1617 	ret
                                   1618 ;------------------------------------------------------------
                                   1619 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1620 ;------------------------------------------------------------
                                   1621 ;	spi_and_bit_banging.c:531: void spi_transmission_start(void)
                                   1622 ;	-----------------------------------------
                                   1623 ;	 function spi_transmission_start
                                   1624 ;	-----------------------------------------
      00259C                       1625 _spi_transmission_start:
                                   1626 ;	spi_and_bit_banging.c:533: SPCON |= SPI_ENABLE;           // Enable SPI
      00259C 43 C3 40         [24] 1627 	orl	_SPCON,#0x40
                                   1628 ;	spi_and_bit_banging.c:534: P1_1 = 0;
                                   1629 ;	assignBit
      00259F C2 91            [12] 1630 	clr	_P1_1
                                   1631 ;	spi_and_bit_banging.c:535: }
      0025A1 22               [24] 1632 	ret
                                   1633 ;------------------------------------------------------------
                                   1634 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1635 ;------------------------------------------------------------
                                   1636 ;number                    Allocated with name '_spi_triangular_wave_number_65536_75'
                                   1637 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_76'
                                   1638 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_76'
                                   1639 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_76'
                                   1640 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_76'
                                   1641 ;i                         Allocated with name '_spi_triangular_wave_i_196608_78'
                                   1642 ;------------------------------------------------------------
                                   1643 ;	spi_and_bit_banging.c:537: void spi_triangular_wave(int number)
                                   1644 ;	-----------------------------------------
                                   1645 ;	 function spi_triangular_wave
                                   1646 ;	-----------------------------------------
      0025A2                       1647 _spi_triangular_wave:
      0025A2 AF 83            [24] 1648 	mov	r7,dph
      0025A4 E5 82            [12] 1649 	mov	a,dpl
      0025A6 90 04 11         [24] 1650 	mov	dptr,#_spi_triangular_wave_number_65536_75
      0025A9 F0               [24] 1651 	movx	@dptr,a
      0025AA EF               [12] 1652 	mov	a,r7
      0025AB A3               [24] 1653 	inc	dptr
      0025AC F0               [24] 1654 	movx	@dptr,a
                                   1655 ;	spi_and_bit_banging.c:539: int dac_value_index = 0;
      0025AD 90 04 13         [24] 1656 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_76
      0025B0 E4               [12] 1657 	clr	a
      0025B1 F0               [24] 1658 	movx	@dptr,a
      0025B2 A3               [24] 1659 	inc	dptr
      0025B3 F0               [24] 1660 	movx	@dptr,a
                                   1661 ;	spi_and_bit_banging.c:540: int dac_data = 0;
      0025B4 90 04 15         [24] 1662 	mov	dptr,#_spi_triangular_wave_dac_data_65536_76
      0025B7 F0               [24] 1663 	movx	@dptr,a
      0025B8 A3               [24] 1664 	inc	dptr
      0025B9 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	spi_and_bit_banging.c:542: while(number>0)
      0025BA 90 04 11         [24] 1667 	mov	dptr,#_spi_triangular_wave_number_65536_75
      0025BD E0               [24] 1668 	movx	a,@dptr
      0025BE FE               [12] 1669 	mov	r6,a
      0025BF A3               [24] 1670 	inc	dptr
      0025C0 E0               [24] 1671 	movx	a,@dptr
      0025C1 FF               [12] 1672 	mov	r7,a
      0025C2                       1673 00111$:
      0025C2 C3               [12] 1674 	clr	c
      0025C3 E4               [12] 1675 	clr	a
      0025C4 9E               [12] 1676 	subb	a,r6
      0025C5 74 80            [12] 1677 	mov	a,#(0x00 ^ 0x80)
      0025C7 8F F0            [24] 1678 	mov	b,r7
      0025C9 63 F0 80         [24] 1679 	xrl	b,#0x80
      0025CC 95 F0            [12] 1680 	subb	a,b
      0025CE 40 03            [24] 1681 	jc	00157$
      0025D0 02 26 77         [24] 1682 	ljmp	00129$
      0025D3                       1683 00157$:
                                   1684 ;	spi_and_bit_banging.c:544: for(int i = 0; i<512; i++)
      0025D3 7C 00            [12] 1685 	mov	r4,#0x00
      0025D5 7D 00            [12] 1686 	mov	r5,#0x00
      0025D7                       1687 00115$:
      0025D7 C3               [12] 1688 	clr	c
      0025D8 ED               [12] 1689 	mov	a,r5
      0025D9 64 80            [12] 1690 	xrl	a,#0x80
      0025DB 94 82            [12] 1691 	subb	a,#0x82
      0025DD 40 03            [24] 1692 	jc	00158$
      0025DF 02 26 67         [24] 1693 	ljmp	00110$
      0025E2                       1694 00158$:
                                   1695 ;	spi_and_bit_banging.c:547: if(dac_value_index < 512)
      0025E2 90 04 13         [24] 1696 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_76
      0025E5 E0               [24] 1697 	movx	a,@dptr
      0025E6 FA               [12] 1698 	mov	r2,a
      0025E7 A3               [24] 1699 	inc	dptr
      0025E8 E0               [24] 1700 	movx	a,@dptr
      0025E9 FB               [12] 1701 	mov	r3,a
      0025EA C3               [12] 1702 	clr	c
      0025EB 64 80            [12] 1703 	xrl	a,#0x80
      0025ED 94 82            [12] 1704 	subb	a,#0x82
      0025EF 50 21            [24] 1705 	jnc	00102$
                                   1706 ;	spi_and_bit_banging.c:551: dac_data = trig_dac_values[dac_value_index];
      0025F1 EA               [12] 1707 	mov	a,r2
      0025F2 2A               [12] 1708 	add	a,r2
      0025F3 FA               [12] 1709 	mov	r2,a
      0025F4 EB               [12] 1710 	mov	a,r3
      0025F5 33               [12] 1711 	rlc	a
      0025F6 FB               [12] 1712 	mov	r3,a
      0025F7 EA               [12] 1713 	mov	a,r2
      0025F8 24 0E            [12] 1714 	add	a,#_trig_dac_values
      0025FA F5 82            [12] 1715 	mov	dpl,a
      0025FC EB               [12] 1716 	mov	a,r3
      0025FD 34 34            [12] 1717 	addc	a,#(_trig_dac_values >> 8)
      0025FF F5 83            [12] 1718 	mov	dph,a
      002601 E4               [12] 1719 	clr	a
      002602 93               [24] 1720 	movc	a,@a+dptr
      002603 FA               [12] 1721 	mov	r2,a
      002604 A3               [24] 1722 	inc	dptr
      002605 E4               [12] 1723 	clr	a
      002606 93               [24] 1724 	movc	a,@a+dptr
      002607 FB               [12] 1725 	mov	r3,a
      002608 90 04 15         [24] 1726 	mov	dptr,#_spi_triangular_wave_dac_data_65536_76
      00260B EA               [12] 1727 	mov	a,r2
      00260C F0               [24] 1728 	movx	@dptr,a
      00260D EB               [12] 1729 	mov	a,r3
      00260E A3               [24] 1730 	inc	dptr
      00260F F0               [24] 1731 	movx	@dptr,a
      002610 80 07            [24] 1732 	sjmp	00103$
      002612                       1733 00102$:
                                   1734 ;	spi_and_bit_banging.c:555: dac_value_index = 0;  // Reset index for next cycle
      002612 90 04 13         [24] 1735 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_76
      002615 E4               [12] 1736 	clr	a
      002616 F0               [24] 1737 	movx	@dptr,a
      002617 A3               [24] 1738 	inc	dptr
      002618 F0               [24] 1739 	movx	@dptr,a
      002619                       1740 00103$:
                                   1741 ;	spi_and_bit_banging.c:562: ((dac_data >> 4) & 0x0F);
      002619 90 04 15         [24] 1742 	mov	dptr,#_spi_triangular_wave_dac_data_65536_76
      00261C E0               [24] 1743 	movx	a,@dptr
      00261D FA               [12] 1744 	mov	r2,a
      00261E A3               [24] 1745 	inc	dptr
      00261F E0               [24] 1746 	movx	a,@dptr
      002620 8A 00            [24] 1747 	mov	ar0,r2
      002622 C4               [12] 1748 	swap	a
      002623 C8               [12] 1749 	xch	a,r0
      002624 C4               [12] 1750 	swap	a
      002625 54 0F            [12] 1751 	anl	a,#0x0f
      002627 68               [12] 1752 	xrl	a,r0
      002628 C8               [12] 1753 	xch	a,r0
      002629 54 0F            [12] 1754 	anl	a,#0x0f
      00262B C8               [12] 1755 	xch	a,r0
      00262C 68               [12] 1756 	xrl	a,r0
      00262D C8               [12] 1757 	xch	a,r0
      00262E 30 E3 02         [24] 1758 	jnb	acc.3,00160$
      002631 44 F0            [12] 1759 	orl	a,#0xf0
      002633                       1760 00160$:
      002633 74 0F            [12] 1761 	mov	a,#0x0f
      002635 58               [12] 1762 	anl	a,r0
      002636 44 10            [12] 1763 	orl	a,#0x10
      002638 F9               [12] 1764 	mov	r1,a
                                   1765 ;	spi_and_bit_banging.c:565: low_byte = (dac_data & 0x0F) << 4;
      002639 53 02 0F         [24] 1766 	anl	ar2,#0x0f
      00263C EA               [12] 1767 	mov	a,r2
      00263D C4               [12] 1768 	swap	a
      00263E 54 F0            [12] 1769 	anl	a,#0xf0
      002640 FB               [12] 1770 	mov	r3,a
                                   1771 ;	spi_and_bit_banging.c:569: P1_1 = 0;  // Select DAC
                                   1772 ;	assignBit
      002641 C2 91            [12] 1773 	clr	_P1_1
                                   1774 ;	spi_and_bit_banging.c:572: SPDAT = high_byte;
      002643 89 C5            [24] 1775 	mov	_SPDAT,r1
                                   1776 ;	spi_and_bit_banging.c:573: while (!(SPSTA & (1<<7))); 
      002645                       1777 00104$:
      002645 E5 C4            [12] 1778 	mov	a,_SPSTA
      002647 30 E7 FB         [24] 1779 	jnb	acc.7,00104$
                                   1780 ;	spi_and_bit_banging.c:577: SPDAT = low_byte;
      00264A 8B C5            [24] 1781 	mov	_SPDAT,r3
                                   1782 ;	spi_and_bit_banging.c:578: while (!(SPSTA & (1<<7))); 
      00264C                       1783 00107$:
      00264C E5 C4            [12] 1784 	mov	a,_SPSTA
      00264E 30 E7 FB         [24] 1785 	jnb	acc.7,00107$
                                   1786 ;	spi_and_bit_banging.c:580: P1_1 = 1;  // Deselect DAC
                                   1787 ;	assignBit
      002651 D2 91            [12] 1788 	setb	_P1_1
                                   1789 ;	spi_and_bit_banging.c:582: dac_value_index++;
      002653 90 04 13         [24] 1790 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_76
      002656 E0               [24] 1791 	movx	a,@dptr
      002657 24 01            [12] 1792 	add	a,#0x01
      002659 F0               [24] 1793 	movx	@dptr,a
      00265A A3               [24] 1794 	inc	dptr
      00265B E0               [24] 1795 	movx	a,@dptr
      00265C 34 00            [12] 1796 	addc	a,#0x00
      00265E F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	spi_and_bit_banging.c:544: for(int i = 0; i<512; i++)
      00265F 0C               [12] 1799 	inc	r4
      002660 BC 00 01         [24] 1800 	cjne	r4,#0x00,00163$
      002663 0D               [12] 1801 	inc	r5
      002664                       1802 00163$:
      002664 02 25 D7         [24] 1803 	ljmp	00115$
      002667                       1804 00110$:
                                   1805 ;	spi_and_bit_banging.c:585: number = number - 1;
      002667 1E               [12] 1806 	dec	r6
      002668 BE FF 01         [24] 1807 	cjne	r6,#0xff,00164$
      00266B 1F               [12] 1808 	dec	r7
      00266C                       1809 00164$:
      00266C 90 04 11         [24] 1810 	mov	dptr,#_spi_triangular_wave_number_65536_75
      00266F EE               [12] 1811 	mov	a,r6
      002670 F0               [24] 1812 	movx	@dptr,a
      002671 EF               [12] 1813 	mov	a,r7
      002672 A3               [24] 1814 	inc	dptr
      002673 F0               [24] 1815 	movx	@dptr,a
      002674 02 25 C2         [24] 1816 	ljmp	00111$
      002677                       1817 00129$:
      002677 90 04 11         [24] 1818 	mov	dptr,#_spi_triangular_wave_number_65536_75
      00267A EE               [12] 1819 	mov	a,r6
      00267B F0               [24] 1820 	movx	@dptr,a
      00267C EF               [12] 1821 	mov	a,r7
      00267D A3               [24] 1822 	inc	dptr
      00267E F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	spi_and_bit_banging.c:588: }
      00267F 22               [24] 1825 	ret
                                   1826 ;------------------------------------------------------------
                                   1827 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1828 ;------------------------------------------------------------
                                   1829 ;number                    Allocated with name '_spi_ramp_signal_number_65536_82'
                                   1830 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_83'
                                   1831 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_83'
                                   1832 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_83'
                                   1833 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_83'
                                   1834 ;i                         Allocated with name '_spi_ramp_signal_i_196608_85'
                                   1835 ;------------------------------------------------------------
                                   1836 ;	spi_and_bit_banging.c:590: void spi_ramp_signal(int number)
                                   1837 ;	-----------------------------------------
                                   1838 ;	 function spi_ramp_signal
                                   1839 ;	-----------------------------------------
      002680                       1840 _spi_ramp_signal:
      002680 AF 83            [24] 1841 	mov	r7,dph
      002682 E5 82            [12] 1842 	mov	a,dpl
      002684 90 04 17         [24] 1843 	mov	dptr,#_spi_ramp_signal_number_65536_82
      002687 F0               [24] 1844 	movx	@dptr,a
      002688 EF               [12] 1845 	mov	a,r7
      002689 A3               [24] 1846 	inc	dptr
      00268A F0               [24] 1847 	movx	@dptr,a
                                   1848 ;	spi_and_bit_banging.c:592: int dac_value_index = 0;
      00268B 90 04 19         [24] 1849 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_83
      00268E E4               [12] 1850 	clr	a
      00268F F0               [24] 1851 	movx	@dptr,a
      002690 A3               [24] 1852 	inc	dptr
      002691 F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	spi_and_bit_banging.c:593: int dac_data = 0;
      002692 90 04 1B         [24] 1855 	mov	dptr,#_spi_ramp_signal_dac_data_65536_83
      002695 F0               [24] 1856 	movx	@dptr,a
      002696 A3               [24] 1857 	inc	dptr
      002697 F0               [24] 1858 	movx	@dptr,a
                                   1859 ;	spi_and_bit_banging.c:595: while(number>0)
      002698 90 04 17         [24] 1860 	mov	dptr,#_spi_ramp_signal_number_65536_82
      00269B E0               [24] 1861 	movx	a,@dptr
      00269C FE               [12] 1862 	mov	r6,a
      00269D A3               [24] 1863 	inc	dptr
      00269E E0               [24] 1864 	movx	a,@dptr
      00269F FF               [12] 1865 	mov	r7,a
      0026A0                       1866 00111$:
      0026A0 C3               [12] 1867 	clr	c
      0026A1 E4               [12] 1868 	clr	a
      0026A2 9E               [12] 1869 	subb	a,r6
      0026A3 74 80            [12] 1870 	mov	a,#(0x00 ^ 0x80)
      0026A5 8F F0            [24] 1871 	mov	b,r7
      0026A7 63 F0 80         [24] 1872 	xrl	b,#0x80
      0026AA 95 F0            [12] 1873 	subb	a,b
      0026AC 40 03            [24] 1874 	jc	00157$
      0026AE 02 27 55         [24] 1875 	ljmp	00129$
      0026B1                       1876 00157$:
                                   1877 ;	spi_and_bit_banging.c:597: for(int i = 0; i<256; i++)
      0026B1 7C 00            [12] 1878 	mov	r4,#0x00
      0026B3 7D 00            [12] 1879 	mov	r5,#0x00
      0026B5                       1880 00115$:
      0026B5 C3               [12] 1881 	clr	c
      0026B6 ED               [12] 1882 	mov	a,r5
      0026B7 64 80            [12] 1883 	xrl	a,#0x80
      0026B9 94 81            [12] 1884 	subb	a,#0x81
      0026BB 40 03            [24] 1885 	jc	00158$
      0026BD 02 27 45         [24] 1886 	ljmp	00110$
      0026C0                       1887 00158$:
                                   1888 ;	spi_and_bit_banging.c:600: if(dac_value_index < 256)
      0026C0 90 04 19         [24] 1889 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_83
      0026C3 E0               [24] 1890 	movx	a,@dptr
      0026C4 FA               [12] 1891 	mov	r2,a
      0026C5 A3               [24] 1892 	inc	dptr
      0026C6 E0               [24] 1893 	movx	a,@dptr
      0026C7 FB               [12] 1894 	mov	r3,a
      0026C8 C3               [12] 1895 	clr	c
      0026C9 64 80            [12] 1896 	xrl	a,#0x80
      0026CB 94 81            [12] 1897 	subb	a,#0x81
      0026CD 50 21            [24] 1898 	jnc	00102$
                                   1899 ;	spi_and_bit_banging.c:604: dac_data = trig_dac_values[dac_value_index];
      0026CF EA               [12] 1900 	mov	a,r2
      0026D0 2A               [12] 1901 	add	a,r2
      0026D1 FA               [12] 1902 	mov	r2,a
      0026D2 EB               [12] 1903 	mov	a,r3
      0026D3 33               [12] 1904 	rlc	a
      0026D4 FB               [12] 1905 	mov	r3,a
      0026D5 EA               [12] 1906 	mov	a,r2
      0026D6 24 0E            [12] 1907 	add	a,#_trig_dac_values
      0026D8 F5 82            [12] 1908 	mov	dpl,a
      0026DA EB               [12] 1909 	mov	a,r3
      0026DB 34 34            [12] 1910 	addc	a,#(_trig_dac_values >> 8)
      0026DD F5 83            [12] 1911 	mov	dph,a
      0026DF E4               [12] 1912 	clr	a
      0026E0 93               [24] 1913 	movc	a,@a+dptr
      0026E1 FA               [12] 1914 	mov	r2,a
      0026E2 A3               [24] 1915 	inc	dptr
      0026E3 E4               [12] 1916 	clr	a
      0026E4 93               [24] 1917 	movc	a,@a+dptr
      0026E5 FB               [12] 1918 	mov	r3,a
      0026E6 90 04 1B         [24] 1919 	mov	dptr,#_spi_ramp_signal_dac_data_65536_83
      0026E9 EA               [12] 1920 	mov	a,r2
      0026EA F0               [24] 1921 	movx	@dptr,a
      0026EB EB               [12] 1922 	mov	a,r3
      0026EC A3               [24] 1923 	inc	dptr
      0026ED F0               [24] 1924 	movx	@dptr,a
      0026EE 80 07            [24] 1925 	sjmp	00103$
      0026F0                       1926 00102$:
                                   1927 ;	spi_and_bit_banging.c:608: dac_value_index = 0;  // Reset index for next cycle
      0026F0 90 04 19         [24] 1928 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_83
      0026F3 E4               [12] 1929 	clr	a
      0026F4 F0               [24] 1930 	movx	@dptr,a
      0026F5 A3               [24] 1931 	inc	dptr
      0026F6 F0               [24] 1932 	movx	@dptr,a
      0026F7                       1933 00103$:
                                   1934 ;	spi_and_bit_banging.c:615: ((dac_data >> 4) & 0x0F);
      0026F7 90 04 1B         [24] 1935 	mov	dptr,#_spi_ramp_signal_dac_data_65536_83
      0026FA E0               [24] 1936 	movx	a,@dptr
      0026FB FA               [12] 1937 	mov	r2,a
      0026FC A3               [24] 1938 	inc	dptr
      0026FD E0               [24] 1939 	movx	a,@dptr
      0026FE 8A 00            [24] 1940 	mov	ar0,r2
      002700 C4               [12] 1941 	swap	a
      002701 C8               [12] 1942 	xch	a,r0
      002702 C4               [12] 1943 	swap	a
      002703 54 0F            [12] 1944 	anl	a,#0x0f
      002705 68               [12] 1945 	xrl	a,r0
      002706 C8               [12] 1946 	xch	a,r0
      002707 54 0F            [12] 1947 	anl	a,#0x0f
      002709 C8               [12] 1948 	xch	a,r0
      00270A 68               [12] 1949 	xrl	a,r0
      00270B C8               [12] 1950 	xch	a,r0
      00270C 30 E3 02         [24] 1951 	jnb	acc.3,00160$
      00270F 44 F0            [12] 1952 	orl	a,#0xf0
      002711                       1953 00160$:
      002711 74 0F            [12] 1954 	mov	a,#0x0f
      002713 58               [12] 1955 	anl	a,r0
      002714 44 10            [12] 1956 	orl	a,#0x10
      002716 F9               [12] 1957 	mov	r1,a
                                   1958 ;	spi_and_bit_banging.c:618: low_byte = (dac_data & 0x0F) << 4;
      002717 53 02 0F         [24] 1959 	anl	ar2,#0x0f
      00271A EA               [12] 1960 	mov	a,r2
      00271B C4               [12] 1961 	swap	a
      00271C 54 F0            [12] 1962 	anl	a,#0xf0
      00271E FB               [12] 1963 	mov	r3,a
                                   1964 ;	spi_and_bit_banging.c:622: P1_1 = 0;  // Select DAC
                                   1965 ;	assignBit
      00271F C2 91            [12] 1966 	clr	_P1_1
                                   1967 ;	spi_and_bit_banging.c:625: SPDAT = high_byte;
      002721 89 C5            [24] 1968 	mov	_SPDAT,r1
                                   1969 ;	spi_and_bit_banging.c:626: while (!(SPSTA & (1<<7))); 
      002723                       1970 00104$:
      002723 E5 C4            [12] 1971 	mov	a,_SPSTA
      002725 30 E7 FB         [24] 1972 	jnb	acc.7,00104$
                                   1973 ;	spi_and_bit_banging.c:630: SPDAT = low_byte;
      002728 8B C5            [24] 1974 	mov	_SPDAT,r3
                                   1975 ;	spi_and_bit_banging.c:631: while (!(SPSTA & (1<<7))); 
      00272A                       1976 00107$:
      00272A E5 C4            [12] 1977 	mov	a,_SPSTA
      00272C 30 E7 FB         [24] 1978 	jnb	acc.7,00107$
                                   1979 ;	spi_and_bit_banging.c:633: P1_1 = 1;  // Deselect DAC
                                   1980 ;	assignBit
      00272F D2 91            [12] 1981 	setb	_P1_1
                                   1982 ;	spi_and_bit_banging.c:635: dac_value_index++;
      002731 90 04 19         [24] 1983 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_83
      002734 E0               [24] 1984 	movx	a,@dptr
      002735 24 01            [12] 1985 	add	a,#0x01
      002737 F0               [24] 1986 	movx	@dptr,a
      002738 A3               [24] 1987 	inc	dptr
      002739 E0               [24] 1988 	movx	a,@dptr
      00273A 34 00            [12] 1989 	addc	a,#0x00
      00273C F0               [24] 1990 	movx	@dptr,a
                                   1991 ;	spi_and_bit_banging.c:597: for(int i = 0; i<256; i++)
      00273D 0C               [12] 1992 	inc	r4
      00273E BC 00 01         [24] 1993 	cjne	r4,#0x00,00163$
      002741 0D               [12] 1994 	inc	r5
      002742                       1995 00163$:
      002742 02 26 B5         [24] 1996 	ljmp	00115$
      002745                       1997 00110$:
                                   1998 ;	spi_and_bit_banging.c:638: number = number - 1;
      002745 1E               [12] 1999 	dec	r6
      002746 BE FF 01         [24] 2000 	cjne	r6,#0xff,00164$
      002749 1F               [12] 2001 	dec	r7
      00274A                       2002 00164$:
      00274A 90 04 17         [24] 2003 	mov	dptr,#_spi_ramp_signal_number_65536_82
      00274D EE               [12] 2004 	mov	a,r6
      00274E F0               [24] 2005 	movx	@dptr,a
      00274F EF               [12] 2006 	mov	a,r7
      002750 A3               [24] 2007 	inc	dptr
      002751 F0               [24] 2008 	movx	@dptr,a
      002752 02 26 A0         [24] 2009 	ljmp	00111$
      002755                       2010 00129$:
      002755 90 04 17         [24] 2011 	mov	dptr,#_spi_ramp_signal_number_65536_82
      002758 EE               [12] 2012 	mov	a,r6
      002759 F0               [24] 2013 	movx	@dptr,a
      00275A EF               [12] 2014 	mov	a,r7
      00275B A3               [24] 2015 	inc	dptr
      00275C F0               [24] 2016 	movx	@dptr,a
                                   2017 ;	spi_and_bit_banging.c:641: }
      00275D 22               [24] 2018 	ret
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      00320E                       2021 _dac_values:
      00320E 80 00                 2022 	.byte #0x80, #0x00	;  128
      003210 83 00                 2023 	.byte #0x83, #0x00	;  131
      003212 86 00                 2024 	.byte #0x86, #0x00	;  134
      003214 89 00                 2025 	.byte #0x89, #0x00	;  137
      003216 8C 00                 2026 	.byte #0x8c, #0x00	;  140
      003218 90 00                 2027 	.byte #0x90, #0x00	;  144
      00321A 93 00                 2028 	.byte #0x93, #0x00	;  147
      00321C 96 00                 2029 	.byte #0x96, #0x00	;  150
      00321E 99 00                 2030 	.byte #0x99, #0x00	;  153
      003220 9C 00                 2031 	.byte #0x9c, #0x00	;  156
      003222 9F 00                 2032 	.byte #0x9f, #0x00	;  159
      003224 A2 00                 2033 	.byte #0xa2, #0x00	;  162
      003226 A5 00                 2034 	.byte #0xa5, #0x00	;  165
      003228 A8 00                 2035 	.byte #0xa8, #0x00	;  168
      00322A AB 00                 2036 	.byte #0xab, #0x00	;  171
      00322C AE 00                 2037 	.byte #0xae, #0x00	;  174
      00322E B1 00                 2038 	.byte #0xb1, #0x00	;  177
      003230 B3 00                 2039 	.byte #0xb3, #0x00	;  179
      003232 B6 00                 2040 	.byte #0xb6, #0x00	;  182
      003234 B9 00                 2041 	.byte #0xb9, #0x00	;  185
      003236 BC 00                 2042 	.byte #0xbc, #0x00	;  188
      003238 BF 00                 2043 	.byte #0xbf, #0x00	;  191
      00323A C1 00                 2044 	.byte #0xc1, #0x00	;  193
      00323C C4 00                 2045 	.byte #0xc4, #0x00	;  196
      00323E C7 00                 2046 	.byte #0xc7, #0x00	;  199
      003240 C9 00                 2047 	.byte #0xc9, #0x00	;  201
      003242 CC 00                 2048 	.byte #0xcc, #0x00	;  204
      003244 CE 00                 2049 	.byte #0xce, #0x00	;  206
      003246 D1 00                 2050 	.byte #0xd1, #0x00	;  209
      003248 D3 00                 2051 	.byte #0xd3, #0x00	;  211
      00324A D5 00                 2052 	.byte #0xd5, #0x00	;  213
      00324C D8 00                 2053 	.byte #0xd8, #0x00	;  216
      00324E DA 00                 2054 	.byte #0xda, #0x00	;  218
      003250 DC 00                 2055 	.byte #0xdc, #0x00	;  220
      003252 DE 00                 2056 	.byte #0xde, #0x00	;  222
      003254 E0 00                 2057 	.byte #0xe0, #0x00	;  224
      003256 E2 00                 2058 	.byte #0xe2, #0x00	;  226
      003258 E4 00                 2059 	.byte #0xe4, #0x00	;  228
      00325A E6 00                 2060 	.byte #0xe6, #0x00	;  230
      00325C E8 00                 2061 	.byte #0xe8, #0x00	;  232
      00325E EA 00                 2062 	.byte #0xea, #0x00	;  234
      003260 EB 00                 2063 	.byte #0xeb, #0x00	;  235
      003262 ED 00                 2064 	.byte #0xed, #0x00	;  237
      003264 EF 00                 2065 	.byte #0xef, #0x00	;  239
      003266 F0 00                 2066 	.byte #0xf0, #0x00	;  240
      003268 F1 00                 2067 	.byte #0xf1, #0x00	;  241
      00326A F3 00                 2068 	.byte #0xf3, #0x00	;  243
      00326C F4 00                 2069 	.byte #0xf4, #0x00	;  244
      00326E F5 00                 2070 	.byte #0xf5, #0x00	;  245
      003270 F6 00                 2071 	.byte #0xf6, #0x00	;  246
      003272 F8 00                 2072 	.byte #0xf8, #0x00	;  248
      003274 F9 00                 2073 	.byte #0xf9, #0x00	;  249
      003276 FA 00                 2074 	.byte #0xfa, #0x00	;  250
      003278 FA 00                 2075 	.byte #0xfa, #0x00	;  250
      00327A FB 00                 2076 	.byte #0xfb, #0x00	;  251
      00327C FC 00                 2077 	.byte #0xfc, #0x00	;  252
      00327E FD 00                 2078 	.byte #0xfd, #0x00	;  253
      003280 FD 00                 2079 	.byte #0xfd, #0x00	;  253
      003282 FE 00                 2080 	.byte #0xfe, #0x00	;  254
      003284 FE 00                 2081 	.byte #0xfe, #0x00	;  254
      003286 FE 00                 2082 	.byte #0xfe, #0x00	;  254
      003288 FF 00                 2083 	.byte #0xff, #0x00	;  255
      00328A FF 00                 2084 	.byte #0xff, #0x00	;  255
      00328C FF 00                 2085 	.byte #0xff, #0x00	;  255
      00328E FF 00                 2086 	.byte #0xff, #0x00	;  255
      003290 FF 00                 2087 	.byte #0xff, #0x00	;  255
      003292 FF 00                 2088 	.byte #0xff, #0x00	;  255
      003294 FF 00                 2089 	.byte #0xff, #0x00	;  255
      003296 FE 00                 2090 	.byte #0xfe, #0x00	;  254
      003298 FE 00                 2091 	.byte #0xfe, #0x00	;  254
      00329A FE 00                 2092 	.byte #0xfe, #0x00	;  254
      00329C FD 00                 2093 	.byte #0xfd, #0x00	;  253
      00329E FD 00                 2094 	.byte #0xfd, #0x00	;  253
      0032A0 FC 00                 2095 	.byte #0xfc, #0x00	;  252
      0032A2 FB 00                 2096 	.byte #0xfb, #0x00	;  251
      0032A4 FA 00                 2097 	.byte #0xfa, #0x00	;  250
      0032A6 FA 00                 2098 	.byte #0xfa, #0x00	;  250
      0032A8 F9 00                 2099 	.byte #0xf9, #0x00	;  249
      0032AA F8 00                 2100 	.byte #0xf8, #0x00	;  248
      0032AC F6 00                 2101 	.byte #0xf6, #0x00	;  246
      0032AE F5 00                 2102 	.byte #0xf5, #0x00	;  245
      0032B0 F4 00                 2103 	.byte #0xf4, #0x00	;  244
      0032B2 F3 00                 2104 	.byte #0xf3, #0x00	;  243
      0032B4 F1 00                 2105 	.byte #0xf1, #0x00	;  241
      0032B6 F0 00                 2106 	.byte #0xf0, #0x00	;  240
      0032B8 EF 00                 2107 	.byte #0xef, #0x00	;  239
      0032BA ED 00                 2108 	.byte #0xed, #0x00	;  237
      0032BC EB 00                 2109 	.byte #0xeb, #0x00	;  235
      0032BE EA 00                 2110 	.byte #0xea, #0x00	;  234
      0032C0 E8 00                 2111 	.byte #0xe8, #0x00	;  232
      0032C2 E6 00                 2112 	.byte #0xe6, #0x00	;  230
      0032C4 E4 00                 2113 	.byte #0xe4, #0x00	;  228
      0032C6 E2 00                 2114 	.byte #0xe2, #0x00	;  226
      0032C8 E0 00                 2115 	.byte #0xe0, #0x00	;  224
      0032CA DE 00                 2116 	.byte #0xde, #0x00	;  222
      0032CC DC 00                 2117 	.byte #0xdc, #0x00	;  220
      0032CE DA 00                 2118 	.byte #0xda, #0x00	;  218
      0032D0 D8 00                 2119 	.byte #0xd8, #0x00	;  216
      0032D2 D5 00                 2120 	.byte #0xd5, #0x00	;  213
      0032D4 D3 00                 2121 	.byte #0xd3, #0x00	;  211
      0032D6 D1 00                 2122 	.byte #0xd1, #0x00	;  209
      0032D8 CE 00                 2123 	.byte #0xce, #0x00	;  206
      0032DA CC 00                 2124 	.byte #0xcc, #0x00	;  204
      0032DC C9 00                 2125 	.byte #0xc9, #0x00	;  201
      0032DE C7 00                 2126 	.byte #0xc7, #0x00	;  199
      0032E0 C4 00                 2127 	.byte #0xc4, #0x00	;  196
      0032E2 C1 00                 2128 	.byte #0xc1, #0x00	;  193
      0032E4 BF 00                 2129 	.byte #0xbf, #0x00	;  191
      0032E6 BC 00                 2130 	.byte #0xbc, #0x00	;  188
      0032E8 B9 00                 2131 	.byte #0xb9, #0x00	;  185
      0032EA B6 00                 2132 	.byte #0xb6, #0x00	;  182
      0032EC B3 00                 2133 	.byte #0xb3, #0x00	;  179
      0032EE B1 00                 2134 	.byte #0xb1, #0x00	;  177
      0032F0 AE 00                 2135 	.byte #0xae, #0x00	;  174
      0032F2 AB 00                 2136 	.byte #0xab, #0x00	;  171
      0032F4 A8 00                 2137 	.byte #0xa8, #0x00	;  168
      0032F6 A5 00                 2138 	.byte #0xa5, #0x00	;  165
      0032F8 A2 00                 2139 	.byte #0xa2, #0x00	;  162
      0032FA 9F 00                 2140 	.byte #0x9f, #0x00	;  159
      0032FC 9C 00                 2141 	.byte #0x9c, #0x00	;  156
      0032FE 99 00                 2142 	.byte #0x99, #0x00	;  153
      003300 96 00                 2143 	.byte #0x96, #0x00	;  150
      003302 93 00                 2144 	.byte #0x93, #0x00	;  147
      003304 90 00                 2145 	.byte #0x90, #0x00	;  144
      003306 8C 00                 2146 	.byte #0x8c, #0x00	;  140
      003308 89 00                 2147 	.byte #0x89, #0x00	;  137
      00330A 86 00                 2148 	.byte #0x86, #0x00	;  134
      00330C 83 00                 2149 	.byte #0x83, #0x00	;  131
      00330E 80 00                 2150 	.byte #0x80, #0x00	;  128
      003310 7D 00                 2151 	.byte #0x7d, #0x00	;  125
      003312 7A 00                 2152 	.byte #0x7a, #0x00	;  122
      003314 77 00                 2153 	.byte #0x77, #0x00	;  119
      003316 74 00                 2154 	.byte #0x74, #0x00	;  116
      003318 70 00                 2155 	.byte #0x70, #0x00	;  112
      00331A 6D 00                 2156 	.byte #0x6d, #0x00	;  109
      00331C 6A 00                 2157 	.byte #0x6a, #0x00	;  106
      00331E 67 00                 2158 	.byte #0x67, #0x00	;  103
      003320 64 00                 2159 	.byte #0x64, #0x00	;  100
      003322 61 00                 2160 	.byte #0x61, #0x00	;  97
      003324 5E 00                 2161 	.byte #0x5e, #0x00	;  94
      003326 5B 00                 2162 	.byte #0x5b, #0x00	;  91
      003328 58 00                 2163 	.byte #0x58, #0x00	;  88
      00332A 55 00                 2164 	.byte #0x55, #0x00	;  85
      00332C 52 00                 2165 	.byte #0x52, #0x00	;  82
      00332E 4F 00                 2166 	.byte #0x4f, #0x00	;  79
      003330 4D 00                 2167 	.byte #0x4d, #0x00	;  77
      003332 4A 00                 2168 	.byte #0x4a, #0x00	;  74
      003334 47 00                 2169 	.byte #0x47, #0x00	;  71
      003336 44 00                 2170 	.byte #0x44, #0x00	;  68
      003338 41 00                 2171 	.byte #0x41, #0x00	;  65
      00333A 3F 00                 2172 	.byte #0x3f, #0x00	;  63
      00333C 3C 00                 2173 	.byte #0x3c, #0x00	;  60
      00333E 39 00                 2174 	.byte #0x39, #0x00	;  57
      003340 37 00                 2175 	.byte #0x37, #0x00	;  55
      003342 34 00                 2176 	.byte #0x34, #0x00	;  52
      003344 32 00                 2177 	.byte #0x32, #0x00	;  50
      003346 2F 00                 2178 	.byte #0x2f, #0x00	;  47
      003348 2D 00                 2179 	.byte #0x2d, #0x00	;  45
      00334A 2B 00                 2180 	.byte #0x2b, #0x00	;  43
      00334C 28 00                 2181 	.byte #0x28, #0x00	;  40
      00334E 26 00                 2182 	.byte #0x26, #0x00	;  38
      003350 24 00                 2183 	.byte #0x24, #0x00	;  36
      003352 22 00                 2184 	.byte #0x22, #0x00	;  34
      003354 20 00                 2185 	.byte #0x20, #0x00	;  32
      003356 1E 00                 2186 	.byte #0x1e, #0x00	;  30
      003358 1C 00                 2187 	.byte #0x1c, #0x00	;  28
      00335A 1A 00                 2188 	.byte #0x1a, #0x00	;  26
      00335C 18 00                 2189 	.byte #0x18, #0x00	;  24
      00335E 16 00                 2190 	.byte #0x16, #0x00	;  22
      003360 15 00                 2191 	.byte #0x15, #0x00	;  21
      003362 13 00                 2192 	.byte #0x13, #0x00	;  19
      003364 11 00                 2193 	.byte #0x11, #0x00	;  17
      003366 10 00                 2194 	.byte #0x10, #0x00	;  16
      003368 0F 00                 2195 	.byte #0x0f, #0x00	;  15
      00336A 0D 00                 2196 	.byte #0x0d, #0x00	;  13
      00336C 0C 00                 2197 	.byte #0x0c, #0x00	;  12
      00336E 0B 00                 2198 	.byte #0x0b, #0x00	;  11
      003370 0A 00                 2199 	.byte #0x0a, #0x00	;  10
      003372 08 00                 2200 	.byte #0x08, #0x00	;  8
      003374 07 00                 2201 	.byte #0x07, #0x00	;  7
      003376 06 00                 2202 	.byte #0x06, #0x00	;  6
      003378 06 00                 2203 	.byte #0x06, #0x00	;  6
      00337A 05 00                 2204 	.byte #0x05, #0x00	;  5
      00337C 04 00                 2205 	.byte #0x04, #0x00	;  4
      00337E 03 00                 2206 	.byte #0x03, #0x00	;  3
      003380 03 00                 2207 	.byte #0x03, #0x00	;  3
      003382 02 00                 2208 	.byte #0x02, #0x00	;  2
      003384 02 00                 2209 	.byte #0x02, #0x00	;  2
      003386 02 00                 2210 	.byte #0x02, #0x00	;  2
      003388 01 00                 2211 	.byte #0x01, #0x00	;  1
      00338A 01 00                 2212 	.byte #0x01, #0x00	;  1
      00338C 01 00                 2213 	.byte #0x01, #0x00	;  1
      00338E 01 00                 2214 	.byte #0x01, #0x00	;  1
      003390 01 00                 2215 	.byte #0x01, #0x00	;  1
      003392 01 00                 2216 	.byte #0x01, #0x00	;  1
      003394 01 00                 2217 	.byte #0x01, #0x00	;  1
      003396 02 00                 2218 	.byte #0x02, #0x00	;  2
      003398 02 00                 2219 	.byte #0x02, #0x00	;  2
      00339A 02 00                 2220 	.byte #0x02, #0x00	;  2
      00339C 03 00                 2221 	.byte #0x03, #0x00	;  3
      00339E 03 00                 2222 	.byte #0x03, #0x00	;  3
      0033A0 04 00                 2223 	.byte #0x04, #0x00	;  4
      0033A2 05 00                 2224 	.byte #0x05, #0x00	;  5
      0033A4 06 00                 2225 	.byte #0x06, #0x00	;  6
      0033A6 06 00                 2226 	.byte #0x06, #0x00	;  6
      0033A8 07 00                 2227 	.byte #0x07, #0x00	;  7
      0033AA 08 00                 2228 	.byte #0x08, #0x00	;  8
      0033AC 0A 00                 2229 	.byte #0x0a, #0x00	;  10
      0033AE 0B 00                 2230 	.byte #0x0b, #0x00	;  11
      0033B0 0C 00                 2231 	.byte #0x0c, #0x00	;  12
      0033B2 0D 00                 2232 	.byte #0x0d, #0x00	;  13
      0033B4 0F 00                 2233 	.byte #0x0f, #0x00	;  15
      0033B6 10 00                 2234 	.byte #0x10, #0x00	;  16
      0033B8 11 00                 2235 	.byte #0x11, #0x00	;  17
      0033BA 13 00                 2236 	.byte #0x13, #0x00	;  19
      0033BC 15 00                 2237 	.byte #0x15, #0x00	;  21
      0033BE 16 00                 2238 	.byte #0x16, #0x00	;  22
      0033C0 18 00                 2239 	.byte #0x18, #0x00	;  24
      0033C2 1A 00                 2240 	.byte #0x1a, #0x00	;  26
      0033C4 1C 00                 2241 	.byte #0x1c, #0x00	;  28
      0033C6 1E 00                 2242 	.byte #0x1e, #0x00	;  30
      0033C8 20 00                 2243 	.byte #0x20, #0x00	;  32
      0033CA 22 00                 2244 	.byte #0x22, #0x00	;  34
      0033CC 24 00                 2245 	.byte #0x24, #0x00	;  36
      0033CE 26 00                 2246 	.byte #0x26, #0x00	;  38
      0033D0 28 00                 2247 	.byte #0x28, #0x00	;  40
      0033D2 2B 00                 2248 	.byte #0x2b, #0x00	;  43
      0033D4 2D 00                 2249 	.byte #0x2d, #0x00	;  45
      0033D6 2F 00                 2250 	.byte #0x2f, #0x00	;  47
      0033D8 32 00                 2251 	.byte #0x32, #0x00	;  50
      0033DA 34 00                 2252 	.byte #0x34, #0x00	;  52
      0033DC 37 00                 2253 	.byte #0x37, #0x00	;  55
      0033DE 39 00                 2254 	.byte #0x39, #0x00	;  57
      0033E0 3C 00                 2255 	.byte #0x3c, #0x00	;  60
      0033E2 3F 00                 2256 	.byte #0x3f, #0x00	;  63
      0033E4 41 00                 2257 	.byte #0x41, #0x00	;  65
      0033E6 44 00                 2258 	.byte #0x44, #0x00	;  68
      0033E8 47 00                 2259 	.byte #0x47, #0x00	;  71
      0033EA 4A 00                 2260 	.byte #0x4a, #0x00	;  74
      0033EC 4D 00                 2261 	.byte #0x4d, #0x00	;  77
      0033EE 4F 00                 2262 	.byte #0x4f, #0x00	;  79
      0033F0 52 00                 2263 	.byte #0x52, #0x00	;  82
      0033F2 55 00                 2264 	.byte #0x55, #0x00	;  85
      0033F4 58 00                 2265 	.byte #0x58, #0x00	;  88
      0033F6 5B 00                 2266 	.byte #0x5b, #0x00	;  91
      0033F8 5E 00                 2267 	.byte #0x5e, #0x00	;  94
      0033FA 61 00                 2268 	.byte #0x61, #0x00	;  97
      0033FC 64 00                 2269 	.byte #0x64, #0x00	;  100
      0033FE 67 00                 2270 	.byte #0x67, #0x00	;  103
      003400 6A 00                 2271 	.byte #0x6a, #0x00	;  106
      003402 6D 00                 2272 	.byte #0x6d, #0x00	;  109
      003404 70 00                 2273 	.byte #0x70, #0x00	;  112
      003406 74 00                 2274 	.byte #0x74, #0x00	;  116
      003408 77 00                 2275 	.byte #0x77, #0x00	;  119
      00340A 7A 00                 2276 	.byte #0x7a, #0x00	;  122
      00340C 7D 00                 2277 	.byte #0x7d, #0x00	;  125
      00340E                       2278 _trig_dac_values:
      00340E 00 00                 2279 	.byte #0x00, #0x00	;  0
      003410 01 00                 2280 	.byte #0x01, #0x00	;  1
      003412 02 00                 2281 	.byte #0x02, #0x00	;  2
      003414 03 00                 2282 	.byte #0x03, #0x00	;  3
      003416 04 00                 2283 	.byte #0x04, #0x00	;  4
      003418 05 00                 2284 	.byte #0x05, #0x00	;  5
      00341A 06 00                 2285 	.byte #0x06, #0x00	;  6
      00341C 07 00                 2286 	.byte #0x07, #0x00	;  7
      00341E 08 00                 2287 	.byte #0x08, #0x00	;  8
      003420 09 00                 2288 	.byte #0x09, #0x00	;  9
      003422 0A 00                 2289 	.byte #0x0a, #0x00	;  10
      003424 0B 00                 2290 	.byte #0x0b, #0x00	;  11
      003426 0C 00                 2291 	.byte #0x0c, #0x00	;  12
      003428 0D 00                 2292 	.byte #0x0d, #0x00	;  13
      00342A 0E 00                 2293 	.byte #0x0e, #0x00	;  14
      00342C 0F 00                 2294 	.byte #0x0f, #0x00	;  15
      00342E 10 00                 2295 	.byte #0x10, #0x00	;  16
      003430 11 00                 2296 	.byte #0x11, #0x00	;  17
      003432 12 00                 2297 	.byte #0x12, #0x00	;  18
      003434 13 00                 2298 	.byte #0x13, #0x00	;  19
      003436 14 00                 2299 	.byte #0x14, #0x00	;  20
      003438 15 00                 2300 	.byte #0x15, #0x00	;  21
      00343A 16 00                 2301 	.byte #0x16, #0x00	;  22
      00343C 17 00                 2302 	.byte #0x17, #0x00	;  23
      00343E 18 00                 2303 	.byte #0x18, #0x00	;  24
      003440 19 00                 2304 	.byte #0x19, #0x00	;  25
      003442 1A 00                 2305 	.byte #0x1a, #0x00	;  26
      003444 1B 00                 2306 	.byte #0x1b, #0x00	;  27
      003446 1C 00                 2307 	.byte #0x1c, #0x00	;  28
      003448 1D 00                 2308 	.byte #0x1d, #0x00	;  29
      00344A 1E 00                 2309 	.byte #0x1e, #0x00	;  30
      00344C 1F 00                 2310 	.byte #0x1f, #0x00	;  31
      00344E 20 00                 2311 	.byte #0x20, #0x00	;  32
      003450 21 00                 2312 	.byte #0x21, #0x00	;  33
      003452 22 00                 2313 	.byte #0x22, #0x00	;  34
      003454 23 00                 2314 	.byte #0x23, #0x00	;  35
      003456 24 00                 2315 	.byte #0x24, #0x00	;  36
      003458 25 00                 2316 	.byte #0x25, #0x00	;  37
      00345A 26 00                 2317 	.byte #0x26, #0x00	;  38
      00345C 27 00                 2318 	.byte #0x27, #0x00	;  39
      00345E 28 00                 2319 	.byte #0x28, #0x00	;  40
      003460 29 00                 2320 	.byte #0x29, #0x00	;  41
      003462 2A 00                 2321 	.byte #0x2a, #0x00	;  42
      003464 2B 00                 2322 	.byte #0x2b, #0x00	;  43
      003466 2C 00                 2323 	.byte #0x2c, #0x00	;  44
      003468 2D 00                 2324 	.byte #0x2d, #0x00	;  45
      00346A 2E 00                 2325 	.byte #0x2e, #0x00	;  46
      00346C 2F 00                 2326 	.byte #0x2f, #0x00	;  47
      00346E 30 00                 2327 	.byte #0x30, #0x00	;  48
      003470 31 00                 2328 	.byte #0x31, #0x00	;  49
      003472 32 00                 2329 	.byte #0x32, #0x00	;  50
      003474 33 00                 2330 	.byte #0x33, #0x00	;  51
      003476 34 00                 2331 	.byte #0x34, #0x00	;  52
      003478 35 00                 2332 	.byte #0x35, #0x00	;  53
      00347A 36 00                 2333 	.byte #0x36, #0x00	;  54
      00347C 37 00                 2334 	.byte #0x37, #0x00	;  55
      00347E 38 00                 2335 	.byte #0x38, #0x00	;  56
      003480 39 00                 2336 	.byte #0x39, #0x00	;  57
      003482 3A 00                 2337 	.byte #0x3a, #0x00	;  58
      003484 3B 00                 2338 	.byte #0x3b, #0x00	;  59
      003486 3C 00                 2339 	.byte #0x3c, #0x00	;  60
      003488 3D 00                 2340 	.byte #0x3d, #0x00	;  61
      00348A 3E 00                 2341 	.byte #0x3e, #0x00	;  62
      00348C 3F 00                 2342 	.byte #0x3f, #0x00	;  63
      00348E 40 00                 2343 	.byte #0x40, #0x00	;  64
      003490 41 00                 2344 	.byte #0x41, #0x00	;  65
      003492 42 00                 2345 	.byte #0x42, #0x00	;  66
      003494 43 00                 2346 	.byte #0x43, #0x00	;  67
      003496 44 00                 2347 	.byte #0x44, #0x00	;  68
      003498 45 00                 2348 	.byte #0x45, #0x00	;  69
      00349A 46 00                 2349 	.byte #0x46, #0x00	;  70
      00349C 47 00                 2350 	.byte #0x47, #0x00	;  71
      00349E 48 00                 2351 	.byte #0x48, #0x00	;  72
      0034A0 49 00                 2352 	.byte #0x49, #0x00	;  73
      0034A2 4A 00                 2353 	.byte #0x4a, #0x00	;  74
      0034A4 4B 00                 2354 	.byte #0x4b, #0x00	;  75
      0034A6 4C 00                 2355 	.byte #0x4c, #0x00	;  76
      0034A8 4D 00                 2356 	.byte #0x4d, #0x00	;  77
      0034AA 4E 00                 2357 	.byte #0x4e, #0x00	;  78
      0034AC 4F 00                 2358 	.byte #0x4f, #0x00	;  79
      0034AE 50 00                 2359 	.byte #0x50, #0x00	;  80
      0034B0 51 00                 2360 	.byte #0x51, #0x00	;  81
      0034B2 52 00                 2361 	.byte #0x52, #0x00	;  82
      0034B4 53 00                 2362 	.byte #0x53, #0x00	;  83
      0034B6 54 00                 2363 	.byte #0x54, #0x00	;  84
      0034B8 55 00                 2364 	.byte #0x55, #0x00	;  85
      0034BA 56 00                 2365 	.byte #0x56, #0x00	;  86
      0034BC 57 00                 2366 	.byte #0x57, #0x00	;  87
      0034BE 58 00                 2367 	.byte #0x58, #0x00	;  88
      0034C0 59 00                 2368 	.byte #0x59, #0x00	;  89
      0034C2 5A 00                 2369 	.byte #0x5a, #0x00	;  90
      0034C4 5B 00                 2370 	.byte #0x5b, #0x00	;  91
      0034C6 5C 00                 2371 	.byte #0x5c, #0x00	;  92
      0034C8 5D 00                 2372 	.byte #0x5d, #0x00	;  93
      0034CA 5E 00                 2373 	.byte #0x5e, #0x00	;  94
      0034CC 5F 00                 2374 	.byte #0x5f, #0x00	;  95
      0034CE 60 00                 2375 	.byte #0x60, #0x00	;  96
      0034D0 61 00                 2376 	.byte #0x61, #0x00	;  97
      0034D2 62 00                 2377 	.byte #0x62, #0x00	;  98
      0034D4 63 00                 2378 	.byte #0x63, #0x00	;  99
      0034D6 64 00                 2379 	.byte #0x64, #0x00	;  100
      0034D8 65 00                 2380 	.byte #0x65, #0x00	;  101
      0034DA 66 00                 2381 	.byte #0x66, #0x00	;  102
      0034DC 67 00                 2382 	.byte #0x67, #0x00	;  103
      0034DE 68 00                 2383 	.byte #0x68, #0x00	;  104
      0034E0 69 00                 2384 	.byte #0x69, #0x00	;  105
      0034E2 6A 00                 2385 	.byte #0x6a, #0x00	;  106
      0034E4 6B 00                 2386 	.byte #0x6b, #0x00	;  107
      0034E6 6C 00                 2387 	.byte #0x6c, #0x00	;  108
      0034E8 6D 00                 2388 	.byte #0x6d, #0x00	;  109
      0034EA 6E 00                 2389 	.byte #0x6e, #0x00	;  110
      0034EC 6F 00                 2390 	.byte #0x6f, #0x00	;  111
      0034EE 70 00                 2391 	.byte #0x70, #0x00	;  112
      0034F0 71 00                 2392 	.byte #0x71, #0x00	;  113
      0034F2 72 00                 2393 	.byte #0x72, #0x00	;  114
      0034F4 73 00                 2394 	.byte #0x73, #0x00	;  115
      0034F6 74 00                 2395 	.byte #0x74, #0x00	;  116
      0034F8 75 00                 2396 	.byte #0x75, #0x00	;  117
      0034FA 76 00                 2397 	.byte #0x76, #0x00	;  118
      0034FC 77 00                 2398 	.byte #0x77, #0x00	;  119
      0034FE 78 00                 2399 	.byte #0x78, #0x00	;  120
      003500 79 00                 2400 	.byte #0x79, #0x00	;  121
      003502 7A 00                 2401 	.byte #0x7a, #0x00	;  122
      003504 7B 00                 2402 	.byte #0x7b, #0x00	;  123
      003506 7C 00                 2403 	.byte #0x7c, #0x00	;  124
      003508 7D 00                 2404 	.byte #0x7d, #0x00	;  125
      00350A 7E 00                 2405 	.byte #0x7e, #0x00	;  126
      00350C 7F 00                 2406 	.byte #0x7f, #0x00	;  127
      00350E 80 00                 2407 	.byte #0x80, #0x00	;  128
      003510 81 00                 2408 	.byte #0x81, #0x00	;  129
      003512 82 00                 2409 	.byte #0x82, #0x00	;  130
      003514 83 00                 2410 	.byte #0x83, #0x00	;  131
      003516 84 00                 2411 	.byte #0x84, #0x00	;  132
      003518 85 00                 2412 	.byte #0x85, #0x00	;  133
      00351A 86 00                 2413 	.byte #0x86, #0x00	;  134
      00351C 87 00                 2414 	.byte #0x87, #0x00	;  135
      00351E 88 00                 2415 	.byte #0x88, #0x00	;  136
      003520 89 00                 2416 	.byte #0x89, #0x00	;  137
      003522 8A 00                 2417 	.byte #0x8a, #0x00	;  138
      003524 8B 00                 2418 	.byte #0x8b, #0x00	;  139
      003526 8C 00                 2419 	.byte #0x8c, #0x00	;  140
      003528 8D 00                 2420 	.byte #0x8d, #0x00	;  141
      00352A 8E 00                 2421 	.byte #0x8e, #0x00	;  142
      00352C 8F 00                 2422 	.byte #0x8f, #0x00	;  143
      00352E 90 00                 2423 	.byte #0x90, #0x00	;  144
      003530 91 00                 2424 	.byte #0x91, #0x00	;  145
      003532 92 00                 2425 	.byte #0x92, #0x00	;  146
      003534 93 00                 2426 	.byte #0x93, #0x00	;  147
      003536 94 00                 2427 	.byte #0x94, #0x00	;  148
      003538 95 00                 2428 	.byte #0x95, #0x00	;  149
      00353A 96 00                 2429 	.byte #0x96, #0x00	;  150
      00353C 97 00                 2430 	.byte #0x97, #0x00	;  151
      00353E 98 00                 2431 	.byte #0x98, #0x00	;  152
      003540 99 00                 2432 	.byte #0x99, #0x00	;  153
      003542 9A 00                 2433 	.byte #0x9a, #0x00	;  154
      003544 9B 00                 2434 	.byte #0x9b, #0x00	;  155
      003546 9C 00                 2435 	.byte #0x9c, #0x00	;  156
      003548 9D 00                 2436 	.byte #0x9d, #0x00	;  157
      00354A 9E 00                 2437 	.byte #0x9e, #0x00	;  158
      00354C 9F 00                 2438 	.byte #0x9f, #0x00	;  159
      00354E A0 00                 2439 	.byte #0xa0, #0x00	;  160
      003550 A1 00                 2440 	.byte #0xa1, #0x00	;  161
      003552 A2 00                 2441 	.byte #0xa2, #0x00	;  162
      003554 A3 00                 2442 	.byte #0xa3, #0x00	;  163
      003556 A4 00                 2443 	.byte #0xa4, #0x00	;  164
      003558 A5 00                 2444 	.byte #0xa5, #0x00	;  165
      00355A A6 00                 2445 	.byte #0xa6, #0x00	;  166
      00355C A7 00                 2446 	.byte #0xa7, #0x00	;  167
      00355E A8 00                 2447 	.byte #0xa8, #0x00	;  168
      003560 A9 00                 2448 	.byte #0xa9, #0x00	;  169
      003562 AA 00                 2449 	.byte #0xaa, #0x00	;  170
      003564 AB 00                 2450 	.byte #0xab, #0x00	;  171
      003566 AC 00                 2451 	.byte #0xac, #0x00	;  172
      003568 AD 00                 2452 	.byte #0xad, #0x00	;  173
      00356A AE 00                 2453 	.byte #0xae, #0x00	;  174
      00356C AF 00                 2454 	.byte #0xaf, #0x00	;  175
      00356E B0 00                 2455 	.byte #0xb0, #0x00	;  176
      003570 B1 00                 2456 	.byte #0xb1, #0x00	;  177
      003572 B2 00                 2457 	.byte #0xb2, #0x00	;  178
      003574 B3 00                 2458 	.byte #0xb3, #0x00	;  179
      003576 B4 00                 2459 	.byte #0xb4, #0x00	;  180
      003578 B5 00                 2460 	.byte #0xb5, #0x00	;  181
      00357A B6 00                 2461 	.byte #0xb6, #0x00	;  182
      00357C B7 00                 2462 	.byte #0xb7, #0x00	;  183
      00357E B8 00                 2463 	.byte #0xb8, #0x00	;  184
      003580 B9 00                 2464 	.byte #0xb9, #0x00	;  185
      003582 BA 00                 2465 	.byte #0xba, #0x00	;  186
      003584 BB 00                 2466 	.byte #0xbb, #0x00	;  187
      003586 BC 00                 2467 	.byte #0xbc, #0x00	;  188
      003588 BD 00                 2468 	.byte #0xbd, #0x00	;  189
      00358A BE 00                 2469 	.byte #0xbe, #0x00	;  190
      00358C BF 00                 2470 	.byte #0xbf, #0x00	;  191
      00358E C0 00                 2471 	.byte #0xc0, #0x00	;  192
      003590 C1 00                 2472 	.byte #0xc1, #0x00	;  193
      003592 C2 00                 2473 	.byte #0xc2, #0x00	;  194
      003594 C3 00                 2474 	.byte #0xc3, #0x00	;  195
      003596 C4 00                 2475 	.byte #0xc4, #0x00	;  196
      003598 C5 00                 2476 	.byte #0xc5, #0x00	;  197
      00359A C6 00                 2477 	.byte #0xc6, #0x00	;  198
      00359C C7 00                 2478 	.byte #0xc7, #0x00	;  199
      00359E C8 00                 2479 	.byte #0xc8, #0x00	;  200
      0035A0 C9 00                 2480 	.byte #0xc9, #0x00	;  201
      0035A2 CA 00                 2481 	.byte #0xca, #0x00	;  202
      0035A4 CB 00                 2482 	.byte #0xcb, #0x00	;  203
      0035A6 CC 00                 2483 	.byte #0xcc, #0x00	;  204
      0035A8 CD 00                 2484 	.byte #0xcd, #0x00	;  205
      0035AA CE 00                 2485 	.byte #0xce, #0x00	;  206
      0035AC CF 00                 2486 	.byte #0xcf, #0x00	;  207
      0035AE D0 00                 2487 	.byte #0xd0, #0x00	;  208
      0035B0 D1 00                 2488 	.byte #0xd1, #0x00	;  209
      0035B2 D2 00                 2489 	.byte #0xd2, #0x00	;  210
      0035B4 D3 00                 2490 	.byte #0xd3, #0x00	;  211
      0035B6 D4 00                 2491 	.byte #0xd4, #0x00	;  212
      0035B8 D5 00                 2492 	.byte #0xd5, #0x00	;  213
      0035BA D6 00                 2493 	.byte #0xd6, #0x00	;  214
      0035BC D7 00                 2494 	.byte #0xd7, #0x00	;  215
      0035BE D8 00                 2495 	.byte #0xd8, #0x00	;  216
      0035C0 D9 00                 2496 	.byte #0xd9, #0x00	;  217
      0035C2 DA 00                 2497 	.byte #0xda, #0x00	;  218
      0035C4 DB 00                 2498 	.byte #0xdb, #0x00	;  219
      0035C6 DC 00                 2499 	.byte #0xdc, #0x00	;  220
      0035C8 DD 00                 2500 	.byte #0xdd, #0x00	;  221
      0035CA DE 00                 2501 	.byte #0xde, #0x00	;  222
      0035CC DF 00                 2502 	.byte #0xdf, #0x00	;  223
      0035CE E0 00                 2503 	.byte #0xe0, #0x00	;  224
      0035D0 E1 00                 2504 	.byte #0xe1, #0x00	;  225
      0035D2 E2 00                 2505 	.byte #0xe2, #0x00	;  226
      0035D4 E3 00                 2506 	.byte #0xe3, #0x00	;  227
      0035D6 E4 00                 2507 	.byte #0xe4, #0x00	;  228
      0035D8 E5 00                 2508 	.byte #0xe5, #0x00	;  229
      0035DA E6 00                 2509 	.byte #0xe6, #0x00	;  230
      0035DC E7 00                 2510 	.byte #0xe7, #0x00	;  231
      0035DE E8 00                 2511 	.byte #0xe8, #0x00	;  232
      0035E0 E9 00                 2512 	.byte #0xe9, #0x00	;  233
      0035E2 EA 00                 2513 	.byte #0xea, #0x00	;  234
      0035E4 EB 00                 2514 	.byte #0xeb, #0x00	;  235
      0035E6 EC 00                 2515 	.byte #0xec, #0x00	;  236
      0035E8 ED 00                 2516 	.byte #0xed, #0x00	;  237
      0035EA EE 00                 2517 	.byte #0xee, #0x00	;  238
      0035EC EF 00                 2518 	.byte #0xef, #0x00	;  239
      0035EE F0 00                 2519 	.byte #0xf0, #0x00	;  240
      0035F0 F1 00                 2520 	.byte #0xf1, #0x00	;  241
      0035F2 F2 00                 2521 	.byte #0xf2, #0x00	;  242
      0035F4 F3 00                 2522 	.byte #0xf3, #0x00	;  243
      0035F6 F4 00                 2523 	.byte #0xf4, #0x00	;  244
      0035F8 F5 00                 2524 	.byte #0xf5, #0x00	;  245
      0035FA F6 00                 2525 	.byte #0xf6, #0x00	;  246
      0035FC F7 00                 2526 	.byte #0xf7, #0x00	;  247
      0035FE F8 00                 2527 	.byte #0xf8, #0x00	;  248
      003600 F9 00                 2528 	.byte #0xf9, #0x00	;  249
      003602 FA 00                 2529 	.byte #0xfa, #0x00	;  250
      003604 FB 00                 2530 	.byte #0xfb, #0x00	;  251
      003606 FC 00                 2531 	.byte #0xfc, #0x00	;  252
      003608 FD 00                 2532 	.byte #0xfd, #0x00	;  253
      00360A FE 00                 2533 	.byte #0xfe, #0x00	;  254
      00360C FF 00                 2534 	.byte #0xff, #0x00	;  255
      00360E FF 00                 2535 	.byte #0xff, #0x00	;  255
      003610 FE 00                 2536 	.byte #0xfe, #0x00	;  254
      003612 FD 00                 2537 	.byte #0xfd, #0x00	;  253
      003614 FC 00                 2538 	.byte #0xfc, #0x00	;  252
      003616 FB 00                 2539 	.byte #0xfb, #0x00	;  251
      003618 FA 00                 2540 	.byte #0xfa, #0x00	;  250
      00361A F9 00                 2541 	.byte #0xf9, #0x00	;  249
      00361C F8 00                 2542 	.byte #0xf8, #0x00	;  248
      00361E F7 00                 2543 	.byte #0xf7, #0x00	;  247
      003620 F6 00                 2544 	.byte #0xf6, #0x00	;  246
      003622 F5 00                 2545 	.byte #0xf5, #0x00	;  245
      003624 F4 00                 2546 	.byte #0xf4, #0x00	;  244
      003626 F3 00                 2547 	.byte #0xf3, #0x00	;  243
      003628 F2 00                 2548 	.byte #0xf2, #0x00	;  242
      00362A F1 00                 2549 	.byte #0xf1, #0x00	;  241
      00362C F0 00                 2550 	.byte #0xf0, #0x00	;  240
      00362E EF 00                 2551 	.byte #0xef, #0x00	;  239
      003630 EE 00                 2552 	.byte #0xee, #0x00	;  238
      003632 ED 00                 2553 	.byte #0xed, #0x00	;  237
      003634 EC 00                 2554 	.byte #0xec, #0x00	;  236
      003636 EB 00                 2555 	.byte #0xeb, #0x00	;  235
      003638 EA 00                 2556 	.byte #0xea, #0x00	;  234
      00363A E9 00                 2557 	.byte #0xe9, #0x00	;  233
      00363C E8 00                 2558 	.byte #0xe8, #0x00	;  232
      00363E E7 00                 2559 	.byte #0xe7, #0x00	;  231
      003640 E6 00                 2560 	.byte #0xe6, #0x00	;  230
      003642 E5 00                 2561 	.byte #0xe5, #0x00	;  229
      003644 E4 00                 2562 	.byte #0xe4, #0x00	;  228
      003646 E3 00                 2563 	.byte #0xe3, #0x00	;  227
      003648 E2 00                 2564 	.byte #0xe2, #0x00	;  226
      00364A E1 00                 2565 	.byte #0xe1, #0x00	;  225
      00364C E0 00                 2566 	.byte #0xe0, #0x00	;  224
      00364E DF 00                 2567 	.byte #0xdf, #0x00	;  223
      003650 DE 00                 2568 	.byte #0xde, #0x00	;  222
      003652 DD 00                 2569 	.byte #0xdd, #0x00	;  221
      003654 DC 00                 2570 	.byte #0xdc, #0x00	;  220
      003656 DB 00                 2571 	.byte #0xdb, #0x00	;  219
      003658 DA 00                 2572 	.byte #0xda, #0x00	;  218
      00365A D9 00                 2573 	.byte #0xd9, #0x00	;  217
      00365C D8 00                 2574 	.byte #0xd8, #0x00	;  216
      00365E D7 00                 2575 	.byte #0xd7, #0x00	;  215
      003660 D6 00                 2576 	.byte #0xd6, #0x00	;  214
      003662 D5 00                 2577 	.byte #0xd5, #0x00	;  213
      003664 D4 00                 2578 	.byte #0xd4, #0x00	;  212
      003666 D3 00                 2579 	.byte #0xd3, #0x00	;  211
      003668 D2 00                 2580 	.byte #0xd2, #0x00	;  210
      00366A D1 00                 2581 	.byte #0xd1, #0x00	;  209
      00366C D0 00                 2582 	.byte #0xd0, #0x00	;  208
      00366E CF 00                 2583 	.byte #0xcf, #0x00	;  207
      003670 CE 00                 2584 	.byte #0xce, #0x00	;  206
      003672 CD 00                 2585 	.byte #0xcd, #0x00	;  205
      003674 CC 00                 2586 	.byte #0xcc, #0x00	;  204
      003676 CB 00                 2587 	.byte #0xcb, #0x00	;  203
      003678 CA 00                 2588 	.byte #0xca, #0x00	;  202
      00367A C9 00                 2589 	.byte #0xc9, #0x00	;  201
      00367C C8 00                 2590 	.byte #0xc8, #0x00	;  200
      00367E C7 00                 2591 	.byte #0xc7, #0x00	;  199
      003680 C6 00                 2592 	.byte #0xc6, #0x00	;  198
      003682 C5 00                 2593 	.byte #0xc5, #0x00	;  197
      003684 C4 00                 2594 	.byte #0xc4, #0x00	;  196
      003686 C3 00                 2595 	.byte #0xc3, #0x00	;  195
      003688 C2 00                 2596 	.byte #0xc2, #0x00	;  194
      00368A C1 00                 2597 	.byte #0xc1, #0x00	;  193
      00368C C0 00                 2598 	.byte #0xc0, #0x00	;  192
      00368E BF 00                 2599 	.byte #0xbf, #0x00	;  191
      003690 BE 00                 2600 	.byte #0xbe, #0x00	;  190
      003692 BD 00                 2601 	.byte #0xbd, #0x00	;  189
      003694 BC 00                 2602 	.byte #0xbc, #0x00	;  188
      003696 BB 00                 2603 	.byte #0xbb, #0x00	;  187
      003698 BA 00                 2604 	.byte #0xba, #0x00	;  186
      00369A B9 00                 2605 	.byte #0xb9, #0x00	;  185
      00369C B8 00                 2606 	.byte #0xb8, #0x00	;  184
      00369E B7 00                 2607 	.byte #0xb7, #0x00	;  183
      0036A0 B6 00                 2608 	.byte #0xb6, #0x00	;  182
      0036A2 B5 00                 2609 	.byte #0xb5, #0x00	;  181
      0036A4 B4 00                 2610 	.byte #0xb4, #0x00	;  180
      0036A6 B3 00                 2611 	.byte #0xb3, #0x00	;  179
      0036A8 B2 00                 2612 	.byte #0xb2, #0x00	;  178
      0036AA B1 00                 2613 	.byte #0xb1, #0x00	;  177
      0036AC B0 00                 2614 	.byte #0xb0, #0x00	;  176
      0036AE AF 00                 2615 	.byte #0xaf, #0x00	;  175
      0036B0 AE 00                 2616 	.byte #0xae, #0x00	;  174
      0036B2 AD 00                 2617 	.byte #0xad, #0x00	;  173
      0036B4 AC 00                 2618 	.byte #0xac, #0x00	;  172
      0036B6 AB 00                 2619 	.byte #0xab, #0x00	;  171
      0036B8 AA 00                 2620 	.byte #0xaa, #0x00	;  170
      0036BA A9 00                 2621 	.byte #0xa9, #0x00	;  169
      0036BC A8 00                 2622 	.byte #0xa8, #0x00	;  168
      0036BE A7 00                 2623 	.byte #0xa7, #0x00	;  167
      0036C0 A6 00                 2624 	.byte #0xa6, #0x00	;  166
      0036C2 A5 00                 2625 	.byte #0xa5, #0x00	;  165
      0036C4 A4 00                 2626 	.byte #0xa4, #0x00	;  164
      0036C6 A3 00                 2627 	.byte #0xa3, #0x00	;  163
      0036C8 A2 00                 2628 	.byte #0xa2, #0x00	;  162
      0036CA A1 00                 2629 	.byte #0xa1, #0x00	;  161
      0036CC A0 00                 2630 	.byte #0xa0, #0x00	;  160
      0036CE 9F 00                 2631 	.byte #0x9f, #0x00	;  159
      0036D0 9E 00                 2632 	.byte #0x9e, #0x00	;  158
      0036D2 9D 00                 2633 	.byte #0x9d, #0x00	;  157
      0036D4 9C 00                 2634 	.byte #0x9c, #0x00	;  156
      0036D6 9B 00                 2635 	.byte #0x9b, #0x00	;  155
      0036D8 9A 00                 2636 	.byte #0x9a, #0x00	;  154
      0036DA 99 00                 2637 	.byte #0x99, #0x00	;  153
      0036DC 98 00                 2638 	.byte #0x98, #0x00	;  152
      0036DE 97 00                 2639 	.byte #0x97, #0x00	;  151
      0036E0 96 00                 2640 	.byte #0x96, #0x00	;  150
      0036E2 95 00                 2641 	.byte #0x95, #0x00	;  149
      0036E4 94 00                 2642 	.byte #0x94, #0x00	;  148
      0036E6 93 00                 2643 	.byte #0x93, #0x00	;  147
      0036E8 92 00                 2644 	.byte #0x92, #0x00	;  146
      0036EA 91 00                 2645 	.byte #0x91, #0x00	;  145
      0036EC 90 00                 2646 	.byte #0x90, #0x00	;  144
      0036EE 8F 00                 2647 	.byte #0x8f, #0x00	;  143
      0036F0 8E 00                 2648 	.byte #0x8e, #0x00	;  142
      0036F2 8D 00                 2649 	.byte #0x8d, #0x00	;  141
      0036F4 8C 00                 2650 	.byte #0x8c, #0x00	;  140
      0036F6 8B 00                 2651 	.byte #0x8b, #0x00	;  139
      0036F8 8A 00                 2652 	.byte #0x8a, #0x00	;  138
      0036FA 89 00                 2653 	.byte #0x89, #0x00	;  137
      0036FC 88 00                 2654 	.byte #0x88, #0x00	;  136
      0036FE 87 00                 2655 	.byte #0x87, #0x00	;  135
      003700 86 00                 2656 	.byte #0x86, #0x00	;  134
      003702 85 00                 2657 	.byte #0x85, #0x00	;  133
      003704 84 00                 2658 	.byte #0x84, #0x00	;  132
      003706 83 00                 2659 	.byte #0x83, #0x00	;  131
      003708 82 00                 2660 	.byte #0x82, #0x00	;  130
      00370A 81 00                 2661 	.byte #0x81, #0x00	;  129
      00370C 80 00                 2662 	.byte #0x80, #0x00	;  128
      00370E 7F 00                 2663 	.byte #0x7f, #0x00	;  127
      003710 7E 00                 2664 	.byte #0x7e, #0x00	;  126
      003712 7D 00                 2665 	.byte #0x7d, #0x00	;  125
      003714 7C 00                 2666 	.byte #0x7c, #0x00	;  124
      003716 7B 00                 2667 	.byte #0x7b, #0x00	;  123
      003718 7A 00                 2668 	.byte #0x7a, #0x00	;  122
      00371A 79 00                 2669 	.byte #0x79, #0x00	;  121
      00371C 78 00                 2670 	.byte #0x78, #0x00	;  120
      00371E 77 00                 2671 	.byte #0x77, #0x00	;  119
      003720 76 00                 2672 	.byte #0x76, #0x00	;  118
      003722 75 00                 2673 	.byte #0x75, #0x00	;  117
      003724 74 00                 2674 	.byte #0x74, #0x00	;  116
      003726 73 00                 2675 	.byte #0x73, #0x00	;  115
      003728 72 00                 2676 	.byte #0x72, #0x00	;  114
      00372A 71 00                 2677 	.byte #0x71, #0x00	;  113
      00372C 70 00                 2678 	.byte #0x70, #0x00	;  112
      00372E 6F 00                 2679 	.byte #0x6f, #0x00	;  111
      003730 6E 00                 2680 	.byte #0x6e, #0x00	;  110
      003732 6D 00                 2681 	.byte #0x6d, #0x00	;  109
      003734 6C 00                 2682 	.byte #0x6c, #0x00	;  108
      003736 6B 00                 2683 	.byte #0x6b, #0x00	;  107
      003738 6A 00                 2684 	.byte #0x6a, #0x00	;  106
      00373A 69 00                 2685 	.byte #0x69, #0x00	;  105
      00373C 68 00                 2686 	.byte #0x68, #0x00	;  104
      00373E 67 00                 2687 	.byte #0x67, #0x00	;  103
      003740 66 00                 2688 	.byte #0x66, #0x00	;  102
      003742 65 00                 2689 	.byte #0x65, #0x00	;  101
      003744 64 00                 2690 	.byte #0x64, #0x00	;  100
      003746 63 00                 2691 	.byte #0x63, #0x00	;  99
      003748 62 00                 2692 	.byte #0x62, #0x00	;  98
      00374A 61 00                 2693 	.byte #0x61, #0x00	;  97
      00374C 60 00                 2694 	.byte #0x60, #0x00	;  96
      00374E 5F 00                 2695 	.byte #0x5f, #0x00	;  95
      003750 5E 00                 2696 	.byte #0x5e, #0x00	;  94
      003752 5D 00                 2697 	.byte #0x5d, #0x00	;  93
      003754 5C 00                 2698 	.byte #0x5c, #0x00	;  92
      003756 5B 00                 2699 	.byte #0x5b, #0x00	;  91
      003758 5A 00                 2700 	.byte #0x5a, #0x00	;  90
      00375A 59 00                 2701 	.byte #0x59, #0x00	;  89
      00375C 58 00                 2702 	.byte #0x58, #0x00	;  88
      00375E 57 00                 2703 	.byte #0x57, #0x00	;  87
      003760 56 00                 2704 	.byte #0x56, #0x00	;  86
      003762 55 00                 2705 	.byte #0x55, #0x00	;  85
      003764 54 00                 2706 	.byte #0x54, #0x00	;  84
      003766 53 00                 2707 	.byte #0x53, #0x00	;  83
      003768 52 00                 2708 	.byte #0x52, #0x00	;  82
      00376A 51 00                 2709 	.byte #0x51, #0x00	;  81
      00376C 50 00                 2710 	.byte #0x50, #0x00	;  80
      00376E 4F 00                 2711 	.byte #0x4f, #0x00	;  79
      003770 4E 00                 2712 	.byte #0x4e, #0x00	;  78
      003772 4D 00                 2713 	.byte #0x4d, #0x00	;  77
      003774 4C 00                 2714 	.byte #0x4c, #0x00	;  76
      003776 4B 00                 2715 	.byte #0x4b, #0x00	;  75
      003778 4A 00                 2716 	.byte #0x4a, #0x00	;  74
      00377A 49 00                 2717 	.byte #0x49, #0x00	;  73
      00377C 48 00                 2718 	.byte #0x48, #0x00	;  72
      00377E 47 00                 2719 	.byte #0x47, #0x00	;  71
      003780 46 00                 2720 	.byte #0x46, #0x00	;  70
      003782 45 00                 2721 	.byte #0x45, #0x00	;  69
      003784 44 00                 2722 	.byte #0x44, #0x00	;  68
      003786 43 00                 2723 	.byte #0x43, #0x00	;  67
      003788 42 00                 2724 	.byte #0x42, #0x00	;  66
      00378A 41 00                 2725 	.byte #0x41, #0x00	;  65
      00378C 40 00                 2726 	.byte #0x40, #0x00	;  64
      00378E 3F 00                 2727 	.byte #0x3f, #0x00	;  63
      003790 3E 00                 2728 	.byte #0x3e, #0x00	;  62
      003792 3D 00                 2729 	.byte #0x3d, #0x00	;  61
      003794 3C 00                 2730 	.byte #0x3c, #0x00	;  60
      003796 3B 00                 2731 	.byte #0x3b, #0x00	;  59
      003798 3A 00                 2732 	.byte #0x3a, #0x00	;  58
      00379A 39 00                 2733 	.byte #0x39, #0x00	;  57
      00379C 38 00                 2734 	.byte #0x38, #0x00	;  56
      00379E 37 00                 2735 	.byte #0x37, #0x00	;  55
      0037A0 36 00                 2736 	.byte #0x36, #0x00	;  54
      0037A2 35 00                 2737 	.byte #0x35, #0x00	;  53
      0037A4 34 00                 2738 	.byte #0x34, #0x00	;  52
      0037A6 33 00                 2739 	.byte #0x33, #0x00	;  51
      0037A8 32 00                 2740 	.byte #0x32, #0x00	;  50
      0037AA 31 00                 2741 	.byte #0x31, #0x00	;  49
      0037AC 30 00                 2742 	.byte #0x30, #0x00	;  48
      0037AE 2F 00                 2743 	.byte #0x2f, #0x00	;  47
      0037B0 2E 00                 2744 	.byte #0x2e, #0x00	;  46
      0037B2 2D 00                 2745 	.byte #0x2d, #0x00	;  45
      0037B4 2C 00                 2746 	.byte #0x2c, #0x00	;  44
      0037B6 2B 00                 2747 	.byte #0x2b, #0x00	;  43
      0037B8 2A 00                 2748 	.byte #0x2a, #0x00	;  42
      0037BA 29 00                 2749 	.byte #0x29, #0x00	;  41
      0037BC 28 00                 2750 	.byte #0x28, #0x00	;  40
      0037BE 27 00                 2751 	.byte #0x27, #0x00	;  39
      0037C0 26 00                 2752 	.byte #0x26, #0x00	;  38
      0037C2 25 00                 2753 	.byte #0x25, #0x00	;  37
      0037C4 24 00                 2754 	.byte #0x24, #0x00	;  36
      0037C6 23 00                 2755 	.byte #0x23, #0x00	;  35
      0037C8 22 00                 2756 	.byte #0x22, #0x00	;  34
      0037CA 21 00                 2757 	.byte #0x21, #0x00	;  33
      0037CC 20 00                 2758 	.byte #0x20, #0x00	;  32
      0037CE 1F 00                 2759 	.byte #0x1f, #0x00	;  31
      0037D0 1E 00                 2760 	.byte #0x1e, #0x00	;  30
      0037D2 1D 00                 2761 	.byte #0x1d, #0x00	;  29
      0037D4 1C 00                 2762 	.byte #0x1c, #0x00	;  28
      0037D6 1B 00                 2763 	.byte #0x1b, #0x00	;  27
      0037D8 1A 00                 2764 	.byte #0x1a, #0x00	;  26
      0037DA 19 00                 2765 	.byte #0x19, #0x00	;  25
      0037DC 18 00                 2766 	.byte #0x18, #0x00	;  24
      0037DE 17 00                 2767 	.byte #0x17, #0x00	;  23
      0037E0 16 00                 2768 	.byte #0x16, #0x00	;  22
      0037E2 15 00                 2769 	.byte #0x15, #0x00	;  21
      0037E4 14 00                 2770 	.byte #0x14, #0x00	;  20
      0037E6 13 00                 2771 	.byte #0x13, #0x00	;  19
      0037E8 12 00                 2772 	.byte #0x12, #0x00	;  18
      0037EA 11 00                 2773 	.byte #0x11, #0x00	;  17
      0037EC 10 00                 2774 	.byte #0x10, #0x00	;  16
      0037EE 0F 00                 2775 	.byte #0x0f, #0x00	;  15
      0037F0 0E 00                 2776 	.byte #0x0e, #0x00	;  14
      0037F2 0D 00                 2777 	.byte #0x0d, #0x00	;  13
      0037F4 0C 00                 2778 	.byte #0x0c, #0x00	;  12
      0037F6 0B 00                 2779 	.byte #0x0b, #0x00	;  11
      0037F8 0A 00                 2780 	.byte #0x0a, #0x00	;  10
      0037FA 09 00                 2781 	.byte #0x09, #0x00	;  9
      0037FC 08 00                 2782 	.byte #0x08, #0x00	;  8
      0037FE 07 00                 2783 	.byte #0x07, #0x00	;  7
      003800 06 00                 2784 	.byte #0x06, #0x00	;  6
      003802 05 00                 2785 	.byte #0x05, #0x00	;  5
      003804 04 00                 2786 	.byte #0x04, #0x00	;  4
      003806 03 00                 2787 	.byte #0x03, #0x00	;  3
      003808 02 00                 2788 	.byte #0x02, #0x00	;  2
      00380A 01 00                 2789 	.byte #0x01, #0x00	;  1
      00380C 00 00                 2790 	.byte #0x00, #0x00	;  0
                                   2791 	.area CONST   (CODE)
      00380E                       2792 ___str_0:
      00380E 20                    2793 	.ascii " "
      00380F E2                    2794 	.db 0xe2
      003810 94                    2795 	.db 0x94
      003811 80                    2796 	.db 0x80
      003812 E2                    2797 	.db 0xe2
      003813 94                    2798 	.db 0x94
      003814 80                    2799 	.db 0x80
      003815 E2                    2800 	.db 0xe2
      003816 94                    2801 	.db 0x94
      003817 80                    2802 	.db 0x80
      003818 E2                    2803 	.db 0xe2
      003819 94                    2804 	.db 0x94
      00381A 80                    2805 	.db 0x80
      00381B E2                    2806 	.db 0xe2
      00381C 94                    2807 	.db 0x94
      00381D 80                    2808 	.db 0x80
      00381E E2                    2809 	.db 0xe2
      00381F 94                    2810 	.db 0x94
      003820 80                    2811 	.db 0x80
      003821 E2                    2812 	.db 0xe2
      003822 94                    2813 	.db 0x94
      003823 80                    2814 	.db 0x80
      003824 E2                    2815 	.db 0xe2
      003825 94                    2816 	.db 0x94
      003826 80                    2817 	.db 0x80
      003827 E2                    2818 	.db 0xe2
      003828 94                    2819 	.db 0x94
      003829 80                    2820 	.db 0x80
      00382A E2                    2821 	.db 0xe2
      00382B 94                    2822 	.db 0x94
      00382C 80                    2823 	.db 0x80
      00382D E2                    2824 	.db 0xe2
      00382E 94                    2825 	.db 0x94
      00382F 80                    2826 	.db 0x80
      003830 E2                    2827 	.db 0xe2
      003831 94                    2828 	.db 0x94
      003832 B4                    2829 	.db 0xb4
      003833 E2                    2830 	.db 0xe2
      003834 94                    2831 	.db 0x94
      003835 80                    2832 	.db 0x80
      003836 E2                    2833 	.db 0xe2
      003837 94                    2834 	.db 0x94
      003838 80                    2835 	.db 0x80
      003839 E2                    2836 	.db 0xe2
      00383A 94                    2837 	.db 0x94
      00383B 80                    2838 	.db 0x80
      00383C E2                    2839 	.db 0xe2
      00383D 94                    2840 	.db 0x94
      00383E 80                    2841 	.db 0x80
      00383F E2                    2842 	.db 0xe2
      003840 94                    2843 	.db 0x94
      003841 80                    2844 	.db 0x80
      003842 E2                    2845 	.db 0xe2
      003843 94                    2846 	.db 0x94
      003844 80                    2847 	.db 0x80
      003845 E2                    2848 	.db 0xe2
      003846 94                    2849 	.db 0x94
      003847 80                    2850 	.db 0x80
      003848 E2                    2851 	.db 0xe2
      003849 94                    2852 	.db 0x94
      00384A 80                    2853 	.db 0x80
      00384B E2                    2854 	.db 0xe2
      00384C 94                    2855 	.db 0x94
      00384D 80                    2856 	.db 0x80
      00384E E2                    2857 	.db 0xe2
      00384F 94                    2858 	.db 0x94
      003850 80                    2859 	.db 0x80
      003851 E2                    2860 	.db 0xe2
      003852 94                    2861 	.db 0x94
      003853 80                    2862 	.db 0x80
      003854 E2                    2863 	.db 0xe2
      003855 94                    2864 	.db 0x94
      003856 80                    2865 	.db 0x80
      003857 E2                    2866 	.db 0xe2
      003858 94                    2867 	.db 0x94
      003859 80                    2868 	.db 0x80
      00385A E2                    2869 	.db 0xe2
      00385B 94                    2870 	.db 0x94
      00385C 80                    2871 	.db 0x80
      00385D E2                    2872 	.db 0xe2
      00385E 94                    2873 	.db 0x94
      00385F 80                    2874 	.db 0x80
      003860 E2                    2875 	.db 0xe2
      003861 94                    2876 	.db 0x94
      003862 80                    2877 	.db 0x80
      003863 E2                    2878 	.db 0xe2
      003864 94                    2879 	.db 0x94
      003865 80                    2880 	.db 0x80
      003866 E2                    2881 	.db 0xe2
      003867 94                    2882 	.db 0x94
      003868 80                    2883 	.db 0x80
      003869 E2                    2884 	.db 0xe2
      00386A 94                    2885 	.db 0x94
      00386B 80                    2886 	.db 0x80
      00386C E2                    2887 	.db 0xe2
      00386D 94                    2888 	.db 0x94
      00386E 80                    2889 	.db 0x80
      00386F E2                    2890 	.db 0xe2
      003870 94                    2891 	.db 0x94
      003871 80                    2892 	.db 0x80
      003872 E2                    2893 	.db 0xe2
      003873 94                    2894 	.db 0x94
      003874 80                    2895 	.db 0x80
      003875 E2                    2896 	.db 0xe2
      003876 94                    2897 	.db 0x94
      003877 80                    2898 	.db 0x80
      003878 E2                    2899 	.db 0xe2
      003879 94                    2900 	.db 0x94
      00387A 80                    2901 	.db 0x80
      00387B E2                    2902 	.db 0xe2
      00387C 94                    2903 	.db 0x94
      00387D 80                    2904 	.db 0x80
      00387E E2                    2905 	.db 0xe2
      00387F 94                    2906 	.db 0x94
      003880 80                    2907 	.db 0x80
      003881 E2                    2908 	.db 0xe2
      003882 94                    2909 	.db 0x94
      003883 80                    2910 	.db 0x80
      003884 E2                    2911 	.db 0xe2
      003885 94                    2912 	.db 0x94
      003886 80                    2913 	.db 0x80
      003887 E2                    2914 	.db 0xe2
      003888 94                    2915 	.db 0x94
      003889 80                    2916 	.db 0x80
      00388A E2                    2917 	.db 0xe2
      00388B 94                    2918 	.db 0x94
      00388C 80                    2919 	.db 0x80
      00388D E2                    2920 	.db 0xe2
      00388E 94                    2921 	.db 0x94
      00388F 80                    2922 	.db 0x80
      003890 E2                    2923 	.db 0xe2
      003891 94                    2924 	.db 0x94
      003892 80                    2925 	.db 0x80
      003893 E2                    2926 	.db 0xe2
      003894 94                    2927 	.db 0x94
      003895 80                    2928 	.db 0x80
      003896 E2                    2929 	.db 0xe2
      003897 94                    2930 	.db 0x94
      003898 80                    2931 	.db 0x80
      003899 E2                    2932 	.db 0xe2
      00389A 94                    2933 	.db 0x94
      00389B 80                    2934 	.db 0x80
      00389C E2                    2935 	.db 0xe2
      00389D 94                    2936 	.db 0x94
      00389E 80                    2937 	.db 0x80
      00389F E2                    2938 	.db 0xe2
      0038A0 94                    2939 	.db 0x94
      0038A1 80                    2940 	.db 0x80
      0038A2 E2                    2941 	.db 0xe2
      0038A3 94                    2942 	.db 0x94
      0038A4 80                    2943 	.db 0x80
      0038A5 E2                    2944 	.db 0xe2
      0038A6 94                    2945 	.db 0x94
      0038A7 80                    2946 	.db 0x80
      0038A8 E2                    2947 	.db 0xe2
      0038A9 94                    2948 	.db 0x94
      0038AA 80                    2949 	.db 0x80
      0038AB E2                    2950 	.db 0xe2
      0038AC 94                    2951 	.db 0x94
      0038AD 80                    2952 	.db 0x80
      0038AE E2                    2953 	.db 0xe2
      0038AF 94                    2954 	.db 0x94
      0038B0 80                    2955 	.db 0x80
      0038B1 E2                    2956 	.db 0xe2
      0038B2 94                    2957 	.db 0x94
      0038B3 80                    2958 	.db 0x80
      0038B4 E2                    2959 	.db 0xe2
      0038B5 94                    2960 	.db 0x94
      0038B6 80                    2961 	.db 0x80
      0038B7 E2                    2962 	.db 0xe2
      0038B8 94                    2963 	.db 0x94
      0038B9 80                    2964 	.db 0x80
      0038BA E2                    2965 	.db 0xe2
      0038BB 94                    2966 	.db 0x94
      0038BC 80                    2967 	.db 0x80
      0038BD E2                    2968 	.db 0xe2
      0038BE 94                    2969 	.db 0x94
      0038BF 80                    2970 	.db 0x80
      0038C0 0A                    2971 	.db 0x0a
      0038C1 0D                    2972 	.db 0x0d
      0038C2 00                    2973 	.db 0x00
                                   2974 	.area CSEG    (CODE)
                                   2975 	.area CONST   (CODE)
      0038C3                       2976 ___str_1:
      0038C3 E2                    2977 	.db 0xe2
      0038C4 94                    2978 	.db 0x94
      0038C5 82                    2979 	.db 0x82
      0038C6 20 20 20 20 20 20 20  2980 	.ascii "                        SPI PROGRAM                        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      003901 E2                    2981 	.db 0xe2
      003902 94                    2982 	.db 0x94
      003903 82                    2983 	.db 0x82
      003904 0A                    2984 	.db 0x0a
      003905 0D                    2985 	.db 0x0d
      003906 00                    2986 	.db 0x00
                                   2987 	.area CSEG    (CODE)
                                   2988 	.area CONST   (CODE)
      003907                       2989 ___str_2:
      003907 E2                    2990 	.db 0xe2
      003908 94                    2991 	.db 0x94
      003909 9C                    2992 	.db 0x9c
      00390A E2                    2993 	.db 0xe2
      00390B 94                    2994 	.db 0x94
      00390C 80                    2995 	.db 0x80
      00390D E2                    2996 	.db 0xe2
      00390E 94                    2997 	.db 0x94
      00390F 80                    2998 	.db 0x80
      003910 E2                    2999 	.db 0xe2
      003911 94                    3000 	.db 0x94
      003912 80                    3001 	.db 0x80
      003913 E2                    3002 	.db 0xe2
      003914 94                    3003 	.db 0x94
      003915 80                    3004 	.db 0x80
      003916 E2                    3005 	.db 0xe2
      003917 94                    3006 	.db 0x94
      003918 80                    3007 	.db 0x80
      003919 E2                    3008 	.db 0xe2
      00391A 94                    3009 	.db 0x94
      00391B 80                    3010 	.db 0x80
      00391C E2                    3011 	.db 0xe2
      00391D 94                    3012 	.db 0x94
      00391E 80                    3013 	.db 0x80
      00391F E2                    3014 	.db 0xe2
      003920 94                    3015 	.db 0x94
      003921 80                    3016 	.db 0x80
      003922 E2                    3017 	.db 0xe2
      003923 94                    3018 	.db 0x94
      003924 80                    3019 	.db 0x80
      003925 E2                    3020 	.db 0xe2
      003926 94                    3021 	.db 0x94
      003927 80                    3022 	.db 0x80
      003928 E2                    3023 	.db 0xe2
      003929 94                    3024 	.db 0x94
      00392A 80                    3025 	.db 0x80
      00392B E2                    3026 	.db 0xe2
      00392C 94                    3027 	.db 0x94
      00392D 80                    3028 	.db 0x80
      00392E E2                    3029 	.db 0xe2
      00392F 94                    3030 	.db 0x94
      003930 80                    3031 	.db 0x80
      003931 E2                    3032 	.db 0xe2
      003932 94                    3033 	.db 0x94
      003933 80                    3034 	.db 0x80
      003934 E2                    3035 	.db 0xe2
      003935 94                    3036 	.db 0x94
      003936 80                    3037 	.db 0x80
      003937 E2                    3038 	.db 0xe2
      003938 94                    3039 	.db 0x94
      003939 80                    3040 	.db 0x80
      00393A E2                    3041 	.db 0xe2
      00393B 94                    3042 	.db 0x94
      00393C 80                    3043 	.db 0x80
      00393D E2                    3044 	.db 0xe2
      00393E 94                    3045 	.db 0x94
      00393F 80                    3046 	.db 0x80
      003940 E2                    3047 	.db 0xe2
      003941 94                    3048 	.db 0x94
      003942 80                    3049 	.db 0x80
      003943 E2                    3050 	.db 0xe2
      003944 94                    3051 	.db 0x94
      003945 80                    3052 	.db 0x80
      003946 E2                    3053 	.db 0xe2
      003947 94                    3054 	.db 0x94
      003948 80                    3055 	.db 0x80
      003949 E2                    3056 	.db 0xe2
      00394A 94                    3057 	.db 0x94
      00394B 80                    3058 	.db 0x80
      00394C E2                    3059 	.db 0xe2
      00394D 94                    3060 	.db 0x94
      00394E 80                    3061 	.db 0x80
      00394F E2                    3062 	.db 0xe2
      003950 94                    3063 	.db 0x94
      003951 80                    3064 	.db 0x80
      003952 E2                    3065 	.db 0xe2
      003953 94                    3066 	.db 0x94
      003954 80                    3067 	.db 0x80
      003955 E2                    3068 	.db 0xe2
      003956 94                    3069 	.db 0x94
      003957 80                    3070 	.db 0x80
      003958 E2                    3071 	.db 0xe2
      003959 94                    3072 	.db 0x94
      00395A 80                    3073 	.db 0x80
      00395B E2                    3074 	.db 0xe2
      00395C 94                    3075 	.db 0x94
      00395D 80                    3076 	.db 0x80
      00395E E2                    3077 	.db 0xe2
      00395F 94                    3078 	.db 0x94
      003960 80                    3079 	.db 0x80
      003961 E2                    3080 	.db 0xe2
      003962 94                    3081 	.db 0x94
      003963 80                    3082 	.db 0x80
      003964 E2                    3083 	.db 0xe2
      003965 94                    3084 	.db 0x94
      003966 80                    3085 	.db 0x80
      003967 E2                    3086 	.db 0xe2
      003968 94                    3087 	.db 0x94
      003969 80                    3088 	.db 0x80
      00396A E2                    3089 	.db 0xe2
      00396B 94                    3090 	.db 0x94
      00396C 80                    3091 	.db 0x80
      00396D E2                    3092 	.db 0xe2
      00396E 94                    3093 	.db 0x94
      00396F 80                    3094 	.db 0x80
      003970 E2                    3095 	.db 0xe2
      003971 94                    3096 	.db 0x94
      003972 80                    3097 	.db 0x80
      003973 E2                    3098 	.db 0xe2
      003974 94                    3099 	.db 0x94
      003975 80                    3100 	.db 0x80
      003976 E2                    3101 	.db 0xe2
      003977 94                    3102 	.db 0x94
      003978 80                    3103 	.db 0x80
      003979 E2                    3104 	.db 0xe2
      00397A 94                    3105 	.db 0x94
      00397B 80                    3106 	.db 0x80
      00397C E2                    3107 	.db 0xe2
      00397D 94                    3108 	.db 0x94
      00397E 80                    3109 	.db 0x80
      00397F E2                    3110 	.db 0xe2
      003980 94                    3111 	.db 0x94
      003981 80                    3112 	.db 0x80
      003982 E2                    3113 	.db 0xe2
      003983 94                    3114 	.db 0x94
      003984 80                    3115 	.db 0x80
      003985 E2                    3116 	.db 0xe2
      003986 94                    3117 	.db 0x94
      003987 80                    3118 	.db 0x80
      003988 E2                    3119 	.db 0xe2
      003989 94                    3120 	.db 0x94
      00398A 80                    3121 	.db 0x80
      00398B E2                    3122 	.db 0xe2
      00398C 94                    3123 	.db 0x94
      00398D 80                    3124 	.db 0x80
      00398E E2                    3125 	.db 0xe2
      00398F 94                    3126 	.db 0x94
      003990 80                    3127 	.db 0x80
      003991 E2                    3128 	.db 0xe2
      003992 94                    3129 	.db 0x94
      003993 80                    3130 	.db 0x80
      003994 E2                    3131 	.db 0xe2
      003995 94                    3132 	.db 0x94
      003996 80                    3133 	.db 0x80
      003997 E2                    3134 	.db 0xe2
      003998 94                    3135 	.db 0x94
      003999 80                    3136 	.db 0x80
      00399A E2                    3137 	.db 0xe2
      00399B 94                    3138 	.db 0x94
      00399C 80                    3139 	.db 0x80
      00399D E2                    3140 	.db 0xe2
      00399E 94                    3141 	.db 0x94
      00399F 80                    3142 	.db 0x80
      0039A0 E2                    3143 	.db 0xe2
      0039A1 94                    3144 	.db 0x94
      0039A2 80                    3145 	.db 0x80
      0039A3 E2                    3146 	.db 0xe2
      0039A4 94                    3147 	.db 0x94
      0039A5 80                    3148 	.db 0x80
      0039A6 E2                    3149 	.db 0xe2
      0039A7 94                    3150 	.db 0x94
      0039A8 80                    3151 	.db 0x80
      0039A9 E2                    3152 	.db 0xe2
      0039AA 94                    3153 	.db 0x94
      0039AB 80                    3154 	.db 0x80
      0039AC E2                    3155 	.db 0xe2
      0039AD 94                    3156 	.db 0x94
      0039AE 80                    3157 	.db 0x80
      0039AF E2                    3158 	.db 0xe2
      0039B0 94                    3159 	.db 0x94
      0039B1 80                    3160 	.db 0x80
      0039B2 E2                    3161 	.db 0xe2
      0039B3 94                    3162 	.db 0x94
      0039B4 80                    3163 	.db 0x80
      0039B5 E2                    3164 	.db 0xe2
      0039B6 94                    3165 	.db 0x94
      0039B7 80                    3166 	.db 0x80
      0039B8 E2                    3167 	.db 0xe2
      0039B9 94                    3168 	.db 0x94
      0039BA 80                    3169 	.db 0x80
      0039BB E2                    3170 	.db 0xe2
      0039BC 94                    3171 	.db 0x94
      0039BD A4                    3172 	.db 0xa4
      0039BE 0A                    3173 	.db 0x0a
      0039BF 0D                    3174 	.db 0x0d
      0039C0 00                    3175 	.db 0x00
                                   3176 	.area CSEG    (CODE)
                                   3177 	.area CONST   (CODE)
      0039C1                       3178 ___str_3:
      0039C1 E2                    3179 	.db 0xe2
      0039C2 94                    3180 	.db 0x94
      0039C3 82                    3181 	.db 0x82
      0039C4 20 20 43 6F 6D 6D 61  3182 	.ascii "  Command   "
             6E 64 20 20 20
      0039D0 E2                    3183 	.db 0xe2
      0039D1 94                    3184 	.db 0x94
      0039D2 82                    3185 	.db 0x82
      0039D3 20 20 20 20 20 20 20  3186 	.ascii "               Description                    "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003A01 E2                    3187 	.db 0xe2
      003A02 94                    3188 	.db 0x94
      003A03 82                    3189 	.db 0x82
      003A04 0A                    3190 	.db 0x0a
      003A05 0D                    3191 	.db 0x0d
      003A06 00                    3192 	.db 0x00
                                   3193 	.area CSEG    (CODE)
                                   3194 	.area CONST   (CODE)
      003A07                       3195 ___str_4:
      003A07 E2                    3196 	.db 0xe2
      003A08 94                    3197 	.db 0x94
      003A09 82                    3198 	.db 0x82
      003A0A 20 20 20 20 4D 20 20  3199 	.ascii "    M      "
             20 20 20 20
      003A15 E2                    3200 	.db 0xe2
      003A16 94                    3201 	.db 0x94
      003A17 82                    3202 	.db 0x82
      003A18 20 4D 61 6E 75 61 6C  3203 	.ascii " Manual SPI Mode (Direct Register Control)     "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20
      003A47 E2                    3204 	.db 0xe2
      003A48 94                    3205 	.db 0x94
      003A49 82                    3206 	.db 0x82
      003A4A 0A                    3207 	.db 0x0a
      003A4B 0D                    3208 	.db 0x0d
      003A4C 00                    3209 	.db 0x00
                                   3210 	.area CSEG    (CODE)
                                   3211 	.area CONST   (CODE)
      003A4D                       3212 ___str_5:
      003A4D E2                    3213 	.db 0xe2
      003A4E 94                    3214 	.db 0x94
      003A4F 82                    3215 	.db 0x82
      003A50 20 20 20 20 53 20 20  3216 	.ascii "    S      "
             20 20 20 20
      003A5B E2                    3217 	.db 0xe2
      003A5C 94                    3218 	.db 0x94
      003A5D 82                    3219 	.db 0x82
      003A5E 20 47 65 6E 65 72 61  3220 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003A8D E2                    3221 	.db 0xe2
      003A8E 94                    3222 	.db 0x94
      003A8F 82                    3223 	.db 0x82
      003A90 0A                    3224 	.db 0x0a
      003A91 0D                    3225 	.db 0x0d
      003A92 00                    3226 	.db 0x00
                                   3227 	.area CSEG    (CODE)
                                   3228 	.area CONST   (CODE)
      003A93                       3229 ___str_6:
      003A93 E2                    3230 	.db 0xe2
      003A94 94                    3231 	.db 0x94
      003A95 82                    3232 	.db 0x82
      003A96 20 20 20 20 54 20 20  3233 	.ascii "    T      "
             20 20 20 20
      003AA1 E2                    3234 	.db 0xe2
      003AA2 94                    3235 	.db 0x94
      003AA3 82                    3236 	.db 0x82
      003AA4 20 47 65 6E 65 72 61  3237 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003AD3 E2                    3238 	.db 0xe2
      003AD4 94                    3239 	.db 0x94
      003AD5 82                    3240 	.db 0x82
      003AD6 0A                    3241 	.db 0x0a
      003AD7 0D                    3242 	.db 0x0d
      003AD8 00                    3243 	.db 0x00
                                   3244 	.area CSEG    (CODE)
                                   3245 	.area CONST   (CODE)
      003AD9                       3246 ___str_7:
      003AD9 E2                    3247 	.db 0xe2
      003ADA 94                    3248 	.db 0x94
      003ADB 82                    3249 	.db 0x82
      003ADC 20 20 20 20 52 20 20  3250 	.ascii "    R      "
             20 20 20 20
      003AE7 E2                    3251 	.db 0xe2
      003AE8 94                    3252 	.db 0x94
      003AE9 82                    3253 	.db 0x82
      003AEA 20 52 61 6D 70 20 77  3254 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B19 E2                    3255 	.db 0xe2
      003B1A 94                    3256 	.db 0x94
      003B1B 82                    3257 	.db 0x82
      003B1C 0A                    3258 	.db 0x0a
      003B1D 0D                    3259 	.db 0x0d
      003B1E 00                    3260 	.db 0x00
                                   3261 	.area CSEG    (CODE)
                                   3262 	.area CONST   (CODE)
      003B1F                       3263 ___str_8:
      003B1F E2                    3264 	.db 0xe2
      003B20 94                    3265 	.db 0x94
      003B21 82                    3266 	.db 0x82
      003B22 20 20 20 20 3F 20 20  3267 	.ascii "    ?      "
             20 20 20 20
      003B2D E2                    3268 	.db 0xe2
      003B2E 94                    3269 	.db 0x94
      003B2F 82                    3270 	.db 0x82
      003B30 20 44 69 73 70 6C 61  3271 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B5F E2                    3272 	.db 0xe2
      003B60 94                    3273 	.db 0x94
      003B61 82                    3274 	.db 0x82
      003B62 0A                    3275 	.db 0x0a
      003B63 0D                    3276 	.db 0x0d
      003B64 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      003B65                       3280 ___str_9:
      003B65 E2                    3281 	.db 0xe2
      003B66 94                    3282 	.db 0x94
      003B67 94                    3283 	.db 0x94
      003B68 E2                    3284 	.db 0xe2
      003B69 94                    3285 	.db 0x94
      003B6A 80                    3286 	.db 0x80
      003B6B E2                    3287 	.db 0xe2
      003B6C 94                    3288 	.db 0x94
      003B6D 80                    3289 	.db 0x80
      003B6E E2                    3290 	.db 0xe2
      003B6F 94                    3291 	.db 0x94
      003B70 80                    3292 	.db 0x80
      003B71 E2                    3293 	.db 0xe2
      003B72 94                    3294 	.db 0x94
      003B73 80                    3295 	.db 0x80
      003B74 E2                    3296 	.db 0xe2
      003B75 94                    3297 	.db 0x94
      003B76 80                    3298 	.db 0x80
      003B77 E2                    3299 	.db 0xe2
      003B78 94                    3300 	.db 0x94
      003B79 80                    3301 	.db 0x80
      003B7A E2                    3302 	.db 0xe2
      003B7B 94                    3303 	.db 0x94
      003B7C 80                    3304 	.db 0x80
      003B7D E2                    3305 	.db 0xe2
      003B7E 94                    3306 	.db 0x94
      003B7F 80                    3307 	.db 0x80
      003B80 E2                    3308 	.db 0xe2
      003B81 94                    3309 	.db 0x94
      003B82 80                    3310 	.db 0x80
      003B83 E2                    3311 	.db 0xe2
      003B84 94                    3312 	.db 0x94
      003B85 80                    3313 	.db 0x80
      003B86 E2                    3314 	.db 0xe2
      003B87 94                    3315 	.db 0x94
      003B88 80                    3316 	.db 0x80
      003B89 E2                    3317 	.db 0xe2
      003B8A 94                    3318 	.db 0x94
      003B8B B4                    3319 	.db 0xb4
      003B8C E2                    3320 	.db 0xe2
      003B8D 94                    3321 	.db 0x94
      003B8E 80                    3322 	.db 0x80
      003B8F E2                    3323 	.db 0xe2
      003B90 94                    3324 	.db 0x94
      003B91 80                    3325 	.db 0x80
      003B92 E2                    3326 	.db 0xe2
      003B93 94                    3327 	.db 0x94
      003B94 80                    3328 	.db 0x80
      003B95 E2                    3329 	.db 0xe2
      003B96 94                    3330 	.db 0x94
      003B97 80                    3331 	.db 0x80
      003B98 E2                    3332 	.db 0xe2
      003B99 94                    3333 	.db 0x94
      003B9A 80                    3334 	.db 0x80
      003B9B E2                    3335 	.db 0xe2
      003B9C 94                    3336 	.db 0x94
      003B9D 80                    3337 	.db 0x80
      003B9E E2                    3338 	.db 0xe2
      003B9F 94                    3339 	.db 0x94
      003BA0 80                    3340 	.db 0x80
      003BA1 E2                    3341 	.db 0xe2
      003BA2 94                    3342 	.db 0x94
      003BA3 80                    3343 	.db 0x80
      003BA4 E2                    3344 	.db 0xe2
      003BA5 94                    3345 	.db 0x94
      003BA6 80                    3346 	.db 0x80
      003BA7 E2                    3347 	.db 0xe2
      003BA8 94                    3348 	.db 0x94
      003BA9 80                    3349 	.db 0x80
      003BAA E2                    3350 	.db 0xe2
      003BAB 94                    3351 	.db 0x94
      003BAC 80                    3352 	.db 0x80
      003BAD E2                    3353 	.db 0xe2
      003BAE 94                    3354 	.db 0x94
      003BAF 80                    3355 	.db 0x80
      003BB0 E2                    3356 	.db 0xe2
      003BB1 94                    3357 	.db 0x94
      003BB2 80                    3358 	.db 0x80
      003BB3 E2                    3359 	.db 0xe2
      003BB4 94                    3360 	.db 0x94
      003BB5 80                    3361 	.db 0x80
      003BB6 E2                    3362 	.db 0xe2
      003BB7 94                    3363 	.db 0x94
      003BB8 80                    3364 	.db 0x80
      003BB9 E2                    3365 	.db 0xe2
      003BBA 94                    3366 	.db 0x94
      003BBB 80                    3367 	.db 0x80
      003BBC E2                    3368 	.db 0xe2
      003BBD 94                    3369 	.db 0x94
      003BBE 80                    3370 	.db 0x80
      003BBF E2                    3371 	.db 0xe2
      003BC0 94                    3372 	.db 0x94
      003BC1 80                    3373 	.db 0x80
      003BC2 E2                    3374 	.db 0xe2
      003BC3 94                    3375 	.db 0x94
      003BC4 80                    3376 	.db 0x80
      003BC5 E2                    3377 	.db 0xe2
      003BC6 94                    3378 	.db 0x94
      003BC7 80                    3379 	.db 0x80
      003BC8 E2                    3380 	.db 0xe2
      003BC9 94                    3381 	.db 0x94
      003BCA 80                    3382 	.db 0x80
      003BCB E2                    3383 	.db 0xe2
      003BCC 94                    3384 	.db 0x94
      003BCD 80                    3385 	.db 0x80
      003BCE E2                    3386 	.db 0xe2
      003BCF 94                    3387 	.db 0x94
      003BD0 80                    3388 	.db 0x80
      003BD1 E2                    3389 	.db 0xe2
      003BD2 94                    3390 	.db 0x94
      003BD3 80                    3391 	.db 0x80
      003BD4 E2                    3392 	.db 0xe2
      003BD5 94                    3393 	.db 0x94
      003BD6 80                    3394 	.db 0x80
      003BD7 E2                    3395 	.db 0xe2
      003BD8 94                    3396 	.db 0x94
      003BD9 80                    3397 	.db 0x80
      003BDA E2                    3398 	.db 0xe2
      003BDB 94                    3399 	.db 0x94
      003BDC 80                    3400 	.db 0x80
      003BDD E2                    3401 	.db 0xe2
      003BDE 94                    3402 	.db 0x94
      003BDF 80                    3403 	.db 0x80
      003BE0 E2                    3404 	.db 0xe2
      003BE1 94                    3405 	.db 0x94
      003BE2 80                    3406 	.db 0x80
      003BE3 E2                    3407 	.db 0xe2
      003BE4 94                    3408 	.db 0x94
      003BE5 80                    3409 	.db 0x80
      003BE6 E2                    3410 	.db 0xe2
      003BE7 94                    3411 	.db 0x94
      003BE8 80                    3412 	.db 0x80
      003BE9 E2                    3413 	.db 0xe2
      003BEA 94                    3414 	.db 0x94
      003BEB 80                    3415 	.db 0x80
      003BEC E2                    3416 	.db 0xe2
      003BED 94                    3417 	.db 0x94
      003BEE 80                    3418 	.db 0x80
      003BEF E2                    3419 	.db 0xe2
      003BF0 94                    3420 	.db 0x94
      003BF1 80                    3421 	.db 0x80
      003BF2 E2                    3422 	.db 0xe2
      003BF3 94                    3423 	.db 0x94
      003BF4 80                    3424 	.db 0x80
      003BF5 E2                    3425 	.db 0xe2
      003BF6 94                    3426 	.db 0x94
      003BF7 80                    3427 	.db 0x80
      003BF8 E2                    3428 	.db 0xe2
      003BF9 94                    3429 	.db 0x94
      003BFA 80                    3430 	.db 0x80
      003BFB E2                    3431 	.db 0xe2
      003BFC 94                    3432 	.db 0x94
      003BFD 80                    3433 	.db 0x80
      003BFE E2                    3434 	.db 0xe2
      003BFF 94                    3435 	.db 0x94
      003C00 80                    3436 	.db 0x80
      003C01 E2                    3437 	.db 0xe2
      003C02 94                    3438 	.db 0x94
      003C03 80                    3439 	.db 0x80
      003C04 E2                    3440 	.db 0xe2
      003C05 94                    3441 	.db 0x94
      003C06 80                    3442 	.db 0x80
      003C07 E2                    3443 	.db 0xe2
      003C08 94                    3444 	.db 0x94
      003C09 80                    3445 	.db 0x80
      003C0A E2                    3446 	.db 0xe2
      003C0B 94                    3447 	.db 0x94
      003C0C 80                    3448 	.db 0x80
      003C0D E2                    3449 	.db 0xe2
      003C0E 94                    3450 	.db 0x94
      003C0F 80                    3451 	.db 0x80
      003C10 E2                    3452 	.db 0xe2
      003C11 94                    3453 	.db 0x94
      003C12 80                    3454 	.db 0x80
      003C13 E2                    3455 	.db 0xe2
      003C14 94                    3456 	.db 0x94
      003C15 80                    3457 	.db 0x80
      003C16 E2                    3458 	.db 0xe2
      003C17 94                    3459 	.db 0x94
      003C18 80                    3460 	.db 0x80
      003C19 E2                    3461 	.db 0xe2
      003C1A 94                    3462 	.db 0x94
      003C1B 98                    3463 	.db 0x98
      003C1C 0A                    3464 	.db 0x0a
      003C1D 0D                    3465 	.db 0x0d
      003C1E 00                    3466 	.db 0x00
                                   3467 	.area CSEG    (CODE)
                                   3468 	.area CONST   (CODE)
      003C1F                       3469 ___str_10:
      003C1F 0A                    3470 	.db 0x0a
      003C20 0D                    3471 	.db 0x0d
      003C21 3E 3E 20 45 6E 74 65  3472 	.ascii ">> Enter command: "
             72 20 63 6F 6D 6D 61
             6E 64 3A 20
      003C33 00                    3473 	.db 0x00
                                   3474 	.area CSEG    (CODE)
                                   3475 	.area CONST   (CODE)
      003C34                       3476 ___str_11:
      003C34 7C 20 24 20 25 63     3477 	.ascii "| $ %c"
      003C3A 0A                    3478 	.db 0x0a
      003C3B 0D                    3479 	.db 0x0d
      003C3C 00                    3480 	.db 0x00
                                   3481 	.area CSEG    (CODE)
                                   3482 	.area CONST   (CODE)
      003C3D                       3483 ___str_12:
      003C3D 0A                    3484 	.db 0x0a
      003C3E 0D                    3485 	.db 0x0d
      003C3F 00                    3486 	.db 0x00
                                   3487 	.area CSEG    (CODE)
                                   3488 	.area CONST   (CODE)
      003C40                       3489 ___str_13:
      003C40 3E 3E 20 53 49 4E 45  3490 	.ascii ">> SINE WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003C60 0A                    3491 	.db 0x0a
      003C61 0D                    3492 	.db 0x0d
      003C62 00                    3493 	.db 0x00
                                   3494 	.area CSEG    (CODE)
                                   3495 	.area CONST   (CODE)
      003C63                       3496 ___str_14:
      003C63 3E 3E 20 53 49 4E 20  3497 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003C82 0A                    3498 	.db 0x0a
      003C83 0D                    3499 	.db 0x0d
      003C84 00                    3500 	.db 0x00
                                   3501 	.area CSEG    (CODE)
                                   3502 	.area CONST   (CODE)
      003C85                       3503 ___str_15:
      003C85 3E 3E 20 54 52 49 41  3504 	.ascii ">> TRIANGULAR WAVE GENERATION COMPLETE"
             4E 47 55 4C 41 52 20
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003CAB 0A                    3505 	.db 0x0a
      003CAC 0D                    3506 	.db 0x0d
      003CAD 00                    3507 	.db 0x00
                                   3508 	.area CSEG    (CODE)
                                   3509 	.area CONST   (CODE)
      003CAE                       3510 ___str_16:
      003CAE 3E 3E 20 52 41 4D 50  3511 	.ascii ">> RAMP WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003CCE 0A                    3512 	.db 0x0a
      003CCF 0D                    3513 	.db 0x0d
      003CD0 00                    3514 	.db 0x00
                                   3515 	.area CSEG    (CODE)
                                   3516 	.area CONST   (CODE)
      003CD1                       3517 ___str_17:
      003CD1 3E 3E 20 49 4E 56 41  3518 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003CE1 0A                    3519 	.db 0x0a
      003CE2 0D                    3520 	.db 0x0d
      003CE3 00                    3521 	.db 0x00
                                   3522 	.area CSEG    (CODE)
                                   3523 	.area CONST   (CODE)
      003CE4                       3524 ___str_18:
      003CE4 E2                    3525 	.db 0xe2
      003CE5 94                    3526 	.db 0x94
      003CE6 82                    3527 	.db 0x82
      003CE7 20 45 6E 74 65 72 20  3528 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003D0B 0A                    3529 	.db 0x0a
      003D0C 0D                    3530 	.db 0x0d
      003D0D 7C                    3531 	.ascii "|"
      003D0E 00                    3532 	.db 0x00
                                   3533 	.area CSEG    (CODE)
                                   3534 	.area CONST   (CODE)
      003D0F                       3535 ___str_19:
      003D0F 24 20                 3536 	.ascii "$ "
      003D11 00                    3537 	.db 0x00
                                   3538 	.area CSEG    (CODE)
                                   3539 	.area CONST   (CODE)
      003D12                       3540 ___str_20:
      003D12 0A                    3541 	.db 0x0a
      003D13 0D                    3542 	.db 0x0d
      003D14 E2                    3543 	.db 0xe2
      003D15 94                    3544 	.db 0x94
      003D16 82                    3545 	.db 0x82
      003D17 20 45 6E 74 65 72 65  3546 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003D2C 0A                    3547 	.db 0x0a
      003D2D 0D                    3548 	.db 0x0d
      003D2E 00                    3549 	.db 0x00
                                   3550 	.area CSEG    (CODE)
                                   3551 	.area CONST   (CODE)
      003D2F                       3552 ___str_21:
      003D2F 25 64                 3553 	.ascii "%d"
      003D31 0A                    3554 	.db 0x0a
      003D32 0D                    3555 	.db 0x0d
      003D33 00                    3556 	.db 0x00
                                   3557 	.area CSEG    (CODE)
                                   3558 	.area XINIT   (CODE)
      003D3F                       3559 __xinit__ms_flag:
      003D3F 00                    3560 	.db #0x00	; 0
      003D40                       3561 __xinit__transmission_complete:
      003D40 00 00                 3562 	.byte #0x00, #0x00	;  0
                                   3563 	.area CABS    (ABS,CODE)
