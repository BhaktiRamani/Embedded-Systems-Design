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
      000404                        478 _bit_bang_spi_number_65536_49:
      000404                        479 	.ds 1
      000405                        480 _take_data_input_65537_53:
      000405                        481 	.ds 4
      000409                        482 _take_data_data_65538_57:
      000409                        483 	.ds 1
      00040A                        484 _mannual_spi_number_65536_60:
      00040A                        485 	.ds 1
      00040B                        486 _mannual_spi_dac_value_index_65536_61:
      00040B                        487 	.ds 2
      00040D                        488 _mannual_spi_dac_data_65536_61:
      00040D                        489 	.ds 2
      00040F                        490 _bit_bang_spi_write_data_65536_71:
      00040F                        491 	.ds 2
      000411                        492 _spi_triangular_wave_number_65536_77:
      000411                        493 	.ds 2
      000413                        494 _spi_triangular_wave_dac_value_index_65536_78:
      000413                        495 	.ds 2
      000415                        496 _spi_triangular_wave_dac_data_65536_78:
      000415                        497 	.ds 2
      000417                        498 _spi_ramp_signal_number_65536_84:
      000417                        499 	.ds 2
      000419                        500 _spi_ramp_signal_dac_value_index_65536_85:
      000419                        501 	.ds 2
      00041B                        502 _spi_ramp_signal_dac_data_65536_85:
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
      002003 02 21 D8         [24]  553 	ljmp	_main
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
                                    688 ;	spi_and_bit_banging.c:239: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      0020C2 74 A4            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 38            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 28 42         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 69            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 39            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 28 42         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 B0            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 28 42         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 73            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 3A            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 28 42         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      002116 74 B0            [12]  733 	mov	a,#___str_2
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 39            [12]  735 	mov	a,#(___str_2 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 28 42         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)     │\n\r");
      00212B 74 BC            [12]  744 	mov	a,#___str_4
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_4 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 28 42         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002140 74 02            [12]  755 	mov	a,#___str_5
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3B            [12]  757 	mov	a,#(___str_5 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 28 42         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      002155 74 48            [12]  766 	mov	a,#___str_6
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_6 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 28 42         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00216A 74 8E            [12]  777 	mov	a,#___str_7
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_7 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 28 42         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    R      │ Ramp wave                                     │\n\r");
      00217F 74 D4            [12]  788 	mov	a,#___str_8
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_8 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 28 42         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    ?      │ Display this help menu                        │\n\r");
      002194 74 1A            [12]  799 	mov	a,#___str_9
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3C            [12]  801 	mov	a,#(___str_9 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 28 42         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021A9 74 60            [12]  810 	mov	a,#___str_10
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_10 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 28 42         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("\n\r>> Enter command: ");
      0021BE 74 1A            [12]  821 	mov	a,#___str_11
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3D            [12]  823 	mov	a,#(___str_11 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 28 42         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: }
      0021D3 22               [24]  832 	ret
                                    833 ;------------------------------------------------------------
                                    834 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    835 ;------------------------------------------------------------
                                    836 ;	spi_and_bit_banging.c:255: void spi_transmission_stop(void) 
                                    837 ;	-----------------------------------------
                                    838 ;	 function spi_transmission_stop
                                    839 ;	-----------------------------------------
      0021D4                        840 _spi_transmission_stop:
                                    841 ;	spi_and_bit_banging.c:257: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0021D4 53 C3 BF         [24]  842 	anl	_SPCON,#0xbf
                                    843 ;	spi_and_bit_banging.c:258: }
      0021D7 22               [24]  844 	ret
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'main'
                                    847 ;------------------------------------------------------------
                                    848 ;user_input                Allocated with name '_main_user_input_131072_37'
                                    849 ;result                    Allocated with name '_main_result_262144_39'
                                    850 ;result2                   Allocated with name '_main_result2_262145_41'
                                    851 ;result3                   Allocated with name '_main_result3_262145_43'
                                    852 ;result4                   Allocated with name '_main_result4_262145_45'
                                    853 ;result5                   Allocated with name '_main_result5_262144_46'
                                    854 ;------------------------------------------------------------
                                    855 ;	spi_and_bit_banging.c:259: int main(void)
                                    856 ;	-----------------------------------------
                                    857 ;	 function main
                                    858 ;	-----------------------------------------
      0021D8                        859 _main:
                                    860 ;	spi_and_bit_banging.c:261: display_menu();
      0021D8 12 20 C2         [24]  861 	lcall	_display_menu
                                    862 ;	spi_and_bit_banging.c:262: spi_init();
      0021DB 12 25 D4         [24]  863 	lcall	_spi_init
                                    864 ;	spi_and_bit_banging.c:263: while(1)
      0021DE                        865 00111$:
                                    866 ;	spi_and_bit_banging.c:265: char user_input = getchar();
      0021DE 12 20 81         [24]  867 	lcall	_getchar
      0021E1 AE 82            [24]  868 	mov	r6,dpl
                                    869 ;	spi_and_bit_banging.c:266: printf("| $ %c\n\r", user_input);
      0021E3 8E 05            [24]  870 	mov	ar5,r6
      0021E5 7F 00            [12]  871 	mov	r7,#0x00
      0021E7 C0 06            [24]  872 	push	ar6
      0021E9 C0 05            [24]  873 	push	ar5
      0021EB C0 07            [24]  874 	push	ar7
      0021ED 74 2F            [12]  875 	mov	a,#___str_12
      0021EF C0 E0            [24]  876 	push	acc
      0021F1 74 3D            [12]  877 	mov	a,#(___str_12 >> 8)
      0021F3 C0 E0            [24]  878 	push	acc
      0021F5 74 80            [12]  879 	mov	a,#0x80
      0021F7 C0 E0            [24]  880 	push	acc
      0021F9 12 28 42         [24]  881 	lcall	_printf
      0021FC E5 81            [12]  882 	mov	a,sp
      0021FE 24 FB            [12]  883 	add	a,#0xfb
      002200 F5 81            [12]  884 	mov	sp,a
                                    885 ;	spi_and_bit_banging.c:267: printf("\n\r");
      002202 74 38            [12]  886 	mov	a,#___str_13
      002204 C0 E0            [24]  887 	push	acc
      002206 74 3D            [12]  888 	mov	a,#(___str_13 >> 8)
      002208 C0 E0            [24]  889 	push	acc
      00220A 74 80            [12]  890 	mov	a,#0x80
      00220C C0 E0            [24]  891 	push	acc
      00220E 12 28 42         [24]  892 	lcall	_printf
      002211 15 81            [12]  893 	dec	sp
      002213 15 81            [12]  894 	dec	sp
      002215 15 81            [12]  895 	dec	sp
      002217 D0 06            [24]  896 	pop	ar6
                                    897 ;	spi_and_bit_banging.c:268: switch(user_input)
      002219 BE 3F 03         [24]  898 	cjne	r6,#0x3f,00147$
      00221C 02 23 0A         [24]  899 	ljmp	00107$
      00221F                        900 00147$:
      00221F BE 42 02         [24]  901 	cjne	r6,#0x42,00148$
      002222 80 3F            [24]  902 	sjmp	00102$
      002224                        903 00148$:
      002224 BE 44 03         [24]  904 	cjne	r6,#0x44,00149$
      002227 02 22 EF         [24]  905 	ljmp	00106$
      00222A                        906 00149$:
      00222A BE 4D 02         [24]  907 	cjne	r6,#0x4d,00150$
      00222D 80 13            [24]  908 	sjmp	00101$
      00222F                        909 00150$:
      00222F BE 52 03         [24]  910 	cjne	r6,#0x52,00151$
      002232 02 22 CD         [24]  911 	ljmp	00105$
      002235                        912 00151$:
      002235 BE 53 02         [24]  913 	cjne	r6,#0x53,00152$
      002238 80 4D            [24]  914 	sjmp	00103$
      00223A                        915 00152$:
      00223A BE 54 02         [24]  916 	cjne	r6,#0x54,00153$
      00223D 80 69            [24]  917 	sjmp	00104$
      00223F                        918 00153$:
      00223F 02 23 10         [24]  919 	ljmp	00108$
                                    920 ;	spi_and_bit_banging.c:270: case 'M':
      002242                        921 00101$:
                                    922 ;	spi_and_bit_banging.c:272: unsigned char result = take_data();
      002242 12 23 73         [24]  923 	lcall	_take_data
                                    924 ;	spi_and_bit_banging.c:273: mannual_spi(result);
      002245 12 24 C7         [24]  925 	lcall	_mannual_spi
                                    926 ;	spi_and_bit_banging.c:274: printf(">> SINE WAVE GENERATION COMPLETE\n\r");
      002248 74 3B            [12]  927 	mov	a,#___str_14
      00224A C0 E0            [24]  928 	push	acc
      00224C 74 3D            [12]  929 	mov	a,#(___str_14 >> 8)
      00224E C0 E0            [24]  930 	push	acc
      002250 74 80            [12]  931 	mov	a,#0x80
      002252 C0 E0            [24]  932 	push	acc
      002254 12 28 42         [24]  933 	lcall	_printf
      002257 15 81            [12]  934 	dec	sp
      002259 15 81            [12]  935 	dec	sp
      00225B 15 81            [12]  936 	dec	sp
                                    937 ;	spi_and_bit_banging.c:275: spi_transmission_stop();
      00225D 12 21 D4         [24]  938 	lcall	_spi_transmission_stop
                                    939 ;	spi_and_bit_banging.c:276: break;
      002260 02 21 DE         [24]  940 	ljmp	00111$
                                    941 ;	spi_and_bit_banging.c:279: case 'B':
      002263                        942 00102$:
                                    943 ;	spi_and_bit_banging.c:281: bit_bang_spi_init();
      002263 12 25 DE         [24]  944 	lcall	_bit_bang_spi_init
                                    945 ;	spi_and_bit_banging.c:282: unsigned char result2 = take_data();
      002266 12 23 73         [24]  946 	lcall	_take_data
                                    947 ;	spi_and_bit_banging.c:283: bit_bang_spi(result2);
      002269 12 23 40         [24]  948 	lcall	_bit_bang_spi
                                    949 ;	spi_and_bit_banging.c:284: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00226C 74 5E            [12]  950 	mov	a,#___str_15
      00226E C0 E0            [24]  951 	push	acc
      002270 74 3D            [12]  952 	mov	a,#(___str_15 >> 8)
      002272 C0 E0            [24]  953 	push	acc
      002274 74 80            [12]  954 	mov	a,#0x80
      002276 C0 E0            [24]  955 	push	acc
      002278 12 28 42         [24]  956 	lcall	_printf
      00227B 15 81            [12]  957 	dec	sp
      00227D 15 81            [12]  958 	dec	sp
      00227F 15 81            [12]  959 	dec	sp
                                    960 ;	spi_and_bit_banging.c:285: spi_init();
      002281 12 25 D4         [24]  961 	lcall	_spi_init
                                    962 ;	spi_and_bit_banging.c:286: break;
      002284 02 21 DE         [24]  963 	ljmp	00111$
                                    964 ;	spi_and_bit_banging.c:289: case 'S':
      002287                        965 00103$:
                                    966 ;	spi_and_bit_banging.c:291: spi_init();
      002287 12 25 D4         [24]  967 	lcall	_spi_init
                                    968 ;	spi_and_bit_banging.c:292: unsigned char result3 = take_data();
      00228A 12 23 73         [24]  969 	lcall	_take_data
                                    970 ;	spi_and_bit_banging.c:293: mannual_spi(result3);
      00228D 12 24 C7         [24]  971 	lcall	_mannual_spi
                                    972 ;	spi_and_bit_banging.c:294: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      002290 74 83            [12]  973 	mov	a,#___str_16
      002292 C0 E0            [24]  974 	push	acc
      002294 74 3D            [12]  975 	mov	a,#(___str_16 >> 8)
      002296 C0 E0            [24]  976 	push	acc
      002298 74 80            [12]  977 	mov	a,#0x80
      00229A C0 E0            [24]  978 	push	acc
      00229C 12 28 42         [24]  979 	lcall	_printf
      00229F 15 81            [12]  980 	dec	sp
      0022A1 15 81            [12]  981 	dec	sp
      0022A3 15 81            [12]  982 	dec	sp
                                    983 ;	spi_and_bit_banging.c:295: break;
      0022A5 02 21 DE         [24]  984 	ljmp	00111$
                                    985 ;	spi_and_bit_banging.c:299: case 'T':
      0022A8                        986 00104$:
                                    987 ;	spi_and_bit_banging.c:301: spi_init();
      0022A8 12 25 D4         [24]  988 	lcall	_spi_init
                                    989 ;	spi_and_bit_banging.c:302: unsigned char result4 = take_data();
      0022AB 12 23 73         [24]  990 	lcall	_take_data
                                    991 ;	spi_and_bit_banging.c:303: spi_triangular_wave(result4);
      0022AE 7E 00            [12]  992 	mov	r6,#0x00
      0022B0 8E 83            [24]  993 	mov	dph,r6
      0022B2 12 26 38         [24]  994 	lcall	_spi_triangular_wave
                                    995 ;	spi_and_bit_banging.c:304: printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
      0022B5 74 A5            [12]  996 	mov	a,#___str_17
      0022B7 C0 E0            [24]  997 	push	acc
      0022B9 74 3D            [12]  998 	mov	a,#(___str_17 >> 8)
      0022BB C0 E0            [24]  999 	push	acc
      0022BD 74 80            [12] 1000 	mov	a,#0x80
      0022BF C0 E0            [24] 1001 	push	acc
      0022C1 12 28 42         [24] 1002 	lcall	_printf
      0022C4 15 81            [12] 1003 	dec	sp
      0022C6 15 81            [12] 1004 	dec	sp
      0022C8 15 81            [12] 1005 	dec	sp
                                   1006 ;	spi_and_bit_banging.c:305: break;
      0022CA 02 21 DE         [24] 1007 	ljmp	00111$
                                   1008 ;	spi_and_bit_banging.c:308: case 'R':
      0022CD                       1009 00105$:
                                   1010 ;	spi_and_bit_banging.c:310: unsigned char result5 = take_data();
      0022CD 12 23 73         [24] 1011 	lcall	_take_data
                                   1012 ;	spi_and_bit_banging.c:311: spi_ramp_signal(result5);
      0022D0 7E 00            [12] 1013 	mov	r6,#0x00
      0022D2 8E 83            [24] 1014 	mov	dph,r6
      0022D4 12 27 16         [24] 1015 	lcall	_spi_ramp_signal
                                   1016 ;	spi_and_bit_banging.c:312: printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
      0022D7 74 CE            [12] 1017 	mov	a,#___str_18
      0022D9 C0 E0            [24] 1018 	push	acc
      0022DB 74 3D            [12] 1019 	mov	a,#(___str_18 >> 8)
      0022DD C0 E0            [24] 1020 	push	acc
      0022DF 74 80            [12] 1021 	mov	a,#0x80
      0022E1 C0 E0            [24] 1022 	push	acc
      0022E3 12 28 42         [24] 1023 	lcall	_printf
      0022E6 15 81            [12] 1024 	dec	sp
      0022E8 15 81            [12] 1025 	dec	sp
      0022EA 15 81            [12] 1026 	dec	sp
                                   1027 ;	spi_and_bit_banging.c:313: break;
      0022EC 02 21 DE         [24] 1028 	ljmp	00111$
                                   1029 ;	spi_and_bit_banging.c:316: case 'D':
      0022EF                       1030 00106$:
                                   1031 ;	spi_and_bit_banging.c:318: demo_mode();
      0022EF 12 23 28         [24] 1032 	lcall	_demo_mode
                                   1033 ;	spi_and_bit_banging.c:319: printf(">> DEMO COMPLETE\n\r");
      0022F2 74 F1            [12] 1034 	mov	a,#___str_19
      0022F4 C0 E0            [24] 1035 	push	acc
      0022F6 74 3D            [12] 1036 	mov	a,#(___str_19 >> 8)
      0022F8 C0 E0            [24] 1037 	push	acc
      0022FA 74 80            [12] 1038 	mov	a,#0x80
      0022FC C0 E0            [24] 1039 	push	acc
      0022FE 12 28 42         [24] 1040 	lcall	_printf
      002301 15 81            [12] 1041 	dec	sp
      002303 15 81            [12] 1042 	dec	sp
      002305 15 81            [12] 1043 	dec	sp
                                   1044 ;	spi_and_bit_banging.c:320: break;
      002307 02 21 DE         [24] 1045 	ljmp	00111$
                                   1046 ;	spi_and_bit_banging.c:322: case '?':
      00230A                       1047 00107$:
                                   1048 ;	spi_and_bit_banging.c:323: display_menu();
      00230A 12 20 C2         [24] 1049 	lcall	_display_menu
                                   1050 ;	spi_and_bit_banging.c:324: break;  
      00230D 02 21 DE         [24] 1051 	ljmp	00111$
                                   1052 ;	spi_and_bit_banging.c:326: default:
      002310                       1053 00108$:
                                   1054 ;	spi_and_bit_banging.c:327: printf(">> INVALID INPUT\n\r");
      002310 74 04            [12] 1055 	mov	a,#___str_20
      002312 C0 E0            [24] 1056 	push	acc
      002314 74 3E            [12] 1057 	mov	a,#(___str_20 >> 8)
      002316 C0 E0            [24] 1058 	push	acc
      002318 74 80            [12] 1059 	mov	a,#0x80
      00231A C0 E0            [24] 1060 	push	acc
      00231C 12 28 42         [24] 1061 	lcall	_printf
      00231F 15 81            [12] 1062 	dec	sp
      002321 15 81            [12] 1063 	dec	sp
      002323 15 81            [12] 1064 	dec	sp
                                   1065 ;	spi_and_bit_banging.c:332: }
                                   1066 ;	spi_and_bit_banging.c:334: }
      002325 02 21 DE         [24] 1067 	ljmp	00111$
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'demo_mode'
                                   1070 ;------------------------------------------------------------
                                   1071 ;	spi_and_bit_banging.c:340: void demo_mode()
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function demo_mode
                                   1074 ;	-----------------------------------------
      002328                       1075 _demo_mode:
                                   1076 ;	spi_and_bit_banging.c:342: mannual_spi(7);
      002328 75 82 07         [24] 1077 	mov	dpl,#0x07
      00232B 12 24 C7         [24] 1078 	lcall	_mannual_spi
                                   1079 ;	spi_and_bit_banging.c:343: bit_bang_spi(7);
      00232E 75 82 07         [24] 1080 	mov	dpl,#0x07
      002331 12 23 40         [24] 1081 	lcall	_bit_bang_spi
                                   1082 ;	spi_and_bit_banging.c:344: spi_ramp_signal(7);
      002334 90 00 07         [24] 1083 	mov	dptr,#0x0007
      002337 12 27 16         [24] 1084 	lcall	_spi_ramp_signal
                                   1085 ;	spi_and_bit_banging.c:345: spi_triangular_wave(7);
      00233A 90 00 07         [24] 1086 	mov	dptr,#0x0007
                                   1087 ;	spi_and_bit_banging.c:346: }
      00233D 02 26 38         [24] 1088 	ljmp	_spi_triangular_wave
                                   1089 ;------------------------------------------------------------
                                   1090 ;Allocation info for local variables in function 'bit_bang_spi'
                                   1091 ;------------------------------------------------------------
                                   1092 ;number                    Allocated with name '_bit_bang_spi_number_65536_49'
                                   1093 ;------------------------------------------------------------
                                   1094 ;	spi_and_bit_banging.c:350: void bit_bang_spi(unsigned char number)
                                   1095 ;	-----------------------------------------
                                   1096 ;	 function bit_bang_spi
                                   1097 ;	-----------------------------------------
      002340                       1098 _bit_bang_spi:
      002340 E5 82            [12] 1099 	mov	a,dpl
      002342 90 04 04         [24] 1100 	mov	dptr,#_bit_bang_spi_number_65536_49
      002345 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	spi_and_bit_banging.c:352: while(number > 0)
      002346                       1103 00101$:
      002346 90 04 04         [24] 1104 	mov	dptr,#_bit_bang_spi_number_65536_49
      002349 E0               [24] 1105 	movx	a,@dptr
      00234A FF               [12] 1106 	mov	r7,a
      00234B E0               [24] 1107 	movx	a,@dptr
      00234C 60 24            [24] 1108 	jz	00104$
                                   1109 ;	spi_and_bit_banging.c:354: bit_bang_spi_write(TEST_DATA);
      00234E 90 1F F0         [24] 1110 	mov	dptr,#0x1ff0
      002351 C0 07            [24] 1111 	push	ar7
      002353 12 25 E8         [24] 1112 	lcall	_bit_bang_spi_write
                                   1113 ;	spi_and_bit_banging.c:355: delay_ms(DELAY_PERIOD);
      002356 90 01 F4         [24] 1114 	mov	dptr,#0x01f4
      002359 12 20 8F         [24] 1115 	lcall	_delay_ms
                                   1116 ;	spi_and_bit_banging.c:356: bit_bang_spi_write(IDLE_DATA);
      00235C 90 10 00         [24] 1117 	mov	dptr,#0x1000
      00235F 12 25 E8         [24] 1118 	lcall	_bit_bang_spi_write
                                   1119 ;	spi_and_bit_banging.c:357: delay_ms(DELAY_PERIOD);
      002362 90 01 F4         [24] 1120 	mov	dptr,#0x01f4
      002365 12 20 8F         [24] 1121 	lcall	_delay_ms
      002368 D0 07            [24] 1122 	pop	ar7
                                   1123 ;	spi_and_bit_banging.c:358: number = number - 1;
      00236A EF               [12] 1124 	mov	a,r7
      00236B 14               [12] 1125 	dec	a
      00236C 90 04 04         [24] 1126 	mov	dptr,#_bit_bang_spi_number_65536_49
      00236F F0               [24] 1127 	movx	@dptr,a
      002370 80 D4            [24] 1128 	sjmp	00101$
      002372                       1129 00104$:
                                   1130 ;	spi_and_bit_banging.c:360: }
      002372 22               [24] 1131 	ret
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'take_data'
                                   1134 ;------------------------------------------------------------
                                   1135 ;input                     Allocated with name '_take_data_input_65537_53'
                                   1136 ;i                         Allocated with name '_take_data_i_65537_53'
                                   1137 ;c                         Allocated with name '_take_data_c_65537_53'
                                   1138 ;data                      Allocated with name '_take_data_data_65538_57'
                                   1139 ;------------------------------------------------------------
                                   1140 ;	spi_and_bit_banging.c:361: unsigned char take_data()
                                   1141 ;	-----------------------------------------
                                   1142 ;	 function take_data
                                   1143 ;	-----------------------------------------
      002373                       1144 _take_data:
                                   1145 ;	spi_and_bit_banging.c:363: printf("│ Enter number (up to 2 characters): \n\r|");
      002373 74 17            [12] 1146 	mov	a,#___str_21
      002375 C0 E0            [24] 1147 	push	acc
      002377 74 3E            [12] 1148 	mov	a,#(___str_21 >> 8)
      002379 C0 E0            [24] 1149 	push	acc
      00237B 74 80            [12] 1150 	mov	a,#0x80
      00237D C0 E0            [24] 1151 	push	acc
      00237F 12 28 42         [24] 1152 	lcall	_printf
      002382 15 81            [12] 1153 	dec	sp
      002384 15 81            [12] 1154 	dec	sp
      002386 15 81            [12] 1155 	dec	sp
                                   1156 ;	spi_and_bit_banging.c:364: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002388 90 04 05         [24] 1157 	mov	dptr,#_take_data_input_65537_53
      00238B E4               [12] 1158 	clr	a
      00238C F0               [24] 1159 	movx	@dptr,a
      00238D 90 04 06         [24] 1160 	mov	dptr,#(_take_data_input_65537_53 + 0x0001)
      002390 F0               [24] 1161 	movx	@dptr,a
      002391 90 04 07         [24] 1162 	mov	dptr,#(_take_data_input_65537_53 + 0x0002)
      002394 F0               [24] 1163 	movx	@dptr,a
      002395 90 04 08         [24] 1164 	mov	dptr,#(_take_data_input_65537_53 + 0x0003)
      002398 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	spi_and_bit_banging.c:368: printf("$ ");
      002399 74 42            [12] 1167 	mov	a,#___str_22
      00239B C0 E0            [24] 1168 	push	acc
      00239D 74 3E            [12] 1169 	mov	a,#(___str_22 >> 8)
      00239F C0 E0            [24] 1170 	push	acc
      0023A1 74 80            [12] 1171 	mov	a,#0x80
      0023A3 C0 E0            [24] 1172 	push	acc
      0023A5 12 28 42         [24] 1173 	lcall	_printf
      0023A8 15 81            [12] 1174 	dec	sp
      0023AA 15 81            [12] 1175 	dec	sp
      0023AC 15 81            [12] 1176 	dec	sp
                                   1177 ;	spi_and_bit_banging.c:370: while (i < 3) {
      0023AE 7E 00            [12] 1178 	mov	r6,#0x00
      0023B0 7F 00            [12] 1179 	mov	r7,#0x00
      0023B2                       1180 00111$:
      0023B2 C3               [12] 1181 	clr	c
      0023B3 EE               [12] 1182 	mov	a,r6
      0023B4 94 03            [12] 1183 	subb	a,#0x03
      0023B6 EF               [12] 1184 	mov	a,r7
      0023B7 64 80            [12] 1185 	xrl	a,#0x80
      0023B9 94 80            [12] 1186 	subb	a,#0x80
      0023BB 50 5B            [24] 1187 	jnc	00113$
                                   1188 ;	spi_and_bit_banging.c:372: c = getchar();
      0023BD C0 07            [24] 1189 	push	ar7
      0023BF C0 06            [24] 1190 	push	ar6
      0023C1 12 20 81         [24] 1191 	lcall	_getchar
      0023C4 AC 82            [24] 1192 	mov	r4,dpl
      0023C6 AD 83            [24] 1193 	mov	r5,dph
      0023C8 D0 06            [24] 1194 	pop	ar6
      0023CA D0 07            [24] 1195 	pop	ar7
                                   1196 ;	spi_and_bit_banging.c:375: if (c == '\r' || c == '\n') {
      0023CC BC 0D 02         [24] 1197 	cjne	r4,#0x0d,00194$
      0023CF 80 47            [24] 1198 	sjmp	00113$
      0023D1                       1199 00194$:
      0023D1 BC 0A 02         [24] 1200 	cjne	r4,#0x0a,00195$
      0023D4 80 42            [24] 1201 	sjmp	00113$
      0023D6                       1202 00195$:
                                   1203 ;	spi_and_bit_banging.c:380: if ((c >= '0' && c <= '9') ||
      0023D6 BC 30 00         [24] 1204 	cjne	r4,#0x30,00196$
      0023D9                       1205 00196$:
      0023D9 40 05            [24] 1206 	jc	00108$
      0023DB EC               [12] 1207 	mov	a,r4
      0023DC 24 C6            [12] 1208 	add	a,#0xff - 0x39
      0023DE 50 14            [24] 1209 	jnc	00104$
      0023E0                       1210 00108$:
                                   1211 ;	spi_and_bit_banging.c:381: (c >= 'a' && c <= 'f') ||
      0023E0 BC 61 00         [24] 1212 	cjne	r4,#0x61,00199$
      0023E3                       1213 00199$:
      0023E3 40 05            [24] 1214 	jc	00110$
      0023E5 EC               [12] 1215 	mov	a,r4
      0023E6 24 99            [12] 1216 	add	a,#0xff - 0x66
      0023E8 50 0A            [24] 1217 	jnc	00104$
      0023EA                       1218 00110$:
                                   1219 ;	spi_and_bit_banging.c:382: (c >= 'A' && c <= 'F')) {
      0023EA BC 41 00         [24] 1220 	cjne	r4,#0x41,00202$
      0023ED                       1221 00202$:
      0023ED 40 C3            [24] 1222 	jc	00111$
      0023EF EC               [12] 1223 	mov	a,r4
      0023F0 24 B9            [12] 1224 	add	a,#0xff - 0x46
      0023F2 40 BE            [24] 1225 	jc	00111$
      0023F4                       1226 00104$:
                                   1227 ;	spi_and_bit_banging.c:384: input[i] = c;
      0023F4 EE               [12] 1228 	mov	a,r6
      0023F5 24 05            [12] 1229 	add	a,#_take_data_input_65537_53
      0023F7 F5 82            [12] 1230 	mov	dpl,a
      0023F9 EF               [12] 1231 	mov	a,r7
      0023FA 34 04            [12] 1232 	addc	a,#(_take_data_input_65537_53 >> 8)
      0023FC F5 83            [12] 1233 	mov	dph,a
      0023FE EC               [12] 1234 	mov	a,r4
      0023FF F0               [24] 1235 	movx	@dptr,a
                                   1236 ;	spi_and_bit_banging.c:385: putchar(c);  // Echo character back
      002400 7D 00            [12] 1237 	mov	r5,#0x00
      002402 8C 82            [24] 1238 	mov	dpl,r4
      002404 8D 83            [24] 1239 	mov	dph,r5
      002406 C0 07            [24] 1240 	push	ar7
      002408 C0 06            [24] 1241 	push	ar6
      00240A 12 20 62         [24] 1242 	lcall	_putchar
      00240D D0 06            [24] 1243 	pop	ar6
      00240F D0 07            [24] 1244 	pop	ar7
                                   1245 ;	spi_and_bit_banging.c:386: i++;
      002411 0E               [12] 1246 	inc	r6
      002412 BE 00 9D         [24] 1247 	cjne	r6,#0x00,00111$
      002415 0F               [12] 1248 	inc	r7
      002416 80 9A            [24] 1249 	sjmp	00111$
      002418                       1250 00113$:
                                   1251 ;	spi_and_bit_banging.c:390: input[i] = '\0';  // Null-terminate the string
      002418 EE               [12] 1252 	mov	a,r6
      002419 24 05            [12] 1253 	add	a,#_take_data_input_65537_53
      00241B F5 82            [12] 1254 	mov	dpl,a
      00241D EF               [12] 1255 	mov	a,r7
      00241E 34 04            [12] 1256 	addc	a,#(_take_data_input_65537_53 >> 8)
      002420 F5 83            [12] 1257 	mov	dph,a
      002422 E4               [12] 1258 	clr	a
      002423 F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	spi_and_bit_banging.c:393: unsigned char data = 0;
      002424 90 04 09         [24] 1261 	mov	dptr,#_take_data_data_65538_57
      002427 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
      002428 7E 00            [12] 1264 	mov	r6,#0x00
      00242A 7F 00            [12] 1265 	mov	r7,#0x00
      00242C                       1266 00127$:
      00242C EE               [12] 1267 	mov	a,r6
      00242D 24 05            [12] 1268 	add	a,#_take_data_input_65537_53
      00242F F5 82            [12] 1269 	mov	dpl,a
      002431 EF               [12] 1270 	mov	a,r7
      002432 34 04            [12] 1271 	addc	a,#(_take_data_input_65537_53 >> 8)
      002434 F5 83            [12] 1272 	mov	dph,a
      002436 E0               [24] 1273 	movx	a,@dptr
      002437 FD               [12] 1274 	mov	r5,a
      002438 70 03            [24] 1275 	jnz	00206$
      00243A 02 24 9F         [24] 1276 	ljmp	00125$
      00243D                       1277 00206$:
                                   1278 ;	spi_and_bit_banging.c:395: data = data * 16;
      00243D 90 04 09         [24] 1279 	mov	dptr,#_take_data_data_65538_57
      002440 E0               [24] 1280 	movx	a,@dptr
      002441 C4               [12] 1281 	swap	a
      002442 54 F0            [12] 1282 	anl	a,#0xf0
      002444 FC               [12] 1283 	mov	r4,a
      002445 F0               [24] 1284 	movx	@dptr,a
                                   1285 ;	spi_and_bit_banging.c:396: if (input[i] >= '0' && input[i] <= '9')
      002446 BD 30 00         [24] 1286 	cjne	r5,#0x30,00207$
      002449                       1287 00207$:
      002449 40 12            [24] 1288 	jc	00122$
      00244B ED               [12] 1289 	mov	a,r5
      00244C 24 C6            [12] 1290 	add	a,#0xff - 0x39
      00244E 40 0D            [24] 1291 	jc	00122$
                                   1292 ;	spi_and_bit_banging.c:397: data += input[i] - '0';
      002450 ED               [12] 1293 	mov	a,r5
      002451 24 D0            [12] 1294 	add	a,#0xd0
      002453 FD               [12] 1295 	mov	r5,a
      002454 90 04 09         [24] 1296 	mov	dptr,#_take_data_data_65538_57
      002457 E0               [24] 1297 	movx	a,@dptr
      002458 FC               [12] 1298 	mov	r4,a
      002459 2D               [12] 1299 	add	a,r5
      00245A F0               [24] 1300 	movx	@dptr,a
      00245B 80 3A            [24] 1301 	sjmp	00128$
      00245D                       1302 00122$:
                                   1303 ;	spi_and_bit_banging.c:398: else if (input[i] >= 'A' && input[i] <= 'F')
      00245D EE               [12] 1304 	mov	a,r6
      00245E 24 05            [12] 1305 	add	a,#_take_data_input_65537_53
      002460 F5 82            [12] 1306 	mov	dpl,a
      002462 EF               [12] 1307 	mov	a,r7
      002463 34 04            [12] 1308 	addc	a,#(_take_data_input_65537_53 >> 8)
      002465 F5 83            [12] 1309 	mov	dph,a
      002467 E0               [24] 1310 	movx	a,@dptr
      002468 FD               [12] 1311 	mov	r5,a
      002469 BD 41 00         [24] 1312 	cjne	r5,#0x41,00210$
      00246C                       1313 00210$:
      00246C 40 14            [24] 1314 	jc	00118$
      00246E ED               [12] 1315 	mov	a,r5
      00246F 24 B9            [12] 1316 	add	a,#0xff - 0x46
      002471 40 0F            [24] 1317 	jc	00118$
                                   1318 ;	spi_and_bit_banging.c:399: data += input[i] - 'A' + 10;
      002473 8D 04            [24] 1319 	mov	ar4,r5
      002475 74 C9            [12] 1320 	mov	a,#0xc9
      002477 2C               [12] 1321 	add	a,r4
      002478 FC               [12] 1322 	mov	r4,a
      002479 90 04 09         [24] 1323 	mov	dptr,#_take_data_data_65538_57
      00247C E0               [24] 1324 	movx	a,@dptr
      00247D FB               [12] 1325 	mov	r3,a
      00247E 2C               [12] 1326 	add	a,r4
      00247F F0               [24] 1327 	movx	@dptr,a
      002480 80 15            [24] 1328 	sjmp	00128$
      002482                       1329 00118$:
                                   1330 ;	spi_and_bit_banging.c:400: else if (input[i] >= 'a' && input[i] <= 'f')
      002482 BD 61 00         [24] 1331 	cjne	r5,#0x61,00213$
      002485                       1332 00213$:
      002485 40 10            [24] 1333 	jc	00128$
      002487 ED               [12] 1334 	mov	a,r5
      002488 24 99            [12] 1335 	add	a,#0xff - 0x66
      00248A 40 0B            [24] 1336 	jc	00128$
                                   1337 ;	spi_and_bit_banging.c:401: data += input[i] - 'a' + 10;
      00248C 74 A9            [12] 1338 	mov	a,#0xa9
      00248E 2D               [12] 1339 	add	a,r5
      00248F FD               [12] 1340 	mov	r5,a
      002490 90 04 09         [24] 1341 	mov	dptr,#_take_data_data_65538_57
      002493 E0               [24] 1342 	movx	a,@dptr
      002494 FC               [12] 1343 	mov	r4,a
      002495 2D               [12] 1344 	add	a,r5
      002496 F0               [24] 1345 	movx	@dptr,a
      002497                       1346 00128$:
                                   1347 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
      002497 0E               [12] 1348 	inc	r6
      002498 BE 00 01         [24] 1349 	cjne	r6,#0x00,00216$
      00249B 0F               [12] 1350 	inc	r7
      00249C                       1351 00216$:
      00249C 02 24 2C         [24] 1352 	ljmp	00127$
      00249F                       1353 00125$:
                                   1354 ;	spi_and_bit_banging.c:404: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00249F 90 04 09         [24] 1355 	mov	dptr,#_take_data_data_65538_57
      0024A2 E0               [24] 1356 	movx	a,@dptr
      0024A3 FF               [12] 1357 	mov	r7,a
      0024A4 FD               [12] 1358 	mov	r5,a
      0024A5 7E 00            [12] 1359 	mov	r6,#0x00
      0024A7 C0 07            [24] 1360 	push	ar7
      0024A9 C0 05            [24] 1361 	push	ar5
      0024AB C0 06            [24] 1362 	push	ar6
      0024AD 74 45            [12] 1363 	mov	a,#___str_23
      0024AF C0 E0            [24] 1364 	push	acc
      0024B1 74 3E            [12] 1365 	mov	a,#(___str_23 >> 8)
      0024B3 C0 E0            [24] 1366 	push	acc
      0024B5 74 80            [12] 1367 	mov	a,#0x80
      0024B7 C0 E0            [24] 1368 	push	acc
      0024B9 12 28 42         [24] 1369 	lcall	_printf
      0024BC E5 81            [12] 1370 	mov	a,sp
      0024BE 24 FB            [12] 1371 	add	a,#0xfb
      0024C0 F5 81            [12] 1372 	mov	sp,a
      0024C2 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	spi_and_bit_banging.c:411: return data;
      0024C4 8F 82            [24] 1375 	mov	dpl,r7
                                   1376 ;	spi_and_bit_banging.c:413: }
      0024C6 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'mannual_spi'
                                   1380 ;------------------------------------------------------------
                                   1381 ;number                    Allocated with name '_mannual_spi_number_65536_60'
                                   1382 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_61'
                                   1383 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_61'
                                   1384 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_61'
                                   1385 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_61'
                                   1386 ;i                         Allocated with name '_mannual_spi_i_196608_63'
                                   1387 ;------------------------------------------------------------
                                   1388 ;	spi_and_bit_banging.c:415: void mannual_spi(unsigned char number)
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function mannual_spi
                                   1391 ;	-----------------------------------------
      0024C7                       1392 _mannual_spi:
      0024C7 E5 82            [12] 1393 	mov	a,dpl
      0024C9 90 04 0A         [24] 1394 	mov	dptr,#_mannual_spi_number_65536_60
      0024CC F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	spi_and_bit_banging.c:417: int dac_value_index = 0;
      0024CD 90 04 0B         [24] 1397 	mov	dptr,#_mannual_spi_dac_value_index_65536_61
      0024D0 E4               [12] 1398 	clr	a
      0024D1 F0               [24] 1399 	movx	@dptr,a
      0024D2 A3               [24] 1400 	inc	dptr
      0024D3 F0               [24] 1401 	movx	@dptr,a
                                   1402 ;	spi_and_bit_banging.c:418: int dac_data = 0;
      0024D4 90 04 0D         [24] 1403 	mov	dptr,#_mannual_spi_dac_data_65536_61
      0024D7 F0               [24] 1404 	movx	@dptr,a
      0024D8 A3               [24] 1405 	inc	dptr
      0024D9 F0               [24] 1406 	movx	@dptr,a
                                   1407 ;	spi_and_bit_banging.c:420: printf("\r\n Inside Manual SPI");
      0024DA 74 62            [12] 1408 	mov	a,#___str_24
      0024DC C0 E0            [24] 1409 	push	acc
      0024DE 74 3E            [12] 1410 	mov	a,#(___str_24 >> 8)
      0024E0 C0 E0            [24] 1411 	push	acc
      0024E2 74 80            [12] 1412 	mov	a,#0x80
      0024E4 C0 E0            [24] 1413 	push	acc
      0024E6 12 28 42         [24] 1414 	lcall	_printf
      0024E9 15 81            [12] 1415 	dec	sp
      0024EB 15 81            [12] 1416 	dec	sp
      0024ED 15 81            [12] 1417 	dec	sp
                                   1418 ;	spi_and_bit_banging.c:421: printf("%d\n\r", number);
      0024EF 90 04 0A         [24] 1419 	mov	dptr,#_mannual_spi_number_65536_60
      0024F2 E0               [24] 1420 	movx	a,@dptr
      0024F3 FF               [12] 1421 	mov	r7,a
      0024F4 7E 00            [12] 1422 	mov	r6,#0x00
      0024F6 C0 07            [24] 1423 	push	ar7
      0024F8 C0 06            [24] 1424 	push	ar6
      0024FA 74 77            [12] 1425 	mov	a,#___str_25
      0024FC C0 E0            [24] 1426 	push	acc
      0024FE 74 3E            [12] 1427 	mov	a,#(___str_25 >> 8)
      002500 C0 E0            [24] 1428 	push	acc
      002502 74 80            [12] 1429 	mov	a,#0x80
      002504 C0 E0            [24] 1430 	push	acc
      002506 12 28 42         [24] 1431 	lcall	_printf
      002509 E5 81            [12] 1432 	mov	a,sp
      00250B 24 FB            [12] 1433 	add	a,#0xfb
      00250D F5 81            [12] 1434 	mov	sp,a
                                   1435 ;	spi_and_bit_banging.c:422: while(number > 0)
      00250F                       1436 00111$:
      00250F 90 04 0A         [24] 1437 	mov	dptr,#_mannual_spi_number_65536_60
      002512 E0               [24] 1438 	movx	a,@dptr
      002513 FF               [12] 1439 	mov	r7,a
      002514 E0               [24] 1440 	movx	a,@dptr
      002515 70 01            [24] 1441 	jnz	00156$
      002517 22               [24] 1442 	ret
      002518                       1443 00156$:
                                   1444 ;	spi_and_bit_banging.c:424: printf("\r\n Number is %d",number);
      002518 7E 00            [12] 1445 	mov	r6,#0x00
      00251A C0 07            [24] 1446 	push	ar7
      00251C C0 06            [24] 1447 	push	ar6
      00251E 74 7C            [12] 1448 	mov	a,#___str_26
      002520 C0 E0            [24] 1449 	push	acc
      002522 74 3E            [12] 1450 	mov	a,#(___str_26 >> 8)
      002524 C0 E0            [24] 1451 	push	acc
      002526 74 80            [12] 1452 	mov	a,#0x80
      002528 C0 E0            [24] 1453 	push	acc
      00252A 12 28 42         [24] 1454 	lcall	_printf
      00252D E5 81            [12] 1455 	mov	a,sp
      00252F 24 FB            [12] 1456 	add	a,#0xfb
      002531 F5 81            [12] 1457 	mov	sp,a
                                   1458 ;	spi_and_bit_banging.c:426: for(int i = 0; i<255; i++)
      002533 7E 00            [12] 1459 	mov	r6,#0x00
      002535 7F 00            [12] 1460 	mov	r7,#0x00
      002537                       1461 00115$:
      002537 C3               [12] 1462 	clr	c
      002538 EE               [12] 1463 	mov	a,r6
      002539 94 FF            [12] 1464 	subb	a,#0xff
      00253B EF               [12] 1465 	mov	a,r7
      00253C 64 80            [12] 1466 	xrl	a,#0x80
      00253E 94 80            [12] 1467 	subb	a,#0x80
      002540 40 03            [24] 1468 	jc	00157$
      002542 02 25 CA         [24] 1469 	ljmp	00110$
      002545                       1470 00157$:
                                   1471 ;	spi_and_bit_banging.c:429: if(dac_value_index < SINE_MAX_INDEX)
      002545 90 04 0B         [24] 1472 	mov	dptr,#_mannual_spi_dac_value_index_65536_61
      002548 E0               [24] 1473 	movx	a,@dptr
      002549 FC               [12] 1474 	mov	r4,a
      00254A A3               [24] 1475 	inc	dptr
      00254B E0               [24] 1476 	movx	a,@dptr
      00254C FD               [12] 1477 	mov	r5,a
      00254D C3               [12] 1478 	clr	c
      00254E 64 80            [12] 1479 	xrl	a,#0x80
      002550 94 81            [12] 1480 	subb	a,#0x81
      002552 50 21            [24] 1481 	jnc	00102$
                                   1482 ;	spi_and_bit_banging.c:433: dac_data = dac_values[dac_value_index];
      002554 EC               [12] 1483 	mov	a,r4
      002555 2C               [12] 1484 	add	a,r4
      002556 FC               [12] 1485 	mov	r4,a
      002557 ED               [12] 1486 	mov	a,r5
      002558 33               [12] 1487 	rlc	a
      002559 FD               [12] 1488 	mov	r5,a
      00255A EC               [12] 1489 	mov	a,r4
      00255B 24 A4            [12] 1490 	add	a,#_dac_values
      00255D F5 82            [12] 1491 	mov	dpl,a
      00255F ED               [12] 1492 	mov	a,r5
      002560 34 32            [12] 1493 	addc	a,#(_dac_values >> 8)
      002562 F5 83            [12] 1494 	mov	dph,a
      002564 E4               [12] 1495 	clr	a
      002565 93               [24] 1496 	movc	a,@a+dptr
      002566 FC               [12] 1497 	mov	r4,a
      002567 A3               [24] 1498 	inc	dptr
      002568 E4               [12] 1499 	clr	a
      002569 93               [24] 1500 	movc	a,@a+dptr
      00256A FD               [12] 1501 	mov	r5,a
      00256B 90 04 0D         [24] 1502 	mov	dptr,#_mannual_spi_dac_data_65536_61
      00256E EC               [12] 1503 	mov	a,r4
      00256F F0               [24] 1504 	movx	@dptr,a
      002570 ED               [12] 1505 	mov	a,r5
      002571 A3               [24] 1506 	inc	dptr
      002572 F0               [24] 1507 	movx	@dptr,a
      002573 80 07            [24] 1508 	sjmp	00103$
      002575                       1509 00102$:
                                   1510 ;	spi_and_bit_banging.c:437: dac_value_index = 0;  // Reset index for next cycle
      002575 90 04 0B         [24] 1511 	mov	dptr,#_mannual_spi_dac_value_index_65536_61
      002578 E4               [12] 1512 	clr	a
      002579 F0               [24] 1513 	movx	@dptr,a
      00257A A3               [24] 1514 	inc	dptr
      00257B F0               [24] 1515 	movx	@dptr,a
      00257C                       1516 00103$:
                                   1517 ;	spi_and_bit_banging.c:444: ((dac_data >> 4) & 0x0F);
      00257C 90 04 0D         [24] 1518 	mov	dptr,#_mannual_spi_dac_data_65536_61
      00257F E0               [24] 1519 	movx	a,@dptr
      002580 FC               [12] 1520 	mov	r4,a
      002581 A3               [24] 1521 	inc	dptr
      002582 E0               [24] 1522 	movx	a,@dptr
      002583 8C 02            [24] 1523 	mov	ar2,r4
      002585 C4               [12] 1524 	swap	a
      002586 CA               [12] 1525 	xch	a,r2
      002587 C4               [12] 1526 	swap	a
      002588 54 0F            [12] 1527 	anl	a,#0x0f
      00258A 6A               [12] 1528 	xrl	a,r2
      00258B CA               [12] 1529 	xch	a,r2
      00258C 54 0F            [12] 1530 	anl	a,#0x0f
      00258E CA               [12] 1531 	xch	a,r2
      00258F 6A               [12] 1532 	xrl	a,r2
      002590 CA               [12] 1533 	xch	a,r2
      002591 30 E3 02         [24] 1534 	jnb	acc.3,00159$
      002594 44 F0            [12] 1535 	orl	a,#0xf0
      002596                       1536 00159$:
      002596 74 0F            [12] 1537 	mov	a,#0x0f
      002598 5A               [12] 1538 	anl	a,r2
      002599 44 10            [12] 1539 	orl	a,#0x10
      00259B FB               [12] 1540 	mov	r3,a
                                   1541 ;	spi_and_bit_banging.c:447: low_byte = (dac_data & 0x0F) << 4;
      00259C 53 04 0F         [24] 1542 	anl	ar4,#0x0f
      00259F EC               [12] 1543 	mov	a,r4
      0025A0 C4               [12] 1544 	swap	a
      0025A1 54 F0            [12] 1545 	anl	a,#0xf0
      0025A3 FD               [12] 1546 	mov	r5,a
                                   1547 ;	spi_and_bit_banging.c:451: P1_1 = 0;  // Select DAC
                                   1548 ;	assignBit
      0025A4 C2 91            [12] 1549 	clr	_P1_1
                                   1550 ;	spi_and_bit_banging.c:454: SPDAT = high_byte;
      0025A6 8B C5            [24] 1551 	mov	_SPDAT,r3
                                   1552 ;	spi_and_bit_banging.c:455: while (!(SPSTA & (1<<7))); 
      0025A8                       1553 00104$:
      0025A8 E5 C4            [12] 1554 	mov	a,_SPSTA
      0025AA 30 E7 FB         [24] 1555 	jnb	acc.7,00104$
                                   1556 ;	spi_and_bit_banging.c:459: SPDAT = low_byte;
      0025AD 8D C5            [24] 1557 	mov	_SPDAT,r5
                                   1558 ;	spi_and_bit_banging.c:460: while (!(SPSTA & (1<<7))); 
      0025AF                       1559 00107$:
      0025AF E5 C4            [12] 1560 	mov	a,_SPSTA
      0025B1 30 E7 FB         [24] 1561 	jnb	acc.7,00107$
                                   1562 ;	spi_and_bit_banging.c:462: P1_1 = 1;  // Deselect DAC
                                   1563 ;	assignBit
      0025B4 D2 91            [12] 1564 	setb	_P1_1
                                   1565 ;	spi_and_bit_banging.c:464: dac_value_index++;
      0025B6 90 04 0B         [24] 1566 	mov	dptr,#_mannual_spi_dac_value_index_65536_61
      0025B9 E0               [24] 1567 	movx	a,@dptr
      0025BA 24 01            [12] 1568 	add	a,#0x01
      0025BC F0               [24] 1569 	movx	@dptr,a
      0025BD A3               [24] 1570 	inc	dptr
      0025BE E0               [24] 1571 	movx	a,@dptr
      0025BF 34 00            [12] 1572 	addc	a,#0x00
      0025C1 F0               [24] 1573 	movx	@dptr,a
                                   1574 ;	spi_and_bit_banging.c:426: for(int i = 0; i<255; i++)
      0025C2 0E               [12] 1575 	inc	r6
      0025C3 BE 00 01         [24] 1576 	cjne	r6,#0x00,00162$
      0025C6 0F               [12] 1577 	inc	r7
      0025C7                       1578 00162$:
      0025C7 02 25 37         [24] 1579 	ljmp	00115$
      0025CA                       1580 00110$:
                                   1581 ;	spi_and_bit_banging.c:467: number = number - 1;
      0025CA 90 04 0A         [24] 1582 	mov	dptr,#_mannual_spi_number_65536_60
      0025CD E0               [24] 1583 	movx	a,@dptr
      0025CE FF               [12] 1584 	mov	r7,a
      0025CF 14               [12] 1585 	dec	a
      0025D0 F0               [24] 1586 	movx	@dptr,a
                                   1587 ;	spi_and_bit_banging.c:469: }
      0025D1 02 25 0F         [24] 1588 	ljmp	00111$
                                   1589 ;------------------------------------------------------------
                                   1590 ;Allocation info for local variables in function 'spi_init'
                                   1591 ;------------------------------------------------------------
                                   1592 ;	spi_and_bit_banging.c:480: void spi_init(void) 
                                   1593 ;	-----------------------------------------
                                   1594 ;	 function spi_init
                                   1595 ;	-----------------------------------------
      0025D4                       1596 _spi_init:
                                   1597 ;	spi_and_bit_banging.c:501: SPCON |= 0x10;
      0025D4 43 C3 10         [24] 1598 	orl	_SPCON,#0x10
                                   1599 ;	spi_and_bit_banging.c:502: SPCON |= 0x20;
      0025D7 43 C3 20         [24] 1600 	orl	_SPCON,#0x20
                                   1601 ;	spi_and_bit_banging.c:503: SPCON |= 0x40;
      0025DA 43 C3 40         [24] 1602 	orl	_SPCON,#0x40
                                   1603 ;	spi_and_bit_banging.c:510: }
      0025DD 22               [24] 1604 	ret
                                   1605 ;------------------------------------------------------------
                                   1606 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1607 ;------------------------------------------------------------
                                   1608 ;	spi_and_bit_banging.c:512: void bit_bang_spi_init(void) {
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function bit_bang_spi_init
                                   1611 ;	-----------------------------------------
      0025DE                       1612 _bit_bang_spi_init:
                                   1613 ;	spi_and_bit_banging.c:513: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      0025DE 75 C3 00         [24] 1614 	mov	_SPCON,#0x00
                                   1615 ;	spi_and_bit_banging.c:514: SDA = DATA_HIGH;                 /* Set data line high */
                                   1616 ;	assignBit
      0025E1 D2 97            [12] 1617 	setb	_P1_7
                                   1618 ;	spi_and_bit_banging.c:515: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1619 ;	assignBit
      0025E3 C2 96            [12] 1620 	clr	_P1_6
                                   1621 ;	spi_and_bit_banging.c:516: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1622 ;	assignBit
      0025E5 D2 91            [12] 1623 	setb	_P1_1
                                   1624 ;	spi_and_bit_banging.c:517: }
      0025E7 22               [24] 1625 	ret
                                   1626 ;------------------------------------------------------------
                                   1627 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1628 ;------------------------------------------------------------
                                   1629 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_71'
                                   1630 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_72'
                                   1631 ;------------------------------------------------------------
                                   1632 ;	spi_and_bit_banging.c:519: int bit_bang_spi_write(uint16_t data) {
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function bit_bang_spi_write
                                   1635 ;	-----------------------------------------
      0025E8                       1636 _bit_bang_spi_write:
      0025E8 AF 83            [24] 1637 	mov	r7,dph
      0025EA E5 82            [12] 1638 	mov	a,dpl
      0025EC 90 04 0F         [24] 1639 	mov	dptr,#_bit_bang_spi_write_data_65536_71
      0025EF F0               [24] 1640 	movx	@dptr,a
      0025F0 EF               [12] 1641 	mov	a,r7
      0025F1 A3               [24] 1642 	inc	dptr
      0025F2 F0               [24] 1643 	movx	@dptr,a
                                   1644 ;	spi_and_bit_banging.c:522: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1645 ;	assignBit
      0025F3 C2 91            [12] 1646 	clr	_P1_1
                                   1647 ;	spi_and_bit_banging.c:525: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025F5 7E 00            [12] 1648 	mov	r6,#0x00
      0025F7 7F 00            [12] 1649 	mov	r7,#0x00
      0025F9                       1650 00102$:
                                   1651 ;	spi_and_bit_banging.c:526: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      0025F9 90 04 0F         [24] 1652 	mov	dptr,#_bit_bang_spi_write_data_65536_71
      0025FC E0               [24] 1653 	movx	a,@dptr
      0025FD FC               [12] 1654 	mov	r4,a
      0025FE A3               [24] 1655 	inc	dptr
      0025FF E0               [24] 1656 	movx	a,@dptr
      002600 FD               [12] 1657 	mov	r5,a
      002601 23               [12] 1658 	rl	a
      002602 54 01            [12] 1659 	anl	a,#0x01
      002604 24 FF            [12] 1660 	add	a,#0xff
      002606 92 97            [24] 1661 	mov	_P1_7,c
                                   1662 ;	spi_and_bit_banging.c:527: SCL = CLOCK_HIGH;            /* Clock high */
                                   1663 ;	assignBit
      002608 D2 96            [12] 1664 	setb	_P1_6
                                   1665 ;	spi_and_bit_banging.c:528: SCL = CLOCK_LOW;             /* Clock low */
                                   1666 ;	assignBit
      00260A C2 96            [12] 1667 	clr	_P1_6
                                   1668 ;	spi_and_bit_banging.c:529: data <<= 1;                  /* Shift to next bit */
      00260C EC               [12] 1669 	mov	a,r4
      00260D 2C               [12] 1670 	add	a,r4
      00260E FC               [12] 1671 	mov	r4,a
      00260F ED               [12] 1672 	mov	a,r5
      002610 33               [12] 1673 	rlc	a
      002611 FD               [12] 1674 	mov	r5,a
      002612 90 04 0F         [24] 1675 	mov	dptr,#_bit_bang_spi_write_data_65536_71
      002615 EC               [12] 1676 	mov	a,r4
      002616 F0               [24] 1677 	movx	@dptr,a
      002617 ED               [12] 1678 	mov	a,r5
      002618 A3               [24] 1679 	inc	dptr
      002619 F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	spi_and_bit_banging.c:525: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00261A 0E               [12] 1682 	inc	r6
      00261B BE 00 01         [24] 1683 	cjne	r6,#0x00,00115$
      00261E 0F               [12] 1684 	inc	r7
      00261F                       1685 00115$:
      00261F C3               [12] 1686 	clr	c
      002620 EE               [12] 1687 	mov	a,r6
      002621 94 10            [12] 1688 	subb	a,#0x10
      002623 EF               [12] 1689 	mov	a,r7
      002624 94 00            [12] 1690 	subb	a,#0x00
      002626 40 D1            [24] 1691 	jc	00102$
                                   1692 ;	spi_and_bit_banging.c:533: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1693 ;	assignBit
      002628 D2 91            [12] 1694 	setb	_P1_1
                                   1695 ;	spi_and_bit_banging.c:534: SCL = CLOCK_LOW;                 /* Clock low */
                                   1696 ;	assignBit
      00262A C2 96            [12] 1697 	clr	_P1_6
                                   1698 ;	spi_and_bit_banging.c:535: SDA = DATA_HIGH;                 /* Data high */
                                   1699 ;	assignBit
      00262C D2 97            [12] 1700 	setb	_P1_7
                                   1701 ;	spi_and_bit_banging.c:537: return 0;
      00262E 90 00 00         [24] 1702 	mov	dptr,#0x0000
                                   1703 ;	spi_and_bit_banging.c:538: }
      002631 22               [24] 1704 	ret
                                   1705 ;------------------------------------------------------------
                                   1706 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1707 ;------------------------------------------------------------
                                   1708 ;	spi_and_bit_banging.c:545: void spi_transmission_start(void)
                                   1709 ;	-----------------------------------------
                                   1710 ;	 function spi_transmission_start
                                   1711 ;	-----------------------------------------
      002632                       1712 _spi_transmission_start:
                                   1713 ;	spi_and_bit_banging.c:547: SPCON |= SPI_ENABLE;           // Enable SPI
      002632 43 C3 40         [24] 1714 	orl	_SPCON,#0x40
                                   1715 ;	spi_and_bit_banging.c:548: P1_1 = 0;
                                   1716 ;	assignBit
      002635 C2 91            [12] 1717 	clr	_P1_1
                                   1718 ;	spi_and_bit_banging.c:549: }
      002637 22               [24] 1719 	ret
                                   1720 ;------------------------------------------------------------
                                   1721 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1722 ;------------------------------------------------------------
                                   1723 ;number                    Allocated with name '_spi_triangular_wave_number_65536_77'
                                   1724 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_78'
                                   1725 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_78'
                                   1726 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_78'
                                   1727 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_78'
                                   1728 ;i                         Allocated with name '_spi_triangular_wave_i_196608_80'
                                   1729 ;------------------------------------------------------------
                                   1730 ;	spi_and_bit_banging.c:551: void spi_triangular_wave(int number)
                                   1731 ;	-----------------------------------------
                                   1732 ;	 function spi_triangular_wave
                                   1733 ;	-----------------------------------------
      002638                       1734 _spi_triangular_wave:
      002638 AF 83            [24] 1735 	mov	r7,dph
      00263A E5 82            [12] 1736 	mov	a,dpl
      00263C 90 04 11         [24] 1737 	mov	dptr,#_spi_triangular_wave_number_65536_77
      00263F F0               [24] 1738 	movx	@dptr,a
      002640 EF               [12] 1739 	mov	a,r7
      002641 A3               [24] 1740 	inc	dptr
      002642 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	spi_and_bit_banging.c:553: int dac_value_index = 0;
      002643 90 04 13         [24] 1743 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_78
      002646 E4               [12] 1744 	clr	a
      002647 F0               [24] 1745 	movx	@dptr,a
      002648 A3               [24] 1746 	inc	dptr
      002649 F0               [24] 1747 	movx	@dptr,a
                                   1748 ;	spi_and_bit_banging.c:554: int dac_data = 0;
      00264A 90 04 15         [24] 1749 	mov	dptr,#_spi_triangular_wave_dac_data_65536_78
      00264D F0               [24] 1750 	movx	@dptr,a
      00264E A3               [24] 1751 	inc	dptr
      00264F F0               [24] 1752 	movx	@dptr,a
                                   1753 ;	spi_and_bit_banging.c:556: while(number>0)
      002650 90 04 11         [24] 1754 	mov	dptr,#_spi_triangular_wave_number_65536_77
      002653 E0               [24] 1755 	movx	a,@dptr
      002654 FE               [12] 1756 	mov	r6,a
      002655 A3               [24] 1757 	inc	dptr
      002656 E0               [24] 1758 	movx	a,@dptr
      002657 FF               [12] 1759 	mov	r7,a
      002658                       1760 00111$:
      002658 C3               [12] 1761 	clr	c
      002659 E4               [12] 1762 	clr	a
      00265A 9E               [12] 1763 	subb	a,r6
      00265B 74 80            [12] 1764 	mov	a,#(0x00 ^ 0x80)
      00265D 8F F0            [24] 1765 	mov	b,r7
      00265F 63 F0 80         [24] 1766 	xrl	b,#0x80
      002662 95 F0            [12] 1767 	subb	a,b
      002664 40 03            [24] 1768 	jc	00157$
      002666 02 27 0D         [24] 1769 	ljmp	00129$
      002669                       1770 00157$:
                                   1771 ;	spi_and_bit_banging.c:558: for(int i = 0; i<512; i++)
      002669 7C 00            [12] 1772 	mov	r4,#0x00
      00266B 7D 00            [12] 1773 	mov	r5,#0x00
      00266D                       1774 00115$:
      00266D C3               [12] 1775 	clr	c
      00266E ED               [12] 1776 	mov	a,r5
      00266F 64 80            [12] 1777 	xrl	a,#0x80
      002671 94 82            [12] 1778 	subb	a,#0x82
      002673 40 03            [24] 1779 	jc	00158$
      002675 02 26 FD         [24] 1780 	ljmp	00110$
      002678                       1781 00158$:
                                   1782 ;	spi_and_bit_banging.c:561: if(dac_value_index < 512)
      002678 90 04 13         [24] 1783 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_78
      00267B E0               [24] 1784 	movx	a,@dptr
      00267C FA               [12] 1785 	mov	r2,a
      00267D A3               [24] 1786 	inc	dptr
      00267E E0               [24] 1787 	movx	a,@dptr
      00267F FB               [12] 1788 	mov	r3,a
      002680 C3               [12] 1789 	clr	c
      002681 64 80            [12] 1790 	xrl	a,#0x80
      002683 94 82            [12] 1791 	subb	a,#0x82
      002685 50 21            [24] 1792 	jnc	00102$
                                   1793 ;	spi_and_bit_banging.c:565: dac_data = trig_dac_values[dac_value_index];
      002687 EA               [12] 1794 	mov	a,r2
      002688 2A               [12] 1795 	add	a,r2
      002689 FA               [12] 1796 	mov	r2,a
      00268A EB               [12] 1797 	mov	a,r3
      00268B 33               [12] 1798 	rlc	a
      00268C FB               [12] 1799 	mov	r3,a
      00268D EA               [12] 1800 	mov	a,r2
      00268E 24 A4            [12] 1801 	add	a,#_trig_dac_values
      002690 F5 82            [12] 1802 	mov	dpl,a
      002692 EB               [12] 1803 	mov	a,r3
      002693 34 34            [12] 1804 	addc	a,#(_trig_dac_values >> 8)
      002695 F5 83            [12] 1805 	mov	dph,a
      002697 E4               [12] 1806 	clr	a
      002698 93               [24] 1807 	movc	a,@a+dptr
      002699 FA               [12] 1808 	mov	r2,a
      00269A A3               [24] 1809 	inc	dptr
      00269B E4               [12] 1810 	clr	a
      00269C 93               [24] 1811 	movc	a,@a+dptr
      00269D FB               [12] 1812 	mov	r3,a
      00269E 90 04 15         [24] 1813 	mov	dptr,#_spi_triangular_wave_dac_data_65536_78
      0026A1 EA               [12] 1814 	mov	a,r2
      0026A2 F0               [24] 1815 	movx	@dptr,a
      0026A3 EB               [12] 1816 	mov	a,r3
      0026A4 A3               [24] 1817 	inc	dptr
      0026A5 F0               [24] 1818 	movx	@dptr,a
      0026A6 80 07            [24] 1819 	sjmp	00103$
      0026A8                       1820 00102$:
                                   1821 ;	spi_and_bit_banging.c:569: dac_value_index = 0;  // Reset index for next cycle
      0026A8 90 04 13         [24] 1822 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_78
      0026AB E4               [12] 1823 	clr	a
      0026AC F0               [24] 1824 	movx	@dptr,a
      0026AD A3               [24] 1825 	inc	dptr
      0026AE F0               [24] 1826 	movx	@dptr,a
      0026AF                       1827 00103$:
                                   1828 ;	spi_and_bit_banging.c:576: ((dac_data >> 4) & 0x0F);
      0026AF 90 04 15         [24] 1829 	mov	dptr,#_spi_triangular_wave_dac_data_65536_78
      0026B2 E0               [24] 1830 	movx	a,@dptr
      0026B3 FA               [12] 1831 	mov	r2,a
      0026B4 A3               [24] 1832 	inc	dptr
      0026B5 E0               [24] 1833 	movx	a,@dptr
      0026B6 8A 00            [24] 1834 	mov	ar0,r2
      0026B8 C4               [12] 1835 	swap	a
      0026B9 C8               [12] 1836 	xch	a,r0
      0026BA C4               [12] 1837 	swap	a
      0026BB 54 0F            [12] 1838 	anl	a,#0x0f
      0026BD 68               [12] 1839 	xrl	a,r0
      0026BE C8               [12] 1840 	xch	a,r0
      0026BF 54 0F            [12] 1841 	anl	a,#0x0f
      0026C1 C8               [12] 1842 	xch	a,r0
      0026C2 68               [12] 1843 	xrl	a,r0
      0026C3 C8               [12] 1844 	xch	a,r0
      0026C4 30 E3 02         [24] 1845 	jnb	acc.3,00160$
      0026C7 44 F0            [12] 1846 	orl	a,#0xf0
      0026C9                       1847 00160$:
      0026C9 74 0F            [12] 1848 	mov	a,#0x0f
      0026CB 58               [12] 1849 	anl	a,r0
      0026CC 44 10            [12] 1850 	orl	a,#0x10
      0026CE F9               [12] 1851 	mov	r1,a
                                   1852 ;	spi_and_bit_banging.c:579: low_byte = (dac_data & 0x0F) << 4;
      0026CF 53 02 0F         [24] 1853 	anl	ar2,#0x0f
      0026D2 EA               [12] 1854 	mov	a,r2
      0026D3 C4               [12] 1855 	swap	a
      0026D4 54 F0            [12] 1856 	anl	a,#0xf0
      0026D6 FB               [12] 1857 	mov	r3,a
                                   1858 ;	spi_and_bit_banging.c:583: P1_1 = 0;  // Select DAC
                                   1859 ;	assignBit
      0026D7 C2 91            [12] 1860 	clr	_P1_1
                                   1861 ;	spi_and_bit_banging.c:586: SPDAT = high_byte;
      0026D9 89 C5            [24] 1862 	mov	_SPDAT,r1
                                   1863 ;	spi_and_bit_banging.c:587: while (!(SPSTA & (1<<7))); 
      0026DB                       1864 00104$:
      0026DB E5 C4            [12] 1865 	mov	a,_SPSTA
      0026DD 30 E7 FB         [24] 1866 	jnb	acc.7,00104$
                                   1867 ;	spi_and_bit_banging.c:591: SPDAT = low_byte;
      0026E0 8B C5            [24] 1868 	mov	_SPDAT,r3
                                   1869 ;	spi_and_bit_banging.c:592: while (!(SPSTA & (1<<7))); 
      0026E2                       1870 00107$:
      0026E2 E5 C4            [12] 1871 	mov	a,_SPSTA
      0026E4 30 E7 FB         [24] 1872 	jnb	acc.7,00107$
                                   1873 ;	spi_and_bit_banging.c:594: P1_1 = 1;  // Deselect DAC
                                   1874 ;	assignBit
      0026E7 D2 91            [12] 1875 	setb	_P1_1
                                   1876 ;	spi_and_bit_banging.c:596: dac_value_index++;
      0026E9 90 04 13         [24] 1877 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_78
      0026EC E0               [24] 1878 	movx	a,@dptr
      0026ED 24 01            [12] 1879 	add	a,#0x01
      0026EF F0               [24] 1880 	movx	@dptr,a
      0026F0 A3               [24] 1881 	inc	dptr
      0026F1 E0               [24] 1882 	movx	a,@dptr
      0026F2 34 00            [12] 1883 	addc	a,#0x00
      0026F4 F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	spi_and_bit_banging.c:558: for(int i = 0; i<512; i++)
      0026F5 0C               [12] 1886 	inc	r4
      0026F6 BC 00 01         [24] 1887 	cjne	r4,#0x00,00163$
      0026F9 0D               [12] 1888 	inc	r5
      0026FA                       1889 00163$:
      0026FA 02 26 6D         [24] 1890 	ljmp	00115$
      0026FD                       1891 00110$:
                                   1892 ;	spi_and_bit_banging.c:599: number = number - 1;
      0026FD 1E               [12] 1893 	dec	r6
      0026FE BE FF 01         [24] 1894 	cjne	r6,#0xff,00164$
      002701 1F               [12] 1895 	dec	r7
      002702                       1896 00164$:
      002702 90 04 11         [24] 1897 	mov	dptr,#_spi_triangular_wave_number_65536_77
      002705 EE               [12] 1898 	mov	a,r6
      002706 F0               [24] 1899 	movx	@dptr,a
      002707 EF               [12] 1900 	mov	a,r7
      002708 A3               [24] 1901 	inc	dptr
      002709 F0               [24] 1902 	movx	@dptr,a
      00270A 02 26 58         [24] 1903 	ljmp	00111$
      00270D                       1904 00129$:
      00270D 90 04 11         [24] 1905 	mov	dptr,#_spi_triangular_wave_number_65536_77
      002710 EE               [12] 1906 	mov	a,r6
      002711 F0               [24] 1907 	movx	@dptr,a
      002712 EF               [12] 1908 	mov	a,r7
      002713 A3               [24] 1909 	inc	dptr
      002714 F0               [24] 1910 	movx	@dptr,a
                                   1911 ;	spi_and_bit_banging.c:602: }
      002715 22               [24] 1912 	ret
                                   1913 ;------------------------------------------------------------
                                   1914 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1915 ;------------------------------------------------------------
                                   1916 ;number                    Allocated with name '_spi_ramp_signal_number_65536_84'
                                   1917 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_85'
                                   1918 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_85'
                                   1919 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_85'
                                   1920 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_85'
                                   1921 ;i                         Allocated with name '_spi_ramp_signal_i_196608_87'
                                   1922 ;------------------------------------------------------------
                                   1923 ;	spi_and_bit_banging.c:604: void spi_ramp_signal(int number)
                                   1924 ;	-----------------------------------------
                                   1925 ;	 function spi_ramp_signal
                                   1926 ;	-----------------------------------------
      002716                       1927 _spi_ramp_signal:
      002716 AF 83            [24] 1928 	mov	r7,dph
      002718 E5 82            [12] 1929 	mov	a,dpl
      00271A 90 04 17         [24] 1930 	mov	dptr,#_spi_ramp_signal_number_65536_84
      00271D F0               [24] 1931 	movx	@dptr,a
      00271E EF               [12] 1932 	mov	a,r7
      00271F A3               [24] 1933 	inc	dptr
      002720 F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	spi_and_bit_banging.c:606: int dac_value_index = 0;
      002721 90 04 19         [24] 1936 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_85
      002724 E4               [12] 1937 	clr	a
      002725 F0               [24] 1938 	movx	@dptr,a
      002726 A3               [24] 1939 	inc	dptr
      002727 F0               [24] 1940 	movx	@dptr,a
                                   1941 ;	spi_and_bit_banging.c:607: int dac_data = 0;
      002728 90 04 1B         [24] 1942 	mov	dptr,#_spi_ramp_signal_dac_data_65536_85
      00272B F0               [24] 1943 	movx	@dptr,a
      00272C A3               [24] 1944 	inc	dptr
      00272D F0               [24] 1945 	movx	@dptr,a
                                   1946 ;	spi_and_bit_banging.c:609: while(number>0)
      00272E 90 04 17         [24] 1947 	mov	dptr,#_spi_ramp_signal_number_65536_84
      002731 E0               [24] 1948 	movx	a,@dptr
      002732 FE               [12] 1949 	mov	r6,a
      002733 A3               [24] 1950 	inc	dptr
      002734 E0               [24] 1951 	movx	a,@dptr
      002735 FF               [12] 1952 	mov	r7,a
      002736                       1953 00111$:
      002736 C3               [12] 1954 	clr	c
      002737 E4               [12] 1955 	clr	a
      002738 9E               [12] 1956 	subb	a,r6
      002739 74 80            [12] 1957 	mov	a,#(0x00 ^ 0x80)
      00273B 8F F0            [24] 1958 	mov	b,r7
      00273D 63 F0 80         [24] 1959 	xrl	b,#0x80
      002740 95 F0            [12] 1960 	subb	a,b
      002742 40 03            [24] 1961 	jc	00157$
      002744 02 27 EB         [24] 1962 	ljmp	00129$
      002747                       1963 00157$:
                                   1964 ;	spi_and_bit_banging.c:611: for(int i = 0; i<256; i++)
      002747 7C 00            [12] 1965 	mov	r4,#0x00
      002749 7D 00            [12] 1966 	mov	r5,#0x00
      00274B                       1967 00115$:
      00274B C3               [12] 1968 	clr	c
      00274C ED               [12] 1969 	mov	a,r5
      00274D 64 80            [12] 1970 	xrl	a,#0x80
      00274F 94 81            [12] 1971 	subb	a,#0x81
      002751 40 03            [24] 1972 	jc	00158$
      002753 02 27 DB         [24] 1973 	ljmp	00110$
      002756                       1974 00158$:
                                   1975 ;	spi_and_bit_banging.c:614: if(dac_value_index < 256)
      002756 90 04 19         [24] 1976 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_85
      002759 E0               [24] 1977 	movx	a,@dptr
      00275A FA               [12] 1978 	mov	r2,a
      00275B A3               [24] 1979 	inc	dptr
      00275C E0               [24] 1980 	movx	a,@dptr
      00275D FB               [12] 1981 	mov	r3,a
      00275E C3               [12] 1982 	clr	c
      00275F 64 80            [12] 1983 	xrl	a,#0x80
      002761 94 81            [12] 1984 	subb	a,#0x81
      002763 50 21            [24] 1985 	jnc	00102$
                                   1986 ;	spi_and_bit_banging.c:618: dac_data = trig_dac_values[dac_value_index];
      002765 EA               [12] 1987 	mov	a,r2
      002766 2A               [12] 1988 	add	a,r2
      002767 FA               [12] 1989 	mov	r2,a
      002768 EB               [12] 1990 	mov	a,r3
      002769 33               [12] 1991 	rlc	a
      00276A FB               [12] 1992 	mov	r3,a
      00276B EA               [12] 1993 	mov	a,r2
      00276C 24 A4            [12] 1994 	add	a,#_trig_dac_values
      00276E F5 82            [12] 1995 	mov	dpl,a
      002770 EB               [12] 1996 	mov	a,r3
      002771 34 34            [12] 1997 	addc	a,#(_trig_dac_values >> 8)
      002773 F5 83            [12] 1998 	mov	dph,a
      002775 E4               [12] 1999 	clr	a
      002776 93               [24] 2000 	movc	a,@a+dptr
      002777 FA               [12] 2001 	mov	r2,a
      002778 A3               [24] 2002 	inc	dptr
      002779 E4               [12] 2003 	clr	a
      00277A 93               [24] 2004 	movc	a,@a+dptr
      00277B FB               [12] 2005 	mov	r3,a
      00277C 90 04 1B         [24] 2006 	mov	dptr,#_spi_ramp_signal_dac_data_65536_85
      00277F EA               [12] 2007 	mov	a,r2
      002780 F0               [24] 2008 	movx	@dptr,a
      002781 EB               [12] 2009 	mov	a,r3
      002782 A3               [24] 2010 	inc	dptr
      002783 F0               [24] 2011 	movx	@dptr,a
      002784 80 07            [24] 2012 	sjmp	00103$
      002786                       2013 00102$:
                                   2014 ;	spi_and_bit_banging.c:622: dac_value_index = 0;  // Reset index for next cycle
      002786 90 04 19         [24] 2015 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_85
      002789 E4               [12] 2016 	clr	a
      00278A F0               [24] 2017 	movx	@dptr,a
      00278B A3               [24] 2018 	inc	dptr
      00278C F0               [24] 2019 	movx	@dptr,a
      00278D                       2020 00103$:
                                   2021 ;	spi_and_bit_banging.c:629: ((dac_data >> 4) & 0x0F);
      00278D 90 04 1B         [24] 2022 	mov	dptr,#_spi_ramp_signal_dac_data_65536_85
      002790 E0               [24] 2023 	movx	a,@dptr
      002791 FA               [12] 2024 	mov	r2,a
      002792 A3               [24] 2025 	inc	dptr
      002793 E0               [24] 2026 	movx	a,@dptr
      002794 8A 00            [24] 2027 	mov	ar0,r2
      002796 C4               [12] 2028 	swap	a
      002797 C8               [12] 2029 	xch	a,r0
      002798 C4               [12] 2030 	swap	a
      002799 54 0F            [12] 2031 	anl	a,#0x0f
      00279B 68               [12] 2032 	xrl	a,r0
      00279C C8               [12] 2033 	xch	a,r0
      00279D 54 0F            [12] 2034 	anl	a,#0x0f
      00279F C8               [12] 2035 	xch	a,r0
      0027A0 68               [12] 2036 	xrl	a,r0
      0027A1 C8               [12] 2037 	xch	a,r0
      0027A2 30 E3 02         [24] 2038 	jnb	acc.3,00160$
      0027A5 44 F0            [12] 2039 	orl	a,#0xf0
      0027A7                       2040 00160$:
      0027A7 74 0F            [12] 2041 	mov	a,#0x0f
      0027A9 58               [12] 2042 	anl	a,r0
      0027AA 44 10            [12] 2043 	orl	a,#0x10
      0027AC F9               [12] 2044 	mov	r1,a
                                   2045 ;	spi_and_bit_banging.c:632: low_byte = (dac_data & 0x0F) << 4;
      0027AD 53 02 0F         [24] 2046 	anl	ar2,#0x0f
      0027B0 EA               [12] 2047 	mov	a,r2
      0027B1 C4               [12] 2048 	swap	a
      0027B2 54 F0            [12] 2049 	anl	a,#0xf0
      0027B4 FB               [12] 2050 	mov	r3,a
                                   2051 ;	spi_and_bit_banging.c:636: P1_1 = 0;  // Select DAC
                                   2052 ;	assignBit
      0027B5 C2 91            [12] 2053 	clr	_P1_1
                                   2054 ;	spi_and_bit_banging.c:639: SPDAT = high_byte;
      0027B7 89 C5            [24] 2055 	mov	_SPDAT,r1
                                   2056 ;	spi_and_bit_banging.c:640: while (!(SPSTA & (1<<7))); 
      0027B9                       2057 00104$:
      0027B9 E5 C4            [12] 2058 	mov	a,_SPSTA
      0027BB 30 E7 FB         [24] 2059 	jnb	acc.7,00104$
                                   2060 ;	spi_and_bit_banging.c:644: SPDAT = low_byte;
      0027BE 8B C5            [24] 2061 	mov	_SPDAT,r3
                                   2062 ;	spi_and_bit_banging.c:645: while (!(SPSTA & (1<<7))); 
      0027C0                       2063 00107$:
      0027C0 E5 C4            [12] 2064 	mov	a,_SPSTA
      0027C2 30 E7 FB         [24] 2065 	jnb	acc.7,00107$
                                   2066 ;	spi_and_bit_banging.c:647: P1_1 = 1;  // Deselect DAC
                                   2067 ;	assignBit
      0027C5 D2 91            [12] 2068 	setb	_P1_1
                                   2069 ;	spi_and_bit_banging.c:649: dac_value_index++;
      0027C7 90 04 19         [24] 2070 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_85
      0027CA E0               [24] 2071 	movx	a,@dptr
      0027CB 24 01            [12] 2072 	add	a,#0x01
      0027CD F0               [24] 2073 	movx	@dptr,a
      0027CE A3               [24] 2074 	inc	dptr
      0027CF E0               [24] 2075 	movx	a,@dptr
      0027D0 34 00            [12] 2076 	addc	a,#0x00
      0027D2 F0               [24] 2077 	movx	@dptr,a
                                   2078 ;	spi_and_bit_banging.c:611: for(int i = 0; i<256; i++)
      0027D3 0C               [12] 2079 	inc	r4
      0027D4 BC 00 01         [24] 2080 	cjne	r4,#0x00,00163$
      0027D7 0D               [12] 2081 	inc	r5
      0027D8                       2082 00163$:
      0027D8 02 27 4B         [24] 2083 	ljmp	00115$
      0027DB                       2084 00110$:
                                   2085 ;	spi_and_bit_banging.c:652: number = number - 1;
      0027DB 1E               [12] 2086 	dec	r6
      0027DC BE FF 01         [24] 2087 	cjne	r6,#0xff,00164$
      0027DF 1F               [12] 2088 	dec	r7
      0027E0                       2089 00164$:
      0027E0 90 04 17         [24] 2090 	mov	dptr,#_spi_ramp_signal_number_65536_84
      0027E3 EE               [12] 2091 	mov	a,r6
      0027E4 F0               [24] 2092 	movx	@dptr,a
      0027E5 EF               [12] 2093 	mov	a,r7
      0027E6 A3               [24] 2094 	inc	dptr
      0027E7 F0               [24] 2095 	movx	@dptr,a
      0027E8 02 27 36         [24] 2096 	ljmp	00111$
      0027EB                       2097 00129$:
      0027EB 90 04 17         [24] 2098 	mov	dptr,#_spi_ramp_signal_number_65536_84
      0027EE EE               [12] 2099 	mov	a,r6
      0027EF F0               [24] 2100 	movx	@dptr,a
      0027F0 EF               [12] 2101 	mov	a,r7
      0027F1 A3               [24] 2102 	inc	dptr
      0027F2 F0               [24] 2103 	movx	@dptr,a
                                   2104 ;	spi_and_bit_banging.c:655: }
      0027F3 22               [24] 2105 	ret
                                   2106 	.area CSEG    (CODE)
                                   2107 	.area CONST   (CODE)
      0032A4                       2108 _dac_values:
      0032A4 80 00                 2109 	.byte #0x80, #0x00	;  128
      0032A6 83 00                 2110 	.byte #0x83, #0x00	;  131
      0032A8 86 00                 2111 	.byte #0x86, #0x00	;  134
      0032AA 89 00                 2112 	.byte #0x89, #0x00	;  137
      0032AC 8C 00                 2113 	.byte #0x8c, #0x00	;  140
      0032AE 90 00                 2114 	.byte #0x90, #0x00	;  144
      0032B0 93 00                 2115 	.byte #0x93, #0x00	;  147
      0032B2 96 00                 2116 	.byte #0x96, #0x00	;  150
      0032B4 99 00                 2117 	.byte #0x99, #0x00	;  153
      0032B6 9C 00                 2118 	.byte #0x9c, #0x00	;  156
      0032B8 9F 00                 2119 	.byte #0x9f, #0x00	;  159
      0032BA A2 00                 2120 	.byte #0xa2, #0x00	;  162
      0032BC A5 00                 2121 	.byte #0xa5, #0x00	;  165
      0032BE A8 00                 2122 	.byte #0xa8, #0x00	;  168
      0032C0 AB 00                 2123 	.byte #0xab, #0x00	;  171
      0032C2 AE 00                 2124 	.byte #0xae, #0x00	;  174
      0032C4 B1 00                 2125 	.byte #0xb1, #0x00	;  177
      0032C6 B3 00                 2126 	.byte #0xb3, #0x00	;  179
      0032C8 B6 00                 2127 	.byte #0xb6, #0x00	;  182
      0032CA B9 00                 2128 	.byte #0xb9, #0x00	;  185
      0032CC BC 00                 2129 	.byte #0xbc, #0x00	;  188
      0032CE BF 00                 2130 	.byte #0xbf, #0x00	;  191
      0032D0 C1 00                 2131 	.byte #0xc1, #0x00	;  193
      0032D2 C4 00                 2132 	.byte #0xc4, #0x00	;  196
      0032D4 C7 00                 2133 	.byte #0xc7, #0x00	;  199
      0032D6 C9 00                 2134 	.byte #0xc9, #0x00	;  201
      0032D8 CC 00                 2135 	.byte #0xcc, #0x00	;  204
      0032DA CE 00                 2136 	.byte #0xce, #0x00	;  206
      0032DC D1 00                 2137 	.byte #0xd1, #0x00	;  209
      0032DE D3 00                 2138 	.byte #0xd3, #0x00	;  211
      0032E0 D5 00                 2139 	.byte #0xd5, #0x00	;  213
      0032E2 D8 00                 2140 	.byte #0xd8, #0x00	;  216
      0032E4 DA 00                 2141 	.byte #0xda, #0x00	;  218
      0032E6 DC 00                 2142 	.byte #0xdc, #0x00	;  220
      0032E8 DE 00                 2143 	.byte #0xde, #0x00	;  222
      0032EA E0 00                 2144 	.byte #0xe0, #0x00	;  224
      0032EC E2 00                 2145 	.byte #0xe2, #0x00	;  226
      0032EE E4 00                 2146 	.byte #0xe4, #0x00	;  228
      0032F0 E6 00                 2147 	.byte #0xe6, #0x00	;  230
      0032F2 E8 00                 2148 	.byte #0xe8, #0x00	;  232
      0032F4 EA 00                 2149 	.byte #0xea, #0x00	;  234
      0032F6 EB 00                 2150 	.byte #0xeb, #0x00	;  235
      0032F8 ED 00                 2151 	.byte #0xed, #0x00	;  237
      0032FA EF 00                 2152 	.byte #0xef, #0x00	;  239
      0032FC F0 00                 2153 	.byte #0xf0, #0x00	;  240
      0032FE F1 00                 2154 	.byte #0xf1, #0x00	;  241
      003300 F3 00                 2155 	.byte #0xf3, #0x00	;  243
      003302 F4 00                 2156 	.byte #0xf4, #0x00	;  244
      003304 F5 00                 2157 	.byte #0xf5, #0x00	;  245
      003306 F6 00                 2158 	.byte #0xf6, #0x00	;  246
      003308 F8 00                 2159 	.byte #0xf8, #0x00	;  248
      00330A F9 00                 2160 	.byte #0xf9, #0x00	;  249
      00330C FA 00                 2161 	.byte #0xfa, #0x00	;  250
      00330E FA 00                 2162 	.byte #0xfa, #0x00	;  250
      003310 FB 00                 2163 	.byte #0xfb, #0x00	;  251
      003312 FC 00                 2164 	.byte #0xfc, #0x00	;  252
      003314 FD 00                 2165 	.byte #0xfd, #0x00	;  253
      003316 FD 00                 2166 	.byte #0xfd, #0x00	;  253
      003318 FE 00                 2167 	.byte #0xfe, #0x00	;  254
      00331A FE 00                 2168 	.byte #0xfe, #0x00	;  254
      00331C FE 00                 2169 	.byte #0xfe, #0x00	;  254
      00331E FF 00                 2170 	.byte #0xff, #0x00	;  255
      003320 FF 00                 2171 	.byte #0xff, #0x00	;  255
      003322 FF 00                 2172 	.byte #0xff, #0x00	;  255
      003324 FF 00                 2173 	.byte #0xff, #0x00	;  255
      003326 FF 00                 2174 	.byte #0xff, #0x00	;  255
      003328 FF 00                 2175 	.byte #0xff, #0x00	;  255
      00332A FF 00                 2176 	.byte #0xff, #0x00	;  255
      00332C FE 00                 2177 	.byte #0xfe, #0x00	;  254
      00332E FE 00                 2178 	.byte #0xfe, #0x00	;  254
      003330 FE 00                 2179 	.byte #0xfe, #0x00	;  254
      003332 FD 00                 2180 	.byte #0xfd, #0x00	;  253
      003334 FD 00                 2181 	.byte #0xfd, #0x00	;  253
      003336 FC 00                 2182 	.byte #0xfc, #0x00	;  252
      003338 FB 00                 2183 	.byte #0xfb, #0x00	;  251
      00333A FA 00                 2184 	.byte #0xfa, #0x00	;  250
      00333C FA 00                 2185 	.byte #0xfa, #0x00	;  250
      00333E F9 00                 2186 	.byte #0xf9, #0x00	;  249
      003340 F8 00                 2187 	.byte #0xf8, #0x00	;  248
      003342 F6 00                 2188 	.byte #0xf6, #0x00	;  246
      003344 F5 00                 2189 	.byte #0xf5, #0x00	;  245
      003346 F4 00                 2190 	.byte #0xf4, #0x00	;  244
      003348 F3 00                 2191 	.byte #0xf3, #0x00	;  243
      00334A F1 00                 2192 	.byte #0xf1, #0x00	;  241
      00334C F0 00                 2193 	.byte #0xf0, #0x00	;  240
      00334E EF 00                 2194 	.byte #0xef, #0x00	;  239
      003350 ED 00                 2195 	.byte #0xed, #0x00	;  237
      003352 EB 00                 2196 	.byte #0xeb, #0x00	;  235
      003354 EA 00                 2197 	.byte #0xea, #0x00	;  234
      003356 E8 00                 2198 	.byte #0xe8, #0x00	;  232
      003358 E6 00                 2199 	.byte #0xe6, #0x00	;  230
      00335A E4 00                 2200 	.byte #0xe4, #0x00	;  228
      00335C E2 00                 2201 	.byte #0xe2, #0x00	;  226
      00335E E0 00                 2202 	.byte #0xe0, #0x00	;  224
      003360 DE 00                 2203 	.byte #0xde, #0x00	;  222
      003362 DC 00                 2204 	.byte #0xdc, #0x00	;  220
      003364 DA 00                 2205 	.byte #0xda, #0x00	;  218
      003366 D8 00                 2206 	.byte #0xd8, #0x00	;  216
      003368 D5 00                 2207 	.byte #0xd5, #0x00	;  213
      00336A D3 00                 2208 	.byte #0xd3, #0x00	;  211
      00336C D1 00                 2209 	.byte #0xd1, #0x00	;  209
      00336E CE 00                 2210 	.byte #0xce, #0x00	;  206
      003370 CC 00                 2211 	.byte #0xcc, #0x00	;  204
      003372 C9 00                 2212 	.byte #0xc9, #0x00	;  201
      003374 C7 00                 2213 	.byte #0xc7, #0x00	;  199
      003376 C4 00                 2214 	.byte #0xc4, #0x00	;  196
      003378 C1 00                 2215 	.byte #0xc1, #0x00	;  193
      00337A BF 00                 2216 	.byte #0xbf, #0x00	;  191
      00337C BC 00                 2217 	.byte #0xbc, #0x00	;  188
      00337E B9 00                 2218 	.byte #0xb9, #0x00	;  185
      003380 B6 00                 2219 	.byte #0xb6, #0x00	;  182
      003382 B3 00                 2220 	.byte #0xb3, #0x00	;  179
      003384 B1 00                 2221 	.byte #0xb1, #0x00	;  177
      003386 AE 00                 2222 	.byte #0xae, #0x00	;  174
      003388 AB 00                 2223 	.byte #0xab, #0x00	;  171
      00338A A8 00                 2224 	.byte #0xa8, #0x00	;  168
      00338C A5 00                 2225 	.byte #0xa5, #0x00	;  165
      00338E A2 00                 2226 	.byte #0xa2, #0x00	;  162
      003390 9F 00                 2227 	.byte #0x9f, #0x00	;  159
      003392 9C 00                 2228 	.byte #0x9c, #0x00	;  156
      003394 99 00                 2229 	.byte #0x99, #0x00	;  153
      003396 96 00                 2230 	.byte #0x96, #0x00	;  150
      003398 93 00                 2231 	.byte #0x93, #0x00	;  147
      00339A 90 00                 2232 	.byte #0x90, #0x00	;  144
      00339C 8C 00                 2233 	.byte #0x8c, #0x00	;  140
      00339E 89 00                 2234 	.byte #0x89, #0x00	;  137
      0033A0 86 00                 2235 	.byte #0x86, #0x00	;  134
      0033A2 83 00                 2236 	.byte #0x83, #0x00	;  131
      0033A4 80 00                 2237 	.byte #0x80, #0x00	;  128
      0033A6 7D 00                 2238 	.byte #0x7d, #0x00	;  125
      0033A8 7A 00                 2239 	.byte #0x7a, #0x00	;  122
      0033AA 77 00                 2240 	.byte #0x77, #0x00	;  119
      0033AC 74 00                 2241 	.byte #0x74, #0x00	;  116
      0033AE 70 00                 2242 	.byte #0x70, #0x00	;  112
      0033B0 6D 00                 2243 	.byte #0x6d, #0x00	;  109
      0033B2 6A 00                 2244 	.byte #0x6a, #0x00	;  106
      0033B4 67 00                 2245 	.byte #0x67, #0x00	;  103
      0033B6 64 00                 2246 	.byte #0x64, #0x00	;  100
      0033B8 61 00                 2247 	.byte #0x61, #0x00	;  97
      0033BA 5E 00                 2248 	.byte #0x5e, #0x00	;  94
      0033BC 5B 00                 2249 	.byte #0x5b, #0x00	;  91
      0033BE 58 00                 2250 	.byte #0x58, #0x00	;  88
      0033C0 55 00                 2251 	.byte #0x55, #0x00	;  85
      0033C2 52 00                 2252 	.byte #0x52, #0x00	;  82
      0033C4 4F 00                 2253 	.byte #0x4f, #0x00	;  79
      0033C6 4D 00                 2254 	.byte #0x4d, #0x00	;  77
      0033C8 4A 00                 2255 	.byte #0x4a, #0x00	;  74
      0033CA 47 00                 2256 	.byte #0x47, #0x00	;  71
      0033CC 44 00                 2257 	.byte #0x44, #0x00	;  68
      0033CE 41 00                 2258 	.byte #0x41, #0x00	;  65
      0033D0 3F 00                 2259 	.byte #0x3f, #0x00	;  63
      0033D2 3C 00                 2260 	.byte #0x3c, #0x00	;  60
      0033D4 39 00                 2261 	.byte #0x39, #0x00	;  57
      0033D6 37 00                 2262 	.byte #0x37, #0x00	;  55
      0033D8 34 00                 2263 	.byte #0x34, #0x00	;  52
      0033DA 32 00                 2264 	.byte #0x32, #0x00	;  50
      0033DC 2F 00                 2265 	.byte #0x2f, #0x00	;  47
      0033DE 2D 00                 2266 	.byte #0x2d, #0x00	;  45
      0033E0 2B 00                 2267 	.byte #0x2b, #0x00	;  43
      0033E2 28 00                 2268 	.byte #0x28, #0x00	;  40
      0033E4 26 00                 2269 	.byte #0x26, #0x00	;  38
      0033E6 24 00                 2270 	.byte #0x24, #0x00	;  36
      0033E8 22 00                 2271 	.byte #0x22, #0x00	;  34
      0033EA 20 00                 2272 	.byte #0x20, #0x00	;  32
      0033EC 1E 00                 2273 	.byte #0x1e, #0x00	;  30
      0033EE 1C 00                 2274 	.byte #0x1c, #0x00	;  28
      0033F0 1A 00                 2275 	.byte #0x1a, #0x00	;  26
      0033F2 18 00                 2276 	.byte #0x18, #0x00	;  24
      0033F4 16 00                 2277 	.byte #0x16, #0x00	;  22
      0033F6 15 00                 2278 	.byte #0x15, #0x00	;  21
      0033F8 13 00                 2279 	.byte #0x13, #0x00	;  19
      0033FA 11 00                 2280 	.byte #0x11, #0x00	;  17
      0033FC 10 00                 2281 	.byte #0x10, #0x00	;  16
      0033FE 0F 00                 2282 	.byte #0x0f, #0x00	;  15
      003400 0D 00                 2283 	.byte #0x0d, #0x00	;  13
      003402 0C 00                 2284 	.byte #0x0c, #0x00	;  12
      003404 0B 00                 2285 	.byte #0x0b, #0x00	;  11
      003406 0A 00                 2286 	.byte #0x0a, #0x00	;  10
      003408 08 00                 2287 	.byte #0x08, #0x00	;  8
      00340A 07 00                 2288 	.byte #0x07, #0x00	;  7
      00340C 06 00                 2289 	.byte #0x06, #0x00	;  6
      00340E 06 00                 2290 	.byte #0x06, #0x00	;  6
      003410 05 00                 2291 	.byte #0x05, #0x00	;  5
      003412 04 00                 2292 	.byte #0x04, #0x00	;  4
      003414 03 00                 2293 	.byte #0x03, #0x00	;  3
      003416 03 00                 2294 	.byte #0x03, #0x00	;  3
      003418 02 00                 2295 	.byte #0x02, #0x00	;  2
      00341A 02 00                 2296 	.byte #0x02, #0x00	;  2
      00341C 02 00                 2297 	.byte #0x02, #0x00	;  2
      00341E 01 00                 2298 	.byte #0x01, #0x00	;  1
      003420 01 00                 2299 	.byte #0x01, #0x00	;  1
      003422 01 00                 2300 	.byte #0x01, #0x00	;  1
      003424 01 00                 2301 	.byte #0x01, #0x00	;  1
      003426 01 00                 2302 	.byte #0x01, #0x00	;  1
      003428 01 00                 2303 	.byte #0x01, #0x00	;  1
      00342A 01 00                 2304 	.byte #0x01, #0x00	;  1
      00342C 02 00                 2305 	.byte #0x02, #0x00	;  2
      00342E 02 00                 2306 	.byte #0x02, #0x00	;  2
      003430 02 00                 2307 	.byte #0x02, #0x00	;  2
      003432 03 00                 2308 	.byte #0x03, #0x00	;  3
      003434 03 00                 2309 	.byte #0x03, #0x00	;  3
      003436 04 00                 2310 	.byte #0x04, #0x00	;  4
      003438 05 00                 2311 	.byte #0x05, #0x00	;  5
      00343A 06 00                 2312 	.byte #0x06, #0x00	;  6
      00343C 06 00                 2313 	.byte #0x06, #0x00	;  6
      00343E 07 00                 2314 	.byte #0x07, #0x00	;  7
      003440 08 00                 2315 	.byte #0x08, #0x00	;  8
      003442 0A 00                 2316 	.byte #0x0a, #0x00	;  10
      003444 0B 00                 2317 	.byte #0x0b, #0x00	;  11
      003446 0C 00                 2318 	.byte #0x0c, #0x00	;  12
      003448 0D 00                 2319 	.byte #0x0d, #0x00	;  13
      00344A 0F 00                 2320 	.byte #0x0f, #0x00	;  15
      00344C 10 00                 2321 	.byte #0x10, #0x00	;  16
      00344E 11 00                 2322 	.byte #0x11, #0x00	;  17
      003450 13 00                 2323 	.byte #0x13, #0x00	;  19
      003452 15 00                 2324 	.byte #0x15, #0x00	;  21
      003454 16 00                 2325 	.byte #0x16, #0x00	;  22
      003456 18 00                 2326 	.byte #0x18, #0x00	;  24
      003458 1A 00                 2327 	.byte #0x1a, #0x00	;  26
      00345A 1C 00                 2328 	.byte #0x1c, #0x00	;  28
      00345C 1E 00                 2329 	.byte #0x1e, #0x00	;  30
      00345E 20 00                 2330 	.byte #0x20, #0x00	;  32
      003460 22 00                 2331 	.byte #0x22, #0x00	;  34
      003462 24 00                 2332 	.byte #0x24, #0x00	;  36
      003464 26 00                 2333 	.byte #0x26, #0x00	;  38
      003466 28 00                 2334 	.byte #0x28, #0x00	;  40
      003468 2B 00                 2335 	.byte #0x2b, #0x00	;  43
      00346A 2D 00                 2336 	.byte #0x2d, #0x00	;  45
      00346C 2F 00                 2337 	.byte #0x2f, #0x00	;  47
      00346E 32 00                 2338 	.byte #0x32, #0x00	;  50
      003470 34 00                 2339 	.byte #0x34, #0x00	;  52
      003472 37 00                 2340 	.byte #0x37, #0x00	;  55
      003474 39 00                 2341 	.byte #0x39, #0x00	;  57
      003476 3C 00                 2342 	.byte #0x3c, #0x00	;  60
      003478 3F 00                 2343 	.byte #0x3f, #0x00	;  63
      00347A 41 00                 2344 	.byte #0x41, #0x00	;  65
      00347C 44 00                 2345 	.byte #0x44, #0x00	;  68
      00347E 47 00                 2346 	.byte #0x47, #0x00	;  71
      003480 4A 00                 2347 	.byte #0x4a, #0x00	;  74
      003482 4D 00                 2348 	.byte #0x4d, #0x00	;  77
      003484 4F 00                 2349 	.byte #0x4f, #0x00	;  79
      003486 52 00                 2350 	.byte #0x52, #0x00	;  82
      003488 55 00                 2351 	.byte #0x55, #0x00	;  85
      00348A 58 00                 2352 	.byte #0x58, #0x00	;  88
      00348C 5B 00                 2353 	.byte #0x5b, #0x00	;  91
      00348E 5E 00                 2354 	.byte #0x5e, #0x00	;  94
      003490 61 00                 2355 	.byte #0x61, #0x00	;  97
      003492 64 00                 2356 	.byte #0x64, #0x00	;  100
      003494 67 00                 2357 	.byte #0x67, #0x00	;  103
      003496 6A 00                 2358 	.byte #0x6a, #0x00	;  106
      003498 6D 00                 2359 	.byte #0x6d, #0x00	;  109
      00349A 70 00                 2360 	.byte #0x70, #0x00	;  112
      00349C 74 00                 2361 	.byte #0x74, #0x00	;  116
      00349E 77 00                 2362 	.byte #0x77, #0x00	;  119
      0034A0 7A 00                 2363 	.byte #0x7a, #0x00	;  122
      0034A2 7D 00                 2364 	.byte #0x7d, #0x00	;  125
      0034A4                       2365 _trig_dac_values:
      0034A4 00 00                 2366 	.byte #0x00, #0x00	;  0
      0034A6 01 00                 2367 	.byte #0x01, #0x00	;  1
      0034A8 02 00                 2368 	.byte #0x02, #0x00	;  2
      0034AA 03 00                 2369 	.byte #0x03, #0x00	;  3
      0034AC 04 00                 2370 	.byte #0x04, #0x00	;  4
      0034AE 05 00                 2371 	.byte #0x05, #0x00	;  5
      0034B0 06 00                 2372 	.byte #0x06, #0x00	;  6
      0034B2 07 00                 2373 	.byte #0x07, #0x00	;  7
      0034B4 08 00                 2374 	.byte #0x08, #0x00	;  8
      0034B6 09 00                 2375 	.byte #0x09, #0x00	;  9
      0034B8 0A 00                 2376 	.byte #0x0a, #0x00	;  10
      0034BA 0B 00                 2377 	.byte #0x0b, #0x00	;  11
      0034BC 0C 00                 2378 	.byte #0x0c, #0x00	;  12
      0034BE 0D 00                 2379 	.byte #0x0d, #0x00	;  13
      0034C0 0E 00                 2380 	.byte #0x0e, #0x00	;  14
      0034C2 0F 00                 2381 	.byte #0x0f, #0x00	;  15
      0034C4 10 00                 2382 	.byte #0x10, #0x00	;  16
      0034C6 11 00                 2383 	.byte #0x11, #0x00	;  17
      0034C8 12 00                 2384 	.byte #0x12, #0x00	;  18
      0034CA 13 00                 2385 	.byte #0x13, #0x00	;  19
      0034CC 14 00                 2386 	.byte #0x14, #0x00	;  20
      0034CE 15 00                 2387 	.byte #0x15, #0x00	;  21
      0034D0 16 00                 2388 	.byte #0x16, #0x00	;  22
      0034D2 17 00                 2389 	.byte #0x17, #0x00	;  23
      0034D4 18 00                 2390 	.byte #0x18, #0x00	;  24
      0034D6 19 00                 2391 	.byte #0x19, #0x00	;  25
      0034D8 1A 00                 2392 	.byte #0x1a, #0x00	;  26
      0034DA 1B 00                 2393 	.byte #0x1b, #0x00	;  27
      0034DC 1C 00                 2394 	.byte #0x1c, #0x00	;  28
      0034DE 1D 00                 2395 	.byte #0x1d, #0x00	;  29
      0034E0 1E 00                 2396 	.byte #0x1e, #0x00	;  30
      0034E2 1F 00                 2397 	.byte #0x1f, #0x00	;  31
      0034E4 20 00                 2398 	.byte #0x20, #0x00	;  32
      0034E6 21 00                 2399 	.byte #0x21, #0x00	;  33
      0034E8 22 00                 2400 	.byte #0x22, #0x00	;  34
      0034EA 23 00                 2401 	.byte #0x23, #0x00	;  35
      0034EC 24 00                 2402 	.byte #0x24, #0x00	;  36
      0034EE 25 00                 2403 	.byte #0x25, #0x00	;  37
      0034F0 26 00                 2404 	.byte #0x26, #0x00	;  38
      0034F2 27 00                 2405 	.byte #0x27, #0x00	;  39
      0034F4 28 00                 2406 	.byte #0x28, #0x00	;  40
      0034F6 29 00                 2407 	.byte #0x29, #0x00	;  41
      0034F8 2A 00                 2408 	.byte #0x2a, #0x00	;  42
      0034FA 2B 00                 2409 	.byte #0x2b, #0x00	;  43
      0034FC 2C 00                 2410 	.byte #0x2c, #0x00	;  44
      0034FE 2D 00                 2411 	.byte #0x2d, #0x00	;  45
      003500 2E 00                 2412 	.byte #0x2e, #0x00	;  46
      003502 2F 00                 2413 	.byte #0x2f, #0x00	;  47
      003504 30 00                 2414 	.byte #0x30, #0x00	;  48
      003506 31 00                 2415 	.byte #0x31, #0x00	;  49
      003508 32 00                 2416 	.byte #0x32, #0x00	;  50
      00350A 33 00                 2417 	.byte #0x33, #0x00	;  51
      00350C 34 00                 2418 	.byte #0x34, #0x00	;  52
      00350E 35 00                 2419 	.byte #0x35, #0x00	;  53
      003510 36 00                 2420 	.byte #0x36, #0x00	;  54
      003512 37 00                 2421 	.byte #0x37, #0x00	;  55
      003514 38 00                 2422 	.byte #0x38, #0x00	;  56
      003516 39 00                 2423 	.byte #0x39, #0x00	;  57
      003518 3A 00                 2424 	.byte #0x3a, #0x00	;  58
      00351A 3B 00                 2425 	.byte #0x3b, #0x00	;  59
      00351C 3C 00                 2426 	.byte #0x3c, #0x00	;  60
      00351E 3D 00                 2427 	.byte #0x3d, #0x00	;  61
      003520 3E 00                 2428 	.byte #0x3e, #0x00	;  62
      003522 3F 00                 2429 	.byte #0x3f, #0x00	;  63
      003524 40 00                 2430 	.byte #0x40, #0x00	;  64
      003526 41 00                 2431 	.byte #0x41, #0x00	;  65
      003528 42 00                 2432 	.byte #0x42, #0x00	;  66
      00352A 43 00                 2433 	.byte #0x43, #0x00	;  67
      00352C 44 00                 2434 	.byte #0x44, #0x00	;  68
      00352E 45 00                 2435 	.byte #0x45, #0x00	;  69
      003530 46 00                 2436 	.byte #0x46, #0x00	;  70
      003532 47 00                 2437 	.byte #0x47, #0x00	;  71
      003534 48 00                 2438 	.byte #0x48, #0x00	;  72
      003536 49 00                 2439 	.byte #0x49, #0x00	;  73
      003538 4A 00                 2440 	.byte #0x4a, #0x00	;  74
      00353A 4B 00                 2441 	.byte #0x4b, #0x00	;  75
      00353C 4C 00                 2442 	.byte #0x4c, #0x00	;  76
      00353E 4D 00                 2443 	.byte #0x4d, #0x00	;  77
      003540 4E 00                 2444 	.byte #0x4e, #0x00	;  78
      003542 4F 00                 2445 	.byte #0x4f, #0x00	;  79
      003544 50 00                 2446 	.byte #0x50, #0x00	;  80
      003546 51 00                 2447 	.byte #0x51, #0x00	;  81
      003548 52 00                 2448 	.byte #0x52, #0x00	;  82
      00354A 53 00                 2449 	.byte #0x53, #0x00	;  83
      00354C 54 00                 2450 	.byte #0x54, #0x00	;  84
      00354E 55 00                 2451 	.byte #0x55, #0x00	;  85
      003550 56 00                 2452 	.byte #0x56, #0x00	;  86
      003552 57 00                 2453 	.byte #0x57, #0x00	;  87
      003554 58 00                 2454 	.byte #0x58, #0x00	;  88
      003556 59 00                 2455 	.byte #0x59, #0x00	;  89
      003558 5A 00                 2456 	.byte #0x5a, #0x00	;  90
      00355A 5B 00                 2457 	.byte #0x5b, #0x00	;  91
      00355C 5C 00                 2458 	.byte #0x5c, #0x00	;  92
      00355E 5D 00                 2459 	.byte #0x5d, #0x00	;  93
      003560 5E 00                 2460 	.byte #0x5e, #0x00	;  94
      003562 5F 00                 2461 	.byte #0x5f, #0x00	;  95
      003564 60 00                 2462 	.byte #0x60, #0x00	;  96
      003566 61 00                 2463 	.byte #0x61, #0x00	;  97
      003568 62 00                 2464 	.byte #0x62, #0x00	;  98
      00356A 63 00                 2465 	.byte #0x63, #0x00	;  99
      00356C 64 00                 2466 	.byte #0x64, #0x00	;  100
      00356E 65 00                 2467 	.byte #0x65, #0x00	;  101
      003570 66 00                 2468 	.byte #0x66, #0x00	;  102
      003572 67 00                 2469 	.byte #0x67, #0x00	;  103
      003574 68 00                 2470 	.byte #0x68, #0x00	;  104
      003576 69 00                 2471 	.byte #0x69, #0x00	;  105
      003578 6A 00                 2472 	.byte #0x6a, #0x00	;  106
      00357A 6B 00                 2473 	.byte #0x6b, #0x00	;  107
      00357C 6C 00                 2474 	.byte #0x6c, #0x00	;  108
      00357E 6D 00                 2475 	.byte #0x6d, #0x00	;  109
      003580 6E 00                 2476 	.byte #0x6e, #0x00	;  110
      003582 6F 00                 2477 	.byte #0x6f, #0x00	;  111
      003584 70 00                 2478 	.byte #0x70, #0x00	;  112
      003586 71 00                 2479 	.byte #0x71, #0x00	;  113
      003588 72 00                 2480 	.byte #0x72, #0x00	;  114
      00358A 73 00                 2481 	.byte #0x73, #0x00	;  115
      00358C 74 00                 2482 	.byte #0x74, #0x00	;  116
      00358E 75 00                 2483 	.byte #0x75, #0x00	;  117
      003590 76 00                 2484 	.byte #0x76, #0x00	;  118
      003592 77 00                 2485 	.byte #0x77, #0x00	;  119
      003594 78 00                 2486 	.byte #0x78, #0x00	;  120
      003596 79 00                 2487 	.byte #0x79, #0x00	;  121
      003598 7A 00                 2488 	.byte #0x7a, #0x00	;  122
      00359A 7B 00                 2489 	.byte #0x7b, #0x00	;  123
      00359C 7C 00                 2490 	.byte #0x7c, #0x00	;  124
      00359E 7D 00                 2491 	.byte #0x7d, #0x00	;  125
      0035A0 7E 00                 2492 	.byte #0x7e, #0x00	;  126
      0035A2 7F 00                 2493 	.byte #0x7f, #0x00	;  127
      0035A4 80 00                 2494 	.byte #0x80, #0x00	;  128
      0035A6 81 00                 2495 	.byte #0x81, #0x00	;  129
      0035A8 82 00                 2496 	.byte #0x82, #0x00	;  130
      0035AA 83 00                 2497 	.byte #0x83, #0x00	;  131
      0035AC 84 00                 2498 	.byte #0x84, #0x00	;  132
      0035AE 85 00                 2499 	.byte #0x85, #0x00	;  133
      0035B0 86 00                 2500 	.byte #0x86, #0x00	;  134
      0035B2 87 00                 2501 	.byte #0x87, #0x00	;  135
      0035B4 88 00                 2502 	.byte #0x88, #0x00	;  136
      0035B6 89 00                 2503 	.byte #0x89, #0x00	;  137
      0035B8 8A 00                 2504 	.byte #0x8a, #0x00	;  138
      0035BA 8B 00                 2505 	.byte #0x8b, #0x00	;  139
      0035BC 8C 00                 2506 	.byte #0x8c, #0x00	;  140
      0035BE 8D 00                 2507 	.byte #0x8d, #0x00	;  141
      0035C0 8E 00                 2508 	.byte #0x8e, #0x00	;  142
      0035C2 8F 00                 2509 	.byte #0x8f, #0x00	;  143
      0035C4 90 00                 2510 	.byte #0x90, #0x00	;  144
      0035C6 91 00                 2511 	.byte #0x91, #0x00	;  145
      0035C8 92 00                 2512 	.byte #0x92, #0x00	;  146
      0035CA 93 00                 2513 	.byte #0x93, #0x00	;  147
      0035CC 94 00                 2514 	.byte #0x94, #0x00	;  148
      0035CE 95 00                 2515 	.byte #0x95, #0x00	;  149
      0035D0 96 00                 2516 	.byte #0x96, #0x00	;  150
      0035D2 97 00                 2517 	.byte #0x97, #0x00	;  151
      0035D4 98 00                 2518 	.byte #0x98, #0x00	;  152
      0035D6 99 00                 2519 	.byte #0x99, #0x00	;  153
      0035D8 9A 00                 2520 	.byte #0x9a, #0x00	;  154
      0035DA 9B 00                 2521 	.byte #0x9b, #0x00	;  155
      0035DC 9C 00                 2522 	.byte #0x9c, #0x00	;  156
      0035DE 9D 00                 2523 	.byte #0x9d, #0x00	;  157
      0035E0 9E 00                 2524 	.byte #0x9e, #0x00	;  158
      0035E2 9F 00                 2525 	.byte #0x9f, #0x00	;  159
      0035E4 A0 00                 2526 	.byte #0xa0, #0x00	;  160
      0035E6 A1 00                 2527 	.byte #0xa1, #0x00	;  161
      0035E8 A2 00                 2528 	.byte #0xa2, #0x00	;  162
      0035EA A3 00                 2529 	.byte #0xa3, #0x00	;  163
      0035EC A4 00                 2530 	.byte #0xa4, #0x00	;  164
      0035EE A5 00                 2531 	.byte #0xa5, #0x00	;  165
      0035F0 A6 00                 2532 	.byte #0xa6, #0x00	;  166
      0035F2 A7 00                 2533 	.byte #0xa7, #0x00	;  167
      0035F4 A8 00                 2534 	.byte #0xa8, #0x00	;  168
      0035F6 A9 00                 2535 	.byte #0xa9, #0x00	;  169
      0035F8 AA 00                 2536 	.byte #0xaa, #0x00	;  170
      0035FA AB 00                 2537 	.byte #0xab, #0x00	;  171
      0035FC AC 00                 2538 	.byte #0xac, #0x00	;  172
      0035FE AD 00                 2539 	.byte #0xad, #0x00	;  173
      003600 AE 00                 2540 	.byte #0xae, #0x00	;  174
      003602 AF 00                 2541 	.byte #0xaf, #0x00	;  175
      003604 B0 00                 2542 	.byte #0xb0, #0x00	;  176
      003606 B1 00                 2543 	.byte #0xb1, #0x00	;  177
      003608 B2 00                 2544 	.byte #0xb2, #0x00	;  178
      00360A B3 00                 2545 	.byte #0xb3, #0x00	;  179
      00360C B4 00                 2546 	.byte #0xb4, #0x00	;  180
      00360E B5 00                 2547 	.byte #0xb5, #0x00	;  181
      003610 B6 00                 2548 	.byte #0xb6, #0x00	;  182
      003612 B7 00                 2549 	.byte #0xb7, #0x00	;  183
      003614 B8 00                 2550 	.byte #0xb8, #0x00	;  184
      003616 B9 00                 2551 	.byte #0xb9, #0x00	;  185
      003618 BA 00                 2552 	.byte #0xba, #0x00	;  186
      00361A BB 00                 2553 	.byte #0xbb, #0x00	;  187
      00361C BC 00                 2554 	.byte #0xbc, #0x00	;  188
      00361E BD 00                 2555 	.byte #0xbd, #0x00	;  189
      003620 BE 00                 2556 	.byte #0xbe, #0x00	;  190
      003622 BF 00                 2557 	.byte #0xbf, #0x00	;  191
      003624 C0 00                 2558 	.byte #0xc0, #0x00	;  192
      003626 C1 00                 2559 	.byte #0xc1, #0x00	;  193
      003628 C2 00                 2560 	.byte #0xc2, #0x00	;  194
      00362A C3 00                 2561 	.byte #0xc3, #0x00	;  195
      00362C C4 00                 2562 	.byte #0xc4, #0x00	;  196
      00362E C5 00                 2563 	.byte #0xc5, #0x00	;  197
      003630 C6 00                 2564 	.byte #0xc6, #0x00	;  198
      003632 C7 00                 2565 	.byte #0xc7, #0x00	;  199
      003634 C8 00                 2566 	.byte #0xc8, #0x00	;  200
      003636 C9 00                 2567 	.byte #0xc9, #0x00	;  201
      003638 CA 00                 2568 	.byte #0xca, #0x00	;  202
      00363A CB 00                 2569 	.byte #0xcb, #0x00	;  203
      00363C CC 00                 2570 	.byte #0xcc, #0x00	;  204
      00363E CD 00                 2571 	.byte #0xcd, #0x00	;  205
      003640 CE 00                 2572 	.byte #0xce, #0x00	;  206
      003642 CF 00                 2573 	.byte #0xcf, #0x00	;  207
      003644 D0 00                 2574 	.byte #0xd0, #0x00	;  208
      003646 D1 00                 2575 	.byte #0xd1, #0x00	;  209
      003648 D2 00                 2576 	.byte #0xd2, #0x00	;  210
      00364A D3 00                 2577 	.byte #0xd3, #0x00	;  211
      00364C D4 00                 2578 	.byte #0xd4, #0x00	;  212
      00364E D5 00                 2579 	.byte #0xd5, #0x00	;  213
      003650 D6 00                 2580 	.byte #0xd6, #0x00	;  214
      003652 D7 00                 2581 	.byte #0xd7, #0x00	;  215
      003654 D8 00                 2582 	.byte #0xd8, #0x00	;  216
      003656 D9 00                 2583 	.byte #0xd9, #0x00	;  217
      003658 DA 00                 2584 	.byte #0xda, #0x00	;  218
      00365A DB 00                 2585 	.byte #0xdb, #0x00	;  219
      00365C DC 00                 2586 	.byte #0xdc, #0x00	;  220
      00365E DD 00                 2587 	.byte #0xdd, #0x00	;  221
      003660 DE 00                 2588 	.byte #0xde, #0x00	;  222
      003662 DF 00                 2589 	.byte #0xdf, #0x00	;  223
      003664 E0 00                 2590 	.byte #0xe0, #0x00	;  224
      003666 E1 00                 2591 	.byte #0xe1, #0x00	;  225
      003668 E2 00                 2592 	.byte #0xe2, #0x00	;  226
      00366A E3 00                 2593 	.byte #0xe3, #0x00	;  227
      00366C E4 00                 2594 	.byte #0xe4, #0x00	;  228
      00366E E5 00                 2595 	.byte #0xe5, #0x00	;  229
      003670 E6 00                 2596 	.byte #0xe6, #0x00	;  230
      003672 E7 00                 2597 	.byte #0xe7, #0x00	;  231
      003674 E8 00                 2598 	.byte #0xe8, #0x00	;  232
      003676 E9 00                 2599 	.byte #0xe9, #0x00	;  233
      003678 EA 00                 2600 	.byte #0xea, #0x00	;  234
      00367A EB 00                 2601 	.byte #0xeb, #0x00	;  235
      00367C EC 00                 2602 	.byte #0xec, #0x00	;  236
      00367E ED 00                 2603 	.byte #0xed, #0x00	;  237
      003680 EE 00                 2604 	.byte #0xee, #0x00	;  238
      003682 EF 00                 2605 	.byte #0xef, #0x00	;  239
      003684 F0 00                 2606 	.byte #0xf0, #0x00	;  240
      003686 F1 00                 2607 	.byte #0xf1, #0x00	;  241
      003688 F2 00                 2608 	.byte #0xf2, #0x00	;  242
      00368A F3 00                 2609 	.byte #0xf3, #0x00	;  243
      00368C F4 00                 2610 	.byte #0xf4, #0x00	;  244
      00368E F5 00                 2611 	.byte #0xf5, #0x00	;  245
      003690 F6 00                 2612 	.byte #0xf6, #0x00	;  246
      003692 F7 00                 2613 	.byte #0xf7, #0x00	;  247
      003694 F8 00                 2614 	.byte #0xf8, #0x00	;  248
      003696 F9 00                 2615 	.byte #0xf9, #0x00	;  249
      003698 FA 00                 2616 	.byte #0xfa, #0x00	;  250
      00369A FB 00                 2617 	.byte #0xfb, #0x00	;  251
      00369C FC 00                 2618 	.byte #0xfc, #0x00	;  252
      00369E FD 00                 2619 	.byte #0xfd, #0x00	;  253
      0036A0 FE 00                 2620 	.byte #0xfe, #0x00	;  254
      0036A2 FF 00                 2621 	.byte #0xff, #0x00	;  255
      0036A4 FF 00                 2622 	.byte #0xff, #0x00	;  255
      0036A6 FE 00                 2623 	.byte #0xfe, #0x00	;  254
      0036A8 FD 00                 2624 	.byte #0xfd, #0x00	;  253
      0036AA FC 00                 2625 	.byte #0xfc, #0x00	;  252
      0036AC FB 00                 2626 	.byte #0xfb, #0x00	;  251
      0036AE FA 00                 2627 	.byte #0xfa, #0x00	;  250
      0036B0 F9 00                 2628 	.byte #0xf9, #0x00	;  249
      0036B2 F8 00                 2629 	.byte #0xf8, #0x00	;  248
      0036B4 F7 00                 2630 	.byte #0xf7, #0x00	;  247
      0036B6 F6 00                 2631 	.byte #0xf6, #0x00	;  246
      0036B8 F5 00                 2632 	.byte #0xf5, #0x00	;  245
      0036BA F4 00                 2633 	.byte #0xf4, #0x00	;  244
      0036BC F3 00                 2634 	.byte #0xf3, #0x00	;  243
      0036BE F2 00                 2635 	.byte #0xf2, #0x00	;  242
      0036C0 F1 00                 2636 	.byte #0xf1, #0x00	;  241
      0036C2 F0 00                 2637 	.byte #0xf0, #0x00	;  240
      0036C4 EF 00                 2638 	.byte #0xef, #0x00	;  239
      0036C6 EE 00                 2639 	.byte #0xee, #0x00	;  238
      0036C8 ED 00                 2640 	.byte #0xed, #0x00	;  237
      0036CA EC 00                 2641 	.byte #0xec, #0x00	;  236
      0036CC EB 00                 2642 	.byte #0xeb, #0x00	;  235
      0036CE EA 00                 2643 	.byte #0xea, #0x00	;  234
      0036D0 E9 00                 2644 	.byte #0xe9, #0x00	;  233
      0036D2 E8 00                 2645 	.byte #0xe8, #0x00	;  232
      0036D4 E7 00                 2646 	.byte #0xe7, #0x00	;  231
      0036D6 E6 00                 2647 	.byte #0xe6, #0x00	;  230
      0036D8 E5 00                 2648 	.byte #0xe5, #0x00	;  229
      0036DA E4 00                 2649 	.byte #0xe4, #0x00	;  228
      0036DC E3 00                 2650 	.byte #0xe3, #0x00	;  227
      0036DE E2 00                 2651 	.byte #0xe2, #0x00	;  226
      0036E0 E1 00                 2652 	.byte #0xe1, #0x00	;  225
      0036E2 E0 00                 2653 	.byte #0xe0, #0x00	;  224
      0036E4 DF 00                 2654 	.byte #0xdf, #0x00	;  223
      0036E6 DE 00                 2655 	.byte #0xde, #0x00	;  222
      0036E8 DD 00                 2656 	.byte #0xdd, #0x00	;  221
      0036EA DC 00                 2657 	.byte #0xdc, #0x00	;  220
      0036EC DB 00                 2658 	.byte #0xdb, #0x00	;  219
      0036EE DA 00                 2659 	.byte #0xda, #0x00	;  218
      0036F0 D9 00                 2660 	.byte #0xd9, #0x00	;  217
      0036F2 D8 00                 2661 	.byte #0xd8, #0x00	;  216
      0036F4 D7 00                 2662 	.byte #0xd7, #0x00	;  215
      0036F6 D6 00                 2663 	.byte #0xd6, #0x00	;  214
      0036F8 D5 00                 2664 	.byte #0xd5, #0x00	;  213
      0036FA D4 00                 2665 	.byte #0xd4, #0x00	;  212
      0036FC D3 00                 2666 	.byte #0xd3, #0x00	;  211
      0036FE D2 00                 2667 	.byte #0xd2, #0x00	;  210
      003700 D1 00                 2668 	.byte #0xd1, #0x00	;  209
      003702 D0 00                 2669 	.byte #0xd0, #0x00	;  208
      003704 CF 00                 2670 	.byte #0xcf, #0x00	;  207
      003706 CE 00                 2671 	.byte #0xce, #0x00	;  206
      003708 CD 00                 2672 	.byte #0xcd, #0x00	;  205
      00370A CC 00                 2673 	.byte #0xcc, #0x00	;  204
      00370C CB 00                 2674 	.byte #0xcb, #0x00	;  203
      00370E CA 00                 2675 	.byte #0xca, #0x00	;  202
      003710 C9 00                 2676 	.byte #0xc9, #0x00	;  201
      003712 C8 00                 2677 	.byte #0xc8, #0x00	;  200
      003714 C7 00                 2678 	.byte #0xc7, #0x00	;  199
      003716 C6 00                 2679 	.byte #0xc6, #0x00	;  198
      003718 C5 00                 2680 	.byte #0xc5, #0x00	;  197
      00371A C4 00                 2681 	.byte #0xc4, #0x00	;  196
      00371C C3 00                 2682 	.byte #0xc3, #0x00	;  195
      00371E C2 00                 2683 	.byte #0xc2, #0x00	;  194
      003720 C1 00                 2684 	.byte #0xc1, #0x00	;  193
      003722 C0 00                 2685 	.byte #0xc0, #0x00	;  192
      003724 BF 00                 2686 	.byte #0xbf, #0x00	;  191
      003726 BE 00                 2687 	.byte #0xbe, #0x00	;  190
      003728 BD 00                 2688 	.byte #0xbd, #0x00	;  189
      00372A BC 00                 2689 	.byte #0xbc, #0x00	;  188
      00372C BB 00                 2690 	.byte #0xbb, #0x00	;  187
      00372E BA 00                 2691 	.byte #0xba, #0x00	;  186
      003730 B9 00                 2692 	.byte #0xb9, #0x00	;  185
      003732 B8 00                 2693 	.byte #0xb8, #0x00	;  184
      003734 B7 00                 2694 	.byte #0xb7, #0x00	;  183
      003736 B6 00                 2695 	.byte #0xb6, #0x00	;  182
      003738 B5 00                 2696 	.byte #0xb5, #0x00	;  181
      00373A B4 00                 2697 	.byte #0xb4, #0x00	;  180
      00373C B3 00                 2698 	.byte #0xb3, #0x00	;  179
      00373E B2 00                 2699 	.byte #0xb2, #0x00	;  178
      003740 B1 00                 2700 	.byte #0xb1, #0x00	;  177
      003742 B0 00                 2701 	.byte #0xb0, #0x00	;  176
      003744 AF 00                 2702 	.byte #0xaf, #0x00	;  175
      003746 AE 00                 2703 	.byte #0xae, #0x00	;  174
      003748 AD 00                 2704 	.byte #0xad, #0x00	;  173
      00374A AC 00                 2705 	.byte #0xac, #0x00	;  172
      00374C AB 00                 2706 	.byte #0xab, #0x00	;  171
      00374E AA 00                 2707 	.byte #0xaa, #0x00	;  170
      003750 A9 00                 2708 	.byte #0xa9, #0x00	;  169
      003752 A8 00                 2709 	.byte #0xa8, #0x00	;  168
      003754 A7 00                 2710 	.byte #0xa7, #0x00	;  167
      003756 A6 00                 2711 	.byte #0xa6, #0x00	;  166
      003758 A5 00                 2712 	.byte #0xa5, #0x00	;  165
      00375A A4 00                 2713 	.byte #0xa4, #0x00	;  164
      00375C A3 00                 2714 	.byte #0xa3, #0x00	;  163
      00375E A2 00                 2715 	.byte #0xa2, #0x00	;  162
      003760 A1 00                 2716 	.byte #0xa1, #0x00	;  161
      003762 A0 00                 2717 	.byte #0xa0, #0x00	;  160
      003764 9F 00                 2718 	.byte #0x9f, #0x00	;  159
      003766 9E 00                 2719 	.byte #0x9e, #0x00	;  158
      003768 9D 00                 2720 	.byte #0x9d, #0x00	;  157
      00376A 9C 00                 2721 	.byte #0x9c, #0x00	;  156
      00376C 9B 00                 2722 	.byte #0x9b, #0x00	;  155
      00376E 9A 00                 2723 	.byte #0x9a, #0x00	;  154
      003770 99 00                 2724 	.byte #0x99, #0x00	;  153
      003772 98 00                 2725 	.byte #0x98, #0x00	;  152
      003774 97 00                 2726 	.byte #0x97, #0x00	;  151
      003776 96 00                 2727 	.byte #0x96, #0x00	;  150
      003778 95 00                 2728 	.byte #0x95, #0x00	;  149
      00377A 94 00                 2729 	.byte #0x94, #0x00	;  148
      00377C 93 00                 2730 	.byte #0x93, #0x00	;  147
      00377E 92 00                 2731 	.byte #0x92, #0x00	;  146
      003780 91 00                 2732 	.byte #0x91, #0x00	;  145
      003782 90 00                 2733 	.byte #0x90, #0x00	;  144
      003784 8F 00                 2734 	.byte #0x8f, #0x00	;  143
      003786 8E 00                 2735 	.byte #0x8e, #0x00	;  142
      003788 8D 00                 2736 	.byte #0x8d, #0x00	;  141
      00378A 8C 00                 2737 	.byte #0x8c, #0x00	;  140
      00378C 8B 00                 2738 	.byte #0x8b, #0x00	;  139
      00378E 8A 00                 2739 	.byte #0x8a, #0x00	;  138
      003790 89 00                 2740 	.byte #0x89, #0x00	;  137
      003792 88 00                 2741 	.byte #0x88, #0x00	;  136
      003794 87 00                 2742 	.byte #0x87, #0x00	;  135
      003796 86 00                 2743 	.byte #0x86, #0x00	;  134
      003798 85 00                 2744 	.byte #0x85, #0x00	;  133
      00379A 84 00                 2745 	.byte #0x84, #0x00	;  132
      00379C 83 00                 2746 	.byte #0x83, #0x00	;  131
      00379E 82 00                 2747 	.byte #0x82, #0x00	;  130
      0037A0 81 00                 2748 	.byte #0x81, #0x00	;  129
      0037A2 80 00                 2749 	.byte #0x80, #0x00	;  128
      0037A4 7F 00                 2750 	.byte #0x7f, #0x00	;  127
      0037A6 7E 00                 2751 	.byte #0x7e, #0x00	;  126
      0037A8 7D 00                 2752 	.byte #0x7d, #0x00	;  125
      0037AA 7C 00                 2753 	.byte #0x7c, #0x00	;  124
      0037AC 7B 00                 2754 	.byte #0x7b, #0x00	;  123
      0037AE 7A 00                 2755 	.byte #0x7a, #0x00	;  122
      0037B0 79 00                 2756 	.byte #0x79, #0x00	;  121
      0037B2 78 00                 2757 	.byte #0x78, #0x00	;  120
      0037B4 77 00                 2758 	.byte #0x77, #0x00	;  119
      0037B6 76 00                 2759 	.byte #0x76, #0x00	;  118
      0037B8 75 00                 2760 	.byte #0x75, #0x00	;  117
      0037BA 74 00                 2761 	.byte #0x74, #0x00	;  116
      0037BC 73 00                 2762 	.byte #0x73, #0x00	;  115
      0037BE 72 00                 2763 	.byte #0x72, #0x00	;  114
      0037C0 71 00                 2764 	.byte #0x71, #0x00	;  113
      0037C2 70 00                 2765 	.byte #0x70, #0x00	;  112
      0037C4 6F 00                 2766 	.byte #0x6f, #0x00	;  111
      0037C6 6E 00                 2767 	.byte #0x6e, #0x00	;  110
      0037C8 6D 00                 2768 	.byte #0x6d, #0x00	;  109
      0037CA 6C 00                 2769 	.byte #0x6c, #0x00	;  108
      0037CC 6B 00                 2770 	.byte #0x6b, #0x00	;  107
      0037CE 6A 00                 2771 	.byte #0x6a, #0x00	;  106
      0037D0 69 00                 2772 	.byte #0x69, #0x00	;  105
      0037D2 68 00                 2773 	.byte #0x68, #0x00	;  104
      0037D4 67 00                 2774 	.byte #0x67, #0x00	;  103
      0037D6 66 00                 2775 	.byte #0x66, #0x00	;  102
      0037D8 65 00                 2776 	.byte #0x65, #0x00	;  101
      0037DA 64 00                 2777 	.byte #0x64, #0x00	;  100
      0037DC 63 00                 2778 	.byte #0x63, #0x00	;  99
      0037DE 62 00                 2779 	.byte #0x62, #0x00	;  98
      0037E0 61 00                 2780 	.byte #0x61, #0x00	;  97
      0037E2 60 00                 2781 	.byte #0x60, #0x00	;  96
      0037E4 5F 00                 2782 	.byte #0x5f, #0x00	;  95
      0037E6 5E 00                 2783 	.byte #0x5e, #0x00	;  94
      0037E8 5D 00                 2784 	.byte #0x5d, #0x00	;  93
      0037EA 5C 00                 2785 	.byte #0x5c, #0x00	;  92
      0037EC 5B 00                 2786 	.byte #0x5b, #0x00	;  91
      0037EE 5A 00                 2787 	.byte #0x5a, #0x00	;  90
      0037F0 59 00                 2788 	.byte #0x59, #0x00	;  89
      0037F2 58 00                 2789 	.byte #0x58, #0x00	;  88
      0037F4 57 00                 2790 	.byte #0x57, #0x00	;  87
      0037F6 56 00                 2791 	.byte #0x56, #0x00	;  86
      0037F8 55 00                 2792 	.byte #0x55, #0x00	;  85
      0037FA 54 00                 2793 	.byte #0x54, #0x00	;  84
      0037FC 53 00                 2794 	.byte #0x53, #0x00	;  83
      0037FE 52 00                 2795 	.byte #0x52, #0x00	;  82
      003800 51 00                 2796 	.byte #0x51, #0x00	;  81
      003802 50 00                 2797 	.byte #0x50, #0x00	;  80
      003804 4F 00                 2798 	.byte #0x4f, #0x00	;  79
      003806 4E 00                 2799 	.byte #0x4e, #0x00	;  78
      003808 4D 00                 2800 	.byte #0x4d, #0x00	;  77
      00380A 4C 00                 2801 	.byte #0x4c, #0x00	;  76
      00380C 4B 00                 2802 	.byte #0x4b, #0x00	;  75
      00380E 4A 00                 2803 	.byte #0x4a, #0x00	;  74
      003810 49 00                 2804 	.byte #0x49, #0x00	;  73
      003812 48 00                 2805 	.byte #0x48, #0x00	;  72
      003814 47 00                 2806 	.byte #0x47, #0x00	;  71
      003816 46 00                 2807 	.byte #0x46, #0x00	;  70
      003818 45 00                 2808 	.byte #0x45, #0x00	;  69
      00381A 44 00                 2809 	.byte #0x44, #0x00	;  68
      00381C 43 00                 2810 	.byte #0x43, #0x00	;  67
      00381E 42 00                 2811 	.byte #0x42, #0x00	;  66
      003820 41 00                 2812 	.byte #0x41, #0x00	;  65
      003822 40 00                 2813 	.byte #0x40, #0x00	;  64
      003824 3F 00                 2814 	.byte #0x3f, #0x00	;  63
      003826 3E 00                 2815 	.byte #0x3e, #0x00	;  62
      003828 3D 00                 2816 	.byte #0x3d, #0x00	;  61
      00382A 3C 00                 2817 	.byte #0x3c, #0x00	;  60
      00382C 3B 00                 2818 	.byte #0x3b, #0x00	;  59
      00382E 3A 00                 2819 	.byte #0x3a, #0x00	;  58
      003830 39 00                 2820 	.byte #0x39, #0x00	;  57
      003832 38 00                 2821 	.byte #0x38, #0x00	;  56
      003834 37 00                 2822 	.byte #0x37, #0x00	;  55
      003836 36 00                 2823 	.byte #0x36, #0x00	;  54
      003838 35 00                 2824 	.byte #0x35, #0x00	;  53
      00383A 34 00                 2825 	.byte #0x34, #0x00	;  52
      00383C 33 00                 2826 	.byte #0x33, #0x00	;  51
      00383E 32 00                 2827 	.byte #0x32, #0x00	;  50
      003840 31 00                 2828 	.byte #0x31, #0x00	;  49
      003842 30 00                 2829 	.byte #0x30, #0x00	;  48
      003844 2F 00                 2830 	.byte #0x2f, #0x00	;  47
      003846 2E 00                 2831 	.byte #0x2e, #0x00	;  46
      003848 2D 00                 2832 	.byte #0x2d, #0x00	;  45
      00384A 2C 00                 2833 	.byte #0x2c, #0x00	;  44
      00384C 2B 00                 2834 	.byte #0x2b, #0x00	;  43
      00384E 2A 00                 2835 	.byte #0x2a, #0x00	;  42
      003850 29 00                 2836 	.byte #0x29, #0x00	;  41
      003852 28 00                 2837 	.byte #0x28, #0x00	;  40
      003854 27 00                 2838 	.byte #0x27, #0x00	;  39
      003856 26 00                 2839 	.byte #0x26, #0x00	;  38
      003858 25 00                 2840 	.byte #0x25, #0x00	;  37
      00385A 24 00                 2841 	.byte #0x24, #0x00	;  36
      00385C 23 00                 2842 	.byte #0x23, #0x00	;  35
      00385E 22 00                 2843 	.byte #0x22, #0x00	;  34
      003860 21 00                 2844 	.byte #0x21, #0x00	;  33
      003862 20 00                 2845 	.byte #0x20, #0x00	;  32
      003864 1F 00                 2846 	.byte #0x1f, #0x00	;  31
      003866 1E 00                 2847 	.byte #0x1e, #0x00	;  30
      003868 1D 00                 2848 	.byte #0x1d, #0x00	;  29
      00386A 1C 00                 2849 	.byte #0x1c, #0x00	;  28
      00386C 1B 00                 2850 	.byte #0x1b, #0x00	;  27
      00386E 1A 00                 2851 	.byte #0x1a, #0x00	;  26
      003870 19 00                 2852 	.byte #0x19, #0x00	;  25
      003872 18 00                 2853 	.byte #0x18, #0x00	;  24
      003874 17 00                 2854 	.byte #0x17, #0x00	;  23
      003876 16 00                 2855 	.byte #0x16, #0x00	;  22
      003878 15 00                 2856 	.byte #0x15, #0x00	;  21
      00387A 14 00                 2857 	.byte #0x14, #0x00	;  20
      00387C 13 00                 2858 	.byte #0x13, #0x00	;  19
      00387E 12 00                 2859 	.byte #0x12, #0x00	;  18
      003880 11 00                 2860 	.byte #0x11, #0x00	;  17
      003882 10 00                 2861 	.byte #0x10, #0x00	;  16
      003884 0F 00                 2862 	.byte #0x0f, #0x00	;  15
      003886 0E 00                 2863 	.byte #0x0e, #0x00	;  14
      003888 0D 00                 2864 	.byte #0x0d, #0x00	;  13
      00388A 0C 00                 2865 	.byte #0x0c, #0x00	;  12
      00388C 0B 00                 2866 	.byte #0x0b, #0x00	;  11
      00388E 0A 00                 2867 	.byte #0x0a, #0x00	;  10
      003890 09 00                 2868 	.byte #0x09, #0x00	;  9
      003892 08 00                 2869 	.byte #0x08, #0x00	;  8
      003894 07 00                 2870 	.byte #0x07, #0x00	;  7
      003896 06 00                 2871 	.byte #0x06, #0x00	;  6
      003898 05 00                 2872 	.byte #0x05, #0x00	;  5
      00389A 04 00                 2873 	.byte #0x04, #0x00	;  4
      00389C 03 00                 2874 	.byte #0x03, #0x00	;  3
      00389E 02 00                 2875 	.byte #0x02, #0x00	;  2
      0038A0 01 00                 2876 	.byte #0x01, #0x00	;  1
      0038A2 00 00                 2877 	.byte #0x00, #0x00	;  0
                                   2878 	.area CONST   (CODE)
      0038A4                       2879 ___str_0:
      0038A4 0A                    2880 	.db 0x0a
      0038A5 0D                    2881 	.db 0x0d
      0038A6 E2                    2882 	.db 0xe2
      0038A7 94                    2883 	.db 0x94
      0038A8 8C                    2884 	.db 0x8c
      0038A9 E2                    2885 	.db 0xe2
      0038AA 94                    2886 	.db 0x94
      0038AB 80                    2887 	.db 0x80
      0038AC E2                    2888 	.db 0xe2
      0038AD 94                    2889 	.db 0x94
      0038AE 80                    2890 	.db 0x80
      0038AF E2                    2891 	.db 0xe2
      0038B0 94                    2892 	.db 0x94
      0038B1 80                    2893 	.db 0x80
      0038B2 E2                    2894 	.db 0xe2
      0038B3 94                    2895 	.db 0x94
      0038B4 80                    2896 	.db 0x80
      0038B5 E2                    2897 	.db 0xe2
      0038B6 94                    2898 	.db 0x94
      0038B7 80                    2899 	.db 0x80
      0038B8 E2                    2900 	.db 0xe2
      0038B9 94                    2901 	.db 0x94
      0038BA 80                    2902 	.db 0x80
      0038BB E2                    2903 	.db 0xe2
      0038BC 94                    2904 	.db 0x94
      0038BD 80                    2905 	.db 0x80
      0038BE E2                    2906 	.db 0xe2
      0038BF 94                    2907 	.db 0x94
      0038C0 80                    2908 	.db 0x80
      0038C1 E2                    2909 	.db 0xe2
      0038C2 94                    2910 	.db 0x94
      0038C3 80                    2911 	.db 0x80
      0038C4 E2                    2912 	.db 0xe2
      0038C5 94                    2913 	.db 0x94
      0038C6 80                    2914 	.db 0x80
      0038C7 E2                    2915 	.db 0xe2
      0038C8 94                    2916 	.db 0x94
      0038C9 80                    2917 	.db 0x80
      0038CA E2                    2918 	.db 0xe2
      0038CB 94                    2919 	.db 0x94
      0038CC 80                    2920 	.db 0x80
      0038CD E2                    2921 	.db 0xe2
      0038CE 94                    2922 	.db 0x94
      0038CF 80                    2923 	.db 0x80
      0038D0 E2                    2924 	.db 0xe2
      0038D1 94                    2925 	.db 0x94
      0038D2 80                    2926 	.db 0x80
      0038D3 E2                    2927 	.db 0xe2
      0038D4 94                    2928 	.db 0x94
      0038D5 80                    2929 	.db 0x80
      0038D6 E2                    2930 	.db 0xe2
      0038D7 94                    2931 	.db 0x94
      0038D8 80                    2932 	.db 0x80
      0038D9 E2                    2933 	.db 0xe2
      0038DA 94                    2934 	.db 0x94
      0038DB 80                    2935 	.db 0x80
      0038DC E2                    2936 	.db 0xe2
      0038DD 94                    2937 	.db 0x94
      0038DE 80                    2938 	.db 0x80
      0038DF E2                    2939 	.db 0xe2
      0038E0 94                    2940 	.db 0x94
      0038E1 80                    2941 	.db 0x80
      0038E2 E2                    2942 	.db 0xe2
      0038E3 94                    2943 	.db 0x94
      0038E4 80                    2944 	.db 0x80
      0038E5 E2                    2945 	.db 0xe2
      0038E6 94                    2946 	.db 0x94
      0038E7 80                    2947 	.db 0x80
      0038E8 E2                    2948 	.db 0xe2
      0038E9 94                    2949 	.db 0x94
      0038EA 80                    2950 	.db 0x80
      0038EB E2                    2951 	.db 0xe2
      0038EC 94                    2952 	.db 0x94
      0038ED 80                    2953 	.db 0x80
      0038EE E2                    2954 	.db 0xe2
      0038EF 94                    2955 	.db 0x94
      0038F0 80                    2956 	.db 0x80
      0038F1 E2                    2957 	.db 0xe2
      0038F2 94                    2958 	.db 0x94
      0038F3 80                    2959 	.db 0x80
      0038F4 E2                    2960 	.db 0xe2
      0038F5 94                    2961 	.db 0x94
      0038F6 80                    2962 	.db 0x80
      0038F7 E2                    2963 	.db 0xe2
      0038F8 94                    2964 	.db 0x94
      0038F9 80                    2965 	.db 0x80
      0038FA E2                    2966 	.db 0xe2
      0038FB 94                    2967 	.db 0x94
      0038FC 80                    2968 	.db 0x80
      0038FD E2                    2969 	.db 0xe2
      0038FE 94                    2970 	.db 0x94
      0038FF 80                    2971 	.db 0x80
      003900 E2                    2972 	.db 0xe2
      003901 94                    2973 	.db 0x94
      003902 80                    2974 	.db 0x80
      003903 E2                    2975 	.db 0xe2
      003904 94                    2976 	.db 0x94
      003905 80                    2977 	.db 0x80
      003906 E2                    2978 	.db 0xe2
      003907 94                    2979 	.db 0x94
      003908 80                    2980 	.db 0x80
      003909 E2                    2981 	.db 0xe2
      00390A 94                    2982 	.db 0x94
      00390B 80                    2983 	.db 0x80
      00390C E2                    2984 	.db 0xe2
      00390D 94                    2985 	.db 0x94
      00390E 80                    2986 	.db 0x80
      00390F E2                    2987 	.db 0xe2
      003910 94                    2988 	.db 0x94
      003911 80                    2989 	.db 0x80
      003912 E2                    2990 	.db 0xe2
      003913 94                    2991 	.db 0x94
      003914 80                    2992 	.db 0x80
      003915 E2                    2993 	.db 0xe2
      003916 94                    2994 	.db 0x94
      003917 80                    2995 	.db 0x80
      003918 E2                    2996 	.db 0xe2
      003919 94                    2997 	.db 0x94
      00391A 80                    2998 	.db 0x80
      00391B E2                    2999 	.db 0xe2
      00391C 94                    3000 	.db 0x94
      00391D 80                    3001 	.db 0x80
      00391E E2                    3002 	.db 0xe2
      00391F 94                    3003 	.db 0x94
      003920 80                    3004 	.db 0x80
      003921 E2                    3005 	.db 0xe2
      003922 94                    3006 	.db 0x94
      003923 80                    3007 	.db 0x80
      003924 E2                    3008 	.db 0xe2
      003925 94                    3009 	.db 0x94
      003926 80                    3010 	.db 0x80
      003927 E2                    3011 	.db 0xe2
      003928 94                    3012 	.db 0x94
      003929 80                    3013 	.db 0x80
      00392A E2                    3014 	.db 0xe2
      00392B 94                    3015 	.db 0x94
      00392C 80                    3016 	.db 0x80
      00392D E2                    3017 	.db 0xe2
      00392E 94                    3018 	.db 0x94
      00392F 80                    3019 	.db 0x80
      003930 E2                    3020 	.db 0xe2
      003931 94                    3021 	.db 0x94
      003932 80                    3022 	.db 0x80
      003933 E2                    3023 	.db 0xe2
      003934 94                    3024 	.db 0x94
      003935 80                    3025 	.db 0x80
      003936 E2                    3026 	.db 0xe2
      003937 94                    3027 	.db 0x94
      003938 80                    3028 	.db 0x80
      003939 E2                    3029 	.db 0xe2
      00393A 94                    3030 	.db 0x94
      00393B 80                    3031 	.db 0x80
      00393C E2                    3032 	.db 0xe2
      00393D 94                    3033 	.db 0x94
      00393E 80                    3034 	.db 0x80
      00393F E2                    3035 	.db 0xe2
      003940 94                    3036 	.db 0x94
      003941 80                    3037 	.db 0x80
      003942 E2                    3038 	.db 0xe2
      003943 94                    3039 	.db 0x94
      003944 80                    3040 	.db 0x80
      003945 E2                    3041 	.db 0xe2
      003946 94                    3042 	.db 0x94
      003947 80                    3043 	.db 0x80
      003948 E2                    3044 	.db 0xe2
      003949 94                    3045 	.db 0x94
      00394A 80                    3046 	.db 0x80
      00394B E2                    3047 	.db 0xe2
      00394C 94                    3048 	.db 0x94
      00394D 80                    3049 	.db 0x80
      00394E E2                    3050 	.db 0xe2
      00394F 94                    3051 	.db 0x94
      003950 80                    3052 	.db 0x80
      003951 E2                    3053 	.db 0xe2
      003952 94                    3054 	.db 0x94
      003953 80                    3055 	.db 0x80
      003954 E2                    3056 	.db 0xe2
      003955 94                    3057 	.db 0x94
      003956 80                    3058 	.db 0x80
      003957 E2                    3059 	.db 0xe2
      003958 94                    3060 	.db 0x94
      003959 80                    3061 	.db 0x80
      00395A E2                    3062 	.db 0xe2
      00395B 94                    3063 	.db 0x94
      00395C 80                    3064 	.db 0x80
      00395D E2                    3065 	.db 0xe2
      00395E 94                    3066 	.db 0x94
      00395F 80                    3067 	.db 0x80
      003960 E2                    3068 	.db 0xe2
      003961 94                    3069 	.db 0x94
      003962 80                    3070 	.db 0x80
      003963 E2                    3071 	.db 0xe2
      003964 94                    3072 	.db 0x94
      003965 90                    3073 	.db 0x90
      003966 0A                    3074 	.db 0x0a
      003967 0D                    3075 	.db 0x0d
      003968 00                    3076 	.db 0x00
                                   3077 	.area CSEG    (CODE)
                                   3078 	.area CONST   (CODE)
      003969                       3079 ___str_1:
      003969 E2                    3080 	.db 0xe2
      00396A 94                    3081 	.db 0x94
      00396B 82                    3082 	.db 0x82
      00396C 20 20 20 20 20 20 20  3083 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0039A8 20 20                 3084 	.ascii "  "
      0039AA E2                    3085 	.db 0xe2
      0039AB 94                    3086 	.db 0x94
      0039AC 82                    3087 	.db 0x82
      0039AD 0A                    3088 	.db 0x0a
      0039AE 0D                    3089 	.db 0x0d
      0039AF 00                    3090 	.db 0x00
                                   3091 	.area CSEG    (CODE)
                                   3092 	.area CONST   (CODE)
      0039B0                       3093 ___str_2:
      0039B0 E2                    3094 	.db 0xe2
      0039B1 94                    3095 	.db 0x94
      0039B2 9C                    3096 	.db 0x9c
      0039B3 E2                    3097 	.db 0xe2
      0039B4 94                    3098 	.db 0x94
      0039B5 80                    3099 	.db 0x80
      0039B6 E2                    3100 	.db 0xe2
      0039B7 94                    3101 	.db 0x94
      0039B8 80                    3102 	.db 0x80
      0039B9 E2                    3103 	.db 0xe2
      0039BA 94                    3104 	.db 0x94
      0039BB 80                    3105 	.db 0x80
      0039BC E2                    3106 	.db 0xe2
      0039BD 94                    3107 	.db 0x94
      0039BE 80                    3108 	.db 0x80
      0039BF E2                    3109 	.db 0xe2
      0039C0 94                    3110 	.db 0x94
      0039C1 80                    3111 	.db 0x80
      0039C2 E2                    3112 	.db 0xe2
      0039C3 94                    3113 	.db 0x94
      0039C4 80                    3114 	.db 0x80
      0039C5 E2                    3115 	.db 0xe2
      0039C6 94                    3116 	.db 0x94
      0039C7 80                    3117 	.db 0x80
      0039C8 E2                    3118 	.db 0xe2
      0039C9 94                    3119 	.db 0x94
      0039CA 80                    3120 	.db 0x80
      0039CB E2                    3121 	.db 0xe2
      0039CC 94                    3122 	.db 0x94
      0039CD 80                    3123 	.db 0x80
      0039CE E2                    3124 	.db 0xe2
      0039CF 94                    3125 	.db 0x94
      0039D0 80                    3126 	.db 0x80
      0039D1 E2                    3127 	.db 0xe2
      0039D2 94                    3128 	.db 0x94
      0039D3 80                    3129 	.db 0x80
      0039D4 E2                    3130 	.db 0xe2
      0039D5 94                    3131 	.db 0x94
      0039D6 80                    3132 	.db 0x80
      0039D7 E2                    3133 	.db 0xe2
      0039D8 94                    3134 	.db 0x94
      0039D9 80                    3135 	.db 0x80
      0039DA E2                    3136 	.db 0xe2
      0039DB 94                    3137 	.db 0x94
      0039DC 80                    3138 	.db 0x80
      0039DD E2                    3139 	.db 0xe2
      0039DE 94                    3140 	.db 0x94
      0039DF 80                    3141 	.db 0x80
      0039E0 E2                    3142 	.db 0xe2
      0039E1 94                    3143 	.db 0x94
      0039E2 80                    3144 	.db 0x80
      0039E3 E2                    3145 	.db 0xe2
      0039E4 94                    3146 	.db 0x94
      0039E5 80                    3147 	.db 0x80
      0039E6 E2                    3148 	.db 0xe2
      0039E7 94                    3149 	.db 0x94
      0039E8 80                    3150 	.db 0x80
      0039E9 E2                    3151 	.db 0xe2
      0039EA 94                    3152 	.db 0x94
      0039EB 80                    3153 	.db 0x80
      0039EC E2                    3154 	.db 0xe2
      0039ED 94                    3155 	.db 0x94
      0039EE 80                    3156 	.db 0x80
      0039EF E2                    3157 	.db 0xe2
      0039F0 94                    3158 	.db 0x94
      0039F1 80                    3159 	.db 0x80
      0039F2 E2                    3160 	.db 0xe2
      0039F3 94                    3161 	.db 0x94
      0039F4 80                    3162 	.db 0x80
      0039F5 E2                    3163 	.db 0xe2
      0039F6 94                    3164 	.db 0x94
      0039F7 80                    3165 	.db 0x80
      0039F8 E2                    3166 	.db 0xe2
      0039F9 94                    3167 	.db 0x94
      0039FA 80                    3168 	.db 0x80
      0039FB E2                    3169 	.db 0xe2
      0039FC 94                    3170 	.db 0x94
      0039FD 80                    3171 	.db 0x80
      0039FE E2                    3172 	.db 0xe2
      0039FF 94                    3173 	.db 0x94
      003A00 80                    3174 	.db 0x80
      003A01 E2                    3175 	.db 0xe2
      003A02 94                    3176 	.db 0x94
      003A03 80                    3177 	.db 0x80
      003A04 E2                    3178 	.db 0xe2
      003A05 94                    3179 	.db 0x94
      003A06 80                    3180 	.db 0x80
      003A07 E2                    3181 	.db 0xe2
      003A08 94                    3182 	.db 0x94
      003A09 80                    3183 	.db 0x80
      003A0A E2                    3184 	.db 0xe2
      003A0B 94                    3185 	.db 0x94
      003A0C 80                    3186 	.db 0x80
      003A0D E2                    3187 	.db 0xe2
      003A0E 94                    3188 	.db 0x94
      003A0F 80                    3189 	.db 0x80
      003A10 E2                    3190 	.db 0xe2
      003A11 94                    3191 	.db 0x94
      003A12 80                    3192 	.db 0x80
      003A13 E2                    3193 	.db 0xe2
      003A14 94                    3194 	.db 0x94
      003A15 80                    3195 	.db 0x80
      003A16 E2                    3196 	.db 0xe2
      003A17 94                    3197 	.db 0x94
      003A18 80                    3198 	.db 0x80
      003A19 E2                    3199 	.db 0xe2
      003A1A 94                    3200 	.db 0x94
      003A1B 80                    3201 	.db 0x80
      003A1C E2                    3202 	.db 0xe2
      003A1D 94                    3203 	.db 0x94
      003A1E 80                    3204 	.db 0x80
      003A1F E2                    3205 	.db 0xe2
      003A20 94                    3206 	.db 0x94
      003A21 80                    3207 	.db 0x80
      003A22 E2                    3208 	.db 0xe2
      003A23 94                    3209 	.db 0x94
      003A24 80                    3210 	.db 0x80
      003A25 E2                    3211 	.db 0xe2
      003A26 94                    3212 	.db 0x94
      003A27 80                    3213 	.db 0x80
      003A28 E2                    3214 	.db 0xe2
      003A29 94                    3215 	.db 0x94
      003A2A 80                    3216 	.db 0x80
      003A2B E2                    3217 	.db 0xe2
      003A2C 94                    3218 	.db 0x94
      003A2D 80                    3219 	.db 0x80
      003A2E E2                    3220 	.db 0xe2
      003A2F 94                    3221 	.db 0x94
      003A30 80                    3222 	.db 0x80
      003A31 E2                    3223 	.db 0xe2
      003A32 94                    3224 	.db 0x94
      003A33 80                    3225 	.db 0x80
      003A34 E2                    3226 	.db 0xe2
      003A35 94                    3227 	.db 0x94
      003A36 80                    3228 	.db 0x80
      003A37 E2                    3229 	.db 0xe2
      003A38 94                    3230 	.db 0x94
      003A39 80                    3231 	.db 0x80
      003A3A E2                    3232 	.db 0xe2
      003A3B 94                    3233 	.db 0x94
      003A3C 80                    3234 	.db 0x80
      003A3D E2                    3235 	.db 0xe2
      003A3E 94                    3236 	.db 0x94
      003A3F 80                    3237 	.db 0x80
      003A40 E2                    3238 	.db 0xe2
      003A41 94                    3239 	.db 0x94
      003A42 80                    3240 	.db 0x80
      003A43 E2                    3241 	.db 0xe2
      003A44 94                    3242 	.db 0x94
      003A45 80                    3243 	.db 0x80
      003A46 E2                    3244 	.db 0xe2
      003A47 94                    3245 	.db 0x94
      003A48 80                    3246 	.db 0x80
      003A49 E2                    3247 	.db 0xe2
      003A4A 94                    3248 	.db 0x94
      003A4B 80                    3249 	.db 0x80
      003A4C E2                    3250 	.db 0xe2
      003A4D 94                    3251 	.db 0x94
      003A4E 80                    3252 	.db 0x80
      003A4F E2                    3253 	.db 0xe2
      003A50 94                    3254 	.db 0x94
      003A51 80                    3255 	.db 0x80
      003A52 E2                    3256 	.db 0xe2
      003A53 94                    3257 	.db 0x94
      003A54 80                    3258 	.db 0x80
      003A55 E2                    3259 	.db 0xe2
      003A56 94                    3260 	.db 0x94
      003A57 80                    3261 	.db 0x80
      003A58 E2                    3262 	.db 0xe2
      003A59 94                    3263 	.db 0x94
      003A5A 80                    3264 	.db 0x80
      003A5B E2                    3265 	.db 0xe2
      003A5C 94                    3266 	.db 0x94
      003A5D 80                    3267 	.db 0x80
      003A5E E2                    3268 	.db 0xe2
      003A5F 94                    3269 	.db 0x94
      003A60 80                    3270 	.db 0x80
      003A61 E2                    3271 	.db 0xe2
      003A62 94                    3272 	.db 0x94
      003A63 80                    3273 	.db 0x80
      003A64 E2                    3274 	.db 0xe2
      003A65 94                    3275 	.db 0x94
      003A66 80                    3276 	.db 0x80
      003A67 E2                    3277 	.db 0xe2
      003A68 94                    3278 	.db 0x94
      003A69 80                    3279 	.db 0x80
      003A6A E2                    3280 	.db 0xe2
      003A6B 94                    3281 	.db 0x94
      003A6C 80                    3282 	.db 0x80
      003A6D E2                    3283 	.db 0xe2
      003A6E 94                    3284 	.db 0x94
      003A6F A4                    3285 	.db 0xa4
      003A70 0A                    3286 	.db 0x0a
      003A71 0D                    3287 	.db 0x0d
      003A72 00                    3288 	.db 0x00
                                   3289 	.area CSEG    (CODE)
                                   3290 	.area CONST   (CODE)
      003A73                       3291 ___str_3:
      003A73 E2                    3292 	.db 0xe2
      003A74 94                    3293 	.db 0x94
      003A75 82                    3294 	.db 0x82
      003A76 20 20 43 6F 6D 6D 61  3295 	.ascii "  Command   "
             6E 64 20 20 20
      003A82 E2                    3296 	.db 0xe2
      003A83 94                    3297 	.db 0x94
      003A84 82                    3298 	.db 0x82
      003A85 20 20 20 20 20 20 20  3299 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003AB6 E2                    3300 	.db 0xe2
      003AB7 94                    3301 	.db 0x94
      003AB8 82                    3302 	.db 0x82
      003AB9 0A                    3303 	.db 0x0a
      003ABA 0D                    3304 	.db 0x0d
      003ABB 00                    3305 	.db 0x00
                                   3306 	.area CSEG    (CODE)
                                   3307 	.area CONST   (CODE)
      003ABC                       3308 ___str_4:
      003ABC E2                    3309 	.db 0xe2
      003ABD 94                    3310 	.db 0x94
      003ABE 82                    3311 	.db 0x82
      003ABF 20 20 20 20 4D 20 20  3312 	.ascii "    M      "
             20 20 20 20
      003ACA E2                    3313 	.db 0xe2
      003ACB 94                    3314 	.db 0x94
      003ACC 82                    3315 	.db 0x82
      003ACD 20 4D 61 6E 75 61 6C  3316 	.ascii " Manual SPI Mode (Direct Register Control)     "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20
      003AFC E2                    3317 	.db 0xe2
      003AFD 94                    3318 	.db 0x94
      003AFE 82                    3319 	.db 0x82
      003AFF 0A                    3320 	.db 0x0a
      003B00 0D                    3321 	.db 0x0d
      003B01 00                    3322 	.db 0x00
                                   3323 	.area CSEG    (CODE)
                                   3324 	.area CONST   (CODE)
      003B02                       3325 ___str_5:
      003B02 E2                    3326 	.db 0xe2
      003B03 94                    3327 	.db 0x94
      003B04 82                    3328 	.db 0x82
      003B05 20 20 20 20 53 20 20  3329 	.ascii "    S      "
             20 20 20 20
      003B10 E2                    3330 	.db 0xe2
      003B11 94                    3331 	.db 0x94
      003B12 82                    3332 	.db 0x82
      003B13 20 47 65 6E 65 72 61  3333 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B42 E2                    3334 	.db 0xe2
      003B43 94                    3335 	.db 0x94
      003B44 82                    3336 	.db 0x82
      003B45 0A                    3337 	.db 0x0a
      003B46 0D                    3338 	.db 0x0d
      003B47 00                    3339 	.db 0x00
                                   3340 	.area CSEG    (CODE)
                                   3341 	.area CONST   (CODE)
      003B48                       3342 ___str_6:
      003B48 E2                    3343 	.db 0xe2
      003B49 94                    3344 	.db 0x94
      003B4A 82                    3345 	.db 0x82
      003B4B 20 20 20 20 54 20 20  3346 	.ascii "    T      "
             20 20 20 20
      003B56 E2                    3347 	.db 0xe2
      003B57 94                    3348 	.db 0x94
      003B58 82                    3349 	.db 0x82
      003B59 20 47 65 6E 65 72 61  3350 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B88 E2                    3351 	.db 0xe2
      003B89 94                    3352 	.db 0x94
      003B8A 82                    3353 	.db 0x82
      003B8B 0A                    3354 	.db 0x0a
      003B8C 0D                    3355 	.db 0x0d
      003B8D 00                    3356 	.db 0x00
                                   3357 	.area CSEG    (CODE)
                                   3358 	.area CONST   (CODE)
      003B8E                       3359 ___str_7:
      003B8E E2                    3360 	.db 0xe2
      003B8F 94                    3361 	.db 0x94
      003B90 82                    3362 	.db 0x82
      003B91 20 20 20 20 44 20 20  3363 	.ascii "    D      "
             20 20 20 20
      003B9C E2                    3364 	.db 0xe2
      003B9D 94                    3365 	.db 0x94
      003B9E 82                    3366 	.db 0x82
      003B9F 20 44 65 6D 6F 20 4D  3367 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003BCE E2                    3368 	.db 0xe2
      003BCF 94                    3369 	.db 0x94
      003BD0 82                    3370 	.db 0x82
      003BD1 0A                    3371 	.db 0x0a
      003BD2 0D                    3372 	.db 0x0d
      003BD3 00                    3373 	.db 0x00
                                   3374 	.area CSEG    (CODE)
                                   3375 	.area CONST   (CODE)
      003BD4                       3376 ___str_8:
      003BD4 E2                    3377 	.db 0xe2
      003BD5 94                    3378 	.db 0x94
      003BD6 82                    3379 	.db 0x82
      003BD7 20 20 20 20 52 20 20  3380 	.ascii "    R      "
             20 20 20 20
      003BE2 E2                    3381 	.db 0xe2
      003BE3 94                    3382 	.db 0x94
      003BE4 82                    3383 	.db 0x82
      003BE5 20 52 61 6D 70 20 77  3384 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C14 E2                    3385 	.db 0xe2
      003C15 94                    3386 	.db 0x94
      003C16 82                    3387 	.db 0x82
      003C17 0A                    3388 	.db 0x0a
      003C18 0D                    3389 	.db 0x0d
      003C19 00                    3390 	.db 0x00
                                   3391 	.area CSEG    (CODE)
                                   3392 	.area CONST   (CODE)
      003C1A                       3393 ___str_9:
      003C1A E2                    3394 	.db 0xe2
      003C1B 94                    3395 	.db 0x94
      003C1C 82                    3396 	.db 0x82
      003C1D 20 20 20 20 3F 20 20  3397 	.ascii "    ?      "
             20 20 20 20
      003C28 E2                    3398 	.db 0xe2
      003C29 94                    3399 	.db 0x94
      003C2A 82                    3400 	.db 0x82
      003C2B 20 44 69 73 70 6C 61  3401 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C5A E2                    3402 	.db 0xe2
      003C5B 94                    3403 	.db 0x94
      003C5C 82                    3404 	.db 0x82
      003C5D 0A                    3405 	.db 0x0a
      003C5E 0D                    3406 	.db 0x0d
      003C5F 00                    3407 	.db 0x00
                                   3408 	.area CSEG    (CODE)
                                   3409 	.area CONST   (CODE)
      003C60                       3410 ___str_10:
      003C60 E2                    3411 	.db 0xe2
      003C61 94                    3412 	.db 0x94
      003C62 94                    3413 	.db 0x94
      003C63 E2                    3414 	.db 0xe2
      003C64 94                    3415 	.db 0x94
      003C65 80                    3416 	.db 0x80
      003C66 E2                    3417 	.db 0xe2
      003C67 94                    3418 	.db 0x94
      003C68 80                    3419 	.db 0x80
      003C69 E2                    3420 	.db 0xe2
      003C6A 94                    3421 	.db 0x94
      003C6B 80                    3422 	.db 0x80
      003C6C E2                    3423 	.db 0xe2
      003C6D 94                    3424 	.db 0x94
      003C6E 80                    3425 	.db 0x80
      003C6F E2                    3426 	.db 0xe2
      003C70 94                    3427 	.db 0x94
      003C71 80                    3428 	.db 0x80
      003C72 E2                    3429 	.db 0xe2
      003C73 94                    3430 	.db 0x94
      003C74 80                    3431 	.db 0x80
      003C75 E2                    3432 	.db 0xe2
      003C76 94                    3433 	.db 0x94
      003C77 80                    3434 	.db 0x80
      003C78 E2                    3435 	.db 0xe2
      003C79 94                    3436 	.db 0x94
      003C7A 80                    3437 	.db 0x80
      003C7B E2                    3438 	.db 0xe2
      003C7C 94                    3439 	.db 0x94
      003C7D 80                    3440 	.db 0x80
      003C7E E2                    3441 	.db 0xe2
      003C7F 94                    3442 	.db 0x94
      003C80 80                    3443 	.db 0x80
      003C81 E2                    3444 	.db 0xe2
      003C82 94                    3445 	.db 0x94
      003C83 80                    3446 	.db 0x80
      003C84 E2                    3447 	.db 0xe2
      003C85 94                    3448 	.db 0x94
      003C86 B4                    3449 	.db 0xb4
      003C87 E2                    3450 	.db 0xe2
      003C88 94                    3451 	.db 0x94
      003C89 80                    3452 	.db 0x80
      003C8A E2                    3453 	.db 0xe2
      003C8B 94                    3454 	.db 0x94
      003C8C 80                    3455 	.db 0x80
      003C8D E2                    3456 	.db 0xe2
      003C8E 94                    3457 	.db 0x94
      003C8F 80                    3458 	.db 0x80
      003C90 E2                    3459 	.db 0xe2
      003C91 94                    3460 	.db 0x94
      003C92 80                    3461 	.db 0x80
      003C93 E2                    3462 	.db 0xe2
      003C94 94                    3463 	.db 0x94
      003C95 80                    3464 	.db 0x80
      003C96 E2                    3465 	.db 0xe2
      003C97 94                    3466 	.db 0x94
      003C98 80                    3467 	.db 0x80
      003C99 E2                    3468 	.db 0xe2
      003C9A 94                    3469 	.db 0x94
      003C9B 80                    3470 	.db 0x80
      003C9C E2                    3471 	.db 0xe2
      003C9D 94                    3472 	.db 0x94
      003C9E 80                    3473 	.db 0x80
      003C9F E2                    3474 	.db 0xe2
      003CA0 94                    3475 	.db 0x94
      003CA1 80                    3476 	.db 0x80
      003CA2 E2                    3477 	.db 0xe2
      003CA3 94                    3478 	.db 0x94
      003CA4 80                    3479 	.db 0x80
      003CA5 E2                    3480 	.db 0xe2
      003CA6 94                    3481 	.db 0x94
      003CA7 80                    3482 	.db 0x80
      003CA8 E2                    3483 	.db 0xe2
      003CA9 94                    3484 	.db 0x94
      003CAA 80                    3485 	.db 0x80
      003CAB E2                    3486 	.db 0xe2
      003CAC 94                    3487 	.db 0x94
      003CAD 80                    3488 	.db 0x80
      003CAE E2                    3489 	.db 0xe2
      003CAF 94                    3490 	.db 0x94
      003CB0 80                    3491 	.db 0x80
      003CB1 E2                    3492 	.db 0xe2
      003CB2 94                    3493 	.db 0x94
      003CB3 80                    3494 	.db 0x80
      003CB4 E2                    3495 	.db 0xe2
      003CB5 94                    3496 	.db 0x94
      003CB6 80                    3497 	.db 0x80
      003CB7 E2                    3498 	.db 0xe2
      003CB8 94                    3499 	.db 0x94
      003CB9 80                    3500 	.db 0x80
      003CBA E2                    3501 	.db 0xe2
      003CBB 94                    3502 	.db 0x94
      003CBC 80                    3503 	.db 0x80
      003CBD E2                    3504 	.db 0xe2
      003CBE 94                    3505 	.db 0x94
      003CBF 80                    3506 	.db 0x80
      003CC0 E2                    3507 	.db 0xe2
      003CC1 94                    3508 	.db 0x94
      003CC2 80                    3509 	.db 0x80
      003CC3 E2                    3510 	.db 0xe2
      003CC4 94                    3511 	.db 0x94
      003CC5 80                    3512 	.db 0x80
      003CC6 E2                    3513 	.db 0xe2
      003CC7 94                    3514 	.db 0x94
      003CC8 80                    3515 	.db 0x80
      003CC9 E2                    3516 	.db 0xe2
      003CCA 94                    3517 	.db 0x94
      003CCB 80                    3518 	.db 0x80
      003CCC E2                    3519 	.db 0xe2
      003CCD 94                    3520 	.db 0x94
      003CCE 80                    3521 	.db 0x80
      003CCF E2                    3522 	.db 0xe2
      003CD0 94                    3523 	.db 0x94
      003CD1 80                    3524 	.db 0x80
      003CD2 E2                    3525 	.db 0xe2
      003CD3 94                    3526 	.db 0x94
      003CD4 80                    3527 	.db 0x80
      003CD5 E2                    3528 	.db 0xe2
      003CD6 94                    3529 	.db 0x94
      003CD7 80                    3530 	.db 0x80
      003CD8 E2                    3531 	.db 0xe2
      003CD9 94                    3532 	.db 0x94
      003CDA 80                    3533 	.db 0x80
      003CDB E2                    3534 	.db 0xe2
      003CDC 94                    3535 	.db 0x94
      003CDD 80                    3536 	.db 0x80
      003CDE E2                    3537 	.db 0xe2
      003CDF 94                    3538 	.db 0x94
      003CE0 80                    3539 	.db 0x80
      003CE1 E2                    3540 	.db 0xe2
      003CE2 94                    3541 	.db 0x94
      003CE3 80                    3542 	.db 0x80
      003CE4 E2                    3543 	.db 0xe2
      003CE5 94                    3544 	.db 0x94
      003CE6 80                    3545 	.db 0x80
      003CE7 E2                    3546 	.db 0xe2
      003CE8 94                    3547 	.db 0x94
      003CE9 80                    3548 	.db 0x80
      003CEA E2                    3549 	.db 0xe2
      003CEB 94                    3550 	.db 0x94
      003CEC 80                    3551 	.db 0x80
      003CED E2                    3552 	.db 0xe2
      003CEE 94                    3553 	.db 0x94
      003CEF 80                    3554 	.db 0x80
      003CF0 E2                    3555 	.db 0xe2
      003CF1 94                    3556 	.db 0x94
      003CF2 80                    3557 	.db 0x80
      003CF3 E2                    3558 	.db 0xe2
      003CF4 94                    3559 	.db 0x94
      003CF5 80                    3560 	.db 0x80
      003CF6 E2                    3561 	.db 0xe2
      003CF7 94                    3562 	.db 0x94
      003CF8 80                    3563 	.db 0x80
      003CF9 E2                    3564 	.db 0xe2
      003CFA 94                    3565 	.db 0x94
      003CFB 80                    3566 	.db 0x80
      003CFC E2                    3567 	.db 0xe2
      003CFD 94                    3568 	.db 0x94
      003CFE 80                    3569 	.db 0x80
      003CFF E2                    3570 	.db 0xe2
      003D00 94                    3571 	.db 0x94
      003D01 80                    3572 	.db 0x80
      003D02 E2                    3573 	.db 0xe2
      003D03 94                    3574 	.db 0x94
      003D04 80                    3575 	.db 0x80
      003D05 E2                    3576 	.db 0xe2
      003D06 94                    3577 	.db 0x94
      003D07 80                    3578 	.db 0x80
      003D08 E2                    3579 	.db 0xe2
      003D09 94                    3580 	.db 0x94
      003D0A 80                    3581 	.db 0x80
      003D0B E2                    3582 	.db 0xe2
      003D0C 94                    3583 	.db 0x94
      003D0D 80                    3584 	.db 0x80
      003D0E E2                    3585 	.db 0xe2
      003D0F 94                    3586 	.db 0x94
      003D10 80                    3587 	.db 0x80
      003D11 E2                    3588 	.db 0xe2
      003D12 94                    3589 	.db 0x94
      003D13 80                    3590 	.db 0x80
      003D14 E2                    3591 	.db 0xe2
      003D15 94                    3592 	.db 0x94
      003D16 98                    3593 	.db 0x98
      003D17 0A                    3594 	.db 0x0a
      003D18 0D                    3595 	.db 0x0d
      003D19 00                    3596 	.db 0x00
                                   3597 	.area CSEG    (CODE)
                                   3598 	.area CONST   (CODE)
      003D1A                       3599 ___str_11:
      003D1A 0A                    3600 	.db 0x0a
      003D1B 0D                    3601 	.db 0x0d
      003D1C 3E 3E 20 45 6E 74 65  3602 	.ascii ">> Enter command: "
             72 20 63 6F 6D 6D 61
             6E 64 3A 20
      003D2E 00                    3603 	.db 0x00
                                   3604 	.area CSEG    (CODE)
                                   3605 	.area CONST   (CODE)
      003D2F                       3606 ___str_12:
      003D2F 7C 20 24 20 25 63     3607 	.ascii "| $ %c"
      003D35 0A                    3608 	.db 0x0a
      003D36 0D                    3609 	.db 0x0d
      003D37 00                    3610 	.db 0x00
                                   3611 	.area CSEG    (CODE)
                                   3612 	.area CONST   (CODE)
      003D38                       3613 ___str_13:
      003D38 0A                    3614 	.db 0x0a
      003D39 0D                    3615 	.db 0x0d
      003D3A 00                    3616 	.db 0x00
                                   3617 	.area CSEG    (CODE)
                                   3618 	.area CONST   (CODE)
      003D3B                       3619 ___str_14:
      003D3B 3E 3E 20 53 49 4E 45  3620 	.ascii ">> SINE WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003D5B 0A                    3621 	.db 0x0a
      003D5C 0D                    3622 	.db 0x0d
      003D5D 00                    3623 	.db 0x00
                                   3624 	.area CSEG    (CODE)
                                   3625 	.area CONST   (CODE)
      003D5E                       3626 ___str_15:
      003D5E 3E 3E 20 53 51 55 41  3627 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003D80 0A                    3628 	.db 0x0a
      003D81 0D                    3629 	.db 0x0d
      003D82 00                    3630 	.db 0x00
                                   3631 	.area CSEG    (CODE)
                                   3632 	.area CONST   (CODE)
      003D83                       3633 ___str_16:
      003D83 3E 3E 20 53 49 4E 20  3634 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003DA2 0A                    3635 	.db 0x0a
      003DA3 0D                    3636 	.db 0x0d
      003DA4 00                    3637 	.db 0x00
                                   3638 	.area CSEG    (CODE)
                                   3639 	.area CONST   (CODE)
      003DA5                       3640 ___str_17:
      003DA5 3E 3E 20 54 52 49 41  3641 	.ascii ">> TRIANGULAR WAVE GENERATION COMPLETE"
             4E 47 55 4C 41 52 20
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003DCB 0A                    3642 	.db 0x0a
      003DCC 0D                    3643 	.db 0x0d
      003DCD 00                    3644 	.db 0x00
                                   3645 	.area CSEG    (CODE)
                                   3646 	.area CONST   (CODE)
      003DCE                       3647 ___str_18:
      003DCE 3E 3E 20 52 41 4D 50  3648 	.ascii ">> RAMP WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003DEE 0A                    3649 	.db 0x0a
      003DEF 0D                    3650 	.db 0x0d
      003DF0 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      003DF1                       3654 ___str_19:
      003DF1 3E 3E 20 44 45 4D 4F  3655 	.ascii ">> DEMO COMPLETE"
             20 43 4F 4D 50 4C 45
             54 45
      003E01 0A                    3656 	.db 0x0a
      003E02 0D                    3657 	.db 0x0d
      003E03 00                    3658 	.db 0x00
                                   3659 	.area CSEG    (CODE)
                                   3660 	.area CONST   (CODE)
      003E04                       3661 ___str_20:
      003E04 3E 3E 20 49 4E 56 41  3662 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003E14 0A                    3663 	.db 0x0a
      003E15 0D                    3664 	.db 0x0d
      003E16 00                    3665 	.db 0x00
                                   3666 	.area CSEG    (CODE)
                                   3667 	.area CONST   (CODE)
      003E17                       3668 ___str_21:
      003E17 E2                    3669 	.db 0xe2
      003E18 94                    3670 	.db 0x94
      003E19 82                    3671 	.db 0x82
      003E1A 20 45 6E 74 65 72 20  3672 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003E3E 0A                    3673 	.db 0x0a
      003E3F 0D                    3674 	.db 0x0d
      003E40 7C                    3675 	.ascii "|"
      003E41 00                    3676 	.db 0x00
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
      003E42                       3679 ___str_22:
      003E42 24 20                 3680 	.ascii "$ "
      003E44 00                    3681 	.db 0x00
                                   3682 	.area CSEG    (CODE)
                                   3683 	.area CONST   (CODE)
      003E45                       3684 ___str_23:
      003E45 0A                    3685 	.db 0x0a
      003E46 0D                    3686 	.db 0x0d
      003E47 E2                    3687 	.db 0xe2
      003E48 94                    3688 	.db 0x94
      003E49 82                    3689 	.db 0x82
      003E4A 20 45 6E 74 65 72 65  3690 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003E5F 0A                    3691 	.db 0x0a
      003E60 0D                    3692 	.db 0x0d
      003E61 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      003E62                       3696 ___str_24:
      003E62 0D                    3697 	.db 0x0d
      003E63 0A                    3698 	.db 0x0a
      003E64 20 49 6E 73 69 64 65  3699 	.ascii " Inside Manual SPI"
             20 4D 61 6E 75 61 6C
             20 53 50 49
      003E76 00                    3700 	.db 0x00
                                   3701 	.area CSEG    (CODE)
                                   3702 	.area CONST   (CODE)
      003E77                       3703 ___str_25:
      003E77 25 64                 3704 	.ascii "%d"
      003E79 0A                    3705 	.db 0x0a
      003E7A 0D                    3706 	.db 0x0d
      003E7B 00                    3707 	.db 0x00
                                   3708 	.area CSEG    (CODE)
                                   3709 	.area CONST   (CODE)
      003E7C                       3710 ___str_26:
      003E7C 0D                    3711 	.db 0x0d
      003E7D 0A                    3712 	.db 0x0a
      003E7E 20 4E 75 6D 62 65 72  3713 	.ascii " Number is %d"
             20 69 73 20 25 64
      003E8B 00                    3714 	.db 0x00
                                   3715 	.area CSEG    (CODE)
                                   3716 	.area XINIT   (CODE)
      003E97                       3717 __xinit__ms_flag:
      003E97 00                    3718 	.db #0x00	; 0
      003E98                       3719 __xinit__transmission_complete:
      003E98 00 00                 3720 	.byte #0x00, #0x00	;  0
                                   3721 	.area CABS    (ABS,CODE)
