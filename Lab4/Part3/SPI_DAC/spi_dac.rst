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
      00200B 02 22 69         [24]  519 	ljmp	_timer0_isr
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
      00204B 02 22 C6         [24]  535 	ljmp	_spi_isr
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
                                    568 ;	spi_dac.c:152: int putchar(int charToSend) {
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
                                    588 ;	spi_dac.c:153: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  589 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  590 	movx	a,@dptr
      0020BC FE               [12]  591 	mov	r6,a
      0020BD A3               [24]  592 	inc	dptr
      0020BE E0               [24]  593 	movx	a,@dptr
      0020BF FF               [12]  594 	mov	r7,a
      0020C0 8E 99            [24]  595 	mov	_SBUF,r6
                                    596 ;	spi_dac.c:154: while (!TI);             /* Wait for transmission completion */
      0020C2                        597 00101$:
                                    598 ;	spi_dac.c:155: TI = 0;                  /* Clear transmission flag */
                                    599 ;	assignBit
      0020C2 10 99 02         [24]  600 	jbc	_TI,00114$
      0020C5 80 FB            [24]  601 	sjmp	00101$
      0020C7                        602 00114$:
                                    603 ;	spi_dac.c:156: return charToSend;
      0020C7 8E 82            [24]  604 	mov	dpl,r6
      0020C9 8F 83            [24]  605 	mov	dph,r7
                                    606 ;	spi_dac.c:157: }
      0020CB 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'getchar'
                                    610 ;------------------------------------------------------------
                                    611 ;	spi_dac.c:163: int getchar(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function getchar
                                    614 ;	-----------------------------------------
      0020CC                        615 _getchar:
                                    616 ;	spi_dac.c:164: while (!RI);             /* Wait for reception completion */
      0020CC                        617 00101$:
                                    618 ;	spi_dac.c:165: RI = 0;                  /* Clear reception flag */
                                    619 ;	assignBit
      0020CC 10 98 02         [24]  620 	jbc	_RI,00114$
      0020CF 80 FB            [24]  621 	sjmp	00101$
      0020D1                        622 00114$:
                                    623 ;	spi_dac.c:166: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  624 	mov	r6,_SBUF
      0020D3 7F 00            [12]  625 	mov	r7,#0x00
      0020D5 8E 82            [24]  626 	mov	dpl,r6
      0020D7 8F 83            [24]  627 	mov	dph,r7
                                    628 ;	spi_dac.c:167: }
      0020D9 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay_ms'
                                    632 ;------------------------------------------------------------
                                    633 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    634 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    635 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    636 ;------------------------------------------------------------
                                    637 ;	spi_dac.c:169: void delay_ms(unsigned int ms) {
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
                                    649 ;	spi_dac.c:171: for (i = 0; i < ms; i++)
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
                                    665 ;	spi_dac.c:172: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
                                    676 ;	spi_dac.c:171: for (i = 0; i < ms; i++)
      002105 0C               [12]  677 	inc	r4
      002106 BC 00 E8         [24]  678 	cjne	r4,#0x00,00107$
      002109 0D               [12]  679 	inc	r5
      00210A 80 E5            [24]  680 	sjmp	00107$
      00210C                        681 00109$:
                                    682 ;	spi_dac.c:173: }
      00210C 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'main'
                                    686 ;------------------------------------------------------------
                                    687 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    688 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    689 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    690 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    691 ;------------------------------------------------------------
                                    692 ;	spi_dac.c:174: int main(void)
                                    693 ;	-----------------------------------------
                                    694 ;	 function main
                                    695 ;	-----------------------------------------
      00210D                        696 _main:
                                    697 ;	spi_dac.c:176: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 E9            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 31            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 87         [24]  704 	lcall	_printf
      00211C 15 81            [12]  705 	dec	sp
      00211E 15 81            [12]  706 	dec	sp
      002120 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:178: int dac_value_index = 0;
      002122 90 04 04         [24]  709 	mov	dptr,#_main_dac_value_index_65537_27
      002125 E4               [12]  710 	clr	a
      002126 F0               [24]  711 	movx	@dptr,a
      002127 A3               [24]  712 	inc	dptr
      002128 F0               [24]  713 	movx	@dptr,a
                                    714 ;	spi_dac.c:179: int dac_data = 0;
      002129 90 04 06         [24]  715 	mov	dptr,#_main_dac_data_65537_27
      00212C F0               [24]  716 	movx	@dptr,a
      00212D A3               [24]  717 	inc	dptr
      00212E F0               [24]  718 	movx	@dptr,a
                                    719 ;	spi_dac.c:185: spi_init();
      00212F 12 23 25         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:188: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 FC            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 31            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 23 87         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:195: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:197: printf("w\n\r");
      002147 74 17            [12]  735 	mov	a,#___str_2
      002149 C0 E0            [24]  736 	push	acc
      00214B 74 32            [12]  737 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  738 	push	acc
      00214F 74 80            [12]  739 	mov	a,#0x80
      002151 C0 E0            [24]  740 	push	acc
      002153 12 23 87         [24]  741 	lcall	_printf
      002156 15 81            [12]  742 	dec	sp
      002158 15 81            [12]  743 	dec	sp
      00215A 15 81            [12]  744 	dec	sp
                                    745 ;	spi_dac.c:199: if(dac_value_index < SINE_MAX_INDEX)
      00215C 90 04 04         [24]  746 	mov	dptr,#_main_dac_value_index_65537_27
      00215F E0               [24]  747 	movx	a,@dptr
      002160 FE               [12]  748 	mov	r6,a
      002161 A3               [24]  749 	inc	dptr
      002162 E0               [24]  750 	movx	a,@dptr
      002163 FF               [12]  751 	mov	r7,a
      002164 C3               [12]  752 	clr	c
      002165 64 80            [12]  753 	xrl	a,#0x80
      002167 94 82            [12]  754 	subb	a,#0x82
      002169 50 21            [24]  755 	jnc	00102$
                                    756 ;	spi_dac.c:203: dac_data = dac_values[dac_value_index];
      00216B EE               [12]  757 	mov	a,r6
      00216C 2E               [12]  758 	add	a,r6
      00216D FE               [12]  759 	mov	r6,a
      00216E EF               [12]  760 	mov	a,r7
      00216F 33               [12]  761 	rlc	a
      002170 FF               [12]  762 	mov	r7,a
      002171 EE               [12]  763 	mov	a,r6
      002172 24 E9            [12]  764 	add	a,#_dac_values
      002174 F5 82            [12]  765 	mov	dpl,a
      002176 EF               [12]  766 	mov	a,r7
      002177 34 2D            [12]  767 	addc	a,#(_dac_values >> 8)
      002179 F5 83            [12]  768 	mov	dph,a
      00217B E4               [12]  769 	clr	a
      00217C 93               [24]  770 	movc	a,@a+dptr
      00217D FE               [12]  771 	mov	r6,a
      00217E A3               [24]  772 	inc	dptr
      00217F E4               [12]  773 	clr	a
      002180 93               [24]  774 	movc	a,@a+dptr
      002181 FF               [12]  775 	mov	r7,a
      002182 90 04 06         [24]  776 	mov	dptr,#_main_dac_data_65537_27
      002185 EE               [12]  777 	mov	a,r6
      002186 F0               [24]  778 	movx	@dptr,a
      002187 EF               [12]  779 	mov	a,r7
      002188 A3               [24]  780 	inc	dptr
      002189 F0               [24]  781 	movx	@dptr,a
      00218A 80 07            [24]  782 	sjmp	00103$
      00218C                        783 00102$:
                                    784 ;	spi_dac.c:207: dac_value_index = 0;  // Reset index for next cycle
      00218C 90 04 04         [24]  785 	mov	dptr,#_main_dac_value_index_65537_27
      00218F E4               [12]  786 	clr	a
      002190 F0               [24]  787 	movx	@dptr,a
      002191 A3               [24]  788 	inc	dptr
      002192 F0               [24]  789 	movx	@dptr,a
      002193                        790 00103$:
                                    791 ;	spi_dac.c:214: ((dac_data >> 4) & 0x0F);
      002193 90 04 06         [24]  792 	mov	dptr,#_main_dac_data_65537_27
      002196 E0               [24]  793 	movx	a,@dptr
      002197 FE               [12]  794 	mov	r6,a
      002198 A3               [24]  795 	inc	dptr
      002199 E0               [24]  796 	movx	a,@dptr
      00219A 8E 04            [24]  797 	mov	ar4,r6
      00219C C4               [12]  798 	swap	a
      00219D CC               [12]  799 	xch	a,r4
      00219E C4               [12]  800 	swap	a
      00219F 54 0F            [12]  801 	anl	a,#0x0f
      0021A1 6C               [12]  802 	xrl	a,r4
      0021A2 CC               [12]  803 	xch	a,r4
      0021A3 54 0F            [12]  804 	anl	a,#0x0f
      0021A5 CC               [12]  805 	xch	a,r4
      0021A6 6C               [12]  806 	xrl	a,r4
      0021A7 CC               [12]  807 	xch	a,r4
      0021A8 30 E3 02         [24]  808 	jnb	acc.3,00140$
      0021AB 44 F0            [12]  809 	orl	a,#0xf0
      0021AD                        810 00140$:
      0021AD 53 04 0F         [24]  811 	anl	ar4,#0x0f
      0021B0 7D 00            [12]  812 	mov	r5,#0x00
      0021B2 43 04 10         [24]  813 	orl	ar4,#0x10
                                    814 ;	spi_dac.c:217: low_byte = (dac_data & 0x0F) << 4;
      0021B5 53 06 0F         [24]  815 	anl	ar6,#0x0f
      0021B8 E4               [12]  816 	clr	a
      0021B9 CE               [12]  817 	xch	a,r6
      0021BA C4               [12]  818 	swap	a
      0021BB CE               [12]  819 	xch	a,r6
      0021BC 6E               [12]  820 	xrl	a,r6
      0021BD CE               [12]  821 	xch	a,r6
      0021BE 54 F0            [12]  822 	anl	a,#0xf0
      0021C0 CE               [12]  823 	xch	a,r6
      0021C1 6E               [12]  824 	xrl	a,r6
      0021C2 FF               [12]  825 	mov	r7,a
                                    826 ;	spi_dac.c:223: printf("Low byte %d\n\r", low_byte);
      0021C3 C0 07            [24]  827 	push	ar7
      0021C5 C0 06            [24]  828 	push	ar6
      0021C7 C0 05            [24]  829 	push	ar5
      0021C9 C0 04            [24]  830 	push	ar4
      0021CB C0 06            [24]  831 	push	ar6
      0021CD C0 07            [24]  832 	push	ar7
      0021CF 74 1B            [12]  833 	mov	a,#___str_3
      0021D1 C0 E0            [24]  834 	push	acc
      0021D3 74 32            [12]  835 	mov	a,#(___str_3 >> 8)
      0021D5 C0 E0            [24]  836 	push	acc
      0021D7 74 80            [12]  837 	mov	a,#0x80
      0021D9 C0 E0            [24]  838 	push	acc
      0021DB 12 23 87         [24]  839 	lcall	_printf
      0021DE E5 81            [12]  840 	mov	a,sp
      0021E0 24 FB            [12]  841 	add	a,#0xfb
      0021E2 F5 81            [12]  842 	mov	sp,a
      0021E4 D0 04            [24]  843 	pop	ar4
      0021E6 D0 05            [24]  844 	pop	ar5
                                    845 ;	spi_dac.c:224: printf("High byte %d\n\r", high_byte);
      0021E8 C0 05            [24]  846 	push	ar5
      0021EA C0 04            [24]  847 	push	ar4
      0021EC C0 04            [24]  848 	push	ar4
      0021EE C0 05            [24]  849 	push	ar5
      0021F0 74 29            [12]  850 	mov	a,#___str_4
      0021F2 C0 E0            [24]  851 	push	acc
      0021F4 74 32            [12]  852 	mov	a,#(___str_4 >> 8)
      0021F6 C0 E0            [24]  853 	push	acc
      0021F8 74 80            [12]  854 	mov	a,#0x80
      0021FA C0 E0            [24]  855 	push	acc
      0021FC 12 23 87         [24]  856 	lcall	_printf
      0021FF E5 81            [12]  857 	mov	a,sp
      002201 24 FB            [12]  858 	add	a,#0xfb
      002203 F5 81            [12]  859 	mov	sp,a
      002205 D0 04            [24]  860 	pop	ar4
      002207 D0 05            [24]  861 	pop	ar5
      002209 D0 06            [24]  862 	pop	ar6
      00220B D0 07            [24]  863 	pop	ar7
                                    864 ;	spi_dac.c:226: P1_1 = 0;  // Select DAC
                                    865 ;	assignBit
      00220D C2 91            [12]  866 	clr	_P1_1
                                    867 ;	spi_dac.c:229: SPDAT = high_byte;
      00220F 8C C5            [24]  868 	mov	_SPDAT,r4
                                    869 ;	spi_dac.c:230: while (!(SPSTA & (1<<7))); 
      002211                        870 00104$:
      002211 E5 C4            [12]  871 	mov	a,_SPSTA
      002213 30 E7 FB         [24]  872 	jnb	acc.7,00104$
                                    873 ;	spi_dac.c:234: SPDAT = low_byte;
      002216 8E C5            [24]  874 	mov	_SPDAT,r6
                                    875 ;	spi_dac.c:235: while (!(SPSTA & (1<<7))); 
      002218                        876 00107$:
      002218 E5 C4            [12]  877 	mov	a,_SPSTA
      00221A 30 E7 FB         [24]  878 	jnb	acc.7,00107$
                                    879 ;	spi_dac.c:237: P1_1 = 1;  // Deselect DAC
                                    880 ;	assignBit
      00221D D2 91            [12]  881 	setb	_P1_1
                                    882 ;	spi_dac.c:240: printf("E\n\r");
      00221F 74 38            [12]  883 	mov	a,#___str_5
      002221 C0 E0            [24]  884 	push	acc
      002223 74 32            [12]  885 	mov	a,#(___str_5 >> 8)
      002225 C0 E0            [24]  886 	push	acc
      002227 74 80            [12]  887 	mov	a,#0x80
      002229 C0 E0            [24]  888 	push	acc
      00222B 12 23 87         [24]  889 	lcall	_printf
      00222E 15 81            [12]  890 	dec	sp
      002230 15 81            [12]  891 	dec	sp
      002232 15 81            [12]  892 	dec	sp
                                    893 ;	spi_dac.c:241: printf("\n\r");
      002234 74 3C            [12]  894 	mov	a,#___str_6
      002236 C0 E0            [24]  895 	push	acc
      002238 74 32            [12]  896 	mov	a,#(___str_6 >> 8)
      00223A C0 E0            [24]  897 	push	acc
      00223C 74 80            [12]  898 	mov	a,#0x80
      00223E C0 E0            [24]  899 	push	acc
      002240 12 23 87         [24]  900 	lcall	_printf
      002243 15 81            [12]  901 	dec	sp
      002245 15 81            [12]  902 	dec	sp
      002247 15 81            [12]  903 	dec	sp
                                    904 ;	spi_dac.c:244: dac_value_index++;
      002249 90 04 04         [24]  905 	mov	dptr,#_main_dac_value_index_65537_27
      00224C E0               [24]  906 	movx	a,@dptr
      00224D 24 01            [12]  907 	add	a,#0x01
      00224F F0               [24]  908 	movx	@dptr,a
      002250 A3               [24]  909 	inc	dptr
      002251 E0               [24]  910 	movx	a,@dptr
      002252 34 00            [12]  911 	addc	a,#0x00
      002254 F0               [24]  912 	movx	@dptr,a
                                    913 ;	spi_dac.c:246: }
      002255 02 21 47         [24]  914 	ljmp	00111$
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'timer0_init'
                                    917 ;------------------------------------------------------------
                                    918 ;	spi_dac.c:248: void timer0_init(void)
                                    919 ;	-----------------------------------------
                                    920 ;	 function timer0_init
                                    921 ;	-----------------------------------------
      002258                        922 _timer0_init:
                                    923 ;	spi_dac.c:250: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002258 53 89 F0         [24]  924 	anl	_TMOD,#0xf0
                                    925 ;	spi_dac.c:251: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00225B 43 89 01         [24]  926 	orl	_TMOD,#0x01
                                    927 ;	spi_dac.c:254: TH0 = TH0_RELOAD;
      00225E 75 8C FC         [24]  928 	mov	_TH0,#0xfc
                                    929 ;	spi_dac.c:255: TL0 = TL0_RELOAD;
      002261 75 8A 66         [24]  930 	mov	_TL0,#0x66
                                    931 ;	spi_dac.c:257: ET0 = 1;         // Enable Timer0 interrupt
                                    932 ;	assignBit
      002264 D2 A9            [12]  933 	setb	_ET0
                                    934 ;	spi_dac.c:258: TR0 = 1;         // Start Timer0
                                    935 ;	assignBit
      002266 D2 8C            [12]  936 	setb	_TR0
                                    937 ;	spi_dac.c:259: }
      002268 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'timer0_isr'
                                    941 ;------------------------------------------------------------
                                    942 ;	spi_dac.c:262: void timer0_isr(void) __interrupt 1
                                    943 ;	-----------------------------------------
                                    944 ;	 function timer0_isr
                                    945 ;	-----------------------------------------
      002269                        946 _timer0_isr:
      002269 C0 20            [24]  947 	push	bits
      00226B C0 E0            [24]  948 	push	acc
      00226D C0 F0            [24]  949 	push	b
      00226F C0 82            [24]  950 	push	dpl
      002271 C0 83            [24]  951 	push	dph
      002273 C0 07            [24]  952 	push	(0+7)
      002275 C0 06            [24]  953 	push	(0+6)
      002277 C0 05            [24]  954 	push	(0+5)
      002279 C0 04            [24]  955 	push	(0+4)
      00227B C0 03            [24]  956 	push	(0+3)
      00227D C0 02            [24]  957 	push	(0+2)
      00227F C0 01            [24]  958 	push	(0+1)
      002281 C0 00            [24]  959 	push	(0+0)
      002283 C0 D0            [24]  960 	push	psw
      002285 75 D0 00         [24]  961 	mov	psw,#0x00
                                    962 ;	spi_dac.c:265: TH0 = 0x4B;
      002288 75 8C 4B         [24]  963 	mov	_TH0,#0x4b
                                    964 ;	spi_dac.c:266: TL0 = 0x1C;
      00228B 75 8A 1C         [24]  965 	mov	_TL0,#0x1c
                                    966 ;	spi_dac.c:268: ms_flag = 1;     // Set 1ms flag
      00228E 90 04 41         [24]  967 	mov	dptr,#_ms_flag
      002291 74 01            [12]  968 	mov	a,#0x01
      002293 F0               [24]  969 	movx	@dptr,a
                                    970 ;	spi_dac.c:270: printf("T \n\r");
      002294 74 3F            [12]  971 	mov	a,#___str_7
      002296 C0 E0            [24]  972 	push	acc
      002298 74 32            [12]  973 	mov	a,#(___str_7 >> 8)
      00229A C0 E0            [24]  974 	push	acc
      00229C 74 80            [12]  975 	mov	a,#0x80
      00229E C0 E0            [24]  976 	push	acc
      0022A0 12 23 87         [24]  977 	lcall	_printf
      0022A3 15 81            [12]  978 	dec	sp
      0022A5 15 81            [12]  979 	dec	sp
      0022A7 15 81            [12]  980 	dec	sp
                                    981 ;	spi_dac.c:273: }
      0022A9 D0 D0            [24]  982 	pop	psw
      0022AB D0 00            [24]  983 	pop	(0+0)
      0022AD D0 01            [24]  984 	pop	(0+1)
      0022AF D0 02            [24]  985 	pop	(0+2)
      0022B1 D0 03            [24]  986 	pop	(0+3)
      0022B3 D0 04            [24]  987 	pop	(0+4)
      0022B5 D0 05            [24]  988 	pop	(0+5)
      0022B7 D0 06            [24]  989 	pop	(0+6)
      0022B9 D0 07            [24]  990 	pop	(0+7)
      0022BB D0 83            [24]  991 	pop	dph
      0022BD D0 82            [24]  992 	pop	dpl
      0022BF D0 F0            [24]  993 	pop	b
      0022C1 D0 E0            [24]  994 	pop	acc
      0022C3 D0 20            [24]  995 	pop	bits
      0022C5 32               [24]  996 	reti
                                    997 ;------------------------------------------------------------
                                    998 ;Allocation info for local variables in function 'spi_isr'
                                    999 ;------------------------------------------------------------
                                   1000 ;	spi_dac.c:281: void spi_isr(void) __interrupt 9
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function spi_isr
                                   1003 ;	-----------------------------------------
      0022C6                       1004 _spi_isr:
      0022C6 C0 20            [24] 1005 	push	bits
      0022C8 C0 E0            [24] 1006 	push	acc
      0022CA C0 F0            [24] 1007 	push	b
      0022CC C0 82            [24] 1008 	push	dpl
      0022CE C0 83            [24] 1009 	push	dph
      0022D0 C0 07            [24] 1010 	push	(0+7)
      0022D2 C0 06            [24] 1011 	push	(0+6)
      0022D4 C0 05            [24] 1012 	push	(0+5)
      0022D6 C0 04            [24] 1013 	push	(0+4)
      0022D8 C0 03            [24] 1014 	push	(0+3)
      0022DA C0 02            [24] 1015 	push	(0+2)
      0022DC C0 01            [24] 1016 	push	(0+1)
      0022DE C0 00            [24] 1017 	push	(0+0)
      0022E0 C0 D0            [24] 1018 	push	psw
      0022E2 75 D0 00         [24] 1019 	mov	psw,#0x00
                                   1020 ;	spi_dac.c:283: if(SPSTA == 0x80)  // Check for successful transmission
      0022E5 74 80            [12] 1021 	mov	a,#0x80
      0022E7 B5 C4 1E         [24] 1022 	cjne	a,_SPSTA,00103$
                                   1023 ;	spi_dac.c:285: transmission_complete = 1;
      0022EA 90 04 42         [24] 1024 	mov	dptr,#_transmission_complete
      0022ED 74 01            [12] 1025 	mov	a,#0x01
      0022EF F0               [24] 1026 	movx	@dptr,a
      0022F0 E4               [12] 1027 	clr	a
      0022F1 A3               [24] 1028 	inc	dptr
      0022F2 F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	spi_dac.c:286: printf("spi isr \n\r");
      0022F3 74 44            [12] 1031 	mov	a,#___str_8
      0022F5 C0 E0            [24] 1032 	push	acc
      0022F7 74 32            [12] 1033 	mov	a,#(___str_8 >> 8)
      0022F9 C0 E0            [24] 1034 	push	acc
      0022FB 74 80            [12] 1035 	mov	a,#0x80
      0022FD C0 E0            [24] 1036 	push	acc
      0022FF 12 23 87         [24] 1037 	lcall	_printf
      002302 15 81            [12] 1038 	dec	sp
      002304 15 81            [12] 1039 	dec	sp
      002306 15 81            [12] 1040 	dec	sp
      002308                       1041 00103$:
                                   1042 ;	spi_dac.c:289: }
      002308 D0 D0            [24] 1043 	pop	psw
      00230A D0 00            [24] 1044 	pop	(0+0)
      00230C D0 01            [24] 1045 	pop	(0+1)
      00230E D0 02            [24] 1046 	pop	(0+2)
      002310 D0 03            [24] 1047 	pop	(0+3)
      002312 D0 04            [24] 1048 	pop	(0+4)
      002314 D0 05            [24] 1049 	pop	(0+5)
      002316 D0 06            [24] 1050 	pop	(0+6)
      002318 D0 07            [24] 1051 	pop	(0+7)
      00231A D0 83            [24] 1052 	pop	dph
      00231C D0 82            [24] 1053 	pop	dpl
      00231E D0 F0            [24] 1054 	pop	b
      002320 D0 E0            [24] 1055 	pop	acc
      002322 D0 20            [24] 1056 	pop	bits
      002324 32               [24] 1057 	reti
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'spi_init'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	spi_dac.c:301: void spi_init(void) 
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function spi_init
                                   1064 ;	-----------------------------------------
      002325                       1065 _spi_init:
                                   1066 ;	spi_dac.c:322: SPCON |= 0x10;
      002325 43 C3 10         [24] 1067 	orl	_SPCON,#0x10
                                   1068 ;	spi_dac.c:323: SPCON |= 0x20;
      002328 43 C3 20         [24] 1069 	orl	_SPCON,#0x20
                                   1070 ;	spi_dac.c:324: SPCON |= 0x40;
      00232B 43 C3 40         [24] 1071 	orl	_SPCON,#0x40
                                   1072 ;	spi_dac.c:331: }
      00232E 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	spi_dac.c:338: void spi_transmission_start(void)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function spi_transmission_start
                                   1080 ;	-----------------------------------------
      00232F                       1081 _spi_transmission_start:
                                   1082 ;	spi_dac.c:340: SPCON |= SPI_ENABLE;           // Enable SPI
      00232F 43 C3 40         [24] 1083 	orl	_SPCON,#0x40
                                   1084 ;	spi_dac.c:341: P1_1 = 0;
                                   1085 ;	assignBit
      002332 C2 91            [12] 1086 	clr	_P1_1
                                   1087 ;	spi_dac.c:342: }
      002334 22               [24] 1088 	ret
                                   1089 ;------------------------------------------------------------
                                   1090 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1091 ;------------------------------------------------------------
                                   1092 ;	spi_dac.c:349: void spi_transmission_stop(void) 
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function spi_transmission_stop
                                   1095 ;	-----------------------------------------
      002335                       1096 _spi_transmission_stop:
                                   1097 ;	spi_dac.c:351: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002335 53 C3 BF         [24] 1098 	anl	_SPCON,#0xbf
                                   1099 ;	spi_dac.c:352: }
      002338 22               [24] 1100 	ret
                                   1101 	.area CSEG    (CODE)
                                   1102 	.area CONST   (CODE)
      002DE9                       1103 _dac_values:
      002DE9 00 00                 1104 	.byte #0x00, #0x00	;  0
      002DEB 01 00                 1105 	.byte #0x01, #0x00	;  1
      002DED 02 00                 1106 	.byte #0x02, #0x00	;  2
      002DEF 03 00                 1107 	.byte #0x03, #0x00	;  3
      002DF1 04 00                 1108 	.byte #0x04, #0x00	;  4
      002DF3 05 00                 1109 	.byte #0x05, #0x00	;  5
      002DF5 06 00                 1110 	.byte #0x06, #0x00	;  6
      002DF7 07 00                 1111 	.byte #0x07, #0x00	;  7
      002DF9 08 00                 1112 	.byte #0x08, #0x00	;  8
      002DFB 09 00                 1113 	.byte #0x09, #0x00	;  9
      002DFD 0A 00                 1114 	.byte #0x0a, #0x00	;  10
      002DFF 0B 00                 1115 	.byte #0x0b, #0x00	;  11
      002E01 0C 00                 1116 	.byte #0x0c, #0x00	;  12
      002E03 0D 00                 1117 	.byte #0x0d, #0x00	;  13
      002E05 0E 00                 1118 	.byte #0x0e, #0x00	;  14
      002E07 0F 00                 1119 	.byte #0x0f, #0x00	;  15
      002E09 10 00                 1120 	.byte #0x10, #0x00	;  16
      002E0B 11 00                 1121 	.byte #0x11, #0x00	;  17
      002E0D 12 00                 1122 	.byte #0x12, #0x00	;  18
      002E0F 13 00                 1123 	.byte #0x13, #0x00	;  19
      002E11 14 00                 1124 	.byte #0x14, #0x00	;  20
      002E13 15 00                 1125 	.byte #0x15, #0x00	;  21
      002E15 16 00                 1126 	.byte #0x16, #0x00	;  22
      002E17 17 00                 1127 	.byte #0x17, #0x00	;  23
      002E19 18 00                 1128 	.byte #0x18, #0x00	;  24
      002E1B 19 00                 1129 	.byte #0x19, #0x00	;  25
      002E1D 1A 00                 1130 	.byte #0x1a, #0x00	;  26
      002E1F 1B 00                 1131 	.byte #0x1b, #0x00	;  27
      002E21 1C 00                 1132 	.byte #0x1c, #0x00	;  28
      002E23 1D 00                 1133 	.byte #0x1d, #0x00	;  29
      002E25 1E 00                 1134 	.byte #0x1e, #0x00	;  30
      002E27 1F 00                 1135 	.byte #0x1f, #0x00	;  31
      002E29 20 00                 1136 	.byte #0x20, #0x00	;  32
      002E2B 21 00                 1137 	.byte #0x21, #0x00	;  33
      002E2D 22 00                 1138 	.byte #0x22, #0x00	;  34
      002E2F 23 00                 1139 	.byte #0x23, #0x00	;  35
      002E31 24 00                 1140 	.byte #0x24, #0x00	;  36
      002E33 25 00                 1141 	.byte #0x25, #0x00	;  37
      002E35 26 00                 1142 	.byte #0x26, #0x00	;  38
      002E37 27 00                 1143 	.byte #0x27, #0x00	;  39
      002E39 28 00                 1144 	.byte #0x28, #0x00	;  40
      002E3B 29 00                 1145 	.byte #0x29, #0x00	;  41
      002E3D 2A 00                 1146 	.byte #0x2a, #0x00	;  42
      002E3F 2B 00                 1147 	.byte #0x2b, #0x00	;  43
      002E41 2C 00                 1148 	.byte #0x2c, #0x00	;  44
      002E43 2D 00                 1149 	.byte #0x2d, #0x00	;  45
      002E45 2E 00                 1150 	.byte #0x2e, #0x00	;  46
      002E47 2F 00                 1151 	.byte #0x2f, #0x00	;  47
      002E49 30 00                 1152 	.byte #0x30, #0x00	;  48
      002E4B 31 00                 1153 	.byte #0x31, #0x00	;  49
      002E4D 32 00                 1154 	.byte #0x32, #0x00	;  50
      002E4F 33 00                 1155 	.byte #0x33, #0x00	;  51
      002E51 34 00                 1156 	.byte #0x34, #0x00	;  52
      002E53 35 00                 1157 	.byte #0x35, #0x00	;  53
      002E55 36 00                 1158 	.byte #0x36, #0x00	;  54
      002E57 37 00                 1159 	.byte #0x37, #0x00	;  55
      002E59 38 00                 1160 	.byte #0x38, #0x00	;  56
      002E5B 39 00                 1161 	.byte #0x39, #0x00	;  57
      002E5D 3A 00                 1162 	.byte #0x3a, #0x00	;  58
      002E5F 3B 00                 1163 	.byte #0x3b, #0x00	;  59
      002E61 3C 00                 1164 	.byte #0x3c, #0x00	;  60
      002E63 3D 00                 1165 	.byte #0x3d, #0x00	;  61
      002E65 3E 00                 1166 	.byte #0x3e, #0x00	;  62
      002E67 3F 00                 1167 	.byte #0x3f, #0x00	;  63
      002E69 40 00                 1168 	.byte #0x40, #0x00	;  64
      002E6B 41 00                 1169 	.byte #0x41, #0x00	;  65
      002E6D 42 00                 1170 	.byte #0x42, #0x00	;  66
      002E6F 43 00                 1171 	.byte #0x43, #0x00	;  67
      002E71 44 00                 1172 	.byte #0x44, #0x00	;  68
      002E73 45 00                 1173 	.byte #0x45, #0x00	;  69
      002E75 46 00                 1174 	.byte #0x46, #0x00	;  70
      002E77 47 00                 1175 	.byte #0x47, #0x00	;  71
      002E79 48 00                 1176 	.byte #0x48, #0x00	;  72
      002E7B 49 00                 1177 	.byte #0x49, #0x00	;  73
      002E7D 4A 00                 1178 	.byte #0x4a, #0x00	;  74
      002E7F 4B 00                 1179 	.byte #0x4b, #0x00	;  75
      002E81 4C 00                 1180 	.byte #0x4c, #0x00	;  76
      002E83 4D 00                 1181 	.byte #0x4d, #0x00	;  77
      002E85 4E 00                 1182 	.byte #0x4e, #0x00	;  78
      002E87 4F 00                 1183 	.byte #0x4f, #0x00	;  79
      002E89 50 00                 1184 	.byte #0x50, #0x00	;  80
      002E8B 51 00                 1185 	.byte #0x51, #0x00	;  81
      002E8D 52 00                 1186 	.byte #0x52, #0x00	;  82
      002E8F 53 00                 1187 	.byte #0x53, #0x00	;  83
      002E91 54 00                 1188 	.byte #0x54, #0x00	;  84
      002E93 55 00                 1189 	.byte #0x55, #0x00	;  85
      002E95 56 00                 1190 	.byte #0x56, #0x00	;  86
      002E97 57 00                 1191 	.byte #0x57, #0x00	;  87
      002E99 58 00                 1192 	.byte #0x58, #0x00	;  88
      002E9B 59 00                 1193 	.byte #0x59, #0x00	;  89
      002E9D 5A 00                 1194 	.byte #0x5a, #0x00	;  90
      002E9F 5B 00                 1195 	.byte #0x5b, #0x00	;  91
      002EA1 5C 00                 1196 	.byte #0x5c, #0x00	;  92
      002EA3 5D 00                 1197 	.byte #0x5d, #0x00	;  93
      002EA5 5E 00                 1198 	.byte #0x5e, #0x00	;  94
      002EA7 5F 00                 1199 	.byte #0x5f, #0x00	;  95
      002EA9 60 00                 1200 	.byte #0x60, #0x00	;  96
      002EAB 61 00                 1201 	.byte #0x61, #0x00	;  97
      002EAD 62 00                 1202 	.byte #0x62, #0x00	;  98
      002EAF 63 00                 1203 	.byte #0x63, #0x00	;  99
      002EB1 64 00                 1204 	.byte #0x64, #0x00	;  100
      002EB3 65 00                 1205 	.byte #0x65, #0x00	;  101
      002EB5 66 00                 1206 	.byte #0x66, #0x00	;  102
      002EB7 67 00                 1207 	.byte #0x67, #0x00	;  103
      002EB9 68 00                 1208 	.byte #0x68, #0x00	;  104
      002EBB 69 00                 1209 	.byte #0x69, #0x00	;  105
      002EBD 6A 00                 1210 	.byte #0x6a, #0x00	;  106
      002EBF 6B 00                 1211 	.byte #0x6b, #0x00	;  107
      002EC1 6C 00                 1212 	.byte #0x6c, #0x00	;  108
      002EC3 6D 00                 1213 	.byte #0x6d, #0x00	;  109
      002EC5 6E 00                 1214 	.byte #0x6e, #0x00	;  110
      002EC7 6F 00                 1215 	.byte #0x6f, #0x00	;  111
      002EC9 70 00                 1216 	.byte #0x70, #0x00	;  112
      002ECB 71 00                 1217 	.byte #0x71, #0x00	;  113
      002ECD 72 00                 1218 	.byte #0x72, #0x00	;  114
      002ECF 73 00                 1219 	.byte #0x73, #0x00	;  115
      002ED1 74 00                 1220 	.byte #0x74, #0x00	;  116
      002ED3 75 00                 1221 	.byte #0x75, #0x00	;  117
      002ED5 76 00                 1222 	.byte #0x76, #0x00	;  118
      002ED7 77 00                 1223 	.byte #0x77, #0x00	;  119
      002ED9 78 00                 1224 	.byte #0x78, #0x00	;  120
      002EDB 79 00                 1225 	.byte #0x79, #0x00	;  121
      002EDD 7A 00                 1226 	.byte #0x7a, #0x00	;  122
      002EDF 7B 00                 1227 	.byte #0x7b, #0x00	;  123
      002EE1 7C 00                 1228 	.byte #0x7c, #0x00	;  124
      002EE3 7D 00                 1229 	.byte #0x7d, #0x00	;  125
      002EE5 7E 00                 1230 	.byte #0x7e, #0x00	;  126
      002EE7 7F 00                 1231 	.byte #0x7f, #0x00	;  127
      002EE9 80 00                 1232 	.byte #0x80, #0x00	;  128
      002EEB 81 00                 1233 	.byte #0x81, #0x00	;  129
      002EED 82 00                 1234 	.byte #0x82, #0x00	;  130
      002EEF 83 00                 1235 	.byte #0x83, #0x00	;  131
      002EF1 84 00                 1236 	.byte #0x84, #0x00	;  132
      002EF3 85 00                 1237 	.byte #0x85, #0x00	;  133
      002EF5 86 00                 1238 	.byte #0x86, #0x00	;  134
      002EF7 87 00                 1239 	.byte #0x87, #0x00	;  135
      002EF9 88 00                 1240 	.byte #0x88, #0x00	;  136
      002EFB 89 00                 1241 	.byte #0x89, #0x00	;  137
      002EFD 8A 00                 1242 	.byte #0x8a, #0x00	;  138
      002EFF 8B 00                 1243 	.byte #0x8b, #0x00	;  139
      002F01 8C 00                 1244 	.byte #0x8c, #0x00	;  140
      002F03 8D 00                 1245 	.byte #0x8d, #0x00	;  141
      002F05 8E 00                 1246 	.byte #0x8e, #0x00	;  142
      002F07 8F 00                 1247 	.byte #0x8f, #0x00	;  143
      002F09 90 00                 1248 	.byte #0x90, #0x00	;  144
      002F0B 91 00                 1249 	.byte #0x91, #0x00	;  145
      002F0D 92 00                 1250 	.byte #0x92, #0x00	;  146
      002F0F 93 00                 1251 	.byte #0x93, #0x00	;  147
      002F11 94 00                 1252 	.byte #0x94, #0x00	;  148
      002F13 95 00                 1253 	.byte #0x95, #0x00	;  149
      002F15 96 00                 1254 	.byte #0x96, #0x00	;  150
      002F17 97 00                 1255 	.byte #0x97, #0x00	;  151
      002F19 98 00                 1256 	.byte #0x98, #0x00	;  152
      002F1B 99 00                 1257 	.byte #0x99, #0x00	;  153
      002F1D 9A 00                 1258 	.byte #0x9a, #0x00	;  154
      002F1F 9B 00                 1259 	.byte #0x9b, #0x00	;  155
      002F21 9C 00                 1260 	.byte #0x9c, #0x00	;  156
      002F23 9D 00                 1261 	.byte #0x9d, #0x00	;  157
      002F25 9E 00                 1262 	.byte #0x9e, #0x00	;  158
      002F27 9F 00                 1263 	.byte #0x9f, #0x00	;  159
      002F29 A0 00                 1264 	.byte #0xa0, #0x00	;  160
      002F2B A1 00                 1265 	.byte #0xa1, #0x00	;  161
      002F2D A2 00                 1266 	.byte #0xa2, #0x00	;  162
      002F2F A3 00                 1267 	.byte #0xa3, #0x00	;  163
      002F31 A4 00                 1268 	.byte #0xa4, #0x00	;  164
      002F33 A5 00                 1269 	.byte #0xa5, #0x00	;  165
      002F35 A6 00                 1270 	.byte #0xa6, #0x00	;  166
      002F37 A7 00                 1271 	.byte #0xa7, #0x00	;  167
      002F39 A8 00                 1272 	.byte #0xa8, #0x00	;  168
      002F3B A9 00                 1273 	.byte #0xa9, #0x00	;  169
      002F3D AA 00                 1274 	.byte #0xaa, #0x00	;  170
      002F3F AB 00                 1275 	.byte #0xab, #0x00	;  171
      002F41 AC 00                 1276 	.byte #0xac, #0x00	;  172
      002F43 AD 00                 1277 	.byte #0xad, #0x00	;  173
      002F45 AE 00                 1278 	.byte #0xae, #0x00	;  174
      002F47 AF 00                 1279 	.byte #0xaf, #0x00	;  175
      002F49 B0 00                 1280 	.byte #0xb0, #0x00	;  176
      002F4B B1 00                 1281 	.byte #0xb1, #0x00	;  177
      002F4D B2 00                 1282 	.byte #0xb2, #0x00	;  178
      002F4F B3 00                 1283 	.byte #0xb3, #0x00	;  179
      002F51 B4 00                 1284 	.byte #0xb4, #0x00	;  180
      002F53 B5 00                 1285 	.byte #0xb5, #0x00	;  181
      002F55 B6 00                 1286 	.byte #0xb6, #0x00	;  182
      002F57 B7 00                 1287 	.byte #0xb7, #0x00	;  183
      002F59 B8 00                 1288 	.byte #0xb8, #0x00	;  184
      002F5B B9 00                 1289 	.byte #0xb9, #0x00	;  185
      002F5D BA 00                 1290 	.byte #0xba, #0x00	;  186
      002F5F BB 00                 1291 	.byte #0xbb, #0x00	;  187
      002F61 BC 00                 1292 	.byte #0xbc, #0x00	;  188
      002F63 BD 00                 1293 	.byte #0xbd, #0x00	;  189
      002F65 BE 00                 1294 	.byte #0xbe, #0x00	;  190
      002F67 BF 00                 1295 	.byte #0xbf, #0x00	;  191
      002F69 C0 00                 1296 	.byte #0xc0, #0x00	;  192
      002F6B C1 00                 1297 	.byte #0xc1, #0x00	;  193
      002F6D C2 00                 1298 	.byte #0xc2, #0x00	;  194
      002F6F C3 00                 1299 	.byte #0xc3, #0x00	;  195
      002F71 C4 00                 1300 	.byte #0xc4, #0x00	;  196
      002F73 C5 00                 1301 	.byte #0xc5, #0x00	;  197
      002F75 C6 00                 1302 	.byte #0xc6, #0x00	;  198
      002F77 C7 00                 1303 	.byte #0xc7, #0x00	;  199
      002F79 C8 00                 1304 	.byte #0xc8, #0x00	;  200
      002F7B C9 00                 1305 	.byte #0xc9, #0x00	;  201
      002F7D CA 00                 1306 	.byte #0xca, #0x00	;  202
      002F7F CB 00                 1307 	.byte #0xcb, #0x00	;  203
      002F81 CC 00                 1308 	.byte #0xcc, #0x00	;  204
      002F83 CD 00                 1309 	.byte #0xcd, #0x00	;  205
      002F85 CE 00                 1310 	.byte #0xce, #0x00	;  206
      002F87 CF 00                 1311 	.byte #0xcf, #0x00	;  207
      002F89 D0 00                 1312 	.byte #0xd0, #0x00	;  208
      002F8B D1 00                 1313 	.byte #0xd1, #0x00	;  209
      002F8D D2 00                 1314 	.byte #0xd2, #0x00	;  210
      002F8F D3 00                 1315 	.byte #0xd3, #0x00	;  211
      002F91 D4 00                 1316 	.byte #0xd4, #0x00	;  212
      002F93 D5 00                 1317 	.byte #0xd5, #0x00	;  213
      002F95 D6 00                 1318 	.byte #0xd6, #0x00	;  214
      002F97 D7 00                 1319 	.byte #0xd7, #0x00	;  215
      002F99 D8 00                 1320 	.byte #0xd8, #0x00	;  216
      002F9B D9 00                 1321 	.byte #0xd9, #0x00	;  217
      002F9D DA 00                 1322 	.byte #0xda, #0x00	;  218
      002F9F DB 00                 1323 	.byte #0xdb, #0x00	;  219
      002FA1 DC 00                 1324 	.byte #0xdc, #0x00	;  220
      002FA3 DD 00                 1325 	.byte #0xdd, #0x00	;  221
      002FA5 DE 00                 1326 	.byte #0xde, #0x00	;  222
      002FA7 DF 00                 1327 	.byte #0xdf, #0x00	;  223
      002FA9 E0 00                 1328 	.byte #0xe0, #0x00	;  224
      002FAB E1 00                 1329 	.byte #0xe1, #0x00	;  225
      002FAD E2 00                 1330 	.byte #0xe2, #0x00	;  226
      002FAF E3 00                 1331 	.byte #0xe3, #0x00	;  227
      002FB1 E4 00                 1332 	.byte #0xe4, #0x00	;  228
      002FB3 E5 00                 1333 	.byte #0xe5, #0x00	;  229
      002FB5 E6 00                 1334 	.byte #0xe6, #0x00	;  230
      002FB7 E7 00                 1335 	.byte #0xe7, #0x00	;  231
      002FB9 E8 00                 1336 	.byte #0xe8, #0x00	;  232
      002FBB E9 00                 1337 	.byte #0xe9, #0x00	;  233
      002FBD EA 00                 1338 	.byte #0xea, #0x00	;  234
      002FBF EB 00                 1339 	.byte #0xeb, #0x00	;  235
      002FC1 EC 00                 1340 	.byte #0xec, #0x00	;  236
      002FC3 ED 00                 1341 	.byte #0xed, #0x00	;  237
      002FC5 EE 00                 1342 	.byte #0xee, #0x00	;  238
      002FC7 EF 00                 1343 	.byte #0xef, #0x00	;  239
      002FC9 F0 00                 1344 	.byte #0xf0, #0x00	;  240
      002FCB F1 00                 1345 	.byte #0xf1, #0x00	;  241
      002FCD F2 00                 1346 	.byte #0xf2, #0x00	;  242
      002FCF F3 00                 1347 	.byte #0xf3, #0x00	;  243
      002FD1 F4 00                 1348 	.byte #0xf4, #0x00	;  244
      002FD3 F5 00                 1349 	.byte #0xf5, #0x00	;  245
      002FD5 F6 00                 1350 	.byte #0xf6, #0x00	;  246
      002FD7 F7 00                 1351 	.byte #0xf7, #0x00	;  247
      002FD9 F8 00                 1352 	.byte #0xf8, #0x00	;  248
      002FDB F9 00                 1353 	.byte #0xf9, #0x00	;  249
      002FDD FA 00                 1354 	.byte #0xfa, #0x00	;  250
      002FDF FB 00                 1355 	.byte #0xfb, #0x00	;  251
      002FE1 FC 00                 1356 	.byte #0xfc, #0x00	;  252
      002FE3 FD 00                 1357 	.byte #0xfd, #0x00	;  253
      002FE5 FE 00                 1358 	.byte #0xfe, #0x00	;  254
      002FE7 FF 00                 1359 	.byte #0xff, #0x00	;  255
      002FE9 FF 00                 1360 	.byte #0xff, #0x00	;  255
      002FEB FE 00                 1361 	.byte #0xfe, #0x00	;  254
      002FED FD 00                 1362 	.byte #0xfd, #0x00	;  253
      002FEF FC 00                 1363 	.byte #0xfc, #0x00	;  252
      002FF1 FB 00                 1364 	.byte #0xfb, #0x00	;  251
      002FF3 FA 00                 1365 	.byte #0xfa, #0x00	;  250
      002FF5 F9 00                 1366 	.byte #0xf9, #0x00	;  249
      002FF7 F8 00                 1367 	.byte #0xf8, #0x00	;  248
      002FF9 F7 00                 1368 	.byte #0xf7, #0x00	;  247
      002FFB F6 00                 1369 	.byte #0xf6, #0x00	;  246
      002FFD F5 00                 1370 	.byte #0xf5, #0x00	;  245
      002FFF F4 00                 1371 	.byte #0xf4, #0x00	;  244
      003001 F3 00                 1372 	.byte #0xf3, #0x00	;  243
      003003 F2 00                 1373 	.byte #0xf2, #0x00	;  242
      003005 F1 00                 1374 	.byte #0xf1, #0x00	;  241
      003007 F0 00                 1375 	.byte #0xf0, #0x00	;  240
      003009 EF 00                 1376 	.byte #0xef, #0x00	;  239
      00300B EE 00                 1377 	.byte #0xee, #0x00	;  238
      00300D ED 00                 1378 	.byte #0xed, #0x00	;  237
      00300F EC 00                 1379 	.byte #0xec, #0x00	;  236
      003011 EB 00                 1380 	.byte #0xeb, #0x00	;  235
      003013 EA 00                 1381 	.byte #0xea, #0x00	;  234
      003015 E9 00                 1382 	.byte #0xe9, #0x00	;  233
      003017 E8 00                 1383 	.byte #0xe8, #0x00	;  232
      003019 E7 00                 1384 	.byte #0xe7, #0x00	;  231
      00301B E6 00                 1385 	.byte #0xe6, #0x00	;  230
      00301D E5 00                 1386 	.byte #0xe5, #0x00	;  229
      00301F E4 00                 1387 	.byte #0xe4, #0x00	;  228
      003021 E3 00                 1388 	.byte #0xe3, #0x00	;  227
      003023 E2 00                 1389 	.byte #0xe2, #0x00	;  226
      003025 E1 00                 1390 	.byte #0xe1, #0x00	;  225
      003027 E0 00                 1391 	.byte #0xe0, #0x00	;  224
      003029 DF 00                 1392 	.byte #0xdf, #0x00	;  223
      00302B DE 00                 1393 	.byte #0xde, #0x00	;  222
      00302D DD 00                 1394 	.byte #0xdd, #0x00	;  221
      00302F DC 00                 1395 	.byte #0xdc, #0x00	;  220
      003031 DB 00                 1396 	.byte #0xdb, #0x00	;  219
      003033 DA 00                 1397 	.byte #0xda, #0x00	;  218
      003035 D9 00                 1398 	.byte #0xd9, #0x00	;  217
      003037 D8 00                 1399 	.byte #0xd8, #0x00	;  216
      003039 D7 00                 1400 	.byte #0xd7, #0x00	;  215
      00303B D6 00                 1401 	.byte #0xd6, #0x00	;  214
      00303D D5 00                 1402 	.byte #0xd5, #0x00	;  213
      00303F D4 00                 1403 	.byte #0xd4, #0x00	;  212
      003041 D3 00                 1404 	.byte #0xd3, #0x00	;  211
      003043 D2 00                 1405 	.byte #0xd2, #0x00	;  210
      003045 D1 00                 1406 	.byte #0xd1, #0x00	;  209
      003047 D0 00                 1407 	.byte #0xd0, #0x00	;  208
      003049 CF 00                 1408 	.byte #0xcf, #0x00	;  207
      00304B CE 00                 1409 	.byte #0xce, #0x00	;  206
      00304D CD 00                 1410 	.byte #0xcd, #0x00	;  205
      00304F CC 00                 1411 	.byte #0xcc, #0x00	;  204
      003051 CB 00                 1412 	.byte #0xcb, #0x00	;  203
      003053 CA 00                 1413 	.byte #0xca, #0x00	;  202
      003055 C9 00                 1414 	.byte #0xc9, #0x00	;  201
      003057 C8 00                 1415 	.byte #0xc8, #0x00	;  200
      003059 C7 00                 1416 	.byte #0xc7, #0x00	;  199
      00305B C6 00                 1417 	.byte #0xc6, #0x00	;  198
      00305D C5 00                 1418 	.byte #0xc5, #0x00	;  197
      00305F C4 00                 1419 	.byte #0xc4, #0x00	;  196
      003061 C3 00                 1420 	.byte #0xc3, #0x00	;  195
      003063 C2 00                 1421 	.byte #0xc2, #0x00	;  194
      003065 C1 00                 1422 	.byte #0xc1, #0x00	;  193
      003067 C0 00                 1423 	.byte #0xc0, #0x00	;  192
      003069 BF 00                 1424 	.byte #0xbf, #0x00	;  191
      00306B BE 00                 1425 	.byte #0xbe, #0x00	;  190
      00306D BD 00                 1426 	.byte #0xbd, #0x00	;  189
      00306F BC 00                 1427 	.byte #0xbc, #0x00	;  188
      003071 BB 00                 1428 	.byte #0xbb, #0x00	;  187
      003073 BA 00                 1429 	.byte #0xba, #0x00	;  186
      003075 B9 00                 1430 	.byte #0xb9, #0x00	;  185
      003077 B8 00                 1431 	.byte #0xb8, #0x00	;  184
      003079 B7 00                 1432 	.byte #0xb7, #0x00	;  183
      00307B B6 00                 1433 	.byte #0xb6, #0x00	;  182
      00307D B5 00                 1434 	.byte #0xb5, #0x00	;  181
      00307F B4 00                 1435 	.byte #0xb4, #0x00	;  180
      003081 B3 00                 1436 	.byte #0xb3, #0x00	;  179
      003083 B2 00                 1437 	.byte #0xb2, #0x00	;  178
      003085 B1 00                 1438 	.byte #0xb1, #0x00	;  177
      003087 B0 00                 1439 	.byte #0xb0, #0x00	;  176
      003089 AF 00                 1440 	.byte #0xaf, #0x00	;  175
      00308B AE 00                 1441 	.byte #0xae, #0x00	;  174
      00308D AD 00                 1442 	.byte #0xad, #0x00	;  173
      00308F AC 00                 1443 	.byte #0xac, #0x00	;  172
      003091 AB 00                 1444 	.byte #0xab, #0x00	;  171
      003093 AA 00                 1445 	.byte #0xaa, #0x00	;  170
      003095 A9 00                 1446 	.byte #0xa9, #0x00	;  169
      003097 A8 00                 1447 	.byte #0xa8, #0x00	;  168
      003099 A7 00                 1448 	.byte #0xa7, #0x00	;  167
      00309B A6 00                 1449 	.byte #0xa6, #0x00	;  166
      00309D A5 00                 1450 	.byte #0xa5, #0x00	;  165
      00309F A4 00                 1451 	.byte #0xa4, #0x00	;  164
      0030A1 A3 00                 1452 	.byte #0xa3, #0x00	;  163
      0030A3 A2 00                 1453 	.byte #0xa2, #0x00	;  162
      0030A5 A1 00                 1454 	.byte #0xa1, #0x00	;  161
      0030A7 A0 00                 1455 	.byte #0xa0, #0x00	;  160
      0030A9 9F 00                 1456 	.byte #0x9f, #0x00	;  159
      0030AB 9E 00                 1457 	.byte #0x9e, #0x00	;  158
      0030AD 9D 00                 1458 	.byte #0x9d, #0x00	;  157
      0030AF 9C 00                 1459 	.byte #0x9c, #0x00	;  156
      0030B1 9B 00                 1460 	.byte #0x9b, #0x00	;  155
      0030B3 9A 00                 1461 	.byte #0x9a, #0x00	;  154
      0030B5 99 00                 1462 	.byte #0x99, #0x00	;  153
      0030B7 98 00                 1463 	.byte #0x98, #0x00	;  152
      0030B9 97 00                 1464 	.byte #0x97, #0x00	;  151
      0030BB 96 00                 1465 	.byte #0x96, #0x00	;  150
      0030BD 95 00                 1466 	.byte #0x95, #0x00	;  149
      0030BF 94 00                 1467 	.byte #0x94, #0x00	;  148
      0030C1 93 00                 1468 	.byte #0x93, #0x00	;  147
      0030C3 92 00                 1469 	.byte #0x92, #0x00	;  146
      0030C5 91 00                 1470 	.byte #0x91, #0x00	;  145
      0030C7 90 00                 1471 	.byte #0x90, #0x00	;  144
      0030C9 8F 00                 1472 	.byte #0x8f, #0x00	;  143
      0030CB 8E 00                 1473 	.byte #0x8e, #0x00	;  142
      0030CD 8D 00                 1474 	.byte #0x8d, #0x00	;  141
      0030CF 8C 00                 1475 	.byte #0x8c, #0x00	;  140
      0030D1 8B 00                 1476 	.byte #0x8b, #0x00	;  139
      0030D3 8A 00                 1477 	.byte #0x8a, #0x00	;  138
      0030D5 89 00                 1478 	.byte #0x89, #0x00	;  137
      0030D7 88 00                 1479 	.byte #0x88, #0x00	;  136
      0030D9 87 00                 1480 	.byte #0x87, #0x00	;  135
      0030DB 86 00                 1481 	.byte #0x86, #0x00	;  134
      0030DD 85 00                 1482 	.byte #0x85, #0x00	;  133
      0030DF 84 00                 1483 	.byte #0x84, #0x00	;  132
      0030E1 83 00                 1484 	.byte #0x83, #0x00	;  131
      0030E3 82 00                 1485 	.byte #0x82, #0x00	;  130
      0030E5 81 00                 1486 	.byte #0x81, #0x00	;  129
      0030E7 80 00                 1487 	.byte #0x80, #0x00	;  128
      0030E9 7F 00                 1488 	.byte #0x7f, #0x00	;  127
      0030EB 7E 00                 1489 	.byte #0x7e, #0x00	;  126
      0030ED 7D 00                 1490 	.byte #0x7d, #0x00	;  125
      0030EF 7C 00                 1491 	.byte #0x7c, #0x00	;  124
      0030F1 7B 00                 1492 	.byte #0x7b, #0x00	;  123
      0030F3 7A 00                 1493 	.byte #0x7a, #0x00	;  122
      0030F5 79 00                 1494 	.byte #0x79, #0x00	;  121
      0030F7 78 00                 1495 	.byte #0x78, #0x00	;  120
      0030F9 77 00                 1496 	.byte #0x77, #0x00	;  119
      0030FB 76 00                 1497 	.byte #0x76, #0x00	;  118
      0030FD 75 00                 1498 	.byte #0x75, #0x00	;  117
      0030FF 74 00                 1499 	.byte #0x74, #0x00	;  116
      003101 73 00                 1500 	.byte #0x73, #0x00	;  115
      003103 72 00                 1501 	.byte #0x72, #0x00	;  114
      003105 71 00                 1502 	.byte #0x71, #0x00	;  113
      003107 70 00                 1503 	.byte #0x70, #0x00	;  112
      003109 6F 00                 1504 	.byte #0x6f, #0x00	;  111
      00310B 6E 00                 1505 	.byte #0x6e, #0x00	;  110
      00310D 6D 00                 1506 	.byte #0x6d, #0x00	;  109
      00310F 6C 00                 1507 	.byte #0x6c, #0x00	;  108
      003111 6B 00                 1508 	.byte #0x6b, #0x00	;  107
      003113 6A 00                 1509 	.byte #0x6a, #0x00	;  106
      003115 69 00                 1510 	.byte #0x69, #0x00	;  105
      003117 68 00                 1511 	.byte #0x68, #0x00	;  104
      003119 67 00                 1512 	.byte #0x67, #0x00	;  103
      00311B 66 00                 1513 	.byte #0x66, #0x00	;  102
      00311D 65 00                 1514 	.byte #0x65, #0x00	;  101
      00311F 64 00                 1515 	.byte #0x64, #0x00	;  100
      003121 63 00                 1516 	.byte #0x63, #0x00	;  99
      003123 62 00                 1517 	.byte #0x62, #0x00	;  98
      003125 61 00                 1518 	.byte #0x61, #0x00	;  97
      003127 60 00                 1519 	.byte #0x60, #0x00	;  96
      003129 5F 00                 1520 	.byte #0x5f, #0x00	;  95
      00312B 5E 00                 1521 	.byte #0x5e, #0x00	;  94
      00312D 5D 00                 1522 	.byte #0x5d, #0x00	;  93
      00312F 5C 00                 1523 	.byte #0x5c, #0x00	;  92
      003131 5B 00                 1524 	.byte #0x5b, #0x00	;  91
      003133 5A 00                 1525 	.byte #0x5a, #0x00	;  90
      003135 59 00                 1526 	.byte #0x59, #0x00	;  89
      003137 58 00                 1527 	.byte #0x58, #0x00	;  88
      003139 57 00                 1528 	.byte #0x57, #0x00	;  87
      00313B 56 00                 1529 	.byte #0x56, #0x00	;  86
      00313D 55 00                 1530 	.byte #0x55, #0x00	;  85
      00313F 54 00                 1531 	.byte #0x54, #0x00	;  84
      003141 53 00                 1532 	.byte #0x53, #0x00	;  83
      003143 52 00                 1533 	.byte #0x52, #0x00	;  82
      003145 51 00                 1534 	.byte #0x51, #0x00	;  81
      003147 50 00                 1535 	.byte #0x50, #0x00	;  80
      003149 4F 00                 1536 	.byte #0x4f, #0x00	;  79
      00314B 4E 00                 1537 	.byte #0x4e, #0x00	;  78
      00314D 4D 00                 1538 	.byte #0x4d, #0x00	;  77
      00314F 4C 00                 1539 	.byte #0x4c, #0x00	;  76
      003151 4B 00                 1540 	.byte #0x4b, #0x00	;  75
      003153 4A 00                 1541 	.byte #0x4a, #0x00	;  74
      003155 49 00                 1542 	.byte #0x49, #0x00	;  73
      003157 48 00                 1543 	.byte #0x48, #0x00	;  72
      003159 47 00                 1544 	.byte #0x47, #0x00	;  71
      00315B 46 00                 1545 	.byte #0x46, #0x00	;  70
      00315D 45 00                 1546 	.byte #0x45, #0x00	;  69
      00315F 44 00                 1547 	.byte #0x44, #0x00	;  68
      003161 43 00                 1548 	.byte #0x43, #0x00	;  67
      003163 42 00                 1549 	.byte #0x42, #0x00	;  66
      003165 41 00                 1550 	.byte #0x41, #0x00	;  65
      003167 40 00                 1551 	.byte #0x40, #0x00	;  64
      003169 3F 00                 1552 	.byte #0x3f, #0x00	;  63
      00316B 3E 00                 1553 	.byte #0x3e, #0x00	;  62
      00316D 3D 00                 1554 	.byte #0x3d, #0x00	;  61
      00316F 3C 00                 1555 	.byte #0x3c, #0x00	;  60
      003171 3B 00                 1556 	.byte #0x3b, #0x00	;  59
      003173 3A 00                 1557 	.byte #0x3a, #0x00	;  58
      003175 39 00                 1558 	.byte #0x39, #0x00	;  57
      003177 38 00                 1559 	.byte #0x38, #0x00	;  56
      003179 37 00                 1560 	.byte #0x37, #0x00	;  55
      00317B 36 00                 1561 	.byte #0x36, #0x00	;  54
      00317D 35 00                 1562 	.byte #0x35, #0x00	;  53
      00317F 34 00                 1563 	.byte #0x34, #0x00	;  52
      003181 33 00                 1564 	.byte #0x33, #0x00	;  51
      003183 32 00                 1565 	.byte #0x32, #0x00	;  50
      003185 31 00                 1566 	.byte #0x31, #0x00	;  49
      003187 30 00                 1567 	.byte #0x30, #0x00	;  48
      003189 2F 00                 1568 	.byte #0x2f, #0x00	;  47
      00318B 2E 00                 1569 	.byte #0x2e, #0x00	;  46
      00318D 2D 00                 1570 	.byte #0x2d, #0x00	;  45
      00318F 2C 00                 1571 	.byte #0x2c, #0x00	;  44
      003191 2B 00                 1572 	.byte #0x2b, #0x00	;  43
      003193 2A 00                 1573 	.byte #0x2a, #0x00	;  42
      003195 29 00                 1574 	.byte #0x29, #0x00	;  41
      003197 28 00                 1575 	.byte #0x28, #0x00	;  40
      003199 27 00                 1576 	.byte #0x27, #0x00	;  39
      00319B 26 00                 1577 	.byte #0x26, #0x00	;  38
      00319D 25 00                 1578 	.byte #0x25, #0x00	;  37
      00319F 24 00                 1579 	.byte #0x24, #0x00	;  36
      0031A1 23 00                 1580 	.byte #0x23, #0x00	;  35
      0031A3 22 00                 1581 	.byte #0x22, #0x00	;  34
      0031A5 21 00                 1582 	.byte #0x21, #0x00	;  33
      0031A7 20 00                 1583 	.byte #0x20, #0x00	;  32
      0031A9 1F 00                 1584 	.byte #0x1f, #0x00	;  31
      0031AB 1E 00                 1585 	.byte #0x1e, #0x00	;  30
      0031AD 1D 00                 1586 	.byte #0x1d, #0x00	;  29
      0031AF 1C 00                 1587 	.byte #0x1c, #0x00	;  28
      0031B1 1B 00                 1588 	.byte #0x1b, #0x00	;  27
      0031B3 1A 00                 1589 	.byte #0x1a, #0x00	;  26
      0031B5 19 00                 1590 	.byte #0x19, #0x00	;  25
      0031B7 18 00                 1591 	.byte #0x18, #0x00	;  24
      0031B9 17 00                 1592 	.byte #0x17, #0x00	;  23
      0031BB 16 00                 1593 	.byte #0x16, #0x00	;  22
      0031BD 15 00                 1594 	.byte #0x15, #0x00	;  21
      0031BF 14 00                 1595 	.byte #0x14, #0x00	;  20
      0031C1 13 00                 1596 	.byte #0x13, #0x00	;  19
      0031C3 12 00                 1597 	.byte #0x12, #0x00	;  18
      0031C5 11 00                 1598 	.byte #0x11, #0x00	;  17
      0031C7 10 00                 1599 	.byte #0x10, #0x00	;  16
      0031C9 0F 00                 1600 	.byte #0x0f, #0x00	;  15
      0031CB 0E 00                 1601 	.byte #0x0e, #0x00	;  14
      0031CD 0D 00                 1602 	.byte #0x0d, #0x00	;  13
      0031CF 0C 00                 1603 	.byte #0x0c, #0x00	;  12
      0031D1 0B 00                 1604 	.byte #0x0b, #0x00	;  11
      0031D3 0A 00                 1605 	.byte #0x0a, #0x00	;  10
      0031D5 09 00                 1606 	.byte #0x09, #0x00	;  9
      0031D7 08 00                 1607 	.byte #0x08, #0x00	;  8
      0031D9 07 00                 1608 	.byte #0x07, #0x00	;  7
      0031DB 06 00                 1609 	.byte #0x06, #0x00	;  6
      0031DD 05 00                 1610 	.byte #0x05, #0x00	;  5
      0031DF 04 00                 1611 	.byte #0x04, #0x00	;  4
      0031E1 03 00                 1612 	.byte #0x03, #0x00	;  3
      0031E3 02 00                 1613 	.byte #0x02, #0x00	;  2
      0031E5 01 00                 1614 	.byte #0x01, #0x00	;  1
      0031E7 00 00                 1615 	.byte #0x00, #0x00	;  0
                                   1616 	.area CONST   (CODE)
      0031E9                       1617 ___str_0:
      0031E9 20 53 50 49 20 44 41  1618 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      0031F9 0A                    1619 	.db 0x0a
      0031FA 0D                    1620 	.db 0x0d
      0031FB 00                    1621 	.db 0x00
                                   1622 	.area CSEG    (CODE)
                                   1623 	.area CONST   (CODE)
      0031FC                       1624 ___str_1:
      0031FC 53 50 49 20 54 52 41  1625 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003214 0A                    1626 	.db 0x0a
      003215 0D                    1627 	.db 0x0d
      003216 00                    1628 	.db 0x00
                                   1629 	.area CSEG    (CODE)
                                   1630 	.area CONST   (CODE)
      003217                       1631 ___str_2:
      003217 77                    1632 	.ascii "w"
      003218 0A                    1633 	.db 0x0a
      003219 0D                    1634 	.db 0x0d
      00321A 00                    1635 	.db 0x00
                                   1636 	.area CSEG    (CODE)
                                   1637 	.area CONST   (CODE)
      00321B                       1638 ___str_3:
      00321B 4C 6F 77 20 62 79 74  1639 	.ascii "Low byte %d"
             65 20 25 64
      003226 0A                    1640 	.db 0x0a
      003227 0D                    1641 	.db 0x0d
      003228 00                    1642 	.db 0x00
                                   1643 	.area CSEG    (CODE)
                                   1644 	.area CONST   (CODE)
      003229                       1645 ___str_4:
      003229 48 69 67 68 20 62 79  1646 	.ascii "High byte %d"
             74 65 20 25 64
      003235 0A                    1647 	.db 0x0a
      003236 0D                    1648 	.db 0x0d
      003237 00                    1649 	.db 0x00
                                   1650 	.area CSEG    (CODE)
                                   1651 	.area CONST   (CODE)
      003238                       1652 ___str_5:
      003238 45                    1653 	.ascii "E"
      003239 0A                    1654 	.db 0x0a
      00323A 0D                    1655 	.db 0x0d
      00323B 00                    1656 	.db 0x00
                                   1657 	.area CSEG    (CODE)
                                   1658 	.area CONST   (CODE)
      00323C                       1659 ___str_6:
      00323C 0A                    1660 	.db 0x0a
      00323D 0D                    1661 	.db 0x0d
      00323E 00                    1662 	.db 0x00
                                   1663 	.area CSEG    (CODE)
                                   1664 	.area CONST   (CODE)
      00323F                       1665 ___str_7:
      00323F 54 20                 1666 	.ascii "T "
      003241 0A                    1667 	.db 0x0a
      003242 0D                    1668 	.db 0x0d
      003243 00                    1669 	.db 0x00
                                   1670 	.area CSEG    (CODE)
                                   1671 	.area CONST   (CODE)
      003244                       1672 ___str_8:
      003244 73 70 69 20 69 73 72  1673 	.ascii "spi isr "
             20
      00324C 0A                    1674 	.db 0x0a
      00324D 0D                    1675 	.db 0x0d
      00324E 00                    1676 	.db 0x00
                                   1677 	.area CSEG    (CODE)
                                   1678 	.area XINIT   (CODE)
      00325A                       1679 __xinit__ms_flag:
      00325A 00                    1680 	.db #0x00	; 0
      00325B                       1681 __xinit__transmission_complete:
      00325B 00 00                 1682 	.byte #0x00, #0x00	;  0
                                   1683 	.area CABS    (ABS,CODE)
