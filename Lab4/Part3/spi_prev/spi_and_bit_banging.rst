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
      0020C2 74 08            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 38            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 A6         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 CD            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 A6         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 14            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 A6         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 D7            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 A6         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 20            [12]  733 	mov	a,#___str_4
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 3A            [12]  735 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 A6         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 DA            [12]  744 	mov	a,#___str_5
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 A6         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 21            [12]  755 	mov	a,#___str_6
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3B            [12]  757 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 A6         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 67            [12]  766 	mov	a,#___str_7
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3B            [12]  768 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 A6         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 AD            [12]  777 	mov	a,#___str_8
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 A6         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 F3            [12]  788 	mov	a,#___str_9
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 A6         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 39            [12]  799 	mov	a,#___str_10
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3C            [12]  801 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 A6         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 7F            [12]  810 	mov	a,#___str_11
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 A6         [24]  816 	lcall	_printf
      0021B8 15 81            [12]  817 	dec	sp
      0021BA 15 81            [12]  818 	dec	sp
      0021BC 15 81            [12]  819 	dec	sp
                                    820 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 C5            [12]  821 	mov	a,#___str_12
      0021C0 C0 E0            [24]  822 	push	acc
      0021C2 74 3C            [12]  823 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  824 	push	acc
      0021C6 74 80            [12]  825 	mov	a,#0x80
      0021C8 C0 E0            [24]  826 	push	acc
      0021CA 12 27 A6         [24]  827 	lcall	_printf
      0021CD 15 81            [12]  828 	dec	sp
      0021CF 15 81            [12]  829 	dec	sp
      0021D1 15 81            [12]  830 	dec	sp
                                    831 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 7F            [12]  832 	mov	a,#___str_13
      0021D5 C0 E0            [24]  833 	push	acc
      0021D7 74 3D            [12]  834 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  835 	push	acc
      0021DB 74 80            [12]  836 	mov	a,#0x80
      0021DD C0 E0            [24]  837 	push	acc
      0021DF 12 27 A6         [24]  838 	lcall	_printf
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
      0021FF 74 91            [12]  881 	mov	a,#___str_14
      002201 C0 E0            [24]  882 	push	acc
      002203 74 3D            [12]  883 	mov	a,#(___str_14 >> 8)
      002205 C0 E0            [24]  884 	push	acc
      002207 74 80            [12]  885 	mov	a,#0x80
      002209 C0 E0            [24]  886 	push	acc
      00220B 12 27 A6         [24]  887 	lcall	_printf
      00220E E5 81            [12]  888 	mov	a,sp
      002210 24 FB            [12]  889 	add	a,#0xfb
      002212 F5 81            [12]  890 	mov	sp,a
                                    891 ;	spi_and_bit_banging.c:268: printf("\n\r");
      002214 74 9A            [12]  892 	mov	a,#___str_15
      002216 C0 E0            [24]  893 	push	acc
      002218 74 3D            [12]  894 	mov	a,#(___str_15 >> 8)
      00221A C0 E0            [24]  895 	push	acc
      00221C 74 80            [12]  896 	mov	a,#0x80
      00221E C0 E0            [24]  897 	push	acc
      002220 12 27 A6         [24]  898 	lcall	_printf
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
      002233 12 25 38         [24]  909 	lcall	_spi_init
                                    910 ;	spi_and_bit_banging.c:273: unsigned char result = take_data();
      002236 12 22 DA         [24]  911 	lcall	_take_data
                                    912 ;	spi_and_bit_banging.c:274: mannual_spi(result);
      002239 12 24 2E         [24]  913 	lcall	_mannual_spi
                                    914 ;	spi_and_bit_banging.c:275: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00223C 74 9D            [12]  915 	mov	a,#___str_16
      00223E C0 E0            [24]  916 	push	acc
      002240 74 3D            [12]  917 	mov	a,#(___str_16 >> 8)
      002242 C0 E0            [24]  918 	push	acc
      002244 74 80            [12]  919 	mov	a,#0x80
      002246 C0 E0            [24]  920 	push	acc
      002248 12 27 A6         [24]  921 	lcall	_printf
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
      002256 12 25 42         [24]  932 	lcall	_bit_bang_spi_init
                                    933 ;	spi_and_bit_banging.c:282: unsigned char result2 = take_data();
      002259 12 22 DA         [24]  934 	lcall	_take_data
                                    935 ;	spi_and_bit_banging.c:283: bit_bang_spi(result2);
      00225C 12 22 A7         [24]  936 	lcall	_bit_bang_spi
                                    937 ;	spi_and_bit_banging.c:284: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00225F 74 BF            [12]  938 	mov	a,#___str_17
      002261 C0 E0            [24]  939 	push	acc
      002263 74 3D            [12]  940 	mov	a,#(___str_17 >> 8)
      002265 C0 E0            [24]  941 	push	acc
      002267 74 80            [12]  942 	mov	a,#0x80
      002269 C0 E0            [24]  943 	push	acc
      00226B 12 27 A6         [24]  944 	lcall	_printf
      00226E 15 81            [12]  945 	dec	sp
      002270 15 81            [12]  946 	dec	sp
      002272 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:286: break;
      002274 02 21 F0         [24]  949 	ljmp	00106$
                                    950 ;	spi_and_bit_banging.c:326: default:
      002277                        951 00103$:
                                    952 ;	spi_and_bit_banging.c:327: printf(">> INVALID INPUT\n\r");
      002277 74 E4            [12]  953 	mov	a,#___str_18
      002279 C0 E0            [24]  954 	push	acc
      00227B 74 3D            [12]  955 	mov	a,#(___str_18 >> 8)
      00227D C0 E0            [24]  956 	push	acc
      00227F 74 80            [12]  957 	mov	a,#0x80
      002281 C0 E0            [24]  958 	push	acc
      002283 12 27 A6         [24]  959 	lcall	_printf
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
      00229E 12 26 7A         [24]  982 	lcall	_spi_ramp_signal
                                    983 ;	spi_and_bit_banging.c:345: spi_triangular_wave(7);
      0022A1 90 00 07         [24]  984 	mov	dptr,#0x0007
                                    985 ;	spi_and_bit_banging.c:346: }
      0022A4 02 25 9C         [24]  986 	ljmp	_spi_triangular_wave
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
      0022BA 12 25 4C         [24] 1010 	lcall	_bit_bang_spi_write
                                   1011 ;	spi_and_bit_banging.c:355: delay_ms(DELAY_PERIOD);
      0022BD 90 01 F4         [24] 1012 	mov	dptr,#0x01f4
      0022C0 12 20 8F         [24] 1013 	lcall	_delay_ms
                                   1014 ;	spi_and_bit_banging.c:356: bit_bang_spi_write(IDLE_DATA);
      0022C3 90 10 00         [24] 1015 	mov	dptr,#0x1000
      0022C6 12 25 4C         [24] 1016 	lcall	_bit_bang_spi_write
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
      0022DA 74 F7            [12] 1044 	mov	a,#___str_19
      0022DC C0 E0            [24] 1045 	push	acc
      0022DE 74 3D            [12] 1046 	mov	a,#(___str_19 >> 8)
      0022E0 C0 E0            [24] 1047 	push	acc
      0022E2 74 80            [12] 1048 	mov	a,#0x80
      0022E4 C0 E0            [24] 1049 	push	acc
      0022E6 12 27 A6         [24] 1050 	lcall	_printf
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
      002300 74 22            [12] 1065 	mov	a,#___str_20
      002302 C0 E0            [24] 1066 	push	acc
      002304 74 3E            [12] 1067 	mov	a,#(___str_20 >> 8)
      002306 C0 E0            [24] 1068 	push	acc
      002308 74 80            [12] 1069 	mov	a,#0x80
      00230A C0 E0            [24] 1070 	push	acc
      00230C 12 27 A6         [24] 1071 	lcall	_printf
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
      002414 74 25            [12] 1261 	mov	a,#___str_21
      002416 C0 E0            [24] 1262 	push	acc
      002418 74 3E            [12] 1263 	mov	a,#(___str_21 >> 8)
      00241A C0 E0            [24] 1264 	push	acc
      00241C 74 80            [12] 1265 	mov	a,#0x80
      00241E C0 E0            [24] 1266 	push	acc
      002420 12 27 A6         [24] 1267 	lcall	_printf
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
      002441 74 42            [12] 1306 	mov	a,#___str_22
      002443 C0 E0            [24] 1307 	push	acc
      002445 74 3E            [12] 1308 	mov	a,#(___str_22 >> 8)
      002447 C0 E0            [24] 1309 	push	acc
      002449 74 80            [12] 1310 	mov	a,#0x80
      00244B C0 E0            [24] 1311 	push	acc
      00244D 12 27 A6         [24] 1312 	lcall	_printf
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
      002461 74 57            [12] 1323 	mov	a,#___str_23
      002463 C0 E0            [24] 1324 	push	acc
      002465 74 3E            [12] 1325 	mov	a,#(___str_23 >> 8)
      002467 C0 E0            [24] 1326 	push	acc
      002469 74 80            [12] 1327 	mov	a,#0x80
      00246B C0 E0            [24] 1328 	push	acc
      00246D 12 27 A6         [24] 1329 	lcall	_printf
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
      002485 74 5C            [12] 1346 	mov	a,#___str_24
      002487 C0 E0            [24] 1347 	push	acc
      002489 74 3E            [12] 1348 	mov	a,#(___str_24 >> 8)
      00248B C0 E0            [24] 1349 	push	acc
      00248D 74 80            [12] 1350 	mov	a,#0x80
      00248F C0 E0            [24] 1351 	push	acc
      002491 12 27 A6         [24] 1352 	lcall	_printf
      002494 E5 81            [12] 1353 	mov	a,sp
      002496 24 FB            [12] 1354 	add	a,#0xfb
      002498 F5 81            [12] 1355 	mov	sp,a
                                   1356 ;	spi_and_bit_banging.c:426: for(int i = 0; i<256; i++)
      00249A 7E 00            [12] 1357 	mov	r6,#0x00
      00249C 7F 00            [12] 1358 	mov	r7,#0x00
      00249E                       1359 00115$:
      00249E C3               [12] 1360 	clr	c
      00249F EF               [12] 1361 	mov	a,r7
      0024A0 64 80            [12] 1362 	xrl	a,#0x80
      0024A2 94 81            [12] 1363 	subb	a,#0x81
      0024A4 40 03            [24] 1364 	jc	00157$
      0024A6 02 25 2E         [24] 1365 	ljmp	00110$
      0024A9                       1366 00157$:
                                   1367 ;	spi_and_bit_banging.c:429: if(dac_value_index < SINE_MAX_INDEX)
      0024A9 90 04 0B         [24] 1368 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024AC E0               [24] 1369 	movx	a,@dptr
      0024AD FC               [12] 1370 	mov	r4,a
      0024AE A3               [24] 1371 	inc	dptr
      0024AF E0               [24] 1372 	movx	a,@dptr
      0024B0 FD               [12] 1373 	mov	r5,a
      0024B1 C3               [12] 1374 	clr	c
      0024B2 64 80            [12] 1375 	xrl	a,#0x80
      0024B4 94 81            [12] 1376 	subb	a,#0x81
      0024B6 50 21            [24] 1377 	jnc	00102$
                                   1378 ;	spi_and_bit_banging.c:433: dac_data = dac_values[dac_value_index];
      0024B8 EC               [12] 1379 	mov	a,r4
      0024B9 2C               [12] 1380 	add	a,r4
      0024BA FC               [12] 1381 	mov	r4,a
      0024BB ED               [12] 1382 	mov	a,r5
      0024BC 33               [12] 1383 	rlc	a
      0024BD FD               [12] 1384 	mov	r5,a
      0024BE EC               [12] 1385 	mov	a,r4
      0024BF 24 08            [12] 1386 	add	a,#_dac_values
      0024C1 F5 82            [12] 1387 	mov	dpl,a
      0024C3 ED               [12] 1388 	mov	a,r5
      0024C4 34 32            [12] 1389 	addc	a,#(_dac_values >> 8)
      0024C6 F5 83            [12] 1390 	mov	dph,a
      0024C8 E4               [12] 1391 	clr	a
      0024C9 93               [24] 1392 	movc	a,@a+dptr
      0024CA FC               [12] 1393 	mov	r4,a
      0024CB A3               [24] 1394 	inc	dptr
      0024CC E4               [12] 1395 	clr	a
      0024CD 93               [24] 1396 	movc	a,@a+dptr
      0024CE FD               [12] 1397 	mov	r5,a
      0024CF 90 04 0D         [24] 1398 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024D2 EC               [12] 1399 	mov	a,r4
      0024D3 F0               [24] 1400 	movx	@dptr,a
      0024D4 ED               [12] 1401 	mov	a,r5
      0024D5 A3               [24] 1402 	inc	dptr
      0024D6 F0               [24] 1403 	movx	@dptr,a
      0024D7 80 07            [24] 1404 	sjmp	00103$
      0024D9                       1405 00102$:
                                   1406 ;	spi_and_bit_banging.c:437: dac_value_index = 0;  // Reset index for next cycle
      0024D9 90 04 0B         [24] 1407 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      0024DC E4               [12] 1408 	clr	a
      0024DD F0               [24] 1409 	movx	@dptr,a
      0024DE A3               [24] 1410 	inc	dptr
      0024DF F0               [24] 1411 	movx	@dptr,a
      0024E0                       1412 00103$:
                                   1413 ;	spi_and_bit_banging.c:444: ((dac_data >> 4) & 0x0F);
      0024E0 90 04 0D         [24] 1414 	mov	dptr,#_mannual_spi_dac_data_65536_55
      0024E3 E0               [24] 1415 	movx	a,@dptr
      0024E4 FC               [12] 1416 	mov	r4,a
      0024E5 A3               [24] 1417 	inc	dptr
      0024E6 E0               [24] 1418 	movx	a,@dptr
      0024E7 8C 02            [24] 1419 	mov	ar2,r4
      0024E9 C4               [12] 1420 	swap	a
      0024EA CA               [12] 1421 	xch	a,r2
      0024EB C4               [12] 1422 	swap	a
      0024EC 54 0F            [12] 1423 	anl	a,#0x0f
      0024EE 6A               [12] 1424 	xrl	a,r2
      0024EF CA               [12] 1425 	xch	a,r2
      0024F0 54 0F            [12] 1426 	anl	a,#0x0f
      0024F2 CA               [12] 1427 	xch	a,r2
      0024F3 6A               [12] 1428 	xrl	a,r2
      0024F4 CA               [12] 1429 	xch	a,r2
      0024F5 30 E3 02         [24] 1430 	jnb	acc.3,00159$
      0024F8 44 F0            [12] 1431 	orl	a,#0xf0
      0024FA                       1432 00159$:
      0024FA 74 0F            [12] 1433 	mov	a,#0x0f
      0024FC 5A               [12] 1434 	anl	a,r2
      0024FD 44 10            [12] 1435 	orl	a,#0x10
      0024FF FB               [12] 1436 	mov	r3,a
                                   1437 ;	spi_and_bit_banging.c:447: low_byte = (dac_data & 0x0F) << 4;
      002500 53 04 0F         [24] 1438 	anl	ar4,#0x0f
      002503 EC               [12] 1439 	mov	a,r4
      002504 C4               [12] 1440 	swap	a
      002505 54 F0            [12] 1441 	anl	a,#0xf0
      002507 FD               [12] 1442 	mov	r5,a
                                   1443 ;	spi_and_bit_banging.c:451: P1_1 = 0;  // Select DAC
                                   1444 ;	assignBit
      002508 C2 91            [12] 1445 	clr	_P1_1
                                   1446 ;	spi_and_bit_banging.c:454: SPDAT = high_byte;
      00250A 8B C5            [24] 1447 	mov	_SPDAT,r3
                                   1448 ;	spi_and_bit_banging.c:455: while (!(SPSTA & (1<<7))); 
      00250C                       1449 00104$:
      00250C E5 C4            [12] 1450 	mov	a,_SPSTA
      00250E 30 E7 FB         [24] 1451 	jnb	acc.7,00104$
                                   1452 ;	spi_and_bit_banging.c:459: SPDAT = low_byte;
      002511 8D C5            [24] 1453 	mov	_SPDAT,r5
                                   1454 ;	spi_and_bit_banging.c:460: while (!(SPSTA & (1<<7))); 
      002513                       1455 00107$:
      002513 E5 C4            [12] 1456 	mov	a,_SPSTA
      002515 30 E7 FB         [24] 1457 	jnb	acc.7,00107$
                                   1458 ;	spi_and_bit_banging.c:462: P1_1 = 1;  // Deselect DAC
                                   1459 ;	assignBit
      002518 D2 91            [12] 1460 	setb	_P1_1
                                   1461 ;	spi_and_bit_banging.c:464: dac_value_index++;
      00251A 90 04 0B         [24] 1462 	mov	dptr,#_mannual_spi_dac_value_index_65536_55
      00251D E0               [24] 1463 	movx	a,@dptr
      00251E 24 01            [12] 1464 	add	a,#0x01
      002520 F0               [24] 1465 	movx	@dptr,a
      002521 A3               [24] 1466 	inc	dptr
      002522 E0               [24] 1467 	movx	a,@dptr
      002523 34 00            [12] 1468 	addc	a,#0x00
      002525 F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	spi_and_bit_banging.c:426: for(int i = 0; i<256; i++)
      002526 0E               [12] 1471 	inc	r6
      002527 BE 00 01         [24] 1472 	cjne	r6,#0x00,00162$
      00252A 0F               [12] 1473 	inc	r7
      00252B                       1474 00162$:
      00252B 02 24 9E         [24] 1475 	ljmp	00115$
      00252E                       1476 00110$:
                                   1477 ;	spi_and_bit_banging.c:467: number = number - 1;
      00252E 90 04 0A         [24] 1478 	mov	dptr,#_mannual_spi_number_65536_54
      002531 E0               [24] 1479 	movx	a,@dptr
      002532 FF               [12] 1480 	mov	r7,a
      002533 14               [12] 1481 	dec	a
      002534 F0               [24] 1482 	movx	@dptr,a
                                   1483 ;	spi_and_bit_banging.c:469: }
      002535 02 24 76         [24] 1484 	ljmp	00111$
                                   1485 ;------------------------------------------------------------
                                   1486 ;Allocation info for local variables in function 'spi_init'
                                   1487 ;------------------------------------------------------------
                                   1488 ;	spi_and_bit_banging.c:480: void spi_init(void) 
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function spi_init
                                   1491 ;	-----------------------------------------
      002538                       1492 _spi_init:
                                   1493 ;	spi_and_bit_banging.c:501: SPCON |= 0x10;
      002538 43 C3 10         [24] 1494 	orl	_SPCON,#0x10
                                   1495 ;	spi_and_bit_banging.c:502: SPCON |= 0x20;
      00253B 43 C3 20         [24] 1496 	orl	_SPCON,#0x20
                                   1497 ;	spi_and_bit_banging.c:503: SPCON |= 0x40;
      00253E 43 C3 40         [24] 1498 	orl	_SPCON,#0x40
                                   1499 ;	spi_and_bit_banging.c:510: }
      002541 22               [24] 1500 	ret
                                   1501 ;------------------------------------------------------------
                                   1502 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1503 ;------------------------------------------------------------
                                   1504 ;	spi_and_bit_banging.c:512: void bit_bang_spi_init(void) {
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function bit_bang_spi_init
                                   1507 ;	-----------------------------------------
      002542                       1508 _bit_bang_spi_init:
                                   1509 ;	spi_and_bit_banging.c:513: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002542 75 C3 00         [24] 1510 	mov	_SPCON,#0x00
                                   1511 ;	spi_and_bit_banging.c:514: SDA = DATA_HIGH;                 /* Set data line high */
                                   1512 ;	assignBit
      002545 D2 97            [12] 1513 	setb	_P1_7
                                   1514 ;	spi_and_bit_banging.c:515: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1515 ;	assignBit
      002547 C2 96            [12] 1516 	clr	_P1_6
                                   1517 ;	spi_and_bit_banging.c:516: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1518 ;	assignBit
      002549 D2 91            [12] 1519 	setb	_P1_1
                                   1520 ;	spi_and_bit_banging.c:517: }
      00254B 22               [24] 1521 	ret
                                   1522 ;------------------------------------------------------------
                                   1523 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1524 ;------------------------------------------------------------
                                   1525 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_65'
                                   1526 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_66'
                                   1527 ;------------------------------------------------------------
                                   1528 ;	spi_and_bit_banging.c:519: int bit_bang_spi_write(uint16_t data) {
                                   1529 ;	-----------------------------------------
                                   1530 ;	 function bit_bang_spi_write
                                   1531 ;	-----------------------------------------
      00254C                       1532 _bit_bang_spi_write:
      00254C AF 83            [24] 1533 	mov	r7,dph
      00254E E5 82            [12] 1534 	mov	a,dpl
      002550 90 04 0F         [24] 1535 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002553 F0               [24] 1536 	movx	@dptr,a
      002554 EF               [12] 1537 	mov	a,r7
      002555 A3               [24] 1538 	inc	dptr
      002556 F0               [24] 1539 	movx	@dptr,a
                                   1540 ;	spi_and_bit_banging.c:522: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1541 ;	assignBit
      002557 C2 91            [12] 1542 	clr	_P1_1
                                   1543 ;	spi_and_bit_banging.c:525: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002559 7E 00            [12] 1544 	mov	r6,#0x00
      00255B 7F 00            [12] 1545 	mov	r7,#0x00
      00255D                       1546 00102$:
                                   1547 ;	spi_and_bit_banging.c:526: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      00255D 90 04 0F         [24] 1548 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002560 E0               [24] 1549 	movx	a,@dptr
      002561 FC               [12] 1550 	mov	r4,a
      002562 A3               [24] 1551 	inc	dptr
      002563 E0               [24] 1552 	movx	a,@dptr
      002564 FD               [12] 1553 	mov	r5,a
      002565 23               [12] 1554 	rl	a
      002566 54 01            [12] 1555 	anl	a,#0x01
      002568 24 FF            [12] 1556 	add	a,#0xff
      00256A 92 97            [24] 1557 	mov	_P1_7,c
                                   1558 ;	spi_and_bit_banging.c:527: SCL = CLOCK_HIGH;            /* Clock high */
                                   1559 ;	assignBit
      00256C D2 96            [12] 1560 	setb	_P1_6
                                   1561 ;	spi_and_bit_banging.c:528: SCL = CLOCK_LOW;             /* Clock low */
                                   1562 ;	assignBit
      00256E C2 96            [12] 1563 	clr	_P1_6
                                   1564 ;	spi_and_bit_banging.c:529: data <<= 1;                  /* Shift to next bit */
      002570 EC               [12] 1565 	mov	a,r4
      002571 2C               [12] 1566 	add	a,r4
      002572 FC               [12] 1567 	mov	r4,a
      002573 ED               [12] 1568 	mov	a,r5
      002574 33               [12] 1569 	rlc	a
      002575 FD               [12] 1570 	mov	r5,a
      002576 90 04 0F         [24] 1571 	mov	dptr,#_bit_bang_spi_write_data_65536_65
      002579 EC               [12] 1572 	mov	a,r4
      00257A F0               [24] 1573 	movx	@dptr,a
      00257B ED               [12] 1574 	mov	a,r5
      00257C A3               [24] 1575 	inc	dptr
      00257D F0               [24] 1576 	movx	@dptr,a
                                   1577 ;	spi_and_bit_banging.c:525: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      00257E 0E               [12] 1578 	inc	r6
      00257F BE 00 01         [24] 1579 	cjne	r6,#0x00,00115$
      002582 0F               [12] 1580 	inc	r7
      002583                       1581 00115$:
      002583 C3               [12] 1582 	clr	c
      002584 EE               [12] 1583 	mov	a,r6
      002585 94 10            [12] 1584 	subb	a,#0x10
      002587 EF               [12] 1585 	mov	a,r7
      002588 94 00            [12] 1586 	subb	a,#0x00
      00258A 40 D1            [24] 1587 	jc	00102$
                                   1588 ;	spi_and_bit_banging.c:533: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1589 ;	assignBit
      00258C D2 91            [12] 1590 	setb	_P1_1
                                   1591 ;	spi_and_bit_banging.c:534: SCL = CLOCK_LOW;                 /* Clock low */
                                   1592 ;	assignBit
      00258E C2 96            [12] 1593 	clr	_P1_6
                                   1594 ;	spi_and_bit_banging.c:535: SDA = DATA_HIGH;                 /* Data high */
                                   1595 ;	assignBit
      002590 D2 97            [12] 1596 	setb	_P1_7
                                   1597 ;	spi_and_bit_banging.c:537: return 0;
      002592 90 00 00         [24] 1598 	mov	dptr,#0x0000
                                   1599 ;	spi_and_bit_banging.c:538: }
      002595 22               [24] 1600 	ret
                                   1601 ;------------------------------------------------------------
                                   1602 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1603 ;------------------------------------------------------------
                                   1604 ;	spi_and_bit_banging.c:545: void spi_transmission_start(void)
                                   1605 ;	-----------------------------------------
                                   1606 ;	 function spi_transmission_start
                                   1607 ;	-----------------------------------------
      002596                       1608 _spi_transmission_start:
                                   1609 ;	spi_and_bit_banging.c:547: SPCON |= SPI_ENABLE;           // Enable SPI
      002596 43 C3 40         [24] 1610 	orl	_SPCON,#0x40
                                   1611 ;	spi_and_bit_banging.c:548: P1_1 = 0;
                                   1612 ;	assignBit
      002599 C2 91            [12] 1613 	clr	_P1_1
                                   1614 ;	spi_and_bit_banging.c:549: }
      00259B 22               [24] 1615 	ret
                                   1616 ;------------------------------------------------------------
                                   1617 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1618 ;------------------------------------------------------------
                                   1619 ;number                    Allocated with name '_spi_triangular_wave_number_65536_71'
                                   1620 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_72'
                                   1621 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_72'
                                   1622 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_72'
                                   1623 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_72'
                                   1624 ;i                         Allocated with name '_spi_triangular_wave_i_196608_74'
                                   1625 ;------------------------------------------------------------
                                   1626 ;	spi_and_bit_banging.c:551: void spi_triangular_wave(int number)
                                   1627 ;	-----------------------------------------
                                   1628 ;	 function spi_triangular_wave
                                   1629 ;	-----------------------------------------
      00259C                       1630 _spi_triangular_wave:
      00259C AF 83            [24] 1631 	mov	r7,dph
      00259E E5 82            [12] 1632 	mov	a,dpl
      0025A0 90 04 11         [24] 1633 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0025A3 F0               [24] 1634 	movx	@dptr,a
      0025A4 EF               [12] 1635 	mov	a,r7
      0025A5 A3               [24] 1636 	inc	dptr
      0025A6 F0               [24] 1637 	movx	@dptr,a
                                   1638 ;	spi_and_bit_banging.c:553: int dac_value_index = 0;
      0025A7 90 04 13         [24] 1639 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025AA E4               [12] 1640 	clr	a
      0025AB F0               [24] 1641 	movx	@dptr,a
      0025AC A3               [24] 1642 	inc	dptr
      0025AD F0               [24] 1643 	movx	@dptr,a
                                   1644 ;	spi_and_bit_banging.c:554: int dac_data = 0;
      0025AE 90 04 15         [24] 1645 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      0025B1 F0               [24] 1646 	movx	@dptr,a
      0025B2 A3               [24] 1647 	inc	dptr
      0025B3 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	spi_and_bit_banging.c:556: while(number>0)
      0025B4 90 04 11         [24] 1650 	mov	dptr,#_spi_triangular_wave_number_65536_71
      0025B7 E0               [24] 1651 	movx	a,@dptr
      0025B8 FE               [12] 1652 	mov	r6,a
      0025B9 A3               [24] 1653 	inc	dptr
      0025BA E0               [24] 1654 	movx	a,@dptr
      0025BB FF               [12] 1655 	mov	r7,a
      0025BC                       1656 00111$:
      0025BC C3               [12] 1657 	clr	c
      0025BD E4               [12] 1658 	clr	a
      0025BE 9E               [12] 1659 	subb	a,r6
      0025BF 74 80            [12] 1660 	mov	a,#(0x00 ^ 0x80)
      0025C1 8F F0            [24] 1661 	mov	b,r7
      0025C3 63 F0 80         [24] 1662 	xrl	b,#0x80
      0025C6 95 F0            [12] 1663 	subb	a,b
      0025C8 40 03            [24] 1664 	jc	00157$
      0025CA 02 26 71         [24] 1665 	ljmp	00129$
      0025CD                       1666 00157$:
                                   1667 ;	spi_and_bit_banging.c:558: for(int i = 0; i<512; i++)
      0025CD 7C 00            [12] 1668 	mov	r4,#0x00
      0025CF 7D 00            [12] 1669 	mov	r5,#0x00
      0025D1                       1670 00115$:
      0025D1 C3               [12] 1671 	clr	c
      0025D2 ED               [12] 1672 	mov	a,r5
      0025D3 64 80            [12] 1673 	xrl	a,#0x80
      0025D5 94 82            [12] 1674 	subb	a,#0x82
      0025D7 40 03            [24] 1675 	jc	00158$
      0025D9 02 26 61         [24] 1676 	ljmp	00110$
      0025DC                       1677 00158$:
                                   1678 ;	spi_and_bit_banging.c:561: if(dac_value_index < 512)
      0025DC 90 04 13         [24] 1679 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      0025DF E0               [24] 1680 	movx	a,@dptr
      0025E0 FA               [12] 1681 	mov	r2,a
      0025E1 A3               [24] 1682 	inc	dptr
      0025E2 E0               [24] 1683 	movx	a,@dptr
      0025E3 FB               [12] 1684 	mov	r3,a
      0025E4 C3               [12] 1685 	clr	c
      0025E5 64 80            [12] 1686 	xrl	a,#0x80
      0025E7 94 82            [12] 1687 	subb	a,#0x82
      0025E9 50 21            [24] 1688 	jnc	00102$
                                   1689 ;	spi_and_bit_banging.c:565: dac_data = trig_dac_values[dac_value_index];
      0025EB EA               [12] 1690 	mov	a,r2
      0025EC 2A               [12] 1691 	add	a,r2
      0025ED FA               [12] 1692 	mov	r2,a
      0025EE EB               [12] 1693 	mov	a,r3
      0025EF 33               [12] 1694 	rlc	a
      0025F0 FB               [12] 1695 	mov	r3,a
      0025F1 EA               [12] 1696 	mov	a,r2
      0025F2 24 08            [12] 1697 	add	a,#_trig_dac_values
      0025F4 F5 82            [12] 1698 	mov	dpl,a
      0025F6 EB               [12] 1699 	mov	a,r3
      0025F7 34 34            [12] 1700 	addc	a,#(_trig_dac_values >> 8)
      0025F9 F5 83            [12] 1701 	mov	dph,a
      0025FB E4               [12] 1702 	clr	a
      0025FC 93               [24] 1703 	movc	a,@a+dptr
      0025FD FA               [12] 1704 	mov	r2,a
      0025FE A3               [24] 1705 	inc	dptr
      0025FF E4               [12] 1706 	clr	a
      002600 93               [24] 1707 	movc	a,@a+dptr
      002601 FB               [12] 1708 	mov	r3,a
      002602 90 04 15         [24] 1709 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      002605 EA               [12] 1710 	mov	a,r2
      002606 F0               [24] 1711 	movx	@dptr,a
      002607 EB               [12] 1712 	mov	a,r3
      002608 A3               [24] 1713 	inc	dptr
      002609 F0               [24] 1714 	movx	@dptr,a
      00260A 80 07            [24] 1715 	sjmp	00103$
      00260C                       1716 00102$:
                                   1717 ;	spi_and_bit_banging.c:569: dac_value_index = 0;  // Reset index for next cycle
      00260C 90 04 13         [24] 1718 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      00260F E4               [12] 1719 	clr	a
      002610 F0               [24] 1720 	movx	@dptr,a
      002611 A3               [24] 1721 	inc	dptr
      002612 F0               [24] 1722 	movx	@dptr,a
      002613                       1723 00103$:
                                   1724 ;	spi_and_bit_banging.c:576: ((dac_data >> 4) & 0x0F);
      002613 90 04 15         [24] 1725 	mov	dptr,#_spi_triangular_wave_dac_data_65536_72
      002616 E0               [24] 1726 	movx	a,@dptr
      002617 FA               [12] 1727 	mov	r2,a
      002618 A3               [24] 1728 	inc	dptr
      002619 E0               [24] 1729 	movx	a,@dptr
      00261A 8A 00            [24] 1730 	mov	ar0,r2
      00261C C4               [12] 1731 	swap	a
      00261D C8               [12] 1732 	xch	a,r0
      00261E C4               [12] 1733 	swap	a
      00261F 54 0F            [12] 1734 	anl	a,#0x0f
      002621 68               [12] 1735 	xrl	a,r0
      002622 C8               [12] 1736 	xch	a,r0
      002623 54 0F            [12] 1737 	anl	a,#0x0f
      002625 C8               [12] 1738 	xch	a,r0
      002626 68               [12] 1739 	xrl	a,r0
      002627 C8               [12] 1740 	xch	a,r0
      002628 30 E3 02         [24] 1741 	jnb	acc.3,00160$
      00262B 44 F0            [12] 1742 	orl	a,#0xf0
      00262D                       1743 00160$:
      00262D 74 0F            [12] 1744 	mov	a,#0x0f
      00262F 58               [12] 1745 	anl	a,r0
      002630 44 10            [12] 1746 	orl	a,#0x10
      002632 F9               [12] 1747 	mov	r1,a
                                   1748 ;	spi_and_bit_banging.c:579: low_byte = (dac_data & 0x0F) << 4;
      002633 53 02 0F         [24] 1749 	anl	ar2,#0x0f
      002636 EA               [12] 1750 	mov	a,r2
      002637 C4               [12] 1751 	swap	a
      002638 54 F0            [12] 1752 	anl	a,#0xf0
      00263A FB               [12] 1753 	mov	r3,a
                                   1754 ;	spi_and_bit_banging.c:583: P1_1 = 0;  // Select DAC
                                   1755 ;	assignBit
      00263B C2 91            [12] 1756 	clr	_P1_1
                                   1757 ;	spi_and_bit_banging.c:586: SPDAT = high_byte;
      00263D 89 C5            [24] 1758 	mov	_SPDAT,r1
                                   1759 ;	spi_and_bit_banging.c:587: while (!(SPSTA & (1<<7))); 
      00263F                       1760 00104$:
      00263F E5 C4            [12] 1761 	mov	a,_SPSTA
      002641 30 E7 FB         [24] 1762 	jnb	acc.7,00104$
                                   1763 ;	spi_and_bit_banging.c:591: SPDAT = low_byte;
      002644 8B C5            [24] 1764 	mov	_SPDAT,r3
                                   1765 ;	spi_and_bit_banging.c:592: while (!(SPSTA & (1<<7))); 
      002646                       1766 00107$:
      002646 E5 C4            [12] 1767 	mov	a,_SPSTA
      002648 30 E7 FB         [24] 1768 	jnb	acc.7,00107$
                                   1769 ;	spi_and_bit_banging.c:594: P1_1 = 1;  // Deselect DAC
                                   1770 ;	assignBit
      00264B D2 91            [12] 1771 	setb	_P1_1
                                   1772 ;	spi_and_bit_banging.c:596: dac_value_index++;
      00264D 90 04 13         [24] 1773 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_72
      002650 E0               [24] 1774 	movx	a,@dptr
      002651 24 01            [12] 1775 	add	a,#0x01
      002653 F0               [24] 1776 	movx	@dptr,a
      002654 A3               [24] 1777 	inc	dptr
      002655 E0               [24] 1778 	movx	a,@dptr
      002656 34 00            [12] 1779 	addc	a,#0x00
      002658 F0               [24] 1780 	movx	@dptr,a
                                   1781 ;	spi_and_bit_banging.c:558: for(int i = 0; i<512; i++)
      002659 0C               [12] 1782 	inc	r4
      00265A BC 00 01         [24] 1783 	cjne	r4,#0x00,00163$
      00265D 0D               [12] 1784 	inc	r5
      00265E                       1785 00163$:
      00265E 02 25 D1         [24] 1786 	ljmp	00115$
      002661                       1787 00110$:
                                   1788 ;	spi_and_bit_banging.c:599: number = number - 1;
      002661 1E               [12] 1789 	dec	r6
      002662 BE FF 01         [24] 1790 	cjne	r6,#0xff,00164$
      002665 1F               [12] 1791 	dec	r7
      002666                       1792 00164$:
      002666 90 04 11         [24] 1793 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002669 EE               [12] 1794 	mov	a,r6
      00266A F0               [24] 1795 	movx	@dptr,a
      00266B EF               [12] 1796 	mov	a,r7
      00266C A3               [24] 1797 	inc	dptr
      00266D F0               [24] 1798 	movx	@dptr,a
      00266E 02 25 BC         [24] 1799 	ljmp	00111$
      002671                       1800 00129$:
      002671 90 04 11         [24] 1801 	mov	dptr,#_spi_triangular_wave_number_65536_71
      002674 EE               [12] 1802 	mov	a,r6
      002675 F0               [24] 1803 	movx	@dptr,a
      002676 EF               [12] 1804 	mov	a,r7
      002677 A3               [24] 1805 	inc	dptr
      002678 F0               [24] 1806 	movx	@dptr,a
                                   1807 ;	spi_and_bit_banging.c:602: }
      002679 22               [24] 1808 	ret
                                   1809 ;------------------------------------------------------------
                                   1810 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1811 ;------------------------------------------------------------
                                   1812 ;number                    Allocated with name '_spi_ramp_signal_number_65536_78'
                                   1813 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_79'
                                   1814 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_79'
                                   1815 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_79'
                                   1816 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_79'
                                   1817 ;i                         Allocated with name '_spi_ramp_signal_i_196608_81'
                                   1818 ;------------------------------------------------------------
                                   1819 ;	spi_and_bit_banging.c:604: void spi_ramp_signal(int number)
                                   1820 ;	-----------------------------------------
                                   1821 ;	 function spi_ramp_signal
                                   1822 ;	-----------------------------------------
      00267A                       1823 _spi_ramp_signal:
      00267A AF 83            [24] 1824 	mov	r7,dph
      00267C E5 82            [12] 1825 	mov	a,dpl
      00267E 90 04 17         [24] 1826 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002681 F0               [24] 1827 	movx	@dptr,a
      002682 EF               [12] 1828 	mov	a,r7
      002683 A3               [24] 1829 	inc	dptr
      002684 F0               [24] 1830 	movx	@dptr,a
                                   1831 ;	spi_and_bit_banging.c:606: int dac_value_index = 0;
      002685 90 04 19         [24] 1832 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      002688 E4               [12] 1833 	clr	a
      002689 F0               [24] 1834 	movx	@dptr,a
      00268A A3               [24] 1835 	inc	dptr
      00268B F0               [24] 1836 	movx	@dptr,a
                                   1837 ;	spi_and_bit_banging.c:607: int dac_data = 0;
      00268C 90 04 1B         [24] 1838 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      00268F F0               [24] 1839 	movx	@dptr,a
      002690 A3               [24] 1840 	inc	dptr
      002691 F0               [24] 1841 	movx	@dptr,a
                                   1842 ;	spi_and_bit_banging.c:609: while(number>0)
      002692 90 04 17         [24] 1843 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002695 E0               [24] 1844 	movx	a,@dptr
      002696 FE               [12] 1845 	mov	r6,a
      002697 A3               [24] 1846 	inc	dptr
      002698 E0               [24] 1847 	movx	a,@dptr
      002699 FF               [12] 1848 	mov	r7,a
      00269A                       1849 00111$:
      00269A C3               [12] 1850 	clr	c
      00269B E4               [12] 1851 	clr	a
      00269C 9E               [12] 1852 	subb	a,r6
      00269D 74 80            [12] 1853 	mov	a,#(0x00 ^ 0x80)
      00269F 8F F0            [24] 1854 	mov	b,r7
      0026A1 63 F0 80         [24] 1855 	xrl	b,#0x80
      0026A4 95 F0            [12] 1856 	subb	a,b
      0026A6 40 03            [24] 1857 	jc	00157$
      0026A8 02 27 4F         [24] 1858 	ljmp	00129$
      0026AB                       1859 00157$:
                                   1860 ;	spi_and_bit_banging.c:611: for(int i = 0; i<256; i++)
      0026AB 7C 00            [12] 1861 	mov	r4,#0x00
      0026AD 7D 00            [12] 1862 	mov	r5,#0x00
      0026AF                       1863 00115$:
      0026AF C3               [12] 1864 	clr	c
      0026B0 ED               [12] 1865 	mov	a,r5
      0026B1 64 80            [12] 1866 	xrl	a,#0x80
      0026B3 94 81            [12] 1867 	subb	a,#0x81
      0026B5 40 03            [24] 1868 	jc	00158$
      0026B7 02 27 3F         [24] 1869 	ljmp	00110$
      0026BA                       1870 00158$:
                                   1871 ;	spi_and_bit_banging.c:614: if(dac_value_index < 256)
      0026BA 90 04 19         [24] 1872 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026BD E0               [24] 1873 	movx	a,@dptr
      0026BE FA               [12] 1874 	mov	r2,a
      0026BF A3               [24] 1875 	inc	dptr
      0026C0 E0               [24] 1876 	movx	a,@dptr
      0026C1 FB               [12] 1877 	mov	r3,a
      0026C2 C3               [12] 1878 	clr	c
      0026C3 64 80            [12] 1879 	xrl	a,#0x80
      0026C5 94 81            [12] 1880 	subb	a,#0x81
      0026C7 50 21            [24] 1881 	jnc	00102$
                                   1882 ;	spi_and_bit_banging.c:618: dac_data = trig_dac_values[dac_value_index];
      0026C9 EA               [12] 1883 	mov	a,r2
      0026CA 2A               [12] 1884 	add	a,r2
      0026CB FA               [12] 1885 	mov	r2,a
      0026CC EB               [12] 1886 	mov	a,r3
      0026CD 33               [12] 1887 	rlc	a
      0026CE FB               [12] 1888 	mov	r3,a
      0026CF EA               [12] 1889 	mov	a,r2
      0026D0 24 08            [12] 1890 	add	a,#_trig_dac_values
      0026D2 F5 82            [12] 1891 	mov	dpl,a
      0026D4 EB               [12] 1892 	mov	a,r3
      0026D5 34 34            [12] 1893 	addc	a,#(_trig_dac_values >> 8)
      0026D7 F5 83            [12] 1894 	mov	dph,a
      0026D9 E4               [12] 1895 	clr	a
      0026DA 93               [24] 1896 	movc	a,@a+dptr
      0026DB FA               [12] 1897 	mov	r2,a
      0026DC A3               [24] 1898 	inc	dptr
      0026DD E4               [12] 1899 	clr	a
      0026DE 93               [24] 1900 	movc	a,@a+dptr
      0026DF FB               [12] 1901 	mov	r3,a
      0026E0 90 04 1B         [24] 1902 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026E3 EA               [12] 1903 	mov	a,r2
      0026E4 F0               [24] 1904 	movx	@dptr,a
      0026E5 EB               [12] 1905 	mov	a,r3
      0026E6 A3               [24] 1906 	inc	dptr
      0026E7 F0               [24] 1907 	movx	@dptr,a
      0026E8 80 07            [24] 1908 	sjmp	00103$
      0026EA                       1909 00102$:
                                   1910 ;	spi_and_bit_banging.c:622: dac_value_index = 0;  // Reset index for next cycle
      0026EA 90 04 19         [24] 1911 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      0026ED E4               [12] 1912 	clr	a
      0026EE F0               [24] 1913 	movx	@dptr,a
      0026EF A3               [24] 1914 	inc	dptr
      0026F0 F0               [24] 1915 	movx	@dptr,a
      0026F1                       1916 00103$:
                                   1917 ;	spi_and_bit_banging.c:629: ((dac_data >> 4) & 0x0F);
      0026F1 90 04 1B         [24] 1918 	mov	dptr,#_spi_ramp_signal_dac_data_65536_79
      0026F4 E0               [24] 1919 	movx	a,@dptr
      0026F5 FA               [12] 1920 	mov	r2,a
      0026F6 A3               [24] 1921 	inc	dptr
      0026F7 E0               [24] 1922 	movx	a,@dptr
      0026F8 8A 00            [24] 1923 	mov	ar0,r2
      0026FA C4               [12] 1924 	swap	a
      0026FB C8               [12] 1925 	xch	a,r0
      0026FC C4               [12] 1926 	swap	a
      0026FD 54 0F            [12] 1927 	anl	a,#0x0f
      0026FF 68               [12] 1928 	xrl	a,r0
      002700 C8               [12] 1929 	xch	a,r0
      002701 54 0F            [12] 1930 	anl	a,#0x0f
      002703 C8               [12] 1931 	xch	a,r0
      002704 68               [12] 1932 	xrl	a,r0
      002705 C8               [12] 1933 	xch	a,r0
      002706 30 E3 02         [24] 1934 	jnb	acc.3,00160$
      002709 44 F0            [12] 1935 	orl	a,#0xf0
      00270B                       1936 00160$:
      00270B 74 0F            [12] 1937 	mov	a,#0x0f
      00270D 58               [12] 1938 	anl	a,r0
      00270E 44 10            [12] 1939 	orl	a,#0x10
      002710 F9               [12] 1940 	mov	r1,a
                                   1941 ;	spi_and_bit_banging.c:632: low_byte = (dac_data & 0x0F) << 4;
      002711 53 02 0F         [24] 1942 	anl	ar2,#0x0f
      002714 EA               [12] 1943 	mov	a,r2
      002715 C4               [12] 1944 	swap	a
      002716 54 F0            [12] 1945 	anl	a,#0xf0
      002718 FB               [12] 1946 	mov	r3,a
                                   1947 ;	spi_and_bit_banging.c:636: P1_1 = 0;  // Select DAC
                                   1948 ;	assignBit
      002719 C2 91            [12] 1949 	clr	_P1_1
                                   1950 ;	spi_and_bit_banging.c:639: SPDAT = high_byte;
      00271B 89 C5            [24] 1951 	mov	_SPDAT,r1
                                   1952 ;	spi_and_bit_banging.c:640: while (!(SPSTA & (1<<7))); 
      00271D                       1953 00104$:
      00271D E5 C4            [12] 1954 	mov	a,_SPSTA
      00271F 30 E7 FB         [24] 1955 	jnb	acc.7,00104$
                                   1956 ;	spi_and_bit_banging.c:644: SPDAT = low_byte;
      002722 8B C5            [24] 1957 	mov	_SPDAT,r3
                                   1958 ;	spi_and_bit_banging.c:645: while (!(SPSTA & (1<<7))); 
      002724                       1959 00107$:
      002724 E5 C4            [12] 1960 	mov	a,_SPSTA
      002726 30 E7 FB         [24] 1961 	jnb	acc.7,00107$
                                   1962 ;	spi_and_bit_banging.c:647: P1_1 = 1;  // Deselect DAC
                                   1963 ;	assignBit
      002729 D2 91            [12] 1964 	setb	_P1_1
                                   1965 ;	spi_and_bit_banging.c:649: dac_value_index++;
      00272B 90 04 19         [24] 1966 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_79
      00272E E0               [24] 1967 	movx	a,@dptr
      00272F 24 01            [12] 1968 	add	a,#0x01
      002731 F0               [24] 1969 	movx	@dptr,a
      002732 A3               [24] 1970 	inc	dptr
      002733 E0               [24] 1971 	movx	a,@dptr
      002734 34 00            [12] 1972 	addc	a,#0x00
      002736 F0               [24] 1973 	movx	@dptr,a
                                   1974 ;	spi_and_bit_banging.c:611: for(int i = 0; i<256; i++)
      002737 0C               [12] 1975 	inc	r4
      002738 BC 00 01         [24] 1976 	cjne	r4,#0x00,00163$
      00273B 0D               [12] 1977 	inc	r5
      00273C                       1978 00163$:
      00273C 02 26 AF         [24] 1979 	ljmp	00115$
      00273F                       1980 00110$:
                                   1981 ;	spi_and_bit_banging.c:652: number = number - 1;
      00273F 1E               [12] 1982 	dec	r6
      002740 BE FF 01         [24] 1983 	cjne	r6,#0xff,00164$
      002743 1F               [12] 1984 	dec	r7
      002744                       1985 00164$:
      002744 90 04 17         [24] 1986 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002747 EE               [12] 1987 	mov	a,r6
      002748 F0               [24] 1988 	movx	@dptr,a
      002749 EF               [12] 1989 	mov	a,r7
      00274A A3               [24] 1990 	inc	dptr
      00274B F0               [24] 1991 	movx	@dptr,a
      00274C 02 26 9A         [24] 1992 	ljmp	00111$
      00274F                       1993 00129$:
      00274F 90 04 17         [24] 1994 	mov	dptr,#_spi_ramp_signal_number_65536_78
      002752 EE               [12] 1995 	mov	a,r6
      002753 F0               [24] 1996 	movx	@dptr,a
      002754 EF               [12] 1997 	mov	a,r7
      002755 A3               [24] 1998 	inc	dptr
      002756 F0               [24] 1999 	movx	@dptr,a
                                   2000 ;	spi_and_bit_banging.c:655: }
      002757 22               [24] 2001 	ret
                                   2002 	.area CSEG    (CODE)
                                   2003 	.area CONST   (CODE)
      003208                       2004 _dac_values:
      003208 80 00                 2005 	.byte #0x80, #0x00	;  128
      00320A 83 00                 2006 	.byte #0x83, #0x00	;  131
      00320C 86 00                 2007 	.byte #0x86, #0x00	;  134
      00320E 89 00                 2008 	.byte #0x89, #0x00	;  137
      003210 8C 00                 2009 	.byte #0x8c, #0x00	;  140
      003212 90 00                 2010 	.byte #0x90, #0x00	;  144
      003214 93 00                 2011 	.byte #0x93, #0x00	;  147
      003216 96 00                 2012 	.byte #0x96, #0x00	;  150
      003218 99 00                 2013 	.byte #0x99, #0x00	;  153
      00321A 9C 00                 2014 	.byte #0x9c, #0x00	;  156
      00321C 9F 00                 2015 	.byte #0x9f, #0x00	;  159
      00321E A2 00                 2016 	.byte #0xa2, #0x00	;  162
      003220 A5 00                 2017 	.byte #0xa5, #0x00	;  165
      003222 A8 00                 2018 	.byte #0xa8, #0x00	;  168
      003224 AB 00                 2019 	.byte #0xab, #0x00	;  171
      003226 AE 00                 2020 	.byte #0xae, #0x00	;  174
      003228 B1 00                 2021 	.byte #0xb1, #0x00	;  177
      00322A B3 00                 2022 	.byte #0xb3, #0x00	;  179
      00322C B6 00                 2023 	.byte #0xb6, #0x00	;  182
      00322E B9 00                 2024 	.byte #0xb9, #0x00	;  185
      003230 BC 00                 2025 	.byte #0xbc, #0x00	;  188
      003232 BF 00                 2026 	.byte #0xbf, #0x00	;  191
      003234 C1 00                 2027 	.byte #0xc1, #0x00	;  193
      003236 C4 00                 2028 	.byte #0xc4, #0x00	;  196
      003238 C7 00                 2029 	.byte #0xc7, #0x00	;  199
      00323A C9 00                 2030 	.byte #0xc9, #0x00	;  201
      00323C CC 00                 2031 	.byte #0xcc, #0x00	;  204
      00323E CE 00                 2032 	.byte #0xce, #0x00	;  206
      003240 D1 00                 2033 	.byte #0xd1, #0x00	;  209
      003242 D3 00                 2034 	.byte #0xd3, #0x00	;  211
      003244 D5 00                 2035 	.byte #0xd5, #0x00	;  213
      003246 D8 00                 2036 	.byte #0xd8, #0x00	;  216
      003248 DA 00                 2037 	.byte #0xda, #0x00	;  218
      00324A DC 00                 2038 	.byte #0xdc, #0x00	;  220
      00324C DE 00                 2039 	.byte #0xde, #0x00	;  222
      00324E E0 00                 2040 	.byte #0xe0, #0x00	;  224
      003250 E2 00                 2041 	.byte #0xe2, #0x00	;  226
      003252 E4 00                 2042 	.byte #0xe4, #0x00	;  228
      003254 E6 00                 2043 	.byte #0xe6, #0x00	;  230
      003256 E8 00                 2044 	.byte #0xe8, #0x00	;  232
      003258 EA 00                 2045 	.byte #0xea, #0x00	;  234
      00325A EB 00                 2046 	.byte #0xeb, #0x00	;  235
      00325C ED 00                 2047 	.byte #0xed, #0x00	;  237
      00325E EF 00                 2048 	.byte #0xef, #0x00	;  239
      003260 F0 00                 2049 	.byte #0xf0, #0x00	;  240
      003262 F1 00                 2050 	.byte #0xf1, #0x00	;  241
      003264 F3 00                 2051 	.byte #0xf3, #0x00	;  243
      003266 F4 00                 2052 	.byte #0xf4, #0x00	;  244
      003268 F5 00                 2053 	.byte #0xf5, #0x00	;  245
      00326A F6 00                 2054 	.byte #0xf6, #0x00	;  246
      00326C F8 00                 2055 	.byte #0xf8, #0x00	;  248
      00326E F9 00                 2056 	.byte #0xf9, #0x00	;  249
      003270 FA 00                 2057 	.byte #0xfa, #0x00	;  250
      003272 FA 00                 2058 	.byte #0xfa, #0x00	;  250
      003274 FB 00                 2059 	.byte #0xfb, #0x00	;  251
      003276 FC 00                 2060 	.byte #0xfc, #0x00	;  252
      003278 FD 00                 2061 	.byte #0xfd, #0x00	;  253
      00327A FD 00                 2062 	.byte #0xfd, #0x00	;  253
      00327C FE 00                 2063 	.byte #0xfe, #0x00	;  254
      00327E FE 00                 2064 	.byte #0xfe, #0x00	;  254
      003280 FE 00                 2065 	.byte #0xfe, #0x00	;  254
      003282 FF 00                 2066 	.byte #0xff, #0x00	;  255
      003284 FF 00                 2067 	.byte #0xff, #0x00	;  255
      003286 FF 00                 2068 	.byte #0xff, #0x00	;  255
      003288 FF 00                 2069 	.byte #0xff, #0x00	;  255
      00328A FF 00                 2070 	.byte #0xff, #0x00	;  255
      00328C FF 00                 2071 	.byte #0xff, #0x00	;  255
      00328E FF 00                 2072 	.byte #0xff, #0x00	;  255
      003290 FE 00                 2073 	.byte #0xfe, #0x00	;  254
      003292 FE 00                 2074 	.byte #0xfe, #0x00	;  254
      003294 FE 00                 2075 	.byte #0xfe, #0x00	;  254
      003296 FD 00                 2076 	.byte #0xfd, #0x00	;  253
      003298 FD 00                 2077 	.byte #0xfd, #0x00	;  253
      00329A FC 00                 2078 	.byte #0xfc, #0x00	;  252
      00329C FB 00                 2079 	.byte #0xfb, #0x00	;  251
      00329E FA 00                 2080 	.byte #0xfa, #0x00	;  250
      0032A0 FA 00                 2081 	.byte #0xfa, #0x00	;  250
      0032A2 F9 00                 2082 	.byte #0xf9, #0x00	;  249
      0032A4 F8 00                 2083 	.byte #0xf8, #0x00	;  248
      0032A6 F6 00                 2084 	.byte #0xf6, #0x00	;  246
      0032A8 F5 00                 2085 	.byte #0xf5, #0x00	;  245
      0032AA F4 00                 2086 	.byte #0xf4, #0x00	;  244
      0032AC F3 00                 2087 	.byte #0xf3, #0x00	;  243
      0032AE F1 00                 2088 	.byte #0xf1, #0x00	;  241
      0032B0 F0 00                 2089 	.byte #0xf0, #0x00	;  240
      0032B2 EF 00                 2090 	.byte #0xef, #0x00	;  239
      0032B4 ED 00                 2091 	.byte #0xed, #0x00	;  237
      0032B6 EB 00                 2092 	.byte #0xeb, #0x00	;  235
      0032B8 EA 00                 2093 	.byte #0xea, #0x00	;  234
      0032BA E8 00                 2094 	.byte #0xe8, #0x00	;  232
      0032BC E6 00                 2095 	.byte #0xe6, #0x00	;  230
      0032BE E4 00                 2096 	.byte #0xe4, #0x00	;  228
      0032C0 E2 00                 2097 	.byte #0xe2, #0x00	;  226
      0032C2 E0 00                 2098 	.byte #0xe0, #0x00	;  224
      0032C4 DE 00                 2099 	.byte #0xde, #0x00	;  222
      0032C6 DC 00                 2100 	.byte #0xdc, #0x00	;  220
      0032C8 DA 00                 2101 	.byte #0xda, #0x00	;  218
      0032CA D8 00                 2102 	.byte #0xd8, #0x00	;  216
      0032CC D5 00                 2103 	.byte #0xd5, #0x00	;  213
      0032CE D3 00                 2104 	.byte #0xd3, #0x00	;  211
      0032D0 D1 00                 2105 	.byte #0xd1, #0x00	;  209
      0032D2 CE 00                 2106 	.byte #0xce, #0x00	;  206
      0032D4 CC 00                 2107 	.byte #0xcc, #0x00	;  204
      0032D6 C9 00                 2108 	.byte #0xc9, #0x00	;  201
      0032D8 C7 00                 2109 	.byte #0xc7, #0x00	;  199
      0032DA C4 00                 2110 	.byte #0xc4, #0x00	;  196
      0032DC C1 00                 2111 	.byte #0xc1, #0x00	;  193
      0032DE BF 00                 2112 	.byte #0xbf, #0x00	;  191
      0032E0 BC 00                 2113 	.byte #0xbc, #0x00	;  188
      0032E2 B9 00                 2114 	.byte #0xb9, #0x00	;  185
      0032E4 B6 00                 2115 	.byte #0xb6, #0x00	;  182
      0032E6 B3 00                 2116 	.byte #0xb3, #0x00	;  179
      0032E8 B1 00                 2117 	.byte #0xb1, #0x00	;  177
      0032EA AE 00                 2118 	.byte #0xae, #0x00	;  174
      0032EC AB 00                 2119 	.byte #0xab, #0x00	;  171
      0032EE A8 00                 2120 	.byte #0xa8, #0x00	;  168
      0032F0 A5 00                 2121 	.byte #0xa5, #0x00	;  165
      0032F2 A2 00                 2122 	.byte #0xa2, #0x00	;  162
      0032F4 9F 00                 2123 	.byte #0x9f, #0x00	;  159
      0032F6 9C 00                 2124 	.byte #0x9c, #0x00	;  156
      0032F8 99 00                 2125 	.byte #0x99, #0x00	;  153
      0032FA 96 00                 2126 	.byte #0x96, #0x00	;  150
      0032FC 93 00                 2127 	.byte #0x93, #0x00	;  147
      0032FE 90 00                 2128 	.byte #0x90, #0x00	;  144
      003300 8C 00                 2129 	.byte #0x8c, #0x00	;  140
      003302 89 00                 2130 	.byte #0x89, #0x00	;  137
      003304 86 00                 2131 	.byte #0x86, #0x00	;  134
      003306 83 00                 2132 	.byte #0x83, #0x00	;  131
      003308 80 00                 2133 	.byte #0x80, #0x00	;  128
      00330A 7D 00                 2134 	.byte #0x7d, #0x00	;  125
      00330C 7A 00                 2135 	.byte #0x7a, #0x00	;  122
      00330E 77 00                 2136 	.byte #0x77, #0x00	;  119
      003310 74 00                 2137 	.byte #0x74, #0x00	;  116
      003312 70 00                 2138 	.byte #0x70, #0x00	;  112
      003314 6D 00                 2139 	.byte #0x6d, #0x00	;  109
      003316 6A 00                 2140 	.byte #0x6a, #0x00	;  106
      003318 67 00                 2141 	.byte #0x67, #0x00	;  103
      00331A 64 00                 2142 	.byte #0x64, #0x00	;  100
      00331C 61 00                 2143 	.byte #0x61, #0x00	;  97
      00331E 5E 00                 2144 	.byte #0x5e, #0x00	;  94
      003320 5B 00                 2145 	.byte #0x5b, #0x00	;  91
      003322 58 00                 2146 	.byte #0x58, #0x00	;  88
      003324 55 00                 2147 	.byte #0x55, #0x00	;  85
      003326 52 00                 2148 	.byte #0x52, #0x00	;  82
      003328 4F 00                 2149 	.byte #0x4f, #0x00	;  79
      00332A 4D 00                 2150 	.byte #0x4d, #0x00	;  77
      00332C 4A 00                 2151 	.byte #0x4a, #0x00	;  74
      00332E 47 00                 2152 	.byte #0x47, #0x00	;  71
      003330 44 00                 2153 	.byte #0x44, #0x00	;  68
      003332 41 00                 2154 	.byte #0x41, #0x00	;  65
      003334 3F 00                 2155 	.byte #0x3f, #0x00	;  63
      003336 3C 00                 2156 	.byte #0x3c, #0x00	;  60
      003338 39 00                 2157 	.byte #0x39, #0x00	;  57
      00333A 37 00                 2158 	.byte #0x37, #0x00	;  55
      00333C 34 00                 2159 	.byte #0x34, #0x00	;  52
      00333E 32 00                 2160 	.byte #0x32, #0x00	;  50
      003340 2F 00                 2161 	.byte #0x2f, #0x00	;  47
      003342 2D 00                 2162 	.byte #0x2d, #0x00	;  45
      003344 2B 00                 2163 	.byte #0x2b, #0x00	;  43
      003346 28 00                 2164 	.byte #0x28, #0x00	;  40
      003348 26 00                 2165 	.byte #0x26, #0x00	;  38
      00334A 24 00                 2166 	.byte #0x24, #0x00	;  36
      00334C 22 00                 2167 	.byte #0x22, #0x00	;  34
      00334E 20 00                 2168 	.byte #0x20, #0x00	;  32
      003350 1E 00                 2169 	.byte #0x1e, #0x00	;  30
      003352 1C 00                 2170 	.byte #0x1c, #0x00	;  28
      003354 1A 00                 2171 	.byte #0x1a, #0x00	;  26
      003356 18 00                 2172 	.byte #0x18, #0x00	;  24
      003358 16 00                 2173 	.byte #0x16, #0x00	;  22
      00335A 15 00                 2174 	.byte #0x15, #0x00	;  21
      00335C 13 00                 2175 	.byte #0x13, #0x00	;  19
      00335E 11 00                 2176 	.byte #0x11, #0x00	;  17
      003360 10 00                 2177 	.byte #0x10, #0x00	;  16
      003362 0F 00                 2178 	.byte #0x0f, #0x00	;  15
      003364 0D 00                 2179 	.byte #0x0d, #0x00	;  13
      003366 0C 00                 2180 	.byte #0x0c, #0x00	;  12
      003368 0B 00                 2181 	.byte #0x0b, #0x00	;  11
      00336A 0A 00                 2182 	.byte #0x0a, #0x00	;  10
      00336C 08 00                 2183 	.byte #0x08, #0x00	;  8
      00336E 07 00                 2184 	.byte #0x07, #0x00	;  7
      003370 06 00                 2185 	.byte #0x06, #0x00	;  6
      003372 06 00                 2186 	.byte #0x06, #0x00	;  6
      003374 05 00                 2187 	.byte #0x05, #0x00	;  5
      003376 04 00                 2188 	.byte #0x04, #0x00	;  4
      003378 03 00                 2189 	.byte #0x03, #0x00	;  3
      00337A 03 00                 2190 	.byte #0x03, #0x00	;  3
      00337C 02 00                 2191 	.byte #0x02, #0x00	;  2
      00337E 02 00                 2192 	.byte #0x02, #0x00	;  2
      003380 02 00                 2193 	.byte #0x02, #0x00	;  2
      003382 01 00                 2194 	.byte #0x01, #0x00	;  1
      003384 01 00                 2195 	.byte #0x01, #0x00	;  1
      003386 01 00                 2196 	.byte #0x01, #0x00	;  1
      003388 01 00                 2197 	.byte #0x01, #0x00	;  1
      00338A 01 00                 2198 	.byte #0x01, #0x00	;  1
      00338C 01 00                 2199 	.byte #0x01, #0x00	;  1
      00338E 01 00                 2200 	.byte #0x01, #0x00	;  1
      003390 02 00                 2201 	.byte #0x02, #0x00	;  2
      003392 02 00                 2202 	.byte #0x02, #0x00	;  2
      003394 02 00                 2203 	.byte #0x02, #0x00	;  2
      003396 03 00                 2204 	.byte #0x03, #0x00	;  3
      003398 03 00                 2205 	.byte #0x03, #0x00	;  3
      00339A 04 00                 2206 	.byte #0x04, #0x00	;  4
      00339C 05 00                 2207 	.byte #0x05, #0x00	;  5
      00339E 06 00                 2208 	.byte #0x06, #0x00	;  6
      0033A0 06 00                 2209 	.byte #0x06, #0x00	;  6
      0033A2 07 00                 2210 	.byte #0x07, #0x00	;  7
      0033A4 08 00                 2211 	.byte #0x08, #0x00	;  8
      0033A6 0A 00                 2212 	.byte #0x0a, #0x00	;  10
      0033A8 0B 00                 2213 	.byte #0x0b, #0x00	;  11
      0033AA 0C 00                 2214 	.byte #0x0c, #0x00	;  12
      0033AC 0D 00                 2215 	.byte #0x0d, #0x00	;  13
      0033AE 0F 00                 2216 	.byte #0x0f, #0x00	;  15
      0033B0 10 00                 2217 	.byte #0x10, #0x00	;  16
      0033B2 11 00                 2218 	.byte #0x11, #0x00	;  17
      0033B4 13 00                 2219 	.byte #0x13, #0x00	;  19
      0033B6 15 00                 2220 	.byte #0x15, #0x00	;  21
      0033B8 16 00                 2221 	.byte #0x16, #0x00	;  22
      0033BA 18 00                 2222 	.byte #0x18, #0x00	;  24
      0033BC 1A 00                 2223 	.byte #0x1a, #0x00	;  26
      0033BE 1C 00                 2224 	.byte #0x1c, #0x00	;  28
      0033C0 1E 00                 2225 	.byte #0x1e, #0x00	;  30
      0033C2 20 00                 2226 	.byte #0x20, #0x00	;  32
      0033C4 22 00                 2227 	.byte #0x22, #0x00	;  34
      0033C6 24 00                 2228 	.byte #0x24, #0x00	;  36
      0033C8 26 00                 2229 	.byte #0x26, #0x00	;  38
      0033CA 28 00                 2230 	.byte #0x28, #0x00	;  40
      0033CC 2B 00                 2231 	.byte #0x2b, #0x00	;  43
      0033CE 2D 00                 2232 	.byte #0x2d, #0x00	;  45
      0033D0 2F 00                 2233 	.byte #0x2f, #0x00	;  47
      0033D2 32 00                 2234 	.byte #0x32, #0x00	;  50
      0033D4 34 00                 2235 	.byte #0x34, #0x00	;  52
      0033D6 37 00                 2236 	.byte #0x37, #0x00	;  55
      0033D8 39 00                 2237 	.byte #0x39, #0x00	;  57
      0033DA 3C 00                 2238 	.byte #0x3c, #0x00	;  60
      0033DC 3F 00                 2239 	.byte #0x3f, #0x00	;  63
      0033DE 41 00                 2240 	.byte #0x41, #0x00	;  65
      0033E0 44 00                 2241 	.byte #0x44, #0x00	;  68
      0033E2 47 00                 2242 	.byte #0x47, #0x00	;  71
      0033E4 4A 00                 2243 	.byte #0x4a, #0x00	;  74
      0033E6 4D 00                 2244 	.byte #0x4d, #0x00	;  77
      0033E8 4F 00                 2245 	.byte #0x4f, #0x00	;  79
      0033EA 52 00                 2246 	.byte #0x52, #0x00	;  82
      0033EC 55 00                 2247 	.byte #0x55, #0x00	;  85
      0033EE 58 00                 2248 	.byte #0x58, #0x00	;  88
      0033F0 5B 00                 2249 	.byte #0x5b, #0x00	;  91
      0033F2 5E 00                 2250 	.byte #0x5e, #0x00	;  94
      0033F4 61 00                 2251 	.byte #0x61, #0x00	;  97
      0033F6 64 00                 2252 	.byte #0x64, #0x00	;  100
      0033F8 67 00                 2253 	.byte #0x67, #0x00	;  103
      0033FA 6A 00                 2254 	.byte #0x6a, #0x00	;  106
      0033FC 6D 00                 2255 	.byte #0x6d, #0x00	;  109
      0033FE 70 00                 2256 	.byte #0x70, #0x00	;  112
      003400 74 00                 2257 	.byte #0x74, #0x00	;  116
      003402 77 00                 2258 	.byte #0x77, #0x00	;  119
      003404 7A 00                 2259 	.byte #0x7a, #0x00	;  122
      003406 7D 00                 2260 	.byte #0x7d, #0x00	;  125
      003408                       2261 _trig_dac_values:
      003408 00 00                 2262 	.byte #0x00, #0x00	;  0
      00340A 01 00                 2263 	.byte #0x01, #0x00	;  1
      00340C 02 00                 2264 	.byte #0x02, #0x00	;  2
      00340E 03 00                 2265 	.byte #0x03, #0x00	;  3
      003410 04 00                 2266 	.byte #0x04, #0x00	;  4
      003412 05 00                 2267 	.byte #0x05, #0x00	;  5
      003414 06 00                 2268 	.byte #0x06, #0x00	;  6
      003416 07 00                 2269 	.byte #0x07, #0x00	;  7
      003418 08 00                 2270 	.byte #0x08, #0x00	;  8
      00341A 09 00                 2271 	.byte #0x09, #0x00	;  9
      00341C 0A 00                 2272 	.byte #0x0a, #0x00	;  10
      00341E 0B 00                 2273 	.byte #0x0b, #0x00	;  11
      003420 0C 00                 2274 	.byte #0x0c, #0x00	;  12
      003422 0D 00                 2275 	.byte #0x0d, #0x00	;  13
      003424 0E 00                 2276 	.byte #0x0e, #0x00	;  14
      003426 0F 00                 2277 	.byte #0x0f, #0x00	;  15
      003428 10 00                 2278 	.byte #0x10, #0x00	;  16
      00342A 11 00                 2279 	.byte #0x11, #0x00	;  17
      00342C 12 00                 2280 	.byte #0x12, #0x00	;  18
      00342E 13 00                 2281 	.byte #0x13, #0x00	;  19
      003430 14 00                 2282 	.byte #0x14, #0x00	;  20
      003432 15 00                 2283 	.byte #0x15, #0x00	;  21
      003434 16 00                 2284 	.byte #0x16, #0x00	;  22
      003436 17 00                 2285 	.byte #0x17, #0x00	;  23
      003438 18 00                 2286 	.byte #0x18, #0x00	;  24
      00343A 19 00                 2287 	.byte #0x19, #0x00	;  25
      00343C 1A 00                 2288 	.byte #0x1a, #0x00	;  26
      00343E 1B 00                 2289 	.byte #0x1b, #0x00	;  27
      003440 1C 00                 2290 	.byte #0x1c, #0x00	;  28
      003442 1D 00                 2291 	.byte #0x1d, #0x00	;  29
      003444 1E 00                 2292 	.byte #0x1e, #0x00	;  30
      003446 1F 00                 2293 	.byte #0x1f, #0x00	;  31
      003448 20 00                 2294 	.byte #0x20, #0x00	;  32
      00344A 21 00                 2295 	.byte #0x21, #0x00	;  33
      00344C 22 00                 2296 	.byte #0x22, #0x00	;  34
      00344E 23 00                 2297 	.byte #0x23, #0x00	;  35
      003450 24 00                 2298 	.byte #0x24, #0x00	;  36
      003452 25 00                 2299 	.byte #0x25, #0x00	;  37
      003454 26 00                 2300 	.byte #0x26, #0x00	;  38
      003456 27 00                 2301 	.byte #0x27, #0x00	;  39
      003458 28 00                 2302 	.byte #0x28, #0x00	;  40
      00345A 29 00                 2303 	.byte #0x29, #0x00	;  41
      00345C 2A 00                 2304 	.byte #0x2a, #0x00	;  42
      00345E 2B 00                 2305 	.byte #0x2b, #0x00	;  43
      003460 2C 00                 2306 	.byte #0x2c, #0x00	;  44
      003462 2D 00                 2307 	.byte #0x2d, #0x00	;  45
      003464 2E 00                 2308 	.byte #0x2e, #0x00	;  46
      003466 2F 00                 2309 	.byte #0x2f, #0x00	;  47
      003468 30 00                 2310 	.byte #0x30, #0x00	;  48
      00346A 31 00                 2311 	.byte #0x31, #0x00	;  49
      00346C 32 00                 2312 	.byte #0x32, #0x00	;  50
      00346E 33 00                 2313 	.byte #0x33, #0x00	;  51
      003470 34 00                 2314 	.byte #0x34, #0x00	;  52
      003472 35 00                 2315 	.byte #0x35, #0x00	;  53
      003474 36 00                 2316 	.byte #0x36, #0x00	;  54
      003476 37 00                 2317 	.byte #0x37, #0x00	;  55
      003478 38 00                 2318 	.byte #0x38, #0x00	;  56
      00347A 39 00                 2319 	.byte #0x39, #0x00	;  57
      00347C 3A 00                 2320 	.byte #0x3a, #0x00	;  58
      00347E 3B 00                 2321 	.byte #0x3b, #0x00	;  59
      003480 3C 00                 2322 	.byte #0x3c, #0x00	;  60
      003482 3D 00                 2323 	.byte #0x3d, #0x00	;  61
      003484 3E 00                 2324 	.byte #0x3e, #0x00	;  62
      003486 3F 00                 2325 	.byte #0x3f, #0x00	;  63
      003488 40 00                 2326 	.byte #0x40, #0x00	;  64
      00348A 41 00                 2327 	.byte #0x41, #0x00	;  65
      00348C 42 00                 2328 	.byte #0x42, #0x00	;  66
      00348E 43 00                 2329 	.byte #0x43, #0x00	;  67
      003490 44 00                 2330 	.byte #0x44, #0x00	;  68
      003492 45 00                 2331 	.byte #0x45, #0x00	;  69
      003494 46 00                 2332 	.byte #0x46, #0x00	;  70
      003496 47 00                 2333 	.byte #0x47, #0x00	;  71
      003498 48 00                 2334 	.byte #0x48, #0x00	;  72
      00349A 49 00                 2335 	.byte #0x49, #0x00	;  73
      00349C 4A 00                 2336 	.byte #0x4a, #0x00	;  74
      00349E 4B 00                 2337 	.byte #0x4b, #0x00	;  75
      0034A0 4C 00                 2338 	.byte #0x4c, #0x00	;  76
      0034A2 4D 00                 2339 	.byte #0x4d, #0x00	;  77
      0034A4 4E 00                 2340 	.byte #0x4e, #0x00	;  78
      0034A6 4F 00                 2341 	.byte #0x4f, #0x00	;  79
      0034A8 50 00                 2342 	.byte #0x50, #0x00	;  80
      0034AA 51 00                 2343 	.byte #0x51, #0x00	;  81
      0034AC 52 00                 2344 	.byte #0x52, #0x00	;  82
      0034AE 53 00                 2345 	.byte #0x53, #0x00	;  83
      0034B0 54 00                 2346 	.byte #0x54, #0x00	;  84
      0034B2 55 00                 2347 	.byte #0x55, #0x00	;  85
      0034B4 56 00                 2348 	.byte #0x56, #0x00	;  86
      0034B6 57 00                 2349 	.byte #0x57, #0x00	;  87
      0034B8 58 00                 2350 	.byte #0x58, #0x00	;  88
      0034BA 59 00                 2351 	.byte #0x59, #0x00	;  89
      0034BC 5A 00                 2352 	.byte #0x5a, #0x00	;  90
      0034BE 5B 00                 2353 	.byte #0x5b, #0x00	;  91
      0034C0 5C 00                 2354 	.byte #0x5c, #0x00	;  92
      0034C2 5D 00                 2355 	.byte #0x5d, #0x00	;  93
      0034C4 5E 00                 2356 	.byte #0x5e, #0x00	;  94
      0034C6 5F 00                 2357 	.byte #0x5f, #0x00	;  95
      0034C8 60 00                 2358 	.byte #0x60, #0x00	;  96
      0034CA 61 00                 2359 	.byte #0x61, #0x00	;  97
      0034CC 62 00                 2360 	.byte #0x62, #0x00	;  98
      0034CE 63 00                 2361 	.byte #0x63, #0x00	;  99
      0034D0 64 00                 2362 	.byte #0x64, #0x00	;  100
      0034D2 65 00                 2363 	.byte #0x65, #0x00	;  101
      0034D4 66 00                 2364 	.byte #0x66, #0x00	;  102
      0034D6 67 00                 2365 	.byte #0x67, #0x00	;  103
      0034D8 68 00                 2366 	.byte #0x68, #0x00	;  104
      0034DA 69 00                 2367 	.byte #0x69, #0x00	;  105
      0034DC 6A 00                 2368 	.byte #0x6a, #0x00	;  106
      0034DE 6B 00                 2369 	.byte #0x6b, #0x00	;  107
      0034E0 6C 00                 2370 	.byte #0x6c, #0x00	;  108
      0034E2 6D 00                 2371 	.byte #0x6d, #0x00	;  109
      0034E4 6E 00                 2372 	.byte #0x6e, #0x00	;  110
      0034E6 6F 00                 2373 	.byte #0x6f, #0x00	;  111
      0034E8 70 00                 2374 	.byte #0x70, #0x00	;  112
      0034EA 71 00                 2375 	.byte #0x71, #0x00	;  113
      0034EC 72 00                 2376 	.byte #0x72, #0x00	;  114
      0034EE 73 00                 2377 	.byte #0x73, #0x00	;  115
      0034F0 74 00                 2378 	.byte #0x74, #0x00	;  116
      0034F2 75 00                 2379 	.byte #0x75, #0x00	;  117
      0034F4 76 00                 2380 	.byte #0x76, #0x00	;  118
      0034F6 77 00                 2381 	.byte #0x77, #0x00	;  119
      0034F8 78 00                 2382 	.byte #0x78, #0x00	;  120
      0034FA 79 00                 2383 	.byte #0x79, #0x00	;  121
      0034FC 7A 00                 2384 	.byte #0x7a, #0x00	;  122
      0034FE 7B 00                 2385 	.byte #0x7b, #0x00	;  123
      003500 7C 00                 2386 	.byte #0x7c, #0x00	;  124
      003502 7D 00                 2387 	.byte #0x7d, #0x00	;  125
      003504 7E 00                 2388 	.byte #0x7e, #0x00	;  126
      003506 7F 00                 2389 	.byte #0x7f, #0x00	;  127
      003508 80 00                 2390 	.byte #0x80, #0x00	;  128
      00350A 81 00                 2391 	.byte #0x81, #0x00	;  129
      00350C 82 00                 2392 	.byte #0x82, #0x00	;  130
      00350E 83 00                 2393 	.byte #0x83, #0x00	;  131
      003510 84 00                 2394 	.byte #0x84, #0x00	;  132
      003512 85 00                 2395 	.byte #0x85, #0x00	;  133
      003514 86 00                 2396 	.byte #0x86, #0x00	;  134
      003516 87 00                 2397 	.byte #0x87, #0x00	;  135
      003518 88 00                 2398 	.byte #0x88, #0x00	;  136
      00351A 89 00                 2399 	.byte #0x89, #0x00	;  137
      00351C 8A 00                 2400 	.byte #0x8a, #0x00	;  138
      00351E 8B 00                 2401 	.byte #0x8b, #0x00	;  139
      003520 8C 00                 2402 	.byte #0x8c, #0x00	;  140
      003522 8D 00                 2403 	.byte #0x8d, #0x00	;  141
      003524 8E 00                 2404 	.byte #0x8e, #0x00	;  142
      003526 8F 00                 2405 	.byte #0x8f, #0x00	;  143
      003528 90 00                 2406 	.byte #0x90, #0x00	;  144
      00352A 91 00                 2407 	.byte #0x91, #0x00	;  145
      00352C 92 00                 2408 	.byte #0x92, #0x00	;  146
      00352E 93 00                 2409 	.byte #0x93, #0x00	;  147
      003530 94 00                 2410 	.byte #0x94, #0x00	;  148
      003532 95 00                 2411 	.byte #0x95, #0x00	;  149
      003534 96 00                 2412 	.byte #0x96, #0x00	;  150
      003536 97 00                 2413 	.byte #0x97, #0x00	;  151
      003538 98 00                 2414 	.byte #0x98, #0x00	;  152
      00353A 99 00                 2415 	.byte #0x99, #0x00	;  153
      00353C 9A 00                 2416 	.byte #0x9a, #0x00	;  154
      00353E 9B 00                 2417 	.byte #0x9b, #0x00	;  155
      003540 9C 00                 2418 	.byte #0x9c, #0x00	;  156
      003542 9D 00                 2419 	.byte #0x9d, #0x00	;  157
      003544 9E 00                 2420 	.byte #0x9e, #0x00	;  158
      003546 9F 00                 2421 	.byte #0x9f, #0x00	;  159
      003548 A0 00                 2422 	.byte #0xa0, #0x00	;  160
      00354A A1 00                 2423 	.byte #0xa1, #0x00	;  161
      00354C A2 00                 2424 	.byte #0xa2, #0x00	;  162
      00354E A3 00                 2425 	.byte #0xa3, #0x00	;  163
      003550 A4 00                 2426 	.byte #0xa4, #0x00	;  164
      003552 A5 00                 2427 	.byte #0xa5, #0x00	;  165
      003554 A6 00                 2428 	.byte #0xa6, #0x00	;  166
      003556 A7 00                 2429 	.byte #0xa7, #0x00	;  167
      003558 A8 00                 2430 	.byte #0xa8, #0x00	;  168
      00355A A9 00                 2431 	.byte #0xa9, #0x00	;  169
      00355C AA 00                 2432 	.byte #0xaa, #0x00	;  170
      00355E AB 00                 2433 	.byte #0xab, #0x00	;  171
      003560 AC 00                 2434 	.byte #0xac, #0x00	;  172
      003562 AD 00                 2435 	.byte #0xad, #0x00	;  173
      003564 AE 00                 2436 	.byte #0xae, #0x00	;  174
      003566 AF 00                 2437 	.byte #0xaf, #0x00	;  175
      003568 B0 00                 2438 	.byte #0xb0, #0x00	;  176
      00356A B1 00                 2439 	.byte #0xb1, #0x00	;  177
      00356C B2 00                 2440 	.byte #0xb2, #0x00	;  178
      00356E B3 00                 2441 	.byte #0xb3, #0x00	;  179
      003570 B4 00                 2442 	.byte #0xb4, #0x00	;  180
      003572 B5 00                 2443 	.byte #0xb5, #0x00	;  181
      003574 B6 00                 2444 	.byte #0xb6, #0x00	;  182
      003576 B7 00                 2445 	.byte #0xb7, #0x00	;  183
      003578 B8 00                 2446 	.byte #0xb8, #0x00	;  184
      00357A B9 00                 2447 	.byte #0xb9, #0x00	;  185
      00357C BA 00                 2448 	.byte #0xba, #0x00	;  186
      00357E BB 00                 2449 	.byte #0xbb, #0x00	;  187
      003580 BC 00                 2450 	.byte #0xbc, #0x00	;  188
      003582 BD 00                 2451 	.byte #0xbd, #0x00	;  189
      003584 BE 00                 2452 	.byte #0xbe, #0x00	;  190
      003586 BF 00                 2453 	.byte #0xbf, #0x00	;  191
      003588 C0 00                 2454 	.byte #0xc0, #0x00	;  192
      00358A C1 00                 2455 	.byte #0xc1, #0x00	;  193
      00358C C2 00                 2456 	.byte #0xc2, #0x00	;  194
      00358E C3 00                 2457 	.byte #0xc3, #0x00	;  195
      003590 C4 00                 2458 	.byte #0xc4, #0x00	;  196
      003592 C5 00                 2459 	.byte #0xc5, #0x00	;  197
      003594 C6 00                 2460 	.byte #0xc6, #0x00	;  198
      003596 C7 00                 2461 	.byte #0xc7, #0x00	;  199
      003598 C8 00                 2462 	.byte #0xc8, #0x00	;  200
      00359A C9 00                 2463 	.byte #0xc9, #0x00	;  201
      00359C CA 00                 2464 	.byte #0xca, #0x00	;  202
      00359E CB 00                 2465 	.byte #0xcb, #0x00	;  203
      0035A0 CC 00                 2466 	.byte #0xcc, #0x00	;  204
      0035A2 CD 00                 2467 	.byte #0xcd, #0x00	;  205
      0035A4 CE 00                 2468 	.byte #0xce, #0x00	;  206
      0035A6 CF 00                 2469 	.byte #0xcf, #0x00	;  207
      0035A8 D0 00                 2470 	.byte #0xd0, #0x00	;  208
      0035AA D1 00                 2471 	.byte #0xd1, #0x00	;  209
      0035AC D2 00                 2472 	.byte #0xd2, #0x00	;  210
      0035AE D3 00                 2473 	.byte #0xd3, #0x00	;  211
      0035B0 D4 00                 2474 	.byte #0xd4, #0x00	;  212
      0035B2 D5 00                 2475 	.byte #0xd5, #0x00	;  213
      0035B4 D6 00                 2476 	.byte #0xd6, #0x00	;  214
      0035B6 D7 00                 2477 	.byte #0xd7, #0x00	;  215
      0035B8 D8 00                 2478 	.byte #0xd8, #0x00	;  216
      0035BA D9 00                 2479 	.byte #0xd9, #0x00	;  217
      0035BC DA 00                 2480 	.byte #0xda, #0x00	;  218
      0035BE DB 00                 2481 	.byte #0xdb, #0x00	;  219
      0035C0 DC 00                 2482 	.byte #0xdc, #0x00	;  220
      0035C2 DD 00                 2483 	.byte #0xdd, #0x00	;  221
      0035C4 DE 00                 2484 	.byte #0xde, #0x00	;  222
      0035C6 DF 00                 2485 	.byte #0xdf, #0x00	;  223
      0035C8 E0 00                 2486 	.byte #0xe0, #0x00	;  224
      0035CA E1 00                 2487 	.byte #0xe1, #0x00	;  225
      0035CC E2 00                 2488 	.byte #0xe2, #0x00	;  226
      0035CE E3 00                 2489 	.byte #0xe3, #0x00	;  227
      0035D0 E4 00                 2490 	.byte #0xe4, #0x00	;  228
      0035D2 E5 00                 2491 	.byte #0xe5, #0x00	;  229
      0035D4 E6 00                 2492 	.byte #0xe6, #0x00	;  230
      0035D6 E7 00                 2493 	.byte #0xe7, #0x00	;  231
      0035D8 E8 00                 2494 	.byte #0xe8, #0x00	;  232
      0035DA E9 00                 2495 	.byte #0xe9, #0x00	;  233
      0035DC EA 00                 2496 	.byte #0xea, #0x00	;  234
      0035DE EB 00                 2497 	.byte #0xeb, #0x00	;  235
      0035E0 EC 00                 2498 	.byte #0xec, #0x00	;  236
      0035E2 ED 00                 2499 	.byte #0xed, #0x00	;  237
      0035E4 EE 00                 2500 	.byte #0xee, #0x00	;  238
      0035E6 EF 00                 2501 	.byte #0xef, #0x00	;  239
      0035E8 F0 00                 2502 	.byte #0xf0, #0x00	;  240
      0035EA F1 00                 2503 	.byte #0xf1, #0x00	;  241
      0035EC F2 00                 2504 	.byte #0xf2, #0x00	;  242
      0035EE F3 00                 2505 	.byte #0xf3, #0x00	;  243
      0035F0 F4 00                 2506 	.byte #0xf4, #0x00	;  244
      0035F2 F5 00                 2507 	.byte #0xf5, #0x00	;  245
      0035F4 F6 00                 2508 	.byte #0xf6, #0x00	;  246
      0035F6 F7 00                 2509 	.byte #0xf7, #0x00	;  247
      0035F8 F8 00                 2510 	.byte #0xf8, #0x00	;  248
      0035FA F9 00                 2511 	.byte #0xf9, #0x00	;  249
      0035FC FA 00                 2512 	.byte #0xfa, #0x00	;  250
      0035FE FB 00                 2513 	.byte #0xfb, #0x00	;  251
      003600 FC 00                 2514 	.byte #0xfc, #0x00	;  252
      003602 FD 00                 2515 	.byte #0xfd, #0x00	;  253
      003604 FE 00                 2516 	.byte #0xfe, #0x00	;  254
      003606 FF 00                 2517 	.byte #0xff, #0x00	;  255
      003608 FF 00                 2518 	.byte #0xff, #0x00	;  255
      00360A FE 00                 2519 	.byte #0xfe, #0x00	;  254
      00360C FD 00                 2520 	.byte #0xfd, #0x00	;  253
      00360E FC 00                 2521 	.byte #0xfc, #0x00	;  252
      003610 FB 00                 2522 	.byte #0xfb, #0x00	;  251
      003612 FA 00                 2523 	.byte #0xfa, #0x00	;  250
      003614 F9 00                 2524 	.byte #0xf9, #0x00	;  249
      003616 F8 00                 2525 	.byte #0xf8, #0x00	;  248
      003618 F7 00                 2526 	.byte #0xf7, #0x00	;  247
      00361A F6 00                 2527 	.byte #0xf6, #0x00	;  246
      00361C F5 00                 2528 	.byte #0xf5, #0x00	;  245
      00361E F4 00                 2529 	.byte #0xf4, #0x00	;  244
      003620 F3 00                 2530 	.byte #0xf3, #0x00	;  243
      003622 F2 00                 2531 	.byte #0xf2, #0x00	;  242
      003624 F1 00                 2532 	.byte #0xf1, #0x00	;  241
      003626 F0 00                 2533 	.byte #0xf0, #0x00	;  240
      003628 EF 00                 2534 	.byte #0xef, #0x00	;  239
      00362A EE 00                 2535 	.byte #0xee, #0x00	;  238
      00362C ED 00                 2536 	.byte #0xed, #0x00	;  237
      00362E EC 00                 2537 	.byte #0xec, #0x00	;  236
      003630 EB 00                 2538 	.byte #0xeb, #0x00	;  235
      003632 EA 00                 2539 	.byte #0xea, #0x00	;  234
      003634 E9 00                 2540 	.byte #0xe9, #0x00	;  233
      003636 E8 00                 2541 	.byte #0xe8, #0x00	;  232
      003638 E7 00                 2542 	.byte #0xe7, #0x00	;  231
      00363A E6 00                 2543 	.byte #0xe6, #0x00	;  230
      00363C E5 00                 2544 	.byte #0xe5, #0x00	;  229
      00363E E4 00                 2545 	.byte #0xe4, #0x00	;  228
      003640 E3 00                 2546 	.byte #0xe3, #0x00	;  227
      003642 E2 00                 2547 	.byte #0xe2, #0x00	;  226
      003644 E1 00                 2548 	.byte #0xe1, #0x00	;  225
      003646 E0 00                 2549 	.byte #0xe0, #0x00	;  224
      003648 DF 00                 2550 	.byte #0xdf, #0x00	;  223
      00364A DE 00                 2551 	.byte #0xde, #0x00	;  222
      00364C DD 00                 2552 	.byte #0xdd, #0x00	;  221
      00364E DC 00                 2553 	.byte #0xdc, #0x00	;  220
      003650 DB 00                 2554 	.byte #0xdb, #0x00	;  219
      003652 DA 00                 2555 	.byte #0xda, #0x00	;  218
      003654 D9 00                 2556 	.byte #0xd9, #0x00	;  217
      003656 D8 00                 2557 	.byte #0xd8, #0x00	;  216
      003658 D7 00                 2558 	.byte #0xd7, #0x00	;  215
      00365A D6 00                 2559 	.byte #0xd6, #0x00	;  214
      00365C D5 00                 2560 	.byte #0xd5, #0x00	;  213
      00365E D4 00                 2561 	.byte #0xd4, #0x00	;  212
      003660 D3 00                 2562 	.byte #0xd3, #0x00	;  211
      003662 D2 00                 2563 	.byte #0xd2, #0x00	;  210
      003664 D1 00                 2564 	.byte #0xd1, #0x00	;  209
      003666 D0 00                 2565 	.byte #0xd0, #0x00	;  208
      003668 CF 00                 2566 	.byte #0xcf, #0x00	;  207
      00366A CE 00                 2567 	.byte #0xce, #0x00	;  206
      00366C CD 00                 2568 	.byte #0xcd, #0x00	;  205
      00366E CC 00                 2569 	.byte #0xcc, #0x00	;  204
      003670 CB 00                 2570 	.byte #0xcb, #0x00	;  203
      003672 CA 00                 2571 	.byte #0xca, #0x00	;  202
      003674 C9 00                 2572 	.byte #0xc9, #0x00	;  201
      003676 C8 00                 2573 	.byte #0xc8, #0x00	;  200
      003678 C7 00                 2574 	.byte #0xc7, #0x00	;  199
      00367A C6 00                 2575 	.byte #0xc6, #0x00	;  198
      00367C C5 00                 2576 	.byte #0xc5, #0x00	;  197
      00367E C4 00                 2577 	.byte #0xc4, #0x00	;  196
      003680 C3 00                 2578 	.byte #0xc3, #0x00	;  195
      003682 C2 00                 2579 	.byte #0xc2, #0x00	;  194
      003684 C1 00                 2580 	.byte #0xc1, #0x00	;  193
      003686 C0 00                 2581 	.byte #0xc0, #0x00	;  192
      003688 BF 00                 2582 	.byte #0xbf, #0x00	;  191
      00368A BE 00                 2583 	.byte #0xbe, #0x00	;  190
      00368C BD 00                 2584 	.byte #0xbd, #0x00	;  189
      00368E BC 00                 2585 	.byte #0xbc, #0x00	;  188
      003690 BB 00                 2586 	.byte #0xbb, #0x00	;  187
      003692 BA 00                 2587 	.byte #0xba, #0x00	;  186
      003694 B9 00                 2588 	.byte #0xb9, #0x00	;  185
      003696 B8 00                 2589 	.byte #0xb8, #0x00	;  184
      003698 B7 00                 2590 	.byte #0xb7, #0x00	;  183
      00369A B6 00                 2591 	.byte #0xb6, #0x00	;  182
      00369C B5 00                 2592 	.byte #0xb5, #0x00	;  181
      00369E B4 00                 2593 	.byte #0xb4, #0x00	;  180
      0036A0 B3 00                 2594 	.byte #0xb3, #0x00	;  179
      0036A2 B2 00                 2595 	.byte #0xb2, #0x00	;  178
      0036A4 B1 00                 2596 	.byte #0xb1, #0x00	;  177
      0036A6 B0 00                 2597 	.byte #0xb0, #0x00	;  176
      0036A8 AF 00                 2598 	.byte #0xaf, #0x00	;  175
      0036AA AE 00                 2599 	.byte #0xae, #0x00	;  174
      0036AC AD 00                 2600 	.byte #0xad, #0x00	;  173
      0036AE AC 00                 2601 	.byte #0xac, #0x00	;  172
      0036B0 AB 00                 2602 	.byte #0xab, #0x00	;  171
      0036B2 AA 00                 2603 	.byte #0xaa, #0x00	;  170
      0036B4 A9 00                 2604 	.byte #0xa9, #0x00	;  169
      0036B6 A8 00                 2605 	.byte #0xa8, #0x00	;  168
      0036B8 A7 00                 2606 	.byte #0xa7, #0x00	;  167
      0036BA A6 00                 2607 	.byte #0xa6, #0x00	;  166
      0036BC A5 00                 2608 	.byte #0xa5, #0x00	;  165
      0036BE A4 00                 2609 	.byte #0xa4, #0x00	;  164
      0036C0 A3 00                 2610 	.byte #0xa3, #0x00	;  163
      0036C2 A2 00                 2611 	.byte #0xa2, #0x00	;  162
      0036C4 A1 00                 2612 	.byte #0xa1, #0x00	;  161
      0036C6 A0 00                 2613 	.byte #0xa0, #0x00	;  160
      0036C8 9F 00                 2614 	.byte #0x9f, #0x00	;  159
      0036CA 9E 00                 2615 	.byte #0x9e, #0x00	;  158
      0036CC 9D 00                 2616 	.byte #0x9d, #0x00	;  157
      0036CE 9C 00                 2617 	.byte #0x9c, #0x00	;  156
      0036D0 9B 00                 2618 	.byte #0x9b, #0x00	;  155
      0036D2 9A 00                 2619 	.byte #0x9a, #0x00	;  154
      0036D4 99 00                 2620 	.byte #0x99, #0x00	;  153
      0036D6 98 00                 2621 	.byte #0x98, #0x00	;  152
      0036D8 97 00                 2622 	.byte #0x97, #0x00	;  151
      0036DA 96 00                 2623 	.byte #0x96, #0x00	;  150
      0036DC 95 00                 2624 	.byte #0x95, #0x00	;  149
      0036DE 94 00                 2625 	.byte #0x94, #0x00	;  148
      0036E0 93 00                 2626 	.byte #0x93, #0x00	;  147
      0036E2 92 00                 2627 	.byte #0x92, #0x00	;  146
      0036E4 91 00                 2628 	.byte #0x91, #0x00	;  145
      0036E6 90 00                 2629 	.byte #0x90, #0x00	;  144
      0036E8 8F 00                 2630 	.byte #0x8f, #0x00	;  143
      0036EA 8E 00                 2631 	.byte #0x8e, #0x00	;  142
      0036EC 8D 00                 2632 	.byte #0x8d, #0x00	;  141
      0036EE 8C 00                 2633 	.byte #0x8c, #0x00	;  140
      0036F0 8B 00                 2634 	.byte #0x8b, #0x00	;  139
      0036F2 8A 00                 2635 	.byte #0x8a, #0x00	;  138
      0036F4 89 00                 2636 	.byte #0x89, #0x00	;  137
      0036F6 88 00                 2637 	.byte #0x88, #0x00	;  136
      0036F8 87 00                 2638 	.byte #0x87, #0x00	;  135
      0036FA 86 00                 2639 	.byte #0x86, #0x00	;  134
      0036FC 85 00                 2640 	.byte #0x85, #0x00	;  133
      0036FE 84 00                 2641 	.byte #0x84, #0x00	;  132
      003700 83 00                 2642 	.byte #0x83, #0x00	;  131
      003702 82 00                 2643 	.byte #0x82, #0x00	;  130
      003704 81 00                 2644 	.byte #0x81, #0x00	;  129
      003706 80 00                 2645 	.byte #0x80, #0x00	;  128
      003708 7F 00                 2646 	.byte #0x7f, #0x00	;  127
      00370A 7E 00                 2647 	.byte #0x7e, #0x00	;  126
      00370C 7D 00                 2648 	.byte #0x7d, #0x00	;  125
      00370E 7C 00                 2649 	.byte #0x7c, #0x00	;  124
      003710 7B 00                 2650 	.byte #0x7b, #0x00	;  123
      003712 7A 00                 2651 	.byte #0x7a, #0x00	;  122
      003714 79 00                 2652 	.byte #0x79, #0x00	;  121
      003716 78 00                 2653 	.byte #0x78, #0x00	;  120
      003718 77 00                 2654 	.byte #0x77, #0x00	;  119
      00371A 76 00                 2655 	.byte #0x76, #0x00	;  118
      00371C 75 00                 2656 	.byte #0x75, #0x00	;  117
      00371E 74 00                 2657 	.byte #0x74, #0x00	;  116
      003720 73 00                 2658 	.byte #0x73, #0x00	;  115
      003722 72 00                 2659 	.byte #0x72, #0x00	;  114
      003724 71 00                 2660 	.byte #0x71, #0x00	;  113
      003726 70 00                 2661 	.byte #0x70, #0x00	;  112
      003728 6F 00                 2662 	.byte #0x6f, #0x00	;  111
      00372A 6E 00                 2663 	.byte #0x6e, #0x00	;  110
      00372C 6D 00                 2664 	.byte #0x6d, #0x00	;  109
      00372E 6C 00                 2665 	.byte #0x6c, #0x00	;  108
      003730 6B 00                 2666 	.byte #0x6b, #0x00	;  107
      003732 6A 00                 2667 	.byte #0x6a, #0x00	;  106
      003734 69 00                 2668 	.byte #0x69, #0x00	;  105
      003736 68 00                 2669 	.byte #0x68, #0x00	;  104
      003738 67 00                 2670 	.byte #0x67, #0x00	;  103
      00373A 66 00                 2671 	.byte #0x66, #0x00	;  102
      00373C 65 00                 2672 	.byte #0x65, #0x00	;  101
      00373E 64 00                 2673 	.byte #0x64, #0x00	;  100
      003740 63 00                 2674 	.byte #0x63, #0x00	;  99
      003742 62 00                 2675 	.byte #0x62, #0x00	;  98
      003744 61 00                 2676 	.byte #0x61, #0x00	;  97
      003746 60 00                 2677 	.byte #0x60, #0x00	;  96
      003748 5F 00                 2678 	.byte #0x5f, #0x00	;  95
      00374A 5E 00                 2679 	.byte #0x5e, #0x00	;  94
      00374C 5D 00                 2680 	.byte #0x5d, #0x00	;  93
      00374E 5C 00                 2681 	.byte #0x5c, #0x00	;  92
      003750 5B 00                 2682 	.byte #0x5b, #0x00	;  91
      003752 5A 00                 2683 	.byte #0x5a, #0x00	;  90
      003754 59 00                 2684 	.byte #0x59, #0x00	;  89
      003756 58 00                 2685 	.byte #0x58, #0x00	;  88
      003758 57 00                 2686 	.byte #0x57, #0x00	;  87
      00375A 56 00                 2687 	.byte #0x56, #0x00	;  86
      00375C 55 00                 2688 	.byte #0x55, #0x00	;  85
      00375E 54 00                 2689 	.byte #0x54, #0x00	;  84
      003760 53 00                 2690 	.byte #0x53, #0x00	;  83
      003762 52 00                 2691 	.byte #0x52, #0x00	;  82
      003764 51 00                 2692 	.byte #0x51, #0x00	;  81
      003766 50 00                 2693 	.byte #0x50, #0x00	;  80
      003768 4F 00                 2694 	.byte #0x4f, #0x00	;  79
      00376A 4E 00                 2695 	.byte #0x4e, #0x00	;  78
      00376C 4D 00                 2696 	.byte #0x4d, #0x00	;  77
      00376E 4C 00                 2697 	.byte #0x4c, #0x00	;  76
      003770 4B 00                 2698 	.byte #0x4b, #0x00	;  75
      003772 4A 00                 2699 	.byte #0x4a, #0x00	;  74
      003774 49 00                 2700 	.byte #0x49, #0x00	;  73
      003776 48 00                 2701 	.byte #0x48, #0x00	;  72
      003778 47 00                 2702 	.byte #0x47, #0x00	;  71
      00377A 46 00                 2703 	.byte #0x46, #0x00	;  70
      00377C 45 00                 2704 	.byte #0x45, #0x00	;  69
      00377E 44 00                 2705 	.byte #0x44, #0x00	;  68
      003780 43 00                 2706 	.byte #0x43, #0x00	;  67
      003782 42 00                 2707 	.byte #0x42, #0x00	;  66
      003784 41 00                 2708 	.byte #0x41, #0x00	;  65
      003786 40 00                 2709 	.byte #0x40, #0x00	;  64
      003788 3F 00                 2710 	.byte #0x3f, #0x00	;  63
      00378A 3E 00                 2711 	.byte #0x3e, #0x00	;  62
      00378C 3D 00                 2712 	.byte #0x3d, #0x00	;  61
      00378E 3C 00                 2713 	.byte #0x3c, #0x00	;  60
      003790 3B 00                 2714 	.byte #0x3b, #0x00	;  59
      003792 3A 00                 2715 	.byte #0x3a, #0x00	;  58
      003794 39 00                 2716 	.byte #0x39, #0x00	;  57
      003796 38 00                 2717 	.byte #0x38, #0x00	;  56
      003798 37 00                 2718 	.byte #0x37, #0x00	;  55
      00379A 36 00                 2719 	.byte #0x36, #0x00	;  54
      00379C 35 00                 2720 	.byte #0x35, #0x00	;  53
      00379E 34 00                 2721 	.byte #0x34, #0x00	;  52
      0037A0 33 00                 2722 	.byte #0x33, #0x00	;  51
      0037A2 32 00                 2723 	.byte #0x32, #0x00	;  50
      0037A4 31 00                 2724 	.byte #0x31, #0x00	;  49
      0037A6 30 00                 2725 	.byte #0x30, #0x00	;  48
      0037A8 2F 00                 2726 	.byte #0x2f, #0x00	;  47
      0037AA 2E 00                 2727 	.byte #0x2e, #0x00	;  46
      0037AC 2D 00                 2728 	.byte #0x2d, #0x00	;  45
      0037AE 2C 00                 2729 	.byte #0x2c, #0x00	;  44
      0037B0 2B 00                 2730 	.byte #0x2b, #0x00	;  43
      0037B2 2A 00                 2731 	.byte #0x2a, #0x00	;  42
      0037B4 29 00                 2732 	.byte #0x29, #0x00	;  41
      0037B6 28 00                 2733 	.byte #0x28, #0x00	;  40
      0037B8 27 00                 2734 	.byte #0x27, #0x00	;  39
      0037BA 26 00                 2735 	.byte #0x26, #0x00	;  38
      0037BC 25 00                 2736 	.byte #0x25, #0x00	;  37
      0037BE 24 00                 2737 	.byte #0x24, #0x00	;  36
      0037C0 23 00                 2738 	.byte #0x23, #0x00	;  35
      0037C2 22 00                 2739 	.byte #0x22, #0x00	;  34
      0037C4 21 00                 2740 	.byte #0x21, #0x00	;  33
      0037C6 20 00                 2741 	.byte #0x20, #0x00	;  32
      0037C8 1F 00                 2742 	.byte #0x1f, #0x00	;  31
      0037CA 1E 00                 2743 	.byte #0x1e, #0x00	;  30
      0037CC 1D 00                 2744 	.byte #0x1d, #0x00	;  29
      0037CE 1C 00                 2745 	.byte #0x1c, #0x00	;  28
      0037D0 1B 00                 2746 	.byte #0x1b, #0x00	;  27
      0037D2 1A 00                 2747 	.byte #0x1a, #0x00	;  26
      0037D4 19 00                 2748 	.byte #0x19, #0x00	;  25
      0037D6 18 00                 2749 	.byte #0x18, #0x00	;  24
      0037D8 17 00                 2750 	.byte #0x17, #0x00	;  23
      0037DA 16 00                 2751 	.byte #0x16, #0x00	;  22
      0037DC 15 00                 2752 	.byte #0x15, #0x00	;  21
      0037DE 14 00                 2753 	.byte #0x14, #0x00	;  20
      0037E0 13 00                 2754 	.byte #0x13, #0x00	;  19
      0037E2 12 00                 2755 	.byte #0x12, #0x00	;  18
      0037E4 11 00                 2756 	.byte #0x11, #0x00	;  17
      0037E6 10 00                 2757 	.byte #0x10, #0x00	;  16
      0037E8 0F 00                 2758 	.byte #0x0f, #0x00	;  15
      0037EA 0E 00                 2759 	.byte #0x0e, #0x00	;  14
      0037EC 0D 00                 2760 	.byte #0x0d, #0x00	;  13
      0037EE 0C 00                 2761 	.byte #0x0c, #0x00	;  12
      0037F0 0B 00                 2762 	.byte #0x0b, #0x00	;  11
      0037F2 0A 00                 2763 	.byte #0x0a, #0x00	;  10
      0037F4 09 00                 2764 	.byte #0x09, #0x00	;  9
      0037F6 08 00                 2765 	.byte #0x08, #0x00	;  8
      0037F8 07 00                 2766 	.byte #0x07, #0x00	;  7
      0037FA 06 00                 2767 	.byte #0x06, #0x00	;  6
      0037FC 05 00                 2768 	.byte #0x05, #0x00	;  5
      0037FE 04 00                 2769 	.byte #0x04, #0x00	;  4
      003800 03 00                 2770 	.byte #0x03, #0x00	;  3
      003802 02 00                 2771 	.byte #0x02, #0x00	;  2
      003804 01 00                 2772 	.byte #0x01, #0x00	;  1
      003806 00 00                 2773 	.byte #0x00, #0x00	;  0
                                   2774 	.area CONST   (CODE)
      003808                       2775 ___str_0:
      003808 0A                    2776 	.db 0x0a
      003809 0D                    2777 	.db 0x0d
      00380A E2                    2778 	.db 0xe2
      00380B 94                    2779 	.db 0x94
      00380C 8C                    2780 	.db 0x8c
      00380D E2                    2781 	.db 0xe2
      00380E 94                    2782 	.db 0x94
      00380F 80                    2783 	.db 0x80
      003810 E2                    2784 	.db 0xe2
      003811 94                    2785 	.db 0x94
      003812 80                    2786 	.db 0x80
      003813 E2                    2787 	.db 0xe2
      003814 94                    2788 	.db 0x94
      003815 80                    2789 	.db 0x80
      003816 E2                    2790 	.db 0xe2
      003817 94                    2791 	.db 0x94
      003818 80                    2792 	.db 0x80
      003819 E2                    2793 	.db 0xe2
      00381A 94                    2794 	.db 0x94
      00381B 80                    2795 	.db 0x80
      00381C E2                    2796 	.db 0xe2
      00381D 94                    2797 	.db 0x94
      00381E 80                    2798 	.db 0x80
      00381F E2                    2799 	.db 0xe2
      003820 94                    2800 	.db 0x94
      003821 80                    2801 	.db 0x80
      003822 E2                    2802 	.db 0xe2
      003823 94                    2803 	.db 0x94
      003824 80                    2804 	.db 0x80
      003825 E2                    2805 	.db 0xe2
      003826 94                    2806 	.db 0x94
      003827 80                    2807 	.db 0x80
      003828 E2                    2808 	.db 0xe2
      003829 94                    2809 	.db 0x94
      00382A 80                    2810 	.db 0x80
      00382B E2                    2811 	.db 0xe2
      00382C 94                    2812 	.db 0x94
      00382D 80                    2813 	.db 0x80
      00382E E2                    2814 	.db 0xe2
      00382F 94                    2815 	.db 0x94
      003830 80                    2816 	.db 0x80
      003831 E2                    2817 	.db 0xe2
      003832 94                    2818 	.db 0x94
      003833 80                    2819 	.db 0x80
      003834 E2                    2820 	.db 0xe2
      003835 94                    2821 	.db 0x94
      003836 80                    2822 	.db 0x80
      003837 E2                    2823 	.db 0xe2
      003838 94                    2824 	.db 0x94
      003839 80                    2825 	.db 0x80
      00383A E2                    2826 	.db 0xe2
      00383B 94                    2827 	.db 0x94
      00383C 80                    2828 	.db 0x80
      00383D E2                    2829 	.db 0xe2
      00383E 94                    2830 	.db 0x94
      00383F 80                    2831 	.db 0x80
      003840 E2                    2832 	.db 0xe2
      003841 94                    2833 	.db 0x94
      003842 80                    2834 	.db 0x80
      003843 E2                    2835 	.db 0xe2
      003844 94                    2836 	.db 0x94
      003845 80                    2837 	.db 0x80
      003846 E2                    2838 	.db 0xe2
      003847 94                    2839 	.db 0x94
      003848 80                    2840 	.db 0x80
      003849 E2                    2841 	.db 0xe2
      00384A 94                    2842 	.db 0x94
      00384B 80                    2843 	.db 0x80
      00384C E2                    2844 	.db 0xe2
      00384D 94                    2845 	.db 0x94
      00384E 80                    2846 	.db 0x80
      00384F E2                    2847 	.db 0xe2
      003850 94                    2848 	.db 0x94
      003851 80                    2849 	.db 0x80
      003852 E2                    2850 	.db 0xe2
      003853 94                    2851 	.db 0x94
      003854 80                    2852 	.db 0x80
      003855 E2                    2853 	.db 0xe2
      003856 94                    2854 	.db 0x94
      003857 80                    2855 	.db 0x80
      003858 E2                    2856 	.db 0xe2
      003859 94                    2857 	.db 0x94
      00385A 80                    2858 	.db 0x80
      00385B E2                    2859 	.db 0xe2
      00385C 94                    2860 	.db 0x94
      00385D 80                    2861 	.db 0x80
      00385E E2                    2862 	.db 0xe2
      00385F 94                    2863 	.db 0x94
      003860 80                    2864 	.db 0x80
      003861 E2                    2865 	.db 0xe2
      003862 94                    2866 	.db 0x94
      003863 80                    2867 	.db 0x80
      003864 E2                    2868 	.db 0xe2
      003865 94                    2869 	.db 0x94
      003866 80                    2870 	.db 0x80
      003867 E2                    2871 	.db 0xe2
      003868 94                    2872 	.db 0x94
      003869 80                    2873 	.db 0x80
      00386A E2                    2874 	.db 0xe2
      00386B 94                    2875 	.db 0x94
      00386C 80                    2876 	.db 0x80
      00386D E2                    2877 	.db 0xe2
      00386E 94                    2878 	.db 0x94
      00386F 80                    2879 	.db 0x80
      003870 E2                    2880 	.db 0xe2
      003871 94                    2881 	.db 0x94
      003872 80                    2882 	.db 0x80
      003873 E2                    2883 	.db 0xe2
      003874 94                    2884 	.db 0x94
      003875 80                    2885 	.db 0x80
      003876 E2                    2886 	.db 0xe2
      003877 94                    2887 	.db 0x94
      003878 80                    2888 	.db 0x80
      003879 E2                    2889 	.db 0xe2
      00387A 94                    2890 	.db 0x94
      00387B 80                    2891 	.db 0x80
      00387C E2                    2892 	.db 0xe2
      00387D 94                    2893 	.db 0x94
      00387E 80                    2894 	.db 0x80
      00387F E2                    2895 	.db 0xe2
      003880 94                    2896 	.db 0x94
      003881 80                    2897 	.db 0x80
      003882 E2                    2898 	.db 0xe2
      003883 94                    2899 	.db 0x94
      003884 80                    2900 	.db 0x80
      003885 E2                    2901 	.db 0xe2
      003886 94                    2902 	.db 0x94
      003887 80                    2903 	.db 0x80
      003888 E2                    2904 	.db 0xe2
      003889 94                    2905 	.db 0x94
      00388A 80                    2906 	.db 0x80
      00388B E2                    2907 	.db 0xe2
      00388C 94                    2908 	.db 0x94
      00388D 80                    2909 	.db 0x80
      00388E E2                    2910 	.db 0xe2
      00388F 94                    2911 	.db 0x94
      003890 80                    2912 	.db 0x80
      003891 E2                    2913 	.db 0xe2
      003892 94                    2914 	.db 0x94
      003893 80                    2915 	.db 0x80
      003894 E2                    2916 	.db 0xe2
      003895 94                    2917 	.db 0x94
      003896 80                    2918 	.db 0x80
      003897 E2                    2919 	.db 0xe2
      003898 94                    2920 	.db 0x94
      003899 80                    2921 	.db 0x80
      00389A E2                    2922 	.db 0xe2
      00389B 94                    2923 	.db 0x94
      00389C 80                    2924 	.db 0x80
      00389D E2                    2925 	.db 0xe2
      00389E 94                    2926 	.db 0x94
      00389F 80                    2927 	.db 0x80
      0038A0 E2                    2928 	.db 0xe2
      0038A1 94                    2929 	.db 0x94
      0038A2 80                    2930 	.db 0x80
      0038A3 E2                    2931 	.db 0xe2
      0038A4 94                    2932 	.db 0x94
      0038A5 80                    2933 	.db 0x80
      0038A6 E2                    2934 	.db 0xe2
      0038A7 94                    2935 	.db 0x94
      0038A8 80                    2936 	.db 0x80
      0038A9 E2                    2937 	.db 0xe2
      0038AA 94                    2938 	.db 0x94
      0038AB 80                    2939 	.db 0x80
      0038AC E2                    2940 	.db 0xe2
      0038AD 94                    2941 	.db 0x94
      0038AE 80                    2942 	.db 0x80
      0038AF E2                    2943 	.db 0xe2
      0038B0 94                    2944 	.db 0x94
      0038B1 80                    2945 	.db 0x80
      0038B2 E2                    2946 	.db 0xe2
      0038B3 94                    2947 	.db 0x94
      0038B4 80                    2948 	.db 0x80
      0038B5 E2                    2949 	.db 0xe2
      0038B6 94                    2950 	.db 0x94
      0038B7 80                    2951 	.db 0x80
      0038B8 E2                    2952 	.db 0xe2
      0038B9 94                    2953 	.db 0x94
      0038BA 80                    2954 	.db 0x80
      0038BB E2                    2955 	.db 0xe2
      0038BC 94                    2956 	.db 0x94
      0038BD 80                    2957 	.db 0x80
      0038BE E2                    2958 	.db 0xe2
      0038BF 94                    2959 	.db 0x94
      0038C0 80                    2960 	.db 0x80
      0038C1 E2                    2961 	.db 0xe2
      0038C2 94                    2962 	.db 0x94
      0038C3 80                    2963 	.db 0x80
      0038C4 E2                    2964 	.db 0xe2
      0038C5 94                    2965 	.db 0x94
      0038C6 80                    2966 	.db 0x80
      0038C7 E2                    2967 	.db 0xe2
      0038C8 94                    2968 	.db 0x94
      0038C9 90                    2969 	.db 0x90
      0038CA 0A                    2970 	.db 0x0a
      0038CB 0D                    2971 	.db 0x0d
      0038CC 00                    2972 	.db 0x00
                                   2973 	.area CSEG    (CODE)
                                   2974 	.area CONST   (CODE)
      0038CD                       2975 ___str_1:
      0038CD E2                    2976 	.db 0xe2
      0038CE 94                    2977 	.db 0x94
      0038CF 82                    2978 	.db 0x82
      0038D0 20 20 20 20 20 20 20  2979 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00390C 20 20                 2980 	.ascii "  "
      00390E E2                    2981 	.db 0xe2
      00390F 94                    2982 	.db 0x94
      003910 82                    2983 	.db 0x82
      003911 0A                    2984 	.db 0x0a
      003912 0D                    2985 	.db 0x0d
      003913 00                    2986 	.db 0x00
                                   2987 	.area CSEG    (CODE)
                                   2988 	.area CONST   (CODE)
      003914                       2989 ___str_2:
      003914 E2                    2990 	.db 0xe2
      003915 94                    2991 	.db 0x94
      003916 9C                    2992 	.db 0x9c
      003917 E2                    2993 	.db 0xe2
      003918 94                    2994 	.db 0x94
      003919 80                    2995 	.db 0x80
      00391A E2                    2996 	.db 0xe2
      00391B 94                    2997 	.db 0x94
      00391C 80                    2998 	.db 0x80
      00391D E2                    2999 	.db 0xe2
      00391E 94                    3000 	.db 0x94
      00391F 80                    3001 	.db 0x80
      003920 E2                    3002 	.db 0xe2
      003921 94                    3003 	.db 0x94
      003922 80                    3004 	.db 0x80
      003923 E2                    3005 	.db 0xe2
      003924 94                    3006 	.db 0x94
      003925 80                    3007 	.db 0x80
      003926 E2                    3008 	.db 0xe2
      003927 94                    3009 	.db 0x94
      003928 80                    3010 	.db 0x80
      003929 E2                    3011 	.db 0xe2
      00392A 94                    3012 	.db 0x94
      00392B 80                    3013 	.db 0x80
      00392C E2                    3014 	.db 0xe2
      00392D 94                    3015 	.db 0x94
      00392E 80                    3016 	.db 0x80
      00392F E2                    3017 	.db 0xe2
      003930 94                    3018 	.db 0x94
      003931 80                    3019 	.db 0x80
      003932 E2                    3020 	.db 0xe2
      003933 94                    3021 	.db 0x94
      003934 80                    3022 	.db 0x80
      003935 E2                    3023 	.db 0xe2
      003936 94                    3024 	.db 0x94
      003937 80                    3025 	.db 0x80
      003938 E2                    3026 	.db 0xe2
      003939 94                    3027 	.db 0x94
      00393A 80                    3028 	.db 0x80
      00393B E2                    3029 	.db 0xe2
      00393C 94                    3030 	.db 0x94
      00393D 80                    3031 	.db 0x80
      00393E E2                    3032 	.db 0xe2
      00393F 94                    3033 	.db 0x94
      003940 80                    3034 	.db 0x80
      003941 E2                    3035 	.db 0xe2
      003942 94                    3036 	.db 0x94
      003943 80                    3037 	.db 0x80
      003944 E2                    3038 	.db 0xe2
      003945 94                    3039 	.db 0x94
      003946 80                    3040 	.db 0x80
      003947 E2                    3041 	.db 0xe2
      003948 94                    3042 	.db 0x94
      003949 80                    3043 	.db 0x80
      00394A E2                    3044 	.db 0xe2
      00394B 94                    3045 	.db 0x94
      00394C 80                    3046 	.db 0x80
      00394D E2                    3047 	.db 0xe2
      00394E 94                    3048 	.db 0x94
      00394F 80                    3049 	.db 0x80
      003950 E2                    3050 	.db 0xe2
      003951 94                    3051 	.db 0x94
      003952 80                    3052 	.db 0x80
      003953 E2                    3053 	.db 0xe2
      003954 94                    3054 	.db 0x94
      003955 80                    3055 	.db 0x80
      003956 E2                    3056 	.db 0xe2
      003957 94                    3057 	.db 0x94
      003958 80                    3058 	.db 0x80
      003959 E2                    3059 	.db 0xe2
      00395A 94                    3060 	.db 0x94
      00395B 80                    3061 	.db 0x80
      00395C E2                    3062 	.db 0xe2
      00395D 94                    3063 	.db 0x94
      00395E 80                    3064 	.db 0x80
      00395F E2                    3065 	.db 0xe2
      003960 94                    3066 	.db 0x94
      003961 80                    3067 	.db 0x80
      003962 E2                    3068 	.db 0xe2
      003963 94                    3069 	.db 0x94
      003964 80                    3070 	.db 0x80
      003965 E2                    3071 	.db 0xe2
      003966 94                    3072 	.db 0x94
      003967 80                    3073 	.db 0x80
      003968 E2                    3074 	.db 0xe2
      003969 94                    3075 	.db 0x94
      00396A 80                    3076 	.db 0x80
      00396B E2                    3077 	.db 0xe2
      00396C 94                    3078 	.db 0x94
      00396D 80                    3079 	.db 0x80
      00396E E2                    3080 	.db 0xe2
      00396F 94                    3081 	.db 0x94
      003970 80                    3082 	.db 0x80
      003971 E2                    3083 	.db 0xe2
      003972 94                    3084 	.db 0x94
      003973 80                    3085 	.db 0x80
      003974 E2                    3086 	.db 0xe2
      003975 94                    3087 	.db 0x94
      003976 80                    3088 	.db 0x80
      003977 E2                    3089 	.db 0xe2
      003978 94                    3090 	.db 0x94
      003979 80                    3091 	.db 0x80
      00397A E2                    3092 	.db 0xe2
      00397B 94                    3093 	.db 0x94
      00397C 80                    3094 	.db 0x80
      00397D E2                    3095 	.db 0xe2
      00397E 94                    3096 	.db 0x94
      00397F 80                    3097 	.db 0x80
      003980 E2                    3098 	.db 0xe2
      003981 94                    3099 	.db 0x94
      003982 80                    3100 	.db 0x80
      003983 E2                    3101 	.db 0xe2
      003984 94                    3102 	.db 0x94
      003985 80                    3103 	.db 0x80
      003986 E2                    3104 	.db 0xe2
      003987 94                    3105 	.db 0x94
      003988 80                    3106 	.db 0x80
      003989 E2                    3107 	.db 0xe2
      00398A 94                    3108 	.db 0x94
      00398B 80                    3109 	.db 0x80
      00398C E2                    3110 	.db 0xe2
      00398D 94                    3111 	.db 0x94
      00398E 80                    3112 	.db 0x80
      00398F E2                    3113 	.db 0xe2
      003990 94                    3114 	.db 0x94
      003991 80                    3115 	.db 0x80
      003992 E2                    3116 	.db 0xe2
      003993 94                    3117 	.db 0x94
      003994 80                    3118 	.db 0x80
      003995 E2                    3119 	.db 0xe2
      003996 94                    3120 	.db 0x94
      003997 80                    3121 	.db 0x80
      003998 E2                    3122 	.db 0xe2
      003999 94                    3123 	.db 0x94
      00399A 80                    3124 	.db 0x80
      00399B E2                    3125 	.db 0xe2
      00399C 94                    3126 	.db 0x94
      00399D 80                    3127 	.db 0x80
      00399E E2                    3128 	.db 0xe2
      00399F 94                    3129 	.db 0x94
      0039A0 80                    3130 	.db 0x80
      0039A1 E2                    3131 	.db 0xe2
      0039A2 94                    3132 	.db 0x94
      0039A3 80                    3133 	.db 0x80
      0039A4 E2                    3134 	.db 0xe2
      0039A5 94                    3135 	.db 0x94
      0039A6 80                    3136 	.db 0x80
      0039A7 E2                    3137 	.db 0xe2
      0039A8 94                    3138 	.db 0x94
      0039A9 80                    3139 	.db 0x80
      0039AA E2                    3140 	.db 0xe2
      0039AB 94                    3141 	.db 0x94
      0039AC 80                    3142 	.db 0x80
      0039AD E2                    3143 	.db 0xe2
      0039AE 94                    3144 	.db 0x94
      0039AF 80                    3145 	.db 0x80
      0039B0 E2                    3146 	.db 0xe2
      0039B1 94                    3147 	.db 0x94
      0039B2 80                    3148 	.db 0x80
      0039B3 E2                    3149 	.db 0xe2
      0039B4 94                    3150 	.db 0x94
      0039B5 80                    3151 	.db 0x80
      0039B6 E2                    3152 	.db 0xe2
      0039B7 94                    3153 	.db 0x94
      0039B8 80                    3154 	.db 0x80
      0039B9 E2                    3155 	.db 0xe2
      0039BA 94                    3156 	.db 0x94
      0039BB 80                    3157 	.db 0x80
      0039BC E2                    3158 	.db 0xe2
      0039BD 94                    3159 	.db 0x94
      0039BE 80                    3160 	.db 0x80
      0039BF E2                    3161 	.db 0xe2
      0039C0 94                    3162 	.db 0x94
      0039C1 80                    3163 	.db 0x80
      0039C2 E2                    3164 	.db 0xe2
      0039C3 94                    3165 	.db 0x94
      0039C4 80                    3166 	.db 0x80
      0039C5 E2                    3167 	.db 0xe2
      0039C6 94                    3168 	.db 0x94
      0039C7 80                    3169 	.db 0x80
      0039C8 E2                    3170 	.db 0xe2
      0039C9 94                    3171 	.db 0x94
      0039CA 80                    3172 	.db 0x80
      0039CB E2                    3173 	.db 0xe2
      0039CC 94                    3174 	.db 0x94
      0039CD 80                    3175 	.db 0x80
      0039CE E2                    3176 	.db 0xe2
      0039CF 94                    3177 	.db 0x94
      0039D0 80                    3178 	.db 0x80
      0039D1 E2                    3179 	.db 0xe2
      0039D2 94                    3180 	.db 0x94
      0039D3 A4                    3181 	.db 0xa4
      0039D4 0A                    3182 	.db 0x0a
      0039D5 0D                    3183 	.db 0x0d
      0039D6 00                    3184 	.db 0x00
                                   3185 	.area CSEG    (CODE)
                                   3186 	.area CONST   (CODE)
      0039D7                       3187 ___str_3:
      0039D7 E2                    3188 	.db 0xe2
      0039D8 94                    3189 	.db 0x94
      0039D9 82                    3190 	.db 0x82
      0039DA 20 20 43 6F 6D 6D 61  3191 	.ascii "  Command   "
             6E 64 20 20 20
      0039E6 E2                    3192 	.db 0xe2
      0039E7 94                    3193 	.db 0x94
      0039E8 82                    3194 	.db 0x82
      0039E9 20 20 20 20 20 20 20  3195 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003A1A E2                    3196 	.db 0xe2
      003A1B 94                    3197 	.db 0x94
      003A1C 82                    3198 	.db 0x82
      003A1D 0A                    3199 	.db 0x0a
      003A1E 0D                    3200 	.db 0x0d
      003A1F 00                    3201 	.db 0x00
                                   3202 	.area CSEG    (CODE)
                                   3203 	.area CONST   (CODE)
      003A20                       3204 ___str_4:
      003A20 E2                    3205 	.db 0xe2
      003A21 94                    3206 	.db 0x94
      003A22 9C                    3207 	.db 0x9c
      003A23 E2                    3208 	.db 0xe2
      003A24 94                    3209 	.db 0x94
      003A25 80                    3210 	.db 0x80
      003A26 E2                    3211 	.db 0xe2
      003A27 94                    3212 	.db 0x94
      003A28 80                    3213 	.db 0x80
      003A29 E2                    3214 	.db 0xe2
      003A2A 94                    3215 	.db 0x94
      003A2B 80                    3216 	.db 0x80
      003A2C E2                    3217 	.db 0xe2
      003A2D 94                    3218 	.db 0x94
      003A2E 80                    3219 	.db 0x80
      003A2F E2                    3220 	.db 0xe2
      003A30 94                    3221 	.db 0x94
      003A31 80                    3222 	.db 0x80
      003A32 E2                    3223 	.db 0xe2
      003A33 94                    3224 	.db 0x94
      003A34 80                    3225 	.db 0x80
      003A35 E2                    3226 	.db 0xe2
      003A36 94                    3227 	.db 0x94
      003A37 80                    3228 	.db 0x80
      003A38 E2                    3229 	.db 0xe2
      003A39 94                    3230 	.db 0x94
      003A3A 80                    3231 	.db 0x80
      003A3B E2                    3232 	.db 0xe2
      003A3C 94                    3233 	.db 0x94
      003A3D 80                    3234 	.db 0x80
      003A3E E2                    3235 	.db 0xe2
      003A3F 94                    3236 	.db 0x94
      003A40 80                    3237 	.db 0x80
      003A41 E2                    3238 	.db 0xe2
      003A42 94                    3239 	.db 0x94
      003A43 80                    3240 	.db 0x80
      003A44 E2                    3241 	.db 0xe2
      003A45 94                    3242 	.db 0x94
      003A46 BC                    3243 	.db 0xbc
      003A47 E2                    3244 	.db 0xe2
      003A48 94                    3245 	.db 0x94
      003A49 80                    3246 	.db 0x80
      003A4A E2                    3247 	.db 0xe2
      003A4B 94                    3248 	.db 0x94
      003A4C 80                    3249 	.db 0x80
      003A4D E2                    3250 	.db 0xe2
      003A4E 94                    3251 	.db 0x94
      003A4F 80                    3252 	.db 0x80
      003A50 E2                    3253 	.db 0xe2
      003A51 94                    3254 	.db 0x94
      003A52 80                    3255 	.db 0x80
      003A53 E2                    3256 	.db 0xe2
      003A54 94                    3257 	.db 0x94
      003A55 80                    3258 	.db 0x80
      003A56 E2                    3259 	.db 0xe2
      003A57 94                    3260 	.db 0x94
      003A58 80                    3261 	.db 0x80
      003A59 E2                    3262 	.db 0xe2
      003A5A 94                    3263 	.db 0x94
      003A5B 80                    3264 	.db 0x80
      003A5C E2                    3265 	.db 0xe2
      003A5D 94                    3266 	.db 0x94
      003A5E 80                    3267 	.db 0x80
      003A5F E2                    3268 	.db 0xe2
      003A60 94                    3269 	.db 0x94
      003A61 80                    3270 	.db 0x80
      003A62 E2                    3271 	.db 0xe2
      003A63 94                    3272 	.db 0x94
      003A64 80                    3273 	.db 0x80
      003A65 E2                    3274 	.db 0xe2
      003A66 94                    3275 	.db 0x94
      003A67 80                    3276 	.db 0x80
      003A68 E2                    3277 	.db 0xe2
      003A69 94                    3278 	.db 0x94
      003A6A 80                    3279 	.db 0x80
      003A6B E2                    3280 	.db 0xe2
      003A6C 94                    3281 	.db 0x94
      003A6D 80                    3282 	.db 0x80
      003A6E E2                    3283 	.db 0xe2
      003A6F 94                    3284 	.db 0x94
      003A70 80                    3285 	.db 0x80
      003A71 E2                    3286 	.db 0xe2
      003A72 94                    3287 	.db 0x94
      003A73 80                    3288 	.db 0x80
      003A74 E2                    3289 	.db 0xe2
      003A75 94                    3290 	.db 0x94
      003A76 80                    3291 	.db 0x80
      003A77 E2                    3292 	.db 0xe2
      003A78 94                    3293 	.db 0x94
      003A79 80                    3294 	.db 0x80
      003A7A E2                    3295 	.db 0xe2
      003A7B 94                    3296 	.db 0x94
      003A7C 80                    3297 	.db 0x80
      003A7D E2                    3298 	.db 0xe2
      003A7E 94                    3299 	.db 0x94
      003A7F 80                    3300 	.db 0x80
      003A80 E2                    3301 	.db 0xe2
      003A81 94                    3302 	.db 0x94
      003A82 80                    3303 	.db 0x80
      003A83 E2                    3304 	.db 0xe2
      003A84 94                    3305 	.db 0x94
      003A85 80                    3306 	.db 0x80
      003A86 E2                    3307 	.db 0xe2
      003A87 94                    3308 	.db 0x94
      003A88 80                    3309 	.db 0x80
      003A89 E2                    3310 	.db 0xe2
      003A8A 94                    3311 	.db 0x94
      003A8B 80                    3312 	.db 0x80
      003A8C E2                    3313 	.db 0xe2
      003A8D 94                    3314 	.db 0x94
      003A8E 80                    3315 	.db 0x80
      003A8F E2                    3316 	.db 0xe2
      003A90 94                    3317 	.db 0x94
      003A91 80                    3318 	.db 0x80
      003A92 E2                    3319 	.db 0xe2
      003A93 94                    3320 	.db 0x94
      003A94 80                    3321 	.db 0x80
      003A95 E2                    3322 	.db 0xe2
      003A96 94                    3323 	.db 0x94
      003A97 80                    3324 	.db 0x80
      003A98 E2                    3325 	.db 0xe2
      003A99 94                    3326 	.db 0x94
      003A9A 80                    3327 	.db 0x80
      003A9B E2                    3328 	.db 0xe2
      003A9C 94                    3329 	.db 0x94
      003A9D 80                    3330 	.db 0x80
      003A9E E2                    3331 	.db 0xe2
      003A9F 94                    3332 	.db 0x94
      003AA0 80                    3333 	.db 0x80
      003AA1 E2                    3334 	.db 0xe2
      003AA2 94                    3335 	.db 0x94
      003AA3 80                    3336 	.db 0x80
      003AA4 E2                    3337 	.db 0xe2
      003AA5 94                    3338 	.db 0x94
      003AA6 80                    3339 	.db 0x80
      003AA7 E2                    3340 	.db 0xe2
      003AA8 94                    3341 	.db 0x94
      003AA9 80                    3342 	.db 0x80
      003AAA E2                    3343 	.db 0xe2
      003AAB 94                    3344 	.db 0x94
      003AAC 80                    3345 	.db 0x80
      003AAD E2                    3346 	.db 0xe2
      003AAE 94                    3347 	.db 0x94
      003AAF 80                    3348 	.db 0x80
      003AB0 E2                    3349 	.db 0xe2
      003AB1 94                    3350 	.db 0x94
      003AB2 80                    3351 	.db 0x80
      003AB3 E2                    3352 	.db 0xe2
      003AB4 94                    3353 	.db 0x94
      003AB5 80                    3354 	.db 0x80
      003AB6 E2                    3355 	.db 0xe2
      003AB7 94                    3356 	.db 0x94
      003AB8 80                    3357 	.db 0x80
      003AB9 E2                    3358 	.db 0xe2
      003ABA 94                    3359 	.db 0x94
      003ABB 80                    3360 	.db 0x80
      003ABC E2                    3361 	.db 0xe2
      003ABD 94                    3362 	.db 0x94
      003ABE 80                    3363 	.db 0x80
      003ABF E2                    3364 	.db 0xe2
      003AC0 94                    3365 	.db 0x94
      003AC1 80                    3366 	.db 0x80
      003AC2 E2                    3367 	.db 0xe2
      003AC3 94                    3368 	.db 0x94
      003AC4 80                    3369 	.db 0x80
      003AC5 E2                    3370 	.db 0xe2
      003AC6 94                    3371 	.db 0x94
      003AC7 80                    3372 	.db 0x80
      003AC8 E2                    3373 	.db 0xe2
      003AC9 94                    3374 	.db 0x94
      003ACA 80                    3375 	.db 0x80
      003ACB E2                    3376 	.db 0xe2
      003ACC 94                    3377 	.db 0x94
      003ACD 80                    3378 	.db 0x80
      003ACE E2                    3379 	.db 0xe2
      003ACF 94                    3380 	.db 0x94
      003AD0 80                    3381 	.db 0x80
      003AD1 E2                    3382 	.db 0xe2
      003AD2 94                    3383 	.db 0x94
      003AD3 80                    3384 	.db 0x80
      003AD4 E2                    3385 	.db 0xe2
      003AD5 94                    3386 	.db 0x94
      003AD6 A4                    3387 	.db 0xa4
      003AD7 0A                    3388 	.db 0x0a
      003AD8 0D                    3389 	.db 0x0d
      003AD9 00                    3390 	.db 0x00
                                   3391 	.area CSEG    (CODE)
                                   3392 	.area CONST   (CODE)
      003ADA                       3393 ___str_5:
      003ADA E2                    3394 	.db 0xe2
      003ADB 94                    3395 	.db 0x94
      003ADC 82                    3396 	.db 0x82
      003ADD 20 20 20 20 4D 20 20  3397 	.ascii "    M      "
             20 20 20 20
      003AE8 E2                    3398 	.db 0xe2
      003AE9 94                    3399 	.db 0x94
      003AEA 82                    3400 	.db 0x82
      003AEB 20 4D 61 6E 75 61 6C  3401 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003B1B E2                    3402 	.db 0xe2
      003B1C 94                    3403 	.db 0x94
      003B1D 82                    3404 	.db 0x82
      003B1E 0A                    3405 	.db 0x0a
      003B1F 0D                    3406 	.db 0x0d
      003B20 00                    3407 	.db 0x00
                                   3408 	.area CSEG    (CODE)
                                   3409 	.area CONST   (CODE)
      003B21                       3410 ___str_6:
      003B21 E2                    3411 	.db 0xe2
      003B22 94                    3412 	.db 0x94
      003B23 82                    3413 	.db 0x82
      003B24 20 20 20 20 42 20 20  3414 	.ascii "    B      "
             20 20 20 20
      003B2F E2                    3415 	.db 0xe2
      003B30 94                    3416 	.db 0x94
      003B31 82                    3417 	.db 0x82
      003B32 20 42 69 74 20 42 61  3418 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B61 E2                    3419 	.db 0xe2
      003B62 94                    3420 	.db 0x94
      003B63 82                    3421 	.db 0x82
      003B64 0A                    3422 	.db 0x0a
      003B65 0D                    3423 	.db 0x0d
      003B66 00                    3424 	.db 0x00
                                   3425 	.area CSEG    (CODE)
                                   3426 	.area CONST   (CODE)
      003B67                       3427 ___str_7:
      003B67 E2                    3428 	.db 0xe2
      003B68 94                    3429 	.db 0x94
      003B69 82                    3430 	.db 0x82
      003B6A 20 20 20 20 53 20 20  3431 	.ascii "    S      "
             20 20 20 20
      003B75 E2                    3432 	.db 0xe2
      003B76 94                    3433 	.db 0x94
      003B77 82                    3434 	.db 0x82
      003B78 20 47 65 6E 65 72 61  3435 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BA7 E2                    3436 	.db 0xe2
      003BA8 94                    3437 	.db 0x94
      003BA9 82                    3438 	.db 0x82
      003BAA 0A                    3439 	.db 0x0a
      003BAB 0D                    3440 	.db 0x0d
      003BAC 00                    3441 	.db 0x00
                                   3442 	.area CSEG    (CODE)
                                   3443 	.area CONST   (CODE)
      003BAD                       3444 ___str_8:
      003BAD E2                    3445 	.db 0xe2
      003BAE 94                    3446 	.db 0x94
      003BAF 82                    3447 	.db 0x82
      003BB0 20 20 20 20 54 20 20  3448 	.ascii "    T      "
             20 20 20 20
      003BBB E2                    3449 	.db 0xe2
      003BBC 94                    3450 	.db 0x94
      003BBD 82                    3451 	.db 0x82
      003BBE 20 47 65 6E 65 72 61  3452 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BED E2                    3453 	.db 0xe2
      003BEE 94                    3454 	.db 0x94
      003BEF 82                    3455 	.db 0x82
      003BF0 0A                    3456 	.db 0x0a
      003BF1 0D                    3457 	.db 0x0d
      003BF2 00                    3458 	.db 0x00
                                   3459 	.area CSEG    (CODE)
                                   3460 	.area CONST   (CODE)
      003BF3                       3461 ___str_9:
      003BF3 E2                    3462 	.db 0xe2
      003BF4 94                    3463 	.db 0x94
      003BF5 82                    3464 	.db 0x82
      003BF6 20 20 20 20 44 20 20  3465 	.ascii "    D      "
             20 20 20 20
      003C01 E2                    3466 	.db 0xe2
      003C02 94                    3467 	.db 0x94
      003C03 82                    3468 	.db 0x82
      003C04 20 44 65 6D 6F 20 4D  3469 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003C33 E2                    3470 	.db 0xe2
      003C34 94                    3471 	.db 0x94
      003C35 82                    3472 	.db 0x82
      003C36 0A                    3473 	.db 0x0a
      003C37 0D                    3474 	.db 0x0d
      003C38 00                    3475 	.db 0x00
                                   3476 	.area CSEG    (CODE)
                                   3477 	.area CONST   (CODE)
      003C39                       3478 ___str_10:
      003C39 E2                    3479 	.db 0xe2
      003C3A 94                    3480 	.db 0x94
      003C3B 82                    3481 	.db 0x82
      003C3C 20 20 20 20 52 20 20  3482 	.ascii "    R      "
             20 20 20 20
      003C47 E2                    3483 	.db 0xe2
      003C48 94                    3484 	.db 0x94
      003C49 82                    3485 	.db 0x82
      003C4A 20 52 61 6D 70 20 77  3486 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C79 E2                    3487 	.db 0xe2
      003C7A 94                    3488 	.db 0x94
      003C7B 82                    3489 	.db 0x82
      003C7C 0A                    3490 	.db 0x0a
      003C7D 0D                    3491 	.db 0x0d
      003C7E 00                    3492 	.db 0x00
                                   3493 	.area CSEG    (CODE)
                                   3494 	.area CONST   (CODE)
      003C7F                       3495 ___str_11:
      003C7F E2                    3496 	.db 0xe2
      003C80 94                    3497 	.db 0x94
      003C81 82                    3498 	.db 0x82
      003C82 20 20 20 20 3F 20 20  3499 	.ascii "    ?      "
             20 20 20 20
      003C8D E2                    3500 	.db 0xe2
      003C8E 94                    3501 	.db 0x94
      003C8F 82                    3502 	.db 0x82
      003C90 20 44 69 73 70 6C 61  3503 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003CBF E2                    3504 	.db 0xe2
      003CC0 94                    3505 	.db 0x94
      003CC1 82                    3506 	.db 0x82
      003CC2 0A                    3507 	.db 0x0a
      003CC3 0D                    3508 	.db 0x0d
      003CC4 00                    3509 	.db 0x00
                                   3510 	.area CSEG    (CODE)
                                   3511 	.area CONST   (CODE)
      003CC5                       3512 ___str_12:
      003CC5 E2                    3513 	.db 0xe2
      003CC6 94                    3514 	.db 0x94
      003CC7 94                    3515 	.db 0x94
      003CC8 E2                    3516 	.db 0xe2
      003CC9 94                    3517 	.db 0x94
      003CCA 80                    3518 	.db 0x80
      003CCB E2                    3519 	.db 0xe2
      003CCC 94                    3520 	.db 0x94
      003CCD 80                    3521 	.db 0x80
      003CCE E2                    3522 	.db 0xe2
      003CCF 94                    3523 	.db 0x94
      003CD0 80                    3524 	.db 0x80
      003CD1 E2                    3525 	.db 0xe2
      003CD2 94                    3526 	.db 0x94
      003CD3 80                    3527 	.db 0x80
      003CD4 E2                    3528 	.db 0xe2
      003CD5 94                    3529 	.db 0x94
      003CD6 80                    3530 	.db 0x80
      003CD7 E2                    3531 	.db 0xe2
      003CD8 94                    3532 	.db 0x94
      003CD9 80                    3533 	.db 0x80
      003CDA E2                    3534 	.db 0xe2
      003CDB 94                    3535 	.db 0x94
      003CDC 80                    3536 	.db 0x80
      003CDD E2                    3537 	.db 0xe2
      003CDE 94                    3538 	.db 0x94
      003CDF 80                    3539 	.db 0x80
      003CE0 E2                    3540 	.db 0xe2
      003CE1 94                    3541 	.db 0x94
      003CE2 80                    3542 	.db 0x80
      003CE3 E2                    3543 	.db 0xe2
      003CE4 94                    3544 	.db 0x94
      003CE5 80                    3545 	.db 0x80
      003CE6 E2                    3546 	.db 0xe2
      003CE7 94                    3547 	.db 0x94
      003CE8 80                    3548 	.db 0x80
      003CE9 E2                    3549 	.db 0xe2
      003CEA 94                    3550 	.db 0x94
      003CEB B4                    3551 	.db 0xb4
      003CEC E2                    3552 	.db 0xe2
      003CED 94                    3553 	.db 0x94
      003CEE 80                    3554 	.db 0x80
      003CEF E2                    3555 	.db 0xe2
      003CF0 94                    3556 	.db 0x94
      003CF1 80                    3557 	.db 0x80
      003CF2 E2                    3558 	.db 0xe2
      003CF3 94                    3559 	.db 0x94
      003CF4 80                    3560 	.db 0x80
      003CF5 E2                    3561 	.db 0xe2
      003CF6 94                    3562 	.db 0x94
      003CF7 80                    3563 	.db 0x80
      003CF8 E2                    3564 	.db 0xe2
      003CF9 94                    3565 	.db 0x94
      003CFA 80                    3566 	.db 0x80
      003CFB E2                    3567 	.db 0xe2
      003CFC 94                    3568 	.db 0x94
      003CFD 80                    3569 	.db 0x80
      003CFE E2                    3570 	.db 0xe2
      003CFF 94                    3571 	.db 0x94
      003D00 80                    3572 	.db 0x80
      003D01 E2                    3573 	.db 0xe2
      003D02 94                    3574 	.db 0x94
      003D03 80                    3575 	.db 0x80
      003D04 E2                    3576 	.db 0xe2
      003D05 94                    3577 	.db 0x94
      003D06 80                    3578 	.db 0x80
      003D07 E2                    3579 	.db 0xe2
      003D08 94                    3580 	.db 0x94
      003D09 80                    3581 	.db 0x80
      003D0A E2                    3582 	.db 0xe2
      003D0B 94                    3583 	.db 0x94
      003D0C 80                    3584 	.db 0x80
      003D0D E2                    3585 	.db 0xe2
      003D0E 94                    3586 	.db 0x94
      003D0F 80                    3587 	.db 0x80
      003D10 E2                    3588 	.db 0xe2
      003D11 94                    3589 	.db 0x94
      003D12 80                    3590 	.db 0x80
      003D13 E2                    3591 	.db 0xe2
      003D14 94                    3592 	.db 0x94
      003D15 80                    3593 	.db 0x80
      003D16 E2                    3594 	.db 0xe2
      003D17 94                    3595 	.db 0x94
      003D18 80                    3596 	.db 0x80
      003D19 E2                    3597 	.db 0xe2
      003D1A 94                    3598 	.db 0x94
      003D1B 80                    3599 	.db 0x80
      003D1C E2                    3600 	.db 0xe2
      003D1D 94                    3601 	.db 0x94
      003D1E 80                    3602 	.db 0x80
      003D1F E2                    3603 	.db 0xe2
      003D20 94                    3604 	.db 0x94
      003D21 80                    3605 	.db 0x80
      003D22 E2                    3606 	.db 0xe2
      003D23 94                    3607 	.db 0x94
      003D24 80                    3608 	.db 0x80
      003D25 E2                    3609 	.db 0xe2
      003D26 94                    3610 	.db 0x94
      003D27 80                    3611 	.db 0x80
      003D28 E2                    3612 	.db 0xe2
      003D29 94                    3613 	.db 0x94
      003D2A 80                    3614 	.db 0x80
      003D2B E2                    3615 	.db 0xe2
      003D2C 94                    3616 	.db 0x94
      003D2D 80                    3617 	.db 0x80
      003D2E E2                    3618 	.db 0xe2
      003D2F 94                    3619 	.db 0x94
      003D30 80                    3620 	.db 0x80
      003D31 E2                    3621 	.db 0xe2
      003D32 94                    3622 	.db 0x94
      003D33 80                    3623 	.db 0x80
      003D34 E2                    3624 	.db 0xe2
      003D35 94                    3625 	.db 0x94
      003D36 80                    3626 	.db 0x80
      003D37 E2                    3627 	.db 0xe2
      003D38 94                    3628 	.db 0x94
      003D39 80                    3629 	.db 0x80
      003D3A E2                    3630 	.db 0xe2
      003D3B 94                    3631 	.db 0x94
      003D3C 80                    3632 	.db 0x80
      003D3D E2                    3633 	.db 0xe2
      003D3E 94                    3634 	.db 0x94
      003D3F 80                    3635 	.db 0x80
      003D40 E2                    3636 	.db 0xe2
      003D41 94                    3637 	.db 0x94
      003D42 80                    3638 	.db 0x80
      003D43 E2                    3639 	.db 0xe2
      003D44 94                    3640 	.db 0x94
      003D45 80                    3641 	.db 0x80
      003D46 E2                    3642 	.db 0xe2
      003D47 94                    3643 	.db 0x94
      003D48 80                    3644 	.db 0x80
      003D49 E2                    3645 	.db 0xe2
      003D4A 94                    3646 	.db 0x94
      003D4B 80                    3647 	.db 0x80
      003D4C E2                    3648 	.db 0xe2
      003D4D 94                    3649 	.db 0x94
      003D4E 80                    3650 	.db 0x80
      003D4F E2                    3651 	.db 0xe2
      003D50 94                    3652 	.db 0x94
      003D51 80                    3653 	.db 0x80
      003D52 E2                    3654 	.db 0xe2
      003D53 94                    3655 	.db 0x94
      003D54 80                    3656 	.db 0x80
      003D55 E2                    3657 	.db 0xe2
      003D56 94                    3658 	.db 0x94
      003D57 80                    3659 	.db 0x80
      003D58 E2                    3660 	.db 0xe2
      003D59 94                    3661 	.db 0x94
      003D5A 80                    3662 	.db 0x80
      003D5B E2                    3663 	.db 0xe2
      003D5C 94                    3664 	.db 0x94
      003D5D 80                    3665 	.db 0x80
      003D5E E2                    3666 	.db 0xe2
      003D5F 94                    3667 	.db 0x94
      003D60 80                    3668 	.db 0x80
      003D61 E2                    3669 	.db 0xe2
      003D62 94                    3670 	.db 0x94
      003D63 80                    3671 	.db 0x80
      003D64 E2                    3672 	.db 0xe2
      003D65 94                    3673 	.db 0x94
      003D66 80                    3674 	.db 0x80
      003D67 E2                    3675 	.db 0xe2
      003D68 94                    3676 	.db 0x94
      003D69 80                    3677 	.db 0x80
      003D6A E2                    3678 	.db 0xe2
      003D6B 94                    3679 	.db 0x94
      003D6C 80                    3680 	.db 0x80
      003D6D E2                    3681 	.db 0xe2
      003D6E 94                    3682 	.db 0x94
      003D6F 80                    3683 	.db 0x80
      003D70 E2                    3684 	.db 0xe2
      003D71 94                    3685 	.db 0x94
      003D72 80                    3686 	.db 0x80
      003D73 E2                    3687 	.db 0xe2
      003D74 94                    3688 	.db 0x94
      003D75 80                    3689 	.db 0x80
      003D76 E2                    3690 	.db 0xe2
      003D77 94                    3691 	.db 0x94
      003D78 80                    3692 	.db 0x80
      003D79 E2                    3693 	.db 0xe2
      003D7A 94                    3694 	.db 0x94
      003D7B 98                    3695 	.db 0x98
      003D7C 0A                    3696 	.db 0x0a
      003D7D 0D                    3697 	.db 0x0d
      003D7E 00                    3698 	.db 0x00
                                   3699 	.area CSEG    (CODE)
                                   3700 	.area CONST   (CODE)
      003D7F                       3701 ___str_13:
      003D7F 0A                    3702 	.db 0x0a
      003D80 0D                    3703 	.db 0x0d
      003D81 45 6E 74 65 72 20 63  3704 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003D90 00                    3705 	.db 0x00
                                   3706 	.area CSEG    (CODE)
                                   3707 	.area CONST   (CODE)
      003D91                       3708 ___str_14:
      003D91 7C 20 24 20 25 63     3709 	.ascii "| $ %c"
      003D97 0A                    3710 	.db 0x0a
      003D98 0D                    3711 	.db 0x0d
      003D99 00                    3712 	.db 0x00
                                   3713 	.area CSEG    (CODE)
                                   3714 	.area CONST   (CODE)
      003D9A                       3715 ___str_15:
      003D9A 0A                    3716 	.db 0x0a
      003D9B 0D                    3717 	.db 0x0d
      003D9C 00                    3718 	.db 0x00
                                   3719 	.area CSEG    (CODE)
                                   3720 	.area CONST   (CODE)
      003D9D                       3721 ___str_16:
      003D9D 3E 3E 20 53 49 4E 20  3722 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003DBC 0A                    3723 	.db 0x0a
      003DBD 0D                    3724 	.db 0x0d
      003DBE 00                    3725 	.db 0x00
                                   3726 	.area CSEG    (CODE)
                                   3727 	.area CONST   (CODE)
      003DBF                       3728 ___str_17:
      003DBF 3E 3E 20 53 51 55 41  3729 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003DE1 0A                    3730 	.db 0x0a
      003DE2 0D                    3731 	.db 0x0d
      003DE3 00                    3732 	.db 0x00
                                   3733 	.area CSEG    (CODE)
                                   3734 	.area CONST   (CODE)
      003DE4                       3735 ___str_18:
      003DE4 3E 3E 20 49 4E 56 41  3736 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003DF4 0A                    3737 	.db 0x0a
      003DF5 0D                    3738 	.db 0x0d
      003DF6 00                    3739 	.db 0x00
                                   3740 	.area CSEG    (CODE)
                                   3741 	.area CONST   (CODE)
      003DF7                       3742 ___str_19:
      003DF7 E2                    3743 	.db 0xe2
      003DF8 94                    3744 	.db 0x94
      003DF9 82                    3745 	.db 0x82
      003DFA 20 45 6E 74 65 72 20  3746 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003E1E 0A                    3747 	.db 0x0a
      003E1F 0D                    3748 	.db 0x0d
      003E20 7C                    3749 	.ascii "|"
      003E21 00                    3750 	.db 0x00
                                   3751 	.area CSEG    (CODE)
                                   3752 	.area CONST   (CODE)
      003E22                       3753 ___str_20:
      003E22 24 20                 3754 	.ascii "$ "
      003E24 00                    3755 	.db 0x00
                                   3756 	.area CSEG    (CODE)
                                   3757 	.area CONST   (CODE)
      003E25                       3758 ___str_21:
      003E25 0A                    3759 	.db 0x0a
      003E26 0D                    3760 	.db 0x0d
      003E27 E2                    3761 	.db 0xe2
      003E28 94                    3762 	.db 0x94
      003E29 82                    3763 	.db 0x82
      003E2A 20 45 6E 74 65 72 65  3764 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003E3F 0A                    3765 	.db 0x0a
      003E40 0D                    3766 	.db 0x0d
      003E41 00                    3767 	.db 0x00
                                   3768 	.area CSEG    (CODE)
                                   3769 	.area CONST   (CODE)
      003E42                       3770 ___str_22:
      003E42 0D                    3771 	.db 0x0d
      003E43 0A                    3772 	.db 0x0a
      003E44 20 49 6E 73 69 64 65  3773 	.ascii " Inside Manual SPI"
             20 4D 61 6E 75 61 6C
             20 53 50 49
      003E56 00                    3774 	.db 0x00
                                   3775 	.area CSEG    (CODE)
                                   3776 	.area CONST   (CODE)
      003E57                       3777 ___str_23:
      003E57 25 64                 3778 	.ascii "%d"
      003E59 0A                    3779 	.db 0x0a
      003E5A 0D                    3780 	.db 0x0d
      003E5B 00                    3781 	.db 0x00
                                   3782 	.area CSEG    (CODE)
                                   3783 	.area CONST   (CODE)
      003E5C                       3784 ___str_24:
      003E5C 0D                    3785 	.db 0x0d
      003E5D 0A                    3786 	.db 0x0a
      003E5E 20 4E 75 6D 62 65 72  3787 	.ascii " Number is %d"
             20 69 73 20 25 64
      003E6B 00                    3788 	.db 0x00
                                   3789 	.area CSEG    (CODE)
                                   3790 	.area XINIT   (CODE)
      003E77                       3791 __xinit__ms_flag:
      003E77 00                    3792 	.db #0x00	; 0
      003E78                       3793 __xinit__transmission_complete:
      003E78 00 00                 3794 	.byte #0x00, #0x00	;  0
                                   3795 	.area CABS    (ABS,CODE)
