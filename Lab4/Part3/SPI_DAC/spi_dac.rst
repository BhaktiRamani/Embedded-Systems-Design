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
      00200B 02 22 83         [24]  519 	ljmp	_timer0_isr
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
      00204B 02 22 E0         [24]  535 	ljmp	_spi_isr
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
                                    568 ;	spi_dac.c:90: int putchar(int charToSend) {
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
                                    588 ;	spi_dac.c:91: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  589 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  590 	movx	a,@dptr
      0020BC FE               [12]  591 	mov	r6,a
      0020BD A3               [24]  592 	inc	dptr
      0020BE E0               [24]  593 	movx	a,@dptr
      0020BF FF               [12]  594 	mov	r7,a
      0020C0 8E 99            [24]  595 	mov	_SBUF,r6
                                    596 ;	spi_dac.c:92: while (!TI);             /* Wait for transmission completion */
      0020C2                        597 00101$:
                                    598 ;	spi_dac.c:93: TI = 0;                  /* Clear transmission flag */
                                    599 ;	assignBit
      0020C2 10 99 02         [24]  600 	jbc	_TI,00114$
      0020C5 80 FB            [24]  601 	sjmp	00101$
      0020C7                        602 00114$:
                                    603 ;	spi_dac.c:94: return charToSend;
      0020C7 8E 82            [24]  604 	mov	dpl,r6
      0020C9 8F 83            [24]  605 	mov	dph,r7
                                    606 ;	spi_dac.c:95: }
      0020CB 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'getchar'
                                    610 ;------------------------------------------------------------
                                    611 ;	spi_dac.c:101: int getchar(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function getchar
                                    614 ;	-----------------------------------------
      0020CC                        615 _getchar:
                                    616 ;	spi_dac.c:102: while (!RI);             /* Wait for reception completion */
      0020CC                        617 00101$:
                                    618 ;	spi_dac.c:103: RI = 0;                  /* Clear reception flag */
                                    619 ;	assignBit
      0020CC 10 98 02         [24]  620 	jbc	_RI,00114$
      0020CF 80 FB            [24]  621 	sjmp	00101$
      0020D1                        622 00114$:
                                    623 ;	spi_dac.c:104: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  624 	mov	r6,_SBUF
      0020D3 7F 00            [12]  625 	mov	r7,#0x00
      0020D5 8E 82            [24]  626 	mov	dpl,r6
      0020D7 8F 83            [24]  627 	mov	dph,r7
                                    628 ;	spi_dac.c:105: }
      0020D9 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay_ms'
                                    632 ;------------------------------------------------------------
                                    633 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    634 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    635 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    636 ;------------------------------------------------------------
                                    637 ;	spi_dac.c:107: void delay_ms(unsigned int ms) {
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
                                    649 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
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
                                    665 ;	spi_dac.c:110: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
                                    676 ;	spi_dac.c:109: for (i = 0; i < ms; i++)
      002105 0C               [12]  677 	inc	r4
      002106 BC 00 E8         [24]  678 	cjne	r4,#0x00,00107$
      002109 0D               [12]  679 	inc	r5
      00210A 80 E5            [24]  680 	sjmp	00107$
      00210C                        681 00109$:
                                    682 ;	spi_dac.c:111: }
      00210C 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'main'
                                    686 ;------------------------------------------------------------
                                    687 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    688 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    689 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    690 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    691 ;------------------------------------------------------------
                                    692 ;	spi_dac.c:112: int main(void)
                                    693 ;	-----------------------------------------
                                    694 ;	 function main
                                    695 ;	-----------------------------------------
      00210D                        696 _main:
                                    697 ;	spi_dac.c:114: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 67            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2E            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 A1         [24]  704 	lcall	_printf
      00211C 15 81            [12]  705 	dec	sp
      00211E 15 81            [12]  706 	dec	sp
      002120 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:116: int dac_value_index = 0;
      002122 90 04 04         [24]  709 	mov	dptr,#_main_dac_value_index_65537_27
      002125 E4               [12]  710 	clr	a
      002126 F0               [24]  711 	movx	@dptr,a
      002127 A3               [24]  712 	inc	dptr
      002128 F0               [24]  713 	movx	@dptr,a
                                    714 ;	spi_dac.c:117: int dac_data = 0;
      002129 90 04 06         [24]  715 	mov	dptr,#_main_dac_data_65537_27
      00212C F0               [24]  716 	movx	@dptr,a
      00212D A3               [24]  717 	inc	dptr
      00212E F0               [24]  718 	movx	@dptr,a
                                    719 ;	spi_dac.c:123: spi_init();
      00212F 12 23 3F         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 7A            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 2E            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 23 A1         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:155: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:157: printf("w\n\r");
      002147 74 95            [12]  735 	mov	a,#___str_2
      002149 C0 E0            [24]  736 	push	acc
      00214B 74 2E            [12]  737 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  738 	push	acc
      00214F 74 80            [12]  739 	mov	a,#0x80
      002151 C0 E0            [24]  740 	push	acc
      002153 12 23 A1         [24]  741 	lcall	_printf
      002156 15 81            [12]  742 	dec	sp
      002158 15 81            [12]  743 	dec	sp
      00215A 15 81            [12]  744 	dec	sp
                                    745 ;	spi_dac.c:159: if(dac_value_index < SINE_MAX_INDEX)
      00215C 90 04 04         [24]  746 	mov	dptr,#_main_dac_value_index_65537_27
      00215F E0               [24]  747 	movx	a,@dptr
      002160 FE               [12]  748 	mov	r6,a
      002161 A3               [24]  749 	inc	dptr
      002162 E0               [24]  750 	movx	a,@dptr
      002163 FF               [12]  751 	mov	r7,a
      002164 C3               [12]  752 	clr	c
      002165 EE               [12]  753 	mov	a,r6
      002166 94 31            [12]  754 	subb	a,#0x31
      002168 EF               [12]  755 	mov	a,r7
      002169 64 80            [12]  756 	xrl	a,#0x80
      00216B 94 80            [12]  757 	subb	a,#0x80
      00216D 50 21            [24]  758 	jnc	00102$
                                    759 ;	spi_dac.c:163: dac_data = dac_values[dac_value_index];
      00216F EE               [12]  760 	mov	a,r6
      002170 2E               [12]  761 	add	a,r6
      002171 FE               [12]  762 	mov	r6,a
      002172 EF               [12]  763 	mov	a,r7
      002173 33               [12]  764 	rlc	a
      002174 FF               [12]  765 	mov	r7,a
      002175 EE               [12]  766 	mov	a,r6
      002176 24 03            [12]  767 	add	a,#_dac_values
      002178 F5 82            [12]  768 	mov	dpl,a
      00217A EF               [12]  769 	mov	a,r7
      00217B 34 2E            [12]  770 	addc	a,#(_dac_values >> 8)
      00217D F5 83            [12]  771 	mov	dph,a
      00217F E4               [12]  772 	clr	a
      002180 93               [24]  773 	movc	a,@a+dptr
      002181 FE               [12]  774 	mov	r6,a
      002182 A3               [24]  775 	inc	dptr
      002183 E4               [12]  776 	clr	a
      002184 93               [24]  777 	movc	a,@a+dptr
      002185 FF               [12]  778 	mov	r7,a
      002186 90 04 06         [24]  779 	mov	dptr,#_main_dac_data_65537_27
      002189 EE               [12]  780 	mov	a,r6
      00218A F0               [24]  781 	movx	@dptr,a
      00218B EF               [12]  782 	mov	a,r7
      00218C A3               [24]  783 	inc	dptr
      00218D F0               [24]  784 	movx	@dptr,a
      00218E 80 07            [24]  785 	sjmp	00103$
      002190                        786 00102$:
                                    787 ;	spi_dac.c:167: dac_value_index = 0;  // Reset index for next cycle
      002190 90 04 04         [24]  788 	mov	dptr,#_main_dac_value_index_65537_27
      002193 E4               [12]  789 	clr	a
      002194 F0               [24]  790 	movx	@dptr,a
      002195 A3               [24]  791 	inc	dptr
      002196 F0               [24]  792 	movx	@dptr,a
      002197                        793 00103$:
                                    794 ;	spi_dac.c:174: ((dac_data >> 4) & 0x0F);
      002197 90 04 06         [24]  795 	mov	dptr,#_main_dac_data_65537_27
      00219A E0               [24]  796 	movx	a,@dptr
      00219B FE               [12]  797 	mov	r6,a
      00219C A3               [24]  798 	inc	dptr
      00219D E0               [24]  799 	movx	a,@dptr
      00219E 8E 04            [24]  800 	mov	ar4,r6
      0021A0 C4               [12]  801 	swap	a
      0021A1 CC               [12]  802 	xch	a,r4
      0021A2 C4               [12]  803 	swap	a
      0021A3 54 0F            [12]  804 	anl	a,#0x0f
      0021A5 6C               [12]  805 	xrl	a,r4
      0021A6 CC               [12]  806 	xch	a,r4
      0021A7 54 0F            [12]  807 	anl	a,#0x0f
      0021A9 CC               [12]  808 	xch	a,r4
      0021AA 6C               [12]  809 	xrl	a,r4
      0021AB CC               [12]  810 	xch	a,r4
      0021AC 30 E3 02         [24]  811 	jnb	acc.3,00140$
      0021AF 44 F0            [12]  812 	orl	a,#0xf0
      0021B1                        813 00140$:
      0021B1 53 04 0F         [24]  814 	anl	ar4,#0x0f
      0021B4 7D 00            [12]  815 	mov	r5,#0x00
      0021B6 43 04 30         [24]  816 	orl	ar4,#0x30
                                    817 ;	spi_dac.c:177: low_byte = (dac_data & 0x0F) << 4;
      0021B9 53 06 0F         [24]  818 	anl	ar6,#0x0f
      0021BC E4               [12]  819 	clr	a
      0021BD CE               [12]  820 	xch	a,r6
      0021BE C4               [12]  821 	swap	a
      0021BF CE               [12]  822 	xch	a,r6
      0021C0 6E               [12]  823 	xrl	a,r6
      0021C1 CE               [12]  824 	xch	a,r6
      0021C2 54 F0            [12]  825 	anl	a,#0xf0
      0021C4 CE               [12]  826 	xch	a,r6
      0021C5 6E               [12]  827 	xrl	a,r6
      0021C6 FF               [12]  828 	mov	r7,a
                                    829 ;	spi_dac.c:182: delay_ms(10);
      0021C7 90 00 0A         [24]  830 	mov	dptr,#0x000a
      0021CA C0 07            [24]  831 	push	ar7
      0021CC C0 06            [24]  832 	push	ar6
      0021CE C0 05            [24]  833 	push	ar5
      0021D0 C0 04            [24]  834 	push	ar4
      0021D2 12 20 DA         [24]  835 	lcall	_delay_ms
      0021D5 D0 04            [24]  836 	pop	ar4
      0021D7 D0 05            [24]  837 	pop	ar5
      0021D9 D0 06            [24]  838 	pop	ar6
      0021DB D0 07            [24]  839 	pop	ar7
                                    840 ;	spi_dac.c:184: printf("Low byte %d\n\r", low_byte);
      0021DD C0 07            [24]  841 	push	ar7
      0021DF C0 06            [24]  842 	push	ar6
      0021E1 C0 05            [24]  843 	push	ar5
      0021E3 C0 04            [24]  844 	push	ar4
      0021E5 C0 06            [24]  845 	push	ar6
      0021E7 C0 07            [24]  846 	push	ar7
      0021E9 74 99            [12]  847 	mov	a,#___str_3
      0021EB C0 E0            [24]  848 	push	acc
      0021ED 74 2E            [12]  849 	mov	a,#(___str_3 >> 8)
      0021EF C0 E0            [24]  850 	push	acc
      0021F1 74 80            [12]  851 	mov	a,#0x80
      0021F3 C0 E0            [24]  852 	push	acc
      0021F5 12 23 A1         [24]  853 	lcall	_printf
      0021F8 E5 81            [12]  854 	mov	a,sp
      0021FA 24 FB            [12]  855 	add	a,#0xfb
      0021FC F5 81            [12]  856 	mov	sp,a
      0021FE D0 04            [24]  857 	pop	ar4
      002200 D0 05            [24]  858 	pop	ar5
                                    859 ;	spi_dac.c:185: printf("High byte %d\n\r", high_byte);
      002202 C0 05            [24]  860 	push	ar5
      002204 C0 04            [24]  861 	push	ar4
      002206 C0 04            [24]  862 	push	ar4
      002208 C0 05            [24]  863 	push	ar5
      00220A 74 A7            [12]  864 	mov	a,#___str_4
      00220C C0 E0            [24]  865 	push	acc
      00220E 74 2E            [12]  866 	mov	a,#(___str_4 >> 8)
      002210 C0 E0            [24]  867 	push	acc
      002212 74 80            [12]  868 	mov	a,#0x80
      002214 C0 E0            [24]  869 	push	acc
      002216 12 23 A1         [24]  870 	lcall	_printf
      002219 E5 81            [12]  871 	mov	a,sp
      00221B 24 FB            [12]  872 	add	a,#0xfb
      00221D F5 81            [12]  873 	mov	sp,a
      00221F D0 04            [24]  874 	pop	ar4
      002221 D0 05            [24]  875 	pop	ar5
      002223 D0 06            [24]  876 	pop	ar6
      002225 D0 07            [24]  877 	pop	ar7
                                    878 ;	spi_dac.c:187: P1_1 = 0;  // Select DAC
                                    879 ;	assignBit
      002227 C2 91            [12]  880 	clr	_P1_1
                                    881 ;	spi_dac.c:192: SPDAT = high_byte;
      002229 8C C5            [24]  882 	mov	_SPDAT,r4
                                    883 ;	spi_dac.c:193: while (!(SPSTA & (1<<7))); 
      00222B                        884 00104$:
      00222B E5 C4            [12]  885 	mov	a,_SPSTA
      00222D 30 E7 FB         [24]  886 	jnb	acc.7,00104$
                                    887 ;	spi_dac.c:198: SPDAT = low_byte;
      002230 8E C5            [24]  888 	mov	_SPDAT,r6
                                    889 ;	spi_dac.c:199: while (!(SPSTA & (1<<7))); 
      002232                        890 00107$:
      002232 E5 C4            [12]  891 	mov	a,_SPSTA
      002234 30 E7 FB         [24]  892 	jnb	acc.7,00107$
                                    893 ;	spi_dac.c:203: P1_1 = 1;  // Deselect DAC
                                    894 ;	assignBit
      002237 D2 91            [12]  895 	setb	_P1_1
                                    896 ;	spi_dac.c:208: printf("E\n\r");
      002239 74 B6            [12]  897 	mov	a,#___str_5
      00223B C0 E0            [24]  898 	push	acc
      00223D 74 2E            [12]  899 	mov	a,#(___str_5 >> 8)
      00223F C0 E0            [24]  900 	push	acc
      002241 74 80            [12]  901 	mov	a,#0x80
      002243 C0 E0            [24]  902 	push	acc
      002245 12 23 A1         [24]  903 	lcall	_printf
      002248 15 81            [12]  904 	dec	sp
      00224A 15 81            [12]  905 	dec	sp
      00224C 15 81            [12]  906 	dec	sp
                                    907 ;	spi_dac.c:209: printf("\n\r");
      00224E 74 BA            [12]  908 	mov	a,#___str_6
      002250 C0 E0            [24]  909 	push	acc
      002252 74 2E            [12]  910 	mov	a,#(___str_6 >> 8)
      002254 C0 E0            [24]  911 	push	acc
      002256 74 80            [12]  912 	mov	a,#0x80
      002258 C0 E0            [24]  913 	push	acc
      00225A 12 23 A1         [24]  914 	lcall	_printf
      00225D 15 81            [12]  915 	dec	sp
      00225F 15 81            [12]  916 	dec	sp
      002261 15 81            [12]  917 	dec	sp
                                    918 ;	spi_dac.c:212: dac_value_index++;
      002263 90 04 04         [24]  919 	mov	dptr,#_main_dac_value_index_65537_27
      002266 E0               [24]  920 	movx	a,@dptr
      002267 24 01            [12]  921 	add	a,#0x01
      002269 F0               [24]  922 	movx	@dptr,a
      00226A A3               [24]  923 	inc	dptr
      00226B E0               [24]  924 	movx	a,@dptr
      00226C 34 00            [12]  925 	addc	a,#0x00
      00226E F0               [24]  926 	movx	@dptr,a
                                    927 ;	spi_dac.c:214: }
      00226F 02 21 47         [24]  928 	ljmp	00111$
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'timer0_init'
                                    931 ;------------------------------------------------------------
                                    932 ;	spi_dac.c:216: void timer0_init(void)
                                    933 ;	-----------------------------------------
                                    934 ;	 function timer0_init
                                    935 ;	-----------------------------------------
      002272                        936 _timer0_init:
                                    937 ;	spi_dac.c:218: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002272 53 89 F0         [24]  938 	anl	_TMOD,#0xf0
                                    939 ;	spi_dac.c:219: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      002275 43 89 01         [24]  940 	orl	_TMOD,#0x01
                                    941 ;	spi_dac.c:222: TH0 = TH0_RELOAD;
      002278 75 8C FC         [24]  942 	mov	_TH0,#0xfc
                                    943 ;	spi_dac.c:223: TL0 = TL0_RELOAD;
      00227B 75 8A 66         [24]  944 	mov	_TL0,#0x66
                                    945 ;	spi_dac.c:225: ET0 = 1;         // Enable Timer0 interrupt
                                    946 ;	assignBit
      00227E D2 A9            [12]  947 	setb	_ET0
                                    948 ;	spi_dac.c:226: TR0 = 1;         // Start Timer0
                                    949 ;	assignBit
      002280 D2 8C            [12]  950 	setb	_TR0
                                    951 ;	spi_dac.c:227: }
      002282 22               [24]  952 	ret
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'timer0_isr'
                                    955 ;------------------------------------------------------------
                                    956 ;	spi_dac.c:230: void timer0_isr(void) __interrupt 1
                                    957 ;	-----------------------------------------
                                    958 ;	 function timer0_isr
                                    959 ;	-----------------------------------------
      002283                        960 _timer0_isr:
      002283 C0 20            [24]  961 	push	bits
      002285 C0 E0            [24]  962 	push	acc
      002287 C0 F0            [24]  963 	push	b
      002289 C0 82            [24]  964 	push	dpl
      00228B C0 83            [24]  965 	push	dph
      00228D C0 07            [24]  966 	push	(0+7)
      00228F C0 06            [24]  967 	push	(0+6)
      002291 C0 05            [24]  968 	push	(0+5)
      002293 C0 04            [24]  969 	push	(0+4)
      002295 C0 03            [24]  970 	push	(0+3)
      002297 C0 02            [24]  971 	push	(0+2)
      002299 C0 01            [24]  972 	push	(0+1)
      00229B C0 00            [24]  973 	push	(0+0)
      00229D C0 D0            [24]  974 	push	psw
      00229F 75 D0 00         [24]  975 	mov	psw,#0x00
                                    976 ;	spi_dac.c:233: TH0 = 0x4B;
      0022A2 75 8C 4B         [24]  977 	mov	_TH0,#0x4b
                                    978 ;	spi_dac.c:234: TL0 = 0x1C;
      0022A5 75 8A 1C         [24]  979 	mov	_TL0,#0x1c
                                    980 ;	spi_dac.c:236: ms_flag = 1;     // Set 1ms flag
      0022A8 90 04 41         [24]  981 	mov	dptr,#_ms_flag
      0022AB 74 01            [12]  982 	mov	a,#0x01
      0022AD F0               [24]  983 	movx	@dptr,a
                                    984 ;	spi_dac.c:238: printf("T \n\r");
      0022AE 74 BD            [12]  985 	mov	a,#___str_7
      0022B0 C0 E0            [24]  986 	push	acc
      0022B2 74 2E            [12]  987 	mov	a,#(___str_7 >> 8)
      0022B4 C0 E0            [24]  988 	push	acc
      0022B6 74 80            [12]  989 	mov	a,#0x80
      0022B8 C0 E0            [24]  990 	push	acc
      0022BA 12 23 A1         [24]  991 	lcall	_printf
      0022BD 15 81            [12]  992 	dec	sp
      0022BF 15 81            [12]  993 	dec	sp
      0022C1 15 81            [12]  994 	dec	sp
                                    995 ;	spi_dac.c:241: }
      0022C3 D0 D0            [24]  996 	pop	psw
      0022C5 D0 00            [24]  997 	pop	(0+0)
      0022C7 D0 01            [24]  998 	pop	(0+1)
      0022C9 D0 02            [24]  999 	pop	(0+2)
      0022CB D0 03            [24] 1000 	pop	(0+3)
      0022CD D0 04            [24] 1001 	pop	(0+4)
      0022CF D0 05            [24] 1002 	pop	(0+5)
      0022D1 D0 06            [24] 1003 	pop	(0+6)
      0022D3 D0 07            [24] 1004 	pop	(0+7)
      0022D5 D0 83            [24] 1005 	pop	dph
      0022D7 D0 82            [24] 1006 	pop	dpl
      0022D9 D0 F0            [24] 1007 	pop	b
      0022DB D0 E0            [24] 1008 	pop	acc
      0022DD D0 20            [24] 1009 	pop	bits
      0022DF 32               [24] 1010 	reti
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'spi_isr'
                                   1013 ;------------------------------------------------------------
                                   1014 ;	spi_dac.c:249: void spi_isr(void) __interrupt 9
                                   1015 ;	-----------------------------------------
                                   1016 ;	 function spi_isr
                                   1017 ;	-----------------------------------------
      0022E0                       1018 _spi_isr:
      0022E0 C0 20            [24] 1019 	push	bits
      0022E2 C0 E0            [24] 1020 	push	acc
      0022E4 C0 F0            [24] 1021 	push	b
      0022E6 C0 82            [24] 1022 	push	dpl
      0022E8 C0 83            [24] 1023 	push	dph
      0022EA C0 07            [24] 1024 	push	(0+7)
      0022EC C0 06            [24] 1025 	push	(0+6)
      0022EE C0 05            [24] 1026 	push	(0+5)
      0022F0 C0 04            [24] 1027 	push	(0+4)
      0022F2 C0 03            [24] 1028 	push	(0+3)
      0022F4 C0 02            [24] 1029 	push	(0+2)
      0022F6 C0 01            [24] 1030 	push	(0+1)
      0022F8 C0 00            [24] 1031 	push	(0+0)
      0022FA C0 D0            [24] 1032 	push	psw
      0022FC 75 D0 00         [24] 1033 	mov	psw,#0x00
                                   1034 ;	spi_dac.c:251: if(SPSTA == 0x80)  // Check for successful transmission
      0022FF 74 80            [12] 1035 	mov	a,#0x80
      002301 B5 C4 1E         [24] 1036 	cjne	a,_SPSTA,00103$
                                   1037 ;	spi_dac.c:253: transmission_complete = 1;
      002304 90 04 42         [24] 1038 	mov	dptr,#_transmission_complete
      002307 74 01            [12] 1039 	mov	a,#0x01
      002309 F0               [24] 1040 	movx	@dptr,a
      00230A E4               [12] 1041 	clr	a
      00230B A3               [24] 1042 	inc	dptr
      00230C F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	spi_dac.c:254: printf("spi isr \n\r");
      00230D 74 C2            [12] 1045 	mov	a,#___str_8
      00230F C0 E0            [24] 1046 	push	acc
      002311 74 2E            [12] 1047 	mov	a,#(___str_8 >> 8)
      002313 C0 E0            [24] 1048 	push	acc
      002315 74 80            [12] 1049 	mov	a,#0x80
      002317 C0 E0            [24] 1050 	push	acc
      002319 12 23 A1         [24] 1051 	lcall	_printf
      00231C 15 81            [12] 1052 	dec	sp
      00231E 15 81            [12] 1053 	dec	sp
      002320 15 81            [12] 1054 	dec	sp
      002322                       1055 00103$:
                                   1056 ;	spi_dac.c:257: }
      002322 D0 D0            [24] 1057 	pop	psw
      002324 D0 00            [24] 1058 	pop	(0+0)
      002326 D0 01            [24] 1059 	pop	(0+1)
      002328 D0 02            [24] 1060 	pop	(0+2)
      00232A D0 03            [24] 1061 	pop	(0+3)
      00232C D0 04            [24] 1062 	pop	(0+4)
      00232E D0 05            [24] 1063 	pop	(0+5)
      002330 D0 06            [24] 1064 	pop	(0+6)
      002332 D0 07            [24] 1065 	pop	(0+7)
      002334 D0 83            [24] 1066 	pop	dph
      002336 D0 82            [24] 1067 	pop	dpl
      002338 D0 F0            [24] 1068 	pop	b
      00233A D0 E0            [24] 1069 	pop	acc
      00233C D0 20            [24] 1070 	pop	bits
      00233E 32               [24] 1071 	reti
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'spi_init'
                                   1074 ;------------------------------------------------------------
                                   1075 ;	spi_dac.c:269: void spi_init(void) 
                                   1076 ;	-----------------------------------------
                                   1077 ;	 function spi_init
                                   1078 ;	-----------------------------------------
      00233F                       1079 _spi_init:
                                   1080 ;	spi_dac.c:290: SPCON |= 0x10;
      00233F 43 C3 10         [24] 1081 	orl	_SPCON,#0x10
                                   1082 ;	spi_dac.c:291: SPCON |= 0x20;
      002342 43 C3 20         [24] 1083 	orl	_SPCON,#0x20
                                   1084 ;	spi_dac.c:292: SPCON |= 0x40;
      002345 43 C3 40         [24] 1085 	orl	_SPCON,#0x40
                                   1086 ;	spi_dac.c:299: }
      002348 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1090 ;------------------------------------------------------------
                                   1091 ;	spi_dac.c:306: void spi_transmission_start(void)
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function spi_transmission_start
                                   1094 ;	-----------------------------------------
      002349                       1095 _spi_transmission_start:
                                   1096 ;	spi_dac.c:308: SPCON |= SPI_ENABLE;           // Enable SPI
      002349 43 C3 40         [24] 1097 	orl	_SPCON,#0x40
                                   1098 ;	spi_dac.c:309: P1_1 = 0;
                                   1099 ;	assignBit
      00234C C2 91            [12] 1100 	clr	_P1_1
                                   1101 ;	spi_dac.c:310: }
      00234E 22               [24] 1102 	ret
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	spi_dac.c:317: void spi_transmission_stop(void) 
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function spi_transmission_stop
                                   1109 ;	-----------------------------------------
      00234F                       1110 _spi_transmission_stop:
                                   1111 ;	spi_dac.c:319: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00234F 53 C3 BF         [24] 1112 	anl	_SPCON,#0xbf
                                   1113 ;	spi_dac.c:320: }
      002352 22               [24] 1114 	ret
                                   1115 	.area CSEG    (CODE)
                                   1116 	.area CONST   (CODE)
      002E03                       1117 _dac_values:
      002E03 80 00                 1118 	.byte #0x80, #0x00	;  128
      002E05 8F 00                 1119 	.byte #0x8f, #0x00	;  143
      002E07 9F 00                 1120 	.byte #0x9f, #0x00	;  159
      002E09 AE 00                 1121 	.byte #0xae, #0x00	;  174
      002E0B BD 00                 1122 	.byte #0xbd, #0x00	;  189
      002E0D CA 00                 1123 	.byte #0xca, #0x00	;  202
      002E0F D7 00                 1124 	.byte #0xd7, #0x00	;  215
      002E11 E2 00                 1125 	.byte #0xe2, #0x00	;  226
      002E13 EB 00                 1126 	.byte #0xeb, #0x00	;  235
      002E15 F3 00                 1127 	.byte #0xf3, #0x00	;  243
      002E17 F9 00                 1128 	.byte #0xf9, #0x00	;  249
      002E19 FD 00                 1129 	.byte #0xfd, #0x00	;  253
      002E1B FF 00                 1130 	.byte #0xff, #0x00	;  255
      002E1D FF 00                 1131 	.byte #0xff, #0x00	;  255
      002E1F FD 00                 1132 	.byte #0xfd, #0x00	;  253
      002E21 F9 00                 1133 	.byte #0xf9, #0x00	;  249
      002E23 F3 00                 1134 	.byte #0xf3, #0x00	;  243
      002E25 EB 00                 1135 	.byte #0xeb, #0x00	;  235
      002E27 E2 00                 1136 	.byte #0xe2, #0x00	;  226
      002E29 D7 00                 1137 	.byte #0xd7, #0x00	;  215
      002E2B CA 00                 1138 	.byte #0xca, #0x00	;  202
      002E2D BD 00                 1139 	.byte #0xbd, #0x00	;  189
      002E2F AE 00                 1140 	.byte #0xae, #0x00	;  174
      002E31 9F 00                 1141 	.byte #0x9f, #0x00	;  159
      002E33 8F 00                 1142 	.byte #0x8f, #0x00	;  143
      002E35 80 00                 1143 	.byte #0x80, #0x00	;  128
      002E37 70 00                 1144 	.byte #0x70, #0x00	;  112
      002E39 60 00                 1145 	.byte #0x60, #0x00	;  96
      002E3B 51 00                 1146 	.byte #0x51, #0x00	;  81
      002E3D 42 00                 1147 	.byte #0x42, #0x00	;  66
      002E3F 35 00                 1148 	.byte #0x35, #0x00	;  53
      002E41 28 00                 1149 	.byte #0x28, #0x00	;  40
      002E43 1D 00                 1150 	.byte #0x1d, #0x00	;  29
      002E45 14 00                 1151 	.byte #0x14, #0x00	;  20
      002E47 0C 00                 1152 	.byte #0x0c, #0x00	;  12
      002E49 06 00                 1153 	.byte #0x06, #0x00	;  6
      002E4B 02 00                 1154 	.byte #0x02, #0x00	;  2
      002E4D 00 00                 1155 	.byte #0x00, #0x00	;  0
      002E4F 00 00                 1156 	.byte #0x00, #0x00	;  0
      002E51 02 00                 1157 	.byte #0x02, #0x00	;  2
      002E53 06 00                 1158 	.byte #0x06, #0x00	;  6
      002E55 0C 00                 1159 	.byte #0x0c, #0x00	;  12
      002E57 14 00                 1160 	.byte #0x14, #0x00	;  20
      002E59 1D 00                 1161 	.byte #0x1d, #0x00	;  29
      002E5B 28 00                 1162 	.byte #0x28, #0x00	;  40
      002E5D 35 00                 1163 	.byte #0x35, #0x00	;  53
      002E5F 42 00                 1164 	.byte #0x42, #0x00	;  66
      002E61 51 00                 1165 	.byte #0x51, #0x00	;  81
      002E63 60 00                 1166 	.byte #0x60, #0x00	;  96
      002E65 70 00                 1167 	.byte #0x70, #0x00	;  112
                                   1168 	.area CONST   (CODE)
      002E67                       1169 ___str_0:
      002E67 20 53 50 49 20 44 41  1170 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002E77 0A                    1171 	.db 0x0a
      002E78 0D                    1172 	.db 0x0d
      002E79 00                    1173 	.db 0x00
                                   1174 	.area CSEG    (CODE)
                                   1175 	.area CONST   (CODE)
      002E7A                       1176 ___str_1:
      002E7A 53 50 49 20 54 52 41  1177 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002E92 0A                    1178 	.db 0x0a
      002E93 0D                    1179 	.db 0x0d
      002E94 00                    1180 	.db 0x00
                                   1181 	.area CSEG    (CODE)
                                   1182 	.area CONST   (CODE)
      002E95                       1183 ___str_2:
      002E95 77                    1184 	.ascii "w"
      002E96 0A                    1185 	.db 0x0a
      002E97 0D                    1186 	.db 0x0d
      002E98 00                    1187 	.db 0x00
                                   1188 	.area CSEG    (CODE)
                                   1189 	.area CONST   (CODE)
      002E99                       1190 ___str_3:
      002E99 4C 6F 77 20 62 79 74  1191 	.ascii "Low byte %d"
             65 20 25 64
      002EA4 0A                    1192 	.db 0x0a
      002EA5 0D                    1193 	.db 0x0d
      002EA6 00                    1194 	.db 0x00
                                   1195 	.area CSEG    (CODE)
                                   1196 	.area CONST   (CODE)
      002EA7                       1197 ___str_4:
      002EA7 48 69 67 68 20 62 79  1198 	.ascii "High byte %d"
             74 65 20 25 64
      002EB3 0A                    1199 	.db 0x0a
      002EB4 0D                    1200 	.db 0x0d
      002EB5 00                    1201 	.db 0x00
                                   1202 	.area CSEG    (CODE)
                                   1203 	.area CONST   (CODE)
      002EB6                       1204 ___str_5:
      002EB6 45                    1205 	.ascii "E"
      002EB7 0A                    1206 	.db 0x0a
      002EB8 0D                    1207 	.db 0x0d
      002EB9 00                    1208 	.db 0x00
                                   1209 	.area CSEG    (CODE)
                                   1210 	.area CONST   (CODE)
      002EBA                       1211 ___str_6:
      002EBA 0A                    1212 	.db 0x0a
      002EBB 0D                    1213 	.db 0x0d
      002EBC 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      002EBD                       1217 ___str_7:
      002EBD 54 20                 1218 	.ascii "T "
      002EBF 0A                    1219 	.db 0x0a
      002EC0 0D                    1220 	.db 0x0d
      002EC1 00                    1221 	.db 0x00
                                   1222 	.area CSEG    (CODE)
                                   1223 	.area CONST   (CODE)
      002EC2                       1224 ___str_8:
      002EC2 73 70 69 20 69 73 72  1225 	.ascii "spi isr "
             20
      002ECA 0A                    1226 	.db 0x0a
      002ECB 0D                    1227 	.db 0x0d
      002ECC 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area XINIT   (CODE)
      002ED8                       1231 __xinit__ms_flag:
      002ED8 00                    1232 	.db #0x00	; 0
      002ED9                       1233 __xinit__transmission_complete:
      002ED9 00 00                 1234 	.byte #0x00, #0x00	;  0
                                   1235 	.area CABS    (ABS,CODE)
