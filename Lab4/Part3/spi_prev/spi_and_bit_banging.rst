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
                                    217 	.globl _demo_mode
                                    218 	.globl _bit_bang_spi
                                    219 	.globl _take_data
                                    220 	.globl _mannual_spi
                                    221 	.globl _spi_init
                                    222 	.globl _bit_bang_spi_init
                                    223 	.globl _bit_bang_spi_write
                                    224 	.globl _spi_transmission_start
                                    225 	.globl _spi_triangular_wave
                                    226 	.globl _spi_ramp_signal
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           000080   232 _P0	=	0x0080
                           000081   233 _SP	=	0x0081
                           000082   234 _DPL	=	0x0082
                           000083   235 _DPH	=	0x0083
                           000087   236 _PCON	=	0x0087
                           000088   237 _TCON	=	0x0088
                           000089   238 _TMOD	=	0x0089
                           00008A   239 _TL0	=	0x008a
                           00008B   240 _TL1	=	0x008b
                           00008C   241 _TH0	=	0x008c
                           00008D   242 _TH1	=	0x008d
                           000090   243 _P1	=	0x0090
                           000098   244 _SCON	=	0x0098
                           000099   245 _SBUF	=	0x0099
                           0000A0   246 _P2	=	0x00a0
                           0000A8   247 _IE	=	0x00a8
                           0000B0   248 _P3	=	0x00b0
                           0000B8   249 _IP	=	0x00b8
                           0000D0   250 _PSW	=	0x00d0
                           0000E0   251 _ACC	=	0x00e0
                           0000F0   252 _B	=	0x00f0
                           0000C8   253 _T2CON	=	0x00c8
                           0000CA   254 _RCAP2L	=	0x00ca
                           0000CB   255 _RCAP2H	=	0x00cb
                           0000CC   256 _TL2	=	0x00cc
                           0000CD   257 _TH2	=	0x00cd
                           00008E   258 _AUXR	=	0x008e
                           0000A2   259 _AUXR1	=	0x00a2
                           000097   260 _CKRL	=	0x0097
                           00008F   261 _CKCON0	=	0x008f
                           0000AF   262 _CKCON1	=	0x00af
                           0000FA   263 _CCAP0H	=	0x00fa
                           0000FB   264 _CCAP1H	=	0x00fb
                           0000FC   265 _CCAP2H	=	0x00fc
                           0000FD   266 _CCAP3H	=	0x00fd
                           0000FE   267 _CCAP4H	=	0x00fe
                           0000EA   268 _CCAP0L	=	0x00ea
                           0000EB   269 _CCAP1L	=	0x00eb
                           0000EC   270 _CCAP2L	=	0x00ec
                           0000ED   271 _CCAP3L	=	0x00ed
                           0000EE   272 _CCAP4L	=	0x00ee
                           0000DA   273 _CCAPM0	=	0x00da
                           0000DB   274 _CCAPM1	=	0x00db
                           0000DC   275 _CCAPM2	=	0x00dc
                           0000DD   276 _CCAPM3	=	0x00dd
                           0000DE   277 _CCAPM4	=	0x00de
                           0000D8   278 _CCON	=	0x00d8
                           0000F9   279 _CH	=	0x00f9
                           0000E9   280 _CL	=	0x00e9
                           0000D9   281 _CMOD	=	0x00d9
                           0000A8   282 _IEN0	=	0x00a8
                           0000B1   283 _IEN1	=	0x00b1
                           0000B8   284 _IPL0	=	0x00b8
                           0000B7   285 _IPH0	=	0x00b7
                           0000B2   286 _IPL1	=	0x00b2
                           0000B3   287 _IPH1	=	0x00b3
                           0000C0   288 _P4	=	0x00c0
                           0000E8   289 _P5	=	0x00e8
                           0000A6   290 _WDTRST	=	0x00a6
                           0000A7   291 _WDTPRG	=	0x00a7
                           0000A9   292 _SADDR	=	0x00a9
                           0000B9   293 _SADEN	=	0x00b9
                           0000C3   294 _SPCON	=	0x00c3
                           0000C4   295 _SPSTA	=	0x00c4
                           0000C5   296 _SPDAT	=	0x00c5
                           0000C9   297 _T2MOD	=	0x00c9
                           00009B   298 _BDRCON	=	0x009b
                           00009A   299 _BRL	=	0x009a
                           00009C   300 _KBLS	=	0x009c
                           00009D   301 _KBE	=	0x009d
                           00009E   302 _KBF	=	0x009e
                           0000D2   303 _EECON	=	0x00d2
                                    304 ;--------------------------------------------------------
                                    305 ; special function bits
                                    306 ;--------------------------------------------------------
                                    307 	.area RSEG    (ABS,DATA)
      000000                        308 	.org 0x0000
                           000080   309 _P0_0	=	0x0080
                           000081   310 _P0_1	=	0x0081
                           000082   311 _P0_2	=	0x0082
                           000083   312 _P0_3	=	0x0083
                           000084   313 _P0_4	=	0x0084
                           000085   314 _P0_5	=	0x0085
                           000086   315 _P0_6	=	0x0086
                           000087   316 _P0_7	=	0x0087
                           000088   317 _IT0	=	0x0088
                           000089   318 _IE0	=	0x0089
                           00008A   319 _IT1	=	0x008a
                           00008B   320 _IE1	=	0x008b
                           00008C   321 _TR0	=	0x008c
                           00008D   322 _TF0	=	0x008d
                           00008E   323 _TR1	=	0x008e
                           00008F   324 _TF1	=	0x008f
                           000090   325 _P1_0	=	0x0090
                           000091   326 _P1_1	=	0x0091
                           000092   327 _P1_2	=	0x0092
                           000093   328 _P1_3	=	0x0093
                           000094   329 _P1_4	=	0x0094
                           000095   330 _P1_5	=	0x0095
                           000096   331 _P1_6	=	0x0096
                           000097   332 _P1_7	=	0x0097
                           000098   333 _RI	=	0x0098
                           000099   334 _TI	=	0x0099
                           00009A   335 _RB8	=	0x009a
                           00009B   336 _TB8	=	0x009b
                           00009C   337 _REN	=	0x009c
                           00009D   338 _SM2	=	0x009d
                           00009E   339 _SM1	=	0x009e
                           00009F   340 _SM0	=	0x009f
                           0000A0   341 _P2_0	=	0x00a0
                           0000A1   342 _P2_1	=	0x00a1
                           0000A2   343 _P2_2	=	0x00a2
                           0000A3   344 _P2_3	=	0x00a3
                           0000A4   345 _P2_4	=	0x00a4
                           0000A5   346 _P2_5	=	0x00a5
                           0000A6   347 _P2_6	=	0x00a6
                           0000A7   348 _P2_7	=	0x00a7
                           0000A8   349 _EX0	=	0x00a8
                           0000A9   350 _ET0	=	0x00a9
                           0000AA   351 _EX1	=	0x00aa
                           0000AB   352 _ET1	=	0x00ab
                           0000AC   353 _ES	=	0x00ac
                           0000AF   354 _EA	=	0x00af
                           0000B0   355 _P3_0	=	0x00b0
                           0000B1   356 _P3_1	=	0x00b1
                           0000B2   357 _P3_2	=	0x00b2
                           0000B3   358 _P3_3	=	0x00b3
                           0000B4   359 _P3_4	=	0x00b4
                           0000B5   360 _P3_5	=	0x00b5
                           0000B6   361 _P3_6	=	0x00b6
                           0000B7   362 _P3_7	=	0x00b7
                           0000B0   363 _RXD	=	0x00b0
                           0000B1   364 _TXD	=	0x00b1
                           0000B2   365 _INT0	=	0x00b2
                           0000B3   366 _INT1	=	0x00b3
                           0000B4   367 _T0	=	0x00b4
                           0000B5   368 _T1	=	0x00b5
                           0000B6   369 _WR	=	0x00b6
                           0000B7   370 _RD	=	0x00b7
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           0000D0   376 _P	=	0x00d0
                           0000D1   377 _F1	=	0x00d1
                           0000D2   378 _OV	=	0x00d2
                           0000D3   379 _RS0	=	0x00d3
                           0000D4   380 _RS1	=	0x00d4
                           0000D5   381 _F0	=	0x00d5
                           0000D6   382 _AC	=	0x00d6
                           0000D7   383 _CY	=	0x00d7
                           0000AD   384 _ET2	=	0x00ad
                           0000BD   385 _PT2	=	0x00bd
                           0000C8   386 _T2CON_0	=	0x00c8
                           0000C9   387 _T2CON_1	=	0x00c9
                           0000CA   388 _T2CON_2	=	0x00ca
                           0000CB   389 _T2CON_3	=	0x00cb
                           0000CC   390 _T2CON_4	=	0x00cc
                           0000CD   391 _T2CON_5	=	0x00cd
                           0000CE   392 _T2CON_6	=	0x00ce
                           0000CF   393 _T2CON_7	=	0x00cf
                           0000C8   394 _CP_RL2	=	0x00c8
                           0000C9   395 _C_T2	=	0x00c9
                           0000CA   396 _TR2	=	0x00ca
                           0000CB   397 _EXEN2	=	0x00cb
                           0000CC   398 _TCLK	=	0x00cc
                           0000CD   399 _RCLK	=	0x00cd
                           0000CE   400 _EXF2	=	0x00ce
                           0000CF   401 _TF2	=	0x00cf
                           0000DF   402 _CF	=	0x00df
                           0000DE   403 _CR	=	0x00de
                           0000DC   404 _CCF4	=	0x00dc
                           0000DB   405 _CCF3	=	0x00db
                           0000DA   406 _CCF2	=	0x00da
                           0000D9   407 _CCF1	=	0x00d9
                           0000D8   408 _CCF0	=	0x00d8
                           0000AE   409 _EC	=	0x00ae
                           0000BE   410 _PPCL	=	0x00be
                           0000BD   411 _PT2L	=	0x00bd
                           0000BC   412 _PSL	=	0x00bc
                           0000BB   413 _PT1L	=	0x00bb
                           0000BA   414 _PX1L	=	0x00ba
                           0000B9   415 _PT0L	=	0x00b9
                           0000B8   416 _PX0L	=	0x00b8
                           0000C0   417 _P4_0	=	0x00c0
                           0000C1   418 _P4_1	=	0x00c1
                           0000C2   419 _P4_2	=	0x00c2
                           0000C3   420 _P4_3	=	0x00c3
                           0000C4   421 _P4_4	=	0x00c4
                           0000C5   422 _P4_5	=	0x00c5
                           0000C6   423 _P4_6	=	0x00c6
                           0000C7   424 _P4_7	=	0x00c7
                           0000E8   425 _P5_0	=	0x00e8
                           0000E9   426 _P5_1	=	0x00e9
                           0000EA   427 _P5_2	=	0x00ea
                           0000EB   428 _P5_3	=	0x00eb
                           0000EC   429 _P5_4	=	0x00ec
                           0000ED   430 _P5_5	=	0x00ed
                           0000EE   431 _P5_6	=	0x00ee
                           0000EF   432 _P5_7	=	0x00ef
                                    433 ;--------------------------------------------------------
                                    434 ; overlayable register banks
                                    435 ;--------------------------------------------------------
                                    436 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        437 	.ds 8
                                    438 ;--------------------------------------------------------
                                    439 ; internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area DSEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable items in internal ram 
                                    444 ;--------------------------------------------------------
                                    445 ;--------------------------------------------------------
                                    446 ; Stack segment in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 	.area	SSEG
      000014                        449 __start__stack:
      000014                        450 	.ds	1
                                    451 
                                    452 ;--------------------------------------------------------
                                    453 ; indirectly addressable internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area ISEG    (DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area IABS    (ABS,DATA)
                                    460 	.area IABS    (ABS,DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; bit data
                                    463 ;--------------------------------------------------------
                                    464 	.area BSEG    (BIT)
                                    465 ;--------------------------------------------------------
                                    466 ; paged external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area PSEG    (PAG,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XSEG    (XDATA)
      000400                        473 _putchar_charToSend_65536_17:
      000400                        474 	.ds 2
      000402                        475 _delay_ms_ms_65536_21:
      000402                        476 	.ds 2
      000404                        477 _bit_bang_spi_number_65536_44:
      000404                        478 	.ds 1
      000405                        479 _take_data_input_65537_48:
      000405                        480 	.ds 4
      000409                        481 _take_data_data_65538_52:
      000409                        482 	.ds 1
      00040A                        483 _mannual_spi_number_65536_55:
      00040A                        484 	.ds 1
      00040B                        485 _mannual_spi_dac_value_index_65536_56:
      00040B                        486 	.ds 2
      00040D                        487 _mannual_spi_dac_data_65536_56:
      00040D                        488 	.ds 2
      00040F                        489 _bit_bang_spi_write_data_65536_66:
      00040F                        490 	.ds 2
      000411                        491 _spi_triangular_wave_number_65536_72:
      000411                        492 	.ds 2
      000413                        493 _spi_triangular_wave_dac_value_index_65536_73:
      000413                        494 	.ds 2
      000415                        495 _spi_triangular_wave_dac_data_65536_73:
      000415                        496 	.ds 2
      000417                        497 _spi_ramp_signal_number_65536_79:
      000417                        498 	.ds 2
      000419                        499 _spi_ramp_signal_dac_value_index_65536_80:
      000419                        500 	.ds 2
      00041B                        501 _spi_ramp_signal_dac_data_65536_80:
      00041B                        502 	.ds 2
                                    503 ;--------------------------------------------------------
                                    504 ; absolute external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XABS    (ABS,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external initialized ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XISEG   (XDATA)
      000456                        511 _ms_flag::
      000456                        512 	.ds 1
      000457                        513 _transmission_complete::
      000457                        514 	.ds 2
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT0 (CODE)
                                    517 	.area GSINIT1 (CODE)
                                    518 	.area GSINIT2 (CODE)
                                    519 	.area GSINIT3 (CODE)
                                    520 	.area GSINIT4 (CODE)
                                    521 	.area GSINIT5 (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.area GSFINAL (CODE)
                                    524 	.area CSEG    (CODE)
                                    525 ;--------------------------------------------------------
                                    526 ; interrupt vector 
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
      002000                        529 __interrupt_vect:
      002000 02 20 06         [24]  530 	ljmp	__sdcc_gsinit_startup
                                    531 ;--------------------------------------------------------
                                    532 ; global & static initialisations
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.globl __sdcc_gsinit_startup
                                    539 	.globl __sdcc_program_startup
                                    540 	.globl __start__stack
                                    541 	.globl __mcs51_genXINIT
                                    542 	.globl __mcs51_genXRAMCLEAR
                                    543 	.globl __mcs51_genRAMCLEAR
                                    544 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  545 	ljmp	__sdcc_program_startup
                                    546 ;--------------------------------------------------------
                                    547 ; Home
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area HOME    (CODE)
      002003                        551 __sdcc_program_startup:
      002003 02 21 E9         [24]  552 	ljmp	_main
                                    553 ;	return from main will return to caller
                                    554 ;--------------------------------------------------------
                                    555 ; code
                                    556 ;--------------------------------------------------------
                                    557 	.area CSEG    (CODE)
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'putchar'
                                    560 ;------------------------------------------------------------
                                    561 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    562 ;------------------------------------------------------------
                                    563 ;	spi_and_bit_banging.c:208: int putchar(int charToSend) {
                                    564 ;	-----------------------------------------
                                    565 ;	 function putchar
                                    566 ;	-----------------------------------------
      002062                        567 _putchar:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
      002062 AF 83            [24]  576 	mov	r7,dph
      002064 E5 82            [12]  577 	mov	a,dpl
      002066 90 04 00         [24]  578 	mov	dptr,#_putchar_charToSend_65536_17
      002069 F0               [24]  579 	movx	@dptr,a
      00206A EF               [12]  580 	mov	a,r7
      00206B A3               [24]  581 	inc	dptr
      00206C F0               [24]  582 	movx	@dptr,a
                                    583 ;	spi_and_bit_banging.c:209: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  584 	mov	dptr,#_putchar_charToSend_65536_17
      002070 E0               [24]  585 	movx	a,@dptr
      002071 FE               [12]  586 	mov	r6,a
      002072 A3               [24]  587 	inc	dptr
      002073 E0               [24]  588 	movx	a,@dptr
      002074 FF               [12]  589 	mov	r7,a
      002075 8E 99            [24]  590 	mov	_SBUF,r6
                                    591 ;	spi_and_bit_banging.c:210: while (!TI);             /* Wait for transmission completion */
      002077                        592 00101$:
                                    593 ;	spi_and_bit_banging.c:211: TI = 0;                  /* Clear transmission flag */
                                    594 ;	assignBit
      002077 10 99 02         [24]  595 	jbc	_TI,00114$
      00207A 80 FB            [24]  596 	sjmp	00101$
      00207C                        597 00114$:
                                    598 ;	spi_and_bit_banging.c:212: return charToSend;
      00207C 8E 82            [24]  599 	mov	dpl,r6
      00207E 8F 83            [24]  600 	mov	dph,r7
                                    601 ;	spi_and_bit_banging.c:213: }
      002080 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'getchar'
                                    605 ;------------------------------------------------------------
                                    606 ;	spi_and_bit_banging.c:219: int getchar(void) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function getchar
                                    609 ;	-----------------------------------------
      002081                        610 _getchar:
                                    611 ;	spi_and_bit_banging.c:220: while (!RI);             /* Wait for reception completion */
      002081                        612 00101$:
                                    613 ;	spi_and_bit_banging.c:221: RI = 0;                  /* Clear reception flag */
                                    614 ;	assignBit
      002081 10 98 02         [24]  615 	jbc	_RI,00114$
      002084 80 FB            [24]  616 	sjmp	00101$
      002086                        617 00114$:
                                    618 ;	spi_and_bit_banging.c:222: return SBUF;             /* Return received character */
      002086 AE 99            [24]  619 	mov	r6,_SBUF
      002088 7F 00            [12]  620 	mov	r7,#0x00
      00208A 8E 82            [24]  621 	mov	dpl,r6
      00208C 8F 83            [24]  622 	mov	dph,r7
                                    623 ;	spi_and_bit_banging.c:223: }
      00208E 22               [24]  624 	ret
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'delay_ms'
                                    627 ;------------------------------------------------------------
                                    628 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    629 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    630 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    631 ;------------------------------------------------------------
                                    632 ;	spi_and_bit_banging.c:225: void delay_ms(unsigned int ms) {
                                    633 ;	-----------------------------------------
                                    634 ;	 function delay_ms
                                    635 ;	-----------------------------------------
      00208F                        636 _delay_ms:
      00208F AF 83            [24]  637 	mov	r7,dph
      002091 E5 82            [12]  638 	mov	a,dpl
      002093 90 04 02         [24]  639 	mov	dptr,#_delay_ms_ms_65536_21
      002096 F0               [24]  640 	movx	@dptr,a
      002097 EF               [12]  641 	mov	a,r7
      002098 A3               [24]  642 	inc	dptr
      002099 F0               [24]  643 	movx	@dptr,a
                                    644 ;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  645 	mov	dptr,#_delay_ms_ms_65536_21
      00209D E0               [24]  646 	movx	a,@dptr
      00209E FE               [12]  647 	mov	r6,a
      00209F A3               [24]  648 	inc	dptr
      0020A0 E0               [24]  649 	movx	a,@dptr
      0020A1 FF               [12]  650 	mov	r7,a
      0020A2 7C 00            [12]  651 	mov	r4,#0x00
      0020A4 7D 00            [12]  652 	mov	r5,#0x00
      0020A6                        653 00107$:
      0020A6 C3               [12]  654 	clr	c
      0020A7 EC               [12]  655 	mov	a,r4
      0020A8 9E               [12]  656 	subb	a,r6
      0020A9 ED               [12]  657 	mov	a,r5
      0020AA 9F               [12]  658 	subb	a,r7
      0020AB 50 14            [24]  659 	jnc	00109$
                                    660 ;	spi_and_bit_banging.c:228: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  661 	mov	r2,#0x7b
      0020AF 7B 00            [12]  662 	mov	r3,#0x00
      0020B1                        663 00105$:
      0020B1 1A               [12]  664 	dec	r2
      0020B2 BA FF 01         [24]  665 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  666 	dec	r3
      0020B6                        667 00130$:
      0020B6 EA               [12]  668 	mov	a,r2
      0020B7 4B               [12]  669 	orl	a,r3
      0020B8 70 F7            [24]  670 	jnz	00105$
                                    671 ;	spi_and_bit_banging.c:227: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  672 	inc	r4
      0020BB BC 00 E8         [24]  673 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  674 	inc	r5
      0020BF 80 E5            [24]  675 	sjmp	00107$
      0020C1                        676 00109$:
                                    677 ;	spi_and_bit_banging.c:229: }
      0020C1 22               [24]  678 	ret
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'display_menu'
                                    681 ;------------------------------------------------------------
                                    682 ;	spi_and_bit_banging.c:238: void display_menu(void) {
                                    683 ;	-----------------------------------------
                                    684 ;	 function display_menu
                                    685 ;	-----------------------------------------
      0020C2                        686 _display_menu:
                                    687 ;	spi_and_bit_banging.c:239: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      0020C2 74 57            [12]  688 	mov	a,#___str_0
      0020C4 C0 E0            [24]  689 	push	acc
      0020C6 74 38            [12]  690 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  691 	push	acc
      0020CA 74 80            [12]  692 	mov	a,#0x80
      0020CC C0 E0            [24]  693 	push	acc
      0020CE 12 27 F5         [24]  694 	lcall	_printf
      0020D1 15 81            [12]  695 	dec	sp
      0020D3 15 81            [12]  696 	dec	sp
      0020D5 15 81            [12]  697 	dec	sp
                                    698 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 1C            [12]  699 	mov	a,#___str_1
      0020D9 C0 E0            [24]  700 	push	acc
      0020DB 74 39            [12]  701 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  702 	push	acc
      0020DF 74 80            [12]  703 	mov	a,#0x80
      0020E1 C0 E0            [24]  704 	push	acc
      0020E3 12 27 F5         [24]  705 	lcall	_printf
      0020E6 15 81            [12]  706 	dec	sp
      0020E8 15 81            [12]  707 	dec	sp
      0020EA 15 81            [12]  708 	dec	sp
                                    709 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 63            [12]  710 	mov	a,#___str_2
      0020EE C0 E0            [24]  711 	push	acc
      0020F0 74 39            [12]  712 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  713 	push	acc
      0020F4 74 80            [12]  714 	mov	a,#0x80
      0020F6 C0 E0            [24]  715 	push	acc
      0020F8 12 27 F5         [24]  716 	lcall	_printf
      0020FB 15 81            [12]  717 	dec	sp
      0020FD 15 81            [12]  718 	dec	sp
      0020FF 15 81            [12]  719 	dec	sp
                                    720 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 26            [12]  721 	mov	a,#___str_3
      002103 C0 E0            [24]  722 	push	acc
      002105 74 3A            [12]  723 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  724 	push	acc
      002109 74 80            [12]  725 	mov	a,#0x80
      00210B C0 E0            [24]  726 	push	acc
      00210D 12 27 F5         [24]  727 	lcall	_printf
      002110 15 81            [12]  728 	dec	sp
      002112 15 81            [12]  729 	dec	sp
      002114 15 81            [12]  730 	dec	sp
                                    731 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 6F            [12]  732 	mov	a,#___str_4
      002118 C0 E0            [24]  733 	push	acc
      00211A 74 3A            [12]  734 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  735 	push	acc
      00211E 74 80            [12]  736 	mov	a,#0x80
      002120 C0 E0            [24]  737 	push	acc
      002122 12 27 F5         [24]  738 	lcall	_printf
      002125 15 81            [12]  739 	dec	sp
      002127 15 81            [12]  740 	dec	sp
      002129 15 81            [12]  741 	dec	sp
                                    742 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 29            [12]  743 	mov	a,#___str_5
      00212D C0 E0            [24]  744 	push	acc
      00212F 74 3B            [12]  745 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  746 	push	acc
      002133 74 80            [12]  747 	mov	a,#0x80
      002135 C0 E0            [24]  748 	push	acc
      002137 12 27 F5         [24]  749 	lcall	_printf
      00213A 15 81            [12]  750 	dec	sp
      00213C 15 81            [12]  751 	dec	sp
      00213E 15 81            [12]  752 	dec	sp
                                    753 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 70            [12]  754 	mov	a,#___str_6
      002142 C0 E0            [24]  755 	push	acc
      002144 74 3B            [12]  756 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  757 	push	acc
      002148 74 80            [12]  758 	mov	a,#0x80
      00214A C0 E0            [24]  759 	push	acc
      00214C 12 27 F5         [24]  760 	lcall	_printf
      00214F 15 81            [12]  761 	dec	sp
      002151 15 81            [12]  762 	dec	sp
      002153 15 81            [12]  763 	dec	sp
                                    764 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 B6            [12]  765 	mov	a,#___str_7
      002157 C0 E0            [24]  766 	push	acc
      002159 74 3B            [12]  767 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  768 	push	acc
      00215D 74 80            [12]  769 	mov	a,#0x80
      00215F C0 E0            [24]  770 	push	acc
      002161 12 27 F5         [24]  771 	lcall	_printf
      002164 15 81            [12]  772 	dec	sp
      002166 15 81            [12]  773 	dec	sp
      002168 15 81            [12]  774 	dec	sp
                                    775 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 FC            [12]  776 	mov	a,#___str_8
      00216C C0 E0            [24]  777 	push	acc
      00216E 74 3B            [12]  778 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  779 	push	acc
      002172 74 80            [12]  780 	mov	a,#0x80
      002174 C0 E0            [24]  781 	push	acc
      002176 12 27 F5         [24]  782 	lcall	_printf
      002179 15 81            [12]  783 	dec	sp
      00217B 15 81            [12]  784 	dec	sp
      00217D 15 81            [12]  785 	dec	sp
                                    786 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 42            [12]  787 	mov	a,#___str_9
      002181 C0 E0            [24]  788 	push	acc
      002183 74 3C            [12]  789 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  790 	push	acc
      002187 74 80            [12]  791 	mov	a,#0x80
      002189 C0 E0            [24]  792 	push	acc
      00218B 12 27 F5         [24]  793 	lcall	_printf
      00218E 15 81            [12]  794 	dec	sp
      002190 15 81            [12]  795 	dec	sp
      002192 15 81            [12]  796 	dec	sp
                                    797 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 88            [12]  798 	mov	a,#___str_10
      002196 C0 E0            [24]  799 	push	acc
      002198 74 3C            [12]  800 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  801 	push	acc
      00219C 74 80            [12]  802 	mov	a,#0x80
      00219E C0 E0            [24]  803 	push	acc
      0021A0 12 27 F5         [24]  804 	lcall	_printf
      0021A3 15 81            [12]  805 	dec	sp
      0021A5 15 81            [12]  806 	dec	sp
      0021A7 15 81            [12]  807 	dec	sp
                                    808 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 CE            [12]  809 	mov	a,#___str_11
      0021AB C0 E0            [24]  810 	push	acc
      0021AD 74 3C            [12]  811 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  812 	push	acc
      0021B1 74 80            [12]  813 	mov	a,#0x80
      0021B3 C0 E0            [24]  814 	push	acc
      0021B5 12 27 F5         [24]  815 	lcall	_printf
      0021B8 15 81            [12]  816 	dec	sp
      0021BA 15 81            [12]  817 	dec	sp
      0021BC 15 81            [12]  818 	dec	sp
                                    819 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 14            [12]  820 	mov	a,#___str_12
      0021C0 C0 E0            [24]  821 	push	acc
      0021C2 74 3D            [12]  822 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  823 	push	acc
      0021C6 74 80            [12]  824 	mov	a,#0x80
      0021C8 C0 E0            [24]  825 	push	acc
      0021CA 12 27 F5         [24]  826 	lcall	_printf
      0021CD 15 81            [12]  827 	dec	sp
      0021CF 15 81            [12]  828 	dec	sp
      0021D1 15 81            [12]  829 	dec	sp
                                    830 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 CE            [12]  831 	mov	a,#___str_13
      0021D5 C0 E0            [24]  832 	push	acc
      0021D7 74 3D            [12]  833 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  834 	push	acc
      0021DB 74 80            [12]  835 	mov	a,#0x80
      0021DD C0 E0            [24]  836 	push	acc
      0021DF 12 27 F5         [24]  837 	lcall	_printf
      0021E2 15 81            [12]  838 	dec	sp
      0021E4 15 81            [12]  839 	dec	sp
      0021E6 15 81            [12]  840 	dec	sp
                                    841 ;	spi_and_bit_banging.c:253: }
      0021E8 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'main'
                                    845 ;------------------------------------------------------------
                                    846 ;user_input                Allocated with name '_main_user_input_131072_35'
                                    847 ;result                    Allocated with name '_main_result_196609_37'
                                    848 ;result2                   Allocated with name '_main_result2_196610_38'
                                    849 ;result3                   Allocated with name '_main_result3_262146_39'
                                    850 ;result4                   Allocated with name '_main_result4_262146_40'
                                    851 ;result5                   Allocated with name '_main_result5_262146_41'
                                    852 ;------------------------------------------------------------
                                    853 ;	spi_and_bit_banging.c:255: int main(void)
                                    854 ;	-----------------------------------------
                                    855 ;	 function main
                                    856 ;	-----------------------------------------
      0021E9                        857 _main:
                                    858 ;	spi_and_bit_banging.c:257: display_menu();
      0021E9 12 20 C2         [24]  859 	lcall	_display_menu
                                    860 ;	spi_and_bit_banging.c:259: while(1)
      0021EC                        861 00111$:
                                    862 ;	spi_and_bit_banging.c:261: char user_input = getchar();
      0021EC 12 20 81         [24]  863 	lcall	_getchar
      0021EF AE 82            [24]  864 	mov	r6,dpl
                                    865 ;	spi_and_bit_banging.c:262: printf("| $ %c\n\r", user_input);
      0021F1 8E 05            [24]  866 	mov	ar5,r6
      0021F3 7F 00            [12]  867 	mov	r7,#0x00
      0021F5 C0 06            [24]  868 	push	ar6
      0021F7 C0 05            [24]  869 	push	ar5
      0021F9 C0 07            [24]  870 	push	ar7
      0021FB 74 E0            [12]  871 	mov	a,#___str_14
      0021FD C0 E0            [24]  872 	push	acc
      0021FF 74 3D            [12]  873 	mov	a,#(___str_14 >> 8)
      002201 C0 E0            [24]  874 	push	acc
      002203 74 80            [12]  875 	mov	a,#0x80
      002205 C0 E0            [24]  876 	push	acc
      002207 12 27 F5         [24]  877 	lcall	_printf
      00220A E5 81            [12]  878 	mov	a,sp
      00220C 24 FB            [12]  879 	add	a,#0xfb
      00220E F5 81            [12]  880 	mov	sp,a
                                    881 ;	spi_and_bit_banging.c:263: printf("\n\r");
      002210 74 E9            [12]  882 	mov	a,#___str_15
      002212 C0 E0            [24]  883 	push	acc
      002214 74 3D            [12]  884 	mov	a,#(___str_15 >> 8)
      002216 C0 E0            [24]  885 	push	acc
      002218 74 80            [12]  886 	mov	a,#0x80
      00221A C0 E0            [24]  887 	push	acc
      00221C 12 27 F5         [24]  888 	lcall	_printf
      00221F 15 81            [12]  889 	dec	sp
      002221 15 81            [12]  890 	dec	sp
      002223 15 81            [12]  891 	dec	sp
      002225 D0 06            [24]  892 	pop	ar6
                                    893 ;	spi_and_bit_banging.c:264: switch(user_input)
      002227 BE 3F 03         [24]  894 	cjne	r6,#0x3f,00147$
      00222A 02 23 12         [24]  895 	ljmp	00107$
      00222D                        896 00147$:
      00222D BE 42 02         [24]  897 	cjne	r6,#0x42,00148$
      002230 80 3F            [24]  898 	sjmp	00102$
      002232                        899 00148$:
      002232 BE 44 03         [24]  900 	cjne	r6,#0x44,00149$
      002235 02 22 F7         [24]  901 	ljmp	00106$
      002238                        902 00149$:
      002238 BE 4D 02         [24]  903 	cjne	r6,#0x4d,00150$
      00223B 80 13            [24]  904 	sjmp	00101$
      00223D                        905 00150$:
      00223D BE 52 03         [24]  906 	cjne	r6,#0x52,00151$
      002240 02 22 D5         [24]  907 	ljmp	00105$
      002243                        908 00151$:
      002243 BE 53 02         [24]  909 	cjne	r6,#0x53,00152$
      002246 80 4D            [24]  910 	sjmp	00103$
      002248                        911 00152$:
      002248 BE 54 02         [24]  912 	cjne	r6,#0x54,00153$
      00224B 80 66            [24]  913 	sjmp	00104$
      00224D                        914 00153$:
      00224D 02 23 18         [24]  915 	ljmp	00108$
                                    916 ;	spi_and_bit_banging.c:266: case 'M':
      002250                        917 00101$:
                                    918 ;	spi_and_bit_banging.c:267: spi_init();
      002250 12 25 87         [24]  919 	lcall	_spi_init
                                    920 ;	spi_and_bit_banging.c:268: unsigned char result = take_data();
      002253 12 23 7B         [24]  921 	lcall	_take_data
                                    922 ;	spi_and_bit_banging.c:269: mannual_spi(result);
      002256 12 24 CF         [24]  923 	lcall	_mannual_spi
                                    924 ;	spi_and_bit_banging.c:270: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      002259 74 EC            [12]  925 	mov	a,#___str_16
      00225B C0 E0            [24]  926 	push	acc
      00225D 74 3D            [12]  927 	mov	a,#(___str_16 >> 8)
      00225F C0 E0            [24]  928 	push	acc
      002261 74 80            [12]  929 	mov	a,#0x80
      002263 C0 E0            [24]  930 	push	acc
      002265 12 27 F5         [24]  931 	lcall	_printf
      002268 15 81            [12]  932 	dec	sp
      00226A 15 81            [12]  933 	dec	sp
      00226C 15 81            [12]  934 	dec	sp
                                    935 ;	spi_and_bit_banging.c:271: break;
      00226E 02 21 EC         [24]  936 	ljmp	00111$
                                    937 ;	spi_and_bit_banging.c:273: case 'B':
      002271                        938 00102$:
                                    939 ;	spi_and_bit_banging.c:274: bit_bang_spi_init();
      002271 12 25 91         [24]  940 	lcall	_bit_bang_spi_init
                                    941 ;	spi_and_bit_banging.c:275: unsigned char result2 = take_data();
      002274 12 23 7B         [24]  942 	lcall	_take_data
                                    943 ;	spi_and_bit_banging.c:276: bit_bang_spi(result2);
      002277 12 23 48         [24]  944 	lcall	_bit_bang_spi
                                    945 ;	spi_and_bit_banging.c:277: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      00227A 74 0E            [12]  946 	mov	a,#___str_17
      00227C C0 E0            [24]  947 	push	acc
      00227E 74 3E            [12]  948 	mov	a,#(___str_17 >> 8)
      002280 C0 E0            [24]  949 	push	acc
      002282 74 80            [12]  950 	mov	a,#0x80
      002284 C0 E0            [24]  951 	push	acc
      002286 12 27 F5         [24]  952 	lcall	_printf
      002289 15 81            [12]  953 	dec	sp
      00228B 15 81            [12]  954 	dec	sp
      00228D 15 81            [12]  955 	dec	sp
                                    956 ;	spi_and_bit_banging.c:278: spi_init();
      00228F 12 25 87         [24]  957 	lcall	_spi_init
                                    958 ;	spi_and_bit_banging.c:279: break;
      002292 02 21 EC         [24]  959 	ljmp	00111$
                                    960 ;	spi_and_bit_banging.c:281: case 'S':
      002295                        961 00103$:
                                    962 ;	spi_and_bit_banging.c:283: unsigned char result3 = take_data();
      002295 12 23 7B         [24]  963 	lcall	_take_data
                                    964 ;	spi_and_bit_banging.c:284: mannual_spi(result3);
      002298 12 24 CF         [24]  965 	lcall	_mannual_spi
                                    966 ;	spi_and_bit_banging.c:285: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      00229B 74 EC            [12]  967 	mov	a,#___str_16
      00229D C0 E0            [24]  968 	push	acc
      00229F 74 3D            [12]  969 	mov	a,#(___str_16 >> 8)
      0022A1 C0 E0            [24]  970 	push	acc
      0022A3 74 80            [12]  971 	mov	a,#0x80
      0022A5 C0 E0            [24]  972 	push	acc
      0022A7 12 27 F5         [24]  973 	lcall	_printf
      0022AA 15 81            [12]  974 	dec	sp
      0022AC 15 81            [12]  975 	dec	sp
      0022AE 15 81            [12]  976 	dec	sp
                                    977 ;	spi_and_bit_banging.c:286: break;
      0022B0 02 21 EC         [24]  978 	ljmp	00111$
                                    979 ;	spi_and_bit_banging.c:290: case 'T':
      0022B3                        980 00104$:
                                    981 ;	spi_and_bit_banging.c:292: unsigned char result4 = take_data();
      0022B3 12 23 7B         [24]  982 	lcall	_take_data
                                    983 ;	spi_and_bit_banging.c:293: spi_triangular_wave(result4);
      0022B6 7E 00            [12]  984 	mov	r6,#0x00
      0022B8 8E 83            [24]  985 	mov	dph,r6
      0022BA 12 25 EB         [24]  986 	lcall	_spi_triangular_wave
                                    987 ;	spi_and_bit_banging.c:294: printf(">> TRIANGULAR WAVE GENERATION COMPLETE\n\r");
      0022BD 74 33            [12]  988 	mov	a,#___str_18
      0022BF C0 E0            [24]  989 	push	acc
      0022C1 74 3E            [12]  990 	mov	a,#(___str_18 >> 8)
      0022C3 C0 E0            [24]  991 	push	acc
      0022C5 74 80            [12]  992 	mov	a,#0x80
      0022C7 C0 E0            [24]  993 	push	acc
      0022C9 12 27 F5         [24]  994 	lcall	_printf
      0022CC 15 81            [12]  995 	dec	sp
      0022CE 15 81            [12]  996 	dec	sp
      0022D0 15 81            [12]  997 	dec	sp
                                    998 ;	spi_and_bit_banging.c:295: break;
      0022D2 02 21 EC         [24]  999 	ljmp	00111$
                                   1000 ;	spi_and_bit_banging.c:298: case 'R':
      0022D5                       1001 00105$:
                                   1002 ;	spi_and_bit_banging.c:300: unsigned char result5 = take_data();
      0022D5 12 23 7B         [24] 1003 	lcall	_take_data
                                   1004 ;	spi_and_bit_banging.c:301: spi_ramp_signal(result5);
      0022D8 7E 00            [12] 1005 	mov	r6,#0x00
      0022DA 8E 83            [24] 1006 	mov	dph,r6
      0022DC 12 26 C9         [24] 1007 	lcall	_spi_ramp_signal
                                   1008 ;	spi_and_bit_banging.c:302: printf(">> RAMP WAVE GENERATION COMPLETE\n\r");
      0022DF 74 5C            [12] 1009 	mov	a,#___str_19
      0022E1 C0 E0            [24] 1010 	push	acc
      0022E3 74 3E            [12] 1011 	mov	a,#(___str_19 >> 8)
      0022E5 C0 E0            [24] 1012 	push	acc
      0022E7 74 80            [12] 1013 	mov	a,#0x80
      0022E9 C0 E0            [24] 1014 	push	acc
      0022EB 12 27 F5         [24] 1015 	lcall	_printf
      0022EE 15 81            [12] 1016 	dec	sp
      0022F0 15 81            [12] 1017 	dec	sp
      0022F2 15 81            [12] 1018 	dec	sp
                                   1019 ;	spi_and_bit_banging.c:303: break;
      0022F4 02 21 EC         [24] 1020 	ljmp	00111$
                                   1021 ;	spi_and_bit_banging.c:306: case 'D':
      0022F7                       1022 00106$:
                                   1023 ;	spi_and_bit_banging.c:308: demo_mode();
      0022F7 12 23 30         [24] 1024 	lcall	_demo_mode
                                   1025 ;	spi_and_bit_banging.c:309: printf(">> DEMO COMPLETE\n\r");
      0022FA 74 7F            [12] 1026 	mov	a,#___str_20
      0022FC C0 E0            [24] 1027 	push	acc
      0022FE 74 3E            [12] 1028 	mov	a,#(___str_20 >> 8)
      002300 C0 E0            [24] 1029 	push	acc
      002302 74 80            [12] 1030 	mov	a,#0x80
      002304 C0 E0            [24] 1031 	push	acc
      002306 12 27 F5         [24] 1032 	lcall	_printf
      002309 15 81            [12] 1033 	dec	sp
      00230B 15 81            [12] 1034 	dec	sp
      00230D 15 81            [12] 1035 	dec	sp
                                   1036 ;	spi_and_bit_banging.c:310: break;
      00230F 02 21 EC         [24] 1037 	ljmp	00111$
                                   1038 ;	spi_and_bit_banging.c:312: case '?':
      002312                       1039 00107$:
                                   1040 ;	spi_and_bit_banging.c:313: display_menu();
      002312 12 20 C2         [24] 1041 	lcall	_display_menu
                                   1042 ;	spi_and_bit_banging.c:314: break;  
      002315 02 21 EC         [24] 1043 	ljmp	00111$
                                   1044 ;	spi_and_bit_banging.c:316: default:
      002318                       1045 00108$:
                                   1046 ;	spi_and_bit_banging.c:317: printf(">> INVALID INPUT\n\r");
      002318 74 92            [12] 1047 	mov	a,#___str_21
      00231A C0 E0            [24] 1048 	push	acc
      00231C 74 3E            [12] 1049 	mov	a,#(___str_21 >> 8)
      00231E C0 E0            [24] 1050 	push	acc
      002320 74 80            [12] 1051 	mov	a,#0x80
      002322 C0 E0            [24] 1052 	push	acc
      002324 12 27 F5         [24] 1053 	lcall	_printf
      002327 15 81            [12] 1054 	dec	sp
      002329 15 81            [12] 1055 	dec	sp
      00232B 15 81            [12] 1056 	dec	sp
                                   1057 ;	spi_and_bit_banging.c:322: }
                                   1058 ;	spi_and_bit_banging.c:324: }
      00232D 02 21 EC         [24] 1059 	ljmp	00111$
                                   1060 ;------------------------------------------------------------
                                   1061 ;Allocation info for local variables in function 'demo_mode'
                                   1062 ;------------------------------------------------------------
                                   1063 ;	spi_and_bit_banging.c:330: void demo_mode()
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function demo_mode
                                   1066 ;	-----------------------------------------
      002330                       1067 _demo_mode:
                                   1068 ;	spi_and_bit_banging.c:332: mannual_spi(7);
      002330 75 82 07         [24] 1069 	mov	dpl,#0x07
      002333 12 24 CF         [24] 1070 	lcall	_mannual_spi
                                   1071 ;	spi_and_bit_banging.c:333: bit_bang_spi(7);
      002336 75 82 07         [24] 1072 	mov	dpl,#0x07
      002339 12 23 48         [24] 1073 	lcall	_bit_bang_spi
                                   1074 ;	spi_and_bit_banging.c:334: spi_ramp_signal(7);
      00233C 90 00 07         [24] 1075 	mov	dptr,#0x0007
      00233F 12 26 C9         [24] 1076 	lcall	_spi_ramp_signal
                                   1077 ;	spi_and_bit_banging.c:335: spi_triangular_wave(7);
      002342 90 00 07         [24] 1078 	mov	dptr,#0x0007
                                   1079 ;	spi_and_bit_banging.c:336: }
      002345 02 25 EB         [24] 1080 	ljmp	_spi_triangular_wave
                                   1081 ;------------------------------------------------------------
                                   1082 ;Allocation info for local variables in function 'bit_bang_spi'
                                   1083 ;------------------------------------------------------------
                                   1084 ;number                    Allocated with name '_bit_bang_spi_number_65536_44'
                                   1085 ;------------------------------------------------------------
                                   1086 ;	spi_and_bit_banging.c:342: void bit_bang_spi(unsigned char number)
                                   1087 ;	-----------------------------------------
                                   1088 ;	 function bit_bang_spi
                                   1089 ;	-----------------------------------------
      002348                       1090 _bit_bang_spi:
      002348 E5 82            [12] 1091 	mov	a,dpl
      00234A 90 04 04         [24] 1092 	mov	dptr,#_bit_bang_spi_number_65536_44
      00234D F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	spi_and_bit_banging.c:344: while(number > 0)
      00234E                       1095 00101$:
      00234E 90 04 04         [24] 1096 	mov	dptr,#_bit_bang_spi_number_65536_44
      002351 E0               [24] 1097 	movx	a,@dptr
      002352 FF               [12] 1098 	mov	r7,a
      002353 E0               [24] 1099 	movx	a,@dptr
      002354 60 24            [24] 1100 	jz	00104$
                                   1101 ;	spi_and_bit_banging.c:346: bit_bang_spi_write(TEST_DATA);
      002356 90 1F F0         [24] 1102 	mov	dptr,#0x1ff0
      002359 C0 07            [24] 1103 	push	ar7
      00235B 12 25 9B         [24] 1104 	lcall	_bit_bang_spi_write
                                   1105 ;	spi_and_bit_banging.c:347: delay_ms(DELAY_PERIOD);
      00235E 90 01 F4         [24] 1106 	mov	dptr,#0x01f4
      002361 12 20 8F         [24] 1107 	lcall	_delay_ms
                                   1108 ;	spi_and_bit_banging.c:348: bit_bang_spi_write(IDLE_DATA);
      002364 90 10 00         [24] 1109 	mov	dptr,#0x1000
      002367 12 25 9B         [24] 1110 	lcall	_bit_bang_spi_write
                                   1111 ;	spi_and_bit_banging.c:349: delay_ms(DELAY_PERIOD);
      00236A 90 01 F4         [24] 1112 	mov	dptr,#0x01f4
      00236D 12 20 8F         [24] 1113 	lcall	_delay_ms
      002370 D0 07            [24] 1114 	pop	ar7
                                   1115 ;	spi_and_bit_banging.c:350: number = number - 1;
      002372 EF               [12] 1116 	mov	a,r7
      002373 14               [12] 1117 	dec	a
      002374 90 04 04         [24] 1118 	mov	dptr,#_bit_bang_spi_number_65536_44
      002377 F0               [24] 1119 	movx	@dptr,a
      002378 80 D4            [24] 1120 	sjmp	00101$
      00237A                       1121 00104$:
                                   1122 ;	spi_and_bit_banging.c:352: }
      00237A 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'take_data'
                                   1126 ;------------------------------------------------------------
                                   1127 ;input                     Allocated with name '_take_data_input_65537_48'
                                   1128 ;i                         Allocated with name '_take_data_i_65537_48'
                                   1129 ;c                         Allocated with name '_take_data_c_65537_48'
                                   1130 ;data                      Allocated with name '_take_data_data_65538_52'
                                   1131 ;------------------------------------------------------------
                                   1132 ;	spi_and_bit_banging.c:353: unsigned char take_data()
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function take_data
                                   1135 ;	-----------------------------------------
      00237B                       1136 _take_data:
                                   1137 ;	spi_and_bit_banging.c:355: printf("│ Enter number (hex, up to 2 characters): \n\r|");
      00237B 74 A5            [12] 1138 	mov	a,#___str_22
      00237D C0 E0            [24] 1139 	push	acc
      00237F 74 3E            [12] 1140 	mov	a,#(___str_22 >> 8)
      002381 C0 E0            [24] 1141 	push	acc
      002383 74 80            [12] 1142 	mov	a,#0x80
      002385 C0 E0            [24] 1143 	push	acc
      002387 12 27 F5         [24] 1144 	lcall	_printf
      00238A 15 81            [12] 1145 	dec	sp
      00238C 15 81            [12] 1146 	dec	sp
      00238E 15 81            [12] 1147 	dec	sp
                                   1148 ;	spi_and_bit_banging.c:356: char input[4] = {0};  // Array for 3 hex chars + null terminator
      002390 90 04 05         [24] 1149 	mov	dptr,#_take_data_input_65537_48
      002393 E4               [12] 1150 	clr	a
      002394 F0               [24] 1151 	movx	@dptr,a
      002395 90 04 06         [24] 1152 	mov	dptr,#(_take_data_input_65537_48 + 0x0001)
      002398 F0               [24] 1153 	movx	@dptr,a
      002399 90 04 07         [24] 1154 	mov	dptr,#(_take_data_input_65537_48 + 0x0002)
      00239C F0               [24] 1155 	movx	@dptr,a
      00239D 90 04 08         [24] 1156 	mov	dptr,#(_take_data_input_65537_48 + 0x0003)
      0023A0 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	spi_and_bit_banging.c:360: printf("$ ");
      0023A1 74 D5            [12] 1159 	mov	a,#___str_23
      0023A3 C0 E0            [24] 1160 	push	acc
      0023A5 74 3E            [12] 1161 	mov	a,#(___str_23 >> 8)
      0023A7 C0 E0            [24] 1162 	push	acc
      0023A9 74 80            [12] 1163 	mov	a,#0x80
      0023AB C0 E0            [24] 1164 	push	acc
      0023AD 12 27 F5         [24] 1165 	lcall	_printf
      0023B0 15 81            [12] 1166 	dec	sp
      0023B2 15 81            [12] 1167 	dec	sp
      0023B4 15 81            [12] 1168 	dec	sp
                                   1169 ;	spi_and_bit_banging.c:362: while (i < 3) {
      0023B6 7E 00            [12] 1170 	mov	r6,#0x00
      0023B8 7F 00            [12] 1171 	mov	r7,#0x00
      0023BA                       1172 00111$:
      0023BA C3               [12] 1173 	clr	c
      0023BB EE               [12] 1174 	mov	a,r6
      0023BC 94 03            [12] 1175 	subb	a,#0x03
      0023BE EF               [12] 1176 	mov	a,r7
      0023BF 64 80            [12] 1177 	xrl	a,#0x80
      0023C1 94 80            [12] 1178 	subb	a,#0x80
      0023C3 50 5B            [24] 1179 	jnc	00113$
                                   1180 ;	spi_and_bit_banging.c:364: c = getchar();
      0023C5 C0 07            [24] 1181 	push	ar7
      0023C7 C0 06            [24] 1182 	push	ar6
      0023C9 12 20 81         [24] 1183 	lcall	_getchar
      0023CC AC 82            [24] 1184 	mov	r4,dpl
      0023CE AD 83            [24] 1185 	mov	r5,dph
      0023D0 D0 06            [24] 1186 	pop	ar6
      0023D2 D0 07            [24] 1187 	pop	ar7
                                   1188 ;	spi_and_bit_banging.c:367: if (c == '\r' || c == '\n') {
      0023D4 BC 0D 02         [24] 1189 	cjne	r4,#0x0d,00194$
      0023D7 80 47            [24] 1190 	sjmp	00113$
      0023D9                       1191 00194$:
      0023D9 BC 0A 02         [24] 1192 	cjne	r4,#0x0a,00195$
      0023DC 80 42            [24] 1193 	sjmp	00113$
      0023DE                       1194 00195$:
                                   1195 ;	spi_and_bit_banging.c:372: if ((c >= '0' && c <= '9') ||
      0023DE BC 30 00         [24] 1196 	cjne	r4,#0x30,00196$
      0023E1                       1197 00196$:
      0023E1 40 05            [24] 1198 	jc	00108$
      0023E3 EC               [12] 1199 	mov	a,r4
      0023E4 24 C6            [12] 1200 	add	a,#0xff - 0x39
      0023E6 50 14            [24] 1201 	jnc	00104$
      0023E8                       1202 00108$:
                                   1203 ;	spi_and_bit_banging.c:373: (c >= 'a' && c <= 'f') ||
      0023E8 BC 61 00         [24] 1204 	cjne	r4,#0x61,00199$
      0023EB                       1205 00199$:
      0023EB 40 05            [24] 1206 	jc	00110$
      0023ED EC               [12] 1207 	mov	a,r4
      0023EE 24 99            [12] 1208 	add	a,#0xff - 0x66
      0023F0 50 0A            [24] 1209 	jnc	00104$
      0023F2                       1210 00110$:
                                   1211 ;	spi_and_bit_banging.c:374: (c >= 'A' && c <= 'F')) {
      0023F2 BC 41 00         [24] 1212 	cjne	r4,#0x41,00202$
      0023F5                       1213 00202$:
      0023F5 40 C3            [24] 1214 	jc	00111$
      0023F7 EC               [12] 1215 	mov	a,r4
      0023F8 24 B9            [12] 1216 	add	a,#0xff - 0x46
      0023FA 40 BE            [24] 1217 	jc	00111$
      0023FC                       1218 00104$:
                                   1219 ;	spi_and_bit_banging.c:376: input[i] = c;
      0023FC EE               [12] 1220 	mov	a,r6
      0023FD 24 05            [12] 1221 	add	a,#_take_data_input_65537_48
      0023FF F5 82            [12] 1222 	mov	dpl,a
      002401 EF               [12] 1223 	mov	a,r7
      002402 34 04            [12] 1224 	addc	a,#(_take_data_input_65537_48 >> 8)
      002404 F5 83            [12] 1225 	mov	dph,a
      002406 EC               [12] 1226 	mov	a,r4
      002407 F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	spi_and_bit_banging.c:377: putchar(c);  // Echo character back
      002408 7D 00            [12] 1229 	mov	r5,#0x00
      00240A 8C 82            [24] 1230 	mov	dpl,r4
      00240C 8D 83            [24] 1231 	mov	dph,r5
      00240E C0 07            [24] 1232 	push	ar7
      002410 C0 06            [24] 1233 	push	ar6
      002412 12 20 62         [24] 1234 	lcall	_putchar
      002415 D0 06            [24] 1235 	pop	ar6
      002417 D0 07            [24] 1236 	pop	ar7
                                   1237 ;	spi_and_bit_banging.c:378: i++;
      002419 0E               [12] 1238 	inc	r6
      00241A BE 00 9D         [24] 1239 	cjne	r6,#0x00,00111$
      00241D 0F               [12] 1240 	inc	r7
      00241E 80 9A            [24] 1241 	sjmp	00111$
      002420                       1242 00113$:
                                   1243 ;	spi_and_bit_banging.c:382: input[i] = '\0';  // Null-terminate the string
      002420 EE               [12] 1244 	mov	a,r6
      002421 24 05            [12] 1245 	add	a,#_take_data_input_65537_48
      002423 F5 82            [12] 1246 	mov	dpl,a
      002425 EF               [12] 1247 	mov	a,r7
      002426 34 04            [12] 1248 	addc	a,#(_take_data_input_65537_48 >> 8)
      002428 F5 83            [12] 1249 	mov	dph,a
      00242A E4               [12] 1250 	clr	a
      00242B F0               [24] 1251 	movx	@dptr,a
                                   1252 ;	spi_and_bit_banging.c:385: unsigned char data = 0;
      00242C 90 04 09         [24] 1253 	mov	dptr,#_take_data_data_65538_52
      00242F F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	spi_and_bit_banging.c:386: for (i = 0; input[i] != '\0'; i++) {
      002430 7E 00            [12] 1256 	mov	r6,#0x00
      002432 7F 00            [12] 1257 	mov	r7,#0x00
      002434                       1258 00127$:
      002434 EE               [12] 1259 	mov	a,r6
      002435 24 05            [12] 1260 	add	a,#_take_data_input_65537_48
      002437 F5 82            [12] 1261 	mov	dpl,a
      002439 EF               [12] 1262 	mov	a,r7
      00243A 34 04            [12] 1263 	addc	a,#(_take_data_input_65537_48 >> 8)
      00243C F5 83            [12] 1264 	mov	dph,a
      00243E E0               [24] 1265 	movx	a,@dptr
      00243F FD               [12] 1266 	mov	r5,a
      002440 70 03            [24] 1267 	jnz	00206$
      002442 02 24 A7         [24] 1268 	ljmp	00125$
      002445                       1269 00206$:
                                   1270 ;	spi_and_bit_banging.c:387: data = data * 16;
      002445 90 04 09         [24] 1271 	mov	dptr,#_take_data_data_65538_52
      002448 E0               [24] 1272 	movx	a,@dptr
      002449 C4               [12] 1273 	swap	a
      00244A 54 F0            [12] 1274 	anl	a,#0xf0
      00244C FC               [12] 1275 	mov	r4,a
      00244D F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	spi_and_bit_banging.c:388: if (input[i] >= '0' && input[i] <= '9')
      00244E BD 30 00         [24] 1278 	cjne	r5,#0x30,00207$
      002451                       1279 00207$:
      002451 40 12            [24] 1280 	jc	00122$
      002453 ED               [12] 1281 	mov	a,r5
      002454 24 C6            [12] 1282 	add	a,#0xff - 0x39
      002456 40 0D            [24] 1283 	jc	00122$
                                   1284 ;	spi_and_bit_banging.c:389: data += input[i] - '0';
      002458 ED               [12] 1285 	mov	a,r5
      002459 24 D0            [12] 1286 	add	a,#0xd0
      00245B FD               [12] 1287 	mov	r5,a
      00245C 90 04 09         [24] 1288 	mov	dptr,#_take_data_data_65538_52
      00245F E0               [24] 1289 	movx	a,@dptr
      002460 FC               [12] 1290 	mov	r4,a
      002461 2D               [12] 1291 	add	a,r5
      002462 F0               [24] 1292 	movx	@dptr,a
      002463 80 3A            [24] 1293 	sjmp	00128$
      002465                       1294 00122$:
                                   1295 ;	spi_and_bit_banging.c:390: else if (input[i] >= 'A' && input[i] <= 'F')
      002465 EE               [12] 1296 	mov	a,r6
      002466 24 05            [12] 1297 	add	a,#_take_data_input_65537_48
      002468 F5 82            [12] 1298 	mov	dpl,a
      00246A EF               [12] 1299 	mov	a,r7
      00246B 34 04            [12] 1300 	addc	a,#(_take_data_input_65537_48 >> 8)
      00246D F5 83            [12] 1301 	mov	dph,a
      00246F E0               [24] 1302 	movx	a,@dptr
      002470 FD               [12] 1303 	mov	r5,a
      002471 BD 41 00         [24] 1304 	cjne	r5,#0x41,00210$
      002474                       1305 00210$:
      002474 40 14            [24] 1306 	jc	00118$
      002476 ED               [12] 1307 	mov	a,r5
      002477 24 B9            [12] 1308 	add	a,#0xff - 0x46
      002479 40 0F            [24] 1309 	jc	00118$
                                   1310 ;	spi_and_bit_banging.c:391: data += input[i] - 'A' + 10;
      00247B 8D 04            [24] 1311 	mov	ar4,r5
      00247D 74 C9            [12] 1312 	mov	a,#0xc9
      00247F 2C               [12] 1313 	add	a,r4
      002480 FC               [12] 1314 	mov	r4,a
      002481 90 04 09         [24] 1315 	mov	dptr,#_take_data_data_65538_52
      002484 E0               [24] 1316 	movx	a,@dptr
      002485 FB               [12] 1317 	mov	r3,a
      002486 2C               [12] 1318 	add	a,r4
      002487 F0               [24] 1319 	movx	@dptr,a
      002488 80 15            [24] 1320 	sjmp	00128$
      00248A                       1321 00118$:
                                   1322 ;	spi_and_bit_banging.c:392: else if (input[i] >= 'a' && input[i] <= 'f')
      00248A BD 61 00         [24] 1323 	cjne	r5,#0x61,00213$
      00248D                       1324 00213$:
      00248D 40 10            [24] 1325 	jc	00128$
      00248F ED               [12] 1326 	mov	a,r5
      002490 24 99            [12] 1327 	add	a,#0xff - 0x66
      002492 40 0B            [24] 1328 	jc	00128$
                                   1329 ;	spi_and_bit_banging.c:393: data += input[i] - 'a' + 10;
      002494 74 A9            [12] 1330 	mov	a,#0xa9
      002496 2D               [12] 1331 	add	a,r5
      002497 FD               [12] 1332 	mov	r5,a
      002498 90 04 09         [24] 1333 	mov	dptr,#_take_data_data_65538_52
      00249B E0               [24] 1334 	movx	a,@dptr
      00249C FC               [12] 1335 	mov	r4,a
      00249D 2D               [12] 1336 	add	a,r5
      00249E F0               [24] 1337 	movx	@dptr,a
      00249F                       1338 00128$:
                                   1339 ;	spi_and_bit_banging.c:386: for (i = 0; input[i] != '\0'; i++) {
      00249F 0E               [12] 1340 	inc	r6
      0024A0 BE 00 01         [24] 1341 	cjne	r6,#0x00,00216$
      0024A3 0F               [12] 1342 	inc	r7
      0024A4                       1343 00216$:
      0024A4 02 24 34         [24] 1344 	ljmp	00127$
      0024A7                       1345 00125$:
                                   1346 ;	spi_and_bit_banging.c:396: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0024A7 90 04 09         [24] 1347 	mov	dptr,#_take_data_data_65538_52
      0024AA E0               [24] 1348 	movx	a,@dptr
      0024AB FF               [12] 1349 	mov	r7,a
      0024AC FD               [12] 1350 	mov	r5,a
      0024AD 7E 00            [12] 1351 	mov	r6,#0x00
      0024AF C0 07            [24] 1352 	push	ar7
      0024B1 C0 05            [24] 1353 	push	ar5
      0024B3 C0 06            [24] 1354 	push	ar6
      0024B5 74 D8            [12] 1355 	mov	a,#___str_24
      0024B7 C0 E0            [24] 1356 	push	acc
      0024B9 74 3E            [12] 1357 	mov	a,#(___str_24 >> 8)
      0024BB C0 E0            [24] 1358 	push	acc
      0024BD 74 80            [12] 1359 	mov	a,#0x80
      0024BF C0 E0            [24] 1360 	push	acc
      0024C1 12 27 F5         [24] 1361 	lcall	_printf
      0024C4 E5 81            [12] 1362 	mov	a,sp
      0024C6 24 FB            [12] 1363 	add	a,#0xfb
      0024C8 F5 81            [12] 1364 	mov	sp,a
      0024CA D0 07            [24] 1365 	pop	ar7
                                   1366 ;	spi_and_bit_banging.c:403: return data;
      0024CC 8F 82            [24] 1367 	mov	dpl,r7
                                   1368 ;	spi_and_bit_banging.c:405: }
      0024CE 22               [24] 1369 	ret
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'mannual_spi'
                                   1372 ;------------------------------------------------------------
                                   1373 ;number                    Allocated with name '_mannual_spi_number_65536_55'
                                   1374 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_56'
                                   1375 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_56'
                                   1376 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_56'
                                   1377 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_56'
                                   1378 ;i                         Allocated with name '_mannual_spi_i_196608_58'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	spi_and_bit_banging.c:407: void mannual_spi(unsigned char number)
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function mannual_spi
                                   1383 ;	-----------------------------------------
      0024CF                       1384 _mannual_spi:
      0024CF E5 82            [12] 1385 	mov	a,dpl
      0024D1 90 04 0A         [24] 1386 	mov	dptr,#_mannual_spi_number_65536_55
      0024D4 F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	spi_and_bit_banging.c:409: int dac_value_index = 0;
      0024D5 90 04 0B         [24] 1389 	mov	dptr,#_mannual_spi_dac_value_index_65536_56
      0024D8 E4               [12] 1390 	clr	a
      0024D9 F0               [24] 1391 	movx	@dptr,a
      0024DA A3               [24] 1392 	inc	dptr
      0024DB F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	spi_and_bit_banging.c:410: int dac_data = 0;
      0024DC 90 04 0D         [24] 1395 	mov	dptr,#_mannual_spi_dac_data_65536_56
      0024DF F0               [24] 1396 	movx	@dptr,a
      0024E0 A3               [24] 1397 	inc	dptr
      0024E1 F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	spi_and_bit_banging.c:412: while(number > 0)
      0024E2                       1400 00111$:
      0024E2 90 04 0A         [24] 1401 	mov	dptr,#_mannual_spi_number_65536_55
      0024E5 E0               [24] 1402 	movx	a,@dptr
      0024E6 70 01            [24] 1403 	jnz	00156$
      0024E8 22               [24] 1404 	ret
      0024E9                       1405 00156$:
                                   1406 ;	spi_and_bit_banging.c:415: for(int i = 0; i<256; i++)
      0024E9 7E 00            [12] 1407 	mov	r6,#0x00
      0024EB 7F 00            [12] 1408 	mov	r7,#0x00
      0024ED                       1409 00115$:
      0024ED C3               [12] 1410 	clr	c
      0024EE EF               [12] 1411 	mov	a,r7
      0024EF 64 80            [12] 1412 	xrl	a,#0x80
      0024F1 94 81            [12] 1413 	subb	a,#0x81
      0024F3 40 03            [24] 1414 	jc	00157$
      0024F5 02 25 7D         [24] 1415 	ljmp	00110$
      0024F8                       1416 00157$:
                                   1417 ;	spi_and_bit_banging.c:418: if(dac_value_index < SINE_MAX_INDEX)
      0024F8 90 04 0B         [24] 1418 	mov	dptr,#_mannual_spi_dac_value_index_65536_56
      0024FB E0               [24] 1419 	movx	a,@dptr
      0024FC FC               [12] 1420 	mov	r4,a
      0024FD A3               [24] 1421 	inc	dptr
      0024FE E0               [24] 1422 	movx	a,@dptr
      0024FF FD               [12] 1423 	mov	r5,a
      002500 C3               [12] 1424 	clr	c
      002501 64 80            [12] 1425 	xrl	a,#0x80
      002503 94 81            [12] 1426 	subb	a,#0x81
      002505 50 21            [24] 1427 	jnc	00102$
                                   1428 ;	spi_and_bit_banging.c:422: dac_data = dac_values[dac_value_index];
      002507 EC               [12] 1429 	mov	a,r4
      002508 2C               [12] 1430 	add	a,r4
      002509 FC               [12] 1431 	mov	r4,a
      00250A ED               [12] 1432 	mov	a,r5
      00250B 33               [12] 1433 	rlc	a
      00250C FD               [12] 1434 	mov	r5,a
      00250D EC               [12] 1435 	mov	a,r4
      00250E 24 57            [12] 1436 	add	a,#_dac_values
      002510 F5 82            [12] 1437 	mov	dpl,a
      002512 ED               [12] 1438 	mov	a,r5
      002513 34 32            [12] 1439 	addc	a,#(_dac_values >> 8)
      002515 F5 83            [12] 1440 	mov	dph,a
      002517 E4               [12] 1441 	clr	a
      002518 93               [24] 1442 	movc	a,@a+dptr
      002519 FC               [12] 1443 	mov	r4,a
      00251A A3               [24] 1444 	inc	dptr
      00251B E4               [12] 1445 	clr	a
      00251C 93               [24] 1446 	movc	a,@a+dptr
      00251D FD               [12] 1447 	mov	r5,a
      00251E 90 04 0D         [24] 1448 	mov	dptr,#_mannual_spi_dac_data_65536_56
      002521 EC               [12] 1449 	mov	a,r4
      002522 F0               [24] 1450 	movx	@dptr,a
      002523 ED               [12] 1451 	mov	a,r5
      002524 A3               [24] 1452 	inc	dptr
      002525 F0               [24] 1453 	movx	@dptr,a
      002526 80 07            [24] 1454 	sjmp	00103$
      002528                       1455 00102$:
                                   1456 ;	spi_and_bit_banging.c:426: dac_value_index = 0;  // Reset index for next cycle
      002528 90 04 0B         [24] 1457 	mov	dptr,#_mannual_spi_dac_value_index_65536_56
      00252B E4               [12] 1458 	clr	a
      00252C F0               [24] 1459 	movx	@dptr,a
      00252D A3               [24] 1460 	inc	dptr
      00252E F0               [24] 1461 	movx	@dptr,a
      00252F                       1462 00103$:
                                   1463 ;	spi_and_bit_banging.c:433: ((dac_data >> 4) & 0x0F);
      00252F 90 04 0D         [24] 1464 	mov	dptr,#_mannual_spi_dac_data_65536_56
      002532 E0               [24] 1465 	movx	a,@dptr
      002533 FC               [12] 1466 	mov	r4,a
      002534 A3               [24] 1467 	inc	dptr
      002535 E0               [24] 1468 	movx	a,@dptr
      002536 8C 02            [24] 1469 	mov	ar2,r4
      002538 C4               [12] 1470 	swap	a
      002539 CA               [12] 1471 	xch	a,r2
      00253A C4               [12] 1472 	swap	a
      00253B 54 0F            [12] 1473 	anl	a,#0x0f
      00253D 6A               [12] 1474 	xrl	a,r2
      00253E CA               [12] 1475 	xch	a,r2
      00253F 54 0F            [12] 1476 	anl	a,#0x0f
      002541 CA               [12] 1477 	xch	a,r2
      002542 6A               [12] 1478 	xrl	a,r2
      002543 CA               [12] 1479 	xch	a,r2
      002544 30 E3 02         [24] 1480 	jnb	acc.3,00159$
      002547 44 F0            [12] 1481 	orl	a,#0xf0
      002549                       1482 00159$:
      002549 74 0F            [12] 1483 	mov	a,#0x0f
      00254B 5A               [12] 1484 	anl	a,r2
      00254C 44 10            [12] 1485 	orl	a,#0x10
      00254E FB               [12] 1486 	mov	r3,a
                                   1487 ;	spi_and_bit_banging.c:436: low_byte = (dac_data & 0x0F) << 4;
      00254F 53 04 0F         [24] 1488 	anl	ar4,#0x0f
      002552 EC               [12] 1489 	mov	a,r4
      002553 C4               [12] 1490 	swap	a
      002554 54 F0            [12] 1491 	anl	a,#0xf0
      002556 FD               [12] 1492 	mov	r5,a
                                   1493 ;	spi_and_bit_banging.c:440: P1_1 = 0;  // Select DAC
                                   1494 ;	assignBit
      002557 C2 91            [12] 1495 	clr	_P1_1
                                   1496 ;	spi_and_bit_banging.c:443: SPDAT = high_byte;
      002559 8B C5            [24] 1497 	mov	_SPDAT,r3
                                   1498 ;	spi_and_bit_banging.c:444: while (!(SPSTA & (1<<7))); 
      00255B                       1499 00104$:
      00255B E5 C4            [12] 1500 	mov	a,_SPSTA
      00255D 30 E7 FB         [24] 1501 	jnb	acc.7,00104$
                                   1502 ;	spi_and_bit_banging.c:448: SPDAT = low_byte;
      002560 8D C5            [24] 1503 	mov	_SPDAT,r5
                                   1504 ;	spi_and_bit_banging.c:449: while (!(SPSTA & (1<<7))); 
      002562                       1505 00107$:
      002562 E5 C4            [12] 1506 	mov	a,_SPSTA
      002564 30 E7 FB         [24] 1507 	jnb	acc.7,00107$
                                   1508 ;	spi_and_bit_banging.c:451: P1_1 = 1;  // Deselect DAC
                                   1509 ;	assignBit
      002567 D2 91            [12] 1510 	setb	_P1_1
                                   1511 ;	spi_and_bit_banging.c:453: dac_value_index++;
      002569 90 04 0B         [24] 1512 	mov	dptr,#_mannual_spi_dac_value_index_65536_56
      00256C E0               [24] 1513 	movx	a,@dptr
      00256D 24 01            [12] 1514 	add	a,#0x01
      00256F F0               [24] 1515 	movx	@dptr,a
      002570 A3               [24] 1516 	inc	dptr
      002571 E0               [24] 1517 	movx	a,@dptr
      002572 34 00            [12] 1518 	addc	a,#0x00
      002574 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	spi_and_bit_banging.c:415: for(int i = 0; i<256; i++)
      002575 0E               [12] 1521 	inc	r6
      002576 BE 00 01         [24] 1522 	cjne	r6,#0x00,00162$
      002579 0F               [12] 1523 	inc	r7
      00257A                       1524 00162$:
      00257A 02 24 ED         [24] 1525 	ljmp	00115$
      00257D                       1526 00110$:
                                   1527 ;	spi_and_bit_banging.c:456: number = number - 1;
      00257D 90 04 0A         [24] 1528 	mov	dptr,#_mannual_spi_number_65536_55
      002580 E0               [24] 1529 	movx	a,@dptr
      002581 FF               [12] 1530 	mov	r7,a
      002582 14               [12] 1531 	dec	a
      002583 F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	spi_and_bit_banging.c:458: }
      002584 02 24 E2         [24] 1534 	ljmp	00111$
                                   1535 ;------------------------------------------------------------
                                   1536 ;Allocation info for local variables in function 'spi_init'
                                   1537 ;------------------------------------------------------------
                                   1538 ;	spi_and_bit_banging.c:469: void spi_init(void) 
                                   1539 ;	-----------------------------------------
                                   1540 ;	 function spi_init
                                   1541 ;	-----------------------------------------
      002587                       1542 _spi_init:
                                   1543 ;	spi_and_bit_banging.c:490: SPCON |= 0x10;
      002587 43 C3 10         [24] 1544 	orl	_SPCON,#0x10
                                   1545 ;	spi_and_bit_banging.c:491: SPCON |= 0x20;
      00258A 43 C3 20         [24] 1546 	orl	_SPCON,#0x20
                                   1547 ;	spi_and_bit_banging.c:492: SPCON |= 0x40;
      00258D 43 C3 40         [24] 1548 	orl	_SPCON,#0x40
                                   1549 ;	spi_and_bit_banging.c:499: }
      002590 22               [24] 1550 	ret
                                   1551 ;------------------------------------------------------------
                                   1552 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1553 ;------------------------------------------------------------
                                   1554 ;	spi_and_bit_banging.c:501: void bit_bang_spi_init(void) {
                                   1555 ;	-----------------------------------------
                                   1556 ;	 function bit_bang_spi_init
                                   1557 ;	-----------------------------------------
      002591                       1558 _bit_bang_spi_init:
                                   1559 ;	spi_and_bit_banging.c:502: SPCON = SPI_INIT_VALUE;          /* Clear SPI control register */
      002591 75 C3 00         [24] 1560 	mov	_SPCON,#0x00
                                   1561 ;	spi_and_bit_banging.c:503: SDA = DATA_HIGH;                 /* Set data line high */
                                   1562 ;	assignBit
      002594 D2 97            [12] 1563 	setb	_P1_7
                                   1564 ;	spi_and_bit_banging.c:504: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1565 ;	assignBit
      002596 C2 96            [12] 1566 	clr	_P1_6
                                   1567 ;	spi_and_bit_banging.c:505: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1568 ;	assignBit
      002598 D2 91            [12] 1569 	setb	_P1_1
                                   1570 ;	spi_and_bit_banging.c:506: }
      00259A 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1574 ;------------------------------------------------------------
                                   1575 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_66'
                                   1576 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_67'
                                   1577 ;------------------------------------------------------------
                                   1578 ;	spi_and_bit_banging.c:508: int bit_bang_spi_write(uint16_t data) {
                                   1579 ;	-----------------------------------------
                                   1580 ;	 function bit_bang_spi_write
                                   1581 ;	-----------------------------------------
      00259B                       1582 _bit_bang_spi_write:
      00259B AF 83            [24] 1583 	mov	r7,dph
      00259D E5 82            [12] 1584 	mov	a,dpl
      00259F 90 04 0F         [24] 1585 	mov	dptr,#_bit_bang_spi_write_data_65536_66
      0025A2 F0               [24] 1586 	movx	@dptr,a
      0025A3 EF               [12] 1587 	mov	a,r7
      0025A4 A3               [24] 1588 	inc	dptr
      0025A5 F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	spi_and_bit_banging.c:511: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1591 ;	assignBit
      0025A6 C2 91            [12] 1592 	clr	_P1_1
                                   1593 ;	spi_and_bit_banging.c:514: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025A8 7E 00            [12] 1594 	mov	r6,#0x00
      0025AA 7F 00            [12] 1595 	mov	r7,#0x00
      0025AC                       1596 00102$:
                                   1597 ;	spi_and_bit_banging.c:515: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      0025AC 90 04 0F         [24] 1598 	mov	dptr,#_bit_bang_spi_write_data_65536_66
      0025AF E0               [24] 1599 	movx	a,@dptr
      0025B0 FC               [12] 1600 	mov	r4,a
      0025B1 A3               [24] 1601 	inc	dptr
      0025B2 E0               [24] 1602 	movx	a,@dptr
      0025B3 FD               [12] 1603 	mov	r5,a
      0025B4 23               [12] 1604 	rl	a
      0025B5 54 01            [12] 1605 	anl	a,#0x01
      0025B7 24 FF            [12] 1606 	add	a,#0xff
      0025B9 92 97            [24] 1607 	mov	_P1_7,c
                                   1608 ;	spi_and_bit_banging.c:516: SCL = CLOCK_HIGH;            /* Clock high */
                                   1609 ;	assignBit
      0025BB D2 96            [12] 1610 	setb	_P1_6
                                   1611 ;	spi_and_bit_banging.c:517: SCL = CLOCK_LOW;             /* Clock low */
                                   1612 ;	assignBit
      0025BD C2 96            [12] 1613 	clr	_P1_6
                                   1614 ;	spi_and_bit_banging.c:518: data <<= 1;                  /* Shift to next bit */
      0025BF EC               [12] 1615 	mov	a,r4
      0025C0 2C               [12] 1616 	add	a,r4
      0025C1 FC               [12] 1617 	mov	r4,a
      0025C2 ED               [12] 1618 	mov	a,r5
      0025C3 33               [12] 1619 	rlc	a
      0025C4 FD               [12] 1620 	mov	r5,a
      0025C5 90 04 0F         [24] 1621 	mov	dptr,#_bit_bang_spi_write_data_65536_66
      0025C8 EC               [12] 1622 	mov	a,r4
      0025C9 F0               [24] 1623 	movx	@dptr,a
      0025CA ED               [12] 1624 	mov	a,r5
      0025CB A3               [24] 1625 	inc	dptr
      0025CC F0               [24] 1626 	movx	@dptr,a
                                   1627 ;	spi_and_bit_banging.c:514: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0025CD 0E               [12] 1628 	inc	r6
      0025CE BE 00 01         [24] 1629 	cjne	r6,#0x00,00115$
      0025D1 0F               [12] 1630 	inc	r7
      0025D2                       1631 00115$:
      0025D2 C3               [12] 1632 	clr	c
      0025D3 EE               [12] 1633 	mov	a,r6
      0025D4 94 10            [12] 1634 	subb	a,#0x10
      0025D6 EF               [12] 1635 	mov	a,r7
      0025D7 94 00            [12] 1636 	subb	a,#0x00
      0025D9 40 D1            [24] 1637 	jc	00102$
                                   1638 ;	spi_and_bit_banging.c:522: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1639 ;	assignBit
      0025DB D2 91            [12] 1640 	setb	_P1_1
                                   1641 ;	spi_and_bit_banging.c:523: SCL = CLOCK_LOW;                 /* Clock low */
                                   1642 ;	assignBit
      0025DD C2 96            [12] 1643 	clr	_P1_6
                                   1644 ;	spi_and_bit_banging.c:524: SDA = DATA_HIGH;                 /* Data high */
                                   1645 ;	assignBit
      0025DF D2 97            [12] 1646 	setb	_P1_7
                                   1647 ;	spi_and_bit_banging.c:526: return 0;
      0025E1 90 00 00         [24] 1648 	mov	dptr,#0x0000
                                   1649 ;	spi_and_bit_banging.c:527: }
      0025E4 22               [24] 1650 	ret
                                   1651 ;------------------------------------------------------------
                                   1652 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1653 ;------------------------------------------------------------
                                   1654 ;	spi_and_bit_banging.c:534: void spi_transmission_start(void)
                                   1655 ;	-----------------------------------------
                                   1656 ;	 function spi_transmission_start
                                   1657 ;	-----------------------------------------
      0025E5                       1658 _spi_transmission_start:
                                   1659 ;	spi_and_bit_banging.c:536: SPCON |= SPI_ENABLE;           // Enable SPI
      0025E5 43 C3 40         [24] 1660 	orl	_SPCON,#0x40
                                   1661 ;	spi_and_bit_banging.c:537: P1_1 = 0;
                                   1662 ;	assignBit
      0025E8 C2 91            [12] 1663 	clr	_P1_1
                                   1664 ;	spi_and_bit_banging.c:538: }
      0025EA 22               [24] 1665 	ret
                                   1666 ;------------------------------------------------------------
                                   1667 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1668 ;------------------------------------------------------------
                                   1669 ;number                    Allocated with name '_spi_triangular_wave_number_65536_72'
                                   1670 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_73'
                                   1671 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_73'
                                   1672 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_73'
                                   1673 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_73'
                                   1674 ;i                         Allocated with name '_spi_triangular_wave_i_196608_75'
                                   1675 ;------------------------------------------------------------
                                   1676 ;	spi_and_bit_banging.c:540: void spi_triangular_wave(int number)
                                   1677 ;	-----------------------------------------
                                   1678 ;	 function spi_triangular_wave
                                   1679 ;	-----------------------------------------
      0025EB                       1680 _spi_triangular_wave:
      0025EB AF 83            [24] 1681 	mov	r7,dph
      0025ED E5 82            [12] 1682 	mov	a,dpl
      0025EF 90 04 11         [24] 1683 	mov	dptr,#_spi_triangular_wave_number_65536_72
      0025F2 F0               [24] 1684 	movx	@dptr,a
      0025F3 EF               [12] 1685 	mov	a,r7
      0025F4 A3               [24] 1686 	inc	dptr
      0025F5 F0               [24] 1687 	movx	@dptr,a
                                   1688 ;	spi_and_bit_banging.c:542: int dac_value_index = 0;
      0025F6 90 04 13         [24] 1689 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_73
      0025F9 E4               [12] 1690 	clr	a
      0025FA F0               [24] 1691 	movx	@dptr,a
      0025FB A3               [24] 1692 	inc	dptr
      0025FC F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	spi_and_bit_banging.c:543: int dac_data = 0;
      0025FD 90 04 15         [24] 1695 	mov	dptr,#_spi_triangular_wave_dac_data_65536_73
      002600 F0               [24] 1696 	movx	@dptr,a
      002601 A3               [24] 1697 	inc	dptr
      002602 F0               [24] 1698 	movx	@dptr,a
                                   1699 ;	spi_and_bit_banging.c:545: while(number>0)
      002603 90 04 11         [24] 1700 	mov	dptr,#_spi_triangular_wave_number_65536_72
      002606 E0               [24] 1701 	movx	a,@dptr
      002607 FE               [12] 1702 	mov	r6,a
      002608 A3               [24] 1703 	inc	dptr
      002609 E0               [24] 1704 	movx	a,@dptr
      00260A FF               [12] 1705 	mov	r7,a
      00260B                       1706 00111$:
      00260B C3               [12] 1707 	clr	c
      00260C E4               [12] 1708 	clr	a
      00260D 9E               [12] 1709 	subb	a,r6
      00260E 74 80            [12] 1710 	mov	a,#(0x00 ^ 0x80)
      002610 8F F0            [24] 1711 	mov	b,r7
      002612 63 F0 80         [24] 1712 	xrl	b,#0x80
      002615 95 F0            [12] 1713 	subb	a,b
      002617 40 03            [24] 1714 	jc	00157$
      002619 02 26 C0         [24] 1715 	ljmp	00129$
      00261C                       1716 00157$:
                                   1717 ;	spi_and_bit_banging.c:547: for(int i = 0; i<512; i++)
      00261C 7C 00            [12] 1718 	mov	r4,#0x00
      00261E 7D 00            [12] 1719 	mov	r5,#0x00
      002620                       1720 00115$:
      002620 C3               [12] 1721 	clr	c
      002621 ED               [12] 1722 	mov	a,r5
      002622 64 80            [12] 1723 	xrl	a,#0x80
      002624 94 82            [12] 1724 	subb	a,#0x82
      002626 40 03            [24] 1725 	jc	00158$
      002628 02 26 B0         [24] 1726 	ljmp	00110$
      00262B                       1727 00158$:
                                   1728 ;	spi_and_bit_banging.c:550: if(dac_value_index < 512)
      00262B 90 04 13         [24] 1729 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_73
      00262E E0               [24] 1730 	movx	a,@dptr
      00262F FA               [12] 1731 	mov	r2,a
      002630 A3               [24] 1732 	inc	dptr
      002631 E0               [24] 1733 	movx	a,@dptr
      002632 FB               [12] 1734 	mov	r3,a
      002633 C3               [12] 1735 	clr	c
      002634 64 80            [12] 1736 	xrl	a,#0x80
      002636 94 82            [12] 1737 	subb	a,#0x82
      002638 50 21            [24] 1738 	jnc	00102$
                                   1739 ;	spi_and_bit_banging.c:554: dac_data = trig_dac_values[dac_value_index];
      00263A EA               [12] 1740 	mov	a,r2
      00263B 2A               [12] 1741 	add	a,r2
      00263C FA               [12] 1742 	mov	r2,a
      00263D EB               [12] 1743 	mov	a,r3
      00263E 33               [12] 1744 	rlc	a
      00263F FB               [12] 1745 	mov	r3,a
      002640 EA               [12] 1746 	mov	a,r2
      002641 24 57            [12] 1747 	add	a,#_trig_dac_values
      002643 F5 82            [12] 1748 	mov	dpl,a
      002645 EB               [12] 1749 	mov	a,r3
      002646 34 34            [12] 1750 	addc	a,#(_trig_dac_values >> 8)
      002648 F5 83            [12] 1751 	mov	dph,a
      00264A E4               [12] 1752 	clr	a
      00264B 93               [24] 1753 	movc	a,@a+dptr
      00264C FA               [12] 1754 	mov	r2,a
      00264D A3               [24] 1755 	inc	dptr
      00264E E4               [12] 1756 	clr	a
      00264F 93               [24] 1757 	movc	a,@a+dptr
      002650 FB               [12] 1758 	mov	r3,a
      002651 90 04 15         [24] 1759 	mov	dptr,#_spi_triangular_wave_dac_data_65536_73
      002654 EA               [12] 1760 	mov	a,r2
      002655 F0               [24] 1761 	movx	@dptr,a
      002656 EB               [12] 1762 	mov	a,r3
      002657 A3               [24] 1763 	inc	dptr
      002658 F0               [24] 1764 	movx	@dptr,a
      002659 80 07            [24] 1765 	sjmp	00103$
      00265B                       1766 00102$:
                                   1767 ;	spi_and_bit_banging.c:558: dac_value_index = 0;  // Reset index for next cycle
      00265B 90 04 13         [24] 1768 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_73
      00265E E4               [12] 1769 	clr	a
      00265F F0               [24] 1770 	movx	@dptr,a
      002660 A3               [24] 1771 	inc	dptr
      002661 F0               [24] 1772 	movx	@dptr,a
      002662                       1773 00103$:
                                   1774 ;	spi_and_bit_banging.c:565: ((dac_data >> 4) & 0x0F);
      002662 90 04 15         [24] 1775 	mov	dptr,#_spi_triangular_wave_dac_data_65536_73
      002665 E0               [24] 1776 	movx	a,@dptr
      002666 FA               [12] 1777 	mov	r2,a
      002667 A3               [24] 1778 	inc	dptr
      002668 E0               [24] 1779 	movx	a,@dptr
      002669 8A 00            [24] 1780 	mov	ar0,r2
      00266B C4               [12] 1781 	swap	a
      00266C C8               [12] 1782 	xch	a,r0
      00266D C4               [12] 1783 	swap	a
      00266E 54 0F            [12] 1784 	anl	a,#0x0f
      002670 68               [12] 1785 	xrl	a,r0
      002671 C8               [12] 1786 	xch	a,r0
      002672 54 0F            [12] 1787 	anl	a,#0x0f
      002674 C8               [12] 1788 	xch	a,r0
      002675 68               [12] 1789 	xrl	a,r0
      002676 C8               [12] 1790 	xch	a,r0
      002677 30 E3 02         [24] 1791 	jnb	acc.3,00160$
      00267A 44 F0            [12] 1792 	orl	a,#0xf0
      00267C                       1793 00160$:
      00267C 74 0F            [12] 1794 	mov	a,#0x0f
      00267E 58               [12] 1795 	anl	a,r0
      00267F 44 10            [12] 1796 	orl	a,#0x10
      002681 F9               [12] 1797 	mov	r1,a
                                   1798 ;	spi_and_bit_banging.c:568: low_byte = (dac_data & 0x0F) << 4;
      002682 53 02 0F         [24] 1799 	anl	ar2,#0x0f
      002685 EA               [12] 1800 	mov	a,r2
      002686 C4               [12] 1801 	swap	a
      002687 54 F0            [12] 1802 	anl	a,#0xf0
      002689 FB               [12] 1803 	mov	r3,a
                                   1804 ;	spi_and_bit_banging.c:572: P1_1 = 0;  // Select DAC
                                   1805 ;	assignBit
      00268A C2 91            [12] 1806 	clr	_P1_1
                                   1807 ;	spi_and_bit_banging.c:575: SPDAT = high_byte;
      00268C 89 C5            [24] 1808 	mov	_SPDAT,r1
                                   1809 ;	spi_and_bit_banging.c:576: while (!(SPSTA & (1<<7))); 
      00268E                       1810 00104$:
      00268E E5 C4            [12] 1811 	mov	a,_SPSTA
      002690 30 E7 FB         [24] 1812 	jnb	acc.7,00104$
                                   1813 ;	spi_and_bit_banging.c:580: SPDAT = low_byte;
      002693 8B C5            [24] 1814 	mov	_SPDAT,r3
                                   1815 ;	spi_and_bit_banging.c:581: while (!(SPSTA & (1<<7))); 
      002695                       1816 00107$:
      002695 E5 C4            [12] 1817 	mov	a,_SPSTA
      002697 30 E7 FB         [24] 1818 	jnb	acc.7,00107$
                                   1819 ;	spi_and_bit_banging.c:583: P1_1 = 1;  // Deselect DAC
                                   1820 ;	assignBit
      00269A D2 91            [12] 1821 	setb	_P1_1
                                   1822 ;	spi_and_bit_banging.c:585: dac_value_index++;
      00269C 90 04 13         [24] 1823 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_73
      00269F E0               [24] 1824 	movx	a,@dptr
      0026A0 24 01            [12] 1825 	add	a,#0x01
      0026A2 F0               [24] 1826 	movx	@dptr,a
      0026A3 A3               [24] 1827 	inc	dptr
      0026A4 E0               [24] 1828 	movx	a,@dptr
      0026A5 34 00            [12] 1829 	addc	a,#0x00
      0026A7 F0               [24] 1830 	movx	@dptr,a
                                   1831 ;	spi_and_bit_banging.c:547: for(int i = 0; i<512; i++)
      0026A8 0C               [12] 1832 	inc	r4
      0026A9 BC 00 01         [24] 1833 	cjne	r4,#0x00,00163$
      0026AC 0D               [12] 1834 	inc	r5
      0026AD                       1835 00163$:
      0026AD 02 26 20         [24] 1836 	ljmp	00115$
      0026B0                       1837 00110$:
                                   1838 ;	spi_and_bit_banging.c:588: number = number - 1;
      0026B0 1E               [12] 1839 	dec	r6
      0026B1 BE FF 01         [24] 1840 	cjne	r6,#0xff,00164$
      0026B4 1F               [12] 1841 	dec	r7
      0026B5                       1842 00164$:
      0026B5 90 04 11         [24] 1843 	mov	dptr,#_spi_triangular_wave_number_65536_72
      0026B8 EE               [12] 1844 	mov	a,r6
      0026B9 F0               [24] 1845 	movx	@dptr,a
      0026BA EF               [12] 1846 	mov	a,r7
      0026BB A3               [24] 1847 	inc	dptr
      0026BC F0               [24] 1848 	movx	@dptr,a
      0026BD 02 26 0B         [24] 1849 	ljmp	00111$
      0026C0                       1850 00129$:
      0026C0 90 04 11         [24] 1851 	mov	dptr,#_spi_triangular_wave_number_65536_72
      0026C3 EE               [12] 1852 	mov	a,r6
      0026C4 F0               [24] 1853 	movx	@dptr,a
      0026C5 EF               [12] 1854 	mov	a,r7
      0026C6 A3               [24] 1855 	inc	dptr
      0026C7 F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	spi_and_bit_banging.c:591: }
      0026C8 22               [24] 1858 	ret
                                   1859 ;------------------------------------------------------------
                                   1860 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1861 ;------------------------------------------------------------
                                   1862 ;number                    Allocated with name '_spi_ramp_signal_number_65536_79'
                                   1863 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_80'
                                   1864 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_80'
                                   1865 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_80'
                                   1866 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_80'
                                   1867 ;i                         Allocated with name '_spi_ramp_signal_i_196608_82'
                                   1868 ;------------------------------------------------------------
                                   1869 ;	spi_and_bit_banging.c:593: void spi_ramp_signal(int number)
                                   1870 ;	-----------------------------------------
                                   1871 ;	 function spi_ramp_signal
                                   1872 ;	-----------------------------------------
      0026C9                       1873 _spi_ramp_signal:
      0026C9 AF 83            [24] 1874 	mov	r7,dph
      0026CB E5 82            [12] 1875 	mov	a,dpl
      0026CD 90 04 17         [24] 1876 	mov	dptr,#_spi_ramp_signal_number_65536_79
      0026D0 F0               [24] 1877 	movx	@dptr,a
      0026D1 EF               [12] 1878 	mov	a,r7
      0026D2 A3               [24] 1879 	inc	dptr
      0026D3 F0               [24] 1880 	movx	@dptr,a
                                   1881 ;	spi_and_bit_banging.c:595: int dac_value_index = 0;
      0026D4 90 04 19         [24] 1882 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_80
      0026D7 E4               [12] 1883 	clr	a
      0026D8 F0               [24] 1884 	movx	@dptr,a
      0026D9 A3               [24] 1885 	inc	dptr
      0026DA F0               [24] 1886 	movx	@dptr,a
                                   1887 ;	spi_and_bit_banging.c:596: int dac_data = 0;
      0026DB 90 04 1B         [24] 1888 	mov	dptr,#_spi_ramp_signal_dac_data_65536_80
      0026DE F0               [24] 1889 	movx	@dptr,a
      0026DF A3               [24] 1890 	inc	dptr
      0026E0 F0               [24] 1891 	movx	@dptr,a
                                   1892 ;	spi_and_bit_banging.c:598: while(number>0)
      0026E1 90 04 17         [24] 1893 	mov	dptr,#_spi_ramp_signal_number_65536_79
      0026E4 E0               [24] 1894 	movx	a,@dptr
      0026E5 FE               [12] 1895 	mov	r6,a
      0026E6 A3               [24] 1896 	inc	dptr
      0026E7 E0               [24] 1897 	movx	a,@dptr
      0026E8 FF               [12] 1898 	mov	r7,a
      0026E9                       1899 00111$:
      0026E9 C3               [12] 1900 	clr	c
      0026EA E4               [12] 1901 	clr	a
      0026EB 9E               [12] 1902 	subb	a,r6
      0026EC 74 80            [12] 1903 	mov	a,#(0x00 ^ 0x80)
      0026EE 8F F0            [24] 1904 	mov	b,r7
      0026F0 63 F0 80         [24] 1905 	xrl	b,#0x80
      0026F3 95 F0            [12] 1906 	subb	a,b
      0026F5 40 03            [24] 1907 	jc	00157$
      0026F7 02 27 9E         [24] 1908 	ljmp	00129$
      0026FA                       1909 00157$:
                                   1910 ;	spi_and_bit_banging.c:600: for(int i = 0; i<256; i++)
      0026FA 7C 00            [12] 1911 	mov	r4,#0x00
      0026FC 7D 00            [12] 1912 	mov	r5,#0x00
      0026FE                       1913 00115$:
      0026FE C3               [12] 1914 	clr	c
      0026FF ED               [12] 1915 	mov	a,r5
      002700 64 80            [12] 1916 	xrl	a,#0x80
      002702 94 81            [12] 1917 	subb	a,#0x81
      002704 40 03            [24] 1918 	jc	00158$
      002706 02 27 8E         [24] 1919 	ljmp	00110$
      002709                       1920 00158$:
                                   1921 ;	spi_and_bit_banging.c:603: if(dac_value_index < 256)
      002709 90 04 19         [24] 1922 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_80
      00270C E0               [24] 1923 	movx	a,@dptr
      00270D FA               [12] 1924 	mov	r2,a
      00270E A3               [24] 1925 	inc	dptr
      00270F E0               [24] 1926 	movx	a,@dptr
      002710 FB               [12] 1927 	mov	r3,a
      002711 C3               [12] 1928 	clr	c
      002712 64 80            [12] 1929 	xrl	a,#0x80
      002714 94 81            [12] 1930 	subb	a,#0x81
      002716 50 21            [24] 1931 	jnc	00102$
                                   1932 ;	spi_and_bit_banging.c:607: dac_data = trig_dac_values[dac_value_index];
      002718 EA               [12] 1933 	mov	a,r2
      002719 2A               [12] 1934 	add	a,r2
      00271A FA               [12] 1935 	mov	r2,a
      00271B EB               [12] 1936 	mov	a,r3
      00271C 33               [12] 1937 	rlc	a
      00271D FB               [12] 1938 	mov	r3,a
      00271E EA               [12] 1939 	mov	a,r2
      00271F 24 57            [12] 1940 	add	a,#_trig_dac_values
      002721 F5 82            [12] 1941 	mov	dpl,a
      002723 EB               [12] 1942 	mov	a,r3
      002724 34 34            [12] 1943 	addc	a,#(_trig_dac_values >> 8)
      002726 F5 83            [12] 1944 	mov	dph,a
      002728 E4               [12] 1945 	clr	a
      002729 93               [24] 1946 	movc	a,@a+dptr
      00272A FA               [12] 1947 	mov	r2,a
      00272B A3               [24] 1948 	inc	dptr
      00272C E4               [12] 1949 	clr	a
      00272D 93               [24] 1950 	movc	a,@a+dptr
      00272E FB               [12] 1951 	mov	r3,a
      00272F 90 04 1B         [24] 1952 	mov	dptr,#_spi_ramp_signal_dac_data_65536_80
      002732 EA               [12] 1953 	mov	a,r2
      002733 F0               [24] 1954 	movx	@dptr,a
      002734 EB               [12] 1955 	mov	a,r3
      002735 A3               [24] 1956 	inc	dptr
      002736 F0               [24] 1957 	movx	@dptr,a
      002737 80 07            [24] 1958 	sjmp	00103$
      002739                       1959 00102$:
                                   1960 ;	spi_and_bit_banging.c:611: dac_value_index = 0;  // Reset index for next cycle
      002739 90 04 19         [24] 1961 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_80
      00273C E4               [12] 1962 	clr	a
      00273D F0               [24] 1963 	movx	@dptr,a
      00273E A3               [24] 1964 	inc	dptr
      00273F F0               [24] 1965 	movx	@dptr,a
      002740                       1966 00103$:
                                   1967 ;	spi_and_bit_banging.c:618: ((dac_data >> 4) & 0x0F);
      002740 90 04 1B         [24] 1968 	mov	dptr,#_spi_ramp_signal_dac_data_65536_80
      002743 E0               [24] 1969 	movx	a,@dptr
      002744 FA               [12] 1970 	mov	r2,a
      002745 A3               [24] 1971 	inc	dptr
      002746 E0               [24] 1972 	movx	a,@dptr
      002747 8A 00            [24] 1973 	mov	ar0,r2
      002749 C4               [12] 1974 	swap	a
      00274A C8               [12] 1975 	xch	a,r0
      00274B C4               [12] 1976 	swap	a
      00274C 54 0F            [12] 1977 	anl	a,#0x0f
      00274E 68               [12] 1978 	xrl	a,r0
      00274F C8               [12] 1979 	xch	a,r0
      002750 54 0F            [12] 1980 	anl	a,#0x0f
      002752 C8               [12] 1981 	xch	a,r0
      002753 68               [12] 1982 	xrl	a,r0
      002754 C8               [12] 1983 	xch	a,r0
      002755 30 E3 02         [24] 1984 	jnb	acc.3,00160$
      002758 44 F0            [12] 1985 	orl	a,#0xf0
      00275A                       1986 00160$:
      00275A 74 0F            [12] 1987 	mov	a,#0x0f
      00275C 58               [12] 1988 	anl	a,r0
      00275D 44 10            [12] 1989 	orl	a,#0x10
      00275F F9               [12] 1990 	mov	r1,a
                                   1991 ;	spi_and_bit_banging.c:621: low_byte = (dac_data & 0x0F) << 4;
      002760 53 02 0F         [24] 1992 	anl	ar2,#0x0f
      002763 EA               [12] 1993 	mov	a,r2
      002764 C4               [12] 1994 	swap	a
      002765 54 F0            [12] 1995 	anl	a,#0xf0
      002767 FB               [12] 1996 	mov	r3,a
                                   1997 ;	spi_and_bit_banging.c:625: P1_1 = 0;  // Select DAC
                                   1998 ;	assignBit
      002768 C2 91            [12] 1999 	clr	_P1_1
                                   2000 ;	spi_and_bit_banging.c:628: SPDAT = high_byte;
      00276A 89 C5            [24] 2001 	mov	_SPDAT,r1
                                   2002 ;	spi_and_bit_banging.c:629: while (!(SPSTA & (1<<7))); 
      00276C                       2003 00104$:
      00276C E5 C4            [12] 2004 	mov	a,_SPSTA
      00276E 30 E7 FB         [24] 2005 	jnb	acc.7,00104$
                                   2006 ;	spi_and_bit_banging.c:633: SPDAT = low_byte;
      002771 8B C5            [24] 2007 	mov	_SPDAT,r3
                                   2008 ;	spi_and_bit_banging.c:634: while (!(SPSTA & (1<<7))); 
      002773                       2009 00107$:
      002773 E5 C4            [12] 2010 	mov	a,_SPSTA
      002775 30 E7 FB         [24] 2011 	jnb	acc.7,00107$
                                   2012 ;	spi_and_bit_banging.c:636: P1_1 = 1;  // Deselect DAC
                                   2013 ;	assignBit
      002778 D2 91            [12] 2014 	setb	_P1_1
                                   2015 ;	spi_and_bit_banging.c:638: dac_value_index++;
      00277A 90 04 19         [24] 2016 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_80
      00277D E0               [24] 2017 	movx	a,@dptr
      00277E 24 01            [12] 2018 	add	a,#0x01
      002780 F0               [24] 2019 	movx	@dptr,a
      002781 A3               [24] 2020 	inc	dptr
      002782 E0               [24] 2021 	movx	a,@dptr
      002783 34 00            [12] 2022 	addc	a,#0x00
      002785 F0               [24] 2023 	movx	@dptr,a
                                   2024 ;	spi_and_bit_banging.c:600: for(int i = 0; i<256; i++)
      002786 0C               [12] 2025 	inc	r4
      002787 BC 00 01         [24] 2026 	cjne	r4,#0x00,00163$
      00278A 0D               [12] 2027 	inc	r5
      00278B                       2028 00163$:
      00278B 02 26 FE         [24] 2029 	ljmp	00115$
      00278E                       2030 00110$:
                                   2031 ;	spi_and_bit_banging.c:641: number = number - 1;
      00278E 1E               [12] 2032 	dec	r6
      00278F BE FF 01         [24] 2033 	cjne	r6,#0xff,00164$
      002792 1F               [12] 2034 	dec	r7
      002793                       2035 00164$:
      002793 90 04 17         [24] 2036 	mov	dptr,#_spi_ramp_signal_number_65536_79
      002796 EE               [12] 2037 	mov	a,r6
      002797 F0               [24] 2038 	movx	@dptr,a
      002798 EF               [12] 2039 	mov	a,r7
      002799 A3               [24] 2040 	inc	dptr
      00279A F0               [24] 2041 	movx	@dptr,a
      00279B 02 26 E9         [24] 2042 	ljmp	00111$
      00279E                       2043 00129$:
      00279E 90 04 17         [24] 2044 	mov	dptr,#_spi_ramp_signal_number_65536_79
      0027A1 EE               [12] 2045 	mov	a,r6
      0027A2 F0               [24] 2046 	movx	@dptr,a
      0027A3 EF               [12] 2047 	mov	a,r7
      0027A4 A3               [24] 2048 	inc	dptr
      0027A5 F0               [24] 2049 	movx	@dptr,a
                                   2050 ;	spi_and_bit_banging.c:644: }
      0027A6 22               [24] 2051 	ret
                                   2052 	.area CSEG    (CODE)
                                   2053 	.area CONST   (CODE)
      003257                       2054 _dac_values:
      003257 80 00                 2055 	.byte #0x80, #0x00	;  128
      003259 83 00                 2056 	.byte #0x83, #0x00	;  131
      00325B 86 00                 2057 	.byte #0x86, #0x00	;  134
      00325D 89 00                 2058 	.byte #0x89, #0x00	;  137
      00325F 8C 00                 2059 	.byte #0x8c, #0x00	;  140
      003261 90 00                 2060 	.byte #0x90, #0x00	;  144
      003263 93 00                 2061 	.byte #0x93, #0x00	;  147
      003265 96 00                 2062 	.byte #0x96, #0x00	;  150
      003267 99 00                 2063 	.byte #0x99, #0x00	;  153
      003269 9C 00                 2064 	.byte #0x9c, #0x00	;  156
      00326B 9F 00                 2065 	.byte #0x9f, #0x00	;  159
      00326D A2 00                 2066 	.byte #0xa2, #0x00	;  162
      00326F A5 00                 2067 	.byte #0xa5, #0x00	;  165
      003271 A8 00                 2068 	.byte #0xa8, #0x00	;  168
      003273 AB 00                 2069 	.byte #0xab, #0x00	;  171
      003275 AE 00                 2070 	.byte #0xae, #0x00	;  174
      003277 B1 00                 2071 	.byte #0xb1, #0x00	;  177
      003279 B3 00                 2072 	.byte #0xb3, #0x00	;  179
      00327B B6 00                 2073 	.byte #0xb6, #0x00	;  182
      00327D B9 00                 2074 	.byte #0xb9, #0x00	;  185
      00327F BC 00                 2075 	.byte #0xbc, #0x00	;  188
      003281 BF 00                 2076 	.byte #0xbf, #0x00	;  191
      003283 C1 00                 2077 	.byte #0xc1, #0x00	;  193
      003285 C4 00                 2078 	.byte #0xc4, #0x00	;  196
      003287 C7 00                 2079 	.byte #0xc7, #0x00	;  199
      003289 C9 00                 2080 	.byte #0xc9, #0x00	;  201
      00328B CC 00                 2081 	.byte #0xcc, #0x00	;  204
      00328D CE 00                 2082 	.byte #0xce, #0x00	;  206
      00328F D1 00                 2083 	.byte #0xd1, #0x00	;  209
      003291 D3 00                 2084 	.byte #0xd3, #0x00	;  211
      003293 D5 00                 2085 	.byte #0xd5, #0x00	;  213
      003295 D8 00                 2086 	.byte #0xd8, #0x00	;  216
      003297 DA 00                 2087 	.byte #0xda, #0x00	;  218
      003299 DC 00                 2088 	.byte #0xdc, #0x00	;  220
      00329B DE 00                 2089 	.byte #0xde, #0x00	;  222
      00329D E0 00                 2090 	.byte #0xe0, #0x00	;  224
      00329F E2 00                 2091 	.byte #0xe2, #0x00	;  226
      0032A1 E4 00                 2092 	.byte #0xe4, #0x00	;  228
      0032A3 E6 00                 2093 	.byte #0xe6, #0x00	;  230
      0032A5 E8 00                 2094 	.byte #0xe8, #0x00	;  232
      0032A7 EA 00                 2095 	.byte #0xea, #0x00	;  234
      0032A9 EB 00                 2096 	.byte #0xeb, #0x00	;  235
      0032AB ED 00                 2097 	.byte #0xed, #0x00	;  237
      0032AD EF 00                 2098 	.byte #0xef, #0x00	;  239
      0032AF F0 00                 2099 	.byte #0xf0, #0x00	;  240
      0032B1 F1 00                 2100 	.byte #0xf1, #0x00	;  241
      0032B3 F3 00                 2101 	.byte #0xf3, #0x00	;  243
      0032B5 F4 00                 2102 	.byte #0xf4, #0x00	;  244
      0032B7 F5 00                 2103 	.byte #0xf5, #0x00	;  245
      0032B9 F6 00                 2104 	.byte #0xf6, #0x00	;  246
      0032BB F8 00                 2105 	.byte #0xf8, #0x00	;  248
      0032BD F9 00                 2106 	.byte #0xf9, #0x00	;  249
      0032BF FA 00                 2107 	.byte #0xfa, #0x00	;  250
      0032C1 FA 00                 2108 	.byte #0xfa, #0x00	;  250
      0032C3 FB 00                 2109 	.byte #0xfb, #0x00	;  251
      0032C5 FC 00                 2110 	.byte #0xfc, #0x00	;  252
      0032C7 FD 00                 2111 	.byte #0xfd, #0x00	;  253
      0032C9 FD 00                 2112 	.byte #0xfd, #0x00	;  253
      0032CB FE 00                 2113 	.byte #0xfe, #0x00	;  254
      0032CD FE 00                 2114 	.byte #0xfe, #0x00	;  254
      0032CF FE 00                 2115 	.byte #0xfe, #0x00	;  254
      0032D1 FF 00                 2116 	.byte #0xff, #0x00	;  255
      0032D3 FF 00                 2117 	.byte #0xff, #0x00	;  255
      0032D5 FF 00                 2118 	.byte #0xff, #0x00	;  255
      0032D7 FF 00                 2119 	.byte #0xff, #0x00	;  255
      0032D9 FF 00                 2120 	.byte #0xff, #0x00	;  255
      0032DB FF 00                 2121 	.byte #0xff, #0x00	;  255
      0032DD FF 00                 2122 	.byte #0xff, #0x00	;  255
      0032DF FE 00                 2123 	.byte #0xfe, #0x00	;  254
      0032E1 FE 00                 2124 	.byte #0xfe, #0x00	;  254
      0032E3 FE 00                 2125 	.byte #0xfe, #0x00	;  254
      0032E5 FD 00                 2126 	.byte #0xfd, #0x00	;  253
      0032E7 FD 00                 2127 	.byte #0xfd, #0x00	;  253
      0032E9 FC 00                 2128 	.byte #0xfc, #0x00	;  252
      0032EB FB 00                 2129 	.byte #0xfb, #0x00	;  251
      0032ED FA 00                 2130 	.byte #0xfa, #0x00	;  250
      0032EF FA 00                 2131 	.byte #0xfa, #0x00	;  250
      0032F1 F9 00                 2132 	.byte #0xf9, #0x00	;  249
      0032F3 F8 00                 2133 	.byte #0xf8, #0x00	;  248
      0032F5 F6 00                 2134 	.byte #0xf6, #0x00	;  246
      0032F7 F5 00                 2135 	.byte #0xf5, #0x00	;  245
      0032F9 F4 00                 2136 	.byte #0xf4, #0x00	;  244
      0032FB F3 00                 2137 	.byte #0xf3, #0x00	;  243
      0032FD F1 00                 2138 	.byte #0xf1, #0x00	;  241
      0032FF F0 00                 2139 	.byte #0xf0, #0x00	;  240
      003301 EF 00                 2140 	.byte #0xef, #0x00	;  239
      003303 ED 00                 2141 	.byte #0xed, #0x00	;  237
      003305 EB 00                 2142 	.byte #0xeb, #0x00	;  235
      003307 EA 00                 2143 	.byte #0xea, #0x00	;  234
      003309 E8 00                 2144 	.byte #0xe8, #0x00	;  232
      00330B E6 00                 2145 	.byte #0xe6, #0x00	;  230
      00330D E4 00                 2146 	.byte #0xe4, #0x00	;  228
      00330F E2 00                 2147 	.byte #0xe2, #0x00	;  226
      003311 E0 00                 2148 	.byte #0xe0, #0x00	;  224
      003313 DE 00                 2149 	.byte #0xde, #0x00	;  222
      003315 DC 00                 2150 	.byte #0xdc, #0x00	;  220
      003317 DA 00                 2151 	.byte #0xda, #0x00	;  218
      003319 D8 00                 2152 	.byte #0xd8, #0x00	;  216
      00331B D5 00                 2153 	.byte #0xd5, #0x00	;  213
      00331D D3 00                 2154 	.byte #0xd3, #0x00	;  211
      00331F D1 00                 2155 	.byte #0xd1, #0x00	;  209
      003321 CE 00                 2156 	.byte #0xce, #0x00	;  206
      003323 CC 00                 2157 	.byte #0xcc, #0x00	;  204
      003325 C9 00                 2158 	.byte #0xc9, #0x00	;  201
      003327 C7 00                 2159 	.byte #0xc7, #0x00	;  199
      003329 C4 00                 2160 	.byte #0xc4, #0x00	;  196
      00332B C1 00                 2161 	.byte #0xc1, #0x00	;  193
      00332D BF 00                 2162 	.byte #0xbf, #0x00	;  191
      00332F BC 00                 2163 	.byte #0xbc, #0x00	;  188
      003331 B9 00                 2164 	.byte #0xb9, #0x00	;  185
      003333 B6 00                 2165 	.byte #0xb6, #0x00	;  182
      003335 B3 00                 2166 	.byte #0xb3, #0x00	;  179
      003337 B1 00                 2167 	.byte #0xb1, #0x00	;  177
      003339 AE 00                 2168 	.byte #0xae, #0x00	;  174
      00333B AB 00                 2169 	.byte #0xab, #0x00	;  171
      00333D A8 00                 2170 	.byte #0xa8, #0x00	;  168
      00333F A5 00                 2171 	.byte #0xa5, #0x00	;  165
      003341 A2 00                 2172 	.byte #0xa2, #0x00	;  162
      003343 9F 00                 2173 	.byte #0x9f, #0x00	;  159
      003345 9C 00                 2174 	.byte #0x9c, #0x00	;  156
      003347 99 00                 2175 	.byte #0x99, #0x00	;  153
      003349 96 00                 2176 	.byte #0x96, #0x00	;  150
      00334B 93 00                 2177 	.byte #0x93, #0x00	;  147
      00334D 90 00                 2178 	.byte #0x90, #0x00	;  144
      00334F 8C 00                 2179 	.byte #0x8c, #0x00	;  140
      003351 89 00                 2180 	.byte #0x89, #0x00	;  137
      003353 86 00                 2181 	.byte #0x86, #0x00	;  134
      003355 83 00                 2182 	.byte #0x83, #0x00	;  131
      003357 80 00                 2183 	.byte #0x80, #0x00	;  128
      003359 7D 00                 2184 	.byte #0x7d, #0x00	;  125
      00335B 7A 00                 2185 	.byte #0x7a, #0x00	;  122
      00335D 77 00                 2186 	.byte #0x77, #0x00	;  119
      00335F 74 00                 2187 	.byte #0x74, #0x00	;  116
      003361 70 00                 2188 	.byte #0x70, #0x00	;  112
      003363 6D 00                 2189 	.byte #0x6d, #0x00	;  109
      003365 6A 00                 2190 	.byte #0x6a, #0x00	;  106
      003367 67 00                 2191 	.byte #0x67, #0x00	;  103
      003369 64 00                 2192 	.byte #0x64, #0x00	;  100
      00336B 61 00                 2193 	.byte #0x61, #0x00	;  97
      00336D 5E 00                 2194 	.byte #0x5e, #0x00	;  94
      00336F 5B 00                 2195 	.byte #0x5b, #0x00	;  91
      003371 58 00                 2196 	.byte #0x58, #0x00	;  88
      003373 55 00                 2197 	.byte #0x55, #0x00	;  85
      003375 52 00                 2198 	.byte #0x52, #0x00	;  82
      003377 4F 00                 2199 	.byte #0x4f, #0x00	;  79
      003379 4D 00                 2200 	.byte #0x4d, #0x00	;  77
      00337B 4A 00                 2201 	.byte #0x4a, #0x00	;  74
      00337D 47 00                 2202 	.byte #0x47, #0x00	;  71
      00337F 44 00                 2203 	.byte #0x44, #0x00	;  68
      003381 41 00                 2204 	.byte #0x41, #0x00	;  65
      003383 3F 00                 2205 	.byte #0x3f, #0x00	;  63
      003385 3C 00                 2206 	.byte #0x3c, #0x00	;  60
      003387 39 00                 2207 	.byte #0x39, #0x00	;  57
      003389 37 00                 2208 	.byte #0x37, #0x00	;  55
      00338B 34 00                 2209 	.byte #0x34, #0x00	;  52
      00338D 32 00                 2210 	.byte #0x32, #0x00	;  50
      00338F 2F 00                 2211 	.byte #0x2f, #0x00	;  47
      003391 2D 00                 2212 	.byte #0x2d, #0x00	;  45
      003393 2B 00                 2213 	.byte #0x2b, #0x00	;  43
      003395 28 00                 2214 	.byte #0x28, #0x00	;  40
      003397 26 00                 2215 	.byte #0x26, #0x00	;  38
      003399 24 00                 2216 	.byte #0x24, #0x00	;  36
      00339B 22 00                 2217 	.byte #0x22, #0x00	;  34
      00339D 20 00                 2218 	.byte #0x20, #0x00	;  32
      00339F 1E 00                 2219 	.byte #0x1e, #0x00	;  30
      0033A1 1C 00                 2220 	.byte #0x1c, #0x00	;  28
      0033A3 1A 00                 2221 	.byte #0x1a, #0x00	;  26
      0033A5 18 00                 2222 	.byte #0x18, #0x00	;  24
      0033A7 16 00                 2223 	.byte #0x16, #0x00	;  22
      0033A9 15 00                 2224 	.byte #0x15, #0x00	;  21
      0033AB 13 00                 2225 	.byte #0x13, #0x00	;  19
      0033AD 11 00                 2226 	.byte #0x11, #0x00	;  17
      0033AF 10 00                 2227 	.byte #0x10, #0x00	;  16
      0033B1 0F 00                 2228 	.byte #0x0f, #0x00	;  15
      0033B3 0D 00                 2229 	.byte #0x0d, #0x00	;  13
      0033B5 0C 00                 2230 	.byte #0x0c, #0x00	;  12
      0033B7 0B 00                 2231 	.byte #0x0b, #0x00	;  11
      0033B9 0A 00                 2232 	.byte #0x0a, #0x00	;  10
      0033BB 08 00                 2233 	.byte #0x08, #0x00	;  8
      0033BD 07 00                 2234 	.byte #0x07, #0x00	;  7
      0033BF 06 00                 2235 	.byte #0x06, #0x00	;  6
      0033C1 06 00                 2236 	.byte #0x06, #0x00	;  6
      0033C3 05 00                 2237 	.byte #0x05, #0x00	;  5
      0033C5 04 00                 2238 	.byte #0x04, #0x00	;  4
      0033C7 03 00                 2239 	.byte #0x03, #0x00	;  3
      0033C9 03 00                 2240 	.byte #0x03, #0x00	;  3
      0033CB 02 00                 2241 	.byte #0x02, #0x00	;  2
      0033CD 02 00                 2242 	.byte #0x02, #0x00	;  2
      0033CF 02 00                 2243 	.byte #0x02, #0x00	;  2
      0033D1 01 00                 2244 	.byte #0x01, #0x00	;  1
      0033D3 01 00                 2245 	.byte #0x01, #0x00	;  1
      0033D5 01 00                 2246 	.byte #0x01, #0x00	;  1
      0033D7 01 00                 2247 	.byte #0x01, #0x00	;  1
      0033D9 01 00                 2248 	.byte #0x01, #0x00	;  1
      0033DB 01 00                 2249 	.byte #0x01, #0x00	;  1
      0033DD 01 00                 2250 	.byte #0x01, #0x00	;  1
      0033DF 02 00                 2251 	.byte #0x02, #0x00	;  2
      0033E1 02 00                 2252 	.byte #0x02, #0x00	;  2
      0033E3 02 00                 2253 	.byte #0x02, #0x00	;  2
      0033E5 03 00                 2254 	.byte #0x03, #0x00	;  3
      0033E7 03 00                 2255 	.byte #0x03, #0x00	;  3
      0033E9 04 00                 2256 	.byte #0x04, #0x00	;  4
      0033EB 05 00                 2257 	.byte #0x05, #0x00	;  5
      0033ED 06 00                 2258 	.byte #0x06, #0x00	;  6
      0033EF 06 00                 2259 	.byte #0x06, #0x00	;  6
      0033F1 07 00                 2260 	.byte #0x07, #0x00	;  7
      0033F3 08 00                 2261 	.byte #0x08, #0x00	;  8
      0033F5 0A 00                 2262 	.byte #0x0a, #0x00	;  10
      0033F7 0B 00                 2263 	.byte #0x0b, #0x00	;  11
      0033F9 0C 00                 2264 	.byte #0x0c, #0x00	;  12
      0033FB 0D 00                 2265 	.byte #0x0d, #0x00	;  13
      0033FD 0F 00                 2266 	.byte #0x0f, #0x00	;  15
      0033FF 10 00                 2267 	.byte #0x10, #0x00	;  16
      003401 11 00                 2268 	.byte #0x11, #0x00	;  17
      003403 13 00                 2269 	.byte #0x13, #0x00	;  19
      003405 15 00                 2270 	.byte #0x15, #0x00	;  21
      003407 16 00                 2271 	.byte #0x16, #0x00	;  22
      003409 18 00                 2272 	.byte #0x18, #0x00	;  24
      00340B 1A 00                 2273 	.byte #0x1a, #0x00	;  26
      00340D 1C 00                 2274 	.byte #0x1c, #0x00	;  28
      00340F 1E 00                 2275 	.byte #0x1e, #0x00	;  30
      003411 20 00                 2276 	.byte #0x20, #0x00	;  32
      003413 22 00                 2277 	.byte #0x22, #0x00	;  34
      003415 24 00                 2278 	.byte #0x24, #0x00	;  36
      003417 26 00                 2279 	.byte #0x26, #0x00	;  38
      003419 28 00                 2280 	.byte #0x28, #0x00	;  40
      00341B 2B 00                 2281 	.byte #0x2b, #0x00	;  43
      00341D 2D 00                 2282 	.byte #0x2d, #0x00	;  45
      00341F 2F 00                 2283 	.byte #0x2f, #0x00	;  47
      003421 32 00                 2284 	.byte #0x32, #0x00	;  50
      003423 34 00                 2285 	.byte #0x34, #0x00	;  52
      003425 37 00                 2286 	.byte #0x37, #0x00	;  55
      003427 39 00                 2287 	.byte #0x39, #0x00	;  57
      003429 3C 00                 2288 	.byte #0x3c, #0x00	;  60
      00342B 3F 00                 2289 	.byte #0x3f, #0x00	;  63
      00342D 41 00                 2290 	.byte #0x41, #0x00	;  65
      00342F 44 00                 2291 	.byte #0x44, #0x00	;  68
      003431 47 00                 2292 	.byte #0x47, #0x00	;  71
      003433 4A 00                 2293 	.byte #0x4a, #0x00	;  74
      003435 4D 00                 2294 	.byte #0x4d, #0x00	;  77
      003437 4F 00                 2295 	.byte #0x4f, #0x00	;  79
      003439 52 00                 2296 	.byte #0x52, #0x00	;  82
      00343B 55 00                 2297 	.byte #0x55, #0x00	;  85
      00343D 58 00                 2298 	.byte #0x58, #0x00	;  88
      00343F 5B 00                 2299 	.byte #0x5b, #0x00	;  91
      003441 5E 00                 2300 	.byte #0x5e, #0x00	;  94
      003443 61 00                 2301 	.byte #0x61, #0x00	;  97
      003445 64 00                 2302 	.byte #0x64, #0x00	;  100
      003447 67 00                 2303 	.byte #0x67, #0x00	;  103
      003449 6A 00                 2304 	.byte #0x6a, #0x00	;  106
      00344B 6D 00                 2305 	.byte #0x6d, #0x00	;  109
      00344D 70 00                 2306 	.byte #0x70, #0x00	;  112
      00344F 74 00                 2307 	.byte #0x74, #0x00	;  116
      003451 77 00                 2308 	.byte #0x77, #0x00	;  119
      003453 7A 00                 2309 	.byte #0x7a, #0x00	;  122
      003455 7D 00                 2310 	.byte #0x7d, #0x00	;  125
      003457                       2311 _trig_dac_values:
      003457 00 00                 2312 	.byte #0x00, #0x00	;  0
      003459 01 00                 2313 	.byte #0x01, #0x00	;  1
      00345B 02 00                 2314 	.byte #0x02, #0x00	;  2
      00345D 03 00                 2315 	.byte #0x03, #0x00	;  3
      00345F 04 00                 2316 	.byte #0x04, #0x00	;  4
      003461 05 00                 2317 	.byte #0x05, #0x00	;  5
      003463 06 00                 2318 	.byte #0x06, #0x00	;  6
      003465 07 00                 2319 	.byte #0x07, #0x00	;  7
      003467 08 00                 2320 	.byte #0x08, #0x00	;  8
      003469 09 00                 2321 	.byte #0x09, #0x00	;  9
      00346B 0A 00                 2322 	.byte #0x0a, #0x00	;  10
      00346D 0B 00                 2323 	.byte #0x0b, #0x00	;  11
      00346F 0C 00                 2324 	.byte #0x0c, #0x00	;  12
      003471 0D 00                 2325 	.byte #0x0d, #0x00	;  13
      003473 0E 00                 2326 	.byte #0x0e, #0x00	;  14
      003475 0F 00                 2327 	.byte #0x0f, #0x00	;  15
      003477 10 00                 2328 	.byte #0x10, #0x00	;  16
      003479 11 00                 2329 	.byte #0x11, #0x00	;  17
      00347B 12 00                 2330 	.byte #0x12, #0x00	;  18
      00347D 13 00                 2331 	.byte #0x13, #0x00	;  19
      00347F 14 00                 2332 	.byte #0x14, #0x00	;  20
      003481 15 00                 2333 	.byte #0x15, #0x00	;  21
      003483 16 00                 2334 	.byte #0x16, #0x00	;  22
      003485 17 00                 2335 	.byte #0x17, #0x00	;  23
      003487 18 00                 2336 	.byte #0x18, #0x00	;  24
      003489 19 00                 2337 	.byte #0x19, #0x00	;  25
      00348B 1A 00                 2338 	.byte #0x1a, #0x00	;  26
      00348D 1B 00                 2339 	.byte #0x1b, #0x00	;  27
      00348F 1C 00                 2340 	.byte #0x1c, #0x00	;  28
      003491 1D 00                 2341 	.byte #0x1d, #0x00	;  29
      003493 1E 00                 2342 	.byte #0x1e, #0x00	;  30
      003495 1F 00                 2343 	.byte #0x1f, #0x00	;  31
      003497 20 00                 2344 	.byte #0x20, #0x00	;  32
      003499 21 00                 2345 	.byte #0x21, #0x00	;  33
      00349B 22 00                 2346 	.byte #0x22, #0x00	;  34
      00349D 23 00                 2347 	.byte #0x23, #0x00	;  35
      00349F 24 00                 2348 	.byte #0x24, #0x00	;  36
      0034A1 25 00                 2349 	.byte #0x25, #0x00	;  37
      0034A3 26 00                 2350 	.byte #0x26, #0x00	;  38
      0034A5 27 00                 2351 	.byte #0x27, #0x00	;  39
      0034A7 28 00                 2352 	.byte #0x28, #0x00	;  40
      0034A9 29 00                 2353 	.byte #0x29, #0x00	;  41
      0034AB 2A 00                 2354 	.byte #0x2a, #0x00	;  42
      0034AD 2B 00                 2355 	.byte #0x2b, #0x00	;  43
      0034AF 2C 00                 2356 	.byte #0x2c, #0x00	;  44
      0034B1 2D 00                 2357 	.byte #0x2d, #0x00	;  45
      0034B3 2E 00                 2358 	.byte #0x2e, #0x00	;  46
      0034B5 2F 00                 2359 	.byte #0x2f, #0x00	;  47
      0034B7 30 00                 2360 	.byte #0x30, #0x00	;  48
      0034B9 31 00                 2361 	.byte #0x31, #0x00	;  49
      0034BB 32 00                 2362 	.byte #0x32, #0x00	;  50
      0034BD 33 00                 2363 	.byte #0x33, #0x00	;  51
      0034BF 34 00                 2364 	.byte #0x34, #0x00	;  52
      0034C1 35 00                 2365 	.byte #0x35, #0x00	;  53
      0034C3 36 00                 2366 	.byte #0x36, #0x00	;  54
      0034C5 37 00                 2367 	.byte #0x37, #0x00	;  55
      0034C7 38 00                 2368 	.byte #0x38, #0x00	;  56
      0034C9 39 00                 2369 	.byte #0x39, #0x00	;  57
      0034CB 3A 00                 2370 	.byte #0x3a, #0x00	;  58
      0034CD 3B 00                 2371 	.byte #0x3b, #0x00	;  59
      0034CF 3C 00                 2372 	.byte #0x3c, #0x00	;  60
      0034D1 3D 00                 2373 	.byte #0x3d, #0x00	;  61
      0034D3 3E 00                 2374 	.byte #0x3e, #0x00	;  62
      0034D5 3F 00                 2375 	.byte #0x3f, #0x00	;  63
      0034D7 40 00                 2376 	.byte #0x40, #0x00	;  64
      0034D9 41 00                 2377 	.byte #0x41, #0x00	;  65
      0034DB 42 00                 2378 	.byte #0x42, #0x00	;  66
      0034DD 43 00                 2379 	.byte #0x43, #0x00	;  67
      0034DF 44 00                 2380 	.byte #0x44, #0x00	;  68
      0034E1 45 00                 2381 	.byte #0x45, #0x00	;  69
      0034E3 46 00                 2382 	.byte #0x46, #0x00	;  70
      0034E5 47 00                 2383 	.byte #0x47, #0x00	;  71
      0034E7 48 00                 2384 	.byte #0x48, #0x00	;  72
      0034E9 49 00                 2385 	.byte #0x49, #0x00	;  73
      0034EB 4A 00                 2386 	.byte #0x4a, #0x00	;  74
      0034ED 4B 00                 2387 	.byte #0x4b, #0x00	;  75
      0034EF 4C 00                 2388 	.byte #0x4c, #0x00	;  76
      0034F1 4D 00                 2389 	.byte #0x4d, #0x00	;  77
      0034F3 4E 00                 2390 	.byte #0x4e, #0x00	;  78
      0034F5 4F 00                 2391 	.byte #0x4f, #0x00	;  79
      0034F7 50 00                 2392 	.byte #0x50, #0x00	;  80
      0034F9 51 00                 2393 	.byte #0x51, #0x00	;  81
      0034FB 52 00                 2394 	.byte #0x52, #0x00	;  82
      0034FD 53 00                 2395 	.byte #0x53, #0x00	;  83
      0034FF 54 00                 2396 	.byte #0x54, #0x00	;  84
      003501 55 00                 2397 	.byte #0x55, #0x00	;  85
      003503 56 00                 2398 	.byte #0x56, #0x00	;  86
      003505 57 00                 2399 	.byte #0x57, #0x00	;  87
      003507 58 00                 2400 	.byte #0x58, #0x00	;  88
      003509 59 00                 2401 	.byte #0x59, #0x00	;  89
      00350B 5A 00                 2402 	.byte #0x5a, #0x00	;  90
      00350D 5B 00                 2403 	.byte #0x5b, #0x00	;  91
      00350F 5C 00                 2404 	.byte #0x5c, #0x00	;  92
      003511 5D 00                 2405 	.byte #0x5d, #0x00	;  93
      003513 5E 00                 2406 	.byte #0x5e, #0x00	;  94
      003515 5F 00                 2407 	.byte #0x5f, #0x00	;  95
      003517 60 00                 2408 	.byte #0x60, #0x00	;  96
      003519 61 00                 2409 	.byte #0x61, #0x00	;  97
      00351B 62 00                 2410 	.byte #0x62, #0x00	;  98
      00351D 63 00                 2411 	.byte #0x63, #0x00	;  99
      00351F 64 00                 2412 	.byte #0x64, #0x00	;  100
      003521 65 00                 2413 	.byte #0x65, #0x00	;  101
      003523 66 00                 2414 	.byte #0x66, #0x00	;  102
      003525 67 00                 2415 	.byte #0x67, #0x00	;  103
      003527 68 00                 2416 	.byte #0x68, #0x00	;  104
      003529 69 00                 2417 	.byte #0x69, #0x00	;  105
      00352B 6A 00                 2418 	.byte #0x6a, #0x00	;  106
      00352D 6B 00                 2419 	.byte #0x6b, #0x00	;  107
      00352F 6C 00                 2420 	.byte #0x6c, #0x00	;  108
      003531 6D 00                 2421 	.byte #0x6d, #0x00	;  109
      003533 6E 00                 2422 	.byte #0x6e, #0x00	;  110
      003535 6F 00                 2423 	.byte #0x6f, #0x00	;  111
      003537 70 00                 2424 	.byte #0x70, #0x00	;  112
      003539 71 00                 2425 	.byte #0x71, #0x00	;  113
      00353B 72 00                 2426 	.byte #0x72, #0x00	;  114
      00353D 73 00                 2427 	.byte #0x73, #0x00	;  115
      00353F 74 00                 2428 	.byte #0x74, #0x00	;  116
      003541 75 00                 2429 	.byte #0x75, #0x00	;  117
      003543 76 00                 2430 	.byte #0x76, #0x00	;  118
      003545 77 00                 2431 	.byte #0x77, #0x00	;  119
      003547 78 00                 2432 	.byte #0x78, #0x00	;  120
      003549 79 00                 2433 	.byte #0x79, #0x00	;  121
      00354B 7A 00                 2434 	.byte #0x7a, #0x00	;  122
      00354D 7B 00                 2435 	.byte #0x7b, #0x00	;  123
      00354F 7C 00                 2436 	.byte #0x7c, #0x00	;  124
      003551 7D 00                 2437 	.byte #0x7d, #0x00	;  125
      003553 7E 00                 2438 	.byte #0x7e, #0x00	;  126
      003555 7F 00                 2439 	.byte #0x7f, #0x00	;  127
      003557 80 00                 2440 	.byte #0x80, #0x00	;  128
      003559 81 00                 2441 	.byte #0x81, #0x00	;  129
      00355B 82 00                 2442 	.byte #0x82, #0x00	;  130
      00355D 83 00                 2443 	.byte #0x83, #0x00	;  131
      00355F 84 00                 2444 	.byte #0x84, #0x00	;  132
      003561 85 00                 2445 	.byte #0x85, #0x00	;  133
      003563 86 00                 2446 	.byte #0x86, #0x00	;  134
      003565 87 00                 2447 	.byte #0x87, #0x00	;  135
      003567 88 00                 2448 	.byte #0x88, #0x00	;  136
      003569 89 00                 2449 	.byte #0x89, #0x00	;  137
      00356B 8A 00                 2450 	.byte #0x8a, #0x00	;  138
      00356D 8B 00                 2451 	.byte #0x8b, #0x00	;  139
      00356F 8C 00                 2452 	.byte #0x8c, #0x00	;  140
      003571 8D 00                 2453 	.byte #0x8d, #0x00	;  141
      003573 8E 00                 2454 	.byte #0x8e, #0x00	;  142
      003575 8F 00                 2455 	.byte #0x8f, #0x00	;  143
      003577 90 00                 2456 	.byte #0x90, #0x00	;  144
      003579 91 00                 2457 	.byte #0x91, #0x00	;  145
      00357B 92 00                 2458 	.byte #0x92, #0x00	;  146
      00357D 93 00                 2459 	.byte #0x93, #0x00	;  147
      00357F 94 00                 2460 	.byte #0x94, #0x00	;  148
      003581 95 00                 2461 	.byte #0x95, #0x00	;  149
      003583 96 00                 2462 	.byte #0x96, #0x00	;  150
      003585 97 00                 2463 	.byte #0x97, #0x00	;  151
      003587 98 00                 2464 	.byte #0x98, #0x00	;  152
      003589 99 00                 2465 	.byte #0x99, #0x00	;  153
      00358B 9A 00                 2466 	.byte #0x9a, #0x00	;  154
      00358D 9B 00                 2467 	.byte #0x9b, #0x00	;  155
      00358F 9C 00                 2468 	.byte #0x9c, #0x00	;  156
      003591 9D 00                 2469 	.byte #0x9d, #0x00	;  157
      003593 9E 00                 2470 	.byte #0x9e, #0x00	;  158
      003595 9F 00                 2471 	.byte #0x9f, #0x00	;  159
      003597 A0 00                 2472 	.byte #0xa0, #0x00	;  160
      003599 A1 00                 2473 	.byte #0xa1, #0x00	;  161
      00359B A2 00                 2474 	.byte #0xa2, #0x00	;  162
      00359D A3 00                 2475 	.byte #0xa3, #0x00	;  163
      00359F A4 00                 2476 	.byte #0xa4, #0x00	;  164
      0035A1 A5 00                 2477 	.byte #0xa5, #0x00	;  165
      0035A3 A6 00                 2478 	.byte #0xa6, #0x00	;  166
      0035A5 A7 00                 2479 	.byte #0xa7, #0x00	;  167
      0035A7 A8 00                 2480 	.byte #0xa8, #0x00	;  168
      0035A9 A9 00                 2481 	.byte #0xa9, #0x00	;  169
      0035AB AA 00                 2482 	.byte #0xaa, #0x00	;  170
      0035AD AB 00                 2483 	.byte #0xab, #0x00	;  171
      0035AF AC 00                 2484 	.byte #0xac, #0x00	;  172
      0035B1 AD 00                 2485 	.byte #0xad, #0x00	;  173
      0035B3 AE 00                 2486 	.byte #0xae, #0x00	;  174
      0035B5 AF 00                 2487 	.byte #0xaf, #0x00	;  175
      0035B7 B0 00                 2488 	.byte #0xb0, #0x00	;  176
      0035B9 B1 00                 2489 	.byte #0xb1, #0x00	;  177
      0035BB B2 00                 2490 	.byte #0xb2, #0x00	;  178
      0035BD B3 00                 2491 	.byte #0xb3, #0x00	;  179
      0035BF B4 00                 2492 	.byte #0xb4, #0x00	;  180
      0035C1 B5 00                 2493 	.byte #0xb5, #0x00	;  181
      0035C3 B6 00                 2494 	.byte #0xb6, #0x00	;  182
      0035C5 B7 00                 2495 	.byte #0xb7, #0x00	;  183
      0035C7 B8 00                 2496 	.byte #0xb8, #0x00	;  184
      0035C9 B9 00                 2497 	.byte #0xb9, #0x00	;  185
      0035CB BA 00                 2498 	.byte #0xba, #0x00	;  186
      0035CD BB 00                 2499 	.byte #0xbb, #0x00	;  187
      0035CF BC 00                 2500 	.byte #0xbc, #0x00	;  188
      0035D1 BD 00                 2501 	.byte #0xbd, #0x00	;  189
      0035D3 BE 00                 2502 	.byte #0xbe, #0x00	;  190
      0035D5 BF 00                 2503 	.byte #0xbf, #0x00	;  191
      0035D7 C0 00                 2504 	.byte #0xc0, #0x00	;  192
      0035D9 C1 00                 2505 	.byte #0xc1, #0x00	;  193
      0035DB C2 00                 2506 	.byte #0xc2, #0x00	;  194
      0035DD C3 00                 2507 	.byte #0xc3, #0x00	;  195
      0035DF C4 00                 2508 	.byte #0xc4, #0x00	;  196
      0035E1 C5 00                 2509 	.byte #0xc5, #0x00	;  197
      0035E3 C6 00                 2510 	.byte #0xc6, #0x00	;  198
      0035E5 C7 00                 2511 	.byte #0xc7, #0x00	;  199
      0035E7 C8 00                 2512 	.byte #0xc8, #0x00	;  200
      0035E9 C9 00                 2513 	.byte #0xc9, #0x00	;  201
      0035EB CA 00                 2514 	.byte #0xca, #0x00	;  202
      0035ED CB 00                 2515 	.byte #0xcb, #0x00	;  203
      0035EF CC 00                 2516 	.byte #0xcc, #0x00	;  204
      0035F1 CD 00                 2517 	.byte #0xcd, #0x00	;  205
      0035F3 CE 00                 2518 	.byte #0xce, #0x00	;  206
      0035F5 CF 00                 2519 	.byte #0xcf, #0x00	;  207
      0035F7 D0 00                 2520 	.byte #0xd0, #0x00	;  208
      0035F9 D1 00                 2521 	.byte #0xd1, #0x00	;  209
      0035FB D2 00                 2522 	.byte #0xd2, #0x00	;  210
      0035FD D3 00                 2523 	.byte #0xd3, #0x00	;  211
      0035FF D4 00                 2524 	.byte #0xd4, #0x00	;  212
      003601 D5 00                 2525 	.byte #0xd5, #0x00	;  213
      003603 D6 00                 2526 	.byte #0xd6, #0x00	;  214
      003605 D7 00                 2527 	.byte #0xd7, #0x00	;  215
      003607 D8 00                 2528 	.byte #0xd8, #0x00	;  216
      003609 D9 00                 2529 	.byte #0xd9, #0x00	;  217
      00360B DA 00                 2530 	.byte #0xda, #0x00	;  218
      00360D DB 00                 2531 	.byte #0xdb, #0x00	;  219
      00360F DC 00                 2532 	.byte #0xdc, #0x00	;  220
      003611 DD 00                 2533 	.byte #0xdd, #0x00	;  221
      003613 DE 00                 2534 	.byte #0xde, #0x00	;  222
      003615 DF 00                 2535 	.byte #0xdf, #0x00	;  223
      003617 E0 00                 2536 	.byte #0xe0, #0x00	;  224
      003619 E1 00                 2537 	.byte #0xe1, #0x00	;  225
      00361B E2 00                 2538 	.byte #0xe2, #0x00	;  226
      00361D E3 00                 2539 	.byte #0xe3, #0x00	;  227
      00361F E4 00                 2540 	.byte #0xe4, #0x00	;  228
      003621 E5 00                 2541 	.byte #0xe5, #0x00	;  229
      003623 E6 00                 2542 	.byte #0xe6, #0x00	;  230
      003625 E7 00                 2543 	.byte #0xe7, #0x00	;  231
      003627 E8 00                 2544 	.byte #0xe8, #0x00	;  232
      003629 E9 00                 2545 	.byte #0xe9, #0x00	;  233
      00362B EA 00                 2546 	.byte #0xea, #0x00	;  234
      00362D EB 00                 2547 	.byte #0xeb, #0x00	;  235
      00362F EC 00                 2548 	.byte #0xec, #0x00	;  236
      003631 ED 00                 2549 	.byte #0xed, #0x00	;  237
      003633 EE 00                 2550 	.byte #0xee, #0x00	;  238
      003635 EF 00                 2551 	.byte #0xef, #0x00	;  239
      003637 F0 00                 2552 	.byte #0xf0, #0x00	;  240
      003639 F1 00                 2553 	.byte #0xf1, #0x00	;  241
      00363B F2 00                 2554 	.byte #0xf2, #0x00	;  242
      00363D F3 00                 2555 	.byte #0xf3, #0x00	;  243
      00363F F4 00                 2556 	.byte #0xf4, #0x00	;  244
      003641 F5 00                 2557 	.byte #0xf5, #0x00	;  245
      003643 F6 00                 2558 	.byte #0xf6, #0x00	;  246
      003645 F7 00                 2559 	.byte #0xf7, #0x00	;  247
      003647 F8 00                 2560 	.byte #0xf8, #0x00	;  248
      003649 F9 00                 2561 	.byte #0xf9, #0x00	;  249
      00364B FA 00                 2562 	.byte #0xfa, #0x00	;  250
      00364D FB 00                 2563 	.byte #0xfb, #0x00	;  251
      00364F FC 00                 2564 	.byte #0xfc, #0x00	;  252
      003651 FD 00                 2565 	.byte #0xfd, #0x00	;  253
      003653 FE 00                 2566 	.byte #0xfe, #0x00	;  254
      003655 FF 00                 2567 	.byte #0xff, #0x00	;  255
      003657 FF 00                 2568 	.byte #0xff, #0x00	;  255
      003659 FE 00                 2569 	.byte #0xfe, #0x00	;  254
      00365B FD 00                 2570 	.byte #0xfd, #0x00	;  253
      00365D FC 00                 2571 	.byte #0xfc, #0x00	;  252
      00365F FB 00                 2572 	.byte #0xfb, #0x00	;  251
      003661 FA 00                 2573 	.byte #0xfa, #0x00	;  250
      003663 F9 00                 2574 	.byte #0xf9, #0x00	;  249
      003665 F8 00                 2575 	.byte #0xf8, #0x00	;  248
      003667 F7 00                 2576 	.byte #0xf7, #0x00	;  247
      003669 F6 00                 2577 	.byte #0xf6, #0x00	;  246
      00366B F5 00                 2578 	.byte #0xf5, #0x00	;  245
      00366D F4 00                 2579 	.byte #0xf4, #0x00	;  244
      00366F F3 00                 2580 	.byte #0xf3, #0x00	;  243
      003671 F2 00                 2581 	.byte #0xf2, #0x00	;  242
      003673 F1 00                 2582 	.byte #0xf1, #0x00	;  241
      003675 F0 00                 2583 	.byte #0xf0, #0x00	;  240
      003677 EF 00                 2584 	.byte #0xef, #0x00	;  239
      003679 EE 00                 2585 	.byte #0xee, #0x00	;  238
      00367B ED 00                 2586 	.byte #0xed, #0x00	;  237
      00367D EC 00                 2587 	.byte #0xec, #0x00	;  236
      00367F EB 00                 2588 	.byte #0xeb, #0x00	;  235
      003681 EA 00                 2589 	.byte #0xea, #0x00	;  234
      003683 E9 00                 2590 	.byte #0xe9, #0x00	;  233
      003685 E8 00                 2591 	.byte #0xe8, #0x00	;  232
      003687 E7 00                 2592 	.byte #0xe7, #0x00	;  231
      003689 E6 00                 2593 	.byte #0xe6, #0x00	;  230
      00368B E5 00                 2594 	.byte #0xe5, #0x00	;  229
      00368D E4 00                 2595 	.byte #0xe4, #0x00	;  228
      00368F E3 00                 2596 	.byte #0xe3, #0x00	;  227
      003691 E2 00                 2597 	.byte #0xe2, #0x00	;  226
      003693 E1 00                 2598 	.byte #0xe1, #0x00	;  225
      003695 E0 00                 2599 	.byte #0xe0, #0x00	;  224
      003697 DF 00                 2600 	.byte #0xdf, #0x00	;  223
      003699 DE 00                 2601 	.byte #0xde, #0x00	;  222
      00369B DD 00                 2602 	.byte #0xdd, #0x00	;  221
      00369D DC 00                 2603 	.byte #0xdc, #0x00	;  220
      00369F DB 00                 2604 	.byte #0xdb, #0x00	;  219
      0036A1 DA 00                 2605 	.byte #0xda, #0x00	;  218
      0036A3 D9 00                 2606 	.byte #0xd9, #0x00	;  217
      0036A5 D8 00                 2607 	.byte #0xd8, #0x00	;  216
      0036A7 D7 00                 2608 	.byte #0xd7, #0x00	;  215
      0036A9 D6 00                 2609 	.byte #0xd6, #0x00	;  214
      0036AB D5 00                 2610 	.byte #0xd5, #0x00	;  213
      0036AD D4 00                 2611 	.byte #0xd4, #0x00	;  212
      0036AF D3 00                 2612 	.byte #0xd3, #0x00	;  211
      0036B1 D2 00                 2613 	.byte #0xd2, #0x00	;  210
      0036B3 D1 00                 2614 	.byte #0xd1, #0x00	;  209
      0036B5 D0 00                 2615 	.byte #0xd0, #0x00	;  208
      0036B7 CF 00                 2616 	.byte #0xcf, #0x00	;  207
      0036B9 CE 00                 2617 	.byte #0xce, #0x00	;  206
      0036BB CD 00                 2618 	.byte #0xcd, #0x00	;  205
      0036BD CC 00                 2619 	.byte #0xcc, #0x00	;  204
      0036BF CB 00                 2620 	.byte #0xcb, #0x00	;  203
      0036C1 CA 00                 2621 	.byte #0xca, #0x00	;  202
      0036C3 C9 00                 2622 	.byte #0xc9, #0x00	;  201
      0036C5 C8 00                 2623 	.byte #0xc8, #0x00	;  200
      0036C7 C7 00                 2624 	.byte #0xc7, #0x00	;  199
      0036C9 C6 00                 2625 	.byte #0xc6, #0x00	;  198
      0036CB C5 00                 2626 	.byte #0xc5, #0x00	;  197
      0036CD C4 00                 2627 	.byte #0xc4, #0x00	;  196
      0036CF C3 00                 2628 	.byte #0xc3, #0x00	;  195
      0036D1 C2 00                 2629 	.byte #0xc2, #0x00	;  194
      0036D3 C1 00                 2630 	.byte #0xc1, #0x00	;  193
      0036D5 C0 00                 2631 	.byte #0xc0, #0x00	;  192
      0036D7 BF 00                 2632 	.byte #0xbf, #0x00	;  191
      0036D9 BE 00                 2633 	.byte #0xbe, #0x00	;  190
      0036DB BD 00                 2634 	.byte #0xbd, #0x00	;  189
      0036DD BC 00                 2635 	.byte #0xbc, #0x00	;  188
      0036DF BB 00                 2636 	.byte #0xbb, #0x00	;  187
      0036E1 BA 00                 2637 	.byte #0xba, #0x00	;  186
      0036E3 B9 00                 2638 	.byte #0xb9, #0x00	;  185
      0036E5 B8 00                 2639 	.byte #0xb8, #0x00	;  184
      0036E7 B7 00                 2640 	.byte #0xb7, #0x00	;  183
      0036E9 B6 00                 2641 	.byte #0xb6, #0x00	;  182
      0036EB B5 00                 2642 	.byte #0xb5, #0x00	;  181
      0036ED B4 00                 2643 	.byte #0xb4, #0x00	;  180
      0036EF B3 00                 2644 	.byte #0xb3, #0x00	;  179
      0036F1 B2 00                 2645 	.byte #0xb2, #0x00	;  178
      0036F3 B1 00                 2646 	.byte #0xb1, #0x00	;  177
      0036F5 B0 00                 2647 	.byte #0xb0, #0x00	;  176
      0036F7 AF 00                 2648 	.byte #0xaf, #0x00	;  175
      0036F9 AE 00                 2649 	.byte #0xae, #0x00	;  174
      0036FB AD 00                 2650 	.byte #0xad, #0x00	;  173
      0036FD AC 00                 2651 	.byte #0xac, #0x00	;  172
      0036FF AB 00                 2652 	.byte #0xab, #0x00	;  171
      003701 AA 00                 2653 	.byte #0xaa, #0x00	;  170
      003703 A9 00                 2654 	.byte #0xa9, #0x00	;  169
      003705 A8 00                 2655 	.byte #0xa8, #0x00	;  168
      003707 A7 00                 2656 	.byte #0xa7, #0x00	;  167
      003709 A6 00                 2657 	.byte #0xa6, #0x00	;  166
      00370B A5 00                 2658 	.byte #0xa5, #0x00	;  165
      00370D A4 00                 2659 	.byte #0xa4, #0x00	;  164
      00370F A3 00                 2660 	.byte #0xa3, #0x00	;  163
      003711 A2 00                 2661 	.byte #0xa2, #0x00	;  162
      003713 A1 00                 2662 	.byte #0xa1, #0x00	;  161
      003715 A0 00                 2663 	.byte #0xa0, #0x00	;  160
      003717 9F 00                 2664 	.byte #0x9f, #0x00	;  159
      003719 9E 00                 2665 	.byte #0x9e, #0x00	;  158
      00371B 9D 00                 2666 	.byte #0x9d, #0x00	;  157
      00371D 9C 00                 2667 	.byte #0x9c, #0x00	;  156
      00371F 9B 00                 2668 	.byte #0x9b, #0x00	;  155
      003721 9A 00                 2669 	.byte #0x9a, #0x00	;  154
      003723 99 00                 2670 	.byte #0x99, #0x00	;  153
      003725 98 00                 2671 	.byte #0x98, #0x00	;  152
      003727 97 00                 2672 	.byte #0x97, #0x00	;  151
      003729 96 00                 2673 	.byte #0x96, #0x00	;  150
      00372B 95 00                 2674 	.byte #0x95, #0x00	;  149
      00372D 94 00                 2675 	.byte #0x94, #0x00	;  148
      00372F 93 00                 2676 	.byte #0x93, #0x00	;  147
      003731 92 00                 2677 	.byte #0x92, #0x00	;  146
      003733 91 00                 2678 	.byte #0x91, #0x00	;  145
      003735 90 00                 2679 	.byte #0x90, #0x00	;  144
      003737 8F 00                 2680 	.byte #0x8f, #0x00	;  143
      003739 8E 00                 2681 	.byte #0x8e, #0x00	;  142
      00373B 8D 00                 2682 	.byte #0x8d, #0x00	;  141
      00373D 8C 00                 2683 	.byte #0x8c, #0x00	;  140
      00373F 8B 00                 2684 	.byte #0x8b, #0x00	;  139
      003741 8A 00                 2685 	.byte #0x8a, #0x00	;  138
      003743 89 00                 2686 	.byte #0x89, #0x00	;  137
      003745 88 00                 2687 	.byte #0x88, #0x00	;  136
      003747 87 00                 2688 	.byte #0x87, #0x00	;  135
      003749 86 00                 2689 	.byte #0x86, #0x00	;  134
      00374B 85 00                 2690 	.byte #0x85, #0x00	;  133
      00374D 84 00                 2691 	.byte #0x84, #0x00	;  132
      00374F 83 00                 2692 	.byte #0x83, #0x00	;  131
      003751 82 00                 2693 	.byte #0x82, #0x00	;  130
      003753 81 00                 2694 	.byte #0x81, #0x00	;  129
      003755 80 00                 2695 	.byte #0x80, #0x00	;  128
      003757 7F 00                 2696 	.byte #0x7f, #0x00	;  127
      003759 7E 00                 2697 	.byte #0x7e, #0x00	;  126
      00375B 7D 00                 2698 	.byte #0x7d, #0x00	;  125
      00375D 7C 00                 2699 	.byte #0x7c, #0x00	;  124
      00375F 7B 00                 2700 	.byte #0x7b, #0x00	;  123
      003761 7A 00                 2701 	.byte #0x7a, #0x00	;  122
      003763 79 00                 2702 	.byte #0x79, #0x00	;  121
      003765 78 00                 2703 	.byte #0x78, #0x00	;  120
      003767 77 00                 2704 	.byte #0x77, #0x00	;  119
      003769 76 00                 2705 	.byte #0x76, #0x00	;  118
      00376B 75 00                 2706 	.byte #0x75, #0x00	;  117
      00376D 74 00                 2707 	.byte #0x74, #0x00	;  116
      00376F 73 00                 2708 	.byte #0x73, #0x00	;  115
      003771 72 00                 2709 	.byte #0x72, #0x00	;  114
      003773 71 00                 2710 	.byte #0x71, #0x00	;  113
      003775 70 00                 2711 	.byte #0x70, #0x00	;  112
      003777 6F 00                 2712 	.byte #0x6f, #0x00	;  111
      003779 6E 00                 2713 	.byte #0x6e, #0x00	;  110
      00377B 6D 00                 2714 	.byte #0x6d, #0x00	;  109
      00377D 6C 00                 2715 	.byte #0x6c, #0x00	;  108
      00377F 6B 00                 2716 	.byte #0x6b, #0x00	;  107
      003781 6A 00                 2717 	.byte #0x6a, #0x00	;  106
      003783 69 00                 2718 	.byte #0x69, #0x00	;  105
      003785 68 00                 2719 	.byte #0x68, #0x00	;  104
      003787 67 00                 2720 	.byte #0x67, #0x00	;  103
      003789 66 00                 2721 	.byte #0x66, #0x00	;  102
      00378B 65 00                 2722 	.byte #0x65, #0x00	;  101
      00378D 64 00                 2723 	.byte #0x64, #0x00	;  100
      00378F 63 00                 2724 	.byte #0x63, #0x00	;  99
      003791 62 00                 2725 	.byte #0x62, #0x00	;  98
      003793 61 00                 2726 	.byte #0x61, #0x00	;  97
      003795 60 00                 2727 	.byte #0x60, #0x00	;  96
      003797 5F 00                 2728 	.byte #0x5f, #0x00	;  95
      003799 5E 00                 2729 	.byte #0x5e, #0x00	;  94
      00379B 5D 00                 2730 	.byte #0x5d, #0x00	;  93
      00379D 5C 00                 2731 	.byte #0x5c, #0x00	;  92
      00379F 5B 00                 2732 	.byte #0x5b, #0x00	;  91
      0037A1 5A 00                 2733 	.byte #0x5a, #0x00	;  90
      0037A3 59 00                 2734 	.byte #0x59, #0x00	;  89
      0037A5 58 00                 2735 	.byte #0x58, #0x00	;  88
      0037A7 57 00                 2736 	.byte #0x57, #0x00	;  87
      0037A9 56 00                 2737 	.byte #0x56, #0x00	;  86
      0037AB 55 00                 2738 	.byte #0x55, #0x00	;  85
      0037AD 54 00                 2739 	.byte #0x54, #0x00	;  84
      0037AF 53 00                 2740 	.byte #0x53, #0x00	;  83
      0037B1 52 00                 2741 	.byte #0x52, #0x00	;  82
      0037B3 51 00                 2742 	.byte #0x51, #0x00	;  81
      0037B5 50 00                 2743 	.byte #0x50, #0x00	;  80
      0037B7 4F 00                 2744 	.byte #0x4f, #0x00	;  79
      0037B9 4E 00                 2745 	.byte #0x4e, #0x00	;  78
      0037BB 4D 00                 2746 	.byte #0x4d, #0x00	;  77
      0037BD 4C 00                 2747 	.byte #0x4c, #0x00	;  76
      0037BF 4B 00                 2748 	.byte #0x4b, #0x00	;  75
      0037C1 4A 00                 2749 	.byte #0x4a, #0x00	;  74
      0037C3 49 00                 2750 	.byte #0x49, #0x00	;  73
      0037C5 48 00                 2751 	.byte #0x48, #0x00	;  72
      0037C7 47 00                 2752 	.byte #0x47, #0x00	;  71
      0037C9 46 00                 2753 	.byte #0x46, #0x00	;  70
      0037CB 45 00                 2754 	.byte #0x45, #0x00	;  69
      0037CD 44 00                 2755 	.byte #0x44, #0x00	;  68
      0037CF 43 00                 2756 	.byte #0x43, #0x00	;  67
      0037D1 42 00                 2757 	.byte #0x42, #0x00	;  66
      0037D3 41 00                 2758 	.byte #0x41, #0x00	;  65
      0037D5 40 00                 2759 	.byte #0x40, #0x00	;  64
      0037D7 3F 00                 2760 	.byte #0x3f, #0x00	;  63
      0037D9 3E 00                 2761 	.byte #0x3e, #0x00	;  62
      0037DB 3D 00                 2762 	.byte #0x3d, #0x00	;  61
      0037DD 3C 00                 2763 	.byte #0x3c, #0x00	;  60
      0037DF 3B 00                 2764 	.byte #0x3b, #0x00	;  59
      0037E1 3A 00                 2765 	.byte #0x3a, #0x00	;  58
      0037E3 39 00                 2766 	.byte #0x39, #0x00	;  57
      0037E5 38 00                 2767 	.byte #0x38, #0x00	;  56
      0037E7 37 00                 2768 	.byte #0x37, #0x00	;  55
      0037E9 36 00                 2769 	.byte #0x36, #0x00	;  54
      0037EB 35 00                 2770 	.byte #0x35, #0x00	;  53
      0037ED 34 00                 2771 	.byte #0x34, #0x00	;  52
      0037EF 33 00                 2772 	.byte #0x33, #0x00	;  51
      0037F1 32 00                 2773 	.byte #0x32, #0x00	;  50
      0037F3 31 00                 2774 	.byte #0x31, #0x00	;  49
      0037F5 30 00                 2775 	.byte #0x30, #0x00	;  48
      0037F7 2F 00                 2776 	.byte #0x2f, #0x00	;  47
      0037F9 2E 00                 2777 	.byte #0x2e, #0x00	;  46
      0037FB 2D 00                 2778 	.byte #0x2d, #0x00	;  45
      0037FD 2C 00                 2779 	.byte #0x2c, #0x00	;  44
      0037FF 2B 00                 2780 	.byte #0x2b, #0x00	;  43
      003801 2A 00                 2781 	.byte #0x2a, #0x00	;  42
      003803 29 00                 2782 	.byte #0x29, #0x00	;  41
      003805 28 00                 2783 	.byte #0x28, #0x00	;  40
      003807 27 00                 2784 	.byte #0x27, #0x00	;  39
      003809 26 00                 2785 	.byte #0x26, #0x00	;  38
      00380B 25 00                 2786 	.byte #0x25, #0x00	;  37
      00380D 24 00                 2787 	.byte #0x24, #0x00	;  36
      00380F 23 00                 2788 	.byte #0x23, #0x00	;  35
      003811 22 00                 2789 	.byte #0x22, #0x00	;  34
      003813 21 00                 2790 	.byte #0x21, #0x00	;  33
      003815 20 00                 2791 	.byte #0x20, #0x00	;  32
      003817 1F 00                 2792 	.byte #0x1f, #0x00	;  31
      003819 1E 00                 2793 	.byte #0x1e, #0x00	;  30
      00381B 1D 00                 2794 	.byte #0x1d, #0x00	;  29
      00381D 1C 00                 2795 	.byte #0x1c, #0x00	;  28
      00381F 1B 00                 2796 	.byte #0x1b, #0x00	;  27
      003821 1A 00                 2797 	.byte #0x1a, #0x00	;  26
      003823 19 00                 2798 	.byte #0x19, #0x00	;  25
      003825 18 00                 2799 	.byte #0x18, #0x00	;  24
      003827 17 00                 2800 	.byte #0x17, #0x00	;  23
      003829 16 00                 2801 	.byte #0x16, #0x00	;  22
      00382B 15 00                 2802 	.byte #0x15, #0x00	;  21
      00382D 14 00                 2803 	.byte #0x14, #0x00	;  20
      00382F 13 00                 2804 	.byte #0x13, #0x00	;  19
      003831 12 00                 2805 	.byte #0x12, #0x00	;  18
      003833 11 00                 2806 	.byte #0x11, #0x00	;  17
      003835 10 00                 2807 	.byte #0x10, #0x00	;  16
      003837 0F 00                 2808 	.byte #0x0f, #0x00	;  15
      003839 0E 00                 2809 	.byte #0x0e, #0x00	;  14
      00383B 0D 00                 2810 	.byte #0x0d, #0x00	;  13
      00383D 0C 00                 2811 	.byte #0x0c, #0x00	;  12
      00383F 0B 00                 2812 	.byte #0x0b, #0x00	;  11
      003841 0A 00                 2813 	.byte #0x0a, #0x00	;  10
      003843 09 00                 2814 	.byte #0x09, #0x00	;  9
      003845 08 00                 2815 	.byte #0x08, #0x00	;  8
      003847 07 00                 2816 	.byte #0x07, #0x00	;  7
      003849 06 00                 2817 	.byte #0x06, #0x00	;  6
      00384B 05 00                 2818 	.byte #0x05, #0x00	;  5
      00384D 04 00                 2819 	.byte #0x04, #0x00	;  4
      00384F 03 00                 2820 	.byte #0x03, #0x00	;  3
      003851 02 00                 2821 	.byte #0x02, #0x00	;  2
      003853 01 00                 2822 	.byte #0x01, #0x00	;  1
      003855 00 00                 2823 	.byte #0x00, #0x00	;  0
                                   2824 	.area CONST   (CODE)
      003857                       2825 ___str_0:
      003857 0A                    2826 	.db 0x0a
      003858 0D                    2827 	.db 0x0d
      003859 E2                    2828 	.db 0xe2
      00385A 94                    2829 	.db 0x94
      00385B 8C                    2830 	.db 0x8c
      00385C E2                    2831 	.db 0xe2
      00385D 94                    2832 	.db 0x94
      00385E 80                    2833 	.db 0x80
      00385F E2                    2834 	.db 0xe2
      003860 94                    2835 	.db 0x94
      003861 80                    2836 	.db 0x80
      003862 E2                    2837 	.db 0xe2
      003863 94                    2838 	.db 0x94
      003864 80                    2839 	.db 0x80
      003865 E2                    2840 	.db 0xe2
      003866 94                    2841 	.db 0x94
      003867 80                    2842 	.db 0x80
      003868 E2                    2843 	.db 0xe2
      003869 94                    2844 	.db 0x94
      00386A 80                    2845 	.db 0x80
      00386B E2                    2846 	.db 0xe2
      00386C 94                    2847 	.db 0x94
      00386D 80                    2848 	.db 0x80
      00386E E2                    2849 	.db 0xe2
      00386F 94                    2850 	.db 0x94
      003870 80                    2851 	.db 0x80
      003871 E2                    2852 	.db 0xe2
      003872 94                    2853 	.db 0x94
      003873 80                    2854 	.db 0x80
      003874 E2                    2855 	.db 0xe2
      003875 94                    2856 	.db 0x94
      003876 80                    2857 	.db 0x80
      003877 E2                    2858 	.db 0xe2
      003878 94                    2859 	.db 0x94
      003879 80                    2860 	.db 0x80
      00387A E2                    2861 	.db 0xe2
      00387B 94                    2862 	.db 0x94
      00387C 80                    2863 	.db 0x80
      00387D E2                    2864 	.db 0xe2
      00387E 94                    2865 	.db 0x94
      00387F 80                    2866 	.db 0x80
      003880 E2                    2867 	.db 0xe2
      003881 94                    2868 	.db 0x94
      003882 80                    2869 	.db 0x80
      003883 E2                    2870 	.db 0xe2
      003884 94                    2871 	.db 0x94
      003885 80                    2872 	.db 0x80
      003886 E2                    2873 	.db 0xe2
      003887 94                    2874 	.db 0x94
      003888 80                    2875 	.db 0x80
      003889 E2                    2876 	.db 0xe2
      00388A 94                    2877 	.db 0x94
      00388B 80                    2878 	.db 0x80
      00388C E2                    2879 	.db 0xe2
      00388D 94                    2880 	.db 0x94
      00388E 80                    2881 	.db 0x80
      00388F E2                    2882 	.db 0xe2
      003890 94                    2883 	.db 0x94
      003891 80                    2884 	.db 0x80
      003892 E2                    2885 	.db 0xe2
      003893 94                    2886 	.db 0x94
      003894 80                    2887 	.db 0x80
      003895 E2                    2888 	.db 0xe2
      003896 94                    2889 	.db 0x94
      003897 80                    2890 	.db 0x80
      003898 E2                    2891 	.db 0xe2
      003899 94                    2892 	.db 0x94
      00389A 80                    2893 	.db 0x80
      00389B E2                    2894 	.db 0xe2
      00389C 94                    2895 	.db 0x94
      00389D 80                    2896 	.db 0x80
      00389E E2                    2897 	.db 0xe2
      00389F 94                    2898 	.db 0x94
      0038A0 80                    2899 	.db 0x80
      0038A1 E2                    2900 	.db 0xe2
      0038A2 94                    2901 	.db 0x94
      0038A3 80                    2902 	.db 0x80
      0038A4 E2                    2903 	.db 0xe2
      0038A5 94                    2904 	.db 0x94
      0038A6 80                    2905 	.db 0x80
      0038A7 E2                    2906 	.db 0xe2
      0038A8 94                    2907 	.db 0x94
      0038A9 80                    2908 	.db 0x80
      0038AA E2                    2909 	.db 0xe2
      0038AB 94                    2910 	.db 0x94
      0038AC 80                    2911 	.db 0x80
      0038AD E2                    2912 	.db 0xe2
      0038AE 94                    2913 	.db 0x94
      0038AF 80                    2914 	.db 0x80
      0038B0 E2                    2915 	.db 0xe2
      0038B1 94                    2916 	.db 0x94
      0038B2 80                    2917 	.db 0x80
      0038B3 E2                    2918 	.db 0xe2
      0038B4 94                    2919 	.db 0x94
      0038B5 80                    2920 	.db 0x80
      0038B6 E2                    2921 	.db 0xe2
      0038B7 94                    2922 	.db 0x94
      0038B8 80                    2923 	.db 0x80
      0038B9 E2                    2924 	.db 0xe2
      0038BA 94                    2925 	.db 0x94
      0038BB 80                    2926 	.db 0x80
      0038BC E2                    2927 	.db 0xe2
      0038BD 94                    2928 	.db 0x94
      0038BE 80                    2929 	.db 0x80
      0038BF E2                    2930 	.db 0xe2
      0038C0 94                    2931 	.db 0x94
      0038C1 80                    2932 	.db 0x80
      0038C2 E2                    2933 	.db 0xe2
      0038C3 94                    2934 	.db 0x94
      0038C4 80                    2935 	.db 0x80
      0038C5 E2                    2936 	.db 0xe2
      0038C6 94                    2937 	.db 0x94
      0038C7 80                    2938 	.db 0x80
      0038C8 E2                    2939 	.db 0xe2
      0038C9 94                    2940 	.db 0x94
      0038CA 80                    2941 	.db 0x80
      0038CB E2                    2942 	.db 0xe2
      0038CC 94                    2943 	.db 0x94
      0038CD 80                    2944 	.db 0x80
      0038CE E2                    2945 	.db 0xe2
      0038CF 94                    2946 	.db 0x94
      0038D0 80                    2947 	.db 0x80
      0038D1 E2                    2948 	.db 0xe2
      0038D2 94                    2949 	.db 0x94
      0038D3 80                    2950 	.db 0x80
      0038D4 E2                    2951 	.db 0xe2
      0038D5 94                    2952 	.db 0x94
      0038D6 80                    2953 	.db 0x80
      0038D7 E2                    2954 	.db 0xe2
      0038D8 94                    2955 	.db 0x94
      0038D9 80                    2956 	.db 0x80
      0038DA E2                    2957 	.db 0xe2
      0038DB 94                    2958 	.db 0x94
      0038DC 80                    2959 	.db 0x80
      0038DD E2                    2960 	.db 0xe2
      0038DE 94                    2961 	.db 0x94
      0038DF 80                    2962 	.db 0x80
      0038E0 E2                    2963 	.db 0xe2
      0038E1 94                    2964 	.db 0x94
      0038E2 80                    2965 	.db 0x80
      0038E3 E2                    2966 	.db 0xe2
      0038E4 94                    2967 	.db 0x94
      0038E5 80                    2968 	.db 0x80
      0038E6 E2                    2969 	.db 0xe2
      0038E7 94                    2970 	.db 0x94
      0038E8 80                    2971 	.db 0x80
      0038E9 E2                    2972 	.db 0xe2
      0038EA 94                    2973 	.db 0x94
      0038EB 80                    2974 	.db 0x80
      0038EC E2                    2975 	.db 0xe2
      0038ED 94                    2976 	.db 0x94
      0038EE 80                    2977 	.db 0x80
      0038EF E2                    2978 	.db 0xe2
      0038F0 94                    2979 	.db 0x94
      0038F1 80                    2980 	.db 0x80
      0038F2 E2                    2981 	.db 0xe2
      0038F3 94                    2982 	.db 0x94
      0038F4 80                    2983 	.db 0x80
      0038F5 E2                    2984 	.db 0xe2
      0038F6 94                    2985 	.db 0x94
      0038F7 80                    2986 	.db 0x80
      0038F8 E2                    2987 	.db 0xe2
      0038F9 94                    2988 	.db 0x94
      0038FA 80                    2989 	.db 0x80
      0038FB E2                    2990 	.db 0xe2
      0038FC 94                    2991 	.db 0x94
      0038FD 80                    2992 	.db 0x80
      0038FE E2                    2993 	.db 0xe2
      0038FF 94                    2994 	.db 0x94
      003900 80                    2995 	.db 0x80
      003901 E2                    2996 	.db 0xe2
      003902 94                    2997 	.db 0x94
      003903 80                    2998 	.db 0x80
      003904 E2                    2999 	.db 0xe2
      003905 94                    3000 	.db 0x94
      003906 80                    3001 	.db 0x80
      003907 E2                    3002 	.db 0xe2
      003908 94                    3003 	.db 0x94
      003909 80                    3004 	.db 0x80
      00390A E2                    3005 	.db 0xe2
      00390B 94                    3006 	.db 0x94
      00390C 80                    3007 	.db 0x80
      00390D E2                    3008 	.db 0xe2
      00390E 94                    3009 	.db 0x94
      00390F 80                    3010 	.db 0x80
      003910 E2                    3011 	.db 0xe2
      003911 94                    3012 	.db 0x94
      003912 80                    3013 	.db 0x80
      003913 E2                    3014 	.db 0xe2
      003914 94                    3015 	.db 0x94
      003915 80                    3016 	.db 0x80
      003916 E2                    3017 	.db 0xe2
      003917 94                    3018 	.db 0x94
      003918 90                    3019 	.db 0x90
      003919 0A                    3020 	.db 0x0a
      00391A 0D                    3021 	.db 0x0d
      00391B 00                    3022 	.db 0x00
                                   3023 	.area CSEG    (CODE)
                                   3024 	.area CONST   (CODE)
      00391C                       3025 ___str_1:
      00391C E2                    3026 	.db 0xe2
      00391D 94                    3027 	.db 0x94
      00391E 82                    3028 	.db 0x82
      00391F 20 20 20 20 20 20 20  3029 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00395B 20 20                 3030 	.ascii "  "
      00395D E2                    3031 	.db 0xe2
      00395E 94                    3032 	.db 0x94
      00395F 82                    3033 	.db 0x82
      003960 0A                    3034 	.db 0x0a
      003961 0D                    3035 	.db 0x0d
      003962 00                    3036 	.db 0x00
                                   3037 	.area CSEG    (CODE)
                                   3038 	.area CONST   (CODE)
      003963                       3039 ___str_2:
      003963 E2                    3040 	.db 0xe2
      003964 94                    3041 	.db 0x94
      003965 9C                    3042 	.db 0x9c
      003966 E2                    3043 	.db 0xe2
      003967 94                    3044 	.db 0x94
      003968 80                    3045 	.db 0x80
      003969 E2                    3046 	.db 0xe2
      00396A 94                    3047 	.db 0x94
      00396B 80                    3048 	.db 0x80
      00396C E2                    3049 	.db 0xe2
      00396D 94                    3050 	.db 0x94
      00396E 80                    3051 	.db 0x80
      00396F E2                    3052 	.db 0xe2
      003970 94                    3053 	.db 0x94
      003971 80                    3054 	.db 0x80
      003972 E2                    3055 	.db 0xe2
      003973 94                    3056 	.db 0x94
      003974 80                    3057 	.db 0x80
      003975 E2                    3058 	.db 0xe2
      003976 94                    3059 	.db 0x94
      003977 80                    3060 	.db 0x80
      003978 E2                    3061 	.db 0xe2
      003979 94                    3062 	.db 0x94
      00397A 80                    3063 	.db 0x80
      00397B E2                    3064 	.db 0xe2
      00397C 94                    3065 	.db 0x94
      00397D 80                    3066 	.db 0x80
      00397E E2                    3067 	.db 0xe2
      00397F 94                    3068 	.db 0x94
      003980 80                    3069 	.db 0x80
      003981 E2                    3070 	.db 0xe2
      003982 94                    3071 	.db 0x94
      003983 80                    3072 	.db 0x80
      003984 E2                    3073 	.db 0xe2
      003985 94                    3074 	.db 0x94
      003986 80                    3075 	.db 0x80
      003987 E2                    3076 	.db 0xe2
      003988 94                    3077 	.db 0x94
      003989 80                    3078 	.db 0x80
      00398A E2                    3079 	.db 0xe2
      00398B 94                    3080 	.db 0x94
      00398C 80                    3081 	.db 0x80
      00398D E2                    3082 	.db 0xe2
      00398E 94                    3083 	.db 0x94
      00398F 80                    3084 	.db 0x80
      003990 E2                    3085 	.db 0xe2
      003991 94                    3086 	.db 0x94
      003992 80                    3087 	.db 0x80
      003993 E2                    3088 	.db 0xe2
      003994 94                    3089 	.db 0x94
      003995 80                    3090 	.db 0x80
      003996 E2                    3091 	.db 0xe2
      003997 94                    3092 	.db 0x94
      003998 80                    3093 	.db 0x80
      003999 E2                    3094 	.db 0xe2
      00399A 94                    3095 	.db 0x94
      00399B 80                    3096 	.db 0x80
      00399C E2                    3097 	.db 0xe2
      00399D 94                    3098 	.db 0x94
      00399E 80                    3099 	.db 0x80
      00399F E2                    3100 	.db 0xe2
      0039A0 94                    3101 	.db 0x94
      0039A1 80                    3102 	.db 0x80
      0039A2 E2                    3103 	.db 0xe2
      0039A3 94                    3104 	.db 0x94
      0039A4 80                    3105 	.db 0x80
      0039A5 E2                    3106 	.db 0xe2
      0039A6 94                    3107 	.db 0x94
      0039A7 80                    3108 	.db 0x80
      0039A8 E2                    3109 	.db 0xe2
      0039A9 94                    3110 	.db 0x94
      0039AA 80                    3111 	.db 0x80
      0039AB E2                    3112 	.db 0xe2
      0039AC 94                    3113 	.db 0x94
      0039AD 80                    3114 	.db 0x80
      0039AE E2                    3115 	.db 0xe2
      0039AF 94                    3116 	.db 0x94
      0039B0 80                    3117 	.db 0x80
      0039B1 E2                    3118 	.db 0xe2
      0039B2 94                    3119 	.db 0x94
      0039B3 80                    3120 	.db 0x80
      0039B4 E2                    3121 	.db 0xe2
      0039B5 94                    3122 	.db 0x94
      0039B6 80                    3123 	.db 0x80
      0039B7 E2                    3124 	.db 0xe2
      0039B8 94                    3125 	.db 0x94
      0039B9 80                    3126 	.db 0x80
      0039BA E2                    3127 	.db 0xe2
      0039BB 94                    3128 	.db 0x94
      0039BC 80                    3129 	.db 0x80
      0039BD E2                    3130 	.db 0xe2
      0039BE 94                    3131 	.db 0x94
      0039BF 80                    3132 	.db 0x80
      0039C0 E2                    3133 	.db 0xe2
      0039C1 94                    3134 	.db 0x94
      0039C2 80                    3135 	.db 0x80
      0039C3 E2                    3136 	.db 0xe2
      0039C4 94                    3137 	.db 0x94
      0039C5 80                    3138 	.db 0x80
      0039C6 E2                    3139 	.db 0xe2
      0039C7 94                    3140 	.db 0x94
      0039C8 80                    3141 	.db 0x80
      0039C9 E2                    3142 	.db 0xe2
      0039CA 94                    3143 	.db 0x94
      0039CB 80                    3144 	.db 0x80
      0039CC E2                    3145 	.db 0xe2
      0039CD 94                    3146 	.db 0x94
      0039CE 80                    3147 	.db 0x80
      0039CF E2                    3148 	.db 0xe2
      0039D0 94                    3149 	.db 0x94
      0039D1 80                    3150 	.db 0x80
      0039D2 E2                    3151 	.db 0xe2
      0039D3 94                    3152 	.db 0x94
      0039D4 80                    3153 	.db 0x80
      0039D5 E2                    3154 	.db 0xe2
      0039D6 94                    3155 	.db 0x94
      0039D7 80                    3156 	.db 0x80
      0039D8 E2                    3157 	.db 0xe2
      0039D9 94                    3158 	.db 0x94
      0039DA 80                    3159 	.db 0x80
      0039DB E2                    3160 	.db 0xe2
      0039DC 94                    3161 	.db 0x94
      0039DD 80                    3162 	.db 0x80
      0039DE E2                    3163 	.db 0xe2
      0039DF 94                    3164 	.db 0x94
      0039E0 80                    3165 	.db 0x80
      0039E1 E2                    3166 	.db 0xe2
      0039E2 94                    3167 	.db 0x94
      0039E3 80                    3168 	.db 0x80
      0039E4 E2                    3169 	.db 0xe2
      0039E5 94                    3170 	.db 0x94
      0039E6 80                    3171 	.db 0x80
      0039E7 E2                    3172 	.db 0xe2
      0039E8 94                    3173 	.db 0x94
      0039E9 80                    3174 	.db 0x80
      0039EA E2                    3175 	.db 0xe2
      0039EB 94                    3176 	.db 0x94
      0039EC 80                    3177 	.db 0x80
      0039ED E2                    3178 	.db 0xe2
      0039EE 94                    3179 	.db 0x94
      0039EF 80                    3180 	.db 0x80
      0039F0 E2                    3181 	.db 0xe2
      0039F1 94                    3182 	.db 0x94
      0039F2 80                    3183 	.db 0x80
      0039F3 E2                    3184 	.db 0xe2
      0039F4 94                    3185 	.db 0x94
      0039F5 80                    3186 	.db 0x80
      0039F6 E2                    3187 	.db 0xe2
      0039F7 94                    3188 	.db 0x94
      0039F8 80                    3189 	.db 0x80
      0039F9 E2                    3190 	.db 0xe2
      0039FA 94                    3191 	.db 0x94
      0039FB 80                    3192 	.db 0x80
      0039FC E2                    3193 	.db 0xe2
      0039FD 94                    3194 	.db 0x94
      0039FE 80                    3195 	.db 0x80
      0039FF E2                    3196 	.db 0xe2
      003A00 94                    3197 	.db 0x94
      003A01 80                    3198 	.db 0x80
      003A02 E2                    3199 	.db 0xe2
      003A03 94                    3200 	.db 0x94
      003A04 80                    3201 	.db 0x80
      003A05 E2                    3202 	.db 0xe2
      003A06 94                    3203 	.db 0x94
      003A07 80                    3204 	.db 0x80
      003A08 E2                    3205 	.db 0xe2
      003A09 94                    3206 	.db 0x94
      003A0A 80                    3207 	.db 0x80
      003A0B E2                    3208 	.db 0xe2
      003A0C 94                    3209 	.db 0x94
      003A0D 80                    3210 	.db 0x80
      003A0E E2                    3211 	.db 0xe2
      003A0F 94                    3212 	.db 0x94
      003A10 80                    3213 	.db 0x80
      003A11 E2                    3214 	.db 0xe2
      003A12 94                    3215 	.db 0x94
      003A13 80                    3216 	.db 0x80
      003A14 E2                    3217 	.db 0xe2
      003A15 94                    3218 	.db 0x94
      003A16 80                    3219 	.db 0x80
      003A17 E2                    3220 	.db 0xe2
      003A18 94                    3221 	.db 0x94
      003A19 80                    3222 	.db 0x80
      003A1A E2                    3223 	.db 0xe2
      003A1B 94                    3224 	.db 0x94
      003A1C 80                    3225 	.db 0x80
      003A1D E2                    3226 	.db 0xe2
      003A1E 94                    3227 	.db 0x94
      003A1F 80                    3228 	.db 0x80
      003A20 E2                    3229 	.db 0xe2
      003A21 94                    3230 	.db 0x94
      003A22 A4                    3231 	.db 0xa4
      003A23 0A                    3232 	.db 0x0a
      003A24 0D                    3233 	.db 0x0d
      003A25 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area CONST   (CODE)
      003A26                       3237 ___str_3:
      003A26 E2                    3238 	.db 0xe2
      003A27 94                    3239 	.db 0x94
      003A28 82                    3240 	.db 0x82
      003A29 20 20 43 6F 6D 6D 61  3241 	.ascii "  Command   "
             6E 64 20 20 20
      003A35 E2                    3242 	.db 0xe2
      003A36 94                    3243 	.db 0x94
      003A37 82                    3244 	.db 0x82
      003A38 20 20 20 20 20 20 20  3245 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003A69 E2                    3246 	.db 0xe2
      003A6A 94                    3247 	.db 0x94
      003A6B 82                    3248 	.db 0x82
      003A6C 0A                    3249 	.db 0x0a
      003A6D 0D                    3250 	.db 0x0d
      003A6E 00                    3251 	.db 0x00
                                   3252 	.area CSEG    (CODE)
                                   3253 	.area CONST   (CODE)
      003A6F                       3254 ___str_4:
      003A6F E2                    3255 	.db 0xe2
      003A70 94                    3256 	.db 0x94
      003A71 9C                    3257 	.db 0x9c
      003A72 E2                    3258 	.db 0xe2
      003A73 94                    3259 	.db 0x94
      003A74 80                    3260 	.db 0x80
      003A75 E2                    3261 	.db 0xe2
      003A76 94                    3262 	.db 0x94
      003A77 80                    3263 	.db 0x80
      003A78 E2                    3264 	.db 0xe2
      003A79 94                    3265 	.db 0x94
      003A7A 80                    3266 	.db 0x80
      003A7B E2                    3267 	.db 0xe2
      003A7C 94                    3268 	.db 0x94
      003A7D 80                    3269 	.db 0x80
      003A7E E2                    3270 	.db 0xe2
      003A7F 94                    3271 	.db 0x94
      003A80 80                    3272 	.db 0x80
      003A81 E2                    3273 	.db 0xe2
      003A82 94                    3274 	.db 0x94
      003A83 80                    3275 	.db 0x80
      003A84 E2                    3276 	.db 0xe2
      003A85 94                    3277 	.db 0x94
      003A86 80                    3278 	.db 0x80
      003A87 E2                    3279 	.db 0xe2
      003A88 94                    3280 	.db 0x94
      003A89 80                    3281 	.db 0x80
      003A8A E2                    3282 	.db 0xe2
      003A8B 94                    3283 	.db 0x94
      003A8C 80                    3284 	.db 0x80
      003A8D E2                    3285 	.db 0xe2
      003A8E 94                    3286 	.db 0x94
      003A8F 80                    3287 	.db 0x80
      003A90 E2                    3288 	.db 0xe2
      003A91 94                    3289 	.db 0x94
      003A92 80                    3290 	.db 0x80
      003A93 E2                    3291 	.db 0xe2
      003A94 94                    3292 	.db 0x94
      003A95 BC                    3293 	.db 0xbc
      003A96 E2                    3294 	.db 0xe2
      003A97 94                    3295 	.db 0x94
      003A98 80                    3296 	.db 0x80
      003A99 E2                    3297 	.db 0xe2
      003A9A 94                    3298 	.db 0x94
      003A9B 80                    3299 	.db 0x80
      003A9C E2                    3300 	.db 0xe2
      003A9D 94                    3301 	.db 0x94
      003A9E 80                    3302 	.db 0x80
      003A9F E2                    3303 	.db 0xe2
      003AA0 94                    3304 	.db 0x94
      003AA1 80                    3305 	.db 0x80
      003AA2 E2                    3306 	.db 0xe2
      003AA3 94                    3307 	.db 0x94
      003AA4 80                    3308 	.db 0x80
      003AA5 E2                    3309 	.db 0xe2
      003AA6 94                    3310 	.db 0x94
      003AA7 80                    3311 	.db 0x80
      003AA8 E2                    3312 	.db 0xe2
      003AA9 94                    3313 	.db 0x94
      003AAA 80                    3314 	.db 0x80
      003AAB E2                    3315 	.db 0xe2
      003AAC 94                    3316 	.db 0x94
      003AAD 80                    3317 	.db 0x80
      003AAE E2                    3318 	.db 0xe2
      003AAF 94                    3319 	.db 0x94
      003AB0 80                    3320 	.db 0x80
      003AB1 E2                    3321 	.db 0xe2
      003AB2 94                    3322 	.db 0x94
      003AB3 80                    3323 	.db 0x80
      003AB4 E2                    3324 	.db 0xe2
      003AB5 94                    3325 	.db 0x94
      003AB6 80                    3326 	.db 0x80
      003AB7 E2                    3327 	.db 0xe2
      003AB8 94                    3328 	.db 0x94
      003AB9 80                    3329 	.db 0x80
      003ABA E2                    3330 	.db 0xe2
      003ABB 94                    3331 	.db 0x94
      003ABC 80                    3332 	.db 0x80
      003ABD E2                    3333 	.db 0xe2
      003ABE 94                    3334 	.db 0x94
      003ABF 80                    3335 	.db 0x80
      003AC0 E2                    3336 	.db 0xe2
      003AC1 94                    3337 	.db 0x94
      003AC2 80                    3338 	.db 0x80
      003AC3 E2                    3339 	.db 0xe2
      003AC4 94                    3340 	.db 0x94
      003AC5 80                    3341 	.db 0x80
      003AC6 E2                    3342 	.db 0xe2
      003AC7 94                    3343 	.db 0x94
      003AC8 80                    3344 	.db 0x80
      003AC9 E2                    3345 	.db 0xe2
      003ACA 94                    3346 	.db 0x94
      003ACB 80                    3347 	.db 0x80
      003ACC E2                    3348 	.db 0xe2
      003ACD 94                    3349 	.db 0x94
      003ACE 80                    3350 	.db 0x80
      003ACF E2                    3351 	.db 0xe2
      003AD0 94                    3352 	.db 0x94
      003AD1 80                    3353 	.db 0x80
      003AD2 E2                    3354 	.db 0xe2
      003AD3 94                    3355 	.db 0x94
      003AD4 80                    3356 	.db 0x80
      003AD5 E2                    3357 	.db 0xe2
      003AD6 94                    3358 	.db 0x94
      003AD7 80                    3359 	.db 0x80
      003AD8 E2                    3360 	.db 0xe2
      003AD9 94                    3361 	.db 0x94
      003ADA 80                    3362 	.db 0x80
      003ADB E2                    3363 	.db 0xe2
      003ADC 94                    3364 	.db 0x94
      003ADD 80                    3365 	.db 0x80
      003ADE E2                    3366 	.db 0xe2
      003ADF 94                    3367 	.db 0x94
      003AE0 80                    3368 	.db 0x80
      003AE1 E2                    3369 	.db 0xe2
      003AE2 94                    3370 	.db 0x94
      003AE3 80                    3371 	.db 0x80
      003AE4 E2                    3372 	.db 0xe2
      003AE5 94                    3373 	.db 0x94
      003AE6 80                    3374 	.db 0x80
      003AE7 E2                    3375 	.db 0xe2
      003AE8 94                    3376 	.db 0x94
      003AE9 80                    3377 	.db 0x80
      003AEA E2                    3378 	.db 0xe2
      003AEB 94                    3379 	.db 0x94
      003AEC 80                    3380 	.db 0x80
      003AED E2                    3381 	.db 0xe2
      003AEE 94                    3382 	.db 0x94
      003AEF 80                    3383 	.db 0x80
      003AF0 E2                    3384 	.db 0xe2
      003AF1 94                    3385 	.db 0x94
      003AF2 80                    3386 	.db 0x80
      003AF3 E2                    3387 	.db 0xe2
      003AF4 94                    3388 	.db 0x94
      003AF5 80                    3389 	.db 0x80
      003AF6 E2                    3390 	.db 0xe2
      003AF7 94                    3391 	.db 0x94
      003AF8 80                    3392 	.db 0x80
      003AF9 E2                    3393 	.db 0xe2
      003AFA 94                    3394 	.db 0x94
      003AFB 80                    3395 	.db 0x80
      003AFC E2                    3396 	.db 0xe2
      003AFD 94                    3397 	.db 0x94
      003AFE 80                    3398 	.db 0x80
      003AFF E2                    3399 	.db 0xe2
      003B00 94                    3400 	.db 0x94
      003B01 80                    3401 	.db 0x80
      003B02 E2                    3402 	.db 0xe2
      003B03 94                    3403 	.db 0x94
      003B04 80                    3404 	.db 0x80
      003B05 E2                    3405 	.db 0xe2
      003B06 94                    3406 	.db 0x94
      003B07 80                    3407 	.db 0x80
      003B08 E2                    3408 	.db 0xe2
      003B09 94                    3409 	.db 0x94
      003B0A 80                    3410 	.db 0x80
      003B0B E2                    3411 	.db 0xe2
      003B0C 94                    3412 	.db 0x94
      003B0D 80                    3413 	.db 0x80
      003B0E E2                    3414 	.db 0xe2
      003B0F 94                    3415 	.db 0x94
      003B10 80                    3416 	.db 0x80
      003B11 E2                    3417 	.db 0xe2
      003B12 94                    3418 	.db 0x94
      003B13 80                    3419 	.db 0x80
      003B14 E2                    3420 	.db 0xe2
      003B15 94                    3421 	.db 0x94
      003B16 80                    3422 	.db 0x80
      003B17 E2                    3423 	.db 0xe2
      003B18 94                    3424 	.db 0x94
      003B19 80                    3425 	.db 0x80
      003B1A E2                    3426 	.db 0xe2
      003B1B 94                    3427 	.db 0x94
      003B1C 80                    3428 	.db 0x80
      003B1D E2                    3429 	.db 0xe2
      003B1E 94                    3430 	.db 0x94
      003B1F 80                    3431 	.db 0x80
      003B20 E2                    3432 	.db 0xe2
      003B21 94                    3433 	.db 0x94
      003B22 80                    3434 	.db 0x80
      003B23 E2                    3435 	.db 0xe2
      003B24 94                    3436 	.db 0x94
      003B25 A4                    3437 	.db 0xa4
      003B26 0A                    3438 	.db 0x0a
      003B27 0D                    3439 	.db 0x0d
      003B28 00                    3440 	.db 0x00
                                   3441 	.area CSEG    (CODE)
                                   3442 	.area CONST   (CODE)
      003B29                       3443 ___str_5:
      003B29 E2                    3444 	.db 0xe2
      003B2A 94                    3445 	.db 0x94
      003B2B 82                    3446 	.db 0x82
      003B2C 20 20 20 20 4D 20 20  3447 	.ascii "    M      "
             20 20 20 20
      003B37 E2                    3448 	.db 0xe2
      003B38 94                    3449 	.db 0x94
      003B39 82                    3450 	.db 0x82
      003B3A 20 4D 61 6E 75 61 6C  3451 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003B6A E2                    3452 	.db 0xe2
      003B6B 94                    3453 	.db 0x94
      003B6C 82                    3454 	.db 0x82
      003B6D 0A                    3455 	.db 0x0a
      003B6E 0D                    3456 	.db 0x0d
      003B6F 00                    3457 	.db 0x00
                                   3458 	.area CSEG    (CODE)
                                   3459 	.area CONST   (CODE)
      003B70                       3460 ___str_6:
      003B70 E2                    3461 	.db 0xe2
      003B71 94                    3462 	.db 0x94
      003B72 82                    3463 	.db 0x82
      003B73 20 20 20 20 42 20 20  3464 	.ascii "    B      "
             20 20 20 20
      003B7E E2                    3465 	.db 0xe2
      003B7F 94                    3466 	.db 0x94
      003B80 82                    3467 	.db 0x82
      003B81 20 42 69 74 20 42 61  3468 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BB0 E2                    3469 	.db 0xe2
      003BB1 94                    3470 	.db 0x94
      003BB2 82                    3471 	.db 0x82
      003BB3 0A                    3472 	.db 0x0a
      003BB4 0D                    3473 	.db 0x0d
      003BB5 00                    3474 	.db 0x00
                                   3475 	.area CSEG    (CODE)
                                   3476 	.area CONST   (CODE)
      003BB6                       3477 ___str_7:
      003BB6 E2                    3478 	.db 0xe2
      003BB7 94                    3479 	.db 0x94
      003BB8 82                    3480 	.db 0x82
      003BB9 20 20 20 20 53 20 20  3481 	.ascii "    S      "
             20 20 20 20
      003BC4 E2                    3482 	.db 0xe2
      003BC5 94                    3483 	.db 0x94
      003BC6 82                    3484 	.db 0x82
      003BC7 20 47 65 6E 65 72 61  3485 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003BF6 E2                    3486 	.db 0xe2
      003BF7 94                    3487 	.db 0x94
      003BF8 82                    3488 	.db 0x82
      003BF9 0A                    3489 	.db 0x0a
      003BFA 0D                    3490 	.db 0x0d
      003BFB 00                    3491 	.db 0x00
                                   3492 	.area CSEG    (CODE)
                                   3493 	.area CONST   (CODE)
      003BFC                       3494 ___str_8:
      003BFC E2                    3495 	.db 0xe2
      003BFD 94                    3496 	.db 0x94
      003BFE 82                    3497 	.db 0x82
      003BFF 20 20 20 20 54 20 20  3498 	.ascii "    T      "
             20 20 20 20
      003C0A E2                    3499 	.db 0xe2
      003C0B 94                    3500 	.db 0x94
      003C0C 82                    3501 	.db 0x82
      003C0D 20 47 65 6E 65 72 61  3502 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C3C E2                    3503 	.db 0xe2
      003C3D 94                    3504 	.db 0x94
      003C3E 82                    3505 	.db 0x82
      003C3F 0A                    3506 	.db 0x0a
      003C40 0D                    3507 	.db 0x0d
      003C41 00                    3508 	.db 0x00
                                   3509 	.area CSEG    (CODE)
                                   3510 	.area CONST   (CODE)
      003C42                       3511 ___str_9:
      003C42 E2                    3512 	.db 0xe2
      003C43 94                    3513 	.db 0x94
      003C44 82                    3514 	.db 0x82
      003C45 20 20 20 20 44 20 20  3515 	.ascii "    D      "
             20 20 20 20
      003C50 E2                    3516 	.db 0xe2
      003C51 94                    3517 	.db 0x94
      003C52 82                    3518 	.db 0x82
      003C53 20 44 65 6D 6F 20 4D  3519 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003C82 E2                    3520 	.db 0xe2
      003C83 94                    3521 	.db 0x94
      003C84 82                    3522 	.db 0x82
      003C85 0A                    3523 	.db 0x0a
      003C86 0D                    3524 	.db 0x0d
      003C87 00                    3525 	.db 0x00
                                   3526 	.area CSEG    (CODE)
                                   3527 	.area CONST   (CODE)
      003C88                       3528 ___str_10:
      003C88 E2                    3529 	.db 0xe2
      003C89 94                    3530 	.db 0x94
      003C8A 82                    3531 	.db 0x82
      003C8B 20 20 20 20 52 20 20  3532 	.ascii "    R      "
             20 20 20 20
      003C96 E2                    3533 	.db 0xe2
      003C97 94                    3534 	.db 0x94
      003C98 82                    3535 	.db 0x82
      003C99 20 52 61 6D 70 20 77  3536 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003CC8 E2                    3537 	.db 0xe2
      003CC9 94                    3538 	.db 0x94
      003CCA 82                    3539 	.db 0x82
      003CCB 0A                    3540 	.db 0x0a
      003CCC 0D                    3541 	.db 0x0d
      003CCD 00                    3542 	.db 0x00
                                   3543 	.area CSEG    (CODE)
                                   3544 	.area CONST   (CODE)
      003CCE                       3545 ___str_11:
      003CCE E2                    3546 	.db 0xe2
      003CCF 94                    3547 	.db 0x94
      003CD0 82                    3548 	.db 0x82
      003CD1 20 20 20 20 3F 20 20  3549 	.ascii "    ?      "
             20 20 20 20
      003CDC E2                    3550 	.db 0xe2
      003CDD 94                    3551 	.db 0x94
      003CDE 82                    3552 	.db 0x82
      003CDF 20 44 69 73 70 6C 61  3553 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003D0E E2                    3554 	.db 0xe2
      003D0F 94                    3555 	.db 0x94
      003D10 82                    3556 	.db 0x82
      003D11 0A                    3557 	.db 0x0a
      003D12 0D                    3558 	.db 0x0d
      003D13 00                    3559 	.db 0x00
                                   3560 	.area CSEG    (CODE)
                                   3561 	.area CONST   (CODE)
      003D14                       3562 ___str_12:
      003D14 E2                    3563 	.db 0xe2
      003D15 94                    3564 	.db 0x94
      003D16 94                    3565 	.db 0x94
      003D17 E2                    3566 	.db 0xe2
      003D18 94                    3567 	.db 0x94
      003D19 80                    3568 	.db 0x80
      003D1A E2                    3569 	.db 0xe2
      003D1B 94                    3570 	.db 0x94
      003D1C 80                    3571 	.db 0x80
      003D1D E2                    3572 	.db 0xe2
      003D1E 94                    3573 	.db 0x94
      003D1F 80                    3574 	.db 0x80
      003D20 E2                    3575 	.db 0xe2
      003D21 94                    3576 	.db 0x94
      003D22 80                    3577 	.db 0x80
      003D23 E2                    3578 	.db 0xe2
      003D24 94                    3579 	.db 0x94
      003D25 80                    3580 	.db 0x80
      003D26 E2                    3581 	.db 0xe2
      003D27 94                    3582 	.db 0x94
      003D28 80                    3583 	.db 0x80
      003D29 E2                    3584 	.db 0xe2
      003D2A 94                    3585 	.db 0x94
      003D2B 80                    3586 	.db 0x80
      003D2C E2                    3587 	.db 0xe2
      003D2D 94                    3588 	.db 0x94
      003D2E 80                    3589 	.db 0x80
      003D2F E2                    3590 	.db 0xe2
      003D30 94                    3591 	.db 0x94
      003D31 80                    3592 	.db 0x80
      003D32 E2                    3593 	.db 0xe2
      003D33 94                    3594 	.db 0x94
      003D34 80                    3595 	.db 0x80
      003D35 E2                    3596 	.db 0xe2
      003D36 94                    3597 	.db 0x94
      003D37 80                    3598 	.db 0x80
      003D38 E2                    3599 	.db 0xe2
      003D39 94                    3600 	.db 0x94
      003D3A B4                    3601 	.db 0xb4
      003D3B E2                    3602 	.db 0xe2
      003D3C 94                    3603 	.db 0x94
      003D3D 80                    3604 	.db 0x80
      003D3E E2                    3605 	.db 0xe2
      003D3F 94                    3606 	.db 0x94
      003D40 80                    3607 	.db 0x80
      003D41 E2                    3608 	.db 0xe2
      003D42 94                    3609 	.db 0x94
      003D43 80                    3610 	.db 0x80
      003D44 E2                    3611 	.db 0xe2
      003D45 94                    3612 	.db 0x94
      003D46 80                    3613 	.db 0x80
      003D47 E2                    3614 	.db 0xe2
      003D48 94                    3615 	.db 0x94
      003D49 80                    3616 	.db 0x80
      003D4A E2                    3617 	.db 0xe2
      003D4B 94                    3618 	.db 0x94
      003D4C 80                    3619 	.db 0x80
      003D4D E2                    3620 	.db 0xe2
      003D4E 94                    3621 	.db 0x94
      003D4F 80                    3622 	.db 0x80
      003D50 E2                    3623 	.db 0xe2
      003D51 94                    3624 	.db 0x94
      003D52 80                    3625 	.db 0x80
      003D53 E2                    3626 	.db 0xe2
      003D54 94                    3627 	.db 0x94
      003D55 80                    3628 	.db 0x80
      003D56 E2                    3629 	.db 0xe2
      003D57 94                    3630 	.db 0x94
      003D58 80                    3631 	.db 0x80
      003D59 E2                    3632 	.db 0xe2
      003D5A 94                    3633 	.db 0x94
      003D5B 80                    3634 	.db 0x80
      003D5C E2                    3635 	.db 0xe2
      003D5D 94                    3636 	.db 0x94
      003D5E 80                    3637 	.db 0x80
      003D5F E2                    3638 	.db 0xe2
      003D60 94                    3639 	.db 0x94
      003D61 80                    3640 	.db 0x80
      003D62 E2                    3641 	.db 0xe2
      003D63 94                    3642 	.db 0x94
      003D64 80                    3643 	.db 0x80
      003D65 E2                    3644 	.db 0xe2
      003D66 94                    3645 	.db 0x94
      003D67 80                    3646 	.db 0x80
      003D68 E2                    3647 	.db 0xe2
      003D69 94                    3648 	.db 0x94
      003D6A 80                    3649 	.db 0x80
      003D6B E2                    3650 	.db 0xe2
      003D6C 94                    3651 	.db 0x94
      003D6D 80                    3652 	.db 0x80
      003D6E E2                    3653 	.db 0xe2
      003D6F 94                    3654 	.db 0x94
      003D70 80                    3655 	.db 0x80
      003D71 E2                    3656 	.db 0xe2
      003D72 94                    3657 	.db 0x94
      003D73 80                    3658 	.db 0x80
      003D74 E2                    3659 	.db 0xe2
      003D75 94                    3660 	.db 0x94
      003D76 80                    3661 	.db 0x80
      003D77 E2                    3662 	.db 0xe2
      003D78 94                    3663 	.db 0x94
      003D79 80                    3664 	.db 0x80
      003D7A E2                    3665 	.db 0xe2
      003D7B 94                    3666 	.db 0x94
      003D7C 80                    3667 	.db 0x80
      003D7D E2                    3668 	.db 0xe2
      003D7E 94                    3669 	.db 0x94
      003D7F 80                    3670 	.db 0x80
      003D80 E2                    3671 	.db 0xe2
      003D81 94                    3672 	.db 0x94
      003D82 80                    3673 	.db 0x80
      003D83 E2                    3674 	.db 0xe2
      003D84 94                    3675 	.db 0x94
      003D85 80                    3676 	.db 0x80
      003D86 E2                    3677 	.db 0xe2
      003D87 94                    3678 	.db 0x94
      003D88 80                    3679 	.db 0x80
      003D89 E2                    3680 	.db 0xe2
      003D8A 94                    3681 	.db 0x94
      003D8B 80                    3682 	.db 0x80
      003D8C E2                    3683 	.db 0xe2
      003D8D 94                    3684 	.db 0x94
      003D8E 80                    3685 	.db 0x80
      003D8F E2                    3686 	.db 0xe2
      003D90 94                    3687 	.db 0x94
      003D91 80                    3688 	.db 0x80
      003D92 E2                    3689 	.db 0xe2
      003D93 94                    3690 	.db 0x94
      003D94 80                    3691 	.db 0x80
      003D95 E2                    3692 	.db 0xe2
      003D96 94                    3693 	.db 0x94
      003D97 80                    3694 	.db 0x80
      003D98 E2                    3695 	.db 0xe2
      003D99 94                    3696 	.db 0x94
      003D9A 80                    3697 	.db 0x80
      003D9B E2                    3698 	.db 0xe2
      003D9C 94                    3699 	.db 0x94
      003D9D 80                    3700 	.db 0x80
      003D9E E2                    3701 	.db 0xe2
      003D9F 94                    3702 	.db 0x94
      003DA0 80                    3703 	.db 0x80
      003DA1 E2                    3704 	.db 0xe2
      003DA2 94                    3705 	.db 0x94
      003DA3 80                    3706 	.db 0x80
      003DA4 E2                    3707 	.db 0xe2
      003DA5 94                    3708 	.db 0x94
      003DA6 80                    3709 	.db 0x80
      003DA7 E2                    3710 	.db 0xe2
      003DA8 94                    3711 	.db 0x94
      003DA9 80                    3712 	.db 0x80
      003DAA E2                    3713 	.db 0xe2
      003DAB 94                    3714 	.db 0x94
      003DAC 80                    3715 	.db 0x80
      003DAD E2                    3716 	.db 0xe2
      003DAE 94                    3717 	.db 0x94
      003DAF 80                    3718 	.db 0x80
      003DB0 E2                    3719 	.db 0xe2
      003DB1 94                    3720 	.db 0x94
      003DB2 80                    3721 	.db 0x80
      003DB3 E2                    3722 	.db 0xe2
      003DB4 94                    3723 	.db 0x94
      003DB5 80                    3724 	.db 0x80
      003DB6 E2                    3725 	.db 0xe2
      003DB7 94                    3726 	.db 0x94
      003DB8 80                    3727 	.db 0x80
      003DB9 E2                    3728 	.db 0xe2
      003DBA 94                    3729 	.db 0x94
      003DBB 80                    3730 	.db 0x80
      003DBC E2                    3731 	.db 0xe2
      003DBD 94                    3732 	.db 0x94
      003DBE 80                    3733 	.db 0x80
      003DBF E2                    3734 	.db 0xe2
      003DC0 94                    3735 	.db 0x94
      003DC1 80                    3736 	.db 0x80
      003DC2 E2                    3737 	.db 0xe2
      003DC3 94                    3738 	.db 0x94
      003DC4 80                    3739 	.db 0x80
      003DC5 E2                    3740 	.db 0xe2
      003DC6 94                    3741 	.db 0x94
      003DC7 80                    3742 	.db 0x80
      003DC8 E2                    3743 	.db 0xe2
      003DC9 94                    3744 	.db 0x94
      003DCA 98                    3745 	.db 0x98
      003DCB 0A                    3746 	.db 0x0a
      003DCC 0D                    3747 	.db 0x0d
      003DCD 00                    3748 	.db 0x00
                                   3749 	.area CSEG    (CODE)
                                   3750 	.area CONST   (CODE)
      003DCE                       3751 ___str_13:
      003DCE 0A                    3752 	.db 0x0a
      003DCF 0D                    3753 	.db 0x0d
      003DD0 45 6E 74 65 72 20 63  3754 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003DDF 00                    3755 	.db 0x00
                                   3756 	.area CSEG    (CODE)
                                   3757 	.area CONST   (CODE)
      003DE0                       3758 ___str_14:
      003DE0 7C 20 24 20 25 63     3759 	.ascii "| $ %c"
      003DE6 0A                    3760 	.db 0x0a
      003DE7 0D                    3761 	.db 0x0d
      003DE8 00                    3762 	.db 0x00
                                   3763 	.area CSEG    (CODE)
                                   3764 	.area CONST   (CODE)
      003DE9                       3765 ___str_15:
      003DE9 0A                    3766 	.db 0x0a
      003DEA 0D                    3767 	.db 0x0d
      003DEB 00                    3768 	.db 0x00
                                   3769 	.area CSEG    (CODE)
                                   3770 	.area CONST   (CODE)
      003DEC                       3771 ___str_16:
      003DEC 3E 3E 20 53 49 4E 20  3772 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003E0B 0A                    3773 	.db 0x0a
      003E0C 0D                    3774 	.db 0x0d
      003E0D 00                    3775 	.db 0x00
                                   3776 	.area CSEG    (CODE)
                                   3777 	.area CONST   (CODE)
      003E0E                       3778 ___str_17:
      003E0E 3E 3E 20 53 51 55 41  3779 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003E30 0A                    3780 	.db 0x0a
      003E31 0D                    3781 	.db 0x0d
      003E32 00                    3782 	.db 0x00
                                   3783 	.area CSEG    (CODE)
                                   3784 	.area CONST   (CODE)
      003E33                       3785 ___str_18:
      003E33 3E 3E 20 54 52 49 41  3786 	.ascii ">> TRIANGULAR WAVE GENERATION COMPLETE"
             4E 47 55 4C 41 52 20
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003E59 0A                    3787 	.db 0x0a
      003E5A 0D                    3788 	.db 0x0d
      003E5B 00                    3789 	.db 0x00
                                   3790 	.area CSEG    (CODE)
                                   3791 	.area CONST   (CODE)
      003E5C                       3792 ___str_19:
      003E5C 3E 3E 20 52 41 4D 50  3793 	.ascii ">> RAMP WAVE GENERATION COMPLETE"
             20 57 41 56 45 20 47
             45 4E 45 52 41 54 49
             4F 4E 20 43 4F 4D 50
             4C 45 54 45
      003E7C 0A                    3794 	.db 0x0a
      003E7D 0D                    3795 	.db 0x0d
      003E7E 00                    3796 	.db 0x00
                                   3797 	.area CSEG    (CODE)
                                   3798 	.area CONST   (CODE)
      003E7F                       3799 ___str_20:
      003E7F 3E 3E 20 44 45 4D 4F  3800 	.ascii ">> DEMO COMPLETE"
             20 43 4F 4D 50 4C 45
             54 45
      003E8F 0A                    3801 	.db 0x0a
      003E90 0D                    3802 	.db 0x0d
      003E91 00                    3803 	.db 0x00
                                   3804 	.area CSEG    (CODE)
                                   3805 	.area CONST   (CODE)
      003E92                       3806 ___str_21:
      003E92 3E 3E 20 49 4E 56 41  3807 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003EA2 0A                    3808 	.db 0x0a
      003EA3 0D                    3809 	.db 0x0d
      003EA4 00                    3810 	.db 0x00
                                   3811 	.area CSEG    (CODE)
                                   3812 	.area CONST   (CODE)
      003EA5                       3813 ___str_22:
      003EA5 E2                    3814 	.db 0xe2
      003EA6 94                    3815 	.db 0x94
      003EA7 82                    3816 	.db 0x82
      003EA8 20 45 6E 74 65 72 20  3817 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      003ED1 0A                    3818 	.db 0x0a
      003ED2 0D                    3819 	.db 0x0d
      003ED3 7C                    3820 	.ascii "|"
      003ED4 00                    3821 	.db 0x00
                                   3822 	.area CSEG    (CODE)
                                   3823 	.area CONST   (CODE)
      003ED5                       3824 ___str_23:
      003ED5 24 20                 3825 	.ascii "$ "
      003ED7 00                    3826 	.db 0x00
                                   3827 	.area CSEG    (CODE)
                                   3828 	.area CONST   (CODE)
      003ED8                       3829 ___str_24:
      003ED8 0A                    3830 	.db 0x0a
      003ED9 0D                    3831 	.db 0x0d
      003EDA E2                    3832 	.db 0xe2
      003EDB 94                    3833 	.db 0x94
      003EDC 82                    3834 	.db 0x82
      003EDD 20 45 6E 74 65 72 65  3835 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003EF2 0A                    3836 	.db 0x0a
      003EF3 0D                    3837 	.db 0x0d
      003EF4 00                    3838 	.db 0x00
                                   3839 	.area CSEG    (CODE)
                                   3840 	.area XINIT   (CODE)
      003F00                       3841 __xinit__ms_flag:
      003F00 00                    3842 	.db #0x00	; 0
      003F01                       3843 __xinit__transmission_complete:
      003F01 00 00                 3844 	.byte #0x00, #0x00	;  0
                                   3845 	.area CABS    (ABS,CODE)
