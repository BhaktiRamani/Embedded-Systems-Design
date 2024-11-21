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
      00200B 02 22 2B         [24]  519 	ljmp	_timer0_isr
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
      00204B 02 22 88         [24]  535 	ljmp	_spi_isr
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
      00210D 74 0F            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2E            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 49         [24]  704 	lcall	_printf
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
      00212F 12 22 E7         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 22            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 2E            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 23 49         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:155: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:157: printf("w\n\r");
      002147 74 3D            [12]  735 	mov	a,#___str_2
      002149 C0 E0            [24]  736 	push	acc
      00214B 74 2E            [12]  737 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  738 	push	acc
      00214F 74 80            [12]  739 	mov	a,#0x80
      002151 C0 E0            [24]  740 	push	acc
      002153 12 23 49         [24]  741 	lcall	_printf
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
      002176 24 AB            [12]  767 	add	a,#_dac_values
      002178 F5 82            [12]  768 	mov	dpl,a
      00217A EF               [12]  769 	mov	a,r7
      00217B 34 2D            [12]  770 	addc	a,#(_dac_values >> 8)
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
      0021B1 74 0F            [12]  814 	mov	a,#0x0f
      0021B3 5C               [12]  815 	anl	a,r4
      0021B4 44 30            [12]  816 	orl	a,#0x30
      0021B6 FD               [12]  817 	mov	r5,a
                                    818 ;	spi_dac.c:177: low_byte = (dac_data & 0x0F) << 4;
      0021B7 53 06 0F         [24]  819 	anl	ar6,#0x0f
      0021BA EE               [12]  820 	mov	a,r6
      0021BB C4               [12]  821 	swap	a
      0021BC 54 F0            [12]  822 	anl	a,#0xf0
      0021BE FF               [12]  823 	mov	r7,a
                                    824 ;	spi_dac.c:182: delay_ms(10);
      0021BF 90 00 0A         [24]  825 	mov	dptr,#0x000a
      0021C2 C0 07            [24]  826 	push	ar7
      0021C4 C0 05            [24]  827 	push	ar5
      0021C6 12 20 DA         [24]  828 	lcall	_delay_ms
      0021C9 D0 05            [24]  829 	pop	ar5
      0021CB D0 07            [24]  830 	pop	ar7
                                    831 ;	spi_dac.c:185: P1_1 = 0;  // Select DAC
                                    832 ;	assignBit
      0021CD C2 91            [12]  833 	clr	_P1_1
                                    834 ;	spi_dac.c:191: SPDAT = high_byte;
      0021CF 8D C5            [24]  835 	mov	_SPDAT,r5
                                    836 ;	spi_dac.c:192: while (!(SPSTA & (1<<7))); 
      0021D1                        837 00104$:
      0021D1 E5 C4            [12]  838 	mov	a,_SPSTA
      0021D3 30 E7 FB         [24]  839 	jnb	acc.7,00104$
                                    840 ;	spi_dac.c:197: SPDAT = low_byte;
      0021D6 8F C5            [24]  841 	mov	_SPDAT,r7
                                    842 ;	spi_dac.c:198: while (!(SPSTA & (1<<7))); 
      0021D8                        843 00107$:
      0021D8 E5 C4            [12]  844 	mov	a,_SPSTA
      0021DA 30 E7 FB         [24]  845 	jnb	acc.7,00107$
                                    846 ;	spi_dac.c:202: P1_1 = 1;  // Deselect DAC
                                    847 ;	assignBit
      0021DD D2 91            [12]  848 	setb	_P1_1
                                    849 ;	spi_dac.c:208: P1_1 = 1;  // Deselect DAC
                                    850 ;	assignBit
      0021DF D2 91            [12]  851 	setb	_P1_1
                                    852 ;	spi_dac.c:212: printf("E\n\r");
      0021E1 74 41            [12]  853 	mov	a,#___str_3
      0021E3 C0 E0            [24]  854 	push	acc
      0021E5 74 2E            [12]  855 	mov	a,#(___str_3 >> 8)
      0021E7 C0 E0            [24]  856 	push	acc
      0021E9 74 80            [12]  857 	mov	a,#0x80
      0021EB C0 E0            [24]  858 	push	acc
      0021ED 12 23 49         [24]  859 	lcall	_printf
      0021F0 15 81            [12]  860 	dec	sp
      0021F2 15 81            [12]  861 	dec	sp
      0021F4 15 81            [12]  862 	dec	sp
                                    863 ;	spi_dac.c:213: printf("\n\r");
      0021F6 74 45            [12]  864 	mov	a,#___str_4
      0021F8 C0 E0            [24]  865 	push	acc
      0021FA 74 2E            [12]  866 	mov	a,#(___str_4 >> 8)
      0021FC C0 E0            [24]  867 	push	acc
      0021FE 74 80            [12]  868 	mov	a,#0x80
      002200 C0 E0            [24]  869 	push	acc
      002202 12 23 49         [24]  870 	lcall	_printf
      002205 15 81            [12]  871 	dec	sp
      002207 15 81            [12]  872 	dec	sp
      002209 15 81            [12]  873 	dec	sp
                                    874 ;	spi_dac.c:216: dac_value_index++;
      00220B 90 04 04         [24]  875 	mov	dptr,#_main_dac_value_index_65537_27
      00220E E0               [24]  876 	movx	a,@dptr
      00220F 24 01            [12]  877 	add	a,#0x01
      002211 F0               [24]  878 	movx	@dptr,a
      002212 A3               [24]  879 	inc	dptr
      002213 E0               [24]  880 	movx	a,@dptr
      002214 34 00            [12]  881 	addc	a,#0x00
      002216 F0               [24]  882 	movx	@dptr,a
                                    883 ;	spi_dac.c:218: }
      002217 02 21 47         [24]  884 	ljmp	00111$
                                    885 ;------------------------------------------------------------
                                    886 ;Allocation info for local variables in function 'timer0_init'
                                    887 ;------------------------------------------------------------
                                    888 ;	spi_dac.c:220: void timer0_init(void)
                                    889 ;	-----------------------------------------
                                    890 ;	 function timer0_init
                                    891 ;	-----------------------------------------
      00221A                        892 _timer0_init:
                                    893 ;	spi_dac.c:222: TMOD &= 0xF0;    // Clear Timer0 mode bits
      00221A 53 89 F0         [24]  894 	anl	_TMOD,#0xf0
                                    895 ;	spi_dac.c:223: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00221D 43 89 01         [24]  896 	orl	_TMOD,#0x01
                                    897 ;	spi_dac.c:226: TH0 = TH0_RELOAD;
      002220 75 8C FC         [24]  898 	mov	_TH0,#0xfc
                                    899 ;	spi_dac.c:227: TL0 = TL0_RELOAD;
      002223 75 8A 66         [24]  900 	mov	_TL0,#0x66
                                    901 ;	spi_dac.c:229: ET0 = 1;         // Enable Timer0 interrupt
                                    902 ;	assignBit
      002226 D2 A9            [12]  903 	setb	_ET0
                                    904 ;	spi_dac.c:230: TR0 = 1;         // Start Timer0
                                    905 ;	assignBit
      002228 D2 8C            [12]  906 	setb	_TR0
                                    907 ;	spi_dac.c:231: }
      00222A 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'timer0_isr'
                                    911 ;------------------------------------------------------------
                                    912 ;	spi_dac.c:234: void timer0_isr(void) __interrupt 1
                                    913 ;	-----------------------------------------
                                    914 ;	 function timer0_isr
                                    915 ;	-----------------------------------------
      00222B                        916 _timer0_isr:
      00222B C0 20            [24]  917 	push	bits
      00222D C0 E0            [24]  918 	push	acc
      00222F C0 F0            [24]  919 	push	b
      002231 C0 82            [24]  920 	push	dpl
      002233 C0 83            [24]  921 	push	dph
      002235 C0 07            [24]  922 	push	(0+7)
      002237 C0 06            [24]  923 	push	(0+6)
      002239 C0 05            [24]  924 	push	(0+5)
      00223B C0 04            [24]  925 	push	(0+4)
      00223D C0 03            [24]  926 	push	(0+3)
      00223F C0 02            [24]  927 	push	(0+2)
      002241 C0 01            [24]  928 	push	(0+1)
      002243 C0 00            [24]  929 	push	(0+0)
      002245 C0 D0            [24]  930 	push	psw
      002247 75 D0 00         [24]  931 	mov	psw,#0x00
                                    932 ;	spi_dac.c:237: TH0 = 0x4B;
      00224A 75 8C 4B         [24]  933 	mov	_TH0,#0x4b
                                    934 ;	spi_dac.c:238: TL0 = 0x1C;
      00224D 75 8A 1C         [24]  935 	mov	_TL0,#0x1c
                                    936 ;	spi_dac.c:240: ms_flag = 1;     // Set 1ms flag
      002250 90 04 41         [24]  937 	mov	dptr,#_ms_flag
      002253 74 01            [12]  938 	mov	a,#0x01
      002255 F0               [24]  939 	movx	@dptr,a
                                    940 ;	spi_dac.c:242: printf("T \n\r");
      002256 74 48            [12]  941 	mov	a,#___str_5
      002258 C0 E0            [24]  942 	push	acc
      00225A 74 2E            [12]  943 	mov	a,#(___str_5 >> 8)
      00225C C0 E0            [24]  944 	push	acc
      00225E 74 80            [12]  945 	mov	a,#0x80
      002260 C0 E0            [24]  946 	push	acc
      002262 12 23 49         [24]  947 	lcall	_printf
      002265 15 81            [12]  948 	dec	sp
      002267 15 81            [12]  949 	dec	sp
      002269 15 81            [12]  950 	dec	sp
                                    951 ;	spi_dac.c:245: }
      00226B D0 D0            [24]  952 	pop	psw
      00226D D0 00            [24]  953 	pop	(0+0)
      00226F D0 01            [24]  954 	pop	(0+1)
      002271 D0 02            [24]  955 	pop	(0+2)
      002273 D0 03            [24]  956 	pop	(0+3)
      002275 D0 04            [24]  957 	pop	(0+4)
      002277 D0 05            [24]  958 	pop	(0+5)
      002279 D0 06            [24]  959 	pop	(0+6)
      00227B D0 07            [24]  960 	pop	(0+7)
      00227D D0 83            [24]  961 	pop	dph
      00227F D0 82            [24]  962 	pop	dpl
      002281 D0 F0            [24]  963 	pop	b
      002283 D0 E0            [24]  964 	pop	acc
      002285 D0 20            [24]  965 	pop	bits
      002287 32               [24]  966 	reti
                                    967 ;------------------------------------------------------------
                                    968 ;Allocation info for local variables in function 'spi_isr'
                                    969 ;------------------------------------------------------------
                                    970 ;	spi_dac.c:253: void spi_isr(void) __interrupt 9
                                    971 ;	-----------------------------------------
                                    972 ;	 function spi_isr
                                    973 ;	-----------------------------------------
      002288                        974 _spi_isr:
      002288 C0 20            [24]  975 	push	bits
      00228A C0 E0            [24]  976 	push	acc
      00228C C0 F0            [24]  977 	push	b
      00228E C0 82            [24]  978 	push	dpl
      002290 C0 83            [24]  979 	push	dph
      002292 C0 07            [24]  980 	push	(0+7)
      002294 C0 06            [24]  981 	push	(0+6)
      002296 C0 05            [24]  982 	push	(0+5)
      002298 C0 04            [24]  983 	push	(0+4)
      00229A C0 03            [24]  984 	push	(0+3)
      00229C C0 02            [24]  985 	push	(0+2)
      00229E C0 01            [24]  986 	push	(0+1)
      0022A0 C0 00            [24]  987 	push	(0+0)
      0022A2 C0 D0            [24]  988 	push	psw
      0022A4 75 D0 00         [24]  989 	mov	psw,#0x00
                                    990 ;	spi_dac.c:255: if(SPSTA == 0x80)  // Check for successful transmission
      0022A7 74 80            [12]  991 	mov	a,#0x80
      0022A9 B5 C4 1E         [24]  992 	cjne	a,_SPSTA,00103$
                                    993 ;	spi_dac.c:257: transmission_complete = 1;
      0022AC 90 04 42         [24]  994 	mov	dptr,#_transmission_complete
      0022AF 74 01            [12]  995 	mov	a,#0x01
      0022B1 F0               [24]  996 	movx	@dptr,a
      0022B2 E4               [12]  997 	clr	a
      0022B3 A3               [24]  998 	inc	dptr
      0022B4 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	spi_dac.c:258: printf("spi isr \n\r");
      0022B5 74 4D            [12] 1001 	mov	a,#___str_6
      0022B7 C0 E0            [24] 1002 	push	acc
      0022B9 74 2E            [12] 1003 	mov	a,#(___str_6 >> 8)
      0022BB C0 E0            [24] 1004 	push	acc
      0022BD 74 80            [12] 1005 	mov	a,#0x80
      0022BF C0 E0            [24] 1006 	push	acc
      0022C1 12 23 49         [24] 1007 	lcall	_printf
      0022C4 15 81            [12] 1008 	dec	sp
      0022C6 15 81            [12] 1009 	dec	sp
      0022C8 15 81            [12] 1010 	dec	sp
      0022CA                       1011 00103$:
                                   1012 ;	spi_dac.c:261: }
      0022CA D0 D0            [24] 1013 	pop	psw
      0022CC D0 00            [24] 1014 	pop	(0+0)
      0022CE D0 01            [24] 1015 	pop	(0+1)
      0022D0 D0 02            [24] 1016 	pop	(0+2)
      0022D2 D0 03            [24] 1017 	pop	(0+3)
      0022D4 D0 04            [24] 1018 	pop	(0+4)
      0022D6 D0 05            [24] 1019 	pop	(0+5)
      0022D8 D0 06            [24] 1020 	pop	(0+6)
      0022DA D0 07            [24] 1021 	pop	(0+7)
      0022DC D0 83            [24] 1022 	pop	dph
      0022DE D0 82            [24] 1023 	pop	dpl
      0022E0 D0 F0            [24] 1024 	pop	b
      0022E2 D0 E0            [24] 1025 	pop	acc
      0022E4 D0 20            [24] 1026 	pop	bits
      0022E6 32               [24] 1027 	reti
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'spi_init'
                                   1030 ;------------------------------------------------------------
                                   1031 ;	spi_dac.c:273: void spi_init(void) 
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function spi_init
                                   1034 ;	-----------------------------------------
      0022E7                       1035 _spi_init:
                                   1036 ;	spi_dac.c:294: SPCON |= 0x10;
      0022E7 43 C3 10         [24] 1037 	orl	_SPCON,#0x10
                                   1038 ;	spi_dac.c:295: SPCON |= 0x20;
      0022EA 43 C3 20         [24] 1039 	orl	_SPCON,#0x20
                                   1040 ;	spi_dac.c:296: SPCON |= 0x40;
      0022ED 43 C3 40         [24] 1041 	orl	_SPCON,#0x40
                                   1042 ;	spi_dac.c:303: }
      0022F0 22               [24] 1043 	ret
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1046 ;------------------------------------------------------------
                                   1047 ;	spi_dac.c:310: void spi_transmission_start(void)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function spi_transmission_start
                                   1050 ;	-----------------------------------------
      0022F1                       1051 _spi_transmission_start:
                                   1052 ;	spi_dac.c:312: SPCON |= SPI_ENABLE;           // Enable SPI
      0022F1 43 C3 40         [24] 1053 	orl	_SPCON,#0x40
                                   1054 ;	spi_dac.c:313: P1_1 = 0;
                                   1055 ;	assignBit
      0022F4 C2 91            [12] 1056 	clr	_P1_1
                                   1057 ;	spi_dac.c:314: }
      0022F6 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1061 ;------------------------------------------------------------
                                   1062 ;	spi_dac.c:321: void spi_transmission_stop(void) 
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function spi_transmission_stop
                                   1065 ;	-----------------------------------------
      0022F7                       1066 _spi_transmission_stop:
                                   1067 ;	spi_dac.c:323: SPCON &= ~SPI_ENABLE;          // Disable SPI
      0022F7 53 C3 BF         [24] 1068 	anl	_SPCON,#0xbf
                                   1069 ;	spi_dac.c:324: }
      0022FA 22               [24] 1070 	ret
                                   1071 	.area CSEG    (CODE)
                                   1072 	.area CONST   (CODE)
      002DAB                       1073 _dac_values:
      002DAB 80 00                 1074 	.byte #0x80, #0x00	;  128
      002DAD 8F 00                 1075 	.byte #0x8f, #0x00	;  143
      002DAF 9F 00                 1076 	.byte #0x9f, #0x00	;  159
      002DB1 AE 00                 1077 	.byte #0xae, #0x00	;  174
      002DB3 BD 00                 1078 	.byte #0xbd, #0x00	;  189
      002DB5 CA 00                 1079 	.byte #0xca, #0x00	;  202
      002DB7 D7 00                 1080 	.byte #0xd7, #0x00	;  215
      002DB9 E2 00                 1081 	.byte #0xe2, #0x00	;  226
      002DBB EB 00                 1082 	.byte #0xeb, #0x00	;  235
      002DBD F3 00                 1083 	.byte #0xf3, #0x00	;  243
      002DBF F9 00                 1084 	.byte #0xf9, #0x00	;  249
      002DC1 FD 00                 1085 	.byte #0xfd, #0x00	;  253
      002DC3 FF 00                 1086 	.byte #0xff, #0x00	;  255
      002DC5 FF 00                 1087 	.byte #0xff, #0x00	;  255
      002DC7 FD 00                 1088 	.byte #0xfd, #0x00	;  253
      002DC9 F9 00                 1089 	.byte #0xf9, #0x00	;  249
      002DCB F3 00                 1090 	.byte #0xf3, #0x00	;  243
      002DCD EB 00                 1091 	.byte #0xeb, #0x00	;  235
      002DCF E2 00                 1092 	.byte #0xe2, #0x00	;  226
      002DD1 D7 00                 1093 	.byte #0xd7, #0x00	;  215
      002DD3 CA 00                 1094 	.byte #0xca, #0x00	;  202
      002DD5 BD 00                 1095 	.byte #0xbd, #0x00	;  189
      002DD7 AE 00                 1096 	.byte #0xae, #0x00	;  174
      002DD9 9F 00                 1097 	.byte #0x9f, #0x00	;  159
      002DDB 8F 00                 1098 	.byte #0x8f, #0x00	;  143
      002DDD 80 00                 1099 	.byte #0x80, #0x00	;  128
      002DDF 70 00                 1100 	.byte #0x70, #0x00	;  112
      002DE1 60 00                 1101 	.byte #0x60, #0x00	;  96
      002DE3 51 00                 1102 	.byte #0x51, #0x00	;  81
      002DE5 42 00                 1103 	.byte #0x42, #0x00	;  66
      002DE7 35 00                 1104 	.byte #0x35, #0x00	;  53
      002DE9 28 00                 1105 	.byte #0x28, #0x00	;  40
      002DEB 1D 00                 1106 	.byte #0x1d, #0x00	;  29
      002DED 14 00                 1107 	.byte #0x14, #0x00	;  20
      002DEF 0C 00                 1108 	.byte #0x0c, #0x00	;  12
      002DF1 06 00                 1109 	.byte #0x06, #0x00	;  6
      002DF3 02 00                 1110 	.byte #0x02, #0x00	;  2
      002DF5 00 00                 1111 	.byte #0x00, #0x00	;  0
      002DF7 00 00                 1112 	.byte #0x00, #0x00	;  0
      002DF9 02 00                 1113 	.byte #0x02, #0x00	;  2
      002DFB 06 00                 1114 	.byte #0x06, #0x00	;  6
      002DFD 0C 00                 1115 	.byte #0x0c, #0x00	;  12
      002DFF 14 00                 1116 	.byte #0x14, #0x00	;  20
      002E01 1D 00                 1117 	.byte #0x1d, #0x00	;  29
      002E03 28 00                 1118 	.byte #0x28, #0x00	;  40
      002E05 35 00                 1119 	.byte #0x35, #0x00	;  53
      002E07 42 00                 1120 	.byte #0x42, #0x00	;  66
      002E09 51 00                 1121 	.byte #0x51, #0x00	;  81
      002E0B 60 00                 1122 	.byte #0x60, #0x00	;  96
      002E0D 70 00                 1123 	.byte #0x70, #0x00	;  112
                                   1124 	.area CONST   (CODE)
      002E0F                       1125 ___str_0:
      002E0F 20 53 50 49 20 44 41  1126 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002E1F 0A                    1127 	.db 0x0a
      002E20 0D                    1128 	.db 0x0d
      002E21 00                    1129 	.db 0x00
                                   1130 	.area CSEG    (CODE)
                                   1131 	.area CONST   (CODE)
      002E22                       1132 ___str_1:
      002E22 53 50 49 20 54 52 41  1133 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002E3A 0A                    1134 	.db 0x0a
      002E3B 0D                    1135 	.db 0x0d
      002E3C 00                    1136 	.db 0x00
                                   1137 	.area CSEG    (CODE)
                                   1138 	.area CONST   (CODE)
      002E3D                       1139 ___str_2:
      002E3D 77                    1140 	.ascii "w"
      002E3E 0A                    1141 	.db 0x0a
      002E3F 0D                    1142 	.db 0x0d
      002E40 00                    1143 	.db 0x00
                                   1144 	.area CSEG    (CODE)
                                   1145 	.area CONST   (CODE)
      002E41                       1146 ___str_3:
      002E41 45                    1147 	.ascii "E"
      002E42 0A                    1148 	.db 0x0a
      002E43 0D                    1149 	.db 0x0d
      002E44 00                    1150 	.db 0x00
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
      002E45                       1153 ___str_4:
      002E45 0A                    1154 	.db 0x0a
      002E46 0D                    1155 	.db 0x0d
      002E47 00                    1156 	.db 0x00
                                   1157 	.area CSEG    (CODE)
                                   1158 	.area CONST   (CODE)
      002E48                       1159 ___str_5:
      002E48 54 20                 1160 	.ascii "T "
      002E4A 0A                    1161 	.db 0x0a
      002E4B 0D                    1162 	.db 0x0d
      002E4C 00                    1163 	.db 0x00
                                   1164 	.area CSEG    (CODE)
                                   1165 	.area CONST   (CODE)
      002E4D                       1166 ___str_6:
      002E4D 73 70 69 20 69 73 72  1167 	.ascii "spi isr "
             20
      002E55 0A                    1168 	.db 0x0a
      002E56 0D                    1169 	.db 0x0d
      002E57 00                    1170 	.db 0x00
                                   1171 	.area CSEG    (CODE)
                                   1172 	.area XINIT   (CODE)
      002E63                       1173 __xinit__ms_flag:
      002E63 00                    1174 	.db #0x00	; 0
      002E64                       1175 __xinit__transmission_complete:
      002E64 00 00                 1176 	.byte #0x00, #0x00	;  0
                                   1177 	.area CABS    (ABS,CODE)
