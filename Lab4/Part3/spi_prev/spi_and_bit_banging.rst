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
      000404                        477 _bit_bang_spi_number_65536_41:
      000404                        478 	.ds 1
      000405                        479 _take_data_input_65537_45:
      000405                        480 	.ds 4
      000409                        481 _take_data_data_65538_49:
      000409                        482 	.ds 1
      00040A                        483 _mannual_spi_number_65536_52:
      00040A                        484 	.ds 1
      00040B                        485 _mannual_spi_dac_value_index_65536_53:
      00040B                        486 	.ds 2
      00040D                        487 _mannual_spi_dac_data_65536_53:
      00040D                        488 	.ds 2
      00040F                        489 _bit_bang_spi_write_data_65536_63:
      00040F                        490 	.ds 2
      000411                        491 _spi_triangular_wave_number_65536_69:
      000411                        492 	.ds 2
      000413                        493 _spi_triangular_wave_dac_value_index_65536_70:
      000413                        494 	.ds 2
      000415                        495 _spi_triangular_wave_dac_data_65536_70:
      000415                        496 	.ds 2
      000417                        497 _spi_ramp_signal_number_65536_76:
      000417                        498 	.ds 2
      000419                        499 _spi_ramp_signal_dac_value_index_65536_77:
      000419                        500 	.ds 2
      00041B                        501 _spi_ramp_signal_dac_data_65536_77:
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
      0020C2 74 AC            [12]  688 	mov	a,#___str_0
      0020C4 C0 E0            [24]  689 	push	acc
      0020C6 74 37            [12]  690 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  691 	push	acc
      0020CA 74 80            [12]  692 	mov	a,#0x80
      0020CC C0 E0            [24]  693 	push	acc
      0020CE 12 27 4A         [24]  694 	lcall	_printf
      0020D1 15 81            [12]  695 	dec	sp
      0020D3 15 81            [12]  696 	dec	sp
      0020D5 15 81            [12]  697 	dec	sp
                                    698 ;	spi_and_bit_banging.c:240: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 71            [12]  699 	mov	a,#___str_1
      0020D9 C0 E0            [24]  700 	push	acc
      0020DB 74 38            [12]  701 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  702 	push	acc
      0020DF 74 80            [12]  703 	mov	a,#0x80
      0020E1 C0 E0            [24]  704 	push	acc
      0020E3 12 27 4A         [24]  705 	lcall	_printf
      0020E6 15 81            [12]  706 	dec	sp
      0020E8 15 81            [12]  707 	dec	sp
      0020EA 15 81            [12]  708 	dec	sp
                                    709 ;	spi_and_bit_banging.c:241: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 B8            [12]  710 	mov	a,#___str_2
      0020EE C0 E0            [24]  711 	push	acc
      0020F0 74 38            [12]  712 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  713 	push	acc
      0020F4 74 80            [12]  714 	mov	a,#0x80
      0020F6 C0 E0            [24]  715 	push	acc
      0020F8 12 27 4A         [24]  716 	lcall	_printf
      0020FB 15 81            [12]  717 	dec	sp
      0020FD 15 81            [12]  718 	dec	sp
      0020FF 15 81            [12]  719 	dec	sp
                                    720 ;	spi_and_bit_banging.c:242: printf("│  Command   │               Description                       │\n\r");
      002101 74 7B            [12]  721 	mov	a,#___str_3
      002103 C0 E0            [24]  722 	push	acc
      002105 74 39            [12]  723 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  724 	push	acc
      002109 74 80            [12]  725 	mov	a,#0x80
      00210B C0 E0            [24]  726 	push	acc
      00210D 12 27 4A         [24]  727 	lcall	_printf
      002110 15 81            [12]  728 	dec	sp
      002112 15 81            [12]  729 	dec	sp
      002114 15 81            [12]  730 	dec	sp
                                    731 ;	spi_and_bit_banging.c:243: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 C4            [12]  732 	mov	a,#___str_4
      002118 C0 E0            [24]  733 	push	acc
      00211A 74 39            [12]  734 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  735 	push	acc
      00211E 74 80            [12]  736 	mov	a,#0x80
      002120 C0 E0            [24]  737 	push	acc
      002122 12 27 4A         [24]  738 	lcall	_printf
      002125 15 81            [12]  739 	dec	sp
      002127 15 81            [12]  740 	dec	sp
      002129 15 81            [12]  741 	dec	sp
                                    742 ;	spi_and_bit_banging.c:244: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 7E            [12]  743 	mov	a,#___str_5
      00212D C0 E0            [24]  744 	push	acc
      00212F 74 3A            [12]  745 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  746 	push	acc
      002133 74 80            [12]  747 	mov	a,#0x80
      002135 C0 E0            [24]  748 	push	acc
      002137 12 27 4A         [24]  749 	lcall	_printf
      00213A 15 81            [12]  750 	dec	sp
      00213C 15 81            [12]  751 	dec	sp
      00213E 15 81            [12]  752 	dec	sp
                                    753 ;	spi_and_bit_banging.c:245: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 C5            [12]  754 	mov	a,#___str_6
      002142 C0 E0            [24]  755 	push	acc
      002144 74 3A            [12]  756 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  757 	push	acc
      002148 74 80            [12]  758 	mov	a,#0x80
      00214A C0 E0            [24]  759 	push	acc
      00214C 12 27 4A         [24]  760 	lcall	_printf
      00214F 15 81            [12]  761 	dec	sp
      002151 15 81            [12]  762 	dec	sp
      002153 15 81            [12]  763 	dec	sp
                                    764 ;	spi_and_bit_banging.c:246: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 0B            [12]  765 	mov	a,#___str_7
      002157 C0 E0            [24]  766 	push	acc
      002159 74 3B            [12]  767 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  768 	push	acc
      00215D 74 80            [12]  769 	mov	a,#0x80
      00215F C0 E0            [24]  770 	push	acc
      002161 12 27 4A         [24]  771 	lcall	_printf
      002164 15 81            [12]  772 	dec	sp
      002166 15 81            [12]  773 	dec	sp
      002168 15 81            [12]  774 	dec	sp
                                    775 ;	spi_and_bit_banging.c:247: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00216A 74 51            [12]  776 	mov	a,#___str_8
      00216C C0 E0            [24]  777 	push	acc
      00216E 74 3B            [12]  778 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  779 	push	acc
      002172 74 80            [12]  780 	mov	a,#0x80
      002174 C0 E0            [24]  781 	push	acc
      002176 12 27 4A         [24]  782 	lcall	_printf
      002179 15 81            [12]  783 	dec	sp
      00217B 15 81            [12]  784 	dec	sp
      00217D 15 81            [12]  785 	dec	sp
                                    786 ;	spi_and_bit_banging.c:248: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      00217F 74 97            [12]  787 	mov	a,#___str_9
      002181 C0 E0            [24]  788 	push	acc
      002183 74 3B            [12]  789 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  790 	push	acc
      002187 74 80            [12]  791 	mov	a,#0x80
      002189 C0 E0            [24]  792 	push	acc
      00218B 12 27 4A         [24]  793 	lcall	_printf
      00218E 15 81            [12]  794 	dec	sp
      002190 15 81            [12]  795 	dec	sp
      002192 15 81            [12]  796 	dec	sp
                                    797 ;	spi_and_bit_banging.c:249: printf("│    R      │ Ramp wave                                     │\n\r");
      002194 74 DD            [12]  798 	mov	a,#___str_10
      002196 C0 E0            [24]  799 	push	acc
      002198 74 3B            [12]  800 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  801 	push	acc
      00219C 74 80            [12]  802 	mov	a,#0x80
      00219E C0 E0            [24]  803 	push	acc
      0021A0 12 27 4A         [24]  804 	lcall	_printf
      0021A3 15 81            [12]  805 	dec	sp
      0021A5 15 81            [12]  806 	dec	sp
      0021A7 15 81            [12]  807 	dec	sp
                                    808 ;	spi_and_bit_banging.c:250: printf("│    ?      │ Display this help menu                        │\n\r");
      0021A9 74 23            [12]  809 	mov	a,#___str_11
      0021AB C0 E0            [24]  810 	push	acc
      0021AD 74 3C            [12]  811 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  812 	push	acc
      0021B1 74 80            [12]  813 	mov	a,#0x80
      0021B3 C0 E0            [24]  814 	push	acc
      0021B5 12 27 4A         [24]  815 	lcall	_printf
      0021B8 15 81            [12]  816 	dec	sp
      0021BA 15 81            [12]  817 	dec	sp
      0021BC 15 81            [12]  818 	dec	sp
                                    819 ;	spi_and_bit_banging.c:251: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      0021BE 74 69            [12]  820 	mov	a,#___str_12
      0021C0 C0 E0            [24]  821 	push	acc
      0021C2 74 3C            [12]  822 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  823 	push	acc
      0021C6 74 80            [12]  824 	mov	a,#0x80
      0021C8 C0 E0            [24]  825 	push	acc
      0021CA 12 27 4A         [24]  826 	lcall	_printf
      0021CD 15 81            [12]  827 	dec	sp
      0021CF 15 81            [12]  828 	dec	sp
      0021D1 15 81            [12]  829 	dec	sp
                                    830 ;	spi_and_bit_banging.c:252: printf("\n\rEnter command: ");
      0021D3 74 23            [12]  831 	mov	a,#___str_13
      0021D5 C0 E0            [24]  832 	push	acc
      0021D7 74 3D            [12]  833 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  834 	push	acc
      0021DB 74 80            [12]  835 	mov	a,#0x80
      0021DD C0 E0            [24]  836 	push	acc
      0021DF 12 27 4A         [24]  837 	lcall	_printf
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
                                    848 ;result2                   Allocated with name '_main_result2_262146_39'
                                    849 ;------------------------------------------------------------
                                    850 ;	spi_and_bit_banging.c:255: int main(void)
                                    851 ;	-----------------------------------------
                                    852 ;	 function main
                                    853 ;	-----------------------------------------
      0021E9                        854 _main:
                                    855 ;	spi_and_bit_banging.c:257: display_menu();
      0021E9 12 20 C2         [24]  856 	lcall	_display_menu
                                    857 ;	spi_and_bit_banging.c:259: while(1)
      0021EC                        858 00106$:
                                    859 ;	spi_and_bit_banging.c:261: char user_input = getchar();
      0021EC 12 20 81         [24]  860 	lcall	_getchar
      0021EF AE 82            [24]  861 	mov	r6,dpl
                                    862 ;	spi_and_bit_banging.c:262: printf("| $ %c\n\r", user_input);
      0021F1 8E 05            [24]  863 	mov	ar5,r6
      0021F3 7F 00            [12]  864 	mov	r7,#0x00
      0021F5 C0 06            [24]  865 	push	ar6
      0021F7 C0 05            [24]  866 	push	ar5
      0021F9 C0 07            [24]  867 	push	ar7
      0021FB 74 35            [12]  868 	mov	a,#___str_14
      0021FD C0 E0            [24]  869 	push	acc
      0021FF 74 3D            [12]  870 	mov	a,#(___str_14 >> 8)
      002201 C0 E0            [24]  871 	push	acc
      002203 74 80            [12]  872 	mov	a,#0x80
      002205 C0 E0            [24]  873 	push	acc
      002207 12 27 4A         [24]  874 	lcall	_printf
      00220A E5 81            [12]  875 	mov	a,sp
      00220C 24 FB            [12]  876 	add	a,#0xfb
      00220E F5 81            [12]  877 	mov	sp,a
                                    878 ;	spi_and_bit_banging.c:263: printf("\n\r");
      002210 74 3E            [12]  879 	mov	a,#___str_15
      002212 C0 E0            [24]  880 	push	acc
      002214 74 3D            [12]  881 	mov	a,#(___str_15 >> 8)
      002216 C0 E0            [24]  882 	push	acc
      002218 74 80            [12]  883 	mov	a,#0x80
      00221A C0 E0            [24]  884 	push	acc
      00221C 12 27 4A         [24]  885 	lcall	_printf
      00221F 15 81            [12]  886 	dec	sp
      002221 15 81            [12]  887 	dec	sp
      002223 15 81            [12]  888 	dec	sp
      002225 D0 06            [24]  889 	pop	ar6
                                    890 ;	spi_and_bit_banging.c:264: switch(user_input)
      002227 BE 42 02         [24]  891 	cjne	r6,#0x42,00122$
      00222A 80 23            [24]  892 	sjmp	00102$
      00222C                        893 00122$:
      00222C BE 4D 41         [24]  894 	cjne	r6,#0x4d,00103$
                                    895 ;	spi_and_bit_banging.c:267: spi_init();
      00222F 12 24 DF         [24]  896 	lcall	_spi_init
                                    897 ;	spi_and_bit_banging.c:268: unsigned char result = take_data();
      002232 12 22 D3         [24]  898 	lcall	_take_data
                                    899 ;	spi_and_bit_banging.c:269: mannual_spi(result);
      002235 12 24 27         [24]  900 	lcall	_mannual_spi
                                    901 ;	spi_and_bit_banging.c:270: printf(">> SIN WAVE GENERATION COMPLETE\n\r");
      002238 74 41            [12]  902 	mov	a,#___str_16
      00223A C0 E0            [24]  903 	push	acc
      00223C 74 3D            [12]  904 	mov	a,#(___str_16 >> 8)
      00223E C0 E0            [24]  905 	push	acc
      002240 74 80            [12]  906 	mov	a,#0x80
      002242 C0 E0            [24]  907 	push	acc
      002244 12 27 4A         [24]  908 	lcall	_printf
      002247 15 81            [12]  909 	dec	sp
      002249 15 81            [12]  910 	dec	sp
      00224B 15 81            [12]  911 	dec	sp
                                    912 ;	spi_and_bit_banging.c:271: break;
                                    913 ;	spi_and_bit_banging.c:273: case 'B':
      00224D 80 9D            [24]  914 	sjmp	00106$
      00224F                        915 00102$:
                                    916 ;	spi_and_bit_banging.c:276: bit_bang_spi_init();
      00224F 12 24 E9         [24]  917 	lcall	_bit_bang_spi_init
                                    918 ;	spi_and_bit_banging.c:277: unsigned char result2 = take_data();
      002252 12 22 D3         [24]  919 	lcall	_take_data
                                    920 ;	spi_and_bit_banging.c:278: bit_bang_spi(result2);
      002255 12 22 A0         [24]  921 	lcall	_bit_bang_spi
                                    922 ;	spi_and_bit_banging.c:279: printf(">> SQUARE WAVE GENERATION COMPLETE\n\r");
      002258 74 63            [12]  923 	mov	a,#___str_17
      00225A C0 E0            [24]  924 	push	acc
      00225C 74 3D            [12]  925 	mov	a,#(___str_17 >> 8)
      00225E C0 E0            [24]  926 	push	acc
      002260 74 80            [12]  927 	mov	a,#0x80
      002262 C0 E0            [24]  928 	push	acc
      002264 12 27 4A         [24]  929 	lcall	_printf
      002267 15 81            [12]  930 	dec	sp
      002269 15 81            [12]  931 	dec	sp
      00226B 15 81            [12]  932 	dec	sp
                                    933 ;	spi_and_bit_banging.c:281: break;
      00226D 02 21 EC         [24]  934 	ljmp	00106$
                                    935 ;	spi_and_bit_banging.c:321: default:
      002270                        936 00103$:
                                    937 ;	spi_and_bit_banging.c:322: printf(">> INVALID INPUT\n\r");
      002270 74 88            [12]  938 	mov	a,#___str_18
      002272 C0 E0            [24]  939 	push	acc
      002274 74 3D            [12]  940 	mov	a,#(___str_18 >> 8)
      002276 C0 E0            [24]  941 	push	acc
      002278 74 80            [12]  942 	mov	a,#0x80
      00227A C0 E0            [24]  943 	push	acc
      00227C 12 27 4A         [24]  944 	lcall	_printf
      00227F 15 81            [12]  945 	dec	sp
      002281 15 81            [12]  946 	dec	sp
      002283 15 81            [12]  947 	dec	sp
                                    948 ;	spi_and_bit_banging.c:327: }
                                    949 ;	spi_and_bit_banging.c:329: }
      002285 02 21 EC         [24]  950 	ljmp	00106$
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'demo_mode'
                                    953 ;------------------------------------------------------------
                                    954 ;	spi_and_bit_banging.c:335: void demo_mode()
                                    955 ;	-----------------------------------------
                                    956 ;	 function demo_mode
                                    957 ;	-----------------------------------------
      002288                        958 _demo_mode:
                                    959 ;	spi_and_bit_banging.c:337: mannual_spi(7);
      002288 75 82 07         [24]  960 	mov	dpl,#0x07
      00228B 12 24 27         [24]  961 	lcall	_mannual_spi
                                    962 ;	spi_and_bit_banging.c:338: bit_bang_spi(7);
      00228E 75 82 07         [24]  963 	mov	dpl,#0x07
      002291 12 22 A0         [24]  964 	lcall	_bit_bang_spi
                                    965 ;	spi_and_bit_banging.c:339: spi_ramp_signal(7);
      002294 90 00 07         [24]  966 	mov	dptr,#0x0007
      002297 12 26 1E         [24]  967 	lcall	_spi_ramp_signal
                                    968 ;	spi_and_bit_banging.c:340: spi_triangular_wave(7);
      00229A 90 00 07         [24]  969 	mov	dptr,#0x0007
                                    970 ;	spi_and_bit_banging.c:341: }
      00229D 02 25 40         [24]  971 	ljmp	_spi_triangular_wave
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'bit_bang_spi'
                                    974 ;------------------------------------------------------------
                                    975 ;number                    Allocated with name '_bit_bang_spi_number_65536_41'
                                    976 ;------------------------------------------------------------
                                    977 ;	spi_and_bit_banging.c:347: void bit_bang_spi(unsigned char number)
                                    978 ;	-----------------------------------------
                                    979 ;	 function bit_bang_spi
                                    980 ;	-----------------------------------------
      0022A0                        981 _bit_bang_spi:
      0022A0 E5 82            [12]  982 	mov	a,dpl
      0022A2 90 04 04         [24]  983 	mov	dptr,#_bit_bang_spi_number_65536_41
      0022A5 F0               [24]  984 	movx	@dptr,a
                                    985 ;	spi_and_bit_banging.c:349: while(number > 0)
      0022A6                        986 00101$:
      0022A6 90 04 04         [24]  987 	mov	dptr,#_bit_bang_spi_number_65536_41
      0022A9 E0               [24]  988 	movx	a,@dptr
      0022AA FF               [12]  989 	mov	r7,a
      0022AB E0               [24]  990 	movx	a,@dptr
      0022AC 60 24            [24]  991 	jz	00104$
                                    992 ;	spi_and_bit_banging.c:351: bit_bang_spi_write(TEST_DATA);
      0022AE 90 1F F0         [24]  993 	mov	dptr,#0x1ff0
      0022B1 C0 07            [24]  994 	push	ar7
      0022B3 12 24 F0         [24]  995 	lcall	_bit_bang_spi_write
                                    996 ;	spi_and_bit_banging.c:352: delay_ms(DELAY_PERIOD);
      0022B6 90 01 F4         [24]  997 	mov	dptr,#0x01f4
      0022B9 12 20 8F         [24]  998 	lcall	_delay_ms
                                    999 ;	spi_and_bit_banging.c:353: bit_bang_spi_write(IDLE_DATA);
      0022BC 90 10 00         [24] 1000 	mov	dptr,#0x1000
      0022BF 12 24 F0         [24] 1001 	lcall	_bit_bang_spi_write
                                   1002 ;	spi_and_bit_banging.c:354: delay_ms(DELAY_PERIOD);
      0022C2 90 01 F4         [24] 1003 	mov	dptr,#0x01f4
      0022C5 12 20 8F         [24] 1004 	lcall	_delay_ms
      0022C8 D0 07            [24] 1005 	pop	ar7
                                   1006 ;	spi_and_bit_banging.c:355: number = number - 1;
      0022CA EF               [12] 1007 	mov	a,r7
      0022CB 14               [12] 1008 	dec	a
      0022CC 90 04 04         [24] 1009 	mov	dptr,#_bit_bang_spi_number_65536_41
      0022CF F0               [24] 1010 	movx	@dptr,a
      0022D0 80 D4            [24] 1011 	sjmp	00101$
      0022D2                       1012 00104$:
                                   1013 ;	spi_and_bit_banging.c:357: }
      0022D2 22               [24] 1014 	ret
                                   1015 ;------------------------------------------------------------
                                   1016 ;Allocation info for local variables in function 'take_data'
                                   1017 ;------------------------------------------------------------
                                   1018 ;input                     Allocated with name '_take_data_input_65537_45'
                                   1019 ;i                         Allocated with name '_take_data_i_65537_45'
                                   1020 ;c                         Allocated with name '_take_data_c_65537_45'
                                   1021 ;data                      Allocated with name '_take_data_data_65538_49'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	spi_and_bit_banging.c:358: unsigned char take_data()
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function take_data
                                   1026 ;	-----------------------------------------
      0022D3                       1027 _take_data:
                                   1028 ;	spi_and_bit_banging.c:360: printf("│ Enter number (hex, up to 2 characters): \n\r|");
      0022D3 74 9B            [12] 1029 	mov	a,#___str_19
      0022D5 C0 E0            [24] 1030 	push	acc
      0022D7 74 3D            [12] 1031 	mov	a,#(___str_19 >> 8)
      0022D9 C0 E0            [24] 1032 	push	acc
      0022DB 74 80            [12] 1033 	mov	a,#0x80
      0022DD C0 E0            [24] 1034 	push	acc
      0022DF 12 27 4A         [24] 1035 	lcall	_printf
      0022E2 15 81            [12] 1036 	dec	sp
      0022E4 15 81            [12] 1037 	dec	sp
      0022E6 15 81            [12] 1038 	dec	sp
                                   1039 ;	spi_and_bit_banging.c:361: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0022E8 90 04 05         [24] 1040 	mov	dptr,#_take_data_input_65537_45
      0022EB E4               [12] 1041 	clr	a
      0022EC F0               [24] 1042 	movx	@dptr,a
      0022ED 90 04 06         [24] 1043 	mov	dptr,#(_take_data_input_65537_45 + 0x0001)
      0022F0 F0               [24] 1044 	movx	@dptr,a
      0022F1 90 04 07         [24] 1045 	mov	dptr,#(_take_data_input_65537_45 + 0x0002)
      0022F4 F0               [24] 1046 	movx	@dptr,a
      0022F5 90 04 08         [24] 1047 	mov	dptr,#(_take_data_input_65537_45 + 0x0003)
      0022F8 F0               [24] 1048 	movx	@dptr,a
                                   1049 ;	spi_and_bit_banging.c:365: printf("$ ");
      0022F9 74 CB            [12] 1050 	mov	a,#___str_20
      0022FB C0 E0            [24] 1051 	push	acc
      0022FD 74 3D            [12] 1052 	mov	a,#(___str_20 >> 8)
      0022FF C0 E0            [24] 1053 	push	acc
      002301 74 80            [12] 1054 	mov	a,#0x80
      002303 C0 E0            [24] 1055 	push	acc
      002305 12 27 4A         [24] 1056 	lcall	_printf
      002308 15 81            [12] 1057 	dec	sp
      00230A 15 81            [12] 1058 	dec	sp
      00230C 15 81            [12] 1059 	dec	sp
                                   1060 ;	spi_and_bit_banging.c:367: while (i < 3) {
      00230E 7E 00            [12] 1061 	mov	r6,#0x00
      002310 7F 00            [12] 1062 	mov	r7,#0x00
      002312                       1063 00111$:
      002312 C3               [12] 1064 	clr	c
      002313 EE               [12] 1065 	mov	a,r6
      002314 94 03            [12] 1066 	subb	a,#0x03
      002316 EF               [12] 1067 	mov	a,r7
      002317 64 80            [12] 1068 	xrl	a,#0x80
      002319 94 80            [12] 1069 	subb	a,#0x80
      00231B 50 5B            [24] 1070 	jnc	00113$
                                   1071 ;	spi_and_bit_banging.c:369: c = getchar();
      00231D C0 07            [24] 1072 	push	ar7
      00231F C0 06            [24] 1073 	push	ar6
      002321 12 20 81         [24] 1074 	lcall	_getchar
      002324 AC 82            [24] 1075 	mov	r4,dpl
      002326 AD 83            [24] 1076 	mov	r5,dph
      002328 D0 06            [24] 1077 	pop	ar6
      00232A D0 07            [24] 1078 	pop	ar7
                                   1079 ;	spi_and_bit_banging.c:372: if (c == '\r' || c == '\n') {
      00232C BC 0D 02         [24] 1080 	cjne	r4,#0x0d,00194$
      00232F 80 47            [24] 1081 	sjmp	00113$
      002331                       1082 00194$:
      002331 BC 0A 02         [24] 1083 	cjne	r4,#0x0a,00195$
      002334 80 42            [24] 1084 	sjmp	00113$
      002336                       1085 00195$:
                                   1086 ;	spi_and_bit_banging.c:377: if ((c >= '0' && c <= '9') ||
      002336 BC 30 00         [24] 1087 	cjne	r4,#0x30,00196$
      002339                       1088 00196$:
      002339 40 05            [24] 1089 	jc	00108$
      00233B EC               [12] 1090 	mov	a,r4
      00233C 24 C6            [12] 1091 	add	a,#0xff - 0x39
      00233E 50 14            [24] 1092 	jnc	00104$
      002340                       1093 00108$:
                                   1094 ;	spi_and_bit_banging.c:378: (c >= 'a' && c <= 'f') ||
      002340 BC 61 00         [24] 1095 	cjne	r4,#0x61,00199$
      002343                       1096 00199$:
      002343 40 05            [24] 1097 	jc	00110$
      002345 EC               [12] 1098 	mov	a,r4
      002346 24 99            [12] 1099 	add	a,#0xff - 0x66
      002348 50 0A            [24] 1100 	jnc	00104$
      00234A                       1101 00110$:
                                   1102 ;	spi_and_bit_banging.c:379: (c >= 'A' && c <= 'F')) {
      00234A BC 41 00         [24] 1103 	cjne	r4,#0x41,00202$
      00234D                       1104 00202$:
      00234D 40 C3            [24] 1105 	jc	00111$
      00234F EC               [12] 1106 	mov	a,r4
      002350 24 B9            [12] 1107 	add	a,#0xff - 0x46
      002352 40 BE            [24] 1108 	jc	00111$
      002354                       1109 00104$:
                                   1110 ;	spi_and_bit_banging.c:381: input[i] = c;
      002354 EE               [12] 1111 	mov	a,r6
      002355 24 05            [12] 1112 	add	a,#_take_data_input_65537_45
      002357 F5 82            [12] 1113 	mov	dpl,a
      002359 EF               [12] 1114 	mov	a,r7
      00235A 34 04            [12] 1115 	addc	a,#(_take_data_input_65537_45 >> 8)
      00235C F5 83            [12] 1116 	mov	dph,a
      00235E EC               [12] 1117 	mov	a,r4
      00235F F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	spi_and_bit_banging.c:382: putchar(c);  // Echo character back
      002360 7D 00            [12] 1120 	mov	r5,#0x00
      002362 8C 82            [24] 1121 	mov	dpl,r4
      002364 8D 83            [24] 1122 	mov	dph,r5
      002366 C0 07            [24] 1123 	push	ar7
      002368 C0 06            [24] 1124 	push	ar6
      00236A 12 20 62         [24] 1125 	lcall	_putchar
      00236D D0 06            [24] 1126 	pop	ar6
      00236F D0 07            [24] 1127 	pop	ar7
                                   1128 ;	spi_and_bit_banging.c:383: i++;
      002371 0E               [12] 1129 	inc	r6
      002372 BE 00 9D         [24] 1130 	cjne	r6,#0x00,00111$
      002375 0F               [12] 1131 	inc	r7
      002376 80 9A            [24] 1132 	sjmp	00111$
      002378                       1133 00113$:
                                   1134 ;	spi_and_bit_banging.c:387: input[i] = '\0';  // Null-terminate the string
      002378 EE               [12] 1135 	mov	a,r6
      002379 24 05            [12] 1136 	add	a,#_take_data_input_65537_45
      00237B F5 82            [12] 1137 	mov	dpl,a
      00237D EF               [12] 1138 	mov	a,r7
      00237E 34 04            [12] 1139 	addc	a,#(_take_data_input_65537_45 >> 8)
      002380 F5 83            [12] 1140 	mov	dph,a
      002382 E4               [12] 1141 	clr	a
      002383 F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	spi_and_bit_banging.c:390: unsigned char data = 0;
      002384 90 04 09         [24] 1144 	mov	dptr,#_take_data_data_65538_49
      002387 F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	spi_and_bit_banging.c:391: for (i = 0; input[i] != '\0'; i++) {
      002388 7E 00            [12] 1147 	mov	r6,#0x00
      00238A 7F 00            [12] 1148 	mov	r7,#0x00
      00238C                       1149 00127$:
      00238C EE               [12] 1150 	mov	a,r6
      00238D 24 05            [12] 1151 	add	a,#_take_data_input_65537_45
      00238F F5 82            [12] 1152 	mov	dpl,a
      002391 EF               [12] 1153 	mov	a,r7
      002392 34 04            [12] 1154 	addc	a,#(_take_data_input_65537_45 >> 8)
      002394 F5 83            [12] 1155 	mov	dph,a
      002396 E0               [24] 1156 	movx	a,@dptr
      002397 FD               [12] 1157 	mov	r5,a
      002398 70 03            [24] 1158 	jnz	00206$
      00239A 02 23 FF         [24] 1159 	ljmp	00125$
      00239D                       1160 00206$:
                                   1161 ;	spi_and_bit_banging.c:392: data = data * 16;
      00239D 90 04 09         [24] 1162 	mov	dptr,#_take_data_data_65538_49
      0023A0 E0               [24] 1163 	movx	a,@dptr
      0023A1 C4               [12] 1164 	swap	a
      0023A2 54 F0            [12] 1165 	anl	a,#0xf0
      0023A4 FC               [12] 1166 	mov	r4,a
      0023A5 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	spi_and_bit_banging.c:393: if (input[i] >= '0' && input[i] <= '9')
      0023A6 BD 30 00         [24] 1169 	cjne	r5,#0x30,00207$
      0023A9                       1170 00207$:
      0023A9 40 12            [24] 1171 	jc	00122$
      0023AB ED               [12] 1172 	mov	a,r5
      0023AC 24 C6            [12] 1173 	add	a,#0xff - 0x39
      0023AE 40 0D            [24] 1174 	jc	00122$
                                   1175 ;	spi_and_bit_banging.c:394: data += input[i] - '0';
      0023B0 ED               [12] 1176 	mov	a,r5
      0023B1 24 D0            [12] 1177 	add	a,#0xd0
      0023B3 FD               [12] 1178 	mov	r5,a
      0023B4 90 04 09         [24] 1179 	mov	dptr,#_take_data_data_65538_49
      0023B7 E0               [24] 1180 	movx	a,@dptr
      0023B8 FC               [12] 1181 	mov	r4,a
      0023B9 2D               [12] 1182 	add	a,r5
      0023BA F0               [24] 1183 	movx	@dptr,a
      0023BB 80 3A            [24] 1184 	sjmp	00128$
      0023BD                       1185 00122$:
                                   1186 ;	spi_and_bit_banging.c:395: else if (input[i] >= 'A' && input[i] <= 'F')
      0023BD EE               [12] 1187 	mov	a,r6
      0023BE 24 05            [12] 1188 	add	a,#_take_data_input_65537_45
      0023C0 F5 82            [12] 1189 	mov	dpl,a
      0023C2 EF               [12] 1190 	mov	a,r7
      0023C3 34 04            [12] 1191 	addc	a,#(_take_data_input_65537_45 >> 8)
      0023C5 F5 83            [12] 1192 	mov	dph,a
      0023C7 E0               [24] 1193 	movx	a,@dptr
      0023C8 FD               [12] 1194 	mov	r5,a
      0023C9 BD 41 00         [24] 1195 	cjne	r5,#0x41,00210$
      0023CC                       1196 00210$:
      0023CC 40 14            [24] 1197 	jc	00118$
      0023CE ED               [12] 1198 	mov	a,r5
      0023CF 24 B9            [12] 1199 	add	a,#0xff - 0x46
      0023D1 40 0F            [24] 1200 	jc	00118$
                                   1201 ;	spi_and_bit_banging.c:396: data += input[i] - 'A' + 10;
      0023D3 8D 04            [24] 1202 	mov	ar4,r5
      0023D5 74 C9            [12] 1203 	mov	a,#0xc9
      0023D7 2C               [12] 1204 	add	a,r4
      0023D8 FC               [12] 1205 	mov	r4,a
      0023D9 90 04 09         [24] 1206 	mov	dptr,#_take_data_data_65538_49
      0023DC E0               [24] 1207 	movx	a,@dptr
      0023DD FB               [12] 1208 	mov	r3,a
      0023DE 2C               [12] 1209 	add	a,r4
      0023DF F0               [24] 1210 	movx	@dptr,a
      0023E0 80 15            [24] 1211 	sjmp	00128$
      0023E2                       1212 00118$:
                                   1213 ;	spi_and_bit_banging.c:397: else if (input[i] >= 'a' && input[i] <= 'f')
      0023E2 BD 61 00         [24] 1214 	cjne	r5,#0x61,00213$
      0023E5                       1215 00213$:
      0023E5 40 10            [24] 1216 	jc	00128$
      0023E7 ED               [12] 1217 	mov	a,r5
      0023E8 24 99            [12] 1218 	add	a,#0xff - 0x66
      0023EA 40 0B            [24] 1219 	jc	00128$
                                   1220 ;	spi_and_bit_banging.c:398: data += input[i] - 'a' + 10;
      0023EC 74 A9            [12] 1221 	mov	a,#0xa9
      0023EE 2D               [12] 1222 	add	a,r5
      0023EF FD               [12] 1223 	mov	r5,a
      0023F0 90 04 09         [24] 1224 	mov	dptr,#_take_data_data_65538_49
      0023F3 E0               [24] 1225 	movx	a,@dptr
      0023F4 FC               [12] 1226 	mov	r4,a
      0023F5 2D               [12] 1227 	add	a,r5
      0023F6 F0               [24] 1228 	movx	@dptr,a
      0023F7                       1229 00128$:
                                   1230 ;	spi_and_bit_banging.c:391: for (i = 0; input[i] != '\0'; i++) {
      0023F7 0E               [12] 1231 	inc	r6
      0023F8 BE 00 01         [24] 1232 	cjne	r6,#0x00,00216$
      0023FB 0F               [12] 1233 	inc	r7
      0023FC                       1234 00216$:
      0023FC 02 23 8C         [24] 1235 	ljmp	00127$
      0023FF                       1236 00125$:
                                   1237 ;	spi_and_bit_banging.c:401: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0023FF 90 04 09         [24] 1238 	mov	dptr,#_take_data_data_65538_49
      002402 E0               [24] 1239 	movx	a,@dptr
      002403 FF               [12] 1240 	mov	r7,a
      002404 FD               [12] 1241 	mov	r5,a
      002405 7E 00            [12] 1242 	mov	r6,#0x00
      002407 C0 07            [24] 1243 	push	ar7
      002409 C0 05            [24] 1244 	push	ar5
      00240B C0 06            [24] 1245 	push	ar6
      00240D 74 CE            [12] 1246 	mov	a,#___str_21
      00240F C0 E0            [24] 1247 	push	acc
      002411 74 3D            [12] 1248 	mov	a,#(___str_21 >> 8)
      002413 C0 E0            [24] 1249 	push	acc
      002415 74 80            [12] 1250 	mov	a,#0x80
      002417 C0 E0            [24] 1251 	push	acc
      002419 12 27 4A         [24] 1252 	lcall	_printf
      00241C E5 81            [12] 1253 	mov	a,sp
      00241E 24 FB            [12] 1254 	add	a,#0xfb
      002420 F5 81            [12] 1255 	mov	sp,a
      002422 D0 07            [24] 1256 	pop	ar7
                                   1257 ;	spi_and_bit_banging.c:408: return data;
      002424 8F 82            [24] 1258 	mov	dpl,r7
                                   1259 ;	spi_and_bit_banging.c:410: }
      002426 22               [24] 1260 	ret
                                   1261 ;------------------------------------------------------------
                                   1262 ;Allocation info for local variables in function 'mannual_spi'
                                   1263 ;------------------------------------------------------------
                                   1264 ;number                    Allocated with name '_mannual_spi_number_65536_52'
                                   1265 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_53'
                                   1266 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_53'
                                   1267 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_53'
                                   1268 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_53'
                                   1269 ;i                         Allocated with name '_mannual_spi_i_196608_55'
                                   1270 ;------------------------------------------------------------
                                   1271 ;	spi_and_bit_banging.c:412: void mannual_spi(unsigned char number)
                                   1272 ;	-----------------------------------------
                                   1273 ;	 function mannual_spi
                                   1274 ;	-----------------------------------------
      002427                       1275 _mannual_spi:
      002427 E5 82            [12] 1276 	mov	a,dpl
      002429 90 04 0A         [24] 1277 	mov	dptr,#_mannual_spi_number_65536_52
      00242C F0               [24] 1278 	movx	@dptr,a
                                   1279 ;	spi_and_bit_banging.c:414: int dac_value_index = 0;
      00242D 90 04 0B         [24] 1280 	mov	dptr,#_mannual_spi_dac_value_index_65536_53
      002430 E4               [12] 1281 	clr	a
      002431 F0               [24] 1282 	movx	@dptr,a
      002432 A3               [24] 1283 	inc	dptr
      002433 F0               [24] 1284 	movx	@dptr,a
                                   1285 ;	spi_and_bit_banging.c:415: int dac_data = 0;
      002434 90 04 0D         [24] 1286 	mov	dptr,#_mannual_spi_dac_data_65536_53
      002437 F0               [24] 1287 	movx	@dptr,a
      002438 A3               [24] 1288 	inc	dptr
      002439 F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	spi_and_bit_banging.c:417: while(number > 0)
      00243A                       1291 00111$:
      00243A 90 04 0A         [24] 1292 	mov	dptr,#_mannual_spi_number_65536_52
      00243D E0               [24] 1293 	movx	a,@dptr
      00243E 70 01            [24] 1294 	jnz	00156$
      002440 22               [24] 1295 	ret
      002441                       1296 00156$:
                                   1297 ;	spi_and_bit_banging.c:420: for(int i = 0; i<256; i++)
      002441 7E 00            [12] 1298 	mov	r6,#0x00
      002443 7F 00            [12] 1299 	mov	r7,#0x00
      002445                       1300 00115$:
      002445 C3               [12] 1301 	clr	c
      002446 EF               [12] 1302 	mov	a,r7
      002447 64 80            [12] 1303 	xrl	a,#0x80
      002449 94 81            [12] 1304 	subb	a,#0x81
      00244B 40 03            [24] 1305 	jc	00157$
      00244D 02 24 D5         [24] 1306 	ljmp	00110$
      002450                       1307 00157$:
                                   1308 ;	spi_and_bit_banging.c:423: if(dac_value_index < SINE_MAX_INDEX)
      002450 90 04 0B         [24] 1309 	mov	dptr,#_mannual_spi_dac_value_index_65536_53
      002453 E0               [24] 1310 	movx	a,@dptr
      002454 FC               [12] 1311 	mov	r4,a
      002455 A3               [24] 1312 	inc	dptr
      002456 E0               [24] 1313 	movx	a,@dptr
      002457 FD               [12] 1314 	mov	r5,a
      002458 C3               [12] 1315 	clr	c
      002459 64 80            [12] 1316 	xrl	a,#0x80
      00245B 94 81            [12] 1317 	subb	a,#0x81
      00245D 50 21            [24] 1318 	jnc	00102$
                                   1319 ;	spi_and_bit_banging.c:427: dac_data = dac_values[dac_value_index];
      00245F EC               [12] 1320 	mov	a,r4
      002460 2C               [12] 1321 	add	a,r4
      002461 FC               [12] 1322 	mov	r4,a
      002462 ED               [12] 1323 	mov	a,r5
      002463 33               [12] 1324 	rlc	a
      002464 FD               [12] 1325 	mov	r5,a
      002465 EC               [12] 1326 	mov	a,r4
      002466 24 AC            [12] 1327 	add	a,#_dac_values
      002468 F5 82            [12] 1328 	mov	dpl,a
      00246A ED               [12] 1329 	mov	a,r5
      00246B 34 31            [12] 1330 	addc	a,#(_dac_values >> 8)
      00246D F5 83            [12] 1331 	mov	dph,a
      00246F E4               [12] 1332 	clr	a
      002470 93               [24] 1333 	movc	a,@a+dptr
      002471 FC               [12] 1334 	mov	r4,a
      002472 A3               [24] 1335 	inc	dptr
      002473 E4               [12] 1336 	clr	a
      002474 93               [24] 1337 	movc	a,@a+dptr
      002475 FD               [12] 1338 	mov	r5,a
      002476 90 04 0D         [24] 1339 	mov	dptr,#_mannual_spi_dac_data_65536_53
      002479 EC               [12] 1340 	mov	a,r4
      00247A F0               [24] 1341 	movx	@dptr,a
      00247B ED               [12] 1342 	mov	a,r5
      00247C A3               [24] 1343 	inc	dptr
      00247D F0               [24] 1344 	movx	@dptr,a
      00247E 80 07            [24] 1345 	sjmp	00103$
      002480                       1346 00102$:
                                   1347 ;	spi_and_bit_banging.c:431: dac_value_index = 0;  // Reset index for next cycle
      002480 90 04 0B         [24] 1348 	mov	dptr,#_mannual_spi_dac_value_index_65536_53
      002483 E4               [12] 1349 	clr	a
      002484 F0               [24] 1350 	movx	@dptr,a
      002485 A3               [24] 1351 	inc	dptr
      002486 F0               [24] 1352 	movx	@dptr,a
      002487                       1353 00103$:
                                   1354 ;	spi_and_bit_banging.c:438: ((dac_data >> 4) & 0x0F);
      002487 90 04 0D         [24] 1355 	mov	dptr,#_mannual_spi_dac_data_65536_53
      00248A E0               [24] 1356 	movx	a,@dptr
      00248B FC               [12] 1357 	mov	r4,a
      00248C A3               [24] 1358 	inc	dptr
      00248D E0               [24] 1359 	movx	a,@dptr
      00248E 8C 02            [24] 1360 	mov	ar2,r4
      002490 C4               [12] 1361 	swap	a
      002491 CA               [12] 1362 	xch	a,r2
      002492 C4               [12] 1363 	swap	a
      002493 54 0F            [12] 1364 	anl	a,#0x0f
      002495 6A               [12] 1365 	xrl	a,r2
      002496 CA               [12] 1366 	xch	a,r2
      002497 54 0F            [12] 1367 	anl	a,#0x0f
      002499 CA               [12] 1368 	xch	a,r2
      00249A 6A               [12] 1369 	xrl	a,r2
      00249B CA               [12] 1370 	xch	a,r2
      00249C 30 E3 02         [24] 1371 	jnb	acc.3,00159$
      00249F 44 F0            [12] 1372 	orl	a,#0xf0
      0024A1                       1373 00159$:
      0024A1 74 0F            [12] 1374 	mov	a,#0x0f
      0024A3 5A               [12] 1375 	anl	a,r2
      0024A4 44 10            [12] 1376 	orl	a,#0x10
      0024A6 FB               [12] 1377 	mov	r3,a
                                   1378 ;	spi_and_bit_banging.c:441: low_byte = (dac_data & 0x0F) << 4;
      0024A7 53 04 0F         [24] 1379 	anl	ar4,#0x0f
      0024AA EC               [12] 1380 	mov	a,r4
      0024AB C4               [12] 1381 	swap	a
      0024AC 54 F0            [12] 1382 	anl	a,#0xf0
      0024AE FD               [12] 1383 	mov	r5,a
                                   1384 ;	spi_and_bit_banging.c:445: P1_1 = 0;  // Select DAC
                                   1385 ;	assignBit
      0024AF C2 91            [12] 1386 	clr	_P1_1
                                   1387 ;	spi_and_bit_banging.c:448: SPDAT = high_byte;
      0024B1 8B C5            [24] 1388 	mov	_SPDAT,r3
                                   1389 ;	spi_and_bit_banging.c:449: while (!(SPSTA & (1<<7))); 
      0024B3                       1390 00104$:
      0024B3 E5 C4            [12] 1391 	mov	a,_SPSTA
      0024B5 30 E7 FB         [24] 1392 	jnb	acc.7,00104$
                                   1393 ;	spi_and_bit_banging.c:453: SPDAT = low_byte;
      0024B8 8D C5            [24] 1394 	mov	_SPDAT,r5
                                   1395 ;	spi_and_bit_banging.c:454: while (!(SPSTA & (1<<7))); 
      0024BA                       1396 00107$:
      0024BA E5 C4            [12] 1397 	mov	a,_SPSTA
      0024BC 30 E7 FB         [24] 1398 	jnb	acc.7,00107$
                                   1399 ;	spi_and_bit_banging.c:456: P1_1 = 1;  // Deselect DAC
                                   1400 ;	assignBit
      0024BF D2 91            [12] 1401 	setb	_P1_1
                                   1402 ;	spi_and_bit_banging.c:458: dac_value_index++;
      0024C1 90 04 0B         [24] 1403 	mov	dptr,#_mannual_spi_dac_value_index_65536_53
      0024C4 E0               [24] 1404 	movx	a,@dptr
      0024C5 24 01            [12] 1405 	add	a,#0x01
      0024C7 F0               [24] 1406 	movx	@dptr,a
      0024C8 A3               [24] 1407 	inc	dptr
      0024C9 E0               [24] 1408 	movx	a,@dptr
      0024CA 34 00            [12] 1409 	addc	a,#0x00
      0024CC F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	spi_and_bit_banging.c:420: for(int i = 0; i<256; i++)
      0024CD 0E               [12] 1412 	inc	r6
      0024CE BE 00 01         [24] 1413 	cjne	r6,#0x00,00162$
      0024D1 0F               [12] 1414 	inc	r7
      0024D2                       1415 00162$:
      0024D2 02 24 45         [24] 1416 	ljmp	00115$
      0024D5                       1417 00110$:
                                   1418 ;	spi_and_bit_banging.c:461: number = number - 1;
      0024D5 90 04 0A         [24] 1419 	mov	dptr,#_mannual_spi_number_65536_52
      0024D8 E0               [24] 1420 	movx	a,@dptr
      0024D9 FF               [12] 1421 	mov	r7,a
      0024DA 14               [12] 1422 	dec	a
      0024DB F0               [24] 1423 	movx	@dptr,a
                                   1424 ;	spi_and_bit_banging.c:463: }
      0024DC 02 24 3A         [24] 1425 	ljmp	00111$
                                   1426 ;------------------------------------------------------------
                                   1427 ;Allocation info for local variables in function 'spi_init'
                                   1428 ;------------------------------------------------------------
                                   1429 ;	spi_and_bit_banging.c:474: void spi_init(void) 
                                   1430 ;	-----------------------------------------
                                   1431 ;	 function spi_init
                                   1432 ;	-----------------------------------------
      0024DF                       1433 _spi_init:
                                   1434 ;	spi_and_bit_banging.c:495: SPCON |= 0x10;
      0024DF 43 C3 10         [24] 1435 	orl	_SPCON,#0x10
                                   1436 ;	spi_and_bit_banging.c:496: SPCON |= 0x20;
      0024E2 43 C3 20         [24] 1437 	orl	_SPCON,#0x20
                                   1438 ;	spi_and_bit_banging.c:497: SPCON |= 0x40;
      0024E5 43 C3 40         [24] 1439 	orl	_SPCON,#0x40
                                   1440 ;	spi_and_bit_banging.c:504: }
      0024E8 22               [24] 1441 	ret
                                   1442 ;------------------------------------------------------------
                                   1443 ;Allocation info for local variables in function 'bit_bang_spi_init'
                                   1444 ;------------------------------------------------------------
                                   1445 ;	spi_and_bit_banging.c:506: void bit_bang_spi_init(void) {
                                   1446 ;	-----------------------------------------
                                   1447 ;	 function bit_bang_spi_init
                                   1448 ;	-----------------------------------------
      0024E9                       1449 _bit_bang_spi_init:
                                   1450 ;	spi_and_bit_banging.c:508: SDA = DATA_HIGH;                 /* Set data line high */
                                   1451 ;	assignBit
      0024E9 D2 97            [12] 1452 	setb	_P1_7
                                   1453 ;	spi_and_bit_banging.c:509: SCL = CLOCK_LOW;                 /* Set clock line low */
                                   1454 ;	assignBit
      0024EB C2 96            [12] 1455 	clr	_P1_6
                                   1456 ;	spi_and_bit_banging.c:510: SS = SLAVE_SELECT_INACTIVE;      /* Set slave select high (inactive) */
                                   1457 ;	assignBit
      0024ED D2 91            [12] 1458 	setb	_P1_1
                                   1459 ;	spi_and_bit_banging.c:511: }
      0024EF 22               [24] 1460 	ret
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'bit_bang_spi_write'
                                   1463 ;------------------------------------------------------------
                                   1464 ;data                      Allocated with name '_bit_bang_spi_write_data_65536_63'
                                   1465 ;i                         Allocated with name '_bit_bang_spi_write_i_65536_64'
                                   1466 ;------------------------------------------------------------
                                   1467 ;	spi_and_bit_banging.c:513: int bit_bang_spi_write(uint16_t data) {
                                   1468 ;	-----------------------------------------
                                   1469 ;	 function bit_bang_spi_write
                                   1470 ;	-----------------------------------------
      0024F0                       1471 _bit_bang_spi_write:
      0024F0 AF 83            [24] 1472 	mov	r7,dph
      0024F2 E5 82            [12] 1473 	mov	a,dpl
      0024F4 90 04 0F         [24] 1474 	mov	dptr,#_bit_bang_spi_write_data_65536_63
      0024F7 F0               [24] 1475 	movx	@dptr,a
      0024F8 EF               [12] 1476 	mov	a,r7
      0024F9 A3               [24] 1477 	inc	dptr
      0024FA F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	spi_and_bit_banging.c:516: SS = SLAVE_SELECT_ACTIVE;        /* Assert slave select (active low) */
                                   1480 ;	assignBit
      0024FB C2 91            [12] 1481 	clr	_P1_1
                                   1482 ;	spi_and_bit_banging.c:519: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      0024FD 7E 00            [12] 1483 	mov	r6,#0x00
      0024FF 7F 00            [12] 1484 	mov	r7,#0x00
      002501                       1485 00102$:
                                   1486 ;	spi_and_bit_banging.c:520: SDA = (data & MSB_FIRST_MASK) ? DATA_HIGH : DATA_LOW;    /* MSB first */
      002501 90 04 0F         [24] 1487 	mov	dptr,#_bit_bang_spi_write_data_65536_63
      002504 E0               [24] 1488 	movx	a,@dptr
      002505 FC               [12] 1489 	mov	r4,a
      002506 A3               [24] 1490 	inc	dptr
      002507 E0               [24] 1491 	movx	a,@dptr
      002508 FD               [12] 1492 	mov	r5,a
      002509 23               [12] 1493 	rl	a
      00250A 54 01            [12] 1494 	anl	a,#0x01
      00250C 24 FF            [12] 1495 	add	a,#0xff
      00250E 92 97            [24] 1496 	mov	_P1_7,c
                                   1497 ;	spi_and_bit_banging.c:521: SCL = CLOCK_HIGH;            /* Clock high */
                                   1498 ;	assignBit
      002510 D2 96            [12] 1499 	setb	_P1_6
                                   1500 ;	spi_and_bit_banging.c:522: SCL = CLOCK_LOW;             /* Clock low */
                                   1501 ;	assignBit
      002512 C2 96            [12] 1502 	clr	_P1_6
                                   1503 ;	spi_and_bit_banging.c:523: data <<= 1;                  /* Shift to next bit */
      002514 EC               [12] 1504 	mov	a,r4
      002515 2C               [12] 1505 	add	a,r4
      002516 FC               [12] 1506 	mov	r4,a
      002517 ED               [12] 1507 	mov	a,r5
      002518 33               [12] 1508 	rlc	a
      002519 FD               [12] 1509 	mov	r5,a
      00251A 90 04 0F         [24] 1510 	mov	dptr,#_bit_bang_spi_write_data_65536_63
      00251D EC               [12] 1511 	mov	a,r4
      00251E F0               [24] 1512 	movx	@dptr,a
      00251F ED               [12] 1513 	mov	a,r5
      002520 A3               [24] 1514 	inc	dptr
      002521 F0               [24] 1515 	movx	@dptr,a
                                   1516 ;	spi_and_bit_banging.c:519: for(i = 0; i < SPI_DATA_WIDTH; i++) {
      002522 0E               [12] 1517 	inc	r6
      002523 BE 00 01         [24] 1518 	cjne	r6,#0x00,00115$
      002526 0F               [12] 1519 	inc	r7
      002527                       1520 00115$:
      002527 C3               [12] 1521 	clr	c
      002528 EE               [12] 1522 	mov	a,r6
      002529 94 10            [12] 1523 	subb	a,#0x10
      00252B EF               [12] 1524 	mov	a,r7
      00252C 94 00            [12] 1525 	subb	a,#0x00
      00252E 40 D1            [24] 1526 	jc	00102$
                                   1527 ;	spi_and_bit_banging.c:527: SS = SLAVE_SELECT_INACTIVE;      /* Deassert slave select */
                                   1528 ;	assignBit
      002530 D2 91            [12] 1529 	setb	_P1_1
                                   1530 ;	spi_and_bit_banging.c:528: SCL = CLOCK_LOW;                 /* Clock low */
                                   1531 ;	assignBit
      002532 C2 96            [12] 1532 	clr	_P1_6
                                   1533 ;	spi_and_bit_banging.c:529: SDA = DATA_HIGH;                 /* Data high */
                                   1534 ;	assignBit
      002534 D2 97            [12] 1535 	setb	_P1_7
                                   1536 ;	spi_and_bit_banging.c:531: return 0;
      002536 90 00 00         [24] 1537 	mov	dptr,#0x0000
                                   1538 ;	spi_and_bit_banging.c:532: }
      002539 22               [24] 1539 	ret
                                   1540 ;------------------------------------------------------------
                                   1541 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1542 ;------------------------------------------------------------
                                   1543 ;	spi_and_bit_banging.c:539: void spi_transmission_start(void)
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function spi_transmission_start
                                   1546 ;	-----------------------------------------
      00253A                       1547 _spi_transmission_start:
                                   1548 ;	spi_and_bit_banging.c:541: SPCON |= SPI_ENABLE;           // Enable SPI
      00253A 43 C3 40         [24] 1549 	orl	_SPCON,#0x40
                                   1550 ;	spi_and_bit_banging.c:542: P1_1 = 0;
                                   1551 ;	assignBit
      00253D C2 91            [12] 1552 	clr	_P1_1
                                   1553 ;	spi_and_bit_banging.c:543: }
      00253F 22               [24] 1554 	ret
                                   1555 ;------------------------------------------------------------
                                   1556 ;Allocation info for local variables in function 'spi_triangular_wave'
                                   1557 ;------------------------------------------------------------
                                   1558 ;number                    Allocated with name '_spi_triangular_wave_number_65536_69'
                                   1559 ;dac_value_index           Allocated with name '_spi_triangular_wave_dac_value_index_65536_70'
                                   1560 ;dac_data                  Allocated with name '_spi_triangular_wave_dac_data_65536_70'
                                   1561 ;high_byte                 Allocated with name '_spi_triangular_wave_high_byte_65536_70'
                                   1562 ;low_byte                  Allocated with name '_spi_triangular_wave_low_byte_65536_70'
                                   1563 ;i                         Allocated with name '_spi_triangular_wave_i_196608_72'
                                   1564 ;------------------------------------------------------------
                                   1565 ;	spi_and_bit_banging.c:545: void spi_triangular_wave(int number)
                                   1566 ;	-----------------------------------------
                                   1567 ;	 function spi_triangular_wave
                                   1568 ;	-----------------------------------------
      002540                       1569 _spi_triangular_wave:
      002540 AF 83            [24] 1570 	mov	r7,dph
      002542 E5 82            [12] 1571 	mov	a,dpl
      002544 90 04 11         [24] 1572 	mov	dptr,#_spi_triangular_wave_number_65536_69
      002547 F0               [24] 1573 	movx	@dptr,a
      002548 EF               [12] 1574 	mov	a,r7
      002549 A3               [24] 1575 	inc	dptr
      00254A F0               [24] 1576 	movx	@dptr,a
                                   1577 ;	spi_and_bit_banging.c:547: int dac_value_index = 0;
      00254B 90 04 13         [24] 1578 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_70
      00254E E4               [12] 1579 	clr	a
      00254F F0               [24] 1580 	movx	@dptr,a
      002550 A3               [24] 1581 	inc	dptr
      002551 F0               [24] 1582 	movx	@dptr,a
                                   1583 ;	spi_and_bit_banging.c:548: int dac_data = 0;
      002552 90 04 15         [24] 1584 	mov	dptr,#_spi_triangular_wave_dac_data_65536_70
      002555 F0               [24] 1585 	movx	@dptr,a
      002556 A3               [24] 1586 	inc	dptr
      002557 F0               [24] 1587 	movx	@dptr,a
                                   1588 ;	spi_and_bit_banging.c:550: while(number>0)
      002558 90 04 11         [24] 1589 	mov	dptr,#_spi_triangular_wave_number_65536_69
      00255B E0               [24] 1590 	movx	a,@dptr
      00255C FE               [12] 1591 	mov	r6,a
      00255D A3               [24] 1592 	inc	dptr
      00255E E0               [24] 1593 	movx	a,@dptr
      00255F FF               [12] 1594 	mov	r7,a
      002560                       1595 00111$:
      002560 C3               [12] 1596 	clr	c
      002561 E4               [12] 1597 	clr	a
      002562 9E               [12] 1598 	subb	a,r6
      002563 74 80            [12] 1599 	mov	a,#(0x00 ^ 0x80)
      002565 8F F0            [24] 1600 	mov	b,r7
      002567 63 F0 80         [24] 1601 	xrl	b,#0x80
      00256A 95 F0            [12] 1602 	subb	a,b
      00256C 40 03            [24] 1603 	jc	00157$
      00256E 02 26 15         [24] 1604 	ljmp	00129$
      002571                       1605 00157$:
                                   1606 ;	spi_and_bit_banging.c:552: for(int i = 0; i<512; i++)
      002571 7C 00            [12] 1607 	mov	r4,#0x00
      002573 7D 00            [12] 1608 	mov	r5,#0x00
      002575                       1609 00115$:
      002575 C3               [12] 1610 	clr	c
      002576 ED               [12] 1611 	mov	a,r5
      002577 64 80            [12] 1612 	xrl	a,#0x80
      002579 94 82            [12] 1613 	subb	a,#0x82
      00257B 40 03            [24] 1614 	jc	00158$
      00257D 02 26 05         [24] 1615 	ljmp	00110$
      002580                       1616 00158$:
                                   1617 ;	spi_and_bit_banging.c:555: if(dac_value_index < 512)
      002580 90 04 13         [24] 1618 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_70
      002583 E0               [24] 1619 	movx	a,@dptr
      002584 FA               [12] 1620 	mov	r2,a
      002585 A3               [24] 1621 	inc	dptr
      002586 E0               [24] 1622 	movx	a,@dptr
      002587 FB               [12] 1623 	mov	r3,a
      002588 C3               [12] 1624 	clr	c
      002589 64 80            [12] 1625 	xrl	a,#0x80
      00258B 94 82            [12] 1626 	subb	a,#0x82
      00258D 50 21            [24] 1627 	jnc	00102$
                                   1628 ;	spi_and_bit_banging.c:559: dac_data = trig_dac_values[dac_value_index];
      00258F EA               [12] 1629 	mov	a,r2
      002590 2A               [12] 1630 	add	a,r2
      002591 FA               [12] 1631 	mov	r2,a
      002592 EB               [12] 1632 	mov	a,r3
      002593 33               [12] 1633 	rlc	a
      002594 FB               [12] 1634 	mov	r3,a
      002595 EA               [12] 1635 	mov	a,r2
      002596 24 AC            [12] 1636 	add	a,#_trig_dac_values
      002598 F5 82            [12] 1637 	mov	dpl,a
      00259A EB               [12] 1638 	mov	a,r3
      00259B 34 33            [12] 1639 	addc	a,#(_trig_dac_values >> 8)
      00259D F5 83            [12] 1640 	mov	dph,a
      00259F E4               [12] 1641 	clr	a
      0025A0 93               [24] 1642 	movc	a,@a+dptr
      0025A1 FA               [12] 1643 	mov	r2,a
      0025A2 A3               [24] 1644 	inc	dptr
      0025A3 E4               [12] 1645 	clr	a
      0025A4 93               [24] 1646 	movc	a,@a+dptr
      0025A5 FB               [12] 1647 	mov	r3,a
      0025A6 90 04 15         [24] 1648 	mov	dptr,#_spi_triangular_wave_dac_data_65536_70
      0025A9 EA               [12] 1649 	mov	a,r2
      0025AA F0               [24] 1650 	movx	@dptr,a
      0025AB EB               [12] 1651 	mov	a,r3
      0025AC A3               [24] 1652 	inc	dptr
      0025AD F0               [24] 1653 	movx	@dptr,a
      0025AE 80 07            [24] 1654 	sjmp	00103$
      0025B0                       1655 00102$:
                                   1656 ;	spi_and_bit_banging.c:563: dac_value_index = 0;  // Reset index for next cycle
      0025B0 90 04 13         [24] 1657 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_70
      0025B3 E4               [12] 1658 	clr	a
      0025B4 F0               [24] 1659 	movx	@dptr,a
      0025B5 A3               [24] 1660 	inc	dptr
      0025B6 F0               [24] 1661 	movx	@dptr,a
      0025B7                       1662 00103$:
                                   1663 ;	spi_and_bit_banging.c:570: ((dac_data >> 4) & 0x0F);
      0025B7 90 04 15         [24] 1664 	mov	dptr,#_spi_triangular_wave_dac_data_65536_70
      0025BA E0               [24] 1665 	movx	a,@dptr
      0025BB FA               [12] 1666 	mov	r2,a
      0025BC A3               [24] 1667 	inc	dptr
      0025BD E0               [24] 1668 	movx	a,@dptr
      0025BE 8A 00            [24] 1669 	mov	ar0,r2
      0025C0 C4               [12] 1670 	swap	a
      0025C1 C8               [12] 1671 	xch	a,r0
      0025C2 C4               [12] 1672 	swap	a
      0025C3 54 0F            [12] 1673 	anl	a,#0x0f
      0025C5 68               [12] 1674 	xrl	a,r0
      0025C6 C8               [12] 1675 	xch	a,r0
      0025C7 54 0F            [12] 1676 	anl	a,#0x0f
      0025C9 C8               [12] 1677 	xch	a,r0
      0025CA 68               [12] 1678 	xrl	a,r0
      0025CB C8               [12] 1679 	xch	a,r0
      0025CC 30 E3 02         [24] 1680 	jnb	acc.3,00160$
      0025CF 44 F0            [12] 1681 	orl	a,#0xf0
      0025D1                       1682 00160$:
      0025D1 74 0F            [12] 1683 	mov	a,#0x0f
      0025D3 58               [12] 1684 	anl	a,r0
      0025D4 44 10            [12] 1685 	orl	a,#0x10
      0025D6 F9               [12] 1686 	mov	r1,a
                                   1687 ;	spi_and_bit_banging.c:573: low_byte = (dac_data & 0x0F) << 4;
      0025D7 53 02 0F         [24] 1688 	anl	ar2,#0x0f
      0025DA EA               [12] 1689 	mov	a,r2
      0025DB C4               [12] 1690 	swap	a
      0025DC 54 F0            [12] 1691 	anl	a,#0xf0
      0025DE FB               [12] 1692 	mov	r3,a
                                   1693 ;	spi_and_bit_banging.c:577: P1_1 = 0;  // Select DAC
                                   1694 ;	assignBit
      0025DF C2 91            [12] 1695 	clr	_P1_1
                                   1696 ;	spi_and_bit_banging.c:580: SPDAT = high_byte;
      0025E1 89 C5            [24] 1697 	mov	_SPDAT,r1
                                   1698 ;	spi_and_bit_banging.c:581: while (!(SPSTA & (1<<7))); 
      0025E3                       1699 00104$:
      0025E3 E5 C4            [12] 1700 	mov	a,_SPSTA
      0025E5 30 E7 FB         [24] 1701 	jnb	acc.7,00104$
                                   1702 ;	spi_and_bit_banging.c:585: SPDAT = low_byte;
      0025E8 8B C5            [24] 1703 	mov	_SPDAT,r3
                                   1704 ;	spi_and_bit_banging.c:586: while (!(SPSTA & (1<<7))); 
      0025EA                       1705 00107$:
      0025EA E5 C4            [12] 1706 	mov	a,_SPSTA
      0025EC 30 E7 FB         [24] 1707 	jnb	acc.7,00107$
                                   1708 ;	spi_and_bit_banging.c:588: P1_1 = 1;  // Deselect DAC
                                   1709 ;	assignBit
      0025EF D2 91            [12] 1710 	setb	_P1_1
                                   1711 ;	spi_and_bit_banging.c:590: dac_value_index++;
      0025F1 90 04 13         [24] 1712 	mov	dptr,#_spi_triangular_wave_dac_value_index_65536_70
      0025F4 E0               [24] 1713 	movx	a,@dptr
      0025F5 24 01            [12] 1714 	add	a,#0x01
      0025F7 F0               [24] 1715 	movx	@dptr,a
      0025F8 A3               [24] 1716 	inc	dptr
      0025F9 E0               [24] 1717 	movx	a,@dptr
      0025FA 34 00            [12] 1718 	addc	a,#0x00
      0025FC F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	spi_and_bit_banging.c:552: for(int i = 0; i<512; i++)
      0025FD 0C               [12] 1721 	inc	r4
      0025FE BC 00 01         [24] 1722 	cjne	r4,#0x00,00163$
      002601 0D               [12] 1723 	inc	r5
      002602                       1724 00163$:
      002602 02 25 75         [24] 1725 	ljmp	00115$
      002605                       1726 00110$:
                                   1727 ;	spi_and_bit_banging.c:593: number = number - 1;
      002605 1E               [12] 1728 	dec	r6
      002606 BE FF 01         [24] 1729 	cjne	r6,#0xff,00164$
      002609 1F               [12] 1730 	dec	r7
      00260A                       1731 00164$:
      00260A 90 04 11         [24] 1732 	mov	dptr,#_spi_triangular_wave_number_65536_69
      00260D EE               [12] 1733 	mov	a,r6
      00260E F0               [24] 1734 	movx	@dptr,a
      00260F EF               [12] 1735 	mov	a,r7
      002610 A3               [24] 1736 	inc	dptr
      002611 F0               [24] 1737 	movx	@dptr,a
      002612 02 25 60         [24] 1738 	ljmp	00111$
      002615                       1739 00129$:
      002615 90 04 11         [24] 1740 	mov	dptr,#_spi_triangular_wave_number_65536_69
      002618 EE               [12] 1741 	mov	a,r6
      002619 F0               [24] 1742 	movx	@dptr,a
      00261A EF               [12] 1743 	mov	a,r7
      00261B A3               [24] 1744 	inc	dptr
      00261C F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	spi_and_bit_banging.c:596: }
      00261D 22               [24] 1747 	ret
                                   1748 ;------------------------------------------------------------
                                   1749 ;Allocation info for local variables in function 'spi_ramp_signal'
                                   1750 ;------------------------------------------------------------
                                   1751 ;number                    Allocated with name '_spi_ramp_signal_number_65536_76'
                                   1752 ;dac_value_index           Allocated with name '_spi_ramp_signal_dac_value_index_65536_77'
                                   1753 ;dac_data                  Allocated with name '_spi_ramp_signal_dac_data_65536_77'
                                   1754 ;high_byte                 Allocated with name '_spi_ramp_signal_high_byte_65536_77'
                                   1755 ;low_byte                  Allocated with name '_spi_ramp_signal_low_byte_65536_77'
                                   1756 ;i                         Allocated with name '_spi_ramp_signal_i_196608_79'
                                   1757 ;------------------------------------------------------------
                                   1758 ;	spi_and_bit_banging.c:598: void spi_ramp_signal(int number)
                                   1759 ;	-----------------------------------------
                                   1760 ;	 function spi_ramp_signal
                                   1761 ;	-----------------------------------------
      00261E                       1762 _spi_ramp_signal:
      00261E AF 83            [24] 1763 	mov	r7,dph
      002620 E5 82            [12] 1764 	mov	a,dpl
      002622 90 04 17         [24] 1765 	mov	dptr,#_spi_ramp_signal_number_65536_76
      002625 F0               [24] 1766 	movx	@dptr,a
      002626 EF               [12] 1767 	mov	a,r7
      002627 A3               [24] 1768 	inc	dptr
      002628 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	spi_and_bit_banging.c:600: int dac_value_index = 0;
      002629 90 04 19         [24] 1771 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_77
      00262C E4               [12] 1772 	clr	a
      00262D F0               [24] 1773 	movx	@dptr,a
      00262E A3               [24] 1774 	inc	dptr
      00262F F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	spi_and_bit_banging.c:601: int dac_data = 0;
      002630 90 04 1B         [24] 1777 	mov	dptr,#_spi_ramp_signal_dac_data_65536_77
      002633 F0               [24] 1778 	movx	@dptr,a
      002634 A3               [24] 1779 	inc	dptr
      002635 F0               [24] 1780 	movx	@dptr,a
                                   1781 ;	spi_and_bit_banging.c:603: while(number>0)
      002636 90 04 17         [24] 1782 	mov	dptr,#_spi_ramp_signal_number_65536_76
      002639 E0               [24] 1783 	movx	a,@dptr
      00263A FE               [12] 1784 	mov	r6,a
      00263B A3               [24] 1785 	inc	dptr
      00263C E0               [24] 1786 	movx	a,@dptr
      00263D FF               [12] 1787 	mov	r7,a
      00263E                       1788 00111$:
      00263E C3               [12] 1789 	clr	c
      00263F E4               [12] 1790 	clr	a
      002640 9E               [12] 1791 	subb	a,r6
      002641 74 80            [12] 1792 	mov	a,#(0x00 ^ 0x80)
      002643 8F F0            [24] 1793 	mov	b,r7
      002645 63 F0 80         [24] 1794 	xrl	b,#0x80
      002648 95 F0            [12] 1795 	subb	a,b
      00264A 40 03            [24] 1796 	jc	00157$
      00264C 02 26 F3         [24] 1797 	ljmp	00129$
      00264F                       1798 00157$:
                                   1799 ;	spi_and_bit_banging.c:605: for(int i = 0; i<256; i++)
      00264F 7C 00            [12] 1800 	mov	r4,#0x00
      002651 7D 00            [12] 1801 	mov	r5,#0x00
      002653                       1802 00115$:
      002653 C3               [12] 1803 	clr	c
      002654 ED               [12] 1804 	mov	a,r5
      002655 64 80            [12] 1805 	xrl	a,#0x80
      002657 94 81            [12] 1806 	subb	a,#0x81
      002659 40 03            [24] 1807 	jc	00158$
      00265B 02 26 E3         [24] 1808 	ljmp	00110$
      00265E                       1809 00158$:
                                   1810 ;	spi_and_bit_banging.c:608: if(dac_value_index < 256)
      00265E 90 04 19         [24] 1811 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_77
      002661 E0               [24] 1812 	movx	a,@dptr
      002662 FA               [12] 1813 	mov	r2,a
      002663 A3               [24] 1814 	inc	dptr
      002664 E0               [24] 1815 	movx	a,@dptr
      002665 FB               [12] 1816 	mov	r3,a
      002666 C3               [12] 1817 	clr	c
      002667 64 80            [12] 1818 	xrl	a,#0x80
      002669 94 81            [12] 1819 	subb	a,#0x81
      00266B 50 21            [24] 1820 	jnc	00102$
                                   1821 ;	spi_and_bit_banging.c:612: dac_data = trig_dac_values[dac_value_index];
      00266D EA               [12] 1822 	mov	a,r2
      00266E 2A               [12] 1823 	add	a,r2
      00266F FA               [12] 1824 	mov	r2,a
      002670 EB               [12] 1825 	mov	a,r3
      002671 33               [12] 1826 	rlc	a
      002672 FB               [12] 1827 	mov	r3,a
      002673 EA               [12] 1828 	mov	a,r2
      002674 24 AC            [12] 1829 	add	a,#_trig_dac_values
      002676 F5 82            [12] 1830 	mov	dpl,a
      002678 EB               [12] 1831 	mov	a,r3
      002679 34 33            [12] 1832 	addc	a,#(_trig_dac_values >> 8)
      00267B F5 83            [12] 1833 	mov	dph,a
      00267D E4               [12] 1834 	clr	a
      00267E 93               [24] 1835 	movc	a,@a+dptr
      00267F FA               [12] 1836 	mov	r2,a
      002680 A3               [24] 1837 	inc	dptr
      002681 E4               [12] 1838 	clr	a
      002682 93               [24] 1839 	movc	a,@a+dptr
      002683 FB               [12] 1840 	mov	r3,a
      002684 90 04 1B         [24] 1841 	mov	dptr,#_spi_ramp_signal_dac_data_65536_77
      002687 EA               [12] 1842 	mov	a,r2
      002688 F0               [24] 1843 	movx	@dptr,a
      002689 EB               [12] 1844 	mov	a,r3
      00268A A3               [24] 1845 	inc	dptr
      00268B F0               [24] 1846 	movx	@dptr,a
      00268C 80 07            [24] 1847 	sjmp	00103$
      00268E                       1848 00102$:
                                   1849 ;	spi_and_bit_banging.c:616: dac_value_index = 0;  // Reset index for next cycle
      00268E 90 04 19         [24] 1850 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_77
      002691 E4               [12] 1851 	clr	a
      002692 F0               [24] 1852 	movx	@dptr,a
      002693 A3               [24] 1853 	inc	dptr
      002694 F0               [24] 1854 	movx	@dptr,a
      002695                       1855 00103$:
                                   1856 ;	spi_and_bit_banging.c:623: ((dac_data >> 4) & 0x0F);
      002695 90 04 1B         [24] 1857 	mov	dptr,#_spi_ramp_signal_dac_data_65536_77
      002698 E0               [24] 1858 	movx	a,@dptr
      002699 FA               [12] 1859 	mov	r2,a
      00269A A3               [24] 1860 	inc	dptr
      00269B E0               [24] 1861 	movx	a,@dptr
      00269C 8A 00            [24] 1862 	mov	ar0,r2
      00269E C4               [12] 1863 	swap	a
      00269F C8               [12] 1864 	xch	a,r0
      0026A0 C4               [12] 1865 	swap	a
      0026A1 54 0F            [12] 1866 	anl	a,#0x0f
      0026A3 68               [12] 1867 	xrl	a,r0
      0026A4 C8               [12] 1868 	xch	a,r0
      0026A5 54 0F            [12] 1869 	anl	a,#0x0f
      0026A7 C8               [12] 1870 	xch	a,r0
      0026A8 68               [12] 1871 	xrl	a,r0
      0026A9 C8               [12] 1872 	xch	a,r0
      0026AA 30 E3 02         [24] 1873 	jnb	acc.3,00160$
      0026AD 44 F0            [12] 1874 	orl	a,#0xf0
      0026AF                       1875 00160$:
      0026AF 74 0F            [12] 1876 	mov	a,#0x0f
      0026B1 58               [12] 1877 	anl	a,r0
      0026B2 44 10            [12] 1878 	orl	a,#0x10
      0026B4 F9               [12] 1879 	mov	r1,a
                                   1880 ;	spi_and_bit_banging.c:626: low_byte = (dac_data & 0x0F) << 4;
      0026B5 53 02 0F         [24] 1881 	anl	ar2,#0x0f
      0026B8 EA               [12] 1882 	mov	a,r2
      0026B9 C4               [12] 1883 	swap	a
      0026BA 54 F0            [12] 1884 	anl	a,#0xf0
      0026BC FB               [12] 1885 	mov	r3,a
                                   1886 ;	spi_and_bit_banging.c:630: P1_1 = 0;  // Select DAC
                                   1887 ;	assignBit
      0026BD C2 91            [12] 1888 	clr	_P1_1
                                   1889 ;	spi_and_bit_banging.c:633: SPDAT = high_byte;
      0026BF 89 C5            [24] 1890 	mov	_SPDAT,r1
                                   1891 ;	spi_and_bit_banging.c:634: while (!(SPSTA & (1<<7))); 
      0026C1                       1892 00104$:
      0026C1 E5 C4            [12] 1893 	mov	a,_SPSTA
      0026C3 30 E7 FB         [24] 1894 	jnb	acc.7,00104$
                                   1895 ;	spi_and_bit_banging.c:638: SPDAT = low_byte;
      0026C6 8B C5            [24] 1896 	mov	_SPDAT,r3
                                   1897 ;	spi_and_bit_banging.c:639: while (!(SPSTA & (1<<7))); 
      0026C8                       1898 00107$:
      0026C8 E5 C4            [12] 1899 	mov	a,_SPSTA
      0026CA 30 E7 FB         [24] 1900 	jnb	acc.7,00107$
                                   1901 ;	spi_and_bit_banging.c:641: P1_1 = 1;  // Deselect DAC
                                   1902 ;	assignBit
      0026CD D2 91            [12] 1903 	setb	_P1_1
                                   1904 ;	spi_and_bit_banging.c:643: dac_value_index++;
      0026CF 90 04 19         [24] 1905 	mov	dptr,#_spi_ramp_signal_dac_value_index_65536_77
      0026D2 E0               [24] 1906 	movx	a,@dptr
      0026D3 24 01            [12] 1907 	add	a,#0x01
      0026D5 F0               [24] 1908 	movx	@dptr,a
      0026D6 A3               [24] 1909 	inc	dptr
      0026D7 E0               [24] 1910 	movx	a,@dptr
      0026D8 34 00            [12] 1911 	addc	a,#0x00
      0026DA F0               [24] 1912 	movx	@dptr,a
                                   1913 ;	spi_and_bit_banging.c:605: for(int i = 0; i<256; i++)
      0026DB 0C               [12] 1914 	inc	r4
      0026DC BC 00 01         [24] 1915 	cjne	r4,#0x00,00163$
      0026DF 0D               [12] 1916 	inc	r5
      0026E0                       1917 00163$:
      0026E0 02 26 53         [24] 1918 	ljmp	00115$
      0026E3                       1919 00110$:
                                   1920 ;	spi_and_bit_banging.c:646: number = number - 1;
      0026E3 1E               [12] 1921 	dec	r6
      0026E4 BE FF 01         [24] 1922 	cjne	r6,#0xff,00164$
      0026E7 1F               [12] 1923 	dec	r7
      0026E8                       1924 00164$:
      0026E8 90 04 17         [24] 1925 	mov	dptr,#_spi_ramp_signal_number_65536_76
      0026EB EE               [12] 1926 	mov	a,r6
      0026EC F0               [24] 1927 	movx	@dptr,a
      0026ED EF               [12] 1928 	mov	a,r7
      0026EE A3               [24] 1929 	inc	dptr
      0026EF F0               [24] 1930 	movx	@dptr,a
      0026F0 02 26 3E         [24] 1931 	ljmp	00111$
      0026F3                       1932 00129$:
      0026F3 90 04 17         [24] 1933 	mov	dptr,#_spi_ramp_signal_number_65536_76
      0026F6 EE               [12] 1934 	mov	a,r6
      0026F7 F0               [24] 1935 	movx	@dptr,a
      0026F8 EF               [12] 1936 	mov	a,r7
      0026F9 A3               [24] 1937 	inc	dptr
      0026FA F0               [24] 1938 	movx	@dptr,a
                                   1939 ;	spi_and_bit_banging.c:649: }
      0026FB 22               [24] 1940 	ret
                                   1941 	.area CSEG    (CODE)
                                   1942 	.area CONST   (CODE)
      0031AC                       1943 _dac_values:
      0031AC 80 00                 1944 	.byte #0x80, #0x00	;  128
      0031AE 83 00                 1945 	.byte #0x83, #0x00	;  131
      0031B0 86 00                 1946 	.byte #0x86, #0x00	;  134
      0031B2 89 00                 1947 	.byte #0x89, #0x00	;  137
      0031B4 8C 00                 1948 	.byte #0x8c, #0x00	;  140
      0031B6 90 00                 1949 	.byte #0x90, #0x00	;  144
      0031B8 93 00                 1950 	.byte #0x93, #0x00	;  147
      0031BA 96 00                 1951 	.byte #0x96, #0x00	;  150
      0031BC 99 00                 1952 	.byte #0x99, #0x00	;  153
      0031BE 9C 00                 1953 	.byte #0x9c, #0x00	;  156
      0031C0 9F 00                 1954 	.byte #0x9f, #0x00	;  159
      0031C2 A2 00                 1955 	.byte #0xa2, #0x00	;  162
      0031C4 A5 00                 1956 	.byte #0xa5, #0x00	;  165
      0031C6 A8 00                 1957 	.byte #0xa8, #0x00	;  168
      0031C8 AB 00                 1958 	.byte #0xab, #0x00	;  171
      0031CA AE 00                 1959 	.byte #0xae, #0x00	;  174
      0031CC B1 00                 1960 	.byte #0xb1, #0x00	;  177
      0031CE B3 00                 1961 	.byte #0xb3, #0x00	;  179
      0031D0 B6 00                 1962 	.byte #0xb6, #0x00	;  182
      0031D2 B9 00                 1963 	.byte #0xb9, #0x00	;  185
      0031D4 BC 00                 1964 	.byte #0xbc, #0x00	;  188
      0031D6 BF 00                 1965 	.byte #0xbf, #0x00	;  191
      0031D8 C1 00                 1966 	.byte #0xc1, #0x00	;  193
      0031DA C4 00                 1967 	.byte #0xc4, #0x00	;  196
      0031DC C7 00                 1968 	.byte #0xc7, #0x00	;  199
      0031DE C9 00                 1969 	.byte #0xc9, #0x00	;  201
      0031E0 CC 00                 1970 	.byte #0xcc, #0x00	;  204
      0031E2 CE 00                 1971 	.byte #0xce, #0x00	;  206
      0031E4 D1 00                 1972 	.byte #0xd1, #0x00	;  209
      0031E6 D3 00                 1973 	.byte #0xd3, #0x00	;  211
      0031E8 D5 00                 1974 	.byte #0xd5, #0x00	;  213
      0031EA D8 00                 1975 	.byte #0xd8, #0x00	;  216
      0031EC DA 00                 1976 	.byte #0xda, #0x00	;  218
      0031EE DC 00                 1977 	.byte #0xdc, #0x00	;  220
      0031F0 DE 00                 1978 	.byte #0xde, #0x00	;  222
      0031F2 E0 00                 1979 	.byte #0xe0, #0x00	;  224
      0031F4 E2 00                 1980 	.byte #0xe2, #0x00	;  226
      0031F6 E4 00                 1981 	.byte #0xe4, #0x00	;  228
      0031F8 E6 00                 1982 	.byte #0xe6, #0x00	;  230
      0031FA E8 00                 1983 	.byte #0xe8, #0x00	;  232
      0031FC EA 00                 1984 	.byte #0xea, #0x00	;  234
      0031FE EB 00                 1985 	.byte #0xeb, #0x00	;  235
      003200 ED 00                 1986 	.byte #0xed, #0x00	;  237
      003202 EF 00                 1987 	.byte #0xef, #0x00	;  239
      003204 F0 00                 1988 	.byte #0xf0, #0x00	;  240
      003206 F1 00                 1989 	.byte #0xf1, #0x00	;  241
      003208 F3 00                 1990 	.byte #0xf3, #0x00	;  243
      00320A F4 00                 1991 	.byte #0xf4, #0x00	;  244
      00320C F5 00                 1992 	.byte #0xf5, #0x00	;  245
      00320E F6 00                 1993 	.byte #0xf6, #0x00	;  246
      003210 F8 00                 1994 	.byte #0xf8, #0x00	;  248
      003212 F9 00                 1995 	.byte #0xf9, #0x00	;  249
      003214 FA 00                 1996 	.byte #0xfa, #0x00	;  250
      003216 FA 00                 1997 	.byte #0xfa, #0x00	;  250
      003218 FB 00                 1998 	.byte #0xfb, #0x00	;  251
      00321A FC 00                 1999 	.byte #0xfc, #0x00	;  252
      00321C FD 00                 2000 	.byte #0xfd, #0x00	;  253
      00321E FD 00                 2001 	.byte #0xfd, #0x00	;  253
      003220 FE 00                 2002 	.byte #0xfe, #0x00	;  254
      003222 FE 00                 2003 	.byte #0xfe, #0x00	;  254
      003224 FE 00                 2004 	.byte #0xfe, #0x00	;  254
      003226 FF 00                 2005 	.byte #0xff, #0x00	;  255
      003228 FF 00                 2006 	.byte #0xff, #0x00	;  255
      00322A FF 00                 2007 	.byte #0xff, #0x00	;  255
      00322C FF 00                 2008 	.byte #0xff, #0x00	;  255
      00322E FF 00                 2009 	.byte #0xff, #0x00	;  255
      003230 FF 00                 2010 	.byte #0xff, #0x00	;  255
      003232 FF 00                 2011 	.byte #0xff, #0x00	;  255
      003234 FE 00                 2012 	.byte #0xfe, #0x00	;  254
      003236 FE 00                 2013 	.byte #0xfe, #0x00	;  254
      003238 FE 00                 2014 	.byte #0xfe, #0x00	;  254
      00323A FD 00                 2015 	.byte #0xfd, #0x00	;  253
      00323C FD 00                 2016 	.byte #0xfd, #0x00	;  253
      00323E FC 00                 2017 	.byte #0xfc, #0x00	;  252
      003240 FB 00                 2018 	.byte #0xfb, #0x00	;  251
      003242 FA 00                 2019 	.byte #0xfa, #0x00	;  250
      003244 FA 00                 2020 	.byte #0xfa, #0x00	;  250
      003246 F9 00                 2021 	.byte #0xf9, #0x00	;  249
      003248 F8 00                 2022 	.byte #0xf8, #0x00	;  248
      00324A F6 00                 2023 	.byte #0xf6, #0x00	;  246
      00324C F5 00                 2024 	.byte #0xf5, #0x00	;  245
      00324E F4 00                 2025 	.byte #0xf4, #0x00	;  244
      003250 F3 00                 2026 	.byte #0xf3, #0x00	;  243
      003252 F1 00                 2027 	.byte #0xf1, #0x00	;  241
      003254 F0 00                 2028 	.byte #0xf0, #0x00	;  240
      003256 EF 00                 2029 	.byte #0xef, #0x00	;  239
      003258 ED 00                 2030 	.byte #0xed, #0x00	;  237
      00325A EB 00                 2031 	.byte #0xeb, #0x00	;  235
      00325C EA 00                 2032 	.byte #0xea, #0x00	;  234
      00325E E8 00                 2033 	.byte #0xe8, #0x00	;  232
      003260 E6 00                 2034 	.byte #0xe6, #0x00	;  230
      003262 E4 00                 2035 	.byte #0xe4, #0x00	;  228
      003264 E2 00                 2036 	.byte #0xe2, #0x00	;  226
      003266 E0 00                 2037 	.byte #0xe0, #0x00	;  224
      003268 DE 00                 2038 	.byte #0xde, #0x00	;  222
      00326A DC 00                 2039 	.byte #0xdc, #0x00	;  220
      00326C DA 00                 2040 	.byte #0xda, #0x00	;  218
      00326E D8 00                 2041 	.byte #0xd8, #0x00	;  216
      003270 D5 00                 2042 	.byte #0xd5, #0x00	;  213
      003272 D3 00                 2043 	.byte #0xd3, #0x00	;  211
      003274 D1 00                 2044 	.byte #0xd1, #0x00	;  209
      003276 CE 00                 2045 	.byte #0xce, #0x00	;  206
      003278 CC 00                 2046 	.byte #0xcc, #0x00	;  204
      00327A C9 00                 2047 	.byte #0xc9, #0x00	;  201
      00327C C7 00                 2048 	.byte #0xc7, #0x00	;  199
      00327E C4 00                 2049 	.byte #0xc4, #0x00	;  196
      003280 C1 00                 2050 	.byte #0xc1, #0x00	;  193
      003282 BF 00                 2051 	.byte #0xbf, #0x00	;  191
      003284 BC 00                 2052 	.byte #0xbc, #0x00	;  188
      003286 B9 00                 2053 	.byte #0xb9, #0x00	;  185
      003288 B6 00                 2054 	.byte #0xb6, #0x00	;  182
      00328A B3 00                 2055 	.byte #0xb3, #0x00	;  179
      00328C B1 00                 2056 	.byte #0xb1, #0x00	;  177
      00328E AE 00                 2057 	.byte #0xae, #0x00	;  174
      003290 AB 00                 2058 	.byte #0xab, #0x00	;  171
      003292 A8 00                 2059 	.byte #0xa8, #0x00	;  168
      003294 A5 00                 2060 	.byte #0xa5, #0x00	;  165
      003296 A2 00                 2061 	.byte #0xa2, #0x00	;  162
      003298 9F 00                 2062 	.byte #0x9f, #0x00	;  159
      00329A 9C 00                 2063 	.byte #0x9c, #0x00	;  156
      00329C 99 00                 2064 	.byte #0x99, #0x00	;  153
      00329E 96 00                 2065 	.byte #0x96, #0x00	;  150
      0032A0 93 00                 2066 	.byte #0x93, #0x00	;  147
      0032A2 90 00                 2067 	.byte #0x90, #0x00	;  144
      0032A4 8C 00                 2068 	.byte #0x8c, #0x00	;  140
      0032A6 89 00                 2069 	.byte #0x89, #0x00	;  137
      0032A8 86 00                 2070 	.byte #0x86, #0x00	;  134
      0032AA 83 00                 2071 	.byte #0x83, #0x00	;  131
      0032AC 80 00                 2072 	.byte #0x80, #0x00	;  128
      0032AE 7D 00                 2073 	.byte #0x7d, #0x00	;  125
      0032B0 7A 00                 2074 	.byte #0x7a, #0x00	;  122
      0032B2 77 00                 2075 	.byte #0x77, #0x00	;  119
      0032B4 74 00                 2076 	.byte #0x74, #0x00	;  116
      0032B6 70 00                 2077 	.byte #0x70, #0x00	;  112
      0032B8 6D 00                 2078 	.byte #0x6d, #0x00	;  109
      0032BA 6A 00                 2079 	.byte #0x6a, #0x00	;  106
      0032BC 67 00                 2080 	.byte #0x67, #0x00	;  103
      0032BE 64 00                 2081 	.byte #0x64, #0x00	;  100
      0032C0 61 00                 2082 	.byte #0x61, #0x00	;  97
      0032C2 5E 00                 2083 	.byte #0x5e, #0x00	;  94
      0032C4 5B 00                 2084 	.byte #0x5b, #0x00	;  91
      0032C6 58 00                 2085 	.byte #0x58, #0x00	;  88
      0032C8 55 00                 2086 	.byte #0x55, #0x00	;  85
      0032CA 52 00                 2087 	.byte #0x52, #0x00	;  82
      0032CC 4F 00                 2088 	.byte #0x4f, #0x00	;  79
      0032CE 4D 00                 2089 	.byte #0x4d, #0x00	;  77
      0032D0 4A 00                 2090 	.byte #0x4a, #0x00	;  74
      0032D2 47 00                 2091 	.byte #0x47, #0x00	;  71
      0032D4 44 00                 2092 	.byte #0x44, #0x00	;  68
      0032D6 41 00                 2093 	.byte #0x41, #0x00	;  65
      0032D8 3F 00                 2094 	.byte #0x3f, #0x00	;  63
      0032DA 3C 00                 2095 	.byte #0x3c, #0x00	;  60
      0032DC 39 00                 2096 	.byte #0x39, #0x00	;  57
      0032DE 37 00                 2097 	.byte #0x37, #0x00	;  55
      0032E0 34 00                 2098 	.byte #0x34, #0x00	;  52
      0032E2 32 00                 2099 	.byte #0x32, #0x00	;  50
      0032E4 2F 00                 2100 	.byte #0x2f, #0x00	;  47
      0032E6 2D 00                 2101 	.byte #0x2d, #0x00	;  45
      0032E8 2B 00                 2102 	.byte #0x2b, #0x00	;  43
      0032EA 28 00                 2103 	.byte #0x28, #0x00	;  40
      0032EC 26 00                 2104 	.byte #0x26, #0x00	;  38
      0032EE 24 00                 2105 	.byte #0x24, #0x00	;  36
      0032F0 22 00                 2106 	.byte #0x22, #0x00	;  34
      0032F2 20 00                 2107 	.byte #0x20, #0x00	;  32
      0032F4 1E 00                 2108 	.byte #0x1e, #0x00	;  30
      0032F6 1C 00                 2109 	.byte #0x1c, #0x00	;  28
      0032F8 1A 00                 2110 	.byte #0x1a, #0x00	;  26
      0032FA 18 00                 2111 	.byte #0x18, #0x00	;  24
      0032FC 16 00                 2112 	.byte #0x16, #0x00	;  22
      0032FE 15 00                 2113 	.byte #0x15, #0x00	;  21
      003300 13 00                 2114 	.byte #0x13, #0x00	;  19
      003302 11 00                 2115 	.byte #0x11, #0x00	;  17
      003304 10 00                 2116 	.byte #0x10, #0x00	;  16
      003306 0F 00                 2117 	.byte #0x0f, #0x00	;  15
      003308 0D 00                 2118 	.byte #0x0d, #0x00	;  13
      00330A 0C 00                 2119 	.byte #0x0c, #0x00	;  12
      00330C 0B 00                 2120 	.byte #0x0b, #0x00	;  11
      00330E 0A 00                 2121 	.byte #0x0a, #0x00	;  10
      003310 08 00                 2122 	.byte #0x08, #0x00	;  8
      003312 07 00                 2123 	.byte #0x07, #0x00	;  7
      003314 06 00                 2124 	.byte #0x06, #0x00	;  6
      003316 06 00                 2125 	.byte #0x06, #0x00	;  6
      003318 05 00                 2126 	.byte #0x05, #0x00	;  5
      00331A 04 00                 2127 	.byte #0x04, #0x00	;  4
      00331C 03 00                 2128 	.byte #0x03, #0x00	;  3
      00331E 03 00                 2129 	.byte #0x03, #0x00	;  3
      003320 02 00                 2130 	.byte #0x02, #0x00	;  2
      003322 02 00                 2131 	.byte #0x02, #0x00	;  2
      003324 02 00                 2132 	.byte #0x02, #0x00	;  2
      003326 01 00                 2133 	.byte #0x01, #0x00	;  1
      003328 01 00                 2134 	.byte #0x01, #0x00	;  1
      00332A 01 00                 2135 	.byte #0x01, #0x00	;  1
      00332C 01 00                 2136 	.byte #0x01, #0x00	;  1
      00332E 01 00                 2137 	.byte #0x01, #0x00	;  1
      003330 01 00                 2138 	.byte #0x01, #0x00	;  1
      003332 01 00                 2139 	.byte #0x01, #0x00	;  1
      003334 02 00                 2140 	.byte #0x02, #0x00	;  2
      003336 02 00                 2141 	.byte #0x02, #0x00	;  2
      003338 02 00                 2142 	.byte #0x02, #0x00	;  2
      00333A 03 00                 2143 	.byte #0x03, #0x00	;  3
      00333C 03 00                 2144 	.byte #0x03, #0x00	;  3
      00333E 04 00                 2145 	.byte #0x04, #0x00	;  4
      003340 05 00                 2146 	.byte #0x05, #0x00	;  5
      003342 06 00                 2147 	.byte #0x06, #0x00	;  6
      003344 06 00                 2148 	.byte #0x06, #0x00	;  6
      003346 07 00                 2149 	.byte #0x07, #0x00	;  7
      003348 08 00                 2150 	.byte #0x08, #0x00	;  8
      00334A 0A 00                 2151 	.byte #0x0a, #0x00	;  10
      00334C 0B 00                 2152 	.byte #0x0b, #0x00	;  11
      00334E 0C 00                 2153 	.byte #0x0c, #0x00	;  12
      003350 0D 00                 2154 	.byte #0x0d, #0x00	;  13
      003352 0F 00                 2155 	.byte #0x0f, #0x00	;  15
      003354 10 00                 2156 	.byte #0x10, #0x00	;  16
      003356 11 00                 2157 	.byte #0x11, #0x00	;  17
      003358 13 00                 2158 	.byte #0x13, #0x00	;  19
      00335A 15 00                 2159 	.byte #0x15, #0x00	;  21
      00335C 16 00                 2160 	.byte #0x16, #0x00	;  22
      00335E 18 00                 2161 	.byte #0x18, #0x00	;  24
      003360 1A 00                 2162 	.byte #0x1a, #0x00	;  26
      003362 1C 00                 2163 	.byte #0x1c, #0x00	;  28
      003364 1E 00                 2164 	.byte #0x1e, #0x00	;  30
      003366 20 00                 2165 	.byte #0x20, #0x00	;  32
      003368 22 00                 2166 	.byte #0x22, #0x00	;  34
      00336A 24 00                 2167 	.byte #0x24, #0x00	;  36
      00336C 26 00                 2168 	.byte #0x26, #0x00	;  38
      00336E 28 00                 2169 	.byte #0x28, #0x00	;  40
      003370 2B 00                 2170 	.byte #0x2b, #0x00	;  43
      003372 2D 00                 2171 	.byte #0x2d, #0x00	;  45
      003374 2F 00                 2172 	.byte #0x2f, #0x00	;  47
      003376 32 00                 2173 	.byte #0x32, #0x00	;  50
      003378 34 00                 2174 	.byte #0x34, #0x00	;  52
      00337A 37 00                 2175 	.byte #0x37, #0x00	;  55
      00337C 39 00                 2176 	.byte #0x39, #0x00	;  57
      00337E 3C 00                 2177 	.byte #0x3c, #0x00	;  60
      003380 3F 00                 2178 	.byte #0x3f, #0x00	;  63
      003382 41 00                 2179 	.byte #0x41, #0x00	;  65
      003384 44 00                 2180 	.byte #0x44, #0x00	;  68
      003386 47 00                 2181 	.byte #0x47, #0x00	;  71
      003388 4A 00                 2182 	.byte #0x4a, #0x00	;  74
      00338A 4D 00                 2183 	.byte #0x4d, #0x00	;  77
      00338C 4F 00                 2184 	.byte #0x4f, #0x00	;  79
      00338E 52 00                 2185 	.byte #0x52, #0x00	;  82
      003390 55 00                 2186 	.byte #0x55, #0x00	;  85
      003392 58 00                 2187 	.byte #0x58, #0x00	;  88
      003394 5B 00                 2188 	.byte #0x5b, #0x00	;  91
      003396 5E 00                 2189 	.byte #0x5e, #0x00	;  94
      003398 61 00                 2190 	.byte #0x61, #0x00	;  97
      00339A 64 00                 2191 	.byte #0x64, #0x00	;  100
      00339C 67 00                 2192 	.byte #0x67, #0x00	;  103
      00339E 6A 00                 2193 	.byte #0x6a, #0x00	;  106
      0033A0 6D 00                 2194 	.byte #0x6d, #0x00	;  109
      0033A2 70 00                 2195 	.byte #0x70, #0x00	;  112
      0033A4 74 00                 2196 	.byte #0x74, #0x00	;  116
      0033A6 77 00                 2197 	.byte #0x77, #0x00	;  119
      0033A8 7A 00                 2198 	.byte #0x7a, #0x00	;  122
      0033AA 7D 00                 2199 	.byte #0x7d, #0x00	;  125
      0033AC                       2200 _trig_dac_values:
      0033AC 00 00                 2201 	.byte #0x00, #0x00	;  0
      0033AE 01 00                 2202 	.byte #0x01, #0x00	;  1
      0033B0 02 00                 2203 	.byte #0x02, #0x00	;  2
      0033B2 03 00                 2204 	.byte #0x03, #0x00	;  3
      0033B4 04 00                 2205 	.byte #0x04, #0x00	;  4
      0033B6 05 00                 2206 	.byte #0x05, #0x00	;  5
      0033B8 06 00                 2207 	.byte #0x06, #0x00	;  6
      0033BA 07 00                 2208 	.byte #0x07, #0x00	;  7
      0033BC 08 00                 2209 	.byte #0x08, #0x00	;  8
      0033BE 09 00                 2210 	.byte #0x09, #0x00	;  9
      0033C0 0A 00                 2211 	.byte #0x0a, #0x00	;  10
      0033C2 0B 00                 2212 	.byte #0x0b, #0x00	;  11
      0033C4 0C 00                 2213 	.byte #0x0c, #0x00	;  12
      0033C6 0D 00                 2214 	.byte #0x0d, #0x00	;  13
      0033C8 0E 00                 2215 	.byte #0x0e, #0x00	;  14
      0033CA 0F 00                 2216 	.byte #0x0f, #0x00	;  15
      0033CC 10 00                 2217 	.byte #0x10, #0x00	;  16
      0033CE 11 00                 2218 	.byte #0x11, #0x00	;  17
      0033D0 12 00                 2219 	.byte #0x12, #0x00	;  18
      0033D2 13 00                 2220 	.byte #0x13, #0x00	;  19
      0033D4 14 00                 2221 	.byte #0x14, #0x00	;  20
      0033D6 15 00                 2222 	.byte #0x15, #0x00	;  21
      0033D8 16 00                 2223 	.byte #0x16, #0x00	;  22
      0033DA 17 00                 2224 	.byte #0x17, #0x00	;  23
      0033DC 18 00                 2225 	.byte #0x18, #0x00	;  24
      0033DE 19 00                 2226 	.byte #0x19, #0x00	;  25
      0033E0 1A 00                 2227 	.byte #0x1a, #0x00	;  26
      0033E2 1B 00                 2228 	.byte #0x1b, #0x00	;  27
      0033E4 1C 00                 2229 	.byte #0x1c, #0x00	;  28
      0033E6 1D 00                 2230 	.byte #0x1d, #0x00	;  29
      0033E8 1E 00                 2231 	.byte #0x1e, #0x00	;  30
      0033EA 1F 00                 2232 	.byte #0x1f, #0x00	;  31
      0033EC 20 00                 2233 	.byte #0x20, #0x00	;  32
      0033EE 21 00                 2234 	.byte #0x21, #0x00	;  33
      0033F0 22 00                 2235 	.byte #0x22, #0x00	;  34
      0033F2 23 00                 2236 	.byte #0x23, #0x00	;  35
      0033F4 24 00                 2237 	.byte #0x24, #0x00	;  36
      0033F6 25 00                 2238 	.byte #0x25, #0x00	;  37
      0033F8 26 00                 2239 	.byte #0x26, #0x00	;  38
      0033FA 27 00                 2240 	.byte #0x27, #0x00	;  39
      0033FC 28 00                 2241 	.byte #0x28, #0x00	;  40
      0033FE 29 00                 2242 	.byte #0x29, #0x00	;  41
      003400 2A 00                 2243 	.byte #0x2a, #0x00	;  42
      003402 2B 00                 2244 	.byte #0x2b, #0x00	;  43
      003404 2C 00                 2245 	.byte #0x2c, #0x00	;  44
      003406 2D 00                 2246 	.byte #0x2d, #0x00	;  45
      003408 2E 00                 2247 	.byte #0x2e, #0x00	;  46
      00340A 2F 00                 2248 	.byte #0x2f, #0x00	;  47
      00340C 30 00                 2249 	.byte #0x30, #0x00	;  48
      00340E 31 00                 2250 	.byte #0x31, #0x00	;  49
      003410 32 00                 2251 	.byte #0x32, #0x00	;  50
      003412 33 00                 2252 	.byte #0x33, #0x00	;  51
      003414 34 00                 2253 	.byte #0x34, #0x00	;  52
      003416 35 00                 2254 	.byte #0x35, #0x00	;  53
      003418 36 00                 2255 	.byte #0x36, #0x00	;  54
      00341A 37 00                 2256 	.byte #0x37, #0x00	;  55
      00341C 38 00                 2257 	.byte #0x38, #0x00	;  56
      00341E 39 00                 2258 	.byte #0x39, #0x00	;  57
      003420 3A 00                 2259 	.byte #0x3a, #0x00	;  58
      003422 3B 00                 2260 	.byte #0x3b, #0x00	;  59
      003424 3C 00                 2261 	.byte #0x3c, #0x00	;  60
      003426 3D 00                 2262 	.byte #0x3d, #0x00	;  61
      003428 3E 00                 2263 	.byte #0x3e, #0x00	;  62
      00342A 3F 00                 2264 	.byte #0x3f, #0x00	;  63
      00342C 40 00                 2265 	.byte #0x40, #0x00	;  64
      00342E 41 00                 2266 	.byte #0x41, #0x00	;  65
      003430 42 00                 2267 	.byte #0x42, #0x00	;  66
      003432 43 00                 2268 	.byte #0x43, #0x00	;  67
      003434 44 00                 2269 	.byte #0x44, #0x00	;  68
      003436 45 00                 2270 	.byte #0x45, #0x00	;  69
      003438 46 00                 2271 	.byte #0x46, #0x00	;  70
      00343A 47 00                 2272 	.byte #0x47, #0x00	;  71
      00343C 48 00                 2273 	.byte #0x48, #0x00	;  72
      00343E 49 00                 2274 	.byte #0x49, #0x00	;  73
      003440 4A 00                 2275 	.byte #0x4a, #0x00	;  74
      003442 4B 00                 2276 	.byte #0x4b, #0x00	;  75
      003444 4C 00                 2277 	.byte #0x4c, #0x00	;  76
      003446 4D 00                 2278 	.byte #0x4d, #0x00	;  77
      003448 4E 00                 2279 	.byte #0x4e, #0x00	;  78
      00344A 4F 00                 2280 	.byte #0x4f, #0x00	;  79
      00344C 50 00                 2281 	.byte #0x50, #0x00	;  80
      00344E 51 00                 2282 	.byte #0x51, #0x00	;  81
      003450 52 00                 2283 	.byte #0x52, #0x00	;  82
      003452 53 00                 2284 	.byte #0x53, #0x00	;  83
      003454 54 00                 2285 	.byte #0x54, #0x00	;  84
      003456 55 00                 2286 	.byte #0x55, #0x00	;  85
      003458 56 00                 2287 	.byte #0x56, #0x00	;  86
      00345A 57 00                 2288 	.byte #0x57, #0x00	;  87
      00345C 58 00                 2289 	.byte #0x58, #0x00	;  88
      00345E 59 00                 2290 	.byte #0x59, #0x00	;  89
      003460 5A 00                 2291 	.byte #0x5a, #0x00	;  90
      003462 5B 00                 2292 	.byte #0x5b, #0x00	;  91
      003464 5C 00                 2293 	.byte #0x5c, #0x00	;  92
      003466 5D 00                 2294 	.byte #0x5d, #0x00	;  93
      003468 5E 00                 2295 	.byte #0x5e, #0x00	;  94
      00346A 5F 00                 2296 	.byte #0x5f, #0x00	;  95
      00346C 60 00                 2297 	.byte #0x60, #0x00	;  96
      00346E 61 00                 2298 	.byte #0x61, #0x00	;  97
      003470 62 00                 2299 	.byte #0x62, #0x00	;  98
      003472 63 00                 2300 	.byte #0x63, #0x00	;  99
      003474 64 00                 2301 	.byte #0x64, #0x00	;  100
      003476 65 00                 2302 	.byte #0x65, #0x00	;  101
      003478 66 00                 2303 	.byte #0x66, #0x00	;  102
      00347A 67 00                 2304 	.byte #0x67, #0x00	;  103
      00347C 68 00                 2305 	.byte #0x68, #0x00	;  104
      00347E 69 00                 2306 	.byte #0x69, #0x00	;  105
      003480 6A 00                 2307 	.byte #0x6a, #0x00	;  106
      003482 6B 00                 2308 	.byte #0x6b, #0x00	;  107
      003484 6C 00                 2309 	.byte #0x6c, #0x00	;  108
      003486 6D 00                 2310 	.byte #0x6d, #0x00	;  109
      003488 6E 00                 2311 	.byte #0x6e, #0x00	;  110
      00348A 6F 00                 2312 	.byte #0x6f, #0x00	;  111
      00348C 70 00                 2313 	.byte #0x70, #0x00	;  112
      00348E 71 00                 2314 	.byte #0x71, #0x00	;  113
      003490 72 00                 2315 	.byte #0x72, #0x00	;  114
      003492 73 00                 2316 	.byte #0x73, #0x00	;  115
      003494 74 00                 2317 	.byte #0x74, #0x00	;  116
      003496 75 00                 2318 	.byte #0x75, #0x00	;  117
      003498 76 00                 2319 	.byte #0x76, #0x00	;  118
      00349A 77 00                 2320 	.byte #0x77, #0x00	;  119
      00349C 78 00                 2321 	.byte #0x78, #0x00	;  120
      00349E 79 00                 2322 	.byte #0x79, #0x00	;  121
      0034A0 7A 00                 2323 	.byte #0x7a, #0x00	;  122
      0034A2 7B 00                 2324 	.byte #0x7b, #0x00	;  123
      0034A4 7C 00                 2325 	.byte #0x7c, #0x00	;  124
      0034A6 7D 00                 2326 	.byte #0x7d, #0x00	;  125
      0034A8 7E 00                 2327 	.byte #0x7e, #0x00	;  126
      0034AA 7F 00                 2328 	.byte #0x7f, #0x00	;  127
      0034AC 80 00                 2329 	.byte #0x80, #0x00	;  128
      0034AE 81 00                 2330 	.byte #0x81, #0x00	;  129
      0034B0 82 00                 2331 	.byte #0x82, #0x00	;  130
      0034B2 83 00                 2332 	.byte #0x83, #0x00	;  131
      0034B4 84 00                 2333 	.byte #0x84, #0x00	;  132
      0034B6 85 00                 2334 	.byte #0x85, #0x00	;  133
      0034B8 86 00                 2335 	.byte #0x86, #0x00	;  134
      0034BA 87 00                 2336 	.byte #0x87, #0x00	;  135
      0034BC 88 00                 2337 	.byte #0x88, #0x00	;  136
      0034BE 89 00                 2338 	.byte #0x89, #0x00	;  137
      0034C0 8A 00                 2339 	.byte #0x8a, #0x00	;  138
      0034C2 8B 00                 2340 	.byte #0x8b, #0x00	;  139
      0034C4 8C 00                 2341 	.byte #0x8c, #0x00	;  140
      0034C6 8D 00                 2342 	.byte #0x8d, #0x00	;  141
      0034C8 8E 00                 2343 	.byte #0x8e, #0x00	;  142
      0034CA 8F 00                 2344 	.byte #0x8f, #0x00	;  143
      0034CC 90 00                 2345 	.byte #0x90, #0x00	;  144
      0034CE 91 00                 2346 	.byte #0x91, #0x00	;  145
      0034D0 92 00                 2347 	.byte #0x92, #0x00	;  146
      0034D2 93 00                 2348 	.byte #0x93, #0x00	;  147
      0034D4 94 00                 2349 	.byte #0x94, #0x00	;  148
      0034D6 95 00                 2350 	.byte #0x95, #0x00	;  149
      0034D8 96 00                 2351 	.byte #0x96, #0x00	;  150
      0034DA 97 00                 2352 	.byte #0x97, #0x00	;  151
      0034DC 98 00                 2353 	.byte #0x98, #0x00	;  152
      0034DE 99 00                 2354 	.byte #0x99, #0x00	;  153
      0034E0 9A 00                 2355 	.byte #0x9a, #0x00	;  154
      0034E2 9B 00                 2356 	.byte #0x9b, #0x00	;  155
      0034E4 9C 00                 2357 	.byte #0x9c, #0x00	;  156
      0034E6 9D 00                 2358 	.byte #0x9d, #0x00	;  157
      0034E8 9E 00                 2359 	.byte #0x9e, #0x00	;  158
      0034EA 9F 00                 2360 	.byte #0x9f, #0x00	;  159
      0034EC A0 00                 2361 	.byte #0xa0, #0x00	;  160
      0034EE A1 00                 2362 	.byte #0xa1, #0x00	;  161
      0034F0 A2 00                 2363 	.byte #0xa2, #0x00	;  162
      0034F2 A3 00                 2364 	.byte #0xa3, #0x00	;  163
      0034F4 A4 00                 2365 	.byte #0xa4, #0x00	;  164
      0034F6 A5 00                 2366 	.byte #0xa5, #0x00	;  165
      0034F8 A6 00                 2367 	.byte #0xa6, #0x00	;  166
      0034FA A7 00                 2368 	.byte #0xa7, #0x00	;  167
      0034FC A8 00                 2369 	.byte #0xa8, #0x00	;  168
      0034FE A9 00                 2370 	.byte #0xa9, #0x00	;  169
      003500 AA 00                 2371 	.byte #0xaa, #0x00	;  170
      003502 AB 00                 2372 	.byte #0xab, #0x00	;  171
      003504 AC 00                 2373 	.byte #0xac, #0x00	;  172
      003506 AD 00                 2374 	.byte #0xad, #0x00	;  173
      003508 AE 00                 2375 	.byte #0xae, #0x00	;  174
      00350A AF 00                 2376 	.byte #0xaf, #0x00	;  175
      00350C B0 00                 2377 	.byte #0xb0, #0x00	;  176
      00350E B1 00                 2378 	.byte #0xb1, #0x00	;  177
      003510 B2 00                 2379 	.byte #0xb2, #0x00	;  178
      003512 B3 00                 2380 	.byte #0xb3, #0x00	;  179
      003514 B4 00                 2381 	.byte #0xb4, #0x00	;  180
      003516 B5 00                 2382 	.byte #0xb5, #0x00	;  181
      003518 B6 00                 2383 	.byte #0xb6, #0x00	;  182
      00351A B7 00                 2384 	.byte #0xb7, #0x00	;  183
      00351C B8 00                 2385 	.byte #0xb8, #0x00	;  184
      00351E B9 00                 2386 	.byte #0xb9, #0x00	;  185
      003520 BA 00                 2387 	.byte #0xba, #0x00	;  186
      003522 BB 00                 2388 	.byte #0xbb, #0x00	;  187
      003524 BC 00                 2389 	.byte #0xbc, #0x00	;  188
      003526 BD 00                 2390 	.byte #0xbd, #0x00	;  189
      003528 BE 00                 2391 	.byte #0xbe, #0x00	;  190
      00352A BF 00                 2392 	.byte #0xbf, #0x00	;  191
      00352C C0 00                 2393 	.byte #0xc0, #0x00	;  192
      00352E C1 00                 2394 	.byte #0xc1, #0x00	;  193
      003530 C2 00                 2395 	.byte #0xc2, #0x00	;  194
      003532 C3 00                 2396 	.byte #0xc3, #0x00	;  195
      003534 C4 00                 2397 	.byte #0xc4, #0x00	;  196
      003536 C5 00                 2398 	.byte #0xc5, #0x00	;  197
      003538 C6 00                 2399 	.byte #0xc6, #0x00	;  198
      00353A C7 00                 2400 	.byte #0xc7, #0x00	;  199
      00353C C8 00                 2401 	.byte #0xc8, #0x00	;  200
      00353E C9 00                 2402 	.byte #0xc9, #0x00	;  201
      003540 CA 00                 2403 	.byte #0xca, #0x00	;  202
      003542 CB 00                 2404 	.byte #0xcb, #0x00	;  203
      003544 CC 00                 2405 	.byte #0xcc, #0x00	;  204
      003546 CD 00                 2406 	.byte #0xcd, #0x00	;  205
      003548 CE 00                 2407 	.byte #0xce, #0x00	;  206
      00354A CF 00                 2408 	.byte #0xcf, #0x00	;  207
      00354C D0 00                 2409 	.byte #0xd0, #0x00	;  208
      00354E D1 00                 2410 	.byte #0xd1, #0x00	;  209
      003550 D2 00                 2411 	.byte #0xd2, #0x00	;  210
      003552 D3 00                 2412 	.byte #0xd3, #0x00	;  211
      003554 D4 00                 2413 	.byte #0xd4, #0x00	;  212
      003556 D5 00                 2414 	.byte #0xd5, #0x00	;  213
      003558 D6 00                 2415 	.byte #0xd6, #0x00	;  214
      00355A D7 00                 2416 	.byte #0xd7, #0x00	;  215
      00355C D8 00                 2417 	.byte #0xd8, #0x00	;  216
      00355E D9 00                 2418 	.byte #0xd9, #0x00	;  217
      003560 DA 00                 2419 	.byte #0xda, #0x00	;  218
      003562 DB 00                 2420 	.byte #0xdb, #0x00	;  219
      003564 DC 00                 2421 	.byte #0xdc, #0x00	;  220
      003566 DD 00                 2422 	.byte #0xdd, #0x00	;  221
      003568 DE 00                 2423 	.byte #0xde, #0x00	;  222
      00356A DF 00                 2424 	.byte #0xdf, #0x00	;  223
      00356C E0 00                 2425 	.byte #0xe0, #0x00	;  224
      00356E E1 00                 2426 	.byte #0xe1, #0x00	;  225
      003570 E2 00                 2427 	.byte #0xe2, #0x00	;  226
      003572 E3 00                 2428 	.byte #0xe3, #0x00	;  227
      003574 E4 00                 2429 	.byte #0xe4, #0x00	;  228
      003576 E5 00                 2430 	.byte #0xe5, #0x00	;  229
      003578 E6 00                 2431 	.byte #0xe6, #0x00	;  230
      00357A E7 00                 2432 	.byte #0xe7, #0x00	;  231
      00357C E8 00                 2433 	.byte #0xe8, #0x00	;  232
      00357E E9 00                 2434 	.byte #0xe9, #0x00	;  233
      003580 EA 00                 2435 	.byte #0xea, #0x00	;  234
      003582 EB 00                 2436 	.byte #0xeb, #0x00	;  235
      003584 EC 00                 2437 	.byte #0xec, #0x00	;  236
      003586 ED 00                 2438 	.byte #0xed, #0x00	;  237
      003588 EE 00                 2439 	.byte #0xee, #0x00	;  238
      00358A EF 00                 2440 	.byte #0xef, #0x00	;  239
      00358C F0 00                 2441 	.byte #0xf0, #0x00	;  240
      00358E F1 00                 2442 	.byte #0xf1, #0x00	;  241
      003590 F2 00                 2443 	.byte #0xf2, #0x00	;  242
      003592 F3 00                 2444 	.byte #0xf3, #0x00	;  243
      003594 F4 00                 2445 	.byte #0xf4, #0x00	;  244
      003596 F5 00                 2446 	.byte #0xf5, #0x00	;  245
      003598 F6 00                 2447 	.byte #0xf6, #0x00	;  246
      00359A F7 00                 2448 	.byte #0xf7, #0x00	;  247
      00359C F8 00                 2449 	.byte #0xf8, #0x00	;  248
      00359E F9 00                 2450 	.byte #0xf9, #0x00	;  249
      0035A0 FA 00                 2451 	.byte #0xfa, #0x00	;  250
      0035A2 FB 00                 2452 	.byte #0xfb, #0x00	;  251
      0035A4 FC 00                 2453 	.byte #0xfc, #0x00	;  252
      0035A6 FD 00                 2454 	.byte #0xfd, #0x00	;  253
      0035A8 FE 00                 2455 	.byte #0xfe, #0x00	;  254
      0035AA FF 00                 2456 	.byte #0xff, #0x00	;  255
      0035AC FF 00                 2457 	.byte #0xff, #0x00	;  255
      0035AE FE 00                 2458 	.byte #0xfe, #0x00	;  254
      0035B0 FD 00                 2459 	.byte #0xfd, #0x00	;  253
      0035B2 FC 00                 2460 	.byte #0xfc, #0x00	;  252
      0035B4 FB 00                 2461 	.byte #0xfb, #0x00	;  251
      0035B6 FA 00                 2462 	.byte #0xfa, #0x00	;  250
      0035B8 F9 00                 2463 	.byte #0xf9, #0x00	;  249
      0035BA F8 00                 2464 	.byte #0xf8, #0x00	;  248
      0035BC F7 00                 2465 	.byte #0xf7, #0x00	;  247
      0035BE F6 00                 2466 	.byte #0xf6, #0x00	;  246
      0035C0 F5 00                 2467 	.byte #0xf5, #0x00	;  245
      0035C2 F4 00                 2468 	.byte #0xf4, #0x00	;  244
      0035C4 F3 00                 2469 	.byte #0xf3, #0x00	;  243
      0035C6 F2 00                 2470 	.byte #0xf2, #0x00	;  242
      0035C8 F1 00                 2471 	.byte #0xf1, #0x00	;  241
      0035CA F0 00                 2472 	.byte #0xf0, #0x00	;  240
      0035CC EF 00                 2473 	.byte #0xef, #0x00	;  239
      0035CE EE 00                 2474 	.byte #0xee, #0x00	;  238
      0035D0 ED 00                 2475 	.byte #0xed, #0x00	;  237
      0035D2 EC 00                 2476 	.byte #0xec, #0x00	;  236
      0035D4 EB 00                 2477 	.byte #0xeb, #0x00	;  235
      0035D6 EA 00                 2478 	.byte #0xea, #0x00	;  234
      0035D8 E9 00                 2479 	.byte #0xe9, #0x00	;  233
      0035DA E8 00                 2480 	.byte #0xe8, #0x00	;  232
      0035DC E7 00                 2481 	.byte #0xe7, #0x00	;  231
      0035DE E6 00                 2482 	.byte #0xe6, #0x00	;  230
      0035E0 E5 00                 2483 	.byte #0xe5, #0x00	;  229
      0035E2 E4 00                 2484 	.byte #0xe4, #0x00	;  228
      0035E4 E3 00                 2485 	.byte #0xe3, #0x00	;  227
      0035E6 E2 00                 2486 	.byte #0xe2, #0x00	;  226
      0035E8 E1 00                 2487 	.byte #0xe1, #0x00	;  225
      0035EA E0 00                 2488 	.byte #0xe0, #0x00	;  224
      0035EC DF 00                 2489 	.byte #0xdf, #0x00	;  223
      0035EE DE 00                 2490 	.byte #0xde, #0x00	;  222
      0035F0 DD 00                 2491 	.byte #0xdd, #0x00	;  221
      0035F2 DC 00                 2492 	.byte #0xdc, #0x00	;  220
      0035F4 DB 00                 2493 	.byte #0xdb, #0x00	;  219
      0035F6 DA 00                 2494 	.byte #0xda, #0x00	;  218
      0035F8 D9 00                 2495 	.byte #0xd9, #0x00	;  217
      0035FA D8 00                 2496 	.byte #0xd8, #0x00	;  216
      0035FC D7 00                 2497 	.byte #0xd7, #0x00	;  215
      0035FE D6 00                 2498 	.byte #0xd6, #0x00	;  214
      003600 D5 00                 2499 	.byte #0xd5, #0x00	;  213
      003602 D4 00                 2500 	.byte #0xd4, #0x00	;  212
      003604 D3 00                 2501 	.byte #0xd3, #0x00	;  211
      003606 D2 00                 2502 	.byte #0xd2, #0x00	;  210
      003608 D1 00                 2503 	.byte #0xd1, #0x00	;  209
      00360A D0 00                 2504 	.byte #0xd0, #0x00	;  208
      00360C CF 00                 2505 	.byte #0xcf, #0x00	;  207
      00360E CE 00                 2506 	.byte #0xce, #0x00	;  206
      003610 CD 00                 2507 	.byte #0xcd, #0x00	;  205
      003612 CC 00                 2508 	.byte #0xcc, #0x00	;  204
      003614 CB 00                 2509 	.byte #0xcb, #0x00	;  203
      003616 CA 00                 2510 	.byte #0xca, #0x00	;  202
      003618 C9 00                 2511 	.byte #0xc9, #0x00	;  201
      00361A C8 00                 2512 	.byte #0xc8, #0x00	;  200
      00361C C7 00                 2513 	.byte #0xc7, #0x00	;  199
      00361E C6 00                 2514 	.byte #0xc6, #0x00	;  198
      003620 C5 00                 2515 	.byte #0xc5, #0x00	;  197
      003622 C4 00                 2516 	.byte #0xc4, #0x00	;  196
      003624 C3 00                 2517 	.byte #0xc3, #0x00	;  195
      003626 C2 00                 2518 	.byte #0xc2, #0x00	;  194
      003628 C1 00                 2519 	.byte #0xc1, #0x00	;  193
      00362A C0 00                 2520 	.byte #0xc0, #0x00	;  192
      00362C BF 00                 2521 	.byte #0xbf, #0x00	;  191
      00362E BE 00                 2522 	.byte #0xbe, #0x00	;  190
      003630 BD 00                 2523 	.byte #0xbd, #0x00	;  189
      003632 BC 00                 2524 	.byte #0xbc, #0x00	;  188
      003634 BB 00                 2525 	.byte #0xbb, #0x00	;  187
      003636 BA 00                 2526 	.byte #0xba, #0x00	;  186
      003638 B9 00                 2527 	.byte #0xb9, #0x00	;  185
      00363A B8 00                 2528 	.byte #0xb8, #0x00	;  184
      00363C B7 00                 2529 	.byte #0xb7, #0x00	;  183
      00363E B6 00                 2530 	.byte #0xb6, #0x00	;  182
      003640 B5 00                 2531 	.byte #0xb5, #0x00	;  181
      003642 B4 00                 2532 	.byte #0xb4, #0x00	;  180
      003644 B3 00                 2533 	.byte #0xb3, #0x00	;  179
      003646 B2 00                 2534 	.byte #0xb2, #0x00	;  178
      003648 B1 00                 2535 	.byte #0xb1, #0x00	;  177
      00364A B0 00                 2536 	.byte #0xb0, #0x00	;  176
      00364C AF 00                 2537 	.byte #0xaf, #0x00	;  175
      00364E AE 00                 2538 	.byte #0xae, #0x00	;  174
      003650 AD 00                 2539 	.byte #0xad, #0x00	;  173
      003652 AC 00                 2540 	.byte #0xac, #0x00	;  172
      003654 AB 00                 2541 	.byte #0xab, #0x00	;  171
      003656 AA 00                 2542 	.byte #0xaa, #0x00	;  170
      003658 A9 00                 2543 	.byte #0xa9, #0x00	;  169
      00365A A8 00                 2544 	.byte #0xa8, #0x00	;  168
      00365C A7 00                 2545 	.byte #0xa7, #0x00	;  167
      00365E A6 00                 2546 	.byte #0xa6, #0x00	;  166
      003660 A5 00                 2547 	.byte #0xa5, #0x00	;  165
      003662 A4 00                 2548 	.byte #0xa4, #0x00	;  164
      003664 A3 00                 2549 	.byte #0xa3, #0x00	;  163
      003666 A2 00                 2550 	.byte #0xa2, #0x00	;  162
      003668 A1 00                 2551 	.byte #0xa1, #0x00	;  161
      00366A A0 00                 2552 	.byte #0xa0, #0x00	;  160
      00366C 9F 00                 2553 	.byte #0x9f, #0x00	;  159
      00366E 9E 00                 2554 	.byte #0x9e, #0x00	;  158
      003670 9D 00                 2555 	.byte #0x9d, #0x00	;  157
      003672 9C 00                 2556 	.byte #0x9c, #0x00	;  156
      003674 9B 00                 2557 	.byte #0x9b, #0x00	;  155
      003676 9A 00                 2558 	.byte #0x9a, #0x00	;  154
      003678 99 00                 2559 	.byte #0x99, #0x00	;  153
      00367A 98 00                 2560 	.byte #0x98, #0x00	;  152
      00367C 97 00                 2561 	.byte #0x97, #0x00	;  151
      00367E 96 00                 2562 	.byte #0x96, #0x00	;  150
      003680 95 00                 2563 	.byte #0x95, #0x00	;  149
      003682 94 00                 2564 	.byte #0x94, #0x00	;  148
      003684 93 00                 2565 	.byte #0x93, #0x00	;  147
      003686 92 00                 2566 	.byte #0x92, #0x00	;  146
      003688 91 00                 2567 	.byte #0x91, #0x00	;  145
      00368A 90 00                 2568 	.byte #0x90, #0x00	;  144
      00368C 8F 00                 2569 	.byte #0x8f, #0x00	;  143
      00368E 8E 00                 2570 	.byte #0x8e, #0x00	;  142
      003690 8D 00                 2571 	.byte #0x8d, #0x00	;  141
      003692 8C 00                 2572 	.byte #0x8c, #0x00	;  140
      003694 8B 00                 2573 	.byte #0x8b, #0x00	;  139
      003696 8A 00                 2574 	.byte #0x8a, #0x00	;  138
      003698 89 00                 2575 	.byte #0x89, #0x00	;  137
      00369A 88 00                 2576 	.byte #0x88, #0x00	;  136
      00369C 87 00                 2577 	.byte #0x87, #0x00	;  135
      00369E 86 00                 2578 	.byte #0x86, #0x00	;  134
      0036A0 85 00                 2579 	.byte #0x85, #0x00	;  133
      0036A2 84 00                 2580 	.byte #0x84, #0x00	;  132
      0036A4 83 00                 2581 	.byte #0x83, #0x00	;  131
      0036A6 82 00                 2582 	.byte #0x82, #0x00	;  130
      0036A8 81 00                 2583 	.byte #0x81, #0x00	;  129
      0036AA 80 00                 2584 	.byte #0x80, #0x00	;  128
      0036AC 7F 00                 2585 	.byte #0x7f, #0x00	;  127
      0036AE 7E 00                 2586 	.byte #0x7e, #0x00	;  126
      0036B0 7D 00                 2587 	.byte #0x7d, #0x00	;  125
      0036B2 7C 00                 2588 	.byte #0x7c, #0x00	;  124
      0036B4 7B 00                 2589 	.byte #0x7b, #0x00	;  123
      0036B6 7A 00                 2590 	.byte #0x7a, #0x00	;  122
      0036B8 79 00                 2591 	.byte #0x79, #0x00	;  121
      0036BA 78 00                 2592 	.byte #0x78, #0x00	;  120
      0036BC 77 00                 2593 	.byte #0x77, #0x00	;  119
      0036BE 76 00                 2594 	.byte #0x76, #0x00	;  118
      0036C0 75 00                 2595 	.byte #0x75, #0x00	;  117
      0036C2 74 00                 2596 	.byte #0x74, #0x00	;  116
      0036C4 73 00                 2597 	.byte #0x73, #0x00	;  115
      0036C6 72 00                 2598 	.byte #0x72, #0x00	;  114
      0036C8 71 00                 2599 	.byte #0x71, #0x00	;  113
      0036CA 70 00                 2600 	.byte #0x70, #0x00	;  112
      0036CC 6F 00                 2601 	.byte #0x6f, #0x00	;  111
      0036CE 6E 00                 2602 	.byte #0x6e, #0x00	;  110
      0036D0 6D 00                 2603 	.byte #0x6d, #0x00	;  109
      0036D2 6C 00                 2604 	.byte #0x6c, #0x00	;  108
      0036D4 6B 00                 2605 	.byte #0x6b, #0x00	;  107
      0036D6 6A 00                 2606 	.byte #0x6a, #0x00	;  106
      0036D8 69 00                 2607 	.byte #0x69, #0x00	;  105
      0036DA 68 00                 2608 	.byte #0x68, #0x00	;  104
      0036DC 67 00                 2609 	.byte #0x67, #0x00	;  103
      0036DE 66 00                 2610 	.byte #0x66, #0x00	;  102
      0036E0 65 00                 2611 	.byte #0x65, #0x00	;  101
      0036E2 64 00                 2612 	.byte #0x64, #0x00	;  100
      0036E4 63 00                 2613 	.byte #0x63, #0x00	;  99
      0036E6 62 00                 2614 	.byte #0x62, #0x00	;  98
      0036E8 61 00                 2615 	.byte #0x61, #0x00	;  97
      0036EA 60 00                 2616 	.byte #0x60, #0x00	;  96
      0036EC 5F 00                 2617 	.byte #0x5f, #0x00	;  95
      0036EE 5E 00                 2618 	.byte #0x5e, #0x00	;  94
      0036F0 5D 00                 2619 	.byte #0x5d, #0x00	;  93
      0036F2 5C 00                 2620 	.byte #0x5c, #0x00	;  92
      0036F4 5B 00                 2621 	.byte #0x5b, #0x00	;  91
      0036F6 5A 00                 2622 	.byte #0x5a, #0x00	;  90
      0036F8 59 00                 2623 	.byte #0x59, #0x00	;  89
      0036FA 58 00                 2624 	.byte #0x58, #0x00	;  88
      0036FC 57 00                 2625 	.byte #0x57, #0x00	;  87
      0036FE 56 00                 2626 	.byte #0x56, #0x00	;  86
      003700 55 00                 2627 	.byte #0x55, #0x00	;  85
      003702 54 00                 2628 	.byte #0x54, #0x00	;  84
      003704 53 00                 2629 	.byte #0x53, #0x00	;  83
      003706 52 00                 2630 	.byte #0x52, #0x00	;  82
      003708 51 00                 2631 	.byte #0x51, #0x00	;  81
      00370A 50 00                 2632 	.byte #0x50, #0x00	;  80
      00370C 4F 00                 2633 	.byte #0x4f, #0x00	;  79
      00370E 4E 00                 2634 	.byte #0x4e, #0x00	;  78
      003710 4D 00                 2635 	.byte #0x4d, #0x00	;  77
      003712 4C 00                 2636 	.byte #0x4c, #0x00	;  76
      003714 4B 00                 2637 	.byte #0x4b, #0x00	;  75
      003716 4A 00                 2638 	.byte #0x4a, #0x00	;  74
      003718 49 00                 2639 	.byte #0x49, #0x00	;  73
      00371A 48 00                 2640 	.byte #0x48, #0x00	;  72
      00371C 47 00                 2641 	.byte #0x47, #0x00	;  71
      00371E 46 00                 2642 	.byte #0x46, #0x00	;  70
      003720 45 00                 2643 	.byte #0x45, #0x00	;  69
      003722 44 00                 2644 	.byte #0x44, #0x00	;  68
      003724 43 00                 2645 	.byte #0x43, #0x00	;  67
      003726 42 00                 2646 	.byte #0x42, #0x00	;  66
      003728 41 00                 2647 	.byte #0x41, #0x00	;  65
      00372A 40 00                 2648 	.byte #0x40, #0x00	;  64
      00372C 3F 00                 2649 	.byte #0x3f, #0x00	;  63
      00372E 3E 00                 2650 	.byte #0x3e, #0x00	;  62
      003730 3D 00                 2651 	.byte #0x3d, #0x00	;  61
      003732 3C 00                 2652 	.byte #0x3c, #0x00	;  60
      003734 3B 00                 2653 	.byte #0x3b, #0x00	;  59
      003736 3A 00                 2654 	.byte #0x3a, #0x00	;  58
      003738 39 00                 2655 	.byte #0x39, #0x00	;  57
      00373A 38 00                 2656 	.byte #0x38, #0x00	;  56
      00373C 37 00                 2657 	.byte #0x37, #0x00	;  55
      00373E 36 00                 2658 	.byte #0x36, #0x00	;  54
      003740 35 00                 2659 	.byte #0x35, #0x00	;  53
      003742 34 00                 2660 	.byte #0x34, #0x00	;  52
      003744 33 00                 2661 	.byte #0x33, #0x00	;  51
      003746 32 00                 2662 	.byte #0x32, #0x00	;  50
      003748 31 00                 2663 	.byte #0x31, #0x00	;  49
      00374A 30 00                 2664 	.byte #0x30, #0x00	;  48
      00374C 2F 00                 2665 	.byte #0x2f, #0x00	;  47
      00374E 2E 00                 2666 	.byte #0x2e, #0x00	;  46
      003750 2D 00                 2667 	.byte #0x2d, #0x00	;  45
      003752 2C 00                 2668 	.byte #0x2c, #0x00	;  44
      003754 2B 00                 2669 	.byte #0x2b, #0x00	;  43
      003756 2A 00                 2670 	.byte #0x2a, #0x00	;  42
      003758 29 00                 2671 	.byte #0x29, #0x00	;  41
      00375A 28 00                 2672 	.byte #0x28, #0x00	;  40
      00375C 27 00                 2673 	.byte #0x27, #0x00	;  39
      00375E 26 00                 2674 	.byte #0x26, #0x00	;  38
      003760 25 00                 2675 	.byte #0x25, #0x00	;  37
      003762 24 00                 2676 	.byte #0x24, #0x00	;  36
      003764 23 00                 2677 	.byte #0x23, #0x00	;  35
      003766 22 00                 2678 	.byte #0x22, #0x00	;  34
      003768 21 00                 2679 	.byte #0x21, #0x00	;  33
      00376A 20 00                 2680 	.byte #0x20, #0x00	;  32
      00376C 1F 00                 2681 	.byte #0x1f, #0x00	;  31
      00376E 1E 00                 2682 	.byte #0x1e, #0x00	;  30
      003770 1D 00                 2683 	.byte #0x1d, #0x00	;  29
      003772 1C 00                 2684 	.byte #0x1c, #0x00	;  28
      003774 1B 00                 2685 	.byte #0x1b, #0x00	;  27
      003776 1A 00                 2686 	.byte #0x1a, #0x00	;  26
      003778 19 00                 2687 	.byte #0x19, #0x00	;  25
      00377A 18 00                 2688 	.byte #0x18, #0x00	;  24
      00377C 17 00                 2689 	.byte #0x17, #0x00	;  23
      00377E 16 00                 2690 	.byte #0x16, #0x00	;  22
      003780 15 00                 2691 	.byte #0x15, #0x00	;  21
      003782 14 00                 2692 	.byte #0x14, #0x00	;  20
      003784 13 00                 2693 	.byte #0x13, #0x00	;  19
      003786 12 00                 2694 	.byte #0x12, #0x00	;  18
      003788 11 00                 2695 	.byte #0x11, #0x00	;  17
      00378A 10 00                 2696 	.byte #0x10, #0x00	;  16
      00378C 0F 00                 2697 	.byte #0x0f, #0x00	;  15
      00378E 0E 00                 2698 	.byte #0x0e, #0x00	;  14
      003790 0D 00                 2699 	.byte #0x0d, #0x00	;  13
      003792 0C 00                 2700 	.byte #0x0c, #0x00	;  12
      003794 0B 00                 2701 	.byte #0x0b, #0x00	;  11
      003796 0A 00                 2702 	.byte #0x0a, #0x00	;  10
      003798 09 00                 2703 	.byte #0x09, #0x00	;  9
      00379A 08 00                 2704 	.byte #0x08, #0x00	;  8
      00379C 07 00                 2705 	.byte #0x07, #0x00	;  7
      00379E 06 00                 2706 	.byte #0x06, #0x00	;  6
      0037A0 05 00                 2707 	.byte #0x05, #0x00	;  5
      0037A2 04 00                 2708 	.byte #0x04, #0x00	;  4
      0037A4 03 00                 2709 	.byte #0x03, #0x00	;  3
      0037A6 02 00                 2710 	.byte #0x02, #0x00	;  2
      0037A8 01 00                 2711 	.byte #0x01, #0x00	;  1
      0037AA 00 00                 2712 	.byte #0x00, #0x00	;  0
                                   2713 	.area CONST   (CODE)
      0037AC                       2714 ___str_0:
      0037AC 0A                    2715 	.db 0x0a
      0037AD 0D                    2716 	.db 0x0d
      0037AE E2                    2717 	.db 0xe2
      0037AF 94                    2718 	.db 0x94
      0037B0 8C                    2719 	.db 0x8c
      0037B1 E2                    2720 	.db 0xe2
      0037B2 94                    2721 	.db 0x94
      0037B3 80                    2722 	.db 0x80
      0037B4 E2                    2723 	.db 0xe2
      0037B5 94                    2724 	.db 0x94
      0037B6 80                    2725 	.db 0x80
      0037B7 E2                    2726 	.db 0xe2
      0037B8 94                    2727 	.db 0x94
      0037B9 80                    2728 	.db 0x80
      0037BA E2                    2729 	.db 0xe2
      0037BB 94                    2730 	.db 0x94
      0037BC 80                    2731 	.db 0x80
      0037BD E2                    2732 	.db 0xe2
      0037BE 94                    2733 	.db 0x94
      0037BF 80                    2734 	.db 0x80
      0037C0 E2                    2735 	.db 0xe2
      0037C1 94                    2736 	.db 0x94
      0037C2 80                    2737 	.db 0x80
      0037C3 E2                    2738 	.db 0xe2
      0037C4 94                    2739 	.db 0x94
      0037C5 80                    2740 	.db 0x80
      0037C6 E2                    2741 	.db 0xe2
      0037C7 94                    2742 	.db 0x94
      0037C8 80                    2743 	.db 0x80
      0037C9 E2                    2744 	.db 0xe2
      0037CA 94                    2745 	.db 0x94
      0037CB 80                    2746 	.db 0x80
      0037CC E2                    2747 	.db 0xe2
      0037CD 94                    2748 	.db 0x94
      0037CE 80                    2749 	.db 0x80
      0037CF E2                    2750 	.db 0xe2
      0037D0 94                    2751 	.db 0x94
      0037D1 80                    2752 	.db 0x80
      0037D2 E2                    2753 	.db 0xe2
      0037D3 94                    2754 	.db 0x94
      0037D4 80                    2755 	.db 0x80
      0037D5 E2                    2756 	.db 0xe2
      0037D6 94                    2757 	.db 0x94
      0037D7 80                    2758 	.db 0x80
      0037D8 E2                    2759 	.db 0xe2
      0037D9 94                    2760 	.db 0x94
      0037DA 80                    2761 	.db 0x80
      0037DB E2                    2762 	.db 0xe2
      0037DC 94                    2763 	.db 0x94
      0037DD 80                    2764 	.db 0x80
      0037DE E2                    2765 	.db 0xe2
      0037DF 94                    2766 	.db 0x94
      0037E0 80                    2767 	.db 0x80
      0037E1 E2                    2768 	.db 0xe2
      0037E2 94                    2769 	.db 0x94
      0037E3 80                    2770 	.db 0x80
      0037E4 E2                    2771 	.db 0xe2
      0037E5 94                    2772 	.db 0x94
      0037E6 80                    2773 	.db 0x80
      0037E7 E2                    2774 	.db 0xe2
      0037E8 94                    2775 	.db 0x94
      0037E9 80                    2776 	.db 0x80
      0037EA E2                    2777 	.db 0xe2
      0037EB 94                    2778 	.db 0x94
      0037EC 80                    2779 	.db 0x80
      0037ED E2                    2780 	.db 0xe2
      0037EE 94                    2781 	.db 0x94
      0037EF 80                    2782 	.db 0x80
      0037F0 E2                    2783 	.db 0xe2
      0037F1 94                    2784 	.db 0x94
      0037F2 80                    2785 	.db 0x80
      0037F3 E2                    2786 	.db 0xe2
      0037F4 94                    2787 	.db 0x94
      0037F5 80                    2788 	.db 0x80
      0037F6 E2                    2789 	.db 0xe2
      0037F7 94                    2790 	.db 0x94
      0037F8 80                    2791 	.db 0x80
      0037F9 E2                    2792 	.db 0xe2
      0037FA 94                    2793 	.db 0x94
      0037FB 80                    2794 	.db 0x80
      0037FC E2                    2795 	.db 0xe2
      0037FD 94                    2796 	.db 0x94
      0037FE 80                    2797 	.db 0x80
      0037FF E2                    2798 	.db 0xe2
      003800 94                    2799 	.db 0x94
      003801 80                    2800 	.db 0x80
      003802 E2                    2801 	.db 0xe2
      003803 94                    2802 	.db 0x94
      003804 80                    2803 	.db 0x80
      003805 E2                    2804 	.db 0xe2
      003806 94                    2805 	.db 0x94
      003807 80                    2806 	.db 0x80
      003808 E2                    2807 	.db 0xe2
      003809 94                    2808 	.db 0x94
      00380A 80                    2809 	.db 0x80
      00380B E2                    2810 	.db 0xe2
      00380C 94                    2811 	.db 0x94
      00380D 80                    2812 	.db 0x80
      00380E E2                    2813 	.db 0xe2
      00380F 94                    2814 	.db 0x94
      003810 80                    2815 	.db 0x80
      003811 E2                    2816 	.db 0xe2
      003812 94                    2817 	.db 0x94
      003813 80                    2818 	.db 0x80
      003814 E2                    2819 	.db 0xe2
      003815 94                    2820 	.db 0x94
      003816 80                    2821 	.db 0x80
      003817 E2                    2822 	.db 0xe2
      003818 94                    2823 	.db 0x94
      003819 80                    2824 	.db 0x80
      00381A E2                    2825 	.db 0xe2
      00381B 94                    2826 	.db 0x94
      00381C 80                    2827 	.db 0x80
      00381D E2                    2828 	.db 0xe2
      00381E 94                    2829 	.db 0x94
      00381F 80                    2830 	.db 0x80
      003820 E2                    2831 	.db 0xe2
      003821 94                    2832 	.db 0x94
      003822 80                    2833 	.db 0x80
      003823 E2                    2834 	.db 0xe2
      003824 94                    2835 	.db 0x94
      003825 80                    2836 	.db 0x80
      003826 E2                    2837 	.db 0xe2
      003827 94                    2838 	.db 0x94
      003828 80                    2839 	.db 0x80
      003829 E2                    2840 	.db 0xe2
      00382A 94                    2841 	.db 0x94
      00382B 80                    2842 	.db 0x80
      00382C E2                    2843 	.db 0xe2
      00382D 94                    2844 	.db 0x94
      00382E 80                    2845 	.db 0x80
      00382F E2                    2846 	.db 0xe2
      003830 94                    2847 	.db 0x94
      003831 80                    2848 	.db 0x80
      003832 E2                    2849 	.db 0xe2
      003833 94                    2850 	.db 0x94
      003834 80                    2851 	.db 0x80
      003835 E2                    2852 	.db 0xe2
      003836 94                    2853 	.db 0x94
      003837 80                    2854 	.db 0x80
      003838 E2                    2855 	.db 0xe2
      003839 94                    2856 	.db 0x94
      00383A 80                    2857 	.db 0x80
      00383B E2                    2858 	.db 0xe2
      00383C 94                    2859 	.db 0x94
      00383D 80                    2860 	.db 0x80
      00383E E2                    2861 	.db 0xe2
      00383F 94                    2862 	.db 0x94
      003840 80                    2863 	.db 0x80
      003841 E2                    2864 	.db 0xe2
      003842 94                    2865 	.db 0x94
      003843 80                    2866 	.db 0x80
      003844 E2                    2867 	.db 0xe2
      003845 94                    2868 	.db 0x94
      003846 80                    2869 	.db 0x80
      003847 E2                    2870 	.db 0xe2
      003848 94                    2871 	.db 0x94
      003849 80                    2872 	.db 0x80
      00384A E2                    2873 	.db 0xe2
      00384B 94                    2874 	.db 0x94
      00384C 80                    2875 	.db 0x80
      00384D E2                    2876 	.db 0xe2
      00384E 94                    2877 	.db 0x94
      00384F 80                    2878 	.db 0x80
      003850 E2                    2879 	.db 0xe2
      003851 94                    2880 	.db 0x94
      003852 80                    2881 	.db 0x80
      003853 E2                    2882 	.db 0xe2
      003854 94                    2883 	.db 0x94
      003855 80                    2884 	.db 0x80
      003856 E2                    2885 	.db 0xe2
      003857 94                    2886 	.db 0x94
      003858 80                    2887 	.db 0x80
      003859 E2                    2888 	.db 0xe2
      00385A 94                    2889 	.db 0x94
      00385B 80                    2890 	.db 0x80
      00385C E2                    2891 	.db 0xe2
      00385D 94                    2892 	.db 0x94
      00385E 80                    2893 	.db 0x80
      00385F E2                    2894 	.db 0xe2
      003860 94                    2895 	.db 0x94
      003861 80                    2896 	.db 0x80
      003862 E2                    2897 	.db 0xe2
      003863 94                    2898 	.db 0x94
      003864 80                    2899 	.db 0x80
      003865 E2                    2900 	.db 0xe2
      003866 94                    2901 	.db 0x94
      003867 80                    2902 	.db 0x80
      003868 E2                    2903 	.db 0xe2
      003869 94                    2904 	.db 0x94
      00386A 80                    2905 	.db 0x80
      00386B E2                    2906 	.db 0xe2
      00386C 94                    2907 	.db 0x94
      00386D 90                    2908 	.db 0x90
      00386E 0A                    2909 	.db 0x0a
      00386F 0D                    2910 	.db 0x0d
      003870 00                    2911 	.db 0x00
                                   2912 	.area CSEG    (CODE)
                                   2913 	.area CONST   (CODE)
      003871                       2914 ___str_1:
      003871 E2                    2915 	.db 0xe2
      003872 94                    2916 	.db 0x94
      003873 82                    2917 	.db 0x82
      003874 20 20 20 20 20 20 20  2918 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0038B0 20 20                 2919 	.ascii "  "
      0038B2 E2                    2920 	.db 0xe2
      0038B3 94                    2921 	.db 0x94
      0038B4 82                    2922 	.db 0x82
      0038B5 0A                    2923 	.db 0x0a
      0038B6 0D                    2924 	.db 0x0d
      0038B7 00                    2925 	.db 0x00
                                   2926 	.area CSEG    (CODE)
                                   2927 	.area CONST   (CODE)
      0038B8                       2928 ___str_2:
      0038B8 E2                    2929 	.db 0xe2
      0038B9 94                    2930 	.db 0x94
      0038BA 9C                    2931 	.db 0x9c
      0038BB E2                    2932 	.db 0xe2
      0038BC 94                    2933 	.db 0x94
      0038BD 80                    2934 	.db 0x80
      0038BE E2                    2935 	.db 0xe2
      0038BF 94                    2936 	.db 0x94
      0038C0 80                    2937 	.db 0x80
      0038C1 E2                    2938 	.db 0xe2
      0038C2 94                    2939 	.db 0x94
      0038C3 80                    2940 	.db 0x80
      0038C4 E2                    2941 	.db 0xe2
      0038C5 94                    2942 	.db 0x94
      0038C6 80                    2943 	.db 0x80
      0038C7 E2                    2944 	.db 0xe2
      0038C8 94                    2945 	.db 0x94
      0038C9 80                    2946 	.db 0x80
      0038CA E2                    2947 	.db 0xe2
      0038CB 94                    2948 	.db 0x94
      0038CC 80                    2949 	.db 0x80
      0038CD E2                    2950 	.db 0xe2
      0038CE 94                    2951 	.db 0x94
      0038CF 80                    2952 	.db 0x80
      0038D0 E2                    2953 	.db 0xe2
      0038D1 94                    2954 	.db 0x94
      0038D2 80                    2955 	.db 0x80
      0038D3 E2                    2956 	.db 0xe2
      0038D4 94                    2957 	.db 0x94
      0038D5 80                    2958 	.db 0x80
      0038D6 E2                    2959 	.db 0xe2
      0038D7 94                    2960 	.db 0x94
      0038D8 80                    2961 	.db 0x80
      0038D9 E2                    2962 	.db 0xe2
      0038DA 94                    2963 	.db 0x94
      0038DB 80                    2964 	.db 0x80
      0038DC E2                    2965 	.db 0xe2
      0038DD 94                    2966 	.db 0x94
      0038DE 80                    2967 	.db 0x80
      0038DF E2                    2968 	.db 0xe2
      0038E0 94                    2969 	.db 0x94
      0038E1 80                    2970 	.db 0x80
      0038E2 E2                    2971 	.db 0xe2
      0038E3 94                    2972 	.db 0x94
      0038E4 80                    2973 	.db 0x80
      0038E5 E2                    2974 	.db 0xe2
      0038E6 94                    2975 	.db 0x94
      0038E7 80                    2976 	.db 0x80
      0038E8 E2                    2977 	.db 0xe2
      0038E9 94                    2978 	.db 0x94
      0038EA 80                    2979 	.db 0x80
      0038EB E2                    2980 	.db 0xe2
      0038EC 94                    2981 	.db 0x94
      0038ED 80                    2982 	.db 0x80
      0038EE E2                    2983 	.db 0xe2
      0038EF 94                    2984 	.db 0x94
      0038F0 80                    2985 	.db 0x80
      0038F1 E2                    2986 	.db 0xe2
      0038F2 94                    2987 	.db 0x94
      0038F3 80                    2988 	.db 0x80
      0038F4 E2                    2989 	.db 0xe2
      0038F5 94                    2990 	.db 0x94
      0038F6 80                    2991 	.db 0x80
      0038F7 E2                    2992 	.db 0xe2
      0038F8 94                    2993 	.db 0x94
      0038F9 80                    2994 	.db 0x80
      0038FA E2                    2995 	.db 0xe2
      0038FB 94                    2996 	.db 0x94
      0038FC 80                    2997 	.db 0x80
      0038FD E2                    2998 	.db 0xe2
      0038FE 94                    2999 	.db 0x94
      0038FF 80                    3000 	.db 0x80
      003900 E2                    3001 	.db 0xe2
      003901 94                    3002 	.db 0x94
      003902 80                    3003 	.db 0x80
      003903 E2                    3004 	.db 0xe2
      003904 94                    3005 	.db 0x94
      003905 80                    3006 	.db 0x80
      003906 E2                    3007 	.db 0xe2
      003907 94                    3008 	.db 0x94
      003908 80                    3009 	.db 0x80
      003909 E2                    3010 	.db 0xe2
      00390A 94                    3011 	.db 0x94
      00390B 80                    3012 	.db 0x80
      00390C E2                    3013 	.db 0xe2
      00390D 94                    3014 	.db 0x94
      00390E 80                    3015 	.db 0x80
      00390F E2                    3016 	.db 0xe2
      003910 94                    3017 	.db 0x94
      003911 80                    3018 	.db 0x80
      003912 E2                    3019 	.db 0xe2
      003913 94                    3020 	.db 0x94
      003914 80                    3021 	.db 0x80
      003915 E2                    3022 	.db 0xe2
      003916 94                    3023 	.db 0x94
      003917 80                    3024 	.db 0x80
      003918 E2                    3025 	.db 0xe2
      003919 94                    3026 	.db 0x94
      00391A 80                    3027 	.db 0x80
      00391B E2                    3028 	.db 0xe2
      00391C 94                    3029 	.db 0x94
      00391D 80                    3030 	.db 0x80
      00391E E2                    3031 	.db 0xe2
      00391F 94                    3032 	.db 0x94
      003920 80                    3033 	.db 0x80
      003921 E2                    3034 	.db 0xe2
      003922 94                    3035 	.db 0x94
      003923 80                    3036 	.db 0x80
      003924 E2                    3037 	.db 0xe2
      003925 94                    3038 	.db 0x94
      003926 80                    3039 	.db 0x80
      003927 E2                    3040 	.db 0xe2
      003928 94                    3041 	.db 0x94
      003929 80                    3042 	.db 0x80
      00392A E2                    3043 	.db 0xe2
      00392B 94                    3044 	.db 0x94
      00392C 80                    3045 	.db 0x80
      00392D E2                    3046 	.db 0xe2
      00392E 94                    3047 	.db 0x94
      00392F 80                    3048 	.db 0x80
      003930 E2                    3049 	.db 0xe2
      003931 94                    3050 	.db 0x94
      003932 80                    3051 	.db 0x80
      003933 E2                    3052 	.db 0xe2
      003934 94                    3053 	.db 0x94
      003935 80                    3054 	.db 0x80
      003936 E2                    3055 	.db 0xe2
      003937 94                    3056 	.db 0x94
      003938 80                    3057 	.db 0x80
      003939 E2                    3058 	.db 0xe2
      00393A 94                    3059 	.db 0x94
      00393B 80                    3060 	.db 0x80
      00393C E2                    3061 	.db 0xe2
      00393D 94                    3062 	.db 0x94
      00393E 80                    3063 	.db 0x80
      00393F E2                    3064 	.db 0xe2
      003940 94                    3065 	.db 0x94
      003941 80                    3066 	.db 0x80
      003942 E2                    3067 	.db 0xe2
      003943 94                    3068 	.db 0x94
      003944 80                    3069 	.db 0x80
      003945 E2                    3070 	.db 0xe2
      003946 94                    3071 	.db 0x94
      003947 80                    3072 	.db 0x80
      003948 E2                    3073 	.db 0xe2
      003949 94                    3074 	.db 0x94
      00394A 80                    3075 	.db 0x80
      00394B E2                    3076 	.db 0xe2
      00394C 94                    3077 	.db 0x94
      00394D 80                    3078 	.db 0x80
      00394E E2                    3079 	.db 0xe2
      00394F 94                    3080 	.db 0x94
      003950 80                    3081 	.db 0x80
      003951 E2                    3082 	.db 0xe2
      003952 94                    3083 	.db 0x94
      003953 80                    3084 	.db 0x80
      003954 E2                    3085 	.db 0xe2
      003955 94                    3086 	.db 0x94
      003956 80                    3087 	.db 0x80
      003957 E2                    3088 	.db 0xe2
      003958 94                    3089 	.db 0x94
      003959 80                    3090 	.db 0x80
      00395A E2                    3091 	.db 0xe2
      00395B 94                    3092 	.db 0x94
      00395C 80                    3093 	.db 0x80
      00395D E2                    3094 	.db 0xe2
      00395E 94                    3095 	.db 0x94
      00395F 80                    3096 	.db 0x80
      003960 E2                    3097 	.db 0xe2
      003961 94                    3098 	.db 0x94
      003962 80                    3099 	.db 0x80
      003963 E2                    3100 	.db 0xe2
      003964 94                    3101 	.db 0x94
      003965 80                    3102 	.db 0x80
      003966 E2                    3103 	.db 0xe2
      003967 94                    3104 	.db 0x94
      003968 80                    3105 	.db 0x80
      003969 E2                    3106 	.db 0xe2
      00396A 94                    3107 	.db 0x94
      00396B 80                    3108 	.db 0x80
      00396C E2                    3109 	.db 0xe2
      00396D 94                    3110 	.db 0x94
      00396E 80                    3111 	.db 0x80
      00396F E2                    3112 	.db 0xe2
      003970 94                    3113 	.db 0x94
      003971 80                    3114 	.db 0x80
      003972 E2                    3115 	.db 0xe2
      003973 94                    3116 	.db 0x94
      003974 80                    3117 	.db 0x80
      003975 E2                    3118 	.db 0xe2
      003976 94                    3119 	.db 0x94
      003977 A4                    3120 	.db 0xa4
      003978 0A                    3121 	.db 0x0a
      003979 0D                    3122 	.db 0x0d
      00397A 00                    3123 	.db 0x00
                                   3124 	.area CSEG    (CODE)
                                   3125 	.area CONST   (CODE)
      00397B                       3126 ___str_3:
      00397B E2                    3127 	.db 0xe2
      00397C 94                    3128 	.db 0x94
      00397D 82                    3129 	.db 0x82
      00397E 20 20 43 6F 6D 6D 61  3130 	.ascii "  Command   "
             6E 64 20 20 20
      00398A E2                    3131 	.db 0xe2
      00398B 94                    3132 	.db 0x94
      00398C 82                    3133 	.db 0x82
      00398D 20 20 20 20 20 20 20  3134 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      0039BE E2                    3135 	.db 0xe2
      0039BF 94                    3136 	.db 0x94
      0039C0 82                    3137 	.db 0x82
      0039C1 0A                    3138 	.db 0x0a
      0039C2 0D                    3139 	.db 0x0d
      0039C3 00                    3140 	.db 0x00
                                   3141 	.area CSEG    (CODE)
                                   3142 	.area CONST   (CODE)
      0039C4                       3143 ___str_4:
      0039C4 E2                    3144 	.db 0xe2
      0039C5 94                    3145 	.db 0x94
      0039C6 9C                    3146 	.db 0x9c
      0039C7 E2                    3147 	.db 0xe2
      0039C8 94                    3148 	.db 0x94
      0039C9 80                    3149 	.db 0x80
      0039CA E2                    3150 	.db 0xe2
      0039CB 94                    3151 	.db 0x94
      0039CC 80                    3152 	.db 0x80
      0039CD E2                    3153 	.db 0xe2
      0039CE 94                    3154 	.db 0x94
      0039CF 80                    3155 	.db 0x80
      0039D0 E2                    3156 	.db 0xe2
      0039D1 94                    3157 	.db 0x94
      0039D2 80                    3158 	.db 0x80
      0039D3 E2                    3159 	.db 0xe2
      0039D4 94                    3160 	.db 0x94
      0039D5 80                    3161 	.db 0x80
      0039D6 E2                    3162 	.db 0xe2
      0039D7 94                    3163 	.db 0x94
      0039D8 80                    3164 	.db 0x80
      0039D9 E2                    3165 	.db 0xe2
      0039DA 94                    3166 	.db 0x94
      0039DB 80                    3167 	.db 0x80
      0039DC E2                    3168 	.db 0xe2
      0039DD 94                    3169 	.db 0x94
      0039DE 80                    3170 	.db 0x80
      0039DF E2                    3171 	.db 0xe2
      0039E0 94                    3172 	.db 0x94
      0039E1 80                    3173 	.db 0x80
      0039E2 E2                    3174 	.db 0xe2
      0039E3 94                    3175 	.db 0x94
      0039E4 80                    3176 	.db 0x80
      0039E5 E2                    3177 	.db 0xe2
      0039E6 94                    3178 	.db 0x94
      0039E7 80                    3179 	.db 0x80
      0039E8 E2                    3180 	.db 0xe2
      0039E9 94                    3181 	.db 0x94
      0039EA BC                    3182 	.db 0xbc
      0039EB E2                    3183 	.db 0xe2
      0039EC 94                    3184 	.db 0x94
      0039ED 80                    3185 	.db 0x80
      0039EE E2                    3186 	.db 0xe2
      0039EF 94                    3187 	.db 0x94
      0039F0 80                    3188 	.db 0x80
      0039F1 E2                    3189 	.db 0xe2
      0039F2 94                    3190 	.db 0x94
      0039F3 80                    3191 	.db 0x80
      0039F4 E2                    3192 	.db 0xe2
      0039F5 94                    3193 	.db 0x94
      0039F6 80                    3194 	.db 0x80
      0039F7 E2                    3195 	.db 0xe2
      0039F8 94                    3196 	.db 0x94
      0039F9 80                    3197 	.db 0x80
      0039FA E2                    3198 	.db 0xe2
      0039FB 94                    3199 	.db 0x94
      0039FC 80                    3200 	.db 0x80
      0039FD E2                    3201 	.db 0xe2
      0039FE 94                    3202 	.db 0x94
      0039FF 80                    3203 	.db 0x80
      003A00 E2                    3204 	.db 0xe2
      003A01 94                    3205 	.db 0x94
      003A02 80                    3206 	.db 0x80
      003A03 E2                    3207 	.db 0xe2
      003A04 94                    3208 	.db 0x94
      003A05 80                    3209 	.db 0x80
      003A06 E2                    3210 	.db 0xe2
      003A07 94                    3211 	.db 0x94
      003A08 80                    3212 	.db 0x80
      003A09 E2                    3213 	.db 0xe2
      003A0A 94                    3214 	.db 0x94
      003A0B 80                    3215 	.db 0x80
      003A0C E2                    3216 	.db 0xe2
      003A0D 94                    3217 	.db 0x94
      003A0E 80                    3218 	.db 0x80
      003A0F E2                    3219 	.db 0xe2
      003A10 94                    3220 	.db 0x94
      003A11 80                    3221 	.db 0x80
      003A12 E2                    3222 	.db 0xe2
      003A13 94                    3223 	.db 0x94
      003A14 80                    3224 	.db 0x80
      003A15 E2                    3225 	.db 0xe2
      003A16 94                    3226 	.db 0x94
      003A17 80                    3227 	.db 0x80
      003A18 E2                    3228 	.db 0xe2
      003A19 94                    3229 	.db 0x94
      003A1A 80                    3230 	.db 0x80
      003A1B E2                    3231 	.db 0xe2
      003A1C 94                    3232 	.db 0x94
      003A1D 80                    3233 	.db 0x80
      003A1E E2                    3234 	.db 0xe2
      003A1F 94                    3235 	.db 0x94
      003A20 80                    3236 	.db 0x80
      003A21 E2                    3237 	.db 0xe2
      003A22 94                    3238 	.db 0x94
      003A23 80                    3239 	.db 0x80
      003A24 E2                    3240 	.db 0xe2
      003A25 94                    3241 	.db 0x94
      003A26 80                    3242 	.db 0x80
      003A27 E2                    3243 	.db 0xe2
      003A28 94                    3244 	.db 0x94
      003A29 80                    3245 	.db 0x80
      003A2A E2                    3246 	.db 0xe2
      003A2B 94                    3247 	.db 0x94
      003A2C 80                    3248 	.db 0x80
      003A2D E2                    3249 	.db 0xe2
      003A2E 94                    3250 	.db 0x94
      003A2F 80                    3251 	.db 0x80
      003A30 E2                    3252 	.db 0xe2
      003A31 94                    3253 	.db 0x94
      003A32 80                    3254 	.db 0x80
      003A33 E2                    3255 	.db 0xe2
      003A34 94                    3256 	.db 0x94
      003A35 80                    3257 	.db 0x80
      003A36 E2                    3258 	.db 0xe2
      003A37 94                    3259 	.db 0x94
      003A38 80                    3260 	.db 0x80
      003A39 E2                    3261 	.db 0xe2
      003A3A 94                    3262 	.db 0x94
      003A3B 80                    3263 	.db 0x80
      003A3C E2                    3264 	.db 0xe2
      003A3D 94                    3265 	.db 0x94
      003A3E 80                    3266 	.db 0x80
      003A3F E2                    3267 	.db 0xe2
      003A40 94                    3268 	.db 0x94
      003A41 80                    3269 	.db 0x80
      003A42 E2                    3270 	.db 0xe2
      003A43 94                    3271 	.db 0x94
      003A44 80                    3272 	.db 0x80
      003A45 E2                    3273 	.db 0xe2
      003A46 94                    3274 	.db 0x94
      003A47 80                    3275 	.db 0x80
      003A48 E2                    3276 	.db 0xe2
      003A49 94                    3277 	.db 0x94
      003A4A 80                    3278 	.db 0x80
      003A4B E2                    3279 	.db 0xe2
      003A4C 94                    3280 	.db 0x94
      003A4D 80                    3281 	.db 0x80
      003A4E E2                    3282 	.db 0xe2
      003A4F 94                    3283 	.db 0x94
      003A50 80                    3284 	.db 0x80
      003A51 E2                    3285 	.db 0xe2
      003A52 94                    3286 	.db 0x94
      003A53 80                    3287 	.db 0x80
      003A54 E2                    3288 	.db 0xe2
      003A55 94                    3289 	.db 0x94
      003A56 80                    3290 	.db 0x80
      003A57 E2                    3291 	.db 0xe2
      003A58 94                    3292 	.db 0x94
      003A59 80                    3293 	.db 0x80
      003A5A E2                    3294 	.db 0xe2
      003A5B 94                    3295 	.db 0x94
      003A5C 80                    3296 	.db 0x80
      003A5D E2                    3297 	.db 0xe2
      003A5E 94                    3298 	.db 0x94
      003A5F 80                    3299 	.db 0x80
      003A60 E2                    3300 	.db 0xe2
      003A61 94                    3301 	.db 0x94
      003A62 80                    3302 	.db 0x80
      003A63 E2                    3303 	.db 0xe2
      003A64 94                    3304 	.db 0x94
      003A65 80                    3305 	.db 0x80
      003A66 E2                    3306 	.db 0xe2
      003A67 94                    3307 	.db 0x94
      003A68 80                    3308 	.db 0x80
      003A69 E2                    3309 	.db 0xe2
      003A6A 94                    3310 	.db 0x94
      003A6B 80                    3311 	.db 0x80
      003A6C E2                    3312 	.db 0xe2
      003A6D 94                    3313 	.db 0x94
      003A6E 80                    3314 	.db 0x80
      003A6F E2                    3315 	.db 0xe2
      003A70 94                    3316 	.db 0x94
      003A71 80                    3317 	.db 0x80
      003A72 E2                    3318 	.db 0xe2
      003A73 94                    3319 	.db 0x94
      003A74 80                    3320 	.db 0x80
      003A75 E2                    3321 	.db 0xe2
      003A76 94                    3322 	.db 0x94
      003A77 80                    3323 	.db 0x80
      003A78 E2                    3324 	.db 0xe2
      003A79 94                    3325 	.db 0x94
      003A7A A4                    3326 	.db 0xa4
      003A7B 0A                    3327 	.db 0x0a
      003A7C 0D                    3328 	.db 0x0d
      003A7D 00                    3329 	.db 0x00
                                   3330 	.area CSEG    (CODE)
                                   3331 	.area CONST   (CODE)
      003A7E                       3332 ___str_5:
      003A7E E2                    3333 	.db 0xe2
      003A7F 94                    3334 	.db 0x94
      003A80 82                    3335 	.db 0x82
      003A81 20 20 20 20 4D 20 20  3336 	.ascii "    M      "
             20 20 20 20
      003A8C E2                    3337 	.db 0xe2
      003A8D 94                    3338 	.db 0x94
      003A8E 82                    3339 	.db 0x82
      003A8F 20 4D 61 6E 75 61 6C  3340 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003ABF E2                    3341 	.db 0xe2
      003AC0 94                    3342 	.db 0x94
      003AC1 82                    3343 	.db 0x82
      003AC2 0A                    3344 	.db 0x0a
      003AC3 0D                    3345 	.db 0x0d
      003AC4 00                    3346 	.db 0x00
                                   3347 	.area CSEG    (CODE)
                                   3348 	.area CONST   (CODE)
      003AC5                       3349 ___str_6:
      003AC5 E2                    3350 	.db 0xe2
      003AC6 94                    3351 	.db 0x94
      003AC7 82                    3352 	.db 0x82
      003AC8 20 20 20 20 42 20 20  3353 	.ascii "    B      "
             20 20 20 20
      003AD3 E2                    3354 	.db 0xe2
      003AD4 94                    3355 	.db 0x94
      003AD5 82                    3356 	.db 0x82
      003AD6 20 42 69 74 20 42 61  3357 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B05 E2                    3358 	.db 0xe2
      003B06 94                    3359 	.db 0x94
      003B07 82                    3360 	.db 0x82
      003B08 0A                    3361 	.db 0x0a
      003B09 0D                    3362 	.db 0x0d
      003B0A 00                    3363 	.db 0x00
                                   3364 	.area CSEG    (CODE)
                                   3365 	.area CONST   (CODE)
      003B0B                       3366 ___str_7:
      003B0B E2                    3367 	.db 0xe2
      003B0C 94                    3368 	.db 0x94
      003B0D 82                    3369 	.db 0x82
      003B0E 20 20 20 20 53 20 20  3370 	.ascii "    S      "
             20 20 20 20
      003B19 E2                    3371 	.db 0xe2
      003B1A 94                    3372 	.db 0x94
      003B1B 82                    3373 	.db 0x82
      003B1C 20 47 65 6E 65 72 61  3374 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B4B E2                    3375 	.db 0xe2
      003B4C 94                    3376 	.db 0x94
      003B4D 82                    3377 	.db 0x82
      003B4E 0A                    3378 	.db 0x0a
      003B4F 0D                    3379 	.db 0x0d
      003B50 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      003B51                       3383 ___str_8:
      003B51 E2                    3384 	.db 0xe2
      003B52 94                    3385 	.db 0x94
      003B53 82                    3386 	.db 0x82
      003B54 20 20 20 20 54 20 20  3387 	.ascii "    T      "
             20 20 20 20
      003B5F E2                    3388 	.db 0xe2
      003B60 94                    3389 	.db 0x94
      003B61 82                    3390 	.db 0x82
      003B62 20 47 65 6E 65 72 61  3391 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003B91 E2                    3392 	.db 0xe2
      003B92 94                    3393 	.db 0x94
      003B93 82                    3394 	.db 0x82
      003B94 0A                    3395 	.db 0x0a
      003B95 0D                    3396 	.db 0x0d
      003B96 00                    3397 	.db 0x00
                                   3398 	.area CSEG    (CODE)
                                   3399 	.area CONST   (CODE)
      003B97                       3400 ___str_9:
      003B97 E2                    3401 	.db 0xe2
      003B98 94                    3402 	.db 0x94
      003B99 82                    3403 	.db 0x82
      003B9A 20 20 20 20 44 20 20  3404 	.ascii "    D      "
             20 20 20 20
      003BA5 E2                    3405 	.db 0xe2
      003BA6 94                    3406 	.db 0x94
      003BA7 82                    3407 	.db 0x82
      003BA8 20 44 65 6D 6F 20 4D  3408 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      003BD7 E2                    3409 	.db 0xe2
      003BD8 94                    3410 	.db 0x94
      003BD9 82                    3411 	.db 0x82
      003BDA 0A                    3412 	.db 0x0a
      003BDB 0D                    3413 	.db 0x0d
      003BDC 00                    3414 	.db 0x00
                                   3415 	.area CSEG    (CODE)
                                   3416 	.area CONST   (CODE)
      003BDD                       3417 ___str_10:
      003BDD E2                    3418 	.db 0xe2
      003BDE 94                    3419 	.db 0x94
      003BDF 82                    3420 	.db 0x82
      003BE0 20 20 20 20 52 20 20  3421 	.ascii "    R      "
             20 20 20 20
      003BEB E2                    3422 	.db 0xe2
      003BEC 94                    3423 	.db 0x94
      003BED 82                    3424 	.db 0x82
      003BEE 20 52 61 6D 70 20 77  3425 	.ascii " Ramp wave                                     "
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C1D E2                    3426 	.db 0xe2
      003C1E 94                    3427 	.db 0x94
      003C1F 82                    3428 	.db 0x82
      003C20 0A                    3429 	.db 0x0a
      003C21 0D                    3430 	.db 0x0d
      003C22 00                    3431 	.db 0x00
                                   3432 	.area CSEG    (CODE)
                                   3433 	.area CONST   (CODE)
      003C23                       3434 ___str_11:
      003C23 E2                    3435 	.db 0xe2
      003C24 94                    3436 	.db 0x94
      003C25 82                    3437 	.db 0x82
      003C26 20 20 20 20 3F 20 20  3438 	.ascii "    ?      "
             20 20 20 20
      003C31 E2                    3439 	.db 0xe2
      003C32 94                    3440 	.db 0x94
      003C33 82                    3441 	.db 0x82
      003C34 20 44 69 73 70 6C 61  3442 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003C63 E2                    3443 	.db 0xe2
      003C64 94                    3444 	.db 0x94
      003C65 82                    3445 	.db 0x82
      003C66 0A                    3446 	.db 0x0a
      003C67 0D                    3447 	.db 0x0d
      003C68 00                    3448 	.db 0x00
                                   3449 	.area CSEG    (CODE)
                                   3450 	.area CONST   (CODE)
      003C69                       3451 ___str_12:
      003C69 E2                    3452 	.db 0xe2
      003C6A 94                    3453 	.db 0x94
      003C6B 94                    3454 	.db 0x94
      003C6C E2                    3455 	.db 0xe2
      003C6D 94                    3456 	.db 0x94
      003C6E 80                    3457 	.db 0x80
      003C6F E2                    3458 	.db 0xe2
      003C70 94                    3459 	.db 0x94
      003C71 80                    3460 	.db 0x80
      003C72 E2                    3461 	.db 0xe2
      003C73 94                    3462 	.db 0x94
      003C74 80                    3463 	.db 0x80
      003C75 E2                    3464 	.db 0xe2
      003C76 94                    3465 	.db 0x94
      003C77 80                    3466 	.db 0x80
      003C78 E2                    3467 	.db 0xe2
      003C79 94                    3468 	.db 0x94
      003C7A 80                    3469 	.db 0x80
      003C7B E2                    3470 	.db 0xe2
      003C7C 94                    3471 	.db 0x94
      003C7D 80                    3472 	.db 0x80
      003C7E E2                    3473 	.db 0xe2
      003C7F 94                    3474 	.db 0x94
      003C80 80                    3475 	.db 0x80
      003C81 E2                    3476 	.db 0xe2
      003C82 94                    3477 	.db 0x94
      003C83 80                    3478 	.db 0x80
      003C84 E2                    3479 	.db 0xe2
      003C85 94                    3480 	.db 0x94
      003C86 80                    3481 	.db 0x80
      003C87 E2                    3482 	.db 0xe2
      003C88 94                    3483 	.db 0x94
      003C89 80                    3484 	.db 0x80
      003C8A E2                    3485 	.db 0xe2
      003C8B 94                    3486 	.db 0x94
      003C8C 80                    3487 	.db 0x80
      003C8D E2                    3488 	.db 0xe2
      003C8E 94                    3489 	.db 0x94
      003C8F B4                    3490 	.db 0xb4
      003C90 E2                    3491 	.db 0xe2
      003C91 94                    3492 	.db 0x94
      003C92 80                    3493 	.db 0x80
      003C93 E2                    3494 	.db 0xe2
      003C94 94                    3495 	.db 0x94
      003C95 80                    3496 	.db 0x80
      003C96 E2                    3497 	.db 0xe2
      003C97 94                    3498 	.db 0x94
      003C98 80                    3499 	.db 0x80
      003C99 E2                    3500 	.db 0xe2
      003C9A 94                    3501 	.db 0x94
      003C9B 80                    3502 	.db 0x80
      003C9C E2                    3503 	.db 0xe2
      003C9D 94                    3504 	.db 0x94
      003C9E 80                    3505 	.db 0x80
      003C9F E2                    3506 	.db 0xe2
      003CA0 94                    3507 	.db 0x94
      003CA1 80                    3508 	.db 0x80
      003CA2 E2                    3509 	.db 0xe2
      003CA3 94                    3510 	.db 0x94
      003CA4 80                    3511 	.db 0x80
      003CA5 E2                    3512 	.db 0xe2
      003CA6 94                    3513 	.db 0x94
      003CA7 80                    3514 	.db 0x80
      003CA8 E2                    3515 	.db 0xe2
      003CA9 94                    3516 	.db 0x94
      003CAA 80                    3517 	.db 0x80
      003CAB E2                    3518 	.db 0xe2
      003CAC 94                    3519 	.db 0x94
      003CAD 80                    3520 	.db 0x80
      003CAE E2                    3521 	.db 0xe2
      003CAF 94                    3522 	.db 0x94
      003CB0 80                    3523 	.db 0x80
      003CB1 E2                    3524 	.db 0xe2
      003CB2 94                    3525 	.db 0x94
      003CB3 80                    3526 	.db 0x80
      003CB4 E2                    3527 	.db 0xe2
      003CB5 94                    3528 	.db 0x94
      003CB6 80                    3529 	.db 0x80
      003CB7 E2                    3530 	.db 0xe2
      003CB8 94                    3531 	.db 0x94
      003CB9 80                    3532 	.db 0x80
      003CBA E2                    3533 	.db 0xe2
      003CBB 94                    3534 	.db 0x94
      003CBC 80                    3535 	.db 0x80
      003CBD E2                    3536 	.db 0xe2
      003CBE 94                    3537 	.db 0x94
      003CBF 80                    3538 	.db 0x80
      003CC0 E2                    3539 	.db 0xe2
      003CC1 94                    3540 	.db 0x94
      003CC2 80                    3541 	.db 0x80
      003CC3 E2                    3542 	.db 0xe2
      003CC4 94                    3543 	.db 0x94
      003CC5 80                    3544 	.db 0x80
      003CC6 E2                    3545 	.db 0xe2
      003CC7 94                    3546 	.db 0x94
      003CC8 80                    3547 	.db 0x80
      003CC9 E2                    3548 	.db 0xe2
      003CCA 94                    3549 	.db 0x94
      003CCB 80                    3550 	.db 0x80
      003CCC E2                    3551 	.db 0xe2
      003CCD 94                    3552 	.db 0x94
      003CCE 80                    3553 	.db 0x80
      003CCF E2                    3554 	.db 0xe2
      003CD0 94                    3555 	.db 0x94
      003CD1 80                    3556 	.db 0x80
      003CD2 E2                    3557 	.db 0xe2
      003CD3 94                    3558 	.db 0x94
      003CD4 80                    3559 	.db 0x80
      003CD5 E2                    3560 	.db 0xe2
      003CD6 94                    3561 	.db 0x94
      003CD7 80                    3562 	.db 0x80
      003CD8 E2                    3563 	.db 0xe2
      003CD9 94                    3564 	.db 0x94
      003CDA 80                    3565 	.db 0x80
      003CDB E2                    3566 	.db 0xe2
      003CDC 94                    3567 	.db 0x94
      003CDD 80                    3568 	.db 0x80
      003CDE E2                    3569 	.db 0xe2
      003CDF 94                    3570 	.db 0x94
      003CE0 80                    3571 	.db 0x80
      003CE1 E2                    3572 	.db 0xe2
      003CE2 94                    3573 	.db 0x94
      003CE3 80                    3574 	.db 0x80
      003CE4 E2                    3575 	.db 0xe2
      003CE5 94                    3576 	.db 0x94
      003CE6 80                    3577 	.db 0x80
      003CE7 E2                    3578 	.db 0xe2
      003CE8 94                    3579 	.db 0x94
      003CE9 80                    3580 	.db 0x80
      003CEA E2                    3581 	.db 0xe2
      003CEB 94                    3582 	.db 0x94
      003CEC 80                    3583 	.db 0x80
      003CED E2                    3584 	.db 0xe2
      003CEE 94                    3585 	.db 0x94
      003CEF 80                    3586 	.db 0x80
      003CF0 E2                    3587 	.db 0xe2
      003CF1 94                    3588 	.db 0x94
      003CF2 80                    3589 	.db 0x80
      003CF3 E2                    3590 	.db 0xe2
      003CF4 94                    3591 	.db 0x94
      003CF5 80                    3592 	.db 0x80
      003CF6 E2                    3593 	.db 0xe2
      003CF7 94                    3594 	.db 0x94
      003CF8 80                    3595 	.db 0x80
      003CF9 E2                    3596 	.db 0xe2
      003CFA 94                    3597 	.db 0x94
      003CFB 80                    3598 	.db 0x80
      003CFC E2                    3599 	.db 0xe2
      003CFD 94                    3600 	.db 0x94
      003CFE 80                    3601 	.db 0x80
      003CFF E2                    3602 	.db 0xe2
      003D00 94                    3603 	.db 0x94
      003D01 80                    3604 	.db 0x80
      003D02 E2                    3605 	.db 0xe2
      003D03 94                    3606 	.db 0x94
      003D04 80                    3607 	.db 0x80
      003D05 E2                    3608 	.db 0xe2
      003D06 94                    3609 	.db 0x94
      003D07 80                    3610 	.db 0x80
      003D08 E2                    3611 	.db 0xe2
      003D09 94                    3612 	.db 0x94
      003D0A 80                    3613 	.db 0x80
      003D0B E2                    3614 	.db 0xe2
      003D0C 94                    3615 	.db 0x94
      003D0D 80                    3616 	.db 0x80
      003D0E E2                    3617 	.db 0xe2
      003D0F 94                    3618 	.db 0x94
      003D10 80                    3619 	.db 0x80
      003D11 E2                    3620 	.db 0xe2
      003D12 94                    3621 	.db 0x94
      003D13 80                    3622 	.db 0x80
      003D14 E2                    3623 	.db 0xe2
      003D15 94                    3624 	.db 0x94
      003D16 80                    3625 	.db 0x80
      003D17 E2                    3626 	.db 0xe2
      003D18 94                    3627 	.db 0x94
      003D19 80                    3628 	.db 0x80
      003D1A E2                    3629 	.db 0xe2
      003D1B 94                    3630 	.db 0x94
      003D1C 80                    3631 	.db 0x80
      003D1D E2                    3632 	.db 0xe2
      003D1E 94                    3633 	.db 0x94
      003D1F 98                    3634 	.db 0x98
      003D20 0A                    3635 	.db 0x0a
      003D21 0D                    3636 	.db 0x0d
      003D22 00                    3637 	.db 0x00
                                   3638 	.area CSEG    (CODE)
                                   3639 	.area CONST   (CODE)
      003D23                       3640 ___str_13:
      003D23 0A                    3641 	.db 0x0a
      003D24 0D                    3642 	.db 0x0d
      003D25 45 6E 74 65 72 20 63  3643 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      003D34 00                    3644 	.db 0x00
                                   3645 	.area CSEG    (CODE)
                                   3646 	.area CONST   (CODE)
      003D35                       3647 ___str_14:
      003D35 7C 20 24 20 25 63     3648 	.ascii "| $ %c"
      003D3B 0A                    3649 	.db 0x0a
      003D3C 0D                    3650 	.db 0x0d
      003D3D 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      003D3E                       3654 ___str_15:
      003D3E 0A                    3655 	.db 0x0a
      003D3F 0D                    3656 	.db 0x0d
      003D40 00                    3657 	.db 0x00
                                   3658 	.area CSEG    (CODE)
                                   3659 	.area CONST   (CODE)
      003D41                       3660 ___str_16:
      003D41 3E 3E 20 53 49 4E 20  3661 	.ascii ">> SIN WAVE GENERATION COMPLETE"
             57 41 56 45 20 47 45
             4E 45 52 41 54 49 4F
             4E 20 43 4F 4D 50 4C
             45 54 45
      003D60 0A                    3662 	.db 0x0a
      003D61 0D                    3663 	.db 0x0d
      003D62 00                    3664 	.db 0x00
                                   3665 	.area CSEG    (CODE)
                                   3666 	.area CONST   (CODE)
      003D63                       3667 ___str_17:
      003D63 3E 3E 20 53 51 55 41  3668 	.ascii ">> SQUARE WAVE GENERATION COMPLETE"
             52 45 20 57 41 56 45
             20 47 45 4E 45 52 41
             54 49 4F 4E 20 43 4F
             4D 50 4C 45 54 45
      003D85 0A                    3669 	.db 0x0a
      003D86 0D                    3670 	.db 0x0d
      003D87 00                    3671 	.db 0x00
                                   3672 	.area CSEG    (CODE)
                                   3673 	.area CONST   (CODE)
      003D88                       3674 ___str_18:
      003D88 3E 3E 20 49 4E 56 41  3675 	.ascii ">> INVALID INPUT"
             4C 49 44 20 49 4E 50
             55 54
      003D98 0A                    3676 	.db 0x0a
      003D99 0D                    3677 	.db 0x0d
      003D9A 00                    3678 	.db 0x00
                                   3679 	.area CSEG    (CODE)
                                   3680 	.area CONST   (CODE)
      003D9B                       3681 ___str_19:
      003D9B E2                    3682 	.db 0xe2
      003D9C 94                    3683 	.db 0x94
      003D9D 82                    3684 	.db 0x82
      003D9E 20 45 6E 74 65 72 20  3685 	.ascii " Enter number (hex, up to 2 characters): "
             6E 75 6D 62 65 72 20
             28 68 65 78 2C 20 75
             70 20 74 6F 20 32 20
             63 68 61 72 61 63 74
             65 72 73 29 3A 20
      003DC7 0A                    3686 	.db 0x0a
      003DC8 0D                    3687 	.db 0x0d
      003DC9 7C                    3688 	.ascii "|"
      003DCA 00                    3689 	.db 0x00
                                   3690 	.area CSEG    (CODE)
                                   3691 	.area CONST   (CODE)
      003DCB                       3692 ___str_20:
      003DCB 24 20                 3693 	.ascii "$ "
      003DCD 00                    3694 	.db 0x00
                                   3695 	.area CSEG    (CODE)
                                   3696 	.area CONST   (CODE)
      003DCE                       3697 ___str_21:
      003DCE 0A                    3698 	.db 0x0a
      003DCF 0D                    3699 	.db 0x0d
      003DD0 E2                    3700 	.db 0xe2
      003DD1 94                    3701 	.db 0x94
      003DD2 82                    3702 	.db 0x82
      003DD3 20 45 6E 74 65 72 65  3703 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      003DE8 0A                    3704 	.db 0x0a
      003DE9 0D                    3705 	.db 0x0d
      003DEA 00                    3706 	.db 0x00
                                   3707 	.area CSEG    (CODE)
                                   3708 	.area XINIT   (CODE)
      003DF6                       3709 __xinit__ms_flag:
      003DF6 00                    3710 	.db #0x00	; 0
      003DF7                       3711 __xinit__transmission_complete:
      003DF7 00 00                 3712 	.byte #0x00, #0x00	;  0
                                   3713 	.area CABS    (ABS,CODE)
