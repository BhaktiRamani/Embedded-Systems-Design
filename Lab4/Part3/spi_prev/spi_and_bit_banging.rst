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
      000404                        478 _bit_bang_spi_number_65536_43:
      000404                        479 	.ds 1
      000405                        480 _take_data_input_65537_47:
      000405                        481 	.ds 4
      000409                        482 _take_data_data_65538_51:
      000409                        483 	.ds 1
      00040A                        484 _mannual_spi_number_65536_54:
      00040A                        485 	.ds 1
      00040B                        486 _mannual_spi_dac_value_index_65536_55:
      00040B                        487 	.ds 2
      00040D                        488 _mannual_spi_dac_data_65536_55:
      00040D                        489 	.ds 2
      00040F                        490 _bit_bang_spi_write_data_65536_65:
      00040F                        491 	.ds 2
      000411                        492 _spi_triangular_wave_number_65536_71:
      000411                        493 	.ds 2
      000413                        494 _spi_triangular_wave_dac_value_index_65536_72:
      000413                        495 	.ds 2
      000415                        496 _spi_triangular_wave_dac_data_65536_72:
      000415                        497 	.ds 2
      000417                        498 _spi_ramp_signal_number_65536_78:
      000417                        499 	.ds 2
      000419                        500 _spi_ramp_signal_dac_value_index_65536_79:
      000419                        501 	.ds 2
      00041B                        502 _spi_ramp_signal_dac_data_65536_79:
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
      002003 02 21 ED         [24]  553 	ljmp	_main
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
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 D3            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 AC         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 1A            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 AC         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 DD            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 AC         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 26            [12]  733 	mov	a,#___str_4
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 3A            [12]  735 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 AC         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 E0            [12]  744 	mov	a,#___str_5
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 AC         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 27            [12]  755 	mov	a,#___str_6
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3B            [12]  757 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 AC         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 6D            [12]  766 	mov	a,#___str_7
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 AC         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 B3            [12]  777 	mov	a,#___str_8
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 AC         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 F9            [12]  788 	mov	a,#___str_9
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 AC         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 3F            [12]  799 	mov	a,#___str_10
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3C            [12]  801 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 AC         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 85            [12]  810 	mov	a,#___str_11
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 AC         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 CB            [12]  821 	mov	a,#___str_12
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3C            [12]  823 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 27 AC         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 85            [12]  832 	mov	a,#___str_13
      0021D5 C0 E0            [24]  833 	push	acc
      0021D7 74 3D            [12]  834 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  835 	push	acc
      0021DB 74 80            [12]  836 	mov	a,#0x80
      0021DD C0 E0            [24]  837 	push	acc
      0021DF 12 27 AC         [24]  838 	lcall	_printf
      0021E2 15 81            [12]  839 	dec	sp
      0021E4 15 81            [12]  840 	dec	sp
      0021E6 15 81            [12]  841 	dec	sp
                                    842 ;	spi_and_bit_banging.c:253: }
      0021E8 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'spi_transmission_stop'
                                    846 ;------------------------------------------------------------
                                    847 ;	spi_and_bit_banging.c:256: void spi_transmission_stop(void) 
                                    848 ;	-----------------------------------------
                                    849 ;	 function spi_transmission_stop
                                    850 ;	-----------------------------------------
      0021E9                        851 _spi_transmission_stop:
                                    852 ;	spi_and_bit_banging.c:258: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0021E9 53 C3 BF         [24]  853 	anl	_SPCON,#0xbf
                                    854 ;	spi_and_bit_banging.c:259: }
      0021EC 22               [24]  855 	ret
                                    856 ;------------------------------------------------------------
                                    857 ;Allocation info for local variables in function 'main'
                                    858 ;------------------------------------------------------------
                                    859 ;user_input                Allocated with name '_main_user_input_131072_37'
                                    860 ;result                    Allocated with name '_main_result_262144_39'
                                    861 ;result2                   Allocated with name '_main_result2_262145_41'
                                    862 ;------------------------------------------------------------
                                    863 ;	spi_and_bit_banging.c:260: int main(void)
                                    864 ;	-----------------------------------------
                                    865 ;	 function main
                                    866 ;	-----------------------------------------
      0021ED                        867 _main:
                                    868 ;	spi_and_bit_banging.c:262: display_menu();
      0021ED 12 20 C2         [24]  869 	lcall	_display_menu
                                    870 ;	spi_and_bit_banging.c:263: spi_init();
      0021F0 12 25 3E         [24]  871 	lcall	_spi_init
                                    872 ;	spi_and_bit_banging.c:264: while(1)
      0021F3                        873 00106$:
                                    874 ;	spi_and_bit_banging.c:266: char user_input = getchar();
      0021F3 12 20 81         [24]  875 	lcall	_getchar
      0021F6 AE 82            [24]  876 	mov	r6,dpl
                                    877 ;	spi_and_bit_banging.c:267: printf("| $ %c\n\r", user_input);
      0021F8 8E 05            [24]  878 	mov	ar5,r6
      0021FA 7F 00            [12]  879 	mov	r7,#0x00
      0021FC C0 06            [24]  880 	push	ar6
      0021FE C0 05            [24]  881 	push	ar5
      002200 C0 07            [24]  882 	push	ar7
      002202 74 97            [12]  883 	mov	a,#___str_14
      002204 C0 E0            [24]  884 	push	acc
      002206 74 3D            [12]  885 	mov	a,#(___str_14 >> 8)
      002208 C0 E0            [24]  886 	push	acc
      00220A 74 80            [12]  887 	mov	a,#0x80
      00220C C0 E0            [24]  888 	push	acc
      00220E 12 27 AC         [24]  889 	lcall	_printf
      002211 E5 81            [12]  890 	mov	a,sp
      002213 24 FB            [12]  891 	add	a,#0xfb
      002215 F5 81            [12]  892 	mov	sp,a
                                    893 ;	spi_and_bit_banging.c:268: printf("\n\r");
      002217 74 A0            [12]  894 	mov	a,#___str_15
      002219 C0 E0            [24]  895 	push	acc
      00221B 74 3D            [12]  896 	mov	a,#(___str_15 >> 8)
      00221D C0 E0            [24]  897 	push	acc
      00221F 74 80            [12]  898 	mov	a,#0x80
      002221 C0 E0            [24]  899 	push	acc
      002223 12 27 AC         [24]  900 	lcall	_printf
      002226 15 81            [12]  901 	dec	sp
      002228 15 81            [12]  902 	dec	sp
      00222A 15 81            [12]  903 	dec	sp
      00222C D0 06            [24]  904 	pop	ar6
                                    905 ;	spi_and_bit_banging.c:269: switch(user_input)
      00222E BE 42 02         [24]  906 	cjne	r6,#0x42,00122$
      002231 80 23            [24]  907 	sjmp	00102$
      002233                        908 00122$:
      002233 BE 4D 44         [24]  909 	cjne	r6,#0x4d,00103$
                                    910 ;	spi_and_bit_banging.c:273: unsigned char result = take_data();
      002236 12 22 DD         [24]  911 	lcall	_take_data
                                    912 ;	spi_and_bit_banging.c:274: mannual_spi(result);
      002239 12 24 31         [24]  913 	lcall	_mannual_spi
                                    914 ;	spi_and_bit_banging.c:275: printf(">> SINE WAVE GENERATION COMPLETE\n\r");
      00223C 74 A3            [12]  915 	mov	a,#___str_16
      00223E C0 E0            [24]  916 	push	acc
      002240 74 3D            [12]  917 	mov	a,#(___str_16 >> 8)
      002242 C0 E0            [24]  918 	push	acc
      002244 74 80            [12]  919 	mov	a,#0x80
      002246 C0 E0            [24]  920 	push	acc
      002248 12 27 AC         [24]  921 	lcall	_printf
      00224B 15 81            [12]  922 	dec	sp
      00224D 15 81            [12]  923 	dec	sp
      00224F 15 81            [12]  924 	dec	sp
                                    925 ;	spi_and_bit_banging.c:276: spi_transmission_stop();
      002251 12 21 E9         [24]  926 	lcall	_spi_transmission_stop
                                    927 ;	spi_and_bit_banging.c:277: break;
                                    928 ;	spi_and_bit_banging.c:280: case 'B':
      002254 80 9D            [24]  929 	sjmp	00106$
      002256                        930 00102$:
                                    931 ;	spi_and_bit_banging.c:282: bit_bang_spi_init();
      002256 12 25 48         [24]  932 	lcall	_bit_bang_spi_init
                                    933 ;	spi_and_bit_banging.c:283: unsigned char result2 = take_data();
      002259 12 22 DD         [24]  934 	lcall	_take_data
                                    935 ;	spi_and_bit_banging.c:284: bit_bang_spi(result2);
      00225C 12 22 AA         [24]  936 	lcall	_bit_bang_spi
                                    937 ;	spi_and_bit_banging.c:285: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00225F 74 C6            [12]  938 	mov	a,#___str_17
      002261 C0 E0            [24]  939 	push	acc
      002263 74 3D            [12]  940 	mov	a,#(___str_17 >> 8)
      002265 C0 E0            [24]  941 	push	acc
      002267 74 80            [12]  942 	mov	a,#0x80
      002269 C0 E0            [24]  943 	push	acc
      00226B 12 27 AC         [24]  944 	lcall	_printf
      00226E 15 81            [12]  945 	dec	sp
      002270 15 81            [12]  946 	dec	sp
      002272 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:286: spi_init(); 
      002274 12 25 3E         [24]  949 	lcall	_spi_init
                                    950 ;	spi_and_bit_banging.c:287: break;
      002277 02 21 F3         [24]  951 	ljmp	00106$
                                    952 ;	spi_and_bit_banging.c:327: default:
      00227A                        953 00103$:
                                    954 ;	spi_and_bit_banging.c:328: printf(">> INVALID INPUT\n\r");
      00227A 74 EB            [12]  955 	mov	a,#___str_18
      00227C C0 E0            [24]  956 	push	acc
      00227E 74 3D            [12]  957 	mov	a,#(___str_18 >> 8)
      002280 C0 E0            [24]  958 	push	acc
      002282 74 80            [12]  959 	mov	a,#0x80
      002284 C0 E0            [24]  960 	push	acc
      002286 12 27 AC         [24]  961 	lcall	_printf
      002289 15 81            [12]  962 	dec	sp
      00228B 15 81            [12]  963 	dec	sp
      00228D 15 81            [12]  964 	dec	sp
                                    965 ;	spi_and_bit_banging.c:333: }
                                    966 ;	spi_and_bit_banging.c:335: }
      00228F 02 21 F3         [24]  967 	ljmp	00106$
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'demo_mode'
                                    970 ;------------------------------------------------------------
                                    971 ;	spi_and_bit_banging.c:341: void demo_mode()
                                    972 ;	-----------------------------------------
                                    973 ;	 function demo_mode
                                    974 ;	-----------------------------------------
      002292                        975 _demo_mode:
                                    976 ;	spi_and_bit_banging.c:343: mannual_spi(7);
      002292 75 82 07         [24]  977 	mov	dpl,#0x07
      002295 12 24 31         [24]  978 	lcall	_mannual_spi
                                    979 ;	spi_and_bit_banging.c:344: bit_bang_spi(7);
      002298 75 82 07         [24]  980 	mov	dpl,#0x07
      00229B 12 22 AA         [24]  981 	lcall	_bit_bang_spi
                                    982 ;	spi_and_bit_banging.c:345: spi_ramp_signal(7);
      00229E 90 00 07         [24]  983 	mov	dptr,#0x0007
      0022A1 12 26 80         [24]  984 	lcall	_spi_ramp_signal
                                    985 ;	spi_and_bit_banging.c:346: spi_triangular_wave(7);
      0022A4 90 00 07         [24]  986 	mov	dptr,#0x0007
                                    987 ;	spi_and_bit_banging.c:347: }
      0022A7 02 25 A2         [24]  988 	ljmp	_spi_triangular_wave
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'bit_bang_spi'
                                    991 ;------------------------------------------------------------
                                    992 ;number                    Allocated with name '_bit_bang_spi_number_65536_43'
                                    993 ;------------------------------------------------------------
                                    994 ;	spi_and_bit_banging.c:351: void bit_bang_spi(unsigned char number)
                                    995 ;	-----------------------------------------
                                    996 ;	 function bit_bang_spi
                                    997 ;	-----------------------------------------
      0022AA                        998 _bit_bang_spi:
      0022AA E5 82            [12]  999 	mov	a,dpl
      0022AC 90 04 04         [24] 1000 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022AF F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	spi_and_bit_banging.c:353: while(number > 0)
      0022B0                       1003 00101$:
      0022B0 90 04 04         [24] 1004 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022B3 E0               [24] 1005 	movx	a,@dptr
      0022B4 FF               [12] 1006 	mov	r7,a
      0022B5 E0               [24] 1007 	movx	a,@dptr
      0022B6 60 24            [24] 1008 	jz	00104$
                                   1009 ;	spi_and_bit_banging.c:355: bit_bang_spi_write(TEST_DATA);
      0022B8 90 1F F0         [24] 1010 	mov	dptr,#0x1ff0
      0022BB C0 07            [24] 1011 	push	ar7
      0022BD 12 25 52         [24] 1012 	lcall	_bit_bang_spi_write
                                   1013 ;	spi_and_bit_banging.c:356: delay_ms(DELAY_PERIOD);
      0022C0 90 01 F4         [24] 1014 	mov	dptr,#0x01f4
      0022C3 12 20 8F         [24] 1015 	lcall	_delay_ms
                                   1016 ;	spi_and_bit_banging.c:357: bit_bang_spi_write(IDLE_DATA);
      0022C6 90 10 00         [24] 1017 	mov	dptr,#0x1000
      0022C9 12 25 52         [24] 1018 	lcall	_bit_bang_spi_write
                                   1019 ;	spi_and_bit_banging.c:358: delay_ms(DELAY_PERIOD);
      0022CC 90 01 F4         [24] 1020 	mov	dptr,#0x01f4
      0022CF 12 20 8F         [24] 1021 	lcall	_delay_ms
      0022D2 D0 07            [24] 1022 	pop	ar7
                                   1023 ;	spi_and_bit_banging.c:359: number = number - 1;
      0022D4 EF               [12] 1024 	mov	a,r7
      0022D5 14               [12] 1025 	dec	a
      0022D6 90 04 04         [24] 1026 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022D9 F0               [24] 1027 	movx	@dptr,a
      0022DA 80 D4            [24] 1028 	sjmp	00101$
      0022DC                       1029 00104$:
                                   1030 ;	spi_and_bit_banging.c:361: }
      0022DC 22               [24] 1031 	ret
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'take_data'
                                   1034 ;------------------------------------------------------------
                                   1035 ;input                     Allocated with name '_take_data_input_65537_47'
                                   1036 ;i                         Allocated with name '_take_data_i_65537_47'
                                   1037 ;c                         Allocated with name '_take_data_c_65537_47'
                                   1038 ;data                      Allocated with name '_take_data_data_65538_51'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	spi_and_bit_banging.c:362: unsigned char take_data()
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function take_data
                                   1043 ;	-----------------------------------------
      0022DD                       1044 _take_data:
                                   1045 ;	spi_and_bit_banging.c:364: printf("│ Enter number (up to 2 characters): \n\r|");
      0022DD 74 FE            [12] 1046 	mov	a,#___str_19
      0022DF C0 E0            [24] 1047 	push	acc
      0022E1 74 3D            [12] 1048 	mov	a,#(___str_19 >> 8)
      0022E3 C0 E0            [24] 1049 	push	acc
      0022E5 74 80            [12] 1050 	mov	a,#0x80
      0022E7 C0 E0            [24] 1051 	push	acc
      0022E9 12 27 AC         [24] 1052 	lcall	_printf
      0022EC 15 81            [12] 1053 	dec	sp
      0022EE 15 81            [12] 1054 	dec	sp
      0022F0 15 81            [12] 1055 	dec	sp
                                   1056 ;	spi_and_bit_banging.c:365: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0022F2 90 04 05         [24] 1057 	mov	dptr,#_take_data_input_65537_47
      0022F5 E4               [12] 1058 	clr	a
      0022F6 F0               [24] 1059 	movx	@dptr,a
      0022F7 90 04 06         [24] 1060 	mov	dptr,#(_take_data_input_65537_47 + 0x0001)
      0022FA F0               [24] 1061 	movx	@dptr,a
      0022FB 90 04 07         [24] 1062 	mov	dptr,#(_take_data_input_65537_47 + 0x0002)
      0022FE F0               [24] 1063 	movx	@dptr,a
      0022FF 90 04 08         [24] 1064 	mov	dptr,#(_take_data_input_65537_47 + 0x0003)
      002302 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	spi_and_bit_banging.c:369: printf("$ ");
      002303 74 29            [12] 1067 	mov	a,#___str_20
      002305 C0 E0            [24] 1068 	push	acc
      002307 74 3E            [12] 1069 	mov	a,#(___str_20 >> 8)
      002309 C0 E0            [24] 1070 	push	acc
      00230B 74 80            [12] 1071 	mov	a,#0x80
      00230D C0 E0            [24] 1072 	push	acc
      00230F 12 27 AC         [24] 1073 	lcall	_printf
      002312 15 81            [12] 1074 	dec	sp
      002314 15 81            [12] 1075 	dec	sp
      002316 15 81            [12] 1076 	dec	sp
                                   1077 ;	spi_and_bit_banging.c:371: while (i < 3) {
      002318 7E 00            [12] 1078 	mov	r6,#0x00
      00231A 7F 00            [12] 1079 	mov	r7,#0x00
      00231C                       1080 00111$:
      00231C C3               [12] 1081 	clr	c
      00231D EE               [12] 1082 	mov	a,r6
      00231E 94 03            [12] 1083 	subb	a,#0x03
      002320 EF               [12] 1084 	mov	a,r7
      002321 64 80            [12] 1085 	xrl	a,#0x80
      002323 94 80            [12] 1086 	subb	a,#0x80
      002325 50 5B            [24] 1087 	jnc	00113$
                                   1088 ;	spi_and_bit_banging.c:373: c = getchar();
      002327 C0 07            [24] 1089 	push	ar7
      002329 C0 06            [24] 1090 	push	ar6
      00232B 12 20 81         [24] 1091 	lcall	_getchar
      00232E AC 82            [24] 1092 	mov	r4,dpl
      002330 AD 83            [24] 1093 	mov	r5,dph
      002332 D0 06            [24] 1094 	pop	ar6
      002334 D0 07            [24] 1095 	pop	ar7
                                   1096 ;	spi_and_bit_banging.c:376: if (c == '\r' || c == '\n') {
      002336 BC 0D 02         [24] 1097 	cjne	r4,#0x0d,00194$
      002339 80 47            [24] 1098 	sjmp	00113$
      00233B                       1099 00194$:
      00233B BC 0A 02         [24] 1100 	cjne	r4,#0x0a,00195$
      00233E 80 42            [24] 1101 	sjmp	00113$
      002340                       1102 00195$:
                                   1103 ;	spi_and_bit_banging.c:381: if ((c >= '0' && c <= '9') ||
      002340 BC 30 00         [24] 1104 	cjne	r4,#0x30,00196$
      002343                       1105 00196$:
      002343 40 05            [24] 1106 	jc	00108$
      002345 EC               [12] 1107 	mov	a,r4
      002346 24 C6            [12] 1108 	add	a,#0xff - 0x39
      002348 50 14            [24] 1109 	jnc	00104$
      00234A                       1110 00108$:
                                   1111 ;	spi_and_bit_banging.c:382: (c >= 'a' && c <= 'f') ||
      00234A BC 61 00         [24] 1112 	cjne	r4,#0x61,00199$
      00234D                       1113 00199$:
      00234D 40 05            [24] 1114 	jc	00110$
      00234F EC               [12] 1115 	mov	a,r4
      002350 24 99            [12] 1116 	add	a,#0xff - 0x66
      002352 50 0A            [24] 1117 	jnc	00104$
      002354                       1118 00110$:
                                   1119 ;	spi_and_bit_banging.c:383: (c >= 'A' && c <= 'F')) {
      002354 BC 41 00         [24] 1120 	cjne	r4,#0x41,00202$
      002357                       1121 00202$:
      002357 40 C3            [24] 1122 	jc	00111$
      002359 EC               [12] 1123 	mov	a,r4
      00235A 24 B9            [12] 1124 	add	a,#0xff - 0x46
      00235C 40 BE            [24] 1125 	jc	00111$
      00235E                       1126 00104$:
                                   1127 ;	spi_and_bit_banging.c:385: input[i] = c;
      00235E EE               [12] 1128 	mov	a,r6
      00235F 24 05            [12] 1129 	add	a,#_take_data_input_65537_47
      002361 F5 82            [12] 1130 	mov	dpl,a
      002363 EF               [12] 1131 	mov	a,r7
      002364 34 04            [12] 1132 	addc	a,#(_take_data_input_65537_47 >> 8)
      002366 F5 83            [12] 1133 	mov	dph,a
      002368 EC               [12] 1134 	mov	a,r4
      002369 F0               [24] 1135 	movx	@dptr,a
                                   1136 ;	spi_and_bit_banging.c:386: putchar(c);  // Echo character back
      00236A 7D 00            [12] 1137 	mov	r5,#0x00
      00236C 8C 82            [24] 1138 	mov	dpl,r4
      00236E 8D 83            [24] 1139 	mov	dph,r5
      002370 C0 07            [24] 1140 	push	ar7
      002372 C0 06            [24] 1141 	push	ar6
      002374 12 20 62         [24] 1142 	lcall	_putchar
      002377 D0 06            [24] 1143 	pop	ar6
      002379 D0 07            [24] 1144 	pop	ar7
                                   1145 ;	spi_and_bit_banging.c:387: i++;
      00237B 0E               [12] 1146 	inc	r6
      00237C BE 00 9D         [24] 1147 	cjne	r6,#0x00,00111$
      00237F 0F               [12] 1148 	inc	r7
      002380 80 9A            [24] 1149 	sjmp	00111$
      002382                       1150 00113$:
                                   1151 ;	spi_and_bit_banging.c:391: input[i] = '\0';  // Null-terminate the string
      002382 EE               [12] 1152 	mov	a,r6
      002383 24 05            [12] 1153 	add	a,#_take_data_input_65537_47
      002385 F5 82            [12] 1154 	mov	dpl,a
      002387 EF               [12] 1155 	mov	a,r7
      002388 34 04            [12] 1156 	addc	a,#(_take_data_input_65537_47 >> 8)
      00238A F5 83            [12] 1157 	mov	dph,a
      00238C E4               [12] 1158 	clr	a
      00238D F0               [24] 1159 	movx	@dptr,a
                                   1160 ;	spi_and_bit_banging.c:394: unsigned char data = 0;
      00238E 90 04 09         [24] 1161 	mov	dptr,#_take_data_data_65538_51
      002391 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	spi_and_bit_banging.c:395: for (i = 0; input[i] != '\0'; i++) {
      002392 7E 00            [12] 1164 	mov	r6,#0x00
      002394 7F 00            [12] 1165 	mov	r7,#0x00
      002396                       1166 00127$:
      002396 EE               [12] 1167 	mov	a,r6
      002397 24 05            [12] 1168 	add	a,#_take_data_input_65537_47
      002399 F5 82            [12] 1169 	mov	dpl,a
      00239B EF               [12] 1170 	mov	a,r7
      00239C 34 04            [12] 1171 	addc	a,#(_take_data_input_65537_47 >> 8)
      00239E F5 83            [12] 1172 	mov	dph,a
      0023A0 E0               [24] 1173 	movx	a,@dptr
      0023A1 FD               [12] 1174 	mov	r5,a
      0023A2 70 03            [24] 1175 	jnz	00206$
      0023A4 02 24 09         [24] 1176 	ljmp	00125$
      0023A7                       1177 00206$:
                                   1178 ;	spi_and_bit_banging.c:396: data = data * 16;
      0023A7 90 04 09         [24] 1179 	mov	dptr,#_take_data_data_65538_51
      0023AA E0               [24] 1180 	movx	a,@dptr
      0023AB C4               [12] 1181 	swap	a
      0023AC 54 F0            [12] 1182 	anl	a,#0xf0
      0023AE FC               [12] 1183 	mov	r4,a
      0023AF F0               [24] 1184 	movx	@dptr,a
                                   1185 ;	spi_and_bit_banging.c:397: if (input[i] >= '0' && input[i] <= '9')
      0023B0 BD 30 00         [24] 1186 	cjne	r5,#0x30,00207$
      0023B3                       1187 00207$:
      0023B3 40 12            [24] 1188 	jc	00122$
      0023B5 ED               [12] 1189 	mov	a,r5
      0023B6 24 C6            [12] 1190 	add	a,#0xff - 0x39
      0023B8 40 0D            [24] 1191 	jc	00122$
                                   1192 ;	spi_and_bit_banging.c:398: data += input[i] - '0';
      0023BA ED               [12] 1193 	mov	a,r5
      0023BB 24 D0            [12] 1194 	add	a,#0xd0
      0023BD FD               [12] 1195 	mov	r5,a
      0023BE 90 04 09         [24] 1196 	mov	dptr,#_take_data_data_65538_51
      0023C1 E0               [24] 1197 	movx	a,@dptr
      0023C2 FC               [12] 1198 	mov	r4,a
      0023C3 2D               [12] 1199 	add	a,r5
      0023C4 F0               [24] 1200 	movx	@dptr,a
      0023C5 80 3A            [24] 1201 	sjmp	00128$
      0023C7                       1202 00122$:
                                   1203 ;	spi_and_bit_banging.c:399: else if (input[i] >= 'A' && input[i] <= 'F')
      0023C7 EE               [12] 1204 	mov	a,r6
      0023C8 24 05            [12] 1205 	add	a,#_take_data_input_65537_47
      0023CA F5 82            [12] 1206 	mov	dpl,a
      0023CC EF               [12] 1207 	mov	a,r7
      0023CD 34 04            [12] 1208 	addc	a,#(_take_data_input_65537_47 >> 8)
      0023CF F5 83            [12] 1209 	mov	dph,a
      0023D1 E0               [24] 1210 	movx	a,@dptr
      0023D2 FD               [12] 1211 	mov	r5,a
      0023D3 BD 41 00         [24] 1212 	cjne	r5,#0x41,00210$
      0023D6                       1213 00210$:
      0023D6 40 14            [24] 1214 	jc	00118$
      0023D8 ED               [12] 1215 	mov	a,r5
      0023D9 24 B9            [12] 1216 	add	a,#0xff - 0x46
      0023DB 40 0F            [24] 1217 	jc	00118$
                                   1218 ;	spi_and_bit_banging.c:400: data += input[i] - 'A' + 10;
      0023DD 8D 04            [24] 1219 	mov	ar4,r5
      0023DF 74 C9            [12] 1220 	mov	a,#0xc9
      0023E1 2C               [12] 1221 	add	a,r4
      0023E2 FC               [12] 1222 	mov	r4,a
      0023E3 90 04 09         [24] 1223 	mov	dptr,#_take_data_data_65538_51
      0023E6 E0               [24] 1224 	movx	a,@dptr
      0023E7 FB               [12] 1225 	mov	r3,a
      0023E8 2C               [12] 1226 	add	a,r4
      0023E9 F0               [24] 1227 	movx	@dptr,a
      0023EA 80 15            [24] 1228 	sjmp	00128$
      0023EC                       1229 00118$:
                                   1230 ;	spi_and_bit_banging.c:401: else if (input[i] >= 'a' && input[i] <= 'f')
      0023EC BD 61 00         [24] 1231 	cjne	r5,#0x61,00213$
      0023EF                       1232 00213$:
      0023EF 40 10            [24] 1233 	jc	00128$
      0023F1 ED               [12] 1234 	mov	a,r5
      0023F2 24 99            [12] 1235 	add	a,#0xff - 0x66
      0023F4 40 0B            [24] 1236 	jc	00128$
                                   1237 ;	spi_and_bit_banging.c:402: data += input[i] - 'a' + 10;
      0023F6 74 A9            [12] 1238 	mov	a,#0xa9
      0023F8 2D               [12] 1239 	add	a,r5
      0023F9 FD               [12] 1240 	mov	r5,a
      0023FA 90 04 09         [24] 1241 	mov	dptr,#_take_data_data_65538_51
      0023FD E0               [24] 1242 	movx	a,@dptr
      0023FE FC               [12] 1243 	mov	r4,a
      0023FF 2D               [12] 1244 	add	a,r5
      002400 F0               [24] 1245 	movx	@dptr,a
      002401                       1246 00128$:
                                   1247 ;	spi_and_bit_banging.c:395: for (i = 0; input[i] != '\0'; i++) {
      002401 0E               [12] 1248 	inc	r6
      002402 BE 00 01         [24] 1249 	cjne	r6,#0x00,00216$
      002405 0F               [12] 1250 	inc	r7
      002406                       1251 00216$:
      002406 02 23 96         [24] 1252 	ljmp	00127$
      002409                       1253 00125$:
                                   1254 ;	spi_and_bit_banging.c:405: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      002409 90 04 09         [24] 1255 	mov	dptr,#_take_data_data_65538_51
      00240C E0               [24] 1256 	movx	a,@dptr
      00240D FF               [12] 1257 	mov	r7,a
      00240E FD               [12] 1258 	mov	r5,a
      00240F 7E 00            [12] 1259 	mov	r6,#0x00
      002411 C0 07            [24] 1260 	push	ar7
      002413 C0 05            [24] 1261 	push	ar5
      002415 C0 06            [24] 1262 	push	ar6
      002417 74 2C            [12] 1263 	mov	a,#___str_21
      002419 C0 E0            [24] 1264 	push	acc
      00241B 74 3E            [12] 1265 	mov	a,#(___str_21 >> 8)
      00241D C0 E0            [24] 1266 	push	acc
      00241F 74 80            [12] 1267 	mov	a,#0x80
      002421 C0 E0            [24] 1268 	push	acc
      002423 12 27 AC         [24] 1269 	lcall	_printf
      002426 E5 81            [12] 1270 	mov	a,sp
      002428 24 FB            [12] 1271 	add	a,#0xfb
      00242A F5 81            [12] 1272 	mov	sp,a
      00242C D0 07            [24] 1273 	pop	ar7
                                   1274 ;	spi_and_bit_banging.c:412: return data;
      00242E 8F 82            [24] 1275 	mov	dpl,r7
                                   1276 ;	spi_and_bit_banging.c:414: }
      002430 22               [24] 1277 	ret
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'mannual_spi'
                                   1280 ;------------------------------------------------------------
                                   1281 ;number                    Allocated with name '_mannual_spi_number_65536_54'
                                   1282 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_55'
                                   1283 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_55'
                                   1284 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_55'
                                   1285 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_55'
                                   1286 ;i                         Allocated with name '_mannual_spi_i_196608_57'
                                   1287 ;------------------------------------------------------------
                                   1288 ;	spi_and_bit_banging.c:416: void mannual_spi(unsigned char number)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function mannual_spi
                                   1291 ;	-----------------------------------------
      002431                       1292 _mannual_spi:
      002431 E5 82            [12] 1293 	mov	a,dpl
      002433 90 04 0A         [24] 1294 	mov	dptr,#_mannual_spi_number_65536_54
      002436 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	spi_and_bit_banging.c:418: int dac_value_index = 0;
      002437 90 04 0B         [24] 1297 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00243A E4               [12] 1298 	clr	a
      00243B F0               [24] 1299 	movx	@dptr,a
      00243C A3               [24] 1300 	inc	dptr
      00243D F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	spi_and_bit_banging.c:419: int dac_data = 0;
      00243E 90 04 0D         [24] 1303 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002441 F0               [24] 1304 	movx	@dptr,a
      002442 A3               [24] 1305 	inc	dptr
      002443 F0               [24] 1306 	movx	@dptr,a
                                   1307 ;	spi_and_bit_banging.c:421: printf("\r\n Inside Manual SPI");
      002444 74 49            [12] 1308 	mov	a,#___str_22
      002446 C0 E0            [24] 1309 	push	acc
      002448 74 3E            [12] 1310 	mov	a,#(___str_22 >> 8)
      00244A C0 E0            [24] 1311 	push	acc
      00244C 74 80            [12] 1312 	mov	a,#0x80
      00244E C0 E0            [24] 1313 	push	acc
      002450 12 27 AC         [24] 1314 	lcall	_printf
      002453 15 81            [12] 1315 	dec	sp
      002455 15 81            [12] 1316 	dec	sp
      002457 15 81            [12] 1317 	dec	sp
                                   1318 ;	spi_and_bit_banging.c:422: printf("%d\n\r", number);
      002459 90 04 0A         [24] 1319 	mov	dptr,#_mannual_spi_number_65536_54
      00245C E0               [24] 1320 	movx	a,@dptr
      00245D FF               [12] 1321 	mov	r7,a
      00245E 7E 00            [12] 1322 	mov	r6,#0x00
      002460 C0 07            [24] 1323 	push	ar7
      002462 C0 06            [24] 1324 	push	ar6
      002464 74 5E            [12] 1325 	mov	a,#___str_23
      002466 C0 E0            [24] 1326 	push	acc
      002468 74 3E            [12] 1327 	mov	a,#(___str_23 >> 8)
      00246A C0 E0            [24] 1328 	push	acc
      00246C 74 80            [12] 1329 	mov	a,#0x80
      00246E C0 E0            [24] 1330 	push	acc
      002470 12 27 AC         [24] 1331 	lcall	_printf
      002473 E5 81            [12] 1332 	mov	a,sp
      002475 24 FB            [12] 1333 	add	a,#0xfb
      002477 F5 81            [12] 1334 	mov	sp,a
                                   1335 ;	spi_and_bit_banging.c:423: while(number > 0)
      002479                       1336 00111$:
      002479 90 04 0A         [24] 1337 	mov	dptr,#_mannual_spi_number_65536_54
      00247C E0               [24] 1338 	movx	a,@dptr
      00247D FF               [12] 1339 	mov	r7,a
      00247E E0               [24] 1340 	movx	a,@dptr
      00247F 70 01            [24] 1341 	jnz	00156$
      002481 22               [24] 1342 	ret
      002482                       1343 00156$:
                                   1344 ;	spi_and_bit_banging.c:425: printf("\r\n Number is %d",number);
      002482 7E 00            [12] 1345 	mov	r6,#0x00
      002484 C0 07            [24] 1346 	push	ar7
      002486 C0 06            [24] 1347 	push	ar6
      002488 74 63            [12] 1348 	mov	a,#___str_24
      00248A C0 E0            [24] 1349 	push	acc
      00248C 74 3E            [12] 1350 	mov	a,#(___str_24 >> 8)
      00248E C0 E0            [24] 1351 	push	acc
      002490 74 80            [12] 1352 	mov	a,#0x80
      002492 C0 E0            [24] 1353 	push	acc
      002494 12 27 AC         [24] 1354 	lcall	_printf
      002497 E5 81            [12] 1355 	mov	a,sp
      002499 24 FB            [12] 1356 	add	a,#0xfb
      00249B F5 81            [12] 1357 	mov	sp,a
                                   1358 ;	spi_and_bit_banging.c:427: for(int i = 0; i<255; i++)
      00249D 7E 00            [12] 1359 	mov	r6,#0x00
      00249F 7F 00            [12] 1360 	mov	r7,#0x00
      0024A1                       1361 00115$:
      0024A1 C3               [12] 1362 	clr	c
      0024A2 EE               [12] 1363 	mov	a,r6
      0024A3 94 FF            [12] 1364 	subb	a,#0xff
      0024A5 EF               [12] 1365 	mov	a,r7
      0024A6 64 80            [12] 1366 	xrl	a,#0x80
      0024A8 94 80            [12] 1367 	subb	a,#0x80
      0024AA 40 03            [24] 1368 	jc	00157$
      0024AC 02 25 34         [24] 1369 	ljmp	00110$
      0024AF                       1370 00157$:
                                   1371 ;	spi_and_bit_banging.c:430: if(dac_value_index < SINE_MAX_INDEX)
      0024AF 90 04 0B         [24] 1372 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024B2 E0               [24] 1373 	movx	a,@dptr
      0024B3 FC               [12] 1374 	mov	r4,a
      0024B4 A3               [24] 1375 	inc	dptr
      0024B5 E0               [24] 1376 	movx	a,@dptr
      0024B6 FD               [12] 1377 	mov	r5,a
      0024B7 C3               [12] 1378 	clr	c
      0024B8 64 80            [12] 1379 	xrl	a,#0x80
      0024BA 94 81            [12] 1380 	subb	a,#0x81
      0024BC 50 21            [24] 1381 	jnc	00102$
                                   1382 ;	spi_and_bit_banging.c:434: dac_data = dac_values[dac_value_index];
      0024BE EC               [12] 1383 	mov	a,r4
      0024BF 2C               [12] 1384 	add	a,r4
      0024C0 FC               [12] 1385 	mov	r4,a
      0024C1 ED               [12] 1386 	mov	a,r5
      0024C2 33               [12] 1387 	rlc	a
      0024C3 FD               [12] 1388 	mov	r5,a
      0024C4 EC               [12] 1389 	mov	a,r4
      0024C5 24 0E            [12] 1390 	add	a,#_dac_values
      0024C7 F5 82            [12] 1391 	mov	dpl,a
      0024C9 ED               [12] 1392 	mov	a,r5
      0024CA 34 32            [12] 1393 	addc	a,#(_dac_values >> 8)
      0024CC F5 83            [12] 1394 	mov	dph,a
      0024CE E4               [12] 1395 	clr	a
      0024CF 93               [24] 1396 	movc	a,@a+dptr
      0024D0 FC               [12] 1397 	mov	r4,a
      0024D1 A3               [24] 1398 	inc	dptr
      0024D2 E4               [12] 1399 	clr	a
      0024D3 93               [24] 1400 	movc	a,@a+dptr
      0024D4 FD               [12] 1401 	mov	r5,a
      0024D5 90 04 0D         [24] 1402 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024D8 EC               [12] 1403 	mov	a,r4
      0024D9 F0               [24] 1404 	movx	@dptr,a
      0024DA ED               [12] 1405 	mov	a,r5
      0024DB A3               [24] 1406 	inc	dptr
      0024DC F0               [24] 1407 	movx	@dptr,a
      0024DD 80 07            [24] 1408 	sjmp	00103$
      0024DF                       1409 00102$:
                                   1410 ;	spi_and_bit_banging.c:438: dac_value_index = 0;  // Reset index for next cycle
      0024DF 90 04 0B         [24] 1411 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024E2 E4               [12] 1412 	clr	a
      0024E3 F0               [24] 1413 	movx	@dptr,a
      0024E4 A3               [24] 1414 	inc	dptr
      0024E5 F0               [24] 1415 	movx	@dptr,a
      0024E6                       1416 00103$:
                                   1417 ;	spi_and_bit_banging.c:445: ((dac_data >> 4) & 0x0F);
      0024E6 90 04 0D         [24] 1418 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024E9 E0               [24] 1419 	movx	a,@dptr
      0024EA FC               [12] 1420 	mov	r4,a
      0024EB A3               [24] 1421 	inc	dptr
      0024EC E0               [24] 1422 	movx	a,@dptr
      0024ED 8C 02            [24] 1423 	mov	ar2,r4
      0024EF C4               [12] 1424 	swap	a
      0024F0 CA               [12] 1425 	xch	a,r2
      0024F1 C4               [12] 1426 	swap	a
      0024F2 54 0F            [12] 1427 	anl	a,#0x0f
      0024F4 6A               [12] 1428 	xrl	a,r2
      0024F5 CA               [12] 1429 	xch	a,r2
      0024F6 54 0F            [12] 1430 	anl	a,#0x0f
      0024F8 CA               [12] 1431 	xch	a,r2
      0024F9 6A               [12] 1432 	xrl	a,r2
      0024FA CA               [12] 1433 	xch	a,r2
      0024FB 30 E3 02         [24] 1434 	jnb	acc.3,00159$
      0024FE 44 F0            [12] 1435 	orl	a,#0xf0
      002500                       1436 00159$:
      002500 74 0F            [12] 1437 	mov	a,#0x0f
      002502 5A               [12] 1438 	anl	a,r2
      002503 44 10            [12] 1439 	orl	a,#0x10
      002505 FB               [12] 1440 	mov	r3,a
                                   1441 ;	spi_and_bit_banging.c:448: low_byte = (dac_data & 0x0F) << 4;
      002506 53 04 0F         [24] 1442 	anl	ar4,#0x0f
      002509 EC               [12] 1443 	mov	a,r4
      00250A C4               [12] 1444 	swap	a
      00250B 54 F0            [12] 1445 	anl	a,#0xf0
      00250D FD               [12] 1446 	mov	r5,a
                                   1447 ;	spi_and_bit_banging.c:452: P1_1 = 0;  // Select DAC
                                   1448 ;	assignBit
      00250E C2 91            [12] 1449 	clr	_P1_1
                                   1450 ;	spi_and_bit_banging.c:455: SPDAT = high_byte;
      002510 8B C5            [24] 1451 	mov	_SPDAT,r3
                                   1452 ;	spi_and_bit_banging.c:456: while (!(SPSTA & (1<<7))); 
      002512                       1453 00104$:
      002512 E5 C4            [12] 1454 	mov	a,_SPSTA
      002514 30 E7 FB         [24] 1455 	jnb	acc.7,00104$
                                   1456 ;	spi_and_bit_banging.c:460: SPDAT = low_byte;
      002517 8D C5            [24] 1457 	mov	_SPDAT,r5
                                   1458 ;	spi_and_bit_banging.c:461: while (!(SPSTA & (1<<7))); 
      002519                       1459 00107$:
      002519 E5 C4            [12] 1460 	mov	a,_SPSTA
      00251B 30 E7 FB         [24] 1461 	jnb	acc.7,00107$
                                   1462 ;	spi_and_bit_banging.c:463: P1_1 = 1;  // Deselect DAC
                                   1463 ;	assignBit
      00251E D2 91            [12] 1464 	setb	_P1_1
                                   1465 ;	spi_and_bit_banging.c:465: dac_value_index++;
      002520 90 04 0B         [24] 1466 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      002523 E0               [24] 1467 	movx	a,@dptr
      002524 24 01            [12] 1468 	add	a,#0x01
      002526 F0               [24] 1469 	movx	@dptr,a
      002527 A3               [24] 1470 	inc	dptr
      002528 E0               [24] 1471 	movx	a,@dptr
      002529 34 00            [12] 1472 	addc	a,#0x00
      00252B F0               [24] 1473 	movx	@dptr,a
                                   1474 ;	spi_and_bit_banging.c:427: for(int i = 0; i<255; i++)
      00252C 0E               [12] 1475 	inc	r6
      00252D BE 00 01         [24] 1476 	cjne	r6,#0x00,00162$
      002530 0F               [12] 1477 	inc	r7
      002531                       1478 00162$:
      002531 02 24 A1         [24] 1479 	ljmp	00115$
      002534                       1480 00110$:
                                   1481 ;	spi_and_bit_banging.c:468: number = number - 1;
      002534 90 04 0A         [24] 1482 	mov	dptr,#_mannual_spi_number_65536_54
      002537 E0               [24] 1483 	movx	a,@dptr
      002538 FF               [12] 1484 	mov	r7,a
      002539 14               [12] 1485 	dec	a
      00253A F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	spi_and_bit_banging.c:470: }
      00253B 02 24 79         [24] 1488 	ljmp	00111$
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'spi_init'
                                   1491 ;------------------------------------------------------------
                                   1492 ;	spi_and_bit_banging.c:481: void spi_init(void) 
                                   1493 ;	-----------------------------------------
                                   1494 ;	 function spi_init
                                   1495 ;	-----------------------------------------
      00253E                       1496 _spi_init:
                                   1497 ;	spi_and_bit_banging.c:502: SPCON |= 0x10;
      00253E 43 C3 10         [24] 1498 	orl	_SPCON,#0x10
                                   1499 ;	spi_and_bit_banging.c:503: SPCON |= 0x20;
      002541 43 C3 20         [24] 1500 	orl	_SPCON,#0x20
                                   1501 ;	spi_and_bit_banging.c:504: SPCON |= 0x40;
      002544 43 C3 40         [24] 1502 	orl	_SPCON,#0x40
                                   1503 ;	spi_and_bit_banging.c:511: }
      002547 22               [24] 1504 	ret
                                   1505 ;------------------------------------------------------------
                                   1506 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1507 ;------------------------------------------------------------
                                   1508 ;	spi_and_bit_banging.c:513: void bit_bang_spi_init(void) {
                                   1509 ;	-----------------------------------------
                                   1510 ;	 function bit_bang_spi_init
                                   1511 ;	-----------------------------------------
      002548                       1512 _bit_bang_spi_init:
                                   1513 ;	spi_and_bit_banging.c:514: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002548 75 C3 00         [24] 1514 	mov	_SPCON,#0x00
                                   1515 ;	spi_and_bit_banging.c:515: SDA = DATA_HIGH;                 /* Set data line high */
                                   1516 ;	assignBit
      00254B D2 97            [12] 1517 	setb	_P1_7
                                   1518 ;	spi_and_bit_banging.c:516: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1519 ;	assignBit
      00254D C2 96            [12] 1520 	clr	_P1_6
                                   1521 ;	spi_and_bit_banging.c:517: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1522 ;	assignBit
      00254F D2 91            [12] 1523 	setb	_P1_1
                                   1524 ;	spi_and_bit_banging.c:518: }
      002551 22               [24] 1525 	ret
                                   1526 ;------------------------------------------------------------
                                   1527 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1528 ;------------------------------------------------------------
                                   1529 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_65'
                                   1530 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_66'
                                   1531 ;------------------------------------------------------------
                                   1532 ;	spi_and_bit_banging.c:520: int bit_bang_spi_write(uint16_t data) {
                                   1533 ;	-----------------------------------------
                                   1534 ;	 function bit_bang_spi_write
                                   1535 ;	-----------------------------------------
      002552                       1536 _bit_bang_spi_write:
      002552 AF 83            [24] 1537 	mov	r7,dph
      002554 E5 82            [12] 1538 	mov	a,dpl
      002556 90 04 0F         [24] 1539 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002559 F0               [24] 1540 	movx	@dptr,a
      00255A EF               [12] 1541 	mov	a,r7
      00255B A3               [24] 1542 	inc	dptr
      00255C F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	spi_and_bit_banging.c:523: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1545 ;	assignBit
      00255D C2 91            [12] 1546 	clr	_P1_1
                                   1547 ;	spi_and_bit_banging.c:526: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00255F 7E 00            [12] 1548 	mov	r6,#0x00
      002561 7F 00            [12] 1549 	mov	r7,#0x00
      002563                       1550 00102$:
                                   1551 ;	spi_and_bit_banging.c:527: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      002563 90 04 0F         [24] 1552 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002566 E0               [24] 1553 	movx	a,@dptr
      002567 FC               [12] 1554 	mov	r4,a
      002568 A3               [24] 1555 	inc	dptr
      002569 E0               [24] 1556 	movx	a,@dptr
      00256A FD               [12] 1557 	mov	r5,a
      00256B 23               [12] 1558 	rl	a
      00256C 54 01            [12] 1559 	anl	a,#0x01
      00256E 24 FF            [12] 1560 	add	a,#0xff
      002570 92 97            [24] 1561 	mov	_P1_7,c
                                   1562 ;	spi_and_bit_banging.c:528: SCL = CLOCK_HIGH;            /* Clock high */
                                   1563 ;	assignBit
      002572 D2 96            [12] 1564 	setb	_P1_6
                                   1565 ;	spi_and_bit_banging.c:529: SCL = CLOCK_LOW;             /* Clock low */
                                   1566 ;	assignBit
      002574 C2 96            [12] 1567 	clr	_P1_6
                                   1568 ;	spi_and_bit_banging.c:530: data <<= 1;                  /* Shift to next bit */
      002576 EC               [12] 1569 	mov	a,r4
      002577 2C               [12] 1570 	add	a,r4
      002578 FC               [12] 1571 	mov	r4,a
      002579 ED               [12] 1572 	mov	a,r5
      00257A 33               [12] 1573 	rlc	a
      00257B FD               [12] 1574 	mov	r5,a
      00257C 90 04 0F         [24] 1575 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      00257F EC               [12] 1576 	mov	a,r4
      002580 F0               [24] 1577 	movx	@dptr,a
      002581 ED               [12] 1578 	mov	a,r5
      002582 A3               [24] 1579 	inc	dptr
      002583 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	spi_and_bit_banging.c:526: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002584 0E               [12] 1582 	inc	r6
      002585 BE 00 01         [24] 1583 	cjne	r6,#0x00,00115$
      002588 0F               [12] 1584 	inc	r7
      002589                       1585 00115$:
      002589 C3               [12] 1586 	clr	c
      00258A EE               [12] 1587 	mov	a,r6
      00258B 94 10            [12] 1588 	subb	a,#0x10
      00258D EF               [12] 1589 	mov	a,r7
      00258E 94 00            [12] 1590 	subb	a,#0x00
      002590 40 D1            [24] 1591 	jc	00102$
                                   1592 ;	spi_and_bit_banging.c:534: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1593 ;	assignBit
      002592 D2 91            [12] 1594 	setb	_P1_1
                                   1595 ;	spi_and_bit_banging.c:535: SCL = CLOCK_LOW;                 /* Clock low */
                                   1596 ;	assignBit
      002594 C2 96            [12] 1597 	clr	_P1_6
                                   1598 ;	spi_and_bit_banging.c:536: SDA = DATA_HIGH;                 /* Data high */
                                   1599 ;	assignBit
      002596 D2 97            [12] 1600 	setb	_P1_7
                                   1601 ;	spi_and_bit_banging.c:538: return 0;
      002598 90 00 00         [24] 1602 	mov	dptr,#0x0000
                                   1603 ;	spi_and_bit_banging.c:539: }
      00259B 22               [24] 1604 	ret
                                   1605 ;------------------------------------------------------------
                                   1606 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1607 ;------------------------------------------------------------
                                   1608 ;	spi_and_bit_banging.c:546: void spi_transmission_start(void)
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function spi_transmission_start
                                   1611 ;	-----------------------------------------
      00259C                       1612 _spi_transmission_start:
                                   1613 ;	spi_and_bit_banging.c:548: SPCON |= SPI_ENABLE;           // Enable SPI
      00259C 43 C3 40         [24] 1614 	orl	_SPCON,#0x40
                                   1615 ;	spi_and_bit_banging.c:549: P1_1 = 0;
                                   1616 ;	assignBit
      00259F C2 91            [12] 1617 	clr	_P1_1
                                   1618 ;	spi_and_bit_banging.c:550: }
      0025A1 22               [24] 1619 	ret
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1622 ;------------------------------------------------------------
                                   1623 ;number                    Allocated with name '_spi_triangular_wave_number_65536_71'
                                   1624 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_72'
                                   1625 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_72'
                                   1626 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_72'
                                   1627 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_72'
                                   1628 ;i                         Allocated with name '_spi_triangular_wave_i_196608_74'
                                   1629 ;------------------------------------------------------------
                                   1630 ;	spi_and_bit_banging.c:552: void spi_triangular_wave(int number)
                                   1631 ;	-----------------------------------------
                                   1632 ;	 function spi_triangular_wave
                                   1633 ;	-----------------------------------------
      0025A2                       1634 _spi_triangular_wave:
      0025A2 AF 83            [24] 1635 	mov	r7,dph
      0025A4 E5 82            [12] 1636 	mov	a,dpl
      0025A6 90 04 11         [24] 1637 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0025A9 F0               [24] 1638 	movx	@dptr,a
      0025AA EF               [12] 1639 	mov	a,r7
      0025AB A3               [24] 1640 	inc	dptr
      0025AC F0               [24] 1641 	movx	@dptr,a
                                   1642 ;	spi_and_bit_banging.c:554: int dac_value_index = 0;
      0025AD 90 04 13         [24] 1643 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025B0 E4               [12] 1644 	clr	a
      0025B1 F0               [24] 1645 	movx	@dptr,a
      0025B2 A3               [24] 1646 	inc	dptr
      0025B3 F0               [24] 1647 	movx	@dptr,a
                                   1648 ;	spi_and_bit_banging.c:555: int dac_data = 0;
      0025B4 90 04 15         [24] 1649 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025B7 F0               [24] 1650 	movx	@dptr,a
      0025B8 A3               [24] 1651 	inc	dptr
      0025B9 F0               [24] 1652 	movx	@dptr,a
                                   1653 ;	spi_and_bit_banging.c:557: while(number>0)
      0025BA 90 04 11         [24] 1654 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0025BD E0               [24] 1655 	movx	a,@dptr
      0025BE FE               [12] 1656 	mov	r6,a
      0025BF A3               [24] 1657 	inc	dptr
      0025C0 E0               [24] 1658 	movx	a,@dptr
      0025C1 FF               [12] 1659 	mov	r7,a
      0025C2                       1660 00111$:
      0025C2 C3               [12] 1661 	clr	c
      0025C3 E4               [12] 1662 	clr	a
      0025C4 9E               [12] 1663 	subb	a,r6
      0025C5 74 80            [12] 1664 	mov	a,#(0x00 ^ 0x80)
      0025C7 8F F0            [24] 1665 	mov	b,r7
      0025C9 63 F0 80         [24] 1666 	xrl	b,#0x80
      0025CC 95 F0            [12] 1667 	subb	a,b
      0025CE 40 03            [24] 1668 	jc	00157$
      0025D0 02 26 77         [24] 1669 	ljmp	00129$
      0025D3                       1670 00157$:
                                   1671 ;	spi_and_bit_banging.c:559: for(int i = 0; i<512; i++)
      0025D3 7C 00            [12] 1672 	mov	r4,#0x00
      0025D5 7D 00            [12] 1673 	mov	r5,#0x00
      0025D7                       1674 00115$:
      0025D7 C3               [12] 1675 	clr	c
      0025D8 ED               [12] 1676 	mov	a,r5
      0025D9 64 80            [12] 1677 	xrl	a,#0x80
      0025DB 94 82            [12] 1678 	subb	a,#0x82
      0025DD 40 03            [24] 1679 	jc	00158$
      0025DF 02 26 67         [24] 1680 	ljmp	00110$
      0025E2                       1681 00158$:
                                   1682 ;	spi_and_bit_banging.c:562: if(dac_value_index < 512)
      0025E2 90 04 13         [24] 1683 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025E5 E0               [24] 1684 	movx	a,@dptr
      0025E6 FA               [12] 1685 	mov	r2,a
      0025E7 A3               [24] 1686 	inc	dptr
      0025E8 E0               [24] 1687 	movx	a,@dptr
      0025E9 FB               [12] 1688 	mov	r3,a
      0025EA C3               [12] 1689 	clr	c
      0025EB 64 80            [12] 1690 	xrl	a,#0x80
      0025ED 94 82            [12] 1691 	subb	a,#0x82
      0025EF 50 21            [24] 1692 	jnc	00102$
                                   1693 ;	spi_and_bit_banging.c:566: dac_data = trig_dac_values[dac_value_index];
      0025F1 EA               [12] 1694 	mov	a,r2
      0025F2 2A               [12] 1695 	add	a,r2
      0025F3 FA               [12] 1696 	mov	r2,a
      0025F4 EB               [12] 1697 	mov	a,r3
      0025F5 33               [12] 1698 	rlc	a
      0025F6 FB               [12] 1699 	mov	r3,a
      0025F7 EA               [12] 1700 	mov	a,r2
      0025F8 24 0E            [12] 1701 	add	a,#_trig_dac_values
      0025FA F5 82            [12] 1702 	mov	dpl,a
      0025FC EB               [12] 1703 	mov	a,r3
      0025FD 34 34            [12] 1704 	addc	a,#(_trig_dac_values >> 8)
      0025FF F5 83            [12] 1705 	mov	dph,a
      002601 E4               [12] 1706 	clr	a
      002602 93               [24] 1707 	movc	a,@a+dptr
      002603 FA               [12] 1708 	mov	r2,a
      002604 A3               [24] 1709 	inc	dptr
      002605 E4               [12] 1710 	clr	a
      002606 93               [24] 1711 	movc	a,@a+dptr
      002607 FB               [12] 1712 	mov	r3,a
      002608 90 04 15         [24] 1713 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      00260B EA               [12] 1714 	mov	a,r2
      00260C F0               [24] 1715 	movx	@dptr,a
      00260D EB               [12] 1716 	mov	a,r3
      00260E A3               [24] 1717 	inc	dptr
      00260F F0               [24] 1718 	movx	@dptr,a
      002610 80 07            [24] 1719 	sjmp	00103$
      002612                       1720 00102$:
                                   1721 ;	spi_and_bit_banging.c:570: dac_value_index = 0;  // Reset index for next cycle
      002612 90 04 13         [24] 1722 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002615 E4               [12] 1723 	clr	a
      002616 F0               [24] 1724 	movx	@dptr,a
      002617 A3               [24] 1725 	inc	dptr
      002618 F0               [24] 1726 	movx	@dptr,a
      002619                       1727 00103$:
                                   1728 ;	spi_and_bit_banging.c:577: ((dac_data >> 4) & 0x0F);
      002619 90 04 15         [24] 1729 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      00261C E0               [24] 1730 	movx	a,@dptr
      00261D FA               [12] 1731 	mov	r2,a
      00261E A3               [24] 1732 	inc	dptr
      00261F E0               [24] 1733 	movx	a,@dptr
      002620 8A 00            [24] 1734 	mov	ar0,r2
      002622 C4               [12] 1735 	swap	a
      002623 C8               [12] 1736 	xch	a,r0
      002624 C4               [12] 1737 	swap	a
      002625 54 0F            [12] 1738 	anl	a,#0x0f
      002627 68               [12] 1739 	xrl	a,r0
      002628 C8               [12] 1740 	xch	a,r0
      002629 54 0F            [12] 1741 	anl	a,#0x0f
      00262B C8               [12] 1742 	xch	a,r0
      00262C 68               [12] 1743 	xrl	a,r0
      00262D C8               [12] 1744 	xch	a,r0
      00262E 30 E3 02         [24] 1745 	jnb	acc.3,00160$
      002631 44 F0            [12] 1746 	orl	a,#0xf0
      002633                       1747 00160$:
      002633 74 0F            [12] 1748 	mov	a,#0x0f
      002635 58               [12] 1749 	anl	a,r0
      002636 44 10            [12] 1750 	orl	a,#0x10
      002638 F9               [12] 1751 	mov	r1,a
                                   1752 ;	spi_and_bit_banging.c:580: low_byte = (dac_data & 0x0F) << 4;
      002639 53 02 0F         [24] 1753 	anl	ar2,#0x0f
      00263C EA               [12] 1754 	mov	a,r2
      00263D C4               [12] 1755 	swap	a
      00263E 54 F0            [12] 1756 	anl	a,#0xf0
      002640 FB               [12] 1757 	mov	r3,a
                                   1758 ;	spi_and_bit_banging.c:584: P1_1 = 0;  // Select DAC
                                   1759 ;	assignBit
      002641 C2 91            [12] 1760 	clr	_P1_1
                                   1761 ;	spi_and_bit_banging.c:587: SPDAT = high_byte;
      002643 89 C5            [24] 1762 	mov	_SPDAT,r1
                                   1763 ;	spi_and_bit_banging.c:588: while (!(SPSTA & (1<<7))); 
      002645                       1764 00104$:
      002645 E5 C4            [12] 1765 	mov	a,_SPSTA
      002647 30 E7 FB         [24] 1766 	jnb	acc.7,00104$
                                   1767 ;	spi_and_bit_banging.c:592: SPDAT = low_byte;
      00264A 8B C5            [24] 1768 	mov	_SPDAT,r3
                                   1769 ;	spi_and_bit_banging.c:593: while (!(SPSTA & (1<<7))); 
      00264C                       1770 00107$:
      00264C E5 C4            [12] 1771 	mov	a,_SPSTA
      00264E 30 E7 FB         [24] 1772 	jnb	acc.7,00107$
                                   1773 ;	spi_and_bit_banging.c:595: P1_1 = 1;  // Deselect DAC
                                   1774 ;	assignBit
      002651 D2 91            [12] 1775 	setb	_P1_1
                                   1776 ;	spi_and_bit_banging.c:597: dac_value_index++;
      002653 90 04 13         [24] 1777 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002656 E0               [24] 1778 	movx	a,@dptr
      002657 24 01            [12] 1779 	add	a,#0x01
      002659 F0               [24] 1780 	movx	@dptr,a
      00265A A3               [24] 1781 	inc	dptr
      00265B E0               [24] 1782 	movx	a,@dptr
      00265C 34 00            [12] 1783 	addc	a,#0x00
      00265E F0               [24] 1784 	movx	@dptr,a
                                   1785 ;	spi_and_bit_banging.c:559: for(int i = 0; i<512; i++)
      00265F 0C               [12] 1786 	inc	r4
      002660 BC 00 01         [24] 1787 	cjne	r4,#0x00,00163$
      002663 0D               [12] 1788 	inc	r5
      002664                       1789 00163$:
      002664 02 25 D7         [24] 1790 	ljmp	00115$
      002667                       1791 00110$:
                                   1792 ;	spi_and_bit_banging.c:600: number = number - 1;
      002667 1E               [12] 1793 	dec	r6
      002668 BE FF 01         [24] 1794 	cjne	r6,#0xff,00164$
      00266B 1F               [12] 1795 	dec	r7
      00266C                       1796 00164$:
      00266C 90 04 11         [24] 1797 	mov	dptr,#_spi_triangular_wave_number_65536_71
      00266F EE               [12] 1798 	mov	a,r6
      002670 F0               [24] 1799 	movx	@dptr,a
      002671 EF               [12] 1800 	mov	a,r7
      002672 A3               [24] 1801 	inc	dptr
      002673 F0               [24] 1802 	movx	@dptr,a
      002674 02 25 C2         [24] 1803 	ljmp	00111$
      002677                       1804 00129$:
      002677 90 04 11         [24] 1805 	mov	dptr,#_spi_triangular_wave_number_65536_71
      00267A EE               [12] 1806 	mov	a,r6
      00267B F0               [24] 1807 	movx	@dptr,a
      00267C EF               [12] 1808 	mov	a,r7
      00267D A3               [24] 1809 	inc	dptr
      00267E F0               [24] 1810 	movx	@dptr,a
                                   1811 ;	spi_and_bit_banging.c:603: }
      00267F 22               [24] 1812 	ret
                                   1813 ;------------------------------------------------------------
                                   1814 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1815 ;------------------------------------------------------------
                                   1816 ;number                    Allocated with name '_spi_ramp_signal_number_65536_78'
                                   1817 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_79'
                                   1818 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_79'
                                   1819 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_79'
                                   1820 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_79'
                                   1821 ;i                         Allocated with name '_spi_ramp_signal_i_196608_81'
                                   1822 ;------------------------------------------------------------
                                   1823 ;	spi_and_bit_banging.c:605: void spi_ramp_signal(int number)
                                   1824 ;	-----------------------------------------
                                   1825 ;	 function spi_ramp_signal
                                   1826 ;	-----------------------------------------
      002680                       1827 _spi_ramp_signal:
      002680 AF 83            [24] 1828 	mov	r7,dph
      002682 E5 82            [12] 1829 	mov	a,dpl
      002684 90 04 17         [24] 1830 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002687 F0               [24] 1831 	movx	@dptr,a
      002688 EF               [12] 1832 	mov	a,r7
      002689 A3               [24] 1833 	inc	dptr
      00268A F0               [24] 1834 	movx	@dptr,a
                                   1835 ;	spi_and_bit_banging.c:607: int dac_value_index = 0;
      00268B 90 04 19         [24] 1836 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00268E E4               [12] 1837 	clr	a
      00268F F0               [24] 1838 	movx	@dptr,a
      002690 A3               [24] 1839 	inc	dptr
      002691 F0               [24] 1840 	movx	@dptr,a
                                   1841 ;	spi_and_bit_banging.c:608: int dac_data = 0;
      002692 90 04 1B         [24] 1842 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002695 F0               [24] 1843 	movx	@dptr,a
      002696 A3               [24] 1844 	inc	dptr
      002697 F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	spi_and_bit_banging.c:610: while(number>0)
      002698 90 04 17         [24] 1847 	mov	dptr,#_spi_ramp_signal_number_65536_78
      00269B E0               [24] 1848 	movx	a,@dptr
      00269C FE               [12] 1849 	mov	r6,a
      00269D A3               [24] 1850 	inc	dptr
      00269E E0               [24] 1851 	movx	a,@dptr
      00269F FF               [12] 1852 	mov	r7,a
      0026A0                       1853 00111$:
      0026A0 C3               [12] 1854 	clr	c
      0026A1 E4               [12] 1855 	clr	a
      0026A2 9E               [12] 1856 	subb	a,r6
      0026A3 74 80            [12] 1857 	mov	a,#(0x00 ^ 0x80)
      0026A5 8F F0            [24] 1858 	mov	b,r7
      0026A7 63 F0 80         [24] 1859 	xrl	b,#0x80
      0026AA 95 F0            [12] 1860 	subb	a,b
      0026AC 40 03            [24] 1861 	jc	00157$
      0026AE 02 27 55         [24] 1862 	ljmp	00129$
      0026B1                       1863 00157$:
                                   1864 ;	spi_and_bit_banging.c:612: for(int i = 0; i<256; i++)
      0026B1 7C 00            [12] 1865 	mov	r4,#0x00
      0026B3 7D 00            [12] 1866 	mov	r5,#0x00
      0026B5                       1867 00115$:
      0026B5 C3               [12] 1868 	clr	c
      0026B6 ED               [12] 1869 	mov	a,r5
      0026B7 64 80            [12] 1870 	xrl	a,#0x80
      0026B9 94 81            [12] 1871 	subb	a,#0x81
      0026BB 40 03            [24] 1872 	jc	00158$
      0026BD 02 27 45         [24] 1873 	ljmp	00110$
      0026C0                       1874 00158$:
                                   1875 ;	spi_and_bit_banging.c:615: if(dac_value_index < 256)
      0026C0 90 04 19         [24] 1876 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026C3 E0               [24] 1877 	movx	a,@dptr
      0026C4 FA               [12] 1878 	mov	r2,a
      0026C5 A3               [24] 1879 	inc	dptr
      0026C6 E0               [24] 1880 	movx	a,@dptr
      0026C7 FB               [12] 1881 	mov	r3,a
      0026C8 C3               [12] 1882 	clr	c
      0026C9 64 80            [12] 1883 	xrl	a,#0x80
      0026CB 94 81            [12] 1884 	subb	a,#0x81
      0026CD 50 21            [24] 1885 	jnc	00102$
                                   1886 ;	spi_and_bit_banging.c:619: dac_data = trig_dac_values[dac_value_index];
      0026CF EA               [12] 1887 	mov	a,r2
      0026D0 2A               [12] 1888 	add	a,r2
      0026D1 FA               [12] 1889 	mov	r2,a
      0026D2 EB               [12] 1890 	mov	a,r3
      0026D3 33               [12] 1891 	rlc	a
      0026D4 FB               [12] 1892 	mov	r3,a
      0026D5 EA               [12] 1893 	mov	a,r2
      0026D6 24 0E            [12] 1894 	add	a,#_trig_dac_values
      0026D8 F5 82            [12] 1895 	mov	dpl,a
      0026DA EB               [12] 1896 	mov	a,r3
      0026DB 34 34            [12] 1897 	addc	a,#(_trig_dac_values >> 8)
      0026DD F5 83            [12] 1898 	mov	dph,a
      0026DF E4               [12] 1899 	clr	a
      0026E0 93               [24] 1900 	movc	a,@a+dptr
      0026E1 FA               [12] 1901 	mov	r2,a
      0026E2 A3               [24] 1902 	inc	dptr
      0026E3 E4               [12] 1903 	clr	a
      0026E4 93               [24] 1904 	movc	a,@a+dptr
      0026E5 FB               [12] 1905 	mov	r3,a
      0026E6 90 04 1B         [24] 1906 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026E9 EA               [12] 1907 	mov	a,r2
      0026EA F0               [24] 1908 	movx	@dptr,a
      0026EB EB               [12] 1909 	mov	a,r3
      0026EC A3               [24] 1910 	inc	dptr
      0026ED F0               [24] 1911 	movx	@dptr,a
      0026EE 80 07            [24] 1912 	sjmp	00103$
      0026F0                       1913 00102$:
                                   1914 ;	spi_and_bit_banging.c:623: dac_value_index = 0;  // Reset index for next cycle
      0026F0 90 04 19         [24] 1915 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026F3 E4               [12] 1916 	clr	a
      0026F4 F0               [24] 1917 	movx	@dptr,a
      0026F5 A3               [24] 1918 	inc	dptr
      0026F6 F0               [24] 1919 	movx	@dptr,a
      0026F7                       1920 00103$:
                                   1921 ;	spi_and_bit_banging.c:630: ((dac_data >> 4) & 0x0F);
      0026F7 90 04 1B         [24] 1922 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026FA E0               [24] 1923 	movx	a,@dptr
      0026FB FA               [12] 1924 	mov	r2,a
      0026FC A3               [24] 1925 	inc	dptr
      0026FD E0               [24] 1926 	movx	a,@dptr
      0026FE 8A 00            [24] 1927 	mov	ar0,r2
      002700 C4               [12] 1928 	swap	a
      002701 C8               [12] 1929 	xch	a,r0
      002702 C4               [12] 1930 	swap	a
      002703 54 0F            [12] 1931 	anl	a,#0x0f
      002705 68               [12] 1932 	xrl	a,r0
      002706 C8               [12] 1933 	xch	a,r0
      002707 54 0F            [12] 1934 	anl	a,#0x0f
      002709 C8               [12] 1935 	xch	a,r0
      00270A 68               [12] 1936 	xrl	a,r0
      00270B C8               [12] 1937 	xch	a,r0
      00270C 30 E3 02         [24] 1938 	jnb	acc.3,00160$
      00270F 44 F0            [12] 1939 	orl	a,#0xf0
      002711                       1940 00160$:
      002711 74 0F            [12] 1941 	mov	a,#0x0f
      002713 58               [12] 1942 	anl	a,r0
      002714 44 10            [12] 1943 	orl	a,#0x10
      002716 F9               [12] 1944 	mov	r1,a
                                   1945 ;	spi_and_bit_banging.c:633: low_byte = (dac_data & 0x0F) << 4;
      002717 53 02 0F         [24] 1946 	anl	ar2,#0x0f
      00271A EA               [12] 1947 	mov	a,r2
      00271B C4               [12] 1948 	swap	a
      00271C 54 F0            [12] 1949 	anl	a,#0xf0
      00271E FB               [12] 1950 	mov	r3,a
                                   1951 ;	spi_and_bit_banging.c:637: P1_1 = 0;  // Select DAC
                                   1952 ;	assignBit
      00271F C2 91            [12] 1953 	clr	_P1_1
                                   1954 ;	spi_and_bit_banging.c:640: SPDAT = high_byte;
      002721 89 C5            [24] 1955 	mov	_SPDAT,r1
                                   1956 ;	spi_and_bit_banging.c:641: while (!(SPSTA & (1<<7))); 
      002723                       1957 00104$:
      002723 E5 C4            [12] 1958 	mov	a,_SPSTA
      002725 30 E7 FB         [24] 1959 	jnb	acc.7,00104$
                                   1960 ;	spi_and_bit_banging.c:645: SPDAT = low_byte;
      002728 8B C5            [24] 1961 	mov	_SPDAT,r3
                                   1962 ;	spi_and_bit_banging.c:646: while (!(SPSTA & (1<<7))); 
      00272A                       1963 00107$:
      00272A E5 C4            [12] 1964 	mov	a,_SPSTA
      00272C 30 E7 FB         [24] 1965 	jnb	acc.7,00107$
                                   1966 ;	spi_and_bit_banging.c:648: P1_1 = 1;  // Deselect DAC
                                   1967 ;	assignBit
      00272F D2 91            [12] 1968 	setb	_P1_1
                                   1969 ;	spi_and_bit_banging.c:650: dac_value_index++;
      002731 90 04 19         [24] 1970 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      002734 E0               [24] 1971 	movx	a,@dptr
      002735 24 01            [12] 1972 	add	a,#0x01
      002737 F0               [24] 1973 	movx	@dptr,a
      002738 A3               [24] 1974 	inc	dptr
      002739 E0               [24] 1975 	movx	a,@dptr
      00273A 34 00            [12] 1976 	addc	a,#0x00
      00273C F0               [24] 1977 	movx	@dptr,a
                                   1978 ;	spi_and_bit_banging.c:612: for(int i = 0; i<256; i++)
      00273D 0C               [12] 1979 	inc	r4
      00273E BC 00 01         [24] 1980 	cjne	r4,#0x00,00163$
      002741 0D               [12] 1981 	inc	r5
      002742                       1982 00163$:
      002742 02 26 B5         [24] 1983 	ljmp	00115$
      002745                       1984 00110$:
                                   1985 ;	spi_and_bit_banging.c:653: number = number - 1;
      002745 1E               [12] 1986 	dec	r6
      002746 BE FF 01         [24] 1987 	cjne	r6,#0xff,00164$
      002749 1F               [12] 1988 	dec	r7
      00274A                       1989 00164$:
      00274A 90 04 17         [24] 1990 	mov	dptr,#_spi_ramp_signal_number_65536_78
      00274D EE               [12] 1991 	mov	a,r6
      00274E F0               [24] 1992 	movx	@dptr,a
      00274F EF               [12] 1993 	mov	a,r7
      002750 A3               [24] 1994 	inc	dptr
      002751 F0               [24] 1995 	movx	@dptr,a
      002752 02 26 A0         [24] 1996 	ljmp	00111$
      002755                       1997 00129$:
      002755 90 04 17         [24] 1998 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002758 EE               [12] 1999 	mov	a,r6
      002759 F0               [24] 2000 	movx	@dptr,a
      00275A EF               [12] 2001 	mov	a,r7
      00275B A3               [24] 2002 	inc	dptr
      00275C F0               [24] 2003 	movx	@dptr,a
                                   2004 ;	spi_and_bit_banging.c:656: }
      00275D 22               [24] 2005 	ret
                                   2006 	.area CSEG    (CODE)
                                   2007 	.area CONST   (CODE)
      00320E                       2008 _dac_values:
      00320E 80 00                 2009 	.byte #0x80, #0x00	;  128
      003210 83 00                 2010 	.byte #0x83, #0x00	;  131
      003212 86 00                 2011 	.byte #0x86, #0x00	;  134
      003214 89 00                 2012 	.byte #0x89, #0x00	;  137
      003216 8C 00                 2013 	.byte #0x8c, #0x00	;  140
      003218 90 00                 2014 	.byte #0x90, #0x00	;  144
      00321A 93 00                 2015 	.byte #0x93, #0x00	;  147
      00321C 96 00                 2016 	.byte #0x96, #0x00	;  150
      00321E 99 00                 2017 	.byte #0x99, #0x00	;  153
      003220 9C 00                 2018 	.byte #0x9c, #0x00	;  156
      003222 9F 00                 2019 	.byte #0x9f, #0x00	;  159
      003224 A2 00                 2020 	.byte #0xa2, #0x00	;  162
      003226 A5 00                 2021 	.byte #0xa5, #0x00	;  165
      003228 A8 00                 2022 	.byte #0xa8, #0x00	;  168
      00322A AB 00                 2023 	.byte #0xab, #0x00	;  171
      00322C AE 00                 2024 	.byte #0xae, #0x00	;  174
      00322E B1 00                 2025 	.byte #0xb1, #0x00	;  177
      003230 B3 00                 2026 	.byte #0xb3, #0x00	;  179
      003232 B6 00                 2027 	.byte #0xb6, #0x00	;  182
      003234 B9 00                 2028 	.byte #0xb9, #0x00	;  185
      003236 BC 00                 2029 	.byte #0xbc, #0x00	;  188
      003238 BF 00                 2030 	.byte #0xbf, #0x00	;  191
      00323A C1 00                 2031 	.byte #0xc1, #0x00	;  193
      00323C C4 00                 2032 	.byte #0xc4, #0x00	;  196
      00323E C7 00                 2033 	.byte #0xc7, #0x00	;  199
      003240 C9 00                 2034 	.byte #0xc9, #0x00	;  201
      003242 CC 00                 2035 	.byte #0xcc, #0x00	;  204
      003244 CE 00                 2036 	.byte #0xce, #0x00	;  206
      003246 D1 00                 2037 	.byte #0xd1, #0x00	;  209
      003248 D3 00                 2038 	.byte #0xd3, #0x00	;  211
      00324A D5 00                 2039 	.byte #0xd5, #0x00	;  213
      00324C D8 00                 2040 	.byte #0xd8, #0x00	;  216
      00324E DA 00                 2041 	.byte #0xda, #0x00	;  218
      003250 DC 00                 2042 	.byte #0xdc, #0x00	;  220
      003252 DE 00                 2043 	.byte #0xde, #0x00	;  222
      003254 E0 00                 2044 	.byte #0xe0, #0x00	;  224
      003256 E2 00                 2045 	.byte #0xe2, #0x00	;  226
      003258 E4 00                 2046 	.byte #0xe4, #0x00	;  228
      00325A E6 00                 2047 	.byte #0xe6, #0x00	;  230
      00325C E8 00                 2048 	.byte #0xe8, #0x00	;  232
      00325E EA 00                 2049 	.byte #0xea, #0x00	;  234
      003260 EB 00                 2050 	.byte #0xeb, #0x00	;  235
      003262 ED 00                 2051 	.byte #0xed, #0x00	;  237
      003264 EF 00                 2052 	.byte #0xef, #0x00	;  239
      003266 F0 00                 2053 	.byte #0xf0, #0x00	;  240
      003268 F1 00                 2054 	.byte #0xf1, #0x00	;  241
      00326A F3 00                 2055 	.byte #0xf3, #0x00	;  243
      00326C F4 00                 2056 	.byte #0xf4, #0x00	;  244
      00326E F5 00                 2057 	.byte #0xf5, #0x00	;  245
      003270 F6 00                 2058 	.byte #0xf6, #0x00	;  246
      003272 F8 00                 2059 	.byte #0xf8, #0x00	;  248
      003274 F9 00                 2060 	.byte #0xf9, #0x00	;  249
      003276 FA 00                 2061 	.byte #0xfa, #0x00	;  250
      003278 FA 00                 2062 	.byte #0xfa, #0x00	;  250
      00327A FB 00                 2063 	.byte #0xfb, #0x00	;  251
      00327C FC 00                 2064 	.byte #0xfc, #0x00	;  252
      00327E FD 00                 2065 	.byte #0xfd, #0x00	;  253
      003280 FD 00                 2066 	.byte #0xfd, #0x00	;  253
      003282 FE 00                 2067 	.byte #0xfe, #0x00	;  254
      003284 FE 00                 2068 	.byte #0xfe, #0x00	;  254
      003286 FE 00                 2069 	.byte #0xfe, #0x00	;  254
      003288 FF 00                 2070 	.byte #0xff, #0x00	;  255
      00328A FF 00                 2071 	.byte #0xff, #0x00	;  255
      00328C FF 00                 2072 	.byte #0xff, #0x00	;  255
      00328E FF 00                 2073 	.byte #0xff, #0x00	;  255
      003290 FF 00                 2074 	.byte #0xff, #0x00	;  255
      003292 FF 00                 2075 	.byte #0xff, #0x00	;  255
      003294 FF 00                 2076 	.byte #0xff, #0x00	;  255
      003296 FE 00                 2077 	.byte #0xfe, #0x00	;  254
      003298 FE 00                 2078 	.byte #0xfe, #0x00	;  254
      00329A FE 00                 2079 	.byte #0xfe, #0x00	;  254
      00329C FD 00                 2080 	.byte #0xfd, #0x00	;  253
      00329E FD 00                 2081 	.byte #0xfd, #0x00	;  253
      0032A0 FC 00                 2082 	.byte #0xfc, #0x00	;  252
      0032A2 FB 00                 2083 	.byte #0xfb, #0x00	;  251
      0032A4 FA 00                 2084 	.byte #0xfa, #0x00	;  250
      0032A6 FA 00                 2085 	.byte #0xfa, #0x00	;  250
      0032A8 F9 00                 2086 	.byte #0xf9, #0x00	;  249
      0032AA F8 00                 2087 	.byte #0xf8, #0x00	;  248
      0032AC F6 00                 2088 	.byte #0xf6, #0x00	;  246
      0032AE F5 00                 2089 	.byte #0xf5, #0x00	;  245
      0032B0 F4 00                 2090 	.byte #0xf4, #0x00	;  244
      0032B2 F3 00                 2091 	.byte #0xf3, #0x00	;  243
      0032B4 F1 00                 2092 	.byte #0xf1, #0x00	;  241
      0032B6 F0 00                 2093 	.byte #0xf0, #0x00	;  240
      0032B8 EF 00                 2094 	.byte #0xef, #0x00	;  239
      0032BA ED 00                 2095 	.byte #0xed, #0x00	;  237
      0032BC EB 00                 2096 	.byte #0xeb, #0x00	;  235
      0032BE EA 00                 2097 	.byte #0xea, #0x00	;  234
      0032C0 E8 00                 2098 	.byte #0xe8, #0x00	;  232
      0032C2 E6 00                 2099 	.byte #0xe6, #0x00	;  230
      0032C4 E4 00                 2100 	.byte #0xe4, #0x00	;  228
      0032C6 E2 00                 2101 	.byte #0xe2, #0x00	;  226
      0032C8 E0 00                 2102 	.byte #0xe0, #0x00	;  224
      0032CA DE 00                 2103 	.byte #0xde, #0x00	;  222
      0032CC DC 00                 2104 	.byte #0xdc, #0x00	;  220
      0032CE DA 00                 2105 	.byte #0xda, #0x00	;  218
      0032D0 D8 00                 2106 	.byte #0xd8, #0x00	;  216
      0032D2 D5 00                 2107 	.byte #0xd5, #0x00	;  213
      0032D4 D3 00                 2108 	.byte #0xd3, #0x00	;  211
      0032D6 D1 00                 2109 	.byte #0xd1, #0x00	;  209
      0032D8 CE 00                 2110 	.byte #0xce, #0x00	;  206
      0032DA CC 00                 2111 	.byte #0xcc, #0x00	;  204
      0032DC C9 00                 2112 	.byte #0xc9, #0x00	;  201
      0032DE C7 00                 2113 	.byte #0xc7, #0x00	;  199
      0032E0 C4 00                 2114 	.byte #0xc4, #0x00	;  196
      0032E2 C1 00                 2115 	.byte #0xc1, #0x00	;  193
      0032E4 BF 00                 2116 	.byte #0xbf, #0x00	;  191
      0032E6 BC 00                 2117 	.byte #0xbc, #0x00	;  188
      0032E8 B9 00                 2118 	.byte #0xb9, #0x00	;  185
      0032EA B6 00                 2119 	.byte #0xb6, #0x00	;  182
      0032EC B3 00                 2120 	.byte #0xb3, #0x00	;  179
      0032EE B1 00                 2121 	.byte #0xb1, #0x00	;  177
      0032F0 AE 00                 2122 	.byte #0xae, #0x00	;  174
      0032F2 AB 00                 2123 	.byte #0xab, #0x00	;  171
      0032F4 A8 00                 2124 	.byte #0xa8, #0x00	;  168
      0032F6 A5 00                 2125 	.byte #0xa5, #0x00	;  165
      0032F8 A2 00                 2126 	.byte #0xa2, #0x00	;  162
      0032FA 9F 00                 2127 	.byte #0x9f, #0x00	;  159
      0032FC 9C 00                 2128 	.byte #0x9c, #0x00	;  156
      0032FE 99 00                 2129 	.byte #0x99, #0x00	;  153
      003300 96 00                 2130 	.byte #0x96, #0x00	;  150
      003302 93 00                 2131 	.byte #0x93, #0x00	;  147
      003304 90 00                 2132 	.byte #0x90, #0x00	;  144
      003306 8C 00                 2133 	.byte #0x8c, #0x00	;  140
      003308 89 00                 2134 	.byte #0x89, #0x00	;  137
      00330A 86 00                 2135 	.byte #0x86, #0x00	;  134
      00330C 83 00                 2136 	.byte #0x83, #0x00	;  131
      00330E 80 00                 2137 	.byte #0x80, #0x00	;  128
      003310 7D 00                 2138 	.byte #0x7d, #0x00	;  125
      003312 7A 00                 2139 	.byte #0x7a, #0x00	;  122
      003314 77 00                 2140 	.byte #0x77, #0x00	;  119
      003316 74 00                 2141 	.byte #0x74, #0x00	;  116
      003318 70 00                 2142 	.byte #0x70, #0x00	;  112
      00331A 6D 00                 2143 	.byte #0x6d, #0x00	;  109
      00331C 6A 00                 2144 	.byte #0x6a, #0x00	;  106
      00331E 67 00                 2145 	.byte #0x67, #0x00	;  103
      003320 64 00                 2146 	.byte #0x64, #0x00	;  100
      003322 61 00                 2147 	.byte #0x61, #0x00	;  97
      003324 5E 00                 2148 	.byte #0x5e, #0x00	;  94
      003326 5B 00                 2149 	.byte #0x5b, #0x00	;  91
      003328 58 00                 2150 	.byte #0x58, #0x00	;  88
      00332A 55 00                 2151 	.byte #0x55, #0x00	;  85
      00332C 52 00                 2152 	.byte #0x52, #0x00	;  82
      00332E 4F 00                 2153 	.byte #0x4f, #0x00	;  79
      003330 4D 00                 2154 	.byte #0x4d, #0x00	;  77
      003332 4A 00                 2155 	.byte #0x4a, #0x00	;  74
      003334 47 00                 2156 	.byte #0x47, #0x00	;  71
      003336 44 00                 2157 	.byte #0x44, #0x00	;  68
      003338 41 00                 2158 	.byte #0x41, #0x00	;  65
      00333A 3F 00                 2159 	.byte #0x3f, #0x00	;  63
      00333C 3C 00                 2160 	.byte #0x3c, #0x00	;  60
      00333E 39 00                 2161 	.byte #0x39, #0x00	;  57
      003340 37 00                 2162 	.byte #0x37, #0x00	;  55
      003342 34 00                 2163 	.byte #0x34, #0x00	;  52
      003344 32 00                 2164 	.byte #0x32, #0x00	;  50
      003346 2F 00                 2165 	.byte #0x2f, #0x00	;  47
      003348 2D 00                 2166 	.byte #0x2d, #0x00	;  45
      00334A 2B 00                 2167 	.byte #0x2b, #0x00	;  43
      00334C 28 00                 2168 	.byte #0x28, #0x00	;  40
      00334E 26 00                 2169 	.byte #0x26, #0x00	;  38
      003350 24 00                 2170 	.byte #0x24, #0x00	;  36
      003352 22 00                 2171 	.byte #0x22, #0x00	;  34
      003354 20 00                 2172 	.byte #0x20, #0x00	;  32
      003356 1E 00                 2173 	.byte #0x1e, #0x00	;  30
      003358 1C 00                 2174 	.byte #0x1c, #0x00	;  28
      00335A 1A 00                 2175 	.byte #0x1a, #0x00	;  26
      00335C 18 00                 2176 	.byte #0x18, #0x00	;  24
      00335E 16 00                 2177 	.byte #0x16, #0x00	;  22
      003360 15 00                 2178 	.byte #0x15, #0x00	;  21
      003362 13 00                 2179 	.byte #0x13, #0x00	;  19
      003364 11 00                 2180 	.byte #0x11, #0x00	;  17
      003366 10 00                 2181 	.byte #0x10, #0x00	;  16
      003368 0F 00                 2182 	.byte #0x0f, #0x00	;  15
      00336A 0D 00                 2183 	.byte #0x0d, #0x00	;  13
      00336C 0C 00                 2184 	.byte #0x0c, #0x00	;  12
      00336E 0B 00                 2185 	.byte #0x0b, #0x00	;  11
      003370 0A 00                 2186 	.byte #0x0a, #0x00	;  10
      003372 08 00                 2187 	.byte #0x08, #0x00	;  8
      003374 07 00                 2188 	.byte #0x07, #0x00	;  7
      003376 06 00                 2189 	.byte #0x06, #0x00	;  6
      003378 06 00                 2190 	.byte #0x06, #0x00	;  6
      00337A 05 00                 2191 	.byte #0x05, #0x00	;  5
      00337C 04 00                 2192 	.byte #0x04, #0x00	;  4
      00337E 03 00                 2193 	.byte #0x03, #0x00	;  3
      003380 03 00                 2194 	.byte #0x03, #0x00	;  3
      003382 02 00                 2195 	.byte #0x02, #0x00	;  2
      003384 02 00                 2196 	.byte #0x02, #0x00	;  2
      003386 02 00                 2197 	.byte #0x02, #0x00	;  2
      003388 01 00                 2198 	.byte #0x01, #0x00	;  1
      00338A 01 00                 2199 	.byte #0x01, #0x00	;  1
      00338C 01 00                 2200 	.byte #0x01, #0x00	;  1
      00338E 01 00                 2201 	.byte #0x01, #0x00	;  1
      003390 01 00                 2202 	.byte #0x01, #0x00	;  1
      003392 01 00                 2203 	.byte #0x01, #0x00	;  1
      003394 01 00                 2204 	.byte #0x01, #0x00	;  1
      003396 02 00                 2205 	.byte #0x02, #0x00	;  2
      003398 02 00                 2206 	.byte #0x02, #0x00	;  2
      00339A 02 00                 2207 	.byte #0x02, #0x00	;  2
      00339C 03 00                 2208 	.byte #0x03, #0x00	;  3
      00339E 03 00                 2209 	.byte #0x03, #0x00	;  3
      0033A0 04 00                 2210 	.byte #0x04, #0x00	;  4
      0033A2 05 00                 2211 	.byte #0x05, #0x00	;  5
      0033A4 06 00                 2212 	.byte #0x06, #0x00	;  6
      0033A6 06 00                 2213 	.byte #0x06, #0x00	;  6
      0033A8 07 00                 2214 	.byte #0x07, #0x00	;  7
      0033AA 08 00                 2215 	.byte #0x08, #0x00	;  8
      0033AC 0A 00                 2216 	.byte #0x0a, #0x00	;  10
      0033AE 0B 00                 2217 	.byte #0x0b, #0x00	;  11
      0033B0 0C 00                 2218 	.byte #0x0c, #0x00	;  12
      0033B2 0D 00                 2219 	.byte #0x0d, #0x00	;  13
      0033B4 0F 00                 2220 	.byte #0x0f, #0x00	;  15
      0033B6 10 00                 2221 	.byte #0x10, #0x00	;  16
      0033B8 11 00                 2222 	.byte #0x11, #0x00	;  17
      0033BA 13 00                 2223 	.byte #0x13, #0x00	;  19
      0033BC 15 00                 2224 	.byte #0x15, #0x00	;  21
      0033BE 16 00                 2225 	.byte #0x16, #0x00	;  22
      0033C0 18 00                 2226 	.byte #0x18, #0x00	;  24
      0033C2 1A 00                 2227 	.byte #0x1a, #0x00	;  26
      0033C4 1C 00                 2228 	.byte #0x1c, #0x00	;  28
      0033C6 1E 00                 2229 	.byte #0x1e, #0x00	;  30
      0033C8 20 00                 2230 	.byte #0x20, #0x00	;  32
      0033CA 22 00                 2231 	.byte #0x22, #0x00	;  34
      0033CC 24 00                 2232 	.byte #0x24, #0x00	;  36
      0033CE 26 00                 2233 	.byte #0x26, #0x00	;  38
      0033D0 28 00                 2234 	.byte #0x28, #0x00	;  40
      0033D2 2B 00                 2235 	.byte #0x2b, #0x00	;  43
      0033D4 2D 00                 2236 	.byte #0x2d, #0x00	;  45
      0033D6 2F 00                 2237 	.byte #0x2f, #0x00	;  47
      0033D8 32 00                 2238 	.byte #0x32, #0x00	;  50
      0033DA 34 00                 2239 	.byte #0x34, #0x00	;  52
      0033DC 37 00                 2240 	.byte #0x37, #0x00	;  55
      0033DE 39 00                 2241 	.byte #0x39, #0x00	;  57
      0033E0 3C 00                 2242 	.byte #0x3c, #0x00	;  60
      0033E2 3F 00                 2243 	.byte #0x3f, #0x00	;  63
      0033E4 41 00                 2244 	.byte #0x41, #0x00	;  65
      0033E6 44 00                 2245 	.byte #0x44, #0x00	;  68
      0033E8 47 00                 2246 	.byte #0x47, #0x00	;  71
      0033EA 4A 00                 2247 	.byte #0x4a, #0x00	;  74
      0033EC 4D 00                 2248 	.byte #0x4d, #0x00	;  77
      0033EE 4F 00                 2249 	.byte #0x4f, #0x00	;  79
      0033F0 52 00                 2250 	.byte #0x52, #0x00	;  82
      0033F2 55 00                 2251 	.byte #0x55, #0x00	;  85
      0033F4 58 00                 2252 	.byte #0x58, #0x00	;  88
      0033F6 5B 00                 2253 	.byte #0x5b, #0x00	;  91
      0033F8 5E 00                 2254 	.byte #0x5e, #0x00	;  94
      0033FA 61 00                 2255 	.byte #0x61, #0x00	;  97
      0033FC 64 00                 2256 	.byte #0x64, #0x00	;  100
      0033FE 67 00                 2257 	.byte #0x67, #0x00	;  103
      003400 6A 00                 2258 	.byte #0x6a, #0x00	;  106
      003402 6D 00                 2259 	.byte #0x6d, #0x00	;  109
      003404 70 00                 2260 	.byte #0x70, #0x00	;  112
      003406 74 00                 2261 	.byte #0x74, #0x00	;  116
      003408 77 00                 2262 	.byte #0x77, #0x00	;  119
      00340A 7A 00                 2263 	.byte #0x7a, #0x00	;  122
      00340C 7D 00                 2264 	.byte #0x7d, #0x00	;  125
      00340E                       2265 _trig_dac_values:
      00340E 00 00                 2266 	.byte #0x00, #0x00	;  0
      003410 01 00                 2267 	.byte #0x01, #0x00	;  1
      003412 02 00                 2268 	.byte #0x02, #0x00	;  2
      003414 03 00                 2269 	.byte #0x03, #0x00	;  3
      003416 04 00                 2270 	.byte #0x04, #0x00	;  4
      003418 05 00                 2271 	.byte #0x05, #0x00	;  5
      00341A 06 00                 2272 	.byte #0x06, #0x00	;  6
      00341C 07 00                 2273 	.byte #0x07, #0x00	;  7
      00341E 08 00                 2274 	.byte #0x08, #0x00	;  8
      003420 09 00                 2275 	.byte #0x09, #0x00	;  9
      003422 0A 00                 2276 	.byte #0x0a, #0x00	;  10
      003424 0B 00                 2277 	.byte #0x0b, #0x00	;  11
      003426 0C 00                 2278 	.byte #0x0c, #0x00	;  12
      003428 0D 00                 2279 	.byte #0x0d, #0x00	;  13
      00342A 0E 00                 2280 	.byte #0x0e, #0x00	;  14
      00342C 0F 00                 2281 	.byte #0x0f, #0x00	;  15
      00342E 10 00                 2282 	.byte #0x10, #0x00	;  16
      003430 11 00                 2283 	.byte #0x11, #0x00	;  17
      003432 12 00                 2284 	.byte #0x12, #0x00	;  18
      003434 13 00                 2285 	.byte #0x13, #0x00	;  19
      003436 14 00                 2286 	.byte #0x14, #0x00	;  20
      003438 15 00                 2287 	.byte #0x15, #0x00	;  21
      00343A 16 00                 2288 	.byte #0x16, #0x00	;  22
      00343C 17 00                 2289 	.byte #0x17, #0x00	;  23
      00343E 18 00                 2290 	.byte #0x18, #0x00	;  24
      003440 19 00                 2291 	.byte #0x19, #0x00	;  25
      003442 1A 00                 2292 	.byte #0x1a, #0x00	;  26
      003444 1B 00                 2293 	.byte #0x1b, #0x00	;  27
      003446 1C 00                 2294 	.byte #0x1c, #0x00	;  28
      003448 1D 00                 2295 	.byte #0x1d, #0x00	;  29
      00344A 1E 00                 2296 	.byte #0x1e, #0x00	;  30
      00344C 1F 00                 2297 	.byte #0x1f, #0x00	;  31
      00344E 20 00                 2298 	.byte #0x20, #0x00	;  32
      003450 21 00                 2299 	.byte #0x21, #0x00	;  33
      003452 22 00                 2300 	.byte #0x22, #0x00	;  34
      003454 23 00                 2301 	.byte #0x23, #0x00	;  35
      003456 24 00                 2302 	.byte #0x24, #0x00	;  36
      003458 25 00                 2303 	.byte #0x25, #0x00	;  37
      00345A 26 00                 2304 	.byte #0x26, #0x00	;  38
      00345C 27 00                 2305 	.byte #0x27, #0x00	;  39
      00345E 28 00                 2306 	.byte #0x28, #0x00	;  40
      003460 29 00                 2307 	.byte #0x29, #0x00	;  41
      003462 2A 00                 2308 	.byte #0x2a, #0x00	;  42
      003464 2B 00                 2309 	.byte #0x2b, #0x00	;  43
      003466 2C 00                 2310 	.byte #0x2c, #0x00	;  44
      003468 2D 00                 2311 	.byte #0x2d, #0x00	;  45
      00346A 2E 00                 2312 	.byte #0x2e, #0x00	;  46
      00346C 2F 00                 2313 	.byte #0x2f, #0x00	;  47
      00346E 30 00                 2314 	.byte #0x30, #0x00	;  48
      003470 31 00                 2315 	.byte #0x31, #0x00	;  49
      003472 32 00                 2316 	.byte #0x32, #0x00	;  50
      003474 33 00                 2317 	.byte #0x33, #0x00	;  51
      003476 34 00                 2318 	.byte #0x34, #0x00	;  52
      003478 35 00                 2319 	.byte #0x35, #0x00	;  53
      00347A 36 00                 2320 	.byte #0x36, #0x00	;  54
      00347C 37 00                 2321 	.byte #0x37, #0x00	;  55
      00347E 38 00                 2322 	.byte #0x38, #0x00	;  56
      003480 39 00                 2323 	.byte #0x39, #0x00	;  57
      003482 3A 00                 2324 	.byte #0x3a, #0x00	;  58
      003484 3B 00                 2325 	.byte #0x3b, #0x00	;  59
      003486 3C 00                 2326 	.byte #0x3c, #0x00	;  60
      003488 3D 00                 2327 	.byte #0x3d, #0x00	;  61
      00348A 3E 00                 2328 	.byte #0x3e, #0x00	;  62
      00348C 3F 00                 2329 	.byte #0x3f, #0x00	;  63
      00348E 40 00                 2330 	.byte #0x40, #0x00	;  64
      003490 41 00                 2331 	.byte #0x41, #0x00	;  65
      003492 42 00                 2332 	.byte #0x42, #0x00	;  66
      003494 43 00                 2333 	.byte #0x43, #0x00	;  67
      003496 44 00                 2334 	.byte #0x44, #0x00	;  68
      003498 45 00                 2335 	.byte #0x45, #0x00	;  69
      00349A 46 00                 2336 	.byte #0x46, #0x00	;  70
      00349C 47 00                 2337 	.byte #0x47, #0x00	;  71
      00349E 48 00                 2338 	.byte #0x48, #0x00	;  72
      0034A0 49 00                 2339 	.byte #0x49, #0x00	;  73
      0034A2 4A 00                 2340 	.byte #0x4a, #0x00	;  74
      0034A4 4B 00                 2341 	.byte #0x4b, #0x00	;  75
      0034A6 4C 00                 2342 	.byte #0x4c, #0x00	;  76
      0034A8 4D 00                 2343 	.byte #0x4d, #0x00	;  77
      0034AA 4E 00                 2344 	.byte #0x4e, #0x00	;  78
      0034AC 4F 00                 2345 	.byte #0x4f, #0x00	;  79
      0034AE 50 00                 2346 	.byte #0x50, #0x00	;  80
      0034B0 51 00                 2347 	.byte #0x51, #0x00	;  81
      0034B2 52 00                 2348 	.byte #0x52, #0x00	;  82
      0034B4 53 00                 2349 	.byte #0x53, #0x00	;  83
      0034B6 54 00                 2350 	.byte #0x54, #0x00	;  84
      0034B8 55 00                 2351 	.byte #0x55, #0x00	;  85
      0034BA 56 00                 2352 	.byte #0x56, #0x00	;  86
      0034BC 57 00                 2353 	.byte #0x57, #0x00	;  87
      0034BE 58 00                 2354 	.byte #0x58, #0x00	;  88
      0034C0 59 00                 2355 	.byte #0x59, #0x00	;  89
      0034C2 5A 00                 2356 	.byte #0x5a, #0x00	;  90
      0034C4 5B 00                 2357 	.byte #0x5b, #0x00	;  91
      0034C6 5C 00                 2358 	.byte #0x5c, #0x00	;  92
      0034C8 5D 00                 2359 	.byte #0x5d, #0x00	;  93
      0034CA 5E 00                 2360 	.byte #0x5e, #0x00	;  94
      0034CC 5F 00                 2361 	.byte #0x5f, #0x00	;  95
      0034CE 60 00                 2362 	.byte #0x60, #0x00	;  96
      0034D0 61 00                 2363 	.byte #0x61, #0x00	;  97
      0034D2 62 00                 2364 	.byte #0x62, #0x00	;  98
      0034D4 63 00                 2365 	.byte #0x63, #0x00	;  99
      0034D6 64 00                 2366 	.byte #0x64, #0x00	;  100
      0034D8 65 00                 2367 	.byte #0x65, #0x00	;  101
      0034DA 66 00                 2368 	.byte #0x66, #0x00	;  102
      0034DC 67 00                 2369 	.byte #0x67, #0x00	;  103
      0034DE 68 00                 2370 	.byte #0x68, #0x00	;  104
      0034E0 69 00                 2371 	.byte #0x69, #0x00	;  105
      0034E2 6A 00                 2372 	.byte #0x6a, #0x00	;  106
      0034E4 6B 00                 2373 	.byte #0x6b, #0x00	;  107
      0034E6 6C 00                 2374 	.byte #0x6c, #0x00	;  108
      0034E8 6D 00                 2375 	.byte #0x6d, #0x00	;  109
      0034EA 6E 00                 2376 	.byte #0x6e, #0x00	;  110
      0034EC 6F 00                 2377 	.byte #0x6f, #0x00	;  111
      0034EE 70 00                 2378 	.byte #0x70, #0x00	;  112
      0034F0 71 00                 2379 	.byte #0x71, #0x00	;  113
      0034F2 72 00                 2380 	.byte #0x72, #0x00	;  114
      0034F4 73 00                 2381 	.byte #0x73, #0x00	;  115
      0034F6 74 00                 2382 	.byte #0x74, #0x00	;  116
      0034F8 75 00                 2383 	.byte #0x75, #0x00	;  117
      0034FA 76 00                 2384 	.byte #0x76, #0x00	;  118
      0034FC 77 00                 2385 	.byte #0x77, #0x00	;  119
      0034FE 78 00                 2386 	.byte #0x78, #0x00	;  120
      003500 79 00                 2387 	.byte #0x79, #0x00	;  121
      003502 7A 00                 2388 	.byte #0x7a, #0x00	;  122
      003504 7B 00                 2389 	.byte #0x7b, #0x00	;  123
      003506 7C 00                 2390 	.byte #0x7c, #0x00	;  124
      003508 7D 00                 2391 	.byte #0x7d, #0x00	;  125
      00350A 7E 00                 2392 	.byte #0x7e, #0x00	;  126
      00350C 7F 00                 2393 	.byte #0x7f, #0x00	;  127
      00350E 80 00                 2394 	.byte #0x80, #0x00	;  128
      003510 81 00                 2395 	.byte #0x81, #0x00	;  129
      003512 82 00                 2396 	.byte #0x82, #0x00	;  130
      003514 83 00                 2397 	.byte #0x83, #0x00	;  131
      003516 84 00                 2398 	.byte #0x84, #0x00	;  132
      003518 85 00                 2399 	.byte #0x85, #0x00	;  133
      00351A 86 00                 2400 	.byte #0x86, #0x00	;  134
      00351C 87 00                 2401 	.byte #0x87, #0x00	;  135
      00351E 88 00                 2402 	.byte #0x88, #0x00	;  136
      003520 89 00                 2403 	.byte #0x89, #0x00	;  137
      003522 8A 00                 2404 	.byte #0x8a, #0x00	;  138
      003524 8B 00                 2405 	.byte #0x8b, #0x00	;  139
      003526 8C 00                 2406 	.byte #0x8c, #0x00	;  140
      003528 8D 00                 2407 	.byte #0x8d, #0x00	;  141
      00352A 8E 00                 2408 	.byte #0x8e, #0x00	;  142
      00352C 8F 00                 2409 	.byte #0x8f, #0x00	;  143
      00352E 90 00                 2410 	.byte #0x90, #0x00	;  144
      003530 91 00                 2411 	.byte #0x91, #0x00	;  145
      003532 92 00                 2412 	.byte #0x92, #0x00	;  146
      003534 93 00                 2413 	.byte #0x93, #0x00	;  147
      003536 94 00                 2414 	.byte #0x94, #0x00	;  148
      003538 95 00                 2415 	.byte #0x95, #0x00	;  149
      00353A 96 00                 2416 	.byte #0x96, #0x00	;  150
      00353C 97 00                 2417 	.byte #0x97, #0x00	;  151
      00353E 98 00                 2418 	.byte #0x98, #0x00	;  152
      003540 99 00                 2419 	.byte #0x99, #0x00	;  153
      003542 9A 00                 2420 	.byte #0x9a, #0x00	;  154
      003544 9B 00                 2421 	.byte #0x9b, #0x00	;  155
      003546 9C 00                 2422 	.byte #0x9c, #0x00	;  156
      003548 9D 00                 2423 	.byte #0x9d, #0x00	;  157
      00354A 9E 00                 2424 	.byte #0x9e, #0x00	;  158
      00354C 9F 00                 2425 	.byte #0x9f, #0x00	;  159
      00354E A0 00                 2426 	.byte #0xa0, #0x00	;  160
      003550 A1 00                 2427 	.byte #0xa1, #0x00	;  161
      003552 A2 00                 2428 	.byte #0xa2, #0x00	;  162
      003554 A3 00                 2429 	.byte #0xa3, #0x00	;  163
      003556 A4 00                 2430 	.byte #0xa4, #0x00	;  164
      003558 A5 00                 2431 	.byte #0xa5, #0x00	;  165
      00355A A6 00                 2432 	.byte #0xa6, #0x00	;  166
      00355C A7 00                 2433 	.byte #0xa7, #0x00	;  167
      00355E A8 00                 2434 	.byte #0xa8, #0x00	;  168
      003560 A9 00                 2435 	.byte #0xa9, #0x00	;  169
      003562 AA 00                 2436 	.byte #0xaa, #0x00	;  170
      003564 AB 00                 2437 	.byte #0xab, #0x00	;  171
      003566 AC 00                 2438 	.byte #0xac, #0x00	;  172
      003568 AD 00                 2439 	.byte #0xad, #0x00	;  173
      00356A AE 00                 2440 	.byte #0xae, #0x00	;  174
      00356C AF 00                 2441 	.byte #0xaf, #0x00	;  175
      00356E B0 00                 2442 	.byte #0xb0, #0x00	;  176
      003570 B1 00                 2443 	.byte #0xb1, #0x00	;  177
      003572 B2 00                 2444 	.byte #0xb2, #0x00	;  178
      003574 B3 00                 2445 	.byte #0xb3, #0x00	;  179
      003576 B4 00                 2446 	.byte #0xb4, #0x00	;  180
      003578 B5 00                 2447 	.byte #0xb5, #0x00	;  181
      00357A B6 00                 2448 	.byte #0xb6, #0x00	;  182
      00357C B7 00                 2449 	.byte #0xb7, #0x00	;  183
      00357E B8 00                 2450 	.byte #0xb8, #0x00	;  184
      003580 B9 00                 2451 	.byte #0xb9, #0x00	;  185
      003582 BA 00                 2452 	.byte #0xba, #0x00	;  186
      003584 BB 00                 2453 	.byte #0xbb, #0x00	;  187
      003586 BC 00                 2454 	.byte #0xbc, #0x00	;  188
      003588 BD 00                 2455 	.byte #0xbd, #0x00	;  189
      00358A BE 00                 2456 	.byte #0xbe, #0x00	;  190
      00358C BF 00                 2457 	.byte #0xbf, #0x00	;  191
      00358E C0 00                 2458 	.byte #0xc0, #0x00	;  192
      003590 C1 00                 2459 	.byte #0xc1, #0x00	;  193
      003592 C2 00                 2460 	.byte #0xc2, #0x00	;  194
      003594 C3 00                 2461 	.byte #0xc3, #0x00	;  195
      003596 C4 00                 2462 	.byte #0xc4, #0x00	;  196
      003598 C5 00                 2463 	.byte #0xc5, #0x00	;  197
      00359A C6 00                 2464 	.byte #0xc6, #0x00	;  198
      00359C C7 00                 2465 	.byte #0xc7, #0x00	;  199
      00359E C8 00                 2466 	.byte #0xc8, #0x00	;  200
      0035A0 C9 00                 2467 	.byte #0xc9, #0x00	;  201
      0035A2 CA 00                 2468 	.byte #0xca, #0x00	;  202
      0035A4 CB 00                 2469 	.byte #0xcb, #0x00	;  203
      0035A6 CC 00                 2470 	.byte #0xcc, #0x00	;  204
      0035A8 CD 00                 2471 	.byte #0xcd, #0x00	;  205
      0035AA CE 00                 2472 	.byte #0xce, #0x00	;  206
      0035AC CF 00                 2473 	.byte #0xcf, #0x00	;  207
      0035AE D0 00                 2474 	.byte #0xd0, #0x00	;  208
      0035B0 D1 00                 2475 	.byte #0xd1, #0x00	;  209
      0035B2 D2 00                 2476 	.byte #0xd2, #0x00	;  210
      0035B4 D3 00                 2477 	.byte #0xd3, #0x00	;  211
      0035B6 D4 00                 2478 	.byte #0xd4, #0x00	;  212
      0035B8 D5 00                 2479 	.byte #0xd5, #0x00	;  213
      0035BA D6 00                 2480 	.byte #0xd6, #0x00	;  214
      0035BC D7 00                 2481 	.byte #0xd7, #0x00	;  215
      0035BE D8 00                 2482 	.byte #0xd8, #0x00	;  216
      0035C0 D9 00                 2483 	.byte #0xd9, #0x00	;  217
      0035C2 DA 00                 2484 	.byte #0xda, #0x00	;  218
      0035C4 DB 00                 2485 	.byte #0xdb, #0x00	;  219
      0035C6 DC 00                 2486 	.byte #0xdc, #0x00	;  220
      0035C8 DD 00                 2487 	.byte #0xdd, #0x00	;  221
      0035CA DE 00                 2488 	.byte #0xde, #0x00	;  222
      0035CC DF 00                 2489 	.byte #0xdf, #0x00	;  223
      0035CE E0 00                 2490 	.byte #0xe0, #0x00	;  224
      0035D0 E1 00                 2491 	.byte #0xe1, #0x00	;  225
      0035D2 E2 00                 2492 	.byte #0xe2, #0x00	;  226
      0035D4 E3 00                 2493 	.byte #0xe3, #0x00	;  227
      0035D6 E4 00                 2494 	.byte #0xe4, #0x00	;  228
      0035D8 E5 00                 2495 	.byte #0xe5, #0x00	;  229
      0035DA E6 00                 2496 	.byte #0xe6, #0x00	;  230
      0035DC E7 00                 2497 	.byte #0xe7, #0x00	;  231
      0035DE E8 00                 2498 	.byte #0xe8, #0x00	;  232
      0035E0 E9 00                 2499 	.byte #0xe9, #0x00	;  233
      0035E2 EA 00                 2500 	.byte #0xea, #0x00	;  234
      0035E4 EB 00                 2501 	.byte #0xeb, #0x00	;  235
      0035E6 EC 00                 2502 	.byte #0xec, #0x00	;  236
      0035E8 ED 00                 2503 	.byte #0xed, #0x00	;  237
      0035EA EE 00                 2504 	.byte #0xee, #0x00	;  238
      0035EC EF 00                 2505 	.byte #0xef, #0x00	;  239
      0035EE F0 00                 2506 	.byte #0xf0, #0x00	;  240
      0035F0 F1 00                 2507 	.byte #0xf1, #0x00	;  241
      0035F2 F2 00                 2508 	.byte #0xf2, #0x00	;  242
      0035F4 F3 00                 2509 	.byte #0xf3, #0x00	;  243
      0035F6 F4 00                 2510 	.byte #0xf4, #0x00	;  244
      0035F8 F5 00                 2511 	.byte #0xf5, #0x00	;  245
      0035FA F6 00                 2512 	.byte #0xf6, #0x00	;  246
      0035FC F7 00                 2513 	.byte #0xf7, #0x00	;  247
      0035FE F8 00                 2514 	.byte #0xf8, #0x00	;  248
      003600 F9 00                 2515 	.byte #0xf9, #0x00	;  249
      003602 FA 00                 2516 	.byte #0xfa, #0x00	;  250
      003604 FB 00                 2517 	.byte #0xfb, #0x00	;  251
      003606 FC 00                 2518 	.byte #0xfc, #0x00	;  252
      003608 FD 00                 2519 	.byte #0xfd, #0x00	;  253
      00360A FE 00                 2520 	.byte #0xfe, #0x00	;  254
      00360C FF 00                 2521 	.byte #0xff, #0x00	;  255
      00360E FF 00                 2522 	.byte #0xff, #0x00	;  255
      003610 FE 00                 2523 	.byte #0xfe, #0x00	;  254
      003612 FD 00                 2524 	.byte #0xfd, #0x00	;  253
      003614 FC 00                 2525 	.byte #0xfc, #0x00	;  252
      003616 FB 00                 2526 	.byte #0xfb, #0x00	;  251
      003618 FA 00                 2527 	.byte #0xfa, #0x00	;  250
      00361A F9 00                 2528 	.byte #0xf9, #0x00	;  249
      00361C F8 00                 2529 	.byte #0xf8, #0x00	;  248
      00361E F7 00                 2530 	.byte #0xf7, #0x00	;  247
      003620 F6 00                 2531 	.byte #0xf6, #0x00	;  246
      003622 F5 00                 2532 	.byte #0xf5, #0x00	;  245
      003624 F4 00                 2533 	.byte #0xf4, #0x00	;  244
      003626 F3 00                 2534 	.byte #0xf3, #0x00	;  243
      003628 F2 00                 2535 	.byte #0xf2, #0x00	;  242
      00362A F1 00                 2536 	.byte #0xf1, #0x00	;  241
      00362C F0 00                 2537 	.byte #0xf0, #0x00	;  240
      00362E EF 00                 2538 	.byte #0xef, #0x00	;  239
      003630 EE 00                 2539 	.byte #0xee, #0x00	;  238
      003632 ED 00                 2540 	.byte #0xed, #0x00	;  237
      003634 EC 00                 2541 	.byte #0xec, #0x00	;  236
      003636 EB 00                 2542 	.byte #0xeb, #0x00	;  235
      003638 EA 00                 2543 	.byte #0xea, #0x00	;  234
      00363A E9 00                 2544 	.byte #0xe9, #0x00	;  233
      00363C E8 00                 2545 	.byte #0xe8, #0x00	;  232
      00363E E7 00                 2546 	.byte #0xe7, #0x00	;  231
      003640 E6 00                 2547 	.byte #0xe6, #0x00	;  230
      003642 E5 00                 2548 	.byte #0xe5, #0x00	;  229
      003644 E4 00                 2549 	.byte #0xe4, #0x00	;  228
      003646 E3 00                 2550 	.byte #0xe3, #0x00	;  227
      003648 E2 00                 2551 	.byte #0xe2, #0x00	;  226
      00364A E1 00                 2552 	.byte #0xe1, #0x00	;  225
      00364C E0 00                 2553 	.byte #0xe0, #0x00	;  224
      00364E DF 00                 2554 	.byte #0xdf, #0x00	;  223
      003650 DE 00                 2555 	.byte #0xde, #0x00	;  222
      003652 DD 00                 2556 	.byte #0xdd, #0x00	;  221
      003654 DC 00                 2557 	.byte #0xdc, #0x00	;  220
      003656 DB 00                 2558 	.byte #0xdb, #0x00	;  219
      003658 DA 00                 2559 	.byte #0xda, #0x00	;  218
      00365A D9 00                 2560 	.byte #0xd9, #0x00	;  217
      00365C D8 00                 2561 	.byte #0xd8, #0x00	;  216
      00365E D7 00                 2562 	.byte #0xd7, #0x00	;  215
      003660 D6 00                 2563 	.byte #0xd6, #0x00	;  214
      003662 D5 00                 2564 	.byte #0xd5, #0x00	;  213
      003664 D4 00                 2565 	.byte #0xd4, #0x00	;  212
      003666 D3 00                 2566 	.byte #0xd3, #0x00	;  211
      003668 D2 00                 2567 	.byte #0xd2, #0x00	;  210
      00366A D1 00                 2568 	.byte #0xd1, #0x00	;  209
      00366C D0 00                 2569 	.byte #0xd0, #0x00	;  208
      00366E CF 00                 2570 	.byte #0xcf, #0x00	;  207
      003670 CE 00                 2571 	.byte #0xce, #0x00	;  206
      003672 CD 00                 2572 	.byte #0xcd, #0x00	;  205
      003674 CC 00                 2573 	.byte #0xcc, #0x00	;  204
      003676 CB 00                 2574 	.byte #0xcb, #0x00	;  203
      003678 CA 00                 2575 	.byte #0xca, #0x00	;  202
      00367A C9 00                 2576 	.byte #0xc9, #0x00	;  201
      00367C C8 00                 2577 	.byte #0xc8, #0x00	;  200
      00367E C7 00                 2578 	.byte #0xc7, #0x00	;  199
      003680 C6 00                 2579 	.byte #0xc6, #0x00	;  198
      003682 C5 00                 2580 	.byte #0xc5, #0x00	;  197
      003684 C4 00                 2581 	.byte #0xc4, #0x00	;  196
      003686 C3 00                 2582 	.byte #0xc3, #0x00	;  195
      003688 C2 00                 2583 	.byte #0xc2, #0x00	;  194
      00368A C1 00                 2584 	.byte #0xc1, #0x00	;  193
      00368C C0 00                 2585 	.byte #0xc0, #0x00	;  192
      00368E BF 00                 2586 	.byte #0xbf, #0x00	;  191
      003690 BE 00                 2587 	.byte #0xbe, #0x00	;  190
      003692 BD 00                 2588 	.byte #0xbd, #0x00	;  189
      003694 BC 00                 2589 	.byte #0xbc, #0x00	;  188
      003696 BB 00                 2590 	.byte #0xbb, #0x00	;  187
      003698 BA 00                 2591 	.byte #0xba, #0x00	;  186
      00369A B9 00                 2592 	.byte #0xb9, #0x00	;  185
      00369C B8 00                 2593 	.byte #0xb8, #0x00	;  184
      00369E B7 00                 2594 	.byte #0xb7, #0x00	;  183
      0036A0 B6 00                 2595 	.byte #0xb6, #0x00	;  182
      0036A2 B5 00                 2596 	.byte #0xb5, #0x00	;  181
      0036A4 B4 00                 2597 	.byte #0xb4, #0x00	;  180
      0036A6 B3 00                 2598 	.byte #0xb3, #0x00	;  179
      0036A8 B2 00                 2599 	.byte #0xb2, #0x00	;  178
      0036AA B1 00                 2600 	.byte #0xb1, #0x00	;  177
      0036AC B0 00                 2601 	.byte #0xb0, #0x00	;  176
      0036AE AF 00                 2602 	.byte #0xaf, #0x00	;  175
      0036B0 AE 00                 2603 	.byte #0xae, #0x00	;  174
      0036B2 AD 00                 2604 	.byte #0xad, #0x00	;  173
      0036B4 AC 00                 2605 	.byte #0xac, #0x00	;  172
      0036B6 AB 00                 2606 	.byte #0xab, #0x00	;  171
      0036B8 AA 00                 2607 	.byte #0xaa, #0x00	;  170
      0036BA A9 00                 2608 	.byte #0xa9, #0x00	;  169
      0036BC A8 00                 2609 	.byte #0xa8, #0x00	;  168
      0036BE A7 00                 2610 	.byte #0xa7, #0x00	;  167
      0036C0 A6 00                 2611 	.byte #0xa6, #0x00	;  166
      0036C2 A5 00                 2612 	.byte #0xa5, #0x00	;  165
      0036C4 A4 00                 2613 	.byte #0xa4, #0x00	;  164
      0036C6 A3 00                 2614 	.byte #0xa3, #0x00	;  163
      0036C8 A2 00                 2615 	.byte #0xa2, #0x00	;  162
      0036CA A1 00                 2616 	.byte #0xa1, #0x00	;  161
      0036CC A0 00                 2617 	.byte #0xa0, #0x00	;  160
      0036CE 9F 00                 2618 	.byte #0x9f, #0x00	;  159
      0036D0 9E 00                 2619 	.byte #0x9e, #0x00	;  158
      0036D2 9D 00                 2620 	.byte #0x9d, #0x00	;  157
      0036D4 9C 00                 2621 	.byte #0x9c, #0x00	;  156
      0036D6 9B 00                 2622 	.byte #0x9b, #0x00	;  155
      0036D8 9A 00                 2623 	.byte #0x9a, #0x00	;  154
      0036DA 99 00                 2624 	.byte #0x99, #0x00	;  153
      0036DC 98 00                 2625 	.byte #0x98, #0x00	;  152
      0036DE 97 00                 2626 	.byte #0x97, #0x00	;  151
      0036E0 96 00                 2627 	.byte #0x96, #0x00	;  150
      0036E2 95 00                 2628 	.byte #0x95, #0x00	;  149
      0036E4 94 00                 2629 	.byte #0x94, #0x00	;  148
      0036E6 93 00                 2630 	.byte #0x93, #0x00	;  147
      0036E8 92 00                 2631 	.byte #0x92, #0x00	;  146
      0036EA 91 00                 2632 	.byte #0x91, #0x00	;  145
      0036EC 90 00                 2633 	.byte #0x90, #0x00	;  144
      0036EE 8F 00                 2634 	.byte #0x8f, #0x00	;  143
      0036F0 8E 00                 2635 	.byte #0x8e, #0x00	;  142
      0036F2 8D 00                 2636 	.byte #0x8d, #0x00	;  141
      0036F4 8C 00                 2637 	.byte #0x8c, #0x00	;  140
      0036F6 8B 00                 2638 	.byte #0x8b, #0x00	;  139
      0036F8 8A 00                 2639 	.byte #0x8a, #0x00	;  138
      0036FA 89 00                 2640 	.byte #0x89, #0x00	;  137
      0036FC 88 00                 2641 	.byte #0x88, #0x00	;  136
      0036FE 87 00                 2642 	.byte #0x87, #0x00	;  135
      003700 86 00                 2643 	.byte #0x86, #0x00	;  134
      003702 85 00                 2644 	.byte #0x85, #0x00	;  133
      003704 84 00                 2645 	.byte #0x84, #0x00	;  132
      003706 83 00                 2646 	.byte #0x83, #0x00	;  131
      003708 82 00                 2647 	.byte #0x82, #0x00	;  130
      00370A 81 00                 2648 	.byte #0x81, #0x00	;  129
      00370C 80 00                 2649 	.byte #0x80, #0x00	;  128
      00370E 7F 00                 2650 	.byte #0x7f, #0x00	;  127
      003710 7E 00                 2651 	.byte #0x7e, #0x00	;  126
      003712 7D 00                 2652 	.byte #0x7d, #0x00	;  125
      003714 7C 00                 2653 	.byte #0x7c, #0x00	;  124
      003716 7B 00                 2654 	.byte #0x7b, #0x00	;  123
      003718 7A 00                 2655 	.byte #0x7a, #0x00	;  122
      00371A 79 00                 2656 	.byte #0x79, #0x00	;  121
      00371C 78 00                 2657 	.byte #0x78, #0x00	;  120
      00371E 77 00                 2658 	.byte #0x77, #0x00	;  119
      003720 76 00                 2659 	.byte #0x76, #0x00	;  118
      003722 75 00                 2660 	.byte #0x75, #0x00	;  117
      003724 74 00                 2661 	.byte #0x74, #0x00	;  116
      003726 73 00                 2662 	.byte #0x73, #0x00	;  115
      003728 72 00                 2663 	.byte #0x72, #0x00	;  114
      00372A 71 00                 2664 	.byte #0x71, #0x00	;  113
      00372C 70 00                 2665 	.byte #0x70, #0x00	;  112
      00372E 6F 00                 2666 	.byte #0x6f, #0x00	;  111
      003730 6E 00                 2667 	.byte #0x6e, #0x00	;  110
      003732 6D 00                 2668 	.byte #0x6d, #0x00	;  109
      003734 6C 00                 2669 	.byte #0x6c, #0x00	;  108
      003736 6B 00                 2670 	.byte #0x6b, #0x00	;  107
      003738 6A 00                 2671 	.byte #0x6a, #0x00	;  106
      00373A 69 00                 2672 	.byte #0x69, #0x00	;  105
      00373C 68 00                 2673 	.byte #0x68, #0x00	;  104
      00373E 67 00                 2674 	.byte #0x67, #0x00	;  103
      003740 66 00                 2675 	.byte #0x66, #0x00	;  102
      003742 65 00                 2676 	.byte #0x65, #0x00	;  101
      003744 64 00                 2677 	.byte #0x64, #0x00	;  100
      003746 63 00                 2678 	.byte #0x63, #0x00	;  99
      003748 62 00                 2679 	.byte #0x62, #0x00	;  98
      00374A 61 00                 2680 	.byte #0x61, #0x00	;  97
      00374C 60 00                 2681 	.byte #0x60, #0x00	;  96
      00374E 5F 00                 2682 	.byte #0x5f, #0x00	;  95
      003750 5E 00                 2683 	.byte #0x5e, #0x00	;  94
      003752 5D 00                 2684 	.byte #0x5d, #0x00	;  93
      003754 5C 00                 2685 	.byte #0x5c, #0x00	;  92
      003756 5B 00                 2686 	.byte #0x5b, #0x00	;  91
      003758 5A 00                 2687 	.byte #0x5a, #0x00	;  90
      00375A 59 00                 2688 	.byte #0x59, #0x00	;  89
      00375C 58 00                 2689 	.byte #0x58, #0x00	;  88
      00375E 57 00                 2690 	.byte #0x57, #0x00	;  87
      003760 56 00                 2691 	.byte #0x56, #0x00	;  86
      003762 55 00                 2692 	.byte #0x55, #0x00	;  85
      003764 54 00                 2693 	.byte #0x54, #0x00	;  84
      003766 53 00                 2694 	.byte #0x53, #0x00	;  83
      003768 52 00                 2695 	.byte #0x52, #0x00	;  82
      00376A 51 00                 2696 	.byte #0x51, #0x00	;  81
      00376C 50 00                 2697 	.byte #0x50, #0x00	;  80
      00376E 4F 00                 2698 	.byte #0x4f, #0x00	;  79
      003770 4E 00                 2699 	.byte #0x4e, #0x00	;  78
      003772 4D 00                 2700 	.byte #0x4d, #0x00	;  77
      003774 4C 00                 2701 	.byte #0x4c, #0x00	;  76
      003776 4B 00                 2702 	.byte #0x4b, #0x00	;  75
      003778 4A 00                 2703 	.byte #0x4a, #0x00	;  74
      00377A 49 00                 2704 	.byte #0x49, #0x00	;  73
      00377C 48 00                 2705 	.byte #0x48, #0x00	;  72
      00377E 47 00                 2706 	.byte #0x47, #0x00	;  71
      003780 46 00                 2707 	.byte #0x46, #0x00	;  70
      003782 45 00                 2708 	.byte #0x45, #0x00	;  69
      003784 44 00                 2709 	.byte #0x44, #0x00	;  68
      003786 43 00                 2710 	.byte #0x43, #0x00	;  67
      003788 42 00                 2711 	.byte #0x42, #0x00	;  66
      00378A 41 00                 2712 	.byte #0x41, #0x00	;  65
      00378C 40 00                 2713 	.byte #0x40, #0x00	;  64
      00378E 3F 00                 2714 	.byte #0x3f, #0x00	;  63
      003790 3E 00                 2715 	.byte #0x3e, #0x00	;  62
      003792 3D 00                 2716 	.byte #0x3d, #0x00	;  61
      003794 3C 00                 2717 	.byte #0x3c, #0x00	;  60
      003796 3B 00                 2718 	.byte #0x3b, #0x00	;  59
      003798 3A 00                 2719 	.byte #0x3a, #0x00	;  58
      00379A 39 00                 2720 	.byte #0x39, #0x00	;  57
      00379C 38 00                 2721 	.byte #0x38, #0x00	;  56
      00379E 37 00                 2722 	.byte #0x37, #0x00	;  55
      0037A0 36 00                 2723 	.byte #0x36, #0x00	;  54
      0037A2 35 00                 2724 	.byte #0x35, #0x00	;  53
      0037A4 34 00                 2725 	.byte #0x34, #0x00	;  52
      0037A6 33 00                 2726 	.byte #0x33, #0x00	;  51
      0037A8 32 00                 2727 	.byte #0x32, #0x00	;  50
      0037AA 31 00                 2728 	.byte #0x31, #0x00	;  49
      0037AC 30 00                 2729 	.byte #0x30, #0x00	;  48
      0037AE 2F 00                 2730 	.byte #0x2f, #0x00	;  47
      0037B0 2E 00                 2731 	.byte #0x2e, #0x00	;  46
      0037B2 2D 00                 2732 	.byte #0x2d, #0x00	;  45
      0037B4 2C 00                 2733 	.byte #0x2c, #0x00	;  44
      0037B6 2B 00                 2734 	.byte #0x2b, #0x00	;  43
      0037B8 2A 00                 2735 	.byte #0x2a, #0x00	;  42
      0037BA 29 00                 2736 	.byte #0x29, #0x00	;  41
      0037BC 28 00                 2737 	.byte #0x28, #0x00	;  40
      0037BE 27 00                 2738 	.byte #0x27, #0x00	;  39
      0037C0 26 00                 2739 	.byte #0x26, #0x00	;  38
      0037C2 25 00                 2740 	.byte #0x25, #0x00	;  37
      0037C4 24 00                 2741 	.byte #0x24, #0x00	;  36
      0037C6 23 00                 2742 	.byte #0x23, #0x00	;  35
      0037C8 22 00                 2743 	.byte #0x22, #0x00	;  34
      0037CA 21 00                 2744 	.byte #0x21, #0x00	;  33
      0037CC 20 00                 2745 	.byte #0x20, #0x00	;  32
      0037CE 1F 00                 2746 	.byte #0x1f, #0x00	;  31
      0037D0 1E 00                 2747 	.byte #0x1e, #0x00	;  30
      0037D2 1D 00                 2748 	.byte #0x1d, #0x00	;  29
      0037D4 1C 00                 2749 	.byte #0x1c, #0x00	;  28
      0037D6 1B 00                 2750 	.byte #0x1b, #0x00	;  27
      0037D8 1A 00                 2751 	.byte #0x1a, #0x00	;  26
      0037DA 19 00                 2752 	.byte #0x19, #0x00	;  25
      0037DC 18 00                 2753 	.byte #0x18, #0x00	;  24
      0037DE 17 00                 2754 	.byte #0x17, #0x00	;  23
      0037E0 16 00                 2755 	.byte #0x16, #0x00	;  22
      0037E2 15 00                 2756 	.byte #0x15, #0x00	;  21
      0037E4 14 00                 2757 	.byte #0x14, #0x00	;  20
      0037E6 13 00                 2758 	.byte #0x13, #0x00	;  19
      0037E8 12 00                 2759 	.byte #0x12, #0x00	;  18
      0037EA 11 00                 2760 	.byte #0x11, #0x00	;  17
      0037EC 10 00                 2761 	.byte #0x10, #0x00	;  16
      0037EE 0F 00                 2762 	.byte #0x0f, #0x00	;  15
      0037F0 0E 00                 2763 	.byte #0x0e, #0x00	;  14
      0037F2 0D 00                 2764 	.byte #0x0d, #0x00	;  13
      0037F4 0C 00                 2765 	.byte #0x0c, #0x00	;  12
      0037F6 0B 00                 2766 	.byte #0x0b, #0x00	;  11
      0037F8 0A 00                 2767 	.byte #0x0a, #0x00	;  10
      0037FA 09 00                 2768 	.byte #0x09, #0x00	;  9
      0037FC 08 00                 2769 	.byte #0x08, #0x00	;  8
      0037FE 07 00                 2770 	.byte #0x07, #0x00	;  7
      003800 06 00                 2771 	.byte #0x06, #0x00	;  6
      003802 05 00                 2772 	.byte #0x05, #0x00	;  5
      003804 04 00                 2773 	.byte #0x04, #0x00	;  4
      003806 03 00                 2774 	.byte #0x03, #0x00	;  3
      003808 02 00                 2775 	.byte #0x02, #0x00	;  2
      00380A 01 00                 2776 	.byte #0x01, #0x00	;  1
      00380C 00 00                 2777 	.byte #0x00, #0x00	;  0
                                   2778 	.area CONST   (CODE)
      00380E                       2779 ___str_0:
      00380E 0A                    2780 	.db 0x0a
      00380F 0D                    2781 	.db 0x0d
      003810 E2                    2782 	.db 0xe2
      003811 94                    2783 	.db 0x94
      003812 8C                    2784 	.db 0x8c
      003813 E2                    2785 	.db 0xe2
      003814 94                    2786 	.db 0x94
      003815 80                    2787 	.db 0x80
      003816 E2                    2788 	.db 0xe2
      003817 94                    2789 	.db 0x94
      003818 80                    2790 	.db 0x80
      003819 E2                    2791 	.db 0xe2
      00381A 94                    2792 	.db 0x94
      00381B 80                    2793 	.db 0x80
      00381C E2                    2794 	.db 0xe2
      00381D 94                    2795 	.db 0x94
      00381E 80                    2796 	.db 0x80
      00381F E2                    2797 	.db 0xe2
      003820 94                    2798 	.db 0x94
      003821 80                    2799 	.db 0x80
      003822 E2                    2800 	.db 0xe2
      003823 94                    2801 	.db 0x94
      003824 80                    2802 	.db 0x80
      003825 E2                    2803 	.db 0xe2
      003826 94                    2804 	.db 0x94
      003827 80                    2805 	.db 0x80
      003828 E2                    2806 	.db 0xe2
      003829 94                    2807 	.db 0x94
      00382A 80                    2808 	.db 0x80
      00382B E2                    2809 	.db 0xe2
      00382C 94                    2810 	.db 0x94
      00382D 80                    2811 	.db 0x80
      00382E E2                    2812 	.db 0xe2
      00382F 94                    2813 	.db 0x94
      003830 80                    2814 	.db 0x80
      003831 E2                    2815 	.db 0xe2
      003832 94                    2816 	.db 0x94
      003833 80                    2817 	.db 0x80
      003834 E2                    2818 	.db 0xe2
      003835 94                    2819 	.db 0x94
      003836 80                    2820 	.db 0x80
      003837 E2                    2821 	.db 0xe2
      003838 94                    2822 	.db 0x94
      003839 80                    2823 	.db 0x80
      00383A E2                    2824 	.db 0xe2
      00383B 94                    2825 	.db 0x94
      00383C 80                    2826 	.db 0x80
      00383D E2                    2827 	.db 0xe2
      00383E 94                    2828 	.db 0x94
      00383F 80                    2829 	.db 0x80
      003840 E2                    2830 	.db 0xe2
      003841 94                    2831 	.db 0x94
      003842 80                    2832 	.db 0x80
      003843 E2                    2833 	.db 0xe2
      003844 94                    2834 	.db 0x94
      003845 80                    2835 	.db 0x80
      003846 E2                    2836 	.db 0xe2
      003847 94                    2837 	.db 0x94
      003848 80                    2838 	.db 0x80
      003849 E2                    2839 	.db 0xe2
      00384A 94                    2840 	.db 0x94
      00384B 80                    2841 	.db 0x80
      00384C E2                    2842 	.db 0xe2
      00384D 94                    2843 	.db 0x94
      00384E 80                    2844 	.db 0x80
      00384F E2                    2845 	.db 0xe2
      003850 94                    2846 	.db 0x94
      003851 80                    2847 	.db 0x80
      003852 E2                    2848 	.db 0xe2
      003853 94                    2849 	.db 0x94
      003854 80                    2850 	.db 0x80
      003855 E2                    2851 	.db 0xe2
      003856 94                    2852 	.db 0x94
      003857 80                    2853 	.db 0x80
      003858 E2                    2854 	.db 0xe2
      003859 94                    2855 	.db 0x94
      00385A 80                    2856 	.db 0x80
      00385B E2                    2857 	.db 0xe2
      00385C 94                    2858 	.db 0x94
      00385D 80                    2859 	.db 0x80
      00385E E2                    2860 	.db 0xe2
      00385F 94                    2861 	.db 0x94
      003860 80                    2862 	.db 0x80
      003861 E2                    2863 	.db 0xe2
      003862 94                    2864 	.db 0x94
      003863 80                    2865 	.db 0x80
      003864 E2                    2866 	.db 0xe2
      003865 94                    2867 	.db 0x94
      003866 80                    2868 	.db 0x80
      003867 E2                    2869 	.db 0xe2
      003868 94                    2870 	.db 0x94
      003869 80                    2871 	.db 0x80
      00386A E2                    2872 	.db 0xe2
      00386B 94                    2873 	.db 0x94
      00386C 80                    2874 	.db 0x80
      00386D E2                    2875 	.db 0xe2
      00386E 94                    2876 	.db 0x94
      00386F 80                    2877 	.db 0x80
      003870 E2                    2878 	.db 0xe2
      003871 94                    2879 	.db 0x94
      003872 80                    2880 	.db 0x80
      003873 E2                    2881 	.db 0xe2
      003874 94                    2882 	.db 0x94
      003875 80                    2883 	.db 0x80
      003876 E2                    2884 	.db 0xe2
      003877 94                    2885 	.db 0x94
      003878 80                    2886 	.db 0x80
      003879 E2                    2887 	.db 0xe2
      00387A 94                    2888 	.db 0x94
      00387B 80                    2889 	.db 0x80
      00387C E2                    2890 	.db 0xe2
      00387D 94                    2891 	.db 0x94
      00387E 80                    2892 	.db 0x80
      00387F E2                    2893 	.db 0xe2
      003880 94                    2894 	.db 0x94
      003881 80                    2895 	.db 0x80
      003882 E2                    2896 	.db 0xe2
      003883 94                    2897 	.db 0x94
      003884 80                    2898 	.db 0x80
      003885 E2                    2899 	.db 0xe2
      003886 94                    2900 	.db 0x94
      003887 80                    2901 	.db 0x80
      003888 E2                    2902 	.db 0xe2
      003889 94                    2903 	.db 0x94
      00388A 80                    2904 	.db 0x80
      00388B E2                    2905 	.db 0xe2
      00388C 94                    2906 	.db 0x94
      00388D 80                    2907 	.db 0x80
      00388E E2                    2908 	.db 0xe2
      00388F 94                    2909 	.db 0x94
      003890 80                    2910 	.db 0x80
      003891 E2                    2911 	.db 0xe2
      003892 94                    2912 	.db 0x94
      003893 80                    2913 	.db 0x80
      003894 E2                    2914 	.db 0xe2
      003895 94                    2915 	.db 0x94
      003896 80                    2916 	.db 0x80
      003897 E2                    2917 	.db 0xe2
      003898 94                    2918 	.db 0x94
      003899 80                    2919 	.db 0x80
      00389A E2                    2920 	.db 0xe2
      00389B 94                    2921 	.db 0x94
      00389C 80                    2922 	.db 0x80
      00389D E2                    2923 	.db 0xe2
      00389E 94                    2924 	.db 0x94
      00389F 80                    2925 	.db 0x80
      0038A0 E2                    2926 	.db 0xe2
      0038A1 94                    2927 	.db 0x94
      0038A2 80                    2928 	.db 0x80
      0038A3 E2                    2929 	.db 0xe2
      0038A4 94                    2930 	.db 0x94
      0038A5 80                    2931 	.db 0x80
      0038A6 E2                    2932 	.db 0xe2
      0038A7 94                    2933 	.db 0x94
      0038A8 80                    2934 	.db 0x80
      0038A9 E2                    2935 	.db 0xe2
      0038AA 94                    2936 	.db 0x94
      0038AB 80                    2937 	.db 0x80
      0038AC E2                    2938 	.db 0xe2
      0038AD 94                    2939 	.db 0x94
      0038AE 80                    2940 	.db 0x80
      0038AF E2                    2941 	.db 0xe2
      0038B0 94                    2942 	.db 0x94
      0038B1 80                    2943 	.db 0x80
      0038B2 E2                    2944 	.db 0xe2
      0038B3 94                    2945 	.db 0x94
      0038B4 80                    2946 	.db 0x80
      0038B5 E2                    2947 	.db 0xe2
      0038B6 94                    2948 	.db 0x94
      0038B7 80                    2949 	.db 0x80
      0038B8 E2                    2950 	.db 0xe2
      0038B9 94                    2951 	.db 0x94
      0038BA 80                    2952 	.db 0x80
      0038BB E2                    2953 	.db 0xe2
      0038BC 94                    2954 	.db 0x94
      0038BD 80                    2955 	.db 0x80
      0038BE E2                    2956 	.db 0xe2
      0038BF 94                    2957 	.db 0x94
      0038C0 80                    2958 	.db 0x80
      0038C1 E2                    2959 	.db 0xe2
      0038C2 94                    2960 	.db 0x94
      0038C3 80                    2961 	.db 0x80
      0038C4 E2                    2962 	.db 0xe2
      0038C5 94                    2963 	.db 0x94
      0038C6 80                    2964 	.db 0x80
      0038C7 E2                    2965 	.db 0xe2
      0038C8 94                    2966 	.db 0x94
      0038C9 80                    2967 	.db 0x80
      0038CA E2                    2968 	.db 0xe2
      0038CB 94                    2969 	.db 0x94
      0038CC 80                    2970 	.db 0x80
      0038CD E2                    2971 	.db 0xe2
      0038CE 94                    2972 	.db 0x94
      0038CF 90                    2973 	.db 0x90
      0038D0 0A                    2974 	.db 0x0a
      0038D1 0D                    2975 	.db 0x0d
      0038D2 00                    2976 	.db 0x00
                                   2977 	.area CSEG    (CODE)
                                   2978 	.area CONST   (CODE)
      0038D3                       2979 ___str_1:
      0038D3 E2                    2980 	.db 0xe2
      0038D4 94                    2981 	.db 0x94
      0038D5 82                    2982 	.db 0x82
      0038D6 20 20 20 20 20 20 20  2983 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003912 20 20                 2984 	.ascii "  "
      003914 E2                    2985 	.db 0xe2
      003915 94                    2986 	.db 0x94
      003916 82                    2987 	.db 0x82
      003917 0A                    2988 	.db 0x0a
      003918 0D                    2989 	.db 0x0d
      003919 00                    2990 	.db 0x00
                                   2991 	.area CSEG    (CODE)
                                   2992 	.area CONST   (CODE)
      00391A                       2993 ___str_2:
      00391A E2                    2994 	.db 0xe2
      00391B 94                    2995 	.db 0x94
      00391C 9C                    2996 	.db 0x9c
      00391D E2                    2997 	.db 0xe2
      00391E 94                    2998 	.db 0x94
      00391F 80                    2999 	.db 0x80
      003920 E2                    3000 	.db 0xe2
      003921 94                    3001 	.db 0x94
      003922 80                    3002 	.db 0x80
      003923 E2                    3003 	.db 0xe2
      003924 94                    3004 	.db 0x94
      003925 80                    3005 	.db 0x80
      003926 E2                    3006 	.db 0xe2
      003927 94                    3007 	.db 0x94
      003928 80                    3008 	.db 0x80
      003929 E2                    3009 	.db 0xe2
      00392A 94                    3010 	.db 0x94
      00392B 80                    3011 	.db 0x80
      00392C E2                    3012 	.db 0xe2
      00392D 94                    3013 	.db 0x94
      00392E 80                    3014 	.db 0x80
      00392F E2                    3015 	.db 0xe2
      003930 94                    3016 	.db 0x94
      003931 80                    3017 	.db 0x80
      003932 E2                    3018 	.db 0xe2
      003933 94                    3019 	.db 0x94
      003934 80                    3020 	.db 0x80
      003935 E2                    3021 	.db 0xe2
      003936 94                    3022 	.db 0x94
      003937 80                    3023 	.db 0x80
      003938 E2                    3024 	.db 0xe2
      003939 94                    3025 	.db 0x94
      00393A 80                    3026 	.db 0x80
      00393B E2                    3027 	.db 0xe2
      00393C 94                    3028 	.db 0x94
      00393D 80                    3029 	.db 0x80
      00393E E2                    3030 	.db 0xe2
      00393F 94                    3031 	.db 0x94
      003940 80                    3032 	.db 0x80
      003941 E2                    3033 	.db 0xe2
      003942 94                    3034 	.db 0x94
      003943 80                    3035 	.db 0x80
      003944 E2                    3036 	.db 0xe2
      003945 94                    3037 	.db 0x94
      003946 80                    3038 	.db 0x80
      003947 E2                    3039 	.db 0xe2
      003948 94                    3040 	.db 0x94
      003949 80                    3041 	.db 0x80
      00394A E2                    3042 	.db 0xe2
      00394B 94                    3043 	.db 0x94
      00394C 80                    3044 	.db 0x80
      00394D E2                    3045 	.db 0xe2
      00394E 94                    3046 	.db 0x94
      00394F 80                    3047 	.db 0x80
      003950 E2                    3048 	.db 0xe2
      003951 94                    3049 	.db 0x94
      003952 80                    3050 	.db 0x80
      003953 E2                    3051 	.db 0xe2
      003954 94                    3052 	.db 0x94
      003955 80                    3053 	.db 0x80
      003956 E2                    3054 	.db 0xe2
      003957 94                    3055 	.db 0x94
      003958 80                    3056 	.db 0x80
      003959 E2                    3057 	.db 0xe2
      00395A 94                    3058 	.db 0x94
      00395B 80                    3059 	.db 0x80
      00395C E2                    3060 	.db 0xe2
      00395D 94                    3061 	.db 0x94
      00395E 80                    3062 	.db 0x80
      00395F E2                    3063 	.db 0xe2
      003960 94                    3064 	.db 0x94
      003961 80                    3065 	.db 0x80
      003962 E2                    3066 	.db 0xe2
      003963 94                    3067 	.db 0x94
      003964 80                    3068 	.db 0x80
      003965 E2                    3069 	.db 0xe2
      003966 94                    3070 	.db 0x94
      003967 80                    3071 	.db 0x80
      003968 E2                    3072 	.db 0xe2
      003969 94                    3073 	.db 0x94
      00396A 80                    3074 	.db 0x80
      00396B E2                    3075 	.db 0xe2
      00396C 94                    3076 	.db 0x94
      00396D 80                    3077 	.db 0x80
      00396E E2                    3078 	.db 0xe2
      00396F 94                    3079 	.db 0x94
      003970 80                    3080 	.db 0x80
      003971 E2                    3081 	.db 0xe2
      003972 94                    3082 	.db 0x94
      003973 80                    3083 	.db 0x80
      003974 E2                    3084 	.db 0xe2
      003975 94                    3085 	.db 0x94
      003976 80                    3086 	.db 0x80
      003977 E2                    3087 	.db 0xe2
      003978 94                    3088 	.db 0x94
      003979 80                    3089 	.db 0x80
      00397A E2                    3090 	.db 0xe2
      00397B 94                    3091 	.db 0x94
      00397C 80                    3092 	.db 0x80
      00397D E2                    3093 	.db 0xe2
      00397E 94                    3094 	.db 0x94
      00397F 80                    3095 	.db 0x80
      003980 E2                    3096 	.db 0xe2
      003981 94                    3097 	.db 0x94
      003982 80                    3098 	.db 0x80
      003983 E2                    3099 	.db 0xe2
      003984 94                    3100 	.db 0x94
      003985 80                    3101 	.db 0x80
      003986 E2                    3102 	.db 0xe2
      003987 94                    3103 	.db 0x94
      003988 80                    3104 	.db 0x80
      003989 E2                    3105 	.db 0xe2
      00398A 94                    3106 	.db 0x94
      00398B 80                    3107 	.db 0x80
      00398C E2                    3108 	.db 0xe2
      00398D 94                    3109 	.db 0x94
      00398E 80                    3110 	.db 0x80
      00398F E2                    3111 	.db 0xe2
      003990 94                    3112 	.db 0x94
      003991 80                    3113 	.db 0x80
      003992 E2                    3114 	.db 0xe2
      003993 94                    3115 	.db 0x94
      003994 80                    3116 	.db 0x80
      003995 E2                    3117 	.db 0xe2
      003996 94                    3118 	.db 0x94
      003997 80                    3119 	.db 0x80
      003998 E2                    3120 	.db 0xe2
      003999 94                    3121 	.db 0x94
      00399A 80                    3122 	.db 0x80
      00399B E2                    3123 	.db 0xe2
      00399C 94                    3124 	.db 0x94
      00399D 80                    3125 	.db 0x80
      00399E E2                    3126 	.db 0xe2
      00399F 94                    3127 	.db 0x94
      0039A0 80                    3128 	.db 0x80
      0039A1 E2                    3129 	.db 0xe2
      0039A2 94                    3130 	.db 0x94
      0039A3 80                    3131 	.db 0x80
      0039A4 E2                    3132 	.db 0xe2
      0039A5 94                    3133 	.db 0x94
      0039A6 80                    3134 	.db 0x80
      0039A7 E2                    3135 	.db 0xe2
      0039A8 94                    3136 	.db 0x94
      0039A9 80                    3137 	.db 0x80
      0039AA E2                    3138 	.db 0xe2
      0039AB 94                    3139 	.db 0x94
      0039AC 80                    3140 	.db 0x80
      0039AD E2                    3141 	.db 0xe2
      0039AE 94                    3142 	.db 0x94
      0039AF 80                    3143 	.db 0x80
      0039B0 E2                    3144 	.db 0xe2
      0039B1 94                    3145 	.db 0x94
      0039B2 80                    3146 	.db 0x80
      0039B3 E2                    3147 	.db 0xe2
      0039B4 94                    3148 	.db 0x94
      0039B5 80                    3149 	.db 0x80
      0039B6 E2                    3150 	.db 0xe2
      0039B7 94                    3151 	.db 0x94
      0039B8 80                    3152 	.db 0x80
      0039B9 E2                    3153 	.db 0xe2
      0039BA 94                    3154 	.db 0x94
      0039BB 80                    3155 	.db 0x80
      0039BC E2                    3156 	.db 0xe2
      0039BD 94                    3157 	.db 0x94
      0039BE 80                    3158 	.db 0x80
      0039BF E2                    3159 	.db 0xe2
      0039C0 94                    3160 	.db 0x94
      0039C1 80                    3161 	.db 0x80
      0039C2 E2                    3162 	.db 0xe2
      0039C3 94                    3163 	.db 0x94
      0039C4 80                    3164 	.db 0x80
      0039C5 E2                    3165 	.db 0xe2
      0039C6 94                    3166 	.db 0x94
      0039C7 80                    3167 	.db 0x80
      0039C8 E2                    3168 	.db 0xe2
      0039C9 94                    3169 	.db 0x94
      0039CA 80                    3170 	.db 0x80
      0039CB E2                    3171 	.db 0xe2
      0039CC 94                    3172 	.db 0x94
      0039CD 80                    3173 	.db 0x80
      0039CE E2                    3174 	.db 0xe2
      0039CF 94                    3175 	.db 0x94
      0039D0 80                    3176 	.db 0x80
      0039D1 E2                    3177 	.db 0xe2
      0039D2 94                    3178 	.db 0x94
      0039D3 80                    3179 	.db 0x80
      0039D4 E2                    3180 	.db 0xe2
      0039D5 94                    3181 	.db 0x94
      0039D6 80                    3182 	.db 0x80
      0039D7 E2                    3183 	.db 0xe2
      0039D8 94                    3184 	.db 0x94
      0039D9 A4                    3185 	.db 0xa4
      0039DA 0A                    3186 	.db 0x0a
      0039DB 0D                    3187 	.db 0x0d
      0039DC 00                    3188 	.db 0x00
                                   3189 	.area CSEG    (CODE)
                                   3190 	.area CONST   (CODE)
      0039DD                       3191 ___str_3:
      0039DD E2                    3192 	.db 0xe2
      0039DE 94                    3193 	.db 0x94
      0039DF 82                    3194 	.db 0x82
      0039E0 20 20 43 6F 6D 6D 61  3195 	.ascii "  Command   "
             6E 64 20 20 20
      0039EC E2                    3196 	.db 0xe2
      0039ED 94                    3197 	.db 0x94
      0039EE 82                    3198 	.db 0x82
      0039EF 20 20 20 20 20 20 20  3199 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003A20 E2                    3200 	.db 0xe2
      003A21 94                    3201 	.db 0x94
      003A22 82                    3202 	.db 0x82
      003A23 0A                    3203 	.db 0x0a
      003A24 0D                    3204 	.db 0x0d
      003A25 00                    3205 	.db 0x00
                                   3206 	.area CSEG    (CODE)
                                   3207 	.area CONST   (CODE)
      003A26                       3208 ___str_4:
      003A26 E2                    3209 	.db 0xe2
      003A27 94                    3210 	.db 0x94
      003A28 9C                    3211 	.db 0x9c
      003A29 E2                    3212 	.db 0xe2
      003A2A 94                    3213 	.db 0x94
      003A2B 80                    3214 	.db 0x80
      003A2C E2                    3215 	.db 0xe2
      003A2D 94                    3216 	.db 0x94
      003A2E 80                    3217 	.db 0x80
      003A2F E2                    3218 	.db 0xe2
      003A30 94                    3219 	.db 0x94
      003A31 80                    3220 	.db 0x80
      003A32 E2                    3221 	.db 0xe2
      003A33 94                    3222 	.db 0x94
      003A34 80                    3223 	.db 0x80
      003A35 E2                    3224 	.db 0xe2
      003A36 94                    3225 	.db 0x94
      003A37 80                    3226 	.db 0x80
      003A38 E2                    3227 	.db 0xe2
      003A39 94                    3228 	.db 0x94
      003A3A 80                    3229 	.db 0x80
      003A3B E2                    3230 	.db 0xe2
      003A3C 94                    3231 	.db 0x94
      003A3D 80                    3232 	.db 0x80
      003A3E E2                    3233 	.db 0xe2
      003A3F 94                    3234 	.db 0x94
      003A40 80                    3235 	.db 0x80
      003A41 E2                    3236 	.db 0xe2
      003A42 94                    3237 	.db 0x94
      003A43 80                    3238 	.db 0x80
      003A44 E2                    3239 	.db 0xe2
      003A45 94                    3240 	.db 0x94
      003A46 80                    3241 	.db 0x80
      003A47 E2                    3242 	.db 0xe2
      003A48 94                    3243 	.db 0x94
      003A49 80                    3244 	.db 0x80
      003A4A E2                    3245 	.db 0xe2
      003A4B 94                    3246 	.db 0x94
      003A4C BC                    3247 	.db 0xbc
      003A4D E2                    3248 	.db 0xe2
      003A4E 94                    3249 	.db 0x94
      003A4F 80                    3250 	.db 0x80
      003A50 E2                    3251 	.db 0xe2
      003A51 94                    3252 	.db 0x94
      003A52 80                    3253 	.db 0x80
      003A53 E2                    3254 	.db 0xe2
      003A54 94                    3255 	.db 0x94
      003A55 80                    3256 	.db 0x80
      003A56 E2                    3257 	.db 0xe2
      003A57 94                    3258 	.db 0x94
      003A58 80                    3259 	.db 0x80
      003A59 E2                    3260 	.db 0xe2
      003A5A 94                    3261 	.db 0x94
      003A5B 80                    3262 	.db 0x80
      003A5C E2                    3263 	.db 0xe2
      003A5D 94                    3264 	.db 0x94
      003A5E 80                    3265 	.db 0x80
      003A5F E2                    3266 	.db 0xe2
      003A60 94                    3267 	.db 0x94
      003A61 80                    3268 	.db 0x80
      003A62 E2                    3269 	.db 0xe2
      003A63 94                    3270 	.db 0x94
      003A64 80                    3271 	.db 0x80
      003A65 E2                    3272 	.db 0xe2
      003A66 94                    3273 	.db 0x94
      003A67 80                    3274 	.db 0x80
      003A68 E2                    3275 	.db 0xe2
      003A69 94                    3276 	.db 0x94
      003A6A 80                    3277 	.db 0x80
      003A6B E2                    3278 	.db 0xe2
      003A6C 94                    3279 	.db 0x94
      003A6D 80                    3280 	.db 0x80
      003A6E E2                    3281 	.db 0xe2
      003A6F 94                    3282 	.db 0x94
      003A70 80                    3283 	.db 0x80
      003A71 E2                    3284 	.db 0xe2
      003A72 94                    3285 	.db 0x94
      003A73 80                    3286 	.db 0x80
      003A74 E2                    3287 	.db 0xe2
      003A75 94                    3288 	.db 0x94
      003A76 80                    3289 	.db 0x80
      003A77 E2                    3290 	.db 0xe2
      003A78 94                    3291 	.db 0x94
      003A79 80                    3292 	.db 0x80
      003A7A E2                    3293 	.db 0xe2
      003A7B 94                    3294 	.db 0x94
      003A7C 80                    3295 	.db 0x80
      003A7D E2                    3296 	.db 0xe2
      003A7E 94                    3297 	.db 0x94
      003A7F 80                    3298 	.db 0x80
      003A80 E2                    3299 	.db 0xe2
      003A81 94                    3300 	.db 0x94
      003A82 80                    3301 	.db 0x80
      003A83 E2                    3302 	.db 0xe2
      003A84 94                    3303 	.db 0x94
      003A85 80                    3304 	.db 0x80
      003A86 E2                    3305 	.db 0xe2
      003A87 94                    3306 	.db 0x94
      003A88 80                    3307 	.db 0x80
      003A89 E2                    3308 	.db 0xe2
      003A8A 94                    3309 	.db 0x94
      003A8B 80                    3310 	.db 0x80
      003A8C E2                    3311 	.db 0xe2
      003A8D 94                    3312 	.db 0x94
      003A8E 80                    3313 	.db 0x80
      003A8F E2                    3314 	.db 0xe2
      003A90 94                    3315 	.db 0x94
      003A91 80                    3316 	.db 0x80
      003A92 E2                    3317 	.db 0xe2
      003A93 94                    3318 	.db 0x94
      003A94 80                    3319 	.db 0x80
      003A95 E2                    3320 	.db 0xe2
      003A96 94                    3321 	.db 0x94
      003A97 80                    3322 	.db 0x80
      003A98 E2                    3323 	.db 0xe2
      003A99 94                    3324 	.db 0x94
      003A9A 80                    3325 	.db 0x80
      003A9B E2                    3326 	.db 0xe2
      003A9C 94                    3327 	.db 0x94
      003A9D 80                    3328 	.db 0x80
      003A9E E2                    3329 	.db 0xe2
      003A9F 94                    3330 	.db 0x94
      003AA0 80                    3331 	.db 0x80
      003AA1 E2                    3332 	.db 0xe2
      003AA2 94                    3333 	.db 0x94
      003AA3 80                    3334 	.db 0x80
      003AA4 E2                    3335 	.db 0xe2
      003AA5 94                    3336 	.db 0x94
      003AA6 80                    3337 	.db 0x80
      003AA7 E2                    3338 	.db 0xe2
      003AA8 94                    3339 	.db 0x94
      003AA9 80                    3340 	.db 0x80
      003AAA E2                    3341 	.db 0xe2
      003AAB 94                    3342 	.db 0x94
      003AAC 80                    3343 	.db 0x80
      003AAD E2                    3344 	.db 0xe2
      003AAE 94                    3345 	.db 0x94
      003AAF 80                    3346 	.db 0x80
      003AB0 E2                    3347 	.db 0xe2
      003AB1 94                    3348 	.db 0x94
      003AB2 80                    3349 	.db 0x80
      003AB3 E2                    3350 	.db 0xe2
      003AB4 94                    3351 	.db 0x94
      003AB5 80                    3352 	.db 0x80
      003AB6 E2                    3353 	.db 0xe2
      003AB7 94                    3354 	.db 0x94
      003AB8 80                    3355 	.db 0x80
      003AB9 E2                    3356 	.db 0xe2
      003ABA 94                    3357 	.db 0x94
      003ABB 80                    3358 	.db 0x80
      003ABC E2                    3359 	.db 0xe2
      003ABD 94                    3360 	.db 0x94
      003ABE 80                    3361 	.db 0x80
      003ABF E2                    3362 	.db 0xe2
      003AC0 94                    3363 	.db 0x94
      003AC1 80                    3364 	.db 0x80
      003AC2 E2                    3365 	.db 0xe2
      003AC3 94                    3366 	.db 0x94
      003AC4 80                    3367 	.db 0x80
      003AC5 E2                    3368 	.db 0xe2
      003AC6 94                    3369 	.db 0x94
      003AC7 80                    3370 	.db 0x80
      003AC8 E2                    3371 	.db 0xe2
      003AC9 94                    3372 	.db 0x94
      003ACA 80                    3373 	.db 0x80
      003ACB E2                    3374 	.db 0xe2
      003ACC 94                    3375 	.db 0x94
      003ACD 80                    3376 	.db 0x80
      003ACE E2                    3377 	.db 0xe2
      003ACF 94                    3378 	.db 0x94
      003AD0 80                    3379 	.db 0x80
      003AD1 E2                    3380 	.db 0xe2
      003AD2 94                    3381 	.db 0x94
      003AD3 80                    3382 	.db 0x80
      003AD4 E2                    3383 	.db 0xe2
      003AD5 94                    3384 	.db 0x94
      003AD6 80                    3385 	.db 0x80
      003AD7 E2                    3386 	.db 0xe2
      003AD8 94                    3387 	.db 0x94
      003AD9 80                    3388 	.db 0x80
      003ADA E2                    3389 	.db 0xe2
      003ADB 94                    3390 	.db 0x94
      003ADC A4                    3391 	.db 0xa4
      003ADD 0A                    3392 	.db 0x0a
      003ADE 0D                    3393 	.db 0x0d
      003ADF 00                    3394 	.db 0x00
                                   3395 	.area CSEG    (CODE)
                                   3396 	.area CONST   (CODE)
      003AE0                       3397 ___str_5:
      003AE0 E2                    3398 	.db 0xe2
      003AE1 94                    3399 	.db 0x94
      003AE2 82                    3400 	.db 0x82
      003AE3 20 20 20 20 4D 20 20  3401 	.ascii "    M      "
             20 20 20 20
      003AEE E2                    3402 	.db 0xe2
      003AEF 94                    3403 	.db 0x94
      003AF0 82                    3404 	.db 0x82
      003AF1 20 4D 61 6E 75 61 6C  3405 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003B21 E2                    3406 	.db 0xe2
      003B22 94                    3407 	.db 0x94
      003B23 82                    3408 	.db 0x82
      003B24 0A                    3409 	.db 0x0a
      003B25 0D                    3410 	.db 0x0d
      003B26 00                    3411 	.db 0x00
                                   3412 	.area CSEG    (CODE)
                                   3413 	.area CONST   (CODE)
      003B27                       3414 ___str_6:
      003B27 E2                    3415 	.db 0xe2
      003B28 94                    3416 	.db 0x94
      003B29 82                    3417 	.db 0x82
      003B2A 20 20 20 20 42 20 20  3418 	.ascii "    B      "
             20 20 20 20
      003B35 E2                    3419 	.db 0xe2
      003B36 94                    3420 	.db 0x94
      003B37 82                    3421 	.db 0x82
      003B38 20 42 69 74 20 42 61  3422 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B67 E2                    3423 	.db 0xe2
      003B68 94                    3424 	.db 0x94
      003B69 82                    3425 	.db 0x82
      003B6A 0A                    3426 	.db 0x0a
      003B6B 0D                    3427 	.db 0x0d
      003B6C 00                    3428 	.db 0x00
                                   3429 	.area CSEG    (CODE)
                                   3430 	.area CONST   (CODE)
      003B6D                       3431 ___str_7:
      003B6D E2                    3432 	.db 0xe2
      003B6E 94                    3433 	.db 0x94
      003B6F 82                    3434 	.db 0x82
      003B70 20 20 20 20 53 20 20  3435 	.ascii "    S      "
             20 20 20 20
      003B7B E2                    3436 	.db 0xe2
      003B7C 94                    3437 	.db 0x94
      003B7D 82                    3438 	.db 0x82
      003B7E 20 47 65 6E 65 72 61  3439 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BAD E2                    3440 	.db 0xe2
      003BAE 94                    3441 	.db 0x94
      003BAF 82                    3442 	.db 0x82
      003BB0 0A                    3443 	.db 0x0a
      003BB1 0D                    3444 	.db 0x0d
      003BB2 00                    3445 	.db 0x00
                                   3446 	.area CSEG    (CODE)
                                   3447 	.area CONST   (CODE)
      003BB3                       3448 ___str_8:
      003BB3 E2                    3449 	.db 0xe2
      003BB4 94                    3450 	.db 0x94
      003BB5 82                    3451 	.db 0x82
      003BB6 20 20 20 20 54 20 20  3452 	.ascii "    T      "
             20 20 20 20
      003BC1 E2                    3453 	.db 0xe2
      003BC2 94                    3454 	.db 0x94
      003BC3 82                    3455 	.db 0x82
      003BC4 20 47 65 6E 65 72 61  3456 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BF3 E2                    3457 	.db 0xe2
      003BF4 94                    3458 	.db 0x94
      003BF5 82                    3459 	.db 0x82
      003BF6 0A                    3460 	.db 0x0a
      003BF7 0D                    3461 	.db 0x0d
      003BF8 00                    3462 	.db 0x00
                                   3463 	.area CSEG    (CODE)
                                   3464 	.area CONST   (CODE)
      003BF9                       3465 ___str_9:
      003BF9 E2                    3466 	.db 0xe2
      003BFA 94                    3467 	.db 0x94
      003BFB 82                    3468 	.db 0x82
      003BFC 20 20 20 20 44 20 20  3469 	.ascii "    D      "
             20 20 20 20
      003C07 E2                    3470 	.db 0xe2
      003C08 94                    3471 	.db 0x94
      003C09 82                    3472 	.db 0x82
      003C0A 20 44 65 6D 6F 20 4D  3473 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003C39 E2                    3474 	.db 0xe2
      003C3A 94                    3475 	.db 0x94
      003C3B 82                    3476 	.db 0x82
      003C3C 0A                    3477 	.db 0x0a
      003C3D 0D                    3478 	.db 0x0d
      003C3E 00                    3479 	.db 0x00
                                   3480 	.area CSEG    (CODE)
                                   3481 	.area CONST   (CODE)
      003C3F                       3482 ___str_10:
      003C3F E2                    3483 	.db 0xe2
      003C40 94                    3484 	.db 0x94
      003C41 82                    3485 	.db 0x82
      003C42 20 20 20 20 52 20 20  3486 	.ascii "    R      "
             20 20 20 20
      003C4D E2                    3487 	.db 0xe2
      003C4E 94                    3488 	.db 0x94
      003C4F 82                    3489 	.db 0x82
      003C50 20 52 61 6D 70 20 77  3490 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C7F E2                    3491 	.db 0xe2
      003C80 94                    3492 	.db 0x94
      003C81 82                    3493 	.db 0x82
      003C82 0A                    3494 	.db 0x0a
      003C83 0D                    3495 	.db 0x0d
      003C84 00                    3496 	.db 0x00
                                   3497 	.area CSEG    (CODE)
                                   3498 	.area CONST   (CODE)
      003C85                       3499 ___str_11:
      003C85 E2                    3500 	.db 0xe2
      003C86 94                    3501 	.db 0x94
      003C87 82                    3502 	.db 0x82
      003C88 20 20 20 20 3F 20 20  3503 	.ascii "    ?      "
             20 20 20 20
      003C93 E2                    3504 	.db 0xe2
      003C94 94                    3505 	.db 0x94
      003C95 82                    3506 	.db 0x82
      003C96 20 44 69 73 70 6C 61  3507 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003CC5 E2                    3508 	.db 0xe2
      003CC6 94                    3509 	.db 0x94
      003CC7 82                    3510 	.db 0x82
      003CC8 0A                    3511 	.db 0x0a
      003CC9 0D                    3512 	.db 0x0d
      003CCA 00                    3513 	.db 0x00
                                   3514 	.area CSEG    (CODE)
                                   3515 	.area CONST   (CODE)
      003CCB                       3516 ___str_12:
      003CCB E2                    3517 	.db 0xe2
      003CCC 94                    3518 	.db 0x94
      003CCD 94                    3519 	.db 0x94
      003CCE E2                    3520 	.db 0xe2
      003CCF 94                    3521 	.db 0x94
      003CD0 80                    3522 	.db 0x80
      003CD1 E2                    3523 	.db 0xe2
      003CD2 94                    3524 	.db 0x94
      003CD3 80                    3525 	.db 0x80
      003CD4 E2                    3526 	.db 0xe2
      003CD5 94                    3527 	.db 0x94
      003CD6 80                    3528 	.db 0x80
      003CD7 E2                    3529 	.db 0xe2
      003CD8 94                    3530 	.db 0x94
      003CD9 80                    3531 	.db 0x80
      003CDA E2                    3532 	.db 0xe2
      003CDB 94                    3533 	.db 0x94
      003CDC 80                    3534 	.db 0x80
      003CDD E2                    3535 	.db 0xe2
      003CDE 94                    3536 	.db 0x94
      003CDF 80                    3537 	.db 0x80
      003CE0 E2                    3538 	.db 0xe2
      003CE1 94                    3539 	.db 0x94
      003CE2 80                    3540 	.db 0x80
      003CE3 E2                    3541 	.db 0xe2
      003CE4 94                    3542 	.db 0x94
      003CE5 80                    3543 	.db 0x80
      003CE6 E2                    3544 	.db 0xe2
      003CE7 94                    3545 	.db 0x94
      003CE8 80                    3546 	.db 0x80
      003CE9 E2                    3547 	.db 0xe2
      003CEA 94                    3548 	.db 0x94
      003CEB 80                    3549 	.db 0x80
      003CEC E2                    3550 	.db 0xe2
      003CED 94                    3551 	.db 0x94
      003CEE 80                    3552 	.db 0x80
      003CEF E2                    3553 	.db 0xe2
      003CF0 94                    3554 	.db 0x94
      003CF1 B4                    3555 	.db 0xb4
      003CF2 E2                    3556 	.db 0xe2
      003CF3 94                    3557 	.db 0x94
      003CF4 80                    3558 	.db 0x80
      003CF5 E2                    3559 	.db 0xe2
      003CF6 94                    3560 	.db 0x94
      003CF7 80                    3561 	.db 0x80
      003CF8 E2                    3562 	.db 0xe2
      003CF9 94                    3563 	.db 0x94
      003CFA 80                    3564 	.db 0x80
      003CFB E2                    3565 	.db 0xe2
      003CFC 94                    3566 	.db 0x94
      003CFD 80                    3567 	.db 0x80
      003CFE E2                    3568 	.db 0xe2
      003CFF 94                    3569 	.db 0x94
      003D00 80                    3570 	.db 0x80
      003D01 E2                    3571 	.db 0xe2
      003D02 94                    3572 	.db 0x94
      003D03 80                    3573 	.db 0x80
      003D04 E2                    3574 	.db 0xe2
      003D05 94                    3575 	.db 0x94
      003D06 80                    3576 	.db 0x80
      003D07 E2                    3577 	.db 0xe2
      003D08 94                    3578 	.db 0x94
      003D09 80                    3579 	.db 0x80
      003D0A E2                    3580 	.db 0xe2
      003D0B 94                    3581 	.db 0x94
      003D0C 80                    3582 	.db 0x80
      003D0D E2                    3583 	.db 0xe2
      003D0E 94                    3584 	.db 0x94
      003D0F 80                    3585 	.db 0x80
      003D10 E2                    3586 	.db 0xe2
      003D11 94                    3587 	.db 0x94
      003D12 80                    3588 	.db 0x80
      003D13 E2                    3589 	.db 0xe2
      003D14 94                    3590 	.db 0x94
      003D15 80                    3591 	.db 0x80
      003D16 E2                    3592 	.db 0xe2
      003D17 94                    3593 	.db 0x94
      003D18 80                    3594 	.db 0x80
      003D19 E2                    3595 	.db 0xe2
      003D1A 94                    3596 	.db 0x94
      003D1B 80                    3597 	.db 0x80
      003D1C E2                    3598 	.db 0xe2
      003D1D 94                    3599 	.db 0x94
      003D1E 80                    3600 	.db 0x80
      003D1F E2                    3601 	.db 0xe2
      003D20 94                    3602 	.db 0x94
      003D21 80                    3603 	.db 0x80
      003D22 E2                    3604 	.db 0xe2
      003D23 94                    3605 	.db 0x94
      003D24 80                    3606 	.db 0x80
      003D25 E2                    3607 	.db 0xe2
      003D26 94                    3608 	.db 0x94
      003D27 80                    3609 	.db 0x80
      003D28 E2                    3610 	.db 0xe2
      003D29 94                    3611 	.db 0x94
      003D2A 80                    3612 	.db 0x80
      003D2B E2                    3613 	.db 0xe2
      003D2C 94                    3614 	.db 0x94
      003D2D 80                    3615 	.db 0x80
      003D2E E2                    3616 	.db 0xe2
      003D2F 94                    3617 	.db 0x94
      003D30 80                    3618 	.db 0x80
      003D31 E2                    3619 	.db 0xe2
      003D32 94                    3620 	.db 0x94
      003D33 80                    3621 	.db 0x80
      003D34 E2                    3622 	.db 0xe2
      003D35 94                    3623 	.db 0x94
      003D36 80                    3624 	.db 0x80
      003D37 E2                    3625 	.db 0xe2
      003D38 94                    3626 	.db 0x94
      003D39 80                    3627 	.db 0x80
      003D3A E2                    3628 	.db 0xe2
      003D3B 94                    3629 	.db 0x94
      003D3C 80                    3630 	.db 0x80
      003D3D E2                    3631 	.db 0xe2
      003D3E 94                    3632 	.db 0x94
      003D3F 80                    3633 	.db 0x80
      003D40 E2                    3634 	.db 0xe2
      003D41 94                    3635 	.db 0x94
      003D42 80                    3636 	.db 0x80
      003D43 E2                    3637 	.db 0xe2
      003D44 94                    3638 	.db 0x94
      003D45 80                    3639 	.db 0x80
      003D46 E2                    3640 	.db 0xe2
      003D47 94                    3641 	.db 0x94
      003D48 80                    3642 	.db 0x80
      003D49 E2                    3643 	.db 0xe2
      003D4A 94                    3644 	.db 0x94
      003D4B 80                    3645 	.db 0x80
      003D4C E2                    3646 	.db 0xe2
      003D4D 94                    3647 	.db 0x94
      003D4E 80                    3648 	.db 0x80
      003D4F E2                    3649 	.db 0xe2
      003D50 94                    3650 	.db 0x94
      003D51 80                    3651 	.db 0x80
      003D52 E2                    3652 	.db 0xe2
      003D53 94                    3653 	.db 0x94
      003D54 80                    3654 	.db 0x80
      003D55 E2                    3655 	.db 0xe2
      003D56 94                    3656 	.db 0x94
      003D57 80                    3657 	.db 0x80
      003D58 E2                    3658 	.db 0xe2
      003D59 94                    3659 	.db 0x94
      003D5A 80                    3660 	.db 0x80
      003D5B E2                    3661 	.db 0xe2
      003D5C 94                    3662 	.db 0x94
      003D5D 80                    3663 	.db 0x80
      003D5E E2                    3664 	.db 0xe2
      003D5F 94                    3665 	.db 0x94
      003D60 80                    3666 	.db 0x80
      003D61 E2                    3667 	.db 0xe2
      003D62 94                    3668 	.db 0x94
      003D63 80                    3669 	.db 0x80
      003D64 E2                    3670 	.db 0xe2
      003D65 94                    3671 	.db 0x94
      003D66 80                    3672 	.db 0x80
      003D67 E2                    3673 	.db 0xe2
      003D68 94                    3674 	.db 0x94
      003D69 80                    3675 	.db 0x80
      003D6A E2                    3676 	.db 0xe2
      003D6B 94                    3677 	.db 0x94
      003D6C 80                    3678 	.db 0x80
      003D6D E2                    3679 	.db 0xe2
      003D6E 94                    3680 	.db 0x94
      003D6F 80                    3681 	.db 0x80
      003D70 E2                    3682 	.db 0xe2
      003D71 94                    3683 	.db 0x94
      003D72 80                    3684 	.db 0x80
      003D73 E2                    3685 	.db 0xe2
      003D74 94                    3686 	.db 0x94
      003D75 80                    3687 	.db 0x80
      003D76 E2                    3688 	.db 0xe2
      003D77 94                    3689 	.db 0x94
      003D78 80                    3690 	.db 0x80
      003D79 E2                    3691 	.db 0xe2
      003D7A 94                    3692 	.db 0x94
      003D7B 80                    3693 	.db 0x80
      003D7C E2                    3694 	.db 0xe2
      003D7D 94                    3695 	.db 0x94
      003D7E 80                    3696 	.db 0x80
      003D7F E2                    3697 	.db 0xe2
      003D80 94                    3698 	.db 0x94
      003D81 98                    3699 	.db 0x98
      003D82 0A                    3700 	.db 0x0a
      003D83 0D                    3701 	.db 0x0d
      003D84 00                    3702 	.db 0x00
                                   3703 	.area CSEG    (CODE)
                                   3704 	.area CONST   (CODE)
      003D85                       3705 ___str_13:
      003D85 0A                    3706 	.db 0x0a
      003D86 0D                    3707 	.db 0x0d
      003D87 45 6E 74 65 72 20 63  3708 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003D96 00                    3709 	.db 0x00
                                   3710 	.area CSEG    (CODE)
                                   3711 	.area CONST   (CODE)
      003D97                       3712 ___str_14:
      003D97 7C 20 24 20 25 63     3713 	.ascii "| $ %c"
      003D9D 0A                    3714 	.db 0x0a
      003D9E 0D                    3715 	.db 0x0d
      003D9F 00                    3716 	.db 0x00
                                   3717 	.area CSEG    (CODE)
                                   3718 	.area CONST   (CODE)
      003DA0                       3719 ___str_15:
      003DA0 0A                    3720 	.db 0x0a
      003DA1 0D                    3721 	.db 0x0d
      003DA2 00                    3722 	.db 0x00
                                   3723 	.area CSEG    (CODE)
                                   3724 	.area CONST   (CODE)
      003DA3                       3725 ___str_16:
      003DA3 3E 3E 20 53 49 4E 45  3726 	.ascii ">> SINE WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003DC3 0A                    3727 	.db 0x0a
      003DC4 0D                    3728 	.db 0x0d
      003DC5 00                    3729 	.db 0x00
                                   3730 	.area CSEG    (CODE)
                                   3731 	.area CONST   (CODE)
      003DC6                       3732 ___str_17:
      003DC6 3E 3E 20 53 51 55 41  3733 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003DE8 0A                    3734 	.db 0x0a
      003DE9 0D                    3735 	.db 0x0d
      003DEA 00                    3736 	.db 0x00
                                   3737 	.area CSEG    (CODE)
                                   3738 	.area CONST   (CODE)
      003DEB                       3739 ___str_18:
      003DEB 3E 3E 20 49 4E 56 41  3740 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003DFB 0A                    3741 	.db 0x0a
      003DFC 0D                    3742 	.db 0x0d
      003DFD 00                    3743 	.db 0x00
                                   3744 	.area CSEG    (CODE)
                                   3745 	.area CONST   (CODE)
      003DFE                       3746 ___str_19:
      003DFE E2                    3747 	.db 0xe2
      003DFF 94                    3748 	.db 0x94
      003E00 82                    3749 	.db 0x82
      003E01 20 45 6E 74 65 72 20  3750 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003E25 0A                    3751 	.db 0x0a
      003E26 0D                    3752 	.db 0x0d
      003E27 7C                    3753 	.ascii "|"
      003E28 00                    3754 	.db 0x00
                                   3755 	.area CSEG    (CODE)
                                   3756 	.area CONST   (CODE)
      003E29                       3757 ___str_20:
      003E29 24 20                 3758 	.ascii "$ "
      003E2B 00                    3759 	.db 0x00
                                   3760 	.area CSEG    (CODE)
                                   3761 	.area CONST   (CODE)
      003E2C                       3762 ___str_21:
      003E2C 0A                    3763 	.db 0x0a
      003E2D 0D                    3764 	.db 0x0d
      003E2E E2                    3765 	.db 0xe2
      003E2F 94                    3766 	.db 0x94
      003E30 82                    3767 	.db 0x82
      003E31 20 45 6E 74 65 72 65  3768 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003E46 0A                    3769 	.db 0x0a
      003E47 0D                    3770 	.db 0x0d
      003E48 00                    3771 	.db 0x00
                                   3772 	.area CSEG    (CODE)
                                   3773 	.area CONST   (CODE)
      003E49                       3774 ___str_22:
      003E49 0D                    3775 	.db 0x0d
      003E4A 0A                    3776 	.db 0x0a
      003E4B 20 49 6E 73 69 64 65  3777 	.ascii " Inside Manual SPI"
             20 4D 61 6E 75 61 6C
             20 53 50 49
      003E5D 00                    3778 	.db 0x00
                                   3779 	.area CSEG    (CODE)
                                   3780 	.area CONST   (CODE)
      003E5E                       3781 ___str_23:
      003E5E 25 64                 3782 	.ascii "%d"
      003E60 0A                    3783 	.db 0x0a
      003E61 0D                    3784 	.db 0x0d
      003E62 00                    3785 	.db 0x00
                                   3786 	.area CSEG    (CODE)
                                   3787 	.area CONST   (CODE)
      003E63                       3788 ___str_24:
      003E63 0D                    3789 	.db 0x0d
      003E64 0A                    3790 	.db 0x0a
      003E65 20 4E 75 6D 62 65 72  3791 	.ascii " Number is %d"
             20 69 73 20 25 64
      003E72 00                    3792 	.db 0x00
                                   3793 	.area CSEG    (CODE)
                                   3794 	.area XINIT   (CODE)
      003E7E                       3795 __xinit__ms_flag:
      003E7E 00                    3796 	.db #0x00	; 0
      003E7F                       3797 __xinit__transmission_complete:
      003E7F 00 00                 3798 	.byte #0x00, #0x00	;  0
                                   3799 	.area CABS    (ABS,CODE)
