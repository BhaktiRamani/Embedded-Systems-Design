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
      00210D 74 E9            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2F            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 87         [24]  704 	lcall	_printf
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
      00212F 12 23 25         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:216: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 FC            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 2F            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 23 87         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:223: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:225: printf("w\n\r");
      002147 74 17            [12]  735 	mov	a,#___str_2
      002149 C0 E0            [24]  736 	push	acc
      00214B 74 30            [12]  737 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  738 	push	acc
      00214F 74 80            [12]  739 	mov	a,#0x80
      002151 C0 E0            [24]  740 	push	acc
      002153 12 23 87         [24]  741 	lcall	_printf
      002156 15 81            [12]  742 	dec	sp
      002158 15 81            [12]  743 	dec	sp
      00215A 15 81            [12]  744 	dec	sp
                                    745 ;	spi_dac.c:227: if(dac_value_index < SINE_MAX_INDEX)
      00215C 90 04 04         [24]  746 	mov	dptr,#_main_dac_value_index_65537_27
      00215F E0               [24]  747 	movx	a,@dptr
      002160 FE               [12]  748 	mov	r6,a
      002161 A3               [24]  749 	inc	dptr
      002162 E0               [24]  750 	movx	a,@dptr
      002163 FF               [12]  751 	mov	r7,a
      002164 C3               [12]  752 	clr	c
      002165 64 80            [12]  753 	xrl	a,#0x80
      002167 94 81            [12]  754 	subb	a,#0x81
      002169 50 21            [24]  755 	jnc	00102$
                                    756 ;	spi_dac.c:231: dac_data = dac_values[dac_value_index];
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
                                    784 ;	spi_dac.c:235: dac_value_index = 0;  // Reset index for next cycle
      00218C 90 04 04         [24]  785 	mov	dptr,#_main_dac_value_index_65537_27
      00218F E4               [12]  786 	clr	a
      002190 F0               [24]  787 	movx	@dptr,a
      002191 A3               [24]  788 	inc	dptr
      002192 F0               [24]  789 	movx	@dptr,a
      002193                        790 00103$:
                                    791 ;	spi_dac.c:242: ((dac_data >> 4) & 0x0F);
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
                                    814 ;	spi_dac.c:245: low_byte = (dac_data & 0x0F) << 4;
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
                                    826 ;	spi_dac.c:251: printf("Low byte %d\n\r", low_byte);
      0021C3 C0 07            [24]  827 	push	ar7
      0021C5 C0 06            [24]  828 	push	ar6
      0021C7 C0 05            [24]  829 	push	ar5
      0021C9 C0 04            [24]  830 	push	ar4
      0021CB C0 06            [24]  831 	push	ar6
      0021CD C0 07            [24]  832 	push	ar7
      0021CF 74 1B            [12]  833 	mov	a,#___str_3
      0021D1 C0 E0            [24]  834 	push	acc
      0021D3 74 30            [12]  835 	mov	a,#(___str_3 >> 8)
      0021D5 C0 E0            [24]  836 	push	acc
      0021D7 74 80            [12]  837 	mov	a,#0x80
      0021D9 C0 E0            [24]  838 	push	acc
      0021DB 12 23 87         [24]  839 	lcall	_printf
      0021DE E5 81            [12]  840 	mov	a,sp
      0021E0 24 FB            [12]  841 	add	a,#0xfb
      0021E2 F5 81            [12]  842 	mov	sp,a
      0021E4 D0 04            [24]  843 	pop	ar4
      0021E6 D0 05            [24]  844 	pop	ar5
                                    845 ;	spi_dac.c:252: printf("High byte %d\n\r", high_byte);
      0021E8 C0 05            [24]  846 	push	ar5
      0021EA C0 04            [24]  847 	push	ar4
      0021EC C0 04            [24]  848 	push	ar4
      0021EE C0 05            [24]  849 	push	ar5
      0021F0 74 29            [12]  850 	mov	a,#___str_4
      0021F2 C0 E0            [24]  851 	push	acc
      0021F4 74 30            [12]  852 	mov	a,#(___str_4 >> 8)
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
                                    864 ;	spi_dac.c:254: P1_1 = 0;  // Select DAC
                                    865 ;	assignBit
      00220D C2 91            [12]  866 	clr	_P1_1
                                    867 ;	spi_dac.c:257: SPDAT = high_byte;
      00220F 8C C5            [24]  868 	mov	_SPDAT,r4
                                    869 ;	spi_dac.c:258: while (!(SPSTA & (1<<7))); 
      002211                        870 00104$:
      002211 E5 C4            [12]  871 	mov	a,_SPSTA
      002213 30 E7 FB         [24]  872 	jnb	acc.7,00104$
                                    873 ;	spi_dac.c:262: SPDAT = low_byte;
      002216 8E C5            [24]  874 	mov	_SPDAT,r6
                                    875 ;	spi_dac.c:263: while (!(SPSTA & (1<<7))); 
      002218                        876 00107$:
      002218 E5 C4            [12]  877 	mov	a,_SPSTA
      00221A 30 E7 FB         [24]  878 	jnb	acc.7,00107$
                                    879 ;	spi_dac.c:265: P1_1 = 1;  // Deselect DAC
                                    880 ;	assignBit
      00221D D2 91            [12]  881 	setb	_P1_1
                                    882 ;	spi_dac.c:268: printf("E\n\r");
      00221F 74 38            [12]  883 	mov	a,#___str_5
      002221 C0 E0            [24]  884 	push	acc
      002223 74 30            [12]  885 	mov	a,#(___str_5 >> 8)
      002225 C0 E0            [24]  886 	push	acc
      002227 74 80            [12]  887 	mov	a,#0x80
      002229 C0 E0            [24]  888 	push	acc
      00222B 12 23 87         [24]  889 	lcall	_printf
      00222E 15 81            [12]  890 	dec	sp
      002230 15 81            [12]  891 	dec	sp
      002232 15 81            [12]  892 	dec	sp
                                    893 ;	spi_dac.c:269: printf("\n\r");
      002234 74 3C            [12]  894 	mov	a,#___str_6
      002236 C0 E0            [24]  895 	push	acc
      002238 74 30            [12]  896 	mov	a,#(___str_6 >> 8)
      00223A C0 E0            [24]  897 	push	acc
      00223C 74 80            [12]  898 	mov	a,#0x80
      00223E C0 E0            [24]  899 	push	acc
      002240 12 23 87         [24]  900 	lcall	_printf
      002243 15 81            [12]  901 	dec	sp
      002245 15 81            [12]  902 	dec	sp
      002247 15 81            [12]  903 	dec	sp
                                    904 ;	spi_dac.c:272: dac_value_index++;
      002249 90 04 04         [24]  905 	mov	dptr,#_main_dac_value_index_65537_27
      00224C E0               [24]  906 	movx	a,@dptr
      00224D 24 01            [12]  907 	add	a,#0x01
      00224F F0               [24]  908 	movx	@dptr,a
      002250 A3               [24]  909 	inc	dptr
      002251 E0               [24]  910 	movx	a,@dptr
      002252 34 00            [12]  911 	addc	a,#0x00
      002254 F0               [24]  912 	movx	@dptr,a
                                    913 ;	spi_dac.c:274: }
      002255 02 21 47         [24]  914 	ljmp	00111$
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'timer0_init'
                                    917 ;------------------------------------------------------------
                                    918 ;	spi_dac.c:276: void timer0_init(void)
                                    919 ;	-----------------------------------------
                                    920 ;	 function timer0_init
                                    921 ;	-----------------------------------------
      002258                        922 _timer0_init:
                                    923 ;	spi_dac.c:278: TMOD &= 0xF0;    // Clear Timer0 mode bits
      002258 53 89 F0         [24]  924 	anl	_TMOD,#0xf0
                                    925 ;	spi_dac.c:279: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      00225B 43 89 01         [24]  926 	orl	_TMOD,#0x01
                                    927 ;	spi_dac.c:282: TH0 = TH0_RELOAD;
      00225E 75 8C FC         [24]  928 	mov	_TH0,#0xfc
                                    929 ;	spi_dac.c:283: TL0 = TL0_RELOAD;
      002261 75 8A 66         [24]  930 	mov	_TL0,#0x66
                                    931 ;	spi_dac.c:285: ET0 = 1;         // Enable Timer0 interrupt
                                    932 ;	assignBit
      002264 D2 A9            [12]  933 	setb	_ET0
                                    934 ;	spi_dac.c:286: TR0 = 1;         // Start Timer0
                                    935 ;	assignBit
      002266 D2 8C            [12]  936 	setb	_TR0
                                    937 ;	spi_dac.c:287: }
      002268 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'timer0_isr'
                                    941 ;------------------------------------------------------------
                                    942 ;	spi_dac.c:290: void timer0_isr(void) __interrupt 1
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
                                    962 ;	spi_dac.c:293: TH0 = 0x4B;
      002288 75 8C 4B         [24]  963 	mov	_TH0,#0x4b
                                    964 ;	spi_dac.c:294: TL0 = 0x1C;
      00228B 75 8A 1C         [24]  965 	mov	_TL0,#0x1c
                                    966 ;	spi_dac.c:296: ms_flag = 1;     // Set 1ms flag
      00228E 90 04 41         [24]  967 	mov	dptr,#_ms_flag
      002291 74 01            [12]  968 	mov	a,#0x01
      002293 F0               [24]  969 	movx	@dptr,a
                                    970 ;	spi_dac.c:298: printf("T \n\r");
      002294 74 3F            [12]  971 	mov	a,#___str_7
      002296 C0 E0            [24]  972 	push	acc
      002298 74 30            [12]  973 	mov	a,#(___str_7 >> 8)
      00229A C0 E0            [24]  974 	push	acc
      00229C 74 80            [12]  975 	mov	a,#0x80
      00229E C0 E0            [24]  976 	push	acc
      0022A0 12 23 87         [24]  977 	lcall	_printf
      0022A3 15 81            [12]  978 	dec	sp
      0022A5 15 81            [12]  979 	dec	sp
      0022A7 15 81            [12]  980 	dec	sp
                                    981 ;	spi_dac.c:301: }
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
                                   1000 ;	spi_dac.c:309: void spi_isr(void) __interrupt 9
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
                                   1020 ;	spi_dac.c:311: if(SPSTA == 0x80)  // Check for successful transmission
      0022E5 74 80            [12] 1021 	mov	a,#0x80
      0022E7 B5 C4 1E         [24] 1022 	cjne	a,_SPSTA,00103$
                                   1023 ;	spi_dac.c:313: transmission_complete = 1;
      0022EA 90 04 42         [24] 1024 	mov	dptr,#_transmission_complete
      0022ED 74 01            [12] 1025 	mov	a,#0x01
      0022EF F0               [24] 1026 	movx	@dptr,a
      0022F0 E4               [12] 1027 	clr	a
      0022F1 A3               [24] 1028 	inc	dptr
      0022F2 F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	spi_dac.c:314: printf("spi isr \n\r");
      0022F3 74 44            [12] 1031 	mov	a,#___str_8
      0022F5 C0 E0            [24] 1032 	push	acc
      0022F7 74 30            [12] 1033 	mov	a,#(___str_8 >> 8)
      0022F9 C0 E0            [24] 1034 	push	acc
      0022FB 74 80            [12] 1035 	mov	a,#0x80
      0022FD C0 E0            [24] 1036 	push	acc
      0022FF 12 23 87         [24] 1037 	lcall	_printf
      002302 15 81            [12] 1038 	dec	sp
      002304 15 81            [12] 1039 	dec	sp
      002306 15 81            [12] 1040 	dec	sp
      002308                       1041 00103$:
                                   1042 ;	spi_dac.c:317: }
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
                                   1061 ;	spi_dac.c:329: void spi_init(void) 
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function spi_init
                                   1064 ;	-----------------------------------------
      002325                       1065 _spi_init:
                                   1066 ;	spi_dac.c:350: SPCON |= 0x10;
      002325 43 C3 10         [24] 1067 	orl	_SPCON,#0x10
                                   1068 ;	spi_dac.c:351: SPCON |= 0x20;
      002328 43 C3 20         [24] 1069 	orl	_SPCON,#0x20
                                   1070 ;	spi_dac.c:352: SPCON |= 0x40;
      00232B 43 C3 40         [24] 1071 	orl	_SPCON,#0x40
                                   1072 ;	spi_dac.c:359: }
      00232E 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	spi_dac.c:366: void spi_transmission_start(void)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function spi_transmission_start
                                   1080 ;	-----------------------------------------
      00232F                       1081 _spi_transmission_start:
                                   1082 ;	spi_dac.c:368: SPCON |= SPI_ENABLE;           // Enable SPI
      00232F 43 C3 40         [24] 1083 	orl	_SPCON,#0x40
                                   1084 ;	spi_dac.c:369: P1_1 = 0;
                                   1085 ;	assignBit
      002332 C2 91            [12] 1086 	clr	_P1_1
                                   1087 ;	spi_dac.c:370: }
      002334 22               [24] 1088 	ret
                                   1089 ;------------------------------------------------------------
                                   1090 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1091 ;------------------------------------------------------------
                                   1092 ;	spi_dac.c:377: void spi_transmission_stop(void) 
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function spi_transmission_stop
                                   1095 ;	-----------------------------------------
      002335                       1096 _spi_transmission_stop:
                                   1097 ;	spi_dac.c:379: SPCON &= ~SPI_ENABLE;          // Disable SPI
      002335 53 C3 BF         [24] 1098 	anl	_SPCON,#0xbf
                                   1099 ;	spi_dac.c:380: }
      002338 22               [24] 1100 	ret
                                   1101 	.area CSEG    (CODE)
                                   1102 	.area CONST   (CODE)
      002DE9                       1103 _dac_values:
      002DE9 80 00                 1104 	.byte #0x80, #0x00	;  128
      002DEB 83 00                 1105 	.byte #0x83, #0x00	;  131
      002DED 86 00                 1106 	.byte #0x86, #0x00	;  134
      002DEF 89 00                 1107 	.byte #0x89, #0x00	;  137
      002DF1 8C 00                 1108 	.byte #0x8c, #0x00	;  140
      002DF3 90 00                 1109 	.byte #0x90, #0x00	;  144
      002DF5 93 00                 1110 	.byte #0x93, #0x00	;  147
      002DF7 96 00                 1111 	.byte #0x96, #0x00	;  150
      002DF9 99 00                 1112 	.byte #0x99, #0x00	;  153
      002DFB 9C 00                 1113 	.byte #0x9c, #0x00	;  156
      002DFD 9F 00                 1114 	.byte #0x9f, #0x00	;  159
      002DFF A2 00                 1115 	.byte #0xa2, #0x00	;  162
      002E01 A5 00                 1116 	.byte #0xa5, #0x00	;  165
      002E03 A8 00                 1117 	.byte #0xa8, #0x00	;  168
      002E05 AB 00                 1118 	.byte #0xab, #0x00	;  171
      002E07 AE 00                 1119 	.byte #0xae, #0x00	;  174
      002E09 B1 00                 1120 	.byte #0xb1, #0x00	;  177
      002E0B B3 00                 1121 	.byte #0xb3, #0x00	;  179
      002E0D B6 00                 1122 	.byte #0xb6, #0x00	;  182
      002E0F B9 00                 1123 	.byte #0xb9, #0x00	;  185
      002E11 BC 00                 1124 	.byte #0xbc, #0x00	;  188
      002E13 BF 00                 1125 	.byte #0xbf, #0x00	;  191
      002E15 C1 00                 1126 	.byte #0xc1, #0x00	;  193
      002E17 C4 00                 1127 	.byte #0xc4, #0x00	;  196
      002E19 C7 00                 1128 	.byte #0xc7, #0x00	;  199
      002E1B C9 00                 1129 	.byte #0xc9, #0x00	;  201
      002E1D CC 00                 1130 	.byte #0xcc, #0x00	;  204
      002E1F CE 00                 1131 	.byte #0xce, #0x00	;  206
      002E21 D1 00                 1132 	.byte #0xd1, #0x00	;  209
      002E23 D3 00                 1133 	.byte #0xd3, #0x00	;  211
      002E25 D5 00                 1134 	.byte #0xd5, #0x00	;  213
      002E27 D8 00                 1135 	.byte #0xd8, #0x00	;  216
      002E29 DA 00                 1136 	.byte #0xda, #0x00	;  218
      002E2B DC 00                 1137 	.byte #0xdc, #0x00	;  220
      002E2D DE 00                 1138 	.byte #0xde, #0x00	;  222
      002E2F E0 00                 1139 	.byte #0xe0, #0x00	;  224
      002E31 E2 00                 1140 	.byte #0xe2, #0x00	;  226
      002E33 E4 00                 1141 	.byte #0xe4, #0x00	;  228
      002E35 E6 00                 1142 	.byte #0xe6, #0x00	;  230
      002E37 E8 00                 1143 	.byte #0xe8, #0x00	;  232
      002E39 EA 00                 1144 	.byte #0xea, #0x00	;  234
      002E3B EB 00                 1145 	.byte #0xeb, #0x00	;  235
      002E3D ED 00                 1146 	.byte #0xed, #0x00	;  237
      002E3F EF 00                 1147 	.byte #0xef, #0x00	;  239
      002E41 F0 00                 1148 	.byte #0xf0, #0x00	;  240
      002E43 F1 00                 1149 	.byte #0xf1, #0x00	;  241
      002E45 F3 00                 1150 	.byte #0xf3, #0x00	;  243
      002E47 F4 00                 1151 	.byte #0xf4, #0x00	;  244
      002E49 F5 00                 1152 	.byte #0xf5, #0x00	;  245
      002E4B F6 00                 1153 	.byte #0xf6, #0x00	;  246
      002E4D F8 00                 1154 	.byte #0xf8, #0x00	;  248
      002E4F F9 00                 1155 	.byte #0xf9, #0x00	;  249
      002E51 FA 00                 1156 	.byte #0xfa, #0x00	;  250
      002E53 FA 00                 1157 	.byte #0xfa, #0x00	;  250
      002E55 FB 00                 1158 	.byte #0xfb, #0x00	;  251
      002E57 FC 00                 1159 	.byte #0xfc, #0x00	;  252
      002E59 FD 00                 1160 	.byte #0xfd, #0x00	;  253
      002E5B FD 00                 1161 	.byte #0xfd, #0x00	;  253
      002E5D FE 00                 1162 	.byte #0xfe, #0x00	;  254
      002E5F FE 00                 1163 	.byte #0xfe, #0x00	;  254
      002E61 FE 00                 1164 	.byte #0xfe, #0x00	;  254
      002E63 FF 00                 1165 	.byte #0xff, #0x00	;  255
      002E65 FF 00                 1166 	.byte #0xff, #0x00	;  255
      002E67 FF 00                 1167 	.byte #0xff, #0x00	;  255
      002E69 FF 00                 1168 	.byte #0xff, #0x00	;  255
      002E6B FF 00                 1169 	.byte #0xff, #0x00	;  255
      002E6D FF 00                 1170 	.byte #0xff, #0x00	;  255
      002E6F FF 00                 1171 	.byte #0xff, #0x00	;  255
      002E71 FE 00                 1172 	.byte #0xfe, #0x00	;  254
      002E73 FE 00                 1173 	.byte #0xfe, #0x00	;  254
      002E75 FE 00                 1174 	.byte #0xfe, #0x00	;  254
      002E77 FD 00                 1175 	.byte #0xfd, #0x00	;  253
      002E79 FD 00                 1176 	.byte #0xfd, #0x00	;  253
      002E7B FC 00                 1177 	.byte #0xfc, #0x00	;  252
      002E7D FB 00                 1178 	.byte #0xfb, #0x00	;  251
      002E7F FA 00                 1179 	.byte #0xfa, #0x00	;  250
      002E81 FA 00                 1180 	.byte #0xfa, #0x00	;  250
      002E83 F9 00                 1181 	.byte #0xf9, #0x00	;  249
      002E85 F8 00                 1182 	.byte #0xf8, #0x00	;  248
      002E87 F6 00                 1183 	.byte #0xf6, #0x00	;  246
      002E89 F5 00                 1184 	.byte #0xf5, #0x00	;  245
      002E8B F4 00                 1185 	.byte #0xf4, #0x00	;  244
      002E8D F3 00                 1186 	.byte #0xf3, #0x00	;  243
      002E8F F1 00                 1187 	.byte #0xf1, #0x00	;  241
      002E91 F0 00                 1188 	.byte #0xf0, #0x00	;  240
      002E93 EF 00                 1189 	.byte #0xef, #0x00	;  239
      002E95 ED 00                 1190 	.byte #0xed, #0x00	;  237
      002E97 EB 00                 1191 	.byte #0xeb, #0x00	;  235
      002E99 EA 00                 1192 	.byte #0xea, #0x00	;  234
      002E9B E8 00                 1193 	.byte #0xe8, #0x00	;  232
      002E9D E6 00                 1194 	.byte #0xe6, #0x00	;  230
      002E9F E4 00                 1195 	.byte #0xe4, #0x00	;  228
      002EA1 E2 00                 1196 	.byte #0xe2, #0x00	;  226
      002EA3 E0 00                 1197 	.byte #0xe0, #0x00	;  224
      002EA5 DE 00                 1198 	.byte #0xde, #0x00	;  222
      002EA7 DC 00                 1199 	.byte #0xdc, #0x00	;  220
      002EA9 DA 00                 1200 	.byte #0xda, #0x00	;  218
      002EAB D8 00                 1201 	.byte #0xd8, #0x00	;  216
      002EAD D5 00                 1202 	.byte #0xd5, #0x00	;  213
      002EAF D3 00                 1203 	.byte #0xd3, #0x00	;  211
      002EB1 D1 00                 1204 	.byte #0xd1, #0x00	;  209
      002EB3 CE 00                 1205 	.byte #0xce, #0x00	;  206
      002EB5 CC 00                 1206 	.byte #0xcc, #0x00	;  204
      002EB7 C9 00                 1207 	.byte #0xc9, #0x00	;  201
      002EB9 C7 00                 1208 	.byte #0xc7, #0x00	;  199
      002EBB C4 00                 1209 	.byte #0xc4, #0x00	;  196
      002EBD C1 00                 1210 	.byte #0xc1, #0x00	;  193
      002EBF BF 00                 1211 	.byte #0xbf, #0x00	;  191
      002EC1 BC 00                 1212 	.byte #0xbc, #0x00	;  188
      002EC3 B9 00                 1213 	.byte #0xb9, #0x00	;  185
      002EC5 B6 00                 1214 	.byte #0xb6, #0x00	;  182
      002EC7 B3 00                 1215 	.byte #0xb3, #0x00	;  179
      002EC9 B1 00                 1216 	.byte #0xb1, #0x00	;  177
      002ECB AE 00                 1217 	.byte #0xae, #0x00	;  174
      002ECD AB 00                 1218 	.byte #0xab, #0x00	;  171
      002ECF A8 00                 1219 	.byte #0xa8, #0x00	;  168
      002ED1 A5 00                 1220 	.byte #0xa5, #0x00	;  165
      002ED3 A2 00                 1221 	.byte #0xa2, #0x00	;  162
      002ED5 9F 00                 1222 	.byte #0x9f, #0x00	;  159
      002ED7 9C 00                 1223 	.byte #0x9c, #0x00	;  156
      002ED9 99 00                 1224 	.byte #0x99, #0x00	;  153
      002EDB 96 00                 1225 	.byte #0x96, #0x00	;  150
      002EDD 93 00                 1226 	.byte #0x93, #0x00	;  147
      002EDF 90 00                 1227 	.byte #0x90, #0x00	;  144
      002EE1 8C 00                 1228 	.byte #0x8c, #0x00	;  140
      002EE3 89 00                 1229 	.byte #0x89, #0x00	;  137
      002EE5 86 00                 1230 	.byte #0x86, #0x00	;  134
      002EE7 83 00                 1231 	.byte #0x83, #0x00	;  131
      002EE9 80 00                 1232 	.byte #0x80, #0x00	;  128
      002EEB 7D 00                 1233 	.byte #0x7d, #0x00	;  125
      002EED 7A 00                 1234 	.byte #0x7a, #0x00	;  122
      002EEF 77 00                 1235 	.byte #0x77, #0x00	;  119
      002EF1 74 00                 1236 	.byte #0x74, #0x00	;  116
      002EF3 70 00                 1237 	.byte #0x70, #0x00	;  112
      002EF5 6D 00                 1238 	.byte #0x6d, #0x00	;  109
      002EF7 6A 00                 1239 	.byte #0x6a, #0x00	;  106
      002EF9 67 00                 1240 	.byte #0x67, #0x00	;  103
      002EFB 64 00                 1241 	.byte #0x64, #0x00	;  100
      002EFD 61 00                 1242 	.byte #0x61, #0x00	;  97
      002EFF 5E 00                 1243 	.byte #0x5e, #0x00	;  94
      002F01 5B 00                 1244 	.byte #0x5b, #0x00	;  91
      002F03 58 00                 1245 	.byte #0x58, #0x00	;  88
      002F05 55 00                 1246 	.byte #0x55, #0x00	;  85
      002F07 52 00                 1247 	.byte #0x52, #0x00	;  82
      002F09 4F 00                 1248 	.byte #0x4f, #0x00	;  79
      002F0B 4D 00                 1249 	.byte #0x4d, #0x00	;  77
      002F0D 4A 00                 1250 	.byte #0x4a, #0x00	;  74
      002F0F 47 00                 1251 	.byte #0x47, #0x00	;  71
      002F11 44 00                 1252 	.byte #0x44, #0x00	;  68
      002F13 41 00                 1253 	.byte #0x41, #0x00	;  65
      002F15 3F 00                 1254 	.byte #0x3f, #0x00	;  63
      002F17 3C 00                 1255 	.byte #0x3c, #0x00	;  60
      002F19 39 00                 1256 	.byte #0x39, #0x00	;  57
      002F1B 37 00                 1257 	.byte #0x37, #0x00	;  55
      002F1D 34 00                 1258 	.byte #0x34, #0x00	;  52
      002F1F 32 00                 1259 	.byte #0x32, #0x00	;  50
      002F21 2F 00                 1260 	.byte #0x2f, #0x00	;  47
      002F23 2D 00                 1261 	.byte #0x2d, #0x00	;  45
      002F25 2B 00                 1262 	.byte #0x2b, #0x00	;  43
      002F27 28 00                 1263 	.byte #0x28, #0x00	;  40
      002F29 26 00                 1264 	.byte #0x26, #0x00	;  38
      002F2B 24 00                 1265 	.byte #0x24, #0x00	;  36
      002F2D 22 00                 1266 	.byte #0x22, #0x00	;  34
      002F2F 20 00                 1267 	.byte #0x20, #0x00	;  32
      002F31 1E 00                 1268 	.byte #0x1e, #0x00	;  30
      002F33 1C 00                 1269 	.byte #0x1c, #0x00	;  28
      002F35 1A 00                 1270 	.byte #0x1a, #0x00	;  26
      002F37 18 00                 1271 	.byte #0x18, #0x00	;  24
      002F39 16 00                 1272 	.byte #0x16, #0x00	;  22
      002F3B 15 00                 1273 	.byte #0x15, #0x00	;  21
      002F3D 13 00                 1274 	.byte #0x13, #0x00	;  19
      002F3F 11 00                 1275 	.byte #0x11, #0x00	;  17
      002F41 10 00                 1276 	.byte #0x10, #0x00	;  16
      002F43 0F 00                 1277 	.byte #0x0f, #0x00	;  15
      002F45 0D 00                 1278 	.byte #0x0d, #0x00	;  13
      002F47 0C 00                 1279 	.byte #0x0c, #0x00	;  12
      002F49 0B 00                 1280 	.byte #0x0b, #0x00	;  11
      002F4B 0A 00                 1281 	.byte #0x0a, #0x00	;  10
      002F4D 08 00                 1282 	.byte #0x08, #0x00	;  8
      002F4F 07 00                 1283 	.byte #0x07, #0x00	;  7
      002F51 06 00                 1284 	.byte #0x06, #0x00	;  6
      002F53 06 00                 1285 	.byte #0x06, #0x00	;  6
      002F55 05 00                 1286 	.byte #0x05, #0x00	;  5
      002F57 04 00                 1287 	.byte #0x04, #0x00	;  4
      002F59 03 00                 1288 	.byte #0x03, #0x00	;  3
      002F5B 03 00                 1289 	.byte #0x03, #0x00	;  3
      002F5D 02 00                 1290 	.byte #0x02, #0x00	;  2
      002F5F 02 00                 1291 	.byte #0x02, #0x00	;  2
      002F61 02 00                 1292 	.byte #0x02, #0x00	;  2
      002F63 01 00                 1293 	.byte #0x01, #0x00	;  1
      002F65 01 00                 1294 	.byte #0x01, #0x00	;  1
      002F67 01 00                 1295 	.byte #0x01, #0x00	;  1
      002F69 01 00                 1296 	.byte #0x01, #0x00	;  1
      002F6B 01 00                 1297 	.byte #0x01, #0x00	;  1
      002F6D 01 00                 1298 	.byte #0x01, #0x00	;  1
      002F6F 01 00                 1299 	.byte #0x01, #0x00	;  1
      002F71 02 00                 1300 	.byte #0x02, #0x00	;  2
      002F73 02 00                 1301 	.byte #0x02, #0x00	;  2
      002F75 02 00                 1302 	.byte #0x02, #0x00	;  2
      002F77 03 00                 1303 	.byte #0x03, #0x00	;  3
      002F79 03 00                 1304 	.byte #0x03, #0x00	;  3
      002F7B 04 00                 1305 	.byte #0x04, #0x00	;  4
      002F7D 05 00                 1306 	.byte #0x05, #0x00	;  5
      002F7F 06 00                 1307 	.byte #0x06, #0x00	;  6
      002F81 06 00                 1308 	.byte #0x06, #0x00	;  6
      002F83 07 00                 1309 	.byte #0x07, #0x00	;  7
      002F85 08 00                 1310 	.byte #0x08, #0x00	;  8
      002F87 0A 00                 1311 	.byte #0x0a, #0x00	;  10
      002F89 0B 00                 1312 	.byte #0x0b, #0x00	;  11
      002F8B 0C 00                 1313 	.byte #0x0c, #0x00	;  12
      002F8D 0D 00                 1314 	.byte #0x0d, #0x00	;  13
      002F8F 0F 00                 1315 	.byte #0x0f, #0x00	;  15
      002F91 10 00                 1316 	.byte #0x10, #0x00	;  16
      002F93 11 00                 1317 	.byte #0x11, #0x00	;  17
      002F95 13 00                 1318 	.byte #0x13, #0x00	;  19
      002F97 15 00                 1319 	.byte #0x15, #0x00	;  21
      002F99 16 00                 1320 	.byte #0x16, #0x00	;  22
      002F9B 18 00                 1321 	.byte #0x18, #0x00	;  24
      002F9D 1A 00                 1322 	.byte #0x1a, #0x00	;  26
      002F9F 1C 00                 1323 	.byte #0x1c, #0x00	;  28
      002FA1 1E 00                 1324 	.byte #0x1e, #0x00	;  30
      002FA3 20 00                 1325 	.byte #0x20, #0x00	;  32
      002FA5 22 00                 1326 	.byte #0x22, #0x00	;  34
      002FA7 24 00                 1327 	.byte #0x24, #0x00	;  36
      002FA9 26 00                 1328 	.byte #0x26, #0x00	;  38
      002FAB 28 00                 1329 	.byte #0x28, #0x00	;  40
      002FAD 2B 00                 1330 	.byte #0x2b, #0x00	;  43
      002FAF 2D 00                 1331 	.byte #0x2d, #0x00	;  45
      002FB1 2F 00                 1332 	.byte #0x2f, #0x00	;  47
      002FB3 32 00                 1333 	.byte #0x32, #0x00	;  50
      002FB5 34 00                 1334 	.byte #0x34, #0x00	;  52
      002FB7 37 00                 1335 	.byte #0x37, #0x00	;  55
      002FB9 39 00                 1336 	.byte #0x39, #0x00	;  57
      002FBB 3C 00                 1337 	.byte #0x3c, #0x00	;  60
      002FBD 3F 00                 1338 	.byte #0x3f, #0x00	;  63
      002FBF 41 00                 1339 	.byte #0x41, #0x00	;  65
      002FC1 44 00                 1340 	.byte #0x44, #0x00	;  68
      002FC3 47 00                 1341 	.byte #0x47, #0x00	;  71
      002FC5 4A 00                 1342 	.byte #0x4a, #0x00	;  74
      002FC7 4D 00                 1343 	.byte #0x4d, #0x00	;  77
      002FC9 4F 00                 1344 	.byte #0x4f, #0x00	;  79
      002FCB 52 00                 1345 	.byte #0x52, #0x00	;  82
      002FCD 55 00                 1346 	.byte #0x55, #0x00	;  85
      002FCF 58 00                 1347 	.byte #0x58, #0x00	;  88
      002FD1 5B 00                 1348 	.byte #0x5b, #0x00	;  91
      002FD3 5E 00                 1349 	.byte #0x5e, #0x00	;  94
      002FD5 61 00                 1350 	.byte #0x61, #0x00	;  97
      002FD7 64 00                 1351 	.byte #0x64, #0x00	;  100
      002FD9 67 00                 1352 	.byte #0x67, #0x00	;  103
      002FDB 6A 00                 1353 	.byte #0x6a, #0x00	;  106
      002FDD 6D 00                 1354 	.byte #0x6d, #0x00	;  109
      002FDF 70 00                 1355 	.byte #0x70, #0x00	;  112
      002FE1 74 00                 1356 	.byte #0x74, #0x00	;  116
      002FE3 77 00                 1357 	.byte #0x77, #0x00	;  119
      002FE5 7A 00                 1358 	.byte #0x7a, #0x00	;  122
      002FE7 7D 00                 1359 	.byte #0x7d, #0x00	;  125
                                   1360 	.area CONST   (CODE)
      002FE9                       1361 ___str_0:
      002FE9 20 53 50 49 20 44 41  1362 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      002FF9 0A                    1363 	.db 0x0a
      002FFA 0D                    1364 	.db 0x0d
      002FFB 00                    1365 	.db 0x00
                                   1366 	.area CSEG    (CODE)
                                   1367 	.area CONST   (CODE)
      002FFC                       1368 ___str_1:
      002FFC 53 50 49 20 54 52 41  1369 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      003014 0A                    1370 	.db 0x0a
      003015 0D                    1371 	.db 0x0d
      003016 00                    1372 	.db 0x00
                                   1373 	.area CSEG    (CODE)
                                   1374 	.area CONST   (CODE)
      003017                       1375 ___str_2:
      003017 77                    1376 	.ascii "w"
      003018 0A                    1377 	.db 0x0a
      003019 0D                    1378 	.db 0x0d
      00301A 00                    1379 	.db 0x00
                                   1380 	.area CSEG    (CODE)
                                   1381 	.area CONST   (CODE)
      00301B                       1382 ___str_3:
      00301B 4C 6F 77 20 62 79 74  1383 	.ascii "Low byte %d"
             65 20 25 64
      003026 0A                    1384 	.db 0x0a
      003027 0D                    1385 	.db 0x0d
      003028 00                    1386 	.db 0x00
                                   1387 	.area CSEG    (CODE)
                                   1388 	.area CONST   (CODE)
      003029                       1389 ___str_4:
      003029 48 69 67 68 20 62 79  1390 	.ascii "High byte %d"
             74 65 20 25 64
      003035 0A                    1391 	.db 0x0a
      003036 0D                    1392 	.db 0x0d
      003037 00                    1393 	.db 0x00
                                   1394 	.area CSEG    (CODE)
                                   1395 	.area CONST   (CODE)
      003038                       1396 ___str_5:
      003038 45                    1397 	.ascii "E"
      003039 0A                    1398 	.db 0x0a
      00303A 0D                    1399 	.db 0x0d
      00303B 00                    1400 	.db 0x00
                                   1401 	.area CSEG    (CODE)
                                   1402 	.area CONST   (CODE)
      00303C                       1403 ___str_6:
      00303C 0A                    1404 	.db 0x0a
      00303D 0D                    1405 	.db 0x0d
      00303E 00                    1406 	.db 0x00
                                   1407 	.area CSEG    (CODE)
                                   1408 	.area CONST   (CODE)
      00303F                       1409 ___str_7:
      00303F 54 20                 1410 	.ascii "T "
      003041 0A                    1411 	.db 0x0a
      003042 0D                    1412 	.db 0x0d
      003043 00                    1413 	.db 0x00
                                   1414 	.area CSEG    (CODE)
                                   1415 	.area CONST   (CODE)
      003044                       1416 ___str_8:
      003044 73 70 69 20 69 73 72  1417 	.ascii "spi isr "
             20
      00304C 0A                    1418 	.db 0x0a
      00304D 0D                    1419 	.db 0x0d
      00304E 00                    1420 	.db 0x00
                                   1421 	.area CSEG    (CODE)
                                   1422 	.area XINIT   (CODE)
      00305A                       1423 __xinit__ms_flag:
      00305A 00                    1424 	.db #0x00	; 0
      00305B                       1425 __xinit__transmission_complete:
      00305B 00 00                 1426 	.byte #0x00, #0x00	;  0
                                   1427 	.area CABS    (ABS,CODE)
