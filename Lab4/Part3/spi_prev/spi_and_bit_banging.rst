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
      0020C2 74 B6            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 37            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 54         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 7B            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 54         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 C2            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 38            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 54         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 85            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 54         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 CE            [12]  733 	mov	a,#___str_4
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 39            [12]  735 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 54         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 88            [12]  744 	mov	a,#___str_5
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 54         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 CF            [12]  755 	mov	a,#___str_6
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3A            [12]  757 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 54         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 15            [12]  766 	mov	a,#___str_7
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 54         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 5B            [12]  777 	mov	a,#___str_8
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 54         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 A1            [12]  788 	mov	a,#___str_9
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 54         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 E7            [12]  799 	mov	a,#___str_10
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3B            [12]  801 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 54         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 2D            [12]  810 	mov	a,#___str_11
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 54         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 73            [12]  821 	mov	a,#___str_12
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3C            [12]  823 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 27 54         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 2D            [12]  832 	mov	a,#___str_13
      0021D5 C0 E0            [24]  833 	push	acc
      0021D7 74 3D            [12]  834 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  835 	push	acc
      0021DB 74 80            [12]  836 	mov	a,#0x80
      0021DD C0 E0            [24]  837 	push	acc
      0021DF 12 27 54         [24]  838 	lcall	_printf
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
      0021FF 74 3F            [12]  881 	mov	a,#___str_14
      002201 C0 E0            [24]  882 	push	acc
      002203 74 3D            [12]  883 	mov	a,#(___str_14 >> 8)
      002205 C0 E0            [24]  884 	push	acc
      002207 74 80            [12]  885 	mov	a,#0x80
      002209 C0 E0            [24]  886 	push	acc
      00220B 12 27 54         [24]  887 	lcall	_printf
      00220E E5 81            [12]  888 	mov	a,sp
      002210 24 FB            [12]  889 	add	a,#0xfb
      002212 F5 81            [12]  890 	mov	sp,a
                                    891 ;	spi_and_bit_banging.c:268: printf("\n\r");
      002214 74 48            [12]  892 	mov	a,#___str_15
      002216 C0 E0            [24]  893 	push	acc
      002218 74 3D            [12]  894 	mov	a,#(___str_15 >> 8)
      00221A C0 E0            [24]  895 	push	acc
      00221C 74 80            [12]  896 	mov	a,#0x80
      00221E C0 E0            [24]  897 	push	acc
      002220 12 27 54         [24]  898 	lcall	_printf
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
      002233 12 24 E6         [24]  909 	lcall	_spi_init
                                    910 ;	spi_and_bit_banging.c:273: unsigned char result = take_data();
      002236 12 22 DA         [24]  911 	lcall	_take_data
                                    912 ;	spi_and_bit_banging.c:274: mannual_spi(result);
      002239 12 24 2E         [24]  913 	lcall	_mannual_spi
                                    914 ;	spi_and_bit_banging.c:275: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00223C 74 4B            [12]  915 	mov	a,#___str_16
      00223E C0 E0            [24]  916 	push	acc
      002240 74 3D            [12]  917 	mov	a,#(___str_16 >> 8)
      002242 C0 E0            [24]  918 	push	acc
      002244 74 80            [12]  919 	mov	a,#0x80
      002246 C0 E0            [24]  920 	push	acc
      002248 12 27 54         [24]  921 	lcall	_printf
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
      002256 12 24 F0         [24]  932 	lcall	_bit_bang_spi_init
                                    933 ;	spi_and_bit_banging.c:282: unsigned char result2 = take_data();
      002259 12 22 DA         [24]  934 	lcall	_take_data
                                    935 ;	spi_and_bit_banging.c:283: bit_bang_spi(result2);
      00225C 12 22 A7         [24]  936 	lcall	_bit_bang_spi
                                    937 ;	spi_and_bit_banging.c:284: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00225F 74 6D            [12]  938 	mov	a,#___str_17
      002261 C0 E0            [24]  939 	push	acc
      002263 74 3D            [12]  940 	mov	a,#(___str_17 >> 8)
      002265 C0 E0            [24]  941 	push	acc
      002267 74 80            [12]  942 	mov	a,#0x80
      002269 C0 E0            [24]  943 	push	acc
      00226B 12 27 54         [24]  944 	lcall	_printf
      00226E 15 81            [12]  945 	dec	sp
      002270 15 81            [12]  946 	dec	sp
      002272 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:286: break;
      002274 02 21 F0         [24]  949 	ljmp	00106$
                                    950 ;	spi_and_bit_banging.c:326: default:
      002277                        951 00103$:
                                    952 ;	spi_and_bit_banging.c:327: printf(">> INVALID INPUT\n\r");
      002277 74 92            [12]  953 	mov	a,#___str_18
      002279 C0 E0            [24]  954 	push	acc
      00227B 74 3D            [12]  955 	mov	a,#(___str_18 >> 8)
      00227D C0 E0            [24]  956 	push	acc
      00227F 74 80            [12]  957 	mov	a,#0x80
      002281 C0 E0            [24]  958 	push	acc
      002283 12 27 54         [24]  959 	lcall	_printf
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
      00229E 12 26 28         [24]  982 	lcall	_spi_ramp_signal
                                    983 ;	spi_and_bit_banging.c:345: spi_triangular_wave(7);
      0022A1 90 00 07         [24]  984 	mov	dptr,#0x0007
                                    985 ;	spi_and_bit_banging.c:346: }
      0022A4 02 25 4A         [24]  986 	ljmp	_spi_triangular_wave
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
      0022BA 12 24 FA         [24] 1010 	lcall	_bit_bang_spi_write
                                   1011 ;	spi_and_bit_banging.c:355: delay_ms(DELAY_PERIOD);
      0022BD 90 01 F4         [24] 1012 	mov	dptr,#0x01f4
      0022C0 12 20 8F         [24] 1013 	lcall	_delay_ms
                                   1014 ;	spi_and_bit_banging.c:356: bit_bang_spi_write(IDLE_DATA);
      0022C3 90 10 00         [24] 1015 	mov	dptr,#0x1000
      0022C6 12 24 FA         [24] 1016 	lcall	_bit_bang_spi_write
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
      0022DA 74 A5            [12] 1044 	mov	a,#___str_19
      0022DC C0 E0            [24] 1045 	push	acc
      0022DE 74 3D            [12] 1046 	mov	a,#(___str_19 >> 8)
      0022E0 C0 E0            [24] 1047 	push	acc
      0022E2 74 80            [12] 1048 	mov	a,#0x80
      0022E4 C0 E0            [24] 1049 	push	acc
      0022E6 12 27 54         [24] 1050 	lcall	_printf
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
      002300 74 D0            [12] 1065 	mov	a,#___str_20
      002302 C0 E0            [24] 1066 	push	acc
      002304 74 3D            [12] 1067 	mov	a,#(___str_20 >> 8)
      002306 C0 E0            [24] 1068 	push	acc
      002308 74 80            [12] 1069 	mov	a,#0x80
      00230A C0 E0            [24] 1070 	push	acc
      00230C 12 27 54         [24] 1071 	lcall	_printf
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
      002414 74 D3            [12] 1261 	mov	a,#___str_21
      002416 C0 E0            [24] 1262 	push	acc
      002418 74 3D            [12] 1263 	mov	a,#(___str_21 >> 8)
      00241A C0 E0            [24] 1264 	push	acc
      00241C 74 80            [12] 1265 	mov	a,#0x80
      00241E C0 E0            [24] 1266 	push	acc
      002420 12 27 54         [24] 1267 	lcall	_printf
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
                                   1305 ;	spi_and_bit_banging.c:420: while(number > 0)
      002441                       1306 00111$:
      002441 90 04 0A         [24] 1307 	mov	dptr,#_mannual_spi_number_65536_54
      002444 E0               [24] 1308 	movx	a,@dptr
      002445 70 01            [24] 1309 	jnz	00156$
      002447 22               [24] 1310 	ret
      002448                       1311 00156$:
                                   1312 ;	spi_and_bit_banging.c:423: for(int i = 0; i<256; i++)
      002448 7E 00            [12] 1313 	mov	r6,#0x00
      00244A 7F 00            [12] 1314 	mov	r7,#0x00
      00244C                       1315 00115$:
      00244C C3               [12] 1316 	clr	c
      00244D EF               [12] 1317 	mov	a,r7
      00244E 64 80            [12] 1318 	xrl	a,#0x80
      002450 94 81            [12] 1319 	subb	a,#0x81
      002452 40 03            [24] 1320 	jc	00157$
      002454 02 24 DC         [24] 1321 	ljmp	00110$
      002457                       1322 00157$:
                                   1323 ;	spi_and_bit_banging.c:426: if(dac_value_index < SINE_MAX_INDEX)
      002457 90 04 0B         [24] 1324 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00245A E0               [24] 1325 	movx	a,@dptr
      00245B FC               [12] 1326 	mov	r4,a
      00245C A3               [24] 1327 	inc	dptr
      00245D E0               [24] 1328 	movx	a,@dptr
      00245E FD               [12] 1329 	mov	r5,a
      00245F C3               [12] 1330 	clr	c
      002460 64 80            [12] 1331 	xrl	a,#0x80
      002462 94 81            [12] 1332 	subb	a,#0x81
      002464 50 21            [24] 1333 	jnc	00102$
                                   1334 ;	spi_and_bit_banging.c:430: dac_data = dac_values[dac_value_index];
      002466 EC               [12] 1335 	mov	a,r4
      002467 2C               [12] 1336 	add	a,r4
      002468 FC               [12] 1337 	mov	r4,a
      002469 ED               [12] 1338 	mov	a,r5
      00246A 33               [12] 1339 	rlc	a
      00246B FD               [12] 1340 	mov	r5,a
      00246C EC               [12] 1341 	mov	a,r4
      00246D 24 B6            [12] 1342 	add	a,#_dac_values
      00246F F5 82            [12] 1343 	mov	dpl,a
      002471 ED               [12] 1344 	mov	a,r5
      002472 34 31            [12] 1345 	addc	a,#(_dac_values >> 8)
      002474 F5 83            [12] 1346 	mov	dph,a
      002476 E4               [12] 1347 	clr	a
      002477 93               [24] 1348 	movc	a,@a+dptr
      002478 FC               [12] 1349 	mov	r4,a
      002479 A3               [24] 1350 	inc	dptr
      00247A E4               [12] 1351 	clr	a
      00247B 93               [24] 1352 	movc	a,@a+dptr
      00247C FD               [12] 1353 	mov	r5,a
      00247D 90 04 0D         [24] 1354 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002480 EC               [12] 1355 	mov	a,r4
      002481 F0               [24] 1356 	movx	@dptr,a
      002482 ED               [12] 1357 	mov	a,r5
      002483 A3               [24] 1358 	inc	dptr
      002484 F0               [24] 1359 	movx	@dptr,a
      002485 80 07            [24] 1360 	sjmp	00103$
      002487                       1361 00102$:
                                   1362 ;	spi_and_bit_banging.c:434: dac_value_index = 0;  // Reset index for next cycle
      002487 90 04 0B         [24] 1363 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00248A E4               [12] 1364 	clr	a
      00248B F0               [24] 1365 	movx	@dptr,a
      00248C A3               [24] 1366 	inc	dptr
      00248D F0               [24] 1367 	movx	@dptr,a
      00248E                       1368 00103$:
                                   1369 ;	spi_and_bit_banging.c:441: ((dac_data >> 4) & 0x0F);
      00248E 90 04 0D         [24] 1370 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002491 E0               [24] 1371 	movx	a,@dptr
      002492 FC               [12] 1372 	mov	r4,a
      002493 A3               [24] 1373 	inc	dptr
      002494 E0               [24] 1374 	movx	a,@dptr
      002495 8C 02            [24] 1375 	mov	ar2,r4
      002497 C4               [12] 1376 	swap	a
      002498 CA               [12] 1377 	xch	a,r2
      002499 C4               [12] 1378 	swap	a
      00249A 54 0F            [12] 1379 	anl	a,#0x0f
      00249C 6A               [12] 1380 	xrl	a,r2
      00249D CA               [12] 1381 	xch	a,r2
      00249E 54 0F            [12] 1382 	anl	a,#0x0f
      0024A0 CA               [12] 1383 	xch	a,r2
      0024A1 6A               [12] 1384 	xrl	a,r2
      0024A2 CA               [12] 1385 	xch	a,r2
      0024A3 30 E3 02         [24] 1386 	jnb	acc.3,00159$
      0024A6 44 F0            [12] 1387 	orl	a,#0xf0
      0024A8                       1388 00159$:
      0024A8 74 0F            [12] 1389 	mov	a,#0x0f
      0024AA 5A               [12] 1390 	anl	a,r2
      0024AB 44 10            [12] 1391 	orl	a,#0x10
      0024AD FB               [12] 1392 	mov	r3,a
                                   1393 ;	spi_and_bit_banging.c:444: low_byte = (dac_data & 0x0F) << 4;
      0024AE 53 04 0F         [24] 1394 	anl	ar4,#0x0f
      0024B1 EC               [12] 1395 	mov	a,r4
      0024B2 C4               [12] 1396 	swap	a
      0024B3 54 F0            [12] 1397 	anl	a,#0xf0
      0024B5 FD               [12] 1398 	mov	r5,a
                                   1399 ;	spi_and_bit_banging.c:448: P1_1 = 0;  // Select DAC
                                   1400 ;	assignBit
      0024B6 C2 91            [12] 1401 	clr	_P1_1
                                   1402 ;	spi_and_bit_banging.c:451: SPDAT = high_byte;
      0024B8 8B C5            [24] 1403 	mov	_SPDAT,r3
                                   1404 ;	spi_and_bit_banging.c:452: while (!(SPSTA & (1<<7))); 
      0024BA                       1405 00104$:
      0024BA E5 C4            [12] 1406 	mov	a,_SPSTA
      0024BC 30 E7 FB         [24] 1407 	jnb	acc.7,00104$
                                   1408 ;	spi_and_bit_banging.c:456: SPDAT = low_byte;
      0024BF 8D C5            [24] 1409 	mov	_SPDAT,r5
                                   1410 ;	spi_and_bit_banging.c:457: while (!(SPSTA & (1<<7))); 
      0024C1                       1411 00107$:
      0024C1 E5 C4            [12] 1412 	mov	a,_SPSTA
      0024C3 30 E7 FB         [24] 1413 	jnb	acc.7,00107$
                                   1414 ;	spi_and_bit_banging.c:459: P1_1 = 1;  // Deselect DAC
                                   1415 ;	assignBit
      0024C6 D2 91            [12] 1416 	setb	_P1_1
                                   1417 ;	spi_and_bit_banging.c:461: dac_value_index++;
      0024C8 90 04 0B         [24] 1418 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024CB E0               [24] 1419 	movx	a,@dptr
      0024CC 24 01            [12] 1420 	add	a,#0x01
      0024CE F0               [24] 1421 	movx	@dptr,a
      0024CF A3               [24] 1422 	inc	dptr
      0024D0 E0               [24] 1423 	movx	a,@dptr
      0024D1 34 00            [12] 1424 	addc	a,#0x00
      0024D3 F0               [24] 1425 	movx	@dptr,a
                                   1426 ;	spi_and_bit_banging.c:423: for(int i = 0; i<256; i++)
      0024D4 0E               [12] 1427 	inc	r6
      0024D5 BE 00 01         [24] 1428 	cjne	r6,#0x00,00162$
      0024D8 0F               [12] 1429 	inc	r7
      0024D9                       1430 00162$:
      0024D9 02 24 4C         [24] 1431 	ljmp	00115$
      0024DC                       1432 00110$:
                                   1433 ;	spi_and_bit_banging.c:464: number = number - 1;
      0024DC 90 04 0A         [24] 1434 	mov	dptr,#_mannual_spi_number_65536_54
      0024DF E0               [24] 1435 	movx	a,@dptr
      0024E0 FF               [12] 1436 	mov	r7,a
      0024E1 14               [12] 1437 	dec	a
      0024E2 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	spi_and_bit_banging.c:466: }
      0024E3 02 24 41         [24] 1440 	ljmp	00111$
                                   1441 ;------------------------------------------------------------
                                   1442 ;Allocation info for local variables in function 'spi_init'
                                   1443 ;------------------------------------------------------------
                                   1444 ;	spi_and_bit_banging.c:477: void spi_init(void) 
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function spi_init
                                   1447 ;	-----------------------------------------
      0024E6                       1448 _spi_init:
                                   1449 ;	spi_and_bit_banging.c:498: SPCON |= 0x10;
      0024E6 43 C3 10         [24] 1450 	orl	_SPCON,#0x10
                                   1451 ;	spi_and_bit_banging.c:499: SPCON |= 0x20;
      0024E9 43 C3 20         [24] 1452 	orl	_SPCON,#0x20
                                   1453 ;	spi_and_bit_banging.c:500: SPCON |= 0x40;
      0024EC 43 C3 40         [24] 1454 	orl	_SPCON,#0x40
                                   1455 ;	spi_and_bit_banging.c:507: }
      0024EF 22               [24] 1456 	ret
                                   1457 ;------------------------------------------------------------
                                   1458 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1459 ;------------------------------------------------------------
                                   1460 ;	spi_and_bit_banging.c:509: void bit_bang_spi_init(void) {
                                   1461 ;	-----------------------------------------
                                   1462 ;	 function bit_bang_spi_init
                                   1463 ;	-----------------------------------------
      0024F0                       1464 _bit_bang_spi_init:
                                   1465 ;	spi_and_bit_banging.c:510: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      0024F0 75 C3 00         [24] 1466 	mov	_SPCON,#0x00
                                   1467 ;	spi_and_bit_banging.c:511: SDA = DATA_HIGH;                 /* Set data line high */
                                   1468 ;	assignBit
      0024F3 D2 97            [12] 1469 	setb	_P1_7
                                   1470 ;	spi_and_bit_banging.c:512: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1471 ;	assignBit
      0024F5 C2 96            [12] 1472 	clr	_P1_6
                                   1473 ;	spi_and_bit_banging.c:513: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1474 ;	assignBit
      0024F7 D2 91            [12] 1475 	setb	_P1_1
                                   1476 ;	spi_and_bit_banging.c:514: }
      0024F9 22               [24] 1477 	ret
                                   1478 ;------------------------------------------------------------
                                   1479 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1480 ;------------------------------------------------------------
                                   1481 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_65'
                                   1482 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_66'
                                   1483 ;------------------------------------------------------------
                                   1484 ;	spi_and_bit_banging.c:516: int bit_bang_spi_write(uint16_t data) {
                                   1485 ;	-----------------------------------------
                                   1486 ;	 function bit_bang_spi_write
                                   1487 ;	-----------------------------------------
      0024FA                       1488 _bit_bang_spi_write:
      0024FA AF 83            [24] 1489 	mov	r7,dph
      0024FC E5 82            [12] 1490 	mov	a,dpl
      0024FE 90 04 0F         [24] 1491 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002501 F0               [24] 1492 	movx	@dptr,a
      002502 EF               [12] 1493 	mov	a,r7
      002503 A3               [24] 1494 	inc	dptr
      002504 F0               [24] 1495 	movx	@dptr,a
                                   1496 ;	spi_and_bit_banging.c:519: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1497 ;	assignBit
      002505 C2 91            [12] 1498 	clr	_P1_1
                                   1499 ;	spi_and_bit_banging.c:522: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002507 7E 00            [12] 1500 	mov	r6,#0x00
      002509 7F 00            [12] 1501 	mov	r7,#0x00
      00250B                       1502 00102$:
                                   1503 ;	spi_and_bit_banging.c:523: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      00250B 90 04 0F         [24] 1504 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      00250E E0               [24] 1505 	movx	a,@dptr
      00250F FC               [12] 1506 	mov	r4,a
      002510 A3               [24] 1507 	inc	dptr
      002511 E0               [24] 1508 	movx	a,@dptr
      002512 FD               [12] 1509 	mov	r5,a
      002513 23               [12] 1510 	rl	a
      002514 54 01            [12] 1511 	anl	a,#0x01
      002516 24 FF            [12] 1512 	add	a,#0xff
      002518 92 97            [24] 1513 	mov	_P1_7,c
                                   1514 ;	spi_and_bit_banging.c:524: SCL = CLOCK_HIGH;            /* Clock high */
                                   1515 ;	assignBit
      00251A D2 96            [12] 1516 	setb	_P1_6
                                   1517 ;	spi_and_bit_banging.c:525: SCL = CLOCK_LOW;             /* Clock low */
                                   1518 ;	assignBit
      00251C C2 96            [12] 1519 	clr	_P1_6
                                   1520 ;	spi_and_bit_banging.c:526: data <<= 1;                  /* Shift to next bit */
      00251E EC               [12] 1521 	mov	a,r4
      00251F 2C               [12] 1522 	add	a,r4
      002520 FC               [12] 1523 	mov	r4,a
      002521 ED               [12] 1524 	mov	a,r5
      002522 33               [12] 1525 	rlc	a
      002523 FD               [12] 1526 	mov	r5,a
      002524 90 04 0F         [24] 1527 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002527 EC               [12] 1528 	mov	a,r4
      002528 F0               [24] 1529 	movx	@dptr,a
      002529 ED               [12] 1530 	mov	a,r5
      00252A A3               [24] 1531 	inc	dptr
      00252B F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	spi_and_bit_banging.c:522: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00252C 0E               [12] 1534 	inc	r6
      00252D BE 00 01         [24] 1535 	cjne	r6,#0x00,00115$
      002530 0F               [12] 1536 	inc	r7
      002531                       1537 00115$:
      002531 C3               [12] 1538 	clr	c
      002532 EE               [12] 1539 	mov	a,r6
      002533 94 10            [12] 1540 	subb	a,#0x10
      002535 EF               [12] 1541 	mov	a,r7
      002536 94 00            [12] 1542 	subb	a,#0x00
      002538 40 D1            [24] 1543 	jc	00102$
                                   1544 ;	spi_and_bit_banging.c:530: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1545 ;	assignBit
      00253A D2 91            [12] 1546 	setb	_P1_1
                                   1547 ;	spi_and_bit_banging.c:531: SCL = CLOCK_LOW;                 /* Clock low */
                                   1548 ;	assignBit
      00253C C2 96            [12] 1549 	clr	_P1_6
                                   1550 ;	spi_and_bit_banging.c:532: SDA = DATA_HIGH;                 /* Data high */
                                   1551 ;	assignBit
      00253E D2 97            [12] 1552 	setb	_P1_7
                                   1553 ;	spi_and_bit_banging.c:534: return 0;
      002540 90 00 00         [24] 1554 	mov	dptr,#0x0000
                                   1555 ;	spi_and_bit_banging.c:535: }
      002543 22               [24] 1556 	ret
                                   1557 ;------------------------------------------------------------
                                   1558 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1559 ;------------------------------------------------------------
                                   1560 ;	spi_and_bit_banging.c:542: void spi_transmission_start(void)
                                   1561 ;	-----------------------------------------
                                   1562 ;	 function spi_transmission_start
                                   1563 ;	-----------------------------------------
      002544                       1564 _spi_transmission_start:
                                   1565 ;	spi_and_bit_banging.c:544: SPCON |= SPI_ENABLE;           // Enable SPI
      002544 43 C3 40         [24] 1566 	orl	_SPCON,#0x40
                                   1567 ;	spi_and_bit_banging.c:545: P1_1 = 0;
                                   1568 ;	assignBit
      002547 C2 91            [12] 1569 	clr	_P1_1
                                   1570 ;	spi_and_bit_banging.c:546: }
      002549 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1574 ;------------------------------------------------------------
                                   1575 ;number                    Allocated with name '_spi_triangular_wave_number_65536_71'
                                   1576 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_72'
                                   1577 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_72'
                                   1578 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_72'
                                   1579 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_72'
                                   1580 ;i                         Allocated with name '_spi_triangular_wave_i_196608_74'
                                   1581 ;------------------------------------------------------------
                                   1582 ;	spi_and_bit_banging.c:548: void spi_triangular_wave(int number)
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function spi_triangular_wave
                                   1585 ;	-----------------------------------------
      00254A                       1586 _spi_triangular_wave:
      00254A AF 83            [24] 1587 	mov	r7,dph
      00254C E5 82            [12] 1588 	mov	a,dpl
      00254E 90 04 11         [24] 1589 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002551 F0               [24] 1590 	movx	@dptr,a
      002552 EF               [12] 1591 	mov	a,r7
      002553 A3               [24] 1592 	inc	dptr
      002554 F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	spi_and_bit_banging.c:550: int dac_value_index = 0;
      002555 90 04 13         [24] 1595 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002558 E4               [12] 1596 	clr	a
      002559 F0               [24] 1597 	movx	@dptr,a
      00255A A3               [24] 1598 	inc	dptr
      00255B F0               [24] 1599 	movx	@dptr,a
                                   1600 ;	spi_and_bit_banging.c:551: int dac_data = 0;
      00255C 90 04 15         [24] 1601 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      00255F F0               [24] 1602 	movx	@dptr,a
      002560 A3               [24] 1603 	inc	dptr
      002561 F0               [24] 1604 	movx	@dptr,a
                                   1605 ;	spi_and_bit_banging.c:553: while(number>0)
      002562 90 04 11         [24] 1606 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002565 E0               [24] 1607 	movx	a,@dptr
      002566 FE               [12] 1608 	mov	r6,a
      002567 A3               [24] 1609 	inc	dptr
      002568 E0               [24] 1610 	movx	a,@dptr
      002569 FF               [12] 1611 	mov	r7,a
      00256A                       1612 00111$:
      00256A C3               [12] 1613 	clr	c
      00256B E4               [12] 1614 	clr	a
      00256C 9E               [12] 1615 	subb	a,r6
      00256D 74 80            [12] 1616 	mov	a,#(0x00 ^ 0x80)
      00256F 8F F0            [24] 1617 	mov	b,r7
      002571 63 F0 80         [24] 1618 	xrl	b,#0x80
      002574 95 F0            [12] 1619 	subb	a,b
      002576 40 03            [24] 1620 	jc	00157$
      002578 02 26 1F         [24] 1621 	ljmp	00129$
      00257B                       1622 00157$:
                                   1623 ;	spi_and_bit_banging.c:555: for(int i = 0; i<512; i++)
      00257B 7C 00            [12] 1624 	mov	r4,#0x00
      00257D 7D 00            [12] 1625 	mov	r5,#0x00
      00257F                       1626 00115$:
      00257F C3               [12] 1627 	clr	c
      002580 ED               [12] 1628 	mov	a,r5
      002581 64 80            [12] 1629 	xrl	a,#0x80
      002583 94 82            [12] 1630 	subb	a,#0x82
      002585 40 03            [24] 1631 	jc	00158$
      002587 02 26 0F         [24] 1632 	ljmp	00110$
      00258A                       1633 00158$:
                                   1634 ;	spi_and_bit_banging.c:558: if(dac_value_index < 512)
      00258A 90 04 13         [24] 1635 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00258D E0               [24] 1636 	movx	a,@dptr
      00258E FA               [12] 1637 	mov	r2,a
      00258F A3               [24] 1638 	inc	dptr
      002590 E0               [24] 1639 	movx	a,@dptr
      002591 FB               [12] 1640 	mov	r3,a
      002592 C3               [12] 1641 	clr	c
      002593 64 80            [12] 1642 	xrl	a,#0x80
      002595 94 82            [12] 1643 	subb	a,#0x82
      002597 50 21            [24] 1644 	jnc	00102$
                                   1645 ;	spi_and_bit_banging.c:562: dac_data = trig_dac_values[dac_value_index];
      002599 EA               [12] 1646 	mov	a,r2
      00259A 2A               [12] 1647 	add	a,r2
      00259B FA               [12] 1648 	mov	r2,a
      00259C EB               [12] 1649 	mov	a,r3
      00259D 33               [12] 1650 	rlc	a
      00259E FB               [12] 1651 	mov	r3,a
      00259F EA               [12] 1652 	mov	a,r2
      0025A0 24 B6            [12] 1653 	add	a,#_trig_dac_values
      0025A2 F5 82            [12] 1654 	mov	dpl,a
      0025A4 EB               [12] 1655 	mov	a,r3
      0025A5 34 33            [12] 1656 	addc	a,#(_trig_dac_values >> 8)
      0025A7 F5 83            [12] 1657 	mov	dph,a
      0025A9 E4               [12] 1658 	clr	a
      0025AA 93               [24] 1659 	movc	a,@a+dptr
      0025AB FA               [12] 1660 	mov	r2,a
      0025AC A3               [24] 1661 	inc	dptr
      0025AD E4               [12] 1662 	clr	a
      0025AE 93               [24] 1663 	movc	a,@a+dptr
      0025AF FB               [12] 1664 	mov	r3,a
      0025B0 90 04 15         [24] 1665 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025B3 EA               [12] 1666 	mov	a,r2
      0025B4 F0               [24] 1667 	movx	@dptr,a
      0025B5 EB               [12] 1668 	mov	a,r3
      0025B6 A3               [24] 1669 	inc	dptr
      0025B7 F0               [24] 1670 	movx	@dptr,a
      0025B8 80 07            [24] 1671 	sjmp	00103$
      0025BA                       1672 00102$:
                                   1673 ;	spi_and_bit_banging.c:566: dac_value_index = 0;  // Reset index for next cycle
      0025BA 90 04 13         [24] 1674 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025BD E4               [12] 1675 	clr	a
      0025BE F0               [24] 1676 	movx	@dptr,a
      0025BF A3               [24] 1677 	inc	dptr
      0025C0 F0               [24] 1678 	movx	@dptr,a
      0025C1                       1679 00103$:
                                   1680 ;	spi_and_bit_banging.c:573: ((dac_data >> 4) & 0x0F);
      0025C1 90 04 15         [24] 1681 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025C4 E0               [24] 1682 	movx	a,@dptr
      0025C5 FA               [12] 1683 	mov	r2,a
      0025C6 A3               [24] 1684 	inc	dptr
      0025C7 E0               [24] 1685 	movx	a,@dptr
      0025C8 8A 00            [24] 1686 	mov	ar0,r2
      0025CA C4               [12] 1687 	swap	a
      0025CB C8               [12] 1688 	xch	a,r0
      0025CC C4               [12] 1689 	swap	a
      0025CD 54 0F            [12] 1690 	anl	a,#0x0f
      0025CF 68               [12] 1691 	xrl	a,r0
      0025D0 C8               [12] 1692 	xch	a,r0
      0025D1 54 0F            [12] 1693 	anl	a,#0x0f
      0025D3 C8               [12] 1694 	xch	a,r0
      0025D4 68               [12] 1695 	xrl	a,r0
      0025D5 C8               [12] 1696 	xch	a,r0
      0025D6 30 E3 02         [24] 1697 	jnb	acc.3,00160$
      0025D9 44 F0            [12] 1698 	orl	a,#0xf0
      0025DB                       1699 00160$:
      0025DB 74 0F            [12] 1700 	mov	a,#0x0f
      0025DD 58               [12] 1701 	anl	a,r0
      0025DE 44 10            [12] 1702 	orl	a,#0x10
      0025E0 F9               [12] 1703 	mov	r1,a
                                   1704 ;	spi_and_bit_banging.c:576: low_byte = (dac_data & 0x0F) << 4;
      0025E1 53 02 0F         [24] 1705 	anl	ar2,#0x0f
      0025E4 EA               [12] 1706 	mov	a,r2
      0025E5 C4               [12] 1707 	swap	a
      0025E6 54 F0            [12] 1708 	anl	a,#0xf0
      0025E8 FB               [12] 1709 	mov	r3,a
                                   1710 ;	spi_and_bit_banging.c:580: P1_1 = 0;  // Select DAC
                                   1711 ;	assignBit
      0025E9 C2 91            [12] 1712 	clr	_P1_1
                                   1713 ;	spi_and_bit_banging.c:583: SPDAT = high_byte;
      0025EB 89 C5            [24] 1714 	mov	_SPDAT,r1
                                   1715 ;	spi_and_bit_banging.c:584: while (!(SPSTA & (1<<7))); 
      0025ED                       1716 00104$:
      0025ED E5 C4            [12] 1717 	mov	a,_SPSTA
      0025EF 30 E7 FB         [24] 1718 	jnb	acc.7,00104$
                                   1719 ;	spi_and_bit_banging.c:588: SPDAT = low_byte;
      0025F2 8B C5            [24] 1720 	mov	_SPDAT,r3
                                   1721 ;	spi_and_bit_banging.c:589: while (!(SPSTA & (1<<7))); 
      0025F4                       1722 00107$:
      0025F4 E5 C4            [12] 1723 	mov	a,_SPSTA
      0025F6 30 E7 FB         [24] 1724 	jnb	acc.7,00107$
                                   1725 ;	spi_and_bit_banging.c:591: P1_1 = 1;  // Deselect DAC
                                   1726 ;	assignBit
      0025F9 D2 91            [12] 1727 	setb	_P1_1
                                   1728 ;	spi_and_bit_banging.c:593: dac_value_index++;
      0025FB 90 04 13         [24] 1729 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025FE E0               [24] 1730 	movx	a,@dptr
      0025FF 24 01            [12] 1731 	add	a,#0x01
      002601 F0               [24] 1732 	movx	@dptr,a
      002602 A3               [24] 1733 	inc	dptr
      002603 E0               [24] 1734 	movx	a,@dptr
      002604 34 00            [12] 1735 	addc	a,#0x00
      002606 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	spi_and_bit_banging.c:555: for(int i = 0; i<512; i++)
      002607 0C               [12] 1738 	inc	r4
      002608 BC 00 01         [24] 1739 	cjne	r4,#0x00,00163$
      00260B 0D               [12] 1740 	inc	r5
      00260C                       1741 00163$:
      00260C 02 25 7F         [24] 1742 	ljmp	00115$
      00260F                       1743 00110$:
                                   1744 ;	spi_and_bit_banging.c:596: number = number - 1;
      00260F 1E               [12] 1745 	dec	r6
      002610 BE FF 01         [24] 1746 	cjne	r6,#0xff,00164$
      002613 1F               [12] 1747 	dec	r7
      002614                       1748 00164$:
      002614 90 04 11         [24] 1749 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002617 EE               [12] 1750 	mov	a,r6
      002618 F0               [24] 1751 	movx	@dptr,a
      002619 EF               [12] 1752 	mov	a,r7
      00261A A3               [24] 1753 	inc	dptr
      00261B F0               [24] 1754 	movx	@dptr,a
      00261C 02 25 6A         [24] 1755 	ljmp	00111$
      00261F                       1756 00129$:
      00261F 90 04 11         [24] 1757 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002622 EE               [12] 1758 	mov	a,r6
      002623 F0               [24] 1759 	movx	@dptr,a
      002624 EF               [12] 1760 	mov	a,r7
      002625 A3               [24] 1761 	inc	dptr
      002626 F0               [24] 1762 	movx	@dptr,a
                                   1763 ;	spi_and_bit_banging.c:599: }
      002627 22               [24] 1764 	ret
                                   1765 ;------------------------------------------------------------
                                   1766 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1767 ;------------------------------------------------------------
                                   1768 ;number                    Allocated with name '_spi_ramp_signal_number_65536_78'
                                   1769 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_79'
                                   1770 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_79'
                                   1771 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_79'
                                   1772 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_79'
                                   1773 ;i                         Allocated with name '_spi_ramp_signal_i_196608_81'
                                   1774 ;------------------------------------------------------------
                                   1775 ;	spi_and_bit_banging.c:601: void spi_ramp_signal(int number)
                                   1776 ;	-----------------------------------------
                                   1777 ;	 function spi_ramp_signal
                                   1778 ;	-----------------------------------------
      002628                       1779 _spi_ramp_signal:
      002628 AF 83            [24] 1780 	mov	r7,dph
      00262A E5 82            [12] 1781 	mov	a,dpl
      00262C 90 04 17         [24] 1782 	mov	dptr,#_spi_ramp_signal_number_65536_78
      00262F F0               [24] 1783 	movx	@dptr,a
      002630 EF               [12] 1784 	mov	a,r7
      002631 A3               [24] 1785 	inc	dptr
      002632 F0               [24] 1786 	movx	@dptr,a
                                   1787 ;	spi_and_bit_banging.c:603: int dac_value_index = 0;
      002633 90 04 19         [24] 1788 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      002636 E4               [12] 1789 	clr	a
      002637 F0               [24] 1790 	movx	@dptr,a
      002638 A3               [24] 1791 	inc	dptr
      002639 F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	spi_and_bit_banging.c:604: int dac_data = 0;
      00263A 90 04 1B         [24] 1794 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      00263D F0               [24] 1795 	movx	@dptr,a
      00263E A3               [24] 1796 	inc	dptr
      00263F F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	spi_and_bit_banging.c:606: while(number>0)
      002640 90 04 17         [24] 1799 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002643 E0               [24] 1800 	movx	a,@dptr
      002644 FE               [12] 1801 	mov	r6,a
      002645 A3               [24] 1802 	inc	dptr
      002646 E0               [24] 1803 	movx	a,@dptr
      002647 FF               [12] 1804 	mov	r7,a
      002648                       1805 00111$:
      002648 C3               [12] 1806 	clr	c
      002649 E4               [12] 1807 	clr	a
      00264A 9E               [12] 1808 	subb	a,r6
      00264B 74 80            [12] 1809 	mov	a,#(0x00 ^ 0x80)
      00264D 8F F0            [24] 1810 	mov	b,r7
      00264F 63 F0 80         [24] 1811 	xrl	b,#0x80
      002652 95 F0            [12] 1812 	subb	a,b
      002654 40 03            [24] 1813 	jc	00157$
      002656 02 26 FD         [24] 1814 	ljmp	00129$
      002659                       1815 00157$:
                                   1816 ;	spi_and_bit_banging.c:608: for(int i = 0; i<256; i++)
      002659 7C 00            [12] 1817 	mov	r4,#0x00
      00265B 7D 00            [12] 1818 	mov	r5,#0x00
      00265D                       1819 00115$:
      00265D C3               [12] 1820 	clr	c
      00265E ED               [12] 1821 	mov	a,r5
      00265F 64 80            [12] 1822 	xrl	a,#0x80
      002661 94 81            [12] 1823 	subb	a,#0x81
      002663 40 03            [24] 1824 	jc	00158$
      002665 02 26 ED         [24] 1825 	ljmp	00110$
      002668                       1826 00158$:
                                   1827 ;	spi_and_bit_banging.c:611: if(dac_value_index < 256)
      002668 90 04 19         [24] 1828 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00266B E0               [24] 1829 	movx	a,@dptr
      00266C FA               [12] 1830 	mov	r2,a
      00266D A3               [24] 1831 	inc	dptr
      00266E E0               [24] 1832 	movx	a,@dptr
      00266F FB               [12] 1833 	mov	r3,a
      002670 C3               [12] 1834 	clr	c
      002671 64 80            [12] 1835 	xrl	a,#0x80
      002673 94 81            [12] 1836 	subb	a,#0x81
      002675 50 21            [24] 1837 	jnc	00102$
                                   1838 ;	spi_and_bit_banging.c:615: dac_data = trig_dac_values[dac_value_index];
      002677 EA               [12] 1839 	mov	a,r2
      002678 2A               [12] 1840 	add	a,r2
      002679 FA               [12] 1841 	mov	r2,a
      00267A EB               [12] 1842 	mov	a,r3
      00267B 33               [12] 1843 	rlc	a
      00267C FB               [12] 1844 	mov	r3,a
      00267D EA               [12] 1845 	mov	a,r2
      00267E 24 B6            [12] 1846 	add	a,#_trig_dac_values
      002680 F5 82            [12] 1847 	mov	dpl,a
      002682 EB               [12] 1848 	mov	a,r3
      002683 34 33            [12] 1849 	addc	a,#(_trig_dac_values >> 8)
      002685 F5 83            [12] 1850 	mov	dph,a
      002687 E4               [12] 1851 	clr	a
      002688 93               [24] 1852 	movc	a,@a+dptr
      002689 FA               [12] 1853 	mov	r2,a
      00268A A3               [24] 1854 	inc	dptr
      00268B E4               [12] 1855 	clr	a
      00268C 93               [24] 1856 	movc	a,@a+dptr
      00268D FB               [12] 1857 	mov	r3,a
      00268E 90 04 1B         [24] 1858 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002691 EA               [12] 1859 	mov	a,r2
      002692 F0               [24] 1860 	movx	@dptr,a
      002693 EB               [12] 1861 	mov	a,r3
      002694 A3               [24] 1862 	inc	dptr
      002695 F0               [24] 1863 	movx	@dptr,a
      002696 80 07            [24] 1864 	sjmp	00103$
      002698                       1865 00102$:
                                   1866 ;	spi_and_bit_banging.c:619: dac_value_index = 0;  // Reset index for next cycle
      002698 90 04 19         [24] 1867 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00269B E4               [12] 1868 	clr	a
      00269C F0               [24] 1869 	movx	@dptr,a
      00269D A3               [24] 1870 	inc	dptr
      00269E F0               [24] 1871 	movx	@dptr,a
      00269F                       1872 00103$:
                                   1873 ;	spi_and_bit_banging.c:626: ((dac_data >> 4) & 0x0F);
      00269F 90 04 1B         [24] 1874 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026A2 E0               [24] 1875 	movx	a,@dptr
      0026A3 FA               [12] 1876 	mov	r2,a
      0026A4 A3               [24] 1877 	inc	dptr
      0026A5 E0               [24] 1878 	movx	a,@dptr
      0026A6 8A 00            [24] 1879 	mov	ar0,r2
      0026A8 C4               [12] 1880 	swap	a
      0026A9 C8               [12] 1881 	xch	a,r0
      0026AA C4               [12] 1882 	swap	a
      0026AB 54 0F            [12] 1883 	anl	a,#0x0f
      0026AD 68               [12] 1884 	xrl	a,r0
      0026AE C8               [12] 1885 	xch	a,r0
      0026AF 54 0F            [12] 1886 	anl	a,#0x0f
      0026B1 C8               [12] 1887 	xch	a,r0
      0026B2 68               [12] 1888 	xrl	a,r0
      0026B3 C8               [12] 1889 	xch	a,r0
      0026B4 30 E3 02         [24] 1890 	jnb	acc.3,00160$
      0026B7 44 F0            [12] 1891 	orl	a,#0xf0
      0026B9                       1892 00160$:
      0026B9 74 0F            [12] 1893 	mov	a,#0x0f
      0026BB 58               [12] 1894 	anl	a,r0
      0026BC 44 10            [12] 1895 	orl	a,#0x10
      0026BE F9               [12] 1896 	mov	r1,a
                                   1897 ;	spi_and_bit_banging.c:629: low_byte = (dac_data & 0x0F) << 4;
      0026BF 53 02 0F         [24] 1898 	anl	ar2,#0x0f
      0026C2 EA               [12] 1899 	mov	a,r2
      0026C3 C4               [12] 1900 	swap	a
      0026C4 54 F0            [12] 1901 	anl	a,#0xf0
      0026C6 FB               [12] 1902 	mov	r3,a
                                   1903 ;	spi_and_bit_banging.c:633: P1_1 = 0;  // Select DAC
                                   1904 ;	assignBit
      0026C7 C2 91            [12] 1905 	clr	_P1_1
                                   1906 ;	spi_and_bit_banging.c:636: SPDAT = high_byte;
      0026C9 89 C5            [24] 1907 	mov	_SPDAT,r1
                                   1908 ;	spi_and_bit_banging.c:637: while (!(SPSTA & (1<<7))); 
      0026CB                       1909 00104$:
      0026CB E5 C4            [12] 1910 	mov	a,_SPSTA
      0026CD 30 E7 FB         [24] 1911 	jnb	acc.7,00104$
                                   1912 ;	spi_and_bit_banging.c:641: SPDAT = low_byte;
      0026D0 8B C5            [24] 1913 	mov	_SPDAT,r3
                                   1914 ;	spi_and_bit_banging.c:642: while (!(SPSTA & (1<<7))); 
      0026D2                       1915 00107$:
      0026D2 E5 C4            [12] 1916 	mov	a,_SPSTA
      0026D4 30 E7 FB         [24] 1917 	jnb	acc.7,00107$
                                   1918 ;	spi_and_bit_banging.c:644: P1_1 = 1;  // Deselect DAC
                                   1919 ;	assignBit
      0026D7 D2 91            [12] 1920 	setb	_P1_1
                                   1921 ;	spi_and_bit_banging.c:646: dac_value_index++;
      0026D9 90 04 19         [24] 1922 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026DC E0               [24] 1923 	movx	a,@dptr
      0026DD 24 01            [12] 1924 	add	a,#0x01
      0026DF F0               [24] 1925 	movx	@dptr,a
      0026E0 A3               [24] 1926 	inc	dptr
      0026E1 E0               [24] 1927 	movx	a,@dptr
      0026E2 34 00            [12] 1928 	addc	a,#0x00
      0026E4 F0               [24] 1929 	movx	@dptr,a
                                   1930 ;	spi_and_bit_banging.c:608: for(int i = 0; i<256; i++)
      0026E5 0C               [12] 1931 	inc	r4
      0026E6 BC 00 01         [24] 1932 	cjne	r4,#0x00,00163$
      0026E9 0D               [12] 1933 	inc	r5
      0026EA                       1934 00163$:
      0026EA 02 26 5D         [24] 1935 	ljmp	00115$
      0026ED                       1936 00110$:
                                   1937 ;	spi_and_bit_banging.c:649: number = number - 1;
      0026ED 1E               [12] 1938 	dec	r6
      0026EE BE FF 01         [24] 1939 	cjne	r6,#0xff,00164$
      0026F1 1F               [12] 1940 	dec	r7
      0026F2                       1941 00164$:
      0026F2 90 04 17         [24] 1942 	mov	dptr,#_spi_ramp_signal_number_65536_78
      0026F5 EE               [12] 1943 	mov	a,r6
      0026F6 F0               [24] 1944 	movx	@dptr,a
      0026F7 EF               [12] 1945 	mov	a,r7
      0026F8 A3               [24] 1946 	inc	dptr
      0026F9 F0               [24] 1947 	movx	@dptr,a
      0026FA 02 26 48         [24] 1948 	ljmp	00111$
      0026FD                       1949 00129$:
      0026FD 90 04 17         [24] 1950 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002700 EE               [12] 1951 	mov	a,r6
      002701 F0               [24] 1952 	movx	@dptr,a
      002702 EF               [12] 1953 	mov	a,r7
      002703 A3               [24] 1954 	inc	dptr
      002704 F0               [24] 1955 	movx	@dptr,a
                                   1956 ;	spi_and_bit_banging.c:652: }
      002705 22               [24] 1957 	ret
                                   1958 	.area CSEG    (CODE)
                                   1959 	.area CONST   (CODE)
      0031B6                       1960 _dac_values:
      0031B6 80 00                 1961 	.byte #0x80, #0x00	;  128
      0031B8 83 00                 1962 	.byte #0x83, #0x00	;  131
      0031BA 86 00                 1963 	.byte #0x86, #0x00	;  134
      0031BC 89 00                 1964 	.byte #0x89, #0x00	;  137
      0031BE 8C 00                 1965 	.byte #0x8c, #0x00	;  140
      0031C0 90 00                 1966 	.byte #0x90, #0x00	;  144
      0031C2 93 00                 1967 	.byte #0x93, #0x00	;  147
      0031C4 96 00                 1968 	.byte #0x96, #0x00	;  150
      0031C6 99 00                 1969 	.byte #0x99, #0x00	;  153
      0031C8 9C 00                 1970 	.byte #0x9c, #0x00	;  156
      0031CA 9F 00                 1971 	.byte #0x9f, #0x00	;  159
      0031CC A2 00                 1972 	.byte #0xa2, #0x00	;  162
      0031CE A5 00                 1973 	.byte #0xa5, #0x00	;  165
      0031D0 A8 00                 1974 	.byte #0xa8, #0x00	;  168
      0031D2 AB 00                 1975 	.byte #0xab, #0x00	;  171
      0031D4 AE 00                 1976 	.byte #0xae, #0x00	;  174
      0031D6 B1 00                 1977 	.byte #0xb1, #0x00	;  177
      0031D8 B3 00                 1978 	.byte #0xb3, #0x00	;  179
      0031DA B6 00                 1979 	.byte #0xb6, #0x00	;  182
      0031DC B9 00                 1980 	.byte #0xb9, #0x00	;  185
      0031DE BC 00                 1981 	.byte #0xbc, #0x00	;  188
      0031E0 BF 00                 1982 	.byte #0xbf, #0x00	;  191
      0031E2 C1 00                 1983 	.byte #0xc1, #0x00	;  193
      0031E4 C4 00                 1984 	.byte #0xc4, #0x00	;  196
      0031E6 C7 00                 1985 	.byte #0xc7, #0x00	;  199
      0031E8 C9 00                 1986 	.byte #0xc9, #0x00	;  201
      0031EA CC 00                 1987 	.byte #0xcc, #0x00	;  204
      0031EC CE 00                 1988 	.byte #0xce, #0x00	;  206
      0031EE D1 00                 1989 	.byte #0xd1, #0x00	;  209
      0031F0 D3 00                 1990 	.byte #0xd3, #0x00	;  211
      0031F2 D5 00                 1991 	.byte #0xd5, #0x00	;  213
      0031F4 D8 00                 1992 	.byte #0xd8, #0x00	;  216
      0031F6 DA 00                 1993 	.byte #0xda, #0x00	;  218
      0031F8 DC 00                 1994 	.byte #0xdc, #0x00	;  220
      0031FA DE 00                 1995 	.byte #0xde, #0x00	;  222
      0031FC E0 00                 1996 	.byte #0xe0, #0x00	;  224
      0031FE E2 00                 1997 	.byte #0xe2, #0x00	;  226
      003200 E4 00                 1998 	.byte #0xe4, #0x00	;  228
      003202 E6 00                 1999 	.byte #0xe6, #0x00	;  230
      003204 E8 00                 2000 	.byte #0xe8, #0x00	;  232
      003206 EA 00                 2001 	.byte #0xea, #0x00	;  234
      003208 EB 00                 2002 	.byte #0xeb, #0x00	;  235
      00320A ED 00                 2003 	.byte #0xed, #0x00	;  237
      00320C EF 00                 2004 	.byte #0xef, #0x00	;  239
      00320E F0 00                 2005 	.byte #0xf0, #0x00	;  240
      003210 F1 00                 2006 	.byte #0xf1, #0x00	;  241
      003212 F3 00                 2007 	.byte #0xf3, #0x00	;  243
      003214 F4 00                 2008 	.byte #0xf4, #0x00	;  244
      003216 F5 00                 2009 	.byte #0xf5, #0x00	;  245
      003218 F6 00                 2010 	.byte #0xf6, #0x00	;  246
      00321A F8 00                 2011 	.byte #0xf8, #0x00	;  248
      00321C F9 00                 2012 	.byte #0xf9, #0x00	;  249
      00321E FA 00                 2013 	.byte #0xfa, #0x00	;  250
      003220 FA 00                 2014 	.byte #0xfa, #0x00	;  250
      003222 FB 00                 2015 	.byte #0xfb, #0x00	;  251
      003224 FC 00                 2016 	.byte #0xfc, #0x00	;  252
      003226 FD 00                 2017 	.byte #0xfd, #0x00	;  253
      003228 FD 00                 2018 	.byte #0xfd, #0x00	;  253
      00322A FE 00                 2019 	.byte #0xfe, #0x00	;  254
      00322C FE 00                 2020 	.byte #0xfe, #0x00	;  254
      00322E FE 00                 2021 	.byte #0xfe, #0x00	;  254
      003230 FF 00                 2022 	.byte #0xff, #0x00	;  255
      003232 FF 00                 2023 	.byte #0xff, #0x00	;  255
      003234 FF 00                 2024 	.byte #0xff, #0x00	;  255
      003236 FF 00                 2025 	.byte #0xff, #0x00	;  255
      003238 FF 00                 2026 	.byte #0xff, #0x00	;  255
      00323A FF 00                 2027 	.byte #0xff, #0x00	;  255
      00323C FF 00                 2028 	.byte #0xff, #0x00	;  255
      00323E FE 00                 2029 	.byte #0xfe, #0x00	;  254
      003240 FE 00                 2030 	.byte #0xfe, #0x00	;  254
      003242 FE 00                 2031 	.byte #0xfe, #0x00	;  254
      003244 FD 00                 2032 	.byte #0xfd, #0x00	;  253
      003246 FD 00                 2033 	.byte #0xfd, #0x00	;  253
      003248 FC 00                 2034 	.byte #0xfc, #0x00	;  252
      00324A FB 00                 2035 	.byte #0xfb, #0x00	;  251
      00324C FA 00                 2036 	.byte #0xfa, #0x00	;  250
      00324E FA 00                 2037 	.byte #0xfa, #0x00	;  250
      003250 F9 00                 2038 	.byte #0xf9, #0x00	;  249
      003252 F8 00                 2039 	.byte #0xf8, #0x00	;  248
      003254 F6 00                 2040 	.byte #0xf6, #0x00	;  246
      003256 F5 00                 2041 	.byte #0xf5, #0x00	;  245
      003258 F4 00                 2042 	.byte #0xf4, #0x00	;  244
      00325A F3 00                 2043 	.byte #0xf3, #0x00	;  243
      00325C F1 00                 2044 	.byte #0xf1, #0x00	;  241
      00325E F0 00                 2045 	.byte #0xf0, #0x00	;  240
      003260 EF 00                 2046 	.byte #0xef, #0x00	;  239
      003262 ED 00                 2047 	.byte #0xed, #0x00	;  237
      003264 EB 00                 2048 	.byte #0xeb, #0x00	;  235
      003266 EA 00                 2049 	.byte #0xea, #0x00	;  234
      003268 E8 00                 2050 	.byte #0xe8, #0x00	;  232
      00326A E6 00                 2051 	.byte #0xe6, #0x00	;  230
      00326C E4 00                 2052 	.byte #0xe4, #0x00	;  228
      00326E E2 00                 2053 	.byte #0xe2, #0x00	;  226
      003270 E0 00                 2054 	.byte #0xe0, #0x00	;  224
      003272 DE 00                 2055 	.byte #0xde, #0x00	;  222
      003274 DC 00                 2056 	.byte #0xdc, #0x00	;  220
      003276 DA 00                 2057 	.byte #0xda, #0x00	;  218
      003278 D8 00                 2058 	.byte #0xd8, #0x00	;  216
      00327A D5 00                 2059 	.byte #0xd5, #0x00	;  213
      00327C D3 00                 2060 	.byte #0xd3, #0x00	;  211
      00327E D1 00                 2061 	.byte #0xd1, #0x00	;  209
      003280 CE 00                 2062 	.byte #0xce, #0x00	;  206
      003282 CC 00                 2063 	.byte #0xcc, #0x00	;  204
      003284 C9 00                 2064 	.byte #0xc9, #0x00	;  201
      003286 C7 00                 2065 	.byte #0xc7, #0x00	;  199
      003288 C4 00                 2066 	.byte #0xc4, #0x00	;  196
      00328A C1 00                 2067 	.byte #0xc1, #0x00	;  193
      00328C BF 00                 2068 	.byte #0xbf, #0x00	;  191
      00328E BC 00                 2069 	.byte #0xbc, #0x00	;  188
      003290 B9 00                 2070 	.byte #0xb9, #0x00	;  185
      003292 B6 00                 2071 	.byte #0xb6, #0x00	;  182
      003294 B3 00                 2072 	.byte #0xb3, #0x00	;  179
      003296 B1 00                 2073 	.byte #0xb1, #0x00	;  177
      003298 AE 00                 2074 	.byte #0xae, #0x00	;  174
      00329A AB 00                 2075 	.byte #0xab, #0x00	;  171
      00329C A8 00                 2076 	.byte #0xa8, #0x00	;  168
      00329E A5 00                 2077 	.byte #0xa5, #0x00	;  165
      0032A0 A2 00                 2078 	.byte #0xa2, #0x00	;  162
      0032A2 9F 00                 2079 	.byte #0x9f, #0x00	;  159
      0032A4 9C 00                 2080 	.byte #0x9c, #0x00	;  156
      0032A6 99 00                 2081 	.byte #0x99, #0x00	;  153
      0032A8 96 00                 2082 	.byte #0x96, #0x00	;  150
      0032AA 93 00                 2083 	.byte #0x93, #0x00	;  147
      0032AC 90 00                 2084 	.byte #0x90, #0x00	;  144
      0032AE 8C 00                 2085 	.byte #0x8c, #0x00	;  140
      0032B0 89 00                 2086 	.byte #0x89, #0x00	;  137
      0032B2 86 00                 2087 	.byte #0x86, #0x00	;  134
      0032B4 83 00                 2088 	.byte #0x83, #0x00	;  131
      0032B6 80 00                 2089 	.byte #0x80, #0x00	;  128
      0032B8 7D 00                 2090 	.byte #0x7d, #0x00	;  125
      0032BA 7A 00                 2091 	.byte #0x7a, #0x00	;  122
      0032BC 77 00                 2092 	.byte #0x77, #0x00	;  119
      0032BE 74 00                 2093 	.byte #0x74, #0x00	;  116
      0032C0 70 00                 2094 	.byte #0x70, #0x00	;  112
      0032C2 6D 00                 2095 	.byte #0x6d, #0x00	;  109
      0032C4 6A 00                 2096 	.byte #0x6a, #0x00	;  106
      0032C6 67 00                 2097 	.byte #0x67, #0x00	;  103
      0032C8 64 00                 2098 	.byte #0x64, #0x00	;  100
      0032CA 61 00                 2099 	.byte #0x61, #0x00	;  97
      0032CC 5E 00                 2100 	.byte #0x5e, #0x00	;  94
      0032CE 5B 00                 2101 	.byte #0x5b, #0x00	;  91
      0032D0 58 00                 2102 	.byte #0x58, #0x00	;  88
      0032D2 55 00                 2103 	.byte #0x55, #0x00	;  85
      0032D4 52 00                 2104 	.byte #0x52, #0x00	;  82
      0032D6 4F 00                 2105 	.byte #0x4f, #0x00	;  79
      0032D8 4D 00                 2106 	.byte #0x4d, #0x00	;  77
      0032DA 4A 00                 2107 	.byte #0x4a, #0x00	;  74
      0032DC 47 00                 2108 	.byte #0x47, #0x00	;  71
      0032DE 44 00                 2109 	.byte #0x44, #0x00	;  68
      0032E0 41 00                 2110 	.byte #0x41, #0x00	;  65
      0032E2 3F 00                 2111 	.byte #0x3f, #0x00	;  63
      0032E4 3C 00                 2112 	.byte #0x3c, #0x00	;  60
      0032E6 39 00                 2113 	.byte #0x39, #0x00	;  57
      0032E8 37 00                 2114 	.byte #0x37, #0x00	;  55
      0032EA 34 00                 2115 	.byte #0x34, #0x00	;  52
      0032EC 32 00                 2116 	.byte #0x32, #0x00	;  50
      0032EE 2F 00                 2117 	.byte #0x2f, #0x00	;  47
      0032F0 2D 00                 2118 	.byte #0x2d, #0x00	;  45
      0032F2 2B 00                 2119 	.byte #0x2b, #0x00	;  43
      0032F4 28 00                 2120 	.byte #0x28, #0x00	;  40
      0032F6 26 00                 2121 	.byte #0x26, #0x00	;  38
      0032F8 24 00                 2122 	.byte #0x24, #0x00	;  36
      0032FA 22 00                 2123 	.byte #0x22, #0x00	;  34
      0032FC 20 00                 2124 	.byte #0x20, #0x00	;  32
      0032FE 1E 00                 2125 	.byte #0x1e, #0x00	;  30
      003300 1C 00                 2126 	.byte #0x1c, #0x00	;  28
      003302 1A 00                 2127 	.byte #0x1a, #0x00	;  26
      003304 18 00                 2128 	.byte #0x18, #0x00	;  24
      003306 16 00                 2129 	.byte #0x16, #0x00	;  22
      003308 15 00                 2130 	.byte #0x15, #0x00	;  21
      00330A 13 00                 2131 	.byte #0x13, #0x00	;  19
      00330C 11 00                 2132 	.byte #0x11, #0x00	;  17
      00330E 10 00                 2133 	.byte #0x10, #0x00	;  16
      003310 0F 00                 2134 	.byte #0x0f, #0x00	;  15
      003312 0D 00                 2135 	.byte #0x0d, #0x00	;  13
      003314 0C 00                 2136 	.byte #0x0c, #0x00	;  12
      003316 0B 00                 2137 	.byte #0x0b, #0x00	;  11
      003318 0A 00                 2138 	.byte #0x0a, #0x00	;  10
      00331A 08 00                 2139 	.byte #0x08, #0x00	;  8
      00331C 07 00                 2140 	.byte #0x07, #0x00	;  7
      00331E 06 00                 2141 	.byte #0x06, #0x00	;  6
      003320 06 00                 2142 	.byte #0x06, #0x00	;  6
      003322 05 00                 2143 	.byte #0x05, #0x00	;  5
      003324 04 00                 2144 	.byte #0x04, #0x00	;  4
      003326 03 00                 2145 	.byte #0x03, #0x00	;  3
      003328 03 00                 2146 	.byte #0x03, #0x00	;  3
      00332A 02 00                 2147 	.byte #0x02, #0x00	;  2
      00332C 02 00                 2148 	.byte #0x02, #0x00	;  2
      00332E 02 00                 2149 	.byte #0x02, #0x00	;  2
      003330 01 00                 2150 	.byte #0x01, #0x00	;  1
      003332 01 00                 2151 	.byte #0x01, #0x00	;  1
      003334 01 00                 2152 	.byte #0x01, #0x00	;  1
      003336 01 00                 2153 	.byte #0x01, #0x00	;  1
      003338 01 00                 2154 	.byte #0x01, #0x00	;  1
      00333A 01 00                 2155 	.byte #0x01, #0x00	;  1
      00333C 01 00                 2156 	.byte #0x01, #0x00	;  1
      00333E 02 00                 2157 	.byte #0x02, #0x00	;  2
      003340 02 00                 2158 	.byte #0x02, #0x00	;  2
      003342 02 00                 2159 	.byte #0x02, #0x00	;  2
      003344 03 00                 2160 	.byte #0x03, #0x00	;  3
      003346 03 00                 2161 	.byte #0x03, #0x00	;  3
      003348 04 00                 2162 	.byte #0x04, #0x00	;  4
      00334A 05 00                 2163 	.byte #0x05, #0x00	;  5
      00334C 06 00                 2164 	.byte #0x06, #0x00	;  6
      00334E 06 00                 2165 	.byte #0x06, #0x00	;  6
      003350 07 00                 2166 	.byte #0x07, #0x00	;  7
      003352 08 00                 2167 	.byte #0x08, #0x00	;  8
      003354 0A 00                 2168 	.byte #0x0a, #0x00	;  10
      003356 0B 00                 2169 	.byte #0x0b, #0x00	;  11
      003358 0C 00                 2170 	.byte #0x0c, #0x00	;  12
      00335A 0D 00                 2171 	.byte #0x0d, #0x00	;  13
      00335C 0F 00                 2172 	.byte #0x0f, #0x00	;  15
      00335E 10 00                 2173 	.byte #0x10, #0x00	;  16
      003360 11 00                 2174 	.byte #0x11, #0x00	;  17
      003362 13 00                 2175 	.byte #0x13, #0x00	;  19
      003364 15 00                 2176 	.byte #0x15, #0x00	;  21
      003366 16 00                 2177 	.byte #0x16, #0x00	;  22
      003368 18 00                 2178 	.byte #0x18, #0x00	;  24
      00336A 1A 00                 2179 	.byte #0x1a, #0x00	;  26
      00336C 1C 00                 2180 	.byte #0x1c, #0x00	;  28
      00336E 1E 00                 2181 	.byte #0x1e, #0x00	;  30
      003370 20 00                 2182 	.byte #0x20, #0x00	;  32
      003372 22 00                 2183 	.byte #0x22, #0x00	;  34
      003374 24 00                 2184 	.byte #0x24, #0x00	;  36
      003376 26 00                 2185 	.byte #0x26, #0x00	;  38
      003378 28 00                 2186 	.byte #0x28, #0x00	;  40
      00337A 2B 00                 2187 	.byte #0x2b, #0x00	;  43
      00337C 2D 00                 2188 	.byte #0x2d, #0x00	;  45
      00337E 2F 00                 2189 	.byte #0x2f, #0x00	;  47
      003380 32 00                 2190 	.byte #0x32, #0x00	;  50
      003382 34 00                 2191 	.byte #0x34, #0x00	;  52
      003384 37 00                 2192 	.byte #0x37, #0x00	;  55
      003386 39 00                 2193 	.byte #0x39, #0x00	;  57
      003388 3C 00                 2194 	.byte #0x3c, #0x00	;  60
      00338A 3F 00                 2195 	.byte #0x3f, #0x00	;  63
      00338C 41 00                 2196 	.byte #0x41, #0x00	;  65
      00338E 44 00                 2197 	.byte #0x44, #0x00	;  68
      003390 47 00                 2198 	.byte #0x47, #0x00	;  71
      003392 4A 00                 2199 	.byte #0x4a, #0x00	;  74
      003394 4D 00                 2200 	.byte #0x4d, #0x00	;  77
      003396 4F 00                 2201 	.byte #0x4f, #0x00	;  79
      003398 52 00                 2202 	.byte #0x52, #0x00	;  82
      00339A 55 00                 2203 	.byte #0x55, #0x00	;  85
      00339C 58 00                 2204 	.byte #0x58, #0x00	;  88
      00339E 5B 00                 2205 	.byte #0x5b, #0x00	;  91
      0033A0 5E 00                 2206 	.byte #0x5e, #0x00	;  94
      0033A2 61 00                 2207 	.byte #0x61, #0x00	;  97
      0033A4 64 00                 2208 	.byte #0x64, #0x00	;  100
      0033A6 67 00                 2209 	.byte #0x67, #0x00	;  103
      0033A8 6A 00                 2210 	.byte #0x6a, #0x00	;  106
      0033AA 6D 00                 2211 	.byte #0x6d, #0x00	;  109
      0033AC 70 00                 2212 	.byte #0x70, #0x00	;  112
      0033AE 74 00                 2213 	.byte #0x74, #0x00	;  116
      0033B0 77 00                 2214 	.byte #0x77, #0x00	;  119
      0033B2 7A 00                 2215 	.byte #0x7a, #0x00	;  122
      0033B4 7D 00                 2216 	.byte #0x7d, #0x00	;  125
      0033B6                       2217 _trig_dac_values:
      0033B6 00 00                 2218 	.byte #0x00, #0x00	;  0
      0033B8 01 00                 2219 	.byte #0x01, #0x00	;  1
      0033BA 02 00                 2220 	.byte #0x02, #0x00	;  2
      0033BC 03 00                 2221 	.byte #0x03, #0x00	;  3
      0033BE 04 00                 2222 	.byte #0x04, #0x00	;  4
      0033C0 05 00                 2223 	.byte #0x05, #0x00	;  5
      0033C2 06 00                 2224 	.byte #0x06, #0x00	;  6
      0033C4 07 00                 2225 	.byte #0x07, #0x00	;  7
      0033C6 08 00                 2226 	.byte #0x08, #0x00	;  8
      0033C8 09 00                 2227 	.byte #0x09, #0x00	;  9
      0033CA 0A 00                 2228 	.byte #0x0a, #0x00	;  10
      0033CC 0B 00                 2229 	.byte #0x0b, #0x00	;  11
      0033CE 0C 00                 2230 	.byte #0x0c, #0x00	;  12
      0033D0 0D 00                 2231 	.byte #0x0d, #0x00	;  13
      0033D2 0E 00                 2232 	.byte #0x0e, #0x00	;  14
      0033D4 0F 00                 2233 	.byte #0x0f, #0x00	;  15
      0033D6 10 00                 2234 	.byte #0x10, #0x00	;  16
      0033D8 11 00                 2235 	.byte #0x11, #0x00	;  17
      0033DA 12 00                 2236 	.byte #0x12, #0x00	;  18
      0033DC 13 00                 2237 	.byte #0x13, #0x00	;  19
      0033DE 14 00                 2238 	.byte #0x14, #0x00	;  20
      0033E0 15 00                 2239 	.byte #0x15, #0x00	;  21
      0033E2 16 00                 2240 	.byte #0x16, #0x00	;  22
      0033E4 17 00                 2241 	.byte #0x17, #0x00	;  23
      0033E6 18 00                 2242 	.byte #0x18, #0x00	;  24
      0033E8 19 00                 2243 	.byte #0x19, #0x00	;  25
      0033EA 1A 00                 2244 	.byte #0x1a, #0x00	;  26
      0033EC 1B 00                 2245 	.byte #0x1b, #0x00	;  27
      0033EE 1C 00                 2246 	.byte #0x1c, #0x00	;  28
      0033F0 1D 00                 2247 	.byte #0x1d, #0x00	;  29
      0033F2 1E 00                 2248 	.byte #0x1e, #0x00	;  30
      0033F4 1F 00                 2249 	.byte #0x1f, #0x00	;  31
      0033F6 20 00                 2250 	.byte #0x20, #0x00	;  32
      0033F8 21 00                 2251 	.byte #0x21, #0x00	;  33
      0033FA 22 00                 2252 	.byte #0x22, #0x00	;  34
      0033FC 23 00                 2253 	.byte #0x23, #0x00	;  35
      0033FE 24 00                 2254 	.byte #0x24, #0x00	;  36
      003400 25 00                 2255 	.byte #0x25, #0x00	;  37
      003402 26 00                 2256 	.byte #0x26, #0x00	;  38
      003404 27 00                 2257 	.byte #0x27, #0x00	;  39
      003406 28 00                 2258 	.byte #0x28, #0x00	;  40
      003408 29 00                 2259 	.byte #0x29, #0x00	;  41
      00340A 2A 00                 2260 	.byte #0x2a, #0x00	;  42
      00340C 2B 00                 2261 	.byte #0x2b, #0x00	;  43
      00340E 2C 00                 2262 	.byte #0x2c, #0x00	;  44
      003410 2D 00                 2263 	.byte #0x2d, #0x00	;  45
      003412 2E 00                 2264 	.byte #0x2e, #0x00	;  46
      003414 2F 00                 2265 	.byte #0x2f, #0x00	;  47
      003416 30 00                 2266 	.byte #0x30, #0x00	;  48
      003418 31 00                 2267 	.byte #0x31, #0x00	;  49
      00341A 32 00                 2268 	.byte #0x32, #0x00	;  50
      00341C 33 00                 2269 	.byte #0x33, #0x00	;  51
      00341E 34 00                 2270 	.byte #0x34, #0x00	;  52
      003420 35 00                 2271 	.byte #0x35, #0x00	;  53
      003422 36 00                 2272 	.byte #0x36, #0x00	;  54
      003424 37 00                 2273 	.byte #0x37, #0x00	;  55
      003426 38 00                 2274 	.byte #0x38, #0x00	;  56
      003428 39 00                 2275 	.byte #0x39, #0x00	;  57
      00342A 3A 00                 2276 	.byte #0x3a, #0x00	;  58
      00342C 3B 00                 2277 	.byte #0x3b, #0x00	;  59
      00342E 3C 00                 2278 	.byte #0x3c, #0x00	;  60
      003430 3D 00                 2279 	.byte #0x3d, #0x00	;  61
      003432 3E 00                 2280 	.byte #0x3e, #0x00	;  62
      003434 3F 00                 2281 	.byte #0x3f, #0x00	;  63
      003436 40 00                 2282 	.byte #0x40, #0x00	;  64
      003438 41 00                 2283 	.byte #0x41, #0x00	;  65
      00343A 42 00                 2284 	.byte #0x42, #0x00	;  66
      00343C 43 00                 2285 	.byte #0x43, #0x00	;  67
      00343E 44 00                 2286 	.byte #0x44, #0x00	;  68
      003440 45 00                 2287 	.byte #0x45, #0x00	;  69
      003442 46 00                 2288 	.byte #0x46, #0x00	;  70
      003444 47 00                 2289 	.byte #0x47, #0x00	;  71
      003446 48 00                 2290 	.byte #0x48, #0x00	;  72
      003448 49 00                 2291 	.byte #0x49, #0x00	;  73
      00344A 4A 00                 2292 	.byte #0x4a, #0x00	;  74
      00344C 4B 00                 2293 	.byte #0x4b, #0x00	;  75
      00344E 4C 00                 2294 	.byte #0x4c, #0x00	;  76
      003450 4D 00                 2295 	.byte #0x4d, #0x00	;  77
      003452 4E 00                 2296 	.byte #0x4e, #0x00	;  78
      003454 4F 00                 2297 	.byte #0x4f, #0x00	;  79
      003456 50 00                 2298 	.byte #0x50, #0x00	;  80
      003458 51 00                 2299 	.byte #0x51, #0x00	;  81
      00345A 52 00                 2300 	.byte #0x52, #0x00	;  82
      00345C 53 00                 2301 	.byte #0x53, #0x00	;  83
      00345E 54 00                 2302 	.byte #0x54, #0x00	;  84
      003460 55 00                 2303 	.byte #0x55, #0x00	;  85
      003462 56 00                 2304 	.byte #0x56, #0x00	;  86
      003464 57 00                 2305 	.byte #0x57, #0x00	;  87
      003466 58 00                 2306 	.byte #0x58, #0x00	;  88
      003468 59 00                 2307 	.byte #0x59, #0x00	;  89
      00346A 5A 00                 2308 	.byte #0x5a, #0x00	;  90
      00346C 5B 00                 2309 	.byte #0x5b, #0x00	;  91
      00346E 5C 00                 2310 	.byte #0x5c, #0x00	;  92
      003470 5D 00                 2311 	.byte #0x5d, #0x00	;  93
      003472 5E 00                 2312 	.byte #0x5e, #0x00	;  94
      003474 5F 00                 2313 	.byte #0x5f, #0x00	;  95
      003476 60 00                 2314 	.byte #0x60, #0x00	;  96
      003478 61 00                 2315 	.byte #0x61, #0x00	;  97
      00347A 62 00                 2316 	.byte #0x62, #0x00	;  98
      00347C 63 00                 2317 	.byte #0x63, #0x00	;  99
      00347E 64 00                 2318 	.byte #0x64, #0x00	;  100
      003480 65 00                 2319 	.byte #0x65, #0x00	;  101
      003482 66 00                 2320 	.byte #0x66, #0x00	;  102
      003484 67 00                 2321 	.byte #0x67, #0x00	;  103
      003486 68 00                 2322 	.byte #0x68, #0x00	;  104
      003488 69 00                 2323 	.byte #0x69, #0x00	;  105
      00348A 6A 00                 2324 	.byte #0x6a, #0x00	;  106
      00348C 6B 00                 2325 	.byte #0x6b, #0x00	;  107
      00348E 6C 00                 2326 	.byte #0x6c, #0x00	;  108
      003490 6D 00                 2327 	.byte #0x6d, #0x00	;  109
      003492 6E 00                 2328 	.byte #0x6e, #0x00	;  110
      003494 6F 00                 2329 	.byte #0x6f, #0x00	;  111
      003496 70 00                 2330 	.byte #0x70, #0x00	;  112
      003498 71 00                 2331 	.byte #0x71, #0x00	;  113
      00349A 72 00                 2332 	.byte #0x72, #0x00	;  114
      00349C 73 00                 2333 	.byte #0x73, #0x00	;  115
      00349E 74 00                 2334 	.byte #0x74, #0x00	;  116
      0034A0 75 00                 2335 	.byte #0x75, #0x00	;  117
      0034A2 76 00                 2336 	.byte #0x76, #0x00	;  118
      0034A4 77 00                 2337 	.byte #0x77, #0x00	;  119
      0034A6 78 00                 2338 	.byte #0x78, #0x00	;  120
      0034A8 79 00                 2339 	.byte #0x79, #0x00	;  121
      0034AA 7A 00                 2340 	.byte #0x7a, #0x00	;  122
      0034AC 7B 00                 2341 	.byte #0x7b, #0x00	;  123
      0034AE 7C 00                 2342 	.byte #0x7c, #0x00	;  124
      0034B0 7D 00                 2343 	.byte #0x7d, #0x00	;  125
      0034B2 7E 00                 2344 	.byte #0x7e, #0x00	;  126
      0034B4 7F 00                 2345 	.byte #0x7f, #0x00	;  127
      0034B6 80 00                 2346 	.byte #0x80, #0x00	;  128
      0034B8 81 00                 2347 	.byte #0x81, #0x00	;  129
      0034BA 82 00                 2348 	.byte #0x82, #0x00	;  130
      0034BC 83 00                 2349 	.byte #0x83, #0x00	;  131
      0034BE 84 00                 2350 	.byte #0x84, #0x00	;  132
      0034C0 85 00                 2351 	.byte #0x85, #0x00	;  133
      0034C2 86 00                 2352 	.byte #0x86, #0x00	;  134
      0034C4 87 00                 2353 	.byte #0x87, #0x00	;  135
      0034C6 88 00                 2354 	.byte #0x88, #0x00	;  136
      0034C8 89 00                 2355 	.byte #0x89, #0x00	;  137
      0034CA 8A 00                 2356 	.byte #0x8a, #0x00	;  138
      0034CC 8B 00                 2357 	.byte #0x8b, #0x00	;  139
      0034CE 8C 00                 2358 	.byte #0x8c, #0x00	;  140
      0034D0 8D 00                 2359 	.byte #0x8d, #0x00	;  141
      0034D2 8E 00                 2360 	.byte #0x8e, #0x00	;  142
      0034D4 8F 00                 2361 	.byte #0x8f, #0x00	;  143
      0034D6 90 00                 2362 	.byte #0x90, #0x00	;  144
      0034D8 91 00                 2363 	.byte #0x91, #0x00	;  145
      0034DA 92 00                 2364 	.byte #0x92, #0x00	;  146
      0034DC 93 00                 2365 	.byte #0x93, #0x00	;  147
      0034DE 94 00                 2366 	.byte #0x94, #0x00	;  148
      0034E0 95 00                 2367 	.byte #0x95, #0x00	;  149
      0034E2 96 00                 2368 	.byte #0x96, #0x00	;  150
      0034E4 97 00                 2369 	.byte #0x97, #0x00	;  151
      0034E6 98 00                 2370 	.byte #0x98, #0x00	;  152
      0034E8 99 00                 2371 	.byte #0x99, #0x00	;  153
      0034EA 9A 00                 2372 	.byte #0x9a, #0x00	;  154
      0034EC 9B 00                 2373 	.byte #0x9b, #0x00	;  155
      0034EE 9C 00                 2374 	.byte #0x9c, #0x00	;  156
      0034F0 9D 00                 2375 	.byte #0x9d, #0x00	;  157
      0034F2 9E 00                 2376 	.byte #0x9e, #0x00	;  158
      0034F4 9F 00                 2377 	.byte #0x9f, #0x00	;  159
      0034F6 A0 00                 2378 	.byte #0xa0, #0x00	;  160
      0034F8 A1 00                 2379 	.byte #0xa1, #0x00	;  161
      0034FA A2 00                 2380 	.byte #0xa2, #0x00	;  162
      0034FC A3 00                 2381 	.byte #0xa3, #0x00	;  163
      0034FE A4 00                 2382 	.byte #0xa4, #0x00	;  164
      003500 A5 00                 2383 	.byte #0xa5, #0x00	;  165
      003502 A6 00                 2384 	.byte #0xa6, #0x00	;  166
      003504 A7 00                 2385 	.byte #0xa7, #0x00	;  167
      003506 A8 00                 2386 	.byte #0xa8, #0x00	;  168
      003508 A9 00                 2387 	.byte #0xa9, #0x00	;  169
      00350A AA 00                 2388 	.byte #0xaa, #0x00	;  170
      00350C AB 00                 2389 	.byte #0xab, #0x00	;  171
      00350E AC 00                 2390 	.byte #0xac, #0x00	;  172
      003510 AD 00                 2391 	.byte #0xad, #0x00	;  173
      003512 AE 00                 2392 	.byte #0xae, #0x00	;  174
      003514 AF 00                 2393 	.byte #0xaf, #0x00	;  175
      003516 B0 00                 2394 	.byte #0xb0, #0x00	;  176
      003518 B1 00                 2395 	.byte #0xb1, #0x00	;  177
      00351A B2 00                 2396 	.byte #0xb2, #0x00	;  178
      00351C B3 00                 2397 	.byte #0xb3, #0x00	;  179
      00351E B4 00                 2398 	.byte #0xb4, #0x00	;  180
      003520 B5 00                 2399 	.byte #0xb5, #0x00	;  181
      003522 B6 00                 2400 	.byte #0xb6, #0x00	;  182
      003524 B7 00                 2401 	.byte #0xb7, #0x00	;  183
      003526 B8 00                 2402 	.byte #0xb8, #0x00	;  184
      003528 B9 00                 2403 	.byte #0xb9, #0x00	;  185
      00352A BA 00                 2404 	.byte #0xba, #0x00	;  186
      00352C BB 00                 2405 	.byte #0xbb, #0x00	;  187
      00352E BC 00                 2406 	.byte #0xbc, #0x00	;  188
      003530 BD 00                 2407 	.byte #0xbd, #0x00	;  189
      003532 BE 00                 2408 	.byte #0xbe, #0x00	;  190
      003534 BF 00                 2409 	.byte #0xbf, #0x00	;  191
      003536 C0 00                 2410 	.byte #0xc0, #0x00	;  192
      003538 C1 00                 2411 	.byte #0xc1, #0x00	;  193
      00353A C2 00                 2412 	.byte #0xc2, #0x00	;  194
      00353C C3 00                 2413 	.byte #0xc3, #0x00	;  195
      00353E C4 00                 2414 	.byte #0xc4, #0x00	;  196
      003540 C5 00                 2415 	.byte #0xc5, #0x00	;  197
      003542 C6 00                 2416 	.byte #0xc6, #0x00	;  198
      003544 C7 00                 2417 	.byte #0xc7, #0x00	;  199
      003546 C8 00                 2418 	.byte #0xc8, #0x00	;  200
      003548 C9 00                 2419 	.byte #0xc9, #0x00	;  201
      00354A CA 00                 2420 	.byte #0xca, #0x00	;  202
      00354C CB 00                 2421 	.byte #0xcb, #0x00	;  203
      00354E CC 00                 2422 	.byte #0xcc, #0x00	;  204
      003550 CD 00                 2423 	.byte #0xcd, #0x00	;  205
      003552 CE 00                 2424 	.byte #0xce, #0x00	;  206
      003554 CF 00                 2425 	.byte #0xcf, #0x00	;  207
      003556 D0 00                 2426 	.byte #0xd0, #0x00	;  208
      003558 D1 00                 2427 	.byte #0xd1, #0x00	;  209
      00355A D2 00                 2428 	.byte #0xd2, #0x00	;  210
      00355C D3 00                 2429 	.byte #0xd3, #0x00	;  211
      00355E D4 00                 2430 	.byte #0xd4, #0x00	;  212
      003560 D5 00                 2431 	.byte #0xd5, #0x00	;  213
      003562 D6 00                 2432 	.byte #0xd6, #0x00	;  214
      003564 D7 00                 2433 	.byte #0xd7, #0x00	;  215
      003566 D8 00                 2434 	.byte #0xd8, #0x00	;  216
      003568 D9 00                 2435 	.byte #0xd9, #0x00	;  217
      00356A DA 00                 2436 	.byte #0xda, #0x00	;  218
      00356C DB 00                 2437 	.byte #0xdb, #0x00	;  219
      00356E DC 00                 2438 	.byte #0xdc, #0x00	;  220
      003570 DD 00                 2439 	.byte #0xdd, #0x00	;  221
      003572 DE 00                 2440 	.byte #0xde, #0x00	;  222
      003574 DF 00                 2441 	.byte #0xdf, #0x00	;  223
      003576 E0 00                 2442 	.byte #0xe0, #0x00	;  224
      003578 E1 00                 2443 	.byte #0xe1, #0x00	;  225
      00357A E2 00                 2444 	.byte #0xe2, #0x00	;  226
      00357C E3 00                 2445 	.byte #0xe3, #0x00	;  227
      00357E E4 00                 2446 	.byte #0xe4, #0x00	;  228
      003580 E5 00                 2447 	.byte #0xe5, #0x00	;  229
      003582 E6 00                 2448 	.byte #0xe6, #0x00	;  230
      003584 E7 00                 2449 	.byte #0xe7, #0x00	;  231
      003586 E8 00                 2450 	.byte #0xe8, #0x00	;  232
      003588 E9 00                 2451 	.byte #0xe9, #0x00	;  233
      00358A EA 00                 2452 	.byte #0xea, #0x00	;  234
      00358C EB 00                 2453 	.byte #0xeb, #0x00	;  235
      00358E EC 00                 2454 	.byte #0xec, #0x00	;  236
      003590 ED 00                 2455 	.byte #0xed, #0x00	;  237
      003592 EE 00                 2456 	.byte #0xee, #0x00	;  238
      003594 EF 00                 2457 	.byte #0xef, #0x00	;  239
      003596 F0 00                 2458 	.byte #0xf0, #0x00	;  240
      003598 F1 00                 2459 	.byte #0xf1, #0x00	;  241
      00359A F2 00                 2460 	.byte #0xf2, #0x00	;  242
      00359C F3 00                 2461 	.byte #0xf3, #0x00	;  243
      00359E F4 00                 2462 	.byte #0xf4, #0x00	;  244
      0035A0 F5 00                 2463 	.byte #0xf5, #0x00	;  245
      0035A2 F6 00                 2464 	.byte #0xf6, #0x00	;  246
      0035A4 F7 00                 2465 	.byte #0xf7, #0x00	;  247
      0035A6 F8 00                 2466 	.byte #0xf8, #0x00	;  248
      0035A8 F9 00                 2467 	.byte #0xf9, #0x00	;  249
      0035AA FA 00                 2468 	.byte #0xfa, #0x00	;  250
      0035AC FB 00                 2469 	.byte #0xfb, #0x00	;  251
      0035AE FC 00                 2470 	.byte #0xfc, #0x00	;  252
      0035B0 FD 00                 2471 	.byte #0xfd, #0x00	;  253
      0035B2 FE 00                 2472 	.byte #0xfe, #0x00	;  254
      0035B4 FF 00                 2473 	.byte #0xff, #0x00	;  255
      0035B6 FF 00                 2474 	.byte #0xff, #0x00	;  255
      0035B8 FE 00                 2475 	.byte #0xfe, #0x00	;  254
      0035BA FD 00                 2476 	.byte #0xfd, #0x00	;  253
      0035BC FC 00                 2477 	.byte #0xfc, #0x00	;  252
      0035BE FB 00                 2478 	.byte #0xfb, #0x00	;  251
      0035C0 FA 00                 2479 	.byte #0xfa, #0x00	;  250
      0035C2 F9 00                 2480 	.byte #0xf9, #0x00	;  249
      0035C4 F8 00                 2481 	.byte #0xf8, #0x00	;  248
      0035C6 F7 00                 2482 	.byte #0xf7, #0x00	;  247
      0035C8 F6 00                 2483 	.byte #0xf6, #0x00	;  246
      0035CA F5 00                 2484 	.byte #0xf5, #0x00	;  245
      0035CC F4 00                 2485 	.byte #0xf4, #0x00	;  244
      0035CE F3 00                 2486 	.byte #0xf3, #0x00	;  243
      0035D0 F2 00                 2487 	.byte #0xf2, #0x00	;  242
      0035D2 F1 00                 2488 	.byte #0xf1, #0x00	;  241
      0035D4 F0 00                 2489 	.byte #0xf0, #0x00	;  240
      0035D6 EF 00                 2490 	.byte #0xef, #0x00	;  239
      0035D8 EE 00                 2491 	.byte #0xee, #0x00	;  238
      0035DA ED 00                 2492 	.byte #0xed, #0x00	;  237
      0035DC EC 00                 2493 	.byte #0xec, #0x00	;  236
      0035DE EB 00                 2494 	.byte #0xeb, #0x00	;  235
      0035E0 EA 00                 2495 	.byte #0xea, #0x00	;  234
      0035E2 E9 00                 2496 	.byte #0xe9, #0x00	;  233
      0035E4 E8 00                 2497 	.byte #0xe8, #0x00	;  232
      0035E6 E7 00                 2498 	.byte #0xe7, #0x00	;  231
      0035E8 E6 00                 2499 	.byte #0xe6, #0x00	;  230
      0035EA E5 00                 2500 	.byte #0xe5, #0x00	;  229
      0035EC E4 00                 2501 	.byte #0xe4, #0x00	;  228
      0035EE E3 00                 2502 	.byte #0xe3, #0x00	;  227
      0035F0 E2 00                 2503 	.byte #0xe2, #0x00	;  226
      0035F2 E1 00                 2504 	.byte #0xe1, #0x00	;  225
      0035F4 E0 00                 2505 	.byte #0xe0, #0x00	;  224
      0035F6 DF 00                 2506 	.byte #0xdf, #0x00	;  223
      0035F8 DE 00                 2507 	.byte #0xde, #0x00	;  222
      0035FA DD 00                 2508 	.byte #0xdd, #0x00	;  221
      0035FC DC 00                 2509 	.byte #0xdc, #0x00	;  220
      0035FE DB 00                 2510 	.byte #0xdb, #0x00	;  219
      003600 DA 00                 2511 	.byte #0xda, #0x00	;  218
      003602 D9 00                 2512 	.byte #0xd9, #0x00	;  217
      003604 D8 00                 2513 	.byte #0xd8, #0x00	;  216
      003606 D7 00                 2514 	.byte #0xd7, #0x00	;  215
      003608 D6 00                 2515 	.byte #0xd6, #0x00	;  214
      00360A D5 00                 2516 	.byte #0xd5, #0x00	;  213
      00360C D4 00                 2517 	.byte #0xd4, #0x00	;  212
      00360E D3 00                 2518 	.byte #0xd3, #0x00	;  211
      003610 D2 00                 2519 	.byte #0xd2, #0x00	;  210
      003612 D1 00                 2520 	.byte #0xd1, #0x00	;  209
      003614 D0 00                 2521 	.byte #0xd0, #0x00	;  208
      003616 CF 00                 2522 	.byte #0xcf, #0x00	;  207
      003618 CE 00                 2523 	.byte #0xce, #0x00	;  206
      00361A CD 00                 2524 	.byte #0xcd, #0x00	;  205
      00361C CC 00                 2525 	.byte #0xcc, #0x00	;  204
      00361E CB 00                 2526 	.byte #0xcb, #0x00	;  203
      003620 CA 00                 2527 	.byte #0xca, #0x00	;  202
      003622 C9 00                 2528 	.byte #0xc9, #0x00	;  201
      003624 C8 00                 2529 	.byte #0xc8, #0x00	;  200
      003626 C7 00                 2530 	.byte #0xc7, #0x00	;  199
      003628 C6 00                 2531 	.byte #0xc6, #0x00	;  198
      00362A C5 00                 2532 	.byte #0xc5, #0x00	;  197
      00362C C4 00                 2533 	.byte #0xc4, #0x00	;  196
      00362E C3 00                 2534 	.byte #0xc3, #0x00	;  195
      003630 C2 00                 2535 	.byte #0xc2, #0x00	;  194
      003632 C1 00                 2536 	.byte #0xc1, #0x00	;  193
      003634 C0 00                 2537 	.byte #0xc0, #0x00	;  192
      003636 BF 00                 2538 	.byte #0xbf, #0x00	;  191
      003638 BE 00                 2539 	.byte #0xbe, #0x00	;  190
      00363A BD 00                 2540 	.byte #0xbd, #0x00	;  189
      00363C BC 00                 2541 	.byte #0xbc, #0x00	;  188
      00363E BB 00                 2542 	.byte #0xbb, #0x00	;  187
      003640 BA 00                 2543 	.byte #0xba, #0x00	;  186
      003642 B9 00                 2544 	.byte #0xb9, #0x00	;  185
      003644 B8 00                 2545 	.byte #0xb8, #0x00	;  184
      003646 B7 00                 2546 	.byte #0xb7, #0x00	;  183
      003648 B6 00                 2547 	.byte #0xb6, #0x00	;  182
      00364A B5 00                 2548 	.byte #0xb5, #0x00	;  181
      00364C B4 00                 2549 	.byte #0xb4, #0x00	;  180
      00364E B3 00                 2550 	.byte #0xb3, #0x00	;  179
      003650 B2 00                 2551 	.byte #0xb2, #0x00	;  178
      003652 B1 00                 2552 	.byte #0xb1, #0x00	;  177
      003654 B0 00                 2553 	.byte #0xb0, #0x00	;  176
      003656 AF 00                 2554 	.byte #0xaf, #0x00	;  175
      003658 AE 00                 2555 	.byte #0xae, #0x00	;  174
      00365A AD 00                 2556 	.byte #0xad, #0x00	;  173
      00365C AC 00                 2557 	.byte #0xac, #0x00	;  172
      00365E AB 00                 2558 	.byte #0xab, #0x00	;  171
      003660 AA 00                 2559 	.byte #0xaa, #0x00	;  170
      003662 A9 00                 2560 	.byte #0xa9, #0x00	;  169
      003664 A8 00                 2561 	.byte #0xa8, #0x00	;  168
      003666 A7 00                 2562 	.byte #0xa7, #0x00	;  167
      003668 A6 00                 2563 	.byte #0xa6, #0x00	;  166
      00366A A5 00                 2564 	.byte #0xa5, #0x00	;  165
      00366C A4 00                 2565 	.byte #0xa4, #0x00	;  164
      00366E A3 00                 2566 	.byte #0xa3, #0x00	;  163
      003670 A2 00                 2567 	.byte #0xa2, #0x00	;  162
      003672 A1 00                 2568 	.byte #0xa1, #0x00	;  161
      003674 A0 00                 2569 	.byte #0xa0, #0x00	;  160
      003676 9F 00                 2570 	.byte #0x9f, #0x00	;  159
      003678 9E 00                 2571 	.byte #0x9e, #0x00	;  158
      00367A 9D 00                 2572 	.byte #0x9d, #0x00	;  157
      00367C 9C 00                 2573 	.byte #0x9c, #0x00	;  156
      00367E 9B 00                 2574 	.byte #0x9b, #0x00	;  155
      003680 9A 00                 2575 	.byte #0x9a, #0x00	;  154
      003682 99 00                 2576 	.byte #0x99, #0x00	;  153
      003684 98 00                 2577 	.byte #0x98, #0x00	;  152
      003686 97 00                 2578 	.byte #0x97, #0x00	;  151
      003688 96 00                 2579 	.byte #0x96, #0x00	;  150
      00368A 95 00                 2580 	.byte #0x95, #0x00	;  149
      00368C 94 00                 2581 	.byte #0x94, #0x00	;  148
      00368E 93 00                 2582 	.byte #0x93, #0x00	;  147
      003690 92 00                 2583 	.byte #0x92, #0x00	;  146
      003692 91 00                 2584 	.byte #0x91, #0x00	;  145
      003694 90 00                 2585 	.byte #0x90, #0x00	;  144
      003696 8F 00                 2586 	.byte #0x8f, #0x00	;  143
      003698 8E 00                 2587 	.byte #0x8e, #0x00	;  142
      00369A 8D 00                 2588 	.byte #0x8d, #0x00	;  141
      00369C 8C 00                 2589 	.byte #0x8c, #0x00	;  140
      00369E 8B 00                 2590 	.byte #0x8b, #0x00	;  139
      0036A0 8A 00                 2591 	.byte #0x8a, #0x00	;  138
      0036A2 89 00                 2592 	.byte #0x89, #0x00	;  137
      0036A4 88 00                 2593 	.byte #0x88, #0x00	;  136
      0036A6 87 00                 2594 	.byte #0x87, #0x00	;  135
      0036A8 86 00                 2595 	.byte #0x86, #0x00	;  134
      0036AA 85 00                 2596 	.byte #0x85, #0x00	;  133
      0036AC 84 00                 2597 	.byte #0x84, #0x00	;  132
      0036AE 83 00                 2598 	.byte #0x83, #0x00	;  131
      0036B0 82 00                 2599 	.byte #0x82, #0x00	;  130
      0036B2 81 00                 2600 	.byte #0x81, #0x00	;  129
      0036B4 80 00                 2601 	.byte #0x80, #0x00	;  128
      0036B6 7F 00                 2602 	.byte #0x7f, #0x00	;  127
      0036B8 7E 00                 2603 	.byte #0x7e, #0x00	;  126
      0036BA 7D 00                 2604 	.byte #0x7d, #0x00	;  125
      0036BC 7C 00                 2605 	.byte #0x7c, #0x00	;  124
      0036BE 7B 00                 2606 	.byte #0x7b, #0x00	;  123
      0036C0 7A 00                 2607 	.byte #0x7a, #0x00	;  122
      0036C2 79 00                 2608 	.byte #0x79, #0x00	;  121
      0036C4 78 00                 2609 	.byte #0x78, #0x00	;  120
      0036C6 77 00                 2610 	.byte #0x77, #0x00	;  119
      0036C8 76 00                 2611 	.byte #0x76, #0x00	;  118
      0036CA 75 00                 2612 	.byte #0x75, #0x00	;  117
      0036CC 74 00                 2613 	.byte #0x74, #0x00	;  116
      0036CE 73 00                 2614 	.byte #0x73, #0x00	;  115
      0036D0 72 00                 2615 	.byte #0x72, #0x00	;  114
      0036D2 71 00                 2616 	.byte #0x71, #0x00	;  113
      0036D4 70 00                 2617 	.byte #0x70, #0x00	;  112
      0036D6 6F 00                 2618 	.byte #0x6f, #0x00	;  111
      0036D8 6E 00                 2619 	.byte #0x6e, #0x00	;  110
      0036DA 6D 00                 2620 	.byte #0x6d, #0x00	;  109
      0036DC 6C 00                 2621 	.byte #0x6c, #0x00	;  108
      0036DE 6B 00                 2622 	.byte #0x6b, #0x00	;  107
      0036E0 6A 00                 2623 	.byte #0x6a, #0x00	;  106
      0036E2 69 00                 2624 	.byte #0x69, #0x00	;  105
      0036E4 68 00                 2625 	.byte #0x68, #0x00	;  104
      0036E6 67 00                 2626 	.byte #0x67, #0x00	;  103
      0036E8 66 00                 2627 	.byte #0x66, #0x00	;  102
      0036EA 65 00                 2628 	.byte #0x65, #0x00	;  101
      0036EC 64 00                 2629 	.byte #0x64, #0x00	;  100
      0036EE 63 00                 2630 	.byte #0x63, #0x00	;  99
      0036F0 62 00                 2631 	.byte #0x62, #0x00	;  98
      0036F2 61 00                 2632 	.byte #0x61, #0x00	;  97
      0036F4 60 00                 2633 	.byte #0x60, #0x00	;  96
      0036F6 5F 00                 2634 	.byte #0x5f, #0x00	;  95
      0036F8 5E 00                 2635 	.byte #0x5e, #0x00	;  94
      0036FA 5D 00                 2636 	.byte #0x5d, #0x00	;  93
      0036FC 5C 00                 2637 	.byte #0x5c, #0x00	;  92
      0036FE 5B 00                 2638 	.byte #0x5b, #0x00	;  91
      003700 5A 00                 2639 	.byte #0x5a, #0x00	;  90
      003702 59 00                 2640 	.byte #0x59, #0x00	;  89
      003704 58 00                 2641 	.byte #0x58, #0x00	;  88
      003706 57 00                 2642 	.byte #0x57, #0x00	;  87
      003708 56 00                 2643 	.byte #0x56, #0x00	;  86
      00370A 55 00                 2644 	.byte #0x55, #0x00	;  85
      00370C 54 00                 2645 	.byte #0x54, #0x00	;  84
      00370E 53 00                 2646 	.byte #0x53, #0x00	;  83
      003710 52 00                 2647 	.byte #0x52, #0x00	;  82
      003712 51 00                 2648 	.byte #0x51, #0x00	;  81
      003714 50 00                 2649 	.byte #0x50, #0x00	;  80
      003716 4F 00                 2650 	.byte #0x4f, #0x00	;  79
      003718 4E 00                 2651 	.byte #0x4e, #0x00	;  78
      00371A 4D 00                 2652 	.byte #0x4d, #0x00	;  77
      00371C 4C 00                 2653 	.byte #0x4c, #0x00	;  76
      00371E 4B 00                 2654 	.byte #0x4b, #0x00	;  75
      003720 4A 00                 2655 	.byte #0x4a, #0x00	;  74
      003722 49 00                 2656 	.byte #0x49, #0x00	;  73
      003724 48 00                 2657 	.byte #0x48, #0x00	;  72
      003726 47 00                 2658 	.byte #0x47, #0x00	;  71
      003728 46 00                 2659 	.byte #0x46, #0x00	;  70
      00372A 45 00                 2660 	.byte #0x45, #0x00	;  69
      00372C 44 00                 2661 	.byte #0x44, #0x00	;  68
      00372E 43 00                 2662 	.byte #0x43, #0x00	;  67
      003730 42 00                 2663 	.byte #0x42, #0x00	;  66
      003732 41 00                 2664 	.byte #0x41, #0x00	;  65
      003734 40 00                 2665 	.byte #0x40, #0x00	;  64
      003736 3F 00                 2666 	.byte #0x3f, #0x00	;  63
      003738 3E 00                 2667 	.byte #0x3e, #0x00	;  62
      00373A 3D 00                 2668 	.byte #0x3d, #0x00	;  61
      00373C 3C 00                 2669 	.byte #0x3c, #0x00	;  60
      00373E 3B 00                 2670 	.byte #0x3b, #0x00	;  59
      003740 3A 00                 2671 	.byte #0x3a, #0x00	;  58
      003742 39 00                 2672 	.byte #0x39, #0x00	;  57
      003744 38 00                 2673 	.byte #0x38, #0x00	;  56
      003746 37 00                 2674 	.byte #0x37, #0x00	;  55
      003748 36 00                 2675 	.byte #0x36, #0x00	;  54
      00374A 35 00                 2676 	.byte #0x35, #0x00	;  53
      00374C 34 00                 2677 	.byte #0x34, #0x00	;  52
      00374E 33 00                 2678 	.byte #0x33, #0x00	;  51
      003750 32 00                 2679 	.byte #0x32, #0x00	;  50
      003752 31 00                 2680 	.byte #0x31, #0x00	;  49
      003754 30 00                 2681 	.byte #0x30, #0x00	;  48
      003756 2F 00                 2682 	.byte #0x2f, #0x00	;  47
      003758 2E 00                 2683 	.byte #0x2e, #0x00	;  46
      00375A 2D 00                 2684 	.byte #0x2d, #0x00	;  45
      00375C 2C 00                 2685 	.byte #0x2c, #0x00	;  44
      00375E 2B 00                 2686 	.byte #0x2b, #0x00	;  43
      003760 2A 00                 2687 	.byte #0x2a, #0x00	;  42
      003762 29 00                 2688 	.byte #0x29, #0x00	;  41
      003764 28 00                 2689 	.byte #0x28, #0x00	;  40
      003766 27 00                 2690 	.byte #0x27, #0x00	;  39
      003768 26 00                 2691 	.byte #0x26, #0x00	;  38
      00376A 25 00                 2692 	.byte #0x25, #0x00	;  37
      00376C 24 00                 2693 	.byte #0x24, #0x00	;  36
      00376E 23 00                 2694 	.byte #0x23, #0x00	;  35
      003770 22 00                 2695 	.byte #0x22, #0x00	;  34
      003772 21 00                 2696 	.byte #0x21, #0x00	;  33
      003774 20 00                 2697 	.byte #0x20, #0x00	;  32
      003776 1F 00                 2698 	.byte #0x1f, #0x00	;  31
      003778 1E 00                 2699 	.byte #0x1e, #0x00	;  30
      00377A 1D 00                 2700 	.byte #0x1d, #0x00	;  29
      00377C 1C 00                 2701 	.byte #0x1c, #0x00	;  28
      00377E 1B 00                 2702 	.byte #0x1b, #0x00	;  27
      003780 1A 00                 2703 	.byte #0x1a, #0x00	;  26
      003782 19 00                 2704 	.byte #0x19, #0x00	;  25
      003784 18 00                 2705 	.byte #0x18, #0x00	;  24
      003786 17 00                 2706 	.byte #0x17, #0x00	;  23
      003788 16 00                 2707 	.byte #0x16, #0x00	;  22
      00378A 15 00                 2708 	.byte #0x15, #0x00	;  21
      00378C 14 00                 2709 	.byte #0x14, #0x00	;  20
      00378E 13 00                 2710 	.byte #0x13, #0x00	;  19
      003790 12 00                 2711 	.byte #0x12, #0x00	;  18
      003792 11 00                 2712 	.byte #0x11, #0x00	;  17
      003794 10 00                 2713 	.byte #0x10, #0x00	;  16
      003796 0F 00                 2714 	.byte #0x0f, #0x00	;  15
      003798 0E 00                 2715 	.byte #0x0e, #0x00	;  14
      00379A 0D 00                 2716 	.byte #0x0d, #0x00	;  13
      00379C 0C 00                 2717 	.byte #0x0c, #0x00	;  12
      00379E 0B 00                 2718 	.byte #0x0b, #0x00	;  11
      0037A0 0A 00                 2719 	.byte #0x0a, #0x00	;  10
      0037A2 09 00                 2720 	.byte #0x09, #0x00	;  9
      0037A4 08 00                 2721 	.byte #0x08, #0x00	;  8
      0037A6 07 00                 2722 	.byte #0x07, #0x00	;  7
      0037A8 06 00                 2723 	.byte #0x06, #0x00	;  6
      0037AA 05 00                 2724 	.byte #0x05, #0x00	;  5
      0037AC 04 00                 2725 	.byte #0x04, #0x00	;  4
      0037AE 03 00                 2726 	.byte #0x03, #0x00	;  3
      0037B0 02 00                 2727 	.byte #0x02, #0x00	;  2
      0037B2 01 00                 2728 	.byte #0x01, #0x00	;  1
      0037B4 00 00                 2729 	.byte #0x00, #0x00	;  0
                                   2730 	.area CONST   (CODE)
      0037B6                       2731 ___str_0:
      0037B6 0A                    2732 	.db 0x0a
      0037B7 0D                    2733 	.db 0x0d
      0037B8 E2                    2734 	.db 0xe2
      0037B9 94                    2735 	.db 0x94
      0037BA 8C                    2736 	.db 0x8c
      0037BB E2                    2737 	.db 0xe2
      0037BC 94                    2738 	.db 0x94
      0037BD 80                    2739 	.db 0x80
      0037BE E2                    2740 	.db 0xe2
      0037BF 94                    2741 	.db 0x94
      0037C0 80                    2742 	.db 0x80
      0037C1 E2                    2743 	.db 0xe2
      0037C2 94                    2744 	.db 0x94
      0037C3 80                    2745 	.db 0x80
      0037C4 E2                    2746 	.db 0xe2
      0037C5 94                    2747 	.db 0x94
      0037C6 80                    2748 	.db 0x80
      0037C7 E2                    2749 	.db 0xe2
      0037C8 94                    2750 	.db 0x94
      0037C9 80                    2751 	.db 0x80
      0037CA E2                    2752 	.db 0xe2
      0037CB 94                    2753 	.db 0x94
      0037CC 80                    2754 	.db 0x80
      0037CD E2                    2755 	.db 0xe2
      0037CE 94                    2756 	.db 0x94
      0037CF 80                    2757 	.db 0x80
      0037D0 E2                    2758 	.db 0xe2
      0037D1 94                    2759 	.db 0x94
      0037D2 80                    2760 	.db 0x80
      0037D3 E2                    2761 	.db 0xe2
      0037D4 94                    2762 	.db 0x94
      0037D5 80                    2763 	.db 0x80
      0037D6 E2                    2764 	.db 0xe2
      0037D7 94                    2765 	.db 0x94
      0037D8 80                    2766 	.db 0x80
      0037D9 E2                    2767 	.db 0xe2
      0037DA 94                    2768 	.db 0x94
      0037DB 80                    2769 	.db 0x80
      0037DC E2                    2770 	.db 0xe2
      0037DD 94                    2771 	.db 0x94
      0037DE 80                    2772 	.db 0x80
      0037DF E2                    2773 	.db 0xe2
      0037E0 94                    2774 	.db 0x94
      0037E1 80                    2775 	.db 0x80
      0037E2 E2                    2776 	.db 0xe2
      0037E3 94                    2777 	.db 0x94
      0037E4 80                    2778 	.db 0x80
      0037E5 E2                    2779 	.db 0xe2
      0037E6 94                    2780 	.db 0x94
      0037E7 80                    2781 	.db 0x80
      0037E8 E2                    2782 	.db 0xe2
      0037E9 94                    2783 	.db 0x94
      0037EA 80                    2784 	.db 0x80
      0037EB E2                    2785 	.db 0xe2
      0037EC 94                    2786 	.db 0x94
      0037ED 80                    2787 	.db 0x80
      0037EE E2                    2788 	.db 0xe2
      0037EF 94                    2789 	.db 0x94
      0037F0 80                    2790 	.db 0x80
      0037F1 E2                    2791 	.db 0xe2
      0037F2 94                    2792 	.db 0x94
      0037F3 80                    2793 	.db 0x80
      0037F4 E2                    2794 	.db 0xe2
      0037F5 94                    2795 	.db 0x94
      0037F6 80                    2796 	.db 0x80
      0037F7 E2                    2797 	.db 0xe2
      0037F8 94                    2798 	.db 0x94
      0037F9 80                    2799 	.db 0x80
      0037FA E2                    2800 	.db 0xe2
      0037FB 94                    2801 	.db 0x94
      0037FC 80                    2802 	.db 0x80
      0037FD E2                    2803 	.db 0xe2
      0037FE 94                    2804 	.db 0x94
      0037FF 80                    2805 	.db 0x80
      003800 E2                    2806 	.db 0xe2
      003801 94                    2807 	.db 0x94
      003802 80                    2808 	.db 0x80
      003803 E2                    2809 	.db 0xe2
      003804 94                    2810 	.db 0x94
      003805 80                    2811 	.db 0x80
      003806 E2                    2812 	.db 0xe2
      003807 94                    2813 	.db 0x94
      003808 80                    2814 	.db 0x80
      003809 E2                    2815 	.db 0xe2
      00380A 94                    2816 	.db 0x94
      00380B 80                    2817 	.db 0x80
      00380C E2                    2818 	.db 0xe2
      00380D 94                    2819 	.db 0x94
      00380E 80                    2820 	.db 0x80
      00380F E2                    2821 	.db 0xe2
      003810 94                    2822 	.db 0x94
      003811 80                    2823 	.db 0x80
      003812 E2                    2824 	.db 0xe2
      003813 94                    2825 	.db 0x94
      003814 80                    2826 	.db 0x80
      003815 E2                    2827 	.db 0xe2
      003816 94                    2828 	.db 0x94
      003817 80                    2829 	.db 0x80
      003818 E2                    2830 	.db 0xe2
      003819 94                    2831 	.db 0x94
      00381A 80                    2832 	.db 0x80
      00381B E2                    2833 	.db 0xe2
      00381C 94                    2834 	.db 0x94
      00381D 80                    2835 	.db 0x80
      00381E E2                    2836 	.db 0xe2
      00381F 94                    2837 	.db 0x94
      003820 80                    2838 	.db 0x80
      003821 E2                    2839 	.db 0xe2
      003822 94                    2840 	.db 0x94
      003823 80                    2841 	.db 0x80
      003824 E2                    2842 	.db 0xe2
      003825 94                    2843 	.db 0x94
      003826 80                    2844 	.db 0x80
      003827 E2                    2845 	.db 0xe2
      003828 94                    2846 	.db 0x94
      003829 80                    2847 	.db 0x80
      00382A E2                    2848 	.db 0xe2
      00382B 94                    2849 	.db 0x94
      00382C 80                    2850 	.db 0x80
      00382D E2                    2851 	.db 0xe2
      00382E 94                    2852 	.db 0x94
      00382F 80                    2853 	.db 0x80
      003830 E2                    2854 	.db 0xe2
      003831 94                    2855 	.db 0x94
      003832 80                    2856 	.db 0x80
      003833 E2                    2857 	.db 0xe2
      003834 94                    2858 	.db 0x94
      003835 80                    2859 	.db 0x80
      003836 E2                    2860 	.db 0xe2
      003837 94                    2861 	.db 0x94
      003838 80                    2862 	.db 0x80
      003839 E2                    2863 	.db 0xe2
      00383A 94                    2864 	.db 0x94
      00383B 80                    2865 	.db 0x80
      00383C E2                    2866 	.db 0xe2
      00383D 94                    2867 	.db 0x94
      00383E 80                    2868 	.db 0x80
      00383F E2                    2869 	.db 0xe2
      003840 94                    2870 	.db 0x94
      003841 80                    2871 	.db 0x80
      003842 E2                    2872 	.db 0xe2
      003843 94                    2873 	.db 0x94
      003844 80                    2874 	.db 0x80
      003845 E2                    2875 	.db 0xe2
      003846 94                    2876 	.db 0x94
      003847 80                    2877 	.db 0x80
      003848 E2                    2878 	.db 0xe2
      003849 94                    2879 	.db 0x94
      00384A 80                    2880 	.db 0x80
      00384B E2                    2881 	.db 0xe2
      00384C 94                    2882 	.db 0x94
      00384D 80                    2883 	.db 0x80
      00384E E2                    2884 	.db 0xe2
      00384F 94                    2885 	.db 0x94
      003850 80                    2886 	.db 0x80
      003851 E2                    2887 	.db 0xe2
      003852 94                    2888 	.db 0x94
      003853 80                    2889 	.db 0x80
      003854 E2                    2890 	.db 0xe2
      003855 94                    2891 	.db 0x94
      003856 80                    2892 	.db 0x80
      003857 E2                    2893 	.db 0xe2
      003858 94                    2894 	.db 0x94
      003859 80                    2895 	.db 0x80
      00385A E2                    2896 	.db 0xe2
      00385B 94                    2897 	.db 0x94
      00385C 80                    2898 	.db 0x80
      00385D E2                    2899 	.db 0xe2
      00385E 94                    2900 	.db 0x94
      00385F 80                    2901 	.db 0x80
      003860 E2                    2902 	.db 0xe2
      003861 94                    2903 	.db 0x94
      003862 80                    2904 	.db 0x80
      003863 E2                    2905 	.db 0xe2
      003864 94                    2906 	.db 0x94
      003865 80                    2907 	.db 0x80
      003866 E2                    2908 	.db 0xe2
      003867 94                    2909 	.db 0x94
      003868 80                    2910 	.db 0x80
      003869 E2                    2911 	.db 0xe2
      00386A 94                    2912 	.db 0x94
      00386B 80                    2913 	.db 0x80
      00386C E2                    2914 	.db 0xe2
      00386D 94                    2915 	.db 0x94
      00386E 80                    2916 	.db 0x80
      00386F E2                    2917 	.db 0xe2
      003870 94                    2918 	.db 0x94
      003871 80                    2919 	.db 0x80
      003872 E2                    2920 	.db 0xe2
      003873 94                    2921 	.db 0x94
      003874 80                    2922 	.db 0x80
      003875 E2                    2923 	.db 0xe2
      003876 94                    2924 	.db 0x94
      003877 90                    2925 	.db 0x90
      003878 0A                    2926 	.db 0x0a
      003879 0D                    2927 	.db 0x0d
      00387A 00                    2928 	.db 0x00
                                   2929 	.area CSEG    (CODE)
                                   2930 	.area CONST   (CODE)
      00387B                       2931 ___str_1:
      00387B E2                    2932 	.db 0xe2
      00387C 94                    2933 	.db 0x94
      00387D 82                    2934 	.db 0x82
      00387E 20 20 20 20 20 20 20  2935 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0038BA 20 20                 2936 	.ascii "  "
      0038BC E2                    2937 	.db 0xe2
      0038BD 94                    2938 	.db 0x94
      0038BE 82                    2939 	.db 0x82
      0038BF 0A                    2940 	.db 0x0a
      0038C0 0D                    2941 	.db 0x0d
      0038C1 00                    2942 	.db 0x00
                                   2943 	.area CSEG    (CODE)
                                   2944 	.area CONST   (CODE)
      0038C2                       2945 ___str_2:
      0038C2 E2                    2946 	.db 0xe2
      0038C3 94                    2947 	.db 0x94
      0038C4 9C                    2948 	.db 0x9c
      0038C5 E2                    2949 	.db 0xe2
      0038C6 94                    2950 	.db 0x94
      0038C7 80                    2951 	.db 0x80
      0038C8 E2                    2952 	.db 0xe2
      0038C9 94                    2953 	.db 0x94
      0038CA 80                    2954 	.db 0x80
      0038CB E2                    2955 	.db 0xe2
      0038CC 94                    2956 	.db 0x94
      0038CD 80                    2957 	.db 0x80
      0038CE E2                    2958 	.db 0xe2
      0038CF 94                    2959 	.db 0x94
      0038D0 80                    2960 	.db 0x80
      0038D1 E2                    2961 	.db 0xe2
      0038D2 94                    2962 	.db 0x94
      0038D3 80                    2963 	.db 0x80
      0038D4 E2                    2964 	.db 0xe2
      0038D5 94                    2965 	.db 0x94
      0038D6 80                    2966 	.db 0x80
      0038D7 E2                    2967 	.db 0xe2
      0038D8 94                    2968 	.db 0x94
      0038D9 80                    2969 	.db 0x80
      0038DA E2                    2970 	.db 0xe2
      0038DB 94                    2971 	.db 0x94
      0038DC 80                    2972 	.db 0x80
      0038DD E2                    2973 	.db 0xe2
      0038DE 94                    2974 	.db 0x94
      0038DF 80                    2975 	.db 0x80
      0038E0 E2                    2976 	.db 0xe2
      0038E1 94                    2977 	.db 0x94
      0038E2 80                    2978 	.db 0x80
      0038E3 E2                    2979 	.db 0xe2
      0038E4 94                    2980 	.db 0x94
      0038E5 80                    2981 	.db 0x80
      0038E6 E2                    2982 	.db 0xe2
      0038E7 94                    2983 	.db 0x94
      0038E8 80                    2984 	.db 0x80
      0038E9 E2                    2985 	.db 0xe2
      0038EA 94                    2986 	.db 0x94
      0038EB 80                    2987 	.db 0x80
      0038EC E2                    2988 	.db 0xe2
      0038ED 94                    2989 	.db 0x94
      0038EE 80                    2990 	.db 0x80
      0038EF E2                    2991 	.db 0xe2
      0038F0 94                    2992 	.db 0x94
      0038F1 80                    2993 	.db 0x80
      0038F2 E2                    2994 	.db 0xe2
      0038F3 94                    2995 	.db 0x94
      0038F4 80                    2996 	.db 0x80
      0038F5 E2                    2997 	.db 0xe2
      0038F6 94                    2998 	.db 0x94
      0038F7 80                    2999 	.db 0x80
      0038F8 E2                    3000 	.db 0xe2
      0038F9 94                    3001 	.db 0x94
      0038FA 80                    3002 	.db 0x80
      0038FB E2                    3003 	.db 0xe2
      0038FC 94                    3004 	.db 0x94
      0038FD 80                    3005 	.db 0x80
      0038FE E2                    3006 	.db 0xe2
      0038FF 94                    3007 	.db 0x94
      003900 80                    3008 	.db 0x80
      003901 E2                    3009 	.db 0xe2
      003902 94                    3010 	.db 0x94
      003903 80                    3011 	.db 0x80
      003904 E2                    3012 	.db 0xe2
      003905 94                    3013 	.db 0x94
      003906 80                    3014 	.db 0x80
      003907 E2                    3015 	.db 0xe2
      003908 94                    3016 	.db 0x94
      003909 80                    3017 	.db 0x80
      00390A E2                    3018 	.db 0xe2
      00390B 94                    3019 	.db 0x94
      00390C 80                    3020 	.db 0x80
      00390D E2                    3021 	.db 0xe2
      00390E 94                    3022 	.db 0x94
      00390F 80                    3023 	.db 0x80
      003910 E2                    3024 	.db 0xe2
      003911 94                    3025 	.db 0x94
      003912 80                    3026 	.db 0x80
      003913 E2                    3027 	.db 0xe2
      003914 94                    3028 	.db 0x94
      003915 80                    3029 	.db 0x80
      003916 E2                    3030 	.db 0xe2
      003917 94                    3031 	.db 0x94
      003918 80                    3032 	.db 0x80
      003919 E2                    3033 	.db 0xe2
      00391A 94                    3034 	.db 0x94
      00391B 80                    3035 	.db 0x80
      00391C E2                    3036 	.db 0xe2
      00391D 94                    3037 	.db 0x94
      00391E 80                    3038 	.db 0x80
      00391F E2                    3039 	.db 0xe2
      003920 94                    3040 	.db 0x94
      003921 80                    3041 	.db 0x80
      003922 E2                    3042 	.db 0xe2
      003923 94                    3043 	.db 0x94
      003924 80                    3044 	.db 0x80
      003925 E2                    3045 	.db 0xe2
      003926 94                    3046 	.db 0x94
      003927 80                    3047 	.db 0x80
      003928 E2                    3048 	.db 0xe2
      003929 94                    3049 	.db 0x94
      00392A 80                    3050 	.db 0x80
      00392B E2                    3051 	.db 0xe2
      00392C 94                    3052 	.db 0x94
      00392D 80                    3053 	.db 0x80
      00392E E2                    3054 	.db 0xe2
      00392F 94                    3055 	.db 0x94
      003930 80                    3056 	.db 0x80
      003931 E2                    3057 	.db 0xe2
      003932 94                    3058 	.db 0x94
      003933 80                    3059 	.db 0x80
      003934 E2                    3060 	.db 0xe2
      003935 94                    3061 	.db 0x94
      003936 80                    3062 	.db 0x80
      003937 E2                    3063 	.db 0xe2
      003938 94                    3064 	.db 0x94
      003939 80                    3065 	.db 0x80
      00393A E2                    3066 	.db 0xe2
      00393B 94                    3067 	.db 0x94
      00393C 80                    3068 	.db 0x80
      00393D E2                    3069 	.db 0xe2
      00393E 94                    3070 	.db 0x94
      00393F 80                    3071 	.db 0x80
      003940 E2                    3072 	.db 0xe2
      003941 94                    3073 	.db 0x94
      003942 80                    3074 	.db 0x80
      003943 E2                    3075 	.db 0xe2
      003944 94                    3076 	.db 0x94
      003945 80                    3077 	.db 0x80
      003946 E2                    3078 	.db 0xe2
      003947 94                    3079 	.db 0x94
      003948 80                    3080 	.db 0x80
      003949 E2                    3081 	.db 0xe2
      00394A 94                    3082 	.db 0x94
      00394B 80                    3083 	.db 0x80
      00394C E2                    3084 	.db 0xe2
      00394D 94                    3085 	.db 0x94
      00394E 80                    3086 	.db 0x80
      00394F E2                    3087 	.db 0xe2
      003950 94                    3088 	.db 0x94
      003951 80                    3089 	.db 0x80
      003952 E2                    3090 	.db 0xe2
      003953 94                    3091 	.db 0x94
      003954 80                    3092 	.db 0x80
      003955 E2                    3093 	.db 0xe2
      003956 94                    3094 	.db 0x94
      003957 80                    3095 	.db 0x80
      003958 E2                    3096 	.db 0xe2
      003959 94                    3097 	.db 0x94
      00395A 80                    3098 	.db 0x80
      00395B E2                    3099 	.db 0xe2
      00395C 94                    3100 	.db 0x94
      00395D 80                    3101 	.db 0x80
      00395E E2                    3102 	.db 0xe2
      00395F 94                    3103 	.db 0x94
      003960 80                    3104 	.db 0x80
      003961 E2                    3105 	.db 0xe2
      003962 94                    3106 	.db 0x94
      003963 80                    3107 	.db 0x80
      003964 E2                    3108 	.db 0xe2
      003965 94                    3109 	.db 0x94
      003966 80                    3110 	.db 0x80
      003967 E2                    3111 	.db 0xe2
      003968 94                    3112 	.db 0x94
      003969 80                    3113 	.db 0x80
      00396A E2                    3114 	.db 0xe2
      00396B 94                    3115 	.db 0x94
      00396C 80                    3116 	.db 0x80
      00396D E2                    3117 	.db 0xe2
      00396E 94                    3118 	.db 0x94
      00396F 80                    3119 	.db 0x80
      003970 E2                    3120 	.db 0xe2
      003971 94                    3121 	.db 0x94
      003972 80                    3122 	.db 0x80
      003973 E2                    3123 	.db 0xe2
      003974 94                    3124 	.db 0x94
      003975 80                    3125 	.db 0x80
      003976 E2                    3126 	.db 0xe2
      003977 94                    3127 	.db 0x94
      003978 80                    3128 	.db 0x80
      003979 E2                    3129 	.db 0xe2
      00397A 94                    3130 	.db 0x94
      00397B 80                    3131 	.db 0x80
      00397C E2                    3132 	.db 0xe2
      00397D 94                    3133 	.db 0x94
      00397E 80                    3134 	.db 0x80
      00397F E2                    3135 	.db 0xe2
      003980 94                    3136 	.db 0x94
      003981 A4                    3137 	.db 0xa4
      003982 0A                    3138 	.db 0x0a
      003983 0D                    3139 	.db 0x0d
      003984 00                    3140 	.db 0x00
                                   3141 	.area CSEG    (CODE)
                                   3142 	.area CONST   (CODE)
      003985                       3143 ___str_3:
      003985 E2                    3144 	.db 0xe2
      003986 94                    3145 	.db 0x94
      003987 82                    3146 	.db 0x82
      003988 20 20 43 6F 6D 6D 61  3147 	.ascii "  Command   "
             6E 64 20 20 20
      003994 E2                    3148 	.db 0xe2
      003995 94                    3149 	.db 0x94
      003996 82                    3150 	.db 0x82
      003997 20 20 20 20 20 20 20  3151 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      0039C8 E2                    3152 	.db 0xe2
      0039C9 94                    3153 	.db 0x94
      0039CA 82                    3154 	.db 0x82
      0039CB 0A                    3155 	.db 0x0a
      0039CC 0D                    3156 	.db 0x0d
      0039CD 00                    3157 	.db 0x00
                                   3158 	.area CSEG    (CODE)
                                   3159 	.area CONST   (CODE)
      0039CE                       3160 ___str_4:
      0039CE E2                    3161 	.db 0xe2
      0039CF 94                    3162 	.db 0x94
      0039D0 9C                    3163 	.db 0x9c
      0039D1 E2                    3164 	.db 0xe2
      0039D2 94                    3165 	.db 0x94
      0039D3 80                    3166 	.db 0x80
      0039D4 E2                    3167 	.db 0xe2
      0039D5 94                    3168 	.db 0x94
      0039D6 80                    3169 	.db 0x80
      0039D7 E2                    3170 	.db 0xe2
      0039D8 94                    3171 	.db 0x94
      0039D9 80                    3172 	.db 0x80
      0039DA E2                    3173 	.db 0xe2
      0039DB 94                    3174 	.db 0x94
      0039DC 80                    3175 	.db 0x80
      0039DD E2                    3176 	.db 0xe2
      0039DE 94                    3177 	.db 0x94
      0039DF 80                    3178 	.db 0x80
      0039E0 E2                    3179 	.db 0xe2
      0039E1 94                    3180 	.db 0x94
      0039E2 80                    3181 	.db 0x80
      0039E3 E2                    3182 	.db 0xe2
      0039E4 94                    3183 	.db 0x94
      0039E5 80                    3184 	.db 0x80
      0039E6 E2                    3185 	.db 0xe2
      0039E7 94                    3186 	.db 0x94
      0039E8 80                    3187 	.db 0x80
      0039E9 E2                    3188 	.db 0xe2
      0039EA 94                    3189 	.db 0x94
      0039EB 80                    3190 	.db 0x80
      0039EC E2                    3191 	.db 0xe2
      0039ED 94                    3192 	.db 0x94
      0039EE 80                    3193 	.db 0x80
      0039EF E2                    3194 	.db 0xe2
      0039F0 94                    3195 	.db 0x94
      0039F1 80                    3196 	.db 0x80
      0039F2 E2                    3197 	.db 0xe2
      0039F3 94                    3198 	.db 0x94
      0039F4 BC                    3199 	.db 0xbc
      0039F5 E2                    3200 	.db 0xe2
      0039F6 94                    3201 	.db 0x94
      0039F7 80                    3202 	.db 0x80
      0039F8 E2                    3203 	.db 0xe2
      0039F9 94                    3204 	.db 0x94
      0039FA 80                    3205 	.db 0x80
      0039FB E2                    3206 	.db 0xe2
      0039FC 94                    3207 	.db 0x94
      0039FD 80                    3208 	.db 0x80
      0039FE E2                    3209 	.db 0xe2
      0039FF 94                    3210 	.db 0x94
      003A00 80                    3211 	.db 0x80
      003A01 E2                    3212 	.db 0xe2
      003A02 94                    3213 	.db 0x94
      003A03 80                    3214 	.db 0x80
      003A04 E2                    3215 	.db 0xe2
      003A05 94                    3216 	.db 0x94
      003A06 80                    3217 	.db 0x80
      003A07 E2                    3218 	.db 0xe2
      003A08 94                    3219 	.db 0x94
      003A09 80                    3220 	.db 0x80
      003A0A E2                    3221 	.db 0xe2
      003A0B 94                    3222 	.db 0x94
      003A0C 80                    3223 	.db 0x80
      003A0D E2                    3224 	.db 0xe2
      003A0E 94                    3225 	.db 0x94
      003A0F 80                    3226 	.db 0x80
      003A10 E2                    3227 	.db 0xe2
      003A11 94                    3228 	.db 0x94
      003A12 80                    3229 	.db 0x80
      003A13 E2                    3230 	.db 0xe2
      003A14 94                    3231 	.db 0x94
      003A15 80                    3232 	.db 0x80
      003A16 E2                    3233 	.db 0xe2
      003A17 94                    3234 	.db 0x94
      003A18 80                    3235 	.db 0x80
      003A19 E2                    3236 	.db 0xe2
      003A1A 94                    3237 	.db 0x94
      003A1B 80                    3238 	.db 0x80
      003A1C E2                    3239 	.db 0xe2
      003A1D 94                    3240 	.db 0x94
      003A1E 80                    3241 	.db 0x80
      003A1F E2                    3242 	.db 0xe2
      003A20 94                    3243 	.db 0x94
      003A21 80                    3244 	.db 0x80
      003A22 E2                    3245 	.db 0xe2
      003A23 94                    3246 	.db 0x94
      003A24 80                    3247 	.db 0x80
      003A25 E2                    3248 	.db 0xe2
      003A26 94                    3249 	.db 0x94
      003A27 80                    3250 	.db 0x80
      003A28 E2                    3251 	.db 0xe2
      003A29 94                    3252 	.db 0x94
      003A2A 80                    3253 	.db 0x80
      003A2B E2                    3254 	.db 0xe2
      003A2C 94                    3255 	.db 0x94
      003A2D 80                    3256 	.db 0x80
      003A2E E2                    3257 	.db 0xe2
      003A2F 94                    3258 	.db 0x94
      003A30 80                    3259 	.db 0x80
      003A31 E2                    3260 	.db 0xe2
      003A32 94                    3261 	.db 0x94
      003A33 80                    3262 	.db 0x80
      003A34 E2                    3263 	.db 0xe2
      003A35 94                    3264 	.db 0x94
      003A36 80                    3265 	.db 0x80
      003A37 E2                    3266 	.db 0xe2
      003A38 94                    3267 	.db 0x94
      003A39 80                    3268 	.db 0x80
      003A3A E2                    3269 	.db 0xe2
      003A3B 94                    3270 	.db 0x94
      003A3C 80                    3271 	.db 0x80
      003A3D E2                    3272 	.db 0xe2
      003A3E 94                    3273 	.db 0x94
      003A3F 80                    3274 	.db 0x80
      003A40 E2                    3275 	.db 0xe2
      003A41 94                    3276 	.db 0x94
      003A42 80                    3277 	.db 0x80
      003A43 E2                    3278 	.db 0xe2
      003A44 94                    3279 	.db 0x94
      003A45 80                    3280 	.db 0x80
      003A46 E2                    3281 	.db 0xe2
      003A47 94                    3282 	.db 0x94
      003A48 80                    3283 	.db 0x80
      003A49 E2                    3284 	.db 0xe2
      003A4A 94                    3285 	.db 0x94
      003A4B 80                    3286 	.db 0x80
      003A4C E2                    3287 	.db 0xe2
      003A4D 94                    3288 	.db 0x94
      003A4E 80                    3289 	.db 0x80
      003A4F E2                    3290 	.db 0xe2
      003A50 94                    3291 	.db 0x94
      003A51 80                    3292 	.db 0x80
      003A52 E2                    3293 	.db 0xe2
      003A53 94                    3294 	.db 0x94
      003A54 80                    3295 	.db 0x80
      003A55 E2                    3296 	.db 0xe2
      003A56 94                    3297 	.db 0x94
      003A57 80                    3298 	.db 0x80
      003A58 E2                    3299 	.db 0xe2
      003A59 94                    3300 	.db 0x94
      003A5A 80                    3301 	.db 0x80
      003A5B E2                    3302 	.db 0xe2
      003A5C 94                    3303 	.db 0x94
      003A5D 80                    3304 	.db 0x80
      003A5E E2                    3305 	.db 0xe2
      003A5F 94                    3306 	.db 0x94
      003A60 80                    3307 	.db 0x80
      003A61 E2                    3308 	.db 0xe2
      003A62 94                    3309 	.db 0x94
      003A63 80                    3310 	.db 0x80
      003A64 E2                    3311 	.db 0xe2
      003A65 94                    3312 	.db 0x94
      003A66 80                    3313 	.db 0x80
      003A67 E2                    3314 	.db 0xe2
      003A68 94                    3315 	.db 0x94
      003A69 80                    3316 	.db 0x80
      003A6A E2                    3317 	.db 0xe2
      003A6B 94                    3318 	.db 0x94
      003A6C 80                    3319 	.db 0x80
      003A6D E2                    3320 	.db 0xe2
      003A6E 94                    3321 	.db 0x94
      003A6F 80                    3322 	.db 0x80
      003A70 E2                    3323 	.db 0xe2
      003A71 94                    3324 	.db 0x94
      003A72 80                    3325 	.db 0x80
      003A73 E2                    3326 	.db 0xe2
      003A74 94                    3327 	.db 0x94
      003A75 80                    3328 	.db 0x80
      003A76 E2                    3329 	.db 0xe2
      003A77 94                    3330 	.db 0x94
      003A78 80                    3331 	.db 0x80
      003A79 E2                    3332 	.db 0xe2
      003A7A 94                    3333 	.db 0x94
      003A7B 80                    3334 	.db 0x80
      003A7C E2                    3335 	.db 0xe2
      003A7D 94                    3336 	.db 0x94
      003A7E 80                    3337 	.db 0x80
      003A7F E2                    3338 	.db 0xe2
      003A80 94                    3339 	.db 0x94
      003A81 80                    3340 	.db 0x80
      003A82 E2                    3341 	.db 0xe2
      003A83 94                    3342 	.db 0x94
      003A84 A4                    3343 	.db 0xa4
      003A85 0A                    3344 	.db 0x0a
      003A86 0D                    3345 	.db 0x0d
      003A87 00                    3346 	.db 0x00
                                   3347 	.area CSEG    (CODE)
                                   3348 	.area CONST   (CODE)
      003A88                       3349 ___str_5:
      003A88 E2                    3350 	.db 0xe2
      003A89 94                    3351 	.db 0x94
      003A8A 82                    3352 	.db 0x82
      003A8B 20 20 20 20 4D 20 20  3353 	.ascii "    M      "
             20 20 20 20
      003A96 E2                    3354 	.db 0xe2
      003A97 94                    3355 	.db 0x94
      003A98 82                    3356 	.db 0x82
      003A99 20 4D 61 6E 75 61 6C  3357 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003AC9 E2                    3358 	.db 0xe2
      003ACA 94                    3359 	.db 0x94
      003ACB 82                    3360 	.db 0x82
      003ACC 0A                    3361 	.db 0x0a
      003ACD 0D                    3362 	.db 0x0d
      003ACE 00                    3363 	.db 0x00
                                   3364 	.area CSEG    (CODE)
                                   3365 	.area CONST   (CODE)
      003ACF                       3366 ___str_6:
      003ACF E2                    3367 	.db 0xe2
      003AD0 94                    3368 	.db 0x94
      003AD1 82                    3369 	.db 0x82
      003AD2 20 20 20 20 42 20 20  3370 	.ascii "    B      "
             20 20 20 20
      003ADD E2                    3371 	.db 0xe2
      003ADE 94                    3372 	.db 0x94
      003ADF 82                    3373 	.db 0x82
      003AE0 20 42 69 74 20 42 61  3374 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B0F E2                    3375 	.db 0xe2
      003B10 94                    3376 	.db 0x94
      003B11 82                    3377 	.db 0x82
      003B12 0A                    3378 	.db 0x0a
      003B13 0D                    3379 	.db 0x0d
      003B14 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      003B15                       3383 ___str_7:
      003B15 E2                    3384 	.db 0xe2
      003B16 94                    3385 	.db 0x94
      003B17 82                    3386 	.db 0x82
      003B18 20 20 20 20 53 20 20  3387 	.ascii "    S      "
             20 20 20 20
      003B23 E2                    3388 	.db 0xe2
      003B24 94                    3389 	.db 0x94
      003B25 82                    3390 	.db 0x82
      003B26 20 47 65 6E 65 72 61  3391 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B55 E2                    3392 	.db 0xe2
      003B56 94                    3393 	.db 0x94
      003B57 82                    3394 	.db 0x82
      003B58 0A                    3395 	.db 0x0a
      003B59 0D                    3396 	.db 0x0d
      003B5A 00                    3397 	.db 0x00
                                   3398 	.area CSEG    (CODE)
                                   3399 	.area CONST   (CODE)
      003B5B                       3400 ___str_8:
      003B5B E2                    3401 	.db 0xe2
      003B5C 94                    3402 	.db 0x94
      003B5D 82                    3403 	.db 0x82
      003B5E 20 20 20 20 54 20 20  3404 	.ascii "    T      "
             20 20 20 20
      003B69 E2                    3405 	.db 0xe2
      003B6A 94                    3406 	.db 0x94
      003B6B 82                    3407 	.db 0x82
      003B6C 20 47 65 6E 65 72 61  3408 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B9B E2                    3409 	.db 0xe2
      003B9C 94                    3410 	.db 0x94
      003B9D 82                    3411 	.db 0x82
      003B9E 0A                    3412 	.db 0x0a
      003B9F 0D                    3413 	.db 0x0d
      003BA0 00                    3414 	.db 0x00
                                   3415 	.area CSEG    (CODE)
                                   3416 	.area CONST   (CODE)
      003BA1                       3417 ___str_9:
      003BA1 E2                    3418 	.db 0xe2
      003BA2 94                    3419 	.db 0x94
      003BA3 82                    3420 	.db 0x82
      003BA4 20 20 20 20 44 20 20  3421 	.ascii "    D      "
             20 20 20 20
      003BAF E2                    3422 	.db 0xe2
      003BB0 94                    3423 	.db 0x94
      003BB1 82                    3424 	.db 0x82
      003BB2 20 44 65 6D 6F 20 4D  3425 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003BE1 E2                    3426 	.db 0xe2
      003BE2 94                    3427 	.db 0x94
      003BE3 82                    3428 	.db 0x82
      003BE4 0A                    3429 	.db 0x0a
      003BE5 0D                    3430 	.db 0x0d
      003BE6 00                    3431 	.db 0x00
                                   3432 	.area CSEG    (CODE)
                                   3433 	.area CONST   (CODE)
      003BE7                       3434 ___str_10:
      003BE7 E2                    3435 	.db 0xe2
      003BE8 94                    3436 	.db 0x94
      003BE9 82                    3437 	.db 0x82
      003BEA 20 20 20 20 52 20 20  3438 	.ascii "    R      "
             20 20 20 20
      003BF5 E2                    3439 	.db 0xe2
      003BF6 94                    3440 	.db 0x94
      003BF7 82                    3441 	.db 0x82
      003BF8 20 52 61 6D 70 20 77  3442 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C27 E2                    3443 	.db 0xe2
      003C28 94                    3444 	.db 0x94
      003C29 82                    3445 	.db 0x82
      003C2A 0A                    3446 	.db 0x0a
      003C2B 0D                    3447 	.db 0x0d
      003C2C 00                    3448 	.db 0x00
                                   3449 	.area CSEG    (CODE)
                                   3450 	.area CONST   (CODE)
      003C2D                       3451 ___str_11:
      003C2D E2                    3452 	.db 0xe2
      003C2E 94                    3453 	.db 0x94
      003C2F 82                    3454 	.db 0x82
      003C30 20 20 20 20 3F 20 20  3455 	.ascii "    ?      "
             20 20 20 20
      003C3B E2                    3456 	.db 0xe2
      003C3C 94                    3457 	.db 0x94
      003C3D 82                    3458 	.db 0x82
      003C3E 20 44 69 73 70 6C 61  3459 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C6D E2                    3460 	.db 0xe2
      003C6E 94                    3461 	.db 0x94
      003C6F 82                    3462 	.db 0x82
      003C70 0A                    3463 	.db 0x0a
      003C71 0D                    3464 	.db 0x0d
      003C72 00                    3465 	.db 0x00
                                   3466 	.area CSEG    (CODE)
                                   3467 	.area CONST   (CODE)
      003C73                       3468 ___str_12:
      003C73 E2                    3469 	.db 0xe2
      003C74 94                    3470 	.db 0x94
      003C75 94                    3471 	.db 0x94
      003C76 E2                    3472 	.db 0xe2
      003C77 94                    3473 	.db 0x94
      003C78 80                    3474 	.db 0x80
      003C79 E2                    3475 	.db 0xe2
      003C7A 94                    3476 	.db 0x94
      003C7B 80                    3477 	.db 0x80
      003C7C E2                    3478 	.db 0xe2
      003C7D 94                    3479 	.db 0x94
      003C7E 80                    3480 	.db 0x80
      003C7F E2                    3481 	.db 0xe2
      003C80 94                    3482 	.db 0x94
      003C81 80                    3483 	.db 0x80
      003C82 E2                    3484 	.db 0xe2
      003C83 94                    3485 	.db 0x94
      003C84 80                    3486 	.db 0x80
      003C85 E2                    3487 	.db 0xe2
      003C86 94                    3488 	.db 0x94
      003C87 80                    3489 	.db 0x80
      003C88 E2                    3490 	.db 0xe2
      003C89 94                    3491 	.db 0x94
      003C8A 80                    3492 	.db 0x80
      003C8B E2                    3493 	.db 0xe2
      003C8C 94                    3494 	.db 0x94
      003C8D 80                    3495 	.db 0x80
      003C8E E2                    3496 	.db 0xe2
      003C8F 94                    3497 	.db 0x94
      003C90 80                    3498 	.db 0x80
      003C91 E2                    3499 	.db 0xe2
      003C92 94                    3500 	.db 0x94
      003C93 80                    3501 	.db 0x80
      003C94 E2                    3502 	.db 0xe2
      003C95 94                    3503 	.db 0x94
      003C96 80                    3504 	.db 0x80
      003C97 E2                    3505 	.db 0xe2
      003C98 94                    3506 	.db 0x94
      003C99 B4                    3507 	.db 0xb4
      003C9A E2                    3508 	.db 0xe2
      003C9B 94                    3509 	.db 0x94
      003C9C 80                    3510 	.db 0x80
      003C9D E2                    3511 	.db 0xe2
      003C9E 94                    3512 	.db 0x94
      003C9F 80                    3513 	.db 0x80
      003CA0 E2                    3514 	.db 0xe2
      003CA1 94                    3515 	.db 0x94
      003CA2 80                    3516 	.db 0x80
      003CA3 E2                    3517 	.db 0xe2
      003CA4 94                    3518 	.db 0x94
      003CA5 80                    3519 	.db 0x80
      003CA6 E2                    3520 	.db 0xe2
      003CA7 94                    3521 	.db 0x94
      003CA8 80                    3522 	.db 0x80
      003CA9 E2                    3523 	.db 0xe2
      003CAA 94                    3524 	.db 0x94
      003CAB 80                    3525 	.db 0x80
      003CAC E2                    3526 	.db 0xe2
      003CAD 94                    3527 	.db 0x94
      003CAE 80                    3528 	.db 0x80
      003CAF E2                    3529 	.db 0xe2
      003CB0 94                    3530 	.db 0x94
      003CB1 80                    3531 	.db 0x80
      003CB2 E2                    3532 	.db 0xe2
      003CB3 94                    3533 	.db 0x94
      003CB4 80                    3534 	.db 0x80
      003CB5 E2                    3535 	.db 0xe2
      003CB6 94                    3536 	.db 0x94
      003CB7 80                    3537 	.db 0x80
      003CB8 E2                    3538 	.db 0xe2
      003CB9 94                    3539 	.db 0x94
      003CBA 80                    3540 	.db 0x80
      003CBB E2                    3541 	.db 0xe2
      003CBC 94                    3542 	.db 0x94
      003CBD 80                    3543 	.db 0x80
      003CBE E2                    3544 	.db 0xe2
      003CBF 94                    3545 	.db 0x94
      003CC0 80                    3546 	.db 0x80
      003CC1 E2                    3547 	.db 0xe2
      003CC2 94                    3548 	.db 0x94
      003CC3 80                    3549 	.db 0x80
      003CC4 E2                    3550 	.db 0xe2
      003CC5 94                    3551 	.db 0x94
      003CC6 80                    3552 	.db 0x80
      003CC7 E2                    3553 	.db 0xe2
      003CC8 94                    3554 	.db 0x94
      003CC9 80                    3555 	.db 0x80
      003CCA E2                    3556 	.db 0xe2
      003CCB 94                    3557 	.db 0x94
      003CCC 80                    3558 	.db 0x80
      003CCD E2                    3559 	.db 0xe2
      003CCE 94                    3560 	.db 0x94
      003CCF 80                    3561 	.db 0x80
      003CD0 E2                    3562 	.db 0xe2
      003CD1 94                    3563 	.db 0x94
      003CD2 80                    3564 	.db 0x80
      003CD3 E2                    3565 	.db 0xe2
      003CD4 94                    3566 	.db 0x94
      003CD5 80                    3567 	.db 0x80
      003CD6 E2                    3568 	.db 0xe2
      003CD7 94                    3569 	.db 0x94
      003CD8 80                    3570 	.db 0x80
      003CD9 E2                    3571 	.db 0xe2
      003CDA 94                    3572 	.db 0x94
      003CDB 80                    3573 	.db 0x80
      003CDC E2                    3574 	.db 0xe2
      003CDD 94                    3575 	.db 0x94
      003CDE 80                    3576 	.db 0x80
      003CDF E2                    3577 	.db 0xe2
      003CE0 94                    3578 	.db 0x94
      003CE1 80                    3579 	.db 0x80
      003CE2 E2                    3580 	.db 0xe2
      003CE3 94                    3581 	.db 0x94
      003CE4 80                    3582 	.db 0x80
      003CE5 E2                    3583 	.db 0xe2
      003CE6 94                    3584 	.db 0x94
      003CE7 80                    3585 	.db 0x80
      003CE8 E2                    3586 	.db 0xe2
      003CE9 94                    3587 	.db 0x94
      003CEA 80                    3588 	.db 0x80
      003CEB E2                    3589 	.db 0xe2
      003CEC 94                    3590 	.db 0x94
      003CED 80                    3591 	.db 0x80
      003CEE E2                    3592 	.db 0xe2
      003CEF 94                    3593 	.db 0x94
      003CF0 80                    3594 	.db 0x80
      003CF1 E2                    3595 	.db 0xe2
      003CF2 94                    3596 	.db 0x94
      003CF3 80                    3597 	.db 0x80
      003CF4 E2                    3598 	.db 0xe2
      003CF5 94                    3599 	.db 0x94
      003CF6 80                    3600 	.db 0x80
      003CF7 E2                    3601 	.db 0xe2
      003CF8 94                    3602 	.db 0x94
      003CF9 80                    3603 	.db 0x80
      003CFA E2                    3604 	.db 0xe2
      003CFB 94                    3605 	.db 0x94
      003CFC 80                    3606 	.db 0x80
      003CFD E2                    3607 	.db 0xe2
      003CFE 94                    3608 	.db 0x94
      003CFF 80                    3609 	.db 0x80
      003D00 E2                    3610 	.db 0xe2
      003D01 94                    3611 	.db 0x94
      003D02 80                    3612 	.db 0x80
      003D03 E2                    3613 	.db 0xe2
      003D04 94                    3614 	.db 0x94
      003D05 80                    3615 	.db 0x80
      003D06 E2                    3616 	.db 0xe2
      003D07 94                    3617 	.db 0x94
      003D08 80                    3618 	.db 0x80
      003D09 E2                    3619 	.db 0xe2
      003D0A 94                    3620 	.db 0x94
      003D0B 80                    3621 	.db 0x80
      003D0C E2                    3622 	.db 0xe2
      003D0D 94                    3623 	.db 0x94
      003D0E 80                    3624 	.db 0x80
      003D0F E2                    3625 	.db 0xe2
      003D10 94                    3626 	.db 0x94
      003D11 80                    3627 	.db 0x80
      003D12 E2                    3628 	.db 0xe2
      003D13 94                    3629 	.db 0x94
      003D14 80                    3630 	.db 0x80
      003D15 E2                    3631 	.db 0xe2
      003D16 94                    3632 	.db 0x94
      003D17 80                    3633 	.db 0x80
      003D18 E2                    3634 	.db 0xe2
      003D19 94                    3635 	.db 0x94
      003D1A 80                    3636 	.db 0x80
      003D1B E2                    3637 	.db 0xe2
      003D1C 94                    3638 	.db 0x94
      003D1D 80                    3639 	.db 0x80
      003D1E E2                    3640 	.db 0xe2
      003D1F 94                    3641 	.db 0x94
      003D20 80                    3642 	.db 0x80
      003D21 E2                    3643 	.db 0xe2
      003D22 94                    3644 	.db 0x94
      003D23 80                    3645 	.db 0x80
      003D24 E2                    3646 	.db 0xe2
      003D25 94                    3647 	.db 0x94
      003D26 80                    3648 	.db 0x80
      003D27 E2                    3649 	.db 0xe2
      003D28 94                    3650 	.db 0x94
      003D29 98                    3651 	.db 0x98
      003D2A 0A                    3652 	.db 0x0a
      003D2B 0D                    3653 	.db 0x0d
      003D2C 00                    3654 	.db 0x00
                                   3655 	.area CSEG    (CODE)
                                   3656 	.area CONST   (CODE)
      003D2D                       3657 ___str_13:
      003D2D 0A                    3658 	.db 0x0a
      003D2E 0D                    3659 	.db 0x0d
      003D2F 45 6E 74 65 72 20 63  3660 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003D3E 00                    3661 	.db 0x00
                                   3662 	.area CSEG    (CODE)
                                   3663 	.area CONST   (CODE)
      003D3F                       3664 ___str_14:
      003D3F 7C 20 24 20 25 63     3665 	.ascii "| $ %c"
      003D45 0A                    3666 	.db 0x0a
      003D46 0D                    3667 	.db 0x0d
      003D47 00                    3668 	.db 0x00
                                   3669 	.area CSEG    (CODE)
                                   3670 	.area CONST   (CODE)
      003D48                       3671 ___str_15:
      003D48 0A                    3672 	.db 0x0a
      003D49 0D                    3673 	.db 0x0d
      003D4A 00                    3674 	.db 0x00
                                   3675 	.area CSEG    (CODE)
                                   3676 	.area CONST   (CODE)
      003D4B                       3677 ___str_16:
      003D4B 3E 3E 20 53 49 4E 20  3678 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003D6A 0A                    3679 	.db 0x0a
      003D6B 0D                    3680 	.db 0x0d
      003D6C 00                    3681 	.db 0x00
                                   3682 	.area CSEG    (CODE)
                                   3683 	.area CONST   (CODE)
      003D6D                       3684 ___str_17:
      003D6D 3E 3E 20 53 51 55 41  3685 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003D8F 0A                    3686 	.db 0x0a
      003D90 0D                    3687 	.db 0x0d
      003D91 00                    3688 	.db 0x00
                                   3689 	.area CSEG    (CODE)
                                   3690 	.area CONST   (CODE)
      003D92                       3691 ___str_18:
      003D92 3E 3E 20 49 4E 56 41  3692 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003DA2 0A                    3693 	.db 0x0a
      003DA3 0D                    3694 	.db 0x0d
      003DA4 00                    3695 	.db 0x00
                                   3696 	.area CSEG    (CODE)
                                   3697 	.area CONST   (CODE)
      003DA5                       3698 ___str_19:
      003DA5 E2                    3699 	.db 0xe2
      003DA6 94                    3700 	.db 0x94
      003DA7 82                    3701 	.db 0x82
      003DA8 20 45 6E 74 65 72 20  3702 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003DCC 0A                    3703 	.db 0x0a
      003DCD 0D                    3704 	.db 0x0d
      003DCE 7C                    3705 	.ascii "|"
      003DCF 00                    3706 	.db 0x00
                                   3707 	.area CSEG    (CODE)
                                   3708 	.area CONST   (CODE)
      003DD0                       3709 ___str_20:
      003DD0 24 20                 3710 	.ascii "$ "
      003DD2 00                    3711 	.db 0x00
                                   3712 	.area CSEG    (CODE)
                                   3713 	.area CONST   (CODE)
      003DD3                       3714 ___str_21:
      003DD3 0A                    3715 	.db 0x0a
      003DD4 0D                    3716 	.db 0x0d
      003DD5 E2                    3717 	.db 0xe2
      003DD6 94                    3718 	.db 0x94
      003DD7 82                    3719 	.db 0x82
      003DD8 20 45 6E 74 65 72 65  3720 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003DED 0A                    3721 	.db 0x0a
      003DEE 0D                    3722 	.db 0x0d
      003DEF 00                    3723 	.db 0x00
                                   3724 	.area CSEG    (CODE)
                                   3725 	.area XINIT   (CODE)
      003DFB                       3726 __xinit__ms_flag:
      003DFB 00                    3727 	.db #0x00	; 0
      003DFC                       3728 __xinit__transmission_complete:
      003DFC 00 00                 3729 	.byte #0x00, #0x00	;  0
                                   3730 	.area CABS    (ABS,CODE)
