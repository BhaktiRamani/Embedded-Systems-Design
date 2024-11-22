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
      0020C2 74 55            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 38            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 F3         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 1A            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 39            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 F3         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 61            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 F3         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 24            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 3A            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 F3         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 6D            [12]  733 	mov	a,#___str_4
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 3A            [12]  735 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 F3         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 27            [12]  744 	mov	a,#___str_5
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3B            [12]  746 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 F3         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 6E            [12]  755 	mov	a,#___str_6
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3B            [12]  757 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 F3         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 B4            [12]  766 	mov	a,#___str_7
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 F3         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 FA            [12]  777 	mov	a,#___str_8
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 F3         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 40            [12]  788 	mov	a,#___str_9
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3C            [12]  790 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 F3         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 86            [12]  799 	mov	a,#___str_10
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3C            [12]  801 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 F3         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 CC            [12]  810 	mov	a,#___str_11
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 F3         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 12            [12]  821 	mov	a,#___str_12
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3D            [12]  823 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 27 F3         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 CC            [12]  832 	mov	a,#___str_13
      0021D5 C0 E0            [24]  833 	push	acc
      0021D7 74 3D            [12]  834 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  835 	push	acc
      0021DB 74 80            [12]  836 	mov	a,#0x80
      0021DD C0 E0            [24]  837 	push	acc
      0021DF 12 27 F3         [24]  838 	lcall	_printf
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
                                    860 ;result                    Allocated with name '_main_result_196609_39'
                                    861 ;result2                   Allocated with name '_main_result2_262146_41'
                                    862 ;------------------------------------------------------------
                                    863 ;	spi_and_bit_banging.c:260: int main(void)
                                    864 ;	-----------------------------------------
                                    865 ;	 function main
                                    866 ;	-----------------------------------------
      0021ED                        867 _main:
                                    868 ;	spi_and_bit_banging.c:262: display_menu();
      0021ED 12 20 C2         [24]  869 	lcall	_display_menu
                                    870 ;	spi_and_bit_banging.c:264: while(1)
      0021F0                        871 00106$:
                                    872 ;	spi_and_bit_banging.c:266: char user_input = getchar();
      0021F0 12 20 81         [24]  873 	lcall	_getchar
      0021F3 AE 82            [24]  874 	mov	r6,dpl
                                    875 ;	spi_and_bit_banging.c:267: printf("| $ %c\n\r", user_input);
      0021F5 8E 05            [24]  876 	mov	ar5,r6
      0021F7 7F 00            [12]  877 	mov	r7,#0x00
      0021F9 C0 06            [24]  878 	push	ar6
      0021FB C0 05            [24]  879 	push	ar5
      0021FD C0 07            [24]  880 	push	ar7
      0021FF 74 DE            [12]  881 	mov	a,#___str_14
      002201 C0 E0            [24]  882 	push	acc
      002203 74 3D            [12]  883 	mov	a,#(___str_14 >> 8)
      002205 C0 E0            [24]  884 	push	acc
      002207 74 80            [12]  885 	mov	a,#0x80
      002209 C0 E0            [24]  886 	push	acc
      00220B 12 27 F3         [24]  887 	lcall	_printf
      00220E E5 81            [12]  888 	mov	a,sp
      002210 24 FB            [12]  889 	add	a,#0xfb
      002212 F5 81            [12]  890 	mov	sp,a
                                    891 ;	spi_and_bit_banging.c:268: printf("\n\r");
      002214 74 E7            [12]  892 	mov	a,#___str_15
      002216 C0 E0            [24]  893 	push	acc
      002218 74 3D            [12]  894 	mov	a,#(___str_15 >> 8)
      00221A C0 E0            [24]  895 	push	acc
      00221C 74 80            [12]  896 	mov	a,#0x80
      00221E C0 E0            [24]  897 	push	acc
      002220 12 27 F3         [24]  898 	lcall	_printf
      002223 15 81            [12]  899 	dec	sp
      002225 15 81            [12]  900 	dec	sp
      002227 15 81            [12]  901 	dec	sp
      002229 D0 06            [24]  902 	pop	ar6
                                    903 ;	spi_and_bit_banging.c:269: switch(user_input)
      00222B BE 42 02         [24]  904 	cjne	r6,#0x42,00122$
      00222E 80 26            [24]  905 	sjmp	00102$
      002230                        906 00122$:
      002230 BE 4D 44         [24]  907 	cjne	r6,#0x4d,00103$
                                    908 ;	spi_and_bit_banging.c:272: spi_init();
      002233 12 25 85         [24]  909 	lcall	_spi_init
                                    910 ;	spi_and_bit_banging.c:273: unsigned char result = take_data();
      002236 12 22 DA         [24]  911 	lcall	_take_data
                                    912 ;	spi_and_bit_banging.c:274: mannual_spi(result);
      002239 12 24 2E         [24]  913 	lcall	_mannual_spi
                                    914 ;	spi_and_bit_banging.c:275: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00223C 74 EA            [12]  915 	mov	a,#___str_16
      00223E C0 E0            [24]  916 	push	acc
      002240 74 3D            [12]  917 	mov	a,#(___str_16 >> 8)
      002242 C0 E0            [24]  918 	push	acc
      002244 74 80            [12]  919 	mov	a,#0x80
      002246 C0 E0            [24]  920 	push	acc
      002248 12 27 F3         [24]  921 	lcall	_printf
      00224B 15 81            [12]  922 	dec	sp
      00224D 15 81            [12]  923 	dec	sp
      00224F 15 81            [12]  924 	dec	sp
                                    925 ;	spi_and_bit_banging.c:276: spi_transmission_stop();
      002251 12 21 E9         [24]  926 	lcall	_spi_transmission_stop
                                    927 ;	spi_and_bit_banging.c:277: break;
                                    928 ;	spi_and_bit_banging.c:279: case 'B':
      002254 80 9A            [24]  929 	sjmp	00106$
      002256                        930 00102$:
                                    931 ;	spi_and_bit_banging.c:281: bit_bang_spi_init();
      002256 12 25 8F         [24]  932 	lcall	_bit_bang_spi_init
                                    933 ;	spi_and_bit_banging.c:282: unsigned char result2 = take_data();
      002259 12 22 DA         [24]  934 	lcall	_take_data
                                    935 ;	spi_and_bit_banging.c:283: bit_bang_spi(result2);
      00225C 12 22 A7         [24]  936 	lcall	_bit_bang_spi
                                    937 ;	spi_and_bit_banging.c:284: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00225F 74 0C            [12]  938 	mov	a,#___str_17
      002261 C0 E0            [24]  939 	push	acc
      002263 74 3E            [12]  940 	mov	a,#(___str_17 >> 8)
      002265 C0 E0            [24]  941 	push	acc
      002267 74 80            [12]  942 	mov	a,#0x80
      002269 C0 E0            [24]  943 	push	acc
      00226B 12 27 F3         [24]  944 	lcall	_printf
      00226E 15 81            [12]  945 	dec	sp
      002270 15 81            [12]  946 	dec	sp
      002272 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:286: break;
      002274 02 21 F0         [24]  949 	ljmp	00106$
                                    950 ;	spi_and_bit_banging.c:326: default:
      002277                        951 00103$:
                                    952 ;	spi_and_bit_banging.c:327: printf(">> INVALID INPUT\n\r");
      002277 74 31            [12]  953 	mov	a,#___str_18
      002279 C0 E0            [24]  954 	push	acc
      00227B 74 3E            [12]  955 	mov	a,#(___str_18 >> 8)
      00227D C0 E0            [24]  956 	push	acc
      00227F 74 80            [12]  957 	mov	a,#0x80
      002281 C0 E0            [24]  958 	push	acc
      002283 12 27 F3         [24]  959 	lcall	_printf
      002286 15 81            [12]  960 	dec	sp
      002288 15 81            [12]  961 	dec	sp
      00228A 15 81            [12]  962 	dec	sp
                                    963 ;	spi_and_bit_banging.c:332: }
                                    964 ;	spi_and_bit_banging.c:334: }
      00228C 02 21 F0         [24]  965 	ljmp	00106$
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'demo_mode'
                                    968 ;------------------------------------------------------------
                                    969 ;	spi_and_bit_banging.c:340: void demo_mode()
                                    970 ;	-----------------------------------------
                                    971 ;	 function demo_mode
                                    972 ;	-----------------------------------------
      00228F                        973 _demo_mode:
                                    974 ;	spi_and_bit_banging.c:342: mannual_spi(7);
      00228F 75 82 07         [24]  975 	mov	dpl,#0x07
      002292 12 24 2E         [24]  976 	lcall	_mannual_spi
                                    977 ;	spi_and_bit_banging.c:343: bit_bang_spi(7);
      002295 75 82 07         [24]  978 	mov	dpl,#0x07
      002298 12 22 A7         [24]  979 	lcall	_bit_bang_spi
                                    980 ;	spi_and_bit_banging.c:344: spi_ramp_signal(7);
      00229B 90 00 07         [24]  981 	mov	dptr,#0x0007
      00229E 12 26 C7         [24]  982 	lcall	_spi_ramp_signal
                                    983 ;	spi_and_bit_banging.c:345: spi_triangular_wave(7);
      0022A1 90 00 07         [24]  984 	mov	dptr,#0x0007
                                    985 ;	spi_and_bit_banging.c:346: }
      0022A4 02 25 E9         [24]  986 	ljmp	_spi_triangular_wave
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'bit_bang_spi'
                                    989 ;------------------------------------------------------------
                                    990 ;number                    Allocated with name '_bit_bang_spi_number_65536_43'
                                    991 ;------------------------------------------------------------
                                    992 ;	spi_and_bit_banging.c:350: void bit_bang_spi(unsigned char number)
                                    993 ;	-----------------------------------------
                                    994 ;	 function bit_bang_spi
                                    995 ;	-----------------------------------------
      0022A7                        996 _bit_bang_spi:
      0022A7 E5 82            [12]  997 	mov	a,dpl
      0022A9 90 04 04         [24]  998 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022AC F0               [24]  999 	movx	@dptr,a
                                   1000 ;	spi_and_bit_banging.c:352: while(number > 0)
      0022AD                       1001 00101$:
      0022AD 90 04 04         [24] 1002 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022B0 E0               [24] 1003 	movx	a,@dptr
      0022B1 FF               [12] 1004 	mov	r7,a
      0022B2 E0               [24] 1005 	movx	a,@dptr
      0022B3 60 24            [24] 1006 	jz	00104$
                                   1007 ;	spi_and_bit_banging.c:354: bit_bang_spi_write(TEST_DATA);
      0022B5 90 1F F0         [24] 1008 	mov	dptr,#0x1ff0
      0022B8 C0 07            [24] 1009 	push	ar7
      0022BA 12 25 99         [24] 1010 	lcall	_bit_bang_spi_write
                                   1011 ;	spi_and_bit_banging.c:355: delay_ms(DELAY_PERIOD);
      0022BD 90 01 F4         [24] 1012 	mov	dptr,#0x01f4
      0022C0 12 20 8F         [24] 1013 	lcall	_delay_ms
                                   1014 ;	spi_and_bit_banging.c:356: bit_bang_spi_write(IDLE_DATA);
      0022C3 90 10 00         [24] 1015 	mov	dptr,#0x1000
      0022C6 12 25 99         [24] 1016 	lcall	_bit_bang_spi_write
                                   1017 ;	spi_and_bit_banging.c:357: delay_ms(DELAY_PERIOD);
      0022C9 90 01 F4         [24] 1018 	mov	dptr,#0x01f4
      0022CC 12 20 8F         [24] 1019 	lcall	_delay_ms
      0022CF D0 07            [24] 1020 	pop	ar7
                                   1021 ;	spi_and_bit_banging.c:358: number = number - 1;
      0022D1 EF               [12] 1022 	mov	a,r7
      0022D2 14               [12] 1023 	dec	a
      0022D3 90 04 04         [24] 1024 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022D6 F0               [24] 1025 	movx	@dptr,a
      0022D7 80 D4            [24] 1026 	sjmp	00101$
      0022D9                       1027 00104$:
                                   1028 ;	spi_and_bit_banging.c:360: }
      0022D9 22               [24] 1029 	ret
                                   1030 ;------------------------------------------------------------
                                   1031 ;Allocation info for local variables in function 'take_data'
                                   1032 ;------------------------------------------------------------
                                   1033 ;input                     Allocated with name '_take_data_input_65537_47'
                                   1034 ;i                         Allocated with name '_take_data_i_65537_47'
                                   1035 ;c                         Allocated with name '_take_data_c_65537_47'
                                   1036 ;data                      Allocated with name '_take_data_data_65538_51'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	spi_and_bit_banging.c:361: unsigned char take_data()
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function take_data
                                   1041 ;	-----------------------------------------
      0022DA                       1042 _take_data:
                                   1043 ;	spi_and_bit_banging.c:363: printf("│ Enter number (up to 2 characters): \n\r|");
      0022DA 74 44            [12] 1044 	mov	a,#___str_19
      0022DC C0 E0            [24] 1045 	push	acc
      0022DE 74 3E            [12] 1046 	mov	a,#(___str_19 >> 8)
      0022E0 C0 E0            [24] 1047 	push	acc
      0022E2 74 80            [12] 1048 	mov	a,#0x80
      0022E4 C0 E0            [24] 1049 	push	acc
      0022E6 12 27 F3         [24] 1050 	lcall	_printf
      0022E9 15 81            [12] 1051 	dec	sp
      0022EB 15 81            [12] 1052 	dec	sp
      0022ED 15 81            [12] 1053 	dec	sp
                                   1054 ;	spi_and_bit_banging.c:364: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0022EF 90 04 05         [24] 1055 	mov	dptr,#_take_data_input_65537_47
      0022F2 E4               [12] 1056 	clr	a
      0022F3 F0               [24] 1057 	movx	@dptr,a
      0022F4 90 04 06         [24] 1058 	mov	dptr,#(_take_data_input_65537_47 + 0x0001)
      0022F7 F0               [24] 1059 	movx	@dptr,a
      0022F8 90 04 07         [24] 1060 	mov	dptr,#(_take_data_input_65537_47 + 0x0002)
      0022FB F0               [24] 1061 	movx	@dptr,a
      0022FC 90 04 08         [24] 1062 	mov	dptr,#(_take_data_input_65537_47 + 0x0003)
      0022FF F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	spi_and_bit_banging.c:368: printf("$ ");
      002300 74 6F            [12] 1065 	mov	a,#___str_20
      002302 C0 E0            [24] 1066 	push	acc
      002304 74 3E            [12] 1067 	mov	a,#(___str_20 >> 8)
      002306 C0 E0            [24] 1068 	push	acc
      002308 74 80            [12] 1069 	mov	a,#0x80
      00230A C0 E0            [24] 1070 	push	acc
      00230C 12 27 F3         [24] 1071 	lcall	_printf
      00230F 15 81            [12] 1072 	dec	sp
      002311 15 81            [12] 1073 	dec	sp
      002313 15 81            [12] 1074 	dec	sp
                                   1075 ;	spi_and_bit_banging.c:370: while (i < 3) {
      002315 7E 00            [12] 1076 	mov	r6,#0x00
      002317 7F 00            [12] 1077 	mov	r7,#0x00
      002319                       1078 00111$:
      002319 C3               [12] 1079 	clr	c
      00231A EE               [12] 1080 	mov	a,r6
      00231B 94 03            [12] 1081 	subb	a,#0x03
      00231D EF               [12] 1082 	mov	a,r7
      00231E 64 80            [12] 1083 	xrl	a,#0x80
      002320 94 80            [12] 1084 	subb	a,#0x80
      002322 50 5B            [24] 1085 	jnc	00113$
                                   1086 ;	spi_and_bit_banging.c:372: c = getchar();
      002324 C0 07            [24] 1087 	push	ar7
      002326 C0 06            [24] 1088 	push	ar6
      002328 12 20 81         [24] 1089 	lcall	_getchar
      00232B AC 82            [24] 1090 	mov	r4,dpl
      00232D AD 83            [24] 1091 	mov	r5,dph
      00232F D0 06            [24] 1092 	pop	ar6
      002331 D0 07            [24] 1093 	pop	ar7
                                   1094 ;	spi_and_bit_banging.c:375: if (c == '\r' || c == '\n') {
      002333 BC 0D 02         [24] 1095 	cjne	r4,#0x0d,00194$
      002336 80 47            [24] 1096 	sjmp	00113$
      002338                       1097 00194$:
      002338 BC 0A 02         [24] 1098 	cjne	r4,#0x0a,00195$
      00233B 80 42            [24] 1099 	sjmp	00113$
      00233D                       1100 00195$:
                                   1101 ;	spi_and_bit_banging.c:380: if ((c >= '0' && c <= '9') ||
      00233D BC 30 00         [24] 1102 	cjne	r4,#0x30,00196$
      002340                       1103 00196$:
      002340 40 05            [24] 1104 	jc	00108$
      002342 EC               [12] 1105 	mov	a,r4
      002343 24 C6            [12] 1106 	add	a,#0xff - 0x39
      002345 50 14            [24] 1107 	jnc	00104$
      002347                       1108 00108$:
                                   1109 ;	spi_and_bit_banging.c:381: (c >= 'a' && c <= 'f') ||
      002347 BC 61 00         [24] 1110 	cjne	r4,#0x61,00199$
      00234A                       1111 00199$:
      00234A 40 05            [24] 1112 	jc	00110$
      00234C EC               [12] 1113 	mov	a,r4
      00234D 24 99            [12] 1114 	add	a,#0xff - 0x66
      00234F 50 0A            [24] 1115 	jnc	00104$
      002351                       1116 00110$:
                                   1117 ;	spi_and_bit_banging.c:382: (c >= 'A' && c <= 'F')) {
      002351 BC 41 00         [24] 1118 	cjne	r4,#0x41,00202$
      002354                       1119 00202$:
      002354 40 C3            [24] 1120 	jc	00111$
      002356 EC               [12] 1121 	mov	a,r4
      002357 24 B9            [12] 1122 	add	a,#0xff - 0x46
      002359 40 BE            [24] 1123 	jc	00111$
      00235B                       1124 00104$:
                                   1125 ;	spi_and_bit_banging.c:384: input[i] = c;
      00235B EE               [12] 1126 	mov	a,r6
      00235C 24 05            [12] 1127 	add	a,#_take_data_input_65537_47
      00235E F5 82            [12] 1128 	mov	dpl,a
      002360 EF               [12] 1129 	mov	a,r7
      002361 34 04            [12] 1130 	addc	a,#(_take_data_input_65537_47 >> 8)
      002363 F5 83            [12] 1131 	mov	dph,a
      002365 EC               [12] 1132 	mov	a,r4
      002366 F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	spi_and_bit_banging.c:385: putchar(c);  // Echo character back
      002367 7D 00            [12] 1135 	mov	r5,#0x00
      002369 8C 82            [24] 1136 	mov	dpl,r4
      00236B 8D 83            [24] 1137 	mov	dph,r5
      00236D C0 07            [24] 1138 	push	ar7
      00236F C0 06            [24] 1139 	push	ar6
      002371 12 20 62         [24] 1140 	lcall	_putchar
      002374 D0 06            [24] 1141 	pop	ar6
      002376 D0 07            [24] 1142 	pop	ar7
                                   1143 ;	spi_and_bit_banging.c:386: i++;
      002378 0E               [12] 1144 	inc	r6
      002379 BE 00 9D         [24] 1145 	cjne	r6,#0x00,00111$
      00237C 0F               [12] 1146 	inc	r7
      00237D 80 9A            [24] 1147 	sjmp	00111$
      00237F                       1148 00113$:
                                   1149 ;	spi_and_bit_banging.c:390: input[i] = '\0';  // Null-terminate the string
      00237F EE               [12] 1150 	mov	a,r6
      002380 24 05            [12] 1151 	add	a,#_take_data_input_65537_47
      002382 F5 82            [12] 1152 	mov	dpl,a
      002384 EF               [12] 1153 	mov	a,r7
      002385 34 04            [12] 1154 	addc	a,#(_take_data_input_65537_47 >> 8)
      002387 F5 83            [12] 1155 	mov	dph,a
      002389 E4               [12] 1156 	clr	a
      00238A F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	spi_and_bit_banging.c:393: unsigned char data = 0;
      00238B 90 04 09         [24] 1159 	mov	dptr,#_take_data_data_65538_51
      00238E F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
      00238F 7E 00            [12] 1162 	mov	r6,#0x00
      002391 7F 00            [12] 1163 	mov	r7,#0x00
      002393                       1164 00127$:
      002393 EE               [12] 1165 	mov	a,r6
      002394 24 05            [12] 1166 	add	a,#_take_data_input_65537_47
      002396 F5 82            [12] 1167 	mov	dpl,a
      002398 EF               [12] 1168 	mov	a,r7
      002399 34 04            [12] 1169 	addc	a,#(_take_data_input_65537_47 >> 8)
      00239B F5 83            [12] 1170 	mov	dph,a
      00239D E0               [24] 1171 	movx	a,@dptr
      00239E FD               [12] 1172 	mov	r5,a
      00239F 70 03            [24] 1173 	jnz	00206$
      0023A1 02 24 06         [24] 1174 	ljmp	00125$
      0023A4                       1175 00206$:
                                   1176 ;	spi_and_bit_banging.c:395: data = data * 16;
      0023A4 90 04 09         [24] 1177 	mov	dptr,#_take_data_data_65538_51
      0023A7 E0               [24] 1178 	movx	a,@dptr
      0023A8 C4               [12] 1179 	swap	a
      0023A9 54 F0            [12] 1180 	anl	a,#0xf0
      0023AB FC               [12] 1181 	mov	r4,a
      0023AC F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	spi_and_bit_banging.c:396: if (input[i] >= '0' && input[i] <= '9')
      0023AD BD 30 00         [24] 1184 	cjne	r5,#0x30,00207$
      0023B0                       1185 00207$:
      0023B0 40 12            [24] 1186 	jc	00122$
      0023B2 ED               [12] 1187 	mov	a,r5
      0023B3 24 C6            [12] 1188 	add	a,#0xff - 0x39
      0023B5 40 0D            [24] 1189 	jc	00122$
                                   1190 ;	spi_and_bit_banging.c:397: data += input[i] - '0';
      0023B7 ED               [12] 1191 	mov	a,r5
      0023B8 24 D0            [12] 1192 	add	a,#0xd0
      0023BA FD               [12] 1193 	mov	r5,a
      0023BB 90 04 09         [24] 1194 	mov	dptr,#_take_data_data_65538_51
      0023BE E0               [24] 1195 	movx	a,@dptr
      0023BF FC               [12] 1196 	mov	r4,a
      0023C0 2D               [12] 1197 	add	a,r5
      0023C1 F0               [24] 1198 	movx	@dptr,a
      0023C2 80 3A            [24] 1199 	sjmp	00128$
      0023C4                       1200 00122$:
                                   1201 ;	spi_and_bit_banging.c:398: else if (input[i] >= 'A' && input[i] <= 'F')
      0023C4 EE               [12] 1202 	mov	a,r6
      0023C5 24 05            [12] 1203 	add	a,#_take_data_input_65537_47
      0023C7 F5 82            [12] 1204 	mov	dpl,a
      0023C9 EF               [12] 1205 	mov	a,r7
      0023CA 34 04            [12] 1206 	addc	a,#(_take_data_input_65537_47 >> 8)
      0023CC F5 83            [12] 1207 	mov	dph,a
      0023CE E0               [24] 1208 	movx	a,@dptr
      0023CF FD               [12] 1209 	mov	r5,a
      0023D0 BD 41 00         [24] 1210 	cjne	r5,#0x41,00210$
      0023D3                       1211 00210$:
      0023D3 40 14            [24] 1212 	jc	00118$
      0023D5 ED               [12] 1213 	mov	a,r5
      0023D6 24 B9            [12] 1214 	add	a,#0xff - 0x46
      0023D8 40 0F            [24] 1215 	jc	00118$
                                   1216 ;	spi_and_bit_banging.c:399: data += input[i] - 'A' + 10;
      0023DA 8D 04            [24] 1217 	mov	ar4,r5
      0023DC 74 C9            [12] 1218 	mov	a,#0xc9
      0023DE 2C               [12] 1219 	add	a,r4
      0023DF FC               [12] 1220 	mov	r4,a
      0023E0 90 04 09         [24] 1221 	mov	dptr,#_take_data_data_65538_51
      0023E3 E0               [24] 1222 	movx	a,@dptr
      0023E4 FB               [12] 1223 	mov	r3,a
      0023E5 2C               [12] 1224 	add	a,r4
      0023E6 F0               [24] 1225 	movx	@dptr,a
      0023E7 80 15            [24] 1226 	sjmp	00128$
      0023E9                       1227 00118$:
                                   1228 ;	spi_and_bit_banging.c:400: else if (input[i] >= 'a' && input[i] <= 'f')
      0023E9 BD 61 00         [24] 1229 	cjne	r5,#0x61,00213$
      0023EC                       1230 00213$:
      0023EC 40 10            [24] 1231 	jc	00128$
      0023EE ED               [12] 1232 	mov	a,r5
      0023EF 24 99            [12] 1233 	add	a,#0xff - 0x66
      0023F1 40 0B            [24] 1234 	jc	00128$
                                   1235 ;	spi_and_bit_banging.c:401: data += input[i] - 'a' + 10;
      0023F3 74 A9            [12] 1236 	mov	a,#0xa9
      0023F5 2D               [12] 1237 	add	a,r5
      0023F6 FD               [12] 1238 	mov	r5,a
      0023F7 90 04 09         [24] 1239 	mov	dptr,#_take_data_data_65538_51
      0023FA E0               [24] 1240 	movx	a,@dptr
      0023FB FC               [12] 1241 	mov	r4,a
      0023FC 2D               [12] 1242 	add	a,r5
      0023FD F0               [24] 1243 	movx	@dptr,a
      0023FE                       1244 00128$:
                                   1245 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
      0023FE 0E               [12] 1246 	inc	r6
      0023FF BE 00 01         [24] 1247 	cjne	r6,#0x00,00216$
      002402 0F               [12] 1248 	inc	r7
      002403                       1249 00216$:
      002403 02 23 93         [24] 1250 	ljmp	00127$
      002406                       1251 00125$:
                                   1252 ;	spi_and_bit_banging.c:404: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      002406 90 04 09         [24] 1253 	mov	dptr,#_take_data_data_65538_51
      002409 E0               [24] 1254 	movx	a,@dptr
      00240A FF               [12] 1255 	mov	r7,a
      00240B FD               [12] 1256 	mov	r5,a
      00240C 7E 00            [12] 1257 	mov	r6,#0x00
      00240E C0 07            [24] 1258 	push	ar7
      002410 C0 05            [24] 1259 	push	ar5
      002412 C0 06            [24] 1260 	push	ar6
      002414 74 72            [12] 1261 	mov	a,#___str_21
      002416 C0 E0            [24] 1262 	push	acc
      002418 74 3E            [12] 1263 	mov	a,#(___str_21 >> 8)
      00241A C0 E0            [24] 1264 	push	acc
      00241C 74 80            [12] 1265 	mov	a,#0x80
      00241E C0 E0            [24] 1266 	push	acc
      002420 12 27 F3         [24] 1267 	lcall	_printf
      002423 E5 81            [12] 1268 	mov	a,sp
      002425 24 FB            [12] 1269 	add	a,#0xfb
      002427 F5 81            [12] 1270 	mov	sp,a
      002429 D0 07            [24] 1271 	pop	ar7
                                   1272 ;	spi_and_bit_banging.c:411: return data;
      00242B 8F 82            [24] 1273 	mov	dpl,r7
                                   1274 ;	spi_and_bit_banging.c:413: }
      00242D 22               [24] 1275 	ret
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'mannual_spi'
                                   1278 ;------------------------------------------------------------
                                   1279 ;number                    Allocated with name '_mannual_spi_number_65536_54'
                                   1280 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_55'
                                   1281 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_55'
                                   1282 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_55'
                                   1283 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_55'
                                   1284 ;i                         Allocated with name '_mannual_spi_i_196608_57'
                                   1285 ;------------------------------------------------------------
                                   1286 ;	spi_and_bit_banging.c:415: void mannual_spi(unsigned char number)
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function mannual_spi
                                   1289 ;	-----------------------------------------
      00242E                       1290 _mannual_spi:
      00242E E5 82            [12] 1291 	mov	a,dpl
      002430 90 04 0A         [24] 1292 	mov	dptr,#_mannual_spi_number_65536_54
      002433 F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	spi_and_bit_banging.c:417: int dac_value_index = 0;
      002434 90 04 0B         [24] 1295 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      002437 E4               [12] 1296 	clr	a
      002438 F0               [24] 1297 	movx	@dptr,a
      002439 A3               [24] 1298 	inc	dptr
      00243A F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	spi_and_bit_banging.c:418: int dac_data = 0;
      00243B 90 04 0D         [24] 1301 	mov	dptr,#_mannual_spi_dac_data_65536_55
      00243E F0               [24] 1302 	movx	@dptr,a
      00243F A3               [24] 1303 	inc	dptr
      002440 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	spi_and_bit_banging.c:420: printf("\r\n Inside Manual SPI");
      002441 74 8F            [12] 1306 	mov	a,#___str_22
      002443 C0 E0            [24] 1307 	push	acc
      002445 74 3E            [12] 1308 	mov	a,#(___str_22 >> 8)
      002447 C0 E0            [24] 1309 	push	acc
      002449 74 80            [12] 1310 	mov	a,#0x80
      00244B C0 E0            [24] 1311 	push	acc
      00244D 12 27 F3         [24] 1312 	lcall	_printf
      002450 15 81            [12] 1313 	dec	sp
      002452 15 81            [12] 1314 	dec	sp
      002454 15 81            [12] 1315 	dec	sp
                                   1316 ;	spi_and_bit_banging.c:421: printf("%d\n\r", number);
      002456 90 04 0A         [24] 1317 	mov	dptr,#_mannual_spi_number_65536_54
      002459 E0               [24] 1318 	movx	a,@dptr
      00245A FF               [12] 1319 	mov	r7,a
      00245B 7E 00            [12] 1320 	mov	r6,#0x00
      00245D C0 07            [24] 1321 	push	ar7
      00245F C0 06            [24] 1322 	push	ar6
      002461 74 A4            [12] 1323 	mov	a,#___str_23
      002463 C0 E0            [24] 1324 	push	acc
      002465 74 3E            [12] 1325 	mov	a,#(___str_23 >> 8)
      002467 C0 E0            [24] 1326 	push	acc
      002469 74 80            [12] 1327 	mov	a,#0x80
      00246B C0 E0            [24] 1328 	push	acc
      00246D 12 27 F3         [24] 1329 	lcall	_printf
      002470 E5 81            [12] 1330 	mov	a,sp
      002472 24 FB            [12] 1331 	add	a,#0xfb
      002474 F5 81            [12] 1332 	mov	sp,a
                                   1333 ;	spi_and_bit_banging.c:422: while(number > 0)
      002476                       1334 00111$:
      002476 90 04 0A         [24] 1335 	mov	dptr,#_mannual_spi_number_65536_54
      002479 E0               [24] 1336 	movx	a,@dptr
      00247A FF               [12] 1337 	mov	r7,a
      00247B E0               [24] 1338 	movx	a,@dptr
      00247C 70 01            [24] 1339 	jnz	00156$
      00247E 22               [24] 1340 	ret
      00247F                       1341 00156$:
                                   1342 ;	spi_and_bit_banging.c:424: printf("\r\n Number is %d",number);
      00247F 7E 00            [12] 1343 	mov	r6,#0x00
      002481 C0 07            [24] 1344 	push	ar7
      002483 C0 06            [24] 1345 	push	ar6
      002485 74 A9            [12] 1346 	mov	a,#___str_24
      002487 C0 E0            [24] 1347 	push	acc
      002489 74 3E            [12] 1348 	mov	a,#(___str_24 >> 8)
      00248B C0 E0            [24] 1349 	push	acc
      00248D 74 80            [12] 1350 	mov	a,#0x80
      00248F C0 E0            [24] 1351 	push	acc
      002491 12 27 F3         [24] 1352 	lcall	_printf
      002494 E5 81            [12] 1353 	mov	a,sp
      002496 24 FB            [12] 1354 	add	a,#0xfb
      002498 F5 81            [12] 1355 	mov	sp,a
                                   1356 ;	spi_and_bit_banging.c:426: for(int i = 0; i<255; i++)
      00249A 7E 00            [12] 1357 	mov	r6,#0x00
      00249C 7F 00            [12] 1358 	mov	r7,#0x00
      00249E                       1359 00115$:
      00249E C3               [12] 1360 	clr	c
      00249F EE               [12] 1361 	mov	a,r6
      0024A0 94 FF            [12] 1362 	subb	a,#0xff
      0024A2 EF               [12] 1363 	mov	a,r7
      0024A3 64 80            [12] 1364 	xrl	a,#0x80
      0024A5 94 80            [12] 1365 	subb	a,#0x80
      0024A7 40 03            [24] 1366 	jc	00157$
      0024A9 02 25 7B         [24] 1367 	ljmp	00110$
      0024AC                       1368 00157$:
                                   1369 ;	spi_and_bit_banging.c:429: if(dac_value_index < SINE_MAX_INDEX)
      0024AC 90 04 0B         [24] 1370 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024AF E0               [24] 1371 	movx	a,@dptr
      0024B0 FC               [12] 1372 	mov	r4,a
      0024B1 A3               [24] 1373 	inc	dptr
      0024B2 E0               [24] 1374 	movx	a,@dptr
      0024B3 FD               [12] 1375 	mov	r5,a
      0024B4 C3               [12] 1376 	clr	c
      0024B5 64 80            [12] 1377 	xrl	a,#0x80
      0024B7 94 81            [12] 1378 	subb	a,#0x81
      0024B9 50 21            [24] 1379 	jnc	00102$
                                   1380 ;	spi_and_bit_banging.c:433: dac_data = dac_values[dac_value_index];
      0024BB EC               [12] 1381 	mov	a,r4
      0024BC 2C               [12] 1382 	add	a,r4
      0024BD FC               [12] 1383 	mov	r4,a
      0024BE ED               [12] 1384 	mov	a,r5
      0024BF 33               [12] 1385 	rlc	a
      0024C0 FD               [12] 1386 	mov	r5,a
      0024C1 EC               [12] 1387 	mov	a,r4
      0024C2 24 55            [12] 1388 	add	a,#_dac_values
      0024C4 F5 82            [12] 1389 	mov	dpl,a
      0024C6 ED               [12] 1390 	mov	a,r5
      0024C7 34 32            [12] 1391 	addc	a,#(_dac_values >> 8)
      0024C9 F5 83            [12] 1392 	mov	dph,a
      0024CB E4               [12] 1393 	clr	a
      0024CC 93               [24] 1394 	movc	a,@a+dptr
      0024CD FC               [12] 1395 	mov	r4,a
      0024CE A3               [24] 1396 	inc	dptr
      0024CF E4               [12] 1397 	clr	a
      0024D0 93               [24] 1398 	movc	a,@a+dptr
      0024D1 FD               [12] 1399 	mov	r5,a
      0024D2 90 04 0D         [24] 1400 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024D5 EC               [12] 1401 	mov	a,r4
      0024D6 F0               [24] 1402 	movx	@dptr,a
      0024D7 ED               [12] 1403 	mov	a,r5
      0024D8 A3               [24] 1404 	inc	dptr
      0024D9 F0               [24] 1405 	movx	@dptr,a
      0024DA 80 07            [24] 1406 	sjmp	00103$
      0024DC                       1407 00102$:
                                   1408 ;	spi_and_bit_banging.c:437: dac_value_index = 0;  // Reset index for next cycle
      0024DC 90 04 0B         [24] 1409 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024DF E4               [12] 1410 	clr	a
      0024E0 F0               [24] 1411 	movx	@dptr,a
      0024E1 A3               [24] 1412 	inc	dptr
      0024E2 F0               [24] 1413 	movx	@dptr,a
      0024E3                       1414 00103$:
                                   1415 ;	spi_and_bit_banging.c:444: ((dac_data >> 4) & 0x0F);
      0024E3 90 04 0D         [24] 1416 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024E6 E0               [24] 1417 	movx	a,@dptr
      0024E7 FC               [12] 1418 	mov	r4,a
      0024E8 A3               [24] 1419 	inc	dptr
      0024E9 E0               [24] 1420 	movx	a,@dptr
      0024EA 8C 02            [24] 1421 	mov	ar2,r4
      0024EC C4               [12] 1422 	swap	a
      0024ED CA               [12] 1423 	xch	a,r2
      0024EE C4               [12] 1424 	swap	a
      0024EF 54 0F            [12] 1425 	anl	a,#0x0f
      0024F1 6A               [12] 1426 	xrl	a,r2
      0024F2 CA               [12] 1427 	xch	a,r2
      0024F3 54 0F            [12] 1428 	anl	a,#0x0f
      0024F5 CA               [12] 1429 	xch	a,r2
      0024F6 6A               [12] 1430 	xrl	a,r2
      0024F7 CA               [12] 1431 	xch	a,r2
      0024F8 30 E3 02         [24] 1432 	jnb	acc.3,00159$
      0024FB 44 F0            [12] 1433 	orl	a,#0xf0
      0024FD                       1434 00159$:
      0024FD 53 02 0F         [24] 1435 	anl	ar2,#0x0f
      002500 7B 00            [12] 1436 	mov	r3,#0x00
      002502 43 02 10         [24] 1437 	orl	ar2,#0x10
                                   1438 ;	spi_and_bit_banging.c:447: low_byte = (dac_data & 0x0F) << 4;
      002505 53 04 0F         [24] 1439 	anl	ar4,#0x0f
      002508 E4               [12] 1440 	clr	a
      002509 CC               [12] 1441 	xch	a,r4
      00250A C4               [12] 1442 	swap	a
      00250B CC               [12] 1443 	xch	a,r4
      00250C 6C               [12] 1444 	xrl	a,r4
      00250D CC               [12] 1445 	xch	a,r4
      00250E 54 F0            [12] 1446 	anl	a,#0xf0
      002510 CC               [12] 1447 	xch	a,r4
      002511 6C               [12] 1448 	xrl	a,r4
      002512 FD               [12] 1449 	mov	r5,a
                                   1450 ;	spi_and_bit_banging.c:451: P1_1 = 0;  // Select DAC
                                   1451 ;	assignBit
      002513 C2 91            [12] 1452 	clr	_P1_1
                                   1453 ;	spi_and_bit_banging.c:454: SPDAT = high_byte;
      002515 8A C5            [24] 1454 	mov	_SPDAT,r2
                                   1455 ;	spi_and_bit_banging.c:455: while (!(SPSTA & (1<<7))); 
      002517                       1456 00104$:
      002517 E5 C4            [12] 1457 	mov	a,_SPSTA
      002519 30 E7 FB         [24] 1458 	jnb	acc.7,00104$
                                   1459 ;	spi_and_bit_banging.c:459: SPDAT = low_byte;
      00251C 8C C5            [24] 1460 	mov	_SPDAT,r4
                                   1461 ;	spi_and_bit_banging.c:460: while (!(SPSTA & (1<<7))); 
      00251E                       1462 00107$:
      00251E E5 C4            [12] 1463 	mov	a,_SPSTA
      002520 30 E7 FB         [24] 1464 	jnb	acc.7,00107$
                                   1465 ;	spi_and_bit_banging.c:461: printf("low %d\n\r", low_byte);
      002523 C0 07            [24] 1466 	push	ar7
      002525 C0 06            [24] 1467 	push	ar6
      002527 C0 03            [24] 1468 	push	ar3
      002529 C0 02            [24] 1469 	push	ar2
      00252B C0 04            [24] 1470 	push	ar4
      00252D C0 05            [24] 1471 	push	ar5
      00252F 74 B9            [12] 1472 	mov	a,#___str_25
      002531 C0 E0            [24] 1473 	push	acc
      002533 74 3E            [12] 1474 	mov	a,#(___str_25 >> 8)
      002535 C0 E0            [24] 1475 	push	acc
      002537 74 80            [12] 1476 	mov	a,#0x80
      002539 C0 E0            [24] 1477 	push	acc
      00253B 12 27 F3         [24] 1478 	lcall	_printf
      00253E E5 81            [12] 1479 	mov	a,sp
      002540 24 FB            [12] 1480 	add	a,#0xfb
      002542 F5 81            [12] 1481 	mov	sp,a
      002544 D0 02            [24] 1482 	pop	ar2
      002546 D0 03            [24] 1483 	pop	ar3
                                   1484 ;	spi_and_bit_banging.c:462: printf("high %d\n\r", high_byte);
      002548 C0 02            [24] 1485 	push	ar2
      00254A C0 03            [24] 1486 	push	ar3
      00254C 74 C2            [12] 1487 	mov	a,#___str_26
      00254E C0 E0            [24] 1488 	push	acc
      002550 74 3E            [12] 1489 	mov	a,#(___str_26 >> 8)
      002552 C0 E0            [24] 1490 	push	acc
      002554 74 80            [12] 1491 	mov	a,#0x80
      002556 C0 E0            [24] 1492 	push	acc
      002558 12 27 F3         [24] 1493 	lcall	_printf
      00255B E5 81            [12] 1494 	mov	a,sp
      00255D 24 FB            [12] 1495 	add	a,#0xfb
      00255F F5 81            [12] 1496 	mov	sp,a
      002561 D0 06            [24] 1497 	pop	ar6
      002563 D0 07            [24] 1498 	pop	ar7
                                   1499 ;	spi_and_bit_banging.c:464: P1_1 = 1;  // Deselect DAC
                                   1500 ;	assignBit
      002565 D2 91            [12] 1501 	setb	_P1_1
                                   1502 ;	spi_and_bit_banging.c:466: dac_value_index++;
      002567 90 04 0B         [24] 1503 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00256A E0               [24] 1504 	movx	a,@dptr
      00256B 24 01            [12] 1505 	add	a,#0x01
      00256D F0               [24] 1506 	movx	@dptr,a
      00256E A3               [24] 1507 	inc	dptr
      00256F E0               [24] 1508 	movx	a,@dptr
      002570 34 00            [12] 1509 	addc	a,#0x00
      002572 F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	spi_and_bit_banging.c:426: for(int i = 0; i<255; i++)
      002573 0E               [12] 1512 	inc	r6
      002574 BE 00 01         [24] 1513 	cjne	r6,#0x00,00162$
      002577 0F               [12] 1514 	inc	r7
      002578                       1515 00162$:
      002578 02 24 9E         [24] 1516 	ljmp	00115$
      00257B                       1517 00110$:
                                   1518 ;	spi_and_bit_banging.c:469: number = number - 1;
      00257B 90 04 0A         [24] 1519 	mov	dptr,#_mannual_spi_number_65536_54
      00257E E0               [24] 1520 	movx	a,@dptr
      00257F FF               [12] 1521 	mov	r7,a
      002580 14               [12] 1522 	dec	a
      002581 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	spi_and_bit_banging.c:471: }
      002582 02 24 76         [24] 1525 	ljmp	00111$
                                   1526 ;------------------------------------------------------------
                                   1527 ;Allocation info for local variables in function 'spi_init'
                                   1528 ;------------------------------------------------------------
                                   1529 ;	spi_and_bit_banging.c:482: void spi_init(void) 
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function spi_init
                                   1532 ;	-----------------------------------------
      002585                       1533 _spi_init:
                                   1534 ;	spi_and_bit_banging.c:503: SPCON |= 0x10;
      002585 43 C3 10         [24] 1535 	orl	_SPCON,#0x10
                                   1536 ;	spi_and_bit_banging.c:504: SPCON |= 0x20;
      002588 43 C3 20         [24] 1537 	orl	_SPCON,#0x20
                                   1538 ;	spi_and_bit_banging.c:505: SPCON |= 0x40;
      00258B 43 C3 40         [24] 1539 	orl	_SPCON,#0x40
                                   1540 ;	spi_and_bit_banging.c:512: }
      00258E 22               [24] 1541 	ret
                                   1542 ;------------------------------------------------------------
                                   1543 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1544 ;------------------------------------------------------------
                                   1545 ;	spi_and_bit_banging.c:514: void bit_bang_spi_init(void) {
                                   1546 ;	-----------------------------------------
                                   1547 ;	 function bit_bang_spi_init
                                   1548 ;	-----------------------------------------
      00258F                       1549 _bit_bang_spi_init:
                                   1550 ;	spi_and_bit_banging.c:515: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      00258F 75 C3 00         [24] 1551 	mov	_SPCON,#0x00
                                   1552 ;	spi_and_bit_banging.c:516: SDA = DATA_HIGH;                 /* Set data line high */
                                   1553 ;	assignBit
      002592 D2 97            [12] 1554 	setb	_P1_7
                                   1555 ;	spi_and_bit_banging.c:517: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1556 ;	assignBit
      002594 C2 96            [12] 1557 	clr	_P1_6
                                   1558 ;	spi_and_bit_banging.c:518: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1559 ;	assignBit
      002596 D2 91            [12] 1560 	setb	_P1_1
                                   1561 ;	spi_and_bit_banging.c:519: }
      002598 22               [24] 1562 	ret
                                   1563 ;------------------------------------------------------------
                                   1564 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1565 ;------------------------------------------------------------
                                   1566 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_65'
                                   1567 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_66'
                                   1568 ;------------------------------------------------------------
                                   1569 ;	spi_and_bit_banging.c:521: int bit_bang_spi_write(uint16_t data) {
                                   1570 ;	-----------------------------------------
                                   1571 ;	 function bit_bang_spi_write
                                   1572 ;	-----------------------------------------
      002599                       1573 _bit_bang_spi_write:
      002599 AF 83            [24] 1574 	mov	r7,dph
      00259B E5 82            [12] 1575 	mov	a,dpl
      00259D 90 04 0F         [24] 1576 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      0025A0 F0               [24] 1577 	movx	@dptr,a
      0025A1 EF               [12] 1578 	mov	a,r7
      0025A2 A3               [24] 1579 	inc	dptr
      0025A3 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	spi_and_bit_banging.c:524: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1582 ;	assignBit
      0025A4 C2 91            [12] 1583 	clr	_P1_1
                                   1584 ;	spi_and_bit_banging.c:527: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025A6 7E 00            [12] 1585 	mov	r6,#0x00
      0025A8 7F 00            [12] 1586 	mov	r7,#0x00
      0025AA                       1587 00102$:
                                   1588 ;	spi_and_bit_banging.c:528: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      0025AA 90 04 0F         [24] 1589 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      0025AD E0               [24] 1590 	movx	a,@dptr
      0025AE FC               [12] 1591 	mov	r4,a
      0025AF A3               [24] 1592 	inc	dptr
      0025B0 E0               [24] 1593 	movx	a,@dptr
      0025B1 FD               [12] 1594 	mov	r5,a
      0025B2 23               [12] 1595 	rl	a
      0025B3 54 01            [12] 1596 	anl	a,#0x01
      0025B5 24 FF            [12] 1597 	add	a,#0xff
      0025B7 92 97            [24] 1598 	mov	_P1_7,c
                                   1599 ;	spi_and_bit_banging.c:529: SCL = CLOCK_HIGH;            /* Clock high */
                                   1600 ;	assignBit
      0025B9 D2 96            [12] 1601 	setb	_P1_6
                                   1602 ;	spi_and_bit_banging.c:530: SCL = CLOCK_LOW;             /* Clock low */
                                   1603 ;	assignBit
      0025BB C2 96            [12] 1604 	clr	_P1_6
                                   1605 ;	spi_and_bit_banging.c:531: data <<= 1;                  /* Shift to next bit */
      0025BD EC               [12] 1606 	mov	a,r4
      0025BE 2C               [12] 1607 	add	a,r4
      0025BF FC               [12] 1608 	mov	r4,a
      0025C0 ED               [12] 1609 	mov	a,r5
      0025C1 33               [12] 1610 	rlc	a
      0025C2 FD               [12] 1611 	mov	r5,a
      0025C3 90 04 0F         [24] 1612 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      0025C6 EC               [12] 1613 	mov	a,r4
      0025C7 F0               [24] 1614 	movx	@dptr,a
      0025C8 ED               [12] 1615 	mov	a,r5
      0025C9 A3               [24] 1616 	inc	dptr
      0025CA F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	spi_and_bit_banging.c:527: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025CB 0E               [12] 1619 	inc	r6
      0025CC BE 00 01         [24] 1620 	cjne	r6,#0x00,00115$
      0025CF 0F               [12] 1621 	inc	r7
      0025D0                       1622 00115$:
      0025D0 C3               [12] 1623 	clr	c
      0025D1 EE               [12] 1624 	mov	a,r6
      0025D2 94 10            [12] 1625 	subb	a,#0x10
      0025D4 EF               [12] 1626 	mov	a,r7
      0025D5 94 00            [12] 1627 	subb	a,#0x00
      0025D7 40 D1            [24] 1628 	jc	00102$
                                   1629 ;	spi_and_bit_banging.c:535: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1630 ;	assignBit
      0025D9 D2 91            [12] 1631 	setb	_P1_1
                                   1632 ;	spi_and_bit_banging.c:536: SCL = CLOCK_LOW;                 /* Clock low */
                                   1633 ;	assignBit
      0025DB C2 96            [12] 1634 	clr	_P1_6
                                   1635 ;	spi_and_bit_banging.c:537: SDA = DATA_HIGH;                 /* Data high */
                                   1636 ;	assignBit
      0025DD D2 97            [12] 1637 	setb	_P1_7
                                   1638 ;	spi_and_bit_banging.c:539: return 0;
      0025DF 90 00 00         [24] 1639 	mov	dptr,#0x0000
                                   1640 ;	spi_and_bit_banging.c:540: }
      0025E2 22               [24] 1641 	ret
                                   1642 ;------------------------------------------------------------
                                   1643 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1644 ;------------------------------------------------------------
                                   1645 ;	spi_and_bit_banging.c:547: void spi_transmission_start(void)
                                   1646 ;	-----------------------------------------
                                   1647 ;	 function spi_transmission_start
                                   1648 ;	-----------------------------------------
      0025E3                       1649 _spi_transmission_start:
                                   1650 ;	spi_and_bit_banging.c:549: SPCON |= SPI_ENABLE;           // Enable SPI
      0025E3 43 C3 40         [24] 1651 	orl	_SPCON,#0x40
                                   1652 ;	spi_and_bit_banging.c:550: P1_1 = 0;
                                   1653 ;	assignBit
      0025E6 C2 91            [12] 1654 	clr	_P1_1
                                   1655 ;	spi_and_bit_banging.c:551: }
      0025E8 22               [24] 1656 	ret
                                   1657 ;------------------------------------------------------------
                                   1658 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1659 ;------------------------------------------------------------
                                   1660 ;number                    Allocated with name '_spi_triangular_wave_number_65536_71'
                                   1661 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_72'
                                   1662 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_72'
                                   1663 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_72'
                                   1664 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_72'
                                   1665 ;i                         Allocated with name '_spi_triangular_wave_i_196608_74'
                                   1666 ;------------------------------------------------------------
                                   1667 ;	spi_and_bit_banging.c:553: void spi_triangular_wave(int number)
                                   1668 ;	-----------------------------------------
                                   1669 ;	 function spi_triangular_wave
                                   1670 ;	-----------------------------------------
      0025E9                       1671 _spi_triangular_wave:
      0025E9 AF 83            [24] 1672 	mov	r7,dph
      0025EB E5 82            [12] 1673 	mov	a,dpl
      0025ED 90 04 11         [24] 1674 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0025F0 F0               [24] 1675 	movx	@dptr,a
      0025F1 EF               [12] 1676 	mov	a,r7
      0025F2 A3               [24] 1677 	inc	dptr
      0025F3 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	spi_and_bit_banging.c:555: int dac_value_index = 0;
      0025F4 90 04 13         [24] 1680 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025F7 E4               [12] 1681 	clr	a
      0025F8 F0               [24] 1682 	movx	@dptr,a
      0025F9 A3               [24] 1683 	inc	dptr
      0025FA F0               [24] 1684 	movx	@dptr,a
                                   1685 ;	spi_and_bit_banging.c:556: int dac_data = 0;
      0025FB 90 04 15         [24] 1686 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025FE F0               [24] 1687 	movx	@dptr,a
      0025FF A3               [24] 1688 	inc	dptr
      002600 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	spi_and_bit_banging.c:558: while(number>0)
      002601 90 04 11         [24] 1691 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002604 E0               [24] 1692 	movx	a,@dptr
      002605 FE               [12] 1693 	mov	r6,a
      002606 A3               [24] 1694 	inc	dptr
      002607 E0               [24] 1695 	movx	a,@dptr
      002608 FF               [12] 1696 	mov	r7,a
      002609                       1697 00111$:
      002609 C3               [12] 1698 	clr	c
      00260A E4               [12] 1699 	clr	a
      00260B 9E               [12] 1700 	subb	a,r6
      00260C 74 80            [12] 1701 	mov	a,#(0x00 ^ 0x80)
      00260E 8F F0            [24] 1702 	mov	b,r7
      002610 63 F0 80         [24] 1703 	xrl	b,#0x80
      002613 95 F0            [12] 1704 	subb	a,b
      002615 40 03            [24] 1705 	jc	00157$
      002617 02 26 BE         [24] 1706 	ljmp	00129$
      00261A                       1707 00157$:
                                   1708 ;	spi_and_bit_banging.c:560: for(int i = 0; i<512; i++)
      00261A 7C 00            [12] 1709 	mov	r4,#0x00
      00261C 7D 00            [12] 1710 	mov	r5,#0x00
      00261E                       1711 00115$:
      00261E C3               [12] 1712 	clr	c
      00261F ED               [12] 1713 	mov	a,r5
      002620 64 80            [12] 1714 	xrl	a,#0x80
      002622 94 82            [12] 1715 	subb	a,#0x82
      002624 40 03            [24] 1716 	jc	00158$
      002626 02 26 AE         [24] 1717 	ljmp	00110$
      002629                       1718 00158$:
                                   1719 ;	spi_and_bit_banging.c:563: if(dac_value_index < 512)
      002629 90 04 13         [24] 1720 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00262C E0               [24] 1721 	movx	a,@dptr
      00262D FA               [12] 1722 	mov	r2,a
      00262E A3               [24] 1723 	inc	dptr
      00262F E0               [24] 1724 	movx	a,@dptr
      002630 FB               [12] 1725 	mov	r3,a
      002631 C3               [12] 1726 	clr	c
      002632 64 80            [12] 1727 	xrl	a,#0x80
      002634 94 82            [12] 1728 	subb	a,#0x82
      002636 50 21            [24] 1729 	jnc	00102$
                                   1730 ;	spi_and_bit_banging.c:567: dac_data = trig_dac_values[dac_value_index];
      002638 EA               [12] 1731 	mov	a,r2
      002639 2A               [12] 1732 	add	a,r2
      00263A FA               [12] 1733 	mov	r2,a
      00263B EB               [12] 1734 	mov	a,r3
      00263C 33               [12] 1735 	rlc	a
      00263D FB               [12] 1736 	mov	r3,a
      00263E EA               [12] 1737 	mov	a,r2
      00263F 24 55            [12] 1738 	add	a,#_trig_dac_values
      002641 F5 82            [12] 1739 	mov	dpl,a
      002643 EB               [12] 1740 	mov	a,r3
      002644 34 34            [12] 1741 	addc	a,#(_trig_dac_values >> 8)
      002646 F5 83            [12] 1742 	mov	dph,a
      002648 E4               [12] 1743 	clr	a
      002649 93               [24] 1744 	movc	a,@a+dptr
      00264A FA               [12] 1745 	mov	r2,a
      00264B A3               [24] 1746 	inc	dptr
      00264C E4               [12] 1747 	clr	a
      00264D 93               [24] 1748 	movc	a,@a+dptr
      00264E FB               [12] 1749 	mov	r3,a
      00264F 90 04 15         [24] 1750 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      002652 EA               [12] 1751 	mov	a,r2
      002653 F0               [24] 1752 	movx	@dptr,a
      002654 EB               [12] 1753 	mov	a,r3
      002655 A3               [24] 1754 	inc	dptr
      002656 F0               [24] 1755 	movx	@dptr,a
      002657 80 07            [24] 1756 	sjmp	00103$
      002659                       1757 00102$:
                                   1758 ;	spi_and_bit_banging.c:571: dac_value_index = 0;  // Reset index for next cycle
      002659 90 04 13         [24] 1759 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00265C E4               [12] 1760 	clr	a
      00265D F0               [24] 1761 	movx	@dptr,a
      00265E A3               [24] 1762 	inc	dptr
      00265F F0               [24] 1763 	movx	@dptr,a
      002660                       1764 00103$:
                                   1765 ;	spi_and_bit_banging.c:578: ((dac_data >> 4) & 0x0F);
      002660 90 04 15         [24] 1766 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      002663 E0               [24] 1767 	movx	a,@dptr
      002664 FA               [12] 1768 	mov	r2,a
      002665 A3               [24] 1769 	inc	dptr
      002666 E0               [24] 1770 	movx	a,@dptr
      002667 8A 00            [24] 1771 	mov	ar0,r2
      002669 C4               [12] 1772 	swap	a
      00266A C8               [12] 1773 	xch	a,r0
      00266B C4               [12] 1774 	swap	a
      00266C 54 0F            [12] 1775 	anl	a,#0x0f
      00266E 68               [12] 1776 	xrl	a,r0
      00266F C8               [12] 1777 	xch	a,r0
      002670 54 0F            [12] 1778 	anl	a,#0x0f
      002672 C8               [12] 1779 	xch	a,r0
      002673 68               [12] 1780 	xrl	a,r0
      002674 C8               [12] 1781 	xch	a,r0
      002675 30 E3 02         [24] 1782 	jnb	acc.3,00160$
      002678 44 F0            [12] 1783 	orl	a,#0xf0
      00267A                       1784 00160$:
      00267A 74 0F            [12] 1785 	mov	a,#0x0f
      00267C 58               [12] 1786 	anl	a,r0
      00267D 44 10            [12] 1787 	orl	a,#0x10
      00267F F9               [12] 1788 	mov	r1,a
                                   1789 ;	spi_and_bit_banging.c:581: low_byte = (dac_data & 0x0F) << 4;
      002680 53 02 0F         [24] 1790 	anl	ar2,#0x0f
      002683 EA               [12] 1791 	mov	a,r2
      002684 C4               [12] 1792 	swap	a
      002685 54 F0            [12] 1793 	anl	a,#0xf0
      002687 FB               [12] 1794 	mov	r3,a
                                   1795 ;	spi_and_bit_banging.c:585: P1_1 = 0;  // Select DAC
                                   1796 ;	assignBit
      002688 C2 91            [12] 1797 	clr	_P1_1
                                   1798 ;	spi_and_bit_banging.c:588: SPDAT = high_byte;
      00268A 89 C5            [24] 1799 	mov	_SPDAT,r1
                                   1800 ;	spi_and_bit_banging.c:589: while (!(SPSTA & (1<<7))); 
      00268C                       1801 00104$:
      00268C E5 C4            [12] 1802 	mov	a,_SPSTA
      00268E 30 E7 FB         [24] 1803 	jnb	acc.7,00104$
                                   1804 ;	spi_and_bit_banging.c:593: SPDAT = low_byte;
      002691 8B C5            [24] 1805 	mov	_SPDAT,r3
                                   1806 ;	spi_and_bit_banging.c:594: while (!(SPSTA & (1<<7))); 
      002693                       1807 00107$:
      002693 E5 C4            [12] 1808 	mov	a,_SPSTA
      002695 30 E7 FB         [24] 1809 	jnb	acc.7,00107$
                                   1810 ;	spi_and_bit_banging.c:596: P1_1 = 1;  // Deselect DAC
                                   1811 ;	assignBit
      002698 D2 91            [12] 1812 	setb	_P1_1
                                   1813 ;	spi_and_bit_banging.c:598: dac_value_index++;
      00269A 90 04 13         [24] 1814 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00269D E0               [24] 1815 	movx	a,@dptr
      00269E 24 01            [12] 1816 	add	a,#0x01
      0026A0 F0               [24] 1817 	movx	@dptr,a
      0026A1 A3               [24] 1818 	inc	dptr
      0026A2 E0               [24] 1819 	movx	a,@dptr
      0026A3 34 00            [12] 1820 	addc	a,#0x00
      0026A5 F0               [24] 1821 	movx	@dptr,a
                                   1822 ;	spi_and_bit_banging.c:560: for(int i = 0; i<512; i++)
      0026A6 0C               [12] 1823 	inc	r4
      0026A7 BC 00 01         [24] 1824 	cjne	r4,#0x00,00163$
      0026AA 0D               [12] 1825 	inc	r5
      0026AB                       1826 00163$:
      0026AB 02 26 1E         [24] 1827 	ljmp	00115$
      0026AE                       1828 00110$:
                                   1829 ;	spi_and_bit_banging.c:601: number = number - 1;
      0026AE 1E               [12] 1830 	dec	r6
      0026AF BE FF 01         [24] 1831 	cjne	r6,#0xff,00164$
      0026B2 1F               [12] 1832 	dec	r7
      0026B3                       1833 00164$:
      0026B3 90 04 11         [24] 1834 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0026B6 EE               [12] 1835 	mov	a,r6
      0026B7 F0               [24] 1836 	movx	@dptr,a
      0026B8 EF               [12] 1837 	mov	a,r7
      0026B9 A3               [24] 1838 	inc	dptr
      0026BA F0               [24] 1839 	movx	@dptr,a
      0026BB 02 26 09         [24] 1840 	ljmp	00111$
      0026BE                       1841 00129$:
      0026BE 90 04 11         [24] 1842 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0026C1 EE               [12] 1843 	mov	a,r6
      0026C2 F0               [24] 1844 	movx	@dptr,a
      0026C3 EF               [12] 1845 	mov	a,r7
      0026C4 A3               [24] 1846 	inc	dptr
      0026C5 F0               [24] 1847 	movx	@dptr,a
                                   1848 ;	spi_and_bit_banging.c:604: }
      0026C6 22               [24] 1849 	ret
                                   1850 ;------------------------------------------------------------
                                   1851 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1852 ;------------------------------------------------------------
                                   1853 ;number                    Allocated with name '_spi_ramp_signal_number_65536_78'
                                   1854 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_79'
                                   1855 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_79'
                                   1856 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_79'
                                   1857 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_79'
                                   1858 ;i                         Allocated with name '_spi_ramp_signal_i_196608_81'
                                   1859 ;------------------------------------------------------------
                                   1860 ;	spi_and_bit_banging.c:606: void spi_ramp_signal(int number)
                                   1861 ;	-----------------------------------------
                                   1862 ;	 function spi_ramp_signal
                                   1863 ;	-----------------------------------------
      0026C7                       1864 _spi_ramp_signal:
      0026C7 AF 83            [24] 1865 	mov	r7,dph
      0026C9 E5 82            [12] 1866 	mov	a,dpl
      0026CB 90 04 17         [24] 1867 	mov	dptr,#_spi_ramp_signal_number_65536_78
      0026CE F0               [24] 1868 	movx	@dptr,a
      0026CF EF               [12] 1869 	mov	a,r7
      0026D0 A3               [24] 1870 	inc	dptr
      0026D1 F0               [24] 1871 	movx	@dptr,a
                                   1872 ;	spi_and_bit_banging.c:608: int dac_value_index = 0;
      0026D2 90 04 19         [24] 1873 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026D5 E4               [12] 1874 	clr	a
      0026D6 F0               [24] 1875 	movx	@dptr,a
      0026D7 A3               [24] 1876 	inc	dptr
      0026D8 F0               [24] 1877 	movx	@dptr,a
                                   1878 ;	spi_and_bit_banging.c:609: int dac_data = 0;
      0026D9 90 04 1B         [24] 1879 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026DC F0               [24] 1880 	movx	@dptr,a
      0026DD A3               [24] 1881 	inc	dptr
      0026DE F0               [24] 1882 	movx	@dptr,a
                                   1883 ;	spi_and_bit_banging.c:611: while(number>0)
      0026DF 90 04 17         [24] 1884 	mov	dptr,#_spi_ramp_signal_number_65536_78
      0026E2 E0               [24] 1885 	movx	a,@dptr
      0026E3 FE               [12] 1886 	mov	r6,a
      0026E4 A3               [24] 1887 	inc	dptr
      0026E5 E0               [24] 1888 	movx	a,@dptr
      0026E6 FF               [12] 1889 	mov	r7,a
      0026E7                       1890 00111$:
      0026E7 C3               [12] 1891 	clr	c
      0026E8 E4               [12] 1892 	clr	a
      0026E9 9E               [12] 1893 	subb	a,r6
      0026EA 74 80            [12] 1894 	mov	a,#(0x00 ^ 0x80)
      0026EC 8F F0            [24] 1895 	mov	b,r7
      0026EE 63 F0 80         [24] 1896 	xrl	b,#0x80
      0026F1 95 F0            [12] 1897 	subb	a,b
      0026F3 40 03            [24] 1898 	jc	00157$
      0026F5 02 27 9C         [24] 1899 	ljmp	00129$
      0026F8                       1900 00157$:
                                   1901 ;	spi_and_bit_banging.c:613: for(int i = 0; i<256; i++)
      0026F8 7C 00            [12] 1902 	mov	r4,#0x00
      0026FA 7D 00            [12] 1903 	mov	r5,#0x00
      0026FC                       1904 00115$:
      0026FC C3               [12] 1905 	clr	c
      0026FD ED               [12] 1906 	mov	a,r5
      0026FE 64 80            [12] 1907 	xrl	a,#0x80
      002700 94 81            [12] 1908 	subb	a,#0x81
      002702 40 03            [24] 1909 	jc	00158$
      002704 02 27 8C         [24] 1910 	ljmp	00110$
      002707                       1911 00158$:
                                   1912 ;	spi_and_bit_banging.c:616: if(dac_value_index < 256)
      002707 90 04 19         [24] 1913 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00270A E0               [24] 1914 	movx	a,@dptr
      00270B FA               [12] 1915 	mov	r2,a
      00270C A3               [24] 1916 	inc	dptr
      00270D E0               [24] 1917 	movx	a,@dptr
      00270E FB               [12] 1918 	mov	r3,a
      00270F C3               [12] 1919 	clr	c
      002710 64 80            [12] 1920 	xrl	a,#0x80
      002712 94 81            [12] 1921 	subb	a,#0x81
      002714 50 21            [24] 1922 	jnc	00102$
                                   1923 ;	spi_and_bit_banging.c:620: dac_data = trig_dac_values[dac_value_index];
      002716 EA               [12] 1924 	mov	a,r2
      002717 2A               [12] 1925 	add	a,r2
      002718 FA               [12] 1926 	mov	r2,a
      002719 EB               [12] 1927 	mov	a,r3
      00271A 33               [12] 1928 	rlc	a
      00271B FB               [12] 1929 	mov	r3,a
      00271C EA               [12] 1930 	mov	a,r2
      00271D 24 55            [12] 1931 	add	a,#_trig_dac_values
      00271F F5 82            [12] 1932 	mov	dpl,a
      002721 EB               [12] 1933 	mov	a,r3
      002722 34 34            [12] 1934 	addc	a,#(_trig_dac_values >> 8)
      002724 F5 83            [12] 1935 	mov	dph,a
      002726 E4               [12] 1936 	clr	a
      002727 93               [24] 1937 	movc	a,@a+dptr
      002728 FA               [12] 1938 	mov	r2,a
      002729 A3               [24] 1939 	inc	dptr
      00272A E4               [12] 1940 	clr	a
      00272B 93               [24] 1941 	movc	a,@a+dptr
      00272C FB               [12] 1942 	mov	r3,a
      00272D 90 04 1B         [24] 1943 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002730 EA               [12] 1944 	mov	a,r2
      002731 F0               [24] 1945 	movx	@dptr,a
      002732 EB               [12] 1946 	mov	a,r3
      002733 A3               [24] 1947 	inc	dptr
      002734 F0               [24] 1948 	movx	@dptr,a
      002735 80 07            [24] 1949 	sjmp	00103$
      002737                       1950 00102$:
                                   1951 ;	spi_and_bit_banging.c:624: dac_value_index = 0;  // Reset index for next cycle
      002737 90 04 19         [24] 1952 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00273A E4               [12] 1953 	clr	a
      00273B F0               [24] 1954 	movx	@dptr,a
      00273C A3               [24] 1955 	inc	dptr
      00273D F0               [24] 1956 	movx	@dptr,a
      00273E                       1957 00103$:
                                   1958 ;	spi_and_bit_banging.c:631: ((dac_data >> 4) & 0x0F);
      00273E 90 04 1B         [24] 1959 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002741 E0               [24] 1960 	movx	a,@dptr
      002742 FA               [12] 1961 	mov	r2,a
      002743 A3               [24] 1962 	inc	dptr
      002744 E0               [24] 1963 	movx	a,@dptr
      002745 8A 00            [24] 1964 	mov	ar0,r2
      002747 C4               [12] 1965 	swap	a
      002748 C8               [12] 1966 	xch	a,r0
      002749 C4               [12] 1967 	swap	a
      00274A 54 0F            [12] 1968 	anl	a,#0x0f
      00274C 68               [12] 1969 	xrl	a,r0
      00274D C8               [12] 1970 	xch	a,r0
      00274E 54 0F            [12] 1971 	anl	a,#0x0f
      002750 C8               [12] 1972 	xch	a,r0
      002751 68               [12] 1973 	xrl	a,r0
      002752 C8               [12] 1974 	xch	a,r0
      002753 30 E3 02         [24] 1975 	jnb	acc.3,00160$
      002756 44 F0            [12] 1976 	orl	a,#0xf0
      002758                       1977 00160$:
      002758 74 0F            [12] 1978 	mov	a,#0x0f
      00275A 58               [12] 1979 	anl	a,r0
      00275B 44 10            [12] 1980 	orl	a,#0x10
      00275D F9               [12] 1981 	mov	r1,a
                                   1982 ;	spi_and_bit_banging.c:634: low_byte = (dac_data & 0x0F) << 4;
      00275E 53 02 0F         [24] 1983 	anl	ar2,#0x0f
      002761 EA               [12] 1984 	mov	a,r2
      002762 C4               [12] 1985 	swap	a
      002763 54 F0            [12] 1986 	anl	a,#0xf0
      002765 FB               [12] 1987 	mov	r3,a
                                   1988 ;	spi_and_bit_banging.c:638: P1_1 = 0;  // Select DAC
                                   1989 ;	assignBit
      002766 C2 91            [12] 1990 	clr	_P1_1
                                   1991 ;	spi_and_bit_banging.c:641: SPDAT = high_byte;
      002768 89 C5            [24] 1992 	mov	_SPDAT,r1
                                   1993 ;	spi_and_bit_banging.c:642: while (!(SPSTA & (1<<7))); 
      00276A                       1994 00104$:
      00276A E5 C4            [12] 1995 	mov	a,_SPSTA
      00276C 30 E7 FB         [24] 1996 	jnb	acc.7,00104$
                                   1997 ;	spi_and_bit_banging.c:646: SPDAT = low_byte;
      00276F 8B C5            [24] 1998 	mov	_SPDAT,r3
                                   1999 ;	spi_and_bit_banging.c:647: while (!(SPSTA & (1<<7))); 
      002771                       2000 00107$:
      002771 E5 C4            [12] 2001 	mov	a,_SPSTA
      002773 30 E7 FB         [24] 2002 	jnb	acc.7,00107$
                                   2003 ;	spi_and_bit_banging.c:649: P1_1 = 1;  // Deselect DAC
                                   2004 ;	assignBit
      002776 D2 91            [12] 2005 	setb	_P1_1
                                   2006 ;	spi_and_bit_banging.c:651: dac_value_index++;
      002778 90 04 19         [24] 2007 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00277B E0               [24] 2008 	movx	a,@dptr
      00277C 24 01            [12] 2009 	add	a,#0x01
      00277E F0               [24] 2010 	movx	@dptr,a
      00277F A3               [24] 2011 	inc	dptr
      002780 E0               [24] 2012 	movx	a,@dptr
      002781 34 00            [12] 2013 	addc	a,#0x00
      002783 F0               [24] 2014 	movx	@dptr,a
                                   2015 ;	spi_and_bit_banging.c:613: for(int i = 0; i<256; i++)
      002784 0C               [12] 2016 	inc	r4
      002785 BC 00 01         [24] 2017 	cjne	r4,#0x00,00163$
      002788 0D               [12] 2018 	inc	r5
      002789                       2019 00163$:
      002789 02 26 FC         [24] 2020 	ljmp	00115$
      00278C                       2021 00110$:
                                   2022 ;	spi_and_bit_banging.c:654: number = number - 1;
      00278C 1E               [12] 2023 	dec	r6
      00278D BE FF 01         [24] 2024 	cjne	r6,#0xff,00164$
      002790 1F               [12] 2025 	dec	r7
      002791                       2026 00164$:
      002791 90 04 17         [24] 2027 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002794 EE               [12] 2028 	mov	a,r6
      002795 F0               [24] 2029 	movx	@dptr,a
      002796 EF               [12] 2030 	mov	a,r7
      002797 A3               [24] 2031 	inc	dptr
      002798 F0               [24] 2032 	movx	@dptr,a
      002799 02 26 E7         [24] 2033 	ljmp	00111$
      00279C                       2034 00129$:
      00279C 90 04 17         [24] 2035 	mov	dptr,#_spi_ramp_signal_number_65536_78
      00279F EE               [12] 2036 	mov	a,r6
      0027A0 F0               [24] 2037 	movx	@dptr,a
      0027A1 EF               [12] 2038 	mov	a,r7
      0027A2 A3               [24] 2039 	inc	dptr
      0027A3 F0               [24] 2040 	movx	@dptr,a
                                   2041 ;	spi_and_bit_banging.c:657: }
      0027A4 22               [24] 2042 	ret
                                   2043 	.area CSEG    (CODE)
                                   2044 	.area CONST   (CODE)
      003255                       2045 _dac_values:
      003255 80 00                 2046 	.byte #0x80, #0x00	;  128
      003257 83 00                 2047 	.byte #0x83, #0x00	;  131
      003259 86 00                 2048 	.byte #0x86, #0x00	;  134
      00325B 89 00                 2049 	.byte #0x89, #0x00	;  137
      00325D 8C 00                 2050 	.byte #0x8c, #0x00	;  140
      00325F 90 00                 2051 	.byte #0x90, #0x00	;  144
      003261 93 00                 2052 	.byte #0x93, #0x00	;  147
      003263 96 00                 2053 	.byte #0x96, #0x00	;  150
      003265 99 00                 2054 	.byte #0x99, #0x00	;  153
      003267 9C 00                 2055 	.byte #0x9c, #0x00	;  156
      003269 9F 00                 2056 	.byte #0x9f, #0x00	;  159
      00326B A2 00                 2057 	.byte #0xa2, #0x00	;  162
      00326D A5 00                 2058 	.byte #0xa5, #0x00	;  165
      00326F A8 00                 2059 	.byte #0xa8, #0x00	;  168
      003271 AB 00                 2060 	.byte #0xab, #0x00	;  171
      003273 AE 00                 2061 	.byte #0xae, #0x00	;  174
      003275 B1 00                 2062 	.byte #0xb1, #0x00	;  177
      003277 B3 00                 2063 	.byte #0xb3, #0x00	;  179
      003279 B6 00                 2064 	.byte #0xb6, #0x00	;  182
      00327B B9 00                 2065 	.byte #0xb9, #0x00	;  185
      00327D BC 00                 2066 	.byte #0xbc, #0x00	;  188
      00327F BF 00                 2067 	.byte #0xbf, #0x00	;  191
      003281 C1 00                 2068 	.byte #0xc1, #0x00	;  193
      003283 C4 00                 2069 	.byte #0xc4, #0x00	;  196
      003285 C7 00                 2070 	.byte #0xc7, #0x00	;  199
      003287 C9 00                 2071 	.byte #0xc9, #0x00	;  201
      003289 CC 00                 2072 	.byte #0xcc, #0x00	;  204
      00328B CE 00                 2073 	.byte #0xce, #0x00	;  206
      00328D D1 00                 2074 	.byte #0xd1, #0x00	;  209
      00328F D3 00                 2075 	.byte #0xd3, #0x00	;  211
      003291 D5 00                 2076 	.byte #0xd5, #0x00	;  213
      003293 D8 00                 2077 	.byte #0xd8, #0x00	;  216
      003295 DA 00                 2078 	.byte #0xda, #0x00	;  218
      003297 DC 00                 2079 	.byte #0xdc, #0x00	;  220
      003299 DE 00                 2080 	.byte #0xde, #0x00	;  222
      00329B E0 00                 2081 	.byte #0xe0, #0x00	;  224
      00329D E2 00                 2082 	.byte #0xe2, #0x00	;  226
      00329F E4 00                 2083 	.byte #0xe4, #0x00	;  228
      0032A1 E6 00                 2084 	.byte #0xe6, #0x00	;  230
      0032A3 E8 00                 2085 	.byte #0xe8, #0x00	;  232
      0032A5 EA 00                 2086 	.byte #0xea, #0x00	;  234
      0032A7 EB 00                 2087 	.byte #0xeb, #0x00	;  235
      0032A9 ED 00                 2088 	.byte #0xed, #0x00	;  237
      0032AB EF 00                 2089 	.byte #0xef, #0x00	;  239
      0032AD F0 00                 2090 	.byte #0xf0, #0x00	;  240
      0032AF F1 00                 2091 	.byte #0xf1, #0x00	;  241
      0032B1 F3 00                 2092 	.byte #0xf3, #0x00	;  243
      0032B3 F4 00                 2093 	.byte #0xf4, #0x00	;  244
      0032B5 F5 00                 2094 	.byte #0xf5, #0x00	;  245
      0032B7 F6 00                 2095 	.byte #0xf6, #0x00	;  246
      0032B9 F8 00                 2096 	.byte #0xf8, #0x00	;  248
      0032BB F9 00                 2097 	.byte #0xf9, #0x00	;  249
      0032BD FA 00                 2098 	.byte #0xfa, #0x00	;  250
      0032BF FA 00                 2099 	.byte #0xfa, #0x00	;  250
      0032C1 FB 00                 2100 	.byte #0xfb, #0x00	;  251
      0032C3 FC 00                 2101 	.byte #0xfc, #0x00	;  252
      0032C5 FD 00                 2102 	.byte #0xfd, #0x00	;  253
      0032C7 FD 00                 2103 	.byte #0xfd, #0x00	;  253
      0032C9 FE 00                 2104 	.byte #0xfe, #0x00	;  254
      0032CB FE 00                 2105 	.byte #0xfe, #0x00	;  254
      0032CD FE 00                 2106 	.byte #0xfe, #0x00	;  254
      0032CF FF 00                 2107 	.byte #0xff, #0x00	;  255
      0032D1 FF 00                 2108 	.byte #0xff, #0x00	;  255
      0032D3 FF 00                 2109 	.byte #0xff, #0x00	;  255
      0032D5 FF 00                 2110 	.byte #0xff, #0x00	;  255
      0032D7 FF 00                 2111 	.byte #0xff, #0x00	;  255
      0032D9 FF 00                 2112 	.byte #0xff, #0x00	;  255
      0032DB FF 00                 2113 	.byte #0xff, #0x00	;  255
      0032DD FE 00                 2114 	.byte #0xfe, #0x00	;  254
      0032DF FE 00                 2115 	.byte #0xfe, #0x00	;  254
      0032E1 FE 00                 2116 	.byte #0xfe, #0x00	;  254
      0032E3 FD 00                 2117 	.byte #0xfd, #0x00	;  253
      0032E5 FD 00                 2118 	.byte #0xfd, #0x00	;  253
      0032E7 FC 00                 2119 	.byte #0xfc, #0x00	;  252
      0032E9 FB 00                 2120 	.byte #0xfb, #0x00	;  251
      0032EB FA 00                 2121 	.byte #0xfa, #0x00	;  250
      0032ED FA 00                 2122 	.byte #0xfa, #0x00	;  250
      0032EF F9 00                 2123 	.byte #0xf9, #0x00	;  249
      0032F1 F8 00                 2124 	.byte #0xf8, #0x00	;  248
      0032F3 F6 00                 2125 	.byte #0xf6, #0x00	;  246
      0032F5 F5 00                 2126 	.byte #0xf5, #0x00	;  245
      0032F7 F4 00                 2127 	.byte #0xf4, #0x00	;  244
      0032F9 F3 00                 2128 	.byte #0xf3, #0x00	;  243
      0032FB F1 00                 2129 	.byte #0xf1, #0x00	;  241
      0032FD F0 00                 2130 	.byte #0xf0, #0x00	;  240
      0032FF EF 00                 2131 	.byte #0xef, #0x00	;  239
      003301 ED 00                 2132 	.byte #0xed, #0x00	;  237
      003303 EB 00                 2133 	.byte #0xeb, #0x00	;  235
      003305 EA 00                 2134 	.byte #0xea, #0x00	;  234
      003307 E8 00                 2135 	.byte #0xe8, #0x00	;  232
      003309 E6 00                 2136 	.byte #0xe6, #0x00	;  230
      00330B E4 00                 2137 	.byte #0xe4, #0x00	;  228
      00330D E2 00                 2138 	.byte #0xe2, #0x00	;  226
      00330F E0 00                 2139 	.byte #0xe0, #0x00	;  224
      003311 DE 00                 2140 	.byte #0xde, #0x00	;  222
      003313 DC 00                 2141 	.byte #0xdc, #0x00	;  220
      003315 DA 00                 2142 	.byte #0xda, #0x00	;  218
      003317 D8 00                 2143 	.byte #0xd8, #0x00	;  216
      003319 D5 00                 2144 	.byte #0xd5, #0x00	;  213
      00331B D3 00                 2145 	.byte #0xd3, #0x00	;  211
      00331D D1 00                 2146 	.byte #0xd1, #0x00	;  209
      00331F CE 00                 2147 	.byte #0xce, #0x00	;  206
      003321 CC 00                 2148 	.byte #0xcc, #0x00	;  204
      003323 C9 00                 2149 	.byte #0xc9, #0x00	;  201
      003325 C7 00                 2150 	.byte #0xc7, #0x00	;  199
      003327 C4 00                 2151 	.byte #0xc4, #0x00	;  196
      003329 C1 00                 2152 	.byte #0xc1, #0x00	;  193
      00332B BF 00                 2153 	.byte #0xbf, #0x00	;  191
      00332D BC 00                 2154 	.byte #0xbc, #0x00	;  188
      00332F B9 00                 2155 	.byte #0xb9, #0x00	;  185
      003331 B6 00                 2156 	.byte #0xb6, #0x00	;  182
      003333 B3 00                 2157 	.byte #0xb3, #0x00	;  179
      003335 B1 00                 2158 	.byte #0xb1, #0x00	;  177
      003337 AE 00                 2159 	.byte #0xae, #0x00	;  174
      003339 AB 00                 2160 	.byte #0xab, #0x00	;  171
      00333B A8 00                 2161 	.byte #0xa8, #0x00	;  168
      00333D A5 00                 2162 	.byte #0xa5, #0x00	;  165
      00333F A2 00                 2163 	.byte #0xa2, #0x00	;  162
      003341 9F 00                 2164 	.byte #0x9f, #0x00	;  159
      003343 9C 00                 2165 	.byte #0x9c, #0x00	;  156
      003345 99 00                 2166 	.byte #0x99, #0x00	;  153
      003347 96 00                 2167 	.byte #0x96, #0x00	;  150
      003349 93 00                 2168 	.byte #0x93, #0x00	;  147
      00334B 90 00                 2169 	.byte #0x90, #0x00	;  144
      00334D 8C 00                 2170 	.byte #0x8c, #0x00	;  140
      00334F 89 00                 2171 	.byte #0x89, #0x00	;  137
      003351 86 00                 2172 	.byte #0x86, #0x00	;  134
      003353 83 00                 2173 	.byte #0x83, #0x00	;  131
      003355 80 00                 2174 	.byte #0x80, #0x00	;  128
      003357 7D 00                 2175 	.byte #0x7d, #0x00	;  125
      003359 7A 00                 2176 	.byte #0x7a, #0x00	;  122
      00335B 77 00                 2177 	.byte #0x77, #0x00	;  119
      00335D 74 00                 2178 	.byte #0x74, #0x00	;  116
      00335F 70 00                 2179 	.byte #0x70, #0x00	;  112
      003361 6D 00                 2180 	.byte #0x6d, #0x00	;  109
      003363 6A 00                 2181 	.byte #0x6a, #0x00	;  106
      003365 67 00                 2182 	.byte #0x67, #0x00	;  103
      003367 64 00                 2183 	.byte #0x64, #0x00	;  100
      003369 61 00                 2184 	.byte #0x61, #0x00	;  97
      00336B 5E 00                 2185 	.byte #0x5e, #0x00	;  94
      00336D 5B 00                 2186 	.byte #0x5b, #0x00	;  91
      00336F 58 00                 2187 	.byte #0x58, #0x00	;  88
      003371 55 00                 2188 	.byte #0x55, #0x00	;  85
      003373 52 00                 2189 	.byte #0x52, #0x00	;  82
      003375 4F 00                 2190 	.byte #0x4f, #0x00	;  79
      003377 4D 00                 2191 	.byte #0x4d, #0x00	;  77
      003379 4A 00                 2192 	.byte #0x4a, #0x00	;  74
      00337B 47 00                 2193 	.byte #0x47, #0x00	;  71
      00337D 44 00                 2194 	.byte #0x44, #0x00	;  68
      00337F 41 00                 2195 	.byte #0x41, #0x00	;  65
      003381 3F 00                 2196 	.byte #0x3f, #0x00	;  63
      003383 3C 00                 2197 	.byte #0x3c, #0x00	;  60
      003385 39 00                 2198 	.byte #0x39, #0x00	;  57
      003387 37 00                 2199 	.byte #0x37, #0x00	;  55
      003389 34 00                 2200 	.byte #0x34, #0x00	;  52
      00338B 32 00                 2201 	.byte #0x32, #0x00	;  50
      00338D 2F 00                 2202 	.byte #0x2f, #0x00	;  47
      00338F 2D 00                 2203 	.byte #0x2d, #0x00	;  45
      003391 2B 00                 2204 	.byte #0x2b, #0x00	;  43
      003393 28 00                 2205 	.byte #0x28, #0x00	;  40
      003395 26 00                 2206 	.byte #0x26, #0x00	;  38
      003397 24 00                 2207 	.byte #0x24, #0x00	;  36
      003399 22 00                 2208 	.byte #0x22, #0x00	;  34
      00339B 20 00                 2209 	.byte #0x20, #0x00	;  32
      00339D 1E 00                 2210 	.byte #0x1e, #0x00	;  30
      00339F 1C 00                 2211 	.byte #0x1c, #0x00	;  28
      0033A1 1A 00                 2212 	.byte #0x1a, #0x00	;  26
      0033A3 18 00                 2213 	.byte #0x18, #0x00	;  24
      0033A5 16 00                 2214 	.byte #0x16, #0x00	;  22
      0033A7 15 00                 2215 	.byte #0x15, #0x00	;  21
      0033A9 13 00                 2216 	.byte #0x13, #0x00	;  19
      0033AB 11 00                 2217 	.byte #0x11, #0x00	;  17
      0033AD 10 00                 2218 	.byte #0x10, #0x00	;  16
      0033AF 0F 00                 2219 	.byte #0x0f, #0x00	;  15
      0033B1 0D 00                 2220 	.byte #0x0d, #0x00	;  13
      0033B3 0C 00                 2221 	.byte #0x0c, #0x00	;  12
      0033B5 0B 00                 2222 	.byte #0x0b, #0x00	;  11
      0033B7 0A 00                 2223 	.byte #0x0a, #0x00	;  10
      0033B9 08 00                 2224 	.byte #0x08, #0x00	;  8
      0033BB 07 00                 2225 	.byte #0x07, #0x00	;  7
      0033BD 06 00                 2226 	.byte #0x06, #0x00	;  6
      0033BF 06 00                 2227 	.byte #0x06, #0x00	;  6
      0033C1 05 00                 2228 	.byte #0x05, #0x00	;  5
      0033C3 04 00                 2229 	.byte #0x04, #0x00	;  4
      0033C5 03 00                 2230 	.byte #0x03, #0x00	;  3
      0033C7 03 00                 2231 	.byte #0x03, #0x00	;  3
      0033C9 02 00                 2232 	.byte #0x02, #0x00	;  2
      0033CB 02 00                 2233 	.byte #0x02, #0x00	;  2
      0033CD 02 00                 2234 	.byte #0x02, #0x00	;  2
      0033CF 01 00                 2235 	.byte #0x01, #0x00	;  1
      0033D1 01 00                 2236 	.byte #0x01, #0x00	;  1
      0033D3 01 00                 2237 	.byte #0x01, #0x00	;  1
      0033D5 01 00                 2238 	.byte #0x01, #0x00	;  1
      0033D7 01 00                 2239 	.byte #0x01, #0x00	;  1
      0033D9 01 00                 2240 	.byte #0x01, #0x00	;  1
      0033DB 01 00                 2241 	.byte #0x01, #0x00	;  1
      0033DD 02 00                 2242 	.byte #0x02, #0x00	;  2
      0033DF 02 00                 2243 	.byte #0x02, #0x00	;  2
      0033E1 02 00                 2244 	.byte #0x02, #0x00	;  2
      0033E3 03 00                 2245 	.byte #0x03, #0x00	;  3
      0033E5 03 00                 2246 	.byte #0x03, #0x00	;  3
      0033E7 04 00                 2247 	.byte #0x04, #0x00	;  4
      0033E9 05 00                 2248 	.byte #0x05, #0x00	;  5
      0033EB 06 00                 2249 	.byte #0x06, #0x00	;  6
      0033ED 06 00                 2250 	.byte #0x06, #0x00	;  6
      0033EF 07 00                 2251 	.byte #0x07, #0x00	;  7
      0033F1 08 00                 2252 	.byte #0x08, #0x00	;  8
      0033F3 0A 00                 2253 	.byte #0x0a, #0x00	;  10
      0033F5 0B 00                 2254 	.byte #0x0b, #0x00	;  11
      0033F7 0C 00                 2255 	.byte #0x0c, #0x00	;  12
      0033F9 0D 00                 2256 	.byte #0x0d, #0x00	;  13
      0033FB 0F 00                 2257 	.byte #0x0f, #0x00	;  15
      0033FD 10 00                 2258 	.byte #0x10, #0x00	;  16
      0033FF 11 00                 2259 	.byte #0x11, #0x00	;  17
      003401 13 00                 2260 	.byte #0x13, #0x00	;  19
      003403 15 00                 2261 	.byte #0x15, #0x00	;  21
      003405 16 00                 2262 	.byte #0x16, #0x00	;  22
      003407 18 00                 2263 	.byte #0x18, #0x00	;  24
      003409 1A 00                 2264 	.byte #0x1a, #0x00	;  26
      00340B 1C 00                 2265 	.byte #0x1c, #0x00	;  28
      00340D 1E 00                 2266 	.byte #0x1e, #0x00	;  30
      00340F 20 00                 2267 	.byte #0x20, #0x00	;  32
      003411 22 00                 2268 	.byte #0x22, #0x00	;  34
      003413 24 00                 2269 	.byte #0x24, #0x00	;  36
      003415 26 00                 2270 	.byte #0x26, #0x00	;  38
      003417 28 00                 2271 	.byte #0x28, #0x00	;  40
      003419 2B 00                 2272 	.byte #0x2b, #0x00	;  43
      00341B 2D 00                 2273 	.byte #0x2d, #0x00	;  45
      00341D 2F 00                 2274 	.byte #0x2f, #0x00	;  47
      00341F 32 00                 2275 	.byte #0x32, #0x00	;  50
      003421 34 00                 2276 	.byte #0x34, #0x00	;  52
      003423 37 00                 2277 	.byte #0x37, #0x00	;  55
      003425 39 00                 2278 	.byte #0x39, #0x00	;  57
      003427 3C 00                 2279 	.byte #0x3c, #0x00	;  60
      003429 3F 00                 2280 	.byte #0x3f, #0x00	;  63
      00342B 41 00                 2281 	.byte #0x41, #0x00	;  65
      00342D 44 00                 2282 	.byte #0x44, #0x00	;  68
      00342F 47 00                 2283 	.byte #0x47, #0x00	;  71
      003431 4A 00                 2284 	.byte #0x4a, #0x00	;  74
      003433 4D 00                 2285 	.byte #0x4d, #0x00	;  77
      003435 4F 00                 2286 	.byte #0x4f, #0x00	;  79
      003437 52 00                 2287 	.byte #0x52, #0x00	;  82
      003439 55 00                 2288 	.byte #0x55, #0x00	;  85
      00343B 58 00                 2289 	.byte #0x58, #0x00	;  88
      00343D 5B 00                 2290 	.byte #0x5b, #0x00	;  91
      00343F 5E 00                 2291 	.byte #0x5e, #0x00	;  94
      003441 61 00                 2292 	.byte #0x61, #0x00	;  97
      003443 64 00                 2293 	.byte #0x64, #0x00	;  100
      003445 67 00                 2294 	.byte #0x67, #0x00	;  103
      003447 6A 00                 2295 	.byte #0x6a, #0x00	;  106
      003449 6D 00                 2296 	.byte #0x6d, #0x00	;  109
      00344B 70 00                 2297 	.byte #0x70, #0x00	;  112
      00344D 74 00                 2298 	.byte #0x74, #0x00	;  116
      00344F 77 00                 2299 	.byte #0x77, #0x00	;  119
      003451 7A 00                 2300 	.byte #0x7a, #0x00	;  122
      003453 7D 00                 2301 	.byte #0x7d, #0x00	;  125
      003455                       2302 _trig_dac_values:
      003455 00 00                 2303 	.byte #0x00, #0x00	;  0
      003457 01 00                 2304 	.byte #0x01, #0x00	;  1
      003459 02 00                 2305 	.byte #0x02, #0x00	;  2
      00345B 03 00                 2306 	.byte #0x03, #0x00	;  3
      00345D 04 00                 2307 	.byte #0x04, #0x00	;  4
      00345F 05 00                 2308 	.byte #0x05, #0x00	;  5
      003461 06 00                 2309 	.byte #0x06, #0x00	;  6
      003463 07 00                 2310 	.byte #0x07, #0x00	;  7
      003465 08 00                 2311 	.byte #0x08, #0x00	;  8
      003467 09 00                 2312 	.byte #0x09, #0x00	;  9
      003469 0A 00                 2313 	.byte #0x0a, #0x00	;  10
      00346B 0B 00                 2314 	.byte #0x0b, #0x00	;  11
      00346D 0C 00                 2315 	.byte #0x0c, #0x00	;  12
      00346F 0D 00                 2316 	.byte #0x0d, #0x00	;  13
      003471 0E 00                 2317 	.byte #0x0e, #0x00	;  14
      003473 0F 00                 2318 	.byte #0x0f, #0x00	;  15
      003475 10 00                 2319 	.byte #0x10, #0x00	;  16
      003477 11 00                 2320 	.byte #0x11, #0x00	;  17
      003479 12 00                 2321 	.byte #0x12, #0x00	;  18
      00347B 13 00                 2322 	.byte #0x13, #0x00	;  19
      00347D 14 00                 2323 	.byte #0x14, #0x00	;  20
      00347F 15 00                 2324 	.byte #0x15, #0x00	;  21
      003481 16 00                 2325 	.byte #0x16, #0x00	;  22
      003483 17 00                 2326 	.byte #0x17, #0x00	;  23
      003485 18 00                 2327 	.byte #0x18, #0x00	;  24
      003487 19 00                 2328 	.byte #0x19, #0x00	;  25
      003489 1A 00                 2329 	.byte #0x1a, #0x00	;  26
      00348B 1B 00                 2330 	.byte #0x1b, #0x00	;  27
      00348D 1C 00                 2331 	.byte #0x1c, #0x00	;  28
      00348F 1D 00                 2332 	.byte #0x1d, #0x00	;  29
      003491 1E 00                 2333 	.byte #0x1e, #0x00	;  30
      003493 1F 00                 2334 	.byte #0x1f, #0x00	;  31
      003495 20 00                 2335 	.byte #0x20, #0x00	;  32
      003497 21 00                 2336 	.byte #0x21, #0x00	;  33
      003499 22 00                 2337 	.byte #0x22, #0x00	;  34
      00349B 23 00                 2338 	.byte #0x23, #0x00	;  35
      00349D 24 00                 2339 	.byte #0x24, #0x00	;  36
      00349F 25 00                 2340 	.byte #0x25, #0x00	;  37
      0034A1 26 00                 2341 	.byte #0x26, #0x00	;  38
      0034A3 27 00                 2342 	.byte #0x27, #0x00	;  39
      0034A5 28 00                 2343 	.byte #0x28, #0x00	;  40
      0034A7 29 00                 2344 	.byte #0x29, #0x00	;  41
      0034A9 2A 00                 2345 	.byte #0x2a, #0x00	;  42
      0034AB 2B 00                 2346 	.byte #0x2b, #0x00	;  43
      0034AD 2C 00                 2347 	.byte #0x2c, #0x00	;  44
      0034AF 2D 00                 2348 	.byte #0x2d, #0x00	;  45
      0034B1 2E 00                 2349 	.byte #0x2e, #0x00	;  46
      0034B3 2F 00                 2350 	.byte #0x2f, #0x00	;  47
      0034B5 30 00                 2351 	.byte #0x30, #0x00	;  48
      0034B7 31 00                 2352 	.byte #0x31, #0x00	;  49
      0034B9 32 00                 2353 	.byte #0x32, #0x00	;  50
      0034BB 33 00                 2354 	.byte #0x33, #0x00	;  51
      0034BD 34 00                 2355 	.byte #0x34, #0x00	;  52
      0034BF 35 00                 2356 	.byte #0x35, #0x00	;  53
      0034C1 36 00                 2357 	.byte #0x36, #0x00	;  54
      0034C3 37 00                 2358 	.byte #0x37, #0x00	;  55
      0034C5 38 00                 2359 	.byte #0x38, #0x00	;  56
      0034C7 39 00                 2360 	.byte #0x39, #0x00	;  57
      0034C9 3A 00                 2361 	.byte #0x3a, #0x00	;  58
      0034CB 3B 00                 2362 	.byte #0x3b, #0x00	;  59
      0034CD 3C 00                 2363 	.byte #0x3c, #0x00	;  60
      0034CF 3D 00                 2364 	.byte #0x3d, #0x00	;  61
      0034D1 3E 00                 2365 	.byte #0x3e, #0x00	;  62
      0034D3 3F 00                 2366 	.byte #0x3f, #0x00	;  63
      0034D5 40 00                 2367 	.byte #0x40, #0x00	;  64
      0034D7 41 00                 2368 	.byte #0x41, #0x00	;  65
      0034D9 42 00                 2369 	.byte #0x42, #0x00	;  66
      0034DB 43 00                 2370 	.byte #0x43, #0x00	;  67
      0034DD 44 00                 2371 	.byte #0x44, #0x00	;  68
      0034DF 45 00                 2372 	.byte #0x45, #0x00	;  69
      0034E1 46 00                 2373 	.byte #0x46, #0x00	;  70
      0034E3 47 00                 2374 	.byte #0x47, #0x00	;  71
      0034E5 48 00                 2375 	.byte #0x48, #0x00	;  72
      0034E7 49 00                 2376 	.byte #0x49, #0x00	;  73
      0034E9 4A 00                 2377 	.byte #0x4a, #0x00	;  74
      0034EB 4B 00                 2378 	.byte #0x4b, #0x00	;  75
      0034ED 4C 00                 2379 	.byte #0x4c, #0x00	;  76
      0034EF 4D 00                 2380 	.byte #0x4d, #0x00	;  77
      0034F1 4E 00                 2381 	.byte #0x4e, #0x00	;  78
      0034F3 4F 00                 2382 	.byte #0x4f, #0x00	;  79
      0034F5 50 00                 2383 	.byte #0x50, #0x00	;  80
      0034F7 51 00                 2384 	.byte #0x51, #0x00	;  81
      0034F9 52 00                 2385 	.byte #0x52, #0x00	;  82
      0034FB 53 00                 2386 	.byte #0x53, #0x00	;  83
      0034FD 54 00                 2387 	.byte #0x54, #0x00	;  84
      0034FF 55 00                 2388 	.byte #0x55, #0x00	;  85
      003501 56 00                 2389 	.byte #0x56, #0x00	;  86
      003503 57 00                 2390 	.byte #0x57, #0x00	;  87
      003505 58 00                 2391 	.byte #0x58, #0x00	;  88
      003507 59 00                 2392 	.byte #0x59, #0x00	;  89
      003509 5A 00                 2393 	.byte #0x5a, #0x00	;  90
      00350B 5B 00                 2394 	.byte #0x5b, #0x00	;  91
      00350D 5C 00                 2395 	.byte #0x5c, #0x00	;  92
      00350F 5D 00                 2396 	.byte #0x5d, #0x00	;  93
      003511 5E 00                 2397 	.byte #0x5e, #0x00	;  94
      003513 5F 00                 2398 	.byte #0x5f, #0x00	;  95
      003515 60 00                 2399 	.byte #0x60, #0x00	;  96
      003517 61 00                 2400 	.byte #0x61, #0x00	;  97
      003519 62 00                 2401 	.byte #0x62, #0x00	;  98
      00351B 63 00                 2402 	.byte #0x63, #0x00	;  99
      00351D 64 00                 2403 	.byte #0x64, #0x00	;  100
      00351F 65 00                 2404 	.byte #0x65, #0x00	;  101
      003521 66 00                 2405 	.byte #0x66, #0x00	;  102
      003523 67 00                 2406 	.byte #0x67, #0x00	;  103
      003525 68 00                 2407 	.byte #0x68, #0x00	;  104
      003527 69 00                 2408 	.byte #0x69, #0x00	;  105
      003529 6A 00                 2409 	.byte #0x6a, #0x00	;  106
      00352B 6B 00                 2410 	.byte #0x6b, #0x00	;  107
      00352D 6C 00                 2411 	.byte #0x6c, #0x00	;  108
      00352F 6D 00                 2412 	.byte #0x6d, #0x00	;  109
      003531 6E 00                 2413 	.byte #0x6e, #0x00	;  110
      003533 6F 00                 2414 	.byte #0x6f, #0x00	;  111
      003535 70 00                 2415 	.byte #0x70, #0x00	;  112
      003537 71 00                 2416 	.byte #0x71, #0x00	;  113
      003539 72 00                 2417 	.byte #0x72, #0x00	;  114
      00353B 73 00                 2418 	.byte #0x73, #0x00	;  115
      00353D 74 00                 2419 	.byte #0x74, #0x00	;  116
      00353F 75 00                 2420 	.byte #0x75, #0x00	;  117
      003541 76 00                 2421 	.byte #0x76, #0x00	;  118
      003543 77 00                 2422 	.byte #0x77, #0x00	;  119
      003545 78 00                 2423 	.byte #0x78, #0x00	;  120
      003547 79 00                 2424 	.byte #0x79, #0x00	;  121
      003549 7A 00                 2425 	.byte #0x7a, #0x00	;  122
      00354B 7B 00                 2426 	.byte #0x7b, #0x00	;  123
      00354D 7C 00                 2427 	.byte #0x7c, #0x00	;  124
      00354F 7D 00                 2428 	.byte #0x7d, #0x00	;  125
      003551 7E 00                 2429 	.byte #0x7e, #0x00	;  126
      003553 7F 00                 2430 	.byte #0x7f, #0x00	;  127
      003555 80 00                 2431 	.byte #0x80, #0x00	;  128
      003557 81 00                 2432 	.byte #0x81, #0x00	;  129
      003559 82 00                 2433 	.byte #0x82, #0x00	;  130
      00355B 83 00                 2434 	.byte #0x83, #0x00	;  131
      00355D 84 00                 2435 	.byte #0x84, #0x00	;  132
      00355F 85 00                 2436 	.byte #0x85, #0x00	;  133
      003561 86 00                 2437 	.byte #0x86, #0x00	;  134
      003563 87 00                 2438 	.byte #0x87, #0x00	;  135
      003565 88 00                 2439 	.byte #0x88, #0x00	;  136
      003567 89 00                 2440 	.byte #0x89, #0x00	;  137
      003569 8A 00                 2441 	.byte #0x8a, #0x00	;  138
      00356B 8B 00                 2442 	.byte #0x8b, #0x00	;  139
      00356D 8C 00                 2443 	.byte #0x8c, #0x00	;  140
      00356F 8D 00                 2444 	.byte #0x8d, #0x00	;  141
      003571 8E 00                 2445 	.byte #0x8e, #0x00	;  142
      003573 8F 00                 2446 	.byte #0x8f, #0x00	;  143
      003575 90 00                 2447 	.byte #0x90, #0x00	;  144
      003577 91 00                 2448 	.byte #0x91, #0x00	;  145
      003579 92 00                 2449 	.byte #0x92, #0x00	;  146
      00357B 93 00                 2450 	.byte #0x93, #0x00	;  147
      00357D 94 00                 2451 	.byte #0x94, #0x00	;  148
      00357F 95 00                 2452 	.byte #0x95, #0x00	;  149
      003581 96 00                 2453 	.byte #0x96, #0x00	;  150
      003583 97 00                 2454 	.byte #0x97, #0x00	;  151
      003585 98 00                 2455 	.byte #0x98, #0x00	;  152
      003587 99 00                 2456 	.byte #0x99, #0x00	;  153
      003589 9A 00                 2457 	.byte #0x9a, #0x00	;  154
      00358B 9B 00                 2458 	.byte #0x9b, #0x00	;  155
      00358D 9C 00                 2459 	.byte #0x9c, #0x00	;  156
      00358F 9D 00                 2460 	.byte #0x9d, #0x00	;  157
      003591 9E 00                 2461 	.byte #0x9e, #0x00	;  158
      003593 9F 00                 2462 	.byte #0x9f, #0x00	;  159
      003595 A0 00                 2463 	.byte #0xa0, #0x00	;  160
      003597 A1 00                 2464 	.byte #0xa1, #0x00	;  161
      003599 A2 00                 2465 	.byte #0xa2, #0x00	;  162
      00359B A3 00                 2466 	.byte #0xa3, #0x00	;  163
      00359D A4 00                 2467 	.byte #0xa4, #0x00	;  164
      00359F A5 00                 2468 	.byte #0xa5, #0x00	;  165
      0035A1 A6 00                 2469 	.byte #0xa6, #0x00	;  166
      0035A3 A7 00                 2470 	.byte #0xa7, #0x00	;  167
      0035A5 A8 00                 2471 	.byte #0xa8, #0x00	;  168
      0035A7 A9 00                 2472 	.byte #0xa9, #0x00	;  169
      0035A9 AA 00                 2473 	.byte #0xaa, #0x00	;  170
      0035AB AB 00                 2474 	.byte #0xab, #0x00	;  171
      0035AD AC 00                 2475 	.byte #0xac, #0x00	;  172
      0035AF AD 00                 2476 	.byte #0xad, #0x00	;  173
      0035B1 AE 00                 2477 	.byte #0xae, #0x00	;  174
      0035B3 AF 00                 2478 	.byte #0xaf, #0x00	;  175
      0035B5 B0 00                 2479 	.byte #0xb0, #0x00	;  176
      0035B7 B1 00                 2480 	.byte #0xb1, #0x00	;  177
      0035B9 B2 00                 2481 	.byte #0xb2, #0x00	;  178
      0035BB B3 00                 2482 	.byte #0xb3, #0x00	;  179
      0035BD B4 00                 2483 	.byte #0xb4, #0x00	;  180
      0035BF B5 00                 2484 	.byte #0xb5, #0x00	;  181
      0035C1 B6 00                 2485 	.byte #0xb6, #0x00	;  182
      0035C3 B7 00                 2486 	.byte #0xb7, #0x00	;  183
      0035C5 B8 00                 2487 	.byte #0xb8, #0x00	;  184
      0035C7 B9 00                 2488 	.byte #0xb9, #0x00	;  185
      0035C9 BA 00                 2489 	.byte #0xba, #0x00	;  186
      0035CB BB 00                 2490 	.byte #0xbb, #0x00	;  187
      0035CD BC 00                 2491 	.byte #0xbc, #0x00	;  188
      0035CF BD 00                 2492 	.byte #0xbd, #0x00	;  189
      0035D1 BE 00                 2493 	.byte #0xbe, #0x00	;  190
      0035D3 BF 00                 2494 	.byte #0xbf, #0x00	;  191
      0035D5 C0 00                 2495 	.byte #0xc0, #0x00	;  192
      0035D7 C1 00                 2496 	.byte #0xc1, #0x00	;  193
      0035D9 C2 00                 2497 	.byte #0xc2, #0x00	;  194
      0035DB C3 00                 2498 	.byte #0xc3, #0x00	;  195
      0035DD C4 00                 2499 	.byte #0xc4, #0x00	;  196
      0035DF C5 00                 2500 	.byte #0xc5, #0x00	;  197
      0035E1 C6 00                 2501 	.byte #0xc6, #0x00	;  198
      0035E3 C7 00                 2502 	.byte #0xc7, #0x00	;  199
      0035E5 C8 00                 2503 	.byte #0xc8, #0x00	;  200
      0035E7 C9 00                 2504 	.byte #0xc9, #0x00	;  201
      0035E9 CA 00                 2505 	.byte #0xca, #0x00	;  202
      0035EB CB 00                 2506 	.byte #0xcb, #0x00	;  203
      0035ED CC 00                 2507 	.byte #0xcc, #0x00	;  204
      0035EF CD 00                 2508 	.byte #0xcd, #0x00	;  205
      0035F1 CE 00                 2509 	.byte #0xce, #0x00	;  206
      0035F3 CF 00                 2510 	.byte #0xcf, #0x00	;  207
      0035F5 D0 00                 2511 	.byte #0xd0, #0x00	;  208
      0035F7 D1 00                 2512 	.byte #0xd1, #0x00	;  209
      0035F9 D2 00                 2513 	.byte #0xd2, #0x00	;  210
      0035FB D3 00                 2514 	.byte #0xd3, #0x00	;  211
      0035FD D4 00                 2515 	.byte #0xd4, #0x00	;  212
      0035FF D5 00                 2516 	.byte #0xd5, #0x00	;  213
      003601 D6 00                 2517 	.byte #0xd6, #0x00	;  214
      003603 D7 00                 2518 	.byte #0xd7, #0x00	;  215
      003605 D8 00                 2519 	.byte #0xd8, #0x00	;  216
      003607 D9 00                 2520 	.byte #0xd9, #0x00	;  217
      003609 DA 00                 2521 	.byte #0xda, #0x00	;  218
      00360B DB 00                 2522 	.byte #0xdb, #0x00	;  219
      00360D DC 00                 2523 	.byte #0xdc, #0x00	;  220
      00360F DD 00                 2524 	.byte #0xdd, #0x00	;  221
      003611 DE 00                 2525 	.byte #0xde, #0x00	;  222
      003613 DF 00                 2526 	.byte #0xdf, #0x00	;  223
      003615 E0 00                 2527 	.byte #0xe0, #0x00	;  224
      003617 E1 00                 2528 	.byte #0xe1, #0x00	;  225
      003619 E2 00                 2529 	.byte #0xe2, #0x00	;  226
      00361B E3 00                 2530 	.byte #0xe3, #0x00	;  227
      00361D E4 00                 2531 	.byte #0xe4, #0x00	;  228
      00361F E5 00                 2532 	.byte #0xe5, #0x00	;  229
      003621 E6 00                 2533 	.byte #0xe6, #0x00	;  230
      003623 E7 00                 2534 	.byte #0xe7, #0x00	;  231
      003625 E8 00                 2535 	.byte #0xe8, #0x00	;  232
      003627 E9 00                 2536 	.byte #0xe9, #0x00	;  233
      003629 EA 00                 2537 	.byte #0xea, #0x00	;  234
      00362B EB 00                 2538 	.byte #0xeb, #0x00	;  235
      00362D EC 00                 2539 	.byte #0xec, #0x00	;  236
      00362F ED 00                 2540 	.byte #0xed, #0x00	;  237
      003631 EE 00                 2541 	.byte #0xee, #0x00	;  238
      003633 EF 00                 2542 	.byte #0xef, #0x00	;  239
      003635 F0 00                 2543 	.byte #0xf0, #0x00	;  240
      003637 F1 00                 2544 	.byte #0xf1, #0x00	;  241
      003639 F2 00                 2545 	.byte #0xf2, #0x00	;  242
      00363B F3 00                 2546 	.byte #0xf3, #0x00	;  243
      00363D F4 00                 2547 	.byte #0xf4, #0x00	;  244
      00363F F5 00                 2548 	.byte #0xf5, #0x00	;  245
      003641 F6 00                 2549 	.byte #0xf6, #0x00	;  246
      003643 F7 00                 2550 	.byte #0xf7, #0x00	;  247
      003645 F8 00                 2551 	.byte #0xf8, #0x00	;  248
      003647 F9 00                 2552 	.byte #0xf9, #0x00	;  249
      003649 FA 00                 2553 	.byte #0xfa, #0x00	;  250
      00364B FB 00                 2554 	.byte #0xfb, #0x00	;  251
      00364D FC 00                 2555 	.byte #0xfc, #0x00	;  252
      00364F FD 00                 2556 	.byte #0xfd, #0x00	;  253
      003651 FE 00                 2557 	.byte #0xfe, #0x00	;  254
      003653 FF 00                 2558 	.byte #0xff, #0x00	;  255
      003655 FF 00                 2559 	.byte #0xff, #0x00	;  255
      003657 FE 00                 2560 	.byte #0xfe, #0x00	;  254
      003659 FD 00                 2561 	.byte #0xfd, #0x00	;  253
      00365B FC 00                 2562 	.byte #0xfc, #0x00	;  252
      00365D FB 00                 2563 	.byte #0xfb, #0x00	;  251
      00365F FA 00                 2564 	.byte #0xfa, #0x00	;  250
      003661 F9 00                 2565 	.byte #0xf9, #0x00	;  249
      003663 F8 00                 2566 	.byte #0xf8, #0x00	;  248
      003665 F7 00                 2567 	.byte #0xf7, #0x00	;  247
      003667 F6 00                 2568 	.byte #0xf6, #0x00	;  246
      003669 F5 00                 2569 	.byte #0xf5, #0x00	;  245
      00366B F4 00                 2570 	.byte #0xf4, #0x00	;  244
      00366D F3 00                 2571 	.byte #0xf3, #0x00	;  243
      00366F F2 00                 2572 	.byte #0xf2, #0x00	;  242
      003671 F1 00                 2573 	.byte #0xf1, #0x00	;  241
      003673 F0 00                 2574 	.byte #0xf0, #0x00	;  240
      003675 EF 00                 2575 	.byte #0xef, #0x00	;  239
      003677 EE 00                 2576 	.byte #0xee, #0x00	;  238
      003679 ED 00                 2577 	.byte #0xed, #0x00	;  237
      00367B EC 00                 2578 	.byte #0xec, #0x00	;  236
      00367D EB 00                 2579 	.byte #0xeb, #0x00	;  235
      00367F EA 00                 2580 	.byte #0xea, #0x00	;  234
      003681 E9 00                 2581 	.byte #0xe9, #0x00	;  233
      003683 E8 00                 2582 	.byte #0xe8, #0x00	;  232
      003685 E7 00                 2583 	.byte #0xe7, #0x00	;  231
      003687 E6 00                 2584 	.byte #0xe6, #0x00	;  230
      003689 E5 00                 2585 	.byte #0xe5, #0x00	;  229
      00368B E4 00                 2586 	.byte #0xe4, #0x00	;  228
      00368D E3 00                 2587 	.byte #0xe3, #0x00	;  227
      00368F E2 00                 2588 	.byte #0xe2, #0x00	;  226
      003691 E1 00                 2589 	.byte #0xe1, #0x00	;  225
      003693 E0 00                 2590 	.byte #0xe0, #0x00	;  224
      003695 DF 00                 2591 	.byte #0xdf, #0x00	;  223
      003697 DE 00                 2592 	.byte #0xde, #0x00	;  222
      003699 DD 00                 2593 	.byte #0xdd, #0x00	;  221
      00369B DC 00                 2594 	.byte #0xdc, #0x00	;  220
      00369D DB 00                 2595 	.byte #0xdb, #0x00	;  219
      00369F DA 00                 2596 	.byte #0xda, #0x00	;  218
      0036A1 D9 00                 2597 	.byte #0xd9, #0x00	;  217
      0036A3 D8 00                 2598 	.byte #0xd8, #0x00	;  216
      0036A5 D7 00                 2599 	.byte #0xd7, #0x00	;  215
      0036A7 D6 00                 2600 	.byte #0xd6, #0x00	;  214
      0036A9 D5 00                 2601 	.byte #0xd5, #0x00	;  213
      0036AB D4 00                 2602 	.byte #0xd4, #0x00	;  212
      0036AD D3 00                 2603 	.byte #0xd3, #0x00	;  211
      0036AF D2 00                 2604 	.byte #0xd2, #0x00	;  210
      0036B1 D1 00                 2605 	.byte #0xd1, #0x00	;  209
      0036B3 D0 00                 2606 	.byte #0xd0, #0x00	;  208
      0036B5 CF 00                 2607 	.byte #0xcf, #0x00	;  207
      0036B7 CE 00                 2608 	.byte #0xce, #0x00	;  206
      0036B9 CD 00                 2609 	.byte #0xcd, #0x00	;  205
      0036BB CC 00                 2610 	.byte #0xcc, #0x00	;  204
      0036BD CB 00                 2611 	.byte #0xcb, #0x00	;  203
      0036BF CA 00                 2612 	.byte #0xca, #0x00	;  202
      0036C1 C9 00                 2613 	.byte #0xc9, #0x00	;  201
      0036C3 C8 00                 2614 	.byte #0xc8, #0x00	;  200
      0036C5 C7 00                 2615 	.byte #0xc7, #0x00	;  199
      0036C7 C6 00                 2616 	.byte #0xc6, #0x00	;  198
      0036C9 C5 00                 2617 	.byte #0xc5, #0x00	;  197
      0036CB C4 00                 2618 	.byte #0xc4, #0x00	;  196
      0036CD C3 00                 2619 	.byte #0xc3, #0x00	;  195
      0036CF C2 00                 2620 	.byte #0xc2, #0x00	;  194
      0036D1 C1 00                 2621 	.byte #0xc1, #0x00	;  193
      0036D3 C0 00                 2622 	.byte #0xc0, #0x00	;  192
      0036D5 BF 00                 2623 	.byte #0xbf, #0x00	;  191
      0036D7 BE 00                 2624 	.byte #0xbe, #0x00	;  190
      0036D9 BD 00                 2625 	.byte #0xbd, #0x00	;  189
      0036DB BC 00                 2626 	.byte #0xbc, #0x00	;  188
      0036DD BB 00                 2627 	.byte #0xbb, #0x00	;  187
      0036DF BA 00                 2628 	.byte #0xba, #0x00	;  186
      0036E1 B9 00                 2629 	.byte #0xb9, #0x00	;  185
      0036E3 B8 00                 2630 	.byte #0xb8, #0x00	;  184
      0036E5 B7 00                 2631 	.byte #0xb7, #0x00	;  183
      0036E7 B6 00                 2632 	.byte #0xb6, #0x00	;  182
      0036E9 B5 00                 2633 	.byte #0xb5, #0x00	;  181
      0036EB B4 00                 2634 	.byte #0xb4, #0x00	;  180
      0036ED B3 00                 2635 	.byte #0xb3, #0x00	;  179
      0036EF B2 00                 2636 	.byte #0xb2, #0x00	;  178
      0036F1 B1 00                 2637 	.byte #0xb1, #0x00	;  177
      0036F3 B0 00                 2638 	.byte #0xb0, #0x00	;  176
      0036F5 AF 00                 2639 	.byte #0xaf, #0x00	;  175
      0036F7 AE 00                 2640 	.byte #0xae, #0x00	;  174
      0036F9 AD 00                 2641 	.byte #0xad, #0x00	;  173
      0036FB AC 00                 2642 	.byte #0xac, #0x00	;  172
      0036FD AB 00                 2643 	.byte #0xab, #0x00	;  171
      0036FF AA 00                 2644 	.byte #0xaa, #0x00	;  170
      003701 A9 00                 2645 	.byte #0xa9, #0x00	;  169
      003703 A8 00                 2646 	.byte #0xa8, #0x00	;  168
      003705 A7 00                 2647 	.byte #0xa7, #0x00	;  167
      003707 A6 00                 2648 	.byte #0xa6, #0x00	;  166
      003709 A5 00                 2649 	.byte #0xa5, #0x00	;  165
      00370B A4 00                 2650 	.byte #0xa4, #0x00	;  164
      00370D A3 00                 2651 	.byte #0xa3, #0x00	;  163
      00370F A2 00                 2652 	.byte #0xa2, #0x00	;  162
      003711 A1 00                 2653 	.byte #0xa1, #0x00	;  161
      003713 A0 00                 2654 	.byte #0xa0, #0x00	;  160
      003715 9F 00                 2655 	.byte #0x9f, #0x00	;  159
      003717 9E 00                 2656 	.byte #0x9e, #0x00	;  158
      003719 9D 00                 2657 	.byte #0x9d, #0x00	;  157
      00371B 9C 00                 2658 	.byte #0x9c, #0x00	;  156
      00371D 9B 00                 2659 	.byte #0x9b, #0x00	;  155
      00371F 9A 00                 2660 	.byte #0x9a, #0x00	;  154
      003721 99 00                 2661 	.byte #0x99, #0x00	;  153
      003723 98 00                 2662 	.byte #0x98, #0x00	;  152
      003725 97 00                 2663 	.byte #0x97, #0x00	;  151
      003727 96 00                 2664 	.byte #0x96, #0x00	;  150
      003729 95 00                 2665 	.byte #0x95, #0x00	;  149
      00372B 94 00                 2666 	.byte #0x94, #0x00	;  148
      00372D 93 00                 2667 	.byte #0x93, #0x00	;  147
      00372F 92 00                 2668 	.byte #0x92, #0x00	;  146
      003731 91 00                 2669 	.byte #0x91, #0x00	;  145
      003733 90 00                 2670 	.byte #0x90, #0x00	;  144
      003735 8F 00                 2671 	.byte #0x8f, #0x00	;  143
      003737 8E 00                 2672 	.byte #0x8e, #0x00	;  142
      003739 8D 00                 2673 	.byte #0x8d, #0x00	;  141
      00373B 8C 00                 2674 	.byte #0x8c, #0x00	;  140
      00373D 8B 00                 2675 	.byte #0x8b, #0x00	;  139
      00373F 8A 00                 2676 	.byte #0x8a, #0x00	;  138
      003741 89 00                 2677 	.byte #0x89, #0x00	;  137
      003743 88 00                 2678 	.byte #0x88, #0x00	;  136
      003745 87 00                 2679 	.byte #0x87, #0x00	;  135
      003747 86 00                 2680 	.byte #0x86, #0x00	;  134
      003749 85 00                 2681 	.byte #0x85, #0x00	;  133
      00374B 84 00                 2682 	.byte #0x84, #0x00	;  132
      00374D 83 00                 2683 	.byte #0x83, #0x00	;  131
      00374F 82 00                 2684 	.byte #0x82, #0x00	;  130
      003751 81 00                 2685 	.byte #0x81, #0x00	;  129
      003753 80 00                 2686 	.byte #0x80, #0x00	;  128
      003755 7F 00                 2687 	.byte #0x7f, #0x00	;  127
      003757 7E 00                 2688 	.byte #0x7e, #0x00	;  126
      003759 7D 00                 2689 	.byte #0x7d, #0x00	;  125
      00375B 7C 00                 2690 	.byte #0x7c, #0x00	;  124
      00375D 7B 00                 2691 	.byte #0x7b, #0x00	;  123
      00375F 7A 00                 2692 	.byte #0x7a, #0x00	;  122
      003761 79 00                 2693 	.byte #0x79, #0x00	;  121
      003763 78 00                 2694 	.byte #0x78, #0x00	;  120
      003765 77 00                 2695 	.byte #0x77, #0x00	;  119
      003767 76 00                 2696 	.byte #0x76, #0x00	;  118
      003769 75 00                 2697 	.byte #0x75, #0x00	;  117
      00376B 74 00                 2698 	.byte #0x74, #0x00	;  116
      00376D 73 00                 2699 	.byte #0x73, #0x00	;  115
      00376F 72 00                 2700 	.byte #0x72, #0x00	;  114
      003771 71 00                 2701 	.byte #0x71, #0x00	;  113
      003773 70 00                 2702 	.byte #0x70, #0x00	;  112
      003775 6F 00                 2703 	.byte #0x6f, #0x00	;  111
      003777 6E 00                 2704 	.byte #0x6e, #0x00	;  110
      003779 6D 00                 2705 	.byte #0x6d, #0x00	;  109
      00377B 6C 00                 2706 	.byte #0x6c, #0x00	;  108
      00377D 6B 00                 2707 	.byte #0x6b, #0x00	;  107
      00377F 6A 00                 2708 	.byte #0x6a, #0x00	;  106
      003781 69 00                 2709 	.byte #0x69, #0x00	;  105
      003783 68 00                 2710 	.byte #0x68, #0x00	;  104
      003785 67 00                 2711 	.byte #0x67, #0x00	;  103
      003787 66 00                 2712 	.byte #0x66, #0x00	;  102
      003789 65 00                 2713 	.byte #0x65, #0x00	;  101
      00378B 64 00                 2714 	.byte #0x64, #0x00	;  100
      00378D 63 00                 2715 	.byte #0x63, #0x00	;  99
      00378F 62 00                 2716 	.byte #0x62, #0x00	;  98
      003791 61 00                 2717 	.byte #0x61, #0x00	;  97
      003793 60 00                 2718 	.byte #0x60, #0x00	;  96
      003795 5F 00                 2719 	.byte #0x5f, #0x00	;  95
      003797 5E 00                 2720 	.byte #0x5e, #0x00	;  94
      003799 5D 00                 2721 	.byte #0x5d, #0x00	;  93
      00379B 5C 00                 2722 	.byte #0x5c, #0x00	;  92
      00379D 5B 00                 2723 	.byte #0x5b, #0x00	;  91
      00379F 5A 00                 2724 	.byte #0x5a, #0x00	;  90
      0037A1 59 00                 2725 	.byte #0x59, #0x00	;  89
      0037A3 58 00                 2726 	.byte #0x58, #0x00	;  88
      0037A5 57 00                 2727 	.byte #0x57, #0x00	;  87
      0037A7 56 00                 2728 	.byte #0x56, #0x00	;  86
      0037A9 55 00                 2729 	.byte #0x55, #0x00	;  85
      0037AB 54 00                 2730 	.byte #0x54, #0x00	;  84
      0037AD 53 00                 2731 	.byte #0x53, #0x00	;  83
      0037AF 52 00                 2732 	.byte #0x52, #0x00	;  82
      0037B1 51 00                 2733 	.byte #0x51, #0x00	;  81
      0037B3 50 00                 2734 	.byte #0x50, #0x00	;  80
      0037B5 4F 00                 2735 	.byte #0x4f, #0x00	;  79
      0037B7 4E 00                 2736 	.byte #0x4e, #0x00	;  78
      0037B9 4D 00                 2737 	.byte #0x4d, #0x00	;  77
      0037BB 4C 00                 2738 	.byte #0x4c, #0x00	;  76
      0037BD 4B 00                 2739 	.byte #0x4b, #0x00	;  75
      0037BF 4A 00                 2740 	.byte #0x4a, #0x00	;  74
      0037C1 49 00                 2741 	.byte #0x49, #0x00	;  73
      0037C3 48 00                 2742 	.byte #0x48, #0x00	;  72
      0037C5 47 00                 2743 	.byte #0x47, #0x00	;  71
      0037C7 46 00                 2744 	.byte #0x46, #0x00	;  70
      0037C9 45 00                 2745 	.byte #0x45, #0x00	;  69
      0037CB 44 00                 2746 	.byte #0x44, #0x00	;  68
      0037CD 43 00                 2747 	.byte #0x43, #0x00	;  67
      0037CF 42 00                 2748 	.byte #0x42, #0x00	;  66
      0037D1 41 00                 2749 	.byte #0x41, #0x00	;  65
      0037D3 40 00                 2750 	.byte #0x40, #0x00	;  64
      0037D5 3F 00                 2751 	.byte #0x3f, #0x00	;  63
      0037D7 3E 00                 2752 	.byte #0x3e, #0x00	;  62
      0037D9 3D 00                 2753 	.byte #0x3d, #0x00	;  61
      0037DB 3C 00                 2754 	.byte #0x3c, #0x00	;  60
      0037DD 3B 00                 2755 	.byte #0x3b, #0x00	;  59
      0037DF 3A 00                 2756 	.byte #0x3a, #0x00	;  58
      0037E1 39 00                 2757 	.byte #0x39, #0x00	;  57
      0037E3 38 00                 2758 	.byte #0x38, #0x00	;  56
      0037E5 37 00                 2759 	.byte #0x37, #0x00	;  55
      0037E7 36 00                 2760 	.byte #0x36, #0x00	;  54
      0037E9 35 00                 2761 	.byte #0x35, #0x00	;  53
      0037EB 34 00                 2762 	.byte #0x34, #0x00	;  52
      0037ED 33 00                 2763 	.byte #0x33, #0x00	;  51
      0037EF 32 00                 2764 	.byte #0x32, #0x00	;  50
      0037F1 31 00                 2765 	.byte #0x31, #0x00	;  49
      0037F3 30 00                 2766 	.byte #0x30, #0x00	;  48
      0037F5 2F 00                 2767 	.byte #0x2f, #0x00	;  47
      0037F7 2E 00                 2768 	.byte #0x2e, #0x00	;  46
      0037F9 2D 00                 2769 	.byte #0x2d, #0x00	;  45
      0037FB 2C 00                 2770 	.byte #0x2c, #0x00	;  44
      0037FD 2B 00                 2771 	.byte #0x2b, #0x00	;  43
      0037FF 2A 00                 2772 	.byte #0x2a, #0x00	;  42
      003801 29 00                 2773 	.byte #0x29, #0x00	;  41
      003803 28 00                 2774 	.byte #0x28, #0x00	;  40
      003805 27 00                 2775 	.byte #0x27, #0x00	;  39
      003807 26 00                 2776 	.byte #0x26, #0x00	;  38
      003809 25 00                 2777 	.byte #0x25, #0x00	;  37
      00380B 24 00                 2778 	.byte #0x24, #0x00	;  36
      00380D 23 00                 2779 	.byte #0x23, #0x00	;  35
      00380F 22 00                 2780 	.byte #0x22, #0x00	;  34
      003811 21 00                 2781 	.byte #0x21, #0x00	;  33
      003813 20 00                 2782 	.byte #0x20, #0x00	;  32
      003815 1F 00                 2783 	.byte #0x1f, #0x00	;  31
      003817 1E 00                 2784 	.byte #0x1e, #0x00	;  30
      003819 1D 00                 2785 	.byte #0x1d, #0x00	;  29
      00381B 1C 00                 2786 	.byte #0x1c, #0x00	;  28
      00381D 1B 00                 2787 	.byte #0x1b, #0x00	;  27
      00381F 1A 00                 2788 	.byte #0x1a, #0x00	;  26
      003821 19 00                 2789 	.byte #0x19, #0x00	;  25
      003823 18 00                 2790 	.byte #0x18, #0x00	;  24
      003825 17 00                 2791 	.byte #0x17, #0x00	;  23
      003827 16 00                 2792 	.byte #0x16, #0x00	;  22
      003829 15 00                 2793 	.byte #0x15, #0x00	;  21
      00382B 14 00                 2794 	.byte #0x14, #0x00	;  20
      00382D 13 00                 2795 	.byte #0x13, #0x00	;  19
      00382F 12 00                 2796 	.byte #0x12, #0x00	;  18
      003831 11 00                 2797 	.byte #0x11, #0x00	;  17
      003833 10 00                 2798 	.byte #0x10, #0x00	;  16
      003835 0F 00                 2799 	.byte #0x0f, #0x00	;  15
      003837 0E 00                 2800 	.byte #0x0e, #0x00	;  14
      003839 0D 00                 2801 	.byte #0x0d, #0x00	;  13
      00383B 0C 00                 2802 	.byte #0x0c, #0x00	;  12
      00383D 0B 00                 2803 	.byte #0x0b, #0x00	;  11
      00383F 0A 00                 2804 	.byte #0x0a, #0x00	;  10
      003841 09 00                 2805 	.byte #0x09, #0x00	;  9
      003843 08 00                 2806 	.byte #0x08, #0x00	;  8
      003845 07 00                 2807 	.byte #0x07, #0x00	;  7
      003847 06 00                 2808 	.byte #0x06, #0x00	;  6
      003849 05 00                 2809 	.byte #0x05, #0x00	;  5
      00384B 04 00                 2810 	.byte #0x04, #0x00	;  4
      00384D 03 00                 2811 	.byte #0x03, #0x00	;  3
      00384F 02 00                 2812 	.byte #0x02, #0x00	;  2
      003851 01 00                 2813 	.byte #0x01, #0x00	;  1
      003853 00 00                 2814 	.byte #0x00, #0x00	;  0
                                   2815 	.area CONST   (CODE)
      003855                       2816 ___str_0:
      003855 0A                    2817 	.db 0x0a
      003856 0D                    2818 	.db 0x0d
      003857 E2                    2819 	.db 0xe2
      003858 94                    2820 	.db 0x94
      003859 8C                    2821 	.db 0x8c
      00385A E2                    2822 	.db 0xe2
      00385B 94                    2823 	.db 0x94
      00385C 80                    2824 	.db 0x80
      00385D E2                    2825 	.db 0xe2
      00385E 94                    2826 	.db 0x94
      00385F 80                    2827 	.db 0x80
      003860 E2                    2828 	.db 0xe2
      003861 94                    2829 	.db 0x94
      003862 80                    2830 	.db 0x80
      003863 E2                    2831 	.db 0xe2
      003864 94                    2832 	.db 0x94
      003865 80                    2833 	.db 0x80
      003866 E2                    2834 	.db 0xe2
      003867 94                    2835 	.db 0x94
      003868 80                    2836 	.db 0x80
      003869 E2                    2837 	.db 0xe2
      00386A 94                    2838 	.db 0x94
      00386B 80                    2839 	.db 0x80
      00386C E2                    2840 	.db 0xe2
      00386D 94                    2841 	.db 0x94
      00386E 80                    2842 	.db 0x80
      00386F E2                    2843 	.db 0xe2
      003870 94                    2844 	.db 0x94
      003871 80                    2845 	.db 0x80
      003872 E2                    2846 	.db 0xe2
      003873 94                    2847 	.db 0x94
      003874 80                    2848 	.db 0x80
      003875 E2                    2849 	.db 0xe2
      003876 94                    2850 	.db 0x94
      003877 80                    2851 	.db 0x80
      003878 E2                    2852 	.db 0xe2
      003879 94                    2853 	.db 0x94
      00387A 80                    2854 	.db 0x80
      00387B E2                    2855 	.db 0xe2
      00387C 94                    2856 	.db 0x94
      00387D 80                    2857 	.db 0x80
      00387E E2                    2858 	.db 0xe2
      00387F 94                    2859 	.db 0x94
      003880 80                    2860 	.db 0x80
      003881 E2                    2861 	.db 0xe2
      003882 94                    2862 	.db 0x94
      003883 80                    2863 	.db 0x80
      003884 E2                    2864 	.db 0xe2
      003885 94                    2865 	.db 0x94
      003886 80                    2866 	.db 0x80
      003887 E2                    2867 	.db 0xe2
      003888 94                    2868 	.db 0x94
      003889 80                    2869 	.db 0x80
      00388A E2                    2870 	.db 0xe2
      00388B 94                    2871 	.db 0x94
      00388C 80                    2872 	.db 0x80
      00388D E2                    2873 	.db 0xe2
      00388E 94                    2874 	.db 0x94
      00388F 80                    2875 	.db 0x80
      003890 E2                    2876 	.db 0xe2
      003891 94                    2877 	.db 0x94
      003892 80                    2878 	.db 0x80
      003893 E2                    2879 	.db 0xe2
      003894 94                    2880 	.db 0x94
      003895 80                    2881 	.db 0x80
      003896 E2                    2882 	.db 0xe2
      003897 94                    2883 	.db 0x94
      003898 80                    2884 	.db 0x80
      003899 E2                    2885 	.db 0xe2
      00389A 94                    2886 	.db 0x94
      00389B 80                    2887 	.db 0x80
      00389C E2                    2888 	.db 0xe2
      00389D 94                    2889 	.db 0x94
      00389E 80                    2890 	.db 0x80
      00389F E2                    2891 	.db 0xe2
      0038A0 94                    2892 	.db 0x94
      0038A1 80                    2893 	.db 0x80
      0038A2 E2                    2894 	.db 0xe2
      0038A3 94                    2895 	.db 0x94
      0038A4 80                    2896 	.db 0x80
      0038A5 E2                    2897 	.db 0xe2
      0038A6 94                    2898 	.db 0x94
      0038A7 80                    2899 	.db 0x80
      0038A8 E2                    2900 	.db 0xe2
      0038A9 94                    2901 	.db 0x94
      0038AA 80                    2902 	.db 0x80
      0038AB E2                    2903 	.db 0xe2
      0038AC 94                    2904 	.db 0x94
      0038AD 80                    2905 	.db 0x80
      0038AE E2                    2906 	.db 0xe2
      0038AF 94                    2907 	.db 0x94
      0038B0 80                    2908 	.db 0x80
      0038B1 E2                    2909 	.db 0xe2
      0038B2 94                    2910 	.db 0x94
      0038B3 80                    2911 	.db 0x80
      0038B4 E2                    2912 	.db 0xe2
      0038B5 94                    2913 	.db 0x94
      0038B6 80                    2914 	.db 0x80
      0038B7 E2                    2915 	.db 0xe2
      0038B8 94                    2916 	.db 0x94
      0038B9 80                    2917 	.db 0x80
      0038BA E2                    2918 	.db 0xe2
      0038BB 94                    2919 	.db 0x94
      0038BC 80                    2920 	.db 0x80
      0038BD E2                    2921 	.db 0xe2
      0038BE 94                    2922 	.db 0x94
      0038BF 80                    2923 	.db 0x80
      0038C0 E2                    2924 	.db 0xe2
      0038C1 94                    2925 	.db 0x94
      0038C2 80                    2926 	.db 0x80
      0038C3 E2                    2927 	.db 0xe2
      0038C4 94                    2928 	.db 0x94
      0038C5 80                    2929 	.db 0x80
      0038C6 E2                    2930 	.db 0xe2
      0038C7 94                    2931 	.db 0x94
      0038C8 80                    2932 	.db 0x80
      0038C9 E2                    2933 	.db 0xe2
      0038CA 94                    2934 	.db 0x94
      0038CB 80                    2935 	.db 0x80
      0038CC E2                    2936 	.db 0xe2
      0038CD 94                    2937 	.db 0x94
      0038CE 80                    2938 	.db 0x80
      0038CF E2                    2939 	.db 0xe2
      0038D0 94                    2940 	.db 0x94
      0038D1 80                    2941 	.db 0x80
      0038D2 E2                    2942 	.db 0xe2
      0038D3 94                    2943 	.db 0x94
      0038D4 80                    2944 	.db 0x80
      0038D5 E2                    2945 	.db 0xe2
      0038D6 94                    2946 	.db 0x94
      0038D7 80                    2947 	.db 0x80
      0038D8 E2                    2948 	.db 0xe2
      0038D9 94                    2949 	.db 0x94
      0038DA 80                    2950 	.db 0x80
      0038DB E2                    2951 	.db 0xe2
      0038DC 94                    2952 	.db 0x94
      0038DD 80                    2953 	.db 0x80
      0038DE E2                    2954 	.db 0xe2
      0038DF 94                    2955 	.db 0x94
      0038E0 80                    2956 	.db 0x80
      0038E1 E2                    2957 	.db 0xe2
      0038E2 94                    2958 	.db 0x94
      0038E3 80                    2959 	.db 0x80
      0038E4 E2                    2960 	.db 0xe2
      0038E5 94                    2961 	.db 0x94
      0038E6 80                    2962 	.db 0x80
      0038E7 E2                    2963 	.db 0xe2
      0038E8 94                    2964 	.db 0x94
      0038E9 80                    2965 	.db 0x80
      0038EA E2                    2966 	.db 0xe2
      0038EB 94                    2967 	.db 0x94
      0038EC 80                    2968 	.db 0x80
      0038ED E2                    2969 	.db 0xe2
      0038EE 94                    2970 	.db 0x94
      0038EF 80                    2971 	.db 0x80
      0038F0 E2                    2972 	.db 0xe2
      0038F1 94                    2973 	.db 0x94
      0038F2 80                    2974 	.db 0x80
      0038F3 E2                    2975 	.db 0xe2
      0038F4 94                    2976 	.db 0x94
      0038F5 80                    2977 	.db 0x80
      0038F6 E2                    2978 	.db 0xe2
      0038F7 94                    2979 	.db 0x94
      0038F8 80                    2980 	.db 0x80
      0038F9 E2                    2981 	.db 0xe2
      0038FA 94                    2982 	.db 0x94
      0038FB 80                    2983 	.db 0x80
      0038FC E2                    2984 	.db 0xe2
      0038FD 94                    2985 	.db 0x94
      0038FE 80                    2986 	.db 0x80
      0038FF E2                    2987 	.db 0xe2
      003900 94                    2988 	.db 0x94
      003901 80                    2989 	.db 0x80
      003902 E2                    2990 	.db 0xe2
      003903 94                    2991 	.db 0x94
      003904 80                    2992 	.db 0x80
      003905 E2                    2993 	.db 0xe2
      003906 94                    2994 	.db 0x94
      003907 80                    2995 	.db 0x80
      003908 E2                    2996 	.db 0xe2
      003909 94                    2997 	.db 0x94
      00390A 80                    2998 	.db 0x80
      00390B E2                    2999 	.db 0xe2
      00390C 94                    3000 	.db 0x94
      00390D 80                    3001 	.db 0x80
      00390E E2                    3002 	.db 0xe2
      00390F 94                    3003 	.db 0x94
      003910 80                    3004 	.db 0x80
      003911 E2                    3005 	.db 0xe2
      003912 94                    3006 	.db 0x94
      003913 80                    3007 	.db 0x80
      003914 E2                    3008 	.db 0xe2
      003915 94                    3009 	.db 0x94
      003916 90                    3010 	.db 0x90
      003917 0A                    3011 	.db 0x0a
      003918 0D                    3012 	.db 0x0d
      003919 00                    3013 	.db 0x00
                                   3014 	.area CSEG    (CODE)
                                   3015 	.area CONST   (CODE)
      00391A                       3016 ___str_1:
      00391A E2                    3017 	.db 0xe2
      00391B 94                    3018 	.db 0x94
      00391C 82                    3019 	.db 0x82
      00391D 20 20 20 20 20 20 20  3020 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003959 20 20                 3021 	.ascii "  "
      00395B E2                    3022 	.db 0xe2
      00395C 94                    3023 	.db 0x94
      00395D 82                    3024 	.db 0x82
      00395E 0A                    3025 	.db 0x0a
      00395F 0D                    3026 	.db 0x0d
      003960 00                    3027 	.db 0x00
                                   3028 	.area CSEG    (CODE)
                                   3029 	.area CONST   (CODE)
      003961                       3030 ___str_2:
      003961 E2                    3031 	.db 0xe2
      003962 94                    3032 	.db 0x94
      003963 9C                    3033 	.db 0x9c
      003964 E2                    3034 	.db 0xe2
      003965 94                    3035 	.db 0x94
      003966 80                    3036 	.db 0x80
      003967 E2                    3037 	.db 0xe2
      003968 94                    3038 	.db 0x94
      003969 80                    3039 	.db 0x80
      00396A E2                    3040 	.db 0xe2
      00396B 94                    3041 	.db 0x94
      00396C 80                    3042 	.db 0x80
      00396D E2                    3043 	.db 0xe2
      00396E 94                    3044 	.db 0x94
      00396F 80                    3045 	.db 0x80
      003970 E2                    3046 	.db 0xe2
      003971 94                    3047 	.db 0x94
      003972 80                    3048 	.db 0x80
      003973 E2                    3049 	.db 0xe2
      003974 94                    3050 	.db 0x94
      003975 80                    3051 	.db 0x80
      003976 E2                    3052 	.db 0xe2
      003977 94                    3053 	.db 0x94
      003978 80                    3054 	.db 0x80
      003979 E2                    3055 	.db 0xe2
      00397A 94                    3056 	.db 0x94
      00397B 80                    3057 	.db 0x80
      00397C E2                    3058 	.db 0xe2
      00397D 94                    3059 	.db 0x94
      00397E 80                    3060 	.db 0x80
      00397F E2                    3061 	.db 0xe2
      003980 94                    3062 	.db 0x94
      003981 80                    3063 	.db 0x80
      003982 E2                    3064 	.db 0xe2
      003983 94                    3065 	.db 0x94
      003984 80                    3066 	.db 0x80
      003985 E2                    3067 	.db 0xe2
      003986 94                    3068 	.db 0x94
      003987 80                    3069 	.db 0x80
      003988 E2                    3070 	.db 0xe2
      003989 94                    3071 	.db 0x94
      00398A 80                    3072 	.db 0x80
      00398B E2                    3073 	.db 0xe2
      00398C 94                    3074 	.db 0x94
      00398D 80                    3075 	.db 0x80
      00398E E2                    3076 	.db 0xe2
      00398F 94                    3077 	.db 0x94
      003990 80                    3078 	.db 0x80
      003991 E2                    3079 	.db 0xe2
      003992 94                    3080 	.db 0x94
      003993 80                    3081 	.db 0x80
      003994 E2                    3082 	.db 0xe2
      003995 94                    3083 	.db 0x94
      003996 80                    3084 	.db 0x80
      003997 E2                    3085 	.db 0xe2
      003998 94                    3086 	.db 0x94
      003999 80                    3087 	.db 0x80
      00399A E2                    3088 	.db 0xe2
      00399B 94                    3089 	.db 0x94
      00399C 80                    3090 	.db 0x80
      00399D E2                    3091 	.db 0xe2
      00399E 94                    3092 	.db 0x94
      00399F 80                    3093 	.db 0x80
      0039A0 E2                    3094 	.db 0xe2
      0039A1 94                    3095 	.db 0x94
      0039A2 80                    3096 	.db 0x80
      0039A3 E2                    3097 	.db 0xe2
      0039A4 94                    3098 	.db 0x94
      0039A5 80                    3099 	.db 0x80
      0039A6 E2                    3100 	.db 0xe2
      0039A7 94                    3101 	.db 0x94
      0039A8 80                    3102 	.db 0x80
      0039A9 E2                    3103 	.db 0xe2
      0039AA 94                    3104 	.db 0x94
      0039AB 80                    3105 	.db 0x80
      0039AC E2                    3106 	.db 0xe2
      0039AD 94                    3107 	.db 0x94
      0039AE 80                    3108 	.db 0x80
      0039AF E2                    3109 	.db 0xe2
      0039B0 94                    3110 	.db 0x94
      0039B1 80                    3111 	.db 0x80
      0039B2 E2                    3112 	.db 0xe2
      0039B3 94                    3113 	.db 0x94
      0039B4 80                    3114 	.db 0x80
      0039B5 E2                    3115 	.db 0xe2
      0039B6 94                    3116 	.db 0x94
      0039B7 80                    3117 	.db 0x80
      0039B8 E2                    3118 	.db 0xe2
      0039B9 94                    3119 	.db 0x94
      0039BA 80                    3120 	.db 0x80
      0039BB E2                    3121 	.db 0xe2
      0039BC 94                    3122 	.db 0x94
      0039BD 80                    3123 	.db 0x80
      0039BE E2                    3124 	.db 0xe2
      0039BF 94                    3125 	.db 0x94
      0039C0 80                    3126 	.db 0x80
      0039C1 E2                    3127 	.db 0xe2
      0039C2 94                    3128 	.db 0x94
      0039C3 80                    3129 	.db 0x80
      0039C4 E2                    3130 	.db 0xe2
      0039C5 94                    3131 	.db 0x94
      0039C6 80                    3132 	.db 0x80
      0039C7 E2                    3133 	.db 0xe2
      0039C8 94                    3134 	.db 0x94
      0039C9 80                    3135 	.db 0x80
      0039CA E2                    3136 	.db 0xe2
      0039CB 94                    3137 	.db 0x94
      0039CC 80                    3138 	.db 0x80
      0039CD E2                    3139 	.db 0xe2
      0039CE 94                    3140 	.db 0x94
      0039CF 80                    3141 	.db 0x80
      0039D0 E2                    3142 	.db 0xe2
      0039D1 94                    3143 	.db 0x94
      0039D2 80                    3144 	.db 0x80
      0039D3 E2                    3145 	.db 0xe2
      0039D4 94                    3146 	.db 0x94
      0039D5 80                    3147 	.db 0x80
      0039D6 E2                    3148 	.db 0xe2
      0039D7 94                    3149 	.db 0x94
      0039D8 80                    3150 	.db 0x80
      0039D9 E2                    3151 	.db 0xe2
      0039DA 94                    3152 	.db 0x94
      0039DB 80                    3153 	.db 0x80
      0039DC E2                    3154 	.db 0xe2
      0039DD 94                    3155 	.db 0x94
      0039DE 80                    3156 	.db 0x80
      0039DF E2                    3157 	.db 0xe2
      0039E0 94                    3158 	.db 0x94
      0039E1 80                    3159 	.db 0x80
      0039E2 E2                    3160 	.db 0xe2
      0039E3 94                    3161 	.db 0x94
      0039E4 80                    3162 	.db 0x80
      0039E5 E2                    3163 	.db 0xe2
      0039E6 94                    3164 	.db 0x94
      0039E7 80                    3165 	.db 0x80
      0039E8 E2                    3166 	.db 0xe2
      0039E9 94                    3167 	.db 0x94
      0039EA 80                    3168 	.db 0x80
      0039EB E2                    3169 	.db 0xe2
      0039EC 94                    3170 	.db 0x94
      0039ED 80                    3171 	.db 0x80
      0039EE E2                    3172 	.db 0xe2
      0039EF 94                    3173 	.db 0x94
      0039F0 80                    3174 	.db 0x80
      0039F1 E2                    3175 	.db 0xe2
      0039F2 94                    3176 	.db 0x94
      0039F3 80                    3177 	.db 0x80
      0039F4 E2                    3178 	.db 0xe2
      0039F5 94                    3179 	.db 0x94
      0039F6 80                    3180 	.db 0x80
      0039F7 E2                    3181 	.db 0xe2
      0039F8 94                    3182 	.db 0x94
      0039F9 80                    3183 	.db 0x80
      0039FA E2                    3184 	.db 0xe2
      0039FB 94                    3185 	.db 0x94
      0039FC 80                    3186 	.db 0x80
      0039FD E2                    3187 	.db 0xe2
      0039FE 94                    3188 	.db 0x94
      0039FF 80                    3189 	.db 0x80
      003A00 E2                    3190 	.db 0xe2
      003A01 94                    3191 	.db 0x94
      003A02 80                    3192 	.db 0x80
      003A03 E2                    3193 	.db 0xe2
      003A04 94                    3194 	.db 0x94
      003A05 80                    3195 	.db 0x80
      003A06 E2                    3196 	.db 0xe2
      003A07 94                    3197 	.db 0x94
      003A08 80                    3198 	.db 0x80
      003A09 E2                    3199 	.db 0xe2
      003A0A 94                    3200 	.db 0x94
      003A0B 80                    3201 	.db 0x80
      003A0C E2                    3202 	.db 0xe2
      003A0D 94                    3203 	.db 0x94
      003A0E 80                    3204 	.db 0x80
      003A0F E2                    3205 	.db 0xe2
      003A10 94                    3206 	.db 0x94
      003A11 80                    3207 	.db 0x80
      003A12 E2                    3208 	.db 0xe2
      003A13 94                    3209 	.db 0x94
      003A14 80                    3210 	.db 0x80
      003A15 E2                    3211 	.db 0xe2
      003A16 94                    3212 	.db 0x94
      003A17 80                    3213 	.db 0x80
      003A18 E2                    3214 	.db 0xe2
      003A19 94                    3215 	.db 0x94
      003A1A 80                    3216 	.db 0x80
      003A1B E2                    3217 	.db 0xe2
      003A1C 94                    3218 	.db 0x94
      003A1D 80                    3219 	.db 0x80
      003A1E E2                    3220 	.db 0xe2
      003A1F 94                    3221 	.db 0x94
      003A20 A4                    3222 	.db 0xa4
      003A21 0A                    3223 	.db 0x0a
      003A22 0D                    3224 	.db 0x0d
      003A23 00                    3225 	.db 0x00
                                   3226 	.area CSEG    (CODE)
                                   3227 	.area CONST   (CODE)
      003A24                       3228 ___str_3:
      003A24 E2                    3229 	.db 0xe2
      003A25 94                    3230 	.db 0x94
      003A26 82                    3231 	.db 0x82
      003A27 20 20 43 6F 6D 6D 61  3232 	.ascii "  Command   "
             6E 64 20 20 20
      003A33 E2                    3233 	.db 0xe2
      003A34 94                    3234 	.db 0x94
      003A35 82                    3235 	.db 0x82
      003A36 20 20 20 20 20 20 20  3236 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003A67 E2                    3237 	.db 0xe2
      003A68 94                    3238 	.db 0x94
      003A69 82                    3239 	.db 0x82
      003A6A 0A                    3240 	.db 0x0a
      003A6B 0D                    3241 	.db 0x0d
      003A6C 00                    3242 	.db 0x00
                                   3243 	.area CSEG    (CODE)
                                   3244 	.area CONST   (CODE)
      003A6D                       3245 ___str_4:
      003A6D E2                    3246 	.db 0xe2
      003A6E 94                    3247 	.db 0x94
      003A6F 9C                    3248 	.db 0x9c
      003A70 E2                    3249 	.db 0xe2
      003A71 94                    3250 	.db 0x94
      003A72 80                    3251 	.db 0x80
      003A73 E2                    3252 	.db 0xe2
      003A74 94                    3253 	.db 0x94
      003A75 80                    3254 	.db 0x80
      003A76 E2                    3255 	.db 0xe2
      003A77 94                    3256 	.db 0x94
      003A78 80                    3257 	.db 0x80
      003A79 E2                    3258 	.db 0xe2
      003A7A 94                    3259 	.db 0x94
      003A7B 80                    3260 	.db 0x80
      003A7C E2                    3261 	.db 0xe2
      003A7D 94                    3262 	.db 0x94
      003A7E 80                    3263 	.db 0x80
      003A7F E2                    3264 	.db 0xe2
      003A80 94                    3265 	.db 0x94
      003A81 80                    3266 	.db 0x80
      003A82 E2                    3267 	.db 0xe2
      003A83 94                    3268 	.db 0x94
      003A84 80                    3269 	.db 0x80
      003A85 E2                    3270 	.db 0xe2
      003A86 94                    3271 	.db 0x94
      003A87 80                    3272 	.db 0x80
      003A88 E2                    3273 	.db 0xe2
      003A89 94                    3274 	.db 0x94
      003A8A 80                    3275 	.db 0x80
      003A8B E2                    3276 	.db 0xe2
      003A8C 94                    3277 	.db 0x94
      003A8D 80                    3278 	.db 0x80
      003A8E E2                    3279 	.db 0xe2
      003A8F 94                    3280 	.db 0x94
      003A90 80                    3281 	.db 0x80
      003A91 E2                    3282 	.db 0xe2
      003A92 94                    3283 	.db 0x94
      003A93 BC                    3284 	.db 0xbc
      003A94 E2                    3285 	.db 0xe2
      003A95 94                    3286 	.db 0x94
      003A96 80                    3287 	.db 0x80
      003A97 E2                    3288 	.db 0xe2
      003A98 94                    3289 	.db 0x94
      003A99 80                    3290 	.db 0x80
      003A9A E2                    3291 	.db 0xe2
      003A9B 94                    3292 	.db 0x94
      003A9C 80                    3293 	.db 0x80
      003A9D E2                    3294 	.db 0xe2
      003A9E 94                    3295 	.db 0x94
      003A9F 80                    3296 	.db 0x80
      003AA0 E2                    3297 	.db 0xe2
      003AA1 94                    3298 	.db 0x94
      003AA2 80                    3299 	.db 0x80
      003AA3 E2                    3300 	.db 0xe2
      003AA4 94                    3301 	.db 0x94
      003AA5 80                    3302 	.db 0x80
      003AA6 E2                    3303 	.db 0xe2
      003AA7 94                    3304 	.db 0x94
      003AA8 80                    3305 	.db 0x80
      003AA9 E2                    3306 	.db 0xe2
      003AAA 94                    3307 	.db 0x94
      003AAB 80                    3308 	.db 0x80
      003AAC E2                    3309 	.db 0xe2
      003AAD 94                    3310 	.db 0x94
      003AAE 80                    3311 	.db 0x80
      003AAF E2                    3312 	.db 0xe2
      003AB0 94                    3313 	.db 0x94
      003AB1 80                    3314 	.db 0x80
      003AB2 E2                    3315 	.db 0xe2
      003AB3 94                    3316 	.db 0x94
      003AB4 80                    3317 	.db 0x80
      003AB5 E2                    3318 	.db 0xe2
      003AB6 94                    3319 	.db 0x94
      003AB7 80                    3320 	.db 0x80
      003AB8 E2                    3321 	.db 0xe2
      003AB9 94                    3322 	.db 0x94
      003ABA 80                    3323 	.db 0x80
      003ABB E2                    3324 	.db 0xe2
      003ABC 94                    3325 	.db 0x94
      003ABD 80                    3326 	.db 0x80
      003ABE E2                    3327 	.db 0xe2
      003ABF 94                    3328 	.db 0x94
      003AC0 80                    3329 	.db 0x80
      003AC1 E2                    3330 	.db 0xe2
      003AC2 94                    3331 	.db 0x94
      003AC3 80                    3332 	.db 0x80
      003AC4 E2                    3333 	.db 0xe2
      003AC5 94                    3334 	.db 0x94
      003AC6 80                    3335 	.db 0x80
      003AC7 E2                    3336 	.db 0xe2
      003AC8 94                    3337 	.db 0x94
      003AC9 80                    3338 	.db 0x80
      003ACA E2                    3339 	.db 0xe2
      003ACB 94                    3340 	.db 0x94
      003ACC 80                    3341 	.db 0x80
      003ACD E2                    3342 	.db 0xe2
      003ACE 94                    3343 	.db 0x94
      003ACF 80                    3344 	.db 0x80
      003AD0 E2                    3345 	.db 0xe2
      003AD1 94                    3346 	.db 0x94
      003AD2 80                    3347 	.db 0x80
      003AD3 E2                    3348 	.db 0xe2
      003AD4 94                    3349 	.db 0x94
      003AD5 80                    3350 	.db 0x80
      003AD6 E2                    3351 	.db 0xe2
      003AD7 94                    3352 	.db 0x94
      003AD8 80                    3353 	.db 0x80
      003AD9 E2                    3354 	.db 0xe2
      003ADA 94                    3355 	.db 0x94
      003ADB 80                    3356 	.db 0x80
      003ADC E2                    3357 	.db 0xe2
      003ADD 94                    3358 	.db 0x94
      003ADE 80                    3359 	.db 0x80
      003ADF E2                    3360 	.db 0xe2
      003AE0 94                    3361 	.db 0x94
      003AE1 80                    3362 	.db 0x80
      003AE2 E2                    3363 	.db 0xe2
      003AE3 94                    3364 	.db 0x94
      003AE4 80                    3365 	.db 0x80
      003AE5 E2                    3366 	.db 0xe2
      003AE6 94                    3367 	.db 0x94
      003AE7 80                    3368 	.db 0x80
      003AE8 E2                    3369 	.db 0xe2
      003AE9 94                    3370 	.db 0x94
      003AEA 80                    3371 	.db 0x80
      003AEB E2                    3372 	.db 0xe2
      003AEC 94                    3373 	.db 0x94
      003AED 80                    3374 	.db 0x80
      003AEE E2                    3375 	.db 0xe2
      003AEF 94                    3376 	.db 0x94
      003AF0 80                    3377 	.db 0x80
      003AF1 E2                    3378 	.db 0xe2
      003AF2 94                    3379 	.db 0x94
      003AF3 80                    3380 	.db 0x80
      003AF4 E2                    3381 	.db 0xe2
      003AF5 94                    3382 	.db 0x94
      003AF6 80                    3383 	.db 0x80
      003AF7 E2                    3384 	.db 0xe2
      003AF8 94                    3385 	.db 0x94
      003AF9 80                    3386 	.db 0x80
      003AFA E2                    3387 	.db 0xe2
      003AFB 94                    3388 	.db 0x94
      003AFC 80                    3389 	.db 0x80
      003AFD E2                    3390 	.db 0xe2
      003AFE 94                    3391 	.db 0x94
      003AFF 80                    3392 	.db 0x80
      003B00 E2                    3393 	.db 0xe2
      003B01 94                    3394 	.db 0x94
      003B02 80                    3395 	.db 0x80
      003B03 E2                    3396 	.db 0xe2
      003B04 94                    3397 	.db 0x94
      003B05 80                    3398 	.db 0x80
      003B06 E2                    3399 	.db 0xe2
      003B07 94                    3400 	.db 0x94
      003B08 80                    3401 	.db 0x80
      003B09 E2                    3402 	.db 0xe2
      003B0A 94                    3403 	.db 0x94
      003B0B 80                    3404 	.db 0x80
      003B0C E2                    3405 	.db 0xe2
      003B0D 94                    3406 	.db 0x94
      003B0E 80                    3407 	.db 0x80
      003B0F E2                    3408 	.db 0xe2
      003B10 94                    3409 	.db 0x94
      003B11 80                    3410 	.db 0x80
      003B12 E2                    3411 	.db 0xe2
      003B13 94                    3412 	.db 0x94
      003B14 80                    3413 	.db 0x80
      003B15 E2                    3414 	.db 0xe2
      003B16 94                    3415 	.db 0x94
      003B17 80                    3416 	.db 0x80
      003B18 E2                    3417 	.db 0xe2
      003B19 94                    3418 	.db 0x94
      003B1A 80                    3419 	.db 0x80
      003B1B E2                    3420 	.db 0xe2
      003B1C 94                    3421 	.db 0x94
      003B1D 80                    3422 	.db 0x80
      003B1E E2                    3423 	.db 0xe2
      003B1F 94                    3424 	.db 0x94
      003B20 80                    3425 	.db 0x80
      003B21 E2                    3426 	.db 0xe2
      003B22 94                    3427 	.db 0x94
      003B23 A4                    3428 	.db 0xa4
      003B24 0A                    3429 	.db 0x0a
      003B25 0D                    3430 	.db 0x0d
      003B26 00                    3431 	.db 0x00
                                   3432 	.area CSEG    (CODE)
                                   3433 	.area CONST   (CODE)
      003B27                       3434 ___str_5:
      003B27 E2                    3435 	.db 0xe2
      003B28 94                    3436 	.db 0x94
      003B29 82                    3437 	.db 0x82
      003B2A 20 20 20 20 4D 20 20  3438 	.ascii "    M      "
             20 20 20 20
      003B35 E2                    3439 	.db 0xe2
      003B36 94                    3440 	.db 0x94
      003B37 82                    3441 	.db 0x82
      003B38 20 4D 61 6E 75 61 6C  3442 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003B68 E2                    3443 	.db 0xe2
      003B69 94                    3444 	.db 0x94
      003B6A 82                    3445 	.db 0x82
      003B6B 0A                    3446 	.db 0x0a
      003B6C 0D                    3447 	.db 0x0d
      003B6D 00                    3448 	.db 0x00
                                   3449 	.area CSEG    (CODE)
                                   3450 	.area CONST   (CODE)
      003B6E                       3451 ___str_6:
      003B6E E2                    3452 	.db 0xe2
      003B6F 94                    3453 	.db 0x94
      003B70 82                    3454 	.db 0x82
      003B71 20 20 20 20 42 20 20  3455 	.ascii "    B      "
             20 20 20 20
      003B7C E2                    3456 	.db 0xe2
      003B7D 94                    3457 	.db 0x94
      003B7E 82                    3458 	.db 0x82
      003B7F 20 42 69 74 20 42 61  3459 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BAE E2                    3460 	.db 0xe2
      003BAF 94                    3461 	.db 0x94
      003BB0 82                    3462 	.db 0x82
      003BB1 0A                    3463 	.db 0x0a
      003BB2 0D                    3464 	.db 0x0d
      003BB3 00                    3465 	.db 0x00
                                   3466 	.area CSEG    (CODE)
                                   3467 	.area CONST   (CODE)
      003BB4                       3468 ___str_7:
      003BB4 E2                    3469 	.db 0xe2
      003BB5 94                    3470 	.db 0x94
      003BB6 82                    3471 	.db 0x82
      003BB7 20 20 20 20 53 20 20  3472 	.ascii "    S      "
             20 20 20 20
      003BC2 E2                    3473 	.db 0xe2
      003BC3 94                    3474 	.db 0x94
      003BC4 82                    3475 	.db 0x82
      003BC5 20 47 65 6E 65 72 61  3476 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BF4 E2                    3477 	.db 0xe2
      003BF5 94                    3478 	.db 0x94
      003BF6 82                    3479 	.db 0x82
      003BF7 0A                    3480 	.db 0x0a
      003BF8 0D                    3481 	.db 0x0d
      003BF9 00                    3482 	.db 0x00
                                   3483 	.area CSEG    (CODE)
                                   3484 	.area CONST   (CODE)
      003BFA                       3485 ___str_8:
      003BFA E2                    3486 	.db 0xe2
      003BFB 94                    3487 	.db 0x94
      003BFC 82                    3488 	.db 0x82
      003BFD 20 20 20 20 54 20 20  3489 	.ascii "    T      "
             20 20 20 20
      003C08 E2                    3490 	.db 0xe2
      003C09 94                    3491 	.db 0x94
      003C0A 82                    3492 	.db 0x82
      003C0B 20 47 65 6E 65 72 61  3493 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C3A E2                    3494 	.db 0xe2
      003C3B 94                    3495 	.db 0x94
      003C3C 82                    3496 	.db 0x82
      003C3D 0A                    3497 	.db 0x0a
      003C3E 0D                    3498 	.db 0x0d
      003C3F 00                    3499 	.db 0x00
                                   3500 	.area CSEG    (CODE)
                                   3501 	.area CONST   (CODE)
      003C40                       3502 ___str_9:
      003C40 E2                    3503 	.db 0xe2
      003C41 94                    3504 	.db 0x94
      003C42 82                    3505 	.db 0x82
      003C43 20 20 20 20 44 20 20  3506 	.ascii "    D      "
             20 20 20 20
      003C4E E2                    3507 	.db 0xe2
      003C4F 94                    3508 	.db 0x94
      003C50 82                    3509 	.db 0x82
      003C51 20 44 65 6D 6F 20 4D  3510 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003C80 E2                    3511 	.db 0xe2
      003C81 94                    3512 	.db 0x94
      003C82 82                    3513 	.db 0x82
      003C83 0A                    3514 	.db 0x0a
      003C84 0D                    3515 	.db 0x0d
      003C85 00                    3516 	.db 0x00
                                   3517 	.area CSEG    (CODE)
                                   3518 	.area CONST   (CODE)
      003C86                       3519 ___str_10:
      003C86 E2                    3520 	.db 0xe2
      003C87 94                    3521 	.db 0x94
      003C88 82                    3522 	.db 0x82
      003C89 20 20 20 20 52 20 20  3523 	.ascii "    R      "
             20 20 20 20
      003C94 E2                    3524 	.db 0xe2
      003C95 94                    3525 	.db 0x94
      003C96 82                    3526 	.db 0x82
      003C97 20 52 61 6D 70 20 77  3527 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003CC6 E2                    3528 	.db 0xe2
      003CC7 94                    3529 	.db 0x94
      003CC8 82                    3530 	.db 0x82
      003CC9 0A                    3531 	.db 0x0a
      003CCA 0D                    3532 	.db 0x0d
      003CCB 00                    3533 	.db 0x00
                                   3534 	.area CSEG    (CODE)
                                   3535 	.area CONST   (CODE)
      003CCC                       3536 ___str_11:
      003CCC E2                    3537 	.db 0xe2
      003CCD 94                    3538 	.db 0x94
      003CCE 82                    3539 	.db 0x82
      003CCF 20 20 20 20 3F 20 20  3540 	.ascii "    ?      "
             20 20 20 20
      003CDA E2                    3541 	.db 0xe2
      003CDB 94                    3542 	.db 0x94
      003CDC 82                    3543 	.db 0x82
      003CDD 20 44 69 73 70 6C 61  3544 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003D0C E2                    3545 	.db 0xe2
      003D0D 94                    3546 	.db 0x94
      003D0E 82                    3547 	.db 0x82
      003D0F 0A                    3548 	.db 0x0a
      003D10 0D                    3549 	.db 0x0d
      003D11 00                    3550 	.db 0x00
                                   3551 	.area CSEG    (CODE)
                                   3552 	.area CONST   (CODE)
      003D12                       3553 ___str_12:
      003D12 E2                    3554 	.db 0xe2
      003D13 94                    3555 	.db 0x94
      003D14 94                    3556 	.db 0x94
      003D15 E2                    3557 	.db 0xe2
      003D16 94                    3558 	.db 0x94
      003D17 80                    3559 	.db 0x80
      003D18 E2                    3560 	.db 0xe2
      003D19 94                    3561 	.db 0x94
      003D1A 80                    3562 	.db 0x80
      003D1B E2                    3563 	.db 0xe2
      003D1C 94                    3564 	.db 0x94
      003D1D 80                    3565 	.db 0x80
      003D1E E2                    3566 	.db 0xe2
      003D1F 94                    3567 	.db 0x94
      003D20 80                    3568 	.db 0x80
      003D21 E2                    3569 	.db 0xe2
      003D22 94                    3570 	.db 0x94
      003D23 80                    3571 	.db 0x80
      003D24 E2                    3572 	.db 0xe2
      003D25 94                    3573 	.db 0x94
      003D26 80                    3574 	.db 0x80
      003D27 E2                    3575 	.db 0xe2
      003D28 94                    3576 	.db 0x94
      003D29 80                    3577 	.db 0x80
      003D2A E2                    3578 	.db 0xe2
      003D2B 94                    3579 	.db 0x94
      003D2C 80                    3580 	.db 0x80
      003D2D E2                    3581 	.db 0xe2
      003D2E 94                    3582 	.db 0x94
      003D2F 80                    3583 	.db 0x80
      003D30 E2                    3584 	.db 0xe2
      003D31 94                    3585 	.db 0x94
      003D32 80                    3586 	.db 0x80
      003D33 E2                    3587 	.db 0xe2
      003D34 94                    3588 	.db 0x94
      003D35 80                    3589 	.db 0x80
      003D36 E2                    3590 	.db 0xe2
      003D37 94                    3591 	.db 0x94
      003D38 B4                    3592 	.db 0xb4
      003D39 E2                    3593 	.db 0xe2
      003D3A 94                    3594 	.db 0x94
      003D3B 80                    3595 	.db 0x80
      003D3C E2                    3596 	.db 0xe2
      003D3D 94                    3597 	.db 0x94
      003D3E 80                    3598 	.db 0x80
      003D3F E2                    3599 	.db 0xe2
      003D40 94                    3600 	.db 0x94
      003D41 80                    3601 	.db 0x80
      003D42 E2                    3602 	.db 0xe2
      003D43 94                    3603 	.db 0x94
      003D44 80                    3604 	.db 0x80
      003D45 E2                    3605 	.db 0xe2
      003D46 94                    3606 	.db 0x94
      003D47 80                    3607 	.db 0x80
      003D48 E2                    3608 	.db 0xe2
      003D49 94                    3609 	.db 0x94
      003D4A 80                    3610 	.db 0x80
      003D4B E2                    3611 	.db 0xe2
      003D4C 94                    3612 	.db 0x94
      003D4D 80                    3613 	.db 0x80
      003D4E E2                    3614 	.db 0xe2
      003D4F 94                    3615 	.db 0x94
      003D50 80                    3616 	.db 0x80
      003D51 E2                    3617 	.db 0xe2
      003D52 94                    3618 	.db 0x94
      003D53 80                    3619 	.db 0x80
      003D54 E2                    3620 	.db 0xe2
      003D55 94                    3621 	.db 0x94
      003D56 80                    3622 	.db 0x80
      003D57 E2                    3623 	.db 0xe2
      003D58 94                    3624 	.db 0x94
      003D59 80                    3625 	.db 0x80
      003D5A E2                    3626 	.db 0xe2
      003D5B 94                    3627 	.db 0x94
      003D5C 80                    3628 	.db 0x80
      003D5D E2                    3629 	.db 0xe2
      003D5E 94                    3630 	.db 0x94
      003D5F 80                    3631 	.db 0x80
      003D60 E2                    3632 	.db 0xe2
      003D61 94                    3633 	.db 0x94
      003D62 80                    3634 	.db 0x80
      003D63 E2                    3635 	.db 0xe2
      003D64 94                    3636 	.db 0x94
      003D65 80                    3637 	.db 0x80
      003D66 E2                    3638 	.db 0xe2
      003D67 94                    3639 	.db 0x94
      003D68 80                    3640 	.db 0x80
      003D69 E2                    3641 	.db 0xe2
      003D6A 94                    3642 	.db 0x94
      003D6B 80                    3643 	.db 0x80
      003D6C E2                    3644 	.db 0xe2
      003D6D 94                    3645 	.db 0x94
      003D6E 80                    3646 	.db 0x80
      003D6F E2                    3647 	.db 0xe2
      003D70 94                    3648 	.db 0x94
      003D71 80                    3649 	.db 0x80
      003D72 E2                    3650 	.db 0xe2
      003D73 94                    3651 	.db 0x94
      003D74 80                    3652 	.db 0x80
      003D75 E2                    3653 	.db 0xe2
      003D76 94                    3654 	.db 0x94
      003D77 80                    3655 	.db 0x80
      003D78 E2                    3656 	.db 0xe2
      003D79 94                    3657 	.db 0x94
      003D7A 80                    3658 	.db 0x80
      003D7B E2                    3659 	.db 0xe2
      003D7C 94                    3660 	.db 0x94
      003D7D 80                    3661 	.db 0x80
      003D7E E2                    3662 	.db 0xe2
      003D7F 94                    3663 	.db 0x94
      003D80 80                    3664 	.db 0x80
      003D81 E2                    3665 	.db 0xe2
      003D82 94                    3666 	.db 0x94
      003D83 80                    3667 	.db 0x80
      003D84 E2                    3668 	.db 0xe2
      003D85 94                    3669 	.db 0x94
      003D86 80                    3670 	.db 0x80
      003D87 E2                    3671 	.db 0xe2
      003D88 94                    3672 	.db 0x94
      003D89 80                    3673 	.db 0x80
      003D8A E2                    3674 	.db 0xe2
      003D8B 94                    3675 	.db 0x94
      003D8C 80                    3676 	.db 0x80
      003D8D E2                    3677 	.db 0xe2
      003D8E 94                    3678 	.db 0x94
      003D8F 80                    3679 	.db 0x80
      003D90 E2                    3680 	.db 0xe2
      003D91 94                    3681 	.db 0x94
      003D92 80                    3682 	.db 0x80
      003D93 E2                    3683 	.db 0xe2
      003D94 94                    3684 	.db 0x94
      003D95 80                    3685 	.db 0x80
      003D96 E2                    3686 	.db 0xe2
      003D97 94                    3687 	.db 0x94
      003D98 80                    3688 	.db 0x80
      003D99 E2                    3689 	.db 0xe2
      003D9A 94                    3690 	.db 0x94
      003D9B 80                    3691 	.db 0x80
      003D9C E2                    3692 	.db 0xe2
      003D9D 94                    3693 	.db 0x94
      003D9E 80                    3694 	.db 0x80
      003D9F E2                    3695 	.db 0xe2
      003DA0 94                    3696 	.db 0x94
      003DA1 80                    3697 	.db 0x80
      003DA2 E2                    3698 	.db 0xe2
      003DA3 94                    3699 	.db 0x94
      003DA4 80                    3700 	.db 0x80
      003DA5 E2                    3701 	.db 0xe2
      003DA6 94                    3702 	.db 0x94
      003DA7 80                    3703 	.db 0x80
      003DA8 E2                    3704 	.db 0xe2
      003DA9 94                    3705 	.db 0x94
      003DAA 80                    3706 	.db 0x80
      003DAB E2                    3707 	.db 0xe2
      003DAC 94                    3708 	.db 0x94
      003DAD 80                    3709 	.db 0x80
      003DAE E2                    3710 	.db 0xe2
      003DAF 94                    3711 	.db 0x94
      003DB0 80                    3712 	.db 0x80
      003DB1 E2                    3713 	.db 0xe2
      003DB2 94                    3714 	.db 0x94
      003DB3 80                    3715 	.db 0x80
      003DB4 E2                    3716 	.db 0xe2
      003DB5 94                    3717 	.db 0x94
      003DB6 80                    3718 	.db 0x80
      003DB7 E2                    3719 	.db 0xe2
      003DB8 94                    3720 	.db 0x94
      003DB9 80                    3721 	.db 0x80
      003DBA E2                    3722 	.db 0xe2
      003DBB 94                    3723 	.db 0x94
      003DBC 80                    3724 	.db 0x80
      003DBD E2                    3725 	.db 0xe2
      003DBE 94                    3726 	.db 0x94
      003DBF 80                    3727 	.db 0x80
      003DC0 E2                    3728 	.db 0xe2
      003DC1 94                    3729 	.db 0x94
      003DC2 80                    3730 	.db 0x80
      003DC3 E2                    3731 	.db 0xe2
      003DC4 94                    3732 	.db 0x94
      003DC5 80                    3733 	.db 0x80
      003DC6 E2                    3734 	.db 0xe2
      003DC7 94                    3735 	.db 0x94
      003DC8 98                    3736 	.db 0x98
      003DC9 0A                    3737 	.db 0x0a
      003DCA 0D                    3738 	.db 0x0d
      003DCB 00                    3739 	.db 0x00
                                   3740 	.area CSEG    (CODE)
                                   3741 	.area CONST   (CODE)
      003DCC                       3742 ___str_13:
      003DCC 0A                    3743 	.db 0x0a
      003DCD 0D                    3744 	.db 0x0d
      003DCE 45 6E 74 65 72 20 63  3745 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003DDD 00                    3746 	.db 0x00
                                   3747 	.area CSEG    (CODE)
                                   3748 	.area CONST   (CODE)
      003DDE                       3749 ___str_14:
      003DDE 7C 20 24 20 25 63     3750 	.ascii "| $ %c"
      003DE4 0A                    3751 	.db 0x0a
      003DE5 0D                    3752 	.db 0x0d
      003DE6 00                    3753 	.db 0x00
                                   3754 	.area CSEG    (CODE)
                                   3755 	.area CONST   (CODE)
      003DE7                       3756 ___str_15:
      003DE7 0A                    3757 	.db 0x0a
      003DE8 0D                    3758 	.db 0x0d
      003DE9 00                    3759 	.db 0x00
                                   3760 	.area CSEG    (CODE)
                                   3761 	.area CONST   (CODE)
      003DEA                       3762 ___str_16:
      003DEA 3E 3E 20 53 49 4E 20  3763 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003E09 0A                    3764 	.db 0x0a
      003E0A 0D                    3765 	.db 0x0d
      003E0B 00                    3766 	.db 0x00
                                   3767 	.area CSEG    (CODE)
                                   3768 	.area CONST   (CODE)
      003E0C                       3769 ___str_17:
      003E0C 3E 3E 20 53 51 55 41  3770 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003E2E 0A                    3771 	.db 0x0a
      003E2F 0D                    3772 	.db 0x0d
      003E30 00                    3773 	.db 0x00
                                   3774 	.area CSEG    (CODE)
                                   3775 	.area CONST   (CODE)
      003E31                       3776 ___str_18:
      003E31 3E 3E 20 49 4E 56 41  3777 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003E41 0A                    3778 	.db 0x0a
      003E42 0D                    3779 	.db 0x0d
      003E43 00                    3780 	.db 0x00
                                   3781 	.area CSEG    (CODE)
                                   3782 	.area CONST   (CODE)
      003E44                       3783 ___str_19:
      003E44 E2                    3784 	.db 0xe2
      003E45 94                    3785 	.db 0x94
      003E46 82                    3786 	.db 0x82
      003E47 20 45 6E 74 65 72 20  3787 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003E6B 0A                    3788 	.db 0x0a
      003E6C 0D                    3789 	.db 0x0d
      003E6D 7C                    3790 	.ascii "|"
      003E6E 00                    3791 	.db 0x00
                                   3792 	.area CSEG    (CODE)
                                   3793 	.area CONST   (CODE)
      003E6F                       3794 ___str_20:
      003E6F 24 20                 3795 	.ascii "$ "
      003E71 00                    3796 	.db 0x00
                                   3797 	.area CSEG    (CODE)
                                   3798 	.area CONST   (CODE)
      003E72                       3799 ___str_21:
      003E72 0A                    3800 	.db 0x0a
      003E73 0D                    3801 	.db 0x0d
      003E74 E2                    3802 	.db 0xe2
      003E75 94                    3803 	.db 0x94
      003E76 82                    3804 	.db 0x82
      003E77 20 45 6E 74 65 72 65  3805 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003E8C 0A                    3806 	.db 0x0a
      003E8D 0D                    3807 	.db 0x0d
      003E8E 00                    3808 	.db 0x00
                                   3809 	.area CSEG    (CODE)
                                   3810 	.area CONST   (CODE)
      003E8F                       3811 ___str_22:
      003E8F 0D                    3812 	.db 0x0d
      003E90 0A                    3813 	.db 0x0a
      003E91 20 49 6E 73 69 64 65  3814 	.ascii " Inside Manual SPI"
             20 4D 61 6E 75 61 6C
             20 53 50 49
      003EA3 00                    3815 	.db 0x00
                                   3816 	.area CSEG    (CODE)
                                   3817 	.area CONST   (CODE)
      003EA4                       3818 ___str_23:
      003EA4 25 64                 3819 	.ascii "%d"
      003EA6 0A                    3820 	.db 0x0a
      003EA7 0D                    3821 	.db 0x0d
      003EA8 00                    3822 	.db 0x00
                                   3823 	.area CSEG    (CODE)
                                   3824 	.area CONST   (CODE)
      003EA9                       3825 ___str_24:
      003EA9 0D                    3826 	.db 0x0d
      003EAA 0A                    3827 	.db 0x0a
      003EAB 20 4E 75 6D 62 65 72  3828 	.ascii " Number is %d"
             20 69 73 20 25 64
      003EB8 00                    3829 	.db 0x00
                                   3830 	.area CSEG    (CODE)
                                   3831 	.area CONST   (CODE)
      003EB9                       3832 ___str_25:
      003EB9 6C 6F 77 20 25 64     3833 	.ascii "low %d"
      003EBF 0A                    3834 	.db 0x0a
      003EC0 0D                    3835 	.db 0x0d
      003EC1 00                    3836 	.db 0x00
                                   3837 	.area CSEG    (CODE)
                                   3838 	.area CONST   (CODE)
      003EC2                       3839 ___str_26:
      003EC2 68 69 67 68 20 25 64  3840 	.ascii "high %d"
      003EC9 0A                    3841 	.db 0x0a
      003ECA 0D                    3842 	.db 0x0d
      003ECB 00                    3843 	.db 0x00
                                   3844 	.area CSEG    (CODE)
                                   3845 	.area XINIT   (CODE)
      003ED7                       3846 __xinit__ms_flag:
      003ED7 00                    3847 	.db #0x00	; 0
      003ED8                       3848 __xinit__transmission_complete:
      003ED8 00 00                 3849 	.byte #0x00, #0x00	;  0
                                   3850 	.area CABS    (ABS,CODE)
