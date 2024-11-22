                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_dac
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dac_values
                                     12 	.globl _spi_isr
                                     13 	.globl _timer0_isr
                                     14 	.globl _main
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
                                    217 	.globl _timer0_init
                                    218 	.globl _spi_init
                                    219 	.globl _spi_transmission_start
                                    220 	.globl _spi_transmission_stop
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 _P0	=	0x0080
                           000081   227 _SP	=	0x0081
                           000082   228 _DPL	=	0x0082
                           000083   229 _DPH	=	0x0083
                           000087   230 _PCON	=	0x0087
                           000088   231 _TCON	=	0x0088
                           000089   232 _TMOD	=	0x0089
                           00008A   233 _TL0	=	0x008a
                           00008B   234 _TL1	=	0x008b
                           00008C   235 _TH0	=	0x008c
                           00008D   236 _TH1	=	0x008d
                           000090   237 _P1	=	0x0090
                           000098   238 _SCON	=	0x0098
                           000099   239 _SBUF	=	0x0099
                           0000A0   240 _P2	=	0x00a0
                           0000A8   241 _IE	=	0x00a8
                           0000B0   242 _P3	=	0x00b0
                           0000B8   243 _IP	=	0x00b8
                           0000D0   244 _PSW	=	0x00d0
                           0000E0   245 _ACC	=	0x00e0
                           0000F0   246 _B	=	0x00f0
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                                    298 ;--------------------------------------------------------
                                    299 ; special function bits
                                    300 ;--------------------------------------------------------
                                    301 	.area RSEG    (ABS,DATA)
      000000                        302 	.org 0x0000
                           000080   303 _P0_0	=	0x0080
                           000081   304 _P0_1	=	0x0081
                           000082   305 _P0_2	=	0x0082
                           000083   306 _P0_3	=	0x0083
                           000084   307 _P0_4	=	0x0084
                           000085   308 _P0_5	=	0x0085
                           000086   309 _P0_6	=	0x0086
                           000087   310 _P0_7	=	0x0087
                           000088   311 _IT0	=	0x0088
                           000089   312 _IE0	=	0x0089
                           00008A   313 _IT1	=	0x008a
                           00008B   314 _IE1	=	0x008b
                           00008C   315 _TR0	=	0x008c
                           00008D   316 _TF0	=	0x008d
                           00008E   317 _TR1	=	0x008e
                           00008F   318 _TF1	=	0x008f
                           000090   319 _P1_0	=	0x0090
                           000091   320 _P1_1	=	0x0091
                           000092   321 _P1_2	=	0x0092
                           000093   322 _P1_3	=	0x0093
                           000094   323 _P1_4	=	0x0094
                           000095   324 _P1_5	=	0x0095
                           000096   325 _P1_6	=	0x0096
                           000097   326 _P1_7	=	0x0097
                           000098   327 _RI	=	0x0098
                           000099   328 _TI	=	0x0099
                           00009A   329 _RB8	=	0x009a
                           00009B   330 _TB8	=	0x009b
                           00009C   331 _REN	=	0x009c
                           00009D   332 _SM2	=	0x009d
                           00009E   333 _SM1	=	0x009e
                           00009F   334 _SM0	=	0x009f
                           0000A0   335 _P2_0	=	0x00a0
                           0000A1   336 _P2_1	=	0x00a1
                           0000A2   337 _P2_2	=	0x00a2
                           0000A3   338 _P2_3	=	0x00a3
                           0000A4   339 _P2_4	=	0x00a4
                           0000A5   340 _P2_5	=	0x00a5
                           0000A6   341 _P2_6	=	0x00a6
                           0000A7   342 _P2_7	=	0x00a7
                           0000A8   343 _EX0	=	0x00a8
                           0000A9   344 _ET0	=	0x00a9
                           0000AA   345 _EX1	=	0x00aa
                           0000AB   346 _ET1	=	0x00ab
                           0000AC   347 _ES	=	0x00ac
                           0000AF   348 _EA	=	0x00af
                           0000B0   349 _P3_0	=	0x00b0
                           0000B1   350 _P3_1	=	0x00b1
                           0000B2   351 _P3_2	=	0x00b2
                           0000B3   352 _P3_3	=	0x00b3
                           0000B4   353 _P3_4	=	0x00b4
                           0000B5   354 _P3_5	=	0x00b5
                           0000B6   355 _P3_6	=	0x00b6
                           0000B7   356 _P3_7	=	0x00b7
                           0000B0   357 _RXD	=	0x00b0
                           0000B1   358 _TXD	=	0x00b1
                           0000B2   359 _INT0	=	0x00b2
                           0000B3   360 _INT1	=	0x00b3
                           0000B4   361 _T0	=	0x00b4
                           0000B5   362 _T1	=	0x00b5
                           0000B6   363 _WR	=	0x00b6
                           0000B7   364 _RD	=	0x00b7
                           0000B8   365 _PX0	=	0x00b8
                           0000B9   366 _PT0	=	0x00b9
                           0000BA   367 _PX1	=	0x00ba
                           0000BB   368 _PT1	=	0x00bb
                           0000BC   369 _PS	=	0x00bc
                           0000D0   370 _P	=	0x00d0
                           0000D1   371 _F1	=	0x00d1
                           0000D2   372 _OV	=	0x00d2
                           0000D3   373 _RS0	=	0x00d3
                           0000D4   374 _RS1	=	0x00d4
                           0000D5   375 _F0	=	0x00d5
                           0000D6   376 _AC	=	0x00d6
                           0000D7   377 _CY	=	0x00d7
                           0000AD   378 _ET2	=	0x00ad
                           0000BD   379 _PT2	=	0x00bd
                           0000C8   380 _T2CON_0	=	0x00c8
                           0000C9   381 _T2CON_1	=	0x00c9
                           0000CA   382 _T2CON_2	=	0x00ca
                           0000CB   383 _T2CON_3	=	0x00cb
                           0000CC   384 _T2CON_4	=	0x00cc
                           0000CD   385 _T2CON_5	=	0x00cd
                           0000CE   386 _T2CON_6	=	0x00ce
                           0000CF   387 _T2CON_7	=	0x00cf
                           0000C8   388 _CP_RL2	=	0x00c8
                           0000C9   389 _C_T2	=	0x00c9
                           0000CA   390 _TR2	=	0x00ca
                           0000CB   391 _EXEN2	=	0x00cb
                           0000CC   392 _TCLK	=	0x00cc
                           0000CD   393 _RCLK	=	0x00cd
                           0000CE   394 _EXF2	=	0x00ce
                           0000CF   395 _TF2	=	0x00cf
                           0000DF   396 _CF	=	0x00df
                           0000DE   397 _CR	=	0x00de
                           0000DC   398 _CCF4	=	0x00dc
                           0000DB   399 _CCF3	=	0x00db
                           0000DA   400 _CCF2	=	0x00da
                           0000D9   401 _CCF1	=	0x00d9
                           0000D8   402 _CCF0	=	0x00d8
                           0000AE   403 _EC	=	0x00ae
                           0000BE   404 _PPCL	=	0x00be
                           0000BD   405 _PT2L	=	0x00bd
                           0000BC   406 _PSL	=	0x00bc
                           0000BB   407 _PT1L	=	0x00bb
                           0000BA   408 _PX1L	=	0x00ba
                           0000B9   409 _PT0L	=	0x00b9
                           0000B8   410 _PX0L	=	0x00b8
                           0000C0   411 _P4_0	=	0x00c0
                           0000C1   412 _P4_1	=	0x00c1
                           0000C2   413 _P4_2	=	0x00c2
                           0000C3   414 _P4_3	=	0x00c3
                           0000C4   415 _P4_4	=	0x00c4
                           0000C5   416 _P4_5	=	0x00c5
                           0000C6   417 _P4_6	=	0x00c6
                           0000C7   418 _P4_7	=	0x00c7
                           0000E8   419 _P5_0	=	0x00e8
                           0000E9   420 _P5_1	=	0x00e9
                           0000EA   421 _P5_2	=	0x00ea
                           0000EB   422 _P5_3	=	0x00eb
                           0000EC   423 _P5_4	=	0x00ec
                           0000ED   424 _P5_5	=	0x00ed
                           0000EE   425 _P5_6	=	0x00ee
                           0000EF   426 _P5_7	=	0x00ef
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable register banks
                                    429 ;--------------------------------------------------------
                                    430 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        431 	.ds 8
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable bit register bank
                                    434 ;--------------------------------------------------------
                                    435 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        436 bits:
      000020                        437 	.ds 1
                           008000   438 	b0 = bits[0]
                           008100   439 	b1 = bits[1]
                           008200   440 	b2 = bits[2]
                           008300   441 	b3 = bits[3]
                           008400   442 	b4 = bits[4]
                           008500   443 	b5 = bits[5]
                           008600   444 	b6 = bits[6]
                           008700   445 	b7 = bits[7]
                                    446 ;--------------------------------------------------------
                                    447 ; internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area DSEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable items in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 ;--------------------------------------------------------
                                    454 ; Stack segment in internal ram 
                                    455 ;--------------------------------------------------------
                                    456 	.area	SSEG
      000021                        457 __start__stack:
      000021                        458 	.ds	1
                                    459 
                                    460 ;--------------------------------------------------------
                                    461 ; indirectly addressable internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area ISEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area IABS    (ABS,DATA)
                                    468 	.area IABS    (ABS,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; bit data
                                    471 ;--------------------------------------------------------
                                    472 	.area BSEG    (BIT)
                                    473 ;--------------------------------------------------------
                                    474 ; paged external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area PSEG    (PAG,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XSEG    (XDATA)
      000400                        481 _putchar_charToSend_65536_17:
      000400                        482 	.ds 2
      000402                        483 _delay_ms_ms_65536_21:
      000402                        484 	.ds 2
      000404                        485 _main_dac_value_index_65537_27:
      000404                        486 	.ds 2
      000406                        487 _main_dac_data_65537_27:
      000406                        488 	.ds 2
                                    489 ;--------------------------------------------------------
                                    490 ; absolute external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XABS    (ABS,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; external initialized ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XISEG   (XDATA)
      000441                        497 _ms_flag::
      000441                        498 	.ds 1
      000442                        499 _transmission_complete::
      000442                        500 	.ds 2
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT0 (CODE)
                                    503 	.area GSINIT1 (CODE)
                                    504 	.area GSINIT2 (CODE)
                                    505 	.area GSINIT3 (CODE)
                                    506 	.area GSINIT4 (CODE)
                                    507 	.area GSINIT5 (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area CSEG    (CODE)
                                    511 ;--------------------------------------------------------
                                    512 ; interrupt vector 
                                    513 ;--------------------------------------------------------
                                    514 	.area HOME    (CODE)
      002000                        515 __interrupt_vect:
      002000 02 20 51         [24]  516 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  517 	reti
      002004                        518 	.ds	7
      00200B 02 21 D8         [24]  519 	ljmp	_timer0_isr
      00200E                        520 	.ds	5
      002013 32               [24]  521 	reti
      002014                        522 	.ds	7
      00201B 32               [24]  523 	reti
      00201C                        524 	.ds	7
      002023 32               [24]  525 	reti
      002024                        526 	.ds	7
      00202B 32               [24]  527 	reti
      00202C                        528 	.ds	7
      002033 32               [24]  529 	reti
      002034                        530 	.ds	7
      00203B 32               [24]  531 	reti
      00203C                        532 	.ds	7
      002043 32               [24]  533 	reti
      002044                        534 	.ds	7
      00204B 02 22 35         [24]  535 	ljmp	_spi_isr
                                    536 ;--------------------------------------------------------
                                    537 ; global & static initialisations
                                    538 ;--------------------------------------------------------
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 	.area GSFINAL (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.globl __sdcc_gsinit_startup
                                    544 	.globl __sdcc_program_startup
                                    545 	.globl __start__stack
                                    546 	.globl __mcs51_genXINIT
                                    547 	.globl __mcs51_genXRAMCLEAR
                                    548 	.globl __mcs51_genRAMCLEAR
                                    549 	.area GSFINAL (CODE)
      0020AA 02 20 4E         [24]  550 	ljmp	__sdcc_program_startup
                                    551 ;--------------------------------------------------------
                                    552 ; Home
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area HOME    (CODE)
      00204E                        556 __sdcc_program_startup:
      00204E 02 21 0D         [24]  557 	ljmp	_main
                                    558 ;	return from main will return to caller
                                    559 ;--------------------------------------------------------
                                    560 ; code
                                    561 ;--------------------------------------------------------
                                    562 	.area CSEG    (CODE)
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'putchar'
                                    565 ;------------------------------------------------------------
                                    566 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    567 ;------------------------------------------------------------
                                    568 ;	spi_dac.c:180: int putchar(int charToSend) {
                                    569 ;	-----------------------------------------
                                    570 ;	 function putchar
                                    571 ;	-----------------------------------------
      0020AD                        572 _putchar:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
      0020AD AF 83            [24]  581 	mov	r7,dph
      0020AF E5 82            [12]  582 	mov	a,dpl
      0020B1 90 04 00         [24]  583 	mov	dptr,#_putchar_charToSend_65536_17
      0020B4 F0               [24]  584 	movx	@dptr,a
      0020B5 EF               [12]  585 	mov	a,r7
      0020B6 A3               [24]  586 	inc	dptr
      0020B7 F0               [24]  587 	movx	@dptr,a
                                    588 ;	spi_dac.c:181: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  589 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  590 	movx	a,@dptr
      0020BC FE               [12]  591 	mov	r6,a
      0020BD A3               [24]  592 	inc	dptr
      0020BE E0               [24]  593 	movx	a,@dptr
      0020BF FF               [12]  594 	mov	r7,a
      0020C0 8E 99            [24]  595 	mov	_SBUF,r6
                                    596 ;	spi_dac.c:182: while (!TI);             /* Wait for transmission completion */
      0020C2                        597 00101$:
                                    598 ;	spi_dac.c:183: TI = 0;                  /* Clear transmission flag */
                                    599 ;	assignBit
      0020C2 10 99 02         [24]  600 	jbc	_TI,00114$
      0020C5 80 FB            [24]  601 	sjmp	00101$
      0020C7                        602 00114$:
                                    603 ;	spi_dac.c:184: return charToSend;
      0020C7 8E 82            [24]  604 	mov	dpl,r6
      0020C9 8F 83            [24]  605 	mov	dph,r7
                                    606 ;	spi_dac.c:185: }
      0020CB 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'getchar'
                                    610 ;------------------------------------------------------------
                                    611 ;	spi_dac.c:191: int getchar(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function getchar
                                    614 ;	-----------------------------------------
      0020CC                        615 _getchar:
                                    616 ;	spi_dac.c:192: while (!RI);             /* Wait for reception completion */
      0020CC                        617 00101$:
                                    618 ;	spi_dac.c:193: RI = 0;                  /* Clear reception flag */
                                    619 ;	assignBit
      0020CC 10 98 02         [24]  620 	jbc	_RI,00114$
      0020CF 80 FB            [24]  621 	sjmp	00101$
      0020D1                        622 00114$:
                                    623 ;	spi_dac.c:194: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  624 	mov	r6,_SBUF
      0020D3 7F 00            [12]  625 	mov	r7,#0x00
      0020D5 8E 82            [24]  626 	mov	dpl,r6
      0020D7 8F 83            [24]  627 	mov	dph,r7
                                    628 ;	spi_dac.c:195: }
      0020D9 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay_ms'
                                    632 ;------------------------------------------------------------
                                    633 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    634 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    635 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    636 ;------------------------------------------------------------
                                    637 ;	spi_dac.c:197: void delay_ms(unsigned int ms) {
                                    638 ;	-----------------------------------------
                                    639 ;	 function delay_ms
                                    640 ;	-----------------------------------------
      0020DA                        641 _delay_ms:
      0020DA AF 83            [24]  642 	mov	r7,dph
      0020DC E5 82            [12]  643 	mov	a,dpl
      0020DE 90 04 02         [24]  644 	mov	dptr,#_delay_ms_ms_65536_21
      0020E1 F0               [24]  645 	movx	@dptr,a
      0020E2 EF               [12]  646 	mov	a,r7
      0020E3 A3               [24]  647 	inc	dptr
      0020E4 F0               [24]  648 	movx	@dptr,a
                                    649 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      0020E5 90 04 02         [24]  650 	mov	dptr,#_delay_ms_ms_65536_21
      0020E8 E0               [24]  651 	movx	a,@dptr
      0020E9 FE               [12]  652 	mov	r6,a
      0020EA A3               [24]  653 	inc	dptr
      0020EB E0               [24]  654 	movx	a,@dptr
      0020EC FF               [12]  655 	mov	r7,a
      0020ED 7C 00            [12]  656 	mov	r4,#0x00
      0020EF 7D 00            [12]  657 	mov	r5,#0x00
      0020F1                        658 00107$:
      0020F1 C3               [12]  659 	clr	c
      0020F2 EC               [12]  660 	mov	a,r4
      0020F3 9E               [12]  661 	subb	a,r6
      0020F4 ED               [12]  662 	mov	a,r5
      0020F5 9F               [12]  663 	subb	a,r7
      0020F6 50 14            [24]  664 	jnc	00109$
                                    665 ;	spi_dac.c:200: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020F8 7A 7B            [12]  666 	mov	r2,#0x7b
      0020FA 7B 00            [12]  667 	mov	r3,#0x00
      0020FC                        668 00105$:
      0020FC 1A               [12]  669 	dec	r2
      0020FD BA FF 01         [24]  670 	cjne	r2,#0xff,00130$
      002100 1B               [12]  671 	dec	r3
      002101                        672 00130$:
      002101 EA               [12]  673 	mov	a,r2
      002102 4B               [12]  674 	orl	a,r3
      002103 70 F7            [24]  675 	jnz	00105$
                                    676 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      002105 0C               [12]  677 	inc	r4
      002106 BC 00 E8         [24]  678 	cjne	r4,#0x00,00107$
      002109 0D               [12]  679 	inc	r5
      00210A 80 E5            [24]  680 	sjmp	00107$
      00210C                        681 00109$:
                                    682 ;	spi_dac.c:201: }
      00210C 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'main'
                                    686 ;------------------------------------------------------------
                                    687 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    688 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    689 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    690 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    691 ;------------------------------------------------------------
                                    692 ;	spi_dac.c:202: int main(void)
                                    693 ;	-----------------------------------------
                                    694 ;	 function main
                                    695 ;	-----------------------------------------
      00210D                        696 _main:
                                    697 ;	spi_dac.c:204: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 58            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2F            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 22 F6         [24]  704 	lcall	_printf
      00211C 15 81            [12]  705 	dec	sp
      00211E 15 81            [12]  706 	dec	sp
      002120 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:206: int dac_value_index = 0;
      002122 90 04 04         [24]  709 	mov	dptr,#_main_dac_value_index_65537_27
      002125 E4               [12]  710 	clr	a
      002126 F0               [24]  711 	movx	@dptr,a
      002127 A3               [24]  712 	inc	dptr
      002128 F0               [24]  713 	movx	@dptr,a
                                    714 ;	spi_dac.c:207: int dac_data = 0;
      002129 90 04 06         [24]  715 	mov	dptr,#_main_dac_data_65537_27
      00212C F0               [24]  716 	movx	@dptr,a
      00212D A3               [24]  717 	inc	dptr
      00212E F0               [24]  718 	movx	@dptr,a
                                    719 ;	spi_dac.c:213: spi_init();
      00212F 12 22 94         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:216: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 6B            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 2F            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 22 F6         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:223: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:227: if(dac_value_index < SINE_MAX_INDEX)
      002147 90 04 04         [24]  735 	mov	dptr,#_main_dac_value_index_65537_27
      00214A E0               [24]  736 	movx	a,@dptr
      00214B FE               [12]  737 	mov	r6,a
      00214C A3               [24]  738 	inc	dptr
      00214D E0               [24]  739 	movx	a,@dptr
      00214E FF               [12]  740 	mov	r7,a
      00214F C3               [12]  741 	clr	c
      002150 64 80            [12]  742 	xrl	a,#0x80
      002152 94 81            [12]  743 	subb	a,#0x81
      002154 50 21            [24]  744 	jnc	00102$
                                    745 ;	spi_dac.c:231: dac_data = dac_values[dac_value_index];
      002156 EE               [12]  746 	mov	a,r6
      002157 2E               [12]  747 	add	a,r6
      002158 FE               [12]  748 	mov	r6,a
      002159 EF               [12]  749 	mov	a,r7
      00215A 33               [12]  750 	rlc	a
      00215B FF               [12]  751 	mov	r7,a
      00215C EE               [12]  752 	mov	a,r6
      00215D 24 58            [12]  753 	add	a,#_dac_values
      00215F F5 82            [12]  754 	mov	dpl,a
      002161 EF               [12]  755 	mov	a,r7
      002162 34 2D            [12]  756 	addc	a,#(_dac_values >> 8)
      002164 F5 83            [12]  757 	mov	dph,a
      002166 E4               [12]  758 	clr	a
      002167 93               [24]  759 	movc	a,@a+dptr
      002168 FE               [12]  760 	mov	r6,a
      002169 A3               [24]  761 	inc	dptr
      00216A E4               [12]  762 	clr	a
      00216B 93               [24]  763 	movc	a,@a+dptr
      00216C FF               [12]  764 	mov	r7,a
      00216D 90 04 06         [24]  765 	mov	dptr,#_main_dac_data_65537_27
      002170 EE               [12]  766 	mov	a,r6
      002171 F0               [24]  767 	movx	@dptr,a
      002172 EF               [12]  768 	mov	a,r7
      002173 A3               [24]  769 	inc	dptr
      002174 F0               [24]  770 	movx	@dptr,a
      002175 80 07            [24]  771 	sjmp	00103$
      002177                        772 00102$:
                                    773 ;	spi_dac.c:235: dac_value_index = 0;  // Reset index for next cycle
      002177 90 04 04         [24]  774 	mov	dptr,#_main_dac_value_index_65537_27
      00217A E4               [12]  775 	clr	a
      00217B F0               [24]  776 	movx	@dptr,a
      00217C A3               [24]  777 	inc	dptr
      00217D F0               [24]  778 	movx	@dptr,a
      00217E                        779 00103$:
                                    780 ;	spi_dac.c:242: ((dac_data >> 4) & 0x0F);
      00217E 90 04 06         [24]  781 	mov	dptr,#_main_dac_data_65537_27
      002181 E0               [24]  782 	movx	a,@dptr
      002182 FE               [12]  783 	mov	r6,a
      002183 A3               [24]  784 	inc	dptr
      002184 E0               [24]  785 	movx	a,@dptr
      002185 8E 04            [24]  786 	mov	ar4,r6
      002187 C4               [12]  787 	swap	a
      002188 CC               [12]  788 	xch	a,r4
      002189 C4               [12]  789 	swap	a
      00218A 54 0F            [12]  790 	anl	a,#0x0f
      00218C 6C               [12]  791 	xrl	a,r4
      00218D CC               [12]  792 	xch	a,r4
      00218E 54 0F            [12]  793 	anl	a,#0x0f
      002190 CC               [12]  794 	xch	a,r4
      002191 6C               [12]  795 	xrl	a,r4
      002192 CC               [12]  796 	xch	a,r4
      002193 30 E3 02         [24]  797 	jnb	acc.3,00140$
      002196 44 F0            [12]  798 	orl	a,#0xf0
      002198                        799 00140$:
      002198 74 0F            [12]  800 	mov	a,#0x0f
      00219A 5C               [12]  801 	anl	a,r4
      00219B 44 10            [12]  802 	orl	a,#0x10
      00219D FD               [12]  803 	mov	r5,a
                                    804 ;	spi_dac.c:245: low_byte = (dac_data & 0x0F) << 4;
      00219E 53 06 0F         [24]  805 	anl	ar6,#0x0f
      0021A1 EE               [12]  806 	mov	a,r6
      0021A2 C4               [12]  807 	swap	a
      0021A3 54 F0            [12]  808 	anl	a,#0xf0
      0021A5 FF               [12]  809 	mov	r7,a
                                    810 ;	spi_dac.c:251: P1_1 = 0;  // Select DAC
                                    811 ;	assignBit
      0021A6 C2 91            [12]  812 	clr	_P1_1
                                    813 ;	spi_dac.c:254: SPDAT = high_byte;
      0021A8 8D C5            [24]  814 	mov	_SPDAT,r5
                                    815 ;	spi_dac.c:255: while (!(SPSTA & (1<<7))); 
      0021AA                        816 00104$:
      0021AA E5 C4            [12]  817 	mov	a,_SPSTA
      0021AC 30 E7 FB         [24]  818 	jnb	acc.7,00104$
                                    819 ;	spi_dac.c:259: SPDAT = low_byte;
      0021AF 8F C5            [24]  820 	mov	_SPDAT,r7
                                    821 ;	spi_dac.c:260: while (!(SPSTA & (1<<7))); 
      0021B1                        822 00107$:
      0021B1 E5 C4            [12]  823 	mov	a,_SPSTA
      0021B3 30 E7 FB         [24]  824 	jnb	acc.7,00107$
                                    825 ;	spi_dac.c:262: P1_1 = 1;  // Deselect DAC
                                    826 ;	assignBit
      0021B6 D2 91            [12]  827 	setb	_P1_1
                                    828 ;	spi_dac.c:264: dac_value_index++;
      0021B8 90 04 04         [24]  829 	mov	dptr,#_main_dac_value_index_65537_27
      0021BB E0               [24]  830 	movx	a,@dptr
      0021BC 24 01            [12]  831 	add	a,#0x01
      0021BE F0               [24]  832 	movx	@dptr,a
      0021BF A3               [24]  833 	inc	dptr
      0021C0 E0               [24]  834 	movx	a,@dptr
      0021C1 34 00            [12]  835 	addc	a,#0x00
      0021C3 F0               [24]  836 	movx	@dptr,a
                                    837 ;	spi_dac.c:266: }
      0021C4 02 21 47         [24]  838 	ljmp	00111$
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'timer0_init'
                                    841 ;------------------------------------------------------------
                                    842 ;	spi_dac.c:268: void timer0_init(void)
                                    843 ;	-----------------------------------------
                                    844 ;	 function timer0_init
                                    845 ;	-----------------------------------------
      0021C7                        846 _timer0_init:
                                    847 ;	spi_dac.c:270: TMOD &= 0xF0;    // Clear Timer0 mode bits
      0021C7 53 89 F0         [24]  848 	anl	_TMOD,#0xf0
                                    849 ;	spi_dac.c:271: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      0021CA 43 89 01         [24]  850 	orl	_TMOD,#0x01
                                    851 ;	spi_dac.c:274: TH0 = TH0_RELOAD;
      0021CD 75 8C FC         [24]  852 	mov	_TH0,#0xfc
                                    853 ;	spi_dac.c:275: TL0 = TL0_RELOAD;
      0021D0 75 8A 66         [24]  854 	mov	_TL0,#0x66
                                    855 ;	spi_dac.c:277: ET0 = 1;         // Enable Timer0 interrupt
                                    856 ;	assignBit
      0021D3 D2 A9            [12]  857 	setb	_ET0
                                    858 ;	spi_dac.c:278: TR0 = 1;         // Start Timer0
                                    859 ;	assignBit
      0021D5 D2 8C            [12]  860 	setb	_TR0
                                    861 ;	spi_dac.c:279: }
      0021D7 22               [24]  862 	ret
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'timer0_isr'
                                    865 ;------------------------------------------------------------
                                    866 ;	spi_dac.c:282: void timer0_isr(void) __interrupt 1
                                    867 ;	-----------------------------------------
                                    868 ;	 function timer0_isr
                                    869 ;	-----------------------------------------
      0021D8                        870 _timer0_isr:
      0021D8 C0 20            [24]  871 	push	bits
      0021DA C0 E0            [24]  872 	push	acc
      0021DC C0 F0            [24]  873 	push	b
      0021DE C0 82            [24]  874 	push	dpl
      0021E0 C0 83            [24]  875 	push	dph
      0021E2 C0 07            [24]  876 	push	(0+7)
      0021E4 C0 06            [24]  877 	push	(0+6)
      0021E6 C0 05            [24]  878 	push	(0+5)
      0021E8 C0 04            [24]  879 	push	(0+4)
      0021EA C0 03            [24]  880 	push	(0+3)
      0021EC C0 02            [24]  881 	push	(0+2)
      0021EE C0 01            [24]  882 	push	(0+1)
      0021F0 C0 00            [24]  883 	push	(0+0)
      0021F2 C0 D0            [24]  884 	push	psw
      0021F4 75 D0 00         [24]  885 	mov	psw,#0x00
                                    886 ;	spi_dac.c:285: TH0 = 0x4B;
      0021F7 75 8C 4B         [24]  887 	mov	_TH0,#0x4b
                                    888 ;	spi_dac.c:286: TL0 = 0x1C;
      0021FA 75 8A 1C         [24]  889 	mov	_TL0,#0x1c
                                    890 ;	spi_dac.c:288: ms_flag = 1;     // Set 1ms flag
      0021FD 90 04 41         [24]  891 	mov	dptr,#_ms_flag
      002200 74 01            [12]  892 	mov	a,#0x01
      002202 F0               [24]  893 	movx	@dptr,a
                                    894 ;	spi_dac.c:290: printf("T \n\r");
      002203 74 86            [12]  895 	mov	a,#___str_2
      002205 C0 E0            [24]  896 	push	acc
      002207 74 2F            [12]  897 	mov	a,#(___str_2 >> 8)
      002209 C0 E0            [24]  898 	push	acc
      00220B 74 80            [12]  899 	mov	a,#0x80
      00220D C0 E0            [24]  900 	push	acc
      00220F 12 22 F6         [24]  901 	lcall	_printf
      002212 15 81            [12]  902 	dec	sp
      002214 15 81            [12]  903 	dec	sp
      002216 15 81            [12]  904 	dec	sp
                                    905 ;	spi_dac.c:293: }
      002218 D0 D0            [24]  906 	pop	psw
      00221A D0 00            [24]  907 	pop	(0+0)
      00221C D0 01            [24]  908 	pop	(0+1)
      00221E D0 02            [24]  909 	pop	(0+2)
      002220 D0 03            [24]  910 	pop	(0+3)
      002222 D0 04            [24]  911 	pop	(0+4)
      002224 D0 05            [24]  912 	pop	(0+5)
      002226 D0 06            [24]  913 	pop	(0+6)
      002228 D0 07            [24]  914 	pop	(0+7)
      00222A D0 83            [24]  915 	pop	dph
      00222C D0 82            [24]  916 	pop	dpl
      00222E D0 F0            [24]  917 	pop	b
      002230 D0 E0            [24]  918 	pop	acc
      002232 D0 20            [24]  919 	pop	bits
      002234 32               [24]  920 	reti
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'spi_isr'
                                    923 ;------------------------------------------------------------
                                    924 ;	spi_dac.c:301: void spi_isr(void) __interrupt 9
                                    925 ;	-----------------------------------------
                                    926 ;	 function spi_isr
                                    927 ;	-----------------------------------------
      002235                        928 _spi_isr:
      002235 C0 20            [24]  929 	push	bits
      002237 C0 E0            [24]  930 	push	acc
      002239 C0 F0            [24]  931 	push	b
      00223B C0 82            [24]  932 	push	dpl
      00223D C0 83            [24]  933 	push	dph
      00223F C0 07            [24]  934 	push	(0+7)
      002241 C0 06            [24]  935 	push	(0+6)
      002243 C0 05            [24]  936 	push	(0+5)
      002245 C0 04            [24]  937 	push	(0+4)
      002247 C0 03            [24]  938 	push	(0+3)
      002249 C0 02            [24]  939 	push	(0+2)
      00224B C0 01            [24]  940 	push	(0+1)
      00224D C0 00            [24]  941 	push	(0+0)
      00224F C0 D0            [24]  942 	push	psw
      002251 75 D0 00         [24]  943 	mov	psw,#0x00
                                    944 ;	spi_dac.c:303: if(SPSTA == 0x80)  // Check for successful transmission
      002254 74 80            [12]  945 	mov	a,#0x80
      002256 B5 C4 1E         [24]  946 	cjne	a,_SPSTA,00103$
                                    947 ;	spi_dac.c:305: transmission_complete = 1;
      002259 90 04 42         [24]  948 	mov	dptr,#_transmission_complete
      00225C 74 01            [12]  949 	mov	a,#0x01
      00225E F0               [24]  950 	movx	@dptr,a
      00225F E4               [12]  951 	clr	a
      002260 A3               [24]  952 	inc	dptr
      002261 F0               [24]  953 	movx	@dptr,a
                                    954 ;	spi_dac.c:306: printf("spi isr \n\r");
      002262 74 8B            [12]  955 	mov	a,#___str_3
      002264 C0 E0            [24]  956 	push	acc
      002266 74 2F            [12]  957 	mov	a,#(___str_3 >> 8)
      002268 C0 E0            [24]  958 	push	acc
      00226A 74 80            [12]  959 	mov	a,#0x80
      00226C C0 E0            [24]  960 	push	acc
      00226E 12 22 F6         [24]  961 	lcall	_printf
      002271 15 81            [12]  962 	dec	sp
      002273 15 81            [12]  963 	dec	sp
      002275 15 81            [12]  964 	dec	sp
      002277                        965 00103$:
                                    966 ;	spi_dac.c:309: }
      002277 D0 D0            [24]  967 	pop	psw
      002279 D0 00            [24]  968 	pop	(0+0)
      00227B D0 01            [24]  969 	pop	(0+1)
      00227D D0 02            [24]  970 	pop	(0+2)
      00227F D0 03            [24]  971 	pop	(0+3)
      002281 D0 04            [24]  972 	pop	(0+4)
      002283 D0 05            [24]  973 	pop	(0+5)
      002285 D0 06            [24]  974 	pop	(0+6)
      002287 D0 07            [24]  975 	pop	(0+7)
      002289 D0 83            [24]  976 	pop	dph
      00228B D0 82            [24]  977 	pop	dpl
      00228D D0 F0            [24]  978 	pop	b
      00228F D0 E0            [24]  979 	pop	acc
      002291 D0 20            [24]  980 	pop	bits
      002293 32               [24]  981 	reti
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function 'spi_init'
                                    984 ;------------------------------------------------------------
                                    985 ;	spi_dac.c:321: void spi_init(void) 
                                    986 ;	-----------------------------------------
                                    987 ;	 function spi_init
                                    988 ;	-----------------------------------------
      002294                        989 _spi_init:
                                    990 ;	spi_dac.c:342: SPCON |= 0x10;
      002294 43 C3 10         [24]  991 	orl	_SPCON,#0x10
                                    992 ;	spi_dac.c:343: SPCON |= 0x20;
      002297 43 C3 20         [24]  993 	orl	_SPCON,#0x20
                                    994 ;	spi_dac.c:344: SPCON |= 0x40;
      00229A 43 C3 40         [24]  995 	orl	_SPCON,#0x40
                                    996 ;	spi_dac.c:351: }
      00229D 22               [24]  997 	ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	spi_dac.c:358: void spi_transmission_start(void)
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function spi_transmission_start
                                   1004 ;	-----------------------------------------
      00229E                       1005 _spi_transmission_start:
                                   1006 ;	spi_dac.c:360: SPCON |= SPI_ENABLE;           // Enable SPI
      00229E 43 C3 40         [24] 1007 	orl	_SPCON,#0x40
                                   1008 ;	spi_dac.c:361: P1_1 = 0;
                                   1009 ;	assignBit
      0022A1 C2 91            [12] 1010 	clr	_P1_1
                                   1011 ;	spi_dac.c:362: }
      0022A3 22               [24] 1012 	ret
                                   1013 ;------------------------------------------------------------
                                   1014 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1015 ;------------------------------------------------------------
                                   1016 ;	spi_dac.c:369: void spi_transmission_stop(void) 
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function spi_transmission_stop
                                   1019 ;	-----------------------------------------
      0022A4                       1020 _spi_transmission_stop:
                                   1021 ;	spi_dac.c:371: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0022A4 53 C3 BF         [24] 1022 	anl	_SPCON,#0xbf
                                   1023 ;	spi_dac.c:372: }
      0022A7 22               [24] 1024 	ret
                                   1025 	.area CSEG    (CODE)
                                   1026 	.area CONST   (CODE)
      002D58                       1027 _dac_values:
      002D58 80 00                 1028 	.byte #0x80, #0x00	;  128
      002D5A 83 00                 1029 	.byte #0x83, #0x00	;  131
      002D5C 86 00                 1030 	.byte #0x86, #0x00	;  134
      002D5E 89 00                 1031 	.byte #0x89, #0x00	;  137
      002D60 8C 00                 1032 	.byte #0x8c, #0x00	;  140
      002D62 90 00                 1033 	.byte #0x90, #0x00	;  144
      002D64 93 00                 1034 	.byte #0x93, #0x00	;  147
      002D66 96 00                 1035 	.byte #0x96, #0x00	;  150
      002D68 99 00                 1036 	.byte #0x99, #0x00	;  153
      002D6A 9C 00                 1037 	.byte #0x9c, #0x00	;  156
      002D6C 9F 00                 1038 	.byte #0x9f, #0x00	;  159
      002D6E A2 00                 1039 	.byte #0xa2, #0x00	;  162
      002D70 A5 00                 1040 	.byte #0xa5, #0x00	;  165
      002D72 A8 00                 1041 	.byte #0xa8, #0x00	;  168
      002D74 AB 00                 1042 	.byte #0xab, #0x00	;  171
      002D76 AE 00                 1043 	.byte #0xae, #0x00	;  174
      002D78 B1 00                 1044 	.byte #0xb1, #0x00	;  177
      002D7A B3 00                 1045 	.byte #0xb3, #0x00	;  179
      002D7C B6 00                 1046 	.byte #0xb6, #0x00	;  182
      002D7E B9 00                 1047 	.byte #0xb9, #0x00	;  185
      002D80 BC 00                 1048 	.byte #0xbc, #0x00	;  188
      002D82 BF 00                 1049 	.byte #0xbf, #0x00	;  191
      002D84 C1 00                 1050 	.byte #0xc1, #0x00	;  193
      002D86 C4 00                 1051 	.byte #0xc4, #0x00	;  196
      002D88 C7 00                 1052 	.byte #0xc7, #0x00	;  199
      002D8A C9 00                 1053 	.byte #0xc9, #0x00	;  201
      002D8C CC 00                 1054 	.byte #0xcc, #0x00	;  204
      002D8E CE 00                 1055 	.byte #0xce, #0x00	;  206
      002D90 D1 00                 1056 	.byte #0xd1, #0x00	;  209
      002D92 D3 00                 1057 	.byte #0xd3, #0x00	;  211
      002D94 D5 00                 1058 	.byte #0xd5, #0x00	;  213
      002D96 D8 00                 1059 	.byte #0xd8, #0x00	;  216
      002D98 DA 00                 1060 	.byte #0xda, #0x00	;  218
      002D9A DC 00                 1061 	.byte #0xdc, #0x00	;  220
      002D9C DE 00                 1062 	.byte #0xde, #0x00	;  222
      002D9E E0 00                 1063 	.byte #0xe0, #0x00	;  224
      002DA0 E2 00                 1064 	.byte #0xe2, #0x00	;  226
      002DA2 E4 00                 1065 	.byte #0xe4, #0x00	;  228
      002DA4 E6 00                 1066 	.byte #0xe6, #0x00	;  230
      002DA6 E8 00                 1067 	.byte #0xe8, #0x00	;  232
      002DA8 EA 00                 1068 	.byte #0xea, #0x00	;  234
      002DAA EB 00                 1069 	.byte #0xeb, #0x00	;  235
      002DAC ED 00                 1070 	.byte #0xed, #0x00	;  237
      002DAE EF 00                 1071 	.byte #0xef, #0x00	;  239
      002DB0 F0 00                 1072 	.byte #0xf0, #0x00	;  240
      002DB2 F1 00                 1073 	.byte #0xf1, #0x00	;  241
      002DB4 F3 00                 1074 	.byte #0xf3, #0x00	;  243
      002DB6 F4 00                 1075 	.byte #0xf4, #0x00	;  244
      002DB8 F5 00                 1076 	.byte #0xf5, #0x00	;  245
      002DBA F6 00                 1077 	.byte #0xf6, #0x00	;  246
      002DBC F8 00                 1078 	.byte #0xf8, #0x00	;  248
      002DBE F9 00                 1079 	.byte #0xf9, #0x00	;  249
      002DC0 FA 00                 1080 	.byte #0xfa, #0x00	;  250
      002DC2 FA 00                 1081 	.byte #0xfa, #0x00	;  250
      002DC4 FB 00                 1082 	.byte #0xfb, #0x00	;  251
      002DC6 FC 00                 1083 	.byte #0xfc, #0x00	;  252
      002DC8 FD 00                 1084 	.byte #0xfd, #0x00	;  253
      002DCA FD 00                 1085 	.byte #0xfd, #0x00	;  253
      002DCC FE 00                 1086 	.byte #0xfe, #0x00	;  254
      002DCE FE 00                 1087 	.byte #0xfe, #0x00	;  254
      002DD0 FE 00                 1088 	.byte #0xfe, #0x00	;  254
      002DD2 FF 00                 1089 	.byte #0xff, #0x00	;  255
      002DD4 FF 00                 1090 	.byte #0xff, #0x00	;  255
      002DD6 FF 00                 1091 	.byte #0xff, #0x00	;  255
      002DD8 FF 00                 1092 	.byte #0xff, #0x00	;  255
      002DDA FF 00                 1093 	.byte #0xff, #0x00	;  255
      002DDC FF 00                 1094 	.byte #0xff, #0x00	;  255
      002DDE FF 00                 1095 	.byte #0xff, #0x00	;  255
      002DE0 FE 00                 1096 	.byte #0xfe, #0x00	;  254
      002DE2 FE 00                 1097 	.byte #0xfe, #0x00	;  254
      002DE4 FE 00                 1098 	.byte #0xfe, #0x00	;  254
      002DE6 FD 00                 1099 	.byte #0xfd, #0x00	;  253
      002DE8 FD 00                 1100 	.byte #0xfd, #0x00	;  253
      002DEA FC 00                 1101 	.byte #0xfc, #0x00	;  252
      002DEC FB 00                 1102 	.byte #0xfb, #0x00	;  251
      002DEE FA 00                 1103 	.byte #0xfa, #0x00	;  250
      002DF0 FA 00                 1104 	.byte #0xfa, #0x00	;  250
      002DF2 F9 00                 1105 	.byte #0xf9, #0x00	;  249
      002DF4 F8 00                 1106 	.byte #0xf8, #0x00	;  248
      002DF6 F6 00                 1107 	.byte #0xf6, #0x00	;  246
      002DF8 F5 00                 1108 	.byte #0xf5, #0x00	;  245
      002DFA F4 00                 1109 	.byte #0xf4, #0x00	;  244
      002DFC F3 00                 1110 	.byte #0xf3, #0x00	;  243
      002DFE F1 00                 1111 	.byte #0xf1, #0x00	;  241
      002E00 F0 00                 1112 	.byte #0xf0, #0x00	;  240
      002E02 EF 00                 1113 	.byte #0xef, #0x00	;  239
      002E04 ED 00                 1114 	.byte #0xed, #0x00	;  237
      002E06 EB 00                 1115 	.byte #0xeb, #0x00	;  235
      002E08 EA 00                 1116 	.byte #0xea, #0x00	;  234
      002E0A E8 00                 1117 	.byte #0xe8, #0x00	;  232
      002E0C E6 00                 1118 	.byte #0xe6, #0x00	;  230
      002E0E E4 00                 1119 	.byte #0xe4, #0x00	;  228
      002E10 E2 00                 1120 	.byte #0xe2, #0x00	;  226
      002E12 E0 00                 1121 	.byte #0xe0, #0x00	;  224
      002E14 DE 00                 1122 	.byte #0xde, #0x00	;  222
      002E16 DC 00                 1123 	.byte #0xdc, #0x00	;  220
      002E18 DA 00                 1124 	.byte #0xda, #0x00	;  218
      002E1A D8 00                 1125 	.byte #0xd8, #0x00	;  216
      002E1C D5 00                 1126 	.byte #0xd5, #0x00	;  213
      002E1E D3 00                 1127 	.byte #0xd3, #0x00	;  211
      002E20 D1 00                 1128 	.byte #0xd1, #0x00	;  209
      002E22 CE 00                 1129 	.byte #0xce, #0x00	;  206
      002E24 CC 00                 1130 	.byte #0xcc, #0x00	;  204
      002E26 C9 00                 1131 	.byte #0xc9, #0x00	;  201
      002E28 C7 00                 1132 	.byte #0xc7, #0x00	;  199
      002E2A C4 00                 1133 	.byte #0xc4, #0x00	;  196
      002E2C C1 00                 1134 	.byte #0xc1, #0x00	;  193
      002E2E BF 00                 1135 	.byte #0xbf, #0x00	;  191
      002E30 BC 00                 1136 	.byte #0xbc, #0x00	;  188
      002E32 B9 00                 1137 	.byte #0xb9, #0x00	;  185
      002E34 B6 00                 1138 	.byte #0xb6, #0x00	;  182
      002E36 B3 00                 1139 	.byte #0xb3, #0x00	;  179
      002E38 B1 00                 1140 	.byte #0xb1, #0x00	;  177
      002E3A AE 00                 1141 	.byte #0xae, #0x00	;  174
      002E3C AB 00                 1142 	.byte #0xab, #0x00	;  171
      002E3E A8 00                 1143 	.byte #0xa8, #0x00	;  168
      002E40 A5 00                 1144 	.byte #0xa5, #0x00	;  165
      002E42 A2 00                 1145 	.byte #0xa2, #0x00	;  162
      002E44 9F 00                 1146 	.byte #0x9f, #0x00	;  159
      002E46 9C 00                 1147 	.byte #0x9c, #0x00	;  156
      002E48 99 00                 1148 	.byte #0x99, #0x00	;  153
      002E4A 96 00                 1149 	.byte #0x96, #0x00	;  150
      002E4C 93 00                 1150 	.byte #0x93, #0x00	;  147
      002E4E 90 00                 1151 	.byte #0x90, #0x00	;  144
      002E50 8C 00                 1152 	.byte #0x8c, #0x00	;  140
      002E52 89 00                 1153 	.byte #0x89, #0x00	;  137
      002E54 86 00                 1154 	.byte #0x86, #0x00	;  134
      002E56 83 00                 1155 	.byte #0x83, #0x00	;  131
      002E58 80 00                 1156 	.byte #0x80, #0x00	;  128
      002E5A 7D 00                 1157 	.byte #0x7d, #0x00	;  125
      002E5C 7A 00                 1158 	.byte #0x7a, #0x00	;  122
      002E5E 77 00                 1159 	.byte #0x77, #0x00	;  119
      002E60 74 00                 1160 	.byte #0x74, #0x00	;  116
      002E62 70 00                 1161 	.byte #0x70, #0x00	;  112
      002E64 6D 00                 1162 	.byte #0x6d, #0x00	;  109
      002E66 6A 00                 1163 	.byte #0x6a, #0x00	;  106
      002E68 67 00                 1164 	.byte #0x67, #0x00	;  103
      002E6A 64 00                 1165 	.byte #0x64, #0x00	;  100
      002E6C 61 00                 1166 	.byte #0x61, #0x00	;  97
      002E6E 5E 00                 1167 	.byte #0x5e, #0x00	;  94
      002E70 5B 00                 1168 	.byte #0x5b, #0x00	;  91
      002E72 58 00                 1169 	.byte #0x58, #0x00	;  88
      002E74 55 00                 1170 	.byte #0x55, #0x00	;  85
      002E76 52 00                 1171 	.byte #0x52, #0x00	;  82
      002E78 4F 00                 1172 	.byte #0x4f, #0x00	;  79
      002E7A 4D 00                 1173 	.byte #0x4d, #0x00	;  77
      002E7C 4A 00                 1174 	.byte #0x4a, #0x00	;  74
      002E7E 47 00                 1175 	.byte #0x47, #0x00	;  71
      002E80 44 00                 1176 	.byte #0x44, #0x00	;  68
      002E82 41 00                 1177 	.byte #0x41, #0x00	;  65
      002E84 3F 00                 1178 	.byte #0x3f, #0x00	;  63
      002E86 3C 00                 1179 	.byte #0x3c, #0x00	;  60
      002E88 39 00                 1180 	.byte #0x39, #0x00	;  57
      002E8A 37 00                 1181 	.byte #0x37, #0x00	;  55
      002E8C 34 00                 1182 	.byte #0x34, #0x00	;  52
      002E8E 32 00                 1183 	.byte #0x32, #0x00	;  50
      002E90 2F 00                 1184 	.byte #0x2f, #0x00	;  47
      002E92 2D 00                 1185 	.byte #0x2d, #0x00	;  45
      002E94 2B 00                 1186 	.byte #0x2b, #0x00	;  43
      002E96 28 00                 1187 	.byte #0x28, #0x00	;  40
      002E98 26 00                 1188 	.byte #0x26, #0x00	;  38
      002E9A 24 00                 1189 	.byte #0x24, #0x00	;  36
      002E9C 22 00                 1190 	.byte #0x22, #0x00	;  34
      002E9E 20 00                 1191 	.byte #0x20, #0x00	;  32
      002EA0 1E 00                 1192 	.byte #0x1e, #0x00	;  30
      002EA2 1C 00                 1193 	.byte #0x1c, #0x00	;  28
      002EA4 1A 00                 1194 	.byte #0x1a, #0x00	;  26
      002EA6 18 00                 1195 	.byte #0x18, #0x00	;  24
      002EA8 16 00                 1196 	.byte #0x16, #0x00	;  22
      002EAA 15 00                 1197 	.byte #0x15, #0x00	;  21
      002EAC 13 00                 1198 	.byte #0x13, #0x00	;  19
      002EAE 11 00                 1199 	.byte #0x11, #0x00	;  17
      002EB0 10 00                 1200 	.byte #0x10, #0x00	;  16
      002EB2 0F 00                 1201 	.byte #0x0f, #0x00	;  15
      002EB4 0D 00                 1202 	.byte #0x0d, #0x00	;  13
      002EB6 0C 00                 1203 	.byte #0x0c, #0x00	;  12
      002EB8 0B 00                 1204 	.byte #0x0b, #0x00	;  11
      002EBA 0A 00                 1205 	.byte #0x0a, #0x00	;  10
      002EBC 08 00                 1206 	.byte #0x08, #0x00	;  8
      002EBE 07 00                 1207 	.byte #0x07, #0x00	;  7
      002EC0 06 00                 1208 	.byte #0x06, #0x00	;  6
      002EC2 06 00                 1209 	.byte #0x06, #0x00	;  6
      002EC4 05 00                 1210 	.byte #0x05, #0x00	;  5
      002EC6 04 00                 1211 	.byte #0x04, #0x00	;  4
      002EC8 03 00                 1212 	.byte #0x03, #0x00	;  3
      002ECA 03 00                 1213 	.byte #0x03, #0x00	;  3
      002ECC 02 00                 1214 	.byte #0x02, #0x00	;  2
      002ECE 02 00                 1215 	.byte #0x02, #0x00	;  2
      002ED0 02 00                 1216 	.byte #0x02, #0x00	;  2
      002ED2 01 00                 1217 	.byte #0x01, #0x00	;  1
      002ED4 01 00                 1218 	.byte #0x01, #0x00	;  1
      002ED6 01 00                 1219 	.byte #0x01, #0x00	;  1
      002ED8 01 00                 1220 	.byte #0x01, #0x00	;  1
      002EDA 01 00                 1221 	.byte #0x01, #0x00	;  1
      002EDC 01 00                 1222 	.byte #0x01, #0x00	;  1
      002EDE 01 00                 1223 	.byte #0x01, #0x00	;  1
      002EE0 02 00                 1224 	.byte #0x02, #0x00	;  2
      002EE2 02 00                 1225 	.byte #0x02, #0x00	;  2
      002EE4 02 00                 1226 	.byte #0x02, #0x00	;  2
      002EE6 03 00                 1227 	.byte #0x03, #0x00	;  3
      002EE8 03 00                 1228 	.byte #0x03, #0x00	;  3
      002EEA 04 00                 1229 	.byte #0x04, #0x00	;  4
      002EEC 05 00                 1230 	.byte #0x05, #0x00	;  5
      002EEE 06 00                 1231 	.byte #0x06, #0x00	;  6
      002EF0 06 00                 1232 	.byte #0x06, #0x00	;  6
      002EF2 07 00                 1233 	.byte #0x07, #0x00	;  7
      002EF4 08 00                 1234 	.byte #0x08, #0x00	;  8
      002EF6 0A 00                 1235 	.byte #0x0a, #0x00	;  10
      002EF8 0B 00                 1236 	.byte #0x0b, #0x00	;  11
      002EFA 0C 00                 1237 	.byte #0x0c, #0x00	;  12
      002EFC 0D 00                 1238 	.byte #0x0d, #0x00	;  13
      002EFE 0F 00                 1239 	.byte #0x0f, #0x00	;  15
      002F00 10 00                 1240 	.byte #0x10, #0x00	;  16
      002F02 11 00                 1241 	.byte #0x11, #0x00	;  17
      002F04 13 00                 1242 	.byte #0x13, #0x00	;  19
      002F06 15 00                 1243 	.byte #0x15, #0x00	;  21
      002F08 16 00                 1244 	.byte #0x16, #0x00	;  22
      002F0A 18 00                 1245 	.byte #0x18, #0x00	;  24
      002F0C 1A 00                 1246 	.byte #0x1a, #0x00	;  26
      002F0E 1C 00                 1247 	.byte #0x1c, #0x00	;  28
      002F10 1E 00                 1248 	.byte #0x1e, #0x00	;  30
      002F12 20 00                 1249 	.byte #0x20, #0x00	;  32
      002F14 22 00                 1250 	.byte #0x22, #0x00	;  34
      002F16 24 00                 1251 	.byte #0x24, #0x00	;  36
      002F18 26 00                 1252 	.byte #0x26, #0x00	;  38
      002F1A 28 00                 1253 	.byte #0x28, #0x00	;  40
      002F1C 2B 00                 1254 	.byte #0x2b, #0x00	;  43
      002F1E 2D 00                 1255 	.byte #0x2d, #0x00	;  45
      002F20 2F 00                 1256 	.byte #0x2f, #0x00	;  47
      002F22 32 00                 1257 	.byte #0x32, #0x00	;  50
      002F24 34 00                 1258 	.byte #0x34, #0x00	;  52
      002F26 37 00                 1259 	.byte #0x37, #0x00	;  55
      002F28 39 00                 1260 	.byte #0x39, #0x00	;  57
      002F2A 3C 00                 1261 	.byte #0x3c, #0x00	;  60
      002F2C 3F 00                 1262 	.byte #0x3f, #0x00	;  63
      002F2E 41 00                 1263 	.byte #0x41, #0x00	;  65
      002F30 44 00                 1264 	.byte #0x44, #0x00	;  68
      002F32 47 00                 1265 	.byte #0x47, #0x00	;  71
      002F34 4A 00                 1266 	.byte #0x4a, #0x00	;  74
      002F36 4D 00                 1267 	.byte #0x4d, #0x00	;  77
      002F38 4F 00                 1268 	.byte #0x4f, #0x00	;  79
      002F3A 52 00                 1269 	.byte #0x52, #0x00	;  82
      002F3C 55 00                 1270 	.byte #0x55, #0x00	;  85
      002F3E 58 00                 1271 	.byte #0x58, #0x00	;  88
      002F40 5B 00                 1272 	.byte #0x5b, #0x00	;  91
      002F42 5E 00                 1273 	.byte #0x5e, #0x00	;  94
      002F44 61 00                 1274 	.byte #0x61, #0x00	;  97
      002F46 64 00                 1275 	.byte #0x64, #0x00	;  100
      002F48 67 00                 1276 	.byte #0x67, #0x00	;  103
      002F4A 6A 00                 1277 	.byte #0x6a, #0x00	;  106
      002F4C 6D 00                 1278 	.byte #0x6d, #0x00	;  109
      002F4E 70 00                 1279 	.byte #0x70, #0x00	;  112
      002F50 74 00                 1280 	.byte #0x74, #0x00	;  116
      002F52 77 00                 1281 	.byte #0x77, #0x00	;  119
      002F54 7A 00                 1282 	.byte #0x7a, #0x00	;  122
      002F56 7D 00                 1283 	.byte #0x7d, #0x00	;  125
                                   1284 	.area CONST   (CODE)
      002F58                       1285 ___str_0:
      002F58 20 53 50 49 20 44 41  1286 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002F68 0A                    1287 	.db 0x0a
      002F69 0D                    1288 	.db 0x0d
      002F6A 00                    1289 	.db 0x00
                                   1290 	.area CSEG    (CODE)
                                   1291 	.area CONST   (CODE)
      002F6B                       1292 ___str_1:
      002F6B 53 50 49 20 54 52 41  1293 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002F83 0A                    1294 	.db 0x0a
      002F84 0D                    1295 	.db 0x0d
      002F85 00                    1296 	.db 0x00
                                   1297 	.area CSEG    (CODE)
                                   1298 	.area CONST   (CODE)
      002F86                       1299 ___str_2:
      002F86 54 20                 1300 	.ascii "T "
      002F88 0A                    1301 	.db 0x0a
      002F89 0D                    1302 	.db 0x0d
      002F8A 00                    1303 	.db 0x00
                                   1304 	.area CSEG    (CODE)
                                   1305 	.area CONST   (CODE)
      002F8B                       1306 ___str_3:
      002F8B 73 70 69 20 69 73 72  1307 	.ascii "spi isr "
             20
      002F93 0A                    1308 	.db 0x0a
      002F94 0D                    1309 	.db 0x0d
      002F95 00                    1310 	.db 0x00
                                   1311 	.area CSEG    (CODE)
                                   1312 	.area XINIT   (CODE)
      002FA1                       1313 __xinit__ms_flag:
      002FA1 00                    1314 	.db #0x00	; 0
      002FA2                       1315 __xinit__transmission_complete:
      002FA2 00 00                 1316 	.byte #0x00, #0x00	;  0
                                   1317 	.area CABS    (ABS,CODE)
