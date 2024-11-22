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
      0020C2 74 B9            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 37            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 57         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 7E            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 57         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 C5            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 38            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 57         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 88            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 57         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 D1            [12]  733 	mov	a,#___str_4
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 39            [12]  735 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 57         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 8B            [12]  744 	mov	a,#___str_5
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 57         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 D2            [12]  755 	mov	a,#___str_6
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3A            [12]  757 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 57         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 18            [12]  766 	mov	a,#___str_7
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 57         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 5E            [12]  777 	mov	a,#___str_8
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 57         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 A4            [12]  788 	mov	a,#___str_9
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 57         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 EA            [12]  799 	mov	a,#___str_10
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3B            [12]  801 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 57         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 30            [12]  810 	mov	a,#___str_11
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 57         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 76            [12]  821 	mov	a,#___str_12
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3C            [12]  823 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 27 57         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 30            [12]  832 	mov	a,#___str_13
      0021D5 C0 E0            [24]  833 	push	acc
      0021D7 74 3D            [12]  834 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  835 	push	acc
      0021DB 74 80            [12]  836 	mov	a,#0x80
      0021DD C0 E0            [24]  837 	push	acc
      0021DF 12 27 57         [24]  838 	lcall	_printf
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
      0021FF 74 42            [12]  881 	mov	a,#___str_14
      002201 C0 E0            [24]  882 	push	acc
      002203 74 3D            [12]  883 	mov	a,#(___str_14 >> 8)
      002205 C0 E0            [24]  884 	push	acc
      002207 74 80            [12]  885 	mov	a,#0x80
      002209 C0 E0            [24]  886 	push	acc
      00220B 12 27 57         [24]  887 	lcall	_printf
      00220E E5 81            [12]  888 	mov	a,sp
      002210 24 FB            [12]  889 	add	a,#0xfb
      002212 F5 81            [12]  890 	mov	sp,a
                                    891 ;	spi_and_bit_banging.c:268: printf("\n\r");
      002214 74 4B            [12]  892 	mov	a,#___str_15
      002216 C0 E0            [24]  893 	push	acc
      002218 74 3D            [12]  894 	mov	a,#(___str_15 >> 8)
      00221A C0 E0            [24]  895 	push	acc
      00221C 74 80            [12]  896 	mov	a,#0x80
      00221E C0 E0            [24]  897 	push	acc
      002220 12 27 57         [24]  898 	lcall	_printf
      002223 15 81            [12]  899 	dec	sp
      002225 15 81            [12]  900 	dec	sp
      002227 15 81            [12]  901 	dec	sp
      002229 D0 06            [24]  902 	pop	ar6
                                    903 ;	spi_and_bit_banging.c:269: switch(user_input)
      00222B BE 42 02         [24]  904 	cjne	r6,#0x42,00122$
      00222E 80 26            [24]  905 	sjmp	00102$
      002230                        906 00122$:
      002230 BE 4D 47         [24]  907 	cjne	r6,#0x4d,00103$
                                    908 ;	spi_and_bit_banging.c:272: spi_init();
      002233 12 24 E9         [24]  909 	lcall	_spi_init
                                    910 ;	spi_and_bit_banging.c:273: unsigned char result = take_data();
      002236 12 22 DD         [24]  911 	lcall	_take_data
                                    912 ;	spi_and_bit_banging.c:274: mannual_spi(result);
      002239 12 24 31         [24]  913 	lcall	_mannual_spi
                                    914 ;	spi_and_bit_banging.c:275: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00223C 74 4E            [12]  915 	mov	a,#___str_16
      00223E C0 E0            [24]  916 	push	acc
      002240 74 3D            [12]  917 	mov	a,#(___str_16 >> 8)
      002242 C0 E0            [24]  918 	push	acc
      002244 74 80            [12]  919 	mov	a,#0x80
      002246 C0 E0            [24]  920 	push	acc
      002248 12 27 57         [24]  921 	lcall	_printf
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
      002256 12 24 F3         [24]  932 	lcall	_bit_bang_spi_init
                                    933 ;	spi_and_bit_banging.c:282: unsigned char result2 = take_data();
      002259 12 22 DD         [24]  934 	lcall	_take_data
                                    935 ;	spi_and_bit_banging.c:283: bit_bang_spi(result2);
      00225C 12 22 AA         [24]  936 	lcall	_bit_bang_spi
                                    937 ;	spi_and_bit_banging.c:284: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00225F 74 70            [12]  938 	mov	a,#___str_17
      002261 C0 E0            [24]  939 	push	acc
      002263 74 3D            [12]  940 	mov	a,#(___str_17 >> 8)
      002265 C0 E0            [24]  941 	push	acc
      002267 74 80            [12]  942 	mov	a,#0x80
      002269 C0 E0            [24]  943 	push	acc
      00226B 12 27 57         [24]  944 	lcall	_printf
      00226E 15 81            [12]  945 	dec	sp
      002270 15 81            [12]  946 	dec	sp
      002272 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:285: spi_init();
      002274 12 24 E9         [24]  949 	lcall	_spi_init
                                    950 ;	spi_and_bit_banging.c:286: break;
      002277 02 21 F0         [24]  951 	ljmp	00106$
                                    952 ;	spi_and_bit_banging.c:326: default:
      00227A                        953 00103$:
                                    954 ;	spi_and_bit_banging.c:327: printf(">> INVALID INPUT\n\r");
      00227A 74 95            [12]  955 	mov	a,#___str_18
      00227C C0 E0            [24]  956 	push	acc
      00227E 74 3D            [12]  957 	mov	a,#(___str_18 >> 8)
      002280 C0 E0            [24]  958 	push	acc
      002282 74 80            [12]  959 	mov	a,#0x80
      002284 C0 E0            [24]  960 	push	acc
      002286 12 27 57         [24]  961 	lcall	_printf
      002289 15 81            [12]  962 	dec	sp
      00228B 15 81            [12]  963 	dec	sp
      00228D 15 81            [12]  964 	dec	sp
                                    965 ;	spi_and_bit_banging.c:332: }
                                    966 ;	spi_and_bit_banging.c:334: }
      00228F 02 21 F0         [24]  967 	ljmp	00106$
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'demo_mode'
                                    970 ;------------------------------------------------------------
                                    971 ;	spi_and_bit_banging.c:340: void demo_mode()
                                    972 ;	-----------------------------------------
                                    973 ;	 function demo_mode
                                    974 ;	-----------------------------------------
      002292                        975 _demo_mode:
                                    976 ;	spi_and_bit_banging.c:342: mannual_spi(7);
      002292 75 82 07         [24]  977 	mov	dpl,#0x07
      002295 12 24 31         [24]  978 	lcall	_mannual_spi
                                    979 ;	spi_and_bit_banging.c:343: bit_bang_spi(7);
      002298 75 82 07         [24]  980 	mov	dpl,#0x07
      00229B 12 22 AA         [24]  981 	lcall	_bit_bang_spi
                                    982 ;	spi_and_bit_banging.c:344: spi_ramp_signal(7);
      00229E 90 00 07         [24]  983 	mov	dptr,#0x0007
      0022A1 12 26 2B         [24]  984 	lcall	_spi_ramp_signal
                                    985 ;	spi_and_bit_banging.c:345: spi_triangular_wave(7);
      0022A4 90 00 07         [24]  986 	mov	dptr,#0x0007
                                    987 ;	spi_and_bit_banging.c:346: }
      0022A7 02 25 4D         [24]  988 	ljmp	_spi_triangular_wave
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'bit_bang_spi'
                                    991 ;------------------------------------------------------------
                                    992 ;number                    Allocated with name '_bit_bang_spi_number_65536_43'
                                    993 ;------------------------------------------------------------
                                    994 ;	spi_and_bit_banging.c:350: void bit_bang_spi(unsigned char number)
                                    995 ;	-----------------------------------------
                                    996 ;	 function bit_bang_spi
                                    997 ;	-----------------------------------------
      0022AA                        998 _bit_bang_spi:
      0022AA E5 82            [12]  999 	mov	a,dpl
      0022AC 90 04 04         [24] 1000 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022AF F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	spi_and_bit_banging.c:352: while(number > 0)
      0022B0                       1003 00101$:
      0022B0 90 04 04         [24] 1004 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022B3 E0               [24] 1005 	movx	a,@dptr
      0022B4 FF               [12] 1006 	mov	r7,a
      0022B5 E0               [24] 1007 	movx	a,@dptr
      0022B6 60 24            [24] 1008 	jz	00104$
                                   1009 ;	spi_and_bit_banging.c:354: bit_bang_spi_write(TEST_DATA);
      0022B8 90 1F F0         [24] 1010 	mov	dptr,#0x1ff0
      0022BB C0 07            [24] 1011 	push	ar7
      0022BD 12 24 FD         [24] 1012 	lcall	_bit_bang_spi_write
                                   1013 ;	spi_and_bit_banging.c:355: delay_ms(DELAY_PERIOD);
      0022C0 90 01 F4         [24] 1014 	mov	dptr,#0x01f4
      0022C3 12 20 8F         [24] 1015 	lcall	_delay_ms
                                   1016 ;	spi_and_bit_banging.c:356: bit_bang_spi_write(IDLE_DATA);
      0022C6 90 10 00         [24] 1017 	mov	dptr,#0x1000
      0022C9 12 24 FD         [24] 1018 	lcall	_bit_bang_spi_write
                                   1019 ;	spi_and_bit_banging.c:357: delay_ms(DELAY_PERIOD);
      0022CC 90 01 F4         [24] 1020 	mov	dptr,#0x01f4
      0022CF 12 20 8F         [24] 1021 	lcall	_delay_ms
      0022D2 D0 07            [24] 1022 	pop	ar7
                                   1023 ;	spi_and_bit_banging.c:358: number = number - 1;
      0022D4 EF               [12] 1024 	mov	a,r7
      0022D5 14               [12] 1025 	dec	a
      0022D6 90 04 04         [24] 1026 	mov	dptr,#_bit_bang_spi_number_65536_43
      0022D9 F0               [24] 1027 	movx	@dptr,a
      0022DA 80 D4            [24] 1028 	sjmp	00101$
      0022DC                       1029 00104$:
                                   1030 ;	spi_and_bit_banging.c:360: }
      0022DC 22               [24] 1031 	ret
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'take_data'
                                   1034 ;------------------------------------------------------------
                                   1035 ;input                     Allocated with name '_take_data_input_65537_47'
                                   1036 ;i                         Allocated with name '_take_data_i_65537_47'
                                   1037 ;c                         Allocated with name '_take_data_c_65537_47'
                                   1038 ;data                      Allocated with name '_take_data_data_65538_51'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	spi_and_bit_banging.c:361: unsigned char take_data()
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function take_data
                                   1043 ;	-----------------------------------------
      0022DD                       1044 _take_data:
                                   1045 ;	spi_and_bit_banging.c:363: printf("│ Enter number (up to 2 characters): \n\r|");
      0022DD 74 A8            [12] 1046 	mov	a,#___str_19
      0022DF C0 E0            [24] 1047 	push	acc
      0022E1 74 3D            [12] 1048 	mov	a,#(___str_19 >> 8)
      0022E3 C0 E0            [24] 1049 	push	acc
      0022E5 74 80            [12] 1050 	mov	a,#0x80
      0022E7 C0 E0            [24] 1051 	push	acc
      0022E9 12 27 57         [24] 1052 	lcall	_printf
      0022EC 15 81            [12] 1053 	dec	sp
      0022EE 15 81            [12] 1054 	dec	sp
      0022F0 15 81            [12] 1055 	dec	sp
                                   1056 ;	spi_and_bit_banging.c:364: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0022F2 90 04 05         [24] 1057 	mov	dptr,#_take_data_input_65537_47
      0022F5 E4               [12] 1058 	clr	a
      0022F6 F0               [24] 1059 	movx	@dptr,a
      0022F7 90 04 06         [24] 1060 	mov	dptr,#(_take_data_input_65537_47 + 0x0001)
      0022FA F0               [24] 1061 	movx	@dptr,a
      0022FB 90 04 07         [24] 1062 	mov	dptr,#(_take_data_input_65537_47 + 0x0002)
      0022FE F0               [24] 1063 	movx	@dptr,a
      0022FF 90 04 08         [24] 1064 	mov	dptr,#(_take_data_input_65537_47 + 0x0003)
      002302 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	spi_and_bit_banging.c:368: printf("$ ");
      002303 74 D3            [12] 1067 	mov	a,#___str_20
      002305 C0 E0            [24] 1068 	push	acc
      002307 74 3D            [12] 1069 	mov	a,#(___str_20 >> 8)
      002309 C0 E0            [24] 1070 	push	acc
      00230B 74 80            [12] 1071 	mov	a,#0x80
      00230D C0 E0            [24] 1072 	push	acc
      00230F 12 27 57         [24] 1073 	lcall	_printf
      002312 15 81            [12] 1074 	dec	sp
      002314 15 81            [12] 1075 	dec	sp
      002316 15 81            [12] 1076 	dec	sp
                                   1077 ;	spi_and_bit_banging.c:370: while (i < 3) {
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
                                   1088 ;	spi_and_bit_banging.c:372: c = getchar();
      002327 C0 07            [24] 1089 	push	ar7
      002329 C0 06            [24] 1090 	push	ar6
      00232B 12 20 81         [24] 1091 	lcall	_getchar
      00232E AC 82            [24] 1092 	mov	r4,dpl
      002330 AD 83            [24] 1093 	mov	r5,dph
      002332 D0 06            [24] 1094 	pop	ar6
      002334 D0 07            [24] 1095 	pop	ar7
                                   1096 ;	spi_and_bit_banging.c:375: if (c == '\r' || c == '\n') {
      002336 BC 0D 02         [24] 1097 	cjne	r4,#0x0d,00194$
      002339 80 47            [24] 1098 	sjmp	00113$
      00233B                       1099 00194$:
      00233B BC 0A 02         [24] 1100 	cjne	r4,#0x0a,00195$
      00233E 80 42            [24] 1101 	sjmp	00113$
      002340                       1102 00195$:
                                   1103 ;	spi_and_bit_banging.c:380: if ((c >= '0' && c <= '9') ||
      002340 BC 30 00         [24] 1104 	cjne	r4,#0x30,00196$
      002343                       1105 00196$:
      002343 40 05            [24] 1106 	jc	00108$
      002345 EC               [12] 1107 	mov	a,r4
      002346 24 C6            [12] 1108 	add	a,#0xff - 0x39
      002348 50 14            [24] 1109 	jnc	00104$
      00234A                       1110 00108$:
                                   1111 ;	spi_and_bit_banging.c:381: (c >= 'a' && c <= 'f') ||
      00234A BC 61 00         [24] 1112 	cjne	r4,#0x61,00199$
      00234D                       1113 00199$:
      00234D 40 05            [24] 1114 	jc	00110$
      00234F EC               [12] 1115 	mov	a,r4
      002350 24 99            [12] 1116 	add	a,#0xff - 0x66
      002352 50 0A            [24] 1117 	jnc	00104$
      002354                       1118 00110$:
                                   1119 ;	spi_and_bit_banging.c:382: (c >= 'A' && c <= 'F')) {
      002354 BC 41 00         [24] 1120 	cjne	r4,#0x41,00202$
      002357                       1121 00202$:
      002357 40 C3            [24] 1122 	jc	00111$
      002359 EC               [12] 1123 	mov	a,r4
      00235A 24 B9            [12] 1124 	add	a,#0xff - 0x46
      00235C 40 BE            [24] 1125 	jc	00111$
      00235E                       1126 00104$:
                                   1127 ;	spi_and_bit_banging.c:384: input[i] = c;
      00235E EE               [12] 1128 	mov	a,r6
      00235F 24 05            [12] 1129 	add	a,#_take_data_input_65537_47
      002361 F5 82            [12] 1130 	mov	dpl,a
      002363 EF               [12] 1131 	mov	a,r7
      002364 34 04            [12] 1132 	addc	a,#(_take_data_input_65537_47 >> 8)
      002366 F5 83            [12] 1133 	mov	dph,a
      002368 EC               [12] 1134 	mov	a,r4
      002369 F0               [24] 1135 	movx	@dptr,a
                                   1136 ;	spi_and_bit_banging.c:385: putchar(c);  // Echo character back
      00236A 7D 00            [12] 1137 	mov	r5,#0x00
      00236C 8C 82            [24] 1138 	mov	dpl,r4
      00236E 8D 83            [24] 1139 	mov	dph,r5
      002370 C0 07            [24] 1140 	push	ar7
      002372 C0 06            [24] 1141 	push	ar6
      002374 12 20 62         [24] 1142 	lcall	_putchar
      002377 D0 06            [24] 1143 	pop	ar6
      002379 D0 07            [24] 1144 	pop	ar7
                                   1145 ;	spi_and_bit_banging.c:386: i++;
      00237B 0E               [12] 1146 	inc	r6
      00237C BE 00 9D         [24] 1147 	cjne	r6,#0x00,00111$
      00237F 0F               [12] 1148 	inc	r7
      002380 80 9A            [24] 1149 	sjmp	00111$
      002382                       1150 00113$:
                                   1151 ;	spi_and_bit_banging.c:390: input[i] = '\0';  // Null-terminate the string
      002382 EE               [12] 1152 	mov	a,r6
      002383 24 05            [12] 1153 	add	a,#_take_data_input_65537_47
      002385 F5 82            [12] 1154 	mov	dpl,a
      002387 EF               [12] 1155 	mov	a,r7
      002388 34 04            [12] 1156 	addc	a,#(_take_data_input_65537_47 >> 8)
      00238A F5 83            [12] 1157 	mov	dph,a
      00238C E4               [12] 1158 	clr	a
      00238D F0               [24] 1159 	movx	@dptr,a
                                   1160 ;	spi_and_bit_banging.c:393: unsigned char data = 0;
      00238E 90 04 09         [24] 1161 	mov	dptr,#_take_data_data_65538_51
      002391 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
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
                                   1178 ;	spi_and_bit_banging.c:395: data = data * 16;
      0023A7 90 04 09         [24] 1179 	mov	dptr,#_take_data_data_65538_51
      0023AA E0               [24] 1180 	movx	a,@dptr
      0023AB C4               [12] 1181 	swap	a
      0023AC 54 F0            [12] 1182 	anl	a,#0xf0
      0023AE FC               [12] 1183 	mov	r4,a
      0023AF F0               [24] 1184 	movx	@dptr,a
                                   1185 ;	spi_and_bit_banging.c:396: if (input[i] >= '0' && input[i] <= '9')
      0023B0 BD 30 00         [24] 1186 	cjne	r5,#0x30,00207$
      0023B3                       1187 00207$:
      0023B3 40 12            [24] 1188 	jc	00122$
      0023B5 ED               [12] 1189 	mov	a,r5
      0023B6 24 C6            [12] 1190 	add	a,#0xff - 0x39
      0023B8 40 0D            [24] 1191 	jc	00122$
                                   1192 ;	spi_and_bit_banging.c:397: data += input[i] - '0';
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
                                   1203 ;	spi_and_bit_banging.c:398: else if (input[i] >= 'A' && input[i] <= 'F')
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
                                   1218 ;	spi_and_bit_banging.c:399: data += input[i] - 'A' + 10;
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
                                   1230 ;	spi_and_bit_banging.c:400: else if (input[i] >= 'a' && input[i] <= 'f')
      0023EC BD 61 00         [24] 1231 	cjne	r5,#0x61,00213$
      0023EF                       1232 00213$:
      0023EF 40 10            [24] 1233 	jc	00128$
      0023F1 ED               [12] 1234 	mov	a,r5
      0023F2 24 99            [12] 1235 	add	a,#0xff - 0x66
      0023F4 40 0B            [24] 1236 	jc	00128$
                                   1237 ;	spi_and_bit_banging.c:401: data += input[i] - 'a' + 10;
      0023F6 74 A9            [12] 1238 	mov	a,#0xa9
      0023F8 2D               [12] 1239 	add	a,r5
      0023F9 FD               [12] 1240 	mov	r5,a
      0023FA 90 04 09         [24] 1241 	mov	dptr,#_take_data_data_65538_51
      0023FD E0               [24] 1242 	movx	a,@dptr
      0023FE FC               [12] 1243 	mov	r4,a
      0023FF 2D               [12] 1244 	add	a,r5
      002400 F0               [24] 1245 	movx	@dptr,a
      002401                       1246 00128$:
                                   1247 ;	spi_and_bit_banging.c:394: for (i = 0; input[i] != '\0'; i++) {
      002401 0E               [12] 1248 	inc	r6
      002402 BE 00 01         [24] 1249 	cjne	r6,#0x00,00216$
      002405 0F               [12] 1250 	inc	r7
      002406                       1251 00216$:
      002406 02 23 96         [24] 1252 	ljmp	00127$
      002409                       1253 00125$:
                                   1254 ;	spi_and_bit_banging.c:404: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      002409 90 04 09         [24] 1255 	mov	dptr,#_take_data_data_65538_51
      00240C E0               [24] 1256 	movx	a,@dptr
      00240D FF               [12] 1257 	mov	r7,a
      00240E FD               [12] 1258 	mov	r5,a
      00240F 7E 00            [12] 1259 	mov	r6,#0x00
      002411 C0 07            [24] 1260 	push	ar7
      002413 C0 05            [24] 1261 	push	ar5
      002415 C0 06            [24] 1262 	push	ar6
      002417 74 D6            [12] 1263 	mov	a,#___str_21
      002419 C0 E0            [24] 1264 	push	acc
      00241B 74 3D            [12] 1265 	mov	a,#(___str_21 >> 8)
      00241D C0 E0            [24] 1266 	push	acc
      00241F 74 80            [12] 1267 	mov	a,#0x80
      002421 C0 E0            [24] 1268 	push	acc
      002423 12 27 57         [24] 1269 	lcall	_printf
      002426 E5 81            [12] 1270 	mov	a,sp
      002428 24 FB            [12] 1271 	add	a,#0xfb
      00242A F5 81            [12] 1272 	mov	sp,a
      00242C D0 07            [24] 1273 	pop	ar7
                                   1274 ;	spi_and_bit_banging.c:411: return data;
      00242E 8F 82            [24] 1275 	mov	dpl,r7
                                   1276 ;	spi_and_bit_banging.c:413: }
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
                                   1288 ;	spi_and_bit_banging.c:415: void mannual_spi(unsigned char number)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function mannual_spi
                                   1291 ;	-----------------------------------------
      002431                       1292 _mannual_spi:
      002431 E5 82            [12] 1293 	mov	a,dpl
      002433 90 04 0A         [24] 1294 	mov	dptr,#_mannual_spi_number_65536_54
      002436 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	spi_and_bit_banging.c:417: int dac_value_index = 0;
      002437 90 04 0B         [24] 1297 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00243A E4               [12] 1298 	clr	a
      00243B F0               [24] 1299 	movx	@dptr,a
      00243C A3               [24] 1300 	inc	dptr
      00243D F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	spi_and_bit_banging.c:418: int dac_data = 0;
      00243E 90 04 0D         [24] 1303 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002441 F0               [24] 1304 	movx	@dptr,a
      002442 A3               [24] 1305 	inc	dptr
      002443 F0               [24] 1306 	movx	@dptr,a
                                   1307 ;	spi_and_bit_banging.c:420: while(number > 0)
      002444                       1308 00111$:
      002444 90 04 0A         [24] 1309 	mov	dptr,#_mannual_spi_number_65536_54
      002447 E0               [24] 1310 	movx	a,@dptr
      002448 70 01            [24] 1311 	jnz	00156$
      00244A 22               [24] 1312 	ret
      00244B                       1313 00156$:
                                   1314 ;	spi_and_bit_banging.c:423: for(int i = 0; i<256; i++)
      00244B 7E 00            [12] 1315 	mov	r6,#0x00
      00244D 7F 00            [12] 1316 	mov	r7,#0x00
      00244F                       1317 00115$:
      00244F C3               [12] 1318 	clr	c
      002450 EF               [12] 1319 	mov	a,r7
      002451 64 80            [12] 1320 	xrl	a,#0x80
      002453 94 81            [12] 1321 	subb	a,#0x81
      002455 40 03            [24] 1322 	jc	00157$
      002457 02 24 DF         [24] 1323 	ljmp	00110$
      00245A                       1324 00157$:
                                   1325 ;	spi_and_bit_banging.c:426: if(dac_value_index < SINE_MAX_INDEX)
      00245A 90 04 0B         [24] 1326 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00245D E0               [24] 1327 	movx	a,@dptr
      00245E FC               [12] 1328 	mov	r4,a
      00245F A3               [24] 1329 	inc	dptr
      002460 E0               [24] 1330 	movx	a,@dptr
      002461 FD               [12] 1331 	mov	r5,a
      002462 C3               [12] 1332 	clr	c
      002463 64 80            [12] 1333 	xrl	a,#0x80
      002465 94 81            [12] 1334 	subb	a,#0x81
      002467 50 21            [24] 1335 	jnc	00102$
                                   1336 ;	spi_and_bit_banging.c:430: dac_data = dac_values[dac_value_index];
      002469 EC               [12] 1337 	mov	a,r4
      00246A 2C               [12] 1338 	add	a,r4
      00246B FC               [12] 1339 	mov	r4,a
      00246C ED               [12] 1340 	mov	a,r5
      00246D 33               [12] 1341 	rlc	a
      00246E FD               [12] 1342 	mov	r5,a
      00246F EC               [12] 1343 	mov	a,r4
      002470 24 B9            [12] 1344 	add	a,#_dac_values
      002472 F5 82            [12] 1345 	mov	dpl,a
      002474 ED               [12] 1346 	mov	a,r5
      002475 34 31            [12] 1347 	addc	a,#(_dac_values >> 8)
      002477 F5 83            [12] 1348 	mov	dph,a
      002479 E4               [12] 1349 	clr	a
      00247A 93               [24] 1350 	movc	a,@a+dptr
      00247B FC               [12] 1351 	mov	r4,a
      00247C A3               [24] 1352 	inc	dptr
      00247D E4               [12] 1353 	clr	a
      00247E 93               [24] 1354 	movc	a,@a+dptr
      00247F FD               [12] 1355 	mov	r5,a
      002480 90 04 0D         [24] 1356 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002483 EC               [12] 1357 	mov	a,r4
      002484 F0               [24] 1358 	movx	@dptr,a
      002485 ED               [12] 1359 	mov	a,r5
      002486 A3               [24] 1360 	inc	dptr
      002487 F0               [24] 1361 	movx	@dptr,a
      002488 80 07            [24] 1362 	sjmp	00103$
      00248A                       1363 00102$:
                                   1364 ;	spi_and_bit_banging.c:434: dac_value_index = 0;  // Reset index for next cycle
      00248A 90 04 0B         [24] 1365 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00248D E4               [12] 1366 	clr	a
      00248E F0               [24] 1367 	movx	@dptr,a
      00248F A3               [24] 1368 	inc	dptr
      002490 F0               [24] 1369 	movx	@dptr,a
      002491                       1370 00103$:
                                   1371 ;	spi_and_bit_banging.c:441: ((dac_data >> 4) & 0x0F);
      002491 90 04 0D         [24] 1372 	mov	dptr,#_mannual_spi_dac_data_65536_55
      002494 E0               [24] 1373 	movx	a,@dptr
      002495 FC               [12] 1374 	mov	r4,a
      002496 A3               [24] 1375 	inc	dptr
      002497 E0               [24] 1376 	movx	a,@dptr
      002498 8C 02            [24] 1377 	mov	ar2,r4
      00249A C4               [12] 1378 	swap	a
      00249B CA               [12] 1379 	xch	a,r2
      00249C C4               [12] 1380 	swap	a
      00249D 54 0F            [12] 1381 	anl	a,#0x0f
      00249F 6A               [12] 1382 	xrl	a,r2
      0024A0 CA               [12] 1383 	xch	a,r2
      0024A1 54 0F            [12] 1384 	anl	a,#0x0f
      0024A3 CA               [12] 1385 	xch	a,r2
      0024A4 6A               [12] 1386 	xrl	a,r2
      0024A5 CA               [12] 1387 	xch	a,r2
      0024A6 30 E3 02         [24] 1388 	jnb	acc.3,00159$
      0024A9 44 F0            [12] 1389 	orl	a,#0xf0
      0024AB                       1390 00159$:
      0024AB 74 0F            [12] 1391 	mov	a,#0x0f
      0024AD 5A               [12] 1392 	anl	a,r2
      0024AE 44 10            [12] 1393 	orl	a,#0x10
      0024B0 FB               [12] 1394 	mov	r3,a
                                   1395 ;	spi_and_bit_banging.c:444: low_byte = (dac_data & 0x0F) << 4;
      0024B1 53 04 0F         [24] 1396 	anl	ar4,#0x0f
      0024B4 EC               [12] 1397 	mov	a,r4
      0024B5 C4               [12] 1398 	swap	a
      0024B6 54 F0            [12] 1399 	anl	a,#0xf0
      0024B8 FD               [12] 1400 	mov	r5,a
                                   1401 ;	spi_and_bit_banging.c:448: P1_1 = 0;  // Select DAC
                                   1402 ;	assignBit
      0024B9 C2 91            [12] 1403 	clr	_P1_1
                                   1404 ;	spi_and_bit_banging.c:451: SPDAT = high_byte;
      0024BB 8B C5            [24] 1405 	mov	_SPDAT,r3
                                   1406 ;	spi_and_bit_banging.c:452: while (!(SPSTA & (1<<7))); 
      0024BD                       1407 00104$:
      0024BD E5 C4            [12] 1408 	mov	a,_SPSTA
      0024BF 30 E7 FB         [24] 1409 	jnb	acc.7,00104$
                                   1410 ;	spi_and_bit_banging.c:456: SPDAT = low_byte;
      0024C2 8D C5            [24] 1411 	mov	_SPDAT,r5
                                   1412 ;	spi_and_bit_banging.c:457: while (!(SPSTA & (1<<7))); 
      0024C4                       1413 00107$:
      0024C4 E5 C4            [12] 1414 	mov	a,_SPSTA
      0024C6 30 E7 FB         [24] 1415 	jnb	acc.7,00107$
                                   1416 ;	spi_and_bit_banging.c:459: P1_1 = 1;  // Deselect DAC
                                   1417 ;	assignBit
      0024C9 D2 91            [12] 1418 	setb	_P1_1
                                   1419 ;	spi_and_bit_banging.c:461: dac_value_index++;
      0024CB 90 04 0B         [24] 1420 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024CE E0               [24] 1421 	movx	a,@dptr
      0024CF 24 01            [12] 1422 	add	a,#0x01
      0024D1 F0               [24] 1423 	movx	@dptr,a
      0024D2 A3               [24] 1424 	inc	dptr
      0024D3 E0               [24] 1425 	movx	a,@dptr
      0024D4 34 00            [12] 1426 	addc	a,#0x00
      0024D6 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	spi_and_bit_banging.c:423: for(int i = 0; i<256; i++)
      0024D7 0E               [12] 1429 	inc	r6
      0024D8 BE 00 01         [24] 1430 	cjne	r6,#0x00,00162$
      0024DB 0F               [12] 1431 	inc	r7
      0024DC                       1432 00162$:
      0024DC 02 24 4F         [24] 1433 	ljmp	00115$
      0024DF                       1434 00110$:
                                   1435 ;	spi_and_bit_banging.c:464: number = number - 1;
      0024DF 90 04 0A         [24] 1436 	mov	dptr,#_mannual_spi_number_65536_54
      0024E2 E0               [24] 1437 	movx	a,@dptr
      0024E3 FF               [12] 1438 	mov	r7,a
      0024E4 14               [12] 1439 	dec	a
      0024E5 F0               [24] 1440 	movx	@dptr,a
                                   1441 ;	spi_and_bit_banging.c:466: }
      0024E6 02 24 44         [24] 1442 	ljmp	00111$
                                   1443 ;------------------------------------------------------------
                                   1444 ;Allocation info for local variables in function 'spi_init'
                                   1445 ;------------------------------------------------------------
                                   1446 ;	spi_and_bit_banging.c:477: void spi_init(void) 
                                   1447 ;	-----------------------------------------
                                   1448 ;	 function spi_init
                                   1449 ;	-----------------------------------------
      0024E9                       1450 _spi_init:
                                   1451 ;	spi_and_bit_banging.c:498: SPCON |= 0x10;
      0024E9 43 C3 10         [24] 1452 	orl	_SPCON,#0x10
                                   1453 ;	spi_and_bit_banging.c:499: SPCON |= 0x20;
      0024EC 43 C3 20         [24] 1454 	orl	_SPCON,#0x20
                                   1455 ;	spi_and_bit_banging.c:500: SPCON |= 0x40;
      0024EF 43 C3 40         [24] 1456 	orl	_SPCON,#0x40
                                   1457 ;	spi_and_bit_banging.c:507: }
      0024F2 22               [24] 1458 	ret
                                   1459 ;------------------------------------------------------------
                                   1460 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1461 ;------------------------------------------------------------
                                   1462 ;	spi_and_bit_banging.c:509: void bit_bang_spi_init(void) {
                                   1463 ;	-----------------------------------------
                                   1464 ;	 function bit_bang_spi_init
                                   1465 ;	-----------------------------------------
      0024F3                       1466 _bit_bang_spi_init:
                                   1467 ;	spi_and_bit_banging.c:510: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      0024F3 75 C3 00         [24] 1468 	mov	_SPCON,#0x00
                                   1469 ;	spi_and_bit_banging.c:511: SDA = DATA_HIGH;                 /* Set data line high */
                                   1470 ;	assignBit
      0024F6 D2 97            [12] 1471 	setb	_P1_7
                                   1472 ;	spi_and_bit_banging.c:512: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1473 ;	assignBit
      0024F8 C2 96            [12] 1474 	clr	_P1_6
                                   1475 ;	spi_and_bit_banging.c:513: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1476 ;	assignBit
      0024FA D2 91            [12] 1477 	setb	_P1_1
                                   1478 ;	spi_and_bit_banging.c:514: }
      0024FC 22               [24] 1479 	ret
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1482 ;------------------------------------------------------------
                                   1483 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_65'
                                   1484 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_66'
                                   1485 ;------------------------------------------------------------
                                   1486 ;	spi_and_bit_banging.c:516: int bit_bang_spi_write(uint16_t data) {
                                   1487 ;	-----------------------------------------
                                   1488 ;	 function bit_bang_spi_write
                                   1489 ;	-----------------------------------------
      0024FD                       1490 _bit_bang_spi_write:
      0024FD AF 83            [24] 1491 	mov	r7,dph
      0024FF E5 82            [12] 1492 	mov	a,dpl
      002501 90 04 0F         [24] 1493 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002504 F0               [24] 1494 	movx	@dptr,a
      002505 EF               [12] 1495 	mov	a,r7
      002506 A3               [24] 1496 	inc	dptr
      002507 F0               [24] 1497 	movx	@dptr,a
                                   1498 ;	spi_and_bit_banging.c:519: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1499 ;	assignBit
      002508 C2 91            [12] 1500 	clr	_P1_1
                                   1501 ;	spi_and_bit_banging.c:522: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00250A 7E 00            [12] 1502 	mov	r6,#0x00
      00250C 7F 00            [12] 1503 	mov	r7,#0x00
      00250E                       1504 00102$:
                                   1505 ;	spi_and_bit_banging.c:523: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      00250E 90 04 0F         [24] 1506 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002511 E0               [24] 1507 	movx	a,@dptr
      002512 FC               [12] 1508 	mov	r4,a
      002513 A3               [24] 1509 	inc	dptr
      002514 E0               [24] 1510 	movx	a,@dptr
      002515 FD               [12] 1511 	mov	r5,a
      002516 23               [12] 1512 	rl	a
      002517 54 01            [12] 1513 	anl	a,#0x01
      002519 24 FF            [12] 1514 	add	a,#0xff
      00251B 92 97            [24] 1515 	mov	_P1_7,c
                                   1516 ;	spi_and_bit_banging.c:524: SCL = CLOCK_HIGH;            /* Clock high */
                                   1517 ;	assignBit
      00251D D2 96            [12] 1518 	setb	_P1_6
                                   1519 ;	spi_and_bit_banging.c:525: SCL = CLOCK_LOW;             /* Clock low */
                                   1520 ;	assignBit
      00251F C2 96            [12] 1521 	clr	_P1_6
                                   1522 ;	spi_and_bit_banging.c:526: data <<= 1;                  /* Shift to next bit */
      002521 EC               [12] 1523 	mov	a,r4
      002522 2C               [12] 1524 	add	a,r4
      002523 FC               [12] 1525 	mov	r4,a
      002524 ED               [12] 1526 	mov	a,r5
      002525 33               [12] 1527 	rlc	a
      002526 FD               [12] 1528 	mov	r5,a
      002527 90 04 0F         [24] 1529 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      00252A EC               [12] 1530 	mov	a,r4
      00252B F0               [24] 1531 	movx	@dptr,a
      00252C ED               [12] 1532 	mov	a,r5
      00252D A3               [24] 1533 	inc	dptr
      00252E F0               [24] 1534 	movx	@dptr,a
                                   1535 ;	spi_and_bit_banging.c:522: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00252F 0E               [12] 1536 	inc	r6
      002530 BE 00 01         [24] 1537 	cjne	r6,#0x00,00115$
      002533 0F               [12] 1538 	inc	r7
      002534                       1539 00115$:
      002534 C3               [12] 1540 	clr	c
      002535 EE               [12] 1541 	mov	a,r6
      002536 94 10            [12] 1542 	subb	a,#0x10
      002538 EF               [12] 1543 	mov	a,r7
      002539 94 00            [12] 1544 	subb	a,#0x00
      00253B 40 D1            [24] 1545 	jc	00102$
                                   1546 ;	spi_and_bit_banging.c:530: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1547 ;	assignBit
      00253D D2 91            [12] 1548 	setb	_P1_1
                                   1549 ;	spi_and_bit_banging.c:531: SCL = CLOCK_LOW;                 /* Clock low */
                                   1550 ;	assignBit
      00253F C2 96            [12] 1551 	clr	_P1_6
                                   1552 ;	spi_and_bit_banging.c:532: SDA = DATA_HIGH;                 /* Data high */
                                   1553 ;	assignBit
      002541 D2 97            [12] 1554 	setb	_P1_7
                                   1555 ;	spi_and_bit_banging.c:534: return 0;
      002543 90 00 00         [24] 1556 	mov	dptr,#0x0000
                                   1557 ;	spi_and_bit_banging.c:535: }
      002546 22               [24] 1558 	ret
                                   1559 ;------------------------------------------------------------
                                   1560 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1561 ;------------------------------------------------------------
                                   1562 ;	spi_and_bit_banging.c:542: void spi_transmission_start(void)
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function spi_transmission_start
                                   1565 ;	-----------------------------------------
      002547                       1566 _spi_transmission_start:
                                   1567 ;	spi_and_bit_banging.c:544: SPCON |= SPI_ENABLE;           // Enable SPI
      002547 43 C3 40         [24] 1568 	orl	_SPCON,#0x40
                                   1569 ;	spi_and_bit_banging.c:545: P1_1 = 0;
                                   1570 ;	assignBit
      00254A C2 91            [12] 1571 	clr	_P1_1
                                   1572 ;	spi_and_bit_banging.c:546: }
      00254C 22               [24] 1573 	ret
                                   1574 ;------------------------------------------------------------
                                   1575 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1576 ;------------------------------------------------------------
                                   1577 ;number                    Allocated with name '_spi_triangular_wave_number_65536_71'
                                   1578 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_72'
                                   1579 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_72'
                                   1580 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_72'
                                   1581 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_72'
                                   1582 ;i                         Allocated with name '_spi_triangular_wave_i_196608_74'
                                   1583 ;------------------------------------------------------------
                                   1584 ;	spi_and_bit_banging.c:548: void spi_triangular_wave(int number)
                                   1585 ;	-----------------------------------------
                                   1586 ;	 function spi_triangular_wave
                                   1587 ;	-----------------------------------------
      00254D                       1588 _spi_triangular_wave:
      00254D AF 83            [24] 1589 	mov	r7,dph
      00254F E5 82            [12] 1590 	mov	a,dpl
      002551 90 04 11         [24] 1591 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002554 F0               [24] 1592 	movx	@dptr,a
      002555 EF               [12] 1593 	mov	a,r7
      002556 A3               [24] 1594 	inc	dptr
      002557 F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	spi_and_bit_banging.c:550: int dac_value_index = 0;
      002558 90 04 13         [24] 1597 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00255B E4               [12] 1598 	clr	a
      00255C F0               [24] 1599 	movx	@dptr,a
      00255D A3               [24] 1600 	inc	dptr
      00255E F0               [24] 1601 	movx	@dptr,a
                                   1602 ;	spi_and_bit_banging.c:551: int dac_data = 0;
      00255F 90 04 15         [24] 1603 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      002562 F0               [24] 1604 	movx	@dptr,a
      002563 A3               [24] 1605 	inc	dptr
      002564 F0               [24] 1606 	movx	@dptr,a
                                   1607 ;	spi_and_bit_banging.c:553: while(number>0)
      002565 90 04 11         [24] 1608 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002568 E0               [24] 1609 	movx	a,@dptr
      002569 FE               [12] 1610 	mov	r6,a
      00256A A3               [24] 1611 	inc	dptr
      00256B E0               [24] 1612 	movx	a,@dptr
      00256C FF               [12] 1613 	mov	r7,a
      00256D                       1614 00111$:
      00256D C3               [12] 1615 	clr	c
      00256E E4               [12] 1616 	clr	a
      00256F 9E               [12] 1617 	subb	a,r6
      002570 74 80            [12] 1618 	mov	a,#(0x00 ^ 0x80)
      002572 8F F0            [24] 1619 	mov	b,r7
      002574 63 F0 80         [24] 1620 	xrl	b,#0x80
      002577 95 F0            [12] 1621 	subb	a,b
      002579 40 03            [24] 1622 	jc	00157$
      00257B 02 26 22         [24] 1623 	ljmp	00129$
      00257E                       1624 00157$:
                                   1625 ;	spi_and_bit_banging.c:555: for(int i = 0; i<512; i++)
      00257E 7C 00            [12] 1626 	mov	r4,#0x00
      002580 7D 00            [12] 1627 	mov	r5,#0x00
      002582                       1628 00115$:
      002582 C3               [12] 1629 	clr	c
      002583 ED               [12] 1630 	mov	a,r5
      002584 64 80            [12] 1631 	xrl	a,#0x80
      002586 94 82            [12] 1632 	subb	a,#0x82
      002588 40 03            [24] 1633 	jc	00158$
      00258A 02 26 12         [24] 1634 	ljmp	00110$
      00258D                       1635 00158$:
                                   1636 ;	spi_and_bit_banging.c:558: if(dac_value_index < 512)
      00258D 90 04 13         [24] 1637 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002590 E0               [24] 1638 	movx	a,@dptr
      002591 FA               [12] 1639 	mov	r2,a
      002592 A3               [24] 1640 	inc	dptr
      002593 E0               [24] 1641 	movx	a,@dptr
      002594 FB               [12] 1642 	mov	r3,a
      002595 C3               [12] 1643 	clr	c
      002596 64 80            [12] 1644 	xrl	a,#0x80
      002598 94 82            [12] 1645 	subb	a,#0x82
      00259A 50 21            [24] 1646 	jnc	00102$
                                   1647 ;	spi_and_bit_banging.c:562: dac_data = trig_dac_values[dac_value_index];
      00259C EA               [12] 1648 	mov	a,r2
      00259D 2A               [12] 1649 	add	a,r2
      00259E FA               [12] 1650 	mov	r2,a
      00259F EB               [12] 1651 	mov	a,r3
      0025A0 33               [12] 1652 	rlc	a
      0025A1 FB               [12] 1653 	mov	r3,a
      0025A2 EA               [12] 1654 	mov	a,r2
      0025A3 24 B9            [12] 1655 	add	a,#_trig_dac_values
      0025A5 F5 82            [12] 1656 	mov	dpl,a
      0025A7 EB               [12] 1657 	mov	a,r3
      0025A8 34 33            [12] 1658 	addc	a,#(_trig_dac_values >> 8)
      0025AA F5 83            [12] 1659 	mov	dph,a
      0025AC E4               [12] 1660 	clr	a
      0025AD 93               [24] 1661 	movc	a,@a+dptr
      0025AE FA               [12] 1662 	mov	r2,a
      0025AF A3               [24] 1663 	inc	dptr
      0025B0 E4               [12] 1664 	clr	a
      0025B1 93               [24] 1665 	movc	a,@a+dptr
      0025B2 FB               [12] 1666 	mov	r3,a
      0025B3 90 04 15         [24] 1667 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025B6 EA               [12] 1668 	mov	a,r2
      0025B7 F0               [24] 1669 	movx	@dptr,a
      0025B8 EB               [12] 1670 	mov	a,r3
      0025B9 A3               [24] 1671 	inc	dptr
      0025BA F0               [24] 1672 	movx	@dptr,a
      0025BB 80 07            [24] 1673 	sjmp	00103$
      0025BD                       1674 00102$:
                                   1675 ;	spi_and_bit_banging.c:566: dac_value_index = 0;  // Reset index for next cycle
      0025BD 90 04 13         [24] 1676 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025C0 E4               [12] 1677 	clr	a
      0025C1 F0               [24] 1678 	movx	@dptr,a
      0025C2 A3               [24] 1679 	inc	dptr
      0025C3 F0               [24] 1680 	movx	@dptr,a
      0025C4                       1681 00103$:
                                   1682 ;	spi_and_bit_banging.c:573: ((dac_data >> 4) & 0x0F);
      0025C4 90 04 15         [24] 1683 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025C7 E0               [24] 1684 	movx	a,@dptr
      0025C8 FA               [12] 1685 	mov	r2,a
      0025C9 A3               [24] 1686 	inc	dptr
      0025CA E0               [24] 1687 	movx	a,@dptr
      0025CB 8A 00            [24] 1688 	mov	ar0,r2
      0025CD C4               [12] 1689 	swap	a
      0025CE C8               [12] 1690 	xch	a,r0
      0025CF C4               [12] 1691 	swap	a
      0025D0 54 0F            [12] 1692 	anl	a,#0x0f
      0025D2 68               [12] 1693 	xrl	a,r0
      0025D3 C8               [12] 1694 	xch	a,r0
      0025D4 54 0F            [12] 1695 	anl	a,#0x0f
      0025D6 C8               [12] 1696 	xch	a,r0
      0025D7 68               [12] 1697 	xrl	a,r0
      0025D8 C8               [12] 1698 	xch	a,r0
      0025D9 30 E3 02         [24] 1699 	jnb	acc.3,00160$
      0025DC 44 F0            [12] 1700 	orl	a,#0xf0
      0025DE                       1701 00160$:
      0025DE 74 0F            [12] 1702 	mov	a,#0x0f
      0025E0 58               [12] 1703 	anl	a,r0
      0025E1 44 10            [12] 1704 	orl	a,#0x10
      0025E3 F9               [12] 1705 	mov	r1,a
                                   1706 ;	spi_and_bit_banging.c:576: low_byte = (dac_data & 0x0F) << 4;
      0025E4 53 02 0F         [24] 1707 	anl	ar2,#0x0f
      0025E7 EA               [12] 1708 	mov	a,r2
      0025E8 C4               [12] 1709 	swap	a
      0025E9 54 F0            [12] 1710 	anl	a,#0xf0
      0025EB FB               [12] 1711 	mov	r3,a
                                   1712 ;	spi_and_bit_banging.c:580: P1_1 = 0;  // Select DAC
                                   1713 ;	assignBit
      0025EC C2 91            [12] 1714 	clr	_P1_1
                                   1715 ;	spi_and_bit_banging.c:583: SPDAT = high_byte;
      0025EE 89 C5            [24] 1716 	mov	_SPDAT,r1
                                   1717 ;	spi_and_bit_banging.c:584: while (!(SPSTA & (1<<7))); 
      0025F0                       1718 00104$:
      0025F0 E5 C4            [12] 1719 	mov	a,_SPSTA
      0025F2 30 E7 FB         [24] 1720 	jnb	acc.7,00104$
                                   1721 ;	spi_and_bit_banging.c:588: SPDAT = low_byte;
      0025F5 8B C5            [24] 1722 	mov	_SPDAT,r3
                                   1723 ;	spi_and_bit_banging.c:589: while (!(SPSTA & (1<<7))); 
      0025F7                       1724 00107$:
      0025F7 E5 C4            [12] 1725 	mov	a,_SPSTA
      0025F9 30 E7 FB         [24] 1726 	jnb	acc.7,00107$
                                   1727 ;	spi_and_bit_banging.c:591: P1_1 = 1;  // Deselect DAC
                                   1728 ;	assignBit
      0025FC D2 91            [12] 1729 	setb	_P1_1
                                   1730 ;	spi_and_bit_banging.c:593: dac_value_index++;
      0025FE 90 04 13         [24] 1731 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002601 E0               [24] 1732 	movx	a,@dptr
      002602 24 01            [12] 1733 	add	a,#0x01
      002604 F0               [24] 1734 	movx	@dptr,a
      002605 A3               [24] 1735 	inc	dptr
      002606 E0               [24] 1736 	movx	a,@dptr
      002607 34 00            [12] 1737 	addc	a,#0x00
      002609 F0               [24] 1738 	movx	@dptr,a
                                   1739 ;	spi_and_bit_banging.c:555: for(int i = 0; i<512; i++)
      00260A 0C               [12] 1740 	inc	r4
      00260B BC 00 01         [24] 1741 	cjne	r4,#0x00,00163$
      00260E 0D               [12] 1742 	inc	r5
      00260F                       1743 00163$:
      00260F 02 25 82         [24] 1744 	ljmp	00115$
      002612                       1745 00110$:
                                   1746 ;	spi_and_bit_banging.c:596: number = number - 1;
      002612 1E               [12] 1747 	dec	r6
      002613 BE FF 01         [24] 1748 	cjne	r6,#0xff,00164$
      002616 1F               [12] 1749 	dec	r7
      002617                       1750 00164$:
      002617 90 04 11         [24] 1751 	mov	dptr,#_spi_triangular_wave_number_65536_71
      00261A EE               [12] 1752 	mov	a,r6
      00261B F0               [24] 1753 	movx	@dptr,a
      00261C EF               [12] 1754 	mov	a,r7
      00261D A3               [24] 1755 	inc	dptr
      00261E F0               [24] 1756 	movx	@dptr,a
      00261F 02 25 6D         [24] 1757 	ljmp	00111$
      002622                       1758 00129$:
      002622 90 04 11         [24] 1759 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002625 EE               [12] 1760 	mov	a,r6
      002626 F0               [24] 1761 	movx	@dptr,a
      002627 EF               [12] 1762 	mov	a,r7
      002628 A3               [24] 1763 	inc	dptr
      002629 F0               [24] 1764 	movx	@dptr,a
                                   1765 ;	spi_and_bit_banging.c:599: }
      00262A 22               [24] 1766 	ret
                                   1767 ;------------------------------------------------------------
                                   1768 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1769 ;------------------------------------------------------------
                                   1770 ;number                    Allocated with name '_spi_ramp_signal_number_65536_78'
                                   1771 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_79'
                                   1772 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_79'
                                   1773 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_79'
                                   1774 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_79'
                                   1775 ;i                         Allocated with name '_spi_ramp_signal_i_196608_81'
                                   1776 ;------------------------------------------------------------
                                   1777 ;	spi_and_bit_banging.c:601: void spi_ramp_signal(int number)
                                   1778 ;	-----------------------------------------
                                   1779 ;	 function spi_ramp_signal
                                   1780 ;	-----------------------------------------
      00262B                       1781 _spi_ramp_signal:
      00262B AF 83            [24] 1782 	mov	r7,dph
      00262D E5 82            [12] 1783 	mov	a,dpl
      00262F 90 04 17         [24] 1784 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002632 F0               [24] 1785 	movx	@dptr,a
      002633 EF               [12] 1786 	mov	a,r7
      002634 A3               [24] 1787 	inc	dptr
      002635 F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	spi_and_bit_banging.c:603: int dac_value_index = 0;
      002636 90 04 19         [24] 1790 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      002639 E4               [12] 1791 	clr	a
      00263A F0               [24] 1792 	movx	@dptr,a
      00263B A3               [24] 1793 	inc	dptr
      00263C F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	spi_and_bit_banging.c:604: int dac_data = 0;
      00263D 90 04 1B         [24] 1796 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002640 F0               [24] 1797 	movx	@dptr,a
      002641 A3               [24] 1798 	inc	dptr
      002642 F0               [24] 1799 	movx	@dptr,a
                                   1800 ;	spi_and_bit_banging.c:606: while(number>0)
      002643 90 04 17         [24] 1801 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002646 E0               [24] 1802 	movx	a,@dptr
      002647 FE               [12] 1803 	mov	r6,a
      002648 A3               [24] 1804 	inc	dptr
      002649 E0               [24] 1805 	movx	a,@dptr
      00264A FF               [12] 1806 	mov	r7,a
      00264B                       1807 00111$:
      00264B C3               [12] 1808 	clr	c
      00264C E4               [12] 1809 	clr	a
      00264D 9E               [12] 1810 	subb	a,r6
      00264E 74 80            [12] 1811 	mov	a,#(0x00 ^ 0x80)
      002650 8F F0            [24] 1812 	mov	b,r7
      002652 63 F0 80         [24] 1813 	xrl	b,#0x80
      002655 95 F0            [12] 1814 	subb	a,b
      002657 40 03            [24] 1815 	jc	00157$
      002659 02 27 00         [24] 1816 	ljmp	00129$
      00265C                       1817 00157$:
                                   1818 ;	spi_and_bit_banging.c:608: for(int i = 0; i<256; i++)
      00265C 7C 00            [12] 1819 	mov	r4,#0x00
      00265E 7D 00            [12] 1820 	mov	r5,#0x00
      002660                       1821 00115$:
      002660 C3               [12] 1822 	clr	c
      002661 ED               [12] 1823 	mov	a,r5
      002662 64 80            [12] 1824 	xrl	a,#0x80
      002664 94 81            [12] 1825 	subb	a,#0x81
      002666 40 03            [24] 1826 	jc	00158$
      002668 02 26 F0         [24] 1827 	ljmp	00110$
      00266B                       1828 00158$:
                                   1829 ;	spi_and_bit_banging.c:611: if(dac_value_index < 256)
      00266B 90 04 19         [24] 1830 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00266E E0               [24] 1831 	movx	a,@dptr
      00266F FA               [12] 1832 	mov	r2,a
      002670 A3               [24] 1833 	inc	dptr
      002671 E0               [24] 1834 	movx	a,@dptr
      002672 FB               [12] 1835 	mov	r3,a
      002673 C3               [12] 1836 	clr	c
      002674 64 80            [12] 1837 	xrl	a,#0x80
      002676 94 81            [12] 1838 	subb	a,#0x81
      002678 50 21            [24] 1839 	jnc	00102$
                                   1840 ;	spi_and_bit_banging.c:615: dac_data = trig_dac_values[dac_value_index];
      00267A EA               [12] 1841 	mov	a,r2
      00267B 2A               [12] 1842 	add	a,r2
      00267C FA               [12] 1843 	mov	r2,a
      00267D EB               [12] 1844 	mov	a,r3
      00267E 33               [12] 1845 	rlc	a
      00267F FB               [12] 1846 	mov	r3,a
      002680 EA               [12] 1847 	mov	a,r2
      002681 24 B9            [12] 1848 	add	a,#_trig_dac_values
      002683 F5 82            [12] 1849 	mov	dpl,a
      002685 EB               [12] 1850 	mov	a,r3
      002686 34 33            [12] 1851 	addc	a,#(_trig_dac_values >> 8)
      002688 F5 83            [12] 1852 	mov	dph,a
      00268A E4               [12] 1853 	clr	a
      00268B 93               [24] 1854 	movc	a,@a+dptr
      00268C FA               [12] 1855 	mov	r2,a
      00268D A3               [24] 1856 	inc	dptr
      00268E E4               [12] 1857 	clr	a
      00268F 93               [24] 1858 	movc	a,@a+dptr
      002690 FB               [12] 1859 	mov	r3,a
      002691 90 04 1B         [24] 1860 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      002694 EA               [12] 1861 	mov	a,r2
      002695 F0               [24] 1862 	movx	@dptr,a
      002696 EB               [12] 1863 	mov	a,r3
      002697 A3               [24] 1864 	inc	dptr
      002698 F0               [24] 1865 	movx	@dptr,a
      002699 80 07            [24] 1866 	sjmp	00103$
      00269B                       1867 00102$:
                                   1868 ;	spi_and_bit_banging.c:619: dac_value_index = 0;  // Reset index for next cycle
      00269B 90 04 19         [24] 1869 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00269E E4               [12] 1870 	clr	a
      00269F F0               [24] 1871 	movx	@dptr,a
      0026A0 A3               [24] 1872 	inc	dptr
      0026A1 F0               [24] 1873 	movx	@dptr,a
      0026A2                       1874 00103$:
                                   1875 ;	spi_and_bit_banging.c:626: ((dac_data >> 4) & 0x0F);
      0026A2 90 04 1B         [24] 1876 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026A5 E0               [24] 1877 	movx	a,@dptr
      0026A6 FA               [12] 1878 	mov	r2,a
      0026A7 A3               [24] 1879 	inc	dptr
      0026A8 E0               [24] 1880 	movx	a,@dptr
      0026A9 8A 00            [24] 1881 	mov	ar0,r2
      0026AB C4               [12] 1882 	swap	a
      0026AC C8               [12] 1883 	xch	a,r0
      0026AD C4               [12] 1884 	swap	a
      0026AE 54 0F            [12] 1885 	anl	a,#0x0f
      0026B0 68               [12] 1886 	xrl	a,r0
      0026B1 C8               [12] 1887 	xch	a,r0
      0026B2 54 0F            [12] 1888 	anl	a,#0x0f
      0026B4 C8               [12] 1889 	xch	a,r0
      0026B5 68               [12] 1890 	xrl	a,r0
      0026B6 C8               [12] 1891 	xch	a,r0
      0026B7 30 E3 02         [24] 1892 	jnb	acc.3,00160$
      0026BA 44 F0            [12] 1893 	orl	a,#0xf0
      0026BC                       1894 00160$:
      0026BC 74 0F            [12] 1895 	mov	a,#0x0f
      0026BE 58               [12] 1896 	anl	a,r0
      0026BF 44 10            [12] 1897 	orl	a,#0x10
      0026C1 F9               [12] 1898 	mov	r1,a
                                   1899 ;	spi_and_bit_banging.c:629: low_byte = (dac_data & 0x0F) << 4;
      0026C2 53 02 0F         [24] 1900 	anl	ar2,#0x0f
      0026C5 EA               [12] 1901 	mov	a,r2
      0026C6 C4               [12] 1902 	swap	a
      0026C7 54 F0            [12] 1903 	anl	a,#0xf0
      0026C9 FB               [12] 1904 	mov	r3,a
                                   1905 ;	spi_and_bit_banging.c:633: P1_1 = 0;  // Select DAC
                                   1906 ;	assignBit
      0026CA C2 91            [12] 1907 	clr	_P1_1
                                   1908 ;	spi_and_bit_banging.c:636: SPDAT = high_byte;
      0026CC 89 C5            [24] 1909 	mov	_SPDAT,r1
                                   1910 ;	spi_and_bit_banging.c:637: while (!(SPSTA & (1<<7))); 
      0026CE                       1911 00104$:
      0026CE E5 C4            [12] 1912 	mov	a,_SPSTA
      0026D0 30 E7 FB         [24] 1913 	jnb	acc.7,00104$
                                   1914 ;	spi_and_bit_banging.c:641: SPDAT = low_byte;
      0026D3 8B C5            [24] 1915 	mov	_SPDAT,r3
                                   1916 ;	spi_and_bit_banging.c:642: while (!(SPSTA & (1<<7))); 
      0026D5                       1917 00107$:
      0026D5 E5 C4            [12] 1918 	mov	a,_SPSTA
      0026D7 30 E7 FB         [24] 1919 	jnb	acc.7,00107$
                                   1920 ;	spi_and_bit_banging.c:644: P1_1 = 1;  // Deselect DAC
                                   1921 ;	assignBit
      0026DA D2 91            [12] 1922 	setb	_P1_1
                                   1923 ;	spi_and_bit_banging.c:646: dac_value_index++;
      0026DC 90 04 19         [24] 1924 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026DF E0               [24] 1925 	movx	a,@dptr
      0026E0 24 01            [12] 1926 	add	a,#0x01
      0026E2 F0               [24] 1927 	movx	@dptr,a
      0026E3 A3               [24] 1928 	inc	dptr
      0026E4 E0               [24] 1929 	movx	a,@dptr
      0026E5 34 00            [12] 1930 	addc	a,#0x00
      0026E7 F0               [24] 1931 	movx	@dptr,a
                                   1932 ;	spi_and_bit_banging.c:608: for(int i = 0; i<256; i++)
      0026E8 0C               [12] 1933 	inc	r4
      0026E9 BC 00 01         [24] 1934 	cjne	r4,#0x00,00163$
      0026EC 0D               [12] 1935 	inc	r5
      0026ED                       1936 00163$:
      0026ED 02 26 60         [24] 1937 	ljmp	00115$
      0026F0                       1938 00110$:
                                   1939 ;	spi_and_bit_banging.c:649: number = number - 1;
      0026F0 1E               [12] 1940 	dec	r6
      0026F1 BE FF 01         [24] 1941 	cjne	r6,#0xff,00164$
      0026F4 1F               [12] 1942 	dec	r7
      0026F5                       1943 00164$:
      0026F5 90 04 17         [24] 1944 	mov	dptr,#_spi_ramp_signal_number_65536_78
      0026F8 EE               [12] 1945 	mov	a,r6
      0026F9 F0               [24] 1946 	movx	@dptr,a
      0026FA EF               [12] 1947 	mov	a,r7
      0026FB A3               [24] 1948 	inc	dptr
      0026FC F0               [24] 1949 	movx	@dptr,a
      0026FD 02 26 4B         [24] 1950 	ljmp	00111$
      002700                       1951 00129$:
      002700 90 04 17         [24] 1952 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002703 EE               [12] 1953 	mov	a,r6
      002704 F0               [24] 1954 	movx	@dptr,a
      002705 EF               [12] 1955 	mov	a,r7
      002706 A3               [24] 1956 	inc	dptr
      002707 F0               [24] 1957 	movx	@dptr,a
                                   1958 ;	spi_and_bit_banging.c:652: }
      002708 22               [24] 1959 	ret
                                   1960 	.area CSEG    (CODE)
                                   1961 	.area CONST   (CODE)
      0031B9                       1962 _dac_values:
      0031B9 80 00                 1963 	.byte #0x80, #0x00	;  128
      0031BB 83 00                 1964 	.byte #0x83, #0x00	;  131
      0031BD 86 00                 1965 	.byte #0x86, #0x00	;  134
      0031BF 89 00                 1966 	.byte #0x89, #0x00	;  137
      0031C1 8C 00                 1967 	.byte #0x8c, #0x00	;  140
      0031C3 90 00                 1968 	.byte #0x90, #0x00	;  144
      0031C5 93 00                 1969 	.byte #0x93, #0x00	;  147
      0031C7 96 00                 1970 	.byte #0x96, #0x00	;  150
      0031C9 99 00                 1971 	.byte #0x99, #0x00	;  153
      0031CB 9C 00                 1972 	.byte #0x9c, #0x00	;  156
      0031CD 9F 00                 1973 	.byte #0x9f, #0x00	;  159
      0031CF A2 00                 1974 	.byte #0xa2, #0x00	;  162
      0031D1 A5 00                 1975 	.byte #0xa5, #0x00	;  165
      0031D3 A8 00                 1976 	.byte #0xa8, #0x00	;  168
      0031D5 AB 00                 1977 	.byte #0xab, #0x00	;  171
      0031D7 AE 00                 1978 	.byte #0xae, #0x00	;  174
      0031D9 B1 00                 1979 	.byte #0xb1, #0x00	;  177
      0031DB B3 00                 1980 	.byte #0xb3, #0x00	;  179
      0031DD B6 00                 1981 	.byte #0xb6, #0x00	;  182
      0031DF B9 00                 1982 	.byte #0xb9, #0x00	;  185
      0031E1 BC 00                 1983 	.byte #0xbc, #0x00	;  188
      0031E3 BF 00                 1984 	.byte #0xbf, #0x00	;  191
      0031E5 C1 00                 1985 	.byte #0xc1, #0x00	;  193
      0031E7 C4 00                 1986 	.byte #0xc4, #0x00	;  196
      0031E9 C7 00                 1987 	.byte #0xc7, #0x00	;  199
      0031EB C9 00                 1988 	.byte #0xc9, #0x00	;  201
      0031ED CC 00                 1989 	.byte #0xcc, #0x00	;  204
      0031EF CE 00                 1990 	.byte #0xce, #0x00	;  206
      0031F1 D1 00                 1991 	.byte #0xd1, #0x00	;  209
      0031F3 D3 00                 1992 	.byte #0xd3, #0x00	;  211
      0031F5 D5 00                 1993 	.byte #0xd5, #0x00	;  213
      0031F7 D8 00                 1994 	.byte #0xd8, #0x00	;  216
      0031F9 DA 00                 1995 	.byte #0xda, #0x00	;  218
      0031FB DC 00                 1996 	.byte #0xdc, #0x00	;  220
      0031FD DE 00                 1997 	.byte #0xde, #0x00	;  222
      0031FF E0 00                 1998 	.byte #0xe0, #0x00	;  224
      003201 E2 00                 1999 	.byte #0xe2, #0x00	;  226
      003203 E4 00                 2000 	.byte #0xe4, #0x00	;  228
      003205 E6 00                 2001 	.byte #0xe6, #0x00	;  230
      003207 E8 00                 2002 	.byte #0xe8, #0x00	;  232
      003209 EA 00                 2003 	.byte #0xea, #0x00	;  234
      00320B EB 00                 2004 	.byte #0xeb, #0x00	;  235
      00320D ED 00                 2005 	.byte #0xed, #0x00	;  237
      00320F EF 00                 2006 	.byte #0xef, #0x00	;  239
      003211 F0 00                 2007 	.byte #0xf0, #0x00	;  240
      003213 F1 00                 2008 	.byte #0xf1, #0x00	;  241
      003215 F3 00                 2009 	.byte #0xf3, #0x00	;  243
      003217 F4 00                 2010 	.byte #0xf4, #0x00	;  244
      003219 F5 00                 2011 	.byte #0xf5, #0x00	;  245
      00321B F6 00                 2012 	.byte #0xf6, #0x00	;  246
      00321D F8 00                 2013 	.byte #0xf8, #0x00	;  248
      00321F F9 00                 2014 	.byte #0xf9, #0x00	;  249
      003221 FA 00                 2015 	.byte #0xfa, #0x00	;  250
      003223 FA 00                 2016 	.byte #0xfa, #0x00	;  250
      003225 FB 00                 2017 	.byte #0xfb, #0x00	;  251
      003227 FC 00                 2018 	.byte #0xfc, #0x00	;  252
      003229 FD 00                 2019 	.byte #0xfd, #0x00	;  253
      00322B FD 00                 2020 	.byte #0xfd, #0x00	;  253
      00322D FE 00                 2021 	.byte #0xfe, #0x00	;  254
      00322F FE 00                 2022 	.byte #0xfe, #0x00	;  254
      003231 FE 00                 2023 	.byte #0xfe, #0x00	;  254
      003233 FF 00                 2024 	.byte #0xff, #0x00	;  255
      003235 FF 00                 2025 	.byte #0xff, #0x00	;  255
      003237 FF 00                 2026 	.byte #0xff, #0x00	;  255
      003239 FF 00                 2027 	.byte #0xff, #0x00	;  255
      00323B FF 00                 2028 	.byte #0xff, #0x00	;  255
      00323D FF 00                 2029 	.byte #0xff, #0x00	;  255
      00323F FF 00                 2030 	.byte #0xff, #0x00	;  255
      003241 FE 00                 2031 	.byte #0xfe, #0x00	;  254
      003243 FE 00                 2032 	.byte #0xfe, #0x00	;  254
      003245 FE 00                 2033 	.byte #0xfe, #0x00	;  254
      003247 FD 00                 2034 	.byte #0xfd, #0x00	;  253
      003249 FD 00                 2035 	.byte #0xfd, #0x00	;  253
      00324B FC 00                 2036 	.byte #0xfc, #0x00	;  252
      00324D FB 00                 2037 	.byte #0xfb, #0x00	;  251
      00324F FA 00                 2038 	.byte #0xfa, #0x00	;  250
      003251 FA 00                 2039 	.byte #0xfa, #0x00	;  250
      003253 F9 00                 2040 	.byte #0xf9, #0x00	;  249
      003255 F8 00                 2041 	.byte #0xf8, #0x00	;  248
      003257 F6 00                 2042 	.byte #0xf6, #0x00	;  246
      003259 F5 00                 2043 	.byte #0xf5, #0x00	;  245
      00325B F4 00                 2044 	.byte #0xf4, #0x00	;  244
      00325D F3 00                 2045 	.byte #0xf3, #0x00	;  243
      00325F F1 00                 2046 	.byte #0xf1, #0x00	;  241
      003261 F0 00                 2047 	.byte #0xf0, #0x00	;  240
      003263 EF 00                 2048 	.byte #0xef, #0x00	;  239
      003265 ED 00                 2049 	.byte #0xed, #0x00	;  237
      003267 EB 00                 2050 	.byte #0xeb, #0x00	;  235
      003269 EA 00                 2051 	.byte #0xea, #0x00	;  234
      00326B E8 00                 2052 	.byte #0xe8, #0x00	;  232
      00326D E6 00                 2053 	.byte #0xe6, #0x00	;  230
      00326F E4 00                 2054 	.byte #0xe4, #0x00	;  228
      003271 E2 00                 2055 	.byte #0xe2, #0x00	;  226
      003273 E0 00                 2056 	.byte #0xe0, #0x00	;  224
      003275 DE 00                 2057 	.byte #0xde, #0x00	;  222
      003277 DC 00                 2058 	.byte #0xdc, #0x00	;  220
      003279 DA 00                 2059 	.byte #0xda, #0x00	;  218
      00327B D8 00                 2060 	.byte #0xd8, #0x00	;  216
      00327D D5 00                 2061 	.byte #0xd5, #0x00	;  213
      00327F D3 00                 2062 	.byte #0xd3, #0x00	;  211
      003281 D1 00                 2063 	.byte #0xd1, #0x00	;  209
      003283 CE 00                 2064 	.byte #0xce, #0x00	;  206
      003285 CC 00                 2065 	.byte #0xcc, #0x00	;  204
      003287 C9 00                 2066 	.byte #0xc9, #0x00	;  201
      003289 C7 00                 2067 	.byte #0xc7, #0x00	;  199
      00328B C4 00                 2068 	.byte #0xc4, #0x00	;  196
      00328D C1 00                 2069 	.byte #0xc1, #0x00	;  193
      00328F BF 00                 2070 	.byte #0xbf, #0x00	;  191
      003291 BC 00                 2071 	.byte #0xbc, #0x00	;  188
      003293 B9 00                 2072 	.byte #0xb9, #0x00	;  185
      003295 B6 00                 2073 	.byte #0xb6, #0x00	;  182
      003297 B3 00                 2074 	.byte #0xb3, #0x00	;  179
      003299 B1 00                 2075 	.byte #0xb1, #0x00	;  177
      00329B AE 00                 2076 	.byte #0xae, #0x00	;  174
      00329D AB 00                 2077 	.byte #0xab, #0x00	;  171
      00329F A8 00                 2078 	.byte #0xa8, #0x00	;  168
      0032A1 A5 00                 2079 	.byte #0xa5, #0x00	;  165
      0032A3 A2 00                 2080 	.byte #0xa2, #0x00	;  162
      0032A5 9F 00                 2081 	.byte #0x9f, #0x00	;  159
      0032A7 9C 00                 2082 	.byte #0x9c, #0x00	;  156
      0032A9 99 00                 2083 	.byte #0x99, #0x00	;  153
      0032AB 96 00                 2084 	.byte #0x96, #0x00	;  150
      0032AD 93 00                 2085 	.byte #0x93, #0x00	;  147
      0032AF 90 00                 2086 	.byte #0x90, #0x00	;  144
      0032B1 8C 00                 2087 	.byte #0x8c, #0x00	;  140
      0032B3 89 00                 2088 	.byte #0x89, #0x00	;  137
      0032B5 86 00                 2089 	.byte #0x86, #0x00	;  134
      0032B7 83 00                 2090 	.byte #0x83, #0x00	;  131
      0032B9 80 00                 2091 	.byte #0x80, #0x00	;  128
      0032BB 7D 00                 2092 	.byte #0x7d, #0x00	;  125
      0032BD 7A 00                 2093 	.byte #0x7a, #0x00	;  122
      0032BF 77 00                 2094 	.byte #0x77, #0x00	;  119
      0032C1 74 00                 2095 	.byte #0x74, #0x00	;  116
      0032C3 70 00                 2096 	.byte #0x70, #0x00	;  112
      0032C5 6D 00                 2097 	.byte #0x6d, #0x00	;  109
      0032C7 6A 00                 2098 	.byte #0x6a, #0x00	;  106
      0032C9 67 00                 2099 	.byte #0x67, #0x00	;  103
      0032CB 64 00                 2100 	.byte #0x64, #0x00	;  100
      0032CD 61 00                 2101 	.byte #0x61, #0x00	;  97
      0032CF 5E 00                 2102 	.byte #0x5e, #0x00	;  94
      0032D1 5B 00                 2103 	.byte #0x5b, #0x00	;  91
      0032D3 58 00                 2104 	.byte #0x58, #0x00	;  88
      0032D5 55 00                 2105 	.byte #0x55, #0x00	;  85
      0032D7 52 00                 2106 	.byte #0x52, #0x00	;  82
      0032D9 4F 00                 2107 	.byte #0x4f, #0x00	;  79
      0032DB 4D 00                 2108 	.byte #0x4d, #0x00	;  77
      0032DD 4A 00                 2109 	.byte #0x4a, #0x00	;  74
      0032DF 47 00                 2110 	.byte #0x47, #0x00	;  71
      0032E1 44 00                 2111 	.byte #0x44, #0x00	;  68
      0032E3 41 00                 2112 	.byte #0x41, #0x00	;  65
      0032E5 3F 00                 2113 	.byte #0x3f, #0x00	;  63
      0032E7 3C 00                 2114 	.byte #0x3c, #0x00	;  60
      0032E9 39 00                 2115 	.byte #0x39, #0x00	;  57
      0032EB 37 00                 2116 	.byte #0x37, #0x00	;  55
      0032ED 34 00                 2117 	.byte #0x34, #0x00	;  52
      0032EF 32 00                 2118 	.byte #0x32, #0x00	;  50
      0032F1 2F 00                 2119 	.byte #0x2f, #0x00	;  47
      0032F3 2D 00                 2120 	.byte #0x2d, #0x00	;  45
      0032F5 2B 00                 2121 	.byte #0x2b, #0x00	;  43
      0032F7 28 00                 2122 	.byte #0x28, #0x00	;  40
      0032F9 26 00                 2123 	.byte #0x26, #0x00	;  38
      0032FB 24 00                 2124 	.byte #0x24, #0x00	;  36
      0032FD 22 00                 2125 	.byte #0x22, #0x00	;  34
      0032FF 20 00                 2126 	.byte #0x20, #0x00	;  32
      003301 1E 00                 2127 	.byte #0x1e, #0x00	;  30
      003303 1C 00                 2128 	.byte #0x1c, #0x00	;  28
      003305 1A 00                 2129 	.byte #0x1a, #0x00	;  26
      003307 18 00                 2130 	.byte #0x18, #0x00	;  24
      003309 16 00                 2131 	.byte #0x16, #0x00	;  22
      00330B 15 00                 2132 	.byte #0x15, #0x00	;  21
      00330D 13 00                 2133 	.byte #0x13, #0x00	;  19
      00330F 11 00                 2134 	.byte #0x11, #0x00	;  17
      003311 10 00                 2135 	.byte #0x10, #0x00	;  16
      003313 0F 00                 2136 	.byte #0x0f, #0x00	;  15
      003315 0D 00                 2137 	.byte #0x0d, #0x00	;  13
      003317 0C 00                 2138 	.byte #0x0c, #0x00	;  12
      003319 0B 00                 2139 	.byte #0x0b, #0x00	;  11
      00331B 0A 00                 2140 	.byte #0x0a, #0x00	;  10
      00331D 08 00                 2141 	.byte #0x08, #0x00	;  8
      00331F 07 00                 2142 	.byte #0x07, #0x00	;  7
      003321 06 00                 2143 	.byte #0x06, #0x00	;  6
      003323 06 00                 2144 	.byte #0x06, #0x00	;  6
      003325 05 00                 2145 	.byte #0x05, #0x00	;  5
      003327 04 00                 2146 	.byte #0x04, #0x00	;  4
      003329 03 00                 2147 	.byte #0x03, #0x00	;  3
      00332B 03 00                 2148 	.byte #0x03, #0x00	;  3
      00332D 02 00                 2149 	.byte #0x02, #0x00	;  2
      00332F 02 00                 2150 	.byte #0x02, #0x00	;  2
      003331 02 00                 2151 	.byte #0x02, #0x00	;  2
      003333 01 00                 2152 	.byte #0x01, #0x00	;  1
      003335 01 00                 2153 	.byte #0x01, #0x00	;  1
      003337 01 00                 2154 	.byte #0x01, #0x00	;  1
      003339 01 00                 2155 	.byte #0x01, #0x00	;  1
      00333B 01 00                 2156 	.byte #0x01, #0x00	;  1
      00333D 01 00                 2157 	.byte #0x01, #0x00	;  1
      00333F 01 00                 2158 	.byte #0x01, #0x00	;  1
      003341 02 00                 2159 	.byte #0x02, #0x00	;  2
      003343 02 00                 2160 	.byte #0x02, #0x00	;  2
      003345 02 00                 2161 	.byte #0x02, #0x00	;  2
      003347 03 00                 2162 	.byte #0x03, #0x00	;  3
      003349 03 00                 2163 	.byte #0x03, #0x00	;  3
      00334B 04 00                 2164 	.byte #0x04, #0x00	;  4
      00334D 05 00                 2165 	.byte #0x05, #0x00	;  5
      00334F 06 00                 2166 	.byte #0x06, #0x00	;  6
      003351 06 00                 2167 	.byte #0x06, #0x00	;  6
      003353 07 00                 2168 	.byte #0x07, #0x00	;  7
      003355 08 00                 2169 	.byte #0x08, #0x00	;  8
      003357 0A 00                 2170 	.byte #0x0a, #0x00	;  10
      003359 0B 00                 2171 	.byte #0x0b, #0x00	;  11
      00335B 0C 00                 2172 	.byte #0x0c, #0x00	;  12
      00335D 0D 00                 2173 	.byte #0x0d, #0x00	;  13
      00335F 0F 00                 2174 	.byte #0x0f, #0x00	;  15
      003361 10 00                 2175 	.byte #0x10, #0x00	;  16
      003363 11 00                 2176 	.byte #0x11, #0x00	;  17
      003365 13 00                 2177 	.byte #0x13, #0x00	;  19
      003367 15 00                 2178 	.byte #0x15, #0x00	;  21
      003369 16 00                 2179 	.byte #0x16, #0x00	;  22
      00336B 18 00                 2180 	.byte #0x18, #0x00	;  24
      00336D 1A 00                 2181 	.byte #0x1a, #0x00	;  26
      00336F 1C 00                 2182 	.byte #0x1c, #0x00	;  28
      003371 1E 00                 2183 	.byte #0x1e, #0x00	;  30
      003373 20 00                 2184 	.byte #0x20, #0x00	;  32
      003375 22 00                 2185 	.byte #0x22, #0x00	;  34
      003377 24 00                 2186 	.byte #0x24, #0x00	;  36
      003379 26 00                 2187 	.byte #0x26, #0x00	;  38
      00337B 28 00                 2188 	.byte #0x28, #0x00	;  40
      00337D 2B 00                 2189 	.byte #0x2b, #0x00	;  43
      00337F 2D 00                 2190 	.byte #0x2d, #0x00	;  45
      003381 2F 00                 2191 	.byte #0x2f, #0x00	;  47
      003383 32 00                 2192 	.byte #0x32, #0x00	;  50
      003385 34 00                 2193 	.byte #0x34, #0x00	;  52
      003387 37 00                 2194 	.byte #0x37, #0x00	;  55
      003389 39 00                 2195 	.byte #0x39, #0x00	;  57
      00338B 3C 00                 2196 	.byte #0x3c, #0x00	;  60
      00338D 3F 00                 2197 	.byte #0x3f, #0x00	;  63
      00338F 41 00                 2198 	.byte #0x41, #0x00	;  65
      003391 44 00                 2199 	.byte #0x44, #0x00	;  68
      003393 47 00                 2200 	.byte #0x47, #0x00	;  71
      003395 4A 00                 2201 	.byte #0x4a, #0x00	;  74
      003397 4D 00                 2202 	.byte #0x4d, #0x00	;  77
      003399 4F 00                 2203 	.byte #0x4f, #0x00	;  79
      00339B 52 00                 2204 	.byte #0x52, #0x00	;  82
      00339D 55 00                 2205 	.byte #0x55, #0x00	;  85
      00339F 58 00                 2206 	.byte #0x58, #0x00	;  88
      0033A1 5B 00                 2207 	.byte #0x5b, #0x00	;  91
      0033A3 5E 00                 2208 	.byte #0x5e, #0x00	;  94
      0033A5 61 00                 2209 	.byte #0x61, #0x00	;  97
      0033A7 64 00                 2210 	.byte #0x64, #0x00	;  100
      0033A9 67 00                 2211 	.byte #0x67, #0x00	;  103
      0033AB 6A 00                 2212 	.byte #0x6a, #0x00	;  106
      0033AD 6D 00                 2213 	.byte #0x6d, #0x00	;  109
      0033AF 70 00                 2214 	.byte #0x70, #0x00	;  112
      0033B1 74 00                 2215 	.byte #0x74, #0x00	;  116
      0033B3 77 00                 2216 	.byte #0x77, #0x00	;  119
      0033B5 7A 00                 2217 	.byte #0x7a, #0x00	;  122
      0033B7 7D 00                 2218 	.byte #0x7d, #0x00	;  125
      0033B9                       2219 _trig_dac_values:
      0033B9 00 00                 2220 	.byte #0x00, #0x00	;  0
      0033BB 01 00                 2221 	.byte #0x01, #0x00	;  1
      0033BD 02 00                 2222 	.byte #0x02, #0x00	;  2
      0033BF 03 00                 2223 	.byte #0x03, #0x00	;  3
      0033C1 04 00                 2224 	.byte #0x04, #0x00	;  4
      0033C3 05 00                 2225 	.byte #0x05, #0x00	;  5
      0033C5 06 00                 2226 	.byte #0x06, #0x00	;  6
      0033C7 07 00                 2227 	.byte #0x07, #0x00	;  7
      0033C9 08 00                 2228 	.byte #0x08, #0x00	;  8
      0033CB 09 00                 2229 	.byte #0x09, #0x00	;  9
      0033CD 0A 00                 2230 	.byte #0x0a, #0x00	;  10
      0033CF 0B 00                 2231 	.byte #0x0b, #0x00	;  11
      0033D1 0C 00                 2232 	.byte #0x0c, #0x00	;  12
      0033D3 0D 00                 2233 	.byte #0x0d, #0x00	;  13
      0033D5 0E 00                 2234 	.byte #0x0e, #0x00	;  14
      0033D7 0F 00                 2235 	.byte #0x0f, #0x00	;  15
      0033D9 10 00                 2236 	.byte #0x10, #0x00	;  16
      0033DB 11 00                 2237 	.byte #0x11, #0x00	;  17
      0033DD 12 00                 2238 	.byte #0x12, #0x00	;  18
      0033DF 13 00                 2239 	.byte #0x13, #0x00	;  19
      0033E1 14 00                 2240 	.byte #0x14, #0x00	;  20
      0033E3 15 00                 2241 	.byte #0x15, #0x00	;  21
      0033E5 16 00                 2242 	.byte #0x16, #0x00	;  22
      0033E7 17 00                 2243 	.byte #0x17, #0x00	;  23
      0033E9 18 00                 2244 	.byte #0x18, #0x00	;  24
      0033EB 19 00                 2245 	.byte #0x19, #0x00	;  25
      0033ED 1A 00                 2246 	.byte #0x1a, #0x00	;  26
      0033EF 1B 00                 2247 	.byte #0x1b, #0x00	;  27
      0033F1 1C 00                 2248 	.byte #0x1c, #0x00	;  28
      0033F3 1D 00                 2249 	.byte #0x1d, #0x00	;  29
      0033F5 1E 00                 2250 	.byte #0x1e, #0x00	;  30
      0033F7 1F 00                 2251 	.byte #0x1f, #0x00	;  31
      0033F9 20 00                 2252 	.byte #0x20, #0x00	;  32
      0033FB 21 00                 2253 	.byte #0x21, #0x00	;  33
      0033FD 22 00                 2254 	.byte #0x22, #0x00	;  34
      0033FF 23 00                 2255 	.byte #0x23, #0x00	;  35
      003401 24 00                 2256 	.byte #0x24, #0x00	;  36
      003403 25 00                 2257 	.byte #0x25, #0x00	;  37
      003405 26 00                 2258 	.byte #0x26, #0x00	;  38
      003407 27 00                 2259 	.byte #0x27, #0x00	;  39
      003409 28 00                 2260 	.byte #0x28, #0x00	;  40
      00340B 29 00                 2261 	.byte #0x29, #0x00	;  41
      00340D 2A 00                 2262 	.byte #0x2a, #0x00	;  42
      00340F 2B 00                 2263 	.byte #0x2b, #0x00	;  43
      003411 2C 00                 2264 	.byte #0x2c, #0x00	;  44
      003413 2D 00                 2265 	.byte #0x2d, #0x00	;  45
      003415 2E 00                 2266 	.byte #0x2e, #0x00	;  46
      003417 2F 00                 2267 	.byte #0x2f, #0x00	;  47
      003419 30 00                 2268 	.byte #0x30, #0x00	;  48
      00341B 31 00                 2269 	.byte #0x31, #0x00	;  49
      00341D 32 00                 2270 	.byte #0x32, #0x00	;  50
      00341F 33 00                 2271 	.byte #0x33, #0x00	;  51
      003421 34 00                 2272 	.byte #0x34, #0x00	;  52
      003423 35 00                 2273 	.byte #0x35, #0x00	;  53
      003425 36 00                 2274 	.byte #0x36, #0x00	;  54
      003427 37 00                 2275 	.byte #0x37, #0x00	;  55
      003429 38 00                 2276 	.byte #0x38, #0x00	;  56
      00342B 39 00                 2277 	.byte #0x39, #0x00	;  57
      00342D 3A 00                 2278 	.byte #0x3a, #0x00	;  58
      00342F 3B 00                 2279 	.byte #0x3b, #0x00	;  59
      003431 3C 00                 2280 	.byte #0x3c, #0x00	;  60
      003433 3D 00                 2281 	.byte #0x3d, #0x00	;  61
      003435 3E 00                 2282 	.byte #0x3e, #0x00	;  62
      003437 3F 00                 2283 	.byte #0x3f, #0x00	;  63
      003439 40 00                 2284 	.byte #0x40, #0x00	;  64
      00343B 41 00                 2285 	.byte #0x41, #0x00	;  65
      00343D 42 00                 2286 	.byte #0x42, #0x00	;  66
      00343F 43 00                 2287 	.byte #0x43, #0x00	;  67
      003441 44 00                 2288 	.byte #0x44, #0x00	;  68
      003443 45 00                 2289 	.byte #0x45, #0x00	;  69
      003445 46 00                 2290 	.byte #0x46, #0x00	;  70
      003447 47 00                 2291 	.byte #0x47, #0x00	;  71
      003449 48 00                 2292 	.byte #0x48, #0x00	;  72
      00344B 49 00                 2293 	.byte #0x49, #0x00	;  73
      00344D 4A 00                 2294 	.byte #0x4a, #0x00	;  74
      00344F 4B 00                 2295 	.byte #0x4b, #0x00	;  75
      003451 4C 00                 2296 	.byte #0x4c, #0x00	;  76
      003453 4D 00                 2297 	.byte #0x4d, #0x00	;  77
      003455 4E 00                 2298 	.byte #0x4e, #0x00	;  78
      003457 4F 00                 2299 	.byte #0x4f, #0x00	;  79
      003459 50 00                 2300 	.byte #0x50, #0x00	;  80
      00345B 51 00                 2301 	.byte #0x51, #0x00	;  81
      00345D 52 00                 2302 	.byte #0x52, #0x00	;  82
      00345F 53 00                 2303 	.byte #0x53, #0x00	;  83
      003461 54 00                 2304 	.byte #0x54, #0x00	;  84
      003463 55 00                 2305 	.byte #0x55, #0x00	;  85
      003465 56 00                 2306 	.byte #0x56, #0x00	;  86
      003467 57 00                 2307 	.byte #0x57, #0x00	;  87
      003469 58 00                 2308 	.byte #0x58, #0x00	;  88
      00346B 59 00                 2309 	.byte #0x59, #0x00	;  89
      00346D 5A 00                 2310 	.byte #0x5a, #0x00	;  90
      00346F 5B 00                 2311 	.byte #0x5b, #0x00	;  91
      003471 5C 00                 2312 	.byte #0x5c, #0x00	;  92
      003473 5D 00                 2313 	.byte #0x5d, #0x00	;  93
      003475 5E 00                 2314 	.byte #0x5e, #0x00	;  94
      003477 5F 00                 2315 	.byte #0x5f, #0x00	;  95
      003479 60 00                 2316 	.byte #0x60, #0x00	;  96
      00347B 61 00                 2317 	.byte #0x61, #0x00	;  97
      00347D 62 00                 2318 	.byte #0x62, #0x00	;  98
      00347F 63 00                 2319 	.byte #0x63, #0x00	;  99
      003481 64 00                 2320 	.byte #0x64, #0x00	;  100
      003483 65 00                 2321 	.byte #0x65, #0x00	;  101
      003485 66 00                 2322 	.byte #0x66, #0x00	;  102
      003487 67 00                 2323 	.byte #0x67, #0x00	;  103
      003489 68 00                 2324 	.byte #0x68, #0x00	;  104
      00348B 69 00                 2325 	.byte #0x69, #0x00	;  105
      00348D 6A 00                 2326 	.byte #0x6a, #0x00	;  106
      00348F 6B 00                 2327 	.byte #0x6b, #0x00	;  107
      003491 6C 00                 2328 	.byte #0x6c, #0x00	;  108
      003493 6D 00                 2329 	.byte #0x6d, #0x00	;  109
      003495 6E 00                 2330 	.byte #0x6e, #0x00	;  110
      003497 6F 00                 2331 	.byte #0x6f, #0x00	;  111
      003499 70 00                 2332 	.byte #0x70, #0x00	;  112
      00349B 71 00                 2333 	.byte #0x71, #0x00	;  113
      00349D 72 00                 2334 	.byte #0x72, #0x00	;  114
      00349F 73 00                 2335 	.byte #0x73, #0x00	;  115
      0034A1 74 00                 2336 	.byte #0x74, #0x00	;  116
      0034A3 75 00                 2337 	.byte #0x75, #0x00	;  117
      0034A5 76 00                 2338 	.byte #0x76, #0x00	;  118
      0034A7 77 00                 2339 	.byte #0x77, #0x00	;  119
      0034A9 78 00                 2340 	.byte #0x78, #0x00	;  120
      0034AB 79 00                 2341 	.byte #0x79, #0x00	;  121
      0034AD 7A 00                 2342 	.byte #0x7a, #0x00	;  122
      0034AF 7B 00                 2343 	.byte #0x7b, #0x00	;  123
      0034B1 7C 00                 2344 	.byte #0x7c, #0x00	;  124
      0034B3 7D 00                 2345 	.byte #0x7d, #0x00	;  125
      0034B5 7E 00                 2346 	.byte #0x7e, #0x00	;  126
      0034B7 7F 00                 2347 	.byte #0x7f, #0x00	;  127
      0034B9 80 00                 2348 	.byte #0x80, #0x00	;  128
      0034BB 81 00                 2349 	.byte #0x81, #0x00	;  129
      0034BD 82 00                 2350 	.byte #0x82, #0x00	;  130
      0034BF 83 00                 2351 	.byte #0x83, #0x00	;  131
      0034C1 84 00                 2352 	.byte #0x84, #0x00	;  132
      0034C3 85 00                 2353 	.byte #0x85, #0x00	;  133
      0034C5 86 00                 2354 	.byte #0x86, #0x00	;  134
      0034C7 87 00                 2355 	.byte #0x87, #0x00	;  135
      0034C9 88 00                 2356 	.byte #0x88, #0x00	;  136
      0034CB 89 00                 2357 	.byte #0x89, #0x00	;  137
      0034CD 8A 00                 2358 	.byte #0x8a, #0x00	;  138
      0034CF 8B 00                 2359 	.byte #0x8b, #0x00	;  139
      0034D1 8C 00                 2360 	.byte #0x8c, #0x00	;  140
      0034D3 8D 00                 2361 	.byte #0x8d, #0x00	;  141
      0034D5 8E 00                 2362 	.byte #0x8e, #0x00	;  142
      0034D7 8F 00                 2363 	.byte #0x8f, #0x00	;  143
      0034D9 90 00                 2364 	.byte #0x90, #0x00	;  144
      0034DB 91 00                 2365 	.byte #0x91, #0x00	;  145
      0034DD 92 00                 2366 	.byte #0x92, #0x00	;  146
      0034DF 93 00                 2367 	.byte #0x93, #0x00	;  147
      0034E1 94 00                 2368 	.byte #0x94, #0x00	;  148
      0034E3 95 00                 2369 	.byte #0x95, #0x00	;  149
      0034E5 96 00                 2370 	.byte #0x96, #0x00	;  150
      0034E7 97 00                 2371 	.byte #0x97, #0x00	;  151
      0034E9 98 00                 2372 	.byte #0x98, #0x00	;  152
      0034EB 99 00                 2373 	.byte #0x99, #0x00	;  153
      0034ED 9A 00                 2374 	.byte #0x9a, #0x00	;  154
      0034EF 9B 00                 2375 	.byte #0x9b, #0x00	;  155
      0034F1 9C 00                 2376 	.byte #0x9c, #0x00	;  156
      0034F3 9D 00                 2377 	.byte #0x9d, #0x00	;  157
      0034F5 9E 00                 2378 	.byte #0x9e, #0x00	;  158
      0034F7 9F 00                 2379 	.byte #0x9f, #0x00	;  159
      0034F9 A0 00                 2380 	.byte #0xa0, #0x00	;  160
      0034FB A1 00                 2381 	.byte #0xa1, #0x00	;  161
      0034FD A2 00                 2382 	.byte #0xa2, #0x00	;  162
      0034FF A3 00                 2383 	.byte #0xa3, #0x00	;  163
      003501 A4 00                 2384 	.byte #0xa4, #0x00	;  164
      003503 A5 00                 2385 	.byte #0xa5, #0x00	;  165
      003505 A6 00                 2386 	.byte #0xa6, #0x00	;  166
      003507 A7 00                 2387 	.byte #0xa7, #0x00	;  167
      003509 A8 00                 2388 	.byte #0xa8, #0x00	;  168
      00350B A9 00                 2389 	.byte #0xa9, #0x00	;  169
      00350D AA 00                 2390 	.byte #0xaa, #0x00	;  170
      00350F AB 00                 2391 	.byte #0xab, #0x00	;  171
      003511 AC 00                 2392 	.byte #0xac, #0x00	;  172
      003513 AD 00                 2393 	.byte #0xad, #0x00	;  173
      003515 AE 00                 2394 	.byte #0xae, #0x00	;  174
      003517 AF 00                 2395 	.byte #0xaf, #0x00	;  175
      003519 B0 00                 2396 	.byte #0xb0, #0x00	;  176
      00351B B1 00                 2397 	.byte #0xb1, #0x00	;  177
      00351D B2 00                 2398 	.byte #0xb2, #0x00	;  178
      00351F B3 00                 2399 	.byte #0xb3, #0x00	;  179
      003521 B4 00                 2400 	.byte #0xb4, #0x00	;  180
      003523 B5 00                 2401 	.byte #0xb5, #0x00	;  181
      003525 B6 00                 2402 	.byte #0xb6, #0x00	;  182
      003527 B7 00                 2403 	.byte #0xb7, #0x00	;  183
      003529 B8 00                 2404 	.byte #0xb8, #0x00	;  184
      00352B B9 00                 2405 	.byte #0xb9, #0x00	;  185
      00352D BA 00                 2406 	.byte #0xba, #0x00	;  186
      00352F BB 00                 2407 	.byte #0xbb, #0x00	;  187
      003531 BC 00                 2408 	.byte #0xbc, #0x00	;  188
      003533 BD 00                 2409 	.byte #0xbd, #0x00	;  189
      003535 BE 00                 2410 	.byte #0xbe, #0x00	;  190
      003537 BF 00                 2411 	.byte #0xbf, #0x00	;  191
      003539 C0 00                 2412 	.byte #0xc0, #0x00	;  192
      00353B C1 00                 2413 	.byte #0xc1, #0x00	;  193
      00353D C2 00                 2414 	.byte #0xc2, #0x00	;  194
      00353F C3 00                 2415 	.byte #0xc3, #0x00	;  195
      003541 C4 00                 2416 	.byte #0xc4, #0x00	;  196
      003543 C5 00                 2417 	.byte #0xc5, #0x00	;  197
      003545 C6 00                 2418 	.byte #0xc6, #0x00	;  198
      003547 C7 00                 2419 	.byte #0xc7, #0x00	;  199
      003549 C8 00                 2420 	.byte #0xc8, #0x00	;  200
      00354B C9 00                 2421 	.byte #0xc9, #0x00	;  201
      00354D CA 00                 2422 	.byte #0xca, #0x00	;  202
      00354F CB 00                 2423 	.byte #0xcb, #0x00	;  203
      003551 CC 00                 2424 	.byte #0xcc, #0x00	;  204
      003553 CD 00                 2425 	.byte #0xcd, #0x00	;  205
      003555 CE 00                 2426 	.byte #0xce, #0x00	;  206
      003557 CF 00                 2427 	.byte #0xcf, #0x00	;  207
      003559 D0 00                 2428 	.byte #0xd0, #0x00	;  208
      00355B D1 00                 2429 	.byte #0xd1, #0x00	;  209
      00355D D2 00                 2430 	.byte #0xd2, #0x00	;  210
      00355F D3 00                 2431 	.byte #0xd3, #0x00	;  211
      003561 D4 00                 2432 	.byte #0xd4, #0x00	;  212
      003563 D5 00                 2433 	.byte #0xd5, #0x00	;  213
      003565 D6 00                 2434 	.byte #0xd6, #0x00	;  214
      003567 D7 00                 2435 	.byte #0xd7, #0x00	;  215
      003569 D8 00                 2436 	.byte #0xd8, #0x00	;  216
      00356B D9 00                 2437 	.byte #0xd9, #0x00	;  217
      00356D DA 00                 2438 	.byte #0xda, #0x00	;  218
      00356F DB 00                 2439 	.byte #0xdb, #0x00	;  219
      003571 DC 00                 2440 	.byte #0xdc, #0x00	;  220
      003573 DD 00                 2441 	.byte #0xdd, #0x00	;  221
      003575 DE 00                 2442 	.byte #0xde, #0x00	;  222
      003577 DF 00                 2443 	.byte #0xdf, #0x00	;  223
      003579 E0 00                 2444 	.byte #0xe0, #0x00	;  224
      00357B E1 00                 2445 	.byte #0xe1, #0x00	;  225
      00357D E2 00                 2446 	.byte #0xe2, #0x00	;  226
      00357F E3 00                 2447 	.byte #0xe3, #0x00	;  227
      003581 E4 00                 2448 	.byte #0xe4, #0x00	;  228
      003583 E5 00                 2449 	.byte #0xe5, #0x00	;  229
      003585 E6 00                 2450 	.byte #0xe6, #0x00	;  230
      003587 E7 00                 2451 	.byte #0xe7, #0x00	;  231
      003589 E8 00                 2452 	.byte #0xe8, #0x00	;  232
      00358B E9 00                 2453 	.byte #0xe9, #0x00	;  233
      00358D EA 00                 2454 	.byte #0xea, #0x00	;  234
      00358F EB 00                 2455 	.byte #0xeb, #0x00	;  235
      003591 EC 00                 2456 	.byte #0xec, #0x00	;  236
      003593 ED 00                 2457 	.byte #0xed, #0x00	;  237
      003595 EE 00                 2458 	.byte #0xee, #0x00	;  238
      003597 EF 00                 2459 	.byte #0xef, #0x00	;  239
      003599 F0 00                 2460 	.byte #0xf0, #0x00	;  240
      00359B F1 00                 2461 	.byte #0xf1, #0x00	;  241
      00359D F2 00                 2462 	.byte #0xf2, #0x00	;  242
      00359F F3 00                 2463 	.byte #0xf3, #0x00	;  243
      0035A1 F4 00                 2464 	.byte #0xf4, #0x00	;  244
      0035A3 F5 00                 2465 	.byte #0xf5, #0x00	;  245
      0035A5 F6 00                 2466 	.byte #0xf6, #0x00	;  246
      0035A7 F7 00                 2467 	.byte #0xf7, #0x00	;  247
      0035A9 F8 00                 2468 	.byte #0xf8, #0x00	;  248
      0035AB F9 00                 2469 	.byte #0xf9, #0x00	;  249
      0035AD FA 00                 2470 	.byte #0xfa, #0x00	;  250
      0035AF FB 00                 2471 	.byte #0xfb, #0x00	;  251
      0035B1 FC 00                 2472 	.byte #0xfc, #0x00	;  252
      0035B3 FD 00                 2473 	.byte #0xfd, #0x00	;  253
      0035B5 FE 00                 2474 	.byte #0xfe, #0x00	;  254
      0035B7 FF 00                 2475 	.byte #0xff, #0x00	;  255
      0035B9 FF 00                 2476 	.byte #0xff, #0x00	;  255
      0035BB FE 00                 2477 	.byte #0xfe, #0x00	;  254
      0035BD FD 00                 2478 	.byte #0xfd, #0x00	;  253
      0035BF FC 00                 2479 	.byte #0xfc, #0x00	;  252
      0035C1 FB 00                 2480 	.byte #0xfb, #0x00	;  251
      0035C3 FA 00                 2481 	.byte #0xfa, #0x00	;  250
      0035C5 F9 00                 2482 	.byte #0xf9, #0x00	;  249
      0035C7 F8 00                 2483 	.byte #0xf8, #0x00	;  248
      0035C9 F7 00                 2484 	.byte #0xf7, #0x00	;  247
      0035CB F6 00                 2485 	.byte #0xf6, #0x00	;  246
      0035CD F5 00                 2486 	.byte #0xf5, #0x00	;  245
      0035CF F4 00                 2487 	.byte #0xf4, #0x00	;  244
      0035D1 F3 00                 2488 	.byte #0xf3, #0x00	;  243
      0035D3 F2 00                 2489 	.byte #0xf2, #0x00	;  242
      0035D5 F1 00                 2490 	.byte #0xf1, #0x00	;  241
      0035D7 F0 00                 2491 	.byte #0xf0, #0x00	;  240
      0035D9 EF 00                 2492 	.byte #0xef, #0x00	;  239
      0035DB EE 00                 2493 	.byte #0xee, #0x00	;  238
      0035DD ED 00                 2494 	.byte #0xed, #0x00	;  237
      0035DF EC 00                 2495 	.byte #0xec, #0x00	;  236
      0035E1 EB 00                 2496 	.byte #0xeb, #0x00	;  235
      0035E3 EA 00                 2497 	.byte #0xea, #0x00	;  234
      0035E5 E9 00                 2498 	.byte #0xe9, #0x00	;  233
      0035E7 E8 00                 2499 	.byte #0xe8, #0x00	;  232
      0035E9 E7 00                 2500 	.byte #0xe7, #0x00	;  231
      0035EB E6 00                 2501 	.byte #0xe6, #0x00	;  230
      0035ED E5 00                 2502 	.byte #0xe5, #0x00	;  229
      0035EF E4 00                 2503 	.byte #0xe4, #0x00	;  228
      0035F1 E3 00                 2504 	.byte #0xe3, #0x00	;  227
      0035F3 E2 00                 2505 	.byte #0xe2, #0x00	;  226
      0035F5 E1 00                 2506 	.byte #0xe1, #0x00	;  225
      0035F7 E0 00                 2507 	.byte #0xe0, #0x00	;  224
      0035F9 DF 00                 2508 	.byte #0xdf, #0x00	;  223
      0035FB DE 00                 2509 	.byte #0xde, #0x00	;  222
      0035FD DD 00                 2510 	.byte #0xdd, #0x00	;  221
      0035FF DC 00                 2511 	.byte #0xdc, #0x00	;  220
      003601 DB 00                 2512 	.byte #0xdb, #0x00	;  219
      003603 DA 00                 2513 	.byte #0xda, #0x00	;  218
      003605 D9 00                 2514 	.byte #0xd9, #0x00	;  217
      003607 D8 00                 2515 	.byte #0xd8, #0x00	;  216
      003609 D7 00                 2516 	.byte #0xd7, #0x00	;  215
      00360B D6 00                 2517 	.byte #0xd6, #0x00	;  214
      00360D D5 00                 2518 	.byte #0xd5, #0x00	;  213
      00360F D4 00                 2519 	.byte #0xd4, #0x00	;  212
      003611 D3 00                 2520 	.byte #0xd3, #0x00	;  211
      003613 D2 00                 2521 	.byte #0xd2, #0x00	;  210
      003615 D1 00                 2522 	.byte #0xd1, #0x00	;  209
      003617 D0 00                 2523 	.byte #0xd0, #0x00	;  208
      003619 CF 00                 2524 	.byte #0xcf, #0x00	;  207
      00361B CE 00                 2525 	.byte #0xce, #0x00	;  206
      00361D CD 00                 2526 	.byte #0xcd, #0x00	;  205
      00361F CC 00                 2527 	.byte #0xcc, #0x00	;  204
      003621 CB 00                 2528 	.byte #0xcb, #0x00	;  203
      003623 CA 00                 2529 	.byte #0xca, #0x00	;  202
      003625 C9 00                 2530 	.byte #0xc9, #0x00	;  201
      003627 C8 00                 2531 	.byte #0xc8, #0x00	;  200
      003629 C7 00                 2532 	.byte #0xc7, #0x00	;  199
      00362B C6 00                 2533 	.byte #0xc6, #0x00	;  198
      00362D C5 00                 2534 	.byte #0xc5, #0x00	;  197
      00362F C4 00                 2535 	.byte #0xc4, #0x00	;  196
      003631 C3 00                 2536 	.byte #0xc3, #0x00	;  195
      003633 C2 00                 2537 	.byte #0xc2, #0x00	;  194
      003635 C1 00                 2538 	.byte #0xc1, #0x00	;  193
      003637 C0 00                 2539 	.byte #0xc0, #0x00	;  192
      003639 BF 00                 2540 	.byte #0xbf, #0x00	;  191
      00363B BE 00                 2541 	.byte #0xbe, #0x00	;  190
      00363D BD 00                 2542 	.byte #0xbd, #0x00	;  189
      00363F BC 00                 2543 	.byte #0xbc, #0x00	;  188
      003641 BB 00                 2544 	.byte #0xbb, #0x00	;  187
      003643 BA 00                 2545 	.byte #0xba, #0x00	;  186
      003645 B9 00                 2546 	.byte #0xb9, #0x00	;  185
      003647 B8 00                 2547 	.byte #0xb8, #0x00	;  184
      003649 B7 00                 2548 	.byte #0xb7, #0x00	;  183
      00364B B6 00                 2549 	.byte #0xb6, #0x00	;  182
      00364D B5 00                 2550 	.byte #0xb5, #0x00	;  181
      00364F B4 00                 2551 	.byte #0xb4, #0x00	;  180
      003651 B3 00                 2552 	.byte #0xb3, #0x00	;  179
      003653 B2 00                 2553 	.byte #0xb2, #0x00	;  178
      003655 B1 00                 2554 	.byte #0xb1, #0x00	;  177
      003657 B0 00                 2555 	.byte #0xb0, #0x00	;  176
      003659 AF 00                 2556 	.byte #0xaf, #0x00	;  175
      00365B AE 00                 2557 	.byte #0xae, #0x00	;  174
      00365D AD 00                 2558 	.byte #0xad, #0x00	;  173
      00365F AC 00                 2559 	.byte #0xac, #0x00	;  172
      003661 AB 00                 2560 	.byte #0xab, #0x00	;  171
      003663 AA 00                 2561 	.byte #0xaa, #0x00	;  170
      003665 A9 00                 2562 	.byte #0xa9, #0x00	;  169
      003667 A8 00                 2563 	.byte #0xa8, #0x00	;  168
      003669 A7 00                 2564 	.byte #0xa7, #0x00	;  167
      00366B A6 00                 2565 	.byte #0xa6, #0x00	;  166
      00366D A5 00                 2566 	.byte #0xa5, #0x00	;  165
      00366F A4 00                 2567 	.byte #0xa4, #0x00	;  164
      003671 A3 00                 2568 	.byte #0xa3, #0x00	;  163
      003673 A2 00                 2569 	.byte #0xa2, #0x00	;  162
      003675 A1 00                 2570 	.byte #0xa1, #0x00	;  161
      003677 A0 00                 2571 	.byte #0xa0, #0x00	;  160
      003679 9F 00                 2572 	.byte #0x9f, #0x00	;  159
      00367B 9E 00                 2573 	.byte #0x9e, #0x00	;  158
      00367D 9D 00                 2574 	.byte #0x9d, #0x00	;  157
      00367F 9C 00                 2575 	.byte #0x9c, #0x00	;  156
      003681 9B 00                 2576 	.byte #0x9b, #0x00	;  155
      003683 9A 00                 2577 	.byte #0x9a, #0x00	;  154
      003685 99 00                 2578 	.byte #0x99, #0x00	;  153
      003687 98 00                 2579 	.byte #0x98, #0x00	;  152
      003689 97 00                 2580 	.byte #0x97, #0x00	;  151
      00368B 96 00                 2581 	.byte #0x96, #0x00	;  150
      00368D 95 00                 2582 	.byte #0x95, #0x00	;  149
      00368F 94 00                 2583 	.byte #0x94, #0x00	;  148
      003691 93 00                 2584 	.byte #0x93, #0x00	;  147
      003693 92 00                 2585 	.byte #0x92, #0x00	;  146
      003695 91 00                 2586 	.byte #0x91, #0x00	;  145
      003697 90 00                 2587 	.byte #0x90, #0x00	;  144
      003699 8F 00                 2588 	.byte #0x8f, #0x00	;  143
      00369B 8E 00                 2589 	.byte #0x8e, #0x00	;  142
      00369D 8D 00                 2590 	.byte #0x8d, #0x00	;  141
      00369F 8C 00                 2591 	.byte #0x8c, #0x00	;  140
      0036A1 8B 00                 2592 	.byte #0x8b, #0x00	;  139
      0036A3 8A 00                 2593 	.byte #0x8a, #0x00	;  138
      0036A5 89 00                 2594 	.byte #0x89, #0x00	;  137
      0036A7 88 00                 2595 	.byte #0x88, #0x00	;  136
      0036A9 87 00                 2596 	.byte #0x87, #0x00	;  135
      0036AB 86 00                 2597 	.byte #0x86, #0x00	;  134
      0036AD 85 00                 2598 	.byte #0x85, #0x00	;  133
      0036AF 84 00                 2599 	.byte #0x84, #0x00	;  132
      0036B1 83 00                 2600 	.byte #0x83, #0x00	;  131
      0036B3 82 00                 2601 	.byte #0x82, #0x00	;  130
      0036B5 81 00                 2602 	.byte #0x81, #0x00	;  129
      0036B7 80 00                 2603 	.byte #0x80, #0x00	;  128
      0036B9 7F 00                 2604 	.byte #0x7f, #0x00	;  127
      0036BB 7E 00                 2605 	.byte #0x7e, #0x00	;  126
      0036BD 7D 00                 2606 	.byte #0x7d, #0x00	;  125
      0036BF 7C 00                 2607 	.byte #0x7c, #0x00	;  124
      0036C1 7B 00                 2608 	.byte #0x7b, #0x00	;  123
      0036C3 7A 00                 2609 	.byte #0x7a, #0x00	;  122
      0036C5 79 00                 2610 	.byte #0x79, #0x00	;  121
      0036C7 78 00                 2611 	.byte #0x78, #0x00	;  120
      0036C9 77 00                 2612 	.byte #0x77, #0x00	;  119
      0036CB 76 00                 2613 	.byte #0x76, #0x00	;  118
      0036CD 75 00                 2614 	.byte #0x75, #0x00	;  117
      0036CF 74 00                 2615 	.byte #0x74, #0x00	;  116
      0036D1 73 00                 2616 	.byte #0x73, #0x00	;  115
      0036D3 72 00                 2617 	.byte #0x72, #0x00	;  114
      0036D5 71 00                 2618 	.byte #0x71, #0x00	;  113
      0036D7 70 00                 2619 	.byte #0x70, #0x00	;  112
      0036D9 6F 00                 2620 	.byte #0x6f, #0x00	;  111
      0036DB 6E 00                 2621 	.byte #0x6e, #0x00	;  110
      0036DD 6D 00                 2622 	.byte #0x6d, #0x00	;  109
      0036DF 6C 00                 2623 	.byte #0x6c, #0x00	;  108
      0036E1 6B 00                 2624 	.byte #0x6b, #0x00	;  107
      0036E3 6A 00                 2625 	.byte #0x6a, #0x00	;  106
      0036E5 69 00                 2626 	.byte #0x69, #0x00	;  105
      0036E7 68 00                 2627 	.byte #0x68, #0x00	;  104
      0036E9 67 00                 2628 	.byte #0x67, #0x00	;  103
      0036EB 66 00                 2629 	.byte #0x66, #0x00	;  102
      0036ED 65 00                 2630 	.byte #0x65, #0x00	;  101
      0036EF 64 00                 2631 	.byte #0x64, #0x00	;  100
      0036F1 63 00                 2632 	.byte #0x63, #0x00	;  99
      0036F3 62 00                 2633 	.byte #0x62, #0x00	;  98
      0036F5 61 00                 2634 	.byte #0x61, #0x00	;  97
      0036F7 60 00                 2635 	.byte #0x60, #0x00	;  96
      0036F9 5F 00                 2636 	.byte #0x5f, #0x00	;  95
      0036FB 5E 00                 2637 	.byte #0x5e, #0x00	;  94
      0036FD 5D 00                 2638 	.byte #0x5d, #0x00	;  93
      0036FF 5C 00                 2639 	.byte #0x5c, #0x00	;  92
      003701 5B 00                 2640 	.byte #0x5b, #0x00	;  91
      003703 5A 00                 2641 	.byte #0x5a, #0x00	;  90
      003705 59 00                 2642 	.byte #0x59, #0x00	;  89
      003707 58 00                 2643 	.byte #0x58, #0x00	;  88
      003709 57 00                 2644 	.byte #0x57, #0x00	;  87
      00370B 56 00                 2645 	.byte #0x56, #0x00	;  86
      00370D 55 00                 2646 	.byte #0x55, #0x00	;  85
      00370F 54 00                 2647 	.byte #0x54, #0x00	;  84
      003711 53 00                 2648 	.byte #0x53, #0x00	;  83
      003713 52 00                 2649 	.byte #0x52, #0x00	;  82
      003715 51 00                 2650 	.byte #0x51, #0x00	;  81
      003717 50 00                 2651 	.byte #0x50, #0x00	;  80
      003719 4F 00                 2652 	.byte #0x4f, #0x00	;  79
      00371B 4E 00                 2653 	.byte #0x4e, #0x00	;  78
      00371D 4D 00                 2654 	.byte #0x4d, #0x00	;  77
      00371F 4C 00                 2655 	.byte #0x4c, #0x00	;  76
      003721 4B 00                 2656 	.byte #0x4b, #0x00	;  75
      003723 4A 00                 2657 	.byte #0x4a, #0x00	;  74
      003725 49 00                 2658 	.byte #0x49, #0x00	;  73
      003727 48 00                 2659 	.byte #0x48, #0x00	;  72
      003729 47 00                 2660 	.byte #0x47, #0x00	;  71
      00372B 46 00                 2661 	.byte #0x46, #0x00	;  70
      00372D 45 00                 2662 	.byte #0x45, #0x00	;  69
      00372F 44 00                 2663 	.byte #0x44, #0x00	;  68
      003731 43 00                 2664 	.byte #0x43, #0x00	;  67
      003733 42 00                 2665 	.byte #0x42, #0x00	;  66
      003735 41 00                 2666 	.byte #0x41, #0x00	;  65
      003737 40 00                 2667 	.byte #0x40, #0x00	;  64
      003739 3F 00                 2668 	.byte #0x3f, #0x00	;  63
      00373B 3E 00                 2669 	.byte #0x3e, #0x00	;  62
      00373D 3D 00                 2670 	.byte #0x3d, #0x00	;  61
      00373F 3C 00                 2671 	.byte #0x3c, #0x00	;  60
      003741 3B 00                 2672 	.byte #0x3b, #0x00	;  59
      003743 3A 00                 2673 	.byte #0x3a, #0x00	;  58
      003745 39 00                 2674 	.byte #0x39, #0x00	;  57
      003747 38 00                 2675 	.byte #0x38, #0x00	;  56
      003749 37 00                 2676 	.byte #0x37, #0x00	;  55
      00374B 36 00                 2677 	.byte #0x36, #0x00	;  54
      00374D 35 00                 2678 	.byte #0x35, #0x00	;  53
      00374F 34 00                 2679 	.byte #0x34, #0x00	;  52
      003751 33 00                 2680 	.byte #0x33, #0x00	;  51
      003753 32 00                 2681 	.byte #0x32, #0x00	;  50
      003755 31 00                 2682 	.byte #0x31, #0x00	;  49
      003757 30 00                 2683 	.byte #0x30, #0x00	;  48
      003759 2F 00                 2684 	.byte #0x2f, #0x00	;  47
      00375B 2E 00                 2685 	.byte #0x2e, #0x00	;  46
      00375D 2D 00                 2686 	.byte #0x2d, #0x00	;  45
      00375F 2C 00                 2687 	.byte #0x2c, #0x00	;  44
      003761 2B 00                 2688 	.byte #0x2b, #0x00	;  43
      003763 2A 00                 2689 	.byte #0x2a, #0x00	;  42
      003765 29 00                 2690 	.byte #0x29, #0x00	;  41
      003767 28 00                 2691 	.byte #0x28, #0x00	;  40
      003769 27 00                 2692 	.byte #0x27, #0x00	;  39
      00376B 26 00                 2693 	.byte #0x26, #0x00	;  38
      00376D 25 00                 2694 	.byte #0x25, #0x00	;  37
      00376F 24 00                 2695 	.byte #0x24, #0x00	;  36
      003771 23 00                 2696 	.byte #0x23, #0x00	;  35
      003773 22 00                 2697 	.byte #0x22, #0x00	;  34
      003775 21 00                 2698 	.byte #0x21, #0x00	;  33
      003777 20 00                 2699 	.byte #0x20, #0x00	;  32
      003779 1F 00                 2700 	.byte #0x1f, #0x00	;  31
      00377B 1E 00                 2701 	.byte #0x1e, #0x00	;  30
      00377D 1D 00                 2702 	.byte #0x1d, #0x00	;  29
      00377F 1C 00                 2703 	.byte #0x1c, #0x00	;  28
      003781 1B 00                 2704 	.byte #0x1b, #0x00	;  27
      003783 1A 00                 2705 	.byte #0x1a, #0x00	;  26
      003785 19 00                 2706 	.byte #0x19, #0x00	;  25
      003787 18 00                 2707 	.byte #0x18, #0x00	;  24
      003789 17 00                 2708 	.byte #0x17, #0x00	;  23
      00378B 16 00                 2709 	.byte #0x16, #0x00	;  22
      00378D 15 00                 2710 	.byte #0x15, #0x00	;  21
      00378F 14 00                 2711 	.byte #0x14, #0x00	;  20
      003791 13 00                 2712 	.byte #0x13, #0x00	;  19
      003793 12 00                 2713 	.byte #0x12, #0x00	;  18
      003795 11 00                 2714 	.byte #0x11, #0x00	;  17
      003797 10 00                 2715 	.byte #0x10, #0x00	;  16
      003799 0F 00                 2716 	.byte #0x0f, #0x00	;  15
      00379B 0E 00                 2717 	.byte #0x0e, #0x00	;  14
      00379D 0D 00                 2718 	.byte #0x0d, #0x00	;  13
      00379F 0C 00                 2719 	.byte #0x0c, #0x00	;  12
      0037A1 0B 00                 2720 	.byte #0x0b, #0x00	;  11
      0037A3 0A 00                 2721 	.byte #0x0a, #0x00	;  10
      0037A5 09 00                 2722 	.byte #0x09, #0x00	;  9
      0037A7 08 00                 2723 	.byte #0x08, #0x00	;  8
      0037A9 07 00                 2724 	.byte #0x07, #0x00	;  7
      0037AB 06 00                 2725 	.byte #0x06, #0x00	;  6
      0037AD 05 00                 2726 	.byte #0x05, #0x00	;  5
      0037AF 04 00                 2727 	.byte #0x04, #0x00	;  4
      0037B1 03 00                 2728 	.byte #0x03, #0x00	;  3
      0037B3 02 00                 2729 	.byte #0x02, #0x00	;  2
      0037B5 01 00                 2730 	.byte #0x01, #0x00	;  1
      0037B7 00 00                 2731 	.byte #0x00, #0x00	;  0
                                   2732 	.area CONST   (CODE)
      0037B9                       2733 ___str_0:
      0037B9 0A                    2734 	.db 0x0a
      0037BA 0D                    2735 	.db 0x0d
      0037BB E2                    2736 	.db 0xe2
      0037BC 94                    2737 	.db 0x94
      0037BD 8C                    2738 	.db 0x8c
      0037BE E2                    2739 	.db 0xe2
      0037BF 94                    2740 	.db 0x94
      0037C0 80                    2741 	.db 0x80
      0037C1 E2                    2742 	.db 0xe2
      0037C2 94                    2743 	.db 0x94
      0037C3 80                    2744 	.db 0x80
      0037C4 E2                    2745 	.db 0xe2
      0037C5 94                    2746 	.db 0x94
      0037C6 80                    2747 	.db 0x80
      0037C7 E2                    2748 	.db 0xe2
      0037C8 94                    2749 	.db 0x94
      0037C9 80                    2750 	.db 0x80
      0037CA E2                    2751 	.db 0xe2
      0037CB 94                    2752 	.db 0x94
      0037CC 80                    2753 	.db 0x80
      0037CD E2                    2754 	.db 0xe2
      0037CE 94                    2755 	.db 0x94
      0037CF 80                    2756 	.db 0x80
      0037D0 E2                    2757 	.db 0xe2
      0037D1 94                    2758 	.db 0x94
      0037D2 80                    2759 	.db 0x80
      0037D3 E2                    2760 	.db 0xe2
      0037D4 94                    2761 	.db 0x94
      0037D5 80                    2762 	.db 0x80
      0037D6 E2                    2763 	.db 0xe2
      0037D7 94                    2764 	.db 0x94
      0037D8 80                    2765 	.db 0x80
      0037D9 E2                    2766 	.db 0xe2
      0037DA 94                    2767 	.db 0x94
      0037DB 80                    2768 	.db 0x80
      0037DC E2                    2769 	.db 0xe2
      0037DD 94                    2770 	.db 0x94
      0037DE 80                    2771 	.db 0x80
      0037DF E2                    2772 	.db 0xe2
      0037E0 94                    2773 	.db 0x94
      0037E1 80                    2774 	.db 0x80
      0037E2 E2                    2775 	.db 0xe2
      0037E3 94                    2776 	.db 0x94
      0037E4 80                    2777 	.db 0x80
      0037E5 E2                    2778 	.db 0xe2
      0037E6 94                    2779 	.db 0x94
      0037E7 80                    2780 	.db 0x80
      0037E8 E2                    2781 	.db 0xe2
      0037E9 94                    2782 	.db 0x94
      0037EA 80                    2783 	.db 0x80
      0037EB E2                    2784 	.db 0xe2
      0037EC 94                    2785 	.db 0x94
      0037ED 80                    2786 	.db 0x80
      0037EE E2                    2787 	.db 0xe2
      0037EF 94                    2788 	.db 0x94
      0037F0 80                    2789 	.db 0x80
      0037F1 E2                    2790 	.db 0xe2
      0037F2 94                    2791 	.db 0x94
      0037F3 80                    2792 	.db 0x80
      0037F4 E2                    2793 	.db 0xe2
      0037F5 94                    2794 	.db 0x94
      0037F6 80                    2795 	.db 0x80
      0037F7 E2                    2796 	.db 0xe2
      0037F8 94                    2797 	.db 0x94
      0037F9 80                    2798 	.db 0x80
      0037FA E2                    2799 	.db 0xe2
      0037FB 94                    2800 	.db 0x94
      0037FC 80                    2801 	.db 0x80
      0037FD E2                    2802 	.db 0xe2
      0037FE 94                    2803 	.db 0x94
      0037FF 80                    2804 	.db 0x80
      003800 E2                    2805 	.db 0xe2
      003801 94                    2806 	.db 0x94
      003802 80                    2807 	.db 0x80
      003803 E2                    2808 	.db 0xe2
      003804 94                    2809 	.db 0x94
      003805 80                    2810 	.db 0x80
      003806 E2                    2811 	.db 0xe2
      003807 94                    2812 	.db 0x94
      003808 80                    2813 	.db 0x80
      003809 E2                    2814 	.db 0xe2
      00380A 94                    2815 	.db 0x94
      00380B 80                    2816 	.db 0x80
      00380C E2                    2817 	.db 0xe2
      00380D 94                    2818 	.db 0x94
      00380E 80                    2819 	.db 0x80
      00380F E2                    2820 	.db 0xe2
      003810 94                    2821 	.db 0x94
      003811 80                    2822 	.db 0x80
      003812 E2                    2823 	.db 0xe2
      003813 94                    2824 	.db 0x94
      003814 80                    2825 	.db 0x80
      003815 E2                    2826 	.db 0xe2
      003816 94                    2827 	.db 0x94
      003817 80                    2828 	.db 0x80
      003818 E2                    2829 	.db 0xe2
      003819 94                    2830 	.db 0x94
      00381A 80                    2831 	.db 0x80
      00381B E2                    2832 	.db 0xe2
      00381C 94                    2833 	.db 0x94
      00381D 80                    2834 	.db 0x80
      00381E E2                    2835 	.db 0xe2
      00381F 94                    2836 	.db 0x94
      003820 80                    2837 	.db 0x80
      003821 E2                    2838 	.db 0xe2
      003822 94                    2839 	.db 0x94
      003823 80                    2840 	.db 0x80
      003824 E2                    2841 	.db 0xe2
      003825 94                    2842 	.db 0x94
      003826 80                    2843 	.db 0x80
      003827 E2                    2844 	.db 0xe2
      003828 94                    2845 	.db 0x94
      003829 80                    2846 	.db 0x80
      00382A E2                    2847 	.db 0xe2
      00382B 94                    2848 	.db 0x94
      00382C 80                    2849 	.db 0x80
      00382D E2                    2850 	.db 0xe2
      00382E 94                    2851 	.db 0x94
      00382F 80                    2852 	.db 0x80
      003830 E2                    2853 	.db 0xe2
      003831 94                    2854 	.db 0x94
      003832 80                    2855 	.db 0x80
      003833 E2                    2856 	.db 0xe2
      003834 94                    2857 	.db 0x94
      003835 80                    2858 	.db 0x80
      003836 E2                    2859 	.db 0xe2
      003837 94                    2860 	.db 0x94
      003838 80                    2861 	.db 0x80
      003839 E2                    2862 	.db 0xe2
      00383A 94                    2863 	.db 0x94
      00383B 80                    2864 	.db 0x80
      00383C E2                    2865 	.db 0xe2
      00383D 94                    2866 	.db 0x94
      00383E 80                    2867 	.db 0x80
      00383F E2                    2868 	.db 0xe2
      003840 94                    2869 	.db 0x94
      003841 80                    2870 	.db 0x80
      003842 E2                    2871 	.db 0xe2
      003843 94                    2872 	.db 0x94
      003844 80                    2873 	.db 0x80
      003845 E2                    2874 	.db 0xe2
      003846 94                    2875 	.db 0x94
      003847 80                    2876 	.db 0x80
      003848 E2                    2877 	.db 0xe2
      003849 94                    2878 	.db 0x94
      00384A 80                    2879 	.db 0x80
      00384B E2                    2880 	.db 0xe2
      00384C 94                    2881 	.db 0x94
      00384D 80                    2882 	.db 0x80
      00384E E2                    2883 	.db 0xe2
      00384F 94                    2884 	.db 0x94
      003850 80                    2885 	.db 0x80
      003851 E2                    2886 	.db 0xe2
      003852 94                    2887 	.db 0x94
      003853 80                    2888 	.db 0x80
      003854 E2                    2889 	.db 0xe2
      003855 94                    2890 	.db 0x94
      003856 80                    2891 	.db 0x80
      003857 E2                    2892 	.db 0xe2
      003858 94                    2893 	.db 0x94
      003859 80                    2894 	.db 0x80
      00385A E2                    2895 	.db 0xe2
      00385B 94                    2896 	.db 0x94
      00385C 80                    2897 	.db 0x80
      00385D E2                    2898 	.db 0xe2
      00385E 94                    2899 	.db 0x94
      00385F 80                    2900 	.db 0x80
      003860 E2                    2901 	.db 0xe2
      003861 94                    2902 	.db 0x94
      003862 80                    2903 	.db 0x80
      003863 E2                    2904 	.db 0xe2
      003864 94                    2905 	.db 0x94
      003865 80                    2906 	.db 0x80
      003866 E2                    2907 	.db 0xe2
      003867 94                    2908 	.db 0x94
      003868 80                    2909 	.db 0x80
      003869 E2                    2910 	.db 0xe2
      00386A 94                    2911 	.db 0x94
      00386B 80                    2912 	.db 0x80
      00386C E2                    2913 	.db 0xe2
      00386D 94                    2914 	.db 0x94
      00386E 80                    2915 	.db 0x80
      00386F E2                    2916 	.db 0xe2
      003870 94                    2917 	.db 0x94
      003871 80                    2918 	.db 0x80
      003872 E2                    2919 	.db 0xe2
      003873 94                    2920 	.db 0x94
      003874 80                    2921 	.db 0x80
      003875 E2                    2922 	.db 0xe2
      003876 94                    2923 	.db 0x94
      003877 80                    2924 	.db 0x80
      003878 E2                    2925 	.db 0xe2
      003879 94                    2926 	.db 0x94
      00387A 90                    2927 	.db 0x90
      00387B 0A                    2928 	.db 0x0a
      00387C 0D                    2929 	.db 0x0d
      00387D 00                    2930 	.db 0x00
                                   2931 	.area CSEG    (CODE)
                                   2932 	.area CONST   (CODE)
      00387E                       2933 ___str_1:
      00387E E2                    2934 	.db 0xe2
      00387F 94                    2935 	.db 0x94
      003880 82                    2936 	.db 0x82
      003881 20 20 20 20 20 20 20  2937 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0038BD 20 20                 2938 	.ascii "  "
      0038BF E2                    2939 	.db 0xe2
      0038C0 94                    2940 	.db 0x94
      0038C1 82                    2941 	.db 0x82
      0038C2 0A                    2942 	.db 0x0a
      0038C3 0D                    2943 	.db 0x0d
      0038C4 00                    2944 	.db 0x00
                                   2945 	.area CSEG    (CODE)
                                   2946 	.area CONST   (CODE)
      0038C5                       2947 ___str_2:
      0038C5 E2                    2948 	.db 0xe2
      0038C6 94                    2949 	.db 0x94
      0038C7 9C                    2950 	.db 0x9c
      0038C8 E2                    2951 	.db 0xe2
      0038C9 94                    2952 	.db 0x94
      0038CA 80                    2953 	.db 0x80
      0038CB E2                    2954 	.db 0xe2
      0038CC 94                    2955 	.db 0x94
      0038CD 80                    2956 	.db 0x80
      0038CE E2                    2957 	.db 0xe2
      0038CF 94                    2958 	.db 0x94
      0038D0 80                    2959 	.db 0x80
      0038D1 E2                    2960 	.db 0xe2
      0038D2 94                    2961 	.db 0x94
      0038D3 80                    2962 	.db 0x80
      0038D4 E2                    2963 	.db 0xe2
      0038D5 94                    2964 	.db 0x94
      0038D6 80                    2965 	.db 0x80
      0038D7 E2                    2966 	.db 0xe2
      0038D8 94                    2967 	.db 0x94
      0038D9 80                    2968 	.db 0x80
      0038DA E2                    2969 	.db 0xe2
      0038DB 94                    2970 	.db 0x94
      0038DC 80                    2971 	.db 0x80
      0038DD E2                    2972 	.db 0xe2
      0038DE 94                    2973 	.db 0x94
      0038DF 80                    2974 	.db 0x80
      0038E0 E2                    2975 	.db 0xe2
      0038E1 94                    2976 	.db 0x94
      0038E2 80                    2977 	.db 0x80
      0038E3 E2                    2978 	.db 0xe2
      0038E4 94                    2979 	.db 0x94
      0038E5 80                    2980 	.db 0x80
      0038E6 E2                    2981 	.db 0xe2
      0038E7 94                    2982 	.db 0x94
      0038E8 80                    2983 	.db 0x80
      0038E9 E2                    2984 	.db 0xe2
      0038EA 94                    2985 	.db 0x94
      0038EB 80                    2986 	.db 0x80
      0038EC E2                    2987 	.db 0xe2
      0038ED 94                    2988 	.db 0x94
      0038EE 80                    2989 	.db 0x80
      0038EF E2                    2990 	.db 0xe2
      0038F0 94                    2991 	.db 0x94
      0038F1 80                    2992 	.db 0x80
      0038F2 E2                    2993 	.db 0xe2
      0038F3 94                    2994 	.db 0x94
      0038F4 80                    2995 	.db 0x80
      0038F5 E2                    2996 	.db 0xe2
      0038F6 94                    2997 	.db 0x94
      0038F7 80                    2998 	.db 0x80
      0038F8 E2                    2999 	.db 0xe2
      0038F9 94                    3000 	.db 0x94
      0038FA 80                    3001 	.db 0x80
      0038FB E2                    3002 	.db 0xe2
      0038FC 94                    3003 	.db 0x94
      0038FD 80                    3004 	.db 0x80
      0038FE E2                    3005 	.db 0xe2
      0038FF 94                    3006 	.db 0x94
      003900 80                    3007 	.db 0x80
      003901 E2                    3008 	.db 0xe2
      003902 94                    3009 	.db 0x94
      003903 80                    3010 	.db 0x80
      003904 E2                    3011 	.db 0xe2
      003905 94                    3012 	.db 0x94
      003906 80                    3013 	.db 0x80
      003907 E2                    3014 	.db 0xe2
      003908 94                    3015 	.db 0x94
      003909 80                    3016 	.db 0x80
      00390A E2                    3017 	.db 0xe2
      00390B 94                    3018 	.db 0x94
      00390C 80                    3019 	.db 0x80
      00390D E2                    3020 	.db 0xe2
      00390E 94                    3021 	.db 0x94
      00390F 80                    3022 	.db 0x80
      003910 E2                    3023 	.db 0xe2
      003911 94                    3024 	.db 0x94
      003912 80                    3025 	.db 0x80
      003913 E2                    3026 	.db 0xe2
      003914 94                    3027 	.db 0x94
      003915 80                    3028 	.db 0x80
      003916 E2                    3029 	.db 0xe2
      003917 94                    3030 	.db 0x94
      003918 80                    3031 	.db 0x80
      003919 E2                    3032 	.db 0xe2
      00391A 94                    3033 	.db 0x94
      00391B 80                    3034 	.db 0x80
      00391C E2                    3035 	.db 0xe2
      00391D 94                    3036 	.db 0x94
      00391E 80                    3037 	.db 0x80
      00391F E2                    3038 	.db 0xe2
      003920 94                    3039 	.db 0x94
      003921 80                    3040 	.db 0x80
      003922 E2                    3041 	.db 0xe2
      003923 94                    3042 	.db 0x94
      003924 80                    3043 	.db 0x80
      003925 E2                    3044 	.db 0xe2
      003926 94                    3045 	.db 0x94
      003927 80                    3046 	.db 0x80
      003928 E2                    3047 	.db 0xe2
      003929 94                    3048 	.db 0x94
      00392A 80                    3049 	.db 0x80
      00392B E2                    3050 	.db 0xe2
      00392C 94                    3051 	.db 0x94
      00392D 80                    3052 	.db 0x80
      00392E E2                    3053 	.db 0xe2
      00392F 94                    3054 	.db 0x94
      003930 80                    3055 	.db 0x80
      003931 E2                    3056 	.db 0xe2
      003932 94                    3057 	.db 0x94
      003933 80                    3058 	.db 0x80
      003934 E2                    3059 	.db 0xe2
      003935 94                    3060 	.db 0x94
      003936 80                    3061 	.db 0x80
      003937 E2                    3062 	.db 0xe2
      003938 94                    3063 	.db 0x94
      003939 80                    3064 	.db 0x80
      00393A E2                    3065 	.db 0xe2
      00393B 94                    3066 	.db 0x94
      00393C 80                    3067 	.db 0x80
      00393D E2                    3068 	.db 0xe2
      00393E 94                    3069 	.db 0x94
      00393F 80                    3070 	.db 0x80
      003940 E2                    3071 	.db 0xe2
      003941 94                    3072 	.db 0x94
      003942 80                    3073 	.db 0x80
      003943 E2                    3074 	.db 0xe2
      003944 94                    3075 	.db 0x94
      003945 80                    3076 	.db 0x80
      003946 E2                    3077 	.db 0xe2
      003947 94                    3078 	.db 0x94
      003948 80                    3079 	.db 0x80
      003949 E2                    3080 	.db 0xe2
      00394A 94                    3081 	.db 0x94
      00394B 80                    3082 	.db 0x80
      00394C E2                    3083 	.db 0xe2
      00394D 94                    3084 	.db 0x94
      00394E 80                    3085 	.db 0x80
      00394F E2                    3086 	.db 0xe2
      003950 94                    3087 	.db 0x94
      003951 80                    3088 	.db 0x80
      003952 E2                    3089 	.db 0xe2
      003953 94                    3090 	.db 0x94
      003954 80                    3091 	.db 0x80
      003955 E2                    3092 	.db 0xe2
      003956 94                    3093 	.db 0x94
      003957 80                    3094 	.db 0x80
      003958 E2                    3095 	.db 0xe2
      003959 94                    3096 	.db 0x94
      00395A 80                    3097 	.db 0x80
      00395B E2                    3098 	.db 0xe2
      00395C 94                    3099 	.db 0x94
      00395D 80                    3100 	.db 0x80
      00395E E2                    3101 	.db 0xe2
      00395F 94                    3102 	.db 0x94
      003960 80                    3103 	.db 0x80
      003961 E2                    3104 	.db 0xe2
      003962 94                    3105 	.db 0x94
      003963 80                    3106 	.db 0x80
      003964 E2                    3107 	.db 0xe2
      003965 94                    3108 	.db 0x94
      003966 80                    3109 	.db 0x80
      003967 E2                    3110 	.db 0xe2
      003968 94                    3111 	.db 0x94
      003969 80                    3112 	.db 0x80
      00396A E2                    3113 	.db 0xe2
      00396B 94                    3114 	.db 0x94
      00396C 80                    3115 	.db 0x80
      00396D E2                    3116 	.db 0xe2
      00396E 94                    3117 	.db 0x94
      00396F 80                    3118 	.db 0x80
      003970 E2                    3119 	.db 0xe2
      003971 94                    3120 	.db 0x94
      003972 80                    3121 	.db 0x80
      003973 E2                    3122 	.db 0xe2
      003974 94                    3123 	.db 0x94
      003975 80                    3124 	.db 0x80
      003976 E2                    3125 	.db 0xe2
      003977 94                    3126 	.db 0x94
      003978 80                    3127 	.db 0x80
      003979 E2                    3128 	.db 0xe2
      00397A 94                    3129 	.db 0x94
      00397B 80                    3130 	.db 0x80
      00397C E2                    3131 	.db 0xe2
      00397D 94                    3132 	.db 0x94
      00397E 80                    3133 	.db 0x80
      00397F E2                    3134 	.db 0xe2
      003980 94                    3135 	.db 0x94
      003981 80                    3136 	.db 0x80
      003982 E2                    3137 	.db 0xe2
      003983 94                    3138 	.db 0x94
      003984 A4                    3139 	.db 0xa4
      003985 0A                    3140 	.db 0x0a
      003986 0D                    3141 	.db 0x0d
      003987 00                    3142 	.db 0x00
                                   3143 	.area CSEG    (CODE)
                                   3144 	.area CONST   (CODE)
      003988                       3145 ___str_3:
      003988 E2                    3146 	.db 0xe2
      003989 94                    3147 	.db 0x94
      00398A 82                    3148 	.db 0x82
      00398B 20 20 43 6F 6D 6D 61  3149 	.ascii "  Command   "
             6E 64 20 20 20
      003997 E2                    3150 	.db 0xe2
      003998 94                    3151 	.db 0x94
      003999 82                    3152 	.db 0x82
      00399A 20 20 20 20 20 20 20  3153 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      0039CB E2                    3154 	.db 0xe2
      0039CC 94                    3155 	.db 0x94
      0039CD 82                    3156 	.db 0x82
      0039CE 0A                    3157 	.db 0x0a
      0039CF 0D                    3158 	.db 0x0d
      0039D0 00                    3159 	.db 0x00
                                   3160 	.area CSEG    (CODE)
                                   3161 	.area CONST   (CODE)
      0039D1                       3162 ___str_4:
      0039D1 E2                    3163 	.db 0xe2
      0039D2 94                    3164 	.db 0x94
      0039D3 9C                    3165 	.db 0x9c
      0039D4 E2                    3166 	.db 0xe2
      0039D5 94                    3167 	.db 0x94
      0039D6 80                    3168 	.db 0x80
      0039D7 E2                    3169 	.db 0xe2
      0039D8 94                    3170 	.db 0x94
      0039D9 80                    3171 	.db 0x80
      0039DA E2                    3172 	.db 0xe2
      0039DB 94                    3173 	.db 0x94
      0039DC 80                    3174 	.db 0x80
      0039DD E2                    3175 	.db 0xe2
      0039DE 94                    3176 	.db 0x94
      0039DF 80                    3177 	.db 0x80
      0039E0 E2                    3178 	.db 0xe2
      0039E1 94                    3179 	.db 0x94
      0039E2 80                    3180 	.db 0x80
      0039E3 E2                    3181 	.db 0xe2
      0039E4 94                    3182 	.db 0x94
      0039E5 80                    3183 	.db 0x80
      0039E6 E2                    3184 	.db 0xe2
      0039E7 94                    3185 	.db 0x94
      0039E8 80                    3186 	.db 0x80
      0039E9 E2                    3187 	.db 0xe2
      0039EA 94                    3188 	.db 0x94
      0039EB 80                    3189 	.db 0x80
      0039EC E2                    3190 	.db 0xe2
      0039ED 94                    3191 	.db 0x94
      0039EE 80                    3192 	.db 0x80
      0039EF E2                    3193 	.db 0xe2
      0039F0 94                    3194 	.db 0x94
      0039F1 80                    3195 	.db 0x80
      0039F2 E2                    3196 	.db 0xe2
      0039F3 94                    3197 	.db 0x94
      0039F4 80                    3198 	.db 0x80
      0039F5 E2                    3199 	.db 0xe2
      0039F6 94                    3200 	.db 0x94
      0039F7 BC                    3201 	.db 0xbc
      0039F8 E2                    3202 	.db 0xe2
      0039F9 94                    3203 	.db 0x94
      0039FA 80                    3204 	.db 0x80
      0039FB E2                    3205 	.db 0xe2
      0039FC 94                    3206 	.db 0x94
      0039FD 80                    3207 	.db 0x80
      0039FE E2                    3208 	.db 0xe2
      0039FF 94                    3209 	.db 0x94
      003A00 80                    3210 	.db 0x80
      003A01 E2                    3211 	.db 0xe2
      003A02 94                    3212 	.db 0x94
      003A03 80                    3213 	.db 0x80
      003A04 E2                    3214 	.db 0xe2
      003A05 94                    3215 	.db 0x94
      003A06 80                    3216 	.db 0x80
      003A07 E2                    3217 	.db 0xe2
      003A08 94                    3218 	.db 0x94
      003A09 80                    3219 	.db 0x80
      003A0A E2                    3220 	.db 0xe2
      003A0B 94                    3221 	.db 0x94
      003A0C 80                    3222 	.db 0x80
      003A0D E2                    3223 	.db 0xe2
      003A0E 94                    3224 	.db 0x94
      003A0F 80                    3225 	.db 0x80
      003A10 E2                    3226 	.db 0xe2
      003A11 94                    3227 	.db 0x94
      003A12 80                    3228 	.db 0x80
      003A13 E2                    3229 	.db 0xe2
      003A14 94                    3230 	.db 0x94
      003A15 80                    3231 	.db 0x80
      003A16 E2                    3232 	.db 0xe2
      003A17 94                    3233 	.db 0x94
      003A18 80                    3234 	.db 0x80
      003A19 E2                    3235 	.db 0xe2
      003A1A 94                    3236 	.db 0x94
      003A1B 80                    3237 	.db 0x80
      003A1C E2                    3238 	.db 0xe2
      003A1D 94                    3239 	.db 0x94
      003A1E 80                    3240 	.db 0x80
      003A1F E2                    3241 	.db 0xe2
      003A20 94                    3242 	.db 0x94
      003A21 80                    3243 	.db 0x80
      003A22 E2                    3244 	.db 0xe2
      003A23 94                    3245 	.db 0x94
      003A24 80                    3246 	.db 0x80
      003A25 E2                    3247 	.db 0xe2
      003A26 94                    3248 	.db 0x94
      003A27 80                    3249 	.db 0x80
      003A28 E2                    3250 	.db 0xe2
      003A29 94                    3251 	.db 0x94
      003A2A 80                    3252 	.db 0x80
      003A2B E2                    3253 	.db 0xe2
      003A2C 94                    3254 	.db 0x94
      003A2D 80                    3255 	.db 0x80
      003A2E E2                    3256 	.db 0xe2
      003A2F 94                    3257 	.db 0x94
      003A30 80                    3258 	.db 0x80
      003A31 E2                    3259 	.db 0xe2
      003A32 94                    3260 	.db 0x94
      003A33 80                    3261 	.db 0x80
      003A34 E2                    3262 	.db 0xe2
      003A35 94                    3263 	.db 0x94
      003A36 80                    3264 	.db 0x80
      003A37 E2                    3265 	.db 0xe2
      003A38 94                    3266 	.db 0x94
      003A39 80                    3267 	.db 0x80
      003A3A E2                    3268 	.db 0xe2
      003A3B 94                    3269 	.db 0x94
      003A3C 80                    3270 	.db 0x80
      003A3D E2                    3271 	.db 0xe2
      003A3E 94                    3272 	.db 0x94
      003A3F 80                    3273 	.db 0x80
      003A40 E2                    3274 	.db 0xe2
      003A41 94                    3275 	.db 0x94
      003A42 80                    3276 	.db 0x80
      003A43 E2                    3277 	.db 0xe2
      003A44 94                    3278 	.db 0x94
      003A45 80                    3279 	.db 0x80
      003A46 E2                    3280 	.db 0xe2
      003A47 94                    3281 	.db 0x94
      003A48 80                    3282 	.db 0x80
      003A49 E2                    3283 	.db 0xe2
      003A4A 94                    3284 	.db 0x94
      003A4B 80                    3285 	.db 0x80
      003A4C E2                    3286 	.db 0xe2
      003A4D 94                    3287 	.db 0x94
      003A4E 80                    3288 	.db 0x80
      003A4F E2                    3289 	.db 0xe2
      003A50 94                    3290 	.db 0x94
      003A51 80                    3291 	.db 0x80
      003A52 E2                    3292 	.db 0xe2
      003A53 94                    3293 	.db 0x94
      003A54 80                    3294 	.db 0x80
      003A55 E2                    3295 	.db 0xe2
      003A56 94                    3296 	.db 0x94
      003A57 80                    3297 	.db 0x80
      003A58 E2                    3298 	.db 0xe2
      003A59 94                    3299 	.db 0x94
      003A5A 80                    3300 	.db 0x80
      003A5B E2                    3301 	.db 0xe2
      003A5C 94                    3302 	.db 0x94
      003A5D 80                    3303 	.db 0x80
      003A5E E2                    3304 	.db 0xe2
      003A5F 94                    3305 	.db 0x94
      003A60 80                    3306 	.db 0x80
      003A61 E2                    3307 	.db 0xe2
      003A62 94                    3308 	.db 0x94
      003A63 80                    3309 	.db 0x80
      003A64 E2                    3310 	.db 0xe2
      003A65 94                    3311 	.db 0x94
      003A66 80                    3312 	.db 0x80
      003A67 E2                    3313 	.db 0xe2
      003A68 94                    3314 	.db 0x94
      003A69 80                    3315 	.db 0x80
      003A6A E2                    3316 	.db 0xe2
      003A6B 94                    3317 	.db 0x94
      003A6C 80                    3318 	.db 0x80
      003A6D E2                    3319 	.db 0xe2
      003A6E 94                    3320 	.db 0x94
      003A6F 80                    3321 	.db 0x80
      003A70 E2                    3322 	.db 0xe2
      003A71 94                    3323 	.db 0x94
      003A72 80                    3324 	.db 0x80
      003A73 E2                    3325 	.db 0xe2
      003A74 94                    3326 	.db 0x94
      003A75 80                    3327 	.db 0x80
      003A76 E2                    3328 	.db 0xe2
      003A77 94                    3329 	.db 0x94
      003A78 80                    3330 	.db 0x80
      003A79 E2                    3331 	.db 0xe2
      003A7A 94                    3332 	.db 0x94
      003A7B 80                    3333 	.db 0x80
      003A7C E2                    3334 	.db 0xe2
      003A7D 94                    3335 	.db 0x94
      003A7E 80                    3336 	.db 0x80
      003A7F E2                    3337 	.db 0xe2
      003A80 94                    3338 	.db 0x94
      003A81 80                    3339 	.db 0x80
      003A82 E2                    3340 	.db 0xe2
      003A83 94                    3341 	.db 0x94
      003A84 80                    3342 	.db 0x80
      003A85 E2                    3343 	.db 0xe2
      003A86 94                    3344 	.db 0x94
      003A87 A4                    3345 	.db 0xa4
      003A88 0A                    3346 	.db 0x0a
      003A89 0D                    3347 	.db 0x0d
      003A8A 00                    3348 	.db 0x00
                                   3349 	.area CSEG    (CODE)
                                   3350 	.area CONST   (CODE)
      003A8B                       3351 ___str_5:
      003A8B E2                    3352 	.db 0xe2
      003A8C 94                    3353 	.db 0x94
      003A8D 82                    3354 	.db 0x82
      003A8E 20 20 20 20 4D 20 20  3355 	.ascii "    M      "
             20 20 20 20
      003A99 E2                    3356 	.db 0xe2
      003A9A 94                    3357 	.db 0x94
      003A9B 82                    3358 	.db 0x82
      003A9C 20 4D 61 6E 75 61 6C  3359 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003ACC E2                    3360 	.db 0xe2
      003ACD 94                    3361 	.db 0x94
      003ACE 82                    3362 	.db 0x82
      003ACF 0A                    3363 	.db 0x0a
      003AD0 0D                    3364 	.db 0x0d
      003AD1 00                    3365 	.db 0x00
                                   3366 	.area CSEG    (CODE)
                                   3367 	.area CONST   (CODE)
      003AD2                       3368 ___str_6:
      003AD2 E2                    3369 	.db 0xe2
      003AD3 94                    3370 	.db 0x94
      003AD4 82                    3371 	.db 0x82
      003AD5 20 20 20 20 42 20 20  3372 	.ascii "    B      "
             20 20 20 20
      003AE0 E2                    3373 	.db 0xe2
      003AE1 94                    3374 	.db 0x94
      003AE2 82                    3375 	.db 0x82
      003AE3 20 42 69 74 20 42 61  3376 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B12 E2                    3377 	.db 0xe2
      003B13 94                    3378 	.db 0x94
      003B14 82                    3379 	.db 0x82
      003B15 0A                    3380 	.db 0x0a
      003B16 0D                    3381 	.db 0x0d
      003B17 00                    3382 	.db 0x00
                                   3383 	.area CSEG    (CODE)
                                   3384 	.area CONST   (CODE)
      003B18                       3385 ___str_7:
      003B18 E2                    3386 	.db 0xe2
      003B19 94                    3387 	.db 0x94
      003B1A 82                    3388 	.db 0x82
      003B1B 20 20 20 20 53 20 20  3389 	.ascii "    S      "
             20 20 20 20
      003B26 E2                    3390 	.db 0xe2
      003B27 94                    3391 	.db 0x94
      003B28 82                    3392 	.db 0x82
      003B29 20 47 65 6E 65 72 61  3393 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B58 E2                    3394 	.db 0xe2
      003B59 94                    3395 	.db 0x94
      003B5A 82                    3396 	.db 0x82
      003B5B 0A                    3397 	.db 0x0a
      003B5C 0D                    3398 	.db 0x0d
      003B5D 00                    3399 	.db 0x00
                                   3400 	.area CSEG    (CODE)
                                   3401 	.area CONST   (CODE)
      003B5E                       3402 ___str_8:
      003B5E E2                    3403 	.db 0xe2
      003B5F 94                    3404 	.db 0x94
      003B60 82                    3405 	.db 0x82
      003B61 20 20 20 20 54 20 20  3406 	.ascii "    T      "
             20 20 20 20
      003B6C E2                    3407 	.db 0xe2
      003B6D 94                    3408 	.db 0x94
      003B6E 82                    3409 	.db 0x82
      003B6F 20 47 65 6E 65 72 61  3410 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B9E E2                    3411 	.db 0xe2
      003B9F 94                    3412 	.db 0x94
      003BA0 82                    3413 	.db 0x82
      003BA1 0A                    3414 	.db 0x0a
      003BA2 0D                    3415 	.db 0x0d
      003BA3 00                    3416 	.db 0x00
                                   3417 	.area CSEG    (CODE)
                                   3418 	.area CONST   (CODE)
      003BA4                       3419 ___str_9:
      003BA4 E2                    3420 	.db 0xe2
      003BA5 94                    3421 	.db 0x94
      003BA6 82                    3422 	.db 0x82
      003BA7 20 20 20 20 44 20 20  3423 	.ascii "    D      "
             20 20 20 20
      003BB2 E2                    3424 	.db 0xe2
      003BB3 94                    3425 	.db 0x94
      003BB4 82                    3426 	.db 0x82
      003BB5 20 44 65 6D 6F 20 4D  3427 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003BE4 E2                    3428 	.db 0xe2
      003BE5 94                    3429 	.db 0x94
      003BE6 82                    3430 	.db 0x82
      003BE7 0A                    3431 	.db 0x0a
      003BE8 0D                    3432 	.db 0x0d
      003BE9 00                    3433 	.db 0x00
                                   3434 	.area CSEG    (CODE)
                                   3435 	.area CONST   (CODE)
      003BEA                       3436 ___str_10:
      003BEA E2                    3437 	.db 0xe2
      003BEB 94                    3438 	.db 0x94
      003BEC 82                    3439 	.db 0x82
      003BED 20 20 20 20 52 20 20  3440 	.ascii "    R      "
             20 20 20 20
      003BF8 E2                    3441 	.db 0xe2
      003BF9 94                    3442 	.db 0x94
      003BFA 82                    3443 	.db 0x82
      003BFB 20 52 61 6D 70 20 77  3444 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C2A E2                    3445 	.db 0xe2
      003C2B 94                    3446 	.db 0x94
      003C2C 82                    3447 	.db 0x82
      003C2D 0A                    3448 	.db 0x0a
      003C2E 0D                    3449 	.db 0x0d
      003C2F 00                    3450 	.db 0x00
                                   3451 	.area CSEG    (CODE)
                                   3452 	.area CONST   (CODE)
      003C30                       3453 ___str_11:
      003C30 E2                    3454 	.db 0xe2
      003C31 94                    3455 	.db 0x94
      003C32 82                    3456 	.db 0x82
      003C33 20 20 20 20 3F 20 20  3457 	.ascii "    ?      "
             20 20 20 20
      003C3E E2                    3458 	.db 0xe2
      003C3F 94                    3459 	.db 0x94
      003C40 82                    3460 	.db 0x82
      003C41 20 44 69 73 70 6C 61  3461 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C70 E2                    3462 	.db 0xe2
      003C71 94                    3463 	.db 0x94
      003C72 82                    3464 	.db 0x82
      003C73 0A                    3465 	.db 0x0a
      003C74 0D                    3466 	.db 0x0d
      003C75 00                    3467 	.db 0x00
                                   3468 	.area CSEG    (CODE)
                                   3469 	.area CONST   (CODE)
      003C76                       3470 ___str_12:
      003C76 E2                    3471 	.db 0xe2
      003C77 94                    3472 	.db 0x94
      003C78 94                    3473 	.db 0x94
      003C79 E2                    3474 	.db 0xe2
      003C7A 94                    3475 	.db 0x94
      003C7B 80                    3476 	.db 0x80
      003C7C E2                    3477 	.db 0xe2
      003C7D 94                    3478 	.db 0x94
      003C7E 80                    3479 	.db 0x80
      003C7F E2                    3480 	.db 0xe2
      003C80 94                    3481 	.db 0x94
      003C81 80                    3482 	.db 0x80
      003C82 E2                    3483 	.db 0xe2
      003C83 94                    3484 	.db 0x94
      003C84 80                    3485 	.db 0x80
      003C85 E2                    3486 	.db 0xe2
      003C86 94                    3487 	.db 0x94
      003C87 80                    3488 	.db 0x80
      003C88 E2                    3489 	.db 0xe2
      003C89 94                    3490 	.db 0x94
      003C8A 80                    3491 	.db 0x80
      003C8B E2                    3492 	.db 0xe2
      003C8C 94                    3493 	.db 0x94
      003C8D 80                    3494 	.db 0x80
      003C8E E2                    3495 	.db 0xe2
      003C8F 94                    3496 	.db 0x94
      003C90 80                    3497 	.db 0x80
      003C91 E2                    3498 	.db 0xe2
      003C92 94                    3499 	.db 0x94
      003C93 80                    3500 	.db 0x80
      003C94 E2                    3501 	.db 0xe2
      003C95 94                    3502 	.db 0x94
      003C96 80                    3503 	.db 0x80
      003C97 E2                    3504 	.db 0xe2
      003C98 94                    3505 	.db 0x94
      003C99 80                    3506 	.db 0x80
      003C9A E2                    3507 	.db 0xe2
      003C9B 94                    3508 	.db 0x94
      003C9C B4                    3509 	.db 0xb4
      003C9D E2                    3510 	.db 0xe2
      003C9E 94                    3511 	.db 0x94
      003C9F 80                    3512 	.db 0x80
      003CA0 E2                    3513 	.db 0xe2
      003CA1 94                    3514 	.db 0x94
      003CA2 80                    3515 	.db 0x80
      003CA3 E2                    3516 	.db 0xe2
      003CA4 94                    3517 	.db 0x94
      003CA5 80                    3518 	.db 0x80
      003CA6 E2                    3519 	.db 0xe2
      003CA7 94                    3520 	.db 0x94
      003CA8 80                    3521 	.db 0x80
      003CA9 E2                    3522 	.db 0xe2
      003CAA 94                    3523 	.db 0x94
      003CAB 80                    3524 	.db 0x80
      003CAC E2                    3525 	.db 0xe2
      003CAD 94                    3526 	.db 0x94
      003CAE 80                    3527 	.db 0x80
      003CAF E2                    3528 	.db 0xe2
      003CB0 94                    3529 	.db 0x94
      003CB1 80                    3530 	.db 0x80
      003CB2 E2                    3531 	.db 0xe2
      003CB3 94                    3532 	.db 0x94
      003CB4 80                    3533 	.db 0x80
      003CB5 E2                    3534 	.db 0xe2
      003CB6 94                    3535 	.db 0x94
      003CB7 80                    3536 	.db 0x80
      003CB8 E2                    3537 	.db 0xe2
      003CB9 94                    3538 	.db 0x94
      003CBA 80                    3539 	.db 0x80
      003CBB E2                    3540 	.db 0xe2
      003CBC 94                    3541 	.db 0x94
      003CBD 80                    3542 	.db 0x80
      003CBE E2                    3543 	.db 0xe2
      003CBF 94                    3544 	.db 0x94
      003CC0 80                    3545 	.db 0x80
      003CC1 E2                    3546 	.db 0xe2
      003CC2 94                    3547 	.db 0x94
      003CC3 80                    3548 	.db 0x80
      003CC4 E2                    3549 	.db 0xe2
      003CC5 94                    3550 	.db 0x94
      003CC6 80                    3551 	.db 0x80
      003CC7 E2                    3552 	.db 0xe2
      003CC8 94                    3553 	.db 0x94
      003CC9 80                    3554 	.db 0x80
      003CCA E2                    3555 	.db 0xe2
      003CCB 94                    3556 	.db 0x94
      003CCC 80                    3557 	.db 0x80
      003CCD E2                    3558 	.db 0xe2
      003CCE 94                    3559 	.db 0x94
      003CCF 80                    3560 	.db 0x80
      003CD0 E2                    3561 	.db 0xe2
      003CD1 94                    3562 	.db 0x94
      003CD2 80                    3563 	.db 0x80
      003CD3 E2                    3564 	.db 0xe2
      003CD4 94                    3565 	.db 0x94
      003CD5 80                    3566 	.db 0x80
      003CD6 E2                    3567 	.db 0xe2
      003CD7 94                    3568 	.db 0x94
      003CD8 80                    3569 	.db 0x80
      003CD9 E2                    3570 	.db 0xe2
      003CDA 94                    3571 	.db 0x94
      003CDB 80                    3572 	.db 0x80
      003CDC E2                    3573 	.db 0xe2
      003CDD 94                    3574 	.db 0x94
      003CDE 80                    3575 	.db 0x80
      003CDF E2                    3576 	.db 0xe2
      003CE0 94                    3577 	.db 0x94
      003CE1 80                    3578 	.db 0x80
      003CE2 E2                    3579 	.db 0xe2
      003CE3 94                    3580 	.db 0x94
      003CE4 80                    3581 	.db 0x80
      003CE5 E2                    3582 	.db 0xe2
      003CE6 94                    3583 	.db 0x94
      003CE7 80                    3584 	.db 0x80
      003CE8 E2                    3585 	.db 0xe2
      003CE9 94                    3586 	.db 0x94
      003CEA 80                    3587 	.db 0x80
      003CEB E2                    3588 	.db 0xe2
      003CEC 94                    3589 	.db 0x94
      003CED 80                    3590 	.db 0x80
      003CEE E2                    3591 	.db 0xe2
      003CEF 94                    3592 	.db 0x94
      003CF0 80                    3593 	.db 0x80
      003CF1 E2                    3594 	.db 0xe2
      003CF2 94                    3595 	.db 0x94
      003CF3 80                    3596 	.db 0x80
      003CF4 E2                    3597 	.db 0xe2
      003CF5 94                    3598 	.db 0x94
      003CF6 80                    3599 	.db 0x80
      003CF7 E2                    3600 	.db 0xe2
      003CF8 94                    3601 	.db 0x94
      003CF9 80                    3602 	.db 0x80
      003CFA E2                    3603 	.db 0xe2
      003CFB 94                    3604 	.db 0x94
      003CFC 80                    3605 	.db 0x80
      003CFD E2                    3606 	.db 0xe2
      003CFE 94                    3607 	.db 0x94
      003CFF 80                    3608 	.db 0x80
      003D00 E2                    3609 	.db 0xe2
      003D01 94                    3610 	.db 0x94
      003D02 80                    3611 	.db 0x80
      003D03 E2                    3612 	.db 0xe2
      003D04 94                    3613 	.db 0x94
      003D05 80                    3614 	.db 0x80
      003D06 E2                    3615 	.db 0xe2
      003D07 94                    3616 	.db 0x94
      003D08 80                    3617 	.db 0x80
      003D09 E2                    3618 	.db 0xe2
      003D0A 94                    3619 	.db 0x94
      003D0B 80                    3620 	.db 0x80
      003D0C E2                    3621 	.db 0xe2
      003D0D 94                    3622 	.db 0x94
      003D0E 80                    3623 	.db 0x80
      003D0F E2                    3624 	.db 0xe2
      003D10 94                    3625 	.db 0x94
      003D11 80                    3626 	.db 0x80
      003D12 E2                    3627 	.db 0xe2
      003D13 94                    3628 	.db 0x94
      003D14 80                    3629 	.db 0x80
      003D15 E2                    3630 	.db 0xe2
      003D16 94                    3631 	.db 0x94
      003D17 80                    3632 	.db 0x80
      003D18 E2                    3633 	.db 0xe2
      003D19 94                    3634 	.db 0x94
      003D1A 80                    3635 	.db 0x80
      003D1B E2                    3636 	.db 0xe2
      003D1C 94                    3637 	.db 0x94
      003D1D 80                    3638 	.db 0x80
      003D1E E2                    3639 	.db 0xe2
      003D1F 94                    3640 	.db 0x94
      003D20 80                    3641 	.db 0x80
      003D21 E2                    3642 	.db 0xe2
      003D22 94                    3643 	.db 0x94
      003D23 80                    3644 	.db 0x80
      003D24 E2                    3645 	.db 0xe2
      003D25 94                    3646 	.db 0x94
      003D26 80                    3647 	.db 0x80
      003D27 E2                    3648 	.db 0xe2
      003D28 94                    3649 	.db 0x94
      003D29 80                    3650 	.db 0x80
      003D2A E2                    3651 	.db 0xe2
      003D2B 94                    3652 	.db 0x94
      003D2C 98                    3653 	.db 0x98
      003D2D 0A                    3654 	.db 0x0a
      003D2E 0D                    3655 	.db 0x0d
      003D2F 00                    3656 	.db 0x00
                                   3657 	.area CSEG    (CODE)
                                   3658 	.area CONST   (CODE)
      003D30                       3659 ___str_13:
      003D30 0A                    3660 	.db 0x0a
      003D31 0D                    3661 	.db 0x0d
      003D32 45 6E 74 65 72 20 63  3662 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003D41 00                    3663 	.db 0x00
                                   3664 	.area CSEG    (CODE)
                                   3665 	.area CONST   (CODE)
      003D42                       3666 ___str_14:
      003D42 7C 20 24 20 25 63     3667 	.ascii "| $ %c"
      003D48 0A                    3668 	.db 0x0a
      003D49 0D                    3669 	.db 0x0d
      003D4A 00                    3670 	.db 0x00
                                   3671 	.area CSEG    (CODE)
                                   3672 	.area CONST   (CODE)
      003D4B                       3673 ___str_15:
      003D4B 0A                    3674 	.db 0x0a
      003D4C 0D                    3675 	.db 0x0d
      003D4D 00                    3676 	.db 0x00
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
      003D4E                       3679 ___str_16:
      003D4E 3E 3E 20 53 49 4E 20  3680 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003D6D 0A                    3681 	.db 0x0a
      003D6E 0D                    3682 	.db 0x0d
      003D6F 00                    3683 	.db 0x00
                                   3684 	.area CSEG    (CODE)
                                   3685 	.area CONST   (CODE)
      003D70                       3686 ___str_17:
      003D70 3E 3E 20 53 51 55 41  3687 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003D92 0A                    3688 	.db 0x0a
      003D93 0D                    3689 	.db 0x0d
      003D94 00                    3690 	.db 0x00
                                   3691 	.area CSEG    (CODE)
                                   3692 	.area CONST   (CODE)
      003D95                       3693 ___str_18:
      003D95 3E 3E 20 49 4E 56 41  3694 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003DA5 0A                    3695 	.db 0x0a
      003DA6 0D                    3696 	.db 0x0d
      003DA7 00                    3697 	.db 0x00
                                   3698 	.area CSEG    (CODE)
                                   3699 	.area CONST   (CODE)
      003DA8                       3700 ___str_19:
      003DA8 E2                    3701 	.db 0xe2
      003DA9 94                    3702 	.db 0x94
      003DAA 82                    3703 	.db 0x82
      003DAB 20 45 6E 74 65 72 20  3704 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003DCF 0A                    3705 	.db 0x0a
      003DD0 0D                    3706 	.db 0x0d
      003DD1 7C                    3707 	.ascii "|"
      003DD2 00                    3708 	.db 0x00
                                   3709 	.area CSEG    (CODE)
                                   3710 	.area CONST   (CODE)
      003DD3                       3711 ___str_20:
      003DD3 24 20                 3712 	.ascii "$ "
      003DD5 00                    3713 	.db 0x00
                                   3714 	.area CSEG    (CODE)
                                   3715 	.area CONST   (CODE)
      003DD6                       3716 ___str_21:
      003DD6 0A                    3717 	.db 0x0a
      003DD7 0D                    3718 	.db 0x0d
      003DD8 E2                    3719 	.db 0xe2
      003DD9 94                    3720 	.db 0x94
      003DDA 82                    3721 	.db 0x82
      003DDB 20 45 6E 74 65 72 65  3722 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003DF0 0A                    3723 	.db 0x0a
      003DF1 0D                    3724 	.db 0x0d
      003DF2 00                    3725 	.db 0x00
                                   3726 	.area CSEG    (CODE)
                                   3727 	.area XINIT   (CODE)
      003DFE                       3728 __xinit__ms_flag:
      003DFE 00                    3729 	.db #0x00	; 0
      003DFF                       3730 __xinit__transmission_complete:
      003DFF 00 00                 3731 	.byte #0x00, #0x00	;  0
                                   3732 	.area CABS    (ABS,CODE)
