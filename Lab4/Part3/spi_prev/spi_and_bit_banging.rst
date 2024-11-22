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
      000404                        478 _bit_bang_spi_number_65536_46:
      000404                        479 	.ds 1
      000405                        480 _take_data_input_65537_50:
      000405                        481 	.ds 4
      000409                        482 _take_data_data_65538_54:
      000409                        483 	.ds 1
      00040A                        484 _mannual_spi_number_65536_57:
      00040A                        485 	.ds 1
      00040B                        486 _mannual_spi_dac_value_index_65536_58:
      00040B                        487 	.ds 2
      00040D                        488 _mannual_spi_dac_data_65536_58:
      00040D                        489 	.ds 2
      00040F                        490 _bit_bang_spi_write_data_65536_68:
      00040F                        491 	.ds 2
      000411                        492 _spi_triangular_wave_number_65536_74:
      000411                        493 	.ds 2
      000413                        494 _spi_triangular_wave_dac_value_index_65536_75:
      000413                        495 	.ds 2
      000415                        496 _spi_triangular_wave_dac_data_65536_75:
      000415                        497 	.ds 2
      000417                        498 _spi_ramp_signal_number_65536_81:
      000417                        499 	.ds 2
      000419                        500 _spi_ramp_signal_dac_value_index_65536_82:
      000419                        501 	.ds 2
      00041B                        502 _spi_ramp_signal_dac_data_65536_82:
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
                                    688 ;	spi_and_bit_banging.c:239: printf("\n\r┌───────────────────────────────────────────────────────┐\n\r");
      0020C2 74 43            [12]  689 	mov	a,#___str_0
      0020C4 C0 E0            [24]  690 	push	acc
      0020C6 74 38            [12]  691 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  692 	push	acc
      0020CA 74 80            [12]  693 	mov	a,#0x80
      0020CC C0 E0            [24]  694 	push	acc
      0020CE 12 27 E1         [24]  695 	lcall	_printf
      0020D1 15 81            [12]  696 	dec	sp
      0020D3 15 81            [12]  697 	dec	sp
      0020D5 15 81            [12]  698 	dec	sp
                                    699 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                        │\n\r");
      0020D7 74 F3            [12]  700 	mov	a,#___str_1
      0020D9 C0 E0            [24]  701 	push	acc
      0020DB 74 38            [12]  702 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  703 	push	acc
      0020DF 74 80            [12]  704 	mov	a,#0x80
      0020E1 C0 E0            [24]  705 	push	acc
      0020E3 12 27 E1         [24]  706 	lcall	_printf
      0020E6 15 81            [12]  707 	dec	sp
      0020E8 15 81            [12]  708 	dec	sp
      0020EA 15 81            [12]  709 	dec	sp
                                    710 ;	spi_and_bit_banging.c:241: printf("├───────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 37            [12]  711 	mov	a,#___str_2
      0020EE C0 E0            [24]  712 	push	acc
      0020F0 74 39            [12]  713 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  714 	push	acc
      0020F4 74 80            [12]  715 	mov	a,#0x80
      0020F6 C0 E0            [24]  716 	push	acc
      0020F8 12 27 E1         [24]  717 	lcall	_printf
      0020FB 15 81            [12]  718 	dec	sp
      0020FD 15 81            [12]  719 	dec	sp
      0020FF 15 81            [12]  720 	dec	sp
                                    721 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                    │\n\r");
      002101 74 F1            [12]  722 	mov	a,#___str_3
      002103 C0 E0            [24]  723 	push	acc
      002105 74 39            [12]  724 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  725 	push	acc
      002109 74 80            [12]  726 	mov	a,#0x80
      00210B C0 E0            [24]  727 	push	acc
      00210D 12 27 E1         [24]  728 	lcall	_printf
      002110 15 81            [12]  729 	dec	sp
      002112 15 81            [12]  730 	dec	sp
      002114 15 81            [12]  731 	dec	sp
                                    732 ;	spi_and_bit_banging.c:243: printf("├───────────────────────────────────────────────────────────┤\n\r");
      002116 74 37            [12]  733 	mov	a,#___str_2
      002118 C0 E0            [24]  734 	push	acc
      00211A 74 39            [12]  735 	mov	a,#(___str_2 >> 8)
      00211C C0 E0            [24]  736 	push	acc
      00211E 74 80            [12]  737 	mov	a,#0x80
      002120 C0 E0            [24]  738 	push	acc
      002122 12 27 E1         [24]  739 	lcall	_printf
      002125 15 81            [12]  740 	dec	sp
      002127 15 81            [12]  741 	dec	sp
      002129 15 81            [12]  742 	dec	sp
                                    743 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)     │\n\r");
      00212B 74 37            [12]  744 	mov	a,#___str_4
      00212D C0 E0            [24]  745 	push	acc
      00212F 74 3A            [12]  746 	mov	a,#(___str_4 >> 8)
      002131 C0 E0            [24]  747 	push	acc
      002133 74 80            [12]  748 	mov	a,#0x80
      002135 C0 E0            [24]  749 	push	acc
      002137 12 27 E1         [24]  750 	lcall	_printf
      00213A 15 81            [12]  751 	dec	sp
      00213C 15 81            [12]  752 	dec	sp
      00213E 15 81            [12]  753 	dec	sp
                                    754 ;	spi_and_bit_banging.c:245: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002140 74 7D            [12]  755 	mov	a,#___str_5
      002142 C0 E0            [24]  756 	push	acc
      002144 74 3A            [12]  757 	mov	a,#(___str_5 >> 8)
      002146 C0 E0            [24]  758 	push	acc
      002148 74 80            [12]  759 	mov	a,#0x80
      00214A C0 E0            [24]  760 	push	acc
      00214C 12 27 E1         [24]  761 	lcall	_printf
      00214F 15 81            [12]  762 	dec	sp
      002151 15 81            [12]  763 	dec	sp
      002153 15 81            [12]  764 	dec	sp
                                    765 ;	spi_and_bit_banging.c:246: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      002155 74 C3            [12]  766 	mov	a,#___str_6
      002157 C0 E0            [24]  767 	push	acc
      002159 74 3A            [12]  768 	mov	a,#(___str_6 >> 8)
      00215B C0 E0            [24]  769 	push	acc
      00215D 74 80            [12]  770 	mov	a,#0x80
      00215F C0 E0            [24]  771 	push	acc
      002161 12 27 E1         [24]  772 	lcall	_printf
      002164 15 81            [12]  773 	dec	sp
      002166 15 81            [12]  774 	dec	sp
      002168 15 81            [12]  775 	dec	sp
                                    776 ;	spi_and_bit_banging.c:247: printf("│    R      │ Ramp wave                                     │\n\r");
      00216A 74 09            [12]  777 	mov	a,#___str_7
      00216C C0 E0            [24]  778 	push	acc
      00216E 74 3B            [12]  779 	mov	a,#(___str_7 >> 8)
      002170 C0 E0            [24]  780 	push	acc
      002172 74 80            [12]  781 	mov	a,#0x80
      002174 C0 E0            [24]  782 	push	acc
      002176 12 27 E1         [24]  783 	lcall	_printf
      002179 15 81            [12]  784 	dec	sp
      00217B 15 81            [12]  785 	dec	sp
      00217D 15 81            [12]  786 	dec	sp
                                    787 ;	spi_and_bit_banging.c:248: printf("│    ?      │ Display this help menu                        │\n\r");
      00217F 74 4F            [12]  788 	mov	a,#___str_8
      002181 C0 E0            [24]  789 	push	acc
      002183 74 3B            [12]  790 	mov	a,#(___str_8 >> 8)
      002185 C0 E0            [24]  791 	push	acc
      002187 74 80            [12]  792 	mov	a,#0x80
      002189 C0 E0            [24]  793 	push	acc
      00218B 12 27 E1         [24]  794 	lcall	_printf
      00218E 15 81            [12]  795 	dec	sp
      002190 15 81            [12]  796 	dec	sp
      002192 15 81            [12]  797 	dec	sp
                                    798 ;	spi_and_bit_banging.c:249: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002194 74 95            [12]  799 	mov	a,#___str_9
      002196 C0 E0            [24]  800 	push	acc
      002198 74 3B            [12]  801 	mov	a,#(___str_9 >> 8)
      00219A C0 E0            [24]  802 	push	acc
      00219C 74 80            [12]  803 	mov	a,#0x80
      00219E C0 E0            [24]  804 	push	acc
      0021A0 12 27 E1         [24]  805 	lcall	_printf
      0021A3 15 81            [12]  806 	dec	sp
      0021A5 15 81            [12]  807 	dec	sp
      0021A7 15 81            [12]  808 	dec	sp
                                    809 ;	spi_and_bit_banging.c:250: printf("\n\r>> Enter command: ");
      0021A9 74 4F            [12]  810 	mov	a,#___str_10
      0021AB C0 E0            [24]  811 	push	acc
      0021AD 74 3C            [12]  812 	mov	a,#(___str_10 >> 8)
      0021AF C0 E0            [24]  813 	push	acc
      0021B1 74 80            [12]  814 	mov	a,#0x80
      0021B3 C0 E0            [24]  815 	push	acc
      0021B5 12 27 E1         [24]  816 	lcall	_printf
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
                                    838 ;result                    Allocated with name '_main_result_262144_39'
                                    839 ;result3                   Allocated with name '_main_result3_262145_41'
                                    840 ;result4                   Allocated with name '_main_result4_262145_43'
                                    841 ;result5                   Allocated with name '_main_result5_262144_44'
                                    842 ;------------------------------------------------------------
                                    843 ;	spi_and_bit_banging.c:258: int main(void)
                                    844 ;	-----------------------------------------
                                    845 ;	 function main
                                    846 ;	-----------------------------------------
      0021C3                        847 _main:
                                    848 ;	spi_and_bit_banging.c:260: display_menu();
      0021C3 12 20 C2         [24]  849 	lcall	_display_menu
                                    850 ;	spi_and_bit_banging.c:261: spi_init();
      0021C6 12 25 73         [24]  851 	lcall	_spi_init
                                    852 ;	spi_and_bit_banging.c:262: while(1)
      0021C9                        853 00109$:
                                    854 ;	spi_and_bit_banging.c:264: char user_input = getchar();
      0021C9 12 20 81         [24]  855 	lcall	_getchar
      0021CC AE 82            [24]  856 	mov	r6,dpl
                                    857 ;	spi_and_bit_banging.c:265: printf("| $ %c\n\r", user_input);
      0021CE 8E 05            [24]  858 	mov	ar5,r6
      0021D0 7F 00            [12]  859 	mov	r7,#0x00
      0021D2 C0 06            [24]  860 	push	ar6
      0021D4 C0 05            [24]  861 	push	ar5
      0021D6 C0 07            [24]  862 	push	ar7
      0021D8 74 64            [12]  863 	mov	a,#___str_11
      0021DA C0 E0            [24]  864 	push	acc
      0021DC 74 3C            [12]  865 	mov	a,#(___str_11 >> 8)
      0021DE C0 E0            [24]  866 	push	acc
      0021E0 74 80            [12]  867 	mov	a,#0x80
      0021E2 C0 E0            [24]  868 	push	acc
      0021E4 12 27 E1         [24]  869 	lcall	_printf
      0021E7 E5 81            [12]  870 	mov	a,sp
      0021E9 24 FB            [12]  871 	add	a,#0xfb
      0021EB F5 81            [12]  872 	mov	sp,a
                                    873 ;	spi_and_bit_banging.c:266: printf("\n\r");
      0021ED 74 6D            [12]  874 	mov	a,#___str_12
      0021EF C0 E0            [24]  875 	push	acc
      0021F1 74 3C            [12]  876 	mov	a,#(___str_12 >> 8)
      0021F3 C0 E0            [24]  877 	push	acc
      0021F5 74 80            [12]  878 	mov	a,#0x80
      0021F7 C0 E0            [24]  879 	push	acc
      0021F9 12 27 E1         [24]  880 	lcall	_printf
      0021FC 15 81            [12]  881 	dec	sp
      0021FE 15 81            [12]  882 	dec	sp
      002200 15 81            [12]  883 	dec	sp
      002202 D0 06            [24]  884 	pop	ar6
                                    885 ;	spi_and_bit_banging.c:267: switch(user_input)
      002204 BE 3F 03         [24]  886 	cjne	r6,#0x3f,00137$
      002207 02 22 A9         [24]  887 	ljmp	00105$
      00220A                        888 00137$:
      00220A BE 4D 02         [24]  889 	cjne	r6,#0x4d,00138$
      00220D 80 12            [24]  890 	sjmp	00101$
      00220F                        891 00138$:
      00220F BE 52 02         [24]  892 	cjne	r6,#0x52,00139$
      002212 80 73            [24]  893 	sjmp	00104$
      002214                        894 00139$:
      002214 BE 53 02         [24]  895 	cjne	r6,#0x53,00140$
      002217 80 28            [24]  896 	sjmp	00102$
      002219                        897 00140$:
      002219 BE 54 02         [24]  898 	cjne	r6,#0x54,00141$
      00221C 80 44            [24]  899 	sjmp	00103$
      00221E                        900 00141$:
      00221E 02 22 AF         [24]  901 	ljmp	00106$
                                    902 ;	spi_and_bit_banging.c:269: case 'M':
      002221                        903 00101$:
                                    904 ;	spi_and_bit_banging.c:271: unsigned char result = take_data();
      002221 12 23 12         [24]  905 	lcall	_take_data
                                    906 ;	spi_and_bit_banging.c:272: mannual_spi(result);
      002224 12 24 66         [24]  907 	lcall	_mannual_spi
                                    908 ;	spi_and_bit_banging.c:273: printf(">> SINE WAVE GENERATION COMPLETE\n\r");
      002227 74 70            [12]  909 	mov	a,#___str_13
      002229 C0 E0            [24]  910 	push	acc
      00222B 74 3C            [12]  911 	mov	a,#(___str_13 >> 8)
      00222D C0 E0            [24]  912 	push	acc
      00222F 74 80            [12]  913 	mov	a,#0x80
      002231 C0 E0            [24]  914 	push	acc
      002233 12 27 E1         [24]  915 	lcall	_printf
      002236 15 81            [12]  916 	dec	sp
      002238 15 81            [12]  917 	dec	sp
      00223A 15 81            [12]  918 	dec	sp
                                    919 ;	spi_and_bit_banging.c:274: spi_transmission_stop();
      00223C 12 21 BF         [24]  920 	lcall	_spi_transmission_stop
                                    921 ;	spi_and_bit_banging.c:275: break;
                                    922 ;	spi_and_bit_banging.c:288: case 'S':
      00223F 80 88            [24]  923 	sjmp	00109$
      002241                        924 00102$:
                                    925 ;	spi_and_bit_banging.c:290: spi_init();
      002241 12 25 73         [24]  926 	lcall	_spi_init
                                    927 ;	spi_and_bit_banging.c:291: unsigned char result3 = take_data();
      002244 12 23 12         [24]  928 	lcall	_take_data
                                    929 ;	spi_and_bit_banging.c:292: mannual_spi(result3);
      002247 12 24 66         [24]  930 	lcall	_mannual_spi
                                    931 ;	spi_and_bit_banging.c:293: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00224A 74 93            [12]  932 	mov	a,#___str_14
      00224C C0 E0            [24]  933 	push	acc
      00224E 74 3C            [12]  934 	mov	a,#(___str_14 >> 8)
      002250 C0 E0            [24]  935 	push	acc
      002252 74 80            [12]  936 	mov	a,#0x80
      002254 C0 E0            [24]  937 	push	acc
      002256 12 27 E1         [24]  938 	lcall	_printf
      002259 15 81            [12]  939 	dec	sp
      00225B 15 81            [12]  940 	dec	sp
      00225D 15 81            [12]  941 	dec	sp
                                    942 ;	spi_and_bit_banging.c:294: break;
      00225F 02 21 C9         [24]  943 	ljmp	00109$
                                    944 ;	spi_and_bit_banging.c:298: case 'T':
      002262                        945 00103$:
                                    946 ;	spi_and_bit_banging.c:300: spi_init();
      002262 12 25 73         [24]  947 	lcall	_spi_init
                                    948 ;	spi_and_bit_banging.c:301: unsigned char result4 = take_data();
      002265 12 23 12         [24]  949 	lcall	_take_data
                                    950 ;	spi_and_bit_banging.c:302: spi_triangular_wave(result4);
      002268 7E 00            [12]  951 	mov	r6,#0x00
      00226A 8E 83            [24]  952 	mov	dph,r6
      00226C 12 25 D7         [24]  953 	lcall	_spi_triangular_wave
                                    954 ;	spi_and_bit_banging.c:303: printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
      00226F 74 B5            [12]  955 	mov	a,#___str_15
      002271 C0 E0            [24]  956 	push	acc
      002273 74 3C            [12]  957 	mov	a,#(___str_15 >> 8)
      002275 C0 E0            [24]  958 	push	acc
      002277 74 80            [12]  959 	mov	a,#0x80
      002279 C0 E0            [24]  960 	push	acc
      00227B 12 27 E1         [24]  961 	lcall	_printf
      00227E 15 81            [12]  962 	dec	sp
      002280 15 81            [12]  963 	dec	sp
      002282 15 81            [12]  964 	dec	sp
                                    965 ;	spi_and_bit_banging.c:304: break;
      002284 02 21 C9         [24]  966 	ljmp	00109$
                                    967 ;	spi_and_bit_banging.c:307: case 'R':
      002287                        968 00104$:
                                    969 ;	spi_and_bit_banging.c:309: unsigned char result5 = take_data();
      002287 12 23 12         [24]  970 	lcall	_take_data
                                    971 ;	spi_and_bit_banging.c:310: spi_ramp_signal(result5);
      00228A 7E 00            [12]  972 	mov	r6,#0x00
      00228C 8E 83            [24]  973 	mov	dph,r6
      00228E 12 26 B5         [24]  974 	lcall	_spi_ramp_signal
                                    975 ;	spi_and_bit_banging.c:311: printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
      002291 74 DE            [12]  976 	mov	a,#___str_16
      002293 C0 E0            [24]  977 	push	acc
      002295 74 3C            [12]  978 	mov	a,#(___str_16 >> 8)
      002297 C0 E0            [24]  979 	push	acc
      002299 74 80            [12]  980 	mov	a,#0x80
      00229B C0 E0            [24]  981 	push	acc
      00229D 12 27 E1         [24]  982 	lcall	_printf
      0022A0 15 81            [12]  983 	dec	sp
      0022A2 15 81            [12]  984 	dec	sp
      0022A4 15 81            [12]  985 	dec	sp
                                    986 ;	spi_and_bit_banging.c:312: break;
      0022A6 02 21 C9         [24]  987 	ljmp	00109$
                                    988 ;	spi_and_bit_banging.c:321: case '?':
      0022A9                        989 00105$:
                                    990 ;	spi_and_bit_banging.c:322: display_menu();
      0022A9 12 20 C2         [24]  991 	lcall	_display_menu
                                    992 ;	spi_and_bit_banging.c:323: break;  
      0022AC 02 21 C9         [24]  993 	ljmp	00109$
                                    994 ;	spi_and_bit_banging.c:325: default:
      0022AF                        995 00106$:
                                    996 ;	spi_and_bit_banging.c:326: printf(">> INVALID INPUT\n\r");
      0022AF 74 01            [12]  997 	mov	a,#___str_17
      0022B1 C0 E0            [24]  998 	push	acc
      0022B3 74 3D            [12]  999 	mov	a,#(___str_17 >> 8)
      0022B5 C0 E0            [24] 1000 	push	acc
      0022B7 74 80            [12] 1001 	mov	a,#0x80
      0022B9 C0 E0            [24] 1002 	push	acc
      0022BB 12 27 E1         [24] 1003 	lcall	_printf
      0022BE 15 81            [12] 1004 	dec	sp
      0022C0 15 81            [12] 1005 	dec	sp
      0022C2 15 81            [12] 1006 	dec	sp
                                   1007 ;	spi_and_bit_banging.c:331: }
                                   1008 ;	spi_and_bit_banging.c:333: }
      0022C4 02 21 C9         [24] 1009 	ljmp	00109$
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'demo_mode'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	spi_and_bit_banging.c:339: void demo_mode()
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function demo_mode
                                   1016 ;	-----------------------------------------
      0022C7                       1017 _demo_mode:
                                   1018 ;	spi_and_bit_banging.c:341: mannual_spi(7);
      0022C7 75 82 07         [24] 1019 	mov	dpl,#0x07
      0022CA 12 24 66         [24] 1020 	lcall	_mannual_spi
                                   1021 ;	spi_and_bit_banging.c:342: bit_bang_spi(7);
      0022CD 75 82 07         [24] 1022 	mov	dpl,#0x07
      0022D0 12 22 DF         [24] 1023 	lcall	_bit_bang_spi
                                   1024 ;	spi_and_bit_banging.c:343: spi_ramp_signal(7);
      0022D3 90 00 07         [24] 1025 	mov	dptr,#0x0007
      0022D6 12 26 B5         [24] 1026 	lcall	_spi_ramp_signal
                                   1027 ;	spi_and_bit_banging.c:344: spi_triangular_wave(7);
      0022D9 90 00 07         [24] 1028 	mov	dptr,#0x0007
                                   1029 ;	spi_and_bit_banging.c:345: }
      0022DC 02 25 D7         [24] 1030 	ljmp	_spi_triangular_wave
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'bit_bang_spi'
                                   1033 ;------------------------------------------------------------
                                   1034 ;number                    Allocated with name '_bit_bang_spi_number_65536_46'
                                   1035 ;------------------------------------------------------------
                                   1036 ;	spi_and_bit_banging.c:349: void bit_bang_spi(unsigned char number)
                                   1037 ;	-----------------------------------------
                                   1038 ;	 function bit_bang_spi
                                   1039 ;	-----------------------------------------
      0022DF                       1040 _bit_bang_spi:
      0022DF E5 82            [12] 1041 	mov	a,dpl
      0022E1 90 04 04         [24] 1042 	mov	dptr,#_bit_bang_spi_number_65536_46
      0022E4 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	spi_and_bit_banging.c:351: while(number > 0)
      0022E5                       1045 00101$:
      0022E5 90 04 04         [24] 1046 	mov	dptr,#_bit_bang_spi_number_65536_46
      0022E8 E0               [24] 1047 	movx	a,@dptr
      0022E9 FF               [12] 1048 	mov	r7,a
      0022EA E0               [24] 1049 	movx	a,@dptr
      0022EB 60 24            [24] 1050 	jz	00104$
                                   1051 ;	spi_and_bit_banging.c:353: bit_bang_spi_write(TEST_DATA);
      0022ED 90 1F F0         [24] 1052 	mov	dptr,#0x1ff0
      0022F0 C0 07            [24] 1053 	push	ar7
      0022F2 12 25 87         [24] 1054 	lcall	_bit_bang_spi_write
                                   1055 ;	spi_and_bit_banging.c:354: delay_ms(DELAY_PERIOD);
      0022F5 90 01 F4         [24] 1056 	mov	dptr,#0x01f4
      0022F8 12 20 8F         [24] 1057 	lcall	_delay_ms
                                   1058 ;	spi_and_bit_banging.c:355: bit_bang_spi_write(IDLE_DATA);
      0022FB 90 10 00         [24] 1059 	mov	dptr,#0x1000
      0022FE 12 25 87         [24] 1060 	lcall	_bit_bang_spi_write
                                   1061 ;	spi_and_bit_banging.c:356: delay_ms(DELAY_PERIOD);
      002301 90 01 F4         [24] 1062 	mov	dptr,#0x01f4
      002304 12 20 8F         [24] 1063 	lcall	_delay_ms
      002307 D0 07            [24] 1064 	pop	ar7
                                   1065 ;	spi_and_bit_banging.c:357: number = number - 1;
      002309 EF               [12] 1066 	mov	a,r7
      00230A 14               [12] 1067 	dec	a
      00230B 90 04 04         [24] 1068 	mov	dptr,#_bit_bang_spi_number_65536_46
      00230E F0               [24] 1069 	movx	@dptr,a
      00230F 80 D4            [24] 1070 	sjmp	00101$
      002311                       1071 00104$:
                                   1072 ;	spi_and_bit_banging.c:359: }
      002311 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'take_data'
                                   1076 ;------------------------------------------------------------
                                   1077 ;input                     Allocated with name '_take_data_input_65537_50'
                                   1078 ;i                         Allocated with name '_take_data_i_65537_50'
                                   1079 ;c                         Allocated with name '_take_data_c_65537_50'
                                   1080 ;data                      Allocated with name '_take_data_data_65538_54'
                                   1081 ;------------------------------------------------------------
                                   1082 ;	spi_and_bit_banging.c:360: unsigned char take_data()
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function take_data
                                   1085 ;	-----------------------------------------
      002312                       1086 _take_data:
                                   1087 ;	spi_and_bit_banging.c:362: printf("│ Enter number (up to 2 characters): \n\r|");
      002312 74 14            [12] 1088 	mov	a,#___str_18
      002314 C0 E0            [24] 1089 	push	acc
      002316 74 3D            [12] 1090 	mov	a,#(___str_18 >> 8)
      002318 C0 E0            [24] 1091 	push	acc
      00231A 74 80            [12] 1092 	mov	a,#0x80
      00231C C0 E0            [24] 1093 	push	acc
      00231E 12 27 E1         [24] 1094 	lcall	_printf
      002321 15 81            [12] 1095 	dec	sp
      002323 15 81            [12] 1096 	dec	sp
      002325 15 81            [12] 1097 	dec	sp
                                   1098 ;	spi_and_bit_banging.c:363: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002327 90 04 05         [24] 1099 	mov	dptr,#_take_data_input_65537_50
      00232A E4               [12] 1100 	clr	a
      00232B F0               [24] 1101 	movx	@dptr,a
      00232C 90 04 06         [24] 1102 	mov	dptr,#(_take_data_input_65537_50 + 0x0001)
      00232F F0               [24] 1103 	movx	@dptr,a
      002330 90 04 07         [24] 1104 	mov	dptr,#(_take_data_input_65537_50 + 0x0002)
      002333 F0               [24] 1105 	movx	@dptr,a
      002334 90 04 08         [24] 1106 	mov	dptr,#(_take_data_input_65537_50 + 0x0003)
      002337 F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	spi_and_bit_banging.c:367: printf("$ ");
      002338 74 3F            [12] 1109 	mov	a,#___str_19
      00233A C0 E0            [24] 1110 	push	acc
      00233C 74 3D            [12] 1111 	mov	a,#(___str_19 >> 8)
      00233E C0 E0            [24] 1112 	push	acc
      002340 74 80            [12] 1113 	mov	a,#0x80
      002342 C0 E0            [24] 1114 	push	acc
      002344 12 27 E1         [24] 1115 	lcall	_printf
      002347 15 81            [12] 1116 	dec	sp
      002349 15 81            [12] 1117 	dec	sp
      00234B 15 81            [12] 1118 	dec	sp
                                   1119 ;	spi_and_bit_banging.c:369: while (i < 3) {
      00234D 7E 00            [12] 1120 	mov	r6,#0x00
      00234F 7F 00            [12] 1121 	mov	r7,#0x00
      002351                       1122 00111$:
      002351 C3               [12] 1123 	clr	c
      002352 EE               [12] 1124 	mov	a,r6
      002353 94 03            [12] 1125 	subb	a,#0x03
      002355 EF               [12] 1126 	mov	a,r7
      002356 64 80            [12] 1127 	xrl	a,#0x80
      002358 94 80            [12] 1128 	subb	a,#0x80
      00235A 50 5B            [24] 1129 	jnc	00113$
                                   1130 ;	spi_and_bit_banging.c:371: c = getchar();
      00235C C0 07            [24] 1131 	push	ar7
      00235E C0 06            [24] 1132 	push	ar6
      002360 12 20 81         [24] 1133 	lcall	_getchar
      002363 AC 82            [24] 1134 	mov	r4,dpl
      002365 AD 83            [24] 1135 	mov	r5,dph
      002367 D0 06            [24] 1136 	pop	ar6
      002369 D0 07            [24] 1137 	pop	ar7
                                   1138 ;	spi_and_bit_banging.c:374: if (c == '\r' || c == '\n') {
      00236B BC 0D 02         [24] 1139 	cjne	r4,#0x0d,00194$
      00236E 80 47            [24] 1140 	sjmp	00113$
      002370                       1141 00194$:
      002370 BC 0A 02         [24] 1142 	cjne	r4,#0x0a,00195$
      002373 80 42            [24] 1143 	sjmp	00113$
      002375                       1144 00195$:
                                   1145 ;	spi_and_bit_banging.c:379: if ((c >= '0' && c <= '9') ||
      002375 BC 30 00         [24] 1146 	cjne	r4,#0x30,00196$
      002378                       1147 00196$:
      002378 40 05            [24] 1148 	jc	00108$
      00237A EC               [12] 1149 	mov	a,r4
      00237B 24 C6            [12] 1150 	add	a,#0xff - 0x39
      00237D 50 14            [24] 1151 	jnc	00104$
      00237F                       1152 00108$:
                                   1153 ;	spi_and_bit_banging.c:380: (c >= 'a' && c <= 'f') ||
      00237F BC 61 00         [24] 1154 	cjne	r4,#0x61,00199$
      002382                       1155 00199$:
      002382 40 05            [24] 1156 	jc	00110$
      002384 EC               [12] 1157 	mov	a,r4
      002385 24 99            [12] 1158 	add	a,#0xff - 0x66
      002387 50 0A            [24] 1159 	jnc	00104$
      002389                       1160 00110$:
                                   1161 ;	spi_and_bit_banging.c:381: (c >= 'A' && c <= 'F')) {
      002389 BC 41 00         [24] 1162 	cjne	r4,#0x41,00202$
      00238C                       1163 00202$:
      00238C 40 C3            [24] 1164 	jc	00111$
      00238E EC               [12] 1165 	mov	a,r4
      00238F 24 B9            [12] 1166 	add	a,#0xff - 0x46
      002391 40 BE            [24] 1167 	jc	00111$
      002393                       1168 00104$:
                                   1169 ;	spi_and_bit_banging.c:383: input[i] = c;
      002393 EE               [12] 1170 	mov	a,r6
      002394 24 05            [12] 1171 	add	a,#_take_data_input_65537_50
      002396 F5 82            [12] 1172 	mov	dpl,a
      002398 EF               [12] 1173 	mov	a,r7
      002399 34 04            [12] 1174 	addc	a,#(_take_data_input_65537_50 >> 8)
      00239B F5 83            [12] 1175 	mov	dph,a
      00239D EC               [12] 1176 	mov	a,r4
      00239E F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	spi_and_bit_banging.c:384: putchar(c);  // Echo character back
      00239F 7D 00            [12] 1179 	mov	r5,#0x00
      0023A1 8C 82            [24] 1180 	mov	dpl,r4
      0023A3 8D 83            [24] 1181 	mov	dph,r5
      0023A5 C0 07            [24] 1182 	push	ar7
      0023A7 C0 06            [24] 1183 	push	ar6
      0023A9 12 20 62         [24] 1184 	lcall	_putchar
      0023AC D0 06            [24] 1185 	pop	ar6
      0023AE D0 07            [24] 1186 	pop	ar7
                                   1187 ;	spi_and_bit_banging.c:385: i++;
      0023B0 0E               [12] 1188 	inc	r6
      0023B1 BE 00 9D         [24] 1189 	cjne	r6,#0x00,00111$
      0023B4 0F               [12] 1190 	inc	r7
      0023B5 80 9A            [24] 1191 	sjmp	00111$
      0023B7                       1192 00113$:
                                   1193 ;	spi_and_bit_banging.c:389: input[i] = '\0';  // Null-terminate the string
      0023B7 EE               [12] 1194 	mov	a,r6
      0023B8 24 05            [12] 1195 	add	a,#_take_data_input_65537_50
      0023BA F5 82            [12] 1196 	mov	dpl,a
      0023BC EF               [12] 1197 	mov	a,r7
      0023BD 34 04            [12] 1198 	addc	a,#(_take_data_input_65537_50 >> 8)
      0023BF F5 83            [12] 1199 	mov	dph,a
      0023C1 E4               [12] 1200 	clr	a
      0023C2 F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	spi_and_bit_banging.c:392: unsigned char data = 0;
      0023C3 90 04 09         [24] 1203 	mov	dptr,#_take_data_data_65538_54
      0023C6 F0               [24] 1204 	movx	@dptr,a
                                   1205 ;	spi_and_bit_banging.c:393: for (i = 0; input[i] != '\0'; i++) {
      0023C7 7E 00            [12] 1206 	mov	r6,#0x00
      0023C9 7F 00            [12] 1207 	mov	r7,#0x00
      0023CB                       1208 00127$:
      0023CB EE               [12] 1209 	mov	a,r6
      0023CC 24 05            [12] 1210 	add	a,#_take_data_input_65537_50
      0023CE F5 82            [12] 1211 	mov	dpl,a
      0023D0 EF               [12] 1212 	mov	a,r7
      0023D1 34 04            [12] 1213 	addc	a,#(_take_data_input_65537_50 >> 8)
      0023D3 F5 83            [12] 1214 	mov	dph,a
      0023D5 E0               [24] 1215 	movx	a,@dptr
      0023D6 FD               [12] 1216 	mov	r5,a
      0023D7 70 03            [24] 1217 	jnz	00206$
      0023D9 02 24 3E         [24] 1218 	ljmp	00125$
      0023DC                       1219 00206$:
                                   1220 ;	spi_and_bit_banging.c:394: data = data * 16;
      0023DC 90 04 09         [24] 1221 	mov	dptr,#_take_data_data_65538_54
      0023DF E0               [24] 1222 	movx	a,@dptr
      0023E0 C4               [12] 1223 	swap	a
      0023E1 54 F0            [12] 1224 	anl	a,#0xf0
      0023E3 FC               [12] 1225 	mov	r4,a
      0023E4 F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	spi_and_bit_banging.c:395: if (input[i] >= '0' && input[i] <= '9')
      0023E5 BD 30 00         [24] 1228 	cjne	r5,#0x30,00207$
      0023E8                       1229 00207$:
      0023E8 40 12            [24] 1230 	jc	00122$
      0023EA ED               [12] 1231 	mov	a,r5
      0023EB 24 C6            [12] 1232 	add	a,#0xff - 0x39
      0023ED 40 0D            [24] 1233 	jc	00122$
                                   1234 ;	spi_and_bit_banging.c:396: data += input[i] - '0';
      0023EF ED               [12] 1235 	mov	a,r5
      0023F0 24 D0            [12] 1236 	add	a,#0xd0
      0023F2 FD               [12] 1237 	mov	r5,a
      0023F3 90 04 09         [24] 1238 	mov	dptr,#_take_data_data_65538_54
      0023F6 E0               [24] 1239 	movx	a,@dptr
      0023F7 FC               [12] 1240 	mov	r4,a
      0023F8 2D               [12] 1241 	add	a,r5
      0023F9 F0               [24] 1242 	movx	@dptr,a
      0023FA 80 3A            [24] 1243 	sjmp	00128$
      0023FC                       1244 00122$:
                                   1245 ;	spi_and_bit_banging.c:397: else if (input[i] >= 'A' && input[i] <= 'F')
      0023FC EE               [12] 1246 	mov	a,r6
      0023FD 24 05            [12] 1247 	add	a,#_take_data_input_65537_50
      0023FF F5 82            [12] 1248 	mov	dpl,a
      002401 EF               [12] 1249 	mov	a,r7
      002402 34 04            [12] 1250 	addc	a,#(_take_data_input_65537_50 >> 8)
      002404 F5 83            [12] 1251 	mov	dph,a
      002406 E0               [24] 1252 	movx	a,@dptr
      002407 FD               [12] 1253 	mov	r5,a
      002408 BD 41 00         [24] 1254 	cjne	r5,#0x41,00210$
      00240B                       1255 00210$:
      00240B 40 14            [24] 1256 	jc	00118$
      00240D ED               [12] 1257 	mov	a,r5
      00240E 24 B9            [12] 1258 	add	a,#0xff - 0x46
      002410 40 0F            [24] 1259 	jc	00118$
                                   1260 ;	spi_and_bit_banging.c:398: data += input[i] - 'A' + 10;
      002412 8D 04            [24] 1261 	mov	ar4,r5
      002414 74 C9            [12] 1262 	mov	a,#0xc9
      002416 2C               [12] 1263 	add	a,r4
      002417 FC               [12] 1264 	mov	r4,a
      002418 90 04 09         [24] 1265 	mov	dptr,#_take_data_data_65538_54
      00241B E0               [24] 1266 	movx	a,@dptr
      00241C FB               [12] 1267 	mov	r3,a
      00241D 2C               [12] 1268 	add	a,r4
      00241E F0               [24] 1269 	movx	@dptr,a
      00241F 80 15            [24] 1270 	sjmp	00128$
      002421                       1271 00118$:
                                   1272 ;	spi_and_bit_banging.c:399: else if (input[i] >= 'a' && input[i] <= 'f')
      002421 BD 61 00         [24] 1273 	cjne	r5,#0x61,00213$
      002424                       1274 00213$:
      002424 40 10            [24] 1275 	jc	00128$
      002426 ED               [12] 1276 	mov	a,r5
      002427 24 99            [12] 1277 	add	a,#0xff - 0x66
      002429 40 0B            [24] 1278 	jc	00128$
                                   1279 ;	spi_and_bit_banging.c:400: data += input[i] - 'a' + 10;
      00242B 74 A9            [12] 1280 	mov	a,#0xa9
      00242D 2D               [12] 1281 	add	a,r5
      00242E FD               [12] 1282 	mov	r5,a
      00242F 90 04 09         [24] 1283 	mov	dptr,#_take_data_data_65538_54
      002432 E0               [24] 1284 	movx	a,@dptr
      002433 FC               [12] 1285 	mov	r4,a
      002434 2D               [12] 1286 	add	a,r5
      002435 F0               [24] 1287 	movx	@dptr,a
      002436                       1288 00128$:
                                   1289 ;	spi_and_bit_banging.c:393: for (i = 0; input[i] != '\0'; i++) {
      002436 0E               [12] 1290 	inc	r6
      002437 BE 00 01         [24] 1291 	cjne	r6,#0x00,00216$
      00243A 0F               [12] 1292 	inc	r7
      00243B                       1293 00216$:
      00243B 02 23 CB         [24] 1294 	ljmp	00127$
      00243E                       1295 00125$:
                                   1296 ;	spi_and_bit_banging.c:403: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00243E 90 04 09         [24] 1297 	mov	dptr,#_take_data_data_65538_54
      002441 E0               [24] 1298 	movx	a,@dptr
      002442 FF               [12] 1299 	mov	r7,a
      002443 FD               [12] 1300 	mov	r5,a
      002444 7E 00            [12] 1301 	mov	r6,#0x00
      002446 C0 07            [24] 1302 	push	ar7
      002448 C0 05            [24] 1303 	push	ar5
      00244A C0 06            [24] 1304 	push	ar6
      00244C 74 42            [12] 1305 	mov	a,#___str_20
      00244E C0 E0            [24] 1306 	push	acc
      002450 74 3D            [12] 1307 	mov	a,#(___str_20 >> 8)
      002452 C0 E0            [24] 1308 	push	acc
      002454 74 80            [12] 1309 	mov	a,#0x80
      002456 C0 E0            [24] 1310 	push	acc
      002458 12 27 E1         [24] 1311 	lcall	_printf
      00245B E5 81            [12] 1312 	mov	a,sp
      00245D 24 FB            [12] 1313 	add	a,#0xfb
      00245F F5 81            [12] 1314 	mov	sp,a
      002461 D0 07            [24] 1315 	pop	ar7
                                   1316 ;	spi_and_bit_banging.c:410: return data;
      002463 8F 82            [24] 1317 	mov	dpl,r7
                                   1318 ;	spi_and_bit_banging.c:412: }
      002465 22               [24] 1319 	ret
                                   1320 ;------------------------------------------------------------
                                   1321 ;Allocation info for local variables in function 'mannual_spi'
                                   1322 ;------------------------------------------------------------
                                   1323 ;number                    Allocated with name '_mannual_spi_number_65536_57'
                                   1324 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_58'
                                   1325 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_58'
                                   1326 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_58'
                                   1327 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_58'
                                   1328 ;i                         Allocated with name '_mannual_spi_i_196608_60'
                                   1329 ;------------------------------------------------------------
                                   1330 ;	spi_and_bit_banging.c:414: void mannual_spi(unsigned char number)
                                   1331 ;	-----------------------------------------
                                   1332 ;	 function mannual_spi
                                   1333 ;	-----------------------------------------
      002466                       1334 _mannual_spi:
      002466 E5 82            [12] 1335 	mov	a,dpl
      002468 90 04 0A         [24] 1336 	mov	dptr,#_mannual_spi_number_65536_57
      00246B F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	spi_and_bit_banging.c:416: int dac_value_index = 0;
      00246C 90 04 0B         [24] 1339 	mov	dptr,#_mannual_spi_dac_value_index_65536_58
      00246F E4               [12] 1340 	clr	a
      002470 F0               [24] 1341 	movx	@dptr,a
      002471 A3               [24] 1342 	inc	dptr
      002472 F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	spi_and_bit_banging.c:417: int dac_data = 0;
      002473 90 04 0D         [24] 1345 	mov	dptr,#_mannual_spi_dac_data_65536_58
      002476 F0               [24] 1346 	movx	@dptr,a
      002477 A3               [24] 1347 	inc	dptr
      002478 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	spi_and_bit_banging.c:419: printf("\r\n Inside Manual SPI");
      002479 74 5F            [12] 1350 	mov	a,#___str_21
      00247B C0 E0            [24] 1351 	push	acc
      00247D 74 3D            [12] 1352 	mov	a,#(___str_21 >> 8)
      00247F C0 E0            [24] 1353 	push	acc
      002481 74 80            [12] 1354 	mov	a,#0x80
      002483 C0 E0            [24] 1355 	push	acc
      002485 12 27 E1         [24] 1356 	lcall	_printf
      002488 15 81            [12] 1357 	dec	sp
      00248A 15 81            [12] 1358 	dec	sp
      00248C 15 81            [12] 1359 	dec	sp
                                   1360 ;	spi_and_bit_banging.c:420: printf("%d\n\r", number);
      00248E 90 04 0A         [24] 1361 	mov	dptr,#_mannual_spi_number_65536_57
      002491 E0               [24] 1362 	movx	a,@dptr
      002492 FF               [12] 1363 	mov	r7,a
      002493 7E 00            [12] 1364 	mov	r6,#0x00
      002495 C0 07            [24] 1365 	push	ar7
      002497 C0 06            [24] 1366 	push	ar6
      002499 74 74            [12] 1367 	mov	a,#___str_22
      00249B C0 E0            [24] 1368 	push	acc
      00249D 74 3D            [12] 1369 	mov	a,#(___str_22 >> 8)
      00249F C0 E0            [24] 1370 	push	acc
      0024A1 74 80            [12] 1371 	mov	a,#0x80
      0024A3 C0 E0            [24] 1372 	push	acc
      0024A5 12 27 E1         [24] 1373 	lcall	_printf
      0024A8 E5 81            [12] 1374 	mov	a,sp
      0024AA 24 FB            [12] 1375 	add	a,#0xfb
      0024AC F5 81            [12] 1376 	mov	sp,a
                                   1377 ;	spi_and_bit_banging.c:421: while(number > 0)
      0024AE                       1378 00111$:
      0024AE 90 04 0A         [24] 1379 	mov	dptr,#_mannual_spi_number_65536_57
      0024B1 E0               [24] 1380 	movx	a,@dptr
      0024B2 FF               [12] 1381 	mov	r7,a
      0024B3 E0               [24] 1382 	movx	a,@dptr
      0024B4 70 01            [24] 1383 	jnz	00156$
      0024B6 22               [24] 1384 	ret
      0024B7                       1385 00156$:
                                   1386 ;	spi_and_bit_banging.c:423: printf("\r\n Number is %d",number);
      0024B7 7E 00            [12] 1387 	mov	r6,#0x00
      0024B9 C0 07            [24] 1388 	push	ar7
      0024BB C0 06            [24] 1389 	push	ar6
      0024BD 74 79            [12] 1390 	mov	a,#___str_23
      0024BF C0 E0            [24] 1391 	push	acc
      0024C1 74 3D            [12] 1392 	mov	a,#(___str_23 >> 8)
      0024C3 C0 E0            [24] 1393 	push	acc
      0024C5 74 80            [12] 1394 	mov	a,#0x80
      0024C7 C0 E0            [24] 1395 	push	acc
      0024C9 12 27 E1         [24] 1396 	lcall	_printf
      0024CC E5 81            [12] 1397 	mov	a,sp
      0024CE 24 FB            [12] 1398 	add	a,#0xfb
      0024D0 F5 81            [12] 1399 	mov	sp,a
                                   1400 ;	spi_and_bit_banging.c:425: for(int i = 0; i<255; i++)
      0024D2 7E 00            [12] 1401 	mov	r6,#0x00
      0024D4 7F 00            [12] 1402 	mov	r7,#0x00
      0024D6                       1403 00115$:
      0024D6 C3               [12] 1404 	clr	c
      0024D7 EE               [12] 1405 	mov	a,r6
      0024D8 94 FF            [12] 1406 	subb	a,#0xff
      0024DA EF               [12] 1407 	mov	a,r7
      0024DB 64 80            [12] 1408 	xrl	a,#0x80
      0024DD 94 80            [12] 1409 	subb	a,#0x80
      0024DF 40 03            [24] 1410 	jc	00157$
      0024E1 02 25 69         [24] 1411 	ljmp	00110$
      0024E4                       1412 00157$:
                                   1413 ;	spi_and_bit_banging.c:428: if(dac_value_index < SINE_MAX_INDEX)
      0024E4 90 04 0B         [24] 1414 	mov	dptr,#_mannual_spi_dac_value_index_65536_58
      0024E7 E0               [24] 1415 	movx	a,@dptr
      0024E8 FC               [12] 1416 	mov	r4,a
      0024E9 A3               [24] 1417 	inc	dptr
      0024EA E0               [24] 1418 	movx	a,@dptr
      0024EB FD               [12] 1419 	mov	r5,a
      0024EC C3               [12] 1420 	clr	c
      0024ED 64 80            [12] 1421 	xrl	a,#0x80
      0024EF 94 81            [12] 1422 	subb	a,#0x81
      0024F1 50 21            [24] 1423 	jnc	00102$
                                   1424 ;	spi_and_bit_banging.c:432: dac_data = dac_values[dac_value_index];
      0024F3 EC               [12] 1425 	mov	a,r4
      0024F4 2C               [12] 1426 	add	a,r4
      0024F5 FC               [12] 1427 	mov	r4,a
      0024F6 ED               [12] 1428 	mov	a,r5
      0024F7 33               [12] 1429 	rlc	a
      0024F8 FD               [12] 1430 	mov	r5,a
      0024F9 EC               [12] 1431 	mov	a,r4
      0024FA 24 43            [12] 1432 	add	a,#_dac_values
      0024FC F5 82            [12] 1433 	mov	dpl,a
      0024FE ED               [12] 1434 	mov	a,r5
      0024FF 34 32            [12] 1435 	addc	a,#(_dac_values >> 8)
      002501 F5 83            [12] 1436 	mov	dph,a
      002503 E4               [12] 1437 	clr	a
      002504 93               [24] 1438 	movc	a,@a+dptr
      002505 FC               [12] 1439 	mov	r4,a
      002506 A3               [24] 1440 	inc	dptr
      002507 E4               [12] 1441 	clr	a
      002508 93               [24] 1442 	movc	a,@a+dptr
      002509 FD               [12] 1443 	mov	r5,a
      00250A 90 04 0D         [24] 1444 	mov	dptr,#_mannual_spi_dac_data_65536_58
      00250D EC               [12] 1445 	mov	a,r4
      00250E F0               [24] 1446 	movx	@dptr,a
      00250F ED               [12] 1447 	mov	a,r5
      002510 A3               [24] 1448 	inc	dptr
      002511 F0               [24] 1449 	movx	@dptr,a
      002512 80 07            [24] 1450 	sjmp	00103$
      002514                       1451 00102$:
                                   1452 ;	spi_and_bit_banging.c:436: dac_value_index = 0;  // Reset index for next cycle
      002514 90 04 0B         [24] 1453 	mov	dptr,#_mannual_spi_dac_value_index_65536_58
      002517 E4               [12] 1454 	clr	a
      002518 F0               [24] 1455 	movx	@dptr,a
      002519 A3               [24] 1456 	inc	dptr
      00251A F0               [24] 1457 	movx	@dptr,a
      00251B                       1458 00103$:
                                   1459 ;	spi_and_bit_banging.c:443: ((dac_data >> 4) & 0x0F);
      00251B 90 04 0D         [24] 1460 	mov	dptr,#_mannual_spi_dac_data_65536_58
      00251E E0               [24] 1461 	movx	a,@dptr
      00251F FC               [12] 1462 	mov	r4,a
      002520 A3               [24] 1463 	inc	dptr
      002521 E0               [24] 1464 	movx	a,@dptr
      002522 8C 02            [24] 1465 	mov	ar2,r4
      002524 C4               [12] 1466 	swap	a
      002525 CA               [12] 1467 	xch	a,r2
      002526 C4               [12] 1468 	swap	a
      002527 54 0F            [12] 1469 	anl	a,#0x0f
      002529 6A               [12] 1470 	xrl	a,r2
      00252A CA               [12] 1471 	xch	a,r2
      00252B 54 0F            [12] 1472 	anl	a,#0x0f
      00252D CA               [12] 1473 	xch	a,r2
      00252E 6A               [12] 1474 	xrl	a,r2
      00252F CA               [12] 1475 	xch	a,r2
      002530 30 E3 02         [24] 1476 	jnb	acc.3,00159$
      002533 44 F0            [12] 1477 	orl	a,#0xf0
      002535                       1478 00159$:
      002535 74 0F            [12] 1479 	mov	a,#0x0f
      002537 5A               [12] 1480 	anl	a,r2
      002538 44 10            [12] 1481 	orl	a,#0x10
      00253A FB               [12] 1482 	mov	r3,a
                                   1483 ;	spi_and_bit_banging.c:446: low_byte = (dac_data & 0x0F) << 4;
      00253B 53 04 0F         [24] 1484 	anl	ar4,#0x0f
      00253E EC               [12] 1485 	mov	a,r4
      00253F C4               [12] 1486 	swap	a
      002540 54 F0            [12] 1487 	anl	a,#0xf0
      002542 FD               [12] 1488 	mov	r5,a
                                   1489 ;	spi_and_bit_banging.c:450: P1_1 = 0;  // Select DAC
                                   1490 ;	assignBit
      002543 C2 91            [12] 1491 	clr	_P1_1
                                   1492 ;	spi_and_bit_banging.c:453: SPDAT = high_byte;
      002545 8B C5            [24] 1493 	mov	_SPDAT,r3
                                   1494 ;	spi_and_bit_banging.c:454: while (!(SPSTA & (1<<7))); 
      002547                       1495 00104$:
      002547 E5 C4            [12] 1496 	mov	a,_SPSTA
      002549 30 E7 FB         [24] 1497 	jnb	acc.7,00104$
                                   1498 ;	spi_and_bit_banging.c:458: SPDAT = low_byte;
      00254C 8D C5            [24] 1499 	mov	_SPDAT,r5
                                   1500 ;	spi_and_bit_banging.c:459: while (!(SPSTA & (1<<7))); 
      00254E                       1501 00107$:
      00254E E5 C4            [12] 1502 	mov	a,_SPSTA
      002550 30 E7 FB         [24] 1503 	jnb	acc.7,00107$
                                   1504 ;	spi_and_bit_banging.c:461: P1_1 = 1;  // Deselect DAC
                                   1505 ;	assignBit
      002553 D2 91            [12] 1506 	setb	_P1_1
                                   1507 ;	spi_and_bit_banging.c:463: dac_value_index++;
      002555 90 04 0B         [24] 1508 	mov	dptr,#_mannual_spi_dac_value_index_65536_58
      002558 E0               [24] 1509 	movx	a,@dptr
      002559 24 01            [12] 1510 	add	a,#0x01
      00255B F0               [24] 1511 	movx	@dptr,a
      00255C A3               [24] 1512 	inc	dptr
      00255D E0               [24] 1513 	movx	a,@dptr
      00255E 34 00            [12] 1514 	addc	a,#0x00
      002560 F0               [24] 1515 	movx	@dptr,a
                                   1516 ;	spi_and_bit_banging.c:425: for(int i = 0; i<255; i++)
      002561 0E               [12] 1517 	inc	r6
      002562 BE 00 01         [24] 1518 	cjne	r6,#0x00,00162$
      002565 0F               [12] 1519 	inc	r7
      002566                       1520 00162$:
      002566 02 24 D6         [24] 1521 	ljmp	00115$
      002569                       1522 00110$:
                                   1523 ;	spi_and_bit_banging.c:466: number = number - 1;
      002569 90 04 0A         [24] 1524 	mov	dptr,#_mannual_spi_number_65536_57
      00256C E0               [24] 1525 	movx	a,@dptr
      00256D FF               [12] 1526 	mov	r7,a
      00256E 14               [12] 1527 	dec	a
      00256F F0               [24] 1528 	movx	@dptr,a
                                   1529 ;	spi_and_bit_banging.c:468: }
      002570 02 24 AE         [24] 1530 	ljmp	00111$
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'spi_init'
                                   1533 ;------------------------------------------------------------
                                   1534 ;	spi_and_bit_banging.c:479: void spi_init(void) 
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function spi_init
                                   1537 ;	-----------------------------------------
      002573                       1538 _spi_init:
                                   1539 ;	spi_and_bit_banging.c:500: SPCON |= 0x10;
      002573 43 C3 10         [24] 1540 	orl	_SPCON,#0x10
                                   1541 ;	spi_and_bit_banging.c:501: SPCON |= 0x20;
      002576 43 C3 20         [24] 1542 	orl	_SPCON,#0x20
                                   1543 ;	spi_and_bit_banging.c:502: SPCON |= 0x40;
      002579 43 C3 40         [24] 1544 	orl	_SPCON,#0x40
                                   1545 ;	spi_and_bit_banging.c:509: }
      00257C 22               [24] 1546 	ret
                                   1547 ;------------------------------------------------------------
                                   1548 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1549 ;------------------------------------------------------------
                                   1550 ;	spi_and_bit_banging.c:511: void bit_bang_spi_init(void) {
                                   1551 ;	-----------------------------------------
                                   1552 ;	 function bit_bang_spi_init
                                   1553 ;	-----------------------------------------
      00257D                       1554 _bit_bang_spi_init:
                                   1555 ;	spi_and_bit_banging.c:512: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      00257D 75 C3 00         [24] 1556 	mov	_SPCON,#0x00
                                   1557 ;	spi_and_bit_banging.c:513: SDA = DATA_HIGH;                 /* Set data line high */
                                   1558 ;	assignBit
      002580 D2 97            [12] 1559 	setb	_P1_7
                                   1560 ;	spi_and_bit_banging.c:514: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1561 ;	assignBit
      002582 C2 96            [12] 1562 	clr	_P1_6
                                   1563 ;	spi_and_bit_banging.c:515: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1564 ;	assignBit
      002584 D2 91            [12] 1565 	setb	_P1_1
                                   1566 ;	spi_and_bit_banging.c:516: }
      002586 22               [24] 1567 	ret
                                   1568 ;------------------------------------------------------------
                                   1569 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1570 ;------------------------------------------------------------
                                   1571 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_68'
                                   1572 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_69'
                                   1573 ;------------------------------------------------------------
                                   1574 ;	spi_and_bit_banging.c:518: int bit_bang_spi_write(uint16_t data) {
                                   1575 ;	-----------------------------------------
                                   1576 ;	 function bit_bang_spi_write
                                   1577 ;	-----------------------------------------
      002587                       1578 _bit_bang_spi_write:
      002587 AF 83            [24] 1579 	mov	r7,dph
      002589 E5 82            [12] 1580 	mov	a,dpl
      00258B 90 04 0F         [24] 1581 	mov	dptr,#_bit_bang_spi_write_data_65536_68
      00258E F0               [24] 1582 	movx	@dptr,a
      00258F EF               [12] 1583 	mov	a,r7
      002590 A3               [24] 1584 	inc	dptr
      002591 F0               [24] 1585 	movx	@dptr,a
                                   1586 ;	spi_and_bit_banging.c:521: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1587 ;	assignBit
      002592 C2 91            [12] 1588 	clr	_P1_1
                                   1589 ;	spi_and_bit_banging.c:524: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002594 7E 00            [12] 1590 	mov	r6,#0x00
      002596 7F 00            [12] 1591 	mov	r7,#0x00
      002598                       1592 00102$:
                                   1593 ;	spi_and_bit_banging.c:525: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      002598 90 04 0F         [24] 1594 	mov	dptr,#_bit_bang_spi_write_data_65536_68
      00259B E0               [24] 1595 	movx	a,@dptr
      00259C FC               [12] 1596 	mov	r4,a
      00259D A3               [24] 1597 	inc	dptr
      00259E E0               [24] 1598 	movx	a,@dptr
      00259F FD               [12] 1599 	mov	r5,a
      0025A0 23               [12] 1600 	rl	a
      0025A1 54 01            [12] 1601 	anl	a,#0x01
      0025A3 24 FF            [12] 1602 	add	a,#0xff
      0025A5 92 97            [24] 1603 	mov	_P1_7,c
                                   1604 ;	spi_and_bit_banging.c:526: SCL = CLOCK_HIGH;            /* Clock high */
                                   1605 ;	assignBit
      0025A7 D2 96            [12] 1606 	setb	_P1_6
                                   1607 ;	spi_and_bit_banging.c:527: SCL = CLOCK_LOW;             /* Clock low */
                                   1608 ;	assignBit
      0025A9 C2 96            [12] 1609 	clr	_P1_6
                                   1610 ;	spi_and_bit_banging.c:528: data <<= 1;                  /* Shift to next bit */
      0025AB EC               [12] 1611 	mov	a,r4
      0025AC 2C               [12] 1612 	add	a,r4
      0025AD FC               [12] 1613 	mov	r4,a
      0025AE ED               [12] 1614 	mov	a,r5
      0025AF 33               [12] 1615 	rlc	a
      0025B0 FD               [12] 1616 	mov	r5,a
      0025B1 90 04 0F         [24] 1617 	mov	dptr,#_bit_bang_spi_write_data_65536_68
      0025B4 EC               [12] 1618 	mov	a,r4
      0025B5 F0               [24] 1619 	movx	@dptr,a
      0025B6 ED               [12] 1620 	mov	a,r5
      0025B7 A3               [24] 1621 	inc	dptr
      0025B8 F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	spi_and_bit_banging.c:524: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025B9 0E               [12] 1624 	inc	r6
      0025BA BE 00 01         [24] 1625 	cjne	r6,#0x00,00115$
      0025BD 0F               [12] 1626 	inc	r7
      0025BE                       1627 00115$:
      0025BE C3               [12] 1628 	clr	c
      0025BF EE               [12] 1629 	mov	a,r6
      0025C0 94 10            [12] 1630 	subb	a,#0x10
      0025C2 EF               [12] 1631 	mov	a,r7
      0025C3 94 00            [12] 1632 	subb	a,#0x00
      0025C5 40 D1            [24] 1633 	jc	00102$
                                   1634 ;	spi_and_bit_banging.c:532: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1635 ;	assignBit
      0025C7 D2 91            [12] 1636 	setb	_P1_1
                                   1637 ;	spi_and_bit_banging.c:533: SCL = CLOCK_LOW;                 /* Clock low */
                                   1638 ;	assignBit
      0025C9 C2 96            [12] 1639 	clr	_P1_6
                                   1640 ;	spi_and_bit_banging.c:534: SDA = DATA_HIGH;                 /* Data high */
                                   1641 ;	assignBit
      0025CB D2 97            [12] 1642 	setb	_P1_7
                                   1643 ;	spi_and_bit_banging.c:536: return 0;
      0025CD 90 00 00         [24] 1644 	mov	dptr,#0x0000
                                   1645 ;	spi_and_bit_banging.c:537: }
      0025D0 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1649 ;------------------------------------------------------------
                                   1650 ;	spi_and_bit_banging.c:544: void spi_transmission_start(void)
                                   1651 ;	-----------------------------------------
                                   1652 ;	 function spi_transmission_start
                                   1653 ;	-----------------------------------------
      0025D1                       1654 _spi_transmission_start:
                                   1655 ;	spi_and_bit_banging.c:546: SPCON |= SPI_ENABLE;           // Enable SPI
      0025D1 43 C3 40         [24] 1656 	orl	_SPCON,#0x40
                                   1657 ;	spi_and_bit_banging.c:547: P1_1 = 0;
                                   1658 ;	assignBit
      0025D4 C2 91            [12] 1659 	clr	_P1_1
                                   1660 ;	spi_and_bit_banging.c:548: }
      0025D6 22               [24] 1661 	ret
                                   1662 ;------------------------------------------------------------
                                   1663 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1664 ;------------------------------------------------------------
                                   1665 ;number                    Allocated with name '_spi_triangular_wave_number_65536_74'
                                   1666 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_75'
                                   1667 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_75'
                                   1668 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_75'
                                   1669 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_75'
                                   1670 ;i                         Allocated with name '_spi_triangular_wave_i_196608_77'
                                   1671 ;------------------------------------------------------------
                                   1672 ;	spi_and_bit_banging.c:550: void spi_triangular_wave(int number)
                                   1673 ;	-----------------------------------------
                                   1674 ;	 function spi_triangular_wave
                                   1675 ;	-----------------------------------------
      0025D7                       1676 _spi_triangular_wave:
      0025D7 AF 83            [24] 1677 	mov	r7,dph
      0025D9 E5 82            [12] 1678 	mov	a,dpl
      0025DB 90 04 11         [24] 1679 	mov	dptr,#_spi_triangular_wave_number_65536_74
      0025DE F0               [24] 1680 	movx	@dptr,a
      0025DF EF               [12] 1681 	mov	a,r7
      0025E0 A3               [24] 1682 	inc	dptr
      0025E1 F0               [24] 1683 	movx	@dptr,a
                                   1684 ;	spi_and_bit_banging.c:552: int dac_value_index = 0;
      0025E2 90 04 13         [24] 1685 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
      0025E5 E4               [12] 1686 	clr	a
      0025E6 F0               [24] 1687 	movx	@dptr,a
      0025E7 A3               [24] 1688 	inc	dptr
      0025E8 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	spi_and_bit_banging.c:553: int dac_data = 0;
      0025E9 90 04 15         [24] 1691 	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
      0025EC F0               [24] 1692 	movx	@dptr,a
      0025ED A3               [24] 1693 	inc	dptr
      0025EE F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	spi_and_bit_banging.c:555: while(number>0)
      0025EF 90 04 11         [24] 1696 	mov	dptr,#_spi_triangular_wave_number_65536_74
      0025F2 E0               [24] 1697 	movx	a,@dptr
      0025F3 FE               [12] 1698 	mov	r6,a
      0025F4 A3               [24] 1699 	inc	dptr
      0025F5 E0               [24] 1700 	movx	a,@dptr
      0025F6 FF               [12] 1701 	mov	r7,a
      0025F7                       1702 00111$:
      0025F7 C3               [12] 1703 	clr	c
      0025F8 E4               [12] 1704 	clr	a
      0025F9 9E               [12] 1705 	subb	a,r6
      0025FA 74 80            [12] 1706 	mov	a,#(0x00 ^ 0x80)
      0025FC 8F F0            [24] 1707 	mov	b,r7
      0025FE 63 F0 80         [24] 1708 	xrl	b,#0x80
      002601 95 F0            [12] 1709 	subb	a,b
      002603 40 03            [24] 1710 	jc	00157$
      002605 02 26 AC         [24] 1711 	ljmp	00129$
      002608                       1712 00157$:
                                   1713 ;	spi_and_bit_banging.c:557: for(int i = 0; i<512; i++)
      002608 7C 00            [12] 1714 	mov	r4,#0x00
      00260A 7D 00            [12] 1715 	mov	r5,#0x00
      00260C                       1716 00115$:
      00260C C3               [12] 1717 	clr	c
      00260D ED               [12] 1718 	mov	a,r5
      00260E 64 80            [12] 1719 	xrl	a,#0x80
      002610 94 82            [12] 1720 	subb	a,#0x82
      002612 40 03            [24] 1721 	jc	00158$
      002614 02 26 9C         [24] 1722 	ljmp	00110$
      002617                       1723 00158$:
                                   1724 ;	spi_and_bit_banging.c:560: if(dac_value_index < 512)
      002617 90 04 13         [24] 1725 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
      00261A E0               [24] 1726 	movx	a,@dptr
      00261B FA               [12] 1727 	mov	r2,a
      00261C A3               [24] 1728 	inc	dptr
      00261D E0               [24] 1729 	movx	a,@dptr
      00261E FB               [12] 1730 	mov	r3,a
      00261F C3               [12] 1731 	clr	c
      002620 64 80            [12] 1732 	xrl	a,#0x80
      002622 94 82            [12] 1733 	subb	a,#0x82
      002624 50 21            [24] 1734 	jnc	00102$
                                   1735 ;	spi_and_bit_banging.c:564: dac_data = trig_dac_values[dac_value_index];
      002626 EA               [12] 1736 	mov	a,r2
      002627 2A               [12] 1737 	add	a,r2
      002628 FA               [12] 1738 	mov	r2,a
      002629 EB               [12] 1739 	mov	a,r3
      00262A 33               [12] 1740 	rlc	a
      00262B FB               [12] 1741 	mov	r3,a
      00262C EA               [12] 1742 	mov	a,r2
      00262D 24 43            [12] 1743 	add	a,#_trig_dac_values
      00262F F5 82            [12] 1744 	mov	dpl,a
      002631 EB               [12] 1745 	mov	a,r3
      002632 34 34            [12] 1746 	addc	a,#(_trig_dac_values >> 8)
      002634 F5 83            [12] 1747 	mov	dph,a
      002636 E4               [12] 1748 	clr	a
      002637 93               [24] 1749 	movc	a,@a+dptr
      002638 FA               [12] 1750 	mov	r2,a
      002639 A3               [24] 1751 	inc	dptr
      00263A E4               [12] 1752 	clr	a
      00263B 93               [24] 1753 	movc	a,@a+dptr
      00263C FB               [12] 1754 	mov	r3,a
      00263D 90 04 15         [24] 1755 	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
      002640 EA               [12] 1756 	mov	a,r2
      002641 F0               [24] 1757 	movx	@dptr,a
      002642 EB               [12] 1758 	mov	a,r3
      002643 A3               [24] 1759 	inc	dptr
      002644 F0               [24] 1760 	movx	@dptr,a
      002645 80 07            [24] 1761 	sjmp	00103$
      002647                       1762 00102$:
                                   1763 ;	spi_and_bit_banging.c:568: dac_value_index = 0;  // Reset index for next cycle
      002647 90 04 13         [24] 1764 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
      00264A E4               [12] 1765 	clr	a
      00264B F0               [24] 1766 	movx	@dptr,a
      00264C A3               [24] 1767 	inc	dptr
      00264D F0               [24] 1768 	movx	@dptr,a
      00264E                       1769 00103$:
                                   1770 ;	spi_and_bit_banging.c:575: ((dac_data >> 4) & 0x0F);
      00264E 90 04 15         [24] 1771 	mov	dptr,#_spi_triangular_wave_dac_data_65536_75
      002651 E0               [24] 1772 	movx	a,@dptr
      002652 FA               [12] 1773 	mov	r2,a
      002653 A3               [24] 1774 	inc	dptr
      002654 E0               [24] 1775 	movx	a,@dptr
      002655 8A 00            [24] 1776 	mov	ar0,r2
      002657 C4               [12] 1777 	swap	a
      002658 C8               [12] 1778 	xch	a,r0
      002659 C4               [12] 1779 	swap	a
      00265A 54 0F            [12] 1780 	anl	a,#0x0f
      00265C 68               [12] 1781 	xrl	a,r0
      00265D C8               [12] 1782 	xch	a,r0
      00265E 54 0F            [12] 1783 	anl	a,#0x0f
      002660 C8               [12] 1784 	xch	a,r0
      002661 68               [12] 1785 	xrl	a,r0
      002662 C8               [12] 1786 	xch	a,r0
      002663 30 E3 02         [24] 1787 	jnb	acc.3,00160$
      002666 44 F0            [12] 1788 	orl	a,#0xf0
      002668                       1789 00160$:
      002668 74 0F            [12] 1790 	mov	a,#0x0f
      00266A 58               [12] 1791 	anl	a,r0
      00266B 44 10            [12] 1792 	orl	a,#0x10
      00266D F9               [12] 1793 	mov	r1,a
                                   1794 ;	spi_and_bit_banging.c:578: low_byte = (dac_data & 0x0F) << 4;
      00266E 53 02 0F         [24] 1795 	anl	ar2,#0x0f
      002671 EA               [12] 1796 	mov	a,r2
      002672 C4               [12] 1797 	swap	a
      002673 54 F0            [12] 1798 	anl	a,#0xf0
      002675 FB               [12] 1799 	mov	r3,a
                                   1800 ;	spi_and_bit_banging.c:582: P1_1 = 0;  // Select DAC
                                   1801 ;	assignBit
      002676 C2 91            [12] 1802 	clr	_P1_1
                                   1803 ;	spi_and_bit_banging.c:585: SPDAT = high_byte;
      002678 89 C5            [24] 1804 	mov	_SPDAT,r1
                                   1805 ;	spi_and_bit_banging.c:586: while (!(SPSTA & (1<<7))); 
      00267A                       1806 00104$:
      00267A E5 C4            [12] 1807 	mov	a,_SPSTA
      00267C 30 E7 FB         [24] 1808 	jnb	acc.7,00104$
                                   1809 ;	spi_and_bit_banging.c:590: SPDAT = low_byte;
      00267F 8B C5            [24] 1810 	mov	_SPDAT,r3
                                   1811 ;	spi_and_bit_banging.c:591: while (!(SPSTA & (1<<7))); 
      002681                       1812 00107$:
      002681 E5 C4            [12] 1813 	mov	a,_SPSTA
      002683 30 E7 FB         [24] 1814 	jnb	acc.7,00107$
                                   1815 ;	spi_and_bit_banging.c:593: P1_1 = 1;  // Deselect DAC
                                   1816 ;	assignBit
      002686 D2 91            [12] 1817 	setb	_P1_1
                                   1818 ;	spi_and_bit_banging.c:595: dac_value_index++;
      002688 90 04 13         [24] 1819 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_75
      00268B E0               [24] 1820 	movx	a,@dptr
      00268C 24 01            [12] 1821 	add	a,#0x01
      00268E F0               [24] 1822 	movx	@dptr,a
      00268F A3               [24] 1823 	inc	dptr
      002690 E0               [24] 1824 	movx	a,@dptr
      002691 34 00            [12] 1825 	addc	a,#0x00
      002693 F0               [24] 1826 	movx	@dptr,a
                                   1827 ;	spi_and_bit_banging.c:557: for(int i = 0; i<512; i++)
      002694 0C               [12] 1828 	inc	r4
      002695 BC 00 01         [24] 1829 	cjne	r4,#0x00,00163$
      002698 0D               [12] 1830 	inc	r5
      002699                       1831 00163$:
      002699 02 26 0C         [24] 1832 	ljmp	00115$
      00269C                       1833 00110$:
                                   1834 ;	spi_and_bit_banging.c:598: number = number - 1;
      00269C 1E               [12] 1835 	dec	r6
      00269D BE FF 01         [24] 1836 	cjne	r6,#0xff,00164$
      0026A0 1F               [12] 1837 	dec	r7
      0026A1                       1838 00164$:
      0026A1 90 04 11         [24] 1839 	mov	dptr,#_spi_triangular_wave_number_65536_74
      0026A4 EE               [12] 1840 	mov	a,r6
      0026A5 F0               [24] 1841 	movx	@dptr,a
      0026A6 EF               [12] 1842 	mov	a,r7
      0026A7 A3               [24] 1843 	inc	dptr
      0026A8 F0               [24] 1844 	movx	@dptr,a
      0026A9 02 25 F7         [24] 1845 	ljmp	00111$
      0026AC                       1846 00129$:
      0026AC 90 04 11         [24] 1847 	mov	dptr,#_spi_triangular_wave_number_65536_74
      0026AF EE               [12] 1848 	mov	a,r6
      0026B0 F0               [24] 1849 	movx	@dptr,a
      0026B1 EF               [12] 1850 	mov	a,r7
      0026B2 A3               [24] 1851 	inc	dptr
      0026B3 F0               [24] 1852 	movx	@dptr,a
                                   1853 ;	spi_and_bit_banging.c:601: }
      0026B4 22               [24] 1854 	ret
                                   1855 ;------------------------------------------------------------
                                   1856 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1857 ;------------------------------------------------------------
                                   1858 ;number                    Allocated with name '_spi_ramp_signal_number_65536_81'
                                   1859 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_82'
                                   1860 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_82'
                                   1861 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_82'
                                   1862 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_82'
                                   1863 ;i                         Allocated with name '_spi_ramp_signal_i_196608_84'
                                   1864 ;------------------------------------------------------------
                                   1865 ;	spi_and_bit_banging.c:603: void spi_ramp_signal(int number)
                                   1866 ;	-----------------------------------------
                                   1867 ;	 function spi_ramp_signal
                                   1868 ;	-----------------------------------------
      0026B5                       1869 _spi_ramp_signal:
      0026B5 AF 83            [24] 1870 	mov	r7,dph
      0026B7 E5 82            [12] 1871 	mov	a,dpl
      0026B9 90 04 17         [24] 1872 	mov	dptr,#_spi_ramp_signal_number_65536_81
      0026BC F0               [24] 1873 	movx	@dptr,a
      0026BD EF               [12] 1874 	mov	a,r7
      0026BE A3               [24] 1875 	inc	dptr
      0026BF F0               [24] 1876 	movx	@dptr,a
                                   1877 ;	spi_and_bit_banging.c:605: int dac_value_index = 0;
      0026C0 90 04 19         [24] 1878 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
      0026C3 E4               [12] 1879 	clr	a
      0026C4 F0               [24] 1880 	movx	@dptr,a
      0026C5 A3               [24] 1881 	inc	dptr
      0026C6 F0               [24] 1882 	movx	@dptr,a
                                   1883 ;	spi_and_bit_banging.c:606: int dac_data = 0;
      0026C7 90 04 1B         [24] 1884 	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
      0026CA F0               [24] 1885 	movx	@dptr,a
      0026CB A3               [24] 1886 	inc	dptr
      0026CC F0               [24] 1887 	movx	@dptr,a
                                   1888 ;	spi_and_bit_banging.c:608: while(number>0)
      0026CD 90 04 17         [24] 1889 	mov	dptr,#_spi_ramp_signal_number_65536_81
      0026D0 E0               [24] 1890 	movx	a,@dptr
      0026D1 FE               [12] 1891 	mov	r6,a
      0026D2 A3               [24] 1892 	inc	dptr
      0026D3 E0               [24] 1893 	movx	a,@dptr
      0026D4 FF               [12] 1894 	mov	r7,a
      0026D5                       1895 00111$:
      0026D5 C3               [12] 1896 	clr	c
      0026D6 E4               [12] 1897 	clr	a
      0026D7 9E               [12] 1898 	subb	a,r6
      0026D8 74 80            [12] 1899 	mov	a,#(0x00 ^ 0x80)
      0026DA 8F F0            [24] 1900 	mov	b,r7
      0026DC 63 F0 80         [24] 1901 	xrl	b,#0x80
      0026DF 95 F0            [12] 1902 	subb	a,b
      0026E1 40 03            [24] 1903 	jc	00157$
      0026E3 02 27 8A         [24] 1904 	ljmp	00129$
      0026E6                       1905 00157$:
                                   1906 ;	spi_and_bit_banging.c:610: for(int i = 0; i<256; i++)
      0026E6 7C 00            [12] 1907 	mov	r4,#0x00
      0026E8 7D 00            [12] 1908 	mov	r5,#0x00
      0026EA                       1909 00115$:
      0026EA C3               [12] 1910 	clr	c
      0026EB ED               [12] 1911 	mov	a,r5
      0026EC 64 80            [12] 1912 	xrl	a,#0x80
      0026EE 94 81            [12] 1913 	subb	a,#0x81
      0026F0 40 03            [24] 1914 	jc	00158$
      0026F2 02 27 7A         [24] 1915 	ljmp	00110$
      0026F5                       1916 00158$:
                                   1917 ;	spi_and_bit_banging.c:613: if(dac_value_index < 256)
      0026F5 90 04 19         [24] 1918 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
      0026F8 E0               [24] 1919 	movx	a,@dptr
      0026F9 FA               [12] 1920 	mov	r2,a
      0026FA A3               [24] 1921 	inc	dptr
      0026FB E0               [24] 1922 	movx	a,@dptr
      0026FC FB               [12] 1923 	mov	r3,a
      0026FD C3               [12] 1924 	clr	c
      0026FE 64 80            [12] 1925 	xrl	a,#0x80
      002700 94 81            [12] 1926 	subb	a,#0x81
      002702 50 21            [24] 1927 	jnc	00102$
                                   1928 ;	spi_and_bit_banging.c:617: dac_data = trig_dac_values[dac_value_index];
      002704 EA               [12] 1929 	mov	a,r2
      002705 2A               [12] 1930 	add	a,r2
      002706 FA               [12] 1931 	mov	r2,a
      002707 EB               [12] 1932 	mov	a,r3
      002708 33               [12] 1933 	rlc	a
      002709 FB               [12] 1934 	mov	r3,a
      00270A EA               [12] 1935 	mov	a,r2
      00270B 24 43            [12] 1936 	add	a,#_trig_dac_values
      00270D F5 82            [12] 1937 	mov	dpl,a
      00270F EB               [12] 1938 	mov	a,r3
      002710 34 34            [12] 1939 	addc	a,#(_trig_dac_values >> 8)
      002712 F5 83            [12] 1940 	mov	dph,a
      002714 E4               [12] 1941 	clr	a
      002715 93               [24] 1942 	movc	a,@a+dptr
      002716 FA               [12] 1943 	mov	r2,a
      002717 A3               [24] 1944 	inc	dptr
      002718 E4               [12] 1945 	clr	a
      002719 93               [24] 1946 	movc	a,@a+dptr
      00271A FB               [12] 1947 	mov	r3,a
      00271B 90 04 1B         [24] 1948 	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
      00271E EA               [12] 1949 	mov	a,r2
      00271F F0               [24] 1950 	movx	@dptr,a
      002720 EB               [12] 1951 	mov	a,r3
      002721 A3               [24] 1952 	inc	dptr
      002722 F0               [24] 1953 	movx	@dptr,a
      002723 80 07            [24] 1954 	sjmp	00103$
      002725                       1955 00102$:
                                   1956 ;	spi_and_bit_banging.c:621: dac_value_index = 0;  // Reset index for next cycle
      002725 90 04 19         [24] 1957 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
      002728 E4               [12] 1958 	clr	a
      002729 F0               [24] 1959 	movx	@dptr,a
      00272A A3               [24] 1960 	inc	dptr
      00272B F0               [24] 1961 	movx	@dptr,a
      00272C                       1962 00103$:
                                   1963 ;	spi_and_bit_banging.c:628: ((dac_data >> 4) & 0x0F);
      00272C 90 04 1B         [24] 1964 	mov	dptr,#_spi_ramp_signal_dac_data_65536_82
      00272F E0               [24] 1965 	movx	a,@dptr
      002730 FA               [12] 1966 	mov	r2,a
      002731 A3               [24] 1967 	inc	dptr
      002732 E0               [24] 1968 	movx	a,@dptr
      002733 8A 00            [24] 1969 	mov	ar0,r2
      002735 C4               [12] 1970 	swap	a
      002736 C8               [12] 1971 	xch	a,r0
      002737 C4               [12] 1972 	swap	a
      002738 54 0F            [12] 1973 	anl	a,#0x0f
      00273A 68               [12] 1974 	xrl	a,r0
      00273B C8               [12] 1975 	xch	a,r0
      00273C 54 0F            [12] 1976 	anl	a,#0x0f
      00273E C8               [12] 1977 	xch	a,r0
      00273F 68               [12] 1978 	xrl	a,r0
      002740 C8               [12] 1979 	xch	a,r0
      002741 30 E3 02         [24] 1980 	jnb	acc.3,00160$
      002744 44 F0            [12] 1981 	orl	a,#0xf0
      002746                       1982 00160$:
      002746 74 0F            [12] 1983 	mov	a,#0x0f
      002748 58               [12] 1984 	anl	a,r0
      002749 44 10            [12] 1985 	orl	a,#0x10
      00274B F9               [12] 1986 	mov	r1,a
                                   1987 ;	spi_and_bit_banging.c:631: low_byte = (dac_data & 0x0F) << 4;
      00274C 53 02 0F         [24] 1988 	anl	ar2,#0x0f
      00274F EA               [12] 1989 	mov	a,r2
      002750 C4               [12] 1990 	swap	a
      002751 54 F0            [12] 1991 	anl	a,#0xf0
      002753 FB               [12] 1992 	mov	r3,a
                                   1993 ;	spi_and_bit_banging.c:635: P1_1 = 0;  // Select DAC
                                   1994 ;	assignBit
      002754 C2 91            [12] 1995 	clr	_P1_1
                                   1996 ;	spi_and_bit_banging.c:638: SPDAT = high_byte;
      002756 89 C5            [24] 1997 	mov	_SPDAT,r1
                                   1998 ;	spi_and_bit_banging.c:639: while (!(SPSTA & (1<<7))); 
      002758                       1999 00104$:
      002758 E5 C4            [12] 2000 	mov	a,_SPSTA
      00275A 30 E7 FB         [24] 2001 	jnb	acc.7,00104$
                                   2002 ;	spi_and_bit_banging.c:643: SPDAT = low_byte;
      00275D 8B C5            [24] 2003 	mov	_SPDAT,r3
                                   2004 ;	spi_and_bit_banging.c:644: while (!(SPSTA & (1<<7))); 
      00275F                       2005 00107$:
      00275F E5 C4            [12] 2006 	mov	a,_SPSTA
      002761 30 E7 FB         [24] 2007 	jnb	acc.7,00107$
                                   2008 ;	spi_and_bit_banging.c:646: P1_1 = 1;  // Deselect DAC
                                   2009 ;	assignBit
      002764 D2 91            [12] 2010 	setb	_P1_1
                                   2011 ;	spi_and_bit_banging.c:648: dac_value_index++;
      002766 90 04 19         [24] 2012 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_82
      002769 E0               [24] 2013 	movx	a,@dptr
      00276A 24 01            [12] 2014 	add	a,#0x01
      00276C F0               [24] 2015 	movx	@dptr,a
      00276D A3               [24] 2016 	inc	dptr
      00276E E0               [24] 2017 	movx	a,@dptr
      00276F 34 00            [12] 2018 	addc	a,#0x00
      002771 F0               [24] 2019 	movx	@dptr,a
                                   2020 ;	spi_and_bit_banging.c:610: for(int i = 0; i<256; i++)
      002772 0C               [12] 2021 	inc	r4
      002773 BC 00 01         [24] 2022 	cjne	r4,#0x00,00163$
      002776 0D               [12] 2023 	inc	r5
      002777                       2024 00163$:
      002777 02 26 EA         [24] 2025 	ljmp	00115$
      00277A                       2026 00110$:
                                   2027 ;	spi_and_bit_banging.c:651: number = number - 1;
      00277A 1E               [12] 2028 	dec	r6
      00277B BE FF 01         [24] 2029 	cjne	r6,#0xff,00164$
      00277E 1F               [12] 2030 	dec	r7
      00277F                       2031 00164$:
      00277F 90 04 17         [24] 2032 	mov	dptr,#_spi_ramp_signal_number_65536_81
      002782 EE               [12] 2033 	mov	a,r6
      002783 F0               [24] 2034 	movx	@dptr,a
      002784 EF               [12] 2035 	mov	a,r7
      002785 A3               [24] 2036 	inc	dptr
      002786 F0               [24] 2037 	movx	@dptr,a
      002787 02 26 D5         [24] 2038 	ljmp	00111$
      00278A                       2039 00129$:
      00278A 90 04 17         [24] 2040 	mov	dptr,#_spi_ramp_signal_number_65536_81
      00278D EE               [12] 2041 	mov	a,r6
      00278E F0               [24] 2042 	movx	@dptr,a
      00278F EF               [12] 2043 	mov	a,r7
      002790 A3               [24] 2044 	inc	dptr
      002791 F0               [24] 2045 	movx	@dptr,a
                                   2046 ;	spi_and_bit_banging.c:654: }
      002792 22               [24] 2047 	ret
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      003243                       2050 _dac_values:
      003243 80 00                 2051 	.byte #0x80, #0x00	;  128
      003245 83 00                 2052 	.byte #0x83, #0x00	;  131
      003247 86 00                 2053 	.byte #0x86, #0x00	;  134
      003249 89 00                 2054 	.byte #0x89, #0x00	;  137
      00324B 8C 00                 2055 	.byte #0x8c, #0x00	;  140
      00324D 90 00                 2056 	.byte #0x90, #0x00	;  144
      00324F 93 00                 2057 	.byte #0x93, #0x00	;  147
      003251 96 00                 2058 	.byte #0x96, #0x00	;  150
      003253 99 00                 2059 	.byte #0x99, #0x00	;  153
      003255 9C 00                 2060 	.byte #0x9c, #0x00	;  156
      003257 9F 00                 2061 	.byte #0x9f, #0x00	;  159
      003259 A2 00                 2062 	.byte #0xa2, #0x00	;  162
      00325B A5 00                 2063 	.byte #0xa5, #0x00	;  165
      00325D A8 00                 2064 	.byte #0xa8, #0x00	;  168
      00325F AB 00                 2065 	.byte #0xab, #0x00	;  171
      003261 AE 00                 2066 	.byte #0xae, #0x00	;  174
      003263 B1 00                 2067 	.byte #0xb1, #0x00	;  177
      003265 B3 00                 2068 	.byte #0xb3, #0x00	;  179
      003267 B6 00                 2069 	.byte #0xb6, #0x00	;  182
      003269 B9 00                 2070 	.byte #0xb9, #0x00	;  185
      00326B BC 00                 2071 	.byte #0xbc, #0x00	;  188
      00326D BF 00                 2072 	.byte #0xbf, #0x00	;  191
      00326F C1 00                 2073 	.byte #0xc1, #0x00	;  193
      003271 C4 00                 2074 	.byte #0xc4, #0x00	;  196
      003273 C7 00                 2075 	.byte #0xc7, #0x00	;  199
      003275 C9 00                 2076 	.byte #0xc9, #0x00	;  201
      003277 CC 00                 2077 	.byte #0xcc, #0x00	;  204
      003279 CE 00                 2078 	.byte #0xce, #0x00	;  206
      00327B D1 00                 2079 	.byte #0xd1, #0x00	;  209
      00327D D3 00                 2080 	.byte #0xd3, #0x00	;  211
      00327F D5 00                 2081 	.byte #0xd5, #0x00	;  213
      003281 D8 00                 2082 	.byte #0xd8, #0x00	;  216
      003283 DA 00                 2083 	.byte #0xda, #0x00	;  218
      003285 DC 00                 2084 	.byte #0xdc, #0x00	;  220
      003287 DE 00                 2085 	.byte #0xde, #0x00	;  222
      003289 E0 00                 2086 	.byte #0xe0, #0x00	;  224
      00328B E2 00                 2087 	.byte #0xe2, #0x00	;  226
      00328D E4 00                 2088 	.byte #0xe4, #0x00	;  228
      00328F E6 00                 2089 	.byte #0xe6, #0x00	;  230
      003291 E8 00                 2090 	.byte #0xe8, #0x00	;  232
      003293 EA 00                 2091 	.byte #0xea, #0x00	;  234
      003295 EB 00                 2092 	.byte #0xeb, #0x00	;  235
      003297 ED 00                 2093 	.byte #0xed, #0x00	;  237
      003299 EF 00                 2094 	.byte #0xef, #0x00	;  239
      00329B F0 00                 2095 	.byte #0xf0, #0x00	;  240
      00329D F1 00                 2096 	.byte #0xf1, #0x00	;  241
      00329F F3 00                 2097 	.byte #0xf3, #0x00	;  243
      0032A1 F4 00                 2098 	.byte #0xf4, #0x00	;  244
      0032A3 F5 00                 2099 	.byte #0xf5, #0x00	;  245
      0032A5 F6 00                 2100 	.byte #0xf6, #0x00	;  246
      0032A7 F8 00                 2101 	.byte #0xf8, #0x00	;  248
      0032A9 F9 00                 2102 	.byte #0xf9, #0x00	;  249
      0032AB FA 00                 2103 	.byte #0xfa, #0x00	;  250
      0032AD FA 00                 2104 	.byte #0xfa, #0x00	;  250
      0032AF FB 00                 2105 	.byte #0xfb, #0x00	;  251
      0032B1 FC 00                 2106 	.byte #0xfc, #0x00	;  252
      0032B3 FD 00                 2107 	.byte #0xfd, #0x00	;  253
      0032B5 FD 00                 2108 	.byte #0xfd, #0x00	;  253
      0032B7 FE 00                 2109 	.byte #0xfe, #0x00	;  254
      0032B9 FE 00                 2110 	.byte #0xfe, #0x00	;  254
      0032BB FE 00                 2111 	.byte #0xfe, #0x00	;  254
      0032BD FF 00                 2112 	.byte #0xff, #0x00	;  255
      0032BF FF 00                 2113 	.byte #0xff, #0x00	;  255
      0032C1 FF 00                 2114 	.byte #0xff, #0x00	;  255
      0032C3 FF 00                 2115 	.byte #0xff, #0x00	;  255
      0032C5 FF 00                 2116 	.byte #0xff, #0x00	;  255
      0032C7 FF 00                 2117 	.byte #0xff, #0x00	;  255
      0032C9 FF 00                 2118 	.byte #0xff, #0x00	;  255
      0032CB FE 00                 2119 	.byte #0xfe, #0x00	;  254
      0032CD FE 00                 2120 	.byte #0xfe, #0x00	;  254
      0032CF FE 00                 2121 	.byte #0xfe, #0x00	;  254
      0032D1 FD 00                 2122 	.byte #0xfd, #0x00	;  253
      0032D3 FD 00                 2123 	.byte #0xfd, #0x00	;  253
      0032D5 FC 00                 2124 	.byte #0xfc, #0x00	;  252
      0032D7 FB 00                 2125 	.byte #0xfb, #0x00	;  251
      0032D9 FA 00                 2126 	.byte #0xfa, #0x00	;  250
      0032DB FA 00                 2127 	.byte #0xfa, #0x00	;  250
      0032DD F9 00                 2128 	.byte #0xf9, #0x00	;  249
      0032DF F8 00                 2129 	.byte #0xf8, #0x00	;  248
      0032E1 F6 00                 2130 	.byte #0xf6, #0x00	;  246
      0032E3 F5 00                 2131 	.byte #0xf5, #0x00	;  245
      0032E5 F4 00                 2132 	.byte #0xf4, #0x00	;  244
      0032E7 F3 00                 2133 	.byte #0xf3, #0x00	;  243
      0032E9 F1 00                 2134 	.byte #0xf1, #0x00	;  241
      0032EB F0 00                 2135 	.byte #0xf0, #0x00	;  240
      0032ED EF 00                 2136 	.byte #0xef, #0x00	;  239
      0032EF ED 00                 2137 	.byte #0xed, #0x00	;  237
      0032F1 EB 00                 2138 	.byte #0xeb, #0x00	;  235
      0032F3 EA 00                 2139 	.byte #0xea, #0x00	;  234
      0032F5 E8 00                 2140 	.byte #0xe8, #0x00	;  232
      0032F7 E6 00                 2141 	.byte #0xe6, #0x00	;  230
      0032F9 E4 00                 2142 	.byte #0xe4, #0x00	;  228
      0032FB E2 00                 2143 	.byte #0xe2, #0x00	;  226
      0032FD E0 00                 2144 	.byte #0xe0, #0x00	;  224
      0032FF DE 00                 2145 	.byte #0xde, #0x00	;  222
      003301 DC 00                 2146 	.byte #0xdc, #0x00	;  220
      003303 DA 00                 2147 	.byte #0xda, #0x00	;  218
      003305 D8 00                 2148 	.byte #0xd8, #0x00	;  216
      003307 D5 00                 2149 	.byte #0xd5, #0x00	;  213
      003309 D3 00                 2150 	.byte #0xd3, #0x00	;  211
      00330B D1 00                 2151 	.byte #0xd1, #0x00	;  209
      00330D CE 00                 2152 	.byte #0xce, #0x00	;  206
      00330F CC 00                 2153 	.byte #0xcc, #0x00	;  204
      003311 C9 00                 2154 	.byte #0xc9, #0x00	;  201
      003313 C7 00                 2155 	.byte #0xc7, #0x00	;  199
      003315 C4 00                 2156 	.byte #0xc4, #0x00	;  196
      003317 C1 00                 2157 	.byte #0xc1, #0x00	;  193
      003319 BF 00                 2158 	.byte #0xbf, #0x00	;  191
      00331B BC 00                 2159 	.byte #0xbc, #0x00	;  188
      00331D B9 00                 2160 	.byte #0xb9, #0x00	;  185
      00331F B6 00                 2161 	.byte #0xb6, #0x00	;  182
      003321 B3 00                 2162 	.byte #0xb3, #0x00	;  179
      003323 B1 00                 2163 	.byte #0xb1, #0x00	;  177
      003325 AE 00                 2164 	.byte #0xae, #0x00	;  174
      003327 AB 00                 2165 	.byte #0xab, #0x00	;  171
      003329 A8 00                 2166 	.byte #0xa8, #0x00	;  168
      00332B A5 00                 2167 	.byte #0xa5, #0x00	;  165
      00332D A2 00                 2168 	.byte #0xa2, #0x00	;  162
      00332F 9F 00                 2169 	.byte #0x9f, #0x00	;  159
      003331 9C 00                 2170 	.byte #0x9c, #0x00	;  156
      003333 99 00                 2171 	.byte #0x99, #0x00	;  153
      003335 96 00                 2172 	.byte #0x96, #0x00	;  150
      003337 93 00                 2173 	.byte #0x93, #0x00	;  147
      003339 90 00                 2174 	.byte #0x90, #0x00	;  144
      00333B 8C 00                 2175 	.byte #0x8c, #0x00	;  140
      00333D 89 00                 2176 	.byte #0x89, #0x00	;  137
      00333F 86 00                 2177 	.byte #0x86, #0x00	;  134
      003341 83 00                 2178 	.byte #0x83, #0x00	;  131
      003343 80 00                 2179 	.byte #0x80, #0x00	;  128
      003345 7D 00                 2180 	.byte #0x7d, #0x00	;  125
      003347 7A 00                 2181 	.byte #0x7a, #0x00	;  122
      003349 77 00                 2182 	.byte #0x77, #0x00	;  119
      00334B 74 00                 2183 	.byte #0x74, #0x00	;  116
      00334D 70 00                 2184 	.byte #0x70, #0x00	;  112
      00334F 6D 00                 2185 	.byte #0x6d, #0x00	;  109
      003351 6A 00                 2186 	.byte #0x6a, #0x00	;  106
      003353 67 00                 2187 	.byte #0x67, #0x00	;  103
      003355 64 00                 2188 	.byte #0x64, #0x00	;  100
      003357 61 00                 2189 	.byte #0x61, #0x00	;  97
      003359 5E 00                 2190 	.byte #0x5e, #0x00	;  94
      00335B 5B 00                 2191 	.byte #0x5b, #0x00	;  91
      00335D 58 00                 2192 	.byte #0x58, #0x00	;  88
      00335F 55 00                 2193 	.byte #0x55, #0x00	;  85
      003361 52 00                 2194 	.byte #0x52, #0x00	;  82
      003363 4F 00                 2195 	.byte #0x4f, #0x00	;  79
      003365 4D 00                 2196 	.byte #0x4d, #0x00	;  77
      003367 4A 00                 2197 	.byte #0x4a, #0x00	;  74
      003369 47 00                 2198 	.byte #0x47, #0x00	;  71
      00336B 44 00                 2199 	.byte #0x44, #0x00	;  68
      00336D 41 00                 2200 	.byte #0x41, #0x00	;  65
      00336F 3F 00                 2201 	.byte #0x3f, #0x00	;  63
      003371 3C 00                 2202 	.byte #0x3c, #0x00	;  60
      003373 39 00                 2203 	.byte #0x39, #0x00	;  57
      003375 37 00                 2204 	.byte #0x37, #0x00	;  55
      003377 34 00                 2205 	.byte #0x34, #0x00	;  52
      003379 32 00                 2206 	.byte #0x32, #0x00	;  50
      00337B 2F 00                 2207 	.byte #0x2f, #0x00	;  47
      00337D 2D 00                 2208 	.byte #0x2d, #0x00	;  45
      00337F 2B 00                 2209 	.byte #0x2b, #0x00	;  43
      003381 28 00                 2210 	.byte #0x28, #0x00	;  40
      003383 26 00                 2211 	.byte #0x26, #0x00	;  38
      003385 24 00                 2212 	.byte #0x24, #0x00	;  36
      003387 22 00                 2213 	.byte #0x22, #0x00	;  34
      003389 20 00                 2214 	.byte #0x20, #0x00	;  32
      00338B 1E 00                 2215 	.byte #0x1e, #0x00	;  30
      00338D 1C 00                 2216 	.byte #0x1c, #0x00	;  28
      00338F 1A 00                 2217 	.byte #0x1a, #0x00	;  26
      003391 18 00                 2218 	.byte #0x18, #0x00	;  24
      003393 16 00                 2219 	.byte #0x16, #0x00	;  22
      003395 15 00                 2220 	.byte #0x15, #0x00	;  21
      003397 13 00                 2221 	.byte #0x13, #0x00	;  19
      003399 11 00                 2222 	.byte #0x11, #0x00	;  17
      00339B 10 00                 2223 	.byte #0x10, #0x00	;  16
      00339D 0F 00                 2224 	.byte #0x0f, #0x00	;  15
      00339F 0D 00                 2225 	.byte #0x0d, #0x00	;  13
      0033A1 0C 00                 2226 	.byte #0x0c, #0x00	;  12
      0033A3 0B 00                 2227 	.byte #0x0b, #0x00	;  11
      0033A5 0A 00                 2228 	.byte #0x0a, #0x00	;  10
      0033A7 08 00                 2229 	.byte #0x08, #0x00	;  8
      0033A9 07 00                 2230 	.byte #0x07, #0x00	;  7
      0033AB 06 00                 2231 	.byte #0x06, #0x00	;  6
      0033AD 06 00                 2232 	.byte #0x06, #0x00	;  6
      0033AF 05 00                 2233 	.byte #0x05, #0x00	;  5
      0033B1 04 00                 2234 	.byte #0x04, #0x00	;  4
      0033B3 03 00                 2235 	.byte #0x03, #0x00	;  3
      0033B5 03 00                 2236 	.byte #0x03, #0x00	;  3
      0033B7 02 00                 2237 	.byte #0x02, #0x00	;  2
      0033B9 02 00                 2238 	.byte #0x02, #0x00	;  2
      0033BB 02 00                 2239 	.byte #0x02, #0x00	;  2
      0033BD 01 00                 2240 	.byte #0x01, #0x00	;  1
      0033BF 01 00                 2241 	.byte #0x01, #0x00	;  1
      0033C1 01 00                 2242 	.byte #0x01, #0x00	;  1
      0033C3 01 00                 2243 	.byte #0x01, #0x00	;  1
      0033C5 01 00                 2244 	.byte #0x01, #0x00	;  1
      0033C7 01 00                 2245 	.byte #0x01, #0x00	;  1
      0033C9 01 00                 2246 	.byte #0x01, #0x00	;  1
      0033CB 02 00                 2247 	.byte #0x02, #0x00	;  2
      0033CD 02 00                 2248 	.byte #0x02, #0x00	;  2
      0033CF 02 00                 2249 	.byte #0x02, #0x00	;  2
      0033D1 03 00                 2250 	.byte #0x03, #0x00	;  3
      0033D3 03 00                 2251 	.byte #0x03, #0x00	;  3
      0033D5 04 00                 2252 	.byte #0x04, #0x00	;  4
      0033D7 05 00                 2253 	.byte #0x05, #0x00	;  5
      0033D9 06 00                 2254 	.byte #0x06, #0x00	;  6
      0033DB 06 00                 2255 	.byte #0x06, #0x00	;  6
      0033DD 07 00                 2256 	.byte #0x07, #0x00	;  7
      0033DF 08 00                 2257 	.byte #0x08, #0x00	;  8
      0033E1 0A 00                 2258 	.byte #0x0a, #0x00	;  10
      0033E3 0B 00                 2259 	.byte #0x0b, #0x00	;  11
      0033E5 0C 00                 2260 	.byte #0x0c, #0x00	;  12
      0033E7 0D 00                 2261 	.byte #0x0d, #0x00	;  13
      0033E9 0F 00                 2262 	.byte #0x0f, #0x00	;  15
      0033EB 10 00                 2263 	.byte #0x10, #0x00	;  16
      0033ED 11 00                 2264 	.byte #0x11, #0x00	;  17
      0033EF 13 00                 2265 	.byte #0x13, #0x00	;  19
      0033F1 15 00                 2266 	.byte #0x15, #0x00	;  21
      0033F3 16 00                 2267 	.byte #0x16, #0x00	;  22
      0033F5 18 00                 2268 	.byte #0x18, #0x00	;  24
      0033F7 1A 00                 2269 	.byte #0x1a, #0x00	;  26
      0033F9 1C 00                 2270 	.byte #0x1c, #0x00	;  28
      0033FB 1E 00                 2271 	.byte #0x1e, #0x00	;  30
      0033FD 20 00                 2272 	.byte #0x20, #0x00	;  32
      0033FF 22 00                 2273 	.byte #0x22, #0x00	;  34
      003401 24 00                 2274 	.byte #0x24, #0x00	;  36
      003403 26 00                 2275 	.byte #0x26, #0x00	;  38
      003405 28 00                 2276 	.byte #0x28, #0x00	;  40
      003407 2B 00                 2277 	.byte #0x2b, #0x00	;  43
      003409 2D 00                 2278 	.byte #0x2d, #0x00	;  45
      00340B 2F 00                 2279 	.byte #0x2f, #0x00	;  47
      00340D 32 00                 2280 	.byte #0x32, #0x00	;  50
      00340F 34 00                 2281 	.byte #0x34, #0x00	;  52
      003411 37 00                 2282 	.byte #0x37, #0x00	;  55
      003413 39 00                 2283 	.byte #0x39, #0x00	;  57
      003415 3C 00                 2284 	.byte #0x3c, #0x00	;  60
      003417 3F 00                 2285 	.byte #0x3f, #0x00	;  63
      003419 41 00                 2286 	.byte #0x41, #0x00	;  65
      00341B 44 00                 2287 	.byte #0x44, #0x00	;  68
      00341D 47 00                 2288 	.byte #0x47, #0x00	;  71
      00341F 4A 00                 2289 	.byte #0x4a, #0x00	;  74
      003421 4D 00                 2290 	.byte #0x4d, #0x00	;  77
      003423 4F 00                 2291 	.byte #0x4f, #0x00	;  79
      003425 52 00                 2292 	.byte #0x52, #0x00	;  82
      003427 55 00                 2293 	.byte #0x55, #0x00	;  85
      003429 58 00                 2294 	.byte #0x58, #0x00	;  88
      00342B 5B 00                 2295 	.byte #0x5b, #0x00	;  91
      00342D 5E 00                 2296 	.byte #0x5e, #0x00	;  94
      00342F 61 00                 2297 	.byte #0x61, #0x00	;  97
      003431 64 00                 2298 	.byte #0x64, #0x00	;  100
      003433 67 00                 2299 	.byte #0x67, #0x00	;  103
      003435 6A 00                 2300 	.byte #0x6a, #0x00	;  106
      003437 6D 00                 2301 	.byte #0x6d, #0x00	;  109
      003439 70 00                 2302 	.byte #0x70, #0x00	;  112
      00343B 74 00                 2303 	.byte #0x74, #0x00	;  116
      00343D 77 00                 2304 	.byte #0x77, #0x00	;  119
      00343F 7A 00                 2305 	.byte #0x7a, #0x00	;  122
      003441 7D 00                 2306 	.byte #0x7d, #0x00	;  125
      003443                       2307 _trig_dac_values:
      003443 00 00                 2308 	.byte #0x00, #0x00	;  0
      003445 01 00                 2309 	.byte #0x01, #0x00	;  1
      003447 02 00                 2310 	.byte #0x02, #0x00	;  2
      003449 03 00                 2311 	.byte #0x03, #0x00	;  3
      00344B 04 00                 2312 	.byte #0x04, #0x00	;  4
      00344D 05 00                 2313 	.byte #0x05, #0x00	;  5
      00344F 06 00                 2314 	.byte #0x06, #0x00	;  6
      003451 07 00                 2315 	.byte #0x07, #0x00	;  7
      003453 08 00                 2316 	.byte #0x08, #0x00	;  8
      003455 09 00                 2317 	.byte #0x09, #0x00	;  9
      003457 0A 00                 2318 	.byte #0x0a, #0x00	;  10
      003459 0B 00                 2319 	.byte #0x0b, #0x00	;  11
      00345B 0C 00                 2320 	.byte #0x0c, #0x00	;  12
      00345D 0D 00                 2321 	.byte #0x0d, #0x00	;  13
      00345F 0E 00                 2322 	.byte #0x0e, #0x00	;  14
      003461 0F 00                 2323 	.byte #0x0f, #0x00	;  15
      003463 10 00                 2324 	.byte #0x10, #0x00	;  16
      003465 11 00                 2325 	.byte #0x11, #0x00	;  17
      003467 12 00                 2326 	.byte #0x12, #0x00	;  18
      003469 13 00                 2327 	.byte #0x13, #0x00	;  19
      00346B 14 00                 2328 	.byte #0x14, #0x00	;  20
      00346D 15 00                 2329 	.byte #0x15, #0x00	;  21
      00346F 16 00                 2330 	.byte #0x16, #0x00	;  22
      003471 17 00                 2331 	.byte #0x17, #0x00	;  23
      003473 18 00                 2332 	.byte #0x18, #0x00	;  24
      003475 19 00                 2333 	.byte #0x19, #0x00	;  25
      003477 1A 00                 2334 	.byte #0x1a, #0x00	;  26
      003479 1B 00                 2335 	.byte #0x1b, #0x00	;  27
      00347B 1C 00                 2336 	.byte #0x1c, #0x00	;  28
      00347D 1D 00                 2337 	.byte #0x1d, #0x00	;  29
      00347F 1E 00                 2338 	.byte #0x1e, #0x00	;  30
      003481 1F 00                 2339 	.byte #0x1f, #0x00	;  31
      003483 20 00                 2340 	.byte #0x20, #0x00	;  32
      003485 21 00                 2341 	.byte #0x21, #0x00	;  33
      003487 22 00                 2342 	.byte #0x22, #0x00	;  34
      003489 23 00                 2343 	.byte #0x23, #0x00	;  35
      00348B 24 00                 2344 	.byte #0x24, #0x00	;  36
      00348D 25 00                 2345 	.byte #0x25, #0x00	;  37
      00348F 26 00                 2346 	.byte #0x26, #0x00	;  38
      003491 27 00                 2347 	.byte #0x27, #0x00	;  39
      003493 28 00                 2348 	.byte #0x28, #0x00	;  40
      003495 29 00                 2349 	.byte #0x29, #0x00	;  41
      003497 2A 00                 2350 	.byte #0x2a, #0x00	;  42
      003499 2B 00                 2351 	.byte #0x2b, #0x00	;  43
      00349B 2C 00                 2352 	.byte #0x2c, #0x00	;  44
      00349D 2D 00                 2353 	.byte #0x2d, #0x00	;  45
      00349F 2E 00                 2354 	.byte #0x2e, #0x00	;  46
      0034A1 2F 00                 2355 	.byte #0x2f, #0x00	;  47
      0034A3 30 00                 2356 	.byte #0x30, #0x00	;  48
      0034A5 31 00                 2357 	.byte #0x31, #0x00	;  49
      0034A7 32 00                 2358 	.byte #0x32, #0x00	;  50
      0034A9 33 00                 2359 	.byte #0x33, #0x00	;  51
      0034AB 34 00                 2360 	.byte #0x34, #0x00	;  52
      0034AD 35 00                 2361 	.byte #0x35, #0x00	;  53
      0034AF 36 00                 2362 	.byte #0x36, #0x00	;  54
      0034B1 37 00                 2363 	.byte #0x37, #0x00	;  55
      0034B3 38 00                 2364 	.byte #0x38, #0x00	;  56
      0034B5 39 00                 2365 	.byte #0x39, #0x00	;  57
      0034B7 3A 00                 2366 	.byte #0x3a, #0x00	;  58
      0034B9 3B 00                 2367 	.byte #0x3b, #0x00	;  59
      0034BB 3C 00                 2368 	.byte #0x3c, #0x00	;  60
      0034BD 3D 00                 2369 	.byte #0x3d, #0x00	;  61
      0034BF 3E 00                 2370 	.byte #0x3e, #0x00	;  62
      0034C1 3F 00                 2371 	.byte #0x3f, #0x00	;  63
      0034C3 40 00                 2372 	.byte #0x40, #0x00	;  64
      0034C5 41 00                 2373 	.byte #0x41, #0x00	;  65
      0034C7 42 00                 2374 	.byte #0x42, #0x00	;  66
      0034C9 43 00                 2375 	.byte #0x43, #0x00	;  67
      0034CB 44 00                 2376 	.byte #0x44, #0x00	;  68
      0034CD 45 00                 2377 	.byte #0x45, #0x00	;  69
      0034CF 46 00                 2378 	.byte #0x46, #0x00	;  70
      0034D1 47 00                 2379 	.byte #0x47, #0x00	;  71
      0034D3 48 00                 2380 	.byte #0x48, #0x00	;  72
      0034D5 49 00                 2381 	.byte #0x49, #0x00	;  73
      0034D7 4A 00                 2382 	.byte #0x4a, #0x00	;  74
      0034D9 4B 00                 2383 	.byte #0x4b, #0x00	;  75
      0034DB 4C 00                 2384 	.byte #0x4c, #0x00	;  76
      0034DD 4D 00                 2385 	.byte #0x4d, #0x00	;  77
      0034DF 4E 00                 2386 	.byte #0x4e, #0x00	;  78
      0034E1 4F 00                 2387 	.byte #0x4f, #0x00	;  79
      0034E3 50 00                 2388 	.byte #0x50, #0x00	;  80
      0034E5 51 00                 2389 	.byte #0x51, #0x00	;  81
      0034E7 52 00                 2390 	.byte #0x52, #0x00	;  82
      0034E9 53 00                 2391 	.byte #0x53, #0x00	;  83
      0034EB 54 00                 2392 	.byte #0x54, #0x00	;  84
      0034ED 55 00                 2393 	.byte #0x55, #0x00	;  85
      0034EF 56 00                 2394 	.byte #0x56, #0x00	;  86
      0034F1 57 00                 2395 	.byte #0x57, #0x00	;  87
      0034F3 58 00                 2396 	.byte #0x58, #0x00	;  88
      0034F5 59 00                 2397 	.byte #0x59, #0x00	;  89
      0034F7 5A 00                 2398 	.byte #0x5a, #0x00	;  90
      0034F9 5B 00                 2399 	.byte #0x5b, #0x00	;  91
      0034FB 5C 00                 2400 	.byte #0x5c, #0x00	;  92
      0034FD 5D 00                 2401 	.byte #0x5d, #0x00	;  93
      0034FF 5E 00                 2402 	.byte #0x5e, #0x00	;  94
      003501 5F 00                 2403 	.byte #0x5f, #0x00	;  95
      003503 60 00                 2404 	.byte #0x60, #0x00	;  96
      003505 61 00                 2405 	.byte #0x61, #0x00	;  97
      003507 62 00                 2406 	.byte #0x62, #0x00	;  98
      003509 63 00                 2407 	.byte #0x63, #0x00	;  99
      00350B 64 00                 2408 	.byte #0x64, #0x00	;  100
      00350D 65 00                 2409 	.byte #0x65, #0x00	;  101
      00350F 66 00                 2410 	.byte #0x66, #0x00	;  102
      003511 67 00                 2411 	.byte #0x67, #0x00	;  103
      003513 68 00                 2412 	.byte #0x68, #0x00	;  104
      003515 69 00                 2413 	.byte #0x69, #0x00	;  105
      003517 6A 00                 2414 	.byte #0x6a, #0x00	;  106
      003519 6B 00                 2415 	.byte #0x6b, #0x00	;  107
      00351B 6C 00                 2416 	.byte #0x6c, #0x00	;  108
      00351D 6D 00                 2417 	.byte #0x6d, #0x00	;  109
      00351F 6E 00                 2418 	.byte #0x6e, #0x00	;  110
      003521 6F 00                 2419 	.byte #0x6f, #0x00	;  111
      003523 70 00                 2420 	.byte #0x70, #0x00	;  112
      003525 71 00                 2421 	.byte #0x71, #0x00	;  113
      003527 72 00                 2422 	.byte #0x72, #0x00	;  114
      003529 73 00                 2423 	.byte #0x73, #0x00	;  115
      00352B 74 00                 2424 	.byte #0x74, #0x00	;  116
      00352D 75 00                 2425 	.byte #0x75, #0x00	;  117
      00352F 76 00                 2426 	.byte #0x76, #0x00	;  118
      003531 77 00                 2427 	.byte #0x77, #0x00	;  119
      003533 78 00                 2428 	.byte #0x78, #0x00	;  120
      003535 79 00                 2429 	.byte #0x79, #0x00	;  121
      003537 7A 00                 2430 	.byte #0x7a, #0x00	;  122
      003539 7B 00                 2431 	.byte #0x7b, #0x00	;  123
      00353B 7C 00                 2432 	.byte #0x7c, #0x00	;  124
      00353D 7D 00                 2433 	.byte #0x7d, #0x00	;  125
      00353F 7E 00                 2434 	.byte #0x7e, #0x00	;  126
      003541 7F 00                 2435 	.byte #0x7f, #0x00	;  127
      003543 80 00                 2436 	.byte #0x80, #0x00	;  128
      003545 81 00                 2437 	.byte #0x81, #0x00	;  129
      003547 82 00                 2438 	.byte #0x82, #0x00	;  130
      003549 83 00                 2439 	.byte #0x83, #0x00	;  131
      00354B 84 00                 2440 	.byte #0x84, #0x00	;  132
      00354D 85 00                 2441 	.byte #0x85, #0x00	;  133
      00354F 86 00                 2442 	.byte #0x86, #0x00	;  134
      003551 87 00                 2443 	.byte #0x87, #0x00	;  135
      003553 88 00                 2444 	.byte #0x88, #0x00	;  136
      003555 89 00                 2445 	.byte #0x89, #0x00	;  137
      003557 8A 00                 2446 	.byte #0x8a, #0x00	;  138
      003559 8B 00                 2447 	.byte #0x8b, #0x00	;  139
      00355B 8C 00                 2448 	.byte #0x8c, #0x00	;  140
      00355D 8D 00                 2449 	.byte #0x8d, #0x00	;  141
      00355F 8E 00                 2450 	.byte #0x8e, #0x00	;  142
      003561 8F 00                 2451 	.byte #0x8f, #0x00	;  143
      003563 90 00                 2452 	.byte #0x90, #0x00	;  144
      003565 91 00                 2453 	.byte #0x91, #0x00	;  145
      003567 92 00                 2454 	.byte #0x92, #0x00	;  146
      003569 93 00                 2455 	.byte #0x93, #0x00	;  147
      00356B 94 00                 2456 	.byte #0x94, #0x00	;  148
      00356D 95 00                 2457 	.byte #0x95, #0x00	;  149
      00356F 96 00                 2458 	.byte #0x96, #0x00	;  150
      003571 97 00                 2459 	.byte #0x97, #0x00	;  151
      003573 98 00                 2460 	.byte #0x98, #0x00	;  152
      003575 99 00                 2461 	.byte #0x99, #0x00	;  153
      003577 9A 00                 2462 	.byte #0x9a, #0x00	;  154
      003579 9B 00                 2463 	.byte #0x9b, #0x00	;  155
      00357B 9C 00                 2464 	.byte #0x9c, #0x00	;  156
      00357D 9D 00                 2465 	.byte #0x9d, #0x00	;  157
      00357F 9E 00                 2466 	.byte #0x9e, #0x00	;  158
      003581 9F 00                 2467 	.byte #0x9f, #0x00	;  159
      003583 A0 00                 2468 	.byte #0xa0, #0x00	;  160
      003585 A1 00                 2469 	.byte #0xa1, #0x00	;  161
      003587 A2 00                 2470 	.byte #0xa2, #0x00	;  162
      003589 A3 00                 2471 	.byte #0xa3, #0x00	;  163
      00358B A4 00                 2472 	.byte #0xa4, #0x00	;  164
      00358D A5 00                 2473 	.byte #0xa5, #0x00	;  165
      00358F A6 00                 2474 	.byte #0xa6, #0x00	;  166
      003591 A7 00                 2475 	.byte #0xa7, #0x00	;  167
      003593 A8 00                 2476 	.byte #0xa8, #0x00	;  168
      003595 A9 00                 2477 	.byte #0xa9, #0x00	;  169
      003597 AA 00                 2478 	.byte #0xaa, #0x00	;  170
      003599 AB 00                 2479 	.byte #0xab, #0x00	;  171
      00359B AC 00                 2480 	.byte #0xac, #0x00	;  172
      00359D AD 00                 2481 	.byte #0xad, #0x00	;  173
      00359F AE 00                 2482 	.byte #0xae, #0x00	;  174
      0035A1 AF 00                 2483 	.byte #0xaf, #0x00	;  175
      0035A3 B0 00                 2484 	.byte #0xb0, #0x00	;  176
      0035A5 B1 00                 2485 	.byte #0xb1, #0x00	;  177
      0035A7 B2 00                 2486 	.byte #0xb2, #0x00	;  178
      0035A9 B3 00                 2487 	.byte #0xb3, #0x00	;  179
      0035AB B4 00                 2488 	.byte #0xb4, #0x00	;  180
      0035AD B5 00                 2489 	.byte #0xb5, #0x00	;  181
      0035AF B6 00                 2490 	.byte #0xb6, #0x00	;  182
      0035B1 B7 00                 2491 	.byte #0xb7, #0x00	;  183
      0035B3 B8 00                 2492 	.byte #0xb8, #0x00	;  184
      0035B5 B9 00                 2493 	.byte #0xb9, #0x00	;  185
      0035B7 BA 00                 2494 	.byte #0xba, #0x00	;  186
      0035B9 BB 00                 2495 	.byte #0xbb, #0x00	;  187
      0035BB BC 00                 2496 	.byte #0xbc, #0x00	;  188
      0035BD BD 00                 2497 	.byte #0xbd, #0x00	;  189
      0035BF BE 00                 2498 	.byte #0xbe, #0x00	;  190
      0035C1 BF 00                 2499 	.byte #0xbf, #0x00	;  191
      0035C3 C0 00                 2500 	.byte #0xc0, #0x00	;  192
      0035C5 C1 00                 2501 	.byte #0xc1, #0x00	;  193
      0035C7 C2 00                 2502 	.byte #0xc2, #0x00	;  194
      0035C9 C3 00                 2503 	.byte #0xc3, #0x00	;  195
      0035CB C4 00                 2504 	.byte #0xc4, #0x00	;  196
      0035CD C5 00                 2505 	.byte #0xc5, #0x00	;  197
      0035CF C6 00                 2506 	.byte #0xc6, #0x00	;  198
      0035D1 C7 00                 2507 	.byte #0xc7, #0x00	;  199
      0035D3 C8 00                 2508 	.byte #0xc8, #0x00	;  200
      0035D5 C9 00                 2509 	.byte #0xc9, #0x00	;  201
      0035D7 CA 00                 2510 	.byte #0xca, #0x00	;  202
      0035D9 CB 00                 2511 	.byte #0xcb, #0x00	;  203
      0035DB CC 00                 2512 	.byte #0xcc, #0x00	;  204
      0035DD CD 00                 2513 	.byte #0xcd, #0x00	;  205
      0035DF CE 00                 2514 	.byte #0xce, #0x00	;  206
      0035E1 CF 00                 2515 	.byte #0xcf, #0x00	;  207
      0035E3 D0 00                 2516 	.byte #0xd0, #0x00	;  208
      0035E5 D1 00                 2517 	.byte #0xd1, #0x00	;  209
      0035E7 D2 00                 2518 	.byte #0xd2, #0x00	;  210
      0035E9 D3 00                 2519 	.byte #0xd3, #0x00	;  211
      0035EB D4 00                 2520 	.byte #0xd4, #0x00	;  212
      0035ED D5 00                 2521 	.byte #0xd5, #0x00	;  213
      0035EF D6 00                 2522 	.byte #0xd6, #0x00	;  214
      0035F1 D7 00                 2523 	.byte #0xd7, #0x00	;  215
      0035F3 D8 00                 2524 	.byte #0xd8, #0x00	;  216
      0035F5 D9 00                 2525 	.byte #0xd9, #0x00	;  217
      0035F7 DA 00                 2526 	.byte #0xda, #0x00	;  218
      0035F9 DB 00                 2527 	.byte #0xdb, #0x00	;  219
      0035FB DC 00                 2528 	.byte #0xdc, #0x00	;  220
      0035FD DD 00                 2529 	.byte #0xdd, #0x00	;  221
      0035FF DE 00                 2530 	.byte #0xde, #0x00	;  222
      003601 DF 00                 2531 	.byte #0xdf, #0x00	;  223
      003603 E0 00                 2532 	.byte #0xe0, #0x00	;  224
      003605 E1 00                 2533 	.byte #0xe1, #0x00	;  225
      003607 E2 00                 2534 	.byte #0xe2, #0x00	;  226
      003609 E3 00                 2535 	.byte #0xe3, #0x00	;  227
      00360B E4 00                 2536 	.byte #0xe4, #0x00	;  228
      00360D E5 00                 2537 	.byte #0xe5, #0x00	;  229
      00360F E6 00                 2538 	.byte #0xe6, #0x00	;  230
      003611 E7 00                 2539 	.byte #0xe7, #0x00	;  231
      003613 E8 00                 2540 	.byte #0xe8, #0x00	;  232
      003615 E9 00                 2541 	.byte #0xe9, #0x00	;  233
      003617 EA 00                 2542 	.byte #0xea, #0x00	;  234
      003619 EB 00                 2543 	.byte #0xeb, #0x00	;  235
      00361B EC 00                 2544 	.byte #0xec, #0x00	;  236
      00361D ED 00                 2545 	.byte #0xed, #0x00	;  237
      00361F EE 00                 2546 	.byte #0xee, #0x00	;  238
      003621 EF 00                 2547 	.byte #0xef, #0x00	;  239
      003623 F0 00                 2548 	.byte #0xf0, #0x00	;  240
      003625 F1 00                 2549 	.byte #0xf1, #0x00	;  241
      003627 F2 00                 2550 	.byte #0xf2, #0x00	;  242
      003629 F3 00                 2551 	.byte #0xf3, #0x00	;  243
      00362B F4 00                 2552 	.byte #0xf4, #0x00	;  244
      00362D F5 00                 2553 	.byte #0xf5, #0x00	;  245
      00362F F6 00                 2554 	.byte #0xf6, #0x00	;  246
      003631 F7 00                 2555 	.byte #0xf7, #0x00	;  247
      003633 F8 00                 2556 	.byte #0xf8, #0x00	;  248
      003635 F9 00                 2557 	.byte #0xf9, #0x00	;  249
      003637 FA 00                 2558 	.byte #0xfa, #0x00	;  250
      003639 FB 00                 2559 	.byte #0xfb, #0x00	;  251
      00363B FC 00                 2560 	.byte #0xfc, #0x00	;  252
      00363D FD 00                 2561 	.byte #0xfd, #0x00	;  253
      00363F FE 00                 2562 	.byte #0xfe, #0x00	;  254
      003641 FF 00                 2563 	.byte #0xff, #0x00	;  255
      003643 FF 00                 2564 	.byte #0xff, #0x00	;  255
      003645 FE 00                 2565 	.byte #0xfe, #0x00	;  254
      003647 FD 00                 2566 	.byte #0xfd, #0x00	;  253
      003649 FC 00                 2567 	.byte #0xfc, #0x00	;  252
      00364B FB 00                 2568 	.byte #0xfb, #0x00	;  251
      00364D FA 00                 2569 	.byte #0xfa, #0x00	;  250
      00364F F9 00                 2570 	.byte #0xf9, #0x00	;  249
      003651 F8 00                 2571 	.byte #0xf8, #0x00	;  248
      003653 F7 00                 2572 	.byte #0xf7, #0x00	;  247
      003655 F6 00                 2573 	.byte #0xf6, #0x00	;  246
      003657 F5 00                 2574 	.byte #0xf5, #0x00	;  245
      003659 F4 00                 2575 	.byte #0xf4, #0x00	;  244
      00365B F3 00                 2576 	.byte #0xf3, #0x00	;  243
      00365D F2 00                 2577 	.byte #0xf2, #0x00	;  242
      00365F F1 00                 2578 	.byte #0xf1, #0x00	;  241
      003661 F0 00                 2579 	.byte #0xf0, #0x00	;  240
      003663 EF 00                 2580 	.byte #0xef, #0x00	;  239
      003665 EE 00                 2581 	.byte #0xee, #0x00	;  238
      003667 ED 00                 2582 	.byte #0xed, #0x00	;  237
      003669 EC 00                 2583 	.byte #0xec, #0x00	;  236
      00366B EB 00                 2584 	.byte #0xeb, #0x00	;  235
      00366D EA 00                 2585 	.byte #0xea, #0x00	;  234
      00366F E9 00                 2586 	.byte #0xe9, #0x00	;  233
      003671 E8 00                 2587 	.byte #0xe8, #0x00	;  232
      003673 E7 00                 2588 	.byte #0xe7, #0x00	;  231
      003675 E6 00                 2589 	.byte #0xe6, #0x00	;  230
      003677 E5 00                 2590 	.byte #0xe5, #0x00	;  229
      003679 E4 00                 2591 	.byte #0xe4, #0x00	;  228
      00367B E3 00                 2592 	.byte #0xe3, #0x00	;  227
      00367D E2 00                 2593 	.byte #0xe2, #0x00	;  226
      00367F E1 00                 2594 	.byte #0xe1, #0x00	;  225
      003681 E0 00                 2595 	.byte #0xe0, #0x00	;  224
      003683 DF 00                 2596 	.byte #0xdf, #0x00	;  223
      003685 DE 00                 2597 	.byte #0xde, #0x00	;  222
      003687 DD 00                 2598 	.byte #0xdd, #0x00	;  221
      003689 DC 00                 2599 	.byte #0xdc, #0x00	;  220
      00368B DB 00                 2600 	.byte #0xdb, #0x00	;  219
      00368D DA 00                 2601 	.byte #0xda, #0x00	;  218
      00368F D9 00                 2602 	.byte #0xd9, #0x00	;  217
      003691 D8 00                 2603 	.byte #0xd8, #0x00	;  216
      003693 D7 00                 2604 	.byte #0xd7, #0x00	;  215
      003695 D6 00                 2605 	.byte #0xd6, #0x00	;  214
      003697 D5 00                 2606 	.byte #0xd5, #0x00	;  213
      003699 D4 00                 2607 	.byte #0xd4, #0x00	;  212
      00369B D3 00                 2608 	.byte #0xd3, #0x00	;  211
      00369D D2 00                 2609 	.byte #0xd2, #0x00	;  210
      00369F D1 00                 2610 	.byte #0xd1, #0x00	;  209
      0036A1 D0 00                 2611 	.byte #0xd0, #0x00	;  208
      0036A3 CF 00                 2612 	.byte #0xcf, #0x00	;  207
      0036A5 CE 00                 2613 	.byte #0xce, #0x00	;  206
      0036A7 CD 00                 2614 	.byte #0xcd, #0x00	;  205
      0036A9 CC 00                 2615 	.byte #0xcc, #0x00	;  204
      0036AB CB 00                 2616 	.byte #0xcb, #0x00	;  203
      0036AD CA 00                 2617 	.byte #0xca, #0x00	;  202
      0036AF C9 00                 2618 	.byte #0xc9, #0x00	;  201
      0036B1 C8 00                 2619 	.byte #0xc8, #0x00	;  200
      0036B3 C7 00                 2620 	.byte #0xc7, #0x00	;  199
      0036B5 C6 00                 2621 	.byte #0xc6, #0x00	;  198
      0036B7 C5 00                 2622 	.byte #0xc5, #0x00	;  197
      0036B9 C4 00                 2623 	.byte #0xc4, #0x00	;  196
      0036BB C3 00                 2624 	.byte #0xc3, #0x00	;  195
      0036BD C2 00                 2625 	.byte #0xc2, #0x00	;  194
      0036BF C1 00                 2626 	.byte #0xc1, #0x00	;  193
      0036C1 C0 00                 2627 	.byte #0xc0, #0x00	;  192
      0036C3 BF 00                 2628 	.byte #0xbf, #0x00	;  191
      0036C5 BE 00                 2629 	.byte #0xbe, #0x00	;  190
      0036C7 BD 00                 2630 	.byte #0xbd, #0x00	;  189
      0036C9 BC 00                 2631 	.byte #0xbc, #0x00	;  188
      0036CB BB 00                 2632 	.byte #0xbb, #0x00	;  187
      0036CD BA 00                 2633 	.byte #0xba, #0x00	;  186
      0036CF B9 00                 2634 	.byte #0xb9, #0x00	;  185
      0036D1 B8 00                 2635 	.byte #0xb8, #0x00	;  184
      0036D3 B7 00                 2636 	.byte #0xb7, #0x00	;  183
      0036D5 B6 00                 2637 	.byte #0xb6, #0x00	;  182
      0036D7 B5 00                 2638 	.byte #0xb5, #0x00	;  181
      0036D9 B4 00                 2639 	.byte #0xb4, #0x00	;  180
      0036DB B3 00                 2640 	.byte #0xb3, #0x00	;  179
      0036DD B2 00                 2641 	.byte #0xb2, #0x00	;  178
      0036DF B1 00                 2642 	.byte #0xb1, #0x00	;  177
      0036E1 B0 00                 2643 	.byte #0xb0, #0x00	;  176
      0036E3 AF 00                 2644 	.byte #0xaf, #0x00	;  175
      0036E5 AE 00                 2645 	.byte #0xae, #0x00	;  174
      0036E7 AD 00                 2646 	.byte #0xad, #0x00	;  173
      0036E9 AC 00                 2647 	.byte #0xac, #0x00	;  172
      0036EB AB 00                 2648 	.byte #0xab, #0x00	;  171
      0036ED AA 00                 2649 	.byte #0xaa, #0x00	;  170
      0036EF A9 00                 2650 	.byte #0xa9, #0x00	;  169
      0036F1 A8 00                 2651 	.byte #0xa8, #0x00	;  168
      0036F3 A7 00                 2652 	.byte #0xa7, #0x00	;  167
      0036F5 A6 00                 2653 	.byte #0xa6, #0x00	;  166
      0036F7 A5 00                 2654 	.byte #0xa5, #0x00	;  165
      0036F9 A4 00                 2655 	.byte #0xa4, #0x00	;  164
      0036FB A3 00                 2656 	.byte #0xa3, #0x00	;  163
      0036FD A2 00                 2657 	.byte #0xa2, #0x00	;  162
      0036FF A1 00                 2658 	.byte #0xa1, #0x00	;  161
      003701 A0 00                 2659 	.byte #0xa0, #0x00	;  160
      003703 9F 00                 2660 	.byte #0x9f, #0x00	;  159
      003705 9E 00                 2661 	.byte #0x9e, #0x00	;  158
      003707 9D 00                 2662 	.byte #0x9d, #0x00	;  157
      003709 9C 00                 2663 	.byte #0x9c, #0x00	;  156
      00370B 9B 00                 2664 	.byte #0x9b, #0x00	;  155
      00370D 9A 00                 2665 	.byte #0x9a, #0x00	;  154
      00370F 99 00                 2666 	.byte #0x99, #0x00	;  153
      003711 98 00                 2667 	.byte #0x98, #0x00	;  152
      003713 97 00                 2668 	.byte #0x97, #0x00	;  151
      003715 96 00                 2669 	.byte #0x96, #0x00	;  150
      003717 95 00                 2670 	.byte #0x95, #0x00	;  149
      003719 94 00                 2671 	.byte #0x94, #0x00	;  148
      00371B 93 00                 2672 	.byte #0x93, #0x00	;  147
      00371D 92 00                 2673 	.byte #0x92, #0x00	;  146
      00371F 91 00                 2674 	.byte #0x91, #0x00	;  145
      003721 90 00                 2675 	.byte #0x90, #0x00	;  144
      003723 8F 00                 2676 	.byte #0x8f, #0x00	;  143
      003725 8E 00                 2677 	.byte #0x8e, #0x00	;  142
      003727 8D 00                 2678 	.byte #0x8d, #0x00	;  141
      003729 8C 00                 2679 	.byte #0x8c, #0x00	;  140
      00372B 8B 00                 2680 	.byte #0x8b, #0x00	;  139
      00372D 8A 00                 2681 	.byte #0x8a, #0x00	;  138
      00372F 89 00                 2682 	.byte #0x89, #0x00	;  137
      003731 88 00                 2683 	.byte #0x88, #0x00	;  136
      003733 87 00                 2684 	.byte #0x87, #0x00	;  135
      003735 86 00                 2685 	.byte #0x86, #0x00	;  134
      003737 85 00                 2686 	.byte #0x85, #0x00	;  133
      003739 84 00                 2687 	.byte #0x84, #0x00	;  132
      00373B 83 00                 2688 	.byte #0x83, #0x00	;  131
      00373D 82 00                 2689 	.byte #0x82, #0x00	;  130
      00373F 81 00                 2690 	.byte #0x81, #0x00	;  129
      003741 80 00                 2691 	.byte #0x80, #0x00	;  128
      003743 7F 00                 2692 	.byte #0x7f, #0x00	;  127
      003745 7E 00                 2693 	.byte #0x7e, #0x00	;  126
      003747 7D 00                 2694 	.byte #0x7d, #0x00	;  125
      003749 7C 00                 2695 	.byte #0x7c, #0x00	;  124
      00374B 7B 00                 2696 	.byte #0x7b, #0x00	;  123
      00374D 7A 00                 2697 	.byte #0x7a, #0x00	;  122
      00374F 79 00                 2698 	.byte #0x79, #0x00	;  121
      003751 78 00                 2699 	.byte #0x78, #0x00	;  120
      003753 77 00                 2700 	.byte #0x77, #0x00	;  119
      003755 76 00                 2701 	.byte #0x76, #0x00	;  118
      003757 75 00                 2702 	.byte #0x75, #0x00	;  117
      003759 74 00                 2703 	.byte #0x74, #0x00	;  116
      00375B 73 00                 2704 	.byte #0x73, #0x00	;  115
      00375D 72 00                 2705 	.byte #0x72, #0x00	;  114
      00375F 71 00                 2706 	.byte #0x71, #0x00	;  113
      003761 70 00                 2707 	.byte #0x70, #0x00	;  112
      003763 6F 00                 2708 	.byte #0x6f, #0x00	;  111
      003765 6E 00                 2709 	.byte #0x6e, #0x00	;  110
      003767 6D 00                 2710 	.byte #0x6d, #0x00	;  109
      003769 6C 00                 2711 	.byte #0x6c, #0x00	;  108
      00376B 6B 00                 2712 	.byte #0x6b, #0x00	;  107
      00376D 6A 00                 2713 	.byte #0x6a, #0x00	;  106
      00376F 69 00                 2714 	.byte #0x69, #0x00	;  105
      003771 68 00                 2715 	.byte #0x68, #0x00	;  104
      003773 67 00                 2716 	.byte #0x67, #0x00	;  103
      003775 66 00                 2717 	.byte #0x66, #0x00	;  102
      003777 65 00                 2718 	.byte #0x65, #0x00	;  101
      003779 64 00                 2719 	.byte #0x64, #0x00	;  100
      00377B 63 00                 2720 	.byte #0x63, #0x00	;  99
      00377D 62 00                 2721 	.byte #0x62, #0x00	;  98
      00377F 61 00                 2722 	.byte #0x61, #0x00	;  97
      003781 60 00                 2723 	.byte #0x60, #0x00	;  96
      003783 5F 00                 2724 	.byte #0x5f, #0x00	;  95
      003785 5E 00                 2725 	.byte #0x5e, #0x00	;  94
      003787 5D 00                 2726 	.byte #0x5d, #0x00	;  93
      003789 5C 00                 2727 	.byte #0x5c, #0x00	;  92
      00378B 5B 00                 2728 	.byte #0x5b, #0x00	;  91
      00378D 5A 00                 2729 	.byte #0x5a, #0x00	;  90
      00378F 59 00                 2730 	.byte #0x59, #0x00	;  89
      003791 58 00                 2731 	.byte #0x58, #0x00	;  88
      003793 57 00                 2732 	.byte #0x57, #0x00	;  87
      003795 56 00                 2733 	.byte #0x56, #0x00	;  86
      003797 55 00                 2734 	.byte #0x55, #0x00	;  85
      003799 54 00                 2735 	.byte #0x54, #0x00	;  84
      00379B 53 00                 2736 	.byte #0x53, #0x00	;  83
      00379D 52 00                 2737 	.byte #0x52, #0x00	;  82
      00379F 51 00                 2738 	.byte #0x51, #0x00	;  81
      0037A1 50 00                 2739 	.byte #0x50, #0x00	;  80
      0037A3 4F 00                 2740 	.byte #0x4f, #0x00	;  79
      0037A5 4E 00                 2741 	.byte #0x4e, #0x00	;  78
      0037A7 4D 00                 2742 	.byte #0x4d, #0x00	;  77
      0037A9 4C 00                 2743 	.byte #0x4c, #0x00	;  76
      0037AB 4B 00                 2744 	.byte #0x4b, #0x00	;  75
      0037AD 4A 00                 2745 	.byte #0x4a, #0x00	;  74
      0037AF 49 00                 2746 	.byte #0x49, #0x00	;  73
      0037B1 48 00                 2747 	.byte #0x48, #0x00	;  72
      0037B3 47 00                 2748 	.byte #0x47, #0x00	;  71
      0037B5 46 00                 2749 	.byte #0x46, #0x00	;  70
      0037B7 45 00                 2750 	.byte #0x45, #0x00	;  69
      0037B9 44 00                 2751 	.byte #0x44, #0x00	;  68
      0037BB 43 00                 2752 	.byte #0x43, #0x00	;  67
      0037BD 42 00                 2753 	.byte #0x42, #0x00	;  66
      0037BF 41 00                 2754 	.byte #0x41, #0x00	;  65
      0037C1 40 00                 2755 	.byte #0x40, #0x00	;  64
      0037C3 3F 00                 2756 	.byte #0x3f, #0x00	;  63
      0037C5 3E 00                 2757 	.byte #0x3e, #0x00	;  62
      0037C7 3D 00                 2758 	.byte #0x3d, #0x00	;  61
      0037C9 3C 00                 2759 	.byte #0x3c, #0x00	;  60
      0037CB 3B 00                 2760 	.byte #0x3b, #0x00	;  59
      0037CD 3A 00                 2761 	.byte #0x3a, #0x00	;  58
      0037CF 39 00                 2762 	.byte #0x39, #0x00	;  57
      0037D1 38 00                 2763 	.byte #0x38, #0x00	;  56
      0037D3 37 00                 2764 	.byte #0x37, #0x00	;  55
      0037D5 36 00                 2765 	.byte #0x36, #0x00	;  54
      0037D7 35 00                 2766 	.byte #0x35, #0x00	;  53
      0037D9 34 00                 2767 	.byte #0x34, #0x00	;  52
      0037DB 33 00                 2768 	.byte #0x33, #0x00	;  51
      0037DD 32 00                 2769 	.byte #0x32, #0x00	;  50
      0037DF 31 00                 2770 	.byte #0x31, #0x00	;  49
      0037E1 30 00                 2771 	.byte #0x30, #0x00	;  48
      0037E3 2F 00                 2772 	.byte #0x2f, #0x00	;  47
      0037E5 2E 00                 2773 	.byte #0x2e, #0x00	;  46
      0037E7 2D 00                 2774 	.byte #0x2d, #0x00	;  45
      0037E9 2C 00                 2775 	.byte #0x2c, #0x00	;  44
      0037EB 2B 00                 2776 	.byte #0x2b, #0x00	;  43
      0037ED 2A 00                 2777 	.byte #0x2a, #0x00	;  42
      0037EF 29 00                 2778 	.byte #0x29, #0x00	;  41
      0037F1 28 00                 2779 	.byte #0x28, #0x00	;  40
      0037F3 27 00                 2780 	.byte #0x27, #0x00	;  39
      0037F5 26 00                 2781 	.byte #0x26, #0x00	;  38
      0037F7 25 00                 2782 	.byte #0x25, #0x00	;  37
      0037F9 24 00                 2783 	.byte #0x24, #0x00	;  36
      0037FB 23 00                 2784 	.byte #0x23, #0x00	;  35
      0037FD 22 00                 2785 	.byte #0x22, #0x00	;  34
      0037FF 21 00                 2786 	.byte #0x21, #0x00	;  33
      003801 20 00                 2787 	.byte #0x20, #0x00	;  32
      003803 1F 00                 2788 	.byte #0x1f, #0x00	;  31
      003805 1E 00                 2789 	.byte #0x1e, #0x00	;  30
      003807 1D 00                 2790 	.byte #0x1d, #0x00	;  29
      003809 1C 00                 2791 	.byte #0x1c, #0x00	;  28
      00380B 1B 00                 2792 	.byte #0x1b, #0x00	;  27
      00380D 1A 00                 2793 	.byte #0x1a, #0x00	;  26
      00380F 19 00                 2794 	.byte #0x19, #0x00	;  25
      003811 18 00                 2795 	.byte #0x18, #0x00	;  24
      003813 17 00                 2796 	.byte #0x17, #0x00	;  23
      003815 16 00                 2797 	.byte #0x16, #0x00	;  22
      003817 15 00                 2798 	.byte #0x15, #0x00	;  21
      003819 14 00                 2799 	.byte #0x14, #0x00	;  20
      00381B 13 00                 2800 	.byte #0x13, #0x00	;  19
      00381D 12 00                 2801 	.byte #0x12, #0x00	;  18
      00381F 11 00                 2802 	.byte #0x11, #0x00	;  17
      003821 10 00                 2803 	.byte #0x10, #0x00	;  16
      003823 0F 00                 2804 	.byte #0x0f, #0x00	;  15
      003825 0E 00                 2805 	.byte #0x0e, #0x00	;  14
      003827 0D 00                 2806 	.byte #0x0d, #0x00	;  13
      003829 0C 00                 2807 	.byte #0x0c, #0x00	;  12
      00382B 0B 00                 2808 	.byte #0x0b, #0x00	;  11
      00382D 0A 00                 2809 	.byte #0x0a, #0x00	;  10
      00382F 09 00                 2810 	.byte #0x09, #0x00	;  9
      003831 08 00                 2811 	.byte #0x08, #0x00	;  8
      003833 07 00                 2812 	.byte #0x07, #0x00	;  7
      003835 06 00                 2813 	.byte #0x06, #0x00	;  6
      003837 05 00                 2814 	.byte #0x05, #0x00	;  5
      003839 04 00                 2815 	.byte #0x04, #0x00	;  4
      00383B 03 00                 2816 	.byte #0x03, #0x00	;  3
      00383D 02 00                 2817 	.byte #0x02, #0x00	;  2
      00383F 01 00                 2818 	.byte #0x01, #0x00	;  1
      003841 00 00                 2819 	.byte #0x00, #0x00	;  0
                                   2820 	.area CONST   (CODE)
      003843                       2821 ___str_0:
      003843 0A                    2822 	.db 0x0a
      003844 0D                    2823 	.db 0x0d
      003845 E2                    2824 	.db 0xe2
      003846 94                    2825 	.db 0x94
      003847 8C                    2826 	.db 0x8c
      003848 E2                    2827 	.db 0xe2
      003849 94                    2828 	.db 0x94
      00384A 80                    2829 	.db 0x80
      00384B E2                    2830 	.db 0xe2
      00384C 94                    2831 	.db 0x94
      00384D 80                    2832 	.db 0x80
      00384E E2                    2833 	.db 0xe2
      00384F 94                    2834 	.db 0x94
      003850 80                    2835 	.db 0x80
      003851 E2                    2836 	.db 0xe2
      003852 94                    2837 	.db 0x94
      003853 80                    2838 	.db 0x80
      003854 E2                    2839 	.db 0xe2
      003855 94                    2840 	.db 0x94
      003856 80                    2841 	.db 0x80
      003857 E2                    2842 	.db 0xe2
      003858 94                    2843 	.db 0x94
      003859 80                    2844 	.db 0x80
      00385A E2                    2845 	.db 0xe2
      00385B 94                    2846 	.db 0x94
      00385C 80                    2847 	.db 0x80
      00385D E2                    2848 	.db 0xe2
      00385E 94                    2849 	.db 0x94
      00385F 80                    2850 	.db 0x80
      003860 E2                    2851 	.db 0xe2
      003861 94                    2852 	.db 0x94
      003862 80                    2853 	.db 0x80
      003863 E2                    2854 	.db 0xe2
      003864 94                    2855 	.db 0x94
      003865 80                    2856 	.db 0x80
      003866 E2                    2857 	.db 0xe2
      003867 94                    2858 	.db 0x94
      003868 80                    2859 	.db 0x80
      003869 E2                    2860 	.db 0xe2
      00386A 94                    2861 	.db 0x94
      00386B 80                    2862 	.db 0x80
      00386C E2                    2863 	.db 0xe2
      00386D 94                    2864 	.db 0x94
      00386E 80                    2865 	.db 0x80
      00386F E2                    2866 	.db 0xe2
      003870 94                    2867 	.db 0x94
      003871 80                    2868 	.db 0x80
      003872 E2                    2869 	.db 0xe2
      003873 94                    2870 	.db 0x94
      003874 80                    2871 	.db 0x80
      003875 E2                    2872 	.db 0xe2
      003876 94                    2873 	.db 0x94
      003877 80                    2874 	.db 0x80
      003878 E2                    2875 	.db 0xe2
      003879 94                    2876 	.db 0x94
      00387A 80                    2877 	.db 0x80
      00387B E2                    2878 	.db 0xe2
      00387C 94                    2879 	.db 0x94
      00387D 80                    2880 	.db 0x80
      00387E E2                    2881 	.db 0xe2
      00387F 94                    2882 	.db 0x94
      003880 80                    2883 	.db 0x80
      003881 E2                    2884 	.db 0xe2
      003882 94                    2885 	.db 0x94
      003883 80                    2886 	.db 0x80
      003884 E2                    2887 	.db 0xe2
      003885 94                    2888 	.db 0x94
      003886 80                    2889 	.db 0x80
      003887 E2                    2890 	.db 0xe2
      003888 94                    2891 	.db 0x94
      003889 80                    2892 	.db 0x80
      00388A E2                    2893 	.db 0xe2
      00388B 94                    2894 	.db 0x94
      00388C 80                    2895 	.db 0x80
      00388D E2                    2896 	.db 0xe2
      00388E 94                    2897 	.db 0x94
      00388F 80                    2898 	.db 0x80
      003890 E2                    2899 	.db 0xe2
      003891 94                    2900 	.db 0x94
      003892 80                    2901 	.db 0x80
      003893 E2                    2902 	.db 0xe2
      003894 94                    2903 	.db 0x94
      003895 80                    2904 	.db 0x80
      003896 E2                    2905 	.db 0xe2
      003897 94                    2906 	.db 0x94
      003898 80                    2907 	.db 0x80
      003899 E2                    2908 	.db 0xe2
      00389A 94                    2909 	.db 0x94
      00389B 80                    2910 	.db 0x80
      00389C E2                    2911 	.db 0xe2
      00389D 94                    2912 	.db 0x94
      00389E 80                    2913 	.db 0x80
      00389F E2                    2914 	.db 0xe2
      0038A0 94                    2915 	.db 0x94
      0038A1 80                    2916 	.db 0x80
      0038A2 E2                    2917 	.db 0xe2
      0038A3 94                    2918 	.db 0x94
      0038A4 80                    2919 	.db 0x80
      0038A5 E2                    2920 	.db 0xe2
      0038A6 94                    2921 	.db 0x94
      0038A7 80                    2922 	.db 0x80
      0038A8 E2                    2923 	.db 0xe2
      0038A9 94                    2924 	.db 0x94
      0038AA 80                    2925 	.db 0x80
      0038AB E2                    2926 	.db 0xe2
      0038AC 94                    2927 	.db 0x94
      0038AD 80                    2928 	.db 0x80
      0038AE E2                    2929 	.db 0xe2
      0038AF 94                    2930 	.db 0x94
      0038B0 80                    2931 	.db 0x80
      0038B1 E2                    2932 	.db 0xe2
      0038B2 94                    2933 	.db 0x94
      0038B3 80                    2934 	.db 0x80
      0038B4 E2                    2935 	.db 0xe2
      0038B5 94                    2936 	.db 0x94
      0038B6 80                    2937 	.db 0x80
      0038B7 E2                    2938 	.db 0xe2
      0038B8 94                    2939 	.db 0x94
      0038B9 80                    2940 	.db 0x80
      0038BA E2                    2941 	.db 0xe2
      0038BB 94                    2942 	.db 0x94
      0038BC 80                    2943 	.db 0x80
      0038BD E2                    2944 	.db 0xe2
      0038BE 94                    2945 	.db 0x94
      0038BF 80                    2946 	.db 0x80
      0038C0 E2                    2947 	.db 0xe2
      0038C1 94                    2948 	.db 0x94
      0038C2 80                    2949 	.db 0x80
      0038C3 E2                    2950 	.db 0xe2
      0038C4 94                    2951 	.db 0x94
      0038C5 80                    2952 	.db 0x80
      0038C6 E2                    2953 	.db 0xe2
      0038C7 94                    2954 	.db 0x94
      0038C8 80                    2955 	.db 0x80
      0038C9 E2                    2956 	.db 0xe2
      0038CA 94                    2957 	.db 0x94
      0038CB 80                    2958 	.db 0x80
      0038CC E2                    2959 	.db 0xe2
      0038CD 94                    2960 	.db 0x94
      0038CE 80                    2961 	.db 0x80
      0038CF E2                    2962 	.db 0xe2
      0038D0 94                    2963 	.db 0x94
      0038D1 80                    2964 	.db 0x80
      0038D2 E2                    2965 	.db 0xe2
      0038D3 94                    2966 	.db 0x94
      0038D4 80                    2967 	.db 0x80
      0038D5 E2                    2968 	.db 0xe2
      0038D6 94                    2969 	.db 0x94
      0038D7 80                    2970 	.db 0x80
      0038D8 E2                    2971 	.db 0xe2
      0038D9 94                    2972 	.db 0x94
      0038DA 80                    2973 	.db 0x80
      0038DB E2                    2974 	.db 0xe2
      0038DC 94                    2975 	.db 0x94
      0038DD 80                    2976 	.db 0x80
      0038DE E2                    2977 	.db 0xe2
      0038DF 94                    2978 	.db 0x94
      0038E0 80                    2979 	.db 0x80
      0038E1 E2                    2980 	.db 0xe2
      0038E2 94                    2981 	.db 0x94
      0038E3 80                    2982 	.db 0x80
      0038E4 E2                    2983 	.db 0xe2
      0038E5 94                    2984 	.db 0x94
      0038E6 80                    2985 	.db 0x80
      0038E7 E2                    2986 	.db 0xe2
      0038E8 94                    2987 	.db 0x94
      0038E9 80                    2988 	.db 0x80
      0038EA E2                    2989 	.db 0xe2
      0038EB 94                    2990 	.db 0x94
      0038EC 80                    2991 	.db 0x80
      0038ED E2                    2992 	.db 0xe2
      0038EE 94                    2993 	.db 0x94
      0038EF 90                    2994 	.db 0x90
      0038F0 0A                    2995 	.db 0x0a
      0038F1 0D                    2996 	.db 0x0d
      0038F2 00                    2997 	.db 0x00
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
      0038F3                       3000 ___str_1:
      0038F3 E2                    3001 	.db 0xe2
      0038F4 94                    3002 	.db 0x94
      0038F5 82                    3003 	.db 0x82
      0038F6 20 20 20 20 20 20 20  3004 	.ascii "                        SPI PROGRAM                        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      003931 E2                    3005 	.db 0xe2
      003932 94                    3006 	.db 0x94
      003933 82                    3007 	.db 0x82
      003934 0A                    3008 	.db 0x0a
      003935 0D                    3009 	.db 0x0d
      003936 00                    3010 	.db 0x00
                                   3011 	.area CSEG    (CODE)
                                   3012 	.area CONST   (CODE)
      003937                       3013 ___str_2:
      003937 E2                    3014 	.db 0xe2
      003938 94                    3015 	.db 0x94
      003939 9C                    3016 	.db 0x9c
      00393A E2                    3017 	.db 0xe2
      00393B 94                    3018 	.db 0x94
      00393C 80                    3019 	.db 0x80
      00393D E2                    3020 	.db 0xe2
      00393E 94                    3021 	.db 0x94
      00393F 80                    3022 	.db 0x80
      003940 E2                    3023 	.db 0xe2
      003941 94                    3024 	.db 0x94
      003942 80                    3025 	.db 0x80
      003943 E2                    3026 	.db 0xe2
      003944 94                    3027 	.db 0x94
      003945 80                    3028 	.db 0x80
      003946 E2                    3029 	.db 0xe2
      003947 94                    3030 	.db 0x94
      003948 80                    3031 	.db 0x80
      003949 E2                    3032 	.db 0xe2
      00394A 94                    3033 	.db 0x94
      00394B 80                    3034 	.db 0x80
      00394C E2                    3035 	.db 0xe2
      00394D 94                    3036 	.db 0x94
      00394E 80                    3037 	.db 0x80
      00394F E2                    3038 	.db 0xe2
      003950 94                    3039 	.db 0x94
      003951 80                    3040 	.db 0x80
      003952 E2                    3041 	.db 0xe2
      003953 94                    3042 	.db 0x94
      003954 80                    3043 	.db 0x80
      003955 E2                    3044 	.db 0xe2
      003956 94                    3045 	.db 0x94
      003957 80                    3046 	.db 0x80
      003958 E2                    3047 	.db 0xe2
      003959 94                    3048 	.db 0x94
      00395A 80                    3049 	.db 0x80
      00395B E2                    3050 	.db 0xe2
      00395C 94                    3051 	.db 0x94
      00395D 80                    3052 	.db 0x80
      00395E E2                    3053 	.db 0xe2
      00395F 94                    3054 	.db 0x94
      003960 80                    3055 	.db 0x80
      003961 E2                    3056 	.db 0xe2
      003962 94                    3057 	.db 0x94
      003963 80                    3058 	.db 0x80
      003964 E2                    3059 	.db 0xe2
      003965 94                    3060 	.db 0x94
      003966 80                    3061 	.db 0x80
      003967 E2                    3062 	.db 0xe2
      003968 94                    3063 	.db 0x94
      003969 80                    3064 	.db 0x80
      00396A E2                    3065 	.db 0xe2
      00396B 94                    3066 	.db 0x94
      00396C 80                    3067 	.db 0x80
      00396D E2                    3068 	.db 0xe2
      00396E 94                    3069 	.db 0x94
      00396F 80                    3070 	.db 0x80
      003970 E2                    3071 	.db 0xe2
      003971 94                    3072 	.db 0x94
      003972 80                    3073 	.db 0x80
      003973 E2                    3074 	.db 0xe2
      003974 94                    3075 	.db 0x94
      003975 80                    3076 	.db 0x80
      003976 E2                    3077 	.db 0xe2
      003977 94                    3078 	.db 0x94
      003978 80                    3079 	.db 0x80
      003979 E2                    3080 	.db 0xe2
      00397A 94                    3081 	.db 0x94
      00397B 80                    3082 	.db 0x80
      00397C E2                    3083 	.db 0xe2
      00397D 94                    3084 	.db 0x94
      00397E 80                    3085 	.db 0x80
      00397F E2                    3086 	.db 0xe2
      003980 94                    3087 	.db 0x94
      003981 80                    3088 	.db 0x80
      003982 E2                    3089 	.db 0xe2
      003983 94                    3090 	.db 0x94
      003984 80                    3091 	.db 0x80
      003985 E2                    3092 	.db 0xe2
      003986 94                    3093 	.db 0x94
      003987 80                    3094 	.db 0x80
      003988 E2                    3095 	.db 0xe2
      003989 94                    3096 	.db 0x94
      00398A 80                    3097 	.db 0x80
      00398B E2                    3098 	.db 0xe2
      00398C 94                    3099 	.db 0x94
      00398D 80                    3100 	.db 0x80
      00398E E2                    3101 	.db 0xe2
      00398F 94                    3102 	.db 0x94
      003990 80                    3103 	.db 0x80
      003991 E2                    3104 	.db 0xe2
      003992 94                    3105 	.db 0x94
      003993 80                    3106 	.db 0x80
      003994 E2                    3107 	.db 0xe2
      003995 94                    3108 	.db 0x94
      003996 80                    3109 	.db 0x80
      003997 E2                    3110 	.db 0xe2
      003998 94                    3111 	.db 0x94
      003999 80                    3112 	.db 0x80
      00399A E2                    3113 	.db 0xe2
      00399B 94                    3114 	.db 0x94
      00399C 80                    3115 	.db 0x80
      00399D E2                    3116 	.db 0xe2
      00399E 94                    3117 	.db 0x94
      00399F 80                    3118 	.db 0x80
      0039A0 E2                    3119 	.db 0xe2
      0039A1 94                    3120 	.db 0x94
      0039A2 80                    3121 	.db 0x80
      0039A3 E2                    3122 	.db 0xe2
      0039A4 94                    3123 	.db 0x94
      0039A5 80                    3124 	.db 0x80
      0039A6 E2                    3125 	.db 0xe2
      0039A7 94                    3126 	.db 0x94
      0039A8 80                    3127 	.db 0x80
      0039A9 E2                    3128 	.db 0xe2
      0039AA 94                    3129 	.db 0x94
      0039AB 80                    3130 	.db 0x80
      0039AC E2                    3131 	.db 0xe2
      0039AD 94                    3132 	.db 0x94
      0039AE 80                    3133 	.db 0x80
      0039AF E2                    3134 	.db 0xe2
      0039B0 94                    3135 	.db 0x94
      0039B1 80                    3136 	.db 0x80
      0039B2 E2                    3137 	.db 0xe2
      0039B3 94                    3138 	.db 0x94
      0039B4 80                    3139 	.db 0x80
      0039B5 E2                    3140 	.db 0xe2
      0039B6 94                    3141 	.db 0x94
      0039B7 80                    3142 	.db 0x80
      0039B8 E2                    3143 	.db 0xe2
      0039B9 94                    3144 	.db 0x94
      0039BA 80                    3145 	.db 0x80
      0039BB E2                    3146 	.db 0xe2
      0039BC 94                    3147 	.db 0x94
      0039BD 80                    3148 	.db 0x80
      0039BE E2                    3149 	.db 0xe2
      0039BF 94                    3150 	.db 0x94
      0039C0 80                    3151 	.db 0x80
      0039C1 E2                    3152 	.db 0xe2
      0039C2 94                    3153 	.db 0x94
      0039C3 80                    3154 	.db 0x80
      0039C4 E2                    3155 	.db 0xe2
      0039C5 94                    3156 	.db 0x94
      0039C6 80                    3157 	.db 0x80
      0039C7 E2                    3158 	.db 0xe2
      0039C8 94                    3159 	.db 0x94
      0039C9 80                    3160 	.db 0x80
      0039CA E2                    3161 	.db 0xe2
      0039CB 94                    3162 	.db 0x94
      0039CC 80                    3163 	.db 0x80
      0039CD E2                    3164 	.db 0xe2
      0039CE 94                    3165 	.db 0x94
      0039CF 80                    3166 	.db 0x80
      0039D0 E2                    3167 	.db 0xe2
      0039D1 94                    3168 	.db 0x94
      0039D2 80                    3169 	.db 0x80
      0039D3 E2                    3170 	.db 0xe2
      0039D4 94                    3171 	.db 0x94
      0039D5 80                    3172 	.db 0x80
      0039D6 E2                    3173 	.db 0xe2
      0039D7 94                    3174 	.db 0x94
      0039D8 80                    3175 	.db 0x80
      0039D9 E2                    3176 	.db 0xe2
      0039DA 94                    3177 	.db 0x94
      0039DB 80                    3178 	.db 0x80
      0039DC E2                    3179 	.db 0xe2
      0039DD 94                    3180 	.db 0x94
      0039DE 80                    3181 	.db 0x80
      0039DF E2                    3182 	.db 0xe2
      0039E0 94                    3183 	.db 0x94
      0039E1 80                    3184 	.db 0x80
      0039E2 E2                    3185 	.db 0xe2
      0039E3 94                    3186 	.db 0x94
      0039E4 80                    3187 	.db 0x80
      0039E5 E2                    3188 	.db 0xe2
      0039E6 94                    3189 	.db 0x94
      0039E7 80                    3190 	.db 0x80
      0039E8 E2                    3191 	.db 0xe2
      0039E9 94                    3192 	.db 0x94
      0039EA 80                    3193 	.db 0x80
      0039EB E2                    3194 	.db 0xe2
      0039EC 94                    3195 	.db 0x94
      0039ED A4                    3196 	.db 0xa4
      0039EE 0A                    3197 	.db 0x0a
      0039EF 0D                    3198 	.db 0x0d
      0039F0 00                    3199 	.db 0x00
                                   3200 	.area CSEG    (CODE)
                                   3201 	.area CONST   (CODE)
      0039F1                       3202 ___str_3:
      0039F1 E2                    3203 	.db 0xe2
      0039F2 94                    3204 	.db 0x94
      0039F3 82                    3205 	.db 0x82
      0039F4 20 20 43 6F 6D 6D 61  3206 	.ascii "  Command   "
             6E 64 20 20 20
      003A00 E2                    3207 	.db 0xe2
      003A01 94                    3208 	.db 0x94
      003A02 82                    3209 	.db 0x82
      003A03 20 20 20 20 20 20 20  3210 	.ascii "               Description                    "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003A31 E2                    3211 	.db 0xe2
      003A32 94                    3212 	.db 0x94
      003A33 82                    3213 	.db 0x82
      003A34 0A                    3214 	.db 0x0a
      003A35 0D                    3215 	.db 0x0d
      003A36 00                    3216 	.db 0x00
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
      003A37                       3219 ___str_4:
      003A37 E2                    3220 	.db 0xe2
      003A38 94                    3221 	.db 0x94
      003A39 82                    3222 	.db 0x82
      003A3A 20 20 20 20 4D 20 20  3223 	.ascii "    M      "
             20 20 20 20
      003A45 E2                    3224 	.db 0xe2
      003A46 94                    3225 	.db 0x94
      003A47 82                    3226 	.db 0x82
      003A48 20 4D 61 6E 75 61 6C  3227 	.ascii " Manual SPI Mode (Direct Register Control)     "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20
      003A77 E2                    3228 	.db 0xe2
      003A78 94                    3229 	.db 0x94
      003A79 82                    3230 	.db 0x82
      003A7A 0A                    3231 	.db 0x0a
      003A7B 0D                    3232 	.db 0x0d
      003A7C 00                    3233 	.db 0x00
                                   3234 	.area CSEG    (CODE)
                                   3235 	.area CONST   (CODE)
      003A7D                       3236 ___str_5:
      003A7D E2                    3237 	.db 0xe2
      003A7E 94                    3238 	.db 0x94
      003A7F 82                    3239 	.db 0x82
      003A80 20 20 20 20 53 20 20  3240 	.ascii "    S      "
             20 20 20 20
      003A8B E2                    3241 	.db 0xe2
      003A8C 94                    3242 	.db 0x94
      003A8D 82                    3243 	.db 0x82
      003A8E 20 47 65 6E 65 72 61  3244 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003ABD E2                    3245 	.db 0xe2
      003ABE 94                    3246 	.db 0x94
      003ABF 82                    3247 	.db 0x82
      003AC0 0A                    3248 	.db 0x0a
      003AC1 0D                    3249 	.db 0x0d
      003AC2 00                    3250 	.db 0x00
                                   3251 	.area CSEG    (CODE)
                                   3252 	.area CONST   (CODE)
      003AC3                       3253 ___str_6:
      003AC3 E2                    3254 	.db 0xe2
      003AC4 94                    3255 	.db 0x94
      003AC5 82                    3256 	.db 0x82
      003AC6 20 20 20 20 54 20 20  3257 	.ascii "    T      "
             20 20 20 20
      003AD1 E2                    3258 	.db 0xe2
      003AD2 94                    3259 	.db 0x94
      003AD3 82                    3260 	.db 0x82
      003AD4 20 47 65 6E 65 72 61  3261 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B03 E2                    3262 	.db 0xe2
      003B04 94                    3263 	.db 0x94
      003B05 82                    3264 	.db 0x82
      003B06 0A                    3265 	.db 0x0a
      003B07 0D                    3266 	.db 0x0d
      003B08 00                    3267 	.db 0x00
                                   3268 	.area CSEG    (CODE)
                                   3269 	.area CONST   (CODE)
      003B09                       3270 ___str_7:
      003B09 E2                    3271 	.db 0xe2
      003B0A 94                    3272 	.db 0x94
      003B0B 82                    3273 	.db 0x82
      003B0C 20 20 20 20 52 20 20  3274 	.ascii "    R      "
             20 20 20 20
      003B17 E2                    3275 	.db 0xe2
      003B18 94                    3276 	.db 0x94
      003B19 82                    3277 	.db 0x82
      003B1A 20 52 61 6D 70 20 77  3278 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B49 E2                    3279 	.db 0xe2
      003B4A 94                    3280 	.db 0x94
      003B4B 82                    3281 	.db 0x82
      003B4C 0A                    3282 	.db 0x0a
      003B4D 0D                    3283 	.db 0x0d
      003B4E 00                    3284 	.db 0x00
                                   3285 	.area CSEG    (CODE)
                                   3286 	.area CONST   (CODE)
      003B4F                       3287 ___str_8:
      003B4F E2                    3288 	.db 0xe2
      003B50 94                    3289 	.db 0x94
      003B51 82                    3290 	.db 0x82
      003B52 20 20 20 20 3F 20 20  3291 	.ascii "    ?      "
             20 20 20 20
      003B5D E2                    3292 	.db 0xe2
      003B5E 94                    3293 	.db 0x94
      003B5F 82                    3294 	.db 0x82
      003B60 20 44 69 73 70 6C 61  3295 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B8F E2                    3296 	.db 0xe2
      003B90 94                    3297 	.db 0x94
      003B91 82                    3298 	.db 0x82
      003B92 0A                    3299 	.db 0x0a
      003B93 0D                    3300 	.db 0x0d
      003B94 00                    3301 	.db 0x00
                                   3302 	.area CSEG    (CODE)
                                   3303 	.area CONST   (CODE)
      003B95                       3304 ___str_9:
      003B95 E2                    3305 	.db 0xe2
      003B96 94                    3306 	.db 0x94
      003B97 94                    3307 	.db 0x94
      003B98 E2                    3308 	.db 0xe2
      003B99 94                    3309 	.db 0x94
      003B9A 80                    3310 	.db 0x80
      003B9B E2                    3311 	.db 0xe2
      003B9C 94                    3312 	.db 0x94
      003B9D 80                    3313 	.db 0x80
      003B9E E2                    3314 	.db 0xe2
      003B9F 94                    3315 	.db 0x94
      003BA0 80                    3316 	.db 0x80
      003BA1 E2                    3317 	.db 0xe2
      003BA2 94                    3318 	.db 0x94
      003BA3 80                    3319 	.db 0x80
      003BA4 E2                    3320 	.db 0xe2
      003BA5 94                    3321 	.db 0x94
      003BA6 80                    3322 	.db 0x80
      003BA7 E2                    3323 	.db 0xe2
      003BA8 94                    3324 	.db 0x94
      003BA9 80                    3325 	.db 0x80
      003BAA E2                    3326 	.db 0xe2
      003BAB 94                    3327 	.db 0x94
      003BAC 80                    3328 	.db 0x80
      003BAD E2                    3329 	.db 0xe2
      003BAE 94                    3330 	.db 0x94
      003BAF 80                    3331 	.db 0x80
      003BB0 E2                    3332 	.db 0xe2
      003BB1 94                    3333 	.db 0x94
      003BB2 80                    3334 	.db 0x80
      003BB3 E2                    3335 	.db 0xe2
      003BB4 94                    3336 	.db 0x94
      003BB5 80                    3337 	.db 0x80
      003BB6 E2                    3338 	.db 0xe2
      003BB7 94                    3339 	.db 0x94
      003BB8 80                    3340 	.db 0x80
      003BB9 E2                    3341 	.db 0xe2
      003BBA 94                    3342 	.db 0x94
      003BBB B4                    3343 	.db 0xb4
      003BBC E2                    3344 	.db 0xe2
      003BBD 94                    3345 	.db 0x94
      003BBE 80                    3346 	.db 0x80
      003BBF E2                    3347 	.db 0xe2
      003BC0 94                    3348 	.db 0x94
      003BC1 80                    3349 	.db 0x80
      003BC2 E2                    3350 	.db 0xe2
      003BC3 94                    3351 	.db 0x94
      003BC4 80                    3352 	.db 0x80
      003BC5 E2                    3353 	.db 0xe2
      003BC6 94                    3354 	.db 0x94
      003BC7 80                    3355 	.db 0x80
      003BC8 E2                    3356 	.db 0xe2
      003BC9 94                    3357 	.db 0x94
      003BCA 80                    3358 	.db 0x80
      003BCB E2                    3359 	.db 0xe2
      003BCC 94                    3360 	.db 0x94
      003BCD 80                    3361 	.db 0x80
      003BCE E2                    3362 	.db 0xe2
      003BCF 94                    3363 	.db 0x94
      003BD0 80                    3364 	.db 0x80
      003BD1 E2                    3365 	.db 0xe2
      003BD2 94                    3366 	.db 0x94
      003BD3 80                    3367 	.db 0x80
      003BD4 E2                    3368 	.db 0xe2
      003BD5 94                    3369 	.db 0x94
      003BD6 80                    3370 	.db 0x80
      003BD7 E2                    3371 	.db 0xe2
      003BD8 94                    3372 	.db 0x94
      003BD9 80                    3373 	.db 0x80
      003BDA E2                    3374 	.db 0xe2
      003BDB 94                    3375 	.db 0x94
      003BDC 80                    3376 	.db 0x80
      003BDD E2                    3377 	.db 0xe2
      003BDE 94                    3378 	.db 0x94
      003BDF 80                    3379 	.db 0x80
      003BE0 E2                    3380 	.db 0xe2
      003BE1 94                    3381 	.db 0x94
      003BE2 80                    3382 	.db 0x80
      003BE3 E2                    3383 	.db 0xe2
      003BE4 94                    3384 	.db 0x94
      003BE5 80                    3385 	.db 0x80
      003BE6 E2                    3386 	.db 0xe2
      003BE7 94                    3387 	.db 0x94
      003BE8 80                    3388 	.db 0x80
      003BE9 E2                    3389 	.db 0xe2
      003BEA 94                    3390 	.db 0x94
      003BEB 80                    3391 	.db 0x80
      003BEC E2                    3392 	.db 0xe2
      003BED 94                    3393 	.db 0x94
      003BEE 80                    3394 	.db 0x80
      003BEF E2                    3395 	.db 0xe2
      003BF0 94                    3396 	.db 0x94
      003BF1 80                    3397 	.db 0x80
      003BF2 E2                    3398 	.db 0xe2
      003BF3 94                    3399 	.db 0x94
      003BF4 80                    3400 	.db 0x80
      003BF5 E2                    3401 	.db 0xe2
      003BF6 94                    3402 	.db 0x94
      003BF7 80                    3403 	.db 0x80
      003BF8 E2                    3404 	.db 0xe2
      003BF9 94                    3405 	.db 0x94
      003BFA 80                    3406 	.db 0x80
      003BFB E2                    3407 	.db 0xe2
      003BFC 94                    3408 	.db 0x94
      003BFD 80                    3409 	.db 0x80
      003BFE E2                    3410 	.db 0xe2
      003BFF 94                    3411 	.db 0x94
      003C00 80                    3412 	.db 0x80
      003C01 E2                    3413 	.db 0xe2
      003C02 94                    3414 	.db 0x94
      003C03 80                    3415 	.db 0x80
      003C04 E2                    3416 	.db 0xe2
      003C05 94                    3417 	.db 0x94
      003C06 80                    3418 	.db 0x80
      003C07 E2                    3419 	.db 0xe2
      003C08 94                    3420 	.db 0x94
      003C09 80                    3421 	.db 0x80
      003C0A E2                    3422 	.db 0xe2
      003C0B 94                    3423 	.db 0x94
      003C0C 80                    3424 	.db 0x80
      003C0D E2                    3425 	.db 0xe2
      003C0E 94                    3426 	.db 0x94
      003C0F 80                    3427 	.db 0x80
      003C10 E2                    3428 	.db 0xe2
      003C11 94                    3429 	.db 0x94
      003C12 80                    3430 	.db 0x80
      003C13 E2                    3431 	.db 0xe2
      003C14 94                    3432 	.db 0x94
      003C15 80                    3433 	.db 0x80
      003C16 E2                    3434 	.db 0xe2
      003C17 94                    3435 	.db 0x94
      003C18 80                    3436 	.db 0x80
      003C19 E2                    3437 	.db 0xe2
      003C1A 94                    3438 	.db 0x94
      003C1B 80                    3439 	.db 0x80
      003C1C E2                    3440 	.db 0xe2
      003C1D 94                    3441 	.db 0x94
      003C1E 80                    3442 	.db 0x80
      003C1F E2                    3443 	.db 0xe2
      003C20 94                    3444 	.db 0x94
      003C21 80                    3445 	.db 0x80
      003C22 E2                    3446 	.db 0xe2
      003C23 94                    3447 	.db 0x94
      003C24 80                    3448 	.db 0x80
      003C25 E2                    3449 	.db 0xe2
      003C26 94                    3450 	.db 0x94
      003C27 80                    3451 	.db 0x80
      003C28 E2                    3452 	.db 0xe2
      003C29 94                    3453 	.db 0x94
      003C2A 80                    3454 	.db 0x80
      003C2B E2                    3455 	.db 0xe2
      003C2C 94                    3456 	.db 0x94
      003C2D 80                    3457 	.db 0x80
      003C2E E2                    3458 	.db 0xe2
      003C2F 94                    3459 	.db 0x94
      003C30 80                    3460 	.db 0x80
      003C31 E2                    3461 	.db 0xe2
      003C32 94                    3462 	.db 0x94
      003C33 80                    3463 	.db 0x80
      003C34 E2                    3464 	.db 0xe2
      003C35 94                    3465 	.db 0x94
      003C36 80                    3466 	.db 0x80
      003C37 E2                    3467 	.db 0xe2
      003C38 94                    3468 	.db 0x94
      003C39 80                    3469 	.db 0x80
      003C3A E2                    3470 	.db 0xe2
      003C3B 94                    3471 	.db 0x94
      003C3C 80                    3472 	.db 0x80
      003C3D E2                    3473 	.db 0xe2
      003C3E 94                    3474 	.db 0x94
      003C3F 80                    3475 	.db 0x80
      003C40 E2                    3476 	.db 0xe2
      003C41 94                    3477 	.db 0x94
      003C42 80                    3478 	.db 0x80
      003C43 E2                    3479 	.db 0xe2
      003C44 94                    3480 	.db 0x94
      003C45 80                    3481 	.db 0x80
      003C46 E2                    3482 	.db 0xe2
      003C47 94                    3483 	.db 0x94
      003C48 80                    3484 	.db 0x80
      003C49 E2                    3485 	.db 0xe2
      003C4A 94                    3486 	.db 0x94
      003C4B 98                    3487 	.db 0x98
      003C4C 0A                    3488 	.db 0x0a
      003C4D 0D                    3489 	.db 0x0d
      003C4E 00                    3490 	.db 0x00
                                   3491 	.area CSEG    (CODE)
                                   3492 	.area CONST   (CODE)
      003C4F                       3493 ___str_10:
      003C4F 0A                    3494 	.db 0x0a
      003C50 0D                    3495 	.db 0x0d
      003C51 3E 3E 20 45 6E 74 65  3496 	.ascii ">> Enter command: "
             72 20 63 6F 6D 6D 61
             6E 64 3A 20
      003C63 00                    3497 	.db 0x00
                                   3498 	.area CSEG    (CODE)
                                   3499 	.area CONST   (CODE)
      003C64                       3500 ___str_11:
      003C64 7C 20 24 20 25 63     3501 	.ascii "| $ %c"
      003C6A 0A                    3502 	.db 0x0a
      003C6B 0D                    3503 	.db 0x0d
      003C6C 00                    3504 	.db 0x00
                                   3505 	.area CSEG    (CODE)
                                   3506 	.area CONST   (CODE)
      003C6D                       3507 ___str_12:
      003C6D 0A                    3508 	.db 0x0a
      003C6E 0D                    3509 	.db 0x0d
      003C6F 00                    3510 	.db 0x00
                                   3511 	.area CSEG    (CODE)
                                   3512 	.area CONST   (CODE)
      003C70                       3513 ___str_13:
      003C70 3E 3E 20 53 49 4E 45  3514 	.ascii ">> SINE WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003C90 0A                    3515 	.db 0x0a
      003C91 0D                    3516 	.db 0x0d
      003C92 00                    3517 	.db 0x00
                                   3518 	.area CSEG    (CODE)
                                   3519 	.area CONST   (CODE)
      003C93                       3520 ___str_14:
      003C93 3E 3E 20 53 49 4E 20  3521 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003CB2 0A                    3522 	.db 0x0a
      003CB3 0D                    3523 	.db 0x0d
      003CB4 00                    3524 	.db 0x00
                                   3525 	.area CSEG    (CODE)
                                   3526 	.area CONST   (CODE)
      003CB5                       3527 ___str_15:
      003CB5 3E 3E 20 54 52 49 41  3528 	.ascii ">> TRIANGULAR WAVE GENERATION COMPLETE"
             4E 47 55 4C 41 52 20
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003CDB 0A                    3529 	.db 0x0a
      003CDC 0D                    3530 	.db 0x0d
      003CDD 00                    3531 	.db 0x00
                                   3532 	.area CSEG    (CODE)
                                   3533 	.area CONST   (CODE)
      003CDE                       3534 ___str_16:
      003CDE 3E 3E 20 52 41 4D 50  3535 	.ascii ">> RAMP WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003CFE 0A                    3536 	.db 0x0a
      003CFF 0D                    3537 	.db 0x0d
      003D00 00                    3538 	.db 0x00
                                   3539 	.area CSEG    (CODE)
                                   3540 	.area CONST   (CODE)
      003D01                       3541 ___str_17:
      003D01 3E 3E 20 49 4E 56 41  3542 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003D11 0A                    3543 	.db 0x0a
      003D12 0D                    3544 	.db 0x0d
      003D13 00                    3545 	.db 0x00
                                   3546 	.area CSEG    (CODE)
                                   3547 	.area CONST   (CODE)
      003D14                       3548 ___str_18:
      003D14 E2                    3549 	.db 0xe2
      003D15 94                    3550 	.db 0x94
      003D16 82                    3551 	.db 0x82
      003D17 20 45 6E 74 65 72 20  3552 	.ascii " Enter number (up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 75 70 20 74 6F 20
             32 20 63 68 61 72 61
             63 74 65 72 73 29 3A
             20
      003D3B 0A                    3553 	.db 0x0a
      003D3C 0D                    3554 	.db 0x0d
      003D3D 7C                    3555 	.ascii "|"
      003D3E 00                    3556 	.db 0x00
                                   3557 	.area CSEG    (CODE)
                                   3558 	.area CONST   (CODE)
      003D3F                       3559 ___str_19:
      003D3F 24 20                 3560 	.ascii "$ "
      003D41 00                    3561 	.db 0x00
                                   3562 	.area CSEG    (CODE)
                                   3563 	.area CONST   (CODE)
      003D42                       3564 ___str_20:
      003D42 0A                    3565 	.db 0x0a
      003D43 0D                    3566 	.db 0x0d
      003D44 E2                    3567 	.db 0xe2
      003D45 94                    3568 	.db 0x94
      003D46 82                    3569 	.db 0x82
      003D47 20 45 6E 74 65 72 65  3570 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003D5C 0A                    3571 	.db 0x0a
      003D5D 0D                    3572 	.db 0x0d
      003D5E 00                    3573 	.db 0x00
                                   3574 	.area CSEG    (CODE)
                                   3575 	.area CONST   (CODE)
      003D5F                       3576 ___str_21:
      003D5F 0D                    3577 	.db 0x0d
      003D60 0A                    3578 	.db 0x0a
      003D61 20 49 6E 73 69 64 65  3579 	.ascii " Inside Manual SPI"
             20 4D 61 6E 75 61 6C
             20 53 50 49
      003D73 00                    3580 	.db 0x00
                                   3581 	.area CSEG    (CODE)
                                   3582 	.area CONST   (CODE)
      003D74                       3583 ___str_22:
      003D74 25 64                 3584 	.ascii "%d"
      003D76 0A                    3585 	.db 0x0a
      003D77 0D                    3586 	.db 0x0d
      003D78 00                    3587 	.db 0x00
                                   3588 	.area CSEG    (CODE)
                                   3589 	.area CONST   (CODE)
      003D79                       3590 ___str_23:
      003D79 0D                    3591 	.db 0x0d
      003D7A 0A                    3592 	.db 0x0a
      003D7B 20 4E 75 6D 62 65 72  3593 	.ascii " Number is %d"
             20 69 73 20 25 64
      003D88 00                    3594 	.db 0x00
                                   3595 	.area CSEG    (CODE)
                                   3596 	.area XINIT   (CODE)
      003D94                       3597 __xinit__ms_flag:
      003D94 00                    3598 	.db #0x00	; 0
      003D95                       3599 __xinit__transmission_complete:
      003D95 00 00                 3600 	.byte #0x00, #0x00	;  0
                                   3601 	.area CABS    (ABS,CODE)
