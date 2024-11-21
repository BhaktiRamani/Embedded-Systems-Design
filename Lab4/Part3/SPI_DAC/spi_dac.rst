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
      00200B 02 22 7F         [24]  519 	ljmp	_timer0_isr
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
      00204B 02 22 DC         [24]  535 	ljmp	_spi_isr
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
                                    568 ;	spi_dac.c:117: int putchar(int charToSend) {
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
                                    588 ;	spi_dac.c:118: SBUF = charToSend;       /* Load character into serial buffer */
      0020B8 90 04 00         [24]  589 	mov	dptr,#_putchar_charToSend_65536_17
      0020BB E0               [24]  590 	movx	a,@dptr
      0020BC FE               [12]  591 	mov	r6,a
      0020BD A3               [24]  592 	inc	dptr
      0020BE E0               [24]  593 	movx	a,@dptr
      0020BF FF               [12]  594 	mov	r7,a
      0020C0 8E 99            [24]  595 	mov	_SBUF,r6
                                    596 ;	spi_dac.c:119: while (!TI);             /* Wait for transmission completion */
      0020C2                        597 00101$:
                                    598 ;	spi_dac.c:120: TI = 0;                  /* Clear transmission flag */
                                    599 ;	assignBit
      0020C2 10 99 02         [24]  600 	jbc	_TI,00114$
      0020C5 80 FB            [24]  601 	sjmp	00101$
      0020C7                        602 00114$:
                                    603 ;	spi_dac.c:121: return charToSend;
      0020C7 8E 82            [24]  604 	mov	dpl,r6
      0020C9 8F 83            [24]  605 	mov	dph,r7
                                    606 ;	spi_dac.c:122: }
      0020CB 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'getchar'
                                    610 ;------------------------------------------------------------
                                    611 ;	spi_dac.c:128: int getchar(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function getchar
                                    614 ;	-----------------------------------------
      0020CC                        615 _getchar:
                                    616 ;	spi_dac.c:129: while (!RI);             /* Wait for reception completion */
      0020CC                        617 00101$:
                                    618 ;	spi_dac.c:130: RI = 0;                  /* Clear reception flag */
                                    619 ;	assignBit
      0020CC 10 98 02         [24]  620 	jbc	_RI,00114$
      0020CF 80 FB            [24]  621 	sjmp	00101$
      0020D1                        622 00114$:
                                    623 ;	spi_dac.c:131: return SBUF;             /* Return received character */
      0020D1 AE 99            [24]  624 	mov	r6,_SBUF
      0020D3 7F 00            [12]  625 	mov	r7,#0x00
      0020D5 8E 82            [24]  626 	mov	dpl,r6
      0020D7 8F 83            [24]  627 	mov	dph,r7
                                    628 ;	spi_dac.c:132: }
      0020D9 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay_ms'
                                    632 ;------------------------------------------------------------
                                    633 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    634 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    635 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    636 ;------------------------------------------------------------
                                    637 ;	spi_dac.c:134: void delay_ms(unsigned int ms) {
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
                                    649 ;	spi_dac.c:136: for (i = 0; i < ms; i++)
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
                                    665 ;	spi_dac.c:137: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
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
                                    676 ;	spi_dac.c:136: for (i = 0; i < ms; i++)
      002105 0C               [12]  677 	inc	r4
      002106 BC 00 E8         [24]  678 	cjne	r4,#0x00,00107$
      002109 0D               [12]  679 	inc	r5
      00210A 80 E5            [24]  680 	sjmp	00107$
      00210C                        681 00109$:
                                    682 ;	spi_dac.c:138: }
      00210C 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'main'
                                    686 ;------------------------------------------------------------
                                    687 ;dac_value_index           Allocated with name '_main_dac_value_index_65537_27'
                                    688 ;dac_data                  Allocated with name '_main_dac_data_65537_27'
                                    689 ;high_byte                 Allocated with name '_main_high_byte_65538_28'
                                    690 ;low_byte                  Allocated with name '_main_low_byte_65538_28'
                                    691 ;------------------------------------------------------------
                                    692 ;	spi_dac.c:139: int main(void)
                                    693 ;	-----------------------------------------
                                    694 ;	 function main
                                    695 ;	-----------------------------------------
      00210D                        696 _main:
                                    697 ;	spi_dac.c:141: printf(" SPI DAC PROGRAM\n\r");
      00210D 74 FF            [12]  698 	mov	a,#___str_0
      00210F C0 E0            [24]  699 	push	acc
      002111 74 2F            [12]  700 	mov	a,#(___str_0 >> 8)
      002113 C0 E0            [24]  701 	push	acc
      002115 74 80            [12]  702 	mov	a,#0x80
      002117 C0 E0            [24]  703 	push	acc
      002119 12 23 9D         [24]  704 	lcall	_printf
      00211C 15 81            [12]  705 	dec	sp
      00211E 15 81            [12]  706 	dec	sp
      002120 15 81            [12]  707 	dec	sp
                                    708 ;	spi_dac.c:143: int dac_value_index = 0;
      002122 90 04 04         [24]  709 	mov	dptr,#_main_dac_value_index_65537_27
      002125 E4               [12]  710 	clr	a
      002126 F0               [24]  711 	movx	@dptr,a
      002127 A3               [24]  712 	inc	dptr
      002128 F0               [24]  713 	movx	@dptr,a
                                    714 ;	spi_dac.c:144: int dac_data = 0;
      002129 90 04 06         [24]  715 	mov	dptr,#_main_dac_data_65537_27
      00212C F0               [24]  716 	movx	@dptr,a
      00212D A3               [24]  717 	inc	dptr
      00212E F0               [24]  718 	movx	@dptr,a
                                    719 ;	spi_dac.c:150: spi_init();
      00212F 12 23 3B         [24]  720 	lcall	_spi_init
                                    721 ;	spi_dac.c:153: printf("SPI TRANSMISSION STARTED\n\r");
      002132 74 12            [12]  722 	mov	a,#___str_1
      002134 C0 E0            [24]  723 	push	acc
      002136 74 30            [12]  724 	mov	a,#(___str_1 >> 8)
      002138 C0 E0            [24]  725 	push	acc
      00213A 74 80            [12]  726 	mov	a,#0x80
      00213C C0 E0            [24]  727 	push	acc
      00213E 12 23 9D         [24]  728 	lcall	_printf
      002141 15 81            [12]  729 	dec	sp
      002143 15 81            [12]  730 	dec	sp
      002145 15 81            [12]  731 	dec	sp
                                    732 ;	spi_dac.c:160: while(1)
      002147                        733 00111$:
                                    734 ;	spi_dac.c:162: printf("w\n\r");
      002147 74 2D            [12]  735 	mov	a,#___str_2
      002149 C0 E0            [24]  736 	push	acc
      00214B 74 30            [12]  737 	mov	a,#(___str_2 >> 8)
      00214D C0 E0            [24]  738 	push	acc
      00214F 74 80            [12]  739 	mov	a,#0x80
      002151 C0 E0            [24]  740 	push	acc
      002153 12 23 9D         [24]  741 	lcall	_printf
      002156 15 81            [12]  742 	dec	sp
      002158 15 81            [12]  743 	dec	sp
      00215A 15 81            [12]  744 	dec	sp
                                    745 ;	spi_dac.c:164: if(dac_value_index < SINE_MAX_INDEX)
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
                                    756 ;	spi_dac.c:168: dac_data = dac_values[dac_value_index];
      00216B EE               [12]  757 	mov	a,r6
      00216C 2E               [12]  758 	add	a,r6
      00216D FE               [12]  759 	mov	r6,a
      00216E EF               [12]  760 	mov	a,r7
      00216F 33               [12]  761 	rlc	a
      002170 FF               [12]  762 	mov	r7,a
      002171 EE               [12]  763 	mov	a,r6
      002172 24 FF            [12]  764 	add	a,#_dac_values
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
                                    784 ;	spi_dac.c:172: dac_value_index = 0;  // Reset index for next cycle
      00218C 90 04 04         [24]  785 	mov	dptr,#_main_dac_value_index_65537_27
      00218F E4               [12]  786 	clr	a
      002190 F0               [24]  787 	movx	@dptr,a
      002191 A3               [24]  788 	inc	dptr
      002192 F0               [24]  789 	movx	@dptr,a
      002193                        790 00103$:
                                    791 ;	spi_dac.c:179: ((dac_data >> 4) & 0x0F);
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
                                    814 ;	spi_dac.c:182: low_byte = (dac_data & 0x0F) << 4;
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
                                    826 ;	spi_dac.c:187: delay_ms(10);
      0021C3 90 00 0A         [24]  827 	mov	dptr,#0x000a
      0021C6 C0 07            [24]  828 	push	ar7
      0021C8 C0 06            [24]  829 	push	ar6
      0021CA C0 05            [24]  830 	push	ar5
      0021CC C0 04            [24]  831 	push	ar4
      0021CE 12 20 DA         [24]  832 	lcall	_delay_ms
      0021D1 D0 04            [24]  833 	pop	ar4
      0021D3 D0 05            [24]  834 	pop	ar5
      0021D5 D0 06            [24]  835 	pop	ar6
      0021D7 D0 07            [24]  836 	pop	ar7
                                    837 ;	spi_dac.c:189: printf("Low byte %d\n\r", low_byte);
      0021D9 C0 07            [24]  838 	push	ar7
      0021DB C0 06            [24]  839 	push	ar6
      0021DD C0 05            [24]  840 	push	ar5
      0021DF C0 04            [24]  841 	push	ar4
      0021E1 C0 06            [24]  842 	push	ar6
      0021E3 C0 07            [24]  843 	push	ar7
      0021E5 74 31            [12]  844 	mov	a,#___str_3
      0021E7 C0 E0            [24]  845 	push	acc
      0021E9 74 30            [12]  846 	mov	a,#(___str_3 >> 8)
      0021EB C0 E0            [24]  847 	push	acc
      0021ED 74 80            [12]  848 	mov	a,#0x80
      0021EF C0 E0            [24]  849 	push	acc
      0021F1 12 23 9D         [24]  850 	lcall	_printf
      0021F4 E5 81            [12]  851 	mov	a,sp
      0021F6 24 FB            [12]  852 	add	a,#0xfb
      0021F8 F5 81            [12]  853 	mov	sp,a
      0021FA D0 04            [24]  854 	pop	ar4
      0021FC D0 05            [24]  855 	pop	ar5
                                    856 ;	spi_dac.c:190: printf("High byte %d\n\r", high_byte);
      0021FE C0 05            [24]  857 	push	ar5
      002200 C0 04            [24]  858 	push	ar4
      002202 C0 04            [24]  859 	push	ar4
      002204 C0 05            [24]  860 	push	ar5
      002206 74 3F            [12]  861 	mov	a,#___str_4
      002208 C0 E0            [24]  862 	push	acc
      00220A 74 30            [12]  863 	mov	a,#(___str_4 >> 8)
      00220C C0 E0            [24]  864 	push	acc
      00220E 74 80            [12]  865 	mov	a,#0x80
      002210 C0 E0            [24]  866 	push	acc
      002212 12 23 9D         [24]  867 	lcall	_printf
      002215 E5 81            [12]  868 	mov	a,sp
      002217 24 FB            [12]  869 	add	a,#0xfb
      002219 F5 81            [12]  870 	mov	sp,a
      00221B D0 04            [24]  871 	pop	ar4
      00221D D0 05            [24]  872 	pop	ar5
      00221F D0 06            [24]  873 	pop	ar6
      002221 D0 07            [24]  874 	pop	ar7
                                    875 ;	spi_dac.c:192: P1_1 = 0;  // Select DAC
                                    876 ;	assignBit
      002223 C2 91            [12]  877 	clr	_P1_1
                                    878 ;	spi_dac.c:195: SPDAT = high_byte;
      002225 8C C5            [24]  879 	mov	_SPDAT,r4
                                    880 ;	spi_dac.c:196: while (!(SPSTA & (1<<7))); 
      002227                        881 00104$:
      002227 E5 C4            [12]  882 	mov	a,_SPSTA
      002229 30 E7 FB         [24]  883 	jnb	acc.7,00104$
                                    884 ;	spi_dac.c:200: SPDAT = low_byte;
      00222C 8E C5            [24]  885 	mov	_SPDAT,r6
                                    886 ;	spi_dac.c:201: while (!(SPSTA & (1<<7))); 
      00222E                        887 00107$:
      00222E E5 C4            [12]  888 	mov	a,_SPSTA
      002230 30 E7 FB         [24]  889 	jnb	acc.7,00107$
                                    890 ;	spi_dac.c:203: P1_1 = 1;  // Deselect DAC
                                    891 ;	assignBit
      002233 D2 91            [12]  892 	setb	_P1_1
                                    893 ;	spi_dac.c:206: printf("E\n\r");
      002235 74 4E            [12]  894 	mov	a,#___str_5
      002237 C0 E0            [24]  895 	push	acc
      002239 74 30            [12]  896 	mov	a,#(___str_5 >> 8)
      00223B C0 E0            [24]  897 	push	acc
      00223D 74 80            [12]  898 	mov	a,#0x80
      00223F C0 E0            [24]  899 	push	acc
      002241 12 23 9D         [24]  900 	lcall	_printf
      002244 15 81            [12]  901 	dec	sp
      002246 15 81            [12]  902 	dec	sp
      002248 15 81            [12]  903 	dec	sp
                                    904 ;	spi_dac.c:207: printf("\n\r");
      00224A 74 52            [12]  905 	mov	a,#___str_6
      00224C C0 E0            [24]  906 	push	acc
      00224E 74 30            [12]  907 	mov	a,#(___str_6 >> 8)
      002250 C0 E0            [24]  908 	push	acc
      002252 74 80            [12]  909 	mov	a,#0x80
      002254 C0 E0            [24]  910 	push	acc
      002256 12 23 9D         [24]  911 	lcall	_printf
      002259 15 81            [12]  912 	dec	sp
      00225B 15 81            [12]  913 	dec	sp
      00225D 15 81            [12]  914 	dec	sp
                                    915 ;	spi_dac.c:210: dac_value_index++;
      00225F 90 04 04         [24]  916 	mov	dptr,#_main_dac_value_index_65537_27
      002262 E0               [24]  917 	movx	a,@dptr
      002263 24 01            [12]  918 	add	a,#0x01
      002265 F0               [24]  919 	movx	@dptr,a
      002266 A3               [24]  920 	inc	dptr
      002267 E0               [24]  921 	movx	a,@dptr
      002268 34 00            [12]  922 	addc	a,#0x00
      00226A F0               [24]  923 	movx	@dptr,a
                                    924 ;	spi_dac.c:212: }
      00226B 02 21 47         [24]  925 	ljmp	00111$
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'timer0_init'
                                    928 ;------------------------------------------------------------
                                    929 ;	spi_dac.c:214: void timer0_init(void)
                                    930 ;	-----------------------------------------
                                    931 ;	 function timer0_init
                                    932 ;	-----------------------------------------
      00226E                        933 _timer0_init:
                                    934 ;	spi_dac.c:216: TMOD &= 0xF0;    // Clear Timer0 mode bits
      00226E 53 89 F0         [24]  935 	anl	_TMOD,#0xf0
                                    936 ;	spi_dac.c:217: TMOD |= TIMER0_MODE1;  // Set Timer0 mode 1 (16-bit)
      002271 43 89 01         [24]  937 	orl	_TMOD,#0x01
                                    938 ;	spi_dac.c:220: TH0 = TH0_RELOAD;
      002274 75 8C FC         [24]  939 	mov	_TH0,#0xfc
                                    940 ;	spi_dac.c:221: TL0 = TL0_RELOAD;
      002277 75 8A 66         [24]  941 	mov	_TL0,#0x66
                                    942 ;	spi_dac.c:223: ET0 = 1;         // Enable Timer0 interrupt
                                    943 ;	assignBit
      00227A D2 A9            [12]  944 	setb	_ET0
                                    945 ;	spi_dac.c:224: TR0 = 1;         // Start Timer0
                                    946 ;	assignBit
      00227C D2 8C            [12]  947 	setb	_TR0
                                    948 ;	spi_dac.c:225: }
      00227E 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'timer0_isr'
                                    952 ;------------------------------------------------------------
                                    953 ;	spi_dac.c:228: void timer0_isr(void) __interrupt 1
                                    954 ;	-----------------------------------------
                                    955 ;	 function timer0_isr
                                    956 ;	-----------------------------------------
      00227F                        957 _timer0_isr:
      00227F C0 20            [24]  958 	push	bits
      002281 C0 E0            [24]  959 	push	acc
      002283 C0 F0            [24]  960 	push	b
      002285 C0 82            [24]  961 	push	dpl
      002287 C0 83            [24]  962 	push	dph
      002289 C0 07            [24]  963 	push	(0+7)
      00228B C0 06            [24]  964 	push	(0+6)
      00228D C0 05            [24]  965 	push	(0+5)
      00228F C0 04            [24]  966 	push	(0+4)
      002291 C0 03            [24]  967 	push	(0+3)
      002293 C0 02            [24]  968 	push	(0+2)
      002295 C0 01            [24]  969 	push	(0+1)
      002297 C0 00            [24]  970 	push	(0+0)
      002299 C0 D0            [24]  971 	push	psw
      00229B 75 D0 00         [24]  972 	mov	psw,#0x00
                                    973 ;	spi_dac.c:231: TH0 = 0x4B;
      00229E 75 8C 4B         [24]  974 	mov	_TH0,#0x4b
                                    975 ;	spi_dac.c:232: TL0 = 0x1C;
      0022A1 75 8A 1C         [24]  976 	mov	_TL0,#0x1c
                                    977 ;	spi_dac.c:234: ms_flag = 1;     // Set 1ms flag
      0022A4 90 04 41         [24]  978 	mov	dptr,#_ms_flag
      0022A7 74 01            [12]  979 	mov	a,#0x01
      0022A9 F0               [24]  980 	movx	@dptr,a
                                    981 ;	spi_dac.c:236: printf("T \n\r");
      0022AA 74 55            [12]  982 	mov	a,#___str_7
      0022AC C0 E0            [24]  983 	push	acc
      0022AE 74 30            [12]  984 	mov	a,#(___str_7 >> 8)
      0022B0 C0 E0            [24]  985 	push	acc
      0022B2 74 80            [12]  986 	mov	a,#0x80
      0022B4 C0 E0            [24]  987 	push	acc
      0022B6 12 23 9D         [24]  988 	lcall	_printf
      0022B9 15 81            [12]  989 	dec	sp
      0022BB 15 81            [12]  990 	dec	sp
      0022BD 15 81            [12]  991 	dec	sp
                                    992 ;	spi_dac.c:239: }
      0022BF D0 D0            [24]  993 	pop	psw
      0022C1 D0 00            [24]  994 	pop	(0+0)
      0022C3 D0 01            [24]  995 	pop	(0+1)
      0022C5 D0 02            [24]  996 	pop	(0+2)
      0022C7 D0 03            [24]  997 	pop	(0+3)
      0022C9 D0 04            [24]  998 	pop	(0+4)
      0022CB D0 05            [24]  999 	pop	(0+5)
      0022CD D0 06            [24] 1000 	pop	(0+6)
      0022CF D0 07            [24] 1001 	pop	(0+7)
      0022D1 D0 83            [24] 1002 	pop	dph
      0022D3 D0 82            [24] 1003 	pop	dpl
      0022D5 D0 F0            [24] 1004 	pop	b
      0022D7 D0 E0            [24] 1005 	pop	acc
      0022D9 D0 20            [24] 1006 	pop	bits
      0022DB 32               [24] 1007 	reti
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'spi_isr'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	spi_dac.c:247: void spi_isr(void) __interrupt 9
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function spi_isr
                                   1014 ;	-----------------------------------------
      0022DC                       1015 _spi_isr:
      0022DC C0 20            [24] 1016 	push	bits
      0022DE C0 E0            [24] 1017 	push	acc
      0022E0 C0 F0            [24] 1018 	push	b
      0022E2 C0 82            [24] 1019 	push	dpl
      0022E4 C0 83            [24] 1020 	push	dph
      0022E6 C0 07            [24] 1021 	push	(0+7)
      0022E8 C0 06            [24] 1022 	push	(0+6)
      0022EA C0 05            [24] 1023 	push	(0+5)
      0022EC C0 04            [24] 1024 	push	(0+4)
      0022EE C0 03            [24] 1025 	push	(0+3)
      0022F0 C0 02            [24] 1026 	push	(0+2)
      0022F2 C0 01            [24] 1027 	push	(0+1)
      0022F4 C0 00            [24] 1028 	push	(0+0)
      0022F6 C0 D0            [24] 1029 	push	psw
      0022F8 75 D0 00         [24] 1030 	mov	psw,#0x00
                                   1031 ;	spi_dac.c:249: if(SPSTA == 0x80)  // Check for successful transmission
      0022FB 74 80            [12] 1032 	mov	a,#0x80
      0022FD B5 C4 1E         [24] 1033 	cjne	a,_SPSTA,00103$
                                   1034 ;	spi_dac.c:251: transmission_complete = 1;
      002300 90 04 42         [24] 1035 	mov	dptr,#_transmission_complete
      002303 74 01            [12] 1036 	mov	a,#0x01
      002305 F0               [24] 1037 	movx	@dptr,a
      002306 E4               [12] 1038 	clr	a
      002307 A3               [24] 1039 	inc	dptr
      002308 F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	spi_dac.c:252: printf("spi isr \n\r");
      002309 74 5A            [12] 1042 	mov	a,#___str_8
      00230B C0 E0            [24] 1043 	push	acc
      00230D 74 30            [12] 1044 	mov	a,#(___str_8 >> 8)
      00230F C0 E0            [24] 1045 	push	acc
      002311 74 80            [12] 1046 	mov	a,#0x80
      002313 C0 E0            [24] 1047 	push	acc
      002315 12 23 9D         [24] 1048 	lcall	_printf
      002318 15 81            [12] 1049 	dec	sp
      00231A 15 81            [12] 1050 	dec	sp
      00231C 15 81            [12] 1051 	dec	sp
      00231E                       1052 00103$:
                                   1053 ;	spi_dac.c:255: }
      00231E D0 D0            [24] 1054 	pop	psw
      002320 D0 00            [24] 1055 	pop	(0+0)
      002322 D0 01            [24] 1056 	pop	(0+1)
      002324 D0 02            [24] 1057 	pop	(0+2)
      002326 D0 03            [24] 1058 	pop	(0+3)
      002328 D0 04            [24] 1059 	pop	(0+4)
      00232A D0 05            [24] 1060 	pop	(0+5)
      00232C D0 06            [24] 1061 	pop	(0+6)
      00232E D0 07            [24] 1062 	pop	(0+7)
      002330 D0 83            [24] 1063 	pop	dph
      002332 D0 82            [24] 1064 	pop	dpl
      002334 D0 F0            [24] 1065 	pop	b
      002336 D0 E0            [24] 1066 	pop	acc
      002338 D0 20            [24] 1067 	pop	bits
      00233A 32               [24] 1068 	reti
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'spi_init'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	spi_dac.c:267: void spi_init(void) 
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function spi_init
                                   1075 ;	-----------------------------------------
      00233B                       1076 _spi_init:
                                   1077 ;	spi_dac.c:288: SPCON |= 0x10;
      00233B 43 C3 10         [24] 1078 	orl	_SPCON,#0x10
                                   1079 ;	spi_dac.c:289: SPCON |= 0x20;
      00233E 43 C3 20         [24] 1080 	orl	_SPCON,#0x20
                                   1081 ;	spi_dac.c:290: SPCON |= 0x40;
      002341 43 C3 40         [24] 1082 	orl	_SPCON,#0x40
                                   1083 ;	spi_dac.c:297: }
      002344 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1087 ;------------------------------------------------------------
                                   1088 ;	spi_dac.c:304: void spi_transmission_start(void)
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function spi_transmission_start
                                   1091 ;	-----------------------------------------
      002345                       1092 _spi_transmission_start:
                                   1093 ;	spi_dac.c:306: SPCON |= SPI_ENABLE;           // Enable SPI
      002345 43 C3 40         [24] 1094 	orl	_SPCON,#0x40
                                   1095 ;	spi_dac.c:307: P1_1 = 0;
                                   1096 ;	assignBit
      002348 C2 91            [12] 1097 	clr	_P1_1
                                   1098 ;	spi_dac.c:308: }
      00234A 22               [24] 1099 	ret
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'spi_transmission_stop'
                                   1102 ;------------------------------------------------------------
                                   1103 ;	spi_dac.c:315: void spi_transmission_stop(void) 
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function spi_transmission_stop
                                   1106 ;	-----------------------------------------
      00234B                       1107 _spi_transmission_stop:
                                   1108 ;	spi_dac.c:317: SPCON &= ~SPI_ENABLE;          // Disable SPI
      00234B 53 C3 BF         [24] 1109 	anl	_SPCON,#0xbf
                                   1110 ;	spi_dac.c:318: }
      00234E 22               [24] 1111 	ret
                                   1112 	.area CSEG    (CODE)
                                   1113 	.area CONST   (CODE)
      002DFF                       1114 _dac_values:
      002DFF 00 00                 1115 	.byte #0x00, #0x00	;  0
      002E01 01 00                 1116 	.byte #0x01, #0x00	;  1
      002E03 02 00                 1117 	.byte #0x02, #0x00	;  2
      002E05 03 00                 1118 	.byte #0x03, #0x00	;  3
      002E07 04 00                 1119 	.byte #0x04, #0x00	;  4
      002E09 05 00                 1120 	.byte #0x05, #0x00	;  5
      002E0B 06 00                 1121 	.byte #0x06, #0x00	;  6
      002E0D 07 00                 1122 	.byte #0x07, #0x00	;  7
      002E0F 08 00                 1123 	.byte #0x08, #0x00	;  8
      002E11 09 00                 1124 	.byte #0x09, #0x00	;  9
      002E13 0A 00                 1125 	.byte #0x0a, #0x00	;  10
      002E15 0B 00                 1126 	.byte #0x0b, #0x00	;  11
      002E17 0C 00                 1127 	.byte #0x0c, #0x00	;  12
      002E19 0D 00                 1128 	.byte #0x0d, #0x00	;  13
      002E1B 0E 00                 1129 	.byte #0x0e, #0x00	;  14
      002E1D 0F 00                 1130 	.byte #0x0f, #0x00	;  15
      002E1F 10 00                 1131 	.byte #0x10, #0x00	;  16
      002E21 11 00                 1132 	.byte #0x11, #0x00	;  17
      002E23 12 00                 1133 	.byte #0x12, #0x00	;  18
      002E25 13 00                 1134 	.byte #0x13, #0x00	;  19
      002E27 14 00                 1135 	.byte #0x14, #0x00	;  20
      002E29 15 00                 1136 	.byte #0x15, #0x00	;  21
      002E2B 16 00                 1137 	.byte #0x16, #0x00	;  22
      002E2D 17 00                 1138 	.byte #0x17, #0x00	;  23
      002E2F 18 00                 1139 	.byte #0x18, #0x00	;  24
      002E31 19 00                 1140 	.byte #0x19, #0x00	;  25
      002E33 1A 00                 1141 	.byte #0x1a, #0x00	;  26
      002E35 1B 00                 1142 	.byte #0x1b, #0x00	;  27
      002E37 1C 00                 1143 	.byte #0x1c, #0x00	;  28
      002E39 1D 00                 1144 	.byte #0x1d, #0x00	;  29
      002E3B 1E 00                 1145 	.byte #0x1e, #0x00	;  30
      002E3D 1F 00                 1146 	.byte #0x1f, #0x00	;  31
      002E3F 20 00                 1147 	.byte #0x20, #0x00	;  32
      002E41 21 00                 1148 	.byte #0x21, #0x00	;  33
      002E43 22 00                 1149 	.byte #0x22, #0x00	;  34
      002E45 23 00                 1150 	.byte #0x23, #0x00	;  35
      002E47 24 00                 1151 	.byte #0x24, #0x00	;  36
      002E49 25 00                 1152 	.byte #0x25, #0x00	;  37
      002E4B 26 00                 1153 	.byte #0x26, #0x00	;  38
      002E4D 27 00                 1154 	.byte #0x27, #0x00	;  39
      002E4F 28 00                 1155 	.byte #0x28, #0x00	;  40
      002E51 29 00                 1156 	.byte #0x29, #0x00	;  41
      002E53 2A 00                 1157 	.byte #0x2a, #0x00	;  42
      002E55 2B 00                 1158 	.byte #0x2b, #0x00	;  43
      002E57 2C 00                 1159 	.byte #0x2c, #0x00	;  44
      002E59 2D 00                 1160 	.byte #0x2d, #0x00	;  45
      002E5B 2E 00                 1161 	.byte #0x2e, #0x00	;  46
      002E5D 2F 00                 1162 	.byte #0x2f, #0x00	;  47
      002E5F 30 00                 1163 	.byte #0x30, #0x00	;  48
      002E61 31 00                 1164 	.byte #0x31, #0x00	;  49
      002E63 32 00                 1165 	.byte #0x32, #0x00	;  50
      002E65 33 00                 1166 	.byte #0x33, #0x00	;  51
      002E67 34 00                 1167 	.byte #0x34, #0x00	;  52
      002E69 35 00                 1168 	.byte #0x35, #0x00	;  53
      002E6B 36 00                 1169 	.byte #0x36, #0x00	;  54
      002E6D 37 00                 1170 	.byte #0x37, #0x00	;  55
      002E6F 38 00                 1171 	.byte #0x38, #0x00	;  56
      002E71 39 00                 1172 	.byte #0x39, #0x00	;  57
      002E73 3A 00                 1173 	.byte #0x3a, #0x00	;  58
      002E75 3B 00                 1174 	.byte #0x3b, #0x00	;  59
      002E77 3C 00                 1175 	.byte #0x3c, #0x00	;  60
      002E79 3D 00                 1176 	.byte #0x3d, #0x00	;  61
      002E7B 3E 00                 1177 	.byte #0x3e, #0x00	;  62
      002E7D 3F 00                 1178 	.byte #0x3f, #0x00	;  63
      002E7F 40 00                 1179 	.byte #0x40, #0x00	;  64
      002E81 41 00                 1180 	.byte #0x41, #0x00	;  65
      002E83 42 00                 1181 	.byte #0x42, #0x00	;  66
      002E85 43 00                 1182 	.byte #0x43, #0x00	;  67
      002E87 44 00                 1183 	.byte #0x44, #0x00	;  68
      002E89 45 00                 1184 	.byte #0x45, #0x00	;  69
      002E8B 46 00                 1185 	.byte #0x46, #0x00	;  70
      002E8D 47 00                 1186 	.byte #0x47, #0x00	;  71
      002E8F 48 00                 1187 	.byte #0x48, #0x00	;  72
      002E91 49 00                 1188 	.byte #0x49, #0x00	;  73
      002E93 4A 00                 1189 	.byte #0x4a, #0x00	;  74
      002E95 4B 00                 1190 	.byte #0x4b, #0x00	;  75
      002E97 4C 00                 1191 	.byte #0x4c, #0x00	;  76
      002E99 4D 00                 1192 	.byte #0x4d, #0x00	;  77
      002E9B 4E 00                 1193 	.byte #0x4e, #0x00	;  78
      002E9D 4F 00                 1194 	.byte #0x4f, #0x00	;  79
      002E9F 50 00                 1195 	.byte #0x50, #0x00	;  80
      002EA1 51 00                 1196 	.byte #0x51, #0x00	;  81
      002EA3 52 00                 1197 	.byte #0x52, #0x00	;  82
      002EA5 53 00                 1198 	.byte #0x53, #0x00	;  83
      002EA7 54 00                 1199 	.byte #0x54, #0x00	;  84
      002EA9 55 00                 1200 	.byte #0x55, #0x00	;  85
      002EAB 56 00                 1201 	.byte #0x56, #0x00	;  86
      002EAD 57 00                 1202 	.byte #0x57, #0x00	;  87
      002EAF 58 00                 1203 	.byte #0x58, #0x00	;  88
      002EB1 59 00                 1204 	.byte #0x59, #0x00	;  89
      002EB3 5A 00                 1205 	.byte #0x5a, #0x00	;  90
      002EB5 5B 00                 1206 	.byte #0x5b, #0x00	;  91
      002EB7 5C 00                 1207 	.byte #0x5c, #0x00	;  92
      002EB9 5D 00                 1208 	.byte #0x5d, #0x00	;  93
      002EBB 5E 00                 1209 	.byte #0x5e, #0x00	;  94
      002EBD 5F 00                 1210 	.byte #0x5f, #0x00	;  95
      002EBF 60 00                 1211 	.byte #0x60, #0x00	;  96
      002EC1 61 00                 1212 	.byte #0x61, #0x00	;  97
      002EC3 62 00                 1213 	.byte #0x62, #0x00	;  98
      002EC5 63 00                 1214 	.byte #0x63, #0x00	;  99
      002EC7 64 00                 1215 	.byte #0x64, #0x00	;  100
      002EC9 65 00                 1216 	.byte #0x65, #0x00	;  101
      002ECB 66 00                 1217 	.byte #0x66, #0x00	;  102
      002ECD 67 00                 1218 	.byte #0x67, #0x00	;  103
      002ECF 68 00                 1219 	.byte #0x68, #0x00	;  104
      002ED1 69 00                 1220 	.byte #0x69, #0x00	;  105
      002ED3 6A 00                 1221 	.byte #0x6a, #0x00	;  106
      002ED5 6B 00                 1222 	.byte #0x6b, #0x00	;  107
      002ED7 6C 00                 1223 	.byte #0x6c, #0x00	;  108
      002ED9 6D 00                 1224 	.byte #0x6d, #0x00	;  109
      002EDB 6E 00                 1225 	.byte #0x6e, #0x00	;  110
      002EDD 6F 00                 1226 	.byte #0x6f, #0x00	;  111
      002EDF 70 00                 1227 	.byte #0x70, #0x00	;  112
      002EE1 71 00                 1228 	.byte #0x71, #0x00	;  113
      002EE3 72 00                 1229 	.byte #0x72, #0x00	;  114
      002EE5 73 00                 1230 	.byte #0x73, #0x00	;  115
      002EE7 74 00                 1231 	.byte #0x74, #0x00	;  116
      002EE9 75 00                 1232 	.byte #0x75, #0x00	;  117
      002EEB 76 00                 1233 	.byte #0x76, #0x00	;  118
      002EED 77 00                 1234 	.byte #0x77, #0x00	;  119
      002EEF 78 00                 1235 	.byte #0x78, #0x00	;  120
      002EF1 79 00                 1236 	.byte #0x79, #0x00	;  121
      002EF3 7A 00                 1237 	.byte #0x7a, #0x00	;  122
      002EF5 7B 00                 1238 	.byte #0x7b, #0x00	;  123
      002EF7 7C 00                 1239 	.byte #0x7c, #0x00	;  124
      002EF9 7D 00                 1240 	.byte #0x7d, #0x00	;  125
      002EFB 7E 00                 1241 	.byte #0x7e, #0x00	;  126
      002EFD 7F 00                 1242 	.byte #0x7f, #0x00	;  127
      002EFF 80 00                 1243 	.byte #0x80, #0x00	;  128
      002F01 81 00                 1244 	.byte #0x81, #0x00	;  129
      002F03 82 00                 1245 	.byte #0x82, #0x00	;  130
      002F05 83 00                 1246 	.byte #0x83, #0x00	;  131
      002F07 84 00                 1247 	.byte #0x84, #0x00	;  132
      002F09 85 00                 1248 	.byte #0x85, #0x00	;  133
      002F0B 86 00                 1249 	.byte #0x86, #0x00	;  134
      002F0D 87 00                 1250 	.byte #0x87, #0x00	;  135
      002F0F 88 00                 1251 	.byte #0x88, #0x00	;  136
      002F11 89 00                 1252 	.byte #0x89, #0x00	;  137
      002F13 8A 00                 1253 	.byte #0x8a, #0x00	;  138
      002F15 8B 00                 1254 	.byte #0x8b, #0x00	;  139
      002F17 8C 00                 1255 	.byte #0x8c, #0x00	;  140
      002F19 8D 00                 1256 	.byte #0x8d, #0x00	;  141
      002F1B 8E 00                 1257 	.byte #0x8e, #0x00	;  142
      002F1D 8F 00                 1258 	.byte #0x8f, #0x00	;  143
      002F1F 90 00                 1259 	.byte #0x90, #0x00	;  144
      002F21 91 00                 1260 	.byte #0x91, #0x00	;  145
      002F23 92 00                 1261 	.byte #0x92, #0x00	;  146
      002F25 93 00                 1262 	.byte #0x93, #0x00	;  147
      002F27 94 00                 1263 	.byte #0x94, #0x00	;  148
      002F29 95 00                 1264 	.byte #0x95, #0x00	;  149
      002F2B 96 00                 1265 	.byte #0x96, #0x00	;  150
      002F2D 97 00                 1266 	.byte #0x97, #0x00	;  151
      002F2F 98 00                 1267 	.byte #0x98, #0x00	;  152
      002F31 99 00                 1268 	.byte #0x99, #0x00	;  153
      002F33 9A 00                 1269 	.byte #0x9a, #0x00	;  154
      002F35 9B 00                 1270 	.byte #0x9b, #0x00	;  155
      002F37 9C 00                 1271 	.byte #0x9c, #0x00	;  156
      002F39 9D 00                 1272 	.byte #0x9d, #0x00	;  157
      002F3B 9E 00                 1273 	.byte #0x9e, #0x00	;  158
      002F3D 9F 00                 1274 	.byte #0x9f, #0x00	;  159
      002F3F A0 00                 1275 	.byte #0xa0, #0x00	;  160
      002F41 A1 00                 1276 	.byte #0xa1, #0x00	;  161
      002F43 A2 00                 1277 	.byte #0xa2, #0x00	;  162
      002F45 A3 00                 1278 	.byte #0xa3, #0x00	;  163
      002F47 A4 00                 1279 	.byte #0xa4, #0x00	;  164
      002F49 A5 00                 1280 	.byte #0xa5, #0x00	;  165
      002F4B A6 00                 1281 	.byte #0xa6, #0x00	;  166
      002F4D A7 00                 1282 	.byte #0xa7, #0x00	;  167
      002F4F A8 00                 1283 	.byte #0xa8, #0x00	;  168
      002F51 A9 00                 1284 	.byte #0xa9, #0x00	;  169
      002F53 AA 00                 1285 	.byte #0xaa, #0x00	;  170
      002F55 AB 00                 1286 	.byte #0xab, #0x00	;  171
      002F57 AC 00                 1287 	.byte #0xac, #0x00	;  172
      002F59 AD 00                 1288 	.byte #0xad, #0x00	;  173
      002F5B AE 00                 1289 	.byte #0xae, #0x00	;  174
      002F5D AF 00                 1290 	.byte #0xaf, #0x00	;  175
      002F5F B0 00                 1291 	.byte #0xb0, #0x00	;  176
      002F61 B1 00                 1292 	.byte #0xb1, #0x00	;  177
      002F63 B2 00                 1293 	.byte #0xb2, #0x00	;  178
      002F65 B3 00                 1294 	.byte #0xb3, #0x00	;  179
      002F67 B4 00                 1295 	.byte #0xb4, #0x00	;  180
      002F69 B5 00                 1296 	.byte #0xb5, #0x00	;  181
      002F6B B6 00                 1297 	.byte #0xb6, #0x00	;  182
      002F6D B7 00                 1298 	.byte #0xb7, #0x00	;  183
      002F6F B8 00                 1299 	.byte #0xb8, #0x00	;  184
      002F71 B9 00                 1300 	.byte #0xb9, #0x00	;  185
      002F73 BA 00                 1301 	.byte #0xba, #0x00	;  186
      002F75 BB 00                 1302 	.byte #0xbb, #0x00	;  187
      002F77 BC 00                 1303 	.byte #0xbc, #0x00	;  188
      002F79 BD 00                 1304 	.byte #0xbd, #0x00	;  189
      002F7B BE 00                 1305 	.byte #0xbe, #0x00	;  190
      002F7D BF 00                 1306 	.byte #0xbf, #0x00	;  191
      002F7F C0 00                 1307 	.byte #0xc0, #0x00	;  192
      002F81 C1 00                 1308 	.byte #0xc1, #0x00	;  193
      002F83 C2 00                 1309 	.byte #0xc2, #0x00	;  194
      002F85 C3 00                 1310 	.byte #0xc3, #0x00	;  195
      002F87 C4 00                 1311 	.byte #0xc4, #0x00	;  196
      002F89 C5 00                 1312 	.byte #0xc5, #0x00	;  197
      002F8B C6 00                 1313 	.byte #0xc6, #0x00	;  198
      002F8D C7 00                 1314 	.byte #0xc7, #0x00	;  199
      002F8F C8 00                 1315 	.byte #0xc8, #0x00	;  200
      002F91 C9 00                 1316 	.byte #0xc9, #0x00	;  201
      002F93 CA 00                 1317 	.byte #0xca, #0x00	;  202
      002F95 CB 00                 1318 	.byte #0xcb, #0x00	;  203
      002F97 CC 00                 1319 	.byte #0xcc, #0x00	;  204
      002F99 CD 00                 1320 	.byte #0xcd, #0x00	;  205
      002F9B CE 00                 1321 	.byte #0xce, #0x00	;  206
      002F9D CF 00                 1322 	.byte #0xcf, #0x00	;  207
      002F9F D0 00                 1323 	.byte #0xd0, #0x00	;  208
      002FA1 D1 00                 1324 	.byte #0xd1, #0x00	;  209
      002FA3 D2 00                 1325 	.byte #0xd2, #0x00	;  210
      002FA5 D3 00                 1326 	.byte #0xd3, #0x00	;  211
      002FA7 D4 00                 1327 	.byte #0xd4, #0x00	;  212
      002FA9 D5 00                 1328 	.byte #0xd5, #0x00	;  213
      002FAB D6 00                 1329 	.byte #0xd6, #0x00	;  214
      002FAD D7 00                 1330 	.byte #0xd7, #0x00	;  215
      002FAF D8 00                 1331 	.byte #0xd8, #0x00	;  216
      002FB1 D9 00                 1332 	.byte #0xd9, #0x00	;  217
      002FB3 DA 00                 1333 	.byte #0xda, #0x00	;  218
      002FB5 DB 00                 1334 	.byte #0xdb, #0x00	;  219
      002FB7 DC 00                 1335 	.byte #0xdc, #0x00	;  220
      002FB9 DD 00                 1336 	.byte #0xdd, #0x00	;  221
      002FBB DE 00                 1337 	.byte #0xde, #0x00	;  222
      002FBD DF 00                 1338 	.byte #0xdf, #0x00	;  223
      002FBF E0 00                 1339 	.byte #0xe0, #0x00	;  224
      002FC1 E1 00                 1340 	.byte #0xe1, #0x00	;  225
      002FC3 E2 00                 1341 	.byte #0xe2, #0x00	;  226
      002FC5 E3 00                 1342 	.byte #0xe3, #0x00	;  227
      002FC7 E4 00                 1343 	.byte #0xe4, #0x00	;  228
      002FC9 E5 00                 1344 	.byte #0xe5, #0x00	;  229
      002FCB E6 00                 1345 	.byte #0xe6, #0x00	;  230
      002FCD E7 00                 1346 	.byte #0xe7, #0x00	;  231
      002FCF E8 00                 1347 	.byte #0xe8, #0x00	;  232
      002FD1 E9 00                 1348 	.byte #0xe9, #0x00	;  233
      002FD3 EA 00                 1349 	.byte #0xea, #0x00	;  234
      002FD5 EB 00                 1350 	.byte #0xeb, #0x00	;  235
      002FD7 EC 00                 1351 	.byte #0xec, #0x00	;  236
      002FD9 ED 00                 1352 	.byte #0xed, #0x00	;  237
      002FDB EE 00                 1353 	.byte #0xee, #0x00	;  238
      002FDD EF 00                 1354 	.byte #0xef, #0x00	;  239
      002FDF F0 00                 1355 	.byte #0xf0, #0x00	;  240
      002FE1 F1 00                 1356 	.byte #0xf1, #0x00	;  241
      002FE3 F2 00                 1357 	.byte #0xf2, #0x00	;  242
      002FE5 F3 00                 1358 	.byte #0xf3, #0x00	;  243
      002FE7 F4 00                 1359 	.byte #0xf4, #0x00	;  244
      002FE9 F5 00                 1360 	.byte #0xf5, #0x00	;  245
      002FEB F6 00                 1361 	.byte #0xf6, #0x00	;  246
      002FED F7 00                 1362 	.byte #0xf7, #0x00	;  247
      002FEF F8 00                 1363 	.byte #0xf8, #0x00	;  248
      002FF1 F9 00                 1364 	.byte #0xf9, #0x00	;  249
      002FF3 FA 00                 1365 	.byte #0xfa, #0x00	;  250
      002FF5 FB 00                 1366 	.byte #0xfb, #0x00	;  251
      002FF7 FC 00                 1367 	.byte #0xfc, #0x00	;  252
      002FF9 FD 00                 1368 	.byte #0xfd, #0x00	;  253
      002FFB FE 00                 1369 	.byte #0xfe, #0x00	;  254
      002FFD FF 00                 1370 	.byte #0xff, #0x00	;  255
                                   1371 	.area CONST   (CODE)
      002FFF                       1372 ___str_0:
      002FFF 20 53 50 49 20 44 41  1373 	.ascii " SPI DAC PROGRAM"
             43 20 50 52 4F 47 52
             41 4D
      00300F 0A                    1374 	.db 0x0a
      003010 0D                    1375 	.db 0x0d
      003011 00                    1376 	.db 0x00
                                   1377 	.area CSEG    (CODE)
                                   1378 	.area CONST   (CODE)
      003012                       1379 ___str_1:
      003012 53 50 49 20 54 52 41  1380 	.ascii "SPI TRANSMISSION STARTED"
             4E 53 4D 49 53 53 49
             4F 4E 20 53 54 41 52
             54 45 44
      00302A 0A                    1381 	.db 0x0a
      00302B 0D                    1382 	.db 0x0d
      00302C 00                    1383 	.db 0x00
                                   1384 	.area CSEG    (CODE)
                                   1385 	.area CONST   (CODE)
      00302D                       1386 ___str_2:
      00302D 77                    1387 	.ascii "w"
      00302E 0A                    1388 	.db 0x0a
      00302F 0D                    1389 	.db 0x0d
      003030 00                    1390 	.db 0x00
                                   1391 	.area CSEG    (CODE)
                                   1392 	.area CONST   (CODE)
      003031                       1393 ___str_3:
      003031 4C 6F 77 20 62 79 74  1394 	.ascii "Low byte %d"
             65 20 25 64
      00303C 0A                    1395 	.db 0x0a
      00303D 0D                    1396 	.db 0x0d
      00303E 00                    1397 	.db 0x00
                                   1398 	.area CSEG    (CODE)
                                   1399 	.area CONST   (CODE)
      00303F                       1400 ___str_4:
      00303F 48 69 67 68 20 62 79  1401 	.ascii "High byte %d"
             74 65 20 25 64
      00304B 0A                    1402 	.db 0x0a
      00304C 0D                    1403 	.db 0x0d
      00304D 00                    1404 	.db 0x00
                                   1405 	.area CSEG    (CODE)
                                   1406 	.area CONST   (CODE)
      00304E                       1407 ___str_5:
      00304E 45                    1408 	.ascii "E"
      00304F 0A                    1409 	.db 0x0a
      003050 0D                    1410 	.db 0x0d
      003051 00                    1411 	.db 0x00
                                   1412 	.area CSEG    (CODE)
                                   1413 	.area CONST   (CODE)
      003052                       1414 ___str_6:
      003052 0A                    1415 	.db 0x0a
      003053 0D                    1416 	.db 0x0d
      003054 00                    1417 	.db 0x00
                                   1418 	.area CSEG    (CODE)
                                   1419 	.area CONST   (CODE)
      003055                       1420 ___str_7:
      003055 54 20                 1421 	.ascii "T "
      003057 0A                    1422 	.db 0x0a
      003058 0D                    1423 	.db 0x0d
      003059 00                    1424 	.db 0x00
                                   1425 	.area CSEG    (CODE)
                                   1426 	.area CONST   (CODE)
      00305A                       1427 ___str_8:
      00305A 73 70 69 20 69 73 72  1428 	.ascii "spi isr "
             20
      003062 0A                    1429 	.db 0x0a
      003063 0D                    1430 	.db 0x0d
      003064 00                    1431 	.db 0x00
                                   1432 	.area CSEG    (CODE)
                                   1433 	.area XINIT   (CODE)
      003070                       1434 __xinit__ms_flag:
      003070 00                    1435 	.db #0x00	; 0
      003071                       1436 __xinit__transmission_complete:
      003071 00 00                 1437 	.byte #0x00, #0x00	;  0
                                   1438 	.area CABS    (ABS,CODE)
