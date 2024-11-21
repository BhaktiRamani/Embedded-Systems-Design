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
      00200B 02 22 8E         [24]  519 	ljmp	_timer0_isr
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
      00204B 02 22 EB         [24]  535 	ljmp	_spi_isr
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
      00210D 74 80            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2E            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 BA         [24]  704 	lcall	_printf
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
                                    719 ;	spi_dac.c:120: EA |= GLOBAL_INT_ENABLE;        // Enable global interrupts
      00212F 7F 01            [12]  720 	mov	r7,#0x01
      002131 A2 AF            [12]  721 	mov	c,_EA
                                    722 ;	assignBit
      002133 EF               [12]  723 	mov	a,r7
      002134 24 FF            [12]  724 	add	a,#0xff
      002136 92 AF            [24]  725 	mov	_EA,c
                                    726 ;	spi_dac.c:123: spi_init();
      002138 12 23 4A         [24]  727 	lcall	_spi_init
                                    728 ;	spi_dac.c:126: printf("SPI TRANSMISSION STARTED\n\r");
      00213B 74 93            [12]  729 	mov	a,#___str_1
      00213D C0 E0            [24]  730 	push	acc
      00213F 74 2E            [12]  731 	mov	a,#(___str_1 >> 8)
      002141 C0 E0            [24]  732 	push	acc
      002143 74 80            [12]  733 	mov	a,#0x80
      002145 C0 E0            [24]  734 	push	acc
      002147 12 23 BA         [24]  735 	lcall	_printf
      00214A 15 81            [12]  736 	dec	sp
      00214C 15 81            [12]  737 	dec	sp
      00214E 15 81            [12]  738 	dec	sp
                                    739 ;	spi_dac.c:132: while(1)
      002150                        740 00114$:
                                    741 ;	spi_dac.c:134: printf("while start\n\r");
      002150 74 AE            [12]  742 	mov	a,#___str_2
      002152 C0 E0            [24]  743 	push	acc
      002154 74 2E            [12]  744 	mov	a,#(___str_2 >> 8)
      002156 C0 E0            [24]  745 	push	acc
      002158 74 80            [12]  746 	mov	a,#0x80
      00215A C0 E0            [24]  747 	push	acc
      00215C 12 23 BA         [24]  748 	lcall	_printf
      00215F 15 81            [12]  749 	dec	sp
      002161 15 81            [12]  750 	dec	sp
      002163 15 81            [12]  751 	dec	sp
                                    752 ;	spi_dac.c:136: if(dac_value_index < SINE_MAX_INDEX)
      002165 90 04 04         [24]  753 	mov	dptr,#_main_dac_value_index_65537_27
      002168 E0               [24]  754 	movx	a,@dptr
      002169 FE               [12]  755 	mov	r6,a
      00216A A3               [24]  756 	inc	dptr
      00216B E0               [24]  757 	movx	a,@dptr
      00216C FF               [12]  758 	mov	r7,a
      00216D C3               [12]  759 	clr	c
      00216E EE               [12]  760 	mov	a,r6
      00216F 94 31            [12]  761 	subb	a,#0x31
      002171 EF               [12]  762 	mov	a,r7
      002172 64 80            [12]  763 	xrl	a,#0x80
      002174 94 80            [12]  764 	subb	a,#0x80
      002176 50 21            [24]  765 	jnc	00102$
                                    766 ;	spi_dac.c:140: dac_data = dac_values[dac_value_index];
      002178 EE               [12]  767 	mov	a,r6
      002179 2E               [12]  768 	add	a,r6
      00217A FE               [12]  769 	mov	r6,a
      00217B EF               [12]  770 	mov	a,r7
      00217C 33               [12]  771 	rlc	a
      00217D FF               [12]  772 	mov	r7,a
      00217E EE               [12]  773 	mov	a,r6
      00217F 24 1C            [12]  774 	add	a,#_dac_values
      002181 F5 82            [12]  775 	mov	dpl,a
      002183 EF               [12]  776 	mov	a,r7
      002184 34 2E            [12]  777 	addc	a,#(_dac_values >> 8)
      002186 F5 83            [12]  778 	mov	dph,a
      002188 E4               [12]  779 	clr	a
      002189 93               [24]  780 	movc	a,@a+dptr
      00218A FE               [12]  781 	mov	r6,a
      00218B A3               [24]  782 	inc	dptr
      00218C E4               [12]  783 	clr	a
      00218D 93               [24]  784 	movc	a,@a+dptr
      00218E FF               [12]  785 	mov	r7,a
      00218F 90 04 06         [24]  786 	mov	dptr,#_main_dac_data_65537_27
      002192 EE               [12]  787 	mov	a,r6
      002193 F0               [24]  788 	movx	@dptr,a
      002194 EF               [12]  789 	mov	a,r7
      002195 A3               [24]  790 	inc	dptr
      002196 F0               [24]  791 	movx	@dptr,a
      002197 80 07            [24]  792 	sjmp	00103$
      002199                        793 00102$:
                                    794 ;	spi_dac.c:144: dac_value_index = 0;  // Reset index for next cycle
      002199 90 04 04         [24]  795 	mov	dptr,#_main_dac_value_index_65537_27
      00219C E4               [12]  796 	clr	a
      00219D F0               [24]  797 	movx	@dptr,a
      00219E A3               [24]  798 	inc	dptr
      00219F F0               [24]  799 	movx	@dptr,a
      0021A0                        800 00103$:
                                    801 ;	spi_dac.c:150: ((dac_data >> 4) & 0x0F);
      0021A0 90 04 06         [24]  802 	mov	dptr,#_main_dac_data_65537_27
      0021A3 E0               [24]  803 	movx	a,@dptr
      0021A4 FE               [12]  804 	mov	r6,a
      0021A5 A3               [24]  805 	inc	dptr
      0021A6 E0               [24]  806 	movx	a,@dptr
      0021A7 8E 04            [24]  807 	mov	ar4,r6
      0021A9 C4               [12]  808 	swap	a
      0021AA CC               [12]  809 	xch	a,r4
      0021AB C4               [12]  810 	swap	a
      0021AC 54 0F            [12]  811 	anl	a,#0x0f
      0021AE 6C               [12]  812 	xrl	a,r4
      0021AF CC               [12]  813 	xch	a,r4
      0021B0 54 0F            [12]  814 	anl	a,#0x0f
      0021B2 CC               [12]  815 	xch	a,r4
      0021B3 6C               [12]  816 	xrl	a,r4
      0021B4 CC               [12]  817 	xch	a,r4
      0021B5 30 E3 02         [24]  818 	jnb	acc.3,00151$
      0021B8 44 F0            [12]  819 	orl	a,#0xf0
      0021BA                        820 00151$:
      0021BA 53 04 0F         [24]  821 	anl	ar4,#0x0f
      0021BD 7D 00            [12]  822 	mov	r5,#0x00
      0021BF 43 04 30         [24]  823 	orl	ar4,#0x30
                                    824 ;	spi_dac.c:153: low_byte = (dac_data & 0x0F) << 4;
      0021C2 53 06 0F         [24]  825 	anl	ar6,#0x0f
      0021C5 E4               [12]  826 	clr	a
      0021C6 CE               [12]  827 	xch	a,r6
      0021C7 C4               [12]  828 	swap	a
      0021C8 CE               [12]  829 	xch	a,r6
      0021C9 6E               [12]  830 	xrl	a,r6
      0021CA CE               [12]  831 	xch	a,r6
      0021CB 54 F0            [12]  832 	anl	a,#0xf0
      0021CD CE               [12]  833 	xch	a,r6
      0021CE 6E               [12]  834 	xrl	a,r6
      0021CF FF               [12]  835 	mov	r7,a
                                    836 ;	spi_dac.c:158: delay_ms(10);
      0021D0 90 00 0A         [24]  837 	mov	dptr,#0x000a
      0021D3 C0 07            [24]  838 	push	ar7
      0021D5 C0 06            [24]  839 	push	ar6
      0021D7 C0 05            [24]  840 	push	ar5
      0021D9 C0 04            [24]  841 	push	ar4
      0021DB 12 20 DA         [24]  842 	lcall	_delay_ms
      0021DE D0 04            [24]  843 	pop	ar4
      0021E0 D0 05            [24]  844 	pop	ar5
      0021E2 D0 06            [24]  845 	pop	ar6
      0021E4 D0 07            [24]  846 	pop	ar7
                                    847 ;	spi_dac.c:161: P1_1 = 0;  // Select DAC
                                    848 ;	assignBit
      0021E6 C2 91            [12]  849 	clr	_P1_1
                                    850 ;	spi_dac.c:163: printf("Low byte %d\n\r", low_byte);
      0021E8 C0 07            [24]  851 	push	ar7
      0021EA C0 06            [24]  852 	push	ar6
      0021EC C0 05            [24]  853 	push	ar5
      0021EE C0 04            [24]  854 	push	ar4
      0021F0 C0 06            [24]  855 	push	ar6
      0021F2 C0 07            [24]  856 	push	ar7
      0021F4 74 BC            [12]  857 	mov	a,#___str_3
      0021F6 C0 E0            [24]  858 	push	acc
      0021F8 74 2E            [12]  859 	mov	a,#(___str_3 >> 8)
      0021FA C0 E0            [24]  860 	push	acc
      0021FC 74 80            [12]  861 	mov	a,#0x80
      0021FE C0 E0            [24]  862 	push	acc
      002200 12 23 BA         [24]  863 	lcall	_printf
      002203 E5 81            [12]  864 	mov	a,sp
      002205 24 FB            [12]  865 	add	a,#0xfb
      002207 F5 81            [12]  866 	mov	sp,a
      002209 D0 04            [24]  867 	pop	ar4
      00220B D0 05            [24]  868 	pop	ar5
                                    869 ;	spi_dac.c:164: printf("High byte %d\n\r", high_byte);
      00220D C0 05            [24]  870 	push	ar5
      00220F C0 04            [24]  871 	push	ar4
      002211 C0 04            [24]  872 	push	ar4
      002213 C0 05            [24]  873 	push	ar5
      002215 74 CA            [12]  874 	mov	a,#___str_4
      002217 C0 E0            [24]  875 	push	acc
      002219 74 2E            [12]  876 	mov	a,#(___str_4 >> 8)
      00221B C0 E0            [24]  877 	push	acc
      00221D 74 80            [12]  878 	mov	a,#0x80
      00221F C0 E0            [24]  879 	push	acc
      002221 12 23 BA         [24]  880 	lcall	_printf
      002224 E5 81            [12]  881 	mov	a,sp
      002226 24 FB            [12]  882 	add	a,#0xfb
      002228 F5 81            [12]  883 	mov	sp,a
      00222A D0 04            [24]  884 	pop	ar4
      00222C D0 05            [24]  885 	pop	ar5
      00222E D0 06            [24]  886 	pop	ar6
      002230 D0 07            [24]  887 	pop	ar7
                                    888 ;	spi_dac.c:167: SPDAT = high_byte;
      002232 8C C5            [24]  889 	mov	_SPDAT,r4
                                    890 ;	spi_dac.c:168: while(!transmission_complete);
      002234                        891 00104$:
      002234 90 04 42         [24]  892 	mov	dptr,#_transmission_complete
      002237 E0               [24]  893 	movx	a,@dptr
      002238 FC               [12]  894 	mov	r4,a
      002239 A3               [24]  895 	inc	dptr
      00223A E0               [24]  896 	movx	a,@dptr
      00223B FD               [12]  897 	mov	r5,a
      00223C 4C               [12]  898 	orl	a,r4
      00223D 60 F5            [24]  899 	jz	00104$
                                    900 ;	spi_dac.c:169: transmission_complete = 0;
      00223F 90 04 42         [24]  901 	mov	dptr,#_transmission_complete
      002242 E4               [12]  902 	clr	a
      002243 F0               [24]  903 	movx	@dptr,a
      002244 A3               [24]  904 	inc	dptr
      002245 F0               [24]  905 	movx	@dptr,a
                                    906 ;	spi_dac.c:172: SPDAT = low_byte;
      002246 8E C5            [24]  907 	mov	_SPDAT,r6
                                    908 ;	spi_dac.c:173: while(!transmission_complete);
      002248                        909 00107$:
      002248 90 04 42         [24]  910 	mov	dptr,#_transmission_complete
      00224B E0               [24]  911 	movx	a,@dptr
      00224C FE               [12]  912 	mov	r6,a
      00224D A3               [24]  913 	inc	dptr
      00224E E0               [24]  914 	movx	a,@dptr
      00224F FF               [12]  915 	mov	r7,a
      002250 4E               [12]  916 	orl	a,r6
      002251 60 F5            [24]  917 	jz	00107$
                                    918 ;	spi_dac.c:174: transmission_complete = 0;
      002253 90 04 42         [24]  919 	mov	dptr,#_transmission_complete
      002256 E4               [12]  920 	clr	a
      002257 F0               [24]  921 	movx	@dptr,a
      002258 A3               [24]  922 	inc	dptr
      002259 F0               [24]  923 	movx	@dptr,a
                                    924 ;	spi_dac.c:176: P1_1 = 1;  // Deselect DAC
                                    925 ;	assignBit
      00225A D2 91            [12]  926 	setb	_P1_1
                                    927 ;	spi_dac.c:177: while(!transmission_complete);
      00225C                        928 00110$:
      00225C 90 04 42         [24]  929 	mov	dptr,#_transmission_complete
      00225F E0               [24]  930 	movx	a,@dptr
      002260 FE               [12]  931 	mov	r6,a
      002261 A3               [24]  932 	inc	dptr
      002262 E0               [24]  933 	movx	a,@dptr
      002263 FF               [12]  934 	mov	r7,a
      002264 4E               [12]  935 	orl	a,r6
      002265 60 F5            [24]  936 	jz	00110$
                                    937 ;	spi_dac.c:178: transmission_complete = 0;
      002267 90 04 42         [24]  938 	mov	dptr,#_transmission_complete
      00226A E4               [12]  939 	clr	a
      00226B F0               [24]  940 	movx	@dptr,a
      00226C A3               [24]  941 	inc	dptr
      00226D F0               [24]  942 	movx	@dptr,a
                                    943 ;	spi_dac.c:180: dac_value_index++;
      00226E 90 04 04         [24]  944 	mov	dptr,#_main_dac_value_index_65537_27
      002271 E0               [24]  945 	movx	a,@dptr
      002272 24 01            [12]  946 	add	a,#0x01
      002274 F0               [24]  947 	movx	@dptr,a
      002275 A3               [24]  948 	inc	dptr
      002276 E0               [24]  949 	movx	a,@dptr
      002277 34 00            [12]  950 	addc	a,#0x00
      002279 F0               [24]  951 	movx	@dptr,a
                                    952 ;	spi_dac.c:182: }
      00227A 02 21 50         [24]  953 	ljmp	00114$
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'timer0_init'
                                    956 ;------------------------------------------------------------
                                    957 ;	spi_dac.c:184: void timer0_init(void)
                                    958 ;	-----------------------------------------
                                    959 ;	 function timer0_init
                                    960 ;	-----------------------------------------
      00227D                        961 _timer0_init:
                                    962 ;	spi_dac.c:186: TMOD &= 0xF0;    // Clear Timer0 mode bits
      00227D 53 89 F0         [24]  963 	anl	_TMOD,#0xf0
                                    964 ;	spi_dac.c:187: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      002280 43 89 01         [24]  965 	orl	_TMOD,#0x01
                                    966 ;	spi_dac.c:190: TH0 = TH0_RELOAD;
      002283 75 8C FC         [24]  967 	mov	_TH0,#0xfc
                                    968 ;	spi_dac.c:191: TL0 = TL0_RELOAD;
      002286 75 8A 66         [24]  969 	mov	_TL0,#0x66
                                    970 ;	spi_dac.c:193: ET0 = 1;         // Enable Timer0 interrupt
                                    971 ;	assignBit
      002289 D2 A9            [12]  972 	setb	_ET0
                                    973 ;	spi_dac.c:194: TR0 = 1;         // Start Timer0
                                    974 ;	assignBit
      00228B D2 8C            [12]  975 	setb	_TR0
                                    976 ;	spi_dac.c:195: }
      00228D 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'timer0_isr'
                                    980 ;------------------------------------------------------------
                                    981 ;	spi_dac.c:198: void timer0_isr(void) __interrupt 1
                                    982 ;	-----------------------------------------
                                    983 ;	 function timer0_isr
                                    984 ;	-----------------------------------------
      00228E                        985 _timer0_isr:
      00228E C0 20            [24]  986 	push	bits
      002290 C0 E0            [24]  987 	push	acc
      002292 C0 F0            [24]  988 	push	b
      002294 C0 82            [24]  989 	push	dpl
      002296 C0 83            [24]  990 	push	dph
      002298 C0 07            [24]  991 	push	(0+7)
      00229A C0 06            [24]  992 	push	(0+6)
      00229C C0 05            [24]  993 	push	(0+5)
      00229E C0 04            [24]  994 	push	(0+4)
      0022A0 C0 03            [24]  995 	push	(0+3)
      0022A2 C0 02            [24]  996 	push	(0+2)
      0022A4 C0 01            [24]  997 	push	(0+1)
      0022A6 C0 00            [24]  998 	push	(0+0)
      0022A8 C0 D0            [24]  999 	push	psw
      0022AA 75 D0 00         [24] 1000 	mov	psw,#0x00
                                   1001 ;	spi_dac.c:201: TH0 = 0x4B;
      0022AD 75 8C 4B         [24] 1002 	mov	_TH0,#0x4b
                                   1003 ;	spi_dac.c:202: TL0 = 0x1C;
      0022B0 75 8A 1C         [24] 1004 	mov	_TL0,#0x1c
                                   1005 ;	spi_dac.c:204: ms_flag = 1;     // Set 1ms flag
      0022B3 90 04 41         [24] 1006 	mov	dptr,#_ms_flag
      0022B6 74 01            [12] 1007 	mov	a,#0x01
      0022B8 F0               [24] 1008 	movx	@dptr,a
                                   1009 ;	spi_dac.c:206: printf("T \n\r");
      0022B9 74 D9            [12] 1010 	mov	a,#___str_5
      0022BB C0 E0            [24] 1011 	push	acc
      0022BD 74 2E            [12] 1012 	mov	a,#(___str_5 >> 8)
      0022BF C0 E0            [24] 1013 	push	acc
      0022C1 74 80            [12] 1014 	mov	a,#0x80
      0022C3 C0 E0            [24] 1015 	push	acc
      0022C5 12 23 BA         [24] 1016 	lcall	_printf
      0022C8 15 81            [12] 1017 	dec	sp
      0022CA 15 81            [12] 1018 	dec	sp
      0022CC 15 81            [12] 1019 	dec	sp
                                   1020 ;	spi_dac.c:209: }
      0022CE D0 D0            [24] 1021 	pop	psw
      0022D0 D0 00            [24] 1022 	pop	(0+0)
      0022D2 D0 01            [24] 1023 	pop	(0+1)
      0022D4 D0 02            [24] 1024 	pop	(0+2)
      0022D6 D0 03            [24] 1025 	pop	(0+3)
      0022D8 D0 04            [24] 1026 	pop	(0+4)
      0022DA D0 05            [24] 1027 	pop	(0+5)
      0022DC D0 06            [24] 1028 	pop	(0+6)
      0022DE D0 07            [24] 1029 	pop	(0+7)
      0022E0 D0 83            [24] 1030 	pop	dph
      0022E2 D0 82            [24] 1031 	pop	dpl
      0022E4 D0 F0            [24] 1032 	pop	b
      0022E6 D0 E0            [24] 1033 	pop	acc
      0022E8 D0 20            [24] 1034 	pop	bits
      0022EA 32               [24] 1035 	reti
                                   1036 ;------------------------------------------------------------
                                   1037 ;Allocation info for local variables in function 'spi_isr'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	spi_dac.c:217: void spi_isr(void) __interrupt 9
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function spi_isr
                                   1042 ;	-----------------------------------------
      0022EB                       1043 _spi_isr:
      0022EB C0 20            [24] 1044 	push	bits
      0022ED C0 E0            [24] 1045 	push	acc
      0022EF C0 F0            [24] 1046 	push	b
      0022F1 C0 82            [24] 1047 	push	dpl
      0022F3 C0 83            [24] 1048 	push	dph
      0022F5 C0 07            [24] 1049 	push	(0+7)
      0022F7 C0 06            [24] 1050 	push	(0+6)
      0022F9 C0 05            [24] 1051 	push	(0+5)
      0022FB C0 04            [24] 1052 	push	(0+4)
      0022FD C0 03            [24] 1053 	push	(0+3)
      0022FF C0 02            [24] 1054 	push	(0+2)
      002301 C0 01            [24] 1055 	push	(0+1)
      002303 C0 00            [24] 1056 	push	(0+0)
      002305 C0 D0            [24] 1057 	push	psw
      002307 75 D0 00         [24] 1058 	mov	psw,#0x00
                                   1059 ;	spi_dac.c:219: if(SPSTA == 0x80)  // Check for successful transmission
      00230A 74 80            [12] 1060 	mov	a,#0x80
      00230C B5 C4 1E         [24] 1061 	cjne	a,_SPSTA,00103$
                                   1062 ;	spi_dac.c:221: transmission_complete = 1;
      00230F 90 04 42         [24] 1063 	mov	dptr,#_transmission_complete
      002312 74 01            [12] 1064 	mov	a,#0x01
      002314 F0               [24] 1065 	movx	@dptr,a
      002315 E4               [12] 1066 	clr	a
      002316 A3               [24] 1067 	inc	dptr
      002317 F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	spi_dac.c:222: printf("spi isr \n\r");
      002318 74 DE            [12] 1070 	mov	a,#___str_6
      00231A C0 E0            [24] 1071 	push	acc
      00231C 74 2E            [12] 1072 	mov	a,#(___str_6 >> 8)
      00231E C0 E0            [24] 1073 	push	acc
      002320 74 80            [12] 1074 	mov	a,#0x80
      002322 C0 E0            [24] 1075 	push	acc
      002324 12 23 BA         [24] 1076 	lcall	_printf
      002327 15 81            [12] 1077 	dec	sp
      002329 15 81            [12] 1078 	dec	sp
      00232B 15 81            [12] 1079 	dec	sp
      00232D                       1080 00103$:
                                   1081 ;	spi_dac.c:225: }
      00232D D0 D0            [24] 1082 	pop	psw
      00232F D0 00            [24] 1083 	pop	(0+0)
      002331 D0 01            [24] 1084 	pop	(0+1)
      002333 D0 02            [24] 1085 	pop	(0+2)
      002335 D0 03            [24] 1086 	pop	(0+3)
      002337 D0 04            [24] 1087 	pop	(0+4)
      002339 D0 05            [24] 1088 	pop	(0+5)
      00233B D0 06            [24] 1089 	pop	(0+6)
      00233D D0 07            [24] 1090 	pop	(0+7)
      00233F D0 83            [24] 1091 	pop	dph
      002341 D0 82            [24] 1092 	pop	dpl
      002343 D0 F0            [24] 1093 	pop	b
      002345 D0 E0            [24] 1094 	pop	acc
      002347 D0 20            [24] 1095 	pop	bits
      002349 32               [24] 1096 	reti
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'spi_init'
                                   1099 ;------------------------------------------------------------
                                   1100 ;	spi_dac.c:237: void spi_init(void) 
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function spi_init
                                   1103 ;	-----------------------------------------
      00234A                       1104 _spi_init:
                                   1105 ;	spi_dac.c:240: SPCON = 0;
      00234A 75 C3 00         [24] 1106 	mov	_SPCON,#0x00
                                   1107 ;	spi_dac.c:250: SPCON &= ~SPI_SSDIS;
      00234D 53 C3 DF         [24] 1108 	anl	_SPCON,#0xdf
                                   1109 ;	spi_dac.c:252: SPCON |= 0x10;
      002350 43 C3 10         [24] 1110 	orl	_SPCON,#0x10
                                   1111 ;	spi_dac.c:253: P1_1 = 1;
                                   1112 ;	assignBit
      002353 D2 91            [12] 1113 	setb	_P1_1
                                   1114 ;	spi_dac.c:254: SPCON |= 0x82;
      002355 43 C3 82         [24] 1115 	orl	_SPCON,#0x82
                                   1116 ;	spi_dac.c:255: SPCON &= ~0x08;
      002358 53 C3 F7         [24] 1117 	anl	_SPCON,#0xf7
                                   1118 ;	spi_dac.c:256: SPCON |= 0x40;
      00235B 43 C3 40         [24] 1119 	orl	_SPCON,#0x40
                                   1120 ;	spi_dac.c:261: IEN1 |= SPI_INT_ENABLE;        // Enable SPI interrupt
      00235E 43 B1 08         [24] 1121 	orl	_IEN1,#0x08
                                   1122 ;	spi_dac.c:263: }
      002361 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1126 ;------------------------------------------------------------
                                   1127 ;	spi_dac.c:270: void spi_transmission_start(void)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function spi_transmission_start
                                   1130 ;	-----------------------------------------
      002362                       1131 _spi_transmission_start:
                                   1132 ;	spi_dac.c:272: SPCON |= SPI_ENABLE;           // Enable SPI
      002362 43 C3 40         [24] 1133 	orl	_SPCON,#0x40
                                   1134 ;	spi_dac.c:273: P1_1 = 0;
                                   1135 ;	assignBit
      002365 C2 91            [12] 1136 	clr	_P1_1
                                   1137 ;	spi_dac.c:274: }
      002367 22               [24] 1138 	ret
                                   1139 ;------------------------------------------------------------
                                   1140 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1141 ;------------------------------------------------------------
                                   1142 ;	spi_dac.c:281: void spi_transmission_stop(void) 
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function spi_transmission_stop
                                   1145 ;	-----------------------------------------
      002368                       1146 _spi_transmission_stop:
                                   1147 ;	spi_dac.c:283: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002368 53 C3 BF         [24] 1148 	anl	_SPCON,#0xbf
                                   1149 ;	spi_dac.c:284: }
      00236B 22               [24] 1150 	ret
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
      002E1C                       1153 _dac_values:
      002E1C 80 00                 1154 	.byte #0x80, #0x00	;  128
      002E1E 8F 00                 1155 	.byte #0x8f, #0x00	;  143
      002E20 9F 00                 1156 	.byte #0x9f, #0x00	;  159
      002E22 AE 00                 1157 	.byte #0xae, #0x00	;  174
      002E24 BD 00                 1158 	.byte #0xbd, #0x00	;  189
      002E26 CA 00                 1159 	.byte #0xca, #0x00	;  202
      002E28 D7 00                 1160 	.byte #0xd7, #0x00	;  215
      002E2A E2 00                 1161 	.byte #0xe2, #0x00	;  226
      002E2C EB 00                 1162 	.byte #0xeb, #0x00	;  235
      002E2E F3 00                 1163 	.byte #0xf3, #0x00	;  243
      002E30 F9 00                 1164 	.byte #0xf9, #0x00	;  249
      002E32 FD 00                 1165 	.byte #0xfd, #0x00	;  253
      002E34 FF 00                 1166 	.byte #0xff, #0x00	;  255
      002E36 FF 00                 1167 	.byte #0xff, #0x00	;  255
      002E38 FD 00                 1168 	.byte #0xfd, #0x00	;  253
      002E3A F9 00                 1169 	.byte #0xf9, #0x00	;  249
      002E3C F3 00                 1170 	.byte #0xf3, #0x00	;  243
      002E3E EB 00                 1171 	.byte #0xeb, #0x00	;  235
      002E40 E2 00                 1172 	.byte #0xe2, #0x00	;  226
      002E42 D7 00                 1173 	.byte #0xd7, #0x00	;  215
      002E44 CA 00                 1174 	.byte #0xca, #0x00	;  202
      002E46 BD 00                 1175 	.byte #0xbd, #0x00	;  189
      002E48 AE 00                 1176 	.byte #0xae, #0x00	;  174
      002E4A 9F 00                 1177 	.byte #0x9f, #0x00	;  159
      002E4C 8F 00                 1178 	.byte #0x8f, #0x00	;  143
      002E4E 80 00                 1179 	.byte #0x80, #0x00	;  128
      002E50 70 00                 1180 	.byte #0x70, #0x00	;  112
      002E52 60 00                 1181 	.byte #0x60, #0x00	;  96
      002E54 51 00                 1182 	.byte #0x51, #0x00	;  81
      002E56 42 00                 1183 	.byte #0x42, #0x00	;  66
      002E58 35 00                 1184 	.byte #0x35, #0x00	;  53
      002E5A 28 00                 1185 	.byte #0x28, #0x00	;  40
      002E5C 1D 00                 1186 	.byte #0x1d, #0x00	;  29
      002E5E 14 00                 1187 	.byte #0x14, #0x00	;  20
      002E60 0C 00                 1188 	.byte #0x0c, #0x00	;  12
      002E62 06 00                 1189 	.byte #0x06, #0x00	;  6
      002E64 02 00                 1190 	.byte #0x02, #0x00	;  2
      002E66 00 00                 1191 	.byte #0x00, #0x00	;  0
      002E68 00 00                 1192 	.byte #0x00, #0x00	;  0
      002E6A 02 00                 1193 	.byte #0x02, #0x00	;  2
      002E6C 06 00                 1194 	.byte #0x06, #0x00	;  6
      002E6E 0C 00                 1195 	.byte #0x0c, #0x00	;  12
      002E70 14 00                 1196 	.byte #0x14, #0x00	;  20
      002E72 1D 00                 1197 	.byte #0x1d, #0x00	;  29
      002E74 28 00                 1198 	.byte #0x28, #0x00	;  40
      002E76 35 00                 1199 	.byte #0x35, #0x00	;  53
      002E78 42 00                 1200 	.byte #0x42, #0x00	;  66
      002E7A 51 00                 1201 	.byte #0x51, #0x00	;  81
      002E7C 60 00                 1202 	.byte #0x60, #0x00	;  96
      002E7E 70 00                 1203 	.byte #0x70, #0x00	;  112
                                   1204 	.area CONST   (CODE)
      002E80                       1205 ___str_0:
      002E80 20 53 50 49 20 44 41  1206 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002E90 0A                    1207 	.db 0x0a
      002E91 0D                    1208 	.db 0x0d
      002E92 00                    1209 	.db 0x00
                                   1210 	.area CSEG    (CODE)
                                   1211 	.area CONST   (CODE)
      002E93                       1212 ___str_1:
      002E93 53 50 49 20 54 52 41  1213 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      002EAB 0A                    1214 	.db 0x0a
      002EAC 0D                    1215 	.db 0x0d
      002EAD 00                    1216 	.db 0x00
                                   1217 	.area CSEG    (CODE)
                                   1218 	.area CONST   (CODE)
      002EAE                       1219 ___str_2:
      002EAE 77 68 69 6C 65 20 73  1220 	.ascii "while start"
             74 61 72 74
      002EB9 0A                    1221 	.db 0x0a
      002EBA 0D                    1222 	.db 0x0d
      002EBB 00                    1223 	.db 0x00
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
      002EBC                       1226 ___str_3:
      002EBC 4C 6F 77 20 62 79 74  1227 	.ascii "Low byte %d"
             65 20 25 64
      002EC7 0A                    1228 	.db 0x0a
      002EC8 0D                    1229 	.db 0x0d
      002EC9 00                    1230 	.db 0x00
                                   1231 	.area CSEG    (CODE)
                                   1232 	.area CONST   (CODE)
      002ECA                       1233 ___str_4:
      002ECA 48 69 67 68 20 62 79  1234 	.ascii "High byte %d"
             74 65 20 25 64
      002ED6 0A                    1235 	.db 0x0a
      002ED7 0D                    1236 	.db 0x0d
      002ED8 00                    1237 	.db 0x00
                                   1238 	.area CSEG    (CODE)
                                   1239 	.area CONST   (CODE)
      002ED9                       1240 ___str_5:
      002ED9 54 20                 1241 	.ascii "T "
      002EDB 0A                    1242 	.db 0x0a
      002EDC 0D                    1243 	.db 0x0d
      002EDD 00                    1244 	.db 0x00
                                   1245 	.area CSEG    (CODE)
                                   1246 	.area CONST   (CODE)
      002EDE                       1247 ___str_6:
      002EDE 73 70 69 20 69 73 72  1248 	.ascii "spi isr "
             20
      002EE6 0A                    1249 	.db 0x0a
      002EE7 0D                    1250 	.db 0x0d
      002EE8 00                    1251 	.db 0x00
                                   1252 	.area CSEG    (CODE)
                                   1253 	.area XINIT   (CODE)
      002EF4                       1254 __xinit__ms_flag:
      002EF4 00                    1255 	.db #0x00	; 0
      002EF5                       1256 __xinit__transmission_complete:
      002EF5 00 00                 1257 	.byte #0x00, #0x00	;  0
                                   1258 	.area CABS    (ABS,CODE)
