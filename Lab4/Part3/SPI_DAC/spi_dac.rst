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
                                     12 	.globl _main
                                     13 	.globl _display_menu
                                     14 	.globl _delay_ms
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _printf
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _transmission_complete
                                    215 	.globl _ms_flag
                                    216 	.globl _mannual_spi
                                    217 	.globl _spi_init
                                    218 	.globl _spi_transmission_start
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           00008A   231 _TL0	=	0x008a
                           00008B   232 _TL1	=	0x008b
                           00008C   233 _TH0	=	0x008c
                           00008D   234 _TH1	=	0x008d
                           000090   235 _P1	=	0x0090
                           000098   236 _SCON	=	0x0098
                           000099   237 _SBUF	=	0x0099
                           0000A0   238 _P2	=	0x00a0
                           0000A8   239 _IE	=	0x00a8
                           0000B0   240 _P3	=	0x00b0
                           0000B8   241 _IP	=	0x00b8
                           0000D0   242 _PSW	=	0x00d0
                           0000E0   243 _ACC	=	0x00e0
                           0000F0   244 _B	=	0x00f0
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0_0	=	0x0080
                           000081   302 _P0_1	=	0x0081
                           000082   303 _P0_2	=	0x0082
                           000083   304 _P0_3	=	0x0083
                           000084   305 _P0_4	=	0x0084
                           000085   306 _P0_5	=	0x0085
                           000086   307 _P0_6	=	0x0086
                           000087   308 _P0_7	=	0x0087
                           000088   309 _IT0	=	0x0088
                           000089   310 _IE0	=	0x0089
                           00008A   311 _IT1	=	0x008a
                           00008B   312 _IE1	=	0x008b
                           00008C   313 _TR0	=	0x008c
                           00008D   314 _TF0	=	0x008d
                           00008E   315 _TR1	=	0x008e
                           00008F   316 _TF1	=	0x008f
                           000090   317 _P1_0	=	0x0090
                           000091   318 _P1_1	=	0x0091
                           000092   319 _P1_2	=	0x0092
                           000093   320 _P1_3	=	0x0093
                           000094   321 _P1_4	=	0x0094
                           000095   322 _P1_5	=	0x0095
                           000096   323 _P1_6	=	0x0096
                           000097   324 _P1_7	=	0x0097
                           000098   325 _RI	=	0x0098
                           000099   326 _TI	=	0x0099
                           00009A   327 _RB8	=	0x009a
                           00009B   328 _TB8	=	0x009b
                           00009C   329 _REN	=	0x009c
                           00009D   330 _SM2	=	0x009d
                           00009E   331 _SM1	=	0x009e
                           00009F   332 _SM0	=	0x009f
                           0000A0   333 _P2_0	=	0x00a0
                           0000A1   334 _P2_1	=	0x00a1
                           0000A2   335 _P2_2	=	0x00a2
                           0000A3   336 _P2_3	=	0x00a3
                           0000A4   337 _P2_4	=	0x00a4
                           0000A5   338 _P2_5	=	0x00a5
                           0000A6   339 _P2_6	=	0x00a6
                           0000A7   340 _P2_7	=	0x00a7
                           0000A8   341 _EX0	=	0x00a8
                           0000A9   342 _ET0	=	0x00a9
                           0000AA   343 _EX1	=	0x00aa
                           0000AB   344 _ET1	=	0x00ab
                           0000AC   345 _ES	=	0x00ac
                           0000AF   346 _EA	=	0x00af
                           0000B0   347 _P3_0	=	0x00b0
                           0000B1   348 _P3_1	=	0x00b1
                           0000B2   349 _P3_2	=	0x00b2
                           0000B3   350 _P3_3	=	0x00b3
                           0000B4   351 _P3_4	=	0x00b4
                           0000B5   352 _P3_5	=	0x00b5
                           0000B6   353 _P3_6	=	0x00b6
                           0000B7   354 _P3_7	=	0x00b7
                           0000B0   355 _RXD	=	0x00b0
                           0000B1   356 _TXD	=	0x00b1
                           0000B2   357 _INT0	=	0x00b2
                           0000B3   358 _INT1	=	0x00b3
                           0000B4   359 _T0	=	0x00b4
                           0000B5   360 _T1	=	0x00b5
                           0000B6   361 _WR	=	0x00b6
                           0000B7   362 _RD	=	0x00b7
                           0000B8   363 _PX0	=	0x00b8
                           0000B9   364 _PT0	=	0x00b9
                           0000BA   365 _PX1	=	0x00ba
                           0000BB   366 _PT1	=	0x00bb
                           0000BC   367 _PS	=	0x00bc
                           0000D0   368 _P	=	0x00d0
                           0000D1   369 _F1	=	0x00d1
                           0000D2   370 _OV	=	0x00d2
                           0000D3   371 _RS0	=	0x00d3
                           0000D4   372 _RS1	=	0x00d4
                           0000D5   373 _F0	=	0x00d5
                           0000D6   374 _AC	=	0x00d6
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 _ET2	=	0x00ad
                           0000BD   377 _PT2	=	0x00bd
                           0000C8   378 _T2CON_0	=	0x00c8
                           0000C9   379 _T2CON_1	=	0x00c9
                           0000CA   380 _T2CON_2	=	0x00ca
                           0000CB   381 _T2CON_3	=	0x00cb
                           0000CC   382 _T2CON_4	=	0x00cc
                           0000CD   383 _T2CON_5	=	0x00cd
                           0000CE   384 _T2CON_6	=	0x00ce
                           0000CF   385 _T2CON_7	=	0x00cf
                           0000C8   386 _CP_RL2	=	0x00c8
                           0000C9   387 _C_T2	=	0x00c9
                           0000CA   388 _TR2	=	0x00ca
                           0000CB   389 _EXEN2	=	0x00cb
                           0000CC   390 _TCLK	=	0x00cc
                           0000CD   391 _RCLK	=	0x00cd
                           0000CE   392 _EXF2	=	0x00ce
                           0000CF   393 _TF2	=	0x00cf
                           0000DF   394 _CF	=	0x00df
                           0000DE   395 _CR	=	0x00de
                           0000DC   396 _CCF4	=	0x00dc
                           0000DB   397 _CCF3	=	0x00db
                           0000DA   398 _CCF2	=	0x00da
                           0000D9   399 _CCF1	=	0x00d9
                           0000D8   400 _CCF0	=	0x00d8
                           0000AE   401 _EC	=	0x00ae
                           0000BE   402 _PPCL	=	0x00be
                           0000BD   403 _PT2L	=	0x00bd
                           0000BC   404 _PSL	=	0x00bc
                           0000BB   405 _PT1L	=	0x00bb
                           0000BA   406 _PX1L	=	0x00ba
                           0000B9   407 _PT0L	=	0x00b9
                           0000B8   408 _PX0L	=	0x00b8
                           0000C0   409 _P4_0	=	0x00c0
                           0000C1   410 _P4_1	=	0x00c1
                           0000C2   411 _P4_2	=	0x00c2
                           0000C3   412 _P4_3	=	0x00c3
                           0000C4   413 _P4_4	=	0x00c4
                           0000C5   414 _P4_5	=	0x00c5
                           0000C6   415 _P4_6	=	0x00c6
                           0000C7   416 _P4_7	=	0x00c7
                           0000E8   417 _P5_0	=	0x00e8
                           0000E9   418 _P5_1	=	0x00e9
                           0000EA   419 _P5_2	=	0x00ea
                           0000EB   420 _P5_3	=	0x00eb
                           0000EC   421 _P5_4	=	0x00ec
                           0000ED   422 _P5_5	=	0x00ed
                           0000EE   423 _P5_6	=	0x00ee
                           0000EF   424 _P5_7	=	0x00ef
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram 
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; Stack segment in internal ram 
                                    439 ;--------------------------------------------------------
                                    440 	.area	SSEG
      000014                        441 __start__stack:
      000014                        442 	.ds	1
                                    443 
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000400                        465 _putchar_charToSend_65536_17:
      000400                        466 	.ds 2
      000402                        467 _delay_ms_ms_65536_21:
      000402                        468 	.ds 2
      000404                        469 _mannual_spi_number_65536_33:
      000404                        470 	.ds 2
      000406                        471 _mannual_spi_dac_value_index_65536_34:
      000406                        472 	.ds 2
      000408                        473 _mannual_spi_dac_data_65536_34:
      000408                        474 	.ds 2
                                    475 ;--------------------------------------------------------
                                    476 ; absolute external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XABS    (ABS,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external initialized ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XISEG   (XDATA)
      000443                        483 _ms_flag::
      000443                        484 	.ds 1
      000444                        485 _transmission_complete::
      000444                        486 	.ds 2
                                    487 	.area HOME    (CODE)
                                    488 	.area GSINIT0 (CODE)
                                    489 	.area GSINIT1 (CODE)
                                    490 	.area GSINIT2 (CODE)
                                    491 	.area GSINIT3 (CODE)
                                    492 	.area GSINIT4 (CODE)
                                    493 	.area GSINIT5 (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area CSEG    (CODE)
                                    497 ;--------------------------------------------------------
                                    498 ; interrupt vector 
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
      002000                        501 __interrupt_vect:
      002000 02 20 06         [24]  502 	ljmp	__sdcc_gsinit_startup
                                    503 ;--------------------------------------------------------
                                    504 ; global & static initialisations
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.globl __sdcc_gsinit_startup
                                    511 	.globl __sdcc_program_startup
                                    512 	.globl __start__stack
                                    513 	.globl __mcs51_genXINIT
                                    514 	.globl __mcs51_genXRAMCLEAR
                                    515 	.globl __mcs51_genRAMCLEAR
                                    516 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  517 	ljmp	__sdcc_program_startup
                                    518 ;--------------------------------------------------------
                                    519 ; Home
                                    520 ;--------------------------------------------------------
                                    521 	.area HOME    (CODE)
                                    522 	.area HOME    (CODE)
      002003                        523 __sdcc_program_startup:
      002003 02 22 3D         [24]  524 	ljmp	_main
                                    525 ;	return from main will return to caller
                                    526 ;--------------------------------------------------------
                                    527 ; code
                                    528 ;--------------------------------------------------------
                                    529 	.area CSEG    (CODE)
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'putchar'
                                    532 ;------------------------------------------------------------
                                    533 ;charToSend                Allocated with name '_putchar_charToSend_65536_17'
                                    534 ;------------------------------------------------------------
                                    535 ;	spi_dac.c:180: int putchar(int charToSend) {
                                    536 ;	-----------------------------------------
                                    537 ;	 function putchar
                                    538 ;	-----------------------------------------
      002062                        539 _putchar:
                           000007   540 	ar7 = 0x07
                           000006   541 	ar6 = 0x06
                           000005   542 	ar5 = 0x05
                           000004   543 	ar4 = 0x04
                           000003   544 	ar3 = 0x03
                           000002   545 	ar2 = 0x02
                           000001   546 	ar1 = 0x01
                           000000   547 	ar0 = 0x00
      002062 AF 83            [24]  548 	mov	r7,dph
      002064 E5 82            [12]  549 	mov	a,dpl
      002066 90 04 00         [24]  550 	mov	dptr,#_putchar_charToSend_65536_17
      002069 F0               [24]  551 	movx	@dptr,a
      00206A EF               [12]  552 	mov	a,r7
      00206B A3               [24]  553 	inc	dptr
      00206C F0               [24]  554 	movx	@dptr,a
                                    555 ;	spi_dac.c:181: SBUF = charToSend;       /* Load character into serial buffer */
      00206D 90 04 00         [24]  556 	mov	dptr,#_putchar_charToSend_65536_17
      002070 E0               [24]  557 	movx	a,@dptr
      002071 FE               [12]  558 	mov	r6,a
      002072 A3               [24]  559 	inc	dptr
      002073 E0               [24]  560 	movx	a,@dptr
      002074 FF               [12]  561 	mov	r7,a
      002075 8E 99            [24]  562 	mov	_SBUF,r6
                                    563 ;	spi_dac.c:182: while (!TI);             /* Wait for transmission completion */
      002077                        564 00101$:
                                    565 ;	spi_dac.c:183: TI = 0;                  /* Clear transmission flag */
                                    566 ;	assignBit
      002077 10 99 02         [24]  567 	jbc	_TI,00114$
      00207A 80 FB            [24]  568 	sjmp	00101$
      00207C                        569 00114$:
                                    570 ;	spi_dac.c:184: return charToSend;
      00207C 8E 82            [24]  571 	mov	dpl,r6
      00207E 8F 83            [24]  572 	mov	dph,r7
                                    573 ;	spi_dac.c:185: }
      002080 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'getchar'
                                    577 ;------------------------------------------------------------
                                    578 ;	spi_dac.c:191: int getchar(void) {
                                    579 ;	-----------------------------------------
                                    580 ;	 function getchar
                                    581 ;	-----------------------------------------
      002081                        582 _getchar:
                                    583 ;	spi_dac.c:192: while (!RI);             /* Wait for reception completion */
      002081                        584 00101$:
                                    585 ;	spi_dac.c:193: RI = 0;                  /* Clear reception flag */
                                    586 ;	assignBit
      002081 10 98 02         [24]  587 	jbc	_RI,00114$
      002084 80 FB            [24]  588 	sjmp	00101$
      002086                        589 00114$:
                                    590 ;	spi_dac.c:194: return SBUF;             /* Return received character */
      002086 AE 99            [24]  591 	mov	r6,_SBUF
      002088 7F 00            [12]  592 	mov	r7,#0x00
      00208A 8E 82            [24]  593 	mov	dpl,r6
      00208C 8F 83            [24]  594 	mov	dph,r7
                                    595 ;	spi_dac.c:195: }
      00208E 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'delay_ms'
                                    599 ;------------------------------------------------------------
                                    600 ;ms                        Allocated with name '_delay_ms_ms_65536_21'
                                    601 ;i                         Allocated with name '_delay_ms_i_65536_22'
                                    602 ;j                         Allocated with name '_delay_ms_j_65536_22'
                                    603 ;------------------------------------------------------------
                                    604 ;	spi_dac.c:197: void delay_ms(unsigned int ms) {
                                    605 ;	-----------------------------------------
                                    606 ;	 function delay_ms
                                    607 ;	-----------------------------------------
      00208F                        608 _delay_ms:
      00208F AF 83            [24]  609 	mov	r7,dph
      002091 E5 82            [12]  610 	mov	a,dpl
      002093 90 04 02         [24]  611 	mov	dptr,#_delay_ms_ms_65536_21
      002096 F0               [24]  612 	movx	@dptr,a
      002097 EF               [12]  613 	mov	a,r7
      002098 A3               [24]  614 	inc	dptr
      002099 F0               [24]  615 	movx	@dptr,a
                                    616 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      00209A 90 04 02         [24]  617 	mov	dptr,#_delay_ms_ms_65536_21
      00209D E0               [24]  618 	movx	a,@dptr
      00209E FE               [12]  619 	mov	r6,a
      00209F A3               [24]  620 	inc	dptr
      0020A0 E0               [24]  621 	movx	a,@dptr
      0020A1 FF               [12]  622 	mov	r7,a
      0020A2 7C 00            [12]  623 	mov	r4,#0x00
      0020A4 7D 00            [12]  624 	mov	r5,#0x00
      0020A6                        625 00107$:
      0020A6 C3               [12]  626 	clr	c
      0020A7 EC               [12]  627 	mov	a,r4
      0020A8 9E               [12]  628 	subb	a,r6
      0020A9 ED               [12]  629 	mov	a,r5
      0020AA 9F               [12]  630 	subb	a,r7
      0020AB 50 14            [24]  631 	jnc	00109$
                                    632 ;	spi_dac.c:200: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0020AD 7A 7B            [12]  633 	mov	r2,#0x7b
      0020AF 7B 00            [12]  634 	mov	r3,#0x00
      0020B1                        635 00105$:
      0020B1 1A               [12]  636 	dec	r2
      0020B2 BA FF 01         [24]  637 	cjne	r2,#0xff,00130$
      0020B5 1B               [12]  638 	dec	r3
      0020B6                        639 00130$:
      0020B6 EA               [12]  640 	mov	a,r2
      0020B7 4B               [12]  641 	orl	a,r3
      0020B8 70 F7            [24]  642 	jnz	00105$
                                    643 ;	spi_dac.c:199: for (i = 0; i < ms; i++)
      0020BA 0C               [12]  644 	inc	r4
      0020BB BC 00 E8         [24]  645 	cjne	r4,#0x00,00107$
      0020BE 0D               [12]  646 	inc	r5
      0020BF 80 E5            [24]  647 	sjmp	00107$
      0020C1                        648 00109$:
                                    649 ;	spi_dac.c:201: }
      0020C1 22               [24]  650 	ret
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'display_menu'
                                    653 ;------------------------------------------------------------
                                    654 ;	spi_dac.c:204: void display_menu(void) {
                                    655 ;	-----------------------------------------
                                    656 ;	 function display_menu
                                    657 ;	-----------------------------------------
      0020C2                        658 _display_menu:
                                    659 ;	spi_dac.c:205: printf("\n\r┌──────────────────────────────────────────────────────────────┐\n\r");
      0020C2 74 30            [12]  660 	mov	a,#___str_0
      0020C4 C0 E0            [24]  661 	push	acc
      0020C6 74 30            [12]  662 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  663 	push	acc
      0020CA 74 80            [12]  664 	mov	a,#0x80
      0020CC C0 E0            [24]  665 	push	acc
      0020CE 12 23 CE         [24]  666 	lcall	_printf
      0020D1 15 81            [12]  667 	dec	sp
      0020D3 15 81            [12]  668 	dec	sp
      0020D5 15 81            [12]  669 	dec	sp
                                    670 ;	spi_dac.c:206: printf("│                        SPI PROGRAM                           │\n\r");
      0020D7 74 F5            [12]  671 	mov	a,#___str_1
      0020D9 C0 E0            [24]  672 	push	acc
      0020DB 74 30            [12]  673 	mov	a,#(___str_1 >> 8)
      0020DD C0 E0            [24]  674 	push	acc
      0020DF 74 80            [12]  675 	mov	a,#0x80
      0020E1 C0 E0            [24]  676 	push	acc
      0020E3 12 23 CE         [24]  677 	lcall	_printf
      0020E6 15 81            [12]  678 	dec	sp
      0020E8 15 81            [12]  679 	dec	sp
      0020EA 15 81            [12]  680 	dec	sp
                                    681 ;	spi_dac.c:207: printf("├──────────────────────────────────────────────────────────────┤\n\r");
      0020EC 74 3C            [12]  682 	mov	a,#___str_2
      0020EE C0 E0            [24]  683 	push	acc
      0020F0 74 31            [12]  684 	mov	a,#(___str_2 >> 8)
      0020F2 C0 E0            [24]  685 	push	acc
      0020F4 74 80            [12]  686 	mov	a,#0x80
      0020F6 C0 E0            [24]  687 	push	acc
      0020F8 12 23 CE         [24]  688 	lcall	_printf
      0020FB 15 81            [12]  689 	dec	sp
      0020FD 15 81            [12]  690 	dec	sp
      0020FF 15 81            [12]  691 	dec	sp
                                    692 ;	spi_dac.c:208: printf("│  Command   │               Description                       │\n\r");
      002101 74 FF            [12]  693 	mov	a,#___str_3
      002103 C0 E0            [24]  694 	push	acc
      002105 74 31            [12]  695 	mov	a,#(___str_3 >> 8)
      002107 C0 E0            [24]  696 	push	acc
      002109 74 80            [12]  697 	mov	a,#0x80
      00210B C0 E0            [24]  698 	push	acc
      00210D 12 23 CE         [24]  699 	lcall	_printf
      002110 15 81            [12]  700 	dec	sp
      002112 15 81            [12]  701 	dec	sp
      002114 15 81            [12]  702 	dec	sp
                                    703 ;	spi_dac.c:209: printf("├───────────┼───────────────────────────────────────────────┤\n\r");
      002116 74 48            [12]  704 	mov	a,#___str_4
      002118 C0 E0            [24]  705 	push	acc
      00211A 74 32            [12]  706 	mov	a,#(___str_4 >> 8)
      00211C C0 E0            [24]  707 	push	acc
      00211E 74 80            [12]  708 	mov	a,#0x80
      002120 C0 E0            [24]  709 	push	acc
      002122 12 23 CE         [24]  710 	lcall	_printf
      002125 15 81            [12]  711 	dec	sp
      002127 15 81            [12]  712 	dec	sp
      002129 15 81            [12]  713 	dec	sp
                                    714 ;	spi_dac.c:210: printf("│    M      │ Manual SPI Mode (Direct Register Control)      │\n\r");
      00212B 74 02            [12]  715 	mov	a,#___str_5
      00212D C0 E0            [24]  716 	push	acc
      00212F 74 33            [12]  717 	mov	a,#(___str_5 >> 8)
      002131 C0 E0            [24]  718 	push	acc
      002133 74 80            [12]  719 	mov	a,#0x80
      002135 C0 E0            [24]  720 	push	acc
      002137 12 23 CE         [24]  721 	lcall	_printf
      00213A 15 81            [12]  722 	dec	sp
      00213C 15 81            [12]  723 	dec	sp
      00213E 15 81            [12]  724 	dec	sp
                                    725 ;	spi_dac.c:211: printf("│    B      │ Bit Banging Mode (Software SPI)               │\n\r");
      002140 74 49            [12]  726 	mov	a,#___str_6
      002142 C0 E0            [24]  727 	push	acc
      002144 74 33            [12]  728 	mov	a,#(___str_6 >> 8)
      002146 C0 E0            [24]  729 	push	acc
      002148 74 80            [12]  730 	mov	a,#0x80
      00214A C0 E0            [24]  731 	push	acc
      00214C 12 23 CE         [24]  732 	lcall	_printf
      00214F 15 81            [12]  733 	dec	sp
      002151 15 81            [12]  734 	dec	sp
      002153 15 81            [12]  735 	dec	sp
                                    736 ;	spi_dac.c:212: printf("│    S      │ Generate Sine Wave                            │\n\r");
      002155 74 8F            [12]  737 	mov	a,#___str_7
      002157 C0 E0            [24]  738 	push	acc
      002159 74 33            [12]  739 	mov	a,#(___str_7 >> 8)
      00215B C0 E0            [24]  740 	push	acc
      00215D 74 80            [12]  741 	mov	a,#0x80
      00215F C0 E0            [24]  742 	push	acc
      002161 12 23 CE         [24]  743 	lcall	_printf
      002164 15 81            [12]  744 	dec	sp
      002166 15 81            [12]  745 	dec	sp
      002168 15 81            [12]  746 	dec	sp
                                    747 ;	spi_dac.c:213: printf("│    Q      │ Generate Square Wave                          │\n\r");
      00216A 74 D5            [12]  748 	mov	a,#___str_8
      00216C C0 E0            [24]  749 	push	acc
      00216E 74 33            [12]  750 	mov	a,#(___str_8 >> 8)
      002170 C0 E0            [24]  751 	push	acc
      002172 74 80            [12]  752 	mov	a,#0x80
      002174 C0 E0            [24]  753 	push	acc
      002176 12 23 CE         [24]  754 	lcall	_printf
      002179 15 81            [12]  755 	dec	sp
      00217B 15 81            [12]  756 	dec	sp
      00217D 15 81            [12]  757 	dec	sp
                                    758 ;	spi_dac.c:214: printf("│    T      │ Generate Triangular Wave                      │\n\r");
      00217F 74 1B            [12]  759 	mov	a,#___str_9
      002181 C0 E0            [24]  760 	push	acc
      002183 74 34            [12]  761 	mov	a,#(___str_9 >> 8)
      002185 C0 E0            [24]  762 	push	acc
      002187 74 80            [12]  763 	mov	a,#0x80
      002189 C0 E0            [24]  764 	push	acc
      00218B 12 23 CE         [24]  765 	lcall	_printf
      00218E 15 81            [12]  766 	dec	sp
      002190 15 81            [12]  767 	dec	sp
      002192 15 81            [12]  768 	dec	sp
                                    769 ;	spi_dac.c:215: printf("│    D      │ Demo Mode (Cycle through all waveforms)       │\n\r");
      002194 74 61            [12]  770 	mov	a,#___str_10
      002196 C0 E0            [24]  771 	push	acc
      002198 74 34            [12]  772 	mov	a,#(___str_10 >> 8)
      00219A C0 E0            [24]  773 	push	acc
      00219C 74 80            [12]  774 	mov	a,#0x80
      00219E C0 E0            [24]  775 	push	acc
      0021A0 12 23 CE         [24]  776 	lcall	_printf
      0021A3 15 81            [12]  777 	dec	sp
      0021A5 15 81            [12]  778 	dec	sp
      0021A7 15 81            [12]  779 	dec	sp
                                    780 ;	spi_dac.c:216: printf("│    C      │ Configure SPI Parameters                      │\n\r");
      0021A9 74 A7            [12]  781 	mov	a,#___str_11
      0021AB C0 E0            [24]  782 	push	acc
      0021AD 74 34            [12]  783 	mov	a,#(___str_11 >> 8)
      0021AF C0 E0            [24]  784 	push	acc
      0021B1 74 80            [12]  785 	mov	a,#0x80
      0021B3 C0 E0            [24]  786 	push	acc
      0021B5 12 23 CE         [24]  787 	lcall	_printf
      0021B8 15 81            [12]  788 	dec	sp
      0021BA 15 81            [12]  789 	dec	sp
      0021BC 15 81            [12]  790 	dec	sp
                                    791 ;	spi_dac.c:217: printf("│    R      │ Read SPI Data                                 │\n\r");
      0021BE 74 ED            [12]  792 	mov	a,#___str_12
      0021C0 C0 E0            [24]  793 	push	acc
      0021C2 74 34            [12]  794 	mov	a,#(___str_12 >> 8)
      0021C4 C0 E0            [24]  795 	push	acc
      0021C6 74 80            [12]  796 	mov	a,#0x80
      0021C8 C0 E0            [24]  797 	push	acc
      0021CA 12 23 CE         [24]  798 	lcall	_printf
      0021CD 15 81            [12]  799 	dec	sp
      0021CF 15 81            [12]  800 	dec	sp
      0021D1 15 81            [12]  801 	dec	sp
                                    802 ;	spi_dac.c:218: printf("│    W      │ Write SPI Data                                │\n\r");
      0021D3 74 33            [12]  803 	mov	a,#___str_13
      0021D5 C0 E0            [24]  804 	push	acc
      0021D7 74 35            [12]  805 	mov	a,#(___str_13 >> 8)
      0021D9 C0 E0            [24]  806 	push	acc
      0021DB 74 80            [12]  807 	mov	a,#0x80
      0021DD C0 E0            [24]  808 	push	acc
      0021DF 12 23 CE         [24]  809 	lcall	_printf
      0021E2 15 81            [12]  810 	dec	sp
      0021E4 15 81            [12]  811 	dec	sp
      0021E6 15 81            [12]  812 	dec	sp
                                    813 ;	spi_dac.c:219: printf("│    ?      │ Display this help menu                        │\n\r");
      0021E8 74 79            [12]  814 	mov	a,#___str_14
      0021EA C0 E0            [24]  815 	push	acc
      0021EC 74 35            [12]  816 	mov	a,#(___str_14 >> 8)
      0021EE C0 E0            [24]  817 	push	acc
      0021F0 74 80            [12]  818 	mov	a,#0x80
      0021F2 C0 E0            [24]  819 	push	acc
      0021F4 12 23 CE         [24]  820 	lcall	_printf
      0021F7 15 81            [12]  821 	dec	sp
      0021F9 15 81            [12]  822 	dec	sp
      0021FB 15 81            [12]  823 	dec	sp
                                    824 ;	spi_dac.c:220: printf("│    X      │ Exit Program                                  │\n\r");
      0021FD 74 BF            [12]  825 	mov	a,#___str_15
      0021FF C0 E0            [24]  826 	push	acc
      002201 74 35            [12]  827 	mov	a,#(___str_15 >> 8)
      002203 C0 E0            [24]  828 	push	acc
      002205 74 80            [12]  829 	mov	a,#0x80
      002207 C0 E0            [24]  830 	push	acc
      002209 12 23 CE         [24]  831 	lcall	_printf
      00220C 15 81            [12]  832 	dec	sp
      00220E 15 81            [12]  833 	dec	sp
      002210 15 81            [12]  834 	dec	sp
                                    835 ;	spi_dac.c:221: printf("└───────────┴───────────────────────────────────────────────┘\n\r");
      002212 74 05            [12]  836 	mov	a,#___str_16
      002214 C0 E0            [24]  837 	push	acc
      002216 74 36            [12]  838 	mov	a,#(___str_16 >> 8)
      002218 C0 E0            [24]  839 	push	acc
      00221A 74 80            [12]  840 	mov	a,#0x80
      00221C C0 E0            [24]  841 	push	acc
      00221E 12 23 CE         [24]  842 	lcall	_printf
      002221 15 81            [12]  843 	dec	sp
      002223 15 81            [12]  844 	dec	sp
      002225 15 81            [12]  845 	dec	sp
                                    846 ;	spi_dac.c:222: printf("\n\rEnter command: ");
      002227 74 BF            [12]  847 	mov	a,#___str_17
      002229 C0 E0            [24]  848 	push	acc
      00222B 74 36            [12]  849 	mov	a,#(___str_17 >> 8)
      00222D C0 E0            [24]  850 	push	acc
      00222F 74 80            [12]  851 	mov	a,#0x80
      002231 C0 E0            [24]  852 	push	acc
      002233 12 23 CE         [24]  853 	lcall	_printf
      002236 15 81            [12]  854 	dec	sp
      002238 15 81            [12]  855 	dec	sp
      00223A 15 81            [12]  856 	dec	sp
                                    857 ;	spi_dac.c:223: }
      00223C 22               [24]  858 	ret
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'main'
                                    861 ;------------------------------------------------------------
                                    862 ;user_input                Allocated with name '_main_user_input_131072_30'
                                    863 ;result                    Allocated with name '_main_result_196609_32'
                                    864 ;------------------------------------------------------------
                                    865 ;	spi_dac.c:225: int main(void)
                                    866 ;	-----------------------------------------
                                    867 ;	 function main
                                    868 ;	-----------------------------------------
      00223D                        869 _main:
                                    870 ;	spi_dac.c:227: display_menu();
      00223D 12 20 C2         [24]  871 	lcall	_display_menu
                                    872 ;	spi_dac.c:229: while(1)
      002240                        873 00105$:
                                    874 ;	spi_dac.c:231: char user_input = getchar();
      002240 12 20 81         [24]  875 	lcall	_getchar
      002243 AE 82            [24]  876 	mov	r6,dpl
                                    877 ;	spi_dac.c:232: printf("| $ %c\n\r", user_input);
      002245 8E 05            [24]  878 	mov	ar5,r6
      002247 7F 00            [12]  879 	mov	r7,#0x00
      002249 C0 06            [24]  880 	push	ar6
      00224B C0 05            [24]  881 	push	ar5
      00224D C0 07            [24]  882 	push	ar7
      00224F 74 D1            [12]  883 	mov	a,#___str_18
      002251 C0 E0            [24]  884 	push	acc
      002253 74 36            [12]  885 	mov	a,#(___str_18 >> 8)
      002255 C0 E0            [24]  886 	push	acc
      002257 74 80            [12]  887 	mov	a,#0x80
      002259 C0 E0            [24]  888 	push	acc
      00225B 12 23 CE         [24]  889 	lcall	_printf
      00225E E5 81            [12]  890 	mov	a,sp
      002260 24 FB            [12]  891 	add	a,#0xfb
      002262 F5 81            [12]  892 	mov	sp,a
                                    893 ;	spi_dac.c:233: printf("\n\r");
      002264 74 DA            [12]  894 	mov	a,#___str_19
      002266 C0 E0            [24]  895 	push	acc
      002268 74 36            [12]  896 	mov	a,#(___str_19 >> 8)
      00226A C0 E0            [24]  897 	push	acc
      00226C 74 80            [12]  898 	mov	a,#0x80
      00226E C0 E0            [24]  899 	push	acc
      002270 12 23 CE         [24]  900 	lcall	_printf
      002273 15 81            [12]  901 	dec	sp
      002275 15 81            [12]  902 	dec	sp
      002277 15 81            [12]  903 	dec	sp
      002279 D0 06            [24]  904 	pop	ar6
                                    905 ;	spi_dac.c:234: switch(user_input)
      00227B BE 42 02         [24]  906 	cjne	r6,#0x42,00121$
      00227E 80 C0            [24]  907 	sjmp	00105$
      002280                        908 00121$:
      002280 BE 4D BD         [24]  909 	cjne	r6,#0x4d,00105$
                                    910 ;	spi_dac.c:237: spi_init();
      002283 12 23 70         [24]  911 	lcall	_spi_init
                                    912 ;	spi_dac.c:238: printf("ENTER THE VALUE OF n\n\r");
      002286 74 DD            [12]  913 	mov	a,#___str_20
      002288 C0 E0            [24]  914 	push	acc
      00228A 74 36            [12]  915 	mov	a,#(___str_20 >> 8)
      00228C C0 E0            [24]  916 	push	acc
      00228E 74 80            [12]  917 	mov	a,#0x80
      002290 C0 E0            [24]  918 	push	acc
      002292 12 23 CE         [24]  919 	lcall	_printf
      002295 15 81            [12]  920 	dec	sp
      002297 15 81            [12]  921 	dec	sp
      002299 15 81            [12]  922 	dec	sp
                                    923 ;	spi_dac.c:239: int result = getchar();
      00229B 12 20 81         [24]  924 	lcall	_getchar
                                    925 ;	spi_dac.c:240: mannual_spi(result);
      00229E 12 22 B9         [24]  926 	lcall	_mannual_spi
                                    927 ;	spi_dac.c:241: printf("SIN WAVE DONE\n\r");
      0022A1 74 F4            [12]  928 	mov	a,#___str_21
      0022A3 C0 E0            [24]  929 	push	acc
      0022A5 74 36            [12]  930 	mov	a,#(___str_21 >> 8)
      0022A7 C0 E0            [24]  931 	push	acc
      0022A9 74 80            [12]  932 	mov	a,#0x80
      0022AB C0 E0            [24]  933 	push	acc
      0022AD 12 23 CE         [24]  934 	lcall	_printf
      0022B0 15 81            [12]  935 	dec	sp
      0022B2 15 81            [12]  936 	dec	sp
      0022B4 15 81            [12]  937 	dec	sp
                                    938 ;	spi_dac.c:242: break;
                                    939 ;	spi_dac.c:247: }
                                    940 ;	spi_dac.c:257: }
      0022B6 02 22 40         [24]  941 	ljmp	00105$
                                    942 ;------------------------------------------------------------
                                    943 ;Allocation info for local variables in function 'mannual_spi'
                                    944 ;------------------------------------------------------------
                                    945 ;number                    Allocated with name '_mannual_spi_number_65536_33'
                                    946 ;dac_value_index           Allocated with name '_mannual_spi_dac_value_index_65536_34'
                                    947 ;dac_data                  Allocated with name '_mannual_spi_dac_data_65536_34'
                                    948 ;high_byte                 Allocated with name '_mannual_spi_high_byte_65536_34'
                                    949 ;low_byte                  Allocated with name '_mannual_spi_low_byte_65536_34'
                                    950 ;------------------------------------------------------------
                                    951 ;	spi_dac.c:259: void mannual_spi(int number)
                                    952 ;	-----------------------------------------
                                    953 ;	 function mannual_spi
                                    954 ;	-----------------------------------------
      0022B9                        955 _mannual_spi:
      0022B9 AF 83            [24]  956 	mov	r7,dph
      0022BB E5 82            [12]  957 	mov	a,dpl
      0022BD 90 04 04         [24]  958 	mov	dptr,#_mannual_spi_number_65536_33
      0022C0 F0               [24]  959 	movx	@dptr,a
      0022C1 EF               [12]  960 	mov	a,r7
      0022C2 A3               [24]  961 	inc	dptr
      0022C3 F0               [24]  962 	movx	@dptr,a
                                    963 ;	spi_dac.c:261: int dac_value_index = 0;
      0022C4 90 04 06         [24]  964 	mov	dptr,#_mannual_spi_dac_value_index_65536_34
      0022C7 E4               [12]  965 	clr	a
      0022C8 F0               [24]  966 	movx	@dptr,a
      0022C9 A3               [24]  967 	inc	dptr
      0022CA F0               [24]  968 	movx	@dptr,a
                                    969 ;	spi_dac.c:262: int dac_data = 0;
      0022CB 90 04 08         [24]  970 	mov	dptr,#_mannual_spi_dac_data_65536_34
      0022CE F0               [24]  971 	movx	@dptr,a
      0022CF A3               [24]  972 	inc	dptr
      0022D0 F0               [24]  973 	movx	@dptr,a
                                    974 ;	spi_dac.c:264: while(number > 0)
      0022D1                        975 00110$:
      0022D1 90 04 04         [24]  976 	mov	dptr,#_mannual_spi_number_65536_33
      0022D4 E0               [24]  977 	movx	a,@dptr
      0022D5 FE               [12]  978 	mov	r6,a
      0022D6 A3               [24]  979 	inc	dptr
      0022D7 E0               [24]  980 	movx	a,@dptr
      0022D8 FF               [12]  981 	mov	r7,a
      0022D9 C3               [12]  982 	clr	c
      0022DA E4               [12]  983 	clr	a
      0022DB 9E               [12]  984 	subb	a,r6
      0022DC 74 80            [12]  985 	mov	a,#(0x00 ^ 0x80)
      0022DE 8F F0            [24]  986 	mov	b,r7
      0022E0 63 F0 80         [24]  987 	xrl	b,#0x80
      0022E3 95 F0            [12]  988 	subb	a,b
      0022E5 40 01            [24]  989 	jc	00143$
      0022E7 22               [24]  990 	ret
      0022E8                        991 00143$:
                                    992 ;	spi_dac.c:269: if(dac_value_index < SINE_MAX_INDEX)
      0022E8 90 04 06         [24]  993 	mov	dptr,#_mannual_spi_dac_value_index_65536_34
      0022EB E0               [24]  994 	movx	a,@dptr
      0022EC FE               [12]  995 	mov	r6,a
      0022ED A3               [24]  996 	inc	dptr
      0022EE E0               [24]  997 	movx	a,@dptr
      0022EF FF               [12]  998 	mov	r7,a
      0022F0 C3               [12]  999 	clr	c
      0022F1 64 80            [12] 1000 	xrl	a,#0x80
      0022F3 94 81            [12] 1001 	subb	a,#0x81
      0022F5 50 21            [24] 1002 	jnc	00102$
                                   1003 ;	spi_dac.c:273: dac_data = dac_values[dac_value_index];
      0022F7 EE               [12] 1004 	mov	a,r6
      0022F8 2E               [12] 1005 	add	a,r6
      0022F9 FE               [12] 1006 	mov	r6,a
      0022FA EF               [12] 1007 	mov	a,r7
      0022FB 33               [12] 1008 	rlc	a
      0022FC FF               [12] 1009 	mov	r7,a
      0022FD EE               [12] 1010 	mov	a,r6
      0022FE 24 30            [12] 1011 	add	a,#_dac_values
      002300 F5 82            [12] 1012 	mov	dpl,a
      002302 EF               [12] 1013 	mov	a,r7
      002303 34 2E            [12] 1014 	addc	a,#(_dac_values >> 8)
      002305 F5 83            [12] 1015 	mov	dph,a
      002307 E4               [12] 1016 	clr	a
      002308 93               [24] 1017 	movc	a,@a+dptr
      002309 FE               [12] 1018 	mov	r6,a
      00230A A3               [24] 1019 	inc	dptr
      00230B E4               [12] 1020 	clr	a
      00230C 93               [24] 1021 	movc	a,@a+dptr
      00230D FF               [12] 1022 	mov	r7,a
      00230E 90 04 08         [24] 1023 	mov	dptr,#_mannual_spi_dac_data_65536_34
      002311 EE               [12] 1024 	mov	a,r6
      002312 F0               [24] 1025 	movx	@dptr,a
      002313 EF               [12] 1026 	mov	a,r7
      002314 A3               [24] 1027 	inc	dptr
      002315 F0               [24] 1028 	movx	@dptr,a
      002316 80 07            [24] 1029 	sjmp	00103$
      002318                       1030 00102$:
                                   1031 ;	spi_dac.c:277: dac_value_index = 0;  // Reset index for next cycle
      002318 90 04 06         [24] 1032 	mov	dptr,#_mannual_spi_dac_value_index_65536_34
      00231B E4               [12] 1033 	clr	a
      00231C F0               [24] 1034 	movx	@dptr,a
      00231D A3               [24] 1035 	inc	dptr
      00231E F0               [24] 1036 	movx	@dptr,a
      00231F                       1037 00103$:
                                   1038 ;	spi_dac.c:284: ((dac_data >> 4) & 0x0F);
      00231F 90 04 08         [24] 1039 	mov	dptr,#_mannual_spi_dac_data_65536_34
      002322 E0               [24] 1040 	movx	a,@dptr
      002323 FE               [12] 1041 	mov	r6,a
      002324 A3               [24] 1042 	inc	dptr
      002325 E0               [24] 1043 	movx	a,@dptr
      002326 8E 04            [24] 1044 	mov	ar4,r6
      002328 C4               [12] 1045 	swap	a
      002329 CC               [12] 1046 	xch	a,r4
      00232A C4               [12] 1047 	swap	a
      00232B 54 0F            [12] 1048 	anl	a,#0x0f
      00232D 6C               [12] 1049 	xrl	a,r4
      00232E CC               [12] 1050 	xch	a,r4
      00232F 54 0F            [12] 1051 	anl	a,#0x0f
      002331 CC               [12] 1052 	xch	a,r4
      002332 6C               [12] 1053 	xrl	a,r4
      002333 CC               [12] 1054 	xch	a,r4
      002334 30 E3 02         [24] 1055 	jnb	acc.3,00145$
      002337 44 F0            [12] 1056 	orl	a,#0xf0
      002339                       1057 00145$:
      002339 74 0F            [12] 1058 	mov	a,#0x0f
      00233B 5C               [12] 1059 	anl	a,r4
      00233C 44 10            [12] 1060 	orl	a,#0x10
      00233E FD               [12] 1061 	mov	r5,a
                                   1062 ;	spi_dac.c:287: low_byte = (dac_data & 0x0F) << 4;
      00233F 53 06 0F         [24] 1063 	anl	ar6,#0x0f
      002342 EE               [12] 1064 	mov	a,r6
      002343 C4               [12] 1065 	swap	a
      002344 54 F0            [12] 1066 	anl	a,#0xf0
      002346 FF               [12] 1067 	mov	r7,a
                                   1068 ;	spi_dac.c:291: P1_1 = 0;  // Select DAC
                                   1069 ;	assignBit
      002347 C2 91            [12] 1070 	clr	_P1_1
                                   1071 ;	spi_dac.c:294: SPDAT = high_byte;
      002349 8D C5            [24] 1072 	mov	_SPDAT,r5
                                   1073 ;	spi_dac.c:295: while (!(SPSTA & (1<<7))); 
      00234B                       1074 00104$:
      00234B E5 C4            [12] 1075 	mov	a,_SPSTA
      00234D 30 E7 FB         [24] 1076 	jnb	acc.7,00104$
                                   1077 ;	spi_dac.c:299: SPDAT = low_byte;
      002350 8F C5            [24] 1078 	mov	_SPDAT,r7
                                   1079 ;	spi_dac.c:300: while (!(SPSTA & (1<<7))); 
      002352                       1080 00107$:
      002352 E5 C4            [12] 1081 	mov	a,_SPSTA
      002354 30 E7 FB         [24] 1082 	jnb	acc.7,00107$
                                   1083 ;	spi_dac.c:302: P1_1 = 1;  // Deselect DAC
                                   1084 ;	assignBit
      002357 D2 91            [12] 1085 	setb	_P1_1
                                   1086 ;	spi_dac.c:304: dac_value_index++;
      002359 90 04 06         [24] 1087 	mov	dptr,#_mannual_spi_dac_value_index_65536_34
      00235C E0               [24] 1088 	movx	a,@dptr
      00235D 24 01            [12] 1089 	add	a,#0x01
      00235F F0               [24] 1090 	movx	@dptr,a
      002360 A3               [24] 1091 	inc	dptr
      002361 E0               [24] 1092 	movx	a,@dptr
      002362 34 00            [12] 1093 	addc	a,#0x00
      002364 F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	spi_dac.c:305: number =-1;
      002365 90 04 04         [24] 1096 	mov	dptr,#_mannual_spi_number_65536_33
      002368 74 FF            [12] 1097 	mov	a,#0xff
      00236A F0               [24] 1098 	movx	@dptr,a
      00236B A3               [24] 1099 	inc	dptr
      00236C F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	spi_dac.c:307: }
      00236D 02 22 D1         [24] 1102 	ljmp	00110$
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'spi_init'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	spi_dac.c:318: void spi_init(void) 
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function spi_init
                                   1109 ;	-----------------------------------------
      002370                       1110 _spi_init:
                                   1111 ;	spi_dac.c:339: SPCON |= 0x10;
      002370 43 C3 10         [24] 1112 	orl	_SPCON,#0x10
                                   1113 ;	spi_dac.c:340: SPCON |= 0x20;
      002373 43 C3 20         [24] 1114 	orl	_SPCON,#0x20
                                   1115 ;	spi_dac.c:341: SPCON |= 0x40;
      002376 43 C3 40         [24] 1116 	orl	_SPCON,#0x40
                                   1117 ;	spi_dac.c:348: }
      002379 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'spi_transmission_start'
                                   1121 ;------------------------------------------------------------
                                   1122 ;	spi_dac.c:355: void spi_transmission_start(void)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function spi_transmission_start
                                   1125 ;	-----------------------------------------
      00237A                       1126 _spi_transmission_start:
                                   1127 ;	spi_dac.c:357: SPCON |= SPI_ENABLE;           // Enable SPI
      00237A 43 C3 40         [24] 1128 	orl	_SPCON,#0x40
                                   1129 ;	spi_dac.c:358: P1_1 = 0;
                                   1130 ;	assignBit
      00237D C2 91            [12] 1131 	clr	_P1_1
                                   1132 ;	spi_dac.c:359: }
      00237F 22               [24] 1133 	ret
                                   1134 	.area CSEG    (CODE)
                                   1135 	.area CONST   (CODE)
      002E30                       1136 _dac_values:
      002E30 80 00                 1137 	.byte #0x80, #0x00	;  128
      002E32 83 00                 1138 	.byte #0x83, #0x00	;  131
      002E34 86 00                 1139 	.byte #0x86, #0x00	;  134
      002E36 89 00                 1140 	.byte #0x89, #0x00	;  137
      002E38 8C 00                 1141 	.byte #0x8c, #0x00	;  140
      002E3A 90 00                 1142 	.byte #0x90, #0x00	;  144
      002E3C 93 00                 1143 	.byte #0x93, #0x00	;  147
      002E3E 96 00                 1144 	.byte #0x96, #0x00	;  150
      002E40 99 00                 1145 	.byte #0x99, #0x00	;  153
      002E42 9C 00                 1146 	.byte #0x9c, #0x00	;  156
      002E44 9F 00                 1147 	.byte #0x9f, #0x00	;  159
      002E46 A2 00                 1148 	.byte #0xa2, #0x00	;  162
      002E48 A5 00                 1149 	.byte #0xa5, #0x00	;  165
      002E4A A8 00                 1150 	.byte #0xa8, #0x00	;  168
      002E4C AB 00                 1151 	.byte #0xab, #0x00	;  171
      002E4E AE 00                 1152 	.byte #0xae, #0x00	;  174
      002E50 B1 00                 1153 	.byte #0xb1, #0x00	;  177
      002E52 B3 00                 1154 	.byte #0xb3, #0x00	;  179
      002E54 B6 00                 1155 	.byte #0xb6, #0x00	;  182
      002E56 B9 00                 1156 	.byte #0xb9, #0x00	;  185
      002E58 BC 00                 1157 	.byte #0xbc, #0x00	;  188
      002E5A BF 00                 1158 	.byte #0xbf, #0x00	;  191
      002E5C C1 00                 1159 	.byte #0xc1, #0x00	;  193
      002E5E C4 00                 1160 	.byte #0xc4, #0x00	;  196
      002E60 C7 00                 1161 	.byte #0xc7, #0x00	;  199
      002E62 C9 00                 1162 	.byte #0xc9, #0x00	;  201
      002E64 CC 00                 1163 	.byte #0xcc, #0x00	;  204
      002E66 CE 00                 1164 	.byte #0xce, #0x00	;  206
      002E68 D1 00                 1165 	.byte #0xd1, #0x00	;  209
      002E6A D3 00                 1166 	.byte #0xd3, #0x00	;  211
      002E6C D5 00                 1167 	.byte #0xd5, #0x00	;  213
      002E6E D8 00                 1168 	.byte #0xd8, #0x00	;  216
      002E70 DA 00                 1169 	.byte #0xda, #0x00	;  218
      002E72 DC 00                 1170 	.byte #0xdc, #0x00	;  220
      002E74 DE 00                 1171 	.byte #0xde, #0x00	;  222
      002E76 E0 00                 1172 	.byte #0xe0, #0x00	;  224
      002E78 E2 00                 1173 	.byte #0xe2, #0x00	;  226
      002E7A E4 00                 1174 	.byte #0xe4, #0x00	;  228
      002E7C E6 00                 1175 	.byte #0xe6, #0x00	;  230
      002E7E E8 00                 1176 	.byte #0xe8, #0x00	;  232
      002E80 EA 00                 1177 	.byte #0xea, #0x00	;  234
      002E82 EB 00                 1178 	.byte #0xeb, #0x00	;  235
      002E84 ED 00                 1179 	.byte #0xed, #0x00	;  237
      002E86 EF 00                 1180 	.byte #0xef, #0x00	;  239
      002E88 F0 00                 1181 	.byte #0xf0, #0x00	;  240
      002E8A F1 00                 1182 	.byte #0xf1, #0x00	;  241
      002E8C F3 00                 1183 	.byte #0xf3, #0x00	;  243
      002E8E F4 00                 1184 	.byte #0xf4, #0x00	;  244
      002E90 F5 00                 1185 	.byte #0xf5, #0x00	;  245
      002E92 F6 00                 1186 	.byte #0xf6, #0x00	;  246
      002E94 F8 00                 1187 	.byte #0xf8, #0x00	;  248
      002E96 F9 00                 1188 	.byte #0xf9, #0x00	;  249
      002E98 FA 00                 1189 	.byte #0xfa, #0x00	;  250
      002E9A FA 00                 1190 	.byte #0xfa, #0x00	;  250
      002E9C FB 00                 1191 	.byte #0xfb, #0x00	;  251
      002E9E FC 00                 1192 	.byte #0xfc, #0x00	;  252
      002EA0 FD 00                 1193 	.byte #0xfd, #0x00	;  253
      002EA2 FD 00                 1194 	.byte #0xfd, #0x00	;  253
      002EA4 FE 00                 1195 	.byte #0xfe, #0x00	;  254
      002EA6 FE 00                 1196 	.byte #0xfe, #0x00	;  254
      002EA8 FE 00                 1197 	.byte #0xfe, #0x00	;  254
      002EAA FF 00                 1198 	.byte #0xff, #0x00	;  255
      002EAC FF 00                 1199 	.byte #0xff, #0x00	;  255
      002EAE FF 00                 1200 	.byte #0xff, #0x00	;  255
      002EB0 FF 00                 1201 	.byte #0xff, #0x00	;  255
      002EB2 FF 00                 1202 	.byte #0xff, #0x00	;  255
      002EB4 FF 00                 1203 	.byte #0xff, #0x00	;  255
      002EB6 FF 00                 1204 	.byte #0xff, #0x00	;  255
      002EB8 FE 00                 1205 	.byte #0xfe, #0x00	;  254
      002EBA FE 00                 1206 	.byte #0xfe, #0x00	;  254
      002EBC FE 00                 1207 	.byte #0xfe, #0x00	;  254
      002EBE FD 00                 1208 	.byte #0xfd, #0x00	;  253
      002EC0 FD 00                 1209 	.byte #0xfd, #0x00	;  253
      002EC2 FC 00                 1210 	.byte #0xfc, #0x00	;  252
      002EC4 FB 00                 1211 	.byte #0xfb, #0x00	;  251
      002EC6 FA 00                 1212 	.byte #0xfa, #0x00	;  250
      002EC8 FA 00                 1213 	.byte #0xfa, #0x00	;  250
      002ECA F9 00                 1214 	.byte #0xf9, #0x00	;  249
      002ECC F8 00                 1215 	.byte #0xf8, #0x00	;  248
      002ECE F6 00                 1216 	.byte #0xf6, #0x00	;  246
      002ED0 F5 00                 1217 	.byte #0xf5, #0x00	;  245
      002ED2 F4 00                 1218 	.byte #0xf4, #0x00	;  244
      002ED4 F3 00                 1219 	.byte #0xf3, #0x00	;  243
      002ED6 F1 00                 1220 	.byte #0xf1, #0x00	;  241
      002ED8 F0 00                 1221 	.byte #0xf0, #0x00	;  240
      002EDA EF 00                 1222 	.byte #0xef, #0x00	;  239
      002EDC ED 00                 1223 	.byte #0xed, #0x00	;  237
      002EDE EB 00                 1224 	.byte #0xeb, #0x00	;  235
      002EE0 EA 00                 1225 	.byte #0xea, #0x00	;  234
      002EE2 E8 00                 1226 	.byte #0xe8, #0x00	;  232
      002EE4 E6 00                 1227 	.byte #0xe6, #0x00	;  230
      002EE6 E4 00                 1228 	.byte #0xe4, #0x00	;  228
      002EE8 E2 00                 1229 	.byte #0xe2, #0x00	;  226
      002EEA E0 00                 1230 	.byte #0xe0, #0x00	;  224
      002EEC DE 00                 1231 	.byte #0xde, #0x00	;  222
      002EEE DC 00                 1232 	.byte #0xdc, #0x00	;  220
      002EF0 DA 00                 1233 	.byte #0xda, #0x00	;  218
      002EF2 D8 00                 1234 	.byte #0xd8, #0x00	;  216
      002EF4 D5 00                 1235 	.byte #0xd5, #0x00	;  213
      002EF6 D3 00                 1236 	.byte #0xd3, #0x00	;  211
      002EF8 D1 00                 1237 	.byte #0xd1, #0x00	;  209
      002EFA CE 00                 1238 	.byte #0xce, #0x00	;  206
      002EFC CC 00                 1239 	.byte #0xcc, #0x00	;  204
      002EFE C9 00                 1240 	.byte #0xc9, #0x00	;  201
      002F00 C7 00                 1241 	.byte #0xc7, #0x00	;  199
      002F02 C4 00                 1242 	.byte #0xc4, #0x00	;  196
      002F04 C1 00                 1243 	.byte #0xc1, #0x00	;  193
      002F06 BF 00                 1244 	.byte #0xbf, #0x00	;  191
      002F08 BC 00                 1245 	.byte #0xbc, #0x00	;  188
      002F0A B9 00                 1246 	.byte #0xb9, #0x00	;  185
      002F0C B6 00                 1247 	.byte #0xb6, #0x00	;  182
      002F0E B3 00                 1248 	.byte #0xb3, #0x00	;  179
      002F10 B1 00                 1249 	.byte #0xb1, #0x00	;  177
      002F12 AE 00                 1250 	.byte #0xae, #0x00	;  174
      002F14 AB 00                 1251 	.byte #0xab, #0x00	;  171
      002F16 A8 00                 1252 	.byte #0xa8, #0x00	;  168
      002F18 A5 00                 1253 	.byte #0xa5, #0x00	;  165
      002F1A A2 00                 1254 	.byte #0xa2, #0x00	;  162
      002F1C 9F 00                 1255 	.byte #0x9f, #0x00	;  159
      002F1E 9C 00                 1256 	.byte #0x9c, #0x00	;  156
      002F20 99 00                 1257 	.byte #0x99, #0x00	;  153
      002F22 96 00                 1258 	.byte #0x96, #0x00	;  150
      002F24 93 00                 1259 	.byte #0x93, #0x00	;  147
      002F26 90 00                 1260 	.byte #0x90, #0x00	;  144
      002F28 8C 00                 1261 	.byte #0x8c, #0x00	;  140
      002F2A 89 00                 1262 	.byte #0x89, #0x00	;  137
      002F2C 86 00                 1263 	.byte #0x86, #0x00	;  134
      002F2E 83 00                 1264 	.byte #0x83, #0x00	;  131
      002F30 80 00                 1265 	.byte #0x80, #0x00	;  128
      002F32 7D 00                 1266 	.byte #0x7d, #0x00	;  125
      002F34 7A 00                 1267 	.byte #0x7a, #0x00	;  122
      002F36 77 00                 1268 	.byte #0x77, #0x00	;  119
      002F38 74 00                 1269 	.byte #0x74, #0x00	;  116
      002F3A 70 00                 1270 	.byte #0x70, #0x00	;  112
      002F3C 6D 00                 1271 	.byte #0x6d, #0x00	;  109
      002F3E 6A 00                 1272 	.byte #0x6a, #0x00	;  106
      002F40 67 00                 1273 	.byte #0x67, #0x00	;  103
      002F42 64 00                 1274 	.byte #0x64, #0x00	;  100
      002F44 61 00                 1275 	.byte #0x61, #0x00	;  97
      002F46 5E 00                 1276 	.byte #0x5e, #0x00	;  94
      002F48 5B 00                 1277 	.byte #0x5b, #0x00	;  91
      002F4A 58 00                 1278 	.byte #0x58, #0x00	;  88
      002F4C 55 00                 1279 	.byte #0x55, #0x00	;  85
      002F4E 52 00                 1280 	.byte #0x52, #0x00	;  82
      002F50 4F 00                 1281 	.byte #0x4f, #0x00	;  79
      002F52 4D 00                 1282 	.byte #0x4d, #0x00	;  77
      002F54 4A 00                 1283 	.byte #0x4a, #0x00	;  74
      002F56 47 00                 1284 	.byte #0x47, #0x00	;  71
      002F58 44 00                 1285 	.byte #0x44, #0x00	;  68
      002F5A 41 00                 1286 	.byte #0x41, #0x00	;  65
      002F5C 3F 00                 1287 	.byte #0x3f, #0x00	;  63
      002F5E 3C 00                 1288 	.byte #0x3c, #0x00	;  60
      002F60 39 00                 1289 	.byte #0x39, #0x00	;  57
      002F62 37 00                 1290 	.byte #0x37, #0x00	;  55
      002F64 34 00                 1291 	.byte #0x34, #0x00	;  52
      002F66 32 00                 1292 	.byte #0x32, #0x00	;  50
      002F68 2F 00                 1293 	.byte #0x2f, #0x00	;  47
      002F6A 2D 00                 1294 	.byte #0x2d, #0x00	;  45
      002F6C 2B 00                 1295 	.byte #0x2b, #0x00	;  43
      002F6E 28 00                 1296 	.byte #0x28, #0x00	;  40
      002F70 26 00                 1297 	.byte #0x26, #0x00	;  38
      002F72 24 00                 1298 	.byte #0x24, #0x00	;  36
      002F74 22 00                 1299 	.byte #0x22, #0x00	;  34
      002F76 20 00                 1300 	.byte #0x20, #0x00	;  32
      002F78 1E 00                 1301 	.byte #0x1e, #0x00	;  30
      002F7A 1C 00                 1302 	.byte #0x1c, #0x00	;  28
      002F7C 1A 00                 1303 	.byte #0x1a, #0x00	;  26
      002F7E 18 00                 1304 	.byte #0x18, #0x00	;  24
      002F80 16 00                 1305 	.byte #0x16, #0x00	;  22
      002F82 15 00                 1306 	.byte #0x15, #0x00	;  21
      002F84 13 00                 1307 	.byte #0x13, #0x00	;  19
      002F86 11 00                 1308 	.byte #0x11, #0x00	;  17
      002F88 10 00                 1309 	.byte #0x10, #0x00	;  16
      002F8A 0F 00                 1310 	.byte #0x0f, #0x00	;  15
      002F8C 0D 00                 1311 	.byte #0x0d, #0x00	;  13
      002F8E 0C 00                 1312 	.byte #0x0c, #0x00	;  12
      002F90 0B 00                 1313 	.byte #0x0b, #0x00	;  11
      002F92 0A 00                 1314 	.byte #0x0a, #0x00	;  10
      002F94 08 00                 1315 	.byte #0x08, #0x00	;  8
      002F96 07 00                 1316 	.byte #0x07, #0x00	;  7
      002F98 06 00                 1317 	.byte #0x06, #0x00	;  6
      002F9A 06 00                 1318 	.byte #0x06, #0x00	;  6
      002F9C 05 00                 1319 	.byte #0x05, #0x00	;  5
      002F9E 04 00                 1320 	.byte #0x04, #0x00	;  4
      002FA0 03 00                 1321 	.byte #0x03, #0x00	;  3
      002FA2 03 00                 1322 	.byte #0x03, #0x00	;  3
      002FA4 02 00                 1323 	.byte #0x02, #0x00	;  2
      002FA6 02 00                 1324 	.byte #0x02, #0x00	;  2
      002FA8 02 00                 1325 	.byte #0x02, #0x00	;  2
      002FAA 01 00                 1326 	.byte #0x01, #0x00	;  1
      002FAC 01 00                 1327 	.byte #0x01, #0x00	;  1
      002FAE 01 00                 1328 	.byte #0x01, #0x00	;  1
      002FB0 01 00                 1329 	.byte #0x01, #0x00	;  1
      002FB2 01 00                 1330 	.byte #0x01, #0x00	;  1
      002FB4 01 00                 1331 	.byte #0x01, #0x00	;  1
      002FB6 01 00                 1332 	.byte #0x01, #0x00	;  1
      002FB8 02 00                 1333 	.byte #0x02, #0x00	;  2
      002FBA 02 00                 1334 	.byte #0x02, #0x00	;  2
      002FBC 02 00                 1335 	.byte #0x02, #0x00	;  2
      002FBE 03 00                 1336 	.byte #0x03, #0x00	;  3
      002FC0 03 00                 1337 	.byte #0x03, #0x00	;  3
      002FC2 04 00                 1338 	.byte #0x04, #0x00	;  4
      002FC4 05 00                 1339 	.byte #0x05, #0x00	;  5
      002FC6 06 00                 1340 	.byte #0x06, #0x00	;  6
      002FC8 06 00                 1341 	.byte #0x06, #0x00	;  6
      002FCA 07 00                 1342 	.byte #0x07, #0x00	;  7
      002FCC 08 00                 1343 	.byte #0x08, #0x00	;  8
      002FCE 0A 00                 1344 	.byte #0x0a, #0x00	;  10
      002FD0 0B 00                 1345 	.byte #0x0b, #0x00	;  11
      002FD2 0C 00                 1346 	.byte #0x0c, #0x00	;  12
      002FD4 0D 00                 1347 	.byte #0x0d, #0x00	;  13
      002FD6 0F 00                 1348 	.byte #0x0f, #0x00	;  15
      002FD8 10 00                 1349 	.byte #0x10, #0x00	;  16
      002FDA 11 00                 1350 	.byte #0x11, #0x00	;  17
      002FDC 13 00                 1351 	.byte #0x13, #0x00	;  19
      002FDE 15 00                 1352 	.byte #0x15, #0x00	;  21
      002FE0 16 00                 1353 	.byte #0x16, #0x00	;  22
      002FE2 18 00                 1354 	.byte #0x18, #0x00	;  24
      002FE4 1A 00                 1355 	.byte #0x1a, #0x00	;  26
      002FE6 1C 00                 1356 	.byte #0x1c, #0x00	;  28
      002FE8 1E 00                 1357 	.byte #0x1e, #0x00	;  30
      002FEA 20 00                 1358 	.byte #0x20, #0x00	;  32
      002FEC 22 00                 1359 	.byte #0x22, #0x00	;  34
      002FEE 24 00                 1360 	.byte #0x24, #0x00	;  36
      002FF0 26 00                 1361 	.byte #0x26, #0x00	;  38
      002FF2 28 00                 1362 	.byte #0x28, #0x00	;  40
      002FF4 2B 00                 1363 	.byte #0x2b, #0x00	;  43
      002FF6 2D 00                 1364 	.byte #0x2d, #0x00	;  45
      002FF8 2F 00                 1365 	.byte #0x2f, #0x00	;  47
      002FFA 32 00                 1366 	.byte #0x32, #0x00	;  50
      002FFC 34 00                 1367 	.byte #0x34, #0x00	;  52
      002FFE 37 00                 1368 	.byte #0x37, #0x00	;  55
      003000 39 00                 1369 	.byte #0x39, #0x00	;  57
      003002 3C 00                 1370 	.byte #0x3c, #0x00	;  60
      003004 3F 00                 1371 	.byte #0x3f, #0x00	;  63
      003006 41 00                 1372 	.byte #0x41, #0x00	;  65
      003008 44 00                 1373 	.byte #0x44, #0x00	;  68
      00300A 47 00                 1374 	.byte #0x47, #0x00	;  71
      00300C 4A 00                 1375 	.byte #0x4a, #0x00	;  74
      00300E 4D 00                 1376 	.byte #0x4d, #0x00	;  77
      003010 4F 00                 1377 	.byte #0x4f, #0x00	;  79
      003012 52 00                 1378 	.byte #0x52, #0x00	;  82
      003014 55 00                 1379 	.byte #0x55, #0x00	;  85
      003016 58 00                 1380 	.byte #0x58, #0x00	;  88
      003018 5B 00                 1381 	.byte #0x5b, #0x00	;  91
      00301A 5E 00                 1382 	.byte #0x5e, #0x00	;  94
      00301C 61 00                 1383 	.byte #0x61, #0x00	;  97
      00301E 64 00                 1384 	.byte #0x64, #0x00	;  100
      003020 67 00                 1385 	.byte #0x67, #0x00	;  103
      003022 6A 00                 1386 	.byte #0x6a, #0x00	;  106
      003024 6D 00                 1387 	.byte #0x6d, #0x00	;  109
      003026 70 00                 1388 	.byte #0x70, #0x00	;  112
      003028 74 00                 1389 	.byte #0x74, #0x00	;  116
      00302A 77 00                 1390 	.byte #0x77, #0x00	;  119
      00302C 7A 00                 1391 	.byte #0x7a, #0x00	;  122
      00302E 7D 00                 1392 	.byte #0x7d, #0x00	;  125
                                   1393 	.area CONST   (CODE)
      003030                       1394 ___str_0:
      003030 0A                    1395 	.db 0x0a
      003031 0D                    1396 	.db 0x0d
      003032 E2                    1397 	.db 0xe2
      003033 94                    1398 	.db 0x94
      003034 8C                    1399 	.db 0x8c
      003035 E2                    1400 	.db 0xe2
      003036 94                    1401 	.db 0x94
      003037 80                    1402 	.db 0x80
      003038 E2                    1403 	.db 0xe2
      003039 94                    1404 	.db 0x94
      00303A 80                    1405 	.db 0x80
      00303B E2                    1406 	.db 0xe2
      00303C 94                    1407 	.db 0x94
      00303D 80                    1408 	.db 0x80
      00303E E2                    1409 	.db 0xe2
      00303F 94                    1410 	.db 0x94
      003040 80                    1411 	.db 0x80
      003041 E2                    1412 	.db 0xe2
      003042 94                    1413 	.db 0x94
      003043 80                    1414 	.db 0x80
      003044 E2                    1415 	.db 0xe2
      003045 94                    1416 	.db 0x94
      003046 80                    1417 	.db 0x80
      003047 E2                    1418 	.db 0xe2
      003048 94                    1419 	.db 0x94
      003049 80                    1420 	.db 0x80
      00304A E2                    1421 	.db 0xe2
      00304B 94                    1422 	.db 0x94
      00304C 80                    1423 	.db 0x80
      00304D E2                    1424 	.db 0xe2
      00304E 94                    1425 	.db 0x94
      00304F 80                    1426 	.db 0x80
      003050 E2                    1427 	.db 0xe2
      003051 94                    1428 	.db 0x94
      003052 80                    1429 	.db 0x80
      003053 E2                    1430 	.db 0xe2
      003054 94                    1431 	.db 0x94
      003055 80                    1432 	.db 0x80
      003056 E2                    1433 	.db 0xe2
      003057 94                    1434 	.db 0x94
      003058 80                    1435 	.db 0x80
      003059 E2                    1436 	.db 0xe2
      00305A 94                    1437 	.db 0x94
      00305B 80                    1438 	.db 0x80
      00305C E2                    1439 	.db 0xe2
      00305D 94                    1440 	.db 0x94
      00305E 80                    1441 	.db 0x80
      00305F E2                    1442 	.db 0xe2
      003060 94                    1443 	.db 0x94
      003061 80                    1444 	.db 0x80
      003062 E2                    1445 	.db 0xe2
      003063 94                    1446 	.db 0x94
      003064 80                    1447 	.db 0x80
      003065 E2                    1448 	.db 0xe2
      003066 94                    1449 	.db 0x94
      003067 80                    1450 	.db 0x80
      003068 E2                    1451 	.db 0xe2
      003069 94                    1452 	.db 0x94
      00306A 80                    1453 	.db 0x80
      00306B E2                    1454 	.db 0xe2
      00306C 94                    1455 	.db 0x94
      00306D 80                    1456 	.db 0x80
      00306E E2                    1457 	.db 0xe2
      00306F 94                    1458 	.db 0x94
      003070 80                    1459 	.db 0x80
      003071 E2                    1460 	.db 0xe2
      003072 94                    1461 	.db 0x94
      003073 80                    1462 	.db 0x80
      003074 E2                    1463 	.db 0xe2
      003075 94                    1464 	.db 0x94
      003076 80                    1465 	.db 0x80
      003077 E2                    1466 	.db 0xe2
      003078 94                    1467 	.db 0x94
      003079 80                    1468 	.db 0x80
      00307A E2                    1469 	.db 0xe2
      00307B 94                    1470 	.db 0x94
      00307C 80                    1471 	.db 0x80
      00307D E2                    1472 	.db 0xe2
      00307E 94                    1473 	.db 0x94
      00307F 80                    1474 	.db 0x80
      003080 E2                    1475 	.db 0xe2
      003081 94                    1476 	.db 0x94
      003082 80                    1477 	.db 0x80
      003083 E2                    1478 	.db 0xe2
      003084 94                    1479 	.db 0x94
      003085 80                    1480 	.db 0x80
      003086 E2                    1481 	.db 0xe2
      003087 94                    1482 	.db 0x94
      003088 80                    1483 	.db 0x80
      003089 E2                    1484 	.db 0xe2
      00308A 94                    1485 	.db 0x94
      00308B 80                    1486 	.db 0x80
      00308C E2                    1487 	.db 0xe2
      00308D 94                    1488 	.db 0x94
      00308E 80                    1489 	.db 0x80
      00308F E2                    1490 	.db 0xe2
      003090 94                    1491 	.db 0x94
      003091 80                    1492 	.db 0x80
      003092 E2                    1493 	.db 0xe2
      003093 94                    1494 	.db 0x94
      003094 80                    1495 	.db 0x80
      003095 E2                    1496 	.db 0xe2
      003096 94                    1497 	.db 0x94
      003097 80                    1498 	.db 0x80
      003098 E2                    1499 	.db 0xe2
      003099 94                    1500 	.db 0x94
      00309A 80                    1501 	.db 0x80
      00309B E2                    1502 	.db 0xe2
      00309C 94                    1503 	.db 0x94
      00309D 80                    1504 	.db 0x80
      00309E E2                    1505 	.db 0xe2
      00309F 94                    1506 	.db 0x94
      0030A0 80                    1507 	.db 0x80
      0030A1 E2                    1508 	.db 0xe2
      0030A2 94                    1509 	.db 0x94
      0030A3 80                    1510 	.db 0x80
      0030A4 E2                    1511 	.db 0xe2
      0030A5 94                    1512 	.db 0x94
      0030A6 80                    1513 	.db 0x80
      0030A7 E2                    1514 	.db 0xe2
      0030A8 94                    1515 	.db 0x94
      0030A9 80                    1516 	.db 0x80
      0030AA E2                    1517 	.db 0xe2
      0030AB 94                    1518 	.db 0x94
      0030AC 80                    1519 	.db 0x80
      0030AD E2                    1520 	.db 0xe2
      0030AE 94                    1521 	.db 0x94
      0030AF 80                    1522 	.db 0x80
      0030B0 E2                    1523 	.db 0xe2
      0030B1 94                    1524 	.db 0x94
      0030B2 80                    1525 	.db 0x80
      0030B3 E2                    1526 	.db 0xe2
      0030B4 94                    1527 	.db 0x94
      0030B5 80                    1528 	.db 0x80
      0030B6 E2                    1529 	.db 0xe2
      0030B7 94                    1530 	.db 0x94
      0030B8 80                    1531 	.db 0x80
      0030B9 E2                    1532 	.db 0xe2
      0030BA 94                    1533 	.db 0x94
      0030BB 80                    1534 	.db 0x80
      0030BC E2                    1535 	.db 0xe2
      0030BD 94                    1536 	.db 0x94
      0030BE 80                    1537 	.db 0x80
      0030BF E2                    1538 	.db 0xe2
      0030C0 94                    1539 	.db 0x94
      0030C1 80                    1540 	.db 0x80
      0030C2 E2                    1541 	.db 0xe2
      0030C3 94                    1542 	.db 0x94
      0030C4 80                    1543 	.db 0x80
      0030C5 E2                    1544 	.db 0xe2
      0030C6 94                    1545 	.db 0x94
      0030C7 80                    1546 	.db 0x80
      0030C8 E2                    1547 	.db 0xe2
      0030C9 94                    1548 	.db 0x94
      0030CA 80                    1549 	.db 0x80
      0030CB E2                    1550 	.db 0xe2
      0030CC 94                    1551 	.db 0x94
      0030CD 80                    1552 	.db 0x80
      0030CE E2                    1553 	.db 0xe2
      0030CF 94                    1554 	.db 0x94
      0030D0 80                    1555 	.db 0x80
      0030D1 E2                    1556 	.db 0xe2
      0030D2 94                    1557 	.db 0x94
      0030D3 80                    1558 	.db 0x80
      0030D4 E2                    1559 	.db 0xe2
      0030D5 94                    1560 	.db 0x94
      0030D6 80                    1561 	.db 0x80
      0030D7 E2                    1562 	.db 0xe2
      0030D8 94                    1563 	.db 0x94
      0030D9 80                    1564 	.db 0x80
      0030DA E2                    1565 	.db 0xe2
      0030DB 94                    1566 	.db 0x94
      0030DC 80                    1567 	.db 0x80
      0030DD E2                    1568 	.db 0xe2
      0030DE 94                    1569 	.db 0x94
      0030DF 80                    1570 	.db 0x80
      0030E0 E2                    1571 	.db 0xe2
      0030E1 94                    1572 	.db 0x94
      0030E2 80                    1573 	.db 0x80
      0030E3 E2                    1574 	.db 0xe2
      0030E4 94                    1575 	.db 0x94
      0030E5 80                    1576 	.db 0x80
      0030E6 E2                    1577 	.db 0xe2
      0030E7 94                    1578 	.db 0x94
      0030E8 80                    1579 	.db 0x80
      0030E9 E2                    1580 	.db 0xe2
      0030EA 94                    1581 	.db 0x94
      0030EB 80                    1582 	.db 0x80
      0030EC E2                    1583 	.db 0xe2
      0030ED 94                    1584 	.db 0x94
      0030EE 80                    1585 	.db 0x80
      0030EF E2                    1586 	.db 0xe2
      0030F0 94                    1587 	.db 0x94
      0030F1 90                    1588 	.db 0x90
      0030F2 0A                    1589 	.db 0x0a
      0030F3 0D                    1590 	.db 0x0d
      0030F4 00                    1591 	.db 0x00
                                   1592 	.area CSEG    (CODE)
                                   1593 	.area CONST   (CODE)
      0030F5                       1594 ___str_1:
      0030F5 E2                    1595 	.db 0xe2
      0030F6 94                    1596 	.db 0x94
      0030F7 82                    1597 	.db 0x82
      0030F8 20 20 20 20 20 20 20  1598 	.ascii "                        SPI PROGRAM                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 53 50 49 20
             50 52 4F 47 52 41 4D
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      003134 20 20                 1599 	.ascii "  "
      003136 E2                    1600 	.db 0xe2
      003137 94                    1601 	.db 0x94
      003138 82                    1602 	.db 0x82
      003139 0A                    1603 	.db 0x0a
      00313A 0D                    1604 	.db 0x0d
      00313B 00                    1605 	.db 0x00
                                   1606 	.area CSEG    (CODE)
                                   1607 	.area CONST   (CODE)
      00313C                       1608 ___str_2:
      00313C E2                    1609 	.db 0xe2
      00313D 94                    1610 	.db 0x94
      00313E 9C                    1611 	.db 0x9c
      00313F E2                    1612 	.db 0xe2
      003140 94                    1613 	.db 0x94
      003141 80                    1614 	.db 0x80
      003142 E2                    1615 	.db 0xe2
      003143 94                    1616 	.db 0x94
      003144 80                    1617 	.db 0x80
      003145 E2                    1618 	.db 0xe2
      003146 94                    1619 	.db 0x94
      003147 80                    1620 	.db 0x80
      003148 E2                    1621 	.db 0xe2
      003149 94                    1622 	.db 0x94
      00314A 80                    1623 	.db 0x80
      00314B E2                    1624 	.db 0xe2
      00314C 94                    1625 	.db 0x94
      00314D 80                    1626 	.db 0x80
      00314E E2                    1627 	.db 0xe2
      00314F 94                    1628 	.db 0x94
      003150 80                    1629 	.db 0x80
      003151 E2                    1630 	.db 0xe2
      003152 94                    1631 	.db 0x94
      003153 80                    1632 	.db 0x80
      003154 E2                    1633 	.db 0xe2
      003155 94                    1634 	.db 0x94
      003156 80                    1635 	.db 0x80
      003157 E2                    1636 	.db 0xe2
      003158 94                    1637 	.db 0x94
      003159 80                    1638 	.db 0x80
      00315A E2                    1639 	.db 0xe2
      00315B 94                    1640 	.db 0x94
      00315C 80                    1641 	.db 0x80
      00315D E2                    1642 	.db 0xe2
      00315E 94                    1643 	.db 0x94
      00315F 80                    1644 	.db 0x80
      003160 E2                    1645 	.db 0xe2
      003161 94                    1646 	.db 0x94
      003162 80                    1647 	.db 0x80
      003163 E2                    1648 	.db 0xe2
      003164 94                    1649 	.db 0x94
      003165 80                    1650 	.db 0x80
      003166 E2                    1651 	.db 0xe2
      003167 94                    1652 	.db 0x94
      003168 80                    1653 	.db 0x80
      003169 E2                    1654 	.db 0xe2
      00316A 94                    1655 	.db 0x94
      00316B 80                    1656 	.db 0x80
      00316C E2                    1657 	.db 0xe2
      00316D 94                    1658 	.db 0x94
      00316E 80                    1659 	.db 0x80
      00316F E2                    1660 	.db 0xe2
      003170 94                    1661 	.db 0x94
      003171 80                    1662 	.db 0x80
      003172 E2                    1663 	.db 0xe2
      003173 94                    1664 	.db 0x94
      003174 80                    1665 	.db 0x80
      003175 E2                    1666 	.db 0xe2
      003176 94                    1667 	.db 0x94
      003177 80                    1668 	.db 0x80
      003178 E2                    1669 	.db 0xe2
      003179 94                    1670 	.db 0x94
      00317A 80                    1671 	.db 0x80
      00317B E2                    1672 	.db 0xe2
      00317C 94                    1673 	.db 0x94
      00317D 80                    1674 	.db 0x80
      00317E E2                    1675 	.db 0xe2
      00317F 94                    1676 	.db 0x94
      003180 80                    1677 	.db 0x80
      003181 E2                    1678 	.db 0xe2
      003182 94                    1679 	.db 0x94
      003183 80                    1680 	.db 0x80
      003184 E2                    1681 	.db 0xe2
      003185 94                    1682 	.db 0x94
      003186 80                    1683 	.db 0x80
      003187 E2                    1684 	.db 0xe2
      003188 94                    1685 	.db 0x94
      003189 80                    1686 	.db 0x80
      00318A E2                    1687 	.db 0xe2
      00318B 94                    1688 	.db 0x94
      00318C 80                    1689 	.db 0x80
      00318D E2                    1690 	.db 0xe2
      00318E 94                    1691 	.db 0x94
      00318F 80                    1692 	.db 0x80
      003190 E2                    1693 	.db 0xe2
      003191 94                    1694 	.db 0x94
      003192 80                    1695 	.db 0x80
      003193 E2                    1696 	.db 0xe2
      003194 94                    1697 	.db 0x94
      003195 80                    1698 	.db 0x80
      003196 E2                    1699 	.db 0xe2
      003197 94                    1700 	.db 0x94
      003198 80                    1701 	.db 0x80
      003199 E2                    1702 	.db 0xe2
      00319A 94                    1703 	.db 0x94
      00319B 80                    1704 	.db 0x80
      00319C E2                    1705 	.db 0xe2
      00319D 94                    1706 	.db 0x94
      00319E 80                    1707 	.db 0x80
      00319F E2                    1708 	.db 0xe2
      0031A0 94                    1709 	.db 0x94
      0031A1 80                    1710 	.db 0x80
      0031A2 E2                    1711 	.db 0xe2
      0031A3 94                    1712 	.db 0x94
      0031A4 80                    1713 	.db 0x80
      0031A5 E2                    1714 	.db 0xe2
      0031A6 94                    1715 	.db 0x94
      0031A7 80                    1716 	.db 0x80
      0031A8 E2                    1717 	.db 0xe2
      0031A9 94                    1718 	.db 0x94
      0031AA 80                    1719 	.db 0x80
      0031AB E2                    1720 	.db 0xe2
      0031AC 94                    1721 	.db 0x94
      0031AD 80                    1722 	.db 0x80
      0031AE E2                    1723 	.db 0xe2
      0031AF 94                    1724 	.db 0x94
      0031B0 80                    1725 	.db 0x80
      0031B1 E2                    1726 	.db 0xe2
      0031B2 94                    1727 	.db 0x94
      0031B3 80                    1728 	.db 0x80
      0031B4 E2                    1729 	.db 0xe2
      0031B5 94                    1730 	.db 0x94
      0031B6 80                    1731 	.db 0x80
      0031B7 E2                    1732 	.db 0xe2
      0031B8 94                    1733 	.db 0x94
      0031B9 80                    1734 	.db 0x80
      0031BA E2                    1735 	.db 0xe2
      0031BB 94                    1736 	.db 0x94
      0031BC 80                    1737 	.db 0x80
      0031BD E2                    1738 	.db 0xe2
      0031BE 94                    1739 	.db 0x94
      0031BF 80                    1740 	.db 0x80
      0031C0 E2                    1741 	.db 0xe2
      0031C1 94                    1742 	.db 0x94
      0031C2 80                    1743 	.db 0x80
      0031C3 E2                    1744 	.db 0xe2
      0031C4 94                    1745 	.db 0x94
      0031C5 80                    1746 	.db 0x80
      0031C6 E2                    1747 	.db 0xe2
      0031C7 94                    1748 	.db 0x94
      0031C8 80                    1749 	.db 0x80
      0031C9 E2                    1750 	.db 0xe2
      0031CA 94                    1751 	.db 0x94
      0031CB 80                    1752 	.db 0x80
      0031CC E2                    1753 	.db 0xe2
      0031CD 94                    1754 	.db 0x94
      0031CE 80                    1755 	.db 0x80
      0031CF E2                    1756 	.db 0xe2
      0031D0 94                    1757 	.db 0x94
      0031D1 80                    1758 	.db 0x80
      0031D2 E2                    1759 	.db 0xe2
      0031D3 94                    1760 	.db 0x94
      0031D4 80                    1761 	.db 0x80
      0031D5 E2                    1762 	.db 0xe2
      0031D6 94                    1763 	.db 0x94
      0031D7 80                    1764 	.db 0x80
      0031D8 E2                    1765 	.db 0xe2
      0031D9 94                    1766 	.db 0x94
      0031DA 80                    1767 	.db 0x80
      0031DB E2                    1768 	.db 0xe2
      0031DC 94                    1769 	.db 0x94
      0031DD 80                    1770 	.db 0x80
      0031DE E2                    1771 	.db 0xe2
      0031DF 94                    1772 	.db 0x94
      0031E0 80                    1773 	.db 0x80
      0031E1 E2                    1774 	.db 0xe2
      0031E2 94                    1775 	.db 0x94
      0031E3 80                    1776 	.db 0x80
      0031E4 E2                    1777 	.db 0xe2
      0031E5 94                    1778 	.db 0x94
      0031E6 80                    1779 	.db 0x80
      0031E7 E2                    1780 	.db 0xe2
      0031E8 94                    1781 	.db 0x94
      0031E9 80                    1782 	.db 0x80
      0031EA E2                    1783 	.db 0xe2
      0031EB 94                    1784 	.db 0x94
      0031EC 80                    1785 	.db 0x80
      0031ED E2                    1786 	.db 0xe2
      0031EE 94                    1787 	.db 0x94
      0031EF 80                    1788 	.db 0x80
      0031F0 E2                    1789 	.db 0xe2
      0031F1 94                    1790 	.db 0x94
      0031F2 80                    1791 	.db 0x80
      0031F3 E2                    1792 	.db 0xe2
      0031F4 94                    1793 	.db 0x94
      0031F5 80                    1794 	.db 0x80
      0031F6 E2                    1795 	.db 0xe2
      0031F7 94                    1796 	.db 0x94
      0031F8 80                    1797 	.db 0x80
      0031F9 E2                    1798 	.db 0xe2
      0031FA 94                    1799 	.db 0x94
      0031FB A4                    1800 	.db 0xa4
      0031FC 0A                    1801 	.db 0x0a
      0031FD 0D                    1802 	.db 0x0d
      0031FE 00                    1803 	.db 0x00
                                   1804 	.area CSEG    (CODE)
                                   1805 	.area CONST   (CODE)
      0031FF                       1806 ___str_3:
      0031FF E2                    1807 	.db 0xe2
      003200 94                    1808 	.db 0x94
      003201 82                    1809 	.db 0x82
      003202 20 20 43 6F 6D 6D 61  1810 	.ascii "  Command   "
             6E 64 20 20 20
      00320E E2                    1811 	.db 0xe2
      00320F 94                    1812 	.db 0x94
      003210 82                    1813 	.db 0x82
      003211 20 20 20 20 20 20 20  1814 	.ascii "               Description                       "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
      003242 E2                    1815 	.db 0xe2
      003243 94                    1816 	.db 0x94
      003244 82                    1817 	.db 0x82
      003245 0A                    1818 	.db 0x0a
      003246 0D                    1819 	.db 0x0d
      003247 00                    1820 	.db 0x00
                                   1821 	.area CSEG    (CODE)
                                   1822 	.area CONST   (CODE)
      003248                       1823 ___str_4:
      003248 E2                    1824 	.db 0xe2
      003249 94                    1825 	.db 0x94
      00324A 9C                    1826 	.db 0x9c
      00324B E2                    1827 	.db 0xe2
      00324C 94                    1828 	.db 0x94
      00324D 80                    1829 	.db 0x80
      00324E E2                    1830 	.db 0xe2
      00324F 94                    1831 	.db 0x94
      003250 80                    1832 	.db 0x80
      003251 E2                    1833 	.db 0xe2
      003252 94                    1834 	.db 0x94
      003253 80                    1835 	.db 0x80
      003254 E2                    1836 	.db 0xe2
      003255 94                    1837 	.db 0x94
      003256 80                    1838 	.db 0x80
      003257 E2                    1839 	.db 0xe2
      003258 94                    1840 	.db 0x94
      003259 80                    1841 	.db 0x80
      00325A E2                    1842 	.db 0xe2
      00325B 94                    1843 	.db 0x94
      00325C 80                    1844 	.db 0x80
      00325D E2                    1845 	.db 0xe2
      00325E 94                    1846 	.db 0x94
      00325F 80                    1847 	.db 0x80
      003260 E2                    1848 	.db 0xe2
      003261 94                    1849 	.db 0x94
      003262 80                    1850 	.db 0x80
      003263 E2                    1851 	.db 0xe2
      003264 94                    1852 	.db 0x94
      003265 80                    1853 	.db 0x80
      003266 E2                    1854 	.db 0xe2
      003267 94                    1855 	.db 0x94
      003268 80                    1856 	.db 0x80
      003269 E2                    1857 	.db 0xe2
      00326A 94                    1858 	.db 0x94
      00326B 80                    1859 	.db 0x80
      00326C E2                    1860 	.db 0xe2
      00326D 94                    1861 	.db 0x94
      00326E BC                    1862 	.db 0xbc
      00326F E2                    1863 	.db 0xe2
      003270 94                    1864 	.db 0x94
      003271 80                    1865 	.db 0x80
      003272 E2                    1866 	.db 0xe2
      003273 94                    1867 	.db 0x94
      003274 80                    1868 	.db 0x80
      003275 E2                    1869 	.db 0xe2
      003276 94                    1870 	.db 0x94
      003277 80                    1871 	.db 0x80
      003278 E2                    1872 	.db 0xe2
      003279 94                    1873 	.db 0x94
      00327A 80                    1874 	.db 0x80
      00327B E2                    1875 	.db 0xe2
      00327C 94                    1876 	.db 0x94
      00327D 80                    1877 	.db 0x80
      00327E E2                    1878 	.db 0xe2
      00327F 94                    1879 	.db 0x94
      003280 80                    1880 	.db 0x80
      003281 E2                    1881 	.db 0xe2
      003282 94                    1882 	.db 0x94
      003283 80                    1883 	.db 0x80
      003284 E2                    1884 	.db 0xe2
      003285 94                    1885 	.db 0x94
      003286 80                    1886 	.db 0x80
      003287 E2                    1887 	.db 0xe2
      003288 94                    1888 	.db 0x94
      003289 80                    1889 	.db 0x80
      00328A E2                    1890 	.db 0xe2
      00328B 94                    1891 	.db 0x94
      00328C 80                    1892 	.db 0x80
      00328D E2                    1893 	.db 0xe2
      00328E 94                    1894 	.db 0x94
      00328F 80                    1895 	.db 0x80
      003290 E2                    1896 	.db 0xe2
      003291 94                    1897 	.db 0x94
      003292 80                    1898 	.db 0x80
      003293 E2                    1899 	.db 0xe2
      003294 94                    1900 	.db 0x94
      003295 80                    1901 	.db 0x80
      003296 E2                    1902 	.db 0xe2
      003297 94                    1903 	.db 0x94
      003298 80                    1904 	.db 0x80
      003299 E2                    1905 	.db 0xe2
      00329A 94                    1906 	.db 0x94
      00329B 80                    1907 	.db 0x80
      00329C E2                    1908 	.db 0xe2
      00329D 94                    1909 	.db 0x94
      00329E 80                    1910 	.db 0x80
      00329F E2                    1911 	.db 0xe2
      0032A0 94                    1912 	.db 0x94
      0032A1 80                    1913 	.db 0x80
      0032A2 E2                    1914 	.db 0xe2
      0032A3 94                    1915 	.db 0x94
      0032A4 80                    1916 	.db 0x80
      0032A5 E2                    1917 	.db 0xe2
      0032A6 94                    1918 	.db 0x94
      0032A7 80                    1919 	.db 0x80
      0032A8 E2                    1920 	.db 0xe2
      0032A9 94                    1921 	.db 0x94
      0032AA 80                    1922 	.db 0x80
      0032AB E2                    1923 	.db 0xe2
      0032AC 94                    1924 	.db 0x94
      0032AD 80                    1925 	.db 0x80
      0032AE E2                    1926 	.db 0xe2
      0032AF 94                    1927 	.db 0x94
      0032B0 80                    1928 	.db 0x80
      0032B1 E2                    1929 	.db 0xe2
      0032B2 94                    1930 	.db 0x94
      0032B3 80                    1931 	.db 0x80
      0032B4 E2                    1932 	.db 0xe2
      0032B5 94                    1933 	.db 0x94
      0032B6 80                    1934 	.db 0x80
      0032B7 E2                    1935 	.db 0xe2
      0032B8 94                    1936 	.db 0x94
      0032B9 80                    1937 	.db 0x80
      0032BA E2                    1938 	.db 0xe2
      0032BB 94                    1939 	.db 0x94
      0032BC 80                    1940 	.db 0x80
      0032BD E2                    1941 	.db 0xe2
      0032BE 94                    1942 	.db 0x94
      0032BF 80                    1943 	.db 0x80
      0032C0 E2                    1944 	.db 0xe2
      0032C1 94                    1945 	.db 0x94
      0032C2 80                    1946 	.db 0x80
      0032C3 E2                    1947 	.db 0xe2
      0032C4 94                    1948 	.db 0x94
      0032C5 80                    1949 	.db 0x80
      0032C6 E2                    1950 	.db 0xe2
      0032C7 94                    1951 	.db 0x94
      0032C8 80                    1952 	.db 0x80
      0032C9 E2                    1953 	.db 0xe2
      0032CA 94                    1954 	.db 0x94
      0032CB 80                    1955 	.db 0x80
      0032CC E2                    1956 	.db 0xe2
      0032CD 94                    1957 	.db 0x94
      0032CE 80                    1958 	.db 0x80
      0032CF E2                    1959 	.db 0xe2
      0032D0 94                    1960 	.db 0x94
      0032D1 80                    1961 	.db 0x80
      0032D2 E2                    1962 	.db 0xe2
      0032D3 94                    1963 	.db 0x94
      0032D4 80                    1964 	.db 0x80
      0032D5 E2                    1965 	.db 0xe2
      0032D6 94                    1966 	.db 0x94
      0032D7 80                    1967 	.db 0x80
      0032D8 E2                    1968 	.db 0xe2
      0032D9 94                    1969 	.db 0x94
      0032DA 80                    1970 	.db 0x80
      0032DB E2                    1971 	.db 0xe2
      0032DC 94                    1972 	.db 0x94
      0032DD 80                    1973 	.db 0x80
      0032DE E2                    1974 	.db 0xe2
      0032DF 94                    1975 	.db 0x94
      0032E0 80                    1976 	.db 0x80
      0032E1 E2                    1977 	.db 0xe2
      0032E2 94                    1978 	.db 0x94
      0032E3 80                    1979 	.db 0x80
      0032E4 E2                    1980 	.db 0xe2
      0032E5 94                    1981 	.db 0x94
      0032E6 80                    1982 	.db 0x80
      0032E7 E2                    1983 	.db 0xe2
      0032E8 94                    1984 	.db 0x94
      0032E9 80                    1985 	.db 0x80
      0032EA E2                    1986 	.db 0xe2
      0032EB 94                    1987 	.db 0x94
      0032EC 80                    1988 	.db 0x80
      0032ED E2                    1989 	.db 0xe2
      0032EE 94                    1990 	.db 0x94
      0032EF 80                    1991 	.db 0x80
      0032F0 E2                    1992 	.db 0xe2
      0032F1 94                    1993 	.db 0x94
      0032F2 80                    1994 	.db 0x80
      0032F3 E2                    1995 	.db 0xe2
      0032F4 94                    1996 	.db 0x94
      0032F5 80                    1997 	.db 0x80
      0032F6 E2                    1998 	.db 0xe2
      0032F7 94                    1999 	.db 0x94
      0032F8 80                    2000 	.db 0x80
      0032F9 E2                    2001 	.db 0xe2
      0032FA 94                    2002 	.db 0x94
      0032FB 80                    2003 	.db 0x80
      0032FC E2                    2004 	.db 0xe2
      0032FD 94                    2005 	.db 0x94
      0032FE A4                    2006 	.db 0xa4
      0032FF 0A                    2007 	.db 0x0a
      003300 0D                    2008 	.db 0x0d
      003301 00                    2009 	.db 0x00
                                   2010 	.area CSEG    (CODE)
                                   2011 	.area CONST   (CODE)
      003302                       2012 ___str_5:
      003302 E2                    2013 	.db 0xe2
      003303 94                    2014 	.db 0x94
      003304 82                    2015 	.db 0x82
      003305 20 20 20 20 4D 20 20  2016 	.ascii "    M      "
             20 20 20 20
      003310 E2                    2017 	.db 0xe2
      003311 94                    2018 	.db 0x94
      003312 82                    2019 	.db 0x82
      003313 20 4D 61 6E 75 61 6C  2020 	.ascii " Manual SPI Mode (Direct Register Control)      "
             20 53 50 49 20 4D 6F
             64 65 20 28 44 69 72
             65 63 74 20 52 65 67
             69 73 74 65 72 20 43
             6F 6E 74 72 6F 6C 29
             20 20 20 20 20 20
      003343 E2                    2021 	.db 0xe2
      003344 94                    2022 	.db 0x94
      003345 82                    2023 	.db 0x82
      003346 0A                    2024 	.db 0x0a
      003347 0D                    2025 	.db 0x0d
      003348 00                    2026 	.db 0x00
                                   2027 	.area CSEG    (CODE)
                                   2028 	.area CONST   (CODE)
      003349                       2029 ___str_6:
      003349 E2                    2030 	.db 0xe2
      00334A 94                    2031 	.db 0x94
      00334B 82                    2032 	.db 0x82
      00334C 20 20 20 20 42 20 20  2033 	.ascii "    B      "
             20 20 20 20
      003357 E2                    2034 	.db 0xe2
      003358 94                    2035 	.db 0x94
      003359 82                    2036 	.db 0x82
      00335A 20 42 69 74 20 42 61  2037 	.ascii " Bit Banging Mode (Software SPI)               "
             6E 67 69 6E 67 20 4D
             6F 64 65 20 28 53 6F
             66 74 77 61 72 65 20
             53 50 49 29 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003389 E2                    2038 	.db 0xe2
      00338A 94                    2039 	.db 0x94
      00338B 82                    2040 	.db 0x82
      00338C 0A                    2041 	.db 0x0a
      00338D 0D                    2042 	.db 0x0d
      00338E 00                    2043 	.db 0x00
                                   2044 	.area CSEG    (CODE)
                                   2045 	.area CONST   (CODE)
      00338F                       2046 ___str_7:
      00338F E2                    2047 	.db 0xe2
      003390 94                    2048 	.db 0x94
      003391 82                    2049 	.db 0x82
      003392 20 20 20 20 53 20 20  2050 	.ascii "    S      "
             20 20 20 20
      00339D E2                    2051 	.db 0xe2
      00339E 94                    2052 	.db 0x94
      00339F 82                    2053 	.db 0x82
      0033A0 20 47 65 6E 65 72 61  2054 	.ascii " Generate Sine Wave                            "
             74 65 20 53 69 6E 65
             20 57 61 76 65 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0033CF E2                    2055 	.db 0xe2
      0033D0 94                    2056 	.db 0x94
      0033D1 82                    2057 	.db 0x82
      0033D2 0A                    2058 	.db 0x0a
      0033D3 0D                    2059 	.db 0x0d
      0033D4 00                    2060 	.db 0x00
                                   2061 	.area CSEG    (CODE)
                                   2062 	.area CONST   (CODE)
      0033D5                       2063 ___str_8:
      0033D5 E2                    2064 	.db 0xe2
      0033D6 94                    2065 	.db 0x94
      0033D7 82                    2066 	.db 0x82
      0033D8 20 20 20 20 51 20 20  2067 	.ascii "    Q      "
             20 20 20 20
      0033E3 E2                    2068 	.db 0xe2
      0033E4 94                    2069 	.db 0x94
      0033E5 82                    2070 	.db 0x82
      0033E6 20 47 65 6E 65 72 61  2071 	.ascii " Generate Square Wave                          "
             74 65 20 53 71 75 61
             72 65 20 57 61 76 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003415 E2                    2072 	.db 0xe2
      003416 94                    2073 	.db 0x94
      003417 82                    2074 	.db 0x82
      003418 0A                    2075 	.db 0x0a
      003419 0D                    2076 	.db 0x0d
      00341A 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      00341B                       2080 ___str_9:
      00341B E2                    2081 	.db 0xe2
      00341C 94                    2082 	.db 0x94
      00341D 82                    2083 	.db 0x82
      00341E 20 20 20 20 54 20 20  2084 	.ascii "    T      "
             20 20 20 20
      003429 E2                    2085 	.db 0xe2
      00342A 94                    2086 	.db 0x94
      00342B 82                    2087 	.db 0x82
      00342C 20 47 65 6E 65 72 61  2088 	.ascii " Generate Triangular Wave                      "
             74 65 20 54 72 69 61
             6E 67 75 6C 61 72 20
             57 61 76 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00345B E2                    2089 	.db 0xe2
      00345C 94                    2090 	.db 0x94
      00345D 82                    2091 	.db 0x82
      00345E 0A                    2092 	.db 0x0a
      00345F 0D                    2093 	.db 0x0d
      003460 00                    2094 	.db 0x00
                                   2095 	.area CSEG    (CODE)
                                   2096 	.area CONST   (CODE)
      003461                       2097 ___str_10:
      003461 E2                    2098 	.db 0xe2
      003462 94                    2099 	.db 0x94
      003463 82                    2100 	.db 0x82
      003464 20 20 20 20 44 20 20  2101 	.ascii "    D      "
             20 20 20 20
      00346F E2                    2102 	.db 0xe2
      003470 94                    2103 	.db 0x94
      003471 82                    2104 	.db 0x82
      003472 20 44 65 6D 6F 20 4D  2105 	.ascii " Demo Mode (Cycle through all waveforms)       "
             6F 64 65 20 28 43 79
             63 6C 65 20 74 68 72
             6F 75 67 68 20 61 6C
             6C 20 77 61 76 65 66
             6F 72 6D 73 29 20 20
             20 20 20 20 20
      0034A1 E2                    2106 	.db 0xe2
      0034A2 94                    2107 	.db 0x94
      0034A3 82                    2108 	.db 0x82
      0034A4 0A                    2109 	.db 0x0a
      0034A5 0D                    2110 	.db 0x0d
      0034A6 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area CONST   (CODE)
      0034A7                       2114 ___str_11:
      0034A7 E2                    2115 	.db 0xe2
      0034A8 94                    2116 	.db 0x94
      0034A9 82                    2117 	.db 0x82
      0034AA 20 20 20 20 43 20 20  2118 	.ascii "    C      "
             20 20 20 20
      0034B5 E2                    2119 	.db 0xe2
      0034B6 94                    2120 	.db 0x94
      0034B7 82                    2121 	.db 0x82
      0034B8 20 43 6F 6E 66 69 67  2122 	.ascii " Configure SPI Parameters                      "
             75 72 65 20 53 50 49
             20 50 61 72 61 6D 65
             74 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0034E7 E2                    2123 	.db 0xe2
      0034E8 94                    2124 	.db 0x94
      0034E9 82                    2125 	.db 0x82
      0034EA 0A                    2126 	.db 0x0a
      0034EB 0D                    2127 	.db 0x0d
      0034EC 00                    2128 	.db 0x00
                                   2129 	.area CSEG    (CODE)
                                   2130 	.area CONST   (CODE)
      0034ED                       2131 ___str_12:
      0034ED E2                    2132 	.db 0xe2
      0034EE 94                    2133 	.db 0x94
      0034EF 82                    2134 	.db 0x82
      0034F0 20 20 20 20 52 20 20  2135 	.ascii "    R      "
             20 20 20 20
      0034FB E2                    2136 	.db 0xe2
      0034FC 94                    2137 	.db 0x94
      0034FD 82                    2138 	.db 0x82
      0034FE 20 52 65 61 64 20 53  2139 	.ascii " Read SPI Data                                 "
             50 49 20 44 61 74 61
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00352D E2                    2140 	.db 0xe2
      00352E 94                    2141 	.db 0x94
      00352F 82                    2142 	.db 0x82
      003530 0A                    2143 	.db 0x0a
      003531 0D                    2144 	.db 0x0d
      003532 00                    2145 	.db 0x00
                                   2146 	.area CSEG    (CODE)
                                   2147 	.area CONST   (CODE)
      003533                       2148 ___str_13:
      003533 E2                    2149 	.db 0xe2
      003534 94                    2150 	.db 0x94
      003535 82                    2151 	.db 0x82
      003536 20 20 20 20 57 20 20  2152 	.ascii "    W      "
             20 20 20 20
      003541 E2                    2153 	.db 0xe2
      003542 94                    2154 	.db 0x94
      003543 82                    2155 	.db 0x82
      003544 20 57 72 69 74 65 20  2156 	.ascii " Write SPI Data                                "
             53 50 49 20 44 61 74
             61 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003573 E2                    2157 	.db 0xe2
      003574 94                    2158 	.db 0x94
      003575 82                    2159 	.db 0x82
      003576 0A                    2160 	.db 0x0a
      003577 0D                    2161 	.db 0x0d
      003578 00                    2162 	.db 0x00
                                   2163 	.area CSEG    (CODE)
                                   2164 	.area CONST   (CODE)
      003579                       2165 ___str_14:
      003579 E2                    2166 	.db 0xe2
      00357A 94                    2167 	.db 0x94
      00357B 82                    2168 	.db 0x82
      00357C 20 20 20 20 3F 20 20  2169 	.ascii "    ?      "
             20 20 20 20
      003587 E2                    2170 	.db 0xe2
      003588 94                    2171 	.db 0x94
      003589 82                    2172 	.db 0x82
      00358A 20 44 69 73 70 6C 61  2173 	.ascii " Display this help menu                        "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0035B9 E2                    2174 	.db 0xe2
      0035BA 94                    2175 	.db 0x94
      0035BB 82                    2176 	.db 0x82
      0035BC 0A                    2177 	.db 0x0a
      0035BD 0D                    2178 	.db 0x0d
      0035BE 00                    2179 	.db 0x00
                                   2180 	.area CSEG    (CODE)
                                   2181 	.area CONST   (CODE)
      0035BF                       2182 ___str_15:
      0035BF E2                    2183 	.db 0xe2
      0035C0 94                    2184 	.db 0x94
      0035C1 82                    2185 	.db 0x82
      0035C2 20 20 20 20 58 20 20  2186 	.ascii "    X      "
             20 20 20 20
      0035CD E2                    2187 	.db 0xe2
      0035CE 94                    2188 	.db 0x94
      0035CF 82                    2189 	.db 0x82
      0035D0 20 45 78 69 74 20 50  2190 	.ascii " Exit Program                                  "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0035FF E2                    2191 	.db 0xe2
      003600 94                    2192 	.db 0x94
      003601 82                    2193 	.db 0x82
      003602 0A                    2194 	.db 0x0a
      003603 0D                    2195 	.db 0x0d
      003604 00                    2196 	.db 0x00
                                   2197 	.area CSEG    (CODE)
                                   2198 	.area CONST   (CODE)
      003605                       2199 ___str_16:
      003605 E2                    2200 	.db 0xe2
      003606 94                    2201 	.db 0x94
      003607 94                    2202 	.db 0x94
      003608 E2                    2203 	.db 0xe2
      003609 94                    2204 	.db 0x94
      00360A 80                    2205 	.db 0x80
      00360B E2                    2206 	.db 0xe2
      00360C 94                    2207 	.db 0x94
      00360D 80                    2208 	.db 0x80
      00360E E2                    2209 	.db 0xe2
      00360F 94                    2210 	.db 0x94
      003610 80                    2211 	.db 0x80
      003611 E2                    2212 	.db 0xe2
      003612 94                    2213 	.db 0x94
      003613 80                    2214 	.db 0x80
      003614 E2                    2215 	.db 0xe2
      003615 94                    2216 	.db 0x94
      003616 80                    2217 	.db 0x80
      003617 E2                    2218 	.db 0xe2
      003618 94                    2219 	.db 0x94
      003619 80                    2220 	.db 0x80
      00361A E2                    2221 	.db 0xe2
      00361B 94                    2222 	.db 0x94
      00361C 80                    2223 	.db 0x80
      00361D E2                    2224 	.db 0xe2
      00361E 94                    2225 	.db 0x94
      00361F 80                    2226 	.db 0x80
      003620 E2                    2227 	.db 0xe2
      003621 94                    2228 	.db 0x94
      003622 80                    2229 	.db 0x80
      003623 E2                    2230 	.db 0xe2
      003624 94                    2231 	.db 0x94
      003625 80                    2232 	.db 0x80
      003626 E2                    2233 	.db 0xe2
      003627 94                    2234 	.db 0x94
      003628 80                    2235 	.db 0x80
      003629 E2                    2236 	.db 0xe2
      00362A 94                    2237 	.db 0x94
      00362B B4                    2238 	.db 0xb4
      00362C E2                    2239 	.db 0xe2
      00362D 94                    2240 	.db 0x94
      00362E 80                    2241 	.db 0x80
      00362F E2                    2242 	.db 0xe2
      003630 94                    2243 	.db 0x94
      003631 80                    2244 	.db 0x80
      003632 E2                    2245 	.db 0xe2
      003633 94                    2246 	.db 0x94
      003634 80                    2247 	.db 0x80
      003635 E2                    2248 	.db 0xe2
      003636 94                    2249 	.db 0x94
      003637 80                    2250 	.db 0x80
      003638 E2                    2251 	.db 0xe2
      003639 94                    2252 	.db 0x94
      00363A 80                    2253 	.db 0x80
      00363B E2                    2254 	.db 0xe2
      00363C 94                    2255 	.db 0x94
      00363D 80                    2256 	.db 0x80
      00363E E2                    2257 	.db 0xe2
      00363F 94                    2258 	.db 0x94
      003640 80                    2259 	.db 0x80
      003641 E2                    2260 	.db 0xe2
      003642 94                    2261 	.db 0x94
      003643 80                    2262 	.db 0x80
      003644 E2                    2263 	.db 0xe2
      003645 94                    2264 	.db 0x94
      003646 80                    2265 	.db 0x80
      003647 E2                    2266 	.db 0xe2
      003648 94                    2267 	.db 0x94
      003649 80                    2268 	.db 0x80
      00364A E2                    2269 	.db 0xe2
      00364B 94                    2270 	.db 0x94
      00364C 80                    2271 	.db 0x80
      00364D E2                    2272 	.db 0xe2
      00364E 94                    2273 	.db 0x94
      00364F 80                    2274 	.db 0x80
      003650 E2                    2275 	.db 0xe2
      003651 94                    2276 	.db 0x94
      003652 80                    2277 	.db 0x80
      003653 E2                    2278 	.db 0xe2
      003654 94                    2279 	.db 0x94
      003655 80                    2280 	.db 0x80
      003656 E2                    2281 	.db 0xe2
      003657 94                    2282 	.db 0x94
      003658 80                    2283 	.db 0x80
      003659 E2                    2284 	.db 0xe2
      00365A 94                    2285 	.db 0x94
      00365B 80                    2286 	.db 0x80
      00365C E2                    2287 	.db 0xe2
      00365D 94                    2288 	.db 0x94
      00365E 80                    2289 	.db 0x80
      00365F E2                    2290 	.db 0xe2
      003660 94                    2291 	.db 0x94
      003661 80                    2292 	.db 0x80
      003662 E2                    2293 	.db 0xe2
      003663 94                    2294 	.db 0x94
      003664 80                    2295 	.db 0x80
      003665 E2                    2296 	.db 0xe2
      003666 94                    2297 	.db 0x94
      003667 80                    2298 	.db 0x80
      003668 E2                    2299 	.db 0xe2
      003669 94                    2300 	.db 0x94
      00366A 80                    2301 	.db 0x80
      00366B E2                    2302 	.db 0xe2
      00366C 94                    2303 	.db 0x94
      00366D 80                    2304 	.db 0x80
      00366E E2                    2305 	.db 0xe2
      00366F 94                    2306 	.db 0x94
      003670 80                    2307 	.db 0x80
      003671 E2                    2308 	.db 0xe2
      003672 94                    2309 	.db 0x94
      003673 80                    2310 	.db 0x80
      003674 E2                    2311 	.db 0xe2
      003675 94                    2312 	.db 0x94
      003676 80                    2313 	.db 0x80
      003677 E2                    2314 	.db 0xe2
      003678 94                    2315 	.db 0x94
      003679 80                    2316 	.db 0x80
      00367A E2                    2317 	.db 0xe2
      00367B 94                    2318 	.db 0x94
      00367C 80                    2319 	.db 0x80
      00367D E2                    2320 	.db 0xe2
      00367E 94                    2321 	.db 0x94
      00367F 80                    2322 	.db 0x80
      003680 E2                    2323 	.db 0xe2
      003681 94                    2324 	.db 0x94
      003682 80                    2325 	.db 0x80
      003683 E2                    2326 	.db 0xe2
      003684 94                    2327 	.db 0x94
      003685 80                    2328 	.db 0x80
      003686 E2                    2329 	.db 0xe2
      003687 94                    2330 	.db 0x94
      003688 80                    2331 	.db 0x80
      003689 E2                    2332 	.db 0xe2
      00368A 94                    2333 	.db 0x94
      00368B 80                    2334 	.db 0x80
      00368C E2                    2335 	.db 0xe2
      00368D 94                    2336 	.db 0x94
      00368E 80                    2337 	.db 0x80
      00368F E2                    2338 	.db 0xe2
      003690 94                    2339 	.db 0x94
      003691 80                    2340 	.db 0x80
      003692 E2                    2341 	.db 0xe2
      003693 94                    2342 	.db 0x94
      003694 80                    2343 	.db 0x80
      003695 E2                    2344 	.db 0xe2
      003696 94                    2345 	.db 0x94
      003697 80                    2346 	.db 0x80
      003698 E2                    2347 	.db 0xe2
      003699 94                    2348 	.db 0x94
      00369A 80                    2349 	.db 0x80
      00369B E2                    2350 	.db 0xe2
      00369C 94                    2351 	.db 0x94
      00369D 80                    2352 	.db 0x80
      00369E E2                    2353 	.db 0xe2
      00369F 94                    2354 	.db 0x94
      0036A0 80                    2355 	.db 0x80
      0036A1 E2                    2356 	.db 0xe2
      0036A2 94                    2357 	.db 0x94
      0036A3 80                    2358 	.db 0x80
      0036A4 E2                    2359 	.db 0xe2
      0036A5 94                    2360 	.db 0x94
      0036A6 80                    2361 	.db 0x80
      0036A7 E2                    2362 	.db 0xe2
      0036A8 94                    2363 	.db 0x94
      0036A9 80                    2364 	.db 0x80
      0036AA E2                    2365 	.db 0xe2
      0036AB 94                    2366 	.db 0x94
      0036AC 80                    2367 	.db 0x80
      0036AD E2                    2368 	.db 0xe2
      0036AE 94                    2369 	.db 0x94
      0036AF 80                    2370 	.db 0x80
      0036B0 E2                    2371 	.db 0xe2
      0036B1 94                    2372 	.db 0x94
      0036B2 80                    2373 	.db 0x80
      0036B3 E2                    2374 	.db 0xe2
      0036B4 94                    2375 	.db 0x94
      0036B5 80                    2376 	.db 0x80
      0036B6 E2                    2377 	.db 0xe2
      0036B7 94                    2378 	.db 0x94
      0036B8 80                    2379 	.db 0x80
      0036B9 E2                    2380 	.db 0xe2
      0036BA 94                    2381 	.db 0x94
      0036BB 98                    2382 	.db 0x98
      0036BC 0A                    2383 	.db 0x0a
      0036BD 0D                    2384 	.db 0x0d
      0036BE 00                    2385 	.db 0x00
                                   2386 	.area CSEG    (CODE)
                                   2387 	.area CONST   (CODE)
      0036BF                       2388 ___str_17:
      0036BF 0A                    2389 	.db 0x0a
      0036C0 0D                    2390 	.db 0x0d
      0036C1 45 6E 74 65 72 20 63  2391 	.ascii "Enter command: "
             6F 6D 6D 61 6E 64 3A
             20
      0036D0 00                    2392 	.db 0x00
                                   2393 	.area CSEG    (CODE)
                                   2394 	.area CONST   (CODE)
      0036D1                       2395 ___str_18:
      0036D1 7C 20 24 20 25 63     2396 	.ascii "| $ %c"
      0036D7 0A                    2397 	.db 0x0a
      0036D8 0D                    2398 	.db 0x0d
      0036D9 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
                                   2401 	.area CONST   (CODE)
      0036DA                       2402 ___str_19:
      0036DA 0A                    2403 	.db 0x0a
      0036DB 0D                    2404 	.db 0x0d
      0036DC 00                    2405 	.db 0x00
                                   2406 	.area CSEG    (CODE)
                                   2407 	.area CONST   (CODE)
      0036DD                       2408 ___str_20:
      0036DD 45 4E 54 45 52 20 54  2409 	.ascii "ENTER THE VALUE OF n"
             48 45 20 56 41 4C 55
             45 20 4F 46 20 6E
      0036F1 0A                    2410 	.db 0x0a
      0036F2 0D                    2411 	.db 0x0d
      0036F3 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      0036F4                       2415 ___str_21:
      0036F4 53 49 4E 20 57 41 56  2416 	.ascii "SIN WAVE DONE"
             45 20 44 4F 4E 45
      003701 0A                    2417 	.db 0x0a
      003702 0D                    2418 	.db 0x0d
      003703 00                    2419 	.db 0x00
                                   2420 	.area CSEG    (CODE)
                                   2421 	.area XINIT   (CODE)
      00370F                       2422 __xinit__ms_flag:
      00370F 00                    2423 	.db #0x00	; 0
      003710                       2424 __xinit__transmission_complete:
      003710 00 00                 2425 	.byte #0x00, #0x00	;  0
                                   2426 	.area CABS    (ABS,CODE)
