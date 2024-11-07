                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module 8051_i2c_eeprom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _test_function
                                     12 	.globl _main
                                     13 	.globl _command_menu
                                     14 	.globl _ui
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
                                    214 	.globl _eeprom_write_PARM_2
                                    215 	.globl _ACK
                                    216 	.globl _take_address
                                    217 	.globl _take_data
                                    218 	.globl _eeprom_write
                                    219 	.globl _eeprom_read
                                    220 	.globl _i2c_write
                                    221 	.globl _i2c_read
                                    222 	.globl _i2c_start
                                    223 	.globl _i2c_stop
                                    224 	.globl _i2c_delay
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           000080   230 _P0	=	0x0080
                           000081   231 _SP	=	0x0081
                           000082   232 _DPL	=	0x0082
                           000083   233 _DPH	=	0x0083
                           000087   234 _PCON	=	0x0087
                           000088   235 _TCON	=	0x0088
                           000089   236 _TMOD	=	0x0089
                           00008A   237 _TL0	=	0x008a
                           00008B   238 _TL1	=	0x008b
                           00008C   239 _TH0	=	0x008c
                           00008D   240 _TH1	=	0x008d
                           000090   241 _P1	=	0x0090
                           000098   242 _SCON	=	0x0098
                           000099   243 _SBUF	=	0x0099
                           0000A0   244 _P2	=	0x00a0
                           0000A8   245 _IE	=	0x00a8
                           0000B0   246 _P3	=	0x00b0
                           0000B8   247 _IP	=	0x00b8
                           0000D0   248 _PSW	=	0x00d0
                           0000E0   249 _ACC	=	0x00e0
                           0000F0   250 _B	=	0x00f0
                           0000C8   251 _T2CON	=	0x00c8
                           0000CA   252 _RCAP2L	=	0x00ca
                           0000CB   253 _RCAP2H	=	0x00cb
                           0000CC   254 _TL2	=	0x00cc
                           0000CD   255 _TH2	=	0x00cd
                           00008E   256 _AUXR	=	0x008e
                           0000A2   257 _AUXR1	=	0x00a2
                           000097   258 _CKRL	=	0x0097
                           00008F   259 _CKCON0	=	0x008f
                           0000AF   260 _CKCON1	=	0x00af
                           0000FA   261 _CCAP0H	=	0x00fa
                           0000FB   262 _CCAP1H	=	0x00fb
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 _CCAP3H	=	0x00fd
                           0000FE   265 _CCAP4H	=	0x00fe
                           0000EA   266 _CCAP0L	=	0x00ea
                           0000EB   267 _CCAP1L	=	0x00eb
                           0000EC   268 _CCAP2L	=	0x00ec
                           0000ED   269 _CCAP3L	=	0x00ed
                           0000EE   270 _CCAP4L	=	0x00ee
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 _CCAPM1	=	0x00db
                           0000DC   273 _CCAPM2	=	0x00dc
                           0000DD   274 _CCAPM3	=	0x00dd
                           0000DE   275 _CCAPM4	=	0x00de
                           0000D8   276 _CCON	=	0x00d8
                           0000F9   277 _CH	=	0x00f9
                           0000E9   278 _CL	=	0x00e9
                           0000D9   279 _CMOD	=	0x00d9
                           0000A8   280 _IEN0	=	0x00a8
                           0000B1   281 _IEN1	=	0x00b1
                           0000B8   282 _IPL0	=	0x00b8
                           0000B7   283 _IPH0	=	0x00b7
                           0000B2   284 _IPL1	=	0x00b2
                           0000B3   285 _IPH1	=	0x00b3
                           0000C0   286 _P4	=	0x00c0
                           0000E8   287 _P5	=	0x00e8
                           0000A6   288 _WDTRST	=	0x00a6
                           0000A7   289 _WDTPRG	=	0x00a7
                           0000A9   290 _SADDR	=	0x00a9
                           0000B9   291 _SADEN	=	0x00b9
                           0000C3   292 _SPCON	=	0x00c3
                           0000C4   293 _SPSTA	=	0x00c4
                           0000C5   294 _SPDAT	=	0x00c5
                           0000C9   295 _T2MOD	=	0x00c9
                           00009B   296 _BDRCON	=	0x009b
                           00009A   297 _BRL	=	0x009a
                           00009C   298 _KBLS	=	0x009c
                           00009D   299 _KBE	=	0x009d
                           00009E   300 _KBF	=	0x009e
                           0000D2   301 _EECON	=	0x00d2
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           000080   307 _P0_0	=	0x0080
                           000081   308 _P0_1	=	0x0081
                           000082   309 _P0_2	=	0x0082
                           000083   310 _P0_3	=	0x0083
                           000084   311 _P0_4	=	0x0084
                           000085   312 _P0_5	=	0x0085
                           000086   313 _P0_6	=	0x0086
                           000087   314 _P0_7	=	0x0087
                           000088   315 _IT0	=	0x0088
                           000089   316 _IE0	=	0x0089
                           00008A   317 _IT1	=	0x008a
                           00008B   318 _IE1	=	0x008b
                           00008C   319 _TR0	=	0x008c
                           00008D   320 _TF0	=	0x008d
                           00008E   321 _TR1	=	0x008e
                           00008F   322 _TF1	=	0x008f
                           000090   323 _P1_0	=	0x0090
                           000091   324 _P1_1	=	0x0091
                           000092   325 _P1_2	=	0x0092
                           000093   326 _P1_3	=	0x0093
                           000094   327 _P1_4	=	0x0094
                           000095   328 _P1_5	=	0x0095
                           000096   329 _P1_6	=	0x0096
                           000097   330 _P1_7	=	0x0097
                           000098   331 _RI	=	0x0098
                           000099   332 _TI	=	0x0099
                           00009A   333 _RB8	=	0x009a
                           00009B   334 _TB8	=	0x009b
                           00009C   335 _REN	=	0x009c
                           00009D   336 _SM2	=	0x009d
                           00009E   337 _SM1	=	0x009e
                           00009F   338 _SM0	=	0x009f
                           0000A0   339 _P2_0	=	0x00a0
                           0000A1   340 _P2_1	=	0x00a1
                           0000A2   341 _P2_2	=	0x00a2
                           0000A3   342 _P2_3	=	0x00a3
                           0000A4   343 _P2_4	=	0x00a4
                           0000A5   344 _P2_5	=	0x00a5
                           0000A6   345 _P2_6	=	0x00a6
                           0000A7   346 _P2_7	=	0x00a7
                           0000A8   347 _EX0	=	0x00a8
                           0000A9   348 _ET0	=	0x00a9
                           0000AA   349 _EX1	=	0x00aa
                           0000AB   350 _ET1	=	0x00ab
                           0000AC   351 _ES	=	0x00ac
                           0000AF   352 _EA	=	0x00af
                           0000B0   353 _P3_0	=	0x00b0
                           0000B1   354 _P3_1	=	0x00b1
                           0000B2   355 _P3_2	=	0x00b2
                           0000B3   356 _P3_3	=	0x00b3
                           0000B4   357 _P3_4	=	0x00b4
                           0000B5   358 _P3_5	=	0x00b5
                           0000B6   359 _P3_6	=	0x00b6
                           0000B7   360 _P3_7	=	0x00b7
                           0000B0   361 _RXD	=	0x00b0
                           0000B1   362 _TXD	=	0x00b1
                           0000B2   363 _INT0	=	0x00b2
                           0000B3   364 _INT1	=	0x00b3
                           0000B4   365 _T0	=	0x00b4
                           0000B5   366 _T1	=	0x00b5
                           0000B6   367 _WR	=	0x00b6
                           0000B7   368 _RD	=	0x00b7
                           0000B8   369 _PX0	=	0x00b8
                           0000B9   370 _PT0	=	0x00b9
                           0000BA   371 _PX1	=	0x00ba
                           0000BB   372 _PT1	=	0x00bb
                           0000BC   373 _PS	=	0x00bc
                           0000D0   374 _P	=	0x00d0
                           0000D1   375 _F1	=	0x00d1
                           0000D2   376 _OV	=	0x00d2
                           0000D3   377 _RS0	=	0x00d3
                           0000D4   378 _RS1	=	0x00d4
                           0000D5   379 _F0	=	0x00d5
                           0000D6   380 _AC	=	0x00d6
                           0000D7   381 _CY	=	0x00d7
                           0000AD   382 _ET2	=	0x00ad
                           0000BD   383 _PT2	=	0x00bd
                           0000C8   384 _T2CON_0	=	0x00c8
                           0000C9   385 _T2CON_1	=	0x00c9
                           0000CA   386 _T2CON_2	=	0x00ca
                           0000CB   387 _T2CON_3	=	0x00cb
                           0000CC   388 _T2CON_4	=	0x00cc
                           0000CD   389 _T2CON_5	=	0x00cd
                           0000CE   390 _T2CON_6	=	0x00ce
                           0000CF   391 _T2CON_7	=	0x00cf
                           0000C8   392 _CP_RL2	=	0x00c8
                           0000C9   393 _C_T2	=	0x00c9
                           0000CA   394 _TR2	=	0x00ca
                           0000CB   395 _EXEN2	=	0x00cb
                           0000CC   396 _TCLK	=	0x00cc
                           0000CD   397 _RCLK	=	0x00cd
                           0000CE   398 _EXF2	=	0x00ce
                           0000CF   399 _TF2	=	0x00cf
                           0000DF   400 _CF	=	0x00df
                           0000DE   401 _CR	=	0x00de
                           0000DC   402 _CCF4	=	0x00dc
                           0000DB   403 _CCF3	=	0x00db
                           0000DA   404 _CCF2	=	0x00da
                           0000D9   405 _CCF1	=	0x00d9
                           0000D8   406 _CCF0	=	0x00d8
                           0000AE   407 _EC	=	0x00ae
                           0000BE   408 _PPCL	=	0x00be
                           0000BD   409 _PT2L	=	0x00bd
                           0000BC   410 _PSL	=	0x00bc
                           0000BB   411 _PT1L	=	0x00bb
                           0000BA   412 _PX1L	=	0x00ba
                           0000B9   413 _PT0L	=	0x00b9
                           0000B8   414 _PX0L	=	0x00b8
                           0000C0   415 _P4_0	=	0x00c0
                           0000C1   416 _P4_1	=	0x00c1
                           0000C2   417 _P4_2	=	0x00c2
                           0000C3   418 _P4_3	=	0x00c3
                           0000C4   419 _P4_4	=	0x00c4
                           0000C5   420 _P4_5	=	0x00c5
                           0000C6   421 _P4_6	=	0x00c6
                           0000C7   422 _P4_7	=	0x00c7
                           0000E8   423 _P5_0	=	0x00e8
                           0000E9   424 _P5_1	=	0x00e9
                           0000EA   425 _P5_2	=	0x00ea
                           0000EB   426 _P5_3	=	0x00eb
                           0000EC   427 _P5_4	=	0x00ec
                           0000ED   428 _P5_5	=	0x00ed
                           0000EE   429 _P5_6	=	0x00ee
                           0000EF   430 _P5_7	=	0x00ef
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area DSEG    (DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable items in internal ram 
                                    442 ;--------------------------------------------------------
                                    443 ;--------------------------------------------------------
                                    444 ; Stack segment in internal ram 
                                    445 ;--------------------------------------------------------
                                    446 	.area	SSEG
      000014                        447 __start__stack:
      000014                        448 	.ds	1
                                    449 
                                    450 ;--------------------------------------------------------
                                    451 ; indirectly addressable internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area ISEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; absolute internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area IABS    (ABS,DATA)
                                    458 	.area IABS    (ABS,DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; bit data
                                    461 ;--------------------------------------------------------
                                    462 	.area BSEG    (BIT)
                                    463 ;--------------------------------------------------------
                                    464 ; paged external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area PSEG    (PAG,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XSEG    (XDATA)
      000400                        471 _ACK::
      000400                        472 	.ds 2
      000402                        473 _putchar_charToSend_65536_48:
      000402                        474 	.ds 2
      000404                        475 _take_address_input_65537_65:
      000404                        476 	.ds 4
      000408                        477 _take_address_address_65538_69:
      000408                        478 	.ds 2
      00040A                        479 _take_data_input_65537_75:
      00040A                        480 	.ds 4
      00040E                        481 _take_data_data_65538_79:
      00040E                        482 	.ds 1
      00040F                        483 _eeprom_write_PARM_2:
      00040F                        484 	.ds 1
      000410                        485 _eeprom_write_address_65536_83:
      000410                        486 	.ds 2
      000412                        487 _eeprom_read_address_65536_91:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_98:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_103:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_104:
      000417                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
      000451                        503 _address_range_flag:
      000451                        504 	.ds 2
      000453                        505 _data_range_flag:
      000453                        506 	.ds 2
      000455                        507 _block:
      000455                        508 	.ds 2
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT0 (CODE)
                                    511 	.area GSINIT1 (CODE)
                                    512 	.area GSINIT2 (CODE)
                                    513 	.area GSINIT3 (CODE)
                                    514 	.area GSINIT4 (CODE)
                                    515 	.area GSINIT5 (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area CSEG    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; interrupt vector 
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
      003000                        523 __interrupt_vect:
      003000 02 30 06         [24]  524 	ljmp	__sdcc_gsinit_startup
                                    525 ;--------------------------------------------------------
                                    526 ; global & static initialisations
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.globl __sdcc_gsinit_startup
                                    533 	.globl __sdcc_program_startup
                                    534 	.globl __start__stack
                                    535 	.globl __mcs51_genXINIT
                                    536 	.globl __mcs51_genXRAMCLEAR
                                    537 	.globl __mcs51_genRAMCLEAR
                                    538 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  539 	ljmp	__sdcc_program_startup
                                    540 ;--------------------------------------------------------
                                    541 ; Home
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area HOME    (CODE)
      003003                        545 __sdcc_program_startup:
      003003 02 31 A2         [24]  546 	ljmp	_main
                                    547 ;	return from main will return to caller
                                    548 ;--------------------------------------------------------
                                    549 ; code
                                    550 ;--------------------------------------------------------
                                    551 	.area CSEG    (CODE)
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'putchar'
                                    554 ;------------------------------------------------------------
                                    555 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    556 ;------------------------------------------------------------
                                    557 ;	8051_i2c_eeprom.c:30: int putchar(int charToSend) {
                                    558 ;	-----------------------------------------
                                    559 ;	 function putchar
                                    560 ;	-----------------------------------------
      003062                        561 _putchar:
                           000007   562 	ar7 = 0x07
                           000006   563 	ar6 = 0x06
                           000005   564 	ar5 = 0x05
                           000004   565 	ar4 = 0x04
                           000003   566 	ar3 = 0x03
                           000002   567 	ar2 = 0x02
                           000001   568 	ar1 = 0x01
                           000000   569 	ar0 = 0x00
      003062 AF 83            [24]  570 	mov	r7,dph
      003064 E5 82            [12]  571 	mov	a,dpl
      003066 90 04 02         [24]  572 	mov	dptr,#_putchar_charToSend_65536_48
      003069 F0               [24]  573 	movx	@dptr,a
      00306A EF               [12]  574 	mov	a,r7
      00306B A3               [24]  575 	inc	dptr
      00306C F0               [24]  576 	movx	@dptr,a
                                    577 ;	8051_i2c_eeprom.c:31: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  578 	mov	dptr,#_putchar_charToSend_65536_48
      003070 E0               [24]  579 	movx	a,@dptr
      003071 FE               [12]  580 	mov	r6,a
      003072 A3               [24]  581 	inc	dptr
      003073 E0               [24]  582 	movx	a,@dptr
      003074 FF               [12]  583 	mov	r7,a
      003075 8E 99            [24]  584 	mov	_SBUF,r6
                                    585 ;	8051_i2c_eeprom.c:32: while (!TI);        // Wait for transmission to complete
      003077                        586 00101$:
                                    587 ;	8051_i2c_eeprom.c:33: TI = 0;            // Clear transmission interrupt flag
                                    588 ;	assignBit
      003077 10 99 02         [24]  589 	jbc	_TI,00114$
      00307A 80 FB            [24]  590 	sjmp	00101$
      00307C                        591 00114$:
                                    592 ;	8051_i2c_eeprom.c:34: return charToSend;
      00307C 8E 82            [24]  593 	mov	dpl,r6
      00307E 8F 83            [24]  594 	mov	dph,r7
                                    595 ;	8051_i2c_eeprom.c:35: }
      003080 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'getchar'
                                    599 ;------------------------------------------------------------
                                    600 ;	8051_i2c_eeprom.c:37: int getchar(void) 
                                    601 ;	-----------------------------------------
                                    602 ;	 function getchar
                                    603 ;	-----------------------------------------
      003081                        604 _getchar:
                                    605 ;	8051_i2c_eeprom.c:39: while (!RI);        // Wait for reception to complete
      003081                        606 00101$:
                                    607 ;	8051_i2c_eeprom.c:40: RI = 0;            // Clear reception interrupt flag
                                    608 ;	assignBit
      003081 10 98 02         [24]  609 	jbc	_RI,00114$
      003084 80 FB            [24]  610 	sjmp	00101$
      003086                        611 00114$:
                                    612 ;	8051_i2c_eeprom.c:41: return SBUF;       // Return received character
      003086 AE 99            [24]  613 	mov	r6,_SBUF
      003088 7F 00            [12]  614 	mov	r7,#0x00
      00308A 8E 82            [24]  615 	mov	dpl,r6
      00308C 8F 83            [24]  616 	mov	dph,r7
                                    617 ;	8051_i2c_eeprom.c:42: }
      00308E 22               [24]  618 	ret
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'ui'
                                    621 ;------------------------------------------------------------
                                    622 ;	8051_i2c_eeprom.c:44: void ui()
                                    623 ;	-----------------------------------------
                                    624 ;	 function ui
                                    625 ;	-----------------------------------------
      00308F                        626 _ui:
                                    627 ;	8051_i2c_eeprom.c:46: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 0A            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 46            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B A8         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 BC            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B A8         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 FD            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B A8         [24]  656 	lcall	_printf
      0030C8 15 81            [12]  657 	dec	sp
      0030CA 15 81            [12]  658 	dec	sp
      0030CC 15 81            [12]  659 	dec	sp
                                    660 ;	8051_i2c_eeprom.c:50: }
      0030CE 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'command_menu'
                                    664 ;------------------------------------------------------------
                                    665 ;	8051_i2c_eeprom.c:52: void command_menu()
                                    666 ;	-----------------------------------------
                                    667 ;	 function command_menu
                                    668 ;	-----------------------------------------
      0030CF                        669 _command_menu:
                                    670 ;	8051_i2c_eeprom.c:54: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 AE            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B A8         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 64            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 48            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B A8         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 A8            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B A8         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 5C            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 49            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B A8         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 A0            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B A8         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 E4            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B A8         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 28            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 4A            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B A8         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 6C            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B A8         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 B0            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B A8         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 F4            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B A8         [24]  776 	lcall	_printf
      00319B 15 81            [12]  777 	dec	sp
      00319D 15 81            [12]  778 	dec	sp
      00319F 15 81            [12]  779 	dec	sp
                                    780 ;	8051_i2c_eeprom.c:66: }
      0031A1 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'main'
                                    784 ;------------------------------------------------------------
                                    785 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    786 ;addr                      Allocated with name '_main_addr_262145_58'
                                    787 ;data                      Allocated with name '_main_data_262146_60'
                                    788 ;addr                      Allocated with name '_main_addr_262145_63'
                                    789 ;------------------------------------------------------------
                                    790 ;	8051_i2c_eeprom.c:67: int main()
                                    791 ;	-----------------------------------------
                                    792 ;	 function main
                                    793 ;	-----------------------------------------
      0031A2                        794 _main:
                                    795 ;	8051_i2c_eeprom.c:70: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  796 	anl	_P1,#0xf7
                                    797 ;	8051_i2c_eeprom.c:71: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  798 	anl	_P1,#0xef
                                    799 ;	8051_i2c_eeprom.c:72: ui();
      0031A8 12 30 8F         [24]  800 	lcall	_ui
                                    801 ;	8051_i2c_eeprom.c:73: command_menu();
      0031AB 12 30 CF         [24]  802 	lcall	_command_menu
                                    803 ;	8051_i2c_eeprom.c:74: i2c_start();
      0031AE 12 3A 69         [24]  804 	lcall	_i2c_start
                                    805 ;	8051_i2c_eeprom.c:75: while(1)
      0031B1                        806 00111$:
                                    807 ;	8051_i2c_eeprom.c:77: char user_input = getchar();
      0031B1 12 30 81         [24]  808 	lcall	_getchar
      0031B4 AE 82            [24]  809 	mov	r6,dpl
                                    810 ;	8051_i2c_eeprom.c:78: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  811 	mov	ar5,r6
      0031B8 7F 00            [12]  812 	mov	r7,#0x00
      0031BA C0 06            [24]  813 	push	ar6
      0031BC C0 05            [24]  814 	push	ar5
      0031BE C0 07            [24]  815 	push	ar7
      0031C0 74 A8            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B A8         [24]  822 	lcall	_printf
      0031CF E5 81            [12]  823 	mov	a,sp
      0031D1 24 FB            [12]  824 	add	a,#0xfb
      0031D3 F5 81            [12]  825 	mov	sp,a
      0031D5 D0 06            [24]  826 	pop	ar6
                                    827 ;	8051_i2c_eeprom.c:79: switch(user_input)
      0031D7 BE 3F 03         [24]  828 	cjne	r6,#0x3f,00139$
      0031DA 02 32 98         [24]  829 	ljmp	00107$
      0031DD                        830 00139$:
      0031DD BE 52 02         [24]  831 	cjne	r6,#0x52,00140$
      0031E0 80 6F            [24]  832 	sjmp	00106$
      0031E2                        833 00140$:
      0031E2 BE 57 02         [24]  834 	cjne	r6,#0x57,00141$
      0031E5 80 03            [24]  835 	sjmp	00142$
      0031E7                        836 00141$:
      0031E7 02 32 9E         [24]  837 	ljmp	00108$
      0031EA                        838 00142$:
                                    839 ;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EA 74 B1            [12]  840 	mov	a,#___str_14
      0031EC C0 E0            [24]  841 	push	acc
      0031EE 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  843 	push	acc
      0031F2 74 80            [12]  844 	mov	a,#0x80
      0031F4 C0 E0            [24]  845 	push	acc
      0031F6 12 3B A8         [24]  846 	lcall	_printf
      0031F9 15 81            [12]  847 	dec	sp
      0031FB 15 81            [12]  848 	dec	sp
      0031FD 15 81            [12]  849 	dec	sp
                                    850 ;	8051_i2c_eeprom.c:85: addr = take_address();
      0031FF 12 32 B6         [24]  851 	lcall	_take_address
      003202 AE 82            [24]  852 	mov	r6,dpl
      003204 AF 83            [24]  853 	mov	r7,dph
                                    854 ;	8051_i2c_eeprom.c:86: if(!address_range_flag) 
      003206 90 04 51         [24]  855 	mov	dptr,#_address_range_flag
      003209 E0               [24]  856 	movx	a,@dptr
      00320A F5 F0            [12]  857 	mov	b,a
      00320C A3               [24]  858 	inc	dptr
      00320D E0               [24]  859 	movx	a,@dptr
      00320E 45 F0            [12]  860 	orl	a,b
      003210 70 0B            [24]  861 	jnz	00103$
                                    862 ;	8051_i2c_eeprom.c:88: address_range_flag = 1;
      003212 90 04 51         [24]  863 	mov	dptr,#_address_range_flag
      003215 74 01            [12]  864 	mov	a,#0x01
      003217 F0               [24]  865 	movx	@dptr,a
      003218 E4               [12]  866 	clr	a
      003219 A3               [24]  867 	inc	dptr
      00321A F0               [24]  868 	movx	@dptr,a
                                    869 ;	8051_i2c_eeprom.c:89: break;
      00321B 80 94            [24]  870 	sjmp	00111$
      00321D                        871 00103$:
                                    872 ;	8051_i2c_eeprom.c:92: data = take_data();
      00321D C0 07            [24]  873 	push	ar7
      00321F C0 06            [24]  874 	push	ar6
      003221 12 34 CF         [24]  875 	lcall	_take_data
      003224 AD 82            [24]  876 	mov	r5,dpl
      003226 D0 06            [24]  877 	pop	ar6
      003228 D0 07            [24]  878 	pop	ar7
                                    879 ;	8051_i2c_eeprom.c:93: if(!data_range_flag) 
      00322A 90 04 53         [24]  880 	mov	dptr,#_data_range_flag
      00322D E0               [24]  881 	movx	a,@dptr
      00322E F5 F0            [12]  882 	mov	b,a
      003230 A3               [24]  883 	inc	dptr
      003231 E0               [24]  884 	movx	a,@dptr
      003232 45 F0            [12]  885 	orl	a,b
      003234 70 0C            [24]  886 	jnz	00105$
                                    887 ;	8051_i2c_eeprom.c:95: data_range_flag = 1;
      003236 90 04 53         [24]  888 	mov	dptr,#_data_range_flag
      003239 74 01            [12]  889 	mov	a,#0x01
      00323B F0               [24]  890 	movx	@dptr,a
      00323C E4               [12]  891 	clr	a
      00323D A3               [24]  892 	inc	dptr
      00323E F0               [24]  893 	movx	@dptr,a
                                    894 ;	8051_i2c_eeprom.c:96: break;
      00323F 02 31 B1         [24]  895 	ljmp	00111$
      003242                        896 00105$:
                                    897 ;	8051_i2c_eeprom.c:98: eeprom_write(addr, data);
      003242 90 04 0F         [24]  898 	mov	dptr,#_eeprom_write_PARM_2
      003245 ED               [12]  899 	mov	a,r5
      003246 F0               [24]  900 	movx	@dptr,a
      003247 8E 82            [24]  901 	mov	dpl,r6
      003249 8F 83            [24]  902 	mov	dph,r7
      00324B 12 36 48         [24]  903 	lcall	_eeprom_write
                                    904 ;	8051_i2c_eeprom.c:99: break;
      00324E 02 31 B1         [24]  905 	ljmp	00111$
                                    906 ;	8051_i2c_eeprom.c:101: case 'R':
      003251                        907 00106$:
                                    908 ;	8051_i2c_eeprom.c:103: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003251 74 23            [12]  909 	mov	a,#___str_15
      003253 C0 E0            [24]  910 	push	acc
      003255 74 4C            [12]  911 	mov	a,#(___str_15 >> 8)
      003257 C0 E0            [24]  912 	push	acc
      003259 74 80            [12]  913 	mov	a,#0x80
      00325B C0 E0            [24]  914 	push	acc
      00325D 12 3B A8         [24]  915 	lcall	_printf
      003260 15 81            [12]  916 	dec	sp
      003262 15 81            [12]  917 	dec	sp
      003264 15 81            [12]  918 	dec	sp
                                    919 ;	8051_i2c_eeprom.c:105: addr = take_address(); 
      003266 12 32 B6         [24]  920 	lcall	_take_address
      003269 AE 82            [24]  921 	mov	r6,dpl
      00326B AF 83            [24]  922 	mov	r7,dph
                                    923 ;	8051_i2c_eeprom.c:106: printf("| Reading from Address 0x%03X           |\n\r", addr);
      00326D C0 07            [24]  924 	push	ar7
      00326F C0 06            [24]  925 	push	ar6
      003271 C0 06            [24]  926 	push	ar6
      003273 C0 07            [24]  927 	push	ar7
      003275 74 97            [12]  928 	mov	a,#___str_16
      003277 C0 E0            [24]  929 	push	acc
      003279 74 4C            [12]  930 	mov	a,#(___str_16 >> 8)
      00327B C0 E0            [24]  931 	push	acc
      00327D 74 80            [12]  932 	mov	a,#0x80
      00327F C0 E0            [24]  933 	push	acc
      003281 12 3B A8         [24]  934 	lcall	_printf
      003284 E5 81            [12]  935 	mov	a,sp
      003286 24 FB            [12]  936 	add	a,#0xfb
      003288 F5 81            [12]  937 	mov	sp,a
      00328A D0 06            [24]  938 	pop	ar6
      00328C D0 07            [24]  939 	pop	ar7
                                    940 ;	8051_i2c_eeprom.c:107: eeprom_read(addr);
      00328E 8E 82            [24]  941 	mov	dpl,r6
      003290 8F 83            [24]  942 	mov	dph,r7
      003292 12 37 CA         [24]  943 	lcall	_eeprom_read
                                    944 ;	8051_i2c_eeprom.c:108: break;
      003295 02 31 B1         [24]  945 	ljmp	00111$
                                    946 ;	8051_i2c_eeprom.c:111: case '?':
      003298                        947 00107$:
                                    948 ;	8051_i2c_eeprom.c:112: command_menu();
      003298 12 30 CF         [24]  949 	lcall	_command_menu
                                    950 ;	8051_i2c_eeprom.c:113: break;
      00329B 02 31 B1         [24]  951 	ljmp	00111$
                                    952 ;	8051_i2c_eeprom.c:115: default:
      00329E                        953 00108$:
                                    954 ;	8051_i2c_eeprom.c:116: printf("INVALID INPUT\n\r");
      00329E 74 C3            [12]  955 	mov	a,#___str_17
      0032A0 C0 E0            [24]  956 	push	acc
      0032A2 74 4C            [12]  957 	mov	a,#(___str_17 >> 8)
      0032A4 C0 E0            [24]  958 	push	acc
      0032A6 74 80            [12]  959 	mov	a,#0x80
      0032A8 C0 E0            [24]  960 	push	acc
      0032AA 12 3B A8         [24]  961 	lcall	_printf
      0032AD 15 81            [12]  962 	dec	sp
      0032AF 15 81            [12]  963 	dec	sp
      0032B1 15 81            [12]  964 	dec	sp
                                    965 ;	8051_i2c_eeprom.c:118: }
                                    966 ;	8051_i2c_eeprom.c:121: }
      0032B3 02 31 B1         [24]  967 	ljmp	00111$
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'take_address'
                                    970 ;------------------------------------------------------------
                                    971 ;input                     Allocated with name '_take_address_input_65537_65'
                                    972 ;i                         Allocated with name '_take_address_i_65537_65'
                                    973 ;c                         Allocated with name '_take_address_c_65537_65'
                                    974 ;address                   Allocated with name '_take_address_address_65538_69'
                                    975 ;block                     Allocated with name '_take_address_block_65539_73'
                                    976 ;------------------------------------------------------------
                                    977 ;	8051_i2c_eeprom.c:123: unsigned int take_address() 
                                    978 ;	-----------------------------------------
                                    979 ;	 function take_address
                                    980 ;	-----------------------------------------
      0032B6                        981 _take_address:
                                    982 ;	8051_i2c_eeprom.c:125: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032B6 74 D3            [12]  983 	mov	a,#___str_18
      0032B8 C0 E0            [24]  984 	push	acc
      0032BA 74 4C            [12]  985 	mov	a,#(___str_18 >> 8)
      0032BC C0 E0            [24]  986 	push	acc
      0032BE 74 80            [12]  987 	mov	a,#0x80
      0032C0 C0 E0            [24]  988 	push	acc
      0032C2 12 3B A8         [24]  989 	lcall	_printf
      0032C5 15 81            [12]  990 	dec	sp
      0032C7 15 81            [12]  991 	dec	sp
      0032C9 15 81            [12]  992 	dec	sp
                                    993 ;	8051_i2c_eeprom.c:126: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0032CB 90 04 04         [24]  994 	mov	dptr,#_take_address_input_65537_65
      0032CE E4               [12]  995 	clr	a
      0032CF F0               [24]  996 	movx	@dptr,a
      0032D0 90 04 05         [24]  997 	mov	dptr,#(_take_address_input_65537_65 + 0x0001)
      0032D3 F0               [24]  998 	movx	@dptr,a
      0032D4 90 04 06         [24]  999 	mov	dptr,#(_take_address_input_65537_65 + 0x0002)
      0032D7 F0               [24] 1000 	movx	@dptr,a
      0032D8 90 04 07         [24] 1001 	mov	dptr,#(_take_address_input_65537_65 + 0x0003)
      0032DB F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	8051_i2c_eeprom.c:130: printf("| $ ");
      0032DC 74 04            [12] 1004 	mov	a,#___str_19
      0032DE C0 E0            [24] 1005 	push	acc
      0032E0 74 4D            [12] 1006 	mov	a,#(___str_19 >> 8)
      0032E2 C0 E0            [24] 1007 	push	acc
      0032E4 74 80            [12] 1008 	mov	a,#0x80
      0032E6 C0 E0            [24] 1009 	push	acc
      0032E8 12 3B A8         [24] 1010 	lcall	_printf
      0032EB 15 81            [12] 1011 	dec	sp
      0032ED 15 81            [12] 1012 	dec	sp
      0032EF 15 81            [12] 1013 	dec	sp
                                   1014 ;	8051_i2c_eeprom.c:132: while (i < 3) {
      0032F1 7E 00            [12] 1015 	mov	r6,#0x00
      0032F3 7F 00            [12] 1016 	mov	r7,#0x00
      0032F5                       1017 00111$:
      0032F5 C3               [12] 1018 	clr	c
      0032F6 EE               [12] 1019 	mov	a,r6
      0032F7 94 03            [12] 1020 	subb	a,#0x03
      0032F9 EF               [12] 1021 	mov	a,r7
      0032FA 64 80            [12] 1022 	xrl	a,#0x80
      0032FC 94 80            [12] 1023 	subb	a,#0x80
      0032FE 50 5B            [24] 1024 	jnc	00113$
                                   1025 ;	8051_i2c_eeprom.c:134: c = getchar();
      003300 C0 07            [24] 1026 	push	ar7
      003302 C0 06            [24] 1027 	push	ar6
      003304 12 30 81         [24] 1028 	lcall	_getchar
      003307 AC 82            [24] 1029 	mov	r4,dpl
      003309 AD 83            [24] 1030 	mov	r5,dph
      00330B D0 06            [24] 1031 	pop	ar6
      00330D D0 07            [24] 1032 	pop	ar7
                                   1033 ;	8051_i2c_eeprom.c:137: if (c == '\r' || c == '\n') {
      00330F BC 0D 02         [24] 1034 	cjne	r4,#0x0d,00200$
      003312 80 47            [24] 1035 	sjmp	00113$
      003314                       1036 00200$:
      003314 BC 0A 02         [24] 1037 	cjne	r4,#0x0a,00201$
      003317 80 42            [24] 1038 	sjmp	00113$
      003319                       1039 00201$:
                                   1040 ;	8051_i2c_eeprom.c:142: if ((c >= '0' && c <= '9') || 
      003319 BC 30 00         [24] 1041 	cjne	r4,#0x30,00202$
      00331C                       1042 00202$:
      00331C 40 05            [24] 1043 	jc	00108$
      00331E EC               [12] 1044 	mov	a,r4
      00331F 24 C6            [12] 1045 	add	a,#0xff - 0x39
      003321 50 14            [24] 1046 	jnc	00104$
      003323                       1047 00108$:
                                   1048 ;	8051_i2c_eeprom.c:143: (c >= 'a' && c <= 'f') || 
      003323 BC 61 00         [24] 1049 	cjne	r4,#0x61,00205$
      003326                       1050 00205$:
      003326 40 05            [24] 1051 	jc	00110$
      003328 EC               [12] 1052 	mov	a,r4
      003329 24 99            [12] 1053 	add	a,#0xff - 0x66
      00332B 50 0A            [24] 1054 	jnc	00104$
      00332D                       1055 00110$:
                                   1056 ;	8051_i2c_eeprom.c:144: (c >= 'A' && c <= 'F')) {
      00332D BC 41 00         [24] 1057 	cjne	r4,#0x41,00208$
      003330                       1058 00208$:
      003330 40 C3            [24] 1059 	jc	00111$
      003332 EC               [12] 1060 	mov	a,r4
      003333 24 B9            [12] 1061 	add	a,#0xff - 0x46
      003335 40 BE            [24] 1062 	jc	00111$
      003337                       1063 00104$:
                                   1064 ;	8051_i2c_eeprom.c:146: input[i] = c;
      003337 EE               [12] 1065 	mov	a,r6
      003338 24 04            [12] 1066 	add	a,#_take_address_input_65537_65
      00333A F5 82            [12] 1067 	mov	dpl,a
      00333C EF               [12] 1068 	mov	a,r7
      00333D 34 04            [12] 1069 	addc	a,#(_take_address_input_65537_65 >> 8)
      00333F F5 83            [12] 1070 	mov	dph,a
      003341 EC               [12] 1071 	mov	a,r4
      003342 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	8051_i2c_eeprom.c:147: putchar(c);  // Echo character back
      003343 7D 00            [12] 1074 	mov	r5,#0x00
      003345 8C 82            [24] 1075 	mov	dpl,r4
      003347 8D 83            [24] 1076 	mov	dph,r5
      003349 C0 07            [24] 1077 	push	ar7
      00334B C0 06            [24] 1078 	push	ar6
      00334D 12 30 62         [24] 1079 	lcall	_putchar
      003350 D0 06            [24] 1080 	pop	ar6
      003352 D0 07            [24] 1081 	pop	ar7
                                   1082 ;	8051_i2c_eeprom.c:148: i++;
      003354 0E               [12] 1083 	inc	r6
      003355 BE 00 9D         [24] 1084 	cjne	r6,#0x00,00111$
      003358 0F               [12] 1085 	inc	r7
      003359 80 9A            [24] 1086 	sjmp	00111$
      00335B                       1087 00113$:
                                   1088 ;	8051_i2c_eeprom.c:152: input[i] = '\0';  // Null-terminate the string
      00335B EE               [12] 1089 	mov	a,r6
      00335C 24 04            [12] 1090 	add	a,#_take_address_input_65537_65
      00335E F5 82            [12] 1091 	mov	dpl,a
      003360 EF               [12] 1092 	mov	a,r7
      003361 34 04            [12] 1093 	addc	a,#(_take_address_input_65537_65 >> 8)
      003363 F5 83            [12] 1094 	mov	dph,a
      003365 E4               [12] 1095 	clr	a
      003366 F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	8051_i2c_eeprom.c:155: unsigned int address = 0;
      003367 90 04 08         [24] 1098 	mov	dptr,#_take_address_address_65538_69
      00336A F0               [24] 1099 	movx	@dptr,a
      00336B A3               [24] 1100 	inc	dptr
      00336C F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	8051_i2c_eeprom.c:156: for(i = 0; input[i] != '\0'; i++) {
      00336D 7E 00            [12] 1103 	mov	r6,#0x00
      00336F 7F 00            [12] 1104 	mov	r7,#0x00
      003371                       1105 00129$:
      003371 EE               [12] 1106 	mov	a,r6
      003372 24 04            [12] 1107 	add	a,#_take_address_input_65537_65
      003374 F5 82            [12] 1108 	mov	dpl,a
      003376 EF               [12] 1109 	mov	a,r7
      003377 34 04            [12] 1110 	addc	a,#(_take_address_input_65537_65 >> 8)
      003379 F5 83            [12] 1111 	mov	dph,a
      00337B E0               [24] 1112 	movx	a,@dptr
      00337C FD               [12] 1113 	mov	r5,a
      00337D 70 03            [24] 1114 	jnz	00212$
      00337F 02 34 2A         [24] 1115 	ljmp	00125$
      003382                       1116 00212$:
                                   1117 ;	8051_i2c_eeprom.c:157: address = address * 16;
      003382 90 04 08         [24] 1118 	mov	dptr,#_take_address_address_65538_69
      003385 E0               [24] 1119 	movx	a,@dptr
      003386 FB               [12] 1120 	mov	r3,a
      003387 A3               [24] 1121 	inc	dptr
      003388 E0               [24] 1122 	movx	a,@dptr
      003389 C4               [12] 1123 	swap	a
      00338A 54 F0            [12] 1124 	anl	a,#0xf0
      00338C CB               [12] 1125 	xch	a,r3
      00338D C4               [12] 1126 	swap	a
      00338E CB               [12] 1127 	xch	a,r3
      00338F 6B               [12] 1128 	xrl	a,r3
      003390 CB               [12] 1129 	xch	a,r3
      003391 54 F0            [12] 1130 	anl	a,#0xf0
      003393 CB               [12] 1131 	xch	a,r3
      003394 6B               [12] 1132 	xrl	a,r3
      003395 FC               [12] 1133 	mov	r4,a
      003396 90 04 08         [24] 1134 	mov	dptr,#_take_address_address_65538_69
      003399 EB               [12] 1135 	mov	a,r3
      00339A F0               [24] 1136 	movx	@dptr,a
      00339B EC               [12] 1137 	mov	a,r4
      00339C A3               [24] 1138 	inc	dptr
      00339D F0               [24] 1139 	movx	@dptr,a
                                   1140 ;	8051_i2c_eeprom.c:158: if(input[i] >= '0' && input[i] <= '9')
      00339E BD 30 00         [24] 1141 	cjne	r5,#0x30,00213$
      0033A1                       1142 00213$:
      0033A1 40 23            [24] 1143 	jc	00122$
      0033A3 ED               [12] 1144 	mov	a,r5
      0033A4 24 C6            [12] 1145 	add	a,#0xff - 0x39
      0033A6 40 1E            [24] 1146 	jc	00122$
                                   1147 ;	8051_i2c_eeprom.c:159: address += input[i] - '0';
      0033A8 7C 00            [12] 1148 	mov	r4,#0x00
      0033AA ED               [12] 1149 	mov	a,r5
      0033AB 24 D0            [12] 1150 	add	a,#0xd0
      0033AD FD               [12] 1151 	mov	r5,a
      0033AE EC               [12] 1152 	mov	a,r4
      0033AF 34 FF            [12] 1153 	addc	a,#0xff
      0033B1 FC               [12] 1154 	mov	r4,a
      0033B2 90 04 08         [24] 1155 	mov	dptr,#_take_address_address_65538_69
      0033B5 E0               [24] 1156 	movx	a,@dptr
      0033B6 FA               [12] 1157 	mov	r2,a
      0033B7 A3               [24] 1158 	inc	dptr
      0033B8 E0               [24] 1159 	movx	a,@dptr
      0033B9 FB               [12] 1160 	mov	r3,a
      0033BA 90 04 08         [24] 1161 	mov	dptr,#_take_address_address_65538_69
      0033BD ED               [12] 1162 	mov	a,r5
      0033BE 2A               [12] 1163 	add	a,r2
      0033BF F0               [24] 1164 	movx	@dptr,a
      0033C0 EC               [12] 1165 	mov	a,r4
      0033C1 3B               [12] 1166 	addc	a,r3
      0033C2 A3               [24] 1167 	inc	dptr
      0033C3 F0               [24] 1168 	movx	@dptr,a
      0033C4 80 5C            [24] 1169 	sjmp	00130$
      0033C6                       1170 00122$:
                                   1171 ;	8051_i2c_eeprom.c:160: else if(input[i] >= 'A' && input[i] <= 'F')
      0033C6 EE               [12] 1172 	mov	a,r6
      0033C7 24 04            [12] 1173 	add	a,#_take_address_input_65537_65
      0033C9 F5 82            [12] 1174 	mov	dpl,a
      0033CB EF               [12] 1175 	mov	a,r7
      0033CC 34 04            [12] 1176 	addc	a,#(_take_address_input_65537_65 >> 8)
      0033CE F5 83            [12] 1177 	mov	dph,a
      0033D0 E0               [24] 1178 	movx	a,@dptr
      0033D1 FD               [12] 1179 	mov	r5,a
      0033D2 BD 41 00         [24] 1180 	cjne	r5,#0x41,00216$
      0033D5                       1181 00216$:
      0033D5 40 25            [24] 1182 	jc	00118$
      0033D7 ED               [12] 1183 	mov	a,r5
      0033D8 24 B9            [12] 1184 	add	a,#0xff - 0x46
      0033DA 40 20            [24] 1185 	jc	00118$
                                   1186 ;	8051_i2c_eeprom.c:161: address += input[i] - 'A' + 10;
      0033DC 8D 03            [24] 1187 	mov	ar3,r5
      0033DE 7C 00            [12] 1188 	mov	r4,#0x00
      0033E0 74 C9            [12] 1189 	mov	a,#0xc9
      0033E2 2B               [12] 1190 	add	a,r3
      0033E3 FB               [12] 1191 	mov	r3,a
      0033E4 74 FF            [12] 1192 	mov	a,#0xff
      0033E6 3C               [12] 1193 	addc	a,r4
      0033E7 FC               [12] 1194 	mov	r4,a
      0033E8 90 04 08         [24] 1195 	mov	dptr,#_take_address_address_65538_69
      0033EB E0               [24] 1196 	movx	a,@dptr
      0033EC F9               [12] 1197 	mov	r1,a
      0033ED A3               [24] 1198 	inc	dptr
      0033EE E0               [24] 1199 	movx	a,@dptr
      0033EF FA               [12] 1200 	mov	r2,a
      0033F0 90 04 08         [24] 1201 	mov	dptr,#_take_address_address_65538_69
      0033F3 EB               [12] 1202 	mov	a,r3
      0033F4 29               [12] 1203 	add	a,r1
      0033F5 F0               [24] 1204 	movx	@dptr,a
      0033F6 EC               [12] 1205 	mov	a,r4
      0033F7 3A               [12] 1206 	addc	a,r2
      0033F8 A3               [24] 1207 	inc	dptr
      0033F9 F0               [24] 1208 	movx	@dptr,a
      0033FA 80 26            [24] 1209 	sjmp	00130$
      0033FC                       1210 00118$:
                                   1211 ;	8051_i2c_eeprom.c:162: else if(input[i] >= 'a' && input[i] <= 'f')
      0033FC BD 61 00         [24] 1212 	cjne	r5,#0x61,00219$
      0033FF                       1213 00219$:
      0033FF 40 21            [24] 1214 	jc	00130$
      003401 ED               [12] 1215 	mov	a,r5
      003402 24 99            [12] 1216 	add	a,#0xff - 0x66
      003404 40 1C            [24] 1217 	jc	00130$
                                   1218 ;	8051_i2c_eeprom.c:163: address += input[i] - 'a' + 10;
      003406 7C 00            [12] 1219 	mov	r4,#0x00
      003408 74 A9            [12] 1220 	mov	a,#0xa9
      00340A 2D               [12] 1221 	add	a,r5
      00340B FD               [12] 1222 	mov	r5,a
      00340C 74 FF            [12] 1223 	mov	a,#0xff
      00340E 3C               [12] 1224 	addc	a,r4
      00340F FC               [12] 1225 	mov	r4,a
      003410 90 04 08         [24] 1226 	mov	dptr,#_take_address_address_65538_69
      003413 E0               [24] 1227 	movx	a,@dptr
      003414 FA               [12] 1228 	mov	r2,a
      003415 A3               [24] 1229 	inc	dptr
      003416 E0               [24] 1230 	movx	a,@dptr
      003417 FB               [12] 1231 	mov	r3,a
      003418 90 04 08         [24] 1232 	mov	dptr,#_take_address_address_65538_69
      00341B ED               [12] 1233 	mov	a,r5
      00341C 2A               [12] 1234 	add	a,r2
      00341D F0               [24] 1235 	movx	@dptr,a
      00341E EC               [12] 1236 	mov	a,r4
      00341F 3B               [12] 1237 	addc	a,r3
      003420 A3               [24] 1238 	inc	dptr
      003421 F0               [24] 1239 	movx	@dptr,a
      003422                       1240 00130$:
                                   1241 ;	8051_i2c_eeprom.c:156: for(i = 0; input[i] != '\0'; i++) {
      003422 0E               [12] 1242 	inc	r6
      003423 BE 00 01         [24] 1243 	cjne	r6,#0x00,00222$
      003426 0F               [12] 1244 	inc	r7
      003427                       1245 00222$:
      003427 02 33 71         [24] 1246 	ljmp	00129$
      00342A                       1247 00125$:
                                   1248 ;	8051_i2c_eeprom.c:166: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      00342A 90 04 08         [24] 1249 	mov	dptr,#_take_address_address_65538_69
      00342D E0               [24] 1250 	movx	a,@dptr
      00342E FE               [12] 1251 	mov	r6,a
      00342F A3               [24] 1252 	inc	dptr
      003430 E0               [24] 1253 	movx	a,@dptr
      003431 FF               [12] 1254 	mov	r7,a
      003432 C0 07            [24] 1255 	push	ar7
      003434 C0 06            [24] 1256 	push	ar6
      003436 C0 06            [24] 1257 	push	ar6
      003438 C0 07            [24] 1258 	push	ar7
      00343A 74 09            [12] 1259 	mov	a,#___str_20
      00343C C0 E0            [24] 1260 	push	acc
      00343E 74 4D            [12] 1261 	mov	a,#(___str_20 >> 8)
      003440 C0 E0            [24] 1262 	push	acc
      003442 74 80            [12] 1263 	mov	a,#0x80
      003444 C0 E0            [24] 1264 	push	acc
      003446 12 3B A8         [24] 1265 	lcall	_printf
      003449 E5 81            [12] 1266 	mov	a,sp
      00344B 24 FB            [12] 1267 	add	a,#0xfb
      00344D F5 81            [12] 1268 	mov	sp,a
      00344F D0 06            [24] 1269 	pop	ar6
      003451 D0 07            [24] 1270 	pop	ar7
                                   1271 ;	8051_i2c_eeprom.c:167: if(address > 0x7ff) 
      003453 C3               [12] 1272 	clr	c
      003454 74 FF            [12] 1273 	mov	a,#0xff
      003456 9E               [12] 1274 	subb	a,r6
      003457 74 07            [12] 1275 	mov	a,#0x07
      003459 9F               [12] 1276 	subb	a,r7
      00345A 50 5F            [24] 1277 	jnc	00127$
                                   1278 ;	8051_i2c_eeprom.c:169: printf("╔══════════════════════════════════════════╗\n\r");
      00345C 74 29            [12] 1279 	mov	a,#___str_21
      00345E C0 E0            [24] 1280 	push	acc
      003460 74 4D            [12] 1281 	mov	a,#(___str_21 >> 8)
      003462 C0 E0            [24] 1282 	push	acc
      003464 74 80            [12] 1283 	mov	a,#0x80
      003466 C0 E0            [24] 1284 	push	acc
      003468 12 3B A8         [24] 1285 	lcall	_printf
      00346B 15 81            [12] 1286 	dec	sp
      00346D 15 81            [12] 1287 	dec	sp
      00346F 15 81            [12] 1288 	dec	sp
                                   1289 ;	8051_i2c_eeprom.c:170: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003471 74 B0            [12] 1290 	mov	a,#___str_22
      003473 C0 E0            [24] 1291 	push	acc
      003475 74 4D            [12] 1292 	mov	a,#(___str_22 >> 8)
      003477 C0 E0            [24] 1293 	push	acc
      003479 74 80            [12] 1294 	mov	a,#0x80
      00347B C0 E0            [24] 1295 	push	acc
      00347D 12 3B A8         [24] 1296 	lcall	_printf
      003480 15 81            [12] 1297 	dec	sp
      003482 15 81            [12] 1298 	dec	sp
      003484 15 81            [12] 1299 	dec	sp
                                   1300 ;	8051_i2c_eeprom.c:171: printf("║     Please Enter Valid Address         ║\n\r");
      003486 74 E1            [12] 1301 	mov	a,#___str_23
      003488 C0 E0            [24] 1302 	push	acc
      00348A 74 4D            [12] 1303 	mov	a,#(___str_23 >> 8)
      00348C C0 E0            [24] 1304 	push	acc
      00348E 74 80            [12] 1305 	mov	a,#0x80
      003490 C0 E0            [24] 1306 	push	acc
      003492 12 3B A8         [24] 1307 	lcall	_printf
      003495 15 81            [12] 1308 	dec	sp
      003497 15 81            [12] 1309 	dec	sp
      003499 15 81            [12] 1310 	dec	sp
                                   1311 ;	8051_i2c_eeprom.c:172: printf("╚══════════════════════════════════════════╝\n\r");
      00349B 74 12            [12] 1312 	mov	a,#___str_24
      00349D C0 E0            [24] 1313 	push	acc
      00349F 74 4E            [12] 1314 	mov	a,#(___str_24 >> 8)
      0034A1 C0 E0            [24] 1315 	push	acc
      0034A3 74 80            [12] 1316 	mov	a,#0x80
      0034A5 C0 E0            [24] 1317 	push	acc
      0034A7 12 3B A8         [24] 1318 	lcall	_printf
      0034AA 15 81            [12] 1319 	dec	sp
      0034AC 15 81            [12] 1320 	dec	sp
      0034AE 15 81            [12] 1321 	dec	sp
                                   1322 ;	8051_i2c_eeprom.c:173: address_range_flag = 0;
      0034B0 90 04 51         [24] 1323 	mov	dptr,#_address_range_flag
      0034B3 E4               [12] 1324 	clr	a
      0034B4 F0               [24] 1325 	movx	@dptr,a
      0034B5 A3               [24] 1326 	inc	dptr
      0034B6 F0               [24] 1327 	movx	@dptr,a
                                   1328 ;	8051_i2c_eeprom.c:174: return 0;
      0034B7 90 00 00         [24] 1329 	mov	dptr,#0x0000
      0034BA 22               [24] 1330 	ret
      0034BB                       1331 00127$:
                                   1332 ;	8051_i2c_eeprom.c:178: address = address%256;     //word address
      0034BB 90 04 08         [24] 1333 	mov	dptr,#_take_address_address_65538_69
      0034BE EE               [12] 1334 	mov	a,r6
      0034BF F0               [24] 1335 	movx	@dptr,a
      0034C0 E4               [12] 1336 	clr	a
      0034C1 A3               [24] 1337 	inc	dptr
      0034C2 F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	8051_i2c_eeprom.c:181: return address;
      0034C3 90 04 08         [24] 1340 	mov	dptr,#_take_address_address_65538_69
      0034C6 E0               [24] 1341 	movx	a,@dptr
      0034C7 FE               [12] 1342 	mov	r6,a
      0034C8 A3               [24] 1343 	inc	dptr
      0034C9 E0               [24] 1344 	movx	a,@dptr
                                   1345 ;	8051_i2c_eeprom.c:182: }
      0034CA 8E 82            [24] 1346 	mov	dpl,r6
      0034CC F5 83            [12] 1347 	mov	dph,a
      0034CE 22               [24] 1348 	ret
                                   1349 ;------------------------------------------------------------
                                   1350 ;Allocation info for local variables in function 'take_data'
                                   1351 ;------------------------------------------------------------
                                   1352 ;input                     Allocated with name '_take_data_input_65537_75'
                                   1353 ;i                         Allocated with name '_take_data_i_65537_75'
                                   1354 ;c                         Allocated with name '_take_data_c_65537_75'
                                   1355 ;data                      Allocated with name '_take_data_data_65538_79'
                                   1356 ;------------------------------------------------------------
                                   1357 ;	8051_i2c_eeprom.c:184: unsigned char take_data()
                                   1358 ;	-----------------------------------------
                                   1359 ;	 function take_data
                                   1360 ;	-----------------------------------------
      0034CF                       1361 _take_data:
                                   1362 ;	8051_i2c_eeprom.c:186: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0034CF 74 99            [12] 1363 	mov	a,#___str_25
      0034D1 C0 E0            [24] 1364 	push	acc
      0034D3 74 4E            [12] 1365 	mov	a,#(___str_25 >> 8)
      0034D5 C0 E0            [24] 1366 	push	acc
      0034D7 74 80            [12] 1367 	mov	a,#0x80
      0034D9 C0 E0            [24] 1368 	push	acc
      0034DB 12 3B A8         [24] 1369 	lcall	_printf
      0034DE 15 81            [12] 1370 	dec	sp
      0034E0 15 81            [12] 1371 	dec	sp
      0034E2 15 81            [12] 1372 	dec	sp
                                   1373 ;	8051_i2c_eeprom.c:187: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0034E4 90 04 0A         [24] 1374 	mov	dptr,#_take_data_input_65537_75
      0034E7 E4               [12] 1375 	clr	a
      0034E8 F0               [24] 1376 	movx	@dptr,a
      0034E9 90 04 0B         [24] 1377 	mov	dptr,#(_take_data_input_65537_75 + 0x0001)
      0034EC F0               [24] 1378 	movx	@dptr,a
      0034ED 90 04 0C         [24] 1379 	mov	dptr,#(_take_data_input_65537_75 + 0x0002)
      0034F0 F0               [24] 1380 	movx	@dptr,a
      0034F1 90 04 0D         [24] 1381 	mov	dptr,#(_take_data_input_65537_75 + 0x0003)
      0034F4 F0               [24] 1382 	movx	@dptr,a
                                   1383 ;	8051_i2c_eeprom.c:191: printf("$ ");
      0034F5 74 C7            [12] 1384 	mov	a,#___str_26
      0034F7 C0 E0            [24] 1385 	push	acc
      0034F9 74 4E            [12] 1386 	mov	a,#(___str_26 >> 8)
      0034FB C0 E0            [24] 1387 	push	acc
      0034FD 74 80            [12] 1388 	mov	a,#0x80
      0034FF C0 E0            [24] 1389 	push	acc
      003501 12 3B A8         [24] 1390 	lcall	_printf
      003504 15 81            [12] 1391 	dec	sp
      003506 15 81            [12] 1392 	dec	sp
      003508 15 81            [12] 1393 	dec	sp
                                   1394 ;	8051_i2c_eeprom.c:193: while (i < 3) {
      00350A 7E 00            [12] 1395 	mov	r6,#0x00
      00350C 7F 00            [12] 1396 	mov	r7,#0x00
      00350E                       1397 00111$:
      00350E C3               [12] 1398 	clr	c
      00350F EE               [12] 1399 	mov	a,r6
      003510 94 03            [12] 1400 	subb	a,#0x03
      003512 EF               [12] 1401 	mov	a,r7
      003513 64 80            [12] 1402 	xrl	a,#0x80
      003515 94 80            [12] 1403 	subb	a,#0x80
      003517 50 5B            [24] 1404 	jnc	00113$
                                   1405 ;	8051_i2c_eeprom.c:195: c = getchar();
      003519 C0 07            [24] 1406 	push	ar7
      00351B C0 06            [24] 1407 	push	ar6
      00351D 12 30 81         [24] 1408 	lcall	_getchar
      003520 AC 82            [24] 1409 	mov	r4,dpl
      003522 AD 83            [24] 1410 	mov	r5,dph
      003524 D0 06            [24] 1411 	pop	ar6
      003526 D0 07            [24] 1412 	pop	ar7
                                   1413 ;	8051_i2c_eeprom.c:198: if (c == '\r' || c == '\n') {
      003528 BC 0D 02         [24] 1414 	cjne	r4,#0x0d,00200$
      00352B 80 47            [24] 1415 	sjmp	00113$
      00352D                       1416 00200$:
      00352D BC 0A 02         [24] 1417 	cjne	r4,#0x0a,00201$
      003530 80 42            [24] 1418 	sjmp	00113$
      003532                       1419 00201$:
                                   1420 ;	8051_i2c_eeprom.c:203: if ((c >= '0' && c <= '9') || 
      003532 BC 30 00         [24] 1421 	cjne	r4,#0x30,00202$
      003535                       1422 00202$:
      003535 40 05            [24] 1423 	jc	00108$
      003537 EC               [12] 1424 	mov	a,r4
      003538 24 C6            [12] 1425 	add	a,#0xff - 0x39
      00353A 50 14            [24] 1426 	jnc	00104$
      00353C                       1427 00108$:
                                   1428 ;	8051_i2c_eeprom.c:204: (c >= 'a' && c <= 'f') || 
      00353C BC 61 00         [24] 1429 	cjne	r4,#0x61,00205$
      00353F                       1430 00205$:
      00353F 40 05            [24] 1431 	jc	00110$
      003541 EC               [12] 1432 	mov	a,r4
      003542 24 99            [12] 1433 	add	a,#0xff - 0x66
      003544 50 0A            [24] 1434 	jnc	00104$
      003546                       1435 00110$:
                                   1436 ;	8051_i2c_eeprom.c:205: (c >= 'A' && c <= 'F')) {
      003546 BC 41 00         [24] 1437 	cjne	r4,#0x41,00208$
      003549                       1438 00208$:
      003549 40 C3            [24] 1439 	jc	00111$
      00354B EC               [12] 1440 	mov	a,r4
      00354C 24 B9            [12] 1441 	add	a,#0xff - 0x46
      00354E 40 BE            [24] 1442 	jc	00111$
      003550                       1443 00104$:
                                   1444 ;	8051_i2c_eeprom.c:207: input[i] = c;
      003550 EE               [12] 1445 	mov	a,r6
      003551 24 0A            [12] 1446 	add	a,#_take_data_input_65537_75
      003553 F5 82            [12] 1447 	mov	dpl,a
      003555 EF               [12] 1448 	mov	a,r7
      003556 34 04            [12] 1449 	addc	a,#(_take_data_input_65537_75 >> 8)
      003558 F5 83            [12] 1450 	mov	dph,a
      00355A EC               [12] 1451 	mov	a,r4
      00355B F0               [24] 1452 	movx	@dptr,a
                                   1453 ;	8051_i2c_eeprom.c:208: putchar(c);  // Echo character back
      00355C 7D 00            [12] 1454 	mov	r5,#0x00
      00355E 8C 82            [24] 1455 	mov	dpl,r4
      003560 8D 83            [24] 1456 	mov	dph,r5
      003562 C0 07            [24] 1457 	push	ar7
      003564 C0 06            [24] 1458 	push	ar6
      003566 12 30 62         [24] 1459 	lcall	_putchar
      003569 D0 06            [24] 1460 	pop	ar6
      00356B D0 07            [24] 1461 	pop	ar7
                                   1462 ;	8051_i2c_eeprom.c:209: i++;
      00356D 0E               [12] 1463 	inc	r6
      00356E BE 00 9D         [24] 1464 	cjne	r6,#0x00,00111$
      003571 0F               [12] 1465 	inc	r7
      003572 80 9A            [24] 1466 	sjmp	00111$
      003574                       1467 00113$:
                                   1468 ;	8051_i2c_eeprom.c:213: input[i] = '\0';  // Null-terminate the string
      003574 EE               [12] 1469 	mov	a,r6
      003575 24 0A            [12] 1470 	add	a,#_take_data_input_65537_75
      003577 F5 82            [12] 1471 	mov	dpl,a
      003579 EF               [12] 1472 	mov	a,r7
      00357A 34 04            [12] 1473 	addc	a,#(_take_data_input_65537_75 >> 8)
      00357C F5 83            [12] 1474 	mov	dph,a
      00357E E4               [12] 1475 	clr	a
      00357F F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	8051_i2c_eeprom.c:216: unsigned char data = 0;
      003580 90 04 0E         [24] 1478 	mov	dptr,#_take_data_data_65538_79
      003583 F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	8051_i2c_eeprom.c:217: for (i = 0; input[i] != '\0'; i++) {
      003584 7E 00            [12] 1481 	mov	r6,#0x00
      003586 7F 00            [12] 1482 	mov	r7,#0x00
      003588                       1483 00129$:
      003588 EE               [12] 1484 	mov	a,r6
      003589 24 0A            [12] 1485 	add	a,#_take_data_input_65537_75
      00358B F5 82            [12] 1486 	mov	dpl,a
      00358D EF               [12] 1487 	mov	a,r7
      00358E 34 04            [12] 1488 	addc	a,#(_take_data_input_65537_75 >> 8)
      003590 F5 83            [12] 1489 	mov	dph,a
      003592 E0               [24] 1490 	movx	a,@dptr
      003593 FD               [12] 1491 	mov	r5,a
      003594 70 03            [24] 1492 	jnz	00212$
      003596 02 35 FB         [24] 1493 	ljmp	00125$
      003599                       1494 00212$:
                                   1495 ;	8051_i2c_eeprom.c:218: data = data * 16;
      003599 90 04 0E         [24] 1496 	mov	dptr,#_take_data_data_65538_79
      00359C E0               [24] 1497 	movx	a,@dptr
      00359D C4               [12] 1498 	swap	a
      00359E 54 F0            [12] 1499 	anl	a,#0xf0
      0035A0 FC               [12] 1500 	mov	r4,a
      0035A1 F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	8051_i2c_eeprom.c:219: if (input[i] >= '0' && input[i] <= '9')
      0035A2 BD 30 00         [24] 1503 	cjne	r5,#0x30,00213$
      0035A5                       1504 00213$:
      0035A5 40 12            [24] 1505 	jc	00122$
      0035A7 ED               [12] 1506 	mov	a,r5
      0035A8 24 C6            [12] 1507 	add	a,#0xff - 0x39
      0035AA 40 0D            [24] 1508 	jc	00122$
                                   1509 ;	8051_i2c_eeprom.c:220: data += input[i] - '0';
      0035AC ED               [12] 1510 	mov	a,r5
      0035AD 24 D0            [12] 1511 	add	a,#0xd0
      0035AF FD               [12] 1512 	mov	r5,a
      0035B0 90 04 0E         [24] 1513 	mov	dptr,#_take_data_data_65538_79
      0035B3 E0               [24] 1514 	movx	a,@dptr
      0035B4 FC               [12] 1515 	mov	r4,a
      0035B5 2D               [12] 1516 	add	a,r5
      0035B6 F0               [24] 1517 	movx	@dptr,a
      0035B7 80 3A            [24] 1518 	sjmp	00130$
      0035B9                       1519 00122$:
                                   1520 ;	8051_i2c_eeprom.c:221: else if (input[i] >= 'A' && input[i] <= 'F')
      0035B9 EE               [12] 1521 	mov	a,r6
      0035BA 24 0A            [12] 1522 	add	a,#_take_data_input_65537_75
      0035BC F5 82            [12] 1523 	mov	dpl,a
      0035BE EF               [12] 1524 	mov	a,r7
      0035BF 34 04            [12] 1525 	addc	a,#(_take_data_input_65537_75 >> 8)
      0035C1 F5 83            [12] 1526 	mov	dph,a
      0035C3 E0               [24] 1527 	movx	a,@dptr
      0035C4 FD               [12] 1528 	mov	r5,a
      0035C5 BD 41 00         [24] 1529 	cjne	r5,#0x41,00216$
      0035C8                       1530 00216$:
      0035C8 40 14            [24] 1531 	jc	00118$
      0035CA ED               [12] 1532 	mov	a,r5
      0035CB 24 B9            [12] 1533 	add	a,#0xff - 0x46
      0035CD 40 0F            [24] 1534 	jc	00118$
                                   1535 ;	8051_i2c_eeprom.c:222: data += input[i] - 'A' + 10;
      0035CF 8D 04            [24] 1536 	mov	ar4,r5
      0035D1 74 C9            [12] 1537 	mov	a,#0xc9
      0035D3 2C               [12] 1538 	add	a,r4
      0035D4 FC               [12] 1539 	mov	r4,a
      0035D5 90 04 0E         [24] 1540 	mov	dptr,#_take_data_data_65538_79
      0035D8 E0               [24] 1541 	movx	a,@dptr
      0035D9 FB               [12] 1542 	mov	r3,a
      0035DA 2C               [12] 1543 	add	a,r4
      0035DB F0               [24] 1544 	movx	@dptr,a
      0035DC 80 15            [24] 1545 	sjmp	00130$
      0035DE                       1546 00118$:
                                   1547 ;	8051_i2c_eeprom.c:223: else if (input[i] >= 'a' && input[i] <= 'f')
      0035DE BD 61 00         [24] 1548 	cjne	r5,#0x61,00219$
      0035E1                       1549 00219$:
      0035E1 40 10            [24] 1550 	jc	00130$
      0035E3 ED               [12] 1551 	mov	a,r5
      0035E4 24 99            [12] 1552 	add	a,#0xff - 0x66
      0035E6 40 0B            [24] 1553 	jc	00130$
                                   1554 ;	8051_i2c_eeprom.c:224: data += input[i] - 'a' + 10;
      0035E8 74 A9            [12] 1555 	mov	a,#0xa9
      0035EA 2D               [12] 1556 	add	a,r5
      0035EB FD               [12] 1557 	mov	r5,a
      0035EC 90 04 0E         [24] 1558 	mov	dptr,#_take_data_data_65538_79
      0035EF E0               [24] 1559 	movx	a,@dptr
      0035F0 FC               [12] 1560 	mov	r4,a
      0035F1 2D               [12] 1561 	add	a,r5
      0035F2 F0               [24] 1562 	movx	@dptr,a
      0035F3                       1563 00130$:
                                   1564 ;	8051_i2c_eeprom.c:217: for (i = 0; input[i] != '\0'; i++) {
      0035F3 0E               [12] 1565 	inc	r6
      0035F4 BE 00 01         [24] 1566 	cjne	r6,#0x00,00222$
      0035F7 0F               [12] 1567 	inc	r7
      0035F8                       1568 00222$:
      0035F8 02 35 88         [24] 1569 	ljmp	00129$
      0035FB                       1570 00125$:
                                   1571 ;	8051_i2c_eeprom.c:227: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0035FB 90 04 0E         [24] 1572 	mov	dptr,#_take_data_data_65538_79
      0035FE E0               [24] 1573 	movx	a,@dptr
      0035FF FF               [12] 1574 	mov	r7,a
      003600 FD               [12] 1575 	mov	r5,a
      003601 7E 00            [12] 1576 	mov	r6,#0x00
      003603 C0 07            [24] 1577 	push	ar7
      003605 C0 05            [24] 1578 	push	ar5
      003607 C0 06            [24] 1579 	push	ar6
      003609 74 CA            [12] 1580 	mov	a,#___str_27
      00360B C0 E0            [24] 1581 	push	acc
      00360D 74 4E            [12] 1582 	mov	a,#(___str_27 >> 8)
      00360F C0 E0            [24] 1583 	push	acc
      003611 74 80            [12] 1584 	mov	a,#0x80
      003613 C0 E0            [24] 1585 	push	acc
      003615 12 3B A8         [24] 1586 	lcall	_printf
      003618 E5 81            [12] 1587 	mov	a,sp
      00361A 24 FB            [12] 1588 	add	a,#0xfb
      00361C F5 81            [12] 1589 	mov	sp,a
      00361E D0 07            [24] 1590 	pop	ar7
                                   1591 ;	8051_i2c_eeprom.c:228: if(data > 254) 
      003620 EF               [12] 1592 	mov	a,r7
      003621 24 01            [12] 1593 	add	a,#0xff - 0xfe
      003623 50 20            [24] 1594 	jnc	00127$
                                   1595 ;	8051_i2c_eeprom.c:230: printf("Data out of Range\n\r");
      003625 74 E7            [12] 1596 	mov	a,#___str_28
      003627 C0 E0            [24] 1597 	push	acc
      003629 74 4E            [12] 1598 	mov	a,#(___str_28 >> 8)
      00362B C0 E0            [24] 1599 	push	acc
      00362D 74 80            [12] 1600 	mov	a,#0x80
      00362F C0 E0            [24] 1601 	push	acc
      003631 12 3B A8         [24] 1602 	lcall	_printf
      003634 15 81            [12] 1603 	dec	sp
      003636 15 81            [12] 1604 	dec	sp
      003638 15 81            [12] 1605 	dec	sp
                                   1606 ;	8051_i2c_eeprom.c:231: data_range_flag = 0;
      00363A 90 04 53         [24] 1607 	mov	dptr,#_data_range_flag
      00363D E4               [12] 1608 	clr	a
      00363E F0               [24] 1609 	movx	@dptr,a
      00363F A3               [24] 1610 	inc	dptr
      003640 F0               [24] 1611 	movx	@dptr,a
                                   1612 ;	8051_i2c_eeprom.c:232: return 0;
      003641 75 82 00         [24] 1613 	mov	dpl,#0x00
      003644 22               [24] 1614 	ret
      003645                       1615 00127$:
                                   1616 ;	8051_i2c_eeprom.c:234: return data;
      003645 8F 82            [24] 1617 	mov	dpl,r7
                                   1618 ;	8051_i2c_eeprom.c:236: }
      003647 22               [24] 1619 	ret
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'eeprom_write'
                                   1622 ;------------------------------------------------------------
                                   1623 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1624 ;address                   Allocated with name '_eeprom_write_address_65536_83'
                                   1625 ;i                         Allocated with name '_eeprom_write_i_196608_89'
                                   1626 ;------------------------------------------------------------
                                   1627 ;	8051_i2c_eeprom.c:238: int eeprom_write(unsigned int address, unsigned char data) 
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function eeprom_write
                                   1630 ;	-----------------------------------------
      003648                       1631 _eeprom_write:
      003648 AF 83            [24] 1632 	mov	r7,dph
      00364A E5 82            [12] 1633 	mov	a,dpl
      00364C 90 04 10         [24] 1634 	mov	dptr,#_eeprom_write_address_65536_83
      00364F F0               [24] 1635 	movx	@dptr,a
      003650 EF               [12] 1636 	mov	a,r7
      003651 A3               [24] 1637 	inc	dptr
      003652 F0               [24] 1638 	movx	@dptr,a
                                   1639 ;	8051_i2c_eeprom.c:240: if(address_range_flag & data_range_flag)
      003653 90 04 51         [24] 1640 	mov	dptr,#_address_range_flag
      003656 E0               [24] 1641 	movx	a,@dptr
      003657 FE               [12] 1642 	mov	r6,a
      003658 A3               [24] 1643 	inc	dptr
      003659 E0               [24] 1644 	movx	a,@dptr
      00365A FF               [12] 1645 	mov	r7,a
      00365B 90 04 53         [24] 1646 	mov	dptr,#_data_range_flag
      00365E E0               [24] 1647 	movx	a,@dptr
      00365F FC               [12] 1648 	mov	r4,a
      003660 A3               [24] 1649 	inc	dptr
      003661 E0               [24] 1650 	movx	a,@dptr
      003662 FD               [12] 1651 	mov	r5,a
      003663 EC               [12] 1652 	mov	a,r4
      003664 52 06            [12] 1653 	anl	ar6,a
      003666 ED               [12] 1654 	mov	a,r5
      003667 52 07            [12] 1655 	anl	ar7,a
      003669 EE               [12] 1656 	mov	a,r6
      00366A 4F               [12] 1657 	orl	a,r7
      00366B 70 03            [24] 1658 	jnz	00140$
      00366D 02 37 A7         [24] 1659 	ljmp	00109$
      003670                       1660 00140$:
                                   1661 ;	8051_i2c_eeprom.c:243: i2c_start();
      003670 12 3A 69         [24] 1662 	lcall	_i2c_start
                                   1663 ;	8051_i2c_eeprom.c:246: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003673 90 04 55         [24] 1664 	mov	dptr,#_block
      003676 E0               [24] 1665 	movx	a,@dptr
      003677 FE               [12] 1666 	mov	r6,a
      003678 A3               [24] 1667 	inc	dptr
      003679 E0               [24] 1668 	movx	a,@dptr
      00367A 43 06 A0         [24] 1669 	orl	ar6,#0xa0
      00367D 8E 82            [24] 1670 	mov	dpl,r6
      00367F 12 39 7C         [24] 1671 	lcall	_i2c_write
      003682 E5 82            [12] 1672 	mov	a,dpl
      003684 85 83 F0         [24] 1673 	mov	b,dph
      003687 45 F0            [12] 1674 	orl	a,b
      003689 70 1C            [24] 1675 	jnz	00102$
                                   1676 ;	8051_i2c_eeprom.c:247: printf("Error: No ACK for device address (write)\n\r");
      00368B 74 FB            [12] 1677 	mov	a,#___str_29
      00368D C0 E0            [24] 1678 	push	acc
      00368F 74 4E            [12] 1679 	mov	a,#(___str_29 >> 8)
      003691 C0 E0            [24] 1680 	push	acc
      003693 74 80            [12] 1681 	mov	a,#0x80
      003695 C0 E0            [24] 1682 	push	acc
      003697 12 3B A8         [24] 1683 	lcall	_printf
      00369A 15 81            [12] 1684 	dec	sp
      00369C 15 81            [12] 1685 	dec	sp
      00369E 15 81            [12] 1686 	dec	sp
                                   1687 ;	8051_i2c_eeprom.c:248: i2c_stop();
      0036A0 12 3A 7E         [24] 1688 	lcall	_i2c_stop
                                   1689 ;	8051_i2c_eeprom.c:249: return 0;
      0036A3 90 00 00         [24] 1690 	mov	dptr,#0x0000
      0036A6 22               [24] 1691 	ret
      0036A7                       1692 00102$:
                                   1693 ;	8051_i2c_eeprom.c:253: if(!i2c_write((unsigned char)address)) {
      0036A7 90 04 10         [24] 1694 	mov	dptr,#_eeprom_write_address_65536_83
      0036AA E0               [24] 1695 	movx	a,@dptr
      0036AB FE               [12] 1696 	mov	r6,a
      0036AC A3               [24] 1697 	inc	dptr
      0036AD E0               [24] 1698 	movx	a,@dptr
      0036AE FF               [12] 1699 	mov	r7,a
      0036AF 8E 05            [24] 1700 	mov	ar5,r6
      0036B1 8D 82            [24] 1701 	mov	dpl,r5
      0036B3 C0 07            [24] 1702 	push	ar7
      0036B5 C0 06            [24] 1703 	push	ar6
      0036B7 12 39 7C         [24] 1704 	lcall	_i2c_write
      0036BA E5 82            [12] 1705 	mov	a,dpl
      0036BC 85 83 F0         [24] 1706 	mov	b,dph
      0036BF D0 06            [24] 1707 	pop	ar6
      0036C1 D0 07            [24] 1708 	pop	ar7
      0036C3 45 F0            [12] 1709 	orl	a,b
      0036C5 70 1C            [24] 1710 	jnz	00104$
                                   1711 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for memory address\n\r");
      0036C7 74 26            [12] 1712 	mov	a,#___str_30
      0036C9 C0 E0            [24] 1713 	push	acc
      0036CB 74 4F            [12] 1714 	mov	a,#(___str_30 >> 8)
      0036CD C0 E0            [24] 1715 	push	acc
      0036CF 74 80            [12] 1716 	mov	a,#0x80
      0036D1 C0 E0            [24] 1717 	push	acc
      0036D3 12 3B A8         [24] 1718 	lcall	_printf
      0036D6 15 81            [12] 1719 	dec	sp
      0036D8 15 81            [12] 1720 	dec	sp
      0036DA 15 81            [12] 1721 	dec	sp
                                   1722 ;	8051_i2c_eeprom.c:255: i2c_stop();
      0036DC 12 3A 7E         [24] 1723 	lcall	_i2c_stop
                                   1724 ;	8051_i2c_eeprom.c:256: return 0;
      0036DF 90 00 00         [24] 1725 	mov	dptr,#0x0000
      0036E2 22               [24] 1726 	ret
      0036E3                       1727 00104$:
                                   1728 ;	8051_i2c_eeprom.c:260: if(!i2c_write(data)) {
      0036E3 90 04 0F         [24] 1729 	mov	dptr,#_eeprom_write_PARM_2
      0036E6 E0               [24] 1730 	movx	a,@dptr
      0036E7 FD               [12] 1731 	mov	r5,a
      0036E8 F5 82            [12] 1732 	mov	dpl,a
      0036EA C0 07            [24] 1733 	push	ar7
      0036EC C0 06            [24] 1734 	push	ar6
      0036EE C0 05            [24] 1735 	push	ar5
      0036F0 12 39 7C         [24] 1736 	lcall	_i2c_write
      0036F3 E5 82            [12] 1737 	mov	a,dpl
      0036F5 85 83 F0         [24] 1738 	mov	b,dph
      0036F8 D0 05            [24] 1739 	pop	ar5
      0036FA D0 06            [24] 1740 	pop	ar6
      0036FC D0 07            [24] 1741 	pop	ar7
      0036FE 45 F0            [12] 1742 	orl	a,b
      003700 70 1C            [24] 1743 	jnz	00106$
                                   1744 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for data\n\r");
      003702 74 49            [12] 1745 	mov	a,#___str_31
      003704 C0 E0            [24] 1746 	push	acc
      003706 74 4F            [12] 1747 	mov	a,#(___str_31 >> 8)
      003708 C0 E0            [24] 1748 	push	acc
      00370A 74 80            [12] 1749 	mov	a,#0x80
      00370C C0 E0            [24] 1750 	push	acc
      00370E 12 3B A8         [24] 1751 	lcall	_printf
      003711 15 81            [12] 1752 	dec	sp
      003713 15 81            [12] 1753 	dec	sp
      003715 15 81            [12] 1754 	dec	sp
                                   1755 ;	8051_i2c_eeprom.c:262: i2c_stop();
      003717 12 3A 7E         [24] 1756 	lcall	_i2c_stop
                                   1757 ;	8051_i2c_eeprom.c:263: return 0;
      00371A 90 00 00         [24] 1758 	mov	dptr,#0x0000
      00371D 22               [24] 1759 	ret
      00371E                       1760 00106$:
                                   1761 ;	8051_i2c_eeprom.c:266: i2c_stop();
      00371E C0 07            [24] 1762 	push	ar7
      003720 C0 06            [24] 1763 	push	ar6
      003722 C0 05            [24] 1764 	push	ar5
      003724 12 3A 7E         [24] 1765 	lcall	_i2c_stop
      003727 D0 05            [24] 1766 	pop	ar5
      003729 D0 06            [24] 1767 	pop	ar6
      00372B D0 07            [24] 1768 	pop	ar7
                                   1769 ;	8051_i2c_eeprom.c:268: for(int i = 0; i<100; i++)
      00372D 7B 00            [12] 1770 	mov	r3,#0x00
      00372F 7C 00            [12] 1771 	mov	r4,#0x00
      003731                       1772 00111$:
      003731 C3               [12] 1773 	clr	c
      003732 EB               [12] 1774 	mov	a,r3
      003733 94 64            [12] 1775 	subb	a,#0x64
      003735 EC               [12] 1776 	mov	a,r4
      003736 64 80            [12] 1777 	xrl	a,#0x80
      003738 94 80            [12] 1778 	subb	a,#0x80
      00373A 50 1E            [24] 1779 	jnc	00107$
                                   1780 ;	8051_i2c_eeprom.c:270: i2c_delay();
      00373C C0 07            [24] 1781 	push	ar7
      00373E C0 06            [24] 1782 	push	ar6
      003740 C0 05            [24] 1783 	push	ar5
      003742 C0 04            [24] 1784 	push	ar4
      003744 C0 03            [24] 1785 	push	ar3
      003746 12 3A 8B         [24] 1786 	lcall	_i2c_delay
      003749 D0 03            [24] 1787 	pop	ar3
      00374B D0 04            [24] 1788 	pop	ar4
      00374D D0 05            [24] 1789 	pop	ar5
      00374F D0 06            [24] 1790 	pop	ar6
      003751 D0 07            [24] 1791 	pop	ar7
                                   1792 ;	8051_i2c_eeprom.c:268: for(int i = 0; i<100; i++)
      003753 0B               [12] 1793 	inc	r3
      003754 BB 00 DA         [24] 1794 	cjne	r3,#0x00,00111$
      003757 0C               [12] 1795 	inc	r4
      003758 80 D7            [24] 1796 	sjmp	00111$
      00375A                       1797 00107$:
                                   1798 ;	8051_i2c_eeprom.c:272: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      00375A 7C 00            [12] 1799 	mov	r4,#0x00
      00375C C0 05            [24] 1800 	push	ar5
      00375E C0 04            [24] 1801 	push	ar4
      003760 C0 06            [24] 1802 	push	ar6
      003762 C0 07            [24] 1803 	push	ar7
      003764 74 62            [12] 1804 	mov	a,#___str_32
      003766 C0 E0            [24] 1805 	push	acc
      003768 74 4F            [12] 1806 	mov	a,#(___str_32 >> 8)
      00376A C0 E0            [24] 1807 	push	acc
      00376C 74 80            [12] 1808 	mov	a,#0x80
      00376E C0 E0            [24] 1809 	push	acc
      003770 12 3B A8         [24] 1810 	lcall	_printf
      003773 E5 81            [12] 1811 	mov	a,sp
      003775 24 F9            [12] 1812 	add	a,#0xf9
      003777 F5 81            [12] 1813 	mov	sp,a
                                   1814 ;	8051_i2c_eeprom.c:273: printf("│ Write successful!                             │\n\r");
      003779 74 97            [12] 1815 	mov	a,#___str_33
      00377B C0 E0            [24] 1816 	push	acc
      00377D 74 4F            [12] 1817 	mov	a,#(___str_33 >> 8)
      00377F C0 E0            [24] 1818 	push	acc
      003781 74 80            [12] 1819 	mov	a,#0x80
      003783 C0 E0            [24] 1820 	push	acc
      003785 12 3B A8         [24] 1821 	lcall	_printf
      003788 15 81            [12] 1822 	dec	sp
      00378A 15 81            [12] 1823 	dec	sp
      00378C 15 81            [12] 1824 	dec	sp
                                   1825 ;	8051_i2c_eeprom.c:274: printf("└───────────────────────────────────────────────┘\n\r");
      00378E 74 CF            [12] 1826 	mov	a,#___str_34
      003790 C0 E0            [24] 1827 	push	acc
      003792 74 4F            [12] 1828 	mov	a,#(___str_34 >> 8)
      003794 C0 E0            [24] 1829 	push	acc
      003796 74 80            [12] 1830 	mov	a,#0x80
      003798 C0 E0            [24] 1831 	push	acc
      00379A 12 3B A8         [24] 1832 	lcall	_printf
      00379D 15 81            [12] 1833 	dec	sp
      00379F 15 81            [12] 1834 	dec	sp
      0037A1 15 81            [12] 1835 	dec	sp
                                   1836 ;	8051_i2c_eeprom.c:275: return 1;  // Success
      0037A3 90 00 01         [24] 1837 	mov	dptr,#0x0001
      0037A6 22               [24] 1838 	ret
      0037A7                       1839 00109$:
                                   1840 ;	8051_i2c_eeprom.c:277: printf("| CAN NOT WRITE                   |\n\r", address);
      0037A7 90 04 10         [24] 1841 	mov	dptr,#_eeprom_write_address_65536_83
      0037AA E0               [24] 1842 	movx	a,@dptr
      0037AB C0 E0            [24] 1843 	push	acc
      0037AD A3               [24] 1844 	inc	dptr
      0037AE E0               [24] 1845 	movx	a,@dptr
      0037AF C0 E0            [24] 1846 	push	acc
      0037B1 74 65            [12] 1847 	mov	a,#___str_35
      0037B3 C0 E0            [24] 1848 	push	acc
      0037B5 74 50            [12] 1849 	mov	a,#(___str_35 >> 8)
      0037B7 C0 E0            [24] 1850 	push	acc
      0037B9 74 80            [12] 1851 	mov	a,#0x80
      0037BB C0 E0            [24] 1852 	push	acc
      0037BD 12 3B A8         [24] 1853 	lcall	_printf
      0037C0 E5 81            [12] 1854 	mov	a,sp
      0037C2 24 FB            [12] 1855 	add	a,#0xfb
      0037C4 F5 81            [12] 1856 	mov	sp,a
                                   1857 ;	8051_i2c_eeprom.c:278: return 0;
      0037C6 90 00 00         [24] 1858 	mov	dptr,#0x0000
                                   1859 ;	8051_i2c_eeprom.c:280: }
      0037C9 22               [24] 1860 	ret
                                   1861 ;------------------------------------------------------------
                                   1862 ;Allocation info for local variables in function 'eeprom_read'
                                   1863 ;------------------------------------------------------------
                                   1864 ;address                   Allocated with name '_eeprom_read_address_65536_91'
                                   1865 ;result                    Allocated with name '_eeprom_read_result_131072_93'
                                   1866 ;------------------------------------------------------------
                                   1867 ;	8051_i2c_eeprom.c:282: int eeprom_read(unsigned int address) 
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function eeprom_read
                                   1870 ;	-----------------------------------------
      0037CA                       1871 _eeprom_read:
      0037CA AF 83            [24] 1872 	mov	r7,dph
      0037CC E5 82            [12] 1873 	mov	a,dpl
      0037CE 90 04 12         [24] 1874 	mov	dptr,#_eeprom_read_address_65536_91
      0037D1 F0               [24] 1875 	movx	@dptr,a
      0037D2 EF               [12] 1876 	mov	a,r7
      0037D3 A3               [24] 1877 	inc	dptr
      0037D4 F0               [24] 1878 	movx	@dptr,a
                                   1879 ;	8051_i2c_eeprom.c:284: if(address_range_flag)
      0037D5 90 04 51         [24] 1880 	mov	dptr,#_address_range_flag
      0037D8 E0               [24] 1881 	movx	a,@dptr
      0037D9 F5 F0            [12] 1882 	mov	b,a
      0037DB A3               [24] 1883 	inc	dptr
      0037DC E0               [24] 1884 	movx	a,@dptr
      0037DD 45 F0            [12] 1885 	orl	a,b
      0037DF 70 03            [24] 1886 	jnz	00128$
      0037E1 02 39 1A         [24] 1887 	ljmp	00108$
      0037E4                       1888 00128$:
                                   1889 ;	8051_i2c_eeprom.c:289: i2c_start();
      0037E4 12 3A 69         [24] 1890 	lcall	_i2c_start
                                   1891 ;	8051_i2c_eeprom.c:292: if(!i2c_write(EEPROM_ID | WRITE)) {
      0037E7 75 82 A0         [24] 1892 	mov	dpl,#0xa0
      0037EA 12 39 7C         [24] 1893 	lcall	_i2c_write
      0037ED E5 82            [12] 1894 	mov	a,dpl
      0037EF 85 83 F0         [24] 1895 	mov	b,dph
      0037F2 45 F0            [12] 1896 	orl	a,b
      0037F4 70 1C            [24] 1897 	jnz	00102$
                                   1898 ;	8051_i2c_eeprom.c:293: printf("Error: No ACK for device address (write mode)\n\r");
      0037F6 74 8B            [12] 1899 	mov	a,#___str_36
      0037F8 C0 E0            [24] 1900 	push	acc
      0037FA 74 50            [12] 1901 	mov	a,#(___str_36 >> 8)
      0037FC C0 E0            [24] 1902 	push	acc
      0037FE 74 80            [12] 1903 	mov	a,#0x80
      003800 C0 E0            [24] 1904 	push	acc
      003802 12 3B A8         [24] 1905 	lcall	_printf
      003805 15 81            [12] 1906 	dec	sp
      003807 15 81            [12] 1907 	dec	sp
      003809 15 81            [12] 1908 	dec	sp
                                   1909 ;	8051_i2c_eeprom.c:294: i2c_stop();
      00380B 12 3A 7E         [24] 1910 	lcall	_i2c_stop
                                   1911 ;	8051_i2c_eeprom.c:295: return -1;
      00380E 90 FF FF         [24] 1912 	mov	dptr,#0xffff
      003811 22               [24] 1913 	ret
      003812                       1914 00102$:
                                   1915 ;	8051_i2c_eeprom.c:299: if(!i2c_write((unsigned char)address)) {
      003812 90 04 12         [24] 1916 	mov	dptr,#_eeprom_read_address_65536_91
      003815 E0               [24] 1917 	movx	a,@dptr
      003816 FE               [12] 1918 	mov	r6,a
      003817 A3               [24] 1919 	inc	dptr
      003818 E0               [24] 1920 	movx	a,@dptr
      003819 FF               [12] 1921 	mov	r7,a
      00381A 8E 05            [24] 1922 	mov	ar5,r6
      00381C 8D 82            [24] 1923 	mov	dpl,r5
      00381E C0 07            [24] 1924 	push	ar7
      003820 C0 06            [24] 1925 	push	ar6
      003822 12 39 7C         [24] 1926 	lcall	_i2c_write
      003825 E5 82            [12] 1927 	mov	a,dpl
      003827 85 83 F0         [24] 1928 	mov	b,dph
      00382A D0 06            [24] 1929 	pop	ar6
      00382C D0 07            [24] 1930 	pop	ar7
      00382E 45 F0            [12] 1931 	orl	a,b
      003830 70 1C            [24] 1932 	jnz	00104$
                                   1933 ;	8051_i2c_eeprom.c:300: printf("Error: No ACK for memory address\n\r");
      003832 74 26            [12] 1934 	mov	a,#___str_30
      003834 C0 E0            [24] 1935 	push	acc
      003836 74 4F            [12] 1936 	mov	a,#(___str_30 >> 8)
      003838 C0 E0            [24] 1937 	push	acc
      00383A 74 80            [12] 1938 	mov	a,#0x80
      00383C C0 E0            [24] 1939 	push	acc
      00383E 12 3B A8         [24] 1940 	lcall	_printf
      003841 15 81            [12] 1941 	dec	sp
      003843 15 81            [12] 1942 	dec	sp
      003845 15 81            [12] 1943 	dec	sp
                                   1944 ;	8051_i2c_eeprom.c:301: i2c_stop();
      003847 12 3A 7E         [24] 1945 	lcall	_i2c_stop
                                   1946 ;	8051_i2c_eeprom.c:302: return -1;
      00384A 90 FF FF         [24] 1947 	mov	dptr,#0xffff
      00384D 22               [24] 1948 	ret
      00384E                       1949 00104$:
                                   1950 ;	8051_i2c_eeprom.c:306: i2c_start();
      00384E C0 07            [24] 1951 	push	ar7
      003850 C0 06            [24] 1952 	push	ar6
      003852 12 3A 69         [24] 1953 	lcall	_i2c_start
                                   1954 ;	8051_i2c_eeprom.c:309: if(!i2c_write(EEPROM_ID | READ)) {
      003855 75 82 A1         [24] 1955 	mov	dpl,#0xa1
      003858 12 39 7C         [24] 1956 	lcall	_i2c_write
      00385B E5 82            [12] 1957 	mov	a,dpl
      00385D 85 83 F0         [24] 1958 	mov	b,dph
      003860 D0 06            [24] 1959 	pop	ar6
      003862 D0 07            [24] 1960 	pop	ar7
      003864 45 F0            [12] 1961 	orl	a,b
      003866 70 1C            [24] 1962 	jnz	00106$
                                   1963 ;	8051_i2c_eeprom.c:310: printf("Error: No ACK for device address (read mode)\n\r");
      003868 74 BB            [12] 1964 	mov	a,#___str_37
      00386A C0 E0            [24] 1965 	push	acc
      00386C 74 50            [12] 1966 	mov	a,#(___str_37 >> 8)
      00386E C0 E0            [24] 1967 	push	acc
      003870 74 80            [12] 1968 	mov	a,#0x80
      003872 C0 E0            [24] 1969 	push	acc
      003874 12 3B A8         [24] 1970 	lcall	_printf
      003877 15 81            [12] 1971 	dec	sp
      003879 15 81            [12] 1972 	dec	sp
      00387B 15 81            [12] 1973 	dec	sp
                                   1974 ;	8051_i2c_eeprom.c:311: i2c_stop();
      00387D 12 3A 7E         [24] 1975 	lcall	_i2c_stop
                                   1976 ;	8051_i2c_eeprom.c:312: return -1;
      003880 90 FF FF         [24] 1977 	mov	dptr,#0xffff
      003883 22               [24] 1978 	ret
      003884                       1979 00106$:
                                   1980 ;	8051_i2c_eeprom.c:316: result = i2c_read(0);  // 0 means send NACK
      003884 90 00 00         [24] 1981 	mov	dptr,#0x0000
      003887 C0 07            [24] 1982 	push	ar7
      003889 C0 06            [24] 1983 	push	ar6
      00388B 12 39 E4         [24] 1984 	lcall	_i2c_read
      00388E AC 82            [24] 1985 	mov	r4,dpl
      003890 D0 06            [24] 1986 	pop	ar6
      003892 D0 07            [24] 1987 	pop	ar7
                                   1988 ;	8051_i2c_eeprom.c:317: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      003894 7D 00            [12] 1989 	mov	r5,#0x00
      003896 C0 07            [24] 1990 	push	ar7
      003898 C0 06            [24] 1991 	push	ar6
      00389A C0 05            [24] 1992 	push	ar5
      00389C C0 04            [24] 1993 	push	ar4
      00389E C0 04            [24] 1994 	push	ar4
      0038A0 C0 05            [24] 1995 	push	ar5
      0038A2 C0 06            [24] 1996 	push	ar6
      0038A4 C0 07            [24] 1997 	push	ar7
      0038A6 74 EA            [12] 1998 	mov	a,#___str_38
      0038A8 C0 E0            [24] 1999 	push	acc
      0038AA 74 50            [12] 2000 	mov	a,#(___str_38 >> 8)
      0038AC C0 E0            [24] 2001 	push	acc
      0038AE 74 80            [12] 2002 	mov	a,#0x80
      0038B0 C0 E0            [24] 2003 	push	acc
      0038B2 12 3B A8         [24] 2004 	lcall	_printf
      0038B5 E5 81            [12] 2005 	mov	a,sp
      0038B7 24 F9            [12] 2006 	add	a,#0xf9
      0038B9 F5 81            [12] 2007 	mov	sp,a
      0038BB D0 04            [24] 2008 	pop	ar4
      0038BD D0 05            [24] 2009 	pop	ar5
      0038BF D0 06            [24] 2010 	pop	ar6
      0038C1 D0 07            [24] 2011 	pop	ar7
                                   2012 ;	8051_i2c_eeprom.c:318: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038C3 C0 05            [24] 2013 	push	ar5
      0038C5 C0 04            [24] 2014 	push	ar4
      0038C7 C0 04            [24] 2015 	push	ar4
      0038C9 C0 05            [24] 2016 	push	ar5
      0038CB C0 06            [24] 2017 	push	ar6
      0038CD C0 07            [24] 2018 	push	ar7
      0038CF 74 2D            [12] 2019 	mov	a,#___str_39
      0038D1 C0 E0            [24] 2020 	push	acc
      0038D3 74 51            [12] 2021 	mov	a,#(___str_39 >> 8)
      0038D5 C0 E0            [24] 2022 	push	acc
      0038D7 74 80            [12] 2023 	mov	a,#0x80
      0038D9 C0 E0            [24] 2024 	push	acc
      0038DB 12 3B A8         [24] 2025 	lcall	_printf
      0038DE E5 81            [12] 2026 	mov	a,sp
      0038E0 24 F9            [12] 2027 	add	a,#0xf9
      0038E2 F5 81            [12] 2028 	mov	sp,a
                                   2029 ;	8051_i2c_eeprom.c:319: printf("│ Read successful!                 │\n\r");
      0038E4 74 42            [12] 2030 	mov	a,#___str_40
      0038E6 C0 E0            [24] 2031 	push	acc
      0038E8 74 51            [12] 2032 	mov	a,#(___str_40 >> 8)
      0038EA C0 E0            [24] 2033 	push	acc
      0038EC 74 80            [12] 2034 	mov	a,#0x80
      0038EE C0 E0            [24] 2035 	push	acc
      0038F0 12 3B A8         [24] 2036 	lcall	_printf
      0038F3 15 81            [12] 2037 	dec	sp
      0038F5 15 81            [12] 2038 	dec	sp
      0038F7 15 81            [12] 2039 	dec	sp
                                   2040 ;	8051_i2c_eeprom.c:320: printf("└───────────────────────────────────────────────┘\n\r");
      0038F9 74 CF            [12] 2041 	mov	a,#___str_34
      0038FB C0 E0            [24] 2042 	push	acc
      0038FD 74 4F            [12] 2043 	mov	a,#(___str_34 >> 8)
      0038FF C0 E0            [24] 2044 	push	acc
      003901 74 80            [12] 2045 	mov	a,#0x80
      003903 C0 E0            [24] 2046 	push	acc
      003905 12 3B A8         [24] 2047 	lcall	_printf
      003908 15 81            [12] 2048 	dec	sp
      00390A 15 81            [12] 2049 	dec	sp
      00390C 15 81            [12] 2050 	dec	sp
                                   2051 ;	8051_i2c_eeprom.c:321: i2c_stop();
      00390E 12 3A 7E         [24] 2052 	lcall	_i2c_stop
      003911 D0 04            [24] 2053 	pop	ar4
      003913 D0 05            [24] 2054 	pop	ar5
                                   2055 ;	8051_i2c_eeprom.c:322: return result;
      003915 8C 82            [24] 2056 	mov	dpl,r4
      003917 8D 83            [24] 2057 	mov	dph,r5
      003919 22               [24] 2058 	ret
      00391A                       2059 00108$:
                                   2060 ;	8051_i2c_eeprom.c:327: printf("╔══════════════════════════════════════════╗\n\r");
      00391A 74 29            [12] 2061 	mov	a,#___str_21
      00391C C0 E0            [24] 2062 	push	acc
      00391E 74 4D            [12] 2063 	mov	a,#(___str_21 >> 8)
      003920 C0 E0            [24] 2064 	push	acc
      003922 74 80            [12] 2065 	mov	a,#0x80
      003924 C0 E0            [24] 2066 	push	acc
      003926 12 3B A8         [24] 2067 	lcall	_printf
      003929 15 81            [12] 2068 	dec	sp
      00392B 15 81            [12] 2069 	dec	sp
      00392D 15 81            [12] 2070 	dec	sp
                                   2071 ;	8051_i2c_eeprom.c:328: printf("║          ! MEMORY READ ERROR !           ║\n\r");
      00392F 74 6D            [12] 2072 	mov	a,#___str_41
      003931 C0 E0            [24] 2073 	push	acc
      003933 74 51            [12] 2074 	mov	a,#(___str_41 >> 8)
      003935 C0 E0            [24] 2075 	push	acc
      003937 74 80            [12] 2076 	mov	a,#0x80
      003939 C0 E0            [24] 2077 	push	acc
      00393B 12 3B A8         [24] 2078 	lcall	_printf
      00393E 15 81            [12] 2079 	dec	sp
      003940 15 81            [12] 2080 	dec	sp
      003942 15 81            [12] 2081 	dec	sp
                                   2082 ;	8051_i2c_eeprom.c:329: printf("║      Cannot Read at Address 0x%03X       ║\n\r", address);
      003944 90 04 12         [24] 2083 	mov	dptr,#_eeprom_read_address_65536_91
      003947 E0               [24] 2084 	movx	a,@dptr
      003948 C0 E0            [24] 2085 	push	acc
      00394A A3               [24] 2086 	inc	dptr
      00394B E0               [24] 2087 	movx	a,@dptr
      00394C C0 E0            [24] 2088 	push	acc
      00394E 74 A0            [12] 2089 	mov	a,#___str_42
      003950 C0 E0            [24] 2090 	push	acc
      003952 74 51            [12] 2091 	mov	a,#(___str_42 >> 8)
      003954 C0 E0            [24] 2092 	push	acc
      003956 74 80            [12] 2093 	mov	a,#0x80
      003958 C0 E0            [24] 2094 	push	acc
      00395A 12 3B A8         [24] 2095 	lcall	_printf
      00395D E5 81            [12] 2096 	mov	a,sp
      00395F 24 FB            [12] 2097 	add	a,#0xfb
      003961 F5 81            [12] 2098 	mov	sp,a
                                   2099 ;	8051_i2c_eeprom.c:330: printf("╚══════════════════════════════════════════╝\n\r");
      003963 74 12            [12] 2100 	mov	a,#___str_24
      003965 C0 E0            [24] 2101 	push	acc
      003967 74 4E            [12] 2102 	mov	a,#(___str_24 >> 8)
      003969 C0 E0            [24] 2103 	push	acc
      00396B 74 80            [12] 2104 	mov	a,#0x80
      00396D C0 E0            [24] 2105 	push	acc
      00396F 12 3B A8         [24] 2106 	lcall	_printf
      003972 15 81            [12] 2107 	dec	sp
      003974 15 81            [12] 2108 	dec	sp
      003976 15 81            [12] 2109 	dec	sp
                                   2110 ;	8051_i2c_eeprom.c:331: return 0;
      003978 90 00 00         [24] 2111 	mov	dptr,#0x0000
                                   2112 ;	8051_i2c_eeprom.c:335: }
      00397B 22               [24] 2113 	ret
                                   2114 ;------------------------------------------------------------
                                   2115 ;Allocation info for local variables in function 'i2c_write'
                                   2116 ;------------------------------------------------------------
                                   2117 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2118 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2119 ;------------------------------------------------------------
                                   2120 ;	8051_i2c_eeprom.c:338: int i2c_write(unsigned char data)
                                   2121 ;	-----------------------------------------
                                   2122 ;	 function i2c_write
                                   2123 ;	-----------------------------------------
      00397C                       2124 _i2c_write:
      00397C E5 82            [12] 2125 	mov	a,dpl
      00397E 90 04 14         [24] 2126 	mov	dptr,#_i2c_write_data_65536_98
      003981 F0               [24] 2127 	movx	@dptr,a
                                   2128 ;	8051_i2c_eeprom.c:342: for(i=0;i<=7;i++)
      003982 7E 00            [12] 2129 	mov	r6,#0x00
      003984 7F 00            [12] 2130 	mov	r7,#0x00
      003986                       2131 00104$:
                                   2132 ;	8051_i2c_eeprom.c:344: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003986 90 04 14         [24] 2133 	mov	dptr,#_i2c_write_data_65536_98
      003989 E0               [24] 2134 	movx	a,@dptr
      00398A FD               [12] 2135 	mov	r5,a
      00398B 23               [12] 2136 	rl	a
      00398C 54 01            [12] 2137 	anl	a,#0x01
      00398E 24 FF            [12] 2138 	add	a,#0xff
      003990 92 94            [24] 2139 	mov	_P1_4,c
                                   2140 ;	8051_i2c_eeprom.c:345: i2c_delay();        // Setup time for data
      003992 C0 07            [24] 2141 	push	ar7
      003994 C0 06            [24] 2142 	push	ar6
      003996 C0 05            [24] 2143 	push	ar5
      003998 12 3A 8B         [24] 2144 	lcall	_i2c_delay
                                   2145 ;	8051_i2c_eeprom.c:346: SCL=1;
                                   2146 ;	assignBit
      00399B D2 93            [12] 2147 	setb	_P1_3
                                   2148 ;	8051_i2c_eeprom.c:347: i2c_delay();        // Hold time for clock
      00399D 12 3A 8B         [24] 2149 	lcall	_i2c_delay
      0039A0 D0 05            [24] 2150 	pop	ar5
      0039A2 D0 06            [24] 2151 	pop	ar6
      0039A4 D0 07            [24] 2152 	pop	ar7
                                   2153 ;	8051_i2c_eeprom.c:348: SCL=0;
                                   2154 ;	assignBit
      0039A6 C2 93            [12] 2155 	clr	_P1_3
                                   2156 ;	8051_i2c_eeprom.c:349: data = data << 1;
      0039A8 ED               [12] 2157 	mov	a,r5
      0039A9 2D               [12] 2158 	add	a,r5
      0039AA 90 04 14         [24] 2159 	mov	dptr,#_i2c_write_data_65536_98
      0039AD F0               [24] 2160 	movx	@dptr,a
                                   2161 ;	8051_i2c_eeprom.c:342: for(i=0;i<=7;i++)
      0039AE 0E               [12] 2162 	inc	r6
      0039AF BE 00 01         [24] 2163 	cjne	r6,#0x00,00121$
      0039B2 0F               [12] 2164 	inc	r7
      0039B3                       2165 00121$:
      0039B3 C3               [12] 2166 	clr	c
      0039B4 74 07            [12] 2167 	mov	a,#0x07
      0039B6 9E               [12] 2168 	subb	a,r6
      0039B7 E4               [12] 2169 	clr	a
      0039B8 9F               [12] 2170 	subb	a,r7
      0039B9 50 CB            [24] 2171 	jnc	00104$
                                   2172 ;	8051_i2c_eeprom.c:353: SDA = 1;            // Release SDA for slave
                                   2173 ;	assignBit
      0039BB D2 94            [12] 2174 	setb	_P1_4
                                   2175 ;	8051_i2c_eeprom.c:354: SCL = 1;            // 9th clock pulse for ACK
                                   2176 ;	assignBit
      0039BD D2 93            [12] 2177 	setb	_P1_3
                                   2178 ;	8051_i2c_eeprom.c:355: i2c_delay();
      0039BF 12 3A 8B         [24] 2179 	lcall	_i2c_delay
                                   2180 ;	8051_i2c_eeprom.c:356: if(SDA == 1)        // If SDA is still high, no ACK received
      0039C2 30 94 19         [24] 2181 	jnb	_P1_4,00103$
                                   2182 ;	8051_i2c_eeprom.c:359: printf("ACK DID NOT ARRIVE\n\r");
      0039C5 74 D3            [12] 2183 	mov	a,#___str_43
      0039C7 C0 E0            [24] 2184 	push	acc
      0039C9 74 51            [12] 2185 	mov	a,#(___str_43 >> 8)
      0039CB C0 E0            [24] 2186 	push	acc
      0039CD 74 80            [12] 2187 	mov	a,#0x80
      0039CF C0 E0            [24] 2188 	push	acc
      0039D1 12 3B A8         [24] 2189 	lcall	_printf
      0039D4 15 81            [12] 2190 	dec	sp
      0039D6 15 81            [12] 2191 	dec	sp
      0039D8 15 81            [12] 2192 	dec	sp
                                   2193 ;	8051_i2c_eeprom.c:360: return 0;       // Error
      0039DA 90 00 00         [24] 2194 	mov	dptr,#0x0000
      0039DD 22               [24] 2195 	ret
      0039DE                       2196 00103$:
                                   2197 ;	8051_i2c_eeprom.c:362: SCL = 0;
                                   2198 ;	assignBit
      0039DE C2 93            [12] 2199 	clr	_P1_3
                                   2200 ;	8051_i2c_eeprom.c:364: return 1;           // Success
      0039E0 90 00 01         [24] 2201 	mov	dptr,#0x0001
                                   2202 ;	8051_i2c_eeprom.c:366: }
      0039E3 22               [24] 2203 	ret
                                   2204 ;------------------------------------------------------------
                                   2205 ;Allocation info for local variables in function 'i2c_read'
                                   2206 ;------------------------------------------------------------
                                   2207 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2208 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2209 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2210 ;------------------------------------------------------------
                                   2211 ;	8051_i2c_eeprom.c:367: int i2c_read(int ACK)
                                   2212 ;	-----------------------------------------
                                   2213 ;	 function i2c_read
                                   2214 ;	-----------------------------------------
      0039E4                       2215 _i2c_read:
      0039E4 AF 83            [24] 2216 	mov	r7,dph
      0039E6 E5 82            [12] 2217 	mov	a,dpl
      0039E8 90 04 15         [24] 2218 	mov	dptr,#_i2c_read_ACK_65536_103
      0039EB F0               [24] 2219 	movx	@dptr,a
      0039EC EF               [12] 2220 	mov	a,r7
      0039ED A3               [24] 2221 	inc	dptr
      0039EE F0               [24] 2222 	movx	@dptr,a
                                   2223 ;	8051_i2c_eeprom.c:369: unsigned char buff=0;
      0039EF 90 04 17         [24] 2224 	mov	dptr,#_i2c_read_buff_65536_104
      0039F2 E4               [12] 2225 	clr	a
      0039F3 F0               [24] 2226 	movx	@dptr,a
                                   2227 ;	8051_i2c_eeprom.c:370: SCL = 0;
                                   2228 ;	assignBit
      0039F4 C2 93            [12] 2229 	clr	_P1_3
                                   2230 ;	8051_i2c_eeprom.c:371: for(int i=0;i<8;i++)
      0039F6 7E 00            [12] 2231 	mov	r6,#0x00
      0039F8 7F 00            [12] 2232 	mov	r7,#0x00
      0039FA                       2233 00103$:
      0039FA C3               [12] 2234 	clr	c
      0039FB EE               [12] 2235 	mov	a,r6
      0039FC 94 08            [12] 2236 	subb	a,#0x08
      0039FE EF               [12] 2237 	mov	a,r7
      0039FF 64 80            [12] 2238 	xrl	a,#0x80
      003A01 94 80            [12] 2239 	subb	a,#0x80
      003A03 50 40            [24] 2240 	jnc	00101$
                                   2241 ;	8051_i2c_eeprom.c:373: SCL = 1;
                                   2242 ;	assignBit
      003A05 D2 93            [12] 2243 	setb	_P1_3
                                   2244 ;	8051_i2c_eeprom.c:374: i2c_delay();
      003A07 C0 07            [24] 2245 	push	ar7
      003A09 C0 06            [24] 2246 	push	ar6
      003A0B 12 3A 8B         [24] 2247 	lcall	_i2c_delay
      003A0E D0 06            [24] 2248 	pop	ar6
      003A10 D0 07            [24] 2249 	pop	ar7
                                   2250 ;	8051_i2c_eeprom.c:375: buff |= (SDA << (7 - i));
      003A12 A2 94            [12] 2251 	mov	c,_P1_4
      003A14 E4               [12] 2252 	clr	a
      003A15 33               [12] 2253 	rlc	a
      003A16 FD               [12] 2254 	mov	r5,a
      003A17 8E 04            [24] 2255 	mov	ar4,r6
      003A19 74 07            [12] 2256 	mov	a,#0x07
      003A1B C3               [12] 2257 	clr	c
      003A1C 9C               [12] 2258 	subb	a,r4
      003A1D FC               [12] 2259 	mov	r4,a
      003A1E 8C F0            [24] 2260 	mov	b,r4
      003A20 05 F0            [12] 2261 	inc	b
      003A22 ED               [12] 2262 	mov	a,r5
      003A23 80 02            [24] 2263 	sjmp	00119$
      003A25                       2264 00117$:
      003A25 25 E0            [12] 2265 	add	a,acc
      003A27                       2266 00119$:
      003A27 D5 F0 FB         [24] 2267 	djnz	b,00117$
      003A2A FC               [12] 2268 	mov	r4,a
      003A2B 90 04 17         [24] 2269 	mov	dptr,#_i2c_read_buff_65536_104
      003A2E E0               [24] 2270 	movx	a,@dptr
      003A2F 4C               [12] 2271 	orl	a,r4
      003A30 F0               [24] 2272 	movx	@dptr,a
                                   2273 ;	8051_i2c_eeprom.c:376: i2c_delay();
      003A31 C0 07            [24] 2274 	push	ar7
      003A33 C0 06            [24] 2275 	push	ar6
      003A35 12 3A 8B         [24] 2276 	lcall	_i2c_delay
      003A38 D0 06            [24] 2277 	pop	ar6
      003A3A D0 07            [24] 2278 	pop	ar7
                                   2279 ;	8051_i2c_eeprom.c:377: SCL=0;
                                   2280 ;	assignBit
      003A3C C2 93            [12] 2281 	clr	_P1_3
                                   2282 ;	8051_i2c_eeprom.c:371: for(int i=0;i<8;i++)
      003A3E 0E               [12] 2283 	inc	r6
      003A3F BE 00 B8         [24] 2284 	cjne	r6,#0x00,00103$
      003A42 0F               [12] 2285 	inc	r7
      003A43 80 B5            [24] 2286 	sjmp	00103$
      003A45                       2287 00101$:
                                   2288 ;	8051_i2c_eeprom.c:381: SDA = !ACK;         // ACK = 0, NACK = 1
      003A45 90 04 15         [24] 2289 	mov	dptr,#_i2c_read_ACK_65536_103
      003A48 E0               [24] 2290 	movx	a,@dptr
      003A49 FE               [12] 2291 	mov	r6,a
      003A4A A3               [24] 2292 	inc	dptr
      003A4B E0               [24] 2293 	movx	a,@dptr
      003A4C 4E               [12] 2294 	orl	a,r6
      003A4D B4 01 00         [24] 2295 	cjne	a,#0x01,00121$
      003A50                       2296 00121$:
      003A50 E4               [12] 2297 	clr	a
      003A51 33               [12] 2298 	rlc	a
      003A52 24 FF            [12] 2299 	add	a,#0xff
      003A54 92 94            [24] 2300 	mov	_P1_4,c
                                   2301 ;	8051_i2c_eeprom.c:382: SCL = 1;
                                   2302 ;	assignBit
      003A56 D2 93            [12] 2303 	setb	_P1_3
                                   2304 ;	8051_i2c_eeprom.c:383: i2c_delay();
      003A58 12 3A 8B         [24] 2305 	lcall	_i2c_delay
                                   2306 ;	8051_i2c_eeprom.c:384: SCL = 0;
                                   2307 ;	assignBit
      003A5B C2 93            [12] 2308 	clr	_P1_3
                                   2309 ;	8051_i2c_eeprom.c:386: return buff;
      003A5D 90 04 17         [24] 2310 	mov	dptr,#_i2c_read_buff_65536_104
      003A60 E0               [24] 2311 	movx	a,@dptr
      003A61 FF               [12] 2312 	mov	r7,a
      003A62 7E 00            [12] 2313 	mov	r6,#0x00
      003A64 8F 82            [24] 2314 	mov	dpl,r7
      003A66 8E 83            [24] 2315 	mov	dph,r6
                                   2316 ;	8051_i2c_eeprom.c:387: }
      003A68 22               [24] 2317 	ret
                                   2318 ;------------------------------------------------------------
                                   2319 ;Allocation info for local variables in function 'i2c_start'
                                   2320 ;------------------------------------------------------------
                                   2321 ;	8051_i2c_eeprom.c:388: void i2c_start(void)
                                   2322 ;	-----------------------------------------
                                   2323 ;	 function i2c_start
                                   2324 ;	-----------------------------------------
      003A69                       2325 _i2c_start:
                                   2326 ;	8051_i2c_eeprom.c:390: i2c_delay();
      003A69 12 3A 8B         [24] 2327 	lcall	_i2c_delay
                                   2328 ;	8051_i2c_eeprom.c:391: SDA = 1;
                                   2329 ;	assignBit
      003A6C D2 94            [12] 2330 	setb	_P1_4
                                   2331 ;	8051_i2c_eeprom.c:392: i2c_delay();
      003A6E 12 3A 8B         [24] 2332 	lcall	_i2c_delay
                                   2333 ;	8051_i2c_eeprom.c:393: SCL = 1;
                                   2334 ;	assignBit
      003A71 D2 93            [12] 2335 	setb	_P1_3
                                   2336 ;	8051_i2c_eeprom.c:394: i2c_delay();
      003A73 12 3A 8B         [24] 2337 	lcall	_i2c_delay
                                   2338 ;	8051_i2c_eeprom.c:395: SDA = 0;
                                   2339 ;	assignBit
      003A76 C2 94            [12] 2340 	clr	_P1_4
                                   2341 ;	8051_i2c_eeprom.c:396: i2c_delay();
      003A78 12 3A 8B         [24] 2342 	lcall	_i2c_delay
                                   2343 ;	8051_i2c_eeprom.c:397: SCL = 0;
                                   2344 ;	assignBit
      003A7B C2 93            [12] 2345 	clr	_P1_3
                                   2346 ;	8051_i2c_eeprom.c:398: }
      003A7D 22               [24] 2347 	ret
                                   2348 ;------------------------------------------------------------
                                   2349 ;Allocation info for local variables in function 'i2c_stop'
                                   2350 ;------------------------------------------------------------
                                   2351 ;	8051_i2c_eeprom.c:400: void i2c_stop(void)
                                   2352 ;	-----------------------------------------
                                   2353 ;	 function i2c_stop
                                   2354 ;	-----------------------------------------
      003A7E                       2355 _i2c_stop:
                                   2356 ;	8051_i2c_eeprom.c:402: SDA = 0;
                                   2357 ;	assignBit
      003A7E C2 94            [12] 2358 	clr	_P1_4
                                   2359 ;	8051_i2c_eeprom.c:403: i2c_delay();
      003A80 12 3A 8B         [24] 2360 	lcall	_i2c_delay
                                   2361 ;	8051_i2c_eeprom.c:404: SCL = 1;
                                   2362 ;	assignBit
      003A83 D2 93            [12] 2363 	setb	_P1_3
                                   2364 ;	8051_i2c_eeprom.c:405: i2c_delay();
      003A85 12 3A 8B         [24] 2365 	lcall	_i2c_delay
                                   2366 ;	8051_i2c_eeprom.c:406: SDA = 1; 
                                   2367 ;	assignBit
      003A88 D2 94            [12] 2368 	setb	_P1_4
                                   2369 ;	8051_i2c_eeprom.c:407: }
      003A8A 22               [24] 2370 	ret
                                   2371 ;------------------------------------------------------------
                                   2372 ;Allocation info for local variables in function 'i2c_delay'
                                   2373 ;------------------------------------------------------------
                                   2374 ;i                         Allocated with name '_i2c_delay_i_131072_112'
                                   2375 ;------------------------------------------------------------
                                   2376 ;	8051_i2c_eeprom.c:409: void i2c_delay() 
                                   2377 ;	-----------------------------------------
                                   2378 ;	 function i2c_delay
                                   2379 ;	-----------------------------------------
      003A8B                       2380 _i2c_delay:
                                   2381 ;	8051_i2c_eeprom.c:417: for(int i = 0; i<500; i++);
      003A8B 7E 00            [12] 2382 	mov	r6,#0x00
      003A8D 7F 00            [12] 2383 	mov	r7,#0x00
      003A8F                       2384 00103$:
      003A8F C3               [12] 2385 	clr	c
      003A90 EE               [12] 2386 	mov	a,r6
      003A91 94 F4            [12] 2387 	subb	a,#0xf4
      003A93 EF               [12] 2388 	mov	a,r7
      003A94 64 80            [12] 2389 	xrl	a,#0x80
      003A96 94 81            [12] 2390 	subb	a,#0x81
      003A98 50 07            [24] 2391 	jnc	00105$
      003A9A 0E               [12] 2392 	inc	r6
      003A9B BE 00 F1         [24] 2393 	cjne	r6,#0x00,00103$
      003A9E 0F               [12] 2394 	inc	r7
      003A9F 80 EE            [24] 2395 	sjmp	00103$
      003AA1                       2396 00105$:
                                   2397 ;	8051_i2c_eeprom.c:418: }
      003AA1 22               [24] 2398 	ret
                                   2399 ;------------------------------------------------------------
                                   2400 ;Allocation info for local variables in function 'test_function'
                                   2401 ;------------------------------------------------------------
                                   2402 ;test_data                 Allocated with name '_test_function_test_data_65537_114'
                                   2403 ;address                   Allocated with name '_test_function_address_65537_114'
                                   2404 ;i                         Allocated with name '_test_function_i_131073_115'
                                   2405 ;read_data                 Allocated with name '_test_function_read_data_65538_117'
                                   2406 ;------------------------------------------------------------
                                   2407 ;	8051_i2c_eeprom.c:420: void test_function()
                                   2408 ;	-----------------------------------------
                                   2409 ;	 function test_function
                                   2410 ;	-----------------------------------------
      003AA2                       2411 _test_function:
                                   2412 ;	8051_i2c_eeprom.c:422: i2c_start();
      003AA2 12 3A 69         [24] 2413 	lcall	_i2c_start
                                   2414 ;	8051_i2c_eeprom.c:423: i2c_delay();
      003AA5 12 3A 8B         [24] 2415 	lcall	_i2c_delay
                                   2416 ;	8051_i2c_eeprom.c:429: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003AA8 74 02            [12] 2417 	mov	a,#0x02
      003AAA C0 E0            [24] 2418 	push	acc
      003AAC E4               [12] 2419 	clr	a
      003AAD C0 E0            [24] 2420 	push	acc
      003AAF 74 26            [12] 2421 	mov	a,#0x26
      003AB1 C0 E0            [24] 2422 	push	acc
      003AB3 E4               [12] 2423 	clr	a
      003AB4 C0 E0            [24] 2424 	push	acc
      003AB6 74 E8            [12] 2425 	mov	a,#___str_44
      003AB8 C0 E0            [24] 2426 	push	acc
      003ABA 74 51            [12] 2427 	mov	a,#(___str_44 >> 8)
      003ABC C0 E0            [24] 2428 	push	acc
      003ABE 74 80            [12] 2429 	mov	a,#0x80
      003AC0 C0 E0            [24] 2430 	push	acc
      003AC2 12 3B A8         [24] 2431 	lcall	_printf
      003AC5 E5 81            [12] 2432 	mov	a,sp
      003AC7 24 F9            [12] 2433 	add	a,#0xf9
      003AC9 F5 81            [12] 2434 	mov	sp,a
                                   2435 ;	8051_i2c_eeprom.c:430: eeprom_write(address, test_data);
      003ACB 90 04 0F         [24] 2436 	mov	dptr,#_eeprom_write_PARM_2
      003ACE 74 26            [12] 2437 	mov	a,#0x26
      003AD0 F0               [24] 2438 	movx	@dptr,a
      003AD1 90 00 02         [24] 2439 	mov	dptr,#0x0002
      003AD4 12 36 48         [24] 2440 	lcall	_eeprom_write
                                   2441 ;	8051_i2c_eeprom.c:431: i2c_stop();
      003AD7 12 3A 7E         [24] 2442 	lcall	_i2c_stop
                                   2443 ;	8051_i2c_eeprom.c:433: for(int i = 0; i<100; i++)
      003ADA 7E 00            [12] 2444 	mov	r6,#0x00
      003ADC 7F 00            [12] 2445 	mov	r7,#0x00
      003ADE                       2446 00106$:
      003ADE C3               [12] 2447 	clr	c
      003ADF EE               [12] 2448 	mov	a,r6
      003AE0 94 64            [12] 2449 	subb	a,#0x64
      003AE2 EF               [12] 2450 	mov	a,r7
      003AE3 64 80            [12] 2451 	xrl	a,#0x80
      003AE5 94 80            [12] 2452 	subb	a,#0x80
      003AE7 50 12            [24] 2453 	jnc	00101$
                                   2454 ;	8051_i2c_eeprom.c:435: i2c_delay();
      003AE9 C0 07            [24] 2455 	push	ar7
      003AEB C0 06            [24] 2456 	push	ar6
      003AED 12 3A 8B         [24] 2457 	lcall	_i2c_delay
      003AF0 D0 06            [24] 2458 	pop	ar6
      003AF2 D0 07            [24] 2459 	pop	ar7
                                   2460 ;	8051_i2c_eeprom.c:433: for(int i = 0; i<100; i++)
      003AF4 0E               [12] 2461 	inc	r6
      003AF5 BE 00 E6         [24] 2462 	cjne	r6,#0x00,00106$
      003AF8 0F               [12] 2463 	inc	r7
      003AF9 80 E3            [24] 2464 	sjmp	00106$
      003AFB                       2465 00101$:
                                   2466 ;	8051_i2c_eeprom.c:439: unsigned char read_data = eeprom_read(address);
      003AFB 90 00 02         [24] 2467 	mov	dptr,#0x0002
      003AFE 12 37 CA         [24] 2468 	lcall	_eeprom_read
      003B01 AE 82            [24] 2469 	mov	r6,dpl
                                   2470 ;	8051_i2c_eeprom.c:440: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003B03 8E 05            [24] 2471 	mov	ar5,r6
      003B05 7F 00            [12] 2472 	mov	r7,#0x00
      003B07 C0 06            [24] 2473 	push	ar6
      003B09 C0 05            [24] 2474 	push	ar5
      003B0B C0 07            [24] 2475 	push	ar7
      003B0D 74 02            [12] 2476 	mov	a,#0x02
      003B0F C0 E0            [24] 2477 	push	acc
      003B11 E4               [12] 2478 	clr	a
      003B12 C0 E0            [24] 2479 	push	acc
      003B14 74 10            [12] 2480 	mov	a,#___str_45
      003B16 C0 E0            [24] 2481 	push	acc
      003B18 74 52            [12] 2482 	mov	a,#(___str_45 >> 8)
      003B1A C0 E0            [24] 2483 	push	acc
      003B1C 74 80            [12] 2484 	mov	a,#0x80
      003B1E C0 E0            [24] 2485 	push	acc
      003B20 12 3B A8         [24] 2486 	lcall	_printf
      003B23 E5 81            [12] 2487 	mov	a,sp
      003B25 24 F9            [12] 2488 	add	a,#0xf9
      003B27 F5 81            [12] 2489 	mov	sp,a
      003B29 D0 06            [24] 2490 	pop	ar6
                                   2491 ;	8051_i2c_eeprom.c:443: if(read_data == test_data) {
      003B2B BE 26 16         [24] 2492 	cjne	r6,#0x26,00103$
                                   2493 ;	8051_i2c_eeprom.c:444: printf("MATCH - Write/Read successful!\n\r");
      003B2E 74 38            [12] 2494 	mov	a,#___str_46
      003B30 C0 E0            [24] 2495 	push	acc
      003B32 74 52            [12] 2496 	mov	a,#(___str_46 >> 8)
      003B34 C0 E0            [24] 2497 	push	acc
      003B36 74 80            [12] 2498 	mov	a,#0x80
      003B38 C0 E0            [24] 2499 	push	acc
      003B3A 12 3B A8         [24] 2500 	lcall	_printf
      003B3D 15 81            [12] 2501 	dec	sp
      003B3F 15 81            [12] 2502 	dec	sp
      003B41 15 81            [12] 2503 	dec	sp
      003B43 22               [24] 2504 	ret
      003B44                       2505 00103$:
                                   2506 ;	8051_i2c_eeprom.c:446: printf("ERROR - Data mismatch!\n\r");
      003B44 74 59            [12] 2507 	mov	a,#___str_47
      003B46 C0 E0            [24] 2508 	push	acc
      003B48 74 52            [12] 2509 	mov	a,#(___str_47 >> 8)
      003B4A C0 E0            [24] 2510 	push	acc
      003B4C 74 80            [12] 2511 	mov	a,#0x80
      003B4E C0 E0            [24] 2512 	push	acc
      003B50 12 3B A8         [24] 2513 	lcall	_printf
      003B53 15 81            [12] 2514 	dec	sp
      003B55 15 81            [12] 2515 	dec	sp
      003B57 15 81            [12] 2516 	dec	sp
                                   2517 ;	8051_i2c_eeprom.c:450: }
      003B59 22               [24] 2518 	ret
                                   2519 	.area CSEG    (CODE)
                                   2520 	.area CONST   (CODE)
                                   2521 	.area CONST   (CODE)
      00460A                       2522 ___str_0:
      00460A 0A                    2523 	.db 0x0a
      00460B E2                    2524 	.db 0xe2
      00460C 95                    2525 	.db 0x95
      00460D 94                    2526 	.db 0x94
      00460E E2                    2527 	.db 0xe2
      00460F 95                    2528 	.db 0x95
      004610 90                    2529 	.db 0x90
      004611 E2                    2530 	.db 0xe2
      004612 95                    2531 	.db 0x95
      004613 90                    2532 	.db 0x90
      004614 E2                    2533 	.db 0xe2
      004615 95                    2534 	.db 0x95
      004616 90                    2535 	.db 0x90
      004617 E2                    2536 	.db 0xe2
      004618 95                    2537 	.db 0x95
      004619 90                    2538 	.db 0x90
      00461A E2                    2539 	.db 0xe2
      00461B 95                    2540 	.db 0x95
      00461C 90                    2541 	.db 0x90
      00461D E2                    2542 	.db 0xe2
      00461E 95                    2543 	.db 0x95
      00461F 90                    2544 	.db 0x90
      004620 E2                    2545 	.db 0xe2
      004621 95                    2546 	.db 0x95
      004622 90                    2547 	.db 0x90
      004623 E2                    2548 	.db 0xe2
      004624 95                    2549 	.db 0x95
      004625 90                    2550 	.db 0x90
      004626 E2                    2551 	.db 0xe2
      004627 95                    2552 	.db 0x95
      004628 90                    2553 	.db 0x90
      004629 E2                    2554 	.db 0xe2
      00462A 95                    2555 	.db 0x95
      00462B 90                    2556 	.db 0x90
      00462C E2                    2557 	.db 0xe2
      00462D 95                    2558 	.db 0x95
      00462E 90                    2559 	.db 0x90
      00462F E2                    2560 	.db 0xe2
      004630 95                    2561 	.db 0x95
      004631 90                    2562 	.db 0x90
      004632 E2                    2563 	.db 0xe2
      004633 95                    2564 	.db 0x95
      004634 90                    2565 	.db 0x90
      004635 E2                    2566 	.db 0xe2
      004636 95                    2567 	.db 0x95
      004637 90                    2568 	.db 0x90
      004638 E2                    2569 	.db 0xe2
      004639 95                    2570 	.db 0x95
      00463A 90                    2571 	.db 0x90
      00463B E2                    2572 	.db 0xe2
      00463C 95                    2573 	.db 0x95
      00463D 90                    2574 	.db 0x90
      00463E E2                    2575 	.db 0xe2
      00463F 95                    2576 	.db 0x95
      004640 90                    2577 	.db 0x90
      004641 E2                    2578 	.db 0xe2
      004642 95                    2579 	.db 0x95
      004643 90                    2580 	.db 0x90
      004644 E2                    2581 	.db 0xe2
      004645 95                    2582 	.db 0x95
      004646 90                    2583 	.db 0x90
      004647 E2                    2584 	.db 0xe2
      004648 95                    2585 	.db 0x95
      004649 90                    2586 	.db 0x90
      00464A E2                    2587 	.db 0xe2
      00464B 95                    2588 	.db 0x95
      00464C 90                    2589 	.db 0x90
      00464D E2                    2590 	.db 0xe2
      00464E 95                    2591 	.db 0x95
      00464F 90                    2592 	.db 0x90
      004650 E2                    2593 	.db 0xe2
      004651 95                    2594 	.db 0x95
      004652 90                    2595 	.db 0x90
      004653 E2                    2596 	.db 0xe2
      004654 95                    2597 	.db 0x95
      004655 90                    2598 	.db 0x90
      004656 E2                    2599 	.db 0xe2
      004657 95                    2600 	.db 0x95
      004658 90                    2601 	.db 0x90
      004659 E2                    2602 	.db 0xe2
      00465A 95                    2603 	.db 0x95
      00465B 90                    2604 	.db 0x90
      00465C E2                    2605 	.db 0xe2
      00465D 95                    2606 	.db 0x95
      00465E 90                    2607 	.db 0x90
      00465F E2                    2608 	.db 0xe2
      004660 95                    2609 	.db 0x95
      004661 90                    2610 	.db 0x90
      004662 E2                    2611 	.db 0xe2
      004663 95                    2612 	.db 0x95
      004664 90                    2613 	.db 0x90
      004665 E2                    2614 	.db 0xe2
      004666 95                    2615 	.db 0x95
      004667 90                    2616 	.db 0x90
      004668 E2                    2617 	.db 0xe2
      004669 95                    2618 	.db 0x95
      00466A 90                    2619 	.db 0x90
      00466B E2                    2620 	.db 0xe2
      00466C 95                    2621 	.db 0x95
      00466D 90                    2622 	.db 0x90
      00466E E2                    2623 	.db 0xe2
      00466F 95                    2624 	.db 0x95
      004670 90                    2625 	.db 0x90
      004671 E2                    2626 	.db 0xe2
      004672 95                    2627 	.db 0x95
      004673 90                    2628 	.db 0x90
      004674 E2                    2629 	.db 0xe2
      004675 95                    2630 	.db 0x95
      004676 90                    2631 	.db 0x90
      004677 E2                    2632 	.db 0xe2
      004678 95                    2633 	.db 0x95
      004679 90                    2634 	.db 0x90
      00467A E2                    2635 	.db 0xe2
      00467B 95                    2636 	.db 0x95
      00467C 90                    2637 	.db 0x90
      00467D E2                    2638 	.db 0xe2
      00467E 95                    2639 	.db 0x95
      00467F 90                    2640 	.db 0x90
      004680 E2                    2641 	.db 0xe2
      004681 95                    2642 	.db 0x95
      004682 90                    2643 	.db 0x90
      004683 E2                    2644 	.db 0xe2
      004684 95                    2645 	.db 0x95
      004685 90                    2646 	.db 0x90
      004686 E2                    2647 	.db 0xe2
      004687 95                    2648 	.db 0x95
      004688 90                    2649 	.db 0x90
      004689 E2                    2650 	.db 0xe2
      00468A 95                    2651 	.db 0x95
      00468B 90                    2652 	.db 0x90
      00468C E2                    2653 	.db 0xe2
      00468D 95                    2654 	.db 0x95
      00468E 90                    2655 	.db 0x90
      00468F E2                    2656 	.db 0xe2
      004690 95                    2657 	.db 0x95
      004691 90                    2658 	.db 0x90
      004692 E2                    2659 	.db 0xe2
      004693 95                    2660 	.db 0x95
      004694 90                    2661 	.db 0x90
      004695 E2                    2662 	.db 0xe2
      004696 95                    2663 	.db 0x95
      004697 90                    2664 	.db 0x90
      004698 E2                    2665 	.db 0xe2
      004699 95                    2666 	.db 0x95
      00469A 90                    2667 	.db 0x90
      00469B E2                    2668 	.db 0xe2
      00469C 95                    2669 	.db 0x95
      00469D 90                    2670 	.db 0x90
      00469E E2                    2671 	.db 0xe2
      00469F 95                    2672 	.db 0x95
      0046A0 90                    2673 	.db 0x90
      0046A1 E2                    2674 	.db 0xe2
      0046A2 95                    2675 	.db 0x95
      0046A3 90                    2676 	.db 0x90
      0046A4 E2                    2677 	.db 0xe2
      0046A5 95                    2678 	.db 0x95
      0046A6 90                    2679 	.db 0x90
      0046A7 E2                    2680 	.db 0xe2
      0046A8 95                    2681 	.db 0x95
      0046A9 90                    2682 	.db 0x90
      0046AA E2                    2683 	.db 0xe2
      0046AB 95                    2684 	.db 0x95
      0046AC 90                    2685 	.db 0x90
      0046AD E2                    2686 	.db 0xe2
      0046AE 95                    2687 	.db 0x95
      0046AF 90                    2688 	.db 0x90
      0046B0 E2                    2689 	.db 0xe2
      0046B1 95                    2690 	.db 0x95
      0046B2 90                    2691 	.db 0x90
      0046B3 E2                    2692 	.db 0xe2
      0046B4 95                    2693 	.db 0x95
      0046B5 90                    2694 	.db 0x90
      0046B6 E2                    2695 	.db 0xe2
      0046B7 95                    2696 	.db 0x95
      0046B8 97                    2697 	.db 0x97
      0046B9 0A                    2698 	.db 0x0a
      0046BA 0D                    2699 	.db 0x0d
      0046BB 00                    2700 	.db 0x00
                                   2701 	.area CSEG    (CODE)
                                   2702 	.area CONST   (CODE)
      0046BC                       2703 ___str_1:
      0046BC E2                    2704 	.db 0xe2
      0046BD 95                    2705 	.db 0x95
      0046BE 91                    2706 	.db 0x91
      0046BF 20 20 20 20 20 20 20  2707 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      0046F7 E2                    2708 	.db 0xe2
      0046F8 95                    2709 	.db 0x95
      0046F9 91                    2710 	.db 0x91
      0046FA 0A                    2711 	.db 0x0a
      0046FB 0D                    2712 	.db 0x0d
      0046FC 00                    2713 	.db 0x00
                                   2714 	.area CSEG    (CODE)
                                   2715 	.area CONST   (CODE)
      0046FD                       2716 ___str_2:
      0046FD E2                    2717 	.db 0xe2
      0046FE 95                    2718 	.db 0x95
      0046FF 9A                    2719 	.db 0x9a
      004700 E2                    2720 	.db 0xe2
      004701 95                    2721 	.db 0x95
      004702 90                    2722 	.db 0x90
      004703 E2                    2723 	.db 0xe2
      004704 95                    2724 	.db 0x95
      004705 90                    2725 	.db 0x90
      004706 E2                    2726 	.db 0xe2
      004707 95                    2727 	.db 0x95
      004708 90                    2728 	.db 0x90
      004709 E2                    2729 	.db 0xe2
      00470A 95                    2730 	.db 0x95
      00470B 90                    2731 	.db 0x90
      00470C E2                    2732 	.db 0xe2
      00470D 95                    2733 	.db 0x95
      00470E 90                    2734 	.db 0x90
      00470F E2                    2735 	.db 0xe2
      004710 95                    2736 	.db 0x95
      004711 90                    2737 	.db 0x90
      004712 E2                    2738 	.db 0xe2
      004713 95                    2739 	.db 0x95
      004714 90                    2740 	.db 0x90
      004715 E2                    2741 	.db 0xe2
      004716 95                    2742 	.db 0x95
      004717 90                    2743 	.db 0x90
      004718 E2                    2744 	.db 0xe2
      004719 95                    2745 	.db 0x95
      00471A 90                    2746 	.db 0x90
      00471B E2                    2747 	.db 0xe2
      00471C 95                    2748 	.db 0x95
      00471D 90                    2749 	.db 0x90
      00471E E2                    2750 	.db 0xe2
      00471F 95                    2751 	.db 0x95
      004720 90                    2752 	.db 0x90
      004721 E2                    2753 	.db 0xe2
      004722 95                    2754 	.db 0x95
      004723 90                    2755 	.db 0x90
      004724 E2                    2756 	.db 0xe2
      004725 95                    2757 	.db 0x95
      004726 90                    2758 	.db 0x90
      004727 E2                    2759 	.db 0xe2
      004728 95                    2760 	.db 0x95
      004729 90                    2761 	.db 0x90
      00472A E2                    2762 	.db 0xe2
      00472B 95                    2763 	.db 0x95
      00472C 90                    2764 	.db 0x90
      00472D E2                    2765 	.db 0xe2
      00472E 95                    2766 	.db 0x95
      00472F 90                    2767 	.db 0x90
      004730 E2                    2768 	.db 0xe2
      004731 95                    2769 	.db 0x95
      004732 90                    2770 	.db 0x90
      004733 E2                    2771 	.db 0xe2
      004734 95                    2772 	.db 0x95
      004735 90                    2773 	.db 0x90
      004736 E2                    2774 	.db 0xe2
      004737 95                    2775 	.db 0x95
      004738 90                    2776 	.db 0x90
      004739 E2                    2777 	.db 0xe2
      00473A 95                    2778 	.db 0x95
      00473B 90                    2779 	.db 0x90
      00473C E2                    2780 	.db 0xe2
      00473D 95                    2781 	.db 0x95
      00473E 90                    2782 	.db 0x90
      00473F E2                    2783 	.db 0xe2
      004740 95                    2784 	.db 0x95
      004741 90                    2785 	.db 0x90
      004742 E2                    2786 	.db 0xe2
      004743 95                    2787 	.db 0x95
      004744 90                    2788 	.db 0x90
      004745 E2                    2789 	.db 0xe2
      004746 95                    2790 	.db 0x95
      004747 90                    2791 	.db 0x90
      004748 E2                    2792 	.db 0xe2
      004749 95                    2793 	.db 0x95
      00474A 90                    2794 	.db 0x90
      00474B E2                    2795 	.db 0xe2
      00474C 95                    2796 	.db 0x95
      00474D 90                    2797 	.db 0x90
      00474E E2                    2798 	.db 0xe2
      00474F 95                    2799 	.db 0x95
      004750 90                    2800 	.db 0x90
      004751 E2                    2801 	.db 0xe2
      004752 95                    2802 	.db 0x95
      004753 90                    2803 	.db 0x90
      004754 E2                    2804 	.db 0xe2
      004755 95                    2805 	.db 0x95
      004756 90                    2806 	.db 0x90
      004757 E2                    2807 	.db 0xe2
      004758 95                    2808 	.db 0x95
      004759 90                    2809 	.db 0x90
      00475A E2                    2810 	.db 0xe2
      00475B 95                    2811 	.db 0x95
      00475C 90                    2812 	.db 0x90
      00475D E2                    2813 	.db 0xe2
      00475E 95                    2814 	.db 0x95
      00475F 90                    2815 	.db 0x90
      004760 E2                    2816 	.db 0xe2
      004761 95                    2817 	.db 0x95
      004762 90                    2818 	.db 0x90
      004763 E2                    2819 	.db 0xe2
      004764 95                    2820 	.db 0x95
      004765 90                    2821 	.db 0x90
      004766 E2                    2822 	.db 0xe2
      004767 95                    2823 	.db 0x95
      004768 90                    2824 	.db 0x90
      004769 E2                    2825 	.db 0xe2
      00476A 95                    2826 	.db 0x95
      00476B 90                    2827 	.db 0x90
      00476C E2                    2828 	.db 0xe2
      00476D 95                    2829 	.db 0x95
      00476E 90                    2830 	.db 0x90
      00476F E2                    2831 	.db 0xe2
      004770 95                    2832 	.db 0x95
      004771 90                    2833 	.db 0x90
      004772 E2                    2834 	.db 0xe2
      004773 95                    2835 	.db 0x95
      004774 90                    2836 	.db 0x90
      004775 E2                    2837 	.db 0xe2
      004776 95                    2838 	.db 0x95
      004777 90                    2839 	.db 0x90
      004778 E2                    2840 	.db 0xe2
      004779 95                    2841 	.db 0x95
      00477A 90                    2842 	.db 0x90
      00477B E2                    2843 	.db 0xe2
      00477C 95                    2844 	.db 0x95
      00477D 90                    2845 	.db 0x90
      00477E E2                    2846 	.db 0xe2
      00477F 95                    2847 	.db 0x95
      004780 90                    2848 	.db 0x90
      004781 E2                    2849 	.db 0xe2
      004782 95                    2850 	.db 0x95
      004783 90                    2851 	.db 0x90
      004784 E2                    2852 	.db 0xe2
      004785 95                    2853 	.db 0x95
      004786 90                    2854 	.db 0x90
      004787 E2                    2855 	.db 0xe2
      004788 95                    2856 	.db 0x95
      004789 90                    2857 	.db 0x90
      00478A E2                    2858 	.db 0xe2
      00478B 95                    2859 	.db 0x95
      00478C 90                    2860 	.db 0x90
      00478D E2                    2861 	.db 0xe2
      00478E 95                    2862 	.db 0x95
      00478F 90                    2863 	.db 0x90
      004790 E2                    2864 	.db 0xe2
      004791 95                    2865 	.db 0x95
      004792 90                    2866 	.db 0x90
      004793 E2                    2867 	.db 0xe2
      004794 95                    2868 	.db 0x95
      004795 90                    2869 	.db 0x90
      004796 E2                    2870 	.db 0xe2
      004797 95                    2871 	.db 0x95
      004798 90                    2872 	.db 0x90
      004799 E2                    2873 	.db 0xe2
      00479A 95                    2874 	.db 0x95
      00479B 90                    2875 	.db 0x90
      00479C E2                    2876 	.db 0xe2
      00479D 95                    2877 	.db 0x95
      00479E 90                    2878 	.db 0x90
      00479F E2                    2879 	.db 0xe2
      0047A0 95                    2880 	.db 0x95
      0047A1 90                    2881 	.db 0x90
      0047A2 E2                    2882 	.db 0xe2
      0047A3 95                    2883 	.db 0x95
      0047A4 90                    2884 	.db 0x90
      0047A5 E2                    2885 	.db 0xe2
      0047A6 95                    2886 	.db 0x95
      0047A7 90                    2887 	.db 0x90
      0047A8 E2                    2888 	.db 0xe2
      0047A9 95                    2889 	.db 0x95
      0047AA 9D                    2890 	.db 0x9d
      0047AB 0A                    2891 	.db 0x0a
      0047AC 0D                    2892 	.db 0x0d
      0047AD 00                    2893 	.db 0x00
                                   2894 	.area CSEG    (CODE)
                                   2895 	.area CONST   (CODE)
      0047AE                       2896 ___str_3:
      0047AE 0A                    2897 	.db 0x0a
      0047AF 0D                    2898 	.db 0x0d
      0047B0 E2                    2899 	.db 0xe2
      0047B1 94                    2900 	.db 0x94
      0047B2 8C                    2901 	.db 0x8c
      0047B3 E2                    2902 	.db 0xe2
      0047B4 94                    2903 	.db 0x94
      0047B5 80                    2904 	.db 0x80
      0047B6 E2                    2905 	.db 0xe2
      0047B7 94                    2906 	.db 0x94
      0047B8 80                    2907 	.db 0x80
      0047B9 E2                    2908 	.db 0xe2
      0047BA 94                    2909 	.db 0x94
      0047BB 80                    2910 	.db 0x80
      0047BC E2                    2911 	.db 0xe2
      0047BD 94                    2912 	.db 0x94
      0047BE 80                    2913 	.db 0x80
      0047BF E2                    2914 	.db 0xe2
      0047C0 94                    2915 	.db 0x94
      0047C1 80                    2916 	.db 0x80
      0047C2 E2                    2917 	.db 0xe2
      0047C3 94                    2918 	.db 0x94
      0047C4 80                    2919 	.db 0x80
      0047C5 E2                    2920 	.db 0xe2
      0047C6 94                    2921 	.db 0x94
      0047C7 80                    2922 	.db 0x80
      0047C8 E2                    2923 	.db 0xe2
      0047C9 94                    2924 	.db 0x94
      0047CA 80                    2925 	.db 0x80
      0047CB E2                    2926 	.db 0xe2
      0047CC 94                    2927 	.db 0x94
      0047CD 80                    2928 	.db 0x80
      0047CE E2                    2929 	.db 0xe2
      0047CF 94                    2930 	.db 0x94
      0047D0 80                    2931 	.db 0x80
      0047D1 E2                    2932 	.db 0xe2
      0047D2 94                    2933 	.db 0x94
      0047D3 80                    2934 	.db 0x80
      0047D4 E2                    2935 	.db 0xe2
      0047D5 94                    2936 	.db 0x94
      0047D6 80                    2937 	.db 0x80
      0047D7 E2                    2938 	.db 0xe2
      0047D8 94                    2939 	.db 0x94
      0047D9 AC                    2940 	.db 0xac
      0047DA E2                    2941 	.db 0xe2
      0047DB 94                    2942 	.db 0x94
      0047DC 80                    2943 	.db 0x80
      0047DD E2                    2944 	.db 0xe2
      0047DE 94                    2945 	.db 0x94
      0047DF 80                    2946 	.db 0x80
      0047E0 E2                    2947 	.db 0xe2
      0047E1 94                    2948 	.db 0x94
      0047E2 80                    2949 	.db 0x80
      0047E3 E2                    2950 	.db 0xe2
      0047E4 94                    2951 	.db 0x94
      0047E5 80                    2952 	.db 0x80
      0047E6 E2                    2953 	.db 0xe2
      0047E7 94                    2954 	.db 0x94
      0047E8 80                    2955 	.db 0x80
      0047E9 E2                    2956 	.db 0xe2
      0047EA 94                    2957 	.db 0x94
      0047EB 80                    2958 	.db 0x80
      0047EC E2                    2959 	.db 0xe2
      0047ED 94                    2960 	.db 0x94
      0047EE 80                    2961 	.db 0x80
      0047EF E2                    2962 	.db 0xe2
      0047F0 94                    2963 	.db 0x94
      0047F1 80                    2964 	.db 0x80
      0047F2 E2                    2965 	.db 0xe2
      0047F3 94                    2966 	.db 0x94
      0047F4 80                    2967 	.db 0x80
      0047F5 E2                    2968 	.db 0xe2
      0047F6 94                    2969 	.db 0x94
      0047F7 80                    2970 	.db 0x80
      0047F8 E2                    2971 	.db 0xe2
      0047F9 94                    2972 	.db 0x94
      0047FA 80                    2973 	.db 0x80
      0047FB E2                    2974 	.db 0xe2
      0047FC 94                    2975 	.db 0x94
      0047FD 80                    2976 	.db 0x80
      0047FE E2                    2977 	.db 0xe2
      0047FF 94                    2978 	.db 0x94
      004800 80                    2979 	.db 0x80
      004801 E2                    2980 	.db 0xe2
      004802 94                    2981 	.db 0x94
      004803 80                    2982 	.db 0x80
      004804 E2                    2983 	.db 0xe2
      004805 94                    2984 	.db 0x94
      004806 80                    2985 	.db 0x80
      004807 E2                    2986 	.db 0xe2
      004808 94                    2987 	.db 0x94
      004809 80                    2988 	.db 0x80
      00480A E2                    2989 	.db 0xe2
      00480B 94                    2990 	.db 0x94
      00480C 80                    2991 	.db 0x80
      00480D E2                    2992 	.db 0xe2
      00480E 94                    2993 	.db 0x94
      00480F 80                    2994 	.db 0x80
      004810 E2                    2995 	.db 0xe2
      004811 94                    2996 	.db 0x94
      004812 80                    2997 	.db 0x80
      004813 E2                    2998 	.db 0xe2
      004814 94                    2999 	.db 0x94
      004815 80                    3000 	.db 0x80
      004816 E2                    3001 	.db 0xe2
      004817 94                    3002 	.db 0x94
      004818 80                    3003 	.db 0x80
      004819 E2                    3004 	.db 0xe2
      00481A 94                    3005 	.db 0x94
      00481B 80                    3006 	.db 0x80
      00481C E2                    3007 	.db 0xe2
      00481D 94                    3008 	.db 0x94
      00481E 80                    3009 	.db 0x80
      00481F E2                    3010 	.db 0xe2
      004820 94                    3011 	.db 0x94
      004821 80                    3012 	.db 0x80
      004822 E2                    3013 	.db 0xe2
      004823 94                    3014 	.db 0x94
      004824 80                    3015 	.db 0x80
      004825 E2                    3016 	.db 0xe2
      004826 94                    3017 	.db 0x94
      004827 80                    3018 	.db 0x80
      004828 E2                    3019 	.db 0xe2
      004829 94                    3020 	.db 0x94
      00482A 80                    3021 	.db 0x80
      00482B E2                    3022 	.db 0xe2
      00482C 94                    3023 	.db 0x94
      00482D 80                    3024 	.db 0x80
      00482E E2                    3025 	.db 0xe2
      00482F 94                    3026 	.db 0x94
      004830 80                    3027 	.db 0x80
      004831 E2                    3028 	.db 0xe2
      004832 94                    3029 	.db 0x94
      004833 80                    3030 	.db 0x80
      004834 E2                    3031 	.db 0xe2
      004835 94                    3032 	.db 0x94
      004836 80                    3033 	.db 0x80
      004837 E2                    3034 	.db 0xe2
      004838 94                    3035 	.db 0x94
      004839 80                    3036 	.db 0x80
      00483A E2                    3037 	.db 0xe2
      00483B 94                    3038 	.db 0x94
      00483C 80                    3039 	.db 0x80
      00483D E2                    3040 	.db 0xe2
      00483E 94                    3041 	.db 0x94
      00483F 80                    3042 	.db 0x80
      004840 E2                    3043 	.db 0xe2
      004841 94                    3044 	.db 0x94
      004842 80                    3045 	.db 0x80
      004843 E2                    3046 	.db 0xe2
      004844 94                    3047 	.db 0x94
      004845 80                    3048 	.db 0x80
      004846 E2                    3049 	.db 0xe2
      004847 94                    3050 	.db 0x94
      004848 80                    3051 	.db 0x80
      004849 E2                    3052 	.db 0xe2
      00484A 94                    3053 	.db 0x94
      00484B 80                    3054 	.db 0x80
      00484C E2                    3055 	.db 0xe2
      00484D 94                    3056 	.db 0x94
      00484E 80                    3057 	.db 0x80
      00484F E2                    3058 	.db 0xe2
      004850 94                    3059 	.db 0x94
      004851 80                    3060 	.db 0x80
      004852 E2                    3061 	.db 0xe2
      004853 94                    3062 	.db 0x94
      004854 80                    3063 	.db 0x80
      004855 E2                    3064 	.db 0xe2
      004856 94                    3065 	.db 0x94
      004857 80                    3066 	.db 0x80
      004858 E2                    3067 	.db 0xe2
      004859 94                    3068 	.db 0x94
      00485A 80                    3069 	.db 0x80
      00485B E2                    3070 	.db 0xe2
      00485C 94                    3071 	.db 0x94
      00485D 80                    3072 	.db 0x80
      00485E E2                    3073 	.db 0xe2
      00485F 94                    3074 	.db 0x94
      004860 90                    3075 	.db 0x90
      004861 0A                    3076 	.db 0x0a
      004862 0D                    3077 	.db 0x0d
      004863 00                    3078 	.db 0x00
                                   3079 	.area CSEG    (CODE)
                                   3080 	.area CONST   (CODE)
      004864                       3081 ___str_4:
      004864 E2                    3082 	.db 0xe2
      004865 94                    3083 	.db 0x94
      004866 82                    3084 	.db 0x82
      004867 20 20 43 6F 6D 6D 61  3085 	.ascii "  Command   "
             6E 64 20 20 20
      004873 E2                    3086 	.db 0xe2
      004874 94                    3087 	.db 0x94
      004875 82                    3088 	.db 0x82
      004876 20 20 20 20 20 20 20  3089 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048A2 E2                    3090 	.db 0xe2
      0048A3 94                    3091 	.db 0x94
      0048A4 82                    3092 	.db 0x82
      0048A5 0A                    3093 	.db 0x0a
      0048A6 0D                    3094 	.db 0x0d
      0048A7 00                    3095 	.db 0x00
                                   3096 	.area CSEG    (CODE)
                                   3097 	.area CONST   (CODE)
      0048A8                       3098 ___str_5:
      0048A8 E2                    3099 	.db 0xe2
      0048A9 94                    3100 	.db 0x94
      0048AA 9C                    3101 	.db 0x9c
      0048AB E2                    3102 	.db 0xe2
      0048AC 94                    3103 	.db 0x94
      0048AD 80                    3104 	.db 0x80
      0048AE E2                    3105 	.db 0xe2
      0048AF 94                    3106 	.db 0x94
      0048B0 80                    3107 	.db 0x80
      0048B1 E2                    3108 	.db 0xe2
      0048B2 94                    3109 	.db 0x94
      0048B3 80                    3110 	.db 0x80
      0048B4 E2                    3111 	.db 0xe2
      0048B5 94                    3112 	.db 0x94
      0048B6 80                    3113 	.db 0x80
      0048B7 E2                    3114 	.db 0xe2
      0048B8 94                    3115 	.db 0x94
      0048B9 80                    3116 	.db 0x80
      0048BA E2                    3117 	.db 0xe2
      0048BB 94                    3118 	.db 0x94
      0048BC 80                    3119 	.db 0x80
      0048BD E2                    3120 	.db 0xe2
      0048BE 94                    3121 	.db 0x94
      0048BF 80                    3122 	.db 0x80
      0048C0 E2                    3123 	.db 0xe2
      0048C1 94                    3124 	.db 0x94
      0048C2 80                    3125 	.db 0x80
      0048C3 E2                    3126 	.db 0xe2
      0048C4 94                    3127 	.db 0x94
      0048C5 80                    3128 	.db 0x80
      0048C6 E2                    3129 	.db 0xe2
      0048C7 94                    3130 	.db 0x94
      0048C8 80                    3131 	.db 0x80
      0048C9 E2                    3132 	.db 0xe2
      0048CA 94                    3133 	.db 0x94
      0048CB 80                    3134 	.db 0x80
      0048CC E2                    3135 	.db 0xe2
      0048CD 94                    3136 	.db 0x94
      0048CE 80                    3137 	.db 0x80
      0048CF E2                    3138 	.db 0xe2
      0048D0 94                    3139 	.db 0x94
      0048D1 BC                    3140 	.db 0xbc
      0048D2 E2                    3141 	.db 0xe2
      0048D3 94                    3142 	.db 0x94
      0048D4 80                    3143 	.db 0x80
      0048D5 E2                    3144 	.db 0xe2
      0048D6 94                    3145 	.db 0x94
      0048D7 80                    3146 	.db 0x80
      0048D8 E2                    3147 	.db 0xe2
      0048D9 94                    3148 	.db 0x94
      0048DA 80                    3149 	.db 0x80
      0048DB E2                    3150 	.db 0xe2
      0048DC 94                    3151 	.db 0x94
      0048DD 80                    3152 	.db 0x80
      0048DE E2                    3153 	.db 0xe2
      0048DF 94                    3154 	.db 0x94
      0048E0 80                    3155 	.db 0x80
      0048E1 E2                    3156 	.db 0xe2
      0048E2 94                    3157 	.db 0x94
      0048E3 80                    3158 	.db 0x80
      0048E4 E2                    3159 	.db 0xe2
      0048E5 94                    3160 	.db 0x94
      0048E6 80                    3161 	.db 0x80
      0048E7 E2                    3162 	.db 0xe2
      0048E8 94                    3163 	.db 0x94
      0048E9 80                    3164 	.db 0x80
      0048EA E2                    3165 	.db 0xe2
      0048EB 94                    3166 	.db 0x94
      0048EC 80                    3167 	.db 0x80
      0048ED E2                    3168 	.db 0xe2
      0048EE 94                    3169 	.db 0x94
      0048EF 80                    3170 	.db 0x80
      0048F0 E2                    3171 	.db 0xe2
      0048F1 94                    3172 	.db 0x94
      0048F2 80                    3173 	.db 0x80
      0048F3 E2                    3174 	.db 0xe2
      0048F4 94                    3175 	.db 0x94
      0048F5 80                    3176 	.db 0x80
      0048F6 E2                    3177 	.db 0xe2
      0048F7 94                    3178 	.db 0x94
      0048F8 80                    3179 	.db 0x80
      0048F9 E2                    3180 	.db 0xe2
      0048FA 94                    3181 	.db 0x94
      0048FB 80                    3182 	.db 0x80
      0048FC E2                    3183 	.db 0xe2
      0048FD 94                    3184 	.db 0x94
      0048FE 80                    3185 	.db 0x80
      0048FF E2                    3186 	.db 0xe2
      004900 94                    3187 	.db 0x94
      004901 80                    3188 	.db 0x80
      004902 E2                    3189 	.db 0xe2
      004903 94                    3190 	.db 0x94
      004904 80                    3191 	.db 0x80
      004905 E2                    3192 	.db 0xe2
      004906 94                    3193 	.db 0x94
      004907 80                    3194 	.db 0x80
      004908 E2                    3195 	.db 0xe2
      004909 94                    3196 	.db 0x94
      00490A 80                    3197 	.db 0x80
      00490B E2                    3198 	.db 0xe2
      00490C 94                    3199 	.db 0x94
      00490D 80                    3200 	.db 0x80
      00490E E2                    3201 	.db 0xe2
      00490F 94                    3202 	.db 0x94
      004910 80                    3203 	.db 0x80
      004911 E2                    3204 	.db 0xe2
      004912 94                    3205 	.db 0x94
      004913 80                    3206 	.db 0x80
      004914 E2                    3207 	.db 0xe2
      004915 94                    3208 	.db 0x94
      004916 80                    3209 	.db 0x80
      004917 E2                    3210 	.db 0xe2
      004918 94                    3211 	.db 0x94
      004919 80                    3212 	.db 0x80
      00491A E2                    3213 	.db 0xe2
      00491B 94                    3214 	.db 0x94
      00491C 80                    3215 	.db 0x80
      00491D E2                    3216 	.db 0xe2
      00491E 94                    3217 	.db 0x94
      00491F 80                    3218 	.db 0x80
      004920 E2                    3219 	.db 0xe2
      004921 94                    3220 	.db 0x94
      004922 80                    3221 	.db 0x80
      004923 E2                    3222 	.db 0xe2
      004924 94                    3223 	.db 0x94
      004925 80                    3224 	.db 0x80
      004926 E2                    3225 	.db 0xe2
      004927 94                    3226 	.db 0x94
      004928 80                    3227 	.db 0x80
      004929 E2                    3228 	.db 0xe2
      00492A 94                    3229 	.db 0x94
      00492B 80                    3230 	.db 0x80
      00492C E2                    3231 	.db 0xe2
      00492D 94                    3232 	.db 0x94
      00492E 80                    3233 	.db 0x80
      00492F E2                    3234 	.db 0xe2
      004930 94                    3235 	.db 0x94
      004931 80                    3236 	.db 0x80
      004932 E2                    3237 	.db 0xe2
      004933 94                    3238 	.db 0x94
      004934 80                    3239 	.db 0x80
      004935 E2                    3240 	.db 0xe2
      004936 94                    3241 	.db 0x94
      004937 80                    3242 	.db 0x80
      004938 E2                    3243 	.db 0xe2
      004939 94                    3244 	.db 0x94
      00493A 80                    3245 	.db 0x80
      00493B E2                    3246 	.db 0xe2
      00493C 94                    3247 	.db 0x94
      00493D 80                    3248 	.db 0x80
      00493E E2                    3249 	.db 0xe2
      00493F 94                    3250 	.db 0x94
      004940 80                    3251 	.db 0x80
      004941 E2                    3252 	.db 0xe2
      004942 94                    3253 	.db 0x94
      004943 80                    3254 	.db 0x80
      004944 E2                    3255 	.db 0xe2
      004945 94                    3256 	.db 0x94
      004946 80                    3257 	.db 0x80
      004947 E2                    3258 	.db 0xe2
      004948 94                    3259 	.db 0x94
      004949 80                    3260 	.db 0x80
      00494A E2                    3261 	.db 0xe2
      00494B 94                    3262 	.db 0x94
      00494C 80                    3263 	.db 0x80
      00494D E2                    3264 	.db 0xe2
      00494E 94                    3265 	.db 0x94
      00494F 80                    3266 	.db 0x80
      004950 E2                    3267 	.db 0xe2
      004951 94                    3268 	.db 0x94
      004952 80                    3269 	.db 0x80
      004953 E2                    3270 	.db 0xe2
      004954 94                    3271 	.db 0x94
      004955 80                    3272 	.db 0x80
      004956 E2                    3273 	.db 0xe2
      004957 94                    3274 	.db 0x94
      004958 A4                    3275 	.db 0xa4
      004959 0A                    3276 	.db 0x0a
      00495A 0D                    3277 	.db 0x0d
      00495B 00                    3278 	.db 0x00
                                   3279 	.area CSEG    (CODE)
                                   3280 	.area CONST   (CODE)
      00495C                       3281 ___str_6:
      00495C E2                    3282 	.db 0xe2
      00495D 94                    3283 	.db 0x94
      00495E 82                    3284 	.db 0x82
      00495F 20 20 20 20 20 52 20  3285 	.ascii "     R      "
             20 20 20 20 20
      00496B E2                    3286 	.db 0xe2
      00496C 94                    3287 	.db 0x94
      00496D 82                    3288 	.db 0x82
      00496E 20 52 65 61 64 20 66  3289 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00499A E2                    3290 	.db 0xe2
      00499B 94                    3291 	.db 0x94
      00499C 82                    3292 	.db 0x82
      00499D 0A                    3293 	.db 0x0a
      00499E 0D                    3294 	.db 0x0d
      00499F 00                    3295 	.db 0x00
                                   3296 	.area CSEG    (CODE)
                                   3297 	.area CONST   (CODE)
      0049A0                       3298 ___str_7:
      0049A0 E2                    3299 	.db 0xe2
      0049A1 94                    3300 	.db 0x94
      0049A2 82                    3301 	.db 0x82
      0049A3 20 20 20 20 20 57 20  3302 	.ascii "     W      "
             20 20 20 20 20
      0049AF E2                    3303 	.db 0xe2
      0049B0 94                    3304 	.db 0x94
      0049B1 82                    3305 	.db 0x82
      0049B2 20 57 72 69 74 65 20  3306 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049DE E2                    3307 	.db 0xe2
      0049DF 94                    3308 	.db 0x94
      0049E0 82                    3309 	.db 0x82
      0049E1 0A                    3310 	.db 0x0a
      0049E2 0D                    3311 	.db 0x0d
      0049E3 00                    3312 	.db 0x00
                                   3313 	.area CSEG    (CODE)
                                   3314 	.area CONST   (CODE)
      0049E4                       3315 ___str_8:
      0049E4 E2                    3316 	.db 0xe2
      0049E5 94                    3317 	.db 0x94
      0049E6 82                    3318 	.db 0x82
      0049E7 20 20 20 20 20 48 20  3319 	.ascii "     H      "
             20 20 20 20 20
      0049F3 E2                    3320 	.db 0xe2
      0049F4 94                    3321 	.db 0x94
      0049F5 82                    3322 	.db 0x82
      0049F6 20 44 69 73 70 6C 61  3323 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A22 E2                    3324 	.db 0xe2
      004A23 94                    3325 	.db 0x94
      004A24 82                    3326 	.db 0x82
      004A25 0A                    3327 	.db 0x0a
      004A26 0D                    3328 	.db 0x0d
      004A27 00                    3329 	.db 0x00
                                   3330 	.area CSEG    (CODE)
                                   3331 	.area CONST   (CODE)
      004A28                       3332 ___str_9:
      004A28 E2                    3333 	.db 0xe2
      004A29 94                    3334 	.db 0x94
      004A2A 82                    3335 	.db 0x82
      004A2B 20 20 20 20 20 58 20  3336 	.ascii "     X      "
             20 20 20 20 20
      004A37 E2                    3337 	.db 0xe2
      004A38 94                    3338 	.db 0x94
      004A39 82                    3339 	.db 0x82
      004A3A 20 52 65 73 65 74 20  3340 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A66 E2                    3341 	.db 0xe2
      004A67 94                    3342 	.db 0x94
      004A68 82                    3343 	.db 0x82
      004A69 0A                    3344 	.db 0x0a
      004A6A 0D                    3345 	.db 0x0d
      004A6B 00                    3346 	.db 0x00
                                   3347 	.area CSEG    (CODE)
                                   3348 	.area CONST   (CODE)
      004A6C                       3349 ___str_10:
      004A6C E2                    3350 	.db 0xe2
      004A6D 94                    3351 	.db 0x94
      004A6E 82                    3352 	.db 0x82
      004A6F 20 20 20 20 20 3F 20  3353 	.ascii "     ?      "
             20 20 20 20 20
      004A7B E2                    3354 	.db 0xe2
      004A7C 94                    3355 	.db 0x94
      004A7D 82                    3356 	.db 0x82
      004A7E 20 44 69 73 70 6C 61  3357 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004AAA E2                    3358 	.db 0xe2
      004AAB 94                    3359 	.db 0x94
      004AAC 82                    3360 	.db 0x82
      004AAD 0A                    3361 	.db 0x0a
      004AAE 0D                    3362 	.db 0x0d
      004AAF 00                    3363 	.db 0x00
                                   3364 	.area CSEG    (CODE)
                                   3365 	.area CONST   (CODE)
      004AB0                       3366 ___str_11:
      004AB0 E2                    3367 	.db 0xe2
      004AB1 94                    3368 	.db 0x94
      004AB2 82                    3369 	.db 0x82
      004AB3 20 20 20 20 20 51 20  3370 	.ascii "     Q      "
             20 20 20 20 20
      004ABF E2                    3371 	.db 0xe2
      004AC0 94                    3372 	.db 0x94
      004AC1 82                    3373 	.db 0x82
      004AC2 20 51 75 69 74 20 70  3374 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004AEE E2                    3375 	.db 0xe2
      004AEF 94                    3376 	.db 0x94
      004AF0 82                    3377 	.db 0x82
      004AF1 0A                    3378 	.db 0x0a
      004AF2 0D                    3379 	.db 0x0d
      004AF3 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      004AF4                       3383 ___str_12:
      004AF4 E2                    3384 	.db 0xe2
      004AF5 94                    3385 	.db 0x94
      004AF6 94                    3386 	.db 0x94
      004AF7 E2                    3387 	.db 0xe2
      004AF8 94                    3388 	.db 0x94
      004AF9 80                    3389 	.db 0x80
      004AFA E2                    3390 	.db 0xe2
      004AFB 94                    3391 	.db 0x94
      004AFC 80                    3392 	.db 0x80
      004AFD E2                    3393 	.db 0xe2
      004AFE 94                    3394 	.db 0x94
      004AFF 80                    3395 	.db 0x80
      004B00 E2                    3396 	.db 0xe2
      004B01 94                    3397 	.db 0x94
      004B02 80                    3398 	.db 0x80
      004B03 E2                    3399 	.db 0xe2
      004B04 94                    3400 	.db 0x94
      004B05 80                    3401 	.db 0x80
      004B06 E2                    3402 	.db 0xe2
      004B07 94                    3403 	.db 0x94
      004B08 80                    3404 	.db 0x80
      004B09 E2                    3405 	.db 0xe2
      004B0A 94                    3406 	.db 0x94
      004B0B 80                    3407 	.db 0x80
      004B0C E2                    3408 	.db 0xe2
      004B0D 94                    3409 	.db 0x94
      004B0E 80                    3410 	.db 0x80
      004B0F E2                    3411 	.db 0xe2
      004B10 94                    3412 	.db 0x94
      004B11 80                    3413 	.db 0x80
      004B12 E2                    3414 	.db 0xe2
      004B13 94                    3415 	.db 0x94
      004B14 80                    3416 	.db 0x80
      004B15 E2                    3417 	.db 0xe2
      004B16 94                    3418 	.db 0x94
      004B17 80                    3419 	.db 0x80
      004B18 E2                    3420 	.db 0xe2
      004B19 94                    3421 	.db 0x94
      004B1A 80                    3422 	.db 0x80
      004B1B E2                    3423 	.db 0xe2
      004B1C 94                    3424 	.db 0x94
      004B1D B4                    3425 	.db 0xb4
      004B1E E2                    3426 	.db 0xe2
      004B1F 94                    3427 	.db 0x94
      004B20 80                    3428 	.db 0x80
      004B21 E2                    3429 	.db 0xe2
      004B22 94                    3430 	.db 0x94
      004B23 80                    3431 	.db 0x80
      004B24 E2                    3432 	.db 0xe2
      004B25 94                    3433 	.db 0x94
      004B26 80                    3434 	.db 0x80
      004B27 E2                    3435 	.db 0xe2
      004B28 94                    3436 	.db 0x94
      004B29 80                    3437 	.db 0x80
      004B2A E2                    3438 	.db 0xe2
      004B2B 94                    3439 	.db 0x94
      004B2C 80                    3440 	.db 0x80
      004B2D E2                    3441 	.db 0xe2
      004B2E 94                    3442 	.db 0x94
      004B2F 80                    3443 	.db 0x80
      004B30 E2                    3444 	.db 0xe2
      004B31 94                    3445 	.db 0x94
      004B32 80                    3446 	.db 0x80
      004B33 E2                    3447 	.db 0xe2
      004B34 94                    3448 	.db 0x94
      004B35 80                    3449 	.db 0x80
      004B36 E2                    3450 	.db 0xe2
      004B37 94                    3451 	.db 0x94
      004B38 80                    3452 	.db 0x80
      004B39 E2                    3453 	.db 0xe2
      004B3A 94                    3454 	.db 0x94
      004B3B 80                    3455 	.db 0x80
      004B3C E2                    3456 	.db 0xe2
      004B3D 94                    3457 	.db 0x94
      004B3E 80                    3458 	.db 0x80
      004B3F E2                    3459 	.db 0xe2
      004B40 94                    3460 	.db 0x94
      004B41 80                    3461 	.db 0x80
      004B42 E2                    3462 	.db 0xe2
      004B43 94                    3463 	.db 0x94
      004B44 80                    3464 	.db 0x80
      004B45 E2                    3465 	.db 0xe2
      004B46 94                    3466 	.db 0x94
      004B47 80                    3467 	.db 0x80
      004B48 E2                    3468 	.db 0xe2
      004B49 94                    3469 	.db 0x94
      004B4A 80                    3470 	.db 0x80
      004B4B E2                    3471 	.db 0xe2
      004B4C 94                    3472 	.db 0x94
      004B4D 80                    3473 	.db 0x80
      004B4E E2                    3474 	.db 0xe2
      004B4F 94                    3475 	.db 0x94
      004B50 80                    3476 	.db 0x80
      004B51 E2                    3477 	.db 0xe2
      004B52 94                    3478 	.db 0x94
      004B53 80                    3479 	.db 0x80
      004B54 E2                    3480 	.db 0xe2
      004B55 94                    3481 	.db 0x94
      004B56 80                    3482 	.db 0x80
      004B57 E2                    3483 	.db 0xe2
      004B58 94                    3484 	.db 0x94
      004B59 80                    3485 	.db 0x80
      004B5A E2                    3486 	.db 0xe2
      004B5B 94                    3487 	.db 0x94
      004B5C 80                    3488 	.db 0x80
      004B5D E2                    3489 	.db 0xe2
      004B5E 94                    3490 	.db 0x94
      004B5F 80                    3491 	.db 0x80
      004B60 E2                    3492 	.db 0xe2
      004B61 94                    3493 	.db 0x94
      004B62 80                    3494 	.db 0x80
      004B63 E2                    3495 	.db 0xe2
      004B64 94                    3496 	.db 0x94
      004B65 80                    3497 	.db 0x80
      004B66 E2                    3498 	.db 0xe2
      004B67 94                    3499 	.db 0x94
      004B68 80                    3500 	.db 0x80
      004B69 E2                    3501 	.db 0xe2
      004B6A 94                    3502 	.db 0x94
      004B6B 80                    3503 	.db 0x80
      004B6C E2                    3504 	.db 0xe2
      004B6D 94                    3505 	.db 0x94
      004B6E 80                    3506 	.db 0x80
      004B6F E2                    3507 	.db 0xe2
      004B70 94                    3508 	.db 0x94
      004B71 80                    3509 	.db 0x80
      004B72 E2                    3510 	.db 0xe2
      004B73 94                    3511 	.db 0x94
      004B74 80                    3512 	.db 0x80
      004B75 E2                    3513 	.db 0xe2
      004B76 94                    3514 	.db 0x94
      004B77 80                    3515 	.db 0x80
      004B78 E2                    3516 	.db 0xe2
      004B79 94                    3517 	.db 0x94
      004B7A 80                    3518 	.db 0x80
      004B7B E2                    3519 	.db 0xe2
      004B7C 94                    3520 	.db 0x94
      004B7D 80                    3521 	.db 0x80
      004B7E E2                    3522 	.db 0xe2
      004B7F 94                    3523 	.db 0x94
      004B80 80                    3524 	.db 0x80
      004B81 E2                    3525 	.db 0xe2
      004B82 94                    3526 	.db 0x94
      004B83 80                    3527 	.db 0x80
      004B84 E2                    3528 	.db 0xe2
      004B85 94                    3529 	.db 0x94
      004B86 80                    3530 	.db 0x80
      004B87 E2                    3531 	.db 0xe2
      004B88 94                    3532 	.db 0x94
      004B89 80                    3533 	.db 0x80
      004B8A E2                    3534 	.db 0xe2
      004B8B 94                    3535 	.db 0x94
      004B8C 80                    3536 	.db 0x80
      004B8D E2                    3537 	.db 0xe2
      004B8E 94                    3538 	.db 0x94
      004B8F 80                    3539 	.db 0x80
      004B90 E2                    3540 	.db 0xe2
      004B91 94                    3541 	.db 0x94
      004B92 80                    3542 	.db 0x80
      004B93 E2                    3543 	.db 0xe2
      004B94 94                    3544 	.db 0x94
      004B95 80                    3545 	.db 0x80
      004B96 E2                    3546 	.db 0xe2
      004B97 94                    3547 	.db 0x94
      004B98 80                    3548 	.db 0x80
      004B99 E2                    3549 	.db 0xe2
      004B9A 94                    3550 	.db 0x94
      004B9B 80                    3551 	.db 0x80
      004B9C E2                    3552 	.db 0xe2
      004B9D 94                    3553 	.db 0x94
      004B9E 80                    3554 	.db 0x80
      004B9F E2                    3555 	.db 0xe2
      004BA0 94                    3556 	.db 0x94
      004BA1 80                    3557 	.db 0x80
      004BA2 E2                    3558 	.db 0xe2
      004BA3 94                    3559 	.db 0x94
      004BA4 98                    3560 	.db 0x98
      004BA5 0A                    3561 	.db 0x0a
      004BA6 0D                    3562 	.db 0x0d
      004BA7 00                    3563 	.db 0x00
                                   3564 	.area CSEG    (CODE)
                                   3565 	.area CONST   (CODE)
      004BA8                       3566 ___str_13:
      004BA8 7C 20 24 20 25 63     3567 	.ascii "| $ %c"
      004BAE 0A                    3568 	.db 0x0a
      004BAF 0D                    3569 	.db 0x0d
      004BB0 00                    3570 	.db 0x00
                                   3571 	.area CSEG    (CODE)
                                   3572 	.area CONST   (CODE)
      004BB1                       3573 ___str_14:
      004BB1 0A                    3574 	.db 0x0a
      004BB2 E2                    3575 	.db 0xe2
      004BB3 94                    3576 	.db 0x94
      004BB4 8C                    3577 	.db 0x8c
      004BB5 E2                    3578 	.db 0xe2
      004BB6 94                    3579 	.db 0x94
      004BB7 80                    3580 	.db 0x80
      004BB8 E2                    3581 	.db 0xe2
      004BB9 94                    3582 	.db 0x94
      004BBA 80                    3583 	.db 0x80
      004BBB E2                    3584 	.db 0xe2
      004BBC 94                    3585 	.db 0x94
      004BBD 80                    3586 	.db 0x80
      004BBE E2                    3587 	.db 0xe2
      004BBF 94                    3588 	.db 0x94
      004BC0 80                    3589 	.db 0x80
      004BC1 E2                    3590 	.db 0xe2
      004BC2 94                    3591 	.db 0x94
      004BC3 80                    3592 	.db 0x80
      004BC4 E2                    3593 	.db 0xe2
      004BC5 94                    3594 	.db 0x94
      004BC6 80                    3595 	.db 0x80
      004BC7 E2                    3596 	.db 0xe2
      004BC8 94                    3597 	.db 0x94
      004BC9 80                    3598 	.db 0x80
      004BCA E2                    3599 	.db 0xe2
      004BCB 94                    3600 	.db 0x94
      004BCC 80                    3601 	.db 0x80
      004BCD E2                    3602 	.db 0xe2
      004BCE 94                    3603 	.db 0x94
      004BCF 80                    3604 	.db 0x80
      004BD0 E2                    3605 	.db 0xe2
      004BD1 94                    3606 	.db 0x94
      004BD2 80                    3607 	.db 0x80
      004BD3 E2                    3608 	.db 0xe2
      004BD4 94                    3609 	.db 0x94
      004BD5 80                    3610 	.db 0x80
      004BD6 E2                    3611 	.db 0xe2
      004BD7 94                    3612 	.db 0x94
      004BD8 80                    3613 	.db 0x80
      004BD9 E2                    3614 	.db 0xe2
      004BDA 94                    3615 	.db 0x94
      004BDB 80                    3616 	.db 0x80
      004BDC E2                    3617 	.db 0xe2
      004BDD 94                    3618 	.db 0x94
      004BDE 80                    3619 	.db 0x80
      004BDF E2                    3620 	.db 0xe2
      004BE0 94                    3621 	.db 0x94
      004BE1 80                    3622 	.db 0x80
      004BE2 20 57 52 49 54 45 20  3623 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004BF3 E2                    3624 	.db 0xe2
      004BF4 94                    3625 	.db 0x94
      004BF5 80                    3626 	.db 0x80
      004BF6 E2                    3627 	.db 0xe2
      004BF7 94                    3628 	.db 0x94
      004BF8 80                    3629 	.db 0x80
      004BF9 E2                    3630 	.db 0xe2
      004BFA 94                    3631 	.db 0x94
      004BFB 80                    3632 	.db 0x80
      004BFC E2                    3633 	.db 0xe2
      004BFD 94                    3634 	.db 0x94
      004BFE 80                    3635 	.db 0x80
      004BFF E2                    3636 	.db 0xe2
      004C00 94                    3637 	.db 0x94
      004C01 80                    3638 	.db 0x80
      004C02 E2                    3639 	.db 0xe2
      004C03 94                    3640 	.db 0x94
      004C04 80                    3641 	.db 0x80
      004C05 E2                    3642 	.db 0xe2
      004C06 94                    3643 	.db 0x94
      004C07 80                    3644 	.db 0x80
      004C08 E2                    3645 	.db 0xe2
      004C09 94                    3646 	.db 0x94
      004C0A 80                    3647 	.db 0x80
      004C0B E2                    3648 	.db 0xe2
      004C0C 94                    3649 	.db 0x94
      004C0D 80                    3650 	.db 0x80
      004C0E E2                    3651 	.db 0xe2
      004C0F 94                    3652 	.db 0x94
      004C10 80                    3653 	.db 0x80
      004C11 E2                    3654 	.db 0xe2
      004C12 94                    3655 	.db 0x94
      004C13 80                    3656 	.db 0x80
      004C14 E2                    3657 	.db 0xe2
      004C15 94                    3658 	.db 0x94
      004C16 80                    3659 	.db 0x80
      004C17 E2                    3660 	.db 0xe2
      004C18 94                    3661 	.db 0x94
      004C19 80                    3662 	.db 0x80
      004C1A E2                    3663 	.db 0xe2
      004C1B 94                    3664 	.db 0x94
      004C1C 80                    3665 	.db 0x80
      004C1D E2                    3666 	.db 0xe2
      004C1E 94                    3667 	.db 0x94
      004C1F 90                    3668 	.db 0x90
      004C20 0A                    3669 	.db 0x0a
      004C21 0D                    3670 	.db 0x0d
      004C22 00                    3671 	.db 0x00
                                   3672 	.area CSEG    (CODE)
                                   3673 	.area CONST   (CODE)
      004C23                       3674 ___str_15:
      004C23 0A                    3675 	.db 0x0a
      004C24 E2                    3676 	.db 0xe2
      004C25 94                    3677 	.db 0x94
      004C26 8C                    3678 	.db 0x8c
      004C27 E2                    3679 	.db 0xe2
      004C28 94                    3680 	.db 0x94
      004C29 80                    3681 	.db 0x80
      004C2A E2                    3682 	.db 0xe2
      004C2B 94                    3683 	.db 0x94
      004C2C 80                    3684 	.db 0x80
      004C2D E2                    3685 	.db 0xe2
      004C2E 94                    3686 	.db 0x94
      004C2F 80                    3687 	.db 0x80
      004C30 E2                    3688 	.db 0xe2
      004C31 94                    3689 	.db 0x94
      004C32 80                    3690 	.db 0x80
      004C33 E2                    3691 	.db 0xe2
      004C34 94                    3692 	.db 0x94
      004C35 80                    3693 	.db 0x80
      004C36 E2                    3694 	.db 0xe2
      004C37 94                    3695 	.db 0x94
      004C38 80                    3696 	.db 0x80
      004C39 E2                    3697 	.db 0xe2
      004C3A 94                    3698 	.db 0x94
      004C3B 80                    3699 	.db 0x80
      004C3C E2                    3700 	.db 0xe2
      004C3D 94                    3701 	.db 0x94
      004C3E 80                    3702 	.db 0x80
      004C3F E2                    3703 	.db 0xe2
      004C40 94                    3704 	.db 0x94
      004C41 80                    3705 	.db 0x80
      004C42 E2                    3706 	.db 0xe2
      004C43 94                    3707 	.db 0x94
      004C44 80                    3708 	.db 0x80
      004C45 E2                    3709 	.db 0xe2
      004C46 94                    3710 	.db 0x94
      004C47 80                    3711 	.db 0x80
      004C48 E2                    3712 	.db 0xe2
      004C49 94                    3713 	.db 0x94
      004C4A 80                    3714 	.db 0x80
      004C4B E2                    3715 	.db 0xe2
      004C4C 94                    3716 	.db 0x94
      004C4D 80                    3717 	.db 0x80
      004C4E E2                    3718 	.db 0xe2
      004C4F 94                    3719 	.db 0x94
      004C50 80                    3720 	.db 0x80
      004C51 E2                    3721 	.db 0xe2
      004C52 94                    3722 	.db 0x94
      004C53 80                    3723 	.db 0x80
      004C54 20 52 45 41 44 20 4F  3724 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004C64 E2                    3725 	.db 0xe2
      004C65 94                    3726 	.db 0x94
      004C66 80                    3727 	.db 0x80
      004C67 E2                    3728 	.db 0xe2
      004C68 94                    3729 	.db 0x94
      004C69 80                    3730 	.db 0x80
      004C6A E2                    3731 	.db 0xe2
      004C6B 94                    3732 	.db 0x94
      004C6C 80                    3733 	.db 0x80
      004C6D E2                    3734 	.db 0xe2
      004C6E 94                    3735 	.db 0x94
      004C6F 80                    3736 	.db 0x80
      004C70 E2                    3737 	.db 0xe2
      004C71 94                    3738 	.db 0x94
      004C72 80                    3739 	.db 0x80
      004C73 E2                    3740 	.db 0xe2
      004C74 94                    3741 	.db 0x94
      004C75 80                    3742 	.db 0x80
      004C76 E2                    3743 	.db 0xe2
      004C77 94                    3744 	.db 0x94
      004C78 80                    3745 	.db 0x80
      004C79 E2                    3746 	.db 0xe2
      004C7A 94                    3747 	.db 0x94
      004C7B 80                    3748 	.db 0x80
      004C7C E2                    3749 	.db 0xe2
      004C7D 94                    3750 	.db 0x94
      004C7E 80                    3751 	.db 0x80
      004C7F E2                    3752 	.db 0xe2
      004C80 94                    3753 	.db 0x94
      004C81 80                    3754 	.db 0x80
      004C82 E2                    3755 	.db 0xe2
      004C83 94                    3756 	.db 0x94
      004C84 80                    3757 	.db 0x80
      004C85 E2                    3758 	.db 0xe2
      004C86 94                    3759 	.db 0x94
      004C87 80                    3760 	.db 0x80
      004C88 E2                    3761 	.db 0xe2
      004C89 94                    3762 	.db 0x94
      004C8A 80                    3763 	.db 0x80
      004C8B E2                    3764 	.db 0xe2
      004C8C 94                    3765 	.db 0x94
      004C8D 80                    3766 	.db 0x80
      004C8E E2                    3767 	.db 0xe2
      004C8F 94                    3768 	.db 0x94
      004C90 80                    3769 	.db 0x80
      004C91 E2                    3770 	.db 0xe2
      004C92 94                    3771 	.db 0x94
      004C93 90                    3772 	.db 0x90
      004C94 0A                    3773 	.db 0x0a
      004C95 0D                    3774 	.db 0x0d
      004C96 00                    3775 	.db 0x00
                                   3776 	.area CSEG    (CODE)
                                   3777 	.area CONST   (CODE)
      004C97                       3778 ___str_16:
      004C97 7C 20 52 65 61 64 69  3779 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004CC0 0A                    3780 	.db 0x0a
      004CC1 0D                    3781 	.db 0x0d
      004CC2 00                    3782 	.db 0x00
                                   3783 	.area CSEG    (CODE)
                                   3784 	.area CONST   (CODE)
      004CC3                       3785 ___str_17:
      004CC3 49 4E 56 41 4C 49 44  3786 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004CD0 0A                    3787 	.db 0x0a
      004CD1 0D                    3788 	.db 0x0d
      004CD2 00                    3789 	.db 0x00
                                   3790 	.area CSEG    (CODE)
                                   3791 	.area CONST   (CODE)
      004CD3                       3792 ___str_18:
      004CD3 E2                    3793 	.db 0xe2
      004CD4 94                    3794 	.db 0x94
      004CD5 82                    3795 	.db 0x82
      004CD6 20 45 6E 74 65 72 20  3796 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004D00 0A                    3797 	.db 0x0a
      004D01 0D                    3798 	.db 0x0d
      004D02 7C                    3799 	.ascii "|"
      004D03 00                    3800 	.db 0x00
                                   3801 	.area CSEG    (CODE)
                                   3802 	.area CONST   (CODE)
      004D04                       3803 ___str_19:
      004D04 7C 20 24 20           3804 	.ascii "| $ "
      004D08 00                    3805 	.db 0x00
                                   3806 	.area CSEG    (CODE)
                                   3807 	.area CONST   (CODE)
      004D09                       3808 ___str_20:
      004D09 0A                    3809 	.db 0x0a
      004D0A 0D                    3810 	.db 0x0d
      004D0B E2                    3811 	.db 0xe2
      004D0C 94                    3812 	.db 0x94
      004D0D 82                    3813 	.db 0x82
      004D0E 20 45 6E 74 65 72 65  3814 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004D26 0A                    3815 	.db 0x0a
      004D27 0D                    3816 	.db 0x0d
      004D28 00                    3817 	.db 0x00
                                   3818 	.area CSEG    (CODE)
                                   3819 	.area CONST   (CODE)
      004D29                       3820 ___str_21:
      004D29 E2                    3821 	.db 0xe2
      004D2A 95                    3822 	.db 0x95
      004D2B 94                    3823 	.db 0x94
      004D2C E2                    3824 	.db 0xe2
      004D2D 95                    3825 	.db 0x95
      004D2E 90                    3826 	.db 0x90
      004D2F E2                    3827 	.db 0xe2
      004D30 95                    3828 	.db 0x95
      004D31 90                    3829 	.db 0x90
      004D32 E2                    3830 	.db 0xe2
      004D33 95                    3831 	.db 0x95
      004D34 90                    3832 	.db 0x90
      004D35 E2                    3833 	.db 0xe2
      004D36 95                    3834 	.db 0x95
      004D37 90                    3835 	.db 0x90
      004D38 E2                    3836 	.db 0xe2
      004D39 95                    3837 	.db 0x95
      004D3A 90                    3838 	.db 0x90
      004D3B E2                    3839 	.db 0xe2
      004D3C 95                    3840 	.db 0x95
      004D3D 90                    3841 	.db 0x90
      004D3E E2                    3842 	.db 0xe2
      004D3F 95                    3843 	.db 0x95
      004D40 90                    3844 	.db 0x90
      004D41 E2                    3845 	.db 0xe2
      004D42 95                    3846 	.db 0x95
      004D43 90                    3847 	.db 0x90
      004D44 E2                    3848 	.db 0xe2
      004D45 95                    3849 	.db 0x95
      004D46 90                    3850 	.db 0x90
      004D47 E2                    3851 	.db 0xe2
      004D48 95                    3852 	.db 0x95
      004D49 90                    3853 	.db 0x90
      004D4A E2                    3854 	.db 0xe2
      004D4B 95                    3855 	.db 0x95
      004D4C 90                    3856 	.db 0x90
      004D4D E2                    3857 	.db 0xe2
      004D4E 95                    3858 	.db 0x95
      004D4F 90                    3859 	.db 0x90
      004D50 E2                    3860 	.db 0xe2
      004D51 95                    3861 	.db 0x95
      004D52 90                    3862 	.db 0x90
      004D53 E2                    3863 	.db 0xe2
      004D54 95                    3864 	.db 0x95
      004D55 90                    3865 	.db 0x90
      004D56 E2                    3866 	.db 0xe2
      004D57 95                    3867 	.db 0x95
      004D58 90                    3868 	.db 0x90
      004D59 E2                    3869 	.db 0xe2
      004D5A 95                    3870 	.db 0x95
      004D5B 90                    3871 	.db 0x90
      004D5C E2                    3872 	.db 0xe2
      004D5D 95                    3873 	.db 0x95
      004D5E 90                    3874 	.db 0x90
      004D5F E2                    3875 	.db 0xe2
      004D60 95                    3876 	.db 0x95
      004D61 90                    3877 	.db 0x90
      004D62 E2                    3878 	.db 0xe2
      004D63 95                    3879 	.db 0x95
      004D64 90                    3880 	.db 0x90
      004D65 E2                    3881 	.db 0xe2
      004D66 95                    3882 	.db 0x95
      004D67 90                    3883 	.db 0x90
      004D68 E2                    3884 	.db 0xe2
      004D69 95                    3885 	.db 0x95
      004D6A 90                    3886 	.db 0x90
      004D6B E2                    3887 	.db 0xe2
      004D6C 95                    3888 	.db 0x95
      004D6D 90                    3889 	.db 0x90
      004D6E E2                    3890 	.db 0xe2
      004D6F 95                    3891 	.db 0x95
      004D70 90                    3892 	.db 0x90
      004D71 E2                    3893 	.db 0xe2
      004D72 95                    3894 	.db 0x95
      004D73 90                    3895 	.db 0x90
      004D74 E2                    3896 	.db 0xe2
      004D75 95                    3897 	.db 0x95
      004D76 90                    3898 	.db 0x90
      004D77 E2                    3899 	.db 0xe2
      004D78 95                    3900 	.db 0x95
      004D79 90                    3901 	.db 0x90
      004D7A E2                    3902 	.db 0xe2
      004D7B 95                    3903 	.db 0x95
      004D7C 90                    3904 	.db 0x90
      004D7D E2                    3905 	.db 0xe2
      004D7E 95                    3906 	.db 0x95
      004D7F 90                    3907 	.db 0x90
      004D80 E2                    3908 	.db 0xe2
      004D81 95                    3909 	.db 0x95
      004D82 90                    3910 	.db 0x90
      004D83 E2                    3911 	.db 0xe2
      004D84 95                    3912 	.db 0x95
      004D85 90                    3913 	.db 0x90
      004D86 E2                    3914 	.db 0xe2
      004D87 95                    3915 	.db 0x95
      004D88 90                    3916 	.db 0x90
      004D89 E2                    3917 	.db 0xe2
      004D8A 95                    3918 	.db 0x95
      004D8B 90                    3919 	.db 0x90
      004D8C E2                    3920 	.db 0xe2
      004D8D 95                    3921 	.db 0x95
      004D8E 90                    3922 	.db 0x90
      004D8F E2                    3923 	.db 0xe2
      004D90 95                    3924 	.db 0x95
      004D91 90                    3925 	.db 0x90
      004D92 E2                    3926 	.db 0xe2
      004D93 95                    3927 	.db 0x95
      004D94 90                    3928 	.db 0x90
      004D95 E2                    3929 	.db 0xe2
      004D96 95                    3930 	.db 0x95
      004D97 90                    3931 	.db 0x90
      004D98 E2                    3932 	.db 0xe2
      004D99 95                    3933 	.db 0x95
      004D9A 90                    3934 	.db 0x90
      004D9B E2                    3935 	.db 0xe2
      004D9C 95                    3936 	.db 0x95
      004D9D 90                    3937 	.db 0x90
      004D9E E2                    3938 	.db 0xe2
      004D9F 95                    3939 	.db 0x95
      004DA0 90                    3940 	.db 0x90
      004DA1 E2                    3941 	.db 0xe2
      004DA2 95                    3942 	.db 0x95
      004DA3 90                    3943 	.db 0x90
      004DA4 E2                    3944 	.db 0xe2
      004DA5 95                    3945 	.db 0x95
      004DA6 90                    3946 	.db 0x90
      004DA7 E2                    3947 	.db 0xe2
      004DA8 95                    3948 	.db 0x95
      004DA9 90                    3949 	.db 0x90
      004DAA E2                    3950 	.db 0xe2
      004DAB 95                    3951 	.db 0x95
      004DAC 97                    3952 	.db 0x97
      004DAD 0A                    3953 	.db 0x0a
      004DAE 0D                    3954 	.db 0x0d
      004DAF 00                    3955 	.db 0x00
                                   3956 	.area CSEG    (CODE)
                                   3957 	.area CONST   (CODE)
      004DB0                       3958 ___str_22:
      004DB0 E2                    3959 	.db 0xe2
      004DB1 95                    3960 	.db 0x95
      004DB2 91                    3961 	.db 0x91
      004DB3 20 20 20 20 20 20 20  3962 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004DDB E2                    3963 	.db 0xe2
      004DDC 95                    3964 	.db 0x95
      004DDD 91                    3965 	.db 0x91
      004DDE 0A                    3966 	.db 0x0a
      004DDF 0D                    3967 	.db 0x0d
      004DE0 00                    3968 	.db 0x00
                                   3969 	.area CSEG    (CODE)
                                   3970 	.area CONST   (CODE)
      004DE1                       3971 ___str_23:
      004DE1 E2                    3972 	.db 0xe2
      004DE2 95                    3973 	.db 0x95
      004DE3 91                    3974 	.db 0x91
      004DE4 20 20 20 20 20 50 6C  3975 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004E0C E2                    3976 	.db 0xe2
      004E0D 95                    3977 	.db 0x95
      004E0E 91                    3978 	.db 0x91
      004E0F 0A                    3979 	.db 0x0a
      004E10 0D                    3980 	.db 0x0d
      004E11 00                    3981 	.db 0x00
                                   3982 	.area CSEG    (CODE)
                                   3983 	.area CONST   (CODE)
      004E12                       3984 ___str_24:
      004E12 E2                    3985 	.db 0xe2
      004E13 95                    3986 	.db 0x95
      004E14 9A                    3987 	.db 0x9a
      004E15 E2                    3988 	.db 0xe2
      004E16 95                    3989 	.db 0x95
      004E17 90                    3990 	.db 0x90
      004E18 E2                    3991 	.db 0xe2
      004E19 95                    3992 	.db 0x95
      004E1A 90                    3993 	.db 0x90
      004E1B E2                    3994 	.db 0xe2
      004E1C 95                    3995 	.db 0x95
      004E1D 90                    3996 	.db 0x90
      004E1E E2                    3997 	.db 0xe2
      004E1F 95                    3998 	.db 0x95
      004E20 90                    3999 	.db 0x90
      004E21 E2                    4000 	.db 0xe2
      004E22 95                    4001 	.db 0x95
      004E23 90                    4002 	.db 0x90
      004E24 E2                    4003 	.db 0xe2
      004E25 95                    4004 	.db 0x95
      004E26 90                    4005 	.db 0x90
      004E27 E2                    4006 	.db 0xe2
      004E28 95                    4007 	.db 0x95
      004E29 90                    4008 	.db 0x90
      004E2A E2                    4009 	.db 0xe2
      004E2B 95                    4010 	.db 0x95
      004E2C 90                    4011 	.db 0x90
      004E2D E2                    4012 	.db 0xe2
      004E2E 95                    4013 	.db 0x95
      004E2F 90                    4014 	.db 0x90
      004E30 E2                    4015 	.db 0xe2
      004E31 95                    4016 	.db 0x95
      004E32 90                    4017 	.db 0x90
      004E33 E2                    4018 	.db 0xe2
      004E34 95                    4019 	.db 0x95
      004E35 90                    4020 	.db 0x90
      004E36 E2                    4021 	.db 0xe2
      004E37 95                    4022 	.db 0x95
      004E38 90                    4023 	.db 0x90
      004E39 E2                    4024 	.db 0xe2
      004E3A 95                    4025 	.db 0x95
      004E3B 90                    4026 	.db 0x90
      004E3C E2                    4027 	.db 0xe2
      004E3D 95                    4028 	.db 0x95
      004E3E 90                    4029 	.db 0x90
      004E3F E2                    4030 	.db 0xe2
      004E40 95                    4031 	.db 0x95
      004E41 90                    4032 	.db 0x90
      004E42 E2                    4033 	.db 0xe2
      004E43 95                    4034 	.db 0x95
      004E44 90                    4035 	.db 0x90
      004E45 E2                    4036 	.db 0xe2
      004E46 95                    4037 	.db 0x95
      004E47 90                    4038 	.db 0x90
      004E48 E2                    4039 	.db 0xe2
      004E49 95                    4040 	.db 0x95
      004E4A 90                    4041 	.db 0x90
      004E4B E2                    4042 	.db 0xe2
      004E4C 95                    4043 	.db 0x95
      004E4D 90                    4044 	.db 0x90
      004E4E E2                    4045 	.db 0xe2
      004E4F 95                    4046 	.db 0x95
      004E50 90                    4047 	.db 0x90
      004E51 E2                    4048 	.db 0xe2
      004E52 95                    4049 	.db 0x95
      004E53 90                    4050 	.db 0x90
      004E54 E2                    4051 	.db 0xe2
      004E55 95                    4052 	.db 0x95
      004E56 90                    4053 	.db 0x90
      004E57 E2                    4054 	.db 0xe2
      004E58 95                    4055 	.db 0x95
      004E59 90                    4056 	.db 0x90
      004E5A E2                    4057 	.db 0xe2
      004E5B 95                    4058 	.db 0x95
      004E5C 90                    4059 	.db 0x90
      004E5D E2                    4060 	.db 0xe2
      004E5E 95                    4061 	.db 0x95
      004E5F 90                    4062 	.db 0x90
      004E60 E2                    4063 	.db 0xe2
      004E61 95                    4064 	.db 0x95
      004E62 90                    4065 	.db 0x90
      004E63 E2                    4066 	.db 0xe2
      004E64 95                    4067 	.db 0x95
      004E65 90                    4068 	.db 0x90
      004E66 E2                    4069 	.db 0xe2
      004E67 95                    4070 	.db 0x95
      004E68 90                    4071 	.db 0x90
      004E69 E2                    4072 	.db 0xe2
      004E6A 95                    4073 	.db 0x95
      004E6B 90                    4074 	.db 0x90
      004E6C E2                    4075 	.db 0xe2
      004E6D 95                    4076 	.db 0x95
      004E6E 90                    4077 	.db 0x90
      004E6F E2                    4078 	.db 0xe2
      004E70 95                    4079 	.db 0x95
      004E71 90                    4080 	.db 0x90
      004E72 E2                    4081 	.db 0xe2
      004E73 95                    4082 	.db 0x95
      004E74 90                    4083 	.db 0x90
      004E75 E2                    4084 	.db 0xe2
      004E76 95                    4085 	.db 0x95
      004E77 90                    4086 	.db 0x90
      004E78 E2                    4087 	.db 0xe2
      004E79 95                    4088 	.db 0x95
      004E7A 90                    4089 	.db 0x90
      004E7B E2                    4090 	.db 0xe2
      004E7C 95                    4091 	.db 0x95
      004E7D 90                    4092 	.db 0x90
      004E7E E2                    4093 	.db 0xe2
      004E7F 95                    4094 	.db 0x95
      004E80 90                    4095 	.db 0x90
      004E81 E2                    4096 	.db 0xe2
      004E82 95                    4097 	.db 0x95
      004E83 90                    4098 	.db 0x90
      004E84 E2                    4099 	.db 0xe2
      004E85 95                    4100 	.db 0x95
      004E86 90                    4101 	.db 0x90
      004E87 E2                    4102 	.db 0xe2
      004E88 95                    4103 	.db 0x95
      004E89 90                    4104 	.db 0x90
      004E8A E2                    4105 	.db 0xe2
      004E8B 95                    4106 	.db 0x95
      004E8C 90                    4107 	.db 0x90
      004E8D E2                    4108 	.db 0xe2
      004E8E 95                    4109 	.db 0x95
      004E8F 90                    4110 	.db 0x90
      004E90 E2                    4111 	.db 0xe2
      004E91 95                    4112 	.db 0x95
      004E92 90                    4113 	.db 0x90
      004E93 E2                    4114 	.db 0xe2
      004E94 95                    4115 	.db 0x95
      004E95 9D                    4116 	.db 0x9d
      004E96 0A                    4117 	.db 0x0a
      004E97 0D                    4118 	.db 0x0d
      004E98 00                    4119 	.db 0x00
                                   4120 	.area CSEG    (CODE)
                                   4121 	.area CONST   (CODE)
      004E99                       4122 ___str_25:
      004E99 E2                    4123 	.db 0xe2
      004E9A 94                    4124 	.db 0x94
      004E9B 82                    4125 	.db 0x82
      004E9C 20 45 6E 74 65 72 20  4126 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004EC3 0A                    4127 	.db 0x0a
      004EC4 0D                    4128 	.db 0x0d
      004EC5 7C                    4129 	.ascii "|"
      004EC6 00                    4130 	.db 0x00
                                   4131 	.area CSEG    (CODE)
                                   4132 	.area CONST   (CODE)
      004EC7                       4133 ___str_26:
      004EC7 24 20                 4134 	.ascii "$ "
      004EC9 00                    4135 	.db 0x00
                                   4136 	.area CSEG    (CODE)
                                   4137 	.area CONST   (CODE)
      004ECA                       4138 ___str_27:
      004ECA 0A                    4139 	.db 0x0a
      004ECB 0D                    4140 	.db 0x0d
      004ECC E2                    4141 	.db 0xe2
      004ECD 94                    4142 	.db 0x94
      004ECE 82                    4143 	.db 0x82
      004ECF 20 45 6E 74 65 72 65  4144 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004EE4 0A                    4145 	.db 0x0a
      004EE5 0D                    4146 	.db 0x0d
      004EE6 00                    4147 	.db 0x00
                                   4148 	.area CSEG    (CODE)
                                   4149 	.area CONST   (CODE)
      004EE7                       4150 ___str_28:
      004EE7 44 61 74 61 20 6F 75  4151 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004EF8 0A                    4152 	.db 0x0a
      004EF9 0D                    4153 	.db 0x0d
      004EFA 00                    4154 	.db 0x00
                                   4155 	.area CSEG    (CODE)
                                   4156 	.area CONST   (CODE)
      004EFB                       4157 ___str_29:
      004EFB 45 72 72 6F 72 3A 20  4158 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004F23 0A                    4159 	.db 0x0a
      004F24 0D                    4160 	.db 0x0d
      004F25 00                    4161 	.db 0x00
                                   4162 	.area CSEG    (CODE)
                                   4163 	.area CONST   (CODE)
      004F26                       4164 ___str_30:
      004F26 45 72 72 6F 72 3A 20  4165 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004F46 0A                    4166 	.db 0x0a
      004F47 0D                    4167 	.db 0x0d
      004F48 00                    4168 	.db 0x00
                                   4169 	.area CSEG    (CODE)
                                   4170 	.area CONST   (CODE)
      004F49                       4171 ___str_31:
      004F49 45 72 72 6F 72 3A 20  4172 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004F5F 0A                    4173 	.db 0x0a
      004F60 0D                    4174 	.db 0x0d
      004F61 00                    4175 	.db 0x00
                                   4176 	.area CSEG    (CODE)
                                   4177 	.area CONST   (CODE)
      004F62                       4178 ___str_32:
      004F62 7C 20 57 72 69 74 69  4179 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004F94 0A                    4180 	.db 0x0a
      004F95 0D                    4181 	.db 0x0d
      004F96 00                    4182 	.db 0x00
                                   4183 	.area CSEG    (CODE)
                                   4184 	.area CONST   (CODE)
      004F97                       4185 ___str_33:
      004F97 E2                    4186 	.db 0xe2
      004F98 94                    4187 	.db 0x94
      004F99 82                    4188 	.db 0x82
      004F9A 20 57 72 69 74 65 20  4189 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004FC9 E2                    4190 	.db 0xe2
      004FCA 94                    4191 	.db 0x94
      004FCB 82                    4192 	.db 0x82
      004FCC 0A                    4193 	.db 0x0a
      004FCD 0D                    4194 	.db 0x0d
      004FCE 00                    4195 	.db 0x00
                                   4196 	.area CSEG    (CODE)
                                   4197 	.area CONST   (CODE)
      004FCF                       4198 ___str_34:
      004FCF E2                    4199 	.db 0xe2
      004FD0 94                    4200 	.db 0x94
      004FD1 94                    4201 	.db 0x94
      004FD2 E2                    4202 	.db 0xe2
      004FD3 94                    4203 	.db 0x94
      004FD4 80                    4204 	.db 0x80
      004FD5 E2                    4205 	.db 0xe2
      004FD6 94                    4206 	.db 0x94
      004FD7 80                    4207 	.db 0x80
      004FD8 E2                    4208 	.db 0xe2
      004FD9 94                    4209 	.db 0x94
      004FDA 80                    4210 	.db 0x80
      004FDB E2                    4211 	.db 0xe2
      004FDC 94                    4212 	.db 0x94
      004FDD 80                    4213 	.db 0x80
      004FDE E2                    4214 	.db 0xe2
      004FDF 94                    4215 	.db 0x94
      004FE0 80                    4216 	.db 0x80
      004FE1 E2                    4217 	.db 0xe2
      004FE2 94                    4218 	.db 0x94
      004FE3 80                    4219 	.db 0x80
      004FE4 E2                    4220 	.db 0xe2
      004FE5 94                    4221 	.db 0x94
      004FE6 80                    4222 	.db 0x80
      004FE7 E2                    4223 	.db 0xe2
      004FE8 94                    4224 	.db 0x94
      004FE9 80                    4225 	.db 0x80
      004FEA E2                    4226 	.db 0xe2
      004FEB 94                    4227 	.db 0x94
      004FEC 80                    4228 	.db 0x80
      004FED E2                    4229 	.db 0xe2
      004FEE 94                    4230 	.db 0x94
      004FEF 80                    4231 	.db 0x80
      004FF0 E2                    4232 	.db 0xe2
      004FF1 94                    4233 	.db 0x94
      004FF2 80                    4234 	.db 0x80
      004FF3 E2                    4235 	.db 0xe2
      004FF4 94                    4236 	.db 0x94
      004FF5 80                    4237 	.db 0x80
      004FF6 E2                    4238 	.db 0xe2
      004FF7 94                    4239 	.db 0x94
      004FF8 80                    4240 	.db 0x80
      004FF9 E2                    4241 	.db 0xe2
      004FFA 94                    4242 	.db 0x94
      004FFB 80                    4243 	.db 0x80
      004FFC E2                    4244 	.db 0xe2
      004FFD 94                    4245 	.db 0x94
      004FFE 80                    4246 	.db 0x80
      004FFF E2                    4247 	.db 0xe2
      005000 94                    4248 	.db 0x94
      005001 80                    4249 	.db 0x80
      005002 E2                    4250 	.db 0xe2
      005003 94                    4251 	.db 0x94
      005004 80                    4252 	.db 0x80
      005005 E2                    4253 	.db 0xe2
      005006 94                    4254 	.db 0x94
      005007 80                    4255 	.db 0x80
      005008 E2                    4256 	.db 0xe2
      005009 94                    4257 	.db 0x94
      00500A 80                    4258 	.db 0x80
      00500B E2                    4259 	.db 0xe2
      00500C 94                    4260 	.db 0x94
      00500D 80                    4261 	.db 0x80
      00500E E2                    4262 	.db 0xe2
      00500F 94                    4263 	.db 0x94
      005010 80                    4264 	.db 0x80
      005011 E2                    4265 	.db 0xe2
      005012 94                    4266 	.db 0x94
      005013 80                    4267 	.db 0x80
      005014 E2                    4268 	.db 0xe2
      005015 94                    4269 	.db 0x94
      005016 80                    4270 	.db 0x80
      005017 E2                    4271 	.db 0xe2
      005018 94                    4272 	.db 0x94
      005019 80                    4273 	.db 0x80
      00501A E2                    4274 	.db 0xe2
      00501B 94                    4275 	.db 0x94
      00501C 80                    4276 	.db 0x80
      00501D E2                    4277 	.db 0xe2
      00501E 94                    4278 	.db 0x94
      00501F 80                    4279 	.db 0x80
      005020 E2                    4280 	.db 0xe2
      005021 94                    4281 	.db 0x94
      005022 80                    4282 	.db 0x80
      005023 E2                    4283 	.db 0xe2
      005024 94                    4284 	.db 0x94
      005025 80                    4285 	.db 0x80
      005026 E2                    4286 	.db 0xe2
      005027 94                    4287 	.db 0x94
      005028 80                    4288 	.db 0x80
      005029 E2                    4289 	.db 0xe2
      00502A 94                    4290 	.db 0x94
      00502B 80                    4291 	.db 0x80
      00502C E2                    4292 	.db 0xe2
      00502D 94                    4293 	.db 0x94
      00502E 80                    4294 	.db 0x80
      00502F E2                    4295 	.db 0xe2
      005030 94                    4296 	.db 0x94
      005031 80                    4297 	.db 0x80
      005032 E2                    4298 	.db 0xe2
      005033 94                    4299 	.db 0x94
      005034 80                    4300 	.db 0x80
      005035 E2                    4301 	.db 0xe2
      005036 94                    4302 	.db 0x94
      005037 80                    4303 	.db 0x80
      005038 E2                    4304 	.db 0xe2
      005039 94                    4305 	.db 0x94
      00503A 80                    4306 	.db 0x80
      00503B E2                    4307 	.db 0xe2
      00503C 94                    4308 	.db 0x94
      00503D 80                    4309 	.db 0x80
      00503E E2                    4310 	.db 0xe2
      00503F 94                    4311 	.db 0x94
      005040 80                    4312 	.db 0x80
      005041 E2                    4313 	.db 0xe2
      005042 94                    4314 	.db 0x94
      005043 80                    4315 	.db 0x80
      005044 E2                    4316 	.db 0xe2
      005045 94                    4317 	.db 0x94
      005046 80                    4318 	.db 0x80
      005047 E2                    4319 	.db 0xe2
      005048 94                    4320 	.db 0x94
      005049 80                    4321 	.db 0x80
      00504A E2                    4322 	.db 0xe2
      00504B 94                    4323 	.db 0x94
      00504C 80                    4324 	.db 0x80
      00504D E2                    4325 	.db 0xe2
      00504E 94                    4326 	.db 0x94
      00504F 80                    4327 	.db 0x80
      005050 E2                    4328 	.db 0xe2
      005051 94                    4329 	.db 0x94
      005052 80                    4330 	.db 0x80
      005053 E2                    4331 	.db 0xe2
      005054 94                    4332 	.db 0x94
      005055 80                    4333 	.db 0x80
      005056 E2                    4334 	.db 0xe2
      005057 94                    4335 	.db 0x94
      005058 80                    4336 	.db 0x80
      005059 E2                    4337 	.db 0xe2
      00505A 94                    4338 	.db 0x94
      00505B 80                    4339 	.db 0x80
      00505C E2                    4340 	.db 0xe2
      00505D 94                    4341 	.db 0x94
      00505E 80                    4342 	.db 0x80
      00505F E2                    4343 	.db 0xe2
      005060 94                    4344 	.db 0x94
      005061 98                    4345 	.db 0x98
      005062 0A                    4346 	.db 0x0a
      005063 0D                    4347 	.db 0x0d
      005064 00                    4348 	.db 0x00
                                   4349 	.area CSEG    (CODE)
                                   4350 	.area CONST   (CODE)
      005065                       4351 ___str_35:
      005065 7C 20 43 41 4E 20 4E  4352 	.ascii "| CAN NOT WRITE                   |"
             4F 54 20 57 52 49 54
             45 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      005088 0A                    4353 	.db 0x0a
      005089 0D                    4354 	.db 0x0d
      00508A 00                    4355 	.db 0x00
                                   4356 	.area CSEG    (CODE)
                                   4357 	.area CONST   (CODE)
      00508B                       4358 ___str_36:
      00508B 45 72 72 6F 72 3A 20  4359 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0050B8 0A                    4360 	.db 0x0a
      0050B9 0D                    4361 	.db 0x0d
      0050BA 00                    4362 	.db 0x00
                                   4363 	.area CSEG    (CODE)
                                   4364 	.area CONST   (CODE)
      0050BB                       4365 ___str_37:
      0050BB 45 72 72 6F 72 3A 20  4366 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      0050E7 0A                    4367 	.db 0x0a
      0050E8 0D                    4368 	.db 0x0d
      0050E9 00                    4369 	.db 0x00
                                   4370 	.area CSEG    (CODE)
                                   4371 	.area CONST   (CODE)
      0050EA                       4372 ___str_38:
      0050EA E2                    4373 	.db 0xe2
      0050EB 94                    4374 	.db 0x94
      0050EC 82                    4375 	.db 0x82
      0050ED 20 52 65 61 64 69 6E  4376 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005129 20                    4377 	.ascii " "
      00512A 0A                    4378 	.db 0x0a
      00512B 0D                    4379 	.db 0x0d
      00512C 00                    4380 	.db 0x00
                                   4381 	.area CSEG    (CODE)
                                   4382 	.area CONST   (CODE)
      00512D                       4383 ___str_39:
      00512D 7C 20 30 78 25 30 33  4384 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      00513F 0A                    4385 	.db 0x0a
      005140 0D                    4386 	.db 0x0d
      005141 00                    4387 	.db 0x00
                                   4388 	.area CSEG    (CODE)
                                   4389 	.area CONST   (CODE)
      005142                       4390 ___str_40:
      005142 E2                    4391 	.db 0xe2
      005143 94                    4392 	.db 0x94
      005144 82                    4393 	.db 0x82
      005145 20 52 65 61 64 20 73  4394 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      005167 E2                    4395 	.db 0xe2
      005168 94                    4396 	.db 0x94
      005169 82                    4397 	.db 0x82
      00516A 0A                    4398 	.db 0x0a
      00516B 0D                    4399 	.db 0x0d
      00516C 00                    4400 	.db 0x00
                                   4401 	.area CSEG    (CODE)
                                   4402 	.area CONST   (CODE)
      00516D                       4403 ___str_41:
      00516D E2                    4404 	.db 0xe2
      00516E 95                    4405 	.db 0x95
      00516F 91                    4406 	.db 0x91
      005170 20 20 20 20 20 20 20  4407 	.ascii "          ! MEMORY READ ERROR !           "
             20 20 20 21 20 4D 45
             4D 4F 52 59 20 52 45
             41 44 20 45 52 52 4F
             52 20 21 20 20 20 20
             20 20 20 20 20 20 20
      00519A E2                    4408 	.db 0xe2
      00519B 95                    4409 	.db 0x95
      00519C 91                    4410 	.db 0x91
      00519D 0A                    4411 	.db 0x0a
      00519E 0D                    4412 	.db 0x0d
      00519F 00                    4413 	.db 0x00
                                   4414 	.area CSEG    (CODE)
                                   4415 	.area CONST   (CODE)
      0051A0                       4416 ___str_42:
      0051A0 E2                    4417 	.db 0xe2
      0051A1 95                    4418 	.db 0x95
      0051A2 91                    4419 	.db 0x91
      0051A3 20 20 20 20 20 20 43  4420 	.ascii "      Cannot Read at Address 0x%03X       "
             61 6E 6E 6F 74 20 52
             65 61 64 20 61 74 20
             41 64 64 72 65 73 73
             20 30 78 25 30 33 58
             20 20 20 20 20 20 20
      0051CD E2                    4421 	.db 0xe2
      0051CE 95                    4422 	.db 0x95
      0051CF 91                    4423 	.db 0x91
      0051D0 0A                    4424 	.db 0x0a
      0051D1 0D                    4425 	.db 0x0d
      0051D2 00                    4426 	.db 0x00
                                   4427 	.area CSEG    (CODE)
                                   4428 	.area CONST   (CODE)
      0051D3                       4429 ___str_43:
      0051D3 41 43 4B 20 44 49 44  4430 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0051E5 0A                    4431 	.db 0x0a
      0051E6 0D                    4432 	.db 0x0d
      0051E7 00                    4433 	.db 0x00
                                   4434 	.area CSEG    (CODE)
                                   4435 	.area CONST   (CODE)
      0051E8                       4436 ___str_44:
      0051E8 57 72 69 74 69 6E 67  4437 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      00520D 0A                    4438 	.db 0x0a
      00520E 0D                    4439 	.db 0x0d
      00520F 00                    4440 	.db 0x00
                                   4441 	.area CSEG    (CODE)
                                   4442 	.area CONST   (CODE)
      005210                       4443 ___str_45:
      005210 52 65 61 64 20 62 61  4444 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005235 0A                    4445 	.db 0x0a
      005236 0D                    4446 	.db 0x0d
      005237 00                    4447 	.db 0x00
                                   4448 	.area CSEG    (CODE)
                                   4449 	.area CONST   (CODE)
      005238                       4450 ___str_46:
      005238 4D 41 54 43 48 20 2D  4451 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005256 0A                    4452 	.db 0x0a
      005257 0D                    4453 	.db 0x0d
      005258 00                    4454 	.db 0x00
                                   4455 	.area CSEG    (CODE)
                                   4456 	.area CONST   (CODE)
      005259                       4457 ___str_47:
      005259 45 52 52 4F 52 20 2D  4458 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      00526F 0A                    4459 	.db 0x0a
      005270 0D                    4460 	.db 0x0d
      005271 00                    4461 	.db 0x00
                                   4462 	.area CSEG    (CODE)
                                   4463 	.area XINIT   (CODE)
      00527D                       4464 __xinit__address_range_flag:
      00527D 01 00                 4465 	.byte #0x01, #0x00	;  1
      00527F                       4466 __xinit__data_range_flag:
      00527F 01 00                 4467 	.byte #0x01, #0x00	;  1
      005281                       4468 __xinit__block:
      005281 00 00                 4469 	.byte #0x00, #0x00	; 0
                                   4470 	.area CABS    (ABS,CODE)
