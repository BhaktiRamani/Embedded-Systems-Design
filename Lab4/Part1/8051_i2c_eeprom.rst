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
      000414                        489 _i2c_write_data_65536_97:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_102:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_103:
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
      00308F 74 8D            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 45            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B 2B         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 3F            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B 2B         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 80            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B 2B         [24]  656 	lcall	_printf
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
      0030CF 74 31            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B 2B         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 E7            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 47            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B 2B         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 2B            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B 2B         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 DF            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 48            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B 2B         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 23            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B 2B         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 67            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B 2B         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 AB            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 49            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B 2B         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 EF            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 49            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B 2B         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 33            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B 2B         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 77            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B 2B         [24]  776 	lcall	_printf
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
      0031AE 12 39 EC         [24]  804 	lcall	_i2c_start
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
      0031C0 74 2B            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B 2B         [24]  822 	lcall	_printf
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
      0031EA 74 34            [12]  840 	mov	a,#___str_14
      0031EC C0 E0            [24]  841 	push	acc
      0031EE 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  843 	push	acc
      0031F2 74 80            [12]  844 	mov	a,#0x80
      0031F4 C0 E0            [24]  845 	push	acc
      0031F6 12 3B 2B         [24]  846 	lcall	_printf
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
      003251 74 A6            [12]  909 	mov	a,#___str_15
      003253 C0 E0            [24]  910 	push	acc
      003255 74 4B            [12]  911 	mov	a,#(___str_15 >> 8)
      003257 C0 E0            [24]  912 	push	acc
      003259 74 80            [12]  913 	mov	a,#0x80
      00325B C0 E0            [24]  914 	push	acc
      00325D 12 3B 2B         [24]  915 	lcall	_printf
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
      003275 74 1A            [12]  928 	mov	a,#___str_16
      003277 C0 E0            [24]  929 	push	acc
      003279 74 4C            [12]  930 	mov	a,#(___str_16 >> 8)
      00327B C0 E0            [24]  931 	push	acc
      00327D 74 80            [12]  932 	mov	a,#0x80
      00327F C0 E0            [24]  933 	push	acc
      003281 12 3B 2B         [24]  934 	lcall	_printf
      003284 E5 81            [12]  935 	mov	a,sp
      003286 24 FB            [12]  936 	add	a,#0xfb
      003288 F5 81            [12]  937 	mov	sp,a
      00328A D0 06            [24]  938 	pop	ar6
      00328C D0 07            [24]  939 	pop	ar7
                                    940 ;	8051_i2c_eeprom.c:107: eeprom_read(addr);
      00328E 8E 82            [24]  941 	mov	dpl,r6
      003290 8F 83            [24]  942 	mov	dph,r7
      003292 12 37 AB         [24]  943 	lcall	_eeprom_read
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
      00329E 74 46            [12]  955 	mov	a,#___str_17
      0032A0 C0 E0            [24]  956 	push	acc
      0032A2 74 4C            [12]  957 	mov	a,#(___str_17 >> 8)
      0032A4 C0 E0            [24]  958 	push	acc
      0032A6 74 80            [12]  959 	mov	a,#0x80
      0032A8 C0 E0            [24]  960 	push	acc
      0032AA 12 3B 2B         [24]  961 	lcall	_printf
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
      0032B6 74 56            [12]  983 	mov	a,#___str_18
      0032B8 C0 E0            [24]  984 	push	acc
      0032BA 74 4C            [12]  985 	mov	a,#(___str_18 >> 8)
      0032BC C0 E0            [24]  986 	push	acc
      0032BE 74 80            [12]  987 	mov	a,#0x80
      0032C0 C0 E0            [24]  988 	push	acc
      0032C2 12 3B 2B         [24]  989 	lcall	_printf
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
      0032DC 74 87            [12] 1004 	mov	a,#___str_19
      0032DE C0 E0            [24] 1005 	push	acc
      0032E0 74 4C            [12] 1006 	mov	a,#(___str_19 >> 8)
      0032E2 C0 E0            [24] 1007 	push	acc
      0032E4 74 80            [12] 1008 	mov	a,#0x80
      0032E6 C0 E0            [24] 1009 	push	acc
      0032E8 12 3B 2B         [24] 1010 	lcall	_printf
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
      00343A 74 8C            [12] 1259 	mov	a,#___str_20
      00343C C0 E0            [24] 1260 	push	acc
      00343E 74 4C            [12] 1261 	mov	a,#(___str_20 >> 8)
      003440 C0 E0            [24] 1262 	push	acc
      003442 74 80            [12] 1263 	mov	a,#0x80
      003444 C0 E0            [24] 1264 	push	acc
      003446 12 3B 2B         [24] 1265 	lcall	_printf
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
      00345C 74 AC            [12] 1279 	mov	a,#___str_21
      00345E C0 E0            [24] 1280 	push	acc
      003460 74 4C            [12] 1281 	mov	a,#(___str_21 >> 8)
      003462 C0 E0            [24] 1282 	push	acc
      003464 74 80            [12] 1283 	mov	a,#0x80
      003466 C0 E0            [24] 1284 	push	acc
      003468 12 3B 2B         [24] 1285 	lcall	_printf
      00346B 15 81            [12] 1286 	dec	sp
      00346D 15 81            [12] 1287 	dec	sp
      00346F 15 81            [12] 1288 	dec	sp
                                   1289 ;	8051_i2c_eeprom.c:170: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003471 74 33            [12] 1290 	mov	a,#___str_22
      003473 C0 E0            [24] 1291 	push	acc
      003475 74 4D            [12] 1292 	mov	a,#(___str_22 >> 8)
      003477 C0 E0            [24] 1293 	push	acc
      003479 74 80            [12] 1294 	mov	a,#0x80
      00347B C0 E0            [24] 1295 	push	acc
      00347D 12 3B 2B         [24] 1296 	lcall	_printf
      003480 15 81            [12] 1297 	dec	sp
      003482 15 81            [12] 1298 	dec	sp
      003484 15 81            [12] 1299 	dec	sp
                                   1300 ;	8051_i2c_eeprom.c:171: printf("║     Please Enter Valid Address         ║\n\r");
      003486 74 64            [12] 1301 	mov	a,#___str_23
      003488 C0 E0            [24] 1302 	push	acc
      00348A 74 4D            [12] 1303 	mov	a,#(___str_23 >> 8)
      00348C C0 E0            [24] 1304 	push	acc
      00348E 74 80            [12] 1305 	mov	a,#0x80
      003490 C0 E0            [24] 1306 	push	acc
      003492 12 3B 2B         [24] 1307 	lcall	_printf
      003495 15 81            [12] 1308 	dec	sp
      003497 15 81            [12] 1309 	dec	sp
      003499 15 81            [12] 1310 	dec	sp
                                   1311 ;	8051_i2c_eeprom.c:172: printf("╚══════════════════════════════════════════╝\n\r");
      00349B 74 95            [12] 1312 	mov	a,#___str_24
      00349D C0 E0            [24] 1313 	push	acc
      00349F 74 4D            [12] 1314 	mov	a,#(___str_24 >> 8)
      0034A1 C0 E0            [24] 1315 	push	acc
      0034A3 74 80            [12] 1316 	mov	a,#0x80
      0034A5 C0 E0            [24] 1317 	push	acc
      0034A7 12 3B 2B         [24] 1318 	lcall	_printf
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
      0034CF 74 1C            [12] 1363 	mov	a,#___str_25
      0034D1 C0 E0            [24] 1364 	push	acc
      0034D3 74 4E            [12] 1365 	mov	a,#(___str_25 >> 8)
      0034D5 C0 E0            [24] 1366 	push	acc
      0034D7 74 80            [12] 1367 	mov	a,#0x80
      0034D9 C0 E0            [24] 1368 	push	acc
      0034DB 12 3B 2B         [24] 1369 	lcall	_printf
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
      0034F5 74 4A            [12] 1384 	mov	a,#___str_26
      0034F7 C0 E0            [24] 1385 	push	acc
      0034F9 74 4E            [12] 1386 	mov	a,#(___str_26 >> 8)
      0034FB C0 E0            [24] 1387 	push	acc
      0034FD 74 80            [12] 1388 	mov	a,#0x80
      0034FF C0 E0            [24] 1389 	push	acc
      003501 12 3B 2B         [24] 1390 	lcall	_printf
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
      003609 74 4D            [12] 1580 	mov	a,#___str_27
      00360B C0 E0            [24] 1581 	push	acc
      00360D 74 4E            [12] 1582 	mov	a,#(___str_27 >> 8)
      00360F C0 E0            [24] 1583 	push	acc
      003611 74 80            [12] 1584 	mov	a,#0x80
      003613 C0 E0            [24] 1585 	push	acc
      003615 12 3B 2B         [24] 1586 	lcall	_printf
      003618 E5 81            [12] 1587 	mov	a,sp
      00361A 24 FB            [12] 1588 	add	a,#0xfb
      00361C F5 81            [12] 1589 	mov	sp,a
      00361E D0 07            [24] 1590 	pop	ar7
                                   1591 ;	8051_i2c_eeprom.c:228: if(data > 254) 
      003620 EF               [12] 1592 	mov	a,r7
      003621 24 01            [12] 1593 	add	a,#0xff - 0xfe
      003623 50 20            [24] 1594 	jnc	00127$
                                   1595 ;	8051_i2c_eeprom.c:230: printf("Data out of Range\n\r");
      003625 74 6A            [12] 1596 	mov	a,#___str_28
      003627 C0 E0            [24] 1597 	push	acc
      003629 74 4E            [12] 1598 	mov	a,#(___str_28 >> 8)
      00362B C0 E0            [24] 1599 	push	acc
      00362D 74 80            [12] 1600 	mov	a,#0x80
      00362F C0 E0            [24] 1601 	push	acc
      003631 12 3B 2B         [24] 1602 	lcall	_printf
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
      003670 12 39 EC         [24] 1662 	lcall	_i2c_start
                                   1663 ;	8051_i2c_eeprom.c:246: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003673 90 04 55         [24] 1664 	mov	dptr,#_block
      003676 E0               [24] 1665 	movx	a,@dptr
      003677 FE               [12] 1666 	mov	r6,a
      003678 A3               [24] 1667 	inc	dptr
      003679 E0               [24] 1668 	movx	a,@dptr
      00367A 43 06 A0         [24] 1669 	orl	ar6,#0xa0
      00367D 8E 82            [24] 1670 	mov	dpl,r6
      00367F 12 38 FF         [24] 1671 	lcall	_i2c_write
      003682 E5 82            [12] 1672 	mov	a,dpl
      003684 85 83 F0         [24] 1673 	mov	b,dph
      003687 45 F0            [12] 1674 	orl	a,b
      003689 70 1C            [24] 1675 	jnz	00102$
                                   1676 ;	8051_i2c_eeprom.c:247: printf("Error: No ACK for device address (write)\n\r");
      00368B 74 7E            [12] 1677 	mov	a,#___str_29
      00368D C0 E0            [24] 1678 	push	acc
      00368F 74 4E            [12] 1679 	mov	a,#(___str_29 >> 8)
      003691 C0 E0            [24] 1680 	push	acc
      003693 74 80            [12] 1681 	mov	a,#0x80
      003695 C0 E0            [24] 1682 	push	acc
      003697 12 3B 2B         [24] 1683 	lcall	_printf
      00369A 15 81            [12] 1684 	dec	sp
      00369C 15 81            [12] 1685 	dec	sp
      00369E 15 81            [12] 1686 	dec	sp
                                   1687 ;	8051_i2c_eeprom.c:248: i2c_stop();
      0036A0 12 3A 01         [24] 1688 	lcall	_i2c_stop
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
      0036B7 12 38 FF         [24] 1704 	lcall	_i2c_write
      0036BA E5 82            [12] 1705 	mov	a,dpl
      0036BC 85 83 F0         [24] 1706 	mov	b,dph
      0036BF D0 06            [24] 1707 	pop	ar6
      0036C1 D0 07            [24] 1708 	pop	ar7
      0036C3 45 F0            [12] 1709 	orl	a,b
      0036C5 70 1C            [24] 1710 	jnz	00104$
                                   1711 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for memory address\n\r");
      0036C7 74 A9            [12] 1712 	mov	a,#___str_30
      0036C9 C0 E0            [24] 1713 	push	acc
      0036CB 74 4E            [12] 1714 	mov	a,#(___str_30 >> 8)
      0036CD C0 E0            [24] 1715 	push	acc
      0036CF 74 80            [12] 1716 	mov	a,#0x80
      0036D1 C0 E0            [24] 1717 	push	acc
      0036D3 12 3B 2B         [24] 1718 	lcall	_printf
      0036D6 15 81            [12] 1719 	dec	sp
      0036D8 15 81            [12] 1720 	dec	sp
      0036DA 15 81            [12] 1721 	dec	sp
                                   1722 ;	8051_i2c_eeprom.c:255: i2c_stop();
      0036DC 12 3A 01         [24] 1723 	lcall	_i2c_stop
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
      0036F0 12 38 FF         [24] 1736 	lcall	_i2c_write
      0036F3 E5 82            [12] 1737 	mov	a,dpl
      0036F5 85 83 F0         [24] 1738 	mov	b,dph
      0036F8 D0 05            [24] 1739 	pop	ar5
      0036FA D0 06            [24] 1740 	pop	ar6
      0036FC D0 07            [24] 1741 	pop	ar7
      0036FE 45 F0            [12] 1742 	orl	a,b
      003700 70 1C            [24] 1743 	jnz	00106$
                                   1744 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for data\n\r");
      003702 74 CC            [12] 1745 	mov	a,#___str_31
      003704 C0 E0            [24] 1746 	push	acc
      003706 74 4E            [12] 1747 	mov	a,#(___str_31 >> 8)
      003708 C0 E0            [24] 1748 	push	acc
      00370A 74 80            [12] 1749 	mov	a,#0x80
      00370C C0 E0            [24] 1750 	push	acc
      00370E 12 3B 2B         [24] 1751 	lcall	_printf
      003711 15 81            [12] 1752 	dec	sp
      003713 15 81            [12] 1753 	dec	sp
      003715 15 81            [12] 1754 	dec	sp
                                   1755 ;	8051_i2c_eeprom.c:262: i2c_stop();
      003717 12 3A 01         [24] 1756 	lcall	_i2c_stop
                                   1757 ;	8051_i2c_eeprom.c:263: return 0;
      00371A 90 00 00         [24] 1758 	mov	dptr,#0x0000
      00371D 22               [24] 1759 	ret
      00371E                       1760 00106$:
                                   1761 ;	8051_i2c_eeprom.c:266: i2c_stop();
      00371E C0 07            [24] 1762 	push	ar7
      003720 C0 06            [24] 1763 	push	ar6
      003722 C0 05            [24] 1764 	push	ar5
      003724 12 3A 01         [24] 1765 	lcall	_i2c_stop
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
      003746 12 3A 0E         [24] 1786 	lcall	_i2c_delay
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
      003764 74 E5            [12] 1804 	mov	a,#___str_32
      003766 C0 E0            [24] 1805 	push	acc
      003768 74 4E            [12] 1806 	mov	a,#(___str_32 >> 8)
      00376A C0 E0            [24] 1807 	push	acc
      00376C 74 80            [12] 1808 	mov	a,#0x80
      00376E C0 E0            [24] 1809 	push	acc
      003770 12 3B 2B         [24] 1810 	lcall	_printf
      003773 E5 81            [12] 1811 	mov	a,sp
      003775 24 F9            [12] 1812 	add	a,#0xf9
      003777 F5 81            [12] 1813 	mov	sp,a
                                   1814 ;	8051_i2c_eeprom.c:273: printf("│ Write successful!                             │\n\r");
      003779 74 1A            [12] 1815 	mov	a,#___str_33
      00377B C0 E0            [24] 1816 	push	acc
      00377D 74 4F            [12] 1817 	mov	a,#(___str_33 >> 8)
      00377F C0 E0            [24] 1818 	push	acc
      003781 74 80            [12] 1819 	mov	a,#0x80
      003783 C0 E0            [24] 1820 	push	acc
      003785 12 3B 2B         [24] 1821 	lcall	_printf
      003788 15 81            [12] 1822 	dec	sp
      00378A 15 81            [12] 1823 	dec	sp
      00378C 15 81            [12] 1824 	dec	sp
                                   1825 ;	8051_i2c_eeprom.c:274: printf("└───────────────────────────────────────────────┘\n\r");
      00378E 74 52            [12] 1826 	mov	a,#___str_34
      003790 C0 E0            [24] 1827 	push	acc
      003792 74 4F            [12] 1828 	mov	a,#(___str_34 >> 8)
      003794 C0 E0            [24] 1829 	push	acc
      003796 74 80            [12] 1830 	mov	a,#0x80
      003798 C0 E0            [24] 1831 	push	acc
      00379A 12 3B 2B         [24] 1832 	lcall	_printf
      00379D 15 81            [12] 1833 	dec	sp
      00379F 15 81            [12] 1834 	dec	sp
      0037A1 15 81            [12] 1835 	dec	sp
                                   1836 ;	8051_i2c_eeprom.c:275: return 1;  // Success
      0037A3 90 00 01         [24] 1837 	mov	dptr,#0x0001
      0037A6 22               [24] 1838 	ret
      0037A7                       1839 00109$:
                                   1840 ;	8051_i2c_eeprom.c:277: return 0;
      0037A7 90 00 00         [24] 1841 	mov	dptr,#0x0000
                                   1842 ;	8051_i2c_eeprom.c:284: }
      0037AA 22               [24] 1843 	ret
                                   1844 ;------------------------------------------------------------
                                   1845 ;Allocation info for local variables in function 'eeprom_read'
                                   1846 ;------------------------------------------------------------
                                   1847 ;address                   Allocated with name '_eeprom_read_address_65536_91'
                                   1848 ;result                    Allocated with name '_eeprom_read_result_131072_93'
                                   1849 ;------------------------------------------------------------
                                   1850 ;	8051_i2c_eeprom.c:286: int eeprom_read(unsigned int address) 
                                   1851 ;	-----------------------------------------
                                   1852 ;	 function eeprom_read
                                   1853 ;	-----------------------------------------
      0037AB                       1854 _eeprom_read:
      0037AB AF 83            [24] 1855 	mov	r7,dph
      0037AD E5 82            [12] 1856 	mov	a,dpl
      0037AF 90 04 12         [24] 1857 	mov	dptr,#_eeprom_read_address_65536_91
      0037B2 F0               [24] 1858 	movx	@dptr,a
      0037B3 EF               [12] 1859 	mov	a,r7
      0037B4 A3               [24] 1860 	inc	dptr
      0037B5 F0               [24] 1861 	movx	@dptr,a
                                   1862 ;	8051_i2c_eeprom.c:288: if(address_range_flag)
      0037B6 90 04 51         [24] 1863 	mov	dptr,#_address_range_flag
      0037B9 E0               [24] 1864 	movx	a,@dptr
      0037BA F5 F0            [12] 1865 	mov	b,a
      0037BC A3               [24] 1866 	inc	dptr
      0037BD E0               [24] 1867 	movx	a,@dptr
      0037BE 45 F0            [12] 1868 	orl	a,b
      0037C0 70 03            [24] 1869 	jnz	00127$
      0037C2 02 38 FB         [24] 1870 	ljmp	00108$
      0037C5                       1871 00127$:
                                   1872 ;	8051_i2c_eeprom.c:293: i2c_start();
      0037C5 12 39 EC         [24] 1873 	lcall	_i2c_start
                                   1874 ;	8051_i2c_eeprom.c:296: if(!i2c_write(EEPROM_ID | WRITE)) {
      0037C8 75 82 A0         [24] 1875 	mov	dpl,#0xa0
      0037CB 12 38 FF         [24] 1876 	lcall	_i2c_write
      0037CE E5 82            [12] 1877 	mov	a,dpl
      0037D0 85 83 F0         [24] 1878 	mov	b,dph
      0037D3 45 F0            [12] 1879 	orl	a,b
      0037D5 70 1C            [24] 1880 	jnz	00102$
                                   1881 ;	8051_i2c_eeprom.c:297: printf("Error: No ACK for device address (write mode)\n\r");
      0037D7 74 E8            [12] 1882 	mov	a,#___str_35
      0037D9 C0 E0            [24] 1883 	push	acc
      0037DB 74 4F            [12] 1884 	mov	a,#(___str_35 >> 8)
      0037DD C0 E0            [24] 1885 	push	acc
      0037DF 74 80            [12] 1886 	mov	a,#0x80
      0037E1 C0 E0            [24] 1887 	push	acc
      0037E3 12 3B 2B         [24] 1888 	lcall	_printf
      0037E6 15 81            [12] 1889 	dec	sp
      0037E8 15 81            [12] 1890 	dec	sp
      0037EA 15 81            [12] 1891 	dec	sp
                                   1892 ;	8051_i2c_eeprom.c:298: i2c_stop();
      0037EC 12 3A 01         [24] 1893 	lcall	_i2c_stop
                                   1894 ;	8051_i2c_eeprom.c:299: return -1;
      0037EF 90 FF FF         [24] 1895 	mov	dptr,#0xffff
      0037F2 22               [24] 1896 	ret
      0037F3                       1897 00102$:
                                   1898 ;	8051_i2c_eeprom.c:303: if(!i2c_write((unsigned char)address)) {
      0037F3 90 04 12         [24] 1899 	mov	dptr,#_eeprom_read_address_65536_91
      0037F6 E0               [24] 1900 	movx	a,@dptr
      0037F7 FE               [12] 1901 	mov	r6,a
      0037F8 A3               [24] 1902 	inc	dptr
      0037F9 E0               [24] 1903 	movx	a,@dptr
      0037FA FF               [12] 1904 	mov	r7,a
      0037FB 8E 05            [24] 1905 	mov	ar5,r6
      0037FD 8D 82            [24] 1906 	mov	dpl,r5
      0037FF C0 07            [24] 1907 	push	ar7
      003801 C0 06            [24] 1908 	push	ar6
      003803 12 38 FF         [24] 1909 	lcall	_i2c_write
      003806 E5 82            [12] 1910 	mov	a,dpl
      003808 85 83 F0         [24] 1911 	mov	b,dph
      00380B D0 06            [24] 1912 	pop	ar6
      00380D D0 07            [24] 1913 	pop	ar7
      00380F 45 F0            [12] 1914 	orl	a,b
      003811 70 1C            [24] 1915 	jnz	00104$
                                   1916 ;	8051_i2c_eeprom.c:304: printf("Error: No ACK for memory address\n\r");
      003813 74 A9            [12] 1917 	mov	a,#___str_30
      003815 C0 E0            [24] 1918 	push	acc
      003817 74 4E            [12] 1919 	mov	a,#(___str_30 >> 8)
      003819 C0 E0            [24] 1920 	push	acc
      00381B 74 80            [12] 1921 	mov	a,#0x80
      00381D C0 E0            [24] 1922 	push	acc
      00381F 12 3B 2B         [24] 1923 	lcall	_printf
      003822 15 81            [12] 1924 	dec	sp
      003824 15 81            [12] 1925 	dec	sp
      003826 15 81            [12] 1926 	dec	sp
                                   1927 ;	8051_i2c_eeprom.c:305: i2c_stop();
      003828 12 3A 01         [24] 1928 	lcall	_i2c_stop
                                   1929 ;	8051_i2c_eeprom.c:306: return -1;
      00382B 90 FF FF         [24] 1930 	mov	dptr,#0xffff
      00382E 22               [24] 1931 	ret
      00382F                       1932 00104$:
                                   1933 ;	8051_i2c_eeprom.c:310: i2c_start();
      00382F C0 07            [24] 1934 	push	ar7
      003831 C0 06            [24] 1935 	push	ar6
      003833 12 39 EC         [24] 1936 	lcall	_i2c_start
                                   1937 ;	8051_i2c_eeprom.c:313: if(!i2c_write(EEPROM_ID | READ)) {
      003836 75 82 A1         [24] 1938 	mov	dpl,#0xa1
      003839 12 38 FF         [24] 1939 	lcall	_i2c_write
      00383C E5 82            [12] 1940 	mov	a,dpl
      00383E 85 83 F0         [24] 1941 	mov	b,dph
      003841 D0 06            [24] 1942 	pop	ar6
      003843 D0 07            [24] 1943 	pop	ar7
      003845 45 F0            [12] 1944 	orl	a,b
      003847 70 1C            [24] 1945 	jnz	00106$
                                   1946 ;	8051_i2c_eeprom.c:314: printf("Error: No ACK for device address (read mode)\n\r");
      003849 74 18            [12] 1947 	mov	a,#___str_36
      00384B C0 E0            [24] 1948 	push	acc
      00384D 74 50            [12] 1949 	mov	a,#(___str_36 >> 8)
      00384F C0 E0            [24] 1950 	push	acc
      003851 74 80            [12] 1951 	mov	a,#0x80
      003853 C0 E0            [24] 1952 	push	acc
      003855 12 3B 2B         [24] 1953 	lcall	_printf
      003858 15 81            [12] 1954 	dec	sp
      00385A 15 81            [12] 1955 	dec	sp
      00385C 15 81            [12] 1956 	dec	sp
                                   1957 ;	8051_i2c_eeprom.c:315: i2c_stop();
      00385E 12 3A 01         [24] 1958 	lcall	_i2c_stop
                                   1959 ;	8051_i2c_eeprom.c:316: return -1;
      003861 90 FF FF         [24] 1960 	mov	dptr,#0xffff
      003864 22               [24] 1961 	ret
      003865                       1962 00106$:
                                   1963 ;	8051_i2c_eeprom.c:320: result = i2c_read(0);  // 0 means send NACK
      003865 90 00 00         [24] 1964 	mov	dptr,#0x0000
      003868 C0 07            [24] 1965 	push	ar7
      00386A C0 06            [24] 1966 	push	ar6
      00386C 12 39 67         [24] 1967 	lcall	_i2c_read
      00386F AC 82            [24] 1968 	mov	r4,dpl
      003871 D0 06            [24] 1969 	pop	ar6
      003873 D0 07            [24] 1970 	pop	ar7
                                   1971 ;	8051_i2c_eeprom.c:321: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      003875 7D 00            [12] 1972 	mov	r5,#0x00
      003877 C0 07            [24] 1973 	push	ar7
      003879 C0 06            [24] 1974 	push	ar6
      00387B C0 05            [24] 1975 	push	ar5
      00387D C0 04            [24] 1976 	push	ar4
      00387F C0 04            [24] 1977 	push	ar4
      003881 C0 05            [24] 1978 	push	ar5
      003883 C0 06            [24] 1979 	push	ar6
      003885 C0 07            [24] 1980 	push	ar7
      003887 74 47            [12] 1981 	mov	a,#___str_37
      003889 C0 E0            [24] 1982 	push	acc
      00388B 74 50            [12] 1983 	mov	a,#(___str_37 >> 8)
      00388D C0 E0            [24] 1984 	push	acc
      00388F 74 80            [12] 1985 	mov	a,#0x80
      003891 C0 E0            [24] 1986 	push	acc
      003893 12 3B 2B         [24] 1987 	lcall	_printf
      003896 E5 81            [12] 1988 	mov	a,sp
      003898 24 F9            [12] 1989 	add	a,#0xf9
      00389A F5 81            [12] 1990 	mov	sp,a
      00389C D0 04            [24] 1991 	pop	ar4
      00389E D0 05            [24] 1992 	pop	ar5
      0038A0 D0 06            [24] 1993 	pop	ar6
      0038A2 D0 07            [24] 1994 	pop	ar7
                                   1995 ;	8051_i2c_eeprom.c:322: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038A4 C0 05            [24] 1996 	push	ar5
      0038A6 C0 04            [24] 1997 	push	ar4
      0038A8 C0 04            [24] 1998 	push	ar4
      0038AA C0 05            [24] 1999 	push	ar5
      0038AC C0 06            [24] 2000 	push	ar6
      0038AE C0 07            [24] 2001 	push	ar7
      0038B0 74 8A            [12] 2002 	mov	a,#___str_38
      0038B2 C0 E0            [24] 2003 	push	acc
      0038B4 74 50            [12] 2004 	mov	a,#(___str_38 >> 8)
      0038B6 C0 E0            [24] 2005 	push	acc
      0038B8 74 80            [12] 2006 	mov	a,#0x80
      0038BA C0 E0            [24] 2007 	push	acc
      0038BC 12 3B 2B         [24] 2008 	lcall	_printf
      0038BF E5 81            [12] 2009 	mov	a,sp
      0038C1 24 F9            [12] 2010 	add	a,#0xf9
      0038C3 F5 81            [12] 2011 	mov	sp,a
                                   2012 ;	8051_i2c_eeprom.c:323: printf("│ Read successful!                 │\n\r");
      0038C5 74 9F            [12] 2013 	mov	a,#___str_39
      0038C7 C0 E0            [24] 2014 	push	acc
      0038C9 74 50            [12] 2015 	mov	a,#(___str_39 >> 8)
      0038CB C0 E0            [24] 2016 	push	acc
      0038CD 74 80            [12] 2017 	mov	a,#0x80
      0038CF C0 E0            [24] 2018 	push	acc
      0038D1 12 3B 2B         [24] 2019 	lcall	_printf
      0038D4 15 81            [12] 2020 	dec	sp
      0038D6 15 81            [12] 2021 	dec	sp
      0038D8 15 81            [12] 2022 	dec	sp
                                   2023 ;	8051_i2c_eeprom.c:324: printf("└───────────────────────────────────────────────┘\n\r");
      0038DA 74 52            [12] 2024 	mov	a,#___str_34
      0038DC C0 E0            [24] 2025 	push	acc
      0038DE 74 4F            [12] 2026 	mov	a,#(___str_34 >> 8)
      0038E0 C0 E0            [24] 2027 	push	acc
      0038E2 74 80            [12] 2028 	mov	a,#0x80
      0038E4 C0 E0            [24] 2029 	push	acc
      0038E6 12 3B 2B         [24] 2030 	lcall	_printf
      0038E9 15 81            [12] 2031 	dec	sp
      0038EB 15 81            [12] 2032 	dec	sp
      0038ED 15 81            [12] 2033 	dec	sp
                                   2034 ;	8051_i2c_eeprom.c:325: i2c_stop();
      0038EF 12 3A 01         [24] 2035 	lcall	_i2c_stop
      0038F2 D0 04            [24] 2036 	pop	ar4
      0038F4 D0 05            [24] 2037 	pop	ar5
                                   2038 ;	8051_i2c_eeprom.c:326: return result;
      0038F6 8C 82            [24] 2039 	mov	dpl,r4
      0038F8 8D 83            [24] 2040 	mov	dph,r5
      0038FA 22               [24] 2041 	ret
      0038FB                       2042 00108$:
                                   2043 ;	8051_i2c_eeprom.c:328: return 0;
      0038FB 90 00 00         [24] 2044 	mov	dptr,#0x0000
                                   2045 ;	8051_i2c_eeprom.c:338: }
      0038FE 22               [24] 2046 	ret
                                   2047 ;------------------------------------------------------------
                                   2048 ;Allocation info for local variables in function 'i2c_write'
                                   2049 ;------------------------------------------------------------
                                   2050 ;data                      Allocated with name '_i2c_write_data_65536_97'
                                   2051 ;i                         Allocated with name '_i2c_write_i_65536_98'
                                   2052 ;------------------------------------------------------------
                                   2053 ;	8051_i2c_eeprom.c:341: int i2c_write(unsigned char data)
                                   2054 ;	-----------------------------------------
                                   2055 ;	 function i2c_write
                                   2056 ;	-----------------------------------------
      0038FF                       2057 _i2c_write:
      0038FF E5 82            [12] 2058 	mov	a,dpl
      003901 90 04 14         [24] 2059 	mov	dptr,#_i2c_write_data_65536_97
      003904 F0               [24] 2060 	movx	@dptr,a
                                   2061 ;	8051_i2c_eeprom.c:345: for(i=0;i<=7;i++)
      003905 7E 00            [12] 2062 	mov	r6,#0x00
      003907 7F 00            [12] 2063 	mov	r7,#0x00
      003909                       2064 00104$:
                                   2065 ;	8051_i2c_eeprom.c:347: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003909 90 04 14         [24] 2066 	mov	dptr,#_i2c_write_data_65536_97
      00390C E0               [24] 2067 	movx	a,@dptr
      00390D FD               [12] 2068 	mov	r5,a
      00390E 23               [12] 2069 	rl	a
      00390F 54 01            [12] 2070 	anl	a,#0x01
      003911 24 FF            [12] 2071 	add	a,#0xff
      003913 92 94            [24] 2072 	mov	_P1_4,c
                                   2073 ;	8051_i2c_eeprom.c:348: i2c_delay();        // Setup time for data
      003915 C0 07            [24] 2074 	push	ar7
      003917 C0 06            [24] 2075 	push	ar6
      003919 C0 05            [24] 2076 	push	ar5
      00391B 12 3A 0E         [24] 2077 	lcall	_i2c_delay
                                   2078 ;	8051_i2c_eeprom.c:349: SCL=1;
                                   2079 ;	assignBit
      00391E D2 93            [12] 2080 	setb	_P1_3
                                   2081 ;	8051_i2c_eeprom.c:350: i2c_delay();        // Hold time for clock
      003920 12 3A 0E         [24] 2082 	lcall	_i2c_delay
      003923 D0 05            [24] 2083 	pop	ar5
      003925 D0 06            [24] 2084 	pop	ar6
      003927 D0 07            [24] 2085 	pop	ar7
                                   2086 ;	8051_i2c_eeprom.c:351: SCL=0;
                                   2087 ;	assignBit
      003929 C2 93            [12] 2088 	clr	_P1_3
                                   2089 ;	8051_i2c_eeprom.c:352: data = data << 1;
      00392B ED               [12] 2090 	mov	a,r5
      00392C 2D               [12] 2091 	add	a,r5
      00392D 90 04 14         [24] 2092 	mov	dptr,#_i2c_write_data_65536_97
      003930 F0               [24] 2093 	movx	@dptr,a
                                   2094 ;	8051_i2c_eeprom.c:345: for(i=0;i<=7;i++)
      003931 0E               [12] 2095 	inc	r6
      003932 BE 00 01         [24] 2096 	cjne	r6,#0x00,00121$
      003935 0F               [12] 2097 	inc	r7
      003936                       2098 00121$:
      003936 C3               [12] 2099 	clr	c
      003937 74 07            [12] 2100 	mov	a,#0x07
      003939 9E               [12] 2101 	subb	a,r6
      00393A E4               [12] 2102 	clr	a
      00393B 9F               [12] 2103 	subb	a,r7
      00393C 50 CB            [24] 2104 	jnc	00104$
                                   2105 ;	8051_i2c_eeprom.c:356: SDA = 1;            // Release SDA for slave
                                   2106 ;	assignBit
      00393E D2 94            [12] 2107 	setb	_P1_4
                                   2108 ;	8051_i2c_eeprom.c:357: SCL = 1;            // 9th clock pulse for ACK
                                   2109 ;	assignBit
      003940 D2 93            [12] 2110 	setb	_P1_3
                                   2111 ;	8051_i2c_eeprom.c:358: i2c_delay();
      003942 12 3A 0E         [24] 2112 	lcall	_i2c_delay
                                   2113 ;	8051_i2c_eeprom.c:359: if(SDA == 1)        // If SDA is still high, no ACK received
      003945 30 94 19         [24] 2114 	jnb	_P1_4,00103$
                                   2115 ;	8051_i2c_eeprom.c:362: printf("ACK DID NOT ARRIVE\n\r");
      003948 74 CA            [12] 2116 	mov	a,#___str_40
      00394A C0 E0            [24] 2117 	push	acc
      00394C 74 50            [12] 2118 	mov	a,#(___str_40 >> 8)
      00394E C0 E0            [24] 2119 	push	acc
      003950 74 80            [12] 2120 	mov	a,#0x80
      003952 C0 E0            [24] 2121 	push	acc
      003954 12 3B 2B         [24] 2122 	lcall	_printf
      003957 15 81            [12] 2123 	dec	sp
      003959 15 81            [12] 2124 	dec	sp
      00395B 15 81            [12] 2125 	dec	sp
                                   2126 ;	8051_i2c_eeprom.c:363: return 0;       // Error
      00395D 90 00 00         [24] 2127 	mov	dptr,#0x0000
      003960 22               [24] 2128 	ret
      003961                       2129 00103$:
                                   2130 ;	8051_i2c_eeprom.c:365: SCL = 0;
                                   2131 ;	assignBit
      003961 C2 93            [12] 2132 	clr	_P1_3
                                   2133 ;	8051_i2c_eeprom.c:367: return 1;           // Success
      003963 90 00 01         [24] 2134 	mov	dptr,#0x0001
                                   2135 ;	8051_i2c_eeprom.c:369: }
      003966 22               [24] 2136 	ret
                                   2137 ;------------------------------------------------------------
                                   2138 ;Allocation info for local variables in function 'i2c_read'
                                   2139 ;------------------------------------------------------------
                                   2140 ;ACK                       Allocated with name '_i2c_read_ACK_65536_102'
                                   2141 ;buff                      Allocated with name '_i2c_read_buff_65536_103'
                                   2142 ;i                         Allocated with name '_i2c_read_i_131072_104'
                                   2143 ;------------------------------------------------------------
                                   2144 ;	8051_i2c_eeprom.c:370: int i2c_read(int ACK)
                                   2145 ;	-----------------------------------------
                                   2146 ;	 function i2c_read
                                   2147 ;	-----------------------------------------
      003967                       2148 _i2c_read:
      003967 AF 83            [24] 2149 	mov	r7,dph
      003969 E5 82            [12] 2150 	mov	a,dpl
      00396B 90 04 15         [24] 2151 	mov	dptr,#_i2c_read_ACK_65536_102
      00396E F0               [24] 2152 	movx	@dptr,a
      00396F EF               [12] 2153 	mov	a,r7
      003970 A3               [24] 2154 	inc	dptr
      003971 F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	8051_i2c_eeprom.c:372: unsigned char buff=0;
      003972 90 04 17         [24] 2157 	mov	dptr,#_i2c_read_buff_65536_103
      003975 E4               [12] 2158 	clr	a
      003976 F0               [24] 2159 	movx	@dptr,a
                                   2160 ;	8051_i2c_eeprom.c:373: SCL = 0;
                                   2161 ;	assignBit
      003977 C2 93            [12] 2162 	clr	_P1_3
                                   2163 ;	8051_i2c_eeprom.c:374: for(int i=0;i<8;i++)
      003979 7E 00            [12] 2164 	mov	r6,#0x00
      00397B 7F 00            [12] 2165 	mov	r7,#0x00
      00397D                       2166 00103$:
      00397D C3               [12] 2167 	clr	c
      00397E EE               [12] 2168 	mov	a,r6
      00397F 94 08            [12] 2169 	subb	a,#0x08
      003981 EF               [12] 2170 	mov	a,r7
      003982 64 80            [12] 2171 	xrl	a,#0x80
      003984 94 80            [12] 2172 	subb	a,#0x80
      003986 50 40            [24] 2173 	jnc	00101$
                                   2174 ;	8051_i2c_eeprom.c:376: SCL = 1;
                                   2175 ;	assignBit
      003988 D2 93            [12] 2176 	setb	_P1_3
                                   2177 ;	8051_i2c_eeprom.c:377: i2c_delay();
      00398A C0 07            [24] 2178 	push	ar7
      00398C C0 06            [24] 2179 	push	ar6
      00398E 12 3A 0E         [24] 2180 	lcall	_i2c_delay
      003991 D0 06            [24] 2181 	pop	ar6
      003993 D0 07            [24] 2182 	pop	ar7
                                   2183 ;	8051_i2c_eeprom.c:378: buff |= (SDA << (7 - i));
      003995 A2 94            [12] 2184 	mov	c,_P1_4
      003997 E4               [12] 2185 	clr	a
      003998 33               [12] 2186 	rlc	a
      003999 FD               [12] 2187 	mov	r5,a
      00399A 8E 04            [24] 2188 	mov	ar4,r6
      00399C 74 07            [12] 2189 	mov	a,#0x07
      00399E C3               [12] 2190 	clr	c
      00399F 9C               [12] 2191 	subb	a,r4
      0039A0 FC               [12] 2192 	mov	r4,a
      0039A1 8C F0            [24] 2193 	mov	b,r4
      0039A3 05 F0            [12] 2194 	inc	b
      0039A5 ED               [12] 2195 	mov	a,r5
      0039A6 80 02            [24] 2196 	sjmp	00119$
      0039A8                       2197 00117$:
      0039A8 25 E0            [12] 2198 	add	a,acc
      0039AA                       2199 00119$:
      0039AA D5 F0 FB         [24] 2200 	djnz	b,00117$
      0039AD FC               [12] 2201 	mov	r4,a
      0039AE 90 04 17         [24] 2202 	mov	dptr,#_i2c_read_buff_65536_103
      0039B1 E0               [24] 2203 	movx	a,@dptr
      0039B2 4C               [12] 2204 	orl	a,r4
      0039B3 F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	8051_i2c_eeprom.c:379: i2c_delay();
      0039B4 C0 07            [24] 2207 	push	ar7
      0039B6 C0 06            [24] 2208 	push	ar6
      0039B8 12 3A 0E         [24] 2209 	lcall	_i2c_delay
      0039BB D0 06            [24] 2210 	pop	ar6
      0039BD D0 07            [24] 2211 	pop	ar7
                                   2212 ;	8051_i2c_eeprom.c:380: SCL=0;
                                   2213 ;	assignBit
      0039BF C2 93            [12] 2214 	clr	_P1_3
                                   2215 ;	8051_i2c_eeprom.c:374: for(int i=0;i<8;i++)
      0039C1 0E               [12] 2216 	inc	r6
      0039C2 BE 00 B8         [24] 2217 	cjne	r6,#0x00,00103$
      0039C5 0F               [12] 2218 	inc	r7
      0039C6 80 B5            [24] 2219 	sjmp	00103$
      0039C8                       2220 00101$:
                                   2221 ;	8051_i2c_eeprom.c:384: SDA = !ACK;         // ACK = 0, NACK = 1
      0039C8 90 04 15         [24] 2222 	mov	dptr,#_i2c_read_ACK_65536_102
      0039CB E0               [24] 2223 	movx	a,@dptr
      0039CC FE               [12] 2224 	mov	r6,a
      0039CD A3               [24] 2225 	inc	dptr
      0039CE E0               [24] 2226 	movx	a,@dptr
      0039CF 4E               [12] 2227 	orl	a,r6
      0039D0 B4 01 00         [24] 2228 	cjne	a,#0x01,00121$
      0039D3                       2229 00121$:
      0039D3 E4               [12] 2230 	clr	a
      0039D4 33               [12] 2231 	rlc	a
      0039D5 24 FF            [12] 2232 	add	a,#0xff
      0039D7 92 94            [24] 2233 	mov	_P1_4,c
                                   2234 ;	8051_i2c_eeprom.c:385: SCL = 1;
                                   2235 ;	assignBit
      0039D9 D2 93            [12] 2236 	setb	_P1_3
                                   2237 ;	8051_i2c_eeprom.c:386: i2c_delay();
      0039DB 12 3A 0E         [24] 2238 	lcall	_i2c_delay
                                   2239 ;	8051_i2c_eeprom.c:387: SCL = 0;
                                   2240 ;	assignBit
      0039DE C2 93            [12] 2241 	clr	_P1_3
                                   2242 ;	8051_i2c_eeprom.c:389: return buff;
      0039E0 90 04 17         [24] 2243 	mov	dptr,#_i2c_read_buff_65536_103
      0039E3 E0               [24] 2244 	movx	a,@dptr
      0039E4 FF               [12] 2245 	mov	r7,a
      0039E5 7E 00            [12] 2246 	mov	r6,#0x00
      0039E7 8F 82            [24] 2247 	mov	dpl,r7
      0039E9 8E 83            [24] 2248 	mov	dph,r6
                                   2249 ;	8051_i2c_eeprom.c:390: }
      0039EB 22               [24] 2250 	ret
                                   2251 ;------------------------------------------------------------
                                   2252 ;Allocation info for local variables in function 'i2c_start'
                                   2253 ;------------------------------------------------------------
                                   2254 ;	8051_i2c_eeprom.c:391: void i2c_start(void)
                                   2255 ;	-----------------------------------------
                                   2256 ;	 function i2c_start
                                   2257 ;	-----------------------------------------
      0039EC                       2258 _i2c_start:
                                   2259 ;	8051_i2c_eeprom.c:393: i2c_delay();
      0039EC 12 3A 0E         [24] 2260 	lcall	_i2c_delay
                                   2261 ;	8051_i2c_eeprom.c:394: SDA = 1;
                                   2262 ;	assignBit
      0039EF D2 94            [12] 2263 	setb	_P1_4
                                   2264 ;	8051_i2c_eeprom.c:395: i2c_delay();
      0039F1 12 3A 0E         [24] 2265 	lcall	_i2c_delay
                                   2266 ;	8051_i2c_eeprom.c:396: SCL = 1;
                                   2267 ;	assignBit
      0039F4 D2 93            [12] 2268 	setb	_P1_3
                                   2269 ;	8051_i2c_eeprom.c:397: i2c_delay();
      0039F6 12 3A 0E         [24] 2270 	lcall	_i2c_delay
                                   2271 ;	8051_i2c_eeprom.c:398: SDA = 0;
                                   2272 ;	assignBit
      0039F9 C2 94            [12] 2273 	clr	_P1_4
                                   2274 ;	8051_i2c_eeprom.c:399: i2c_delay();
      0039FB 12 3A 0E         [24] 2275 	lcall	_i2c_delay
                                   2276 ;	8051_i2c_eeprom.c:400: SCL = 0;
                                   2277 ;	assignBit
      0039FE C2 93            [12] 2278 	clr	_P1_3
                                   2279 ;	8051_i2c_eeprom.c:401: }
      003A00 22               [24] 2280 	ret
                                   2281 ;------------------------------------------------------------
                                   2282 ;Allocation info for local variables in function 'i2c_stop'
                                   2283 ;------------------------------------------------------------
                                   2284 ;	8051_i2c_eeprom.c:403: void i2c_stop(void)
                                   2285 ;	-----------------------------------------
                                   2286 ;	 function i2c_stop
                                   2287 ;	-----------------------------------------
      003A01                       2288 _i2c_stop:
                                   2289 ;	8051_i2c_eeprom.c:405: SDA = 0;
                                   2290 ;	assignBit
      003A01 C2 94            [12] 2291 	clr	_P1_4
                                   2292 ;	8051_i2c_eeprom.c:406: i2c_delay();
      003A03 12 3A 0E         [24] 2293 	lcall	_i2c_delay
                                   2294 ;	8051_i2c_eeprom.c:407: SCL = 1;
                                   2295 ;	assignBit
      003A06 D2 93            [12] 2296 	setb	_P1_3
                                   2297 ;	8051_i2c_eeprom.c:408: i2c_delay();
      003A08 12 3A 0E         [24] 2298 	lcall	_i2c_delay
                                   2299 ;	8051_i2c_eeprom.c:409: SDA = 1; 
                                   2300 ;	assignBit
      003A0B D2 94            [12] 2301 	setb	_P1_4
                                   2302 ;	8051_i2c_eeprom.c:410: }
      003A0D 22               [24] 2303 	ret
                                   2304 ;------------------------------------------------------------
                                   2305 ;Allocation info for local variables in function 'i2c_delay'
                                   2306 ;------------------------------------------------------------
                                   2307 ;i                         Allocated with name '_i2c_delay_i_131072_111'
                                   2308 ;------------------------------------------------------------
                                   2309 ;	8051_i2c_eeprom.c:412: void i2c_delay() 
                                   2310 ;	-----------------------------------------
                                   2311 ;	 function i2c_delay
                                   2312 ;	-----------------------------------------
      003A0E                       2313 _i2c_delay:
                                   2314 ;	8051_i2c_eeprom.c:420: for(int i = 0; i<500; i++);
      003A0E 7E 00            [12] 2315 	mov	r6,#0x00
      003A10 7F 00            [12] 2316 	mov	r7,#0x00
      003A12                       2317 00103$:
      003A12 C3               [12] 2318 	clr	c
      003A13 EE               [12] 2319 	mov	a,r6
      003A14 94 F4            [12] 2320 	subb	a,#0xf4
      003A16 EF               [12] 2321 	mov	a,r7
      003A17 64 80            [12] 2322 	xrl	a,#0x80
      003A19 94 81            [12] 2323 	subb	a,#0x81
      003A1B 50 07            [24] 2324 	jnc	00105$
      003A1D 0E               [12] 2325 	inc	r6
      003A1E BE 00 F1         [24] 2326 	cjne	r6,#0x00,00103$
      003A21 0F               [12] 2327 	inc	r7
      003A22 80 EE            [24] 2328 	sjmp	00103$
      003A24                       2329 00105$:
                                   2330 ;	8051_i2c_eeprom.c:421: }
      003A24 22               [24] 2331 	ret
                                   2332 ;------------------------------------------------------------
                                   2333 ;Allocation info for local variables in function 'test_function'
                                   2334 ;------------------------------------------------------------
                                   2335 ;test_data                 Allocated with name '_test_function_test_data_65537_113'
                                   2336 ;address                   Allocated with name '_test_function_address_65537_113'
                                   2337 ;i                         Allocated with name '_test_function_i_131073_114'
                                   2338 ;read_data                 Allocated with name '_test_function_read_data_65538_116'
                                   2339 ;------------------------------------------------------------
                                   2340 ;	8051_i2c_eeprom.c:423: void test_function()
                                   2341 ;	-----------------------------------------
                                   2342 ;	 function test_function
                                   2343 ;	-----------------------------------------
      003A25                       2344 _test_function:
                                   2345 ;	8051_i2c_eeprom.c:425: i2c_start();
      003A25 12 39 EC         [24] 2346 	lcall	_i2c_start
                                   2347 ;	8051_i2c_eeprom.c:426: i2c_delay();
      003A28 12 3A 0E         [24] 2348 	lcall	_i2c_delay
                                   2349 ;	8051_i2c_eeprom.c:432: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003A2B 74 02            [12] 2350 	mov	a,#0x02
      003A2D C0 E0            [24] 2351 	push	acc
      003A2F E4               [12] 2352 	clr	a
      003A30 C0 E0            [24] 2353 	push	acc
      003A32 74 26            [12] 2354 	mov	a,#0x26
      003A34 C0 E0            [24] 2355 	push	acc
      003A36 E4               [12] 2356 	clr	a
      003A37 C0 E0            [24] 2357 	push	acc
      003A39 74 DF            [12] 2358 	mov	a,#___str_41
      003A3B C0 E0            [24] 2359 	push	acc
      003A3D 74 50            [12] 2360 	mov	a,#(___str_41 >> 8)
      003A3F C0 E0            [24] 2361 	push	acc
      003A41 74 80            [12] 2362 	mov	a,#0x80
      003A43 C0 E0            [24] 2363 	push	acc
      003A45 12 3B 2B         [24] 2364 	lcall	_printf
      003A48 E5 81            [12] 2365 	mov	a,sp
      003A4A 24 F9            [12] 2366 	add	a,#0xf9
      003A4C F5 81            [12] 2367 	mov	sp,a
                                   2368 ;	8051_i2c_eeprom.c:433: eeprom_write(address, test_data);
      003A4E 90 04 0F         [24] 2369 	mov	dptr,#_eeprom_write_PARM_2
      003A51 74 26            [12] 2370 	mov	a,#0x26
      003A53 F0               [24] 2371 	movx	@dptr,a
      003A54 90 00 02         [24] 2372 	mov	dptr,#0x0002
      003A57 12 36 48         [24] 2373 	lcall	_eeprom_write
                                   2374 ;	8051_i2c_eeprom.c:434: i2c_stop();
      003A5A 12 3A 01         [24] 2375 	lcall	_i2c_stop
                                   2376 ;	8051_i2c_eeprom.c:436: for(int i = 0; i<100; i++)
      003A5D 7E 00            [12] 2377 	mov	r6,#0x00
      003A5F 7F 00            [12] 2378 	mov	r7,#0x00
      003A61                       2379 00106$:
      003A61 C3               [12] 2380 	clr	c
      003A62 EE               [12] 2381 	mov	a,r6
      003A63 94 64            [12] 2382 	subb	a,#0x64
      003A65 EF               [12] 2383 	mov	a,r7
      003A66 64 80            [12] 2384 	xrl	a,#0x80
      003A68 94 80            [12] 2385 	subb	a,#0x80
      003A6A 50 12            [24] 2386 	jnc	00101$
                                   2387 ;	8051_i2c_eeprom.c:438: i2c_delay();
      003A6C C0 07            [24] 2388 	push	ar7
      003A6E C0 06            [24] 2389 	push	ar6
      003A70 12 3A 0E         [24] 2390 	lcall	_i2c_delay
      003A73 D0 06            [24] 2391 	pop	ar6
      003A75 D0 07            [24] 2392 	pop	ar7
                                   2393 ;	8051_i2c_eeprom.c:436: for(int i = 0; i<100; i++)
      003A77 0E               [12] 2394 	inc	r6
      003A78 BE 00 E6         [24] 2395 	cjne	r6,#0x00,00106$
      003A7B 0F               [12] 2396 	inc	r7
      003A7C 80 E3            [24] 2397 	sjmp	00106$
      003A7E                       2398 00101$:
                                   2399 ;	8051_i2c_eeprom.c:442: unsigned char read_data = eeprom_read(address);
      003A7E 90 00 02         [24] 2400 	mov	dptr,#0x0002
      003A81 12 37 AB         [24] 2401 	lcall	_eeprom_read
      003A84 AE 82            [24] 2402 	mov	r6,dpl
                                   2403 ;	8051_i2c_eeprom.c:443: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003A86 8E 05            [24] 2404 	mov	ar5,r6
      003A88 7F 00            [12] 2405 	mov	r7,#0x00
      003A8A C0 06            [24] 2406 	push	ar6
      003A8C C0 05            [24] 2407 	push	ar5
      003A8E C0 07            [24] 2408 	push	ar7
      003A90 74 02            [12] 2409 	mov	a,#0x02
      003A92 C0 E0            [24] 2410 	push	acc
      003A94 E4               [12] 2411 	clr	a
      003A95 C0 E0            [24] 2412 	push	acc
      003A97 74 07            [12] 2413 	mov	a,#___str_42
      003A99 C0 E0            [24] 2414 	push	acc
      003A9B 74 51            [12] 2415 	mov	a,#(___str_42 >> 8)
      003A9D C0 E0            [24] 2416 	push	acc
      003A9F 74 80            [12] 2417 	mov	a,#0x80
      003AA1 C0 E0            [24] 2418 	push	acc
      003AA3 12 3B 2B         [24] 2419 	lcall	_printf
      003AA6 E5 81            [12] 2420 	mov	a,sp
      003AA8 24 F9            [12] 2421 	add	a,#0xf9
      003AAA F5 81            [12] 2422 	mov	sp,a
      003AAC D0 06            [24] 2423 	pop	ar6
                                   2424 ;	8051_i2c_eeprom.c:446: if(read_data == test_data) {
      003AAE BE 26 16         [24] 2425 	cjne	r6,#0x26,00103$
                                   2426 ;	8051_i2c_eeprom.c:447: printf("MATCH - Write/Read successful!\n\r");
      003AB1 74 2F            [12] 2427 	mov	a,#___str_43
      003AB3 C0 E0            [24] 2428 	push	acc
      003AB5 74 51            [12] 2429 	mov	a,#(___str_43 >> 8)
      003AB7 C0 E0            [24] 2430 	push	acc
      003AB9 74 80            [12] 2431 	mov	a,#0x80
      003ABB C0 E0            [24] 2432 	push	acc
      003ABD 12 3B 2B         [24] 2433 	lcall	_printf
      003AC0 15 81            [12] 2434 	dec	sp
      003AC2 15 81            [12] 2435 	dec	sp
      003AC4 15 81            [12] 2436 	dec	sp
      003AC6 22               [24] 2437 	ret
      003AC7                       2438 00103$:
                                   2439 ;	8051_i2c_eeprom.c:449: printf("ERROR - Data mismatch!\n\r");
      003AC7 74 50            [12] 2440 	mov	a,#___str_44
      003AC9 C0 E0            [24] 2441 	push	acc
      003ACB 74 51            [12] 2442 	mov	a,#(___str_44 >> 8)
      003ACD C0 E0            [24] 2443 	push	acc
      003ACF 74 80            [12] 2444 	mov	a,#0x80
      003AD1 C0 E0            [24] 2445 	push	acc
      003AD3 12 3B 2B         [24] 2446 	lcall	_printf
      003AD6 15 81            [12] 2447 	dec	sp
      003AD8 15 81            [12] 2448 	dec	sp
      003ADA 15 81            [12] 2449 	dec	sp
                                   2450 ;	8051_i2c_eeprom.c:453: }
      003ADC 22               [24] 2451 	ret
                                   2452 	.area CSEG    (CODE)
                                   2453 	.area CONST   (CODE)
                                   2454 	.area CONST   (CODE)
      00458D                       2455 ___str_0:
      00458D 0A                    2456 	.db 0x0a
      00458E E2                    2457 	.db 0xe2
      00458F 95                    2458 	.db 0x95
      004590 94                    2459 	.db 0x94
      004591 E2                    2460 	.db 0xe2
      004592 95                    2461 	.db 0x95
      004593 90                    2462 	.db 0x90
      004594 E2                    2463 	.db 0xe2
      004595 95                    2464 	.db 0x95
      004596 90                    2465 	.db 0x90
      004597 E2                    2466 	.db 0xe2
      004598 95                    2467 	.db 0x95
      004599 90                    2468 	.db 0x90
      00459A E2                    2469 	.db 0xe2
      00459B 95                    2470 	.db 0x95
      00459C 90                    2471 	.db 0x90
      00459D E2                    2472 	.db 0xe2
      00459E 95                    2473 	.db 0x95
      00459F 90                    2474 	.db 0x90
      0045A0 E2                    2475 	.db 0xe2
      0045A1 95                    2476 	.db 0x95
      0045A2 90                    2477 	.db 0x90
      0045A3 E2                    2478 	.db 0xe2
      0045A4 95                    2479 	.db 0x95
      0045A5 90                    2480 	.db 0x90
      0045A6 E2                    2481 	.db 0xe2
      0045A7 95                    2482 	.db 0x95
      0045A8 90                    2483 	.db 0x90
      0045A9 E2                    2484 	.db 0xe2
      0045AA 95                    2485 	.db 0x95
      0045AB 90                    2486 	.db 0x90
      0045AC E2                    2487 	.db 0xe2
      0045AD 95                    2488 	.db 0x95
      0045AE 90                    2489 	.db 0x90
      0045AF E2                    2490 	.db 0xe2
      0045B0 95                    2491 	.db 0x95
      0045B1 90                    2492 	.db 0x90
      0045B2 E2                    2493 	.db 0xe2
      0045B3 95                    2494 	.db 0x95
      0045B4 90                    2495 	.db 0x90
      0045B5 E2                    2496 	.db 0xe2
      0045B6 95                    2497 	.db 0x95
      0045B7 90                    2498 	.db 0x90
      0045B8 E2                    2499 	.db 0xe2
      0045B9 95                    2500 	.db 0x95
      0045BA 90                    2501 	.db 0x90
      0045BB E2                    2502 	.db 0xe2
      0045BC 95                    2503 	.db 0x95
      0045BD 90                    2504 	.db 0x90
      0045BE E2                    2505 	.db 0xe2
      0045BF 95                    2506 	.db 0x95
      0045C0 90                    2507 	.db 0x90
      0045C1 E2                    2508 	.db 0xe2
      0045C2 95                    2509 	.db 0x95
      0045C3 90                    2510 	.db 0x90
      0045C4 E2                    2511 	.db 0xe2
      0045C5 95                    2512 	.db 0x95
      0045C6 90                    2513 	.db 0x90
      0045C7 E2                    2514 	.db 0xe2
      0045C8 95                    2515 	.db 0x95
      0045C9 90                    2516 	.db 0x90
      0045CA E2                    2517 	.db 0xe2
      0045CB 95                    2518 	.db 0x95
      0045CC 90                    2519 	.db 0x90
      0045CD E2                    2520 	.db 0xe2
      0045CE 95                    2521 	.db 0x95
      0045CF 90                    2522 	.db 0x90
      0045D0 E2                    2523 	.db 0xe2
      0045D1 95                    2524 	.db 0x95
      0045D2 90                    2525 	.db 0x90
      0045D3 E2                    2526 	.db 0xe2
      0045D4 95                    2527 	.db 0x95
      0045D5 90                    2528 	.db 0x90
      0045D6 E2                    2529 	.db 0xe2
      0045D7 95                    2530 	.db 0x95
      0045D8 90                    2531 	.db 0x90
      0045D9 E2                    2532 	.db 0xe2
      0045DA 95                    2533 	.db 0x95
      0045DB 90                    2534 	.db 0x90
      0045DC E2                    2535 	.db 0xe2
      0045DD 95                    2536 	.db 0x95
      0045DE 90                    2537 	.db 0x90
      0045DF E2                    2538 	.db 0xe2
      0045E0 95                    2539 	.db 0x95
      0045E1 90                    2540 	.db 0x90
      0045E2 E2                    2541 	.db 0xe2
      0045E3 95                    2542 	.db 0x95
      0045E4 90                    2543 	.db 0x90
      0045E5 E2                    2544 	.db 0xe2
      0045E6 95                    2545 	.db 0x95
      0045E7 90                    2546 	.db 0x90
      0045E8 E2                    2547 	.db 0xe2
      0045E9 95                    2548 	.db 0x95
      0045EA 90                    2549 	.db 0x90
      0045EB E2                    2550 	.db 0xe2
      0045EC 95                    2551 	.db 0x95
      0045ED 90                    2552 	.db 0x90
      0045EE E2                    2553 	.db 0xe2
      0045EF 95                    2554 	.db 0x95
      0045F0 90                    2555 	.db 0x90
      0045F1 E2                    2556 	.db 0xe2
      0045F2 95                    2557 	.db 0x95
      0045F3 90                    2558 	.db 0x90
      0045F4 E2                    2559 	.db 0xe2
      0045F5 95                    2560 	.db 0x95
      0045F6 90                    2561 	.db 0x90
      0045F7 E2                    2562 	.db 0xe2
      0045F8 95                    2563 	.db 0x95
      0045F9 90                    2564 	.db 0x90
      0045FA E2                    2565 	.db 0xe2
      0045FB 95                    2566 	.db 0x95
      0045FC 90                    2567 	.db 0x90
      0045FD E2                    2568 	.db 0xe2
      0045FE 95                    2569 	.db 0x95
      0045FF 90                    2570 	.db 0x90
      004600 E2                    2571 	.db 0xe2
      004601 95                    2572 	.db 0x95
      004602 90                    2573 	.db 0x90
      004603 E2                    2574 	.db 0xe2
      004604 95                    2575 	.db 0x95
      004605 90                    2576 	.db 0x90
      004606 E2                    2577 	.db 0xe2
      004607 95                    2578 	.db 0x95
      004608 90                    2579 	.db 0x90
      004609 E2                    2580 	.db 0xe2
      00460A 95                    2581 	.db 0x95
      00460B 90                    2582 	.db 0x90
      00460C E2                    2583 	.db 0xe2
      00460D 95                    2584 	.db 0x95
      00460E 90                    2585 	.db 0x90
      00460F E2                    2586 	.db 0xe2
      004610 95                    2587 	.db 0x95
      004611 90                    2588 	.db 0x90
      004612 E2                    2589 	.db 0xe2
      004613 95                    2590 	.db 0x95
      004614 90                    2591 	.db 0x90
      004615 E2                    2592 	.db 0xe2
      004616 95                    2593 	.db 0x95
      004617 90                    2594 	.db 0x90
      004618 E2                    2595 	.db 0xe2
      004619 95                    2596 	.db 0x95
      00461A 90                    2597 	.db 0x90
      00461B E2                    2598 	.db 0xe2
      00461C 95                    2599 	.db 0x95
      00461D 90                    2600 	.db 0x90
      00461E E2                    2601 	.db 0xe2
      00461F 95                    2602 	.db 0x95
      004620 90                    2603 	.db 0x90
      004621 E2                    2604 	.db 0xe2
      004622 95                    2605 	.db 0x95
      004623 90                    2606 	.db 0x90
      004624 E2                    2607 	.db 0xe2
      004625 95                    2608 	.db 0x95
      004626 90                    2609 	.db 0x90
      004627 E2                    2610 	.db 0xe2
      004628 95                    2611 	.db 0x95
      004629 90                    2612 	.db 0x90
      00462A E2                    2613 	.db 0xe2
      00462B 95                    2614 	.db 0x95
      00462C 90                    2615 	.db 0x90
      00462D E2                    2616 	.db 0xe2
      00462E 95                    2617 	.db 0x95
      00462F 90                    2618 	.db 0x90
      004630 E2                    2619 	.db 0xe2
      004631 95                    2620 	.db 0x95
      004632 90                    2621 	.db 0x90
      004633 E2                    2622 	.db 0xe2
      004634 95                    2623 	.db 0x95
      004635 90                    2624 	.db 0x90
      004636 E2                    2625 	.db 0xe2
      004637 95                    2626 	.db 0x95
      004638 90                    2627 	.db 0x90
      004639 E2                    2628 	.db 0xe2
      00463A 95                    2629 	.db 0x95
      00463B 97                    2630 	.db 0x97
      00463C 0A                    2631 	.db 0x0a
      00463D 0D                    2632 	.db 0x0d
      00463E 00                    2633 	.db 0x00
                                   2634 	.area CSEG    (CODE)
                                   2635 	.area CONST   (CODE)
      00463F                       2636 ___str_1:
      00463F E2                    2637 	.db 0xe2
      004640 95                    2638 	.db 0x95
      004641 91                    2639 	.db 0x91
      004642 20 20 20 20 20 20 20  2640 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      00467A E2                    2641 	.db 0xe2
      00467B 95                    2642 	.db 0x95
      00467C 91                    2643 	.db 0x91
      00467D 0A                    2644 	.db 0x0a
      00467E 0D                    2645 	.db 0x0d
      00467F 00                    2646 	.db 0x00
                                   2647 	.area CSEG    (CODE)
                                   2648 	.area CONST   (CODE)
      004680                       2649 ___str_2:
      004680 E2                    2650 	.db 0xe2
      004681 95                    2651 	.db 0x95
      004682 9A                    2652 	.db 0x9a
      004683 E2                    2653 	.db 0xe2
      004684 95                    2654 	.db 0x95
      004685 90                    2655 	.db 0x90
      004686 E2                    2656 	.db 0xe2
      004687 95                    2657 	.db 0x95
      004688 90                    2658 	.db 0x90
      004689 E2                    2659 	.db 0xe2
      00468A 95                    2660 	.db 0x95
      00468B 90                    2661 	.db 0x90
      00468C E2                    2662 	.db 0xe2
      00468D 95                    2663 	.db 0x95
      00468E 90                    2664 	.db 0x90
      00468F E2                    2665 	.db 0xe2
      004690 95                    2666 	.db 0x95
      004691 90                    2667 	.db 0x90
      004692 E2                    2668 	.db 0xe2
      004693 95                    2669 	.db 0x95
      004694 90                    2670 	.db 0x90
      004695 E2                    2671 	.db 0xe2
      004696 95                    2672 	.db 0x95
      004697 90                    2673 	.db 0x90
      004698 E2                    2674 	.db 0xe2
      004699 95                    2675 	.db 0x95
      00469A 90                    2676 	.db 0x90
      00469B E2                    2677 	.db 0xe2
      00469C 95                    2678 	.db 0x95
      00469D 90                    2679 	.db 0x90
      00469E E2                    2680 	.db 0xe2
      00469F 95                    2681 	.db 0x95
      0046A0 90                    2682 	.db 0x90
      0046A1 E2                    2683 	.db 0xe2
      0046A2 95                    2684 	.db 0x95
      0046A3 90                    2685 	.db 0x90
      0046A4 E2                    2686 	.db 0xe2
      0046A5 95                    2687 	.db 0x95
      0046A6 90                    2688 	.db 0x90
      0046A7 E2                    2689 	.db 0xe2
      0046A8 95                    2690 	.db 0x95
      0046A9 90                    2691 	.db 0x90
      0046AA E2                    2692 	.db 0xe2
      0046AB 95                    2693 	.db 0x95
      0046AC 90                    2694 	.db 0x90
      0046AD E2                    2695 	.db 0xe2
      0046AE 95                    2696 	.db 0x95
      0046AF 90                    2697 	.db 0x90
      0046B0 E2                    2698 	.db 0xe2
      0046B1 95                    2699 	.db 0x95
      0046B2 90                    2700 	.db 0x90
      0046B3 E2                    2701 	.db 0xe2
      0046B4 95                    2702 	.db 0x95
      0046B5 90                    2703 	.db 0x90
      0046B6 E2                    2704 	.db 0xe2
      0046B7 95                    2705 	.db 0x95
      0046B8 90                    2706 	.db 0x90
      0046B9 E2                    2707 	.db 0xe2
      0046BA 95                    2708 	.db 0x95
      0046BB 90                    2709 	.db 0x90
      0046BC E2                    2710 	.db 0xe2
      0046BD 95                    2711 	.db 0x95
      0046BE 90                    2712 	.db 0x90
      0046BF E2                    2713 	.db 0xe2
      0046C0 95                    2714 	.db 0x95
      0046C1 90                    2715 	.db 0x90
      0046C2 E2                    2716 	.db 0xe2
      0046C3 95                    2717 	.db 0x95
      0046C4 90                    2718 	.db 0x90
      0046C5 E2                    2719 	.db 0xe2
      0046C6 95                    2720 	.db 0x95
      0046C7 90                    2721 	.db 0x90
      0046C8 E2                    2722 	.db 0xe2
      0046C9 95                    2723 	.db 0x95
      0046CA 90                    2724 	.db 0x90
      0046CB E2                    2725 	.db 0xe2
      0046CC 95                    2726 	.db 0x95
      0046CD 90                    2727 	.db 0x90
      0046CE E2                    2728 	.db 0xe2
      0046CF 95                    2729 	.db 0x95
      0046D0 90                    2730 	.db 0x90
      0046D1 E2                    2731 	.db 0xe2
      0046D2 95                    2732 	.db 0x95
      0046D3 90                    2733 	.db 0x90
      0046D4 E2                    2734 	.db 0xe2
      0046D5 95                    2735 	.db 0x95
      0046D6 90                    2736 	.db 0x90
      0046D7 E2                    2737 	.db 0xe2
      0046D8 95                    2738 	.db 0x95
      0046D9 90                    2739 	.db 0x90
      0046DA E2                    2740 	.db 0xe2
      0046DB 95                    2741 	.db 0x95
      0046DC 90                    2742 	.db 0x90
      0046DD E2                    2743 	.db 0xe2
      0046DE 95                    2744 	.db 0x95
      0046DF 90                    2745 	.db 0x90
      0046E0 E2                    2746 	.db 0xe2
      0046E1 95                    2747 	.db 0x95
      0046E2 90                    2748 	.db 0x90
      0046E3 E2                    2749 	.db 0xe2
      0046E4 95                    2750 	.db 0x95
      0046E5 90                    2751 	.db 0x90
      0046E6 E2                    2752 	.db 0xe2
      0046E7 95                    2753 	.db 0x95
      0046E8 90                    2754 	.db 0x90
      0046E9 E2                    2755 	.db 0xe2
      0046EA 95                    2756 	.db 0x95
      0046EB 90                    2757 	.db 0x90
      0046EC E2                    2758 	.db 0xe2
      0046ED 95                    2759 	.db 0x95
      0046EE 90                    2760 	.db 0x90
      0046EF E2                    2761 	.db 0xe2
      0046F0 95                    2762 	.db 0x95
      0046F1 90                    2763 	.db 0x90
      0046F2 E2                    2764 	.db 0xe2
      0046F3 95                    2765 	.db 0x95
      0046F4 90                    2766 	.db 0x90
      0046F5 E2                    2767 	.db 0xe2
      0046F6 95                    2768 	.db 0x95
      0046F7 90                    2769 	.db 0x90
      0046F8 E2                    2770 	.db 0xe2
      0046F9 95                    2771 	.db 0x95
      0046FA 90                    2772 	.db 0x90
      0046FB E2                    2773 	.db 0xe2
      0046FC 95                    2774 	.db 0x95
      0046FD 90                    2775 	.db 0x90
      0046FE E2                    2776 	.db 0xe2
      0046FF 95                    2777 	.db 0x95
      004700 90                    2778 	.db 0x90
      004701 E2                    2779 	.db 0xe2
      004702 95                    2780 	.db 0x95
      004703 90                    2781 	.db 0x90
      004704 E2                    2782 	.db 0xe2
      004705 95                    2783 	.db 0x95
      004706 90                    2784 	.db 0x90
      004707 E2                    2785 	.db 0xe2
      004708 95                    2786 	.db 0x95
      004709 90                    2787 	.db 0x90
      00470A E2                    2788 	.db 0xe2
      00470B 95                    2789 	.db 0x95
      00470C 90                    2790 	.db 0x90
      00470D E2                    2791 	.db 0xe2
      00470E 95                    2792 	.db 0x95
      00470F 90                    2793 	.db 0x90
      004710 E2                    2794 	.db 0xe2
      004711 95                    2795 	.db 0x95
      004712 90                    2796 	.db 0x90
      004713 E2                    2797 	.db 0xe2
      004714 95                    2798 	.db 0x95
      004715 90                    2799 	.db 0x90
      004716 E2                    2800 	.db 0xe2
      004717 95                    2801 	.db 0x95
      004718 90                    2802 	.db 0x90
      004719 E2                    2803 	.db 0xe2
      00471A 95                    2804 	.db 0x95
      00471B 90                    2805 	.db 0x90
      00471C E2                    2806 	.db 0xe2
      00471D 95                    2807 	.db 0x95
      00471E 90                    2808 	.db 0x90
      00471F E2                    2809 	.db 0xe2
      004720 95                    2810 	.db 0x95
      004721 90                    2811 	.db 0x90
      004722 E2                    2812 	.db 0xe2
      004723 95                    2813 	.db 0x95
      004724 90                    2814 	.db 0x90
      004725 E2                    2815 	.db 0xe2
      004726 95                    2816 	.db 0x95
      004727 90                    2817 	.db 0x90
      004728 E2                    2818 	.db 0xe2
      004729 95                    2819 	.db 0x95
      00472A 90                    2820 	.db 0x90
      00472B E2                    2821 	.db 0xe2
      00472C 95                    2822 	.db 0x95
      00472D 9D                    2823 	.db 0x9d
      00472E 0A                    2824 	.db 0x0a
      00472F 0D                    2825 	.db 0x0d
      004730 00                    2826 	.db 0x00
                                   2827 	.area CSEG    (CODE)
                                   2828 	.area CONST   (CODE)
      004731                       2829 ___str_3:
      004731 0A                    2830 	.db 0x0a
      004732 0D                    2831 	.db 0x0d
      004733 E2                    2832 	.db 0xe2
      004734 94                    2833 	.db 0x94
      004735 8C                    2834 	.db 0x8c
      004736 E2                    2835 	.db 0xe2
      004737 94                    2836 	.db 0x94
      004738 80                    2837 	.db 0x80
      004739 E2                    2838 	.db 0xe2
      00473A 94                    2839 	.db 0x94
      00473B 80                    2840 	.db 0x80
      00473C E2                    2841 	.db 0xe2
      00473D 94                    2842 	.db 0x94
      00473E 80                    2843 	.db 0x80
      00473F E2                    2844 	.db 0xe2
      004740 94                    2845 	.db 0x94
      004741 80                    2846 	.db 0x80
      004742 E2                    2847 	.db 0xe2
      004743 94                    2848 	.db 0x94
      004744 80                    2849 	.db 0x80
      004745 E2                    2850 	.db 0xe2
      004746 94                    2851 	.db 0x94
      004747 80                    2852 	.db 0x80
      004748 E2                    2853 	.db 0xe2
      004749 94                    2854 	.db 0x94
      00474A 80                    2855 	.db 0x80
      00474B E2                    2856 	.db 0xe2
      00474C 94                    2857 	.db 0x94
      00474D 80                    2858 	.db 0x80
      00474E E2                    2859 	.db 0xe2
      00474F 94                    2860 	.db 0x94
      004750 80                    2861 	.db 0x80
      004751 E2                    2862 	.db 0xe2
      004752 94                    2863 	.db 0x94
      004753 80                    2864 	.db 0x80
      004754 E2                    2865 	.db 0xe2
      004755 94                    2866 	.db 0x94
      004756 80                    2867 	.db 0x80
      004757 E2                    2868 	.db 0xe2
      004758 94                    2869 	.db 0x94
      004759 80                    2870 	.db 0x80
      00475A E2                    2871 	.db 0xe2
      00475B 94                    2872 	.db 0x94
      00475C AC                    2873 	.db 0xac
      00475D E2                    2874 	.db 0xe2
      00475E 94                    2875 	.db 0x94
      00475F 80                    2876 	.db 0x80
      004760 E2                    2877 	.db 0xe2
      004761 94                    2878 	.db 0x94
      004762 80                    2879 	.db 0x80
      004763 E2                    2880 	.db 0xe2
      004764 94                    2881 	.db 0x94
      004765 80                    2882 	.db 0x80
      004766 E2                    2883 	.db 0xe2
      004767 94                    2884 	.db 0x94
      004768 80                    2885 	.db 0x80
      004769 E2                    2886 	.db 0xe2
      00476A 94                    2887 	.db 0x94
      00476B 80                    2888 	.db 0x80
      00476C E2                    2889 	.db 0xe2
      00476D 94                    2890 	.db 0x94
      00476E 80                    2891 	.db 0x80
      00476F E2                    2892 	.db 0xe2
      004770 94                    2893 	.db 0x94
      004771 80                    2894 	.db 0x80
      004772 E2                    2895 	.db 0xe2
      004773 94                    2896 	.db 0x94
      004774 80                    2897 	.db 0x80
      004775 E2                    2898 	.db 0xe2
      004776 94                    2899 	.db 0x94
      004777 80                    2900 	.db 0x80
      004778 E2                    2901 	.db 0xe2
      004779 94                    2902 	.db 0x94
      00477A 80                    2903 	.db 0x80
      00477B E2                    2904 	.db 0xe2
      00477C 94                    2905 	.db 0x94
      00477D 80                    2906 	.db 0x80
      00477E E2                    2907 	.db 0xe2
      00477F 94                    2908 	.db 0x94
      004780 80                    2909 	.db 0x80
      004781 E2                    2910 	.db 0xe2
      004782 94                    2911 	.db 0x94
      004783 80                    2912 	.db 0x80
      004784 E2                    2913 	.db 0xe2
      004785 94                    2914 	.db 0x94
      004786 80                    2915 	.db 0x80
      004787 E2                    2916 	.db 0xe2
      004788 94                    2917 	.db 0x94
      004789 80                    2918 	.db 0x80
      00478A E2                    2919 	.db 0xe2
      00478B 94                    2920 	.db 0x94
      00478C 80                    2921 	.db 0x80
      00478D E2                    2922 	.db 0xe2
      00478E 94                    2923 	.db 0x94
      00478F 80                    2924 	.db 0x80
      004790 E2                    2925 	.db 0xe2
      004791 94                    2926 	.db 0x94
      004792 80                    2927 	.db 0x80
      004793 E2                    2928 	.db 0xe2
      004794 94                    2929 	.db 0x94
      004795 80                    2930 	.db 0x80
      004796 E2                    2931 	.db 0xe2
      004797 94                    2932 	.db 0x94
      004798 80                    2933 	.db 0x80
      004799 E2                    2934 	.db 0xe2
      00479A 94                    2935 	.db 0x94
      00479B 80                    2936 	.db 0x80
      00479C E2                    2937 	.db 0xe2
      00479D 94                    2938 	.db 0x94
      00479E 80                    2939 	.db 0x80
      00479F E2                    2940 	.db 0xe2
      0047A0 94                    2941 	.db 0x94
      0047A1 80                    2942 	.db 0x80
      0047A2 E2                    2943 	.db 0xe2
      0047A3 94                    2944 	.db 0x94
      0047A4 80                    2945 	.db 0x80
      0047A5 E2                    2946 	.db 0xe2
      0047A6 94                    2947 	.db 0x94
      0047A7 80                    2948 	.db 0x80
      0047A8 E2                    2949 	.db 0xe2
      0047A9 94                    2950 	.db 0x94
      0047AA 80                    2951 	.db 0x80
      0047AB E2                    2952 	.db 0xe2
      0047AC 94                    2953 	.db 0x94
      0047AD 80                    2954 	.db 0x80
      0047AE E2                    2955 	.db 0xe2
      0047AF 94                    2956 	.db 0x94
      0047B0 80                    2957 	.db 0x80
      0047B1 E2                    2958 	.db 0xe2
      0047B2 94                    2959 	.db 0x94
      0047B3 80                    2960 	.db 0x80
      0047B4 E2                    2961 	.db 0xe2
      0047B5 94                    2962 	.db 0x94
      0047B6 80                    2963 	.db 0x80
      0047B7 E2                    2964 	.db 0xe2
      0047B8 94                    2965 	.db 0x94
      0047B9 80                    2966 	.db 0x80
      0047BA E2                    2967 	.db 0xe2
      0047BB 94                    2968 	.db 0x94
      0047BC 80                    2969 	.db 0x80
      0047BD E2                    2970 	.db 0xe2
      0047BE 94                    2971 	.db 0x94
      0047BF 80                    2972 	.db 0x80
      0047C0 E2                    2973 	.db 0xe2
      0047C1 94                    2974 	.db 0x94
      0047C2 80                    2975 	.db 0x80
      0047C3 E2                    2976 	.db 0xe2
      0047C4 94                    2977 	.db 0x94
      0047C5 80                    2978 	.db 0x80
      0047C6 E2                    2979 	.db 0xe2
      0047C7 94                    2980 	.db 0x94
      0047C8 80                    2981 	.db 0x80
      0047C9 E2                    2982 	.db 0xe2
      0047CA 94                    2983 	.db 0x94
      0047CB 80                    2984 	.db 0x80
      0047CC E2                    2985 	.db 0xe2
      0047CD 94                    2986 	.db 0x94
      0047CE 80                    2987 	.db 0x80
      0047CF E2                    2988 	.db 0xe2
      0047D0 94                    2989 	.db 0x94
      0047D1 80                    2990 	.db 0x80
      0047D2 E2                    2991 	.db 0xe2
      0047D3 94                    2992 	.db 0x94
      0047D4 80                    2993 	.db 0x80
      0047D5 E2                    2994 	.db 0xe2
      0047D6 94                    2995 	.db 0x94
      0047D7 80                    2996 	.db 0x80
      0047D8 E2                    2997 	.db 0xe2
      0047D9 94                    2998 	.db 0x94
      0047DA 80                    2999 	.db 0x80
      0047DB E2                    3000 	.db 0xe2
      0047DC 94                    3001 	.db 0x94
      0047DD 80                    3002 	.db 0x80
      0047DE E2                    3003 	.db 0xe2
      0047DF 94                    3004 	.db 0x94
      0047E0 80                    3005 	.db 0x80
      0047E1 E2                    3006 	.db 0xe2
      0047E2 94                    3007 	.db 0x94
      0047E3 90                    3008 	.db 0x90
      0047E4 0A                    3009 	.db 0x0a
      0047E5 0D                    3010 	.db 0x0d
      0047E6 00                    3011 	.db 0x00
                                   3012 	.area CSEG    (CODE)
                                   3013 	.area CONST   (CODE)
      0047E7                       3014 ___str_4:
      0047E7 E2                    3015 	.db 0xe2
      0047E8 94                    3016 	.db 0x94
      0047E9 82                    3017 	.db 0x82
      0047EA 20 20 43 6F 6D 6D 61  3018 	.ascii "  Command   "
             6E 64 20 20 20
      0047F6 E2                    3019 	.db 0xe2
      0047F7 94                    3020 	.db 0x94
      0047F8 82                    3021 	.db 0x82
      0047F9 20 20 20 20 20 20 20  3022 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004825 E2                    3023 	.db 0xe2
      004826 94                    3024 	.db 0x94
      004827 82                    3025 	.db 0x82
      004828 0A                    3026 	.db 0x0a
      004829 0D                    3027 	.db 0x0d
      00482A 00                    3028 	.db 0x00
                                   3029 	.area CSEG    (CODE)
                                   3030 	.area CONST   (CODE)
      00482B                       3031 ___str_5:
      00482B E2                    3032 	.db 0xe2
      00482C 94                    3033 	.db 0x94
      00482D 9C                    3034 	.db 0x9c
      00482E E2                    3035 	.db 0xe2
      00482F 94                    3036 	.db 0x94
      004830 80                    3037 	.db 0x80
      004831 E2                    3038 	.db 0xe2
      004832 94                    3039 	.db 0x94
      004833 80                    3040 	.db 0x80
      004834 E2                    3041 	.db 0xe2
      004835 94                    3042 	.db 0x94
      004836 80                    3043 	.db 0x80
      004837 E2                    3044 	.db 0xe2
      004838 94                    3045 	.db 0x94
      004839 80                    3046 	.db 0x80
      00483A E2                    3047 	.db 0xe2
      00483B 94                    3048 	.db 0x94
      00483C 80                    3049 	.db 0x80
      00483D E2                    3050 	.db 0xe2
      00483E 94                    3051 	.db 0x94
      00483F 80                    3052 	.db 0x80
      004840 E2                    3053 	.db 0xe2
      004841 94                    3054 	.db 0x94
      004842 80                    3055 	.db 0x80
      004843 E2                    3056 	.db 0xe2
      004844 94                    3057 	.db 0x94
      004845 80                    3058 	.db 0x80
      004846 E2                    3059 	.db 0xe2
      004847 94                    3060 	.db 0x94
      004848 80                    3061 	.db 0x80
      004849 E2                    3062 	.db 0xe2
      00484A 94                    3063 	.db 0x94
      00484B 80                    3064 	.db 0x80
      00484C E2                    3065 	.db 0xe2
      00484D 94                    3066 	.db 0x94
      00484E 80                    3067 	.db 0x80
      00484F E2                    3068 	.db 0xe2
      004850 94                    3069 	.db 0x94
      004851 80                    3070 	.db 0x80
      004852 E2                    3071 	.db 0xe2
      004853 94                    3072 	.db 0x94
      004854 BC                    3073 	.db 0xbc
      004855 E2                    3074 	.db 0xe2
      004856 94                    3075 	.db 0x94
      004857 80                    3076 	.db 0x80
      004858 E2                    3077 	.db 0xe2
      004859 94                    3078 	.db 0x94
      00485A 80                    3079 	.db 0x80
      00485B E2                    3080 	.db 0xe2
      00485C 94                    3081 	.db 0x94
      00485D 80                    3082 	.db 0x80
      00485E E2                    3083 	.db 0xe2
      00485F 94                    3084 	.db 0x94
      004860 80                    3085 	.db 0x80
      004861 E2                    3086 	.db 0xe2
      004862 94                    3087 	.db 0x94
      004863 80                    3088 	.db 0x80
      004864 E2                    3089 	.db 0xe2
      004865 94                    3090 	.db 0x94
      004866 80                    3091 	.db 0x80
      004867 E2                    3092 	.db 0xe2
      004868 94                    3093 	.db 0x94
      004869 80                    3094 	.db 0x80
      00486A E2                    3095 	.db 0xe2
      00486B 94                    3096 	.db 0x94
      00486C 80                    3097 	.db 0x80
      00486D E2                    3098 	.db 0xe2
      00486E 94                    3099 	.db 0x94
      00486F 80                    3100 	.db 0x80
      004870 E2                    3101 	.db 0xe2
      004871 94                    3102 	.db 0x94
      004872 80                    3103 	.db 0x80
      004873 E2                    3104 	.db 0xe2
      004874 94                    3105 	.db 0x94
      004875 80                    3106 	.db 0x80
      004876 E2                    3107 	.db 0xe2
      004877 94                    3108 	.db 0x94
      004878 80                    3109 	.db 0x80
      004879 E2                    3110 	.db 0xe2
      00487A 94                    3111 	.db 0x94
      00487B 80                    3112 	.db 0x80
      00487C E2                    3113 	.db 0xe2
      00487D 94                    3114 	.db 0x94
      00487E 80                    3115 	.db 0x80
      00487F E2                    3116 	.db 0xe2
      004880 94                    3117 	.db 0x94
      004881 80                    3118 	.db 0x80
      004882 E2                    3119 	.db 0xe2
      004883 94                    3120 	.db 0x94
      004884 80                    3121 	.db 0x80
      004885 E2                    3122 	.db 0xe2
      004886 94                    3123 	.db 0x94
      004887 80                    3124 	.db 0x80
      004888 E2                    3125 	.db 0xe2
      004889 94                    3126 	.db 0x94
      00488A 80                    3127 	.db 0x80
      00488B E2                    3128 	.db 0xe2
      00488C 94                    3129 	.db 0x94
      00488D 80                    3130 	.db 0x80
      00488E E2                    3131 	.db 0xe2
      00488F 94                    3132 	.db 0x94
      004890 80                    3133 	.db 0x80
      004891 E2                    3134 	.db 0xe2
      004892 94                    3135 	.db 0x94
      004893 80                    3136 	.db 0x80
      004894 E2                    3137 	.db 0xe2
      004895 94                    3138 	.db 0x94
      004896 80                    3139 	.db 0x80
      004897 E2                    3140 	.db 0xe2
      004898 94                    3141 	.db 0x94
      004899 80                    3142 	.db 0x80
      00489A E2                    3143 	.db 0xe2
      00489B 94                    3144 	.db 0x94
      00489C 80                    3145 	.db 0x80
      00489D E2                    3146 	.db 0xe2
      00489E 94                    3147 	.db 0x94
      00489F 80                    3148 	.db 0x80
      0048A0 E2                    3149 	.db 0xe2
      0048A1 94                    3150 	.db 0x94
      0048A2 80                    3151 	.db 0x80
      0048A3 E2                    3152 	.db 0xe2
      0048A4 94                    3153 	.db 0x94
      0048A5 80                    3154 	.db 0x80
      0048A6 E2                    3155 	.db 0xe2
      0048A7 94                    3156 	.db 0x94
      0048A8 80                    3157 	.db 0x80
      0048A9 E2                    3158 	.db 0xe2
      0048AA 94                    3159 	.db 0x94
      0048AB 80                    3160 	.db 0x80
      0048AC E2                    3161 	.db 0xe2
      0048AD 94                    3162 	.db 0x94
      0048AE 80                    3163 	.db 0x80
      0048AF E2                    3164 	.db 0xe2
      0048B0 94                    3165 	.db 0x94
      0048B1 80                    3166 	.db 0x80
      0048B2 E2                    3167 	.db 0xe2
      0048B3 94                    3168 	.db 0x94
      0048B4 80                    3169 	.db 0x80
      0048B5 E2                    3170 	.db 0xe2
      0048B6 94                    3171 	.db 0x94
      0048B7 80                    3172 	.db 0x80
      0048B8 E2                    3173 	.db 0xe2
      0048B9 94                    3174 	.db 0x94
      0048BA 80                    3175 	.db 0x80
      0048BB E2                    3176 	.db 0xe2
      0048BC 94                    3177 	.db 0x94
      0048BD 80                    3178 	.db 0x80
      0048BE E2                    3179 	.db 0xe2
      0048BF 94                    3180 	.db 0x94
      0048C0 80                    3181 	.db 0x80
      0048C1 E2                    3182 	.db 0xe2
      0048C2 94                    3183 	.db 0x94
      0048C3 80                    3184 	.db 0x80
      0048C4 E2                    3185 	.db 0xe2
      0048C5 94                    3186 	.db 0x94
      0048C6 80                    3187 	.db 0x80
      0048C7 E2                    3188 	.db 0xe2
      0048C8 94                    3189 	.db 0x94
      0048C9 80                    3190 	.db 0x80
      0048CA E2                    3191 	.db 0xe2
      0048CB 94                    3192 	.db 0x94
      0048CC 80                    3193 	.db 0x80
      0048CD E2                    3194 	.db 0xe2
      0048CE 94                    3195 	.db 0x94
      0048CF 80                    3196 	.db 0x80
      0048D0 E2                    3197 	.db 0xe2
      0048D1 94                    3198 	.db 0x94
      0048D2 80                    3199 	.db 0x80
      0048D3 E2                    3200 	.db 0xe2
      0048D4 94                    3201 	.db 0x94
      0048D5 80                    3202 	.db 0x80
      0048D6 E2                    3203 	.db 0xe2
      0048D7 94                    3204 	.db 0x94
      0048D8 80                    3205 	.db 0x80
      0048D9 E2                    3206 	.db 0xe2
      0048DA 94                    3207 	.db 0x94
      0048DB A4                    3208 	.db 0xa4
      0048DC 0A                    3209 	.db 0x0a
      0048DD 0D                    3210 	.db 0x0d
      0048DE 00                    3211 	.db 0x00
                                   3212 	.area CSEG    (CODE)
                                   3213 	.area CONST   (CODE)
      0048DF                       3214 ___str_6:
      0048DF E2                    3215 	.db 0xe2
      0048E0 94                    3216 	.db 0x94
      0048E1 82                    3217 	.db 0x82
      0048E2 20 20 20 20 20 52 20  3218 	.ascii "     R      "
             20 20 20 20 20
      0048EE E2                    3219 	.db 0xe2
      0048EF 94                    3220 	.db 0x94
      0048F0 82                    3221 	.db 0x82
      0048F1 20 52 65 61 64 20 66  3222 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00491D E2                    3223 	.db 0xe2
      00491E 94                    3224 	.db 0x94
      00491F 82                    3225 	.db 0x82
      004920 0A                    3226 	.db 0x0a
      004921 0D                    3227 	.db 0x0d
      004922 00                    3228 	.db 0x00
                                   3229 	.area CSEG    (CODE)
                                   3230 	.area CONST   (CODE)
      004923                       3231 ___str_7:
      004923 E2                    3232 	.db 0xe2
      004924 94                    3233 	.db 0x94
      004925 82                    3234 	.db 0x82
      004926 20 20 20 20 20 57 20  3235 	.ascii "     W      "
             20 20 20 20 20
      004932 E2                    3236 	.db 0xe2
      004933 94                    3237 	.db 0x94
      004934 82                    3238 	.db 0x82
      004935 20 57 72 69 74 65 20  3239 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004961 E2                    3240 	.db 0xe2
      004962 94                    3241 	.db 0x94
      004963 82                    3242 	.db 0x82
      004964 0A                    3243 	.db 0x0a
      004965 0D                    3244 	.db 0x0d
      004966 00                    3245 	.db 0x00
                                   3246 	.area CSEG    (CODE)
                                   3247 	.area CONST   (CODE)
      004967                       3248 ___str_8:
      004967 E2                    3249 	.db 0xe2
      004968 94                    3250 	.db 0x94
      004969 82                    3251 	.db 0x82
      00496A 20 20 20 20 20 48 20  3252 	.ascii "     H      "
             20 20 20 20 20
      004976 E2                    3253 	.db 0xe2
      004977 94                    3254 	.db 0x94
      004978 82                    3255 	.db 0x82
      004979 20 44 69 73 70 6C 61  3256 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049A5 E2                    3257 	.db 0xe2
      0049A6 94                    3258 	.db 0x94
      0049A7 82                    3259 	.db 0x82
      0049A8 0A                    3260 	.db 0x0a
      0049A9 0D                    3261 	.db 0x0d
      0049AA 00                    3262 	.db 0x00
                                   3263 	.area CSEG    (CODE)
                                   3264 	.area CONST   (CODE)
      0049AB                       3265 ___str_9:
      0049AB E2                    3266 	.db 0xe2
      0049AC 94                    3267 	.db 0x94
      0049AD 82                    3268 	.db 0x82
      0049AE 20 20 20 20 20 58 20  3269 	.ascii "     X      "
             20 20 20 20 20
      0049BA E2                    3270 	.db 0xe2
      0049BB 94                    3271 	.db 0x94
      0049BC 82                    3272 	.db 0x82
      0049BD 20 52 65 73 65 74 20  3273 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049E9 E2                    3274 	.db 0xe2
      0049EA 94                    3275 	.db 0x94
      0049EB 82                    3276 	.db 0x82
      0049EC 0A                    3277 	.db 0x0a
      0049ED 0D                    3278 	.db 0x0d
      0049EE 00                    3279 	.db 0x00
                                   3280 	.area CSEG    (CODE)
                                   3281 	.area CONST   (CODE)
      0049EF                       3282 ___str_10:
      0049EF E2                    3283 	.db 0xe2
      0049F0 94                    3284 	.db 0x94
      0049F1 82                    3285 	.db 0x82
      0049F2 20 20 20 20 20 3F 20  3286 	.ascii "     ?      "
             20 20 20 20 20
      0049FE E2                    3287 	.db 0xe2
      0049FF 94                    3288 	.db 0x94
      004A00 82                    3289 	.db 0x82
      004A01 20 44 69 73 70 6C 61  3290 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A2D E2                    3291 	.db 0xe2
      004A2E 94                    3292 	.db 0x94
      004A2F 82                    3293 	.db 0x82
      004A30 0A                    3294 	.db 0x0a
      004A31 0D                    3295 	.db 0x0d
      004A32 00                    3296 	.db 0x00
                                   3297 	.area CSEG    (CODE)
                                   3298 	.area CONST   (CODE)
      004A33                       3299 ___str_11:
      004A33 E2                    3300 	.db 0xe2
      004A34 94                    3301 	.db 0x94
      004A35 82                    3302 	.db 0x82
      004A36 20 20 20 20 20 51 20  3303 	.ascii "     Q      "
             20 20 20 20 20
      004A42 E2                    3304 	.db 0xe2
      004A43 94                    3305 	.db 0x94
      004A44 82                    3306 	.db 0x82
      004A45 20 51 75 69 74 20 70  3307 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A71 E2                    3308 	.db 0xe2
      004A72 94                    3309 	.db 0x94
      004A73 82                    3310 	.db 0x82
      004A74 0A                    3311 	.db 0x0a
      004A75 0D                    3312 	.db 0x0d
      004A76 00                    3313 	.db 0x00
                                   3314 	.area CSEG    (CODE)
                                   3315 	.area CONST   (CODE)
      004A77                       3316 ___str_12:
      004A77 E2                    3317 	.db 0xe2
      004A78 94                    3318 	.db 0x94
      004A79 94                    3319 	.db 0x94
      004A7A E2                    3320 	.db 0xe2
      004A7B 94                    3321 	.db 0x94
      004A7C 80                    3322 	.db 0x80
      004A7D E2                    3323 	.db 0xe2
      004A7E 94                    3324 	.db 0x94
      004A7F 80                    3325 	.db 0x80
      004A80 E2                    3326 	.db 0xe2
      004A81 94                    3327 	.db 0x94
      004A82 80                    3328 	.db 0x80
      004A83 E2                    3329 	.db 0xe2
      004A84 94                    3330 	.db 0x94
      004A85 80                    3331 	.db 0x80
      004A86 E2                    3332 	.db 0xe2
      004A87 94                    3333 	.db 0x94
      004A88 80                    3334 	.db 0x80
      004A89 E2                    3335 	.db 0xe2
      004A8A 94                    3336 	.db 0x94
      004A8B 80                    3337 	.db 0x80
      004A8C E2                    3338 	.db 0xe2
      004A8D 94                    3339 	.db 0x94
      004A8E 80                    3340 	.db 0x80
      004A8F E2                    3341 	.db 0xe2
      004A90 94                    3342 	.db 0x94
      004A91 80                    3343 	.db 0x80
      004A92 E2                    3344 	.db 0xe2
      004A93 94                    3345 	.db 0x94
      004A94 80                    3346 	.db 0x80
      004A95 E2                    3347 	.db 0xe2
      004A96 94                    3348 	.db 0x94
      004A97 80                    3349 	.db 0x80
      004A98 E2                    3350 	.db 0xe2
      004A99 94                    3351 	.db 0x94
      004A9A 80                    3352 	.db 0x80
      004A9B E2                    3353 	.db 0xe2
      004A9C 94                    3354 	.db 0x94
      004A9D 80                    3355 	.db 0x80
      004A9E E2                    3356 	.db 0xe2
      004A9F 94                    3357 	.db 0x94
      004AA0 B4                    3358 	.db 0xb4
      004AA1 E2                    3359 	.db 0xe2
      004AA2 94                    3360 	.db 0x94
      004AA3 80                    3361 	.db 0x80
      004AA4 E2                    3362 	.db 0xe2
      004AA5 94                    3363 	.db 0x94
      004AA6 80                    3364 	.db 0x80
      004AA7 E2                    3365 	.db 0xe2
      004AA8 94                    3366 	.db 0x94
      004AA9 80                    3367 	.db 0x80
      004AAA E2                    3368 	.db 0xe2
      004AAB 94                    3369 	.db 0x94
      004AAC 80                    3370 	.db 0x80
      004AAD E2                    3371 	.db 0xe2
      004AAE 94                    3372 	.db 0x94
      004AAF 80                    3373 	.db 0x80
      004AB0 E2                    3374 	.db 0xe2
      004AB1 94                    3375 	.db 0x94
      004AB2 80                    3376 	.db 0x80
      004AB3 E2                    3377 	.db 0xe2
      004AB4 94                    3378 	.db 0x94
      004AB5 80                    3379 	.db 0x80
      004AB6 E2                    3380 	.db 0xe2
      004AB7 94                    3381 	.db 0x94
      004AB8 80                    3382 	.db 0x80
      004AB9 E2                    3383 	.db 0xe2
      004ABA 94                    3384 	.db 0x94
      004ABB 80                    3385 	.db 0x80
      004ABC E2                    3386 	.db 0xe2
      004ABD 94                    3387 	.db 0x94
      004ABE 80                    3388 	.db 0x80
      004ABF E2                    3389 	.db 0xe2
      004AC0 94                    3390 	.db 0x94
      004AC1 80                    3391 	.db 0x80
      004AC2 E2                    3392 	.db 0xe2
      004AC3 94                    3393 	.db 0x94
      004AC4 80                    3394 	.db 0x80
      004AC5 E2                    3395 	.db 0xe2
      004AC6 94                    3396 	.db 0x94
      004AC7 80                    3397 	.db 0x80
      004AC8 E2                    3398 	.db 0xe2
      004AC9 94                    3399 	.db 0x94
      004ACA 80                    3400 	.db 0x80
      004ACB E2                    3401 	.db 0xe2
      004ACC 94                    3402 	.db 0x94
      004ACD 80                    3403 	.db 0x80
      004ACE E2                    3404 	.db 0xe2
      004ACF 94                    3405 	.db 0x94
      004AD0 80                    3406 	.db 0x80
      004AD1 E2                    3407 	.db 0xe2
      004AD2 94                    3408 	.db 0x94
      004AD3 80                    3409 	.db 0x80
      004AD4 E2                    3410 	.db 0xe2
      004AD5 94                    3411 	.db 0x94
      004AD6 80                    3412 	.db 0x80
      004AD7 E2                    3413 	.db 0xe2
      004AD8 94                    3414 	.db 0x94
      004AD9 80                    3415 	.db 0x80
      004ADA E2                    3416 	.db 0xe2
      004ADB 94                    3417 	.db 0x94
      004ADC 80                    3418 	.db 0x80
      004ADD E2                    3419 	.db 0xe2
      004ADE 94                    3420 	.db 0x94
      004ADF 80                    3421 	.db 0x80
      004AE0 E2                    3422 	.db 0xe2
      004AE1 94                    3423 	.db 0x94
      004AE2 80                    3424 	.db 0x80
      004AE3 E2                    3425 	.db 0xe2
      004AE4 94                    3426 	.db 0x94
      004AE5 80                    3427 	.db 0x80
      004AE6 E2                    3428 	.db 0xe2
      004AE7 94                    3429 	.db 0x94
      004AE8 80                    3430 	.db 0x80
      004AE9 E2                    3431 	.db 0xe2
      004AEA 94                    3432 	.db 0x94
      004AEB 80                    3433 	.db 0x80
      004AEC E2                    3434 	.db 0xe2
      004AED 94                    3435 	.db 0x94
      004AEE 80                    3436 	.db 0x80
      004AEF E2                    3437 	.db 0xe2
      004AF0 94                    3438 	.db 0x94
      004AF1 80                    3439 	.db 0x80
      004AF2 E2                    3440 	.db 0xe2
      004AF3 94                    3441 	.db 0x94
      004AF4 80                    3442 	.db 0x80
      004AF5 E2                    3443 	.db 0xe2
      004AF6 94                    3444 	.db 0x94
      004AF7 80                    3445 	.db 0x80
      004AF8 E2                    3446 	.db 0xe2
      004AF9 94                    3447 	.db 0x94
      004AFA 80                    3448 	.db 0x80
      004AFB E2                    3449 	.db 0xe2
      004AFC 94                    3450 	.db 0x94
      004AFD 80                    3451 	.db 0x80
      004AFE E2                    3452 	.db 0xe2
      004AFF 94                    3453 	.db 0x94
      004B00 80                    3454 	.db 0x80
      004B01 E2                    3455 	.db 0xe2
      004B02 94                    3456 	.db 0x94
      004B03 80                    3457 	.db 0x80
      004B04 E2                    3458 	.db 0xe2
      004B05 94                    3459 	.db 0x94
      004B06 80                    3460 	.db 0x80
      004B07 E2                    3461 	.db 0xe2
      004B08 94                    3462 	.db 0x94
      004B09 80                    3463 	.db 0x80
      004B0A E2                    3464 	.db 0xe2
      004B0B 94                    3465 	.db 0x94
      004B0C 80                    3466 	.db 0x80
      004B0D E2                    3467 	.db 0xe2
      004B0E 94                    3468 	.db 0x94
      004B0F 80                    3469 	.db 0x80
      004B10 E2                    3470 	.db 0xe2
      004B11 94                    3471 	.db 0x94
      004B12 80                    3472 	.db 0x80
      004B13 E2                    3473 	.db 0xe2
      004B14 94                    3474 	.db 0x94
      004B15 80                    3475 	.db 0x80
      004B16 E2                    3476 	.db 0xe2
      004B17 94                    3477 	.db 0x94
      004B18 80                    3478 	.db 0x80
      004B19 E2                    3479 	.db 0xe2
      004B1A 94                    3480 	.db 0x94
      004B1B 80                    3481 	.db 0x80
      004B1C E2                    3482 	.db 0xe2
      004B1D 94                    3483 	.db 0x94
      004B1E 80                    3484 	.db 0x80
      004B1F E2                    3485 	.db 0xe2
      004B20 94                    3486 	.db 0x94
      004B21 80                    3487 	.db 0x80
      004B22 E2                    3488 	.db 0xe2
      004B23 94                    3489 	.db 0x94
      004B24 80                    3490 	.db 0x80
      004B25 E2                    3491 	.db 0xe2
      004B26 94                    3492 	.db 0x94
      004B27 98                    3493 	.db 0x98
      004B28 0A                    3494 	.db 0x0a
      004B29 0D                    3495 	.db 0x0d
      004B2A 00                    3496 	.db 0x00
                                   3497 	.area CSEG    (CODE)
                                   3498 	.area CONST   (CODE)
      004B2B                       3499 ___str_13:
      004B2B 7C 20 24 20 25 63     3500 	.ascii "| $ %c"
      004B31 0A                    3501 	.db 0x0a
      004B32 0D                    3502 	.db 0x0d
      004B33 00                    3503 	.db 0x00
                                   3504 	.area CSEG    (CODE)
                                   3505 	.area CONST   (CODE)
      004B34                       3506 ___str_14:
      004B34 0A                    3507 	.db 0x0a
      004B35 E2                    3508 	.db 0xe2
      004B36 94                    3509 	.db 0x94
      004B37 8C                    3510 	.db 0x8c
      004B38 E2                    3511 	.db 0xe2
      004B39 94                    3512 	.db 0x94
      004B3A 80                    3513 	.db 0x80
      004B3B E2                    3514 	.db 0xe2
      004B3C 94                    3515 	.db 0x94
      004B3D 80                    3516 	.db 0x80
      004B3E E2                    3517 	.db 0xe2
      004B3F 94                    3518 	.db 0x94
      004B40 80                    3519 	.db 0x80
      004B41 E2                    3520 	.db 0xe2
      004B42 94                    3521 	.db 0x94
      004B43 80                    3522 	.db 0x80
      004B44 E2                    3523 	.db 0xe2
      004B45 94                    3524 	.db 0x94
      004B46 80                    3525 	.db 0x80
      004B47 E2                    3526 	.db 0xe2
      004B48 94                    3527 	.db 0x94
      004B49 80                    3528 	.db 0x80
      004B4A E2                    3529 	.db 0xe2
      004B4B 94                    3530 	.db 0x94
      004B4C 80                    3531 	.db 0x80
      004B4D E2                    3532 	.db 0xe2
      004B4E 94                    3533 	.db 0x94
      004B4F 80                    3534 	.db 0x80
      004B50 E2                    3535 	.db 0xe2
      004B51 94                    3536 	.db 0x94
      004B52 80                    3537 	.db 0x80
      004B53 E2                    3538 	.db 0xe2
      004B54 94                    3539 	.db 0x94
      004B55 80                    3540 	.db 0x80
      004B56 E2                    3541 	.db 0xe2
      004B57 94                    3542 	.db 0x94
      004B58 80                    3543 	.db 0x80
      004B59 E2                    3544 	.db 0xe2
      004B5A 94                    3545 	.db 0x94
      004B5B 80                    3546 	.db 0x80
      004B5C E2                    3547 	.db 0xe2
      004B5D 94                    3548 	.db 0x94
      004B5E 80                    3549 	.db 0x80
      004B5F E2                    3550 	.db 0xe2
      004B60 94                    3551 	.db 0x94
      004B61 80                    3552 	.db 0x80
      004B62 E2                    3553 	.db 0xe2
      004B63 94                    3554 	.db 0x94
      004B64 80                    3555 	.db 0x80
      004B65 20 57 52 49 54 45 20  3556 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004B76 E2                    3557 	.db 0xe2
      004B77 94                    3558 	.db 0x94
      004B78 80                    3559 	.db 0x80
      004B79 E2                    3560 	.db 0xe2
      004B7A 94                    3561 	.db 0x94
      004B7B 80                    3562 	.db 0x80
      004B7C E2                    3563 	.db 0xe2
      004B7D 94                    3564 	.db 0x94
      004B7E 80                    3565 	.db 0x80
      004B7F E2                    3566 	.db 0xe2
      004B80 94                    3567 	.db 0x94
      004B81 80                    3568 	.db 0x80
      004B82 E2                    3569 	.db 0xe2
      004B83 94                    3570 	.db 0x94
      004B84 80                    3571 	.db 0x80
      004B85 E2                    3572 	.db 0xe2
      004B86 94                    3573 	.db 0x94
      004B87 80                    3574 	.db 0x80
      004B88 E2                    3575 	.db 0xe2
      004B89 94                    3576 	.db 0x94
      004B8A 80                    3577 	.db 0x80
      004B8B E2                    3578 	.db 0xe2
      004B8C 94                    3579 	.db 0x94
      004B8D 80                    3580 	.db 0x80
      004B8E E2                    3581 	.db 0xe2
      004B8F 94                    3582 	.db 0x94
      004B90 80                    3583 	.db 0x80
      004B91 E2                    3584 	.db 0xe2
      004B92 94                    3585 	.db 0x94
      004B93 80                    3586 	.db 0x80
      004B94 E2                    3587 	.db 0xe2
      004B95 94                    3588 	.db 0x94
      004B96 80                    3589 	.db 0x80
      004B97 E2                    3590 	.db 0xe2
      004B98 94                    3591 	.db 0x94
      004B99 80                    3592 	.db 0x80
      004B9A E2                    3593 	.db 0xe2
      004B9B 94                    3594 	.db 0x94
      004B9C 80                    3595 	.db 0x80
      004B9D E2                    3596 	.db 0xe2
      004B9E 94                    3597 	.db 0x94
      004B9F 80                    3598 	.db 0x80
      004BA0 E2                    3599 	.db 0xe2
      004BA1 94                    3600 	.db 0x94
      004BA2 90                    3601 	.db 0x90
      004BA3 0A                    3602 	.db 0x0a
      004BA4 0D                    3603 	.db 0x0d
      004BA5 00                    3604 	.db 0x00
                                   3605 	.area CSEG    (CODE)
                                   3606 	.area CONST   (CODE)
      004BA6                       3607 ___str_15:
      004BA6 0A                    3608 	.db 0x0a
      004BA7 E2                    3609 	.db 0xe2
      004BA8 94                    3610 	.db 0x94
      004BA9 8C                    3611 	.db 0x8c
      004BAA E2                    3612 	.db 0xe2
      004BAB 94                    3613 	.db 0x94
      004BAC 80                    3614 	.db 0x80
      004BAD E2                    3615 	.db 0xe2
      004BAE 94                    3616 	.db 0x94
      004BAF 80                    3617 	.db 0x80
      004BB0 E2                    3618 	.db 0xe2
      004BB1 94                    3619 	.db 0x94
      004BB2 80                    3620 	.db 0x80
      004BB3 E2                    3621 	.db 0xe2
      004BB4 94                    3622 	.db 0x94
      004BB5 80                    3623 	.db 0x80
      004BB6 E2                    3624 	.db 0xe2
      004BB7 94                    3625 	.db 0x94
      004BB8 80                    3626 	.db 0x80
      004BB9 E2                    3627 	.db 0xe2
      004BBA 94                    3628 	.db 0x94
      004BBB 80                    3629 	.db 0x80
      004BBC E2                    3630 	.db 0xe2
      004BBD 94                    3631 	.db 0x94
      004BBE 80                    3632 	.db 0x80
      004BBF E2                    3633 	.db 0xe2
      004BC0 94                    3634 	.db 0x94
      004BC1 80                    3635 	.db 0x80
      004BC2 E2                    3636 	.db 0xe2
      004BC3 94                    3637 	.db 0x94
      004BC4 80                    3638 	.db 0x80
      004BC5 E2                    3639 	.db 0xe2
      004BC6 94                    3640 	.db 0x94
      004BC7 80                    3641 	.db 0x80
      004BC8 E2                    3642 	.db 0xe2
      004BC9 94                    3643 	.db 0x94
      004BCA 80                    3644 	.db 0x80
      004BCB E2                    3645 	.db 0xe2
      004BCC 94                    3646 	.db 0x94
      004BCD 80                    3647 	.db 0x80
      004BCE E2                    3648 	.db 0xe2
      004BCF 94                    3649 	.db 0x94
      004BD0 80                    3650 	.db 0x80
      004BD1 E2                    3651 	.db 0xe2
      004BD2 94                    3652 	.db 0x94
      004BD3 80                    3653 	.db 0x80
      004BD4 E2                    3654 	.db 0xe2
      004BD5 94                    3655 	.db 0x94
      004BD6 80                    3656 	.db 0x80
      004BD7 20 52 45 41 44 20 4F  3657 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004BE7 E2                    3658 	.db 0xe2
      004BE8 94                    3659 	.db 0x94
      004BE9 80                    3660 	.db 0x80
      004BEA E2                    3661 	.db 0xe2
      004BEB 94                    3662 	.db 0x94
      004BEC 80                    3663 	.db 0x80
      004BED E2                    3664 	.db 0xe2
      004BEE 94                    3665 	.db 0x94
      004BEF 80                    3666 	.db 0x80
      004BF0 E2                    3667 	.db 0xe2
      004BF1 94                    3668 	.db 0x94
      004BF2 80                    3669 	.db 0x80
      004BF3 E2                    3670 	.db 0xe2
      004BF4 94                    3671 	.db 0x94
      004BF5 80                    3672 	.db 0x80
      004BF6 E2                    3673 	.db 0xe2
      004BF7 94                    3674 	.db 0x94
      004BF8 80                    3675 	.db 0x80
      004BF9 E2                    3676 	.db 0xe2
      004BFA 94                    3677 	.db 0x94
      004BFB 80                    3678 	.db 0x80
      004BFC E2                    3679 	.db 0xe2
      004BFD 94                    3680 	.db 0x94
      004BFE 80                    3681 	.db 0x80
      004BFF E2                    3682 	.db 0xe2
      004C00 94                    3683 	.db 0x94
      004C01 80                    3684 	.db 0x80
      004C02 E2                    3685 	.db 0xe2
      004C03 94                    3686 	.db 0x94
      004C04 80                    3687 	.db 0x80
      004C05 E2                    3688 	.db 0xe2
      004C06 94                    3689 	.db 0x94
      004C07 80                    3690 	.db 0x80
      004C08 E2                    3691 	.db 0xe2
      004C09 94                    3692 	.db 0x94
      004C0A 80                    3693 	.db 0x80
      004C0B E2                    3694 	.db 0xe2
      004C0C 94                    3695 	.db 0x94
      004C0D 80                    3696 	.db 0x80
      004C0E E2                    3697 	.db 0xe2
      004C0F 94                    3698 	.db 0x94
      004C10 80                    3699 	.db 0x80
      004C11 E2                    3700 	.db 0xe2
      004C12 94                    3701 	.db 0x94
      004C13 80                    3702 	.db 0x80
      004C14 E2                    3703 	.db 0xe2
      004C15 94                    3704 	.db 0x94
      004C16 90                    3705 	.db 0x90
      004C17 0A                    3706 	.db 0x0a
      004C18 0D                    3707 	.db 0x0d
      004C19 00                    3708 	.db 0x00
                                   3709 	.area CSEG    (CODE)
                                   3710 	.area CONST   (CODE)
      004C1A                       3711 ___str_16:
      004C1A 7C 20 52 65 61 64 69  3712 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004C43 0A                    3713 	.db 0x0a
      004C44 0D                    3714 	.db 0x0d
      004C45 00                    3715 	.db 0x00
                                   3716 	.area CSEG    (CODE)
                                   3717 	.area CONST   (CODE)
      004C46                       3718 ___str_17:
      004C46 49 4E 56 41 4C 49 44  3719 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004C53 0A                    3720 	.db 0x0a
      004C54 0D                    3721 	.db 0x0d
      004C55 00                    3722 	.db 0x00
                                   3723 	.area CSEG    (CODE)
                                   3724 	.area CONST   (CODE)
      004C56                       3725 ___str_18:
      004C56 E2                    3726 	.db 0xe2
      004C57 94                    3727 	.db 0x94
      004C58 82                    3728 	.db 0x82
      004C59 20 45 6E 74 65 72 20  3729 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004C83 0A                    3730 	.db 0x0a
      004C84 0D                    3731 	.db 0x0d
      004C85 7C                    3732 	.ascii "|"
      004C86 00                    3733 	.db 0x00
                                   3734 	.area CSEG    (CODE)
                                   3735 	.area CONST   (CODE)
      004C87                       3736 ___str_19:
      004C87 7C 20 24 20           3737 	.ascii "| $ "
      004C8B 00                    3738 	.db 0x00
                                   3739 	.area CSEG    (CODE)
                                   3740 	.area CONST   (CODE)
      004C8C                       3741 ___str_20:
      004C8C 0A                    3742 	.db 0x0a
      004C8D 0D                    3743 	.db 0x0d
      004C8E E2                    3744 	.db 0xe2
      004C8F 94                    3745 	.db 0x94
      004C90 82                    3746 	.db 0x82
      004C91 20 45 6E 74 65 72 65  3747 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004CA9 0A                    3748 	.db 0x0a
      004CAA 0D                    3749 	.db 0x0d
      004CAB 00                    3750 	.db 0x00
                                   3751 	.area CSEG    (CODE)
                                   3752 	.area CONST   (CODE)
      004CAC                       3753 ___str_21:
      004CAC E2                    3754 	.db 0xe2
      004CAD 95                    3755 	.db 0x95
      004CAE 94                    3756 	.db 0x94
      004CAF E2                    3757 	.db 0xe2
      004CB0 95                    3758 	.db 0x95
      004CB1 90                    3759 	.db 0x90
      004CB2 E2                    3760 	.db 0xe2
      004CB3 95                    3761 	.db 0x95
      004CB4 90                    3762 	.db 0x90
      004CB5 E2                    3763 	.db 0xe2
      004CB6 95                    3764 	.db 0x95
      004CB7 90                    3765 	.db 0x90
      004CB8 E2                    3766 	.db 0xe2
      004CB9 95                    3767 	.db 0x95
      004CBA 90                    3768 	.db 0x90
      004CBB E2                    3769 	.db 0xe2
      004CBC 95                    3770 	.db 0x95
      004CBD 90                    3771 	.db 0x90
      004CBE E2                    3772 	.db 0xe2
      004CBF 95                    3773 	.db 0x95
      004CC0 90                    3774 	.db 0x90
      004CC1 E2                    3775 	.db 0xe2
      004CC2 95                    3776 	.db 0x95
      004CC3 90                    3777 	.db 0x90
      004CC4 E2                    3778 	.db 0xe2
      004CC5 95                    3779 	.db 0x95
      004CC6 90                    3780 	.db 0x90
      004CC7 E2                    3781 	.db 0xe2
      004CC8 95                    3782 	.db 0x95
      004CC9 90                    3783 	.db 0x90
      004CCA E2                    3784 	.db 0xe2
      004CCB 95                    3785 	.db 0x95
      004CCC 90                    3786 	.db 0x90
      004CCD E2                    3787 	.db 0xe2
      004CCE 95                    3788 	.db 0x95
      004CCF 90                    3789 	.db 0x90
      004CD0 E2                    3790 	.db 0xe2
      004CD1 95                    3791 	.db 0x95
      004CD2 90                    3792 	.db 0x90
      004CD3 E2                    3793 	.db 0xe2
      004CD4 95                    3794 	.db 0x95
      004CD5 90                    3795 	.db 0x90
      004CD6 E2                    3796 	.db 0xe2
      004CD7 95                    3797 	.db 0x95
      004CD8 90                    3798 	.db 0x90
      004CD9 E2                    3799 	.db 0xe2
      004CDA 95                    3800 	.db 0x95
      004CDB 90                    3801 	.db 0x90
      004CDC E2                    3802 	.db 0xe2
      004CDD 95                    3803 	.db 0x95
      004CDE 90                    3804 	.db 0x90
      004CDF E2                    3805 	.db 0xe2
      004CE0 95                    3806 	.db 0x95
      004CE1 90                    3807 	.db 0x90
      004CE2 E2                    3808 	.db 0xe2
      004CE3 95                    3809 	.db 0x95
      004CE4 90                    3810 	.db 0x90
      004CE5 E2                    3811 	.db 0xe2
      004CE6 95                    3812 	.db 0x95
      004CE7 90                    3813 	.db 0x90
      004CE8 E2                    3814 	.db 0xe2
      004CE9 95                    3815 	.db 0x95
      004CEA 90                    3816 	.db 0x90
      004CEB E2                    3817 	.db 0xe2
      004CEC 95                    3818 	.db 0x95
      004CED 90                    3819 	.db 0x90
      004CEE E2                    3820 	.db 0xe2
      004CEF 95                    3821 	.db 0x95
      004CF0 90                    3822 	.db 0x90
      004CF1 E2                    3823 	.db 0xe2
      004CF2 95                    3824 	.db 0x95
      004CF3 90                    3825 	.db 0x90
      004CF4 E2                    3826 	.db 0xe2
      004CF5 95                    3827 	.db 0x95
      004CF6 90                    3828 	.db 0x90
      004CF7 E2                    3829 	.db 0xe2
      004CF8 95                    3830 	.db 0x95
      004CF9 90                    3831 	.db 0x90
      004CFA E2                    3832 	.db 0xe2
      004CFB 95                    3833 	.db 0x95
      004CFC 90                    3834 	.db 0x90
      004CFD E2                    3835 	.db 0xe2
      004CFE 95                    3836 	.db 0x95
      004CFF 90                    3837 	.db 0x90
      004D00 E2                    3838 	.db 0xe2
      004D01 95                    3839 	.db 0x95
      004D02 90                    3840 	.db 0x90
      004D03 E2                    3841 	.db 0xe2
      004D04 95                    3842 	.db 0x95
      004D05 90                    3843 	.db 0x90
      004D06 E2                    3844 	.db 0xe2
      004D07 95                    3845 	.db 0x95
      004D08 90                    3846 	.db 0x90
      004D09 E2                    3847 	.db 0xe2
      004D0A 95                    3848 	.db 0x95
      004D0B 90                    3849 	.db 0x90
      004D0C E2                    3850 	.db 0xe2
      004D0D 95                    3851 	.db 0x95
      004D0E 90                    3852 	.db 0x90
      004D0F E2                    3853 	.db 0xe2
      004D10 95                    3854 	.db 0x95
      004D11 90                    3855 	.db 0x90
      004D12 E2                    3856 	.db 0xe2
      004D13 95                    3857 	.db 0x95
      004D14 90                    3858 	.db 0x90
      004D15 E2                    3859 	.db 0xe2
      004D16 95                    3860 	.db 0x95
      004D17 90                    3861 	.db 0x90
      004D18 E2                    3862 	.db 0xe2
      004D19 95                    3863 	.db 0x95
      004D1A 90                    3864 	.db 0x90
      004D1B E2                    3865 	.db 0xe2
      004D1C 95                    3866 	.db 0x95
      004D1D 90                    3867 	.db 0x90
      004D1E E2                    3868 	.db 0xe2
      004D1F 95                    3869 	.db 0x95
      004D20 90                    3870 	.db 0x90
      004D21 E2                    3871 	.db 0xe2
      004D22 95                    3872 	.db 0x95
      004D23 90                    3873 	.db 0x90
      004D24 E2                    3874 	.db 0xe2
      004D25 95                    3875 	.db 0x95
      004D26 90                    3876 	.db 0x90
      004D27 E2                    3877 	.db 0xe2
      004D28 95                    3878 	.db 0x95
      004D29 90                    3879 	.db 0x90
      004D2A E2                    3880 	.db 0xe2
      004D2B 95                    3881 	.db 0x95
      004D2C 90                    3882 	.db 0x90
      004D2D E2                    3883 	.db 0xe2
      004D2E 95                    3884 	.db 0x95
      004D2F 97                    3885 	.db 0x97
      004D30 0A                    3886 	.db 0x0a
      004D31 0D                    3887 	.db 0x0d
      004D32 00                    3888 	.db 0x00
                                   3889 	.area CSEG    (CODE)
                                   3890 	.area CONST   (CODE)
      004D33                       3891 ___str_22:
      004D33 E2                    3892 	.db 0xe2
      004D34 95                    3893 	.db 0x95
      004D35 91                    3894 	.db 0x91
      004D36 20 20 20 20 20 20 20  3895 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004D5E E2                    3896 	.db 0xe2
      004D5F 95                    3897 	.db 0x95
      004D60 91                    3898 	.db 0x91
      004D61 0A                    3899 	.db 0x0a
      004D62 0D                    3900 	.db 0x0d
      004D63 00                    3901 	.db 0x00
                                   3902 	.area CSEG    (CODE)
                                   3903 	.area CONST   (CODE)
      004D64                       3904 ___str_23:
      004D64 E2                    3905 	.db 0xe2
      004D65 95                    3906 	.db 0x95
      004D66 91                    3907 	.db 0x91
      004D67 20 20 20 20 20 50 6C  3908 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004D8F E2                    3909 	.db 0xe2
      004D90 95                    3910 	.db 0x95
      004D91 91                    3911 	.db 0x91
      004D92 0A                    3912 	.db 0x0a
      004D93 0D                    3913 	.db 0x0d
      004D94 00                    3914 	.db 0x00
                                   3915 	.area CSEG    (CODE)
                                   3916 	.area CONST   (CODE)
      004D95                       3917 ___str_24:
      004D95 E2                    3918 	.db 0xe2
      004D96 95                    3919 	.db 0x95
      004D97 9A                    3920 	.db 0x9a
      004D98 E2                    3921 	.db 0xe2
      004D99 95                    3922 	.db 0x95
      004D9A 90                    3923 	.db 0x90
      004D9B E2                    3924 	.db 0xe2
      004D9C 95                    3925 	.db 0x95
      004D9D 90                    3926 	.db 0x90
      004D9E E2                    3927 	.db 0xe2
      004D9F 95                    3928 	.db 0x95
      004DA0 90                    3929 	.db 0x90
      004DA1 E2                    3930 	.db 0xe2
      004DA2 95                    3931 	.db 0x95
      004DA3 90                    3932 	.db 0x90
      004DA4 E2                    3933 	.db 0xe2
      004DA5 95                    3934 	.db 0x95
      004DA6 90                    3935 	.db 0x90
      004DA7 E2                    3936 	.db 0xe2
      004DA8 95                    3937 	.db 0x95
      004DA9 90                    3938 	.db 0x90
      004DAA E2                    3939 	.db 0xe2
      004DAB 95                    3940 	.db 0x95
      004DAC 90                    3941 	.db 0x90
      004DAD E2                    3942 	.db 0xe2
      004DAE 95                    3943 	.db 0x95
      004DAF 90                    3944 	.db 0x90
      004DB0 E2                    3945 	.db 0xe2
      004DB1 95                    3946 	.db 0x95
      004DB2 90                    3947 	.db 0x90
      004DB3 E2                    3948 	.db 0xe2
      004DB4 95                    3949 	.db 0x95
      004DB5 90                    3950 	.db 0x90
      004DB6 E2                    3951 	.db 0xe2
      004DB7 95                    3952 	.db 0x95
      004DB8 90                    3953 	.db 0x90
      004DB9 E2                    3954 	.db 0xe2
      004DBA 95                    3955 	.db 0x95
      004DBB 90                    3956 	.db 0x90
      004DBC E2                    3957 	.db 0xe2
      004DBD 95                    3958 	.db 0x95
      004DBE 90                    3959 	.db 0x90
      004DBF E2                    3960 	.db 0xe2
      004DC0 95                    3961 	.db 0x95
      004DC1 90                    3962 	.db 0x90
      004DC2 E2                    3963 	.db 0xe2
      004DC3 95                    3964 	.db 0x95
      004DC4 90                    3965 	.db 0x90
      004DC5 E2                    3966 	.db 0xe2
      004DC6 95                    3967 	.db 0x95
      004DC7 90                    3968 	.db 0x90
      004DC8 E2                    3969 	.db 0xe2
      004DC9 95                    3970 	.db 0x95
      004DCA 90                    3971 	.db 0x90
      004DCB E2                    3972 	.db 0xe2
      004DCC 95                    3973 	.db 0x95
      004DCD 90                    3974 	.db 0x90
      004DCE E2                    3975 	.db 0xe2
      004DCF 95                    3976 	.db 0x95
      004DD0 90                    3977 	.db 0x90
      004DD1 E2                    3978 	.db 0xe2
      004DD2 95                    3979 	.db 0x95
      004DD3 90                    3980 	.db 0x90
      004DD4 E2                    3981 	.db 0xe2
      004DD5 95                    3982 	.db 0x95
      004DD6 90                    3983 	.db 0x90
      004DD7 E2                    3984 	.db 0xe2
      004DD8 95                    3985 	.db 0x95
      004DD9 90                    3986 	.db 0x90
      004DDA E2                    3987 	.db 0xe2
      004DDB 95                    3988 	.db 0x95
      004DDC 90                    3989 	.db 0x90
      004DDD E2                    3990 	.db 0xe2
      004DDE 95                    3991 	.db 0x95
      004DDF 90                    3992 	.db 0x90
      004DE0 E2                    3993 	.db 0xe2
      004DE1 95                    3994 	.db 0x95
      004DE2 90                    3995 	.db 0x90
      004DE3 E2                    3996 	.db 0xe2
      004DE4 95                    3997 	.db 0x95
      004DE5 90                    3998 	.db 0x90
      004DE6 E2                    3999 	.db 0xe2
      004DE7 95                    4000 	.db 0x95
      004DE8 90                    4001 	.db 0x90
      004DE9 E2                    4002 	.db 0xe2
      004DEA 95                    4003 	.db 0x95
      004DEB 90                    4004 	.db 0x90
      004DEC E2                    4005 	.db 0xe2
      004DED 95                    4006 	.db 0x95
      004DEE 90                    4007 	.db 0x90
      004DEF E2                    4008 	.db 0xe2
      004DF0 95                    4009 	.db 0x95
      004DF1 90                    4010 	.db 0x90
      004DF2 E2                    4011 	.db 0xe2
      004DF3 95                    4012 	.db 0x95
      004DF4 90                    4013 	.db 0x90
      004DF5 E2                    4014 	.db 0xe2
      004DF6 95                    4015 	.db 0x95
      004DF7 90                    4016 	.db 0x90
      004DF8 E2                    4017 	.db 0xe2
      004DF9 95                    4018 	.db 0x95
      004DFA 90                    4019 	.db 0x90
      004DFB E2                    4020 	.db 0xe2
      004DFC 95                    4021 	.db 0x95
      004DFD 90                    4022 	.db 0x90
      004DFE E2                    4023 	.db 0xe2
      004DFF 95                    4024 	.db 0x95
      004E00 90                    4025 	.db 0x90
      004E01 E2                    4026 	.db 0xe2
      004E02 95                    4027 	.db 0x95
      004E03 90                    4028 	.db 0x90
      004E04 E2                    4029 	.db 0xe2
      004E05 95                    4030 	.db 0x95
      004E06 90                    4031 	.db 0x90
      004E07 E2                    4032 	.db 0xe2
      004E08 95                    4033 	.db 0x95
      004E09 90                    4034 	.db 0x90
      004E0A E2                    4035 	.db 0xe2
      004E0B 95                    4036 	.db 0x95
      004E0C 90                    4037 	.db 0x90
      004E0D E2                    4038 	.db 0xe2
      004E0E 95                    4039 	.db 0x95
      004E0F 90                    4040 	.db 0x90
      004E10 E2                    4041 	.db 0xe2
      004E11 95                    4042 	.db 0x95
      004E12 90                    4043 	.db 0x90
      004E13 E2                    4044 	.db 0xe2
      004E14 95                    4045 	.db 0x95
      004E15 90                    4046 	.db 0x90
      004E16 E2                    4047 	.db 0xe2
      004E17 95                    4048 	.db 0x95
      004E18 9D                    4049 	.db 0x9d
      004E19 0A                    4050 	.db 0x0a
      004E1A 0D                    4051 	.db 0x0d
      004E1B 00                    4052 	.db 0x00
                                   4053 	.area CSEG    (CODE)
                                   4054 	.area CONST   (CODE)
      004E1C                       4055 ___str_25:
      004E1C E2                    4056 	.db 0xe2
      004E1D 94                    4057 	.db 0x94
      004E1E 82                    4058 	.db 0x82
      004E1F 20 45 6E 74 65 72 20  4059 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004E46 0A                    4060 	.db 0x0a
      004E47 0D                    4061 	.db 0x0d
      004E48 7C                    4062 	.ascii "|"
      004E49 00                    4063 	.db 0x00
                                   4064 	.area CSEG    (CODE)
                                   4065 	.area CONST   (CODE)
      004E4A                       4066 ___str_26:
      004E4A 24 20                 4067 	.ascii "$ "
      004E4C 00                    4068 	.db 0x00
                                   4069 	.area CSEG    (CODE)
                                   4070 	.area CONST   (CODE)
      004E4D                       4071 ___str_27:
      004E4D 0A                    4072 	.db 0x0a
      004E4E 0D                    4073 	.db 0x0d
      004E4F E2                    4074 	.db 0xe2
      004E50 94                    4075 	.db 0x94
      004E51 82                    4076 	.db 0x82
      004E52 20 45 6E 74 65 72 65  4077 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004E67 0A                    4078 	.db 0x0a
      004E68 0D                    4079 	.db 0x0d
      004E69 00                    4080 	.db 0x00
                                   4081 	.area CSEG    (CODE)
                                   4082 	.area CONST   (CODE)
      004E6A                       4083 ___str_28:
      004E6A 44 61 74 61 20 6F 75  4084 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004E7B 0A                    4085 	.db 0x0a
      004E7C 0D                    4086 	.db 0x0d
      004E7D 00                    4087 	.db 0x00
                                   4088 	.area CSEG    (CODE)
                                   4089 	.area CONST   (CODE)
      004E7E                       4090 ___str_29:
      004E7E 45 72 72 6F 72 3A 20  4091 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004EA6 0A                    4092 	.db 0x0a
      004EA7 0D                    4093 	.db 0x0d
      004EA8 00                    4094 	.db 0x00
                                   4095 	.area CSEG    (CODE)
                                   4096 	.area CONST   (CODE)
      004EA9                       4097 ___str_30:
      004EA9 45 72 72 6F 72 3A 20  4098 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004EC9 0A                    4099 	.db 0x0a
      004ECA 0D                    4100 	.db 0x0d
      004ECB 00                    4101 	.db 0x00
                                   4102 	.area CSEG    (CODE)
                                   4103 	.area CONST   (CODE)
      004ECC                       4104 ___str_31:
      004ECC 45 72 72 6F 72 3A 20  4105 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004EE2 0A                    4106 	.db 0x0a
      004EE3 0D                    4107 	.db 0x0d
      004EE4 00                    4108 	.db 0x00
                                   4109 	.area CSEG    (CODE)
                                   4110 	.area CONST   (CODE)
      004EE5                       4111 ___str_32:
      004EE5 7C 20 57 72 69 74 69  4112 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004F17 0A                    4113 	.db 0x0a
      004F18 0D                    4114 	.db 0x0d
      004F19 00                    4115 	.db 0x00
                                   4116 	.area CSEG    (CODE)
                                   4117 	.area CONST   (CODE)
      004F1A                       4118 ___str_33:
      004F1A E2                    4119 	.db 0xe2
      004F1B 94                    4120 	.db 0x94
      004F1C 82                    4121 	.db 0x82
      004F1D 20 57 72 69 74 65 20  4122 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004F4C E2                    4123 	.db 0xe2
      004F4D 94                    4124 	.db 0x94
      004F4E 82                    4125 	.db 0x82
      004F4F 0A                    4126 	.db 0x0a
      004F50 0D                    4127 	.db 0x0d
      004F51 00                    4128 	.db 0x00
                                   4129 	.area CSEG    (CODE)
                                   4130 	.area CONST   (CODE)
      004F52                       4131 ___str_34:
      004F52 E2                    4132 	.db 0xe2
      004F53 94                    4133 	.db 0x94
      004F54 94                    4134 	.db 0x94
      004F55 E2                    4135 	.db 0xe2
      004F56 94                    4136 	.db 0x94
      004F57 80                    4137 	.db 0x80
      004F58 E2                    4138 	.db 0xe2
      004F59 94                    4139 	.db 0x94
      004F5A 80                    4140 	.db 0x80
      004F5B E2                    4141 	.db 0xe2
      004F5C 94                    4142 	.db 0x94
      004F5D 80                    4143 	.db 0x80
      004F5E E2                    4144 	.db 0xe2
      004F5F 94                    4145 	.db 0x94
      004F60 80                    4146 	.db 0x80
      004F61 E2                    4147 	.db 0xe2
      004F62 94                    4148 	.db 0x94
      004F63 80                    4149 	.db 0x80
      004F64 E2                    4150 	.db 0xe2
      004F65 94                    4151 	.db 0x94
      004F66 80                    4152 	.db 0x80
      004F67 E2                    4153 	.db 0xe2
      004F68 94                    4154 	.db 0x94
      004F69 80                    4155 	.db 0x80
      004F6A E2                    4156 	.db 0xe2
      004F6B 94                    4157 	.db 0x94
      004F6C 80                    4158 	.db 0x80
      004F6D E2                    4159 	.db 0xe2
      004F6E 94                    4160 	.db 0x94
      004F6F 80                    4161 	.db 0x80
      004F70 E2                    4162 	.db 0xe2
      004F71 94                    4163 	.db 0x94
      004F72 80                    4164 	.db 0x80
      004F73 E2                    4165 	.db 0xe2
      004F74 94                    4166 	.db 0x94
      004F75 80                    4167 	.db 0x80
      004F76 E2                    4168 	.db 0xe2
      004F77 94                    4169 	.db 0x94
      004F78 80                    4170 	.db 0x80
      004F79 E2                    4171 	.db 0xe2
      004F7A 94                    4172 	.db 0x94
      004F7B 80                    4173 	.db 0x80
      004F7C E2                    4174 	.db 0xe2
      004F7D 94                    4175 	.db 0x94
      004F7E 80                    4176 	.db 0x80
      004F7F E2                    4177 	.db 0xe2
      004F80 94                    4178 	.db 0x94
      004F81 80                    4179 	.db 0x80
      004F82 E2                    4180 	.db 0xe2
      004F83 94                    4181 	.db 0x94
      004F84 80                    4182 	.db 0x80
      004F85 E2                    4183 	.db 0xe2
      004F86 94                    4184 	.db 0x94
      004F87 80                    4185 	.db 0x80
      004F88 E2                    4186 	.db 0xe2
      004F89 94                    4187 	.db 0x94
      004F8A 80                    4188 	.db 0x80
      004F8B E2                    4189 	.db 0xe2
      004F8C 94                    4190 	.db 0x94
      004F8D 80                    4191 	.db 0x80
      004F8E E2                    4192 	.db 0xe2
      004F8F 94                    4193 	.db 0x94
      004F90 80                    4194 	.db 0x80
      004F91 E2                    4195 	.db 0xe2
      004F92 94                    4196 	.db 0x94
      004F93 80                    4197 	.db 0x80
      004F94 E2                    4198 	.db 0xe2
      004F95 94                    4199 	.db 0x94
      004F96 80                    4200 	.db 0x80
      004F97 E2                    4201 	.db 0xe2
      004F98 94                    4202 	.db 0x94
      004F99 80                    4203 	.db 0x80
      004F9A E2                    4204 	.db 0xe2
      004F9B 94                    4205 	.db 0x94
      004F9C 80                    4206 	.db 0x80
      004F9D E2                    4207 	.db 0xe2
      004F9E 94                    4208 	.db 0x94
      004F9F 80                    4209 	.db 0x80
      004FA0 E2                    4210 	.db 0xe2
      004FA1 94                    4211 	.db 0x94
      004FA2 80                    4212 	.db 0x80
      004FA3 E2                    4213 	.db 0xe2
      004FA4 94                    4214 	.db 0x94
      004FA5 80                    4215 	.db 0x80
      004FA6 E2                    4216 	.db 0xe2
      004FA7 94                    4217 	.db 0x94
      004FA8 80                    4218 	.db 0x80
      004FA9 E2                    4219 	.db 0xe2
      004FAA 94                    4220 	.db 0x94
      004FAB 80                    4221 	.db 0x80
      004FAC E2                    4222 	.db 0xe2
      004FAD 94                    4223 	.db 0x94
      004FAE 80                    4224 	.db 0x80
      004FAF E2                    4225 	.db 0xe2
      004FB0 94                    4226 	.db 0x94
      004FB1 80                    4227 	.db 0x80
      004FB2 E2                    4228 	.db 0xe2
      004FB3 94                    4229 	.db 0x94
      004FB4 80                    4230 	.db 0x80
      004FB5 E2                    4231 	.db 0xe2
      004FB6 94                    4232 	.db 0x94
      004FB7 80                    4233 	.db 0x80
      004FB8 E2                    4234 	.db 0xe2
      004FB9 94                    4235 	.db 0x94
      004FBA 80                    4236 	.db 0x80
      004FBB E2                    4237 	.db 0xe2
      004FBC 94                    4238 	.db 0x94
      004FBD 80                    4239 	.db 0x80
      004FBE E2                    4240 	.db 0xe2
      004FBF 94                    4241 	.db 0x94
      004FC0 80                    4242 	.db 0x80
      004FC1 E2                    4243 	.db 0xe2
      004FC2 94                    4244 	.db 0x94
      004FC3 80                    4245 	.db 0x80
      004FC4 E2                    4246 	.db 0xe2
      004FC5 94                    4247 	.db 0x94
      004FC6 80                    4248 	.db 0x80
      004FC7 E2                    4249 	.db 0xe2
      004FC8 94                    4250 	.db 0x94
      004FC9 80                    4251 	.db 0x80
      004FCA E2                    4252 	.db 0xe2
      004FCB 94                    4253 	.db 0x94
      004FCC 80                    4254 	.db 0x80
      004FCD E2                    4255 	.db 0xe2
      004FCE 94                    4256 	.db 0x94
      004FCF 80                    4257 	.db 0x80
      004FD0 E2                    4258 	.db 0xe2
      004FD1 94                    4259 	.db 0x94
      004FD2 80                    4260 	.db 0x80
      004FD3 E2                    4261 	.db 0xe2
      004FD4 94                    4262 	.db 0x94
      004FD5 80                    4263 	.db 0x80
      004FD6 E2                    4264 	.db 0xe2
      004FD7 94                    4265 	.db 0x94
      004FD8 80                    4266 	.db 0x80
      004FD9 E2                    4267 	.db 0xe2
      004FDA 94                    4268 	.db 0x94
      004FDB 80                    4269 	.db 0x80
      004FDC E2                    4270 	.db 0xe2
      004FDD 94                    4271 	.db 0x94
      004FDE 80                    4272 	.db 0x80
      004FDF E2                    4273 	.db 0xe2
      004FE0 94                    4274 	.db 0x94
      004FE1 80                    4275 	.db 0x80
      004FE2 E2                    4276 	.db 0xe2
      004FE3 94                    4277 	.db 0x94
      004FE4 98                    4278 	.db 0x98
      004FE5 0A                    4279 	.db 0x0a
      004FE6 0D                    4280 	.db 0x0d
      004FE7 00                    4281 	.db 0x00
                                   4282 	.area CSEG    (CODE)
                                   4283 	.area CONST   (CODE)
      004FE8                       4284 ___str_35:
      004FE8 45 72 72 6F 72 3A 20  4285 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005015 0A                    4286 	.db 0x0a
      005016 0D                    4287 	.db 0x0d
      005017 00                    4288 	.db 0x00
                                   4289 	.area CSEG    (CODE)
                                   4290 	.area CONST   (CODE)
      005018                       4291 ___str_36:
      005018 45 72 72 6F 72 3A 20  4292 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005044 0A                    4293 	.db 0x0a
      005045 0D                    4294 	.db 0x0d
      005046 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      005047                       4298 ___str_37:
      005047 E2                    4299 	.db 0xe2
      005048 94                    4300 	.db 0x94
      005049 82                    4301 	.db 0x82
      00504A 20 52 65 61 64 69 6E  4302 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005086 20                    4303 	.ascii " "
      005087 0A                    4304 	.db 0x0a
      005088 0D                    4305 	.db 0x0d
      005089 00                    4306 	.db 0x00
                                   4307 	.area CSEG    (CODE)
                                   4308 	.area CONST   (CODE)
      00508A                       4309 ___str_38:
      00508A 7C 20 30 78 25 30 33  4310 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      00509C 0A                    4311 	.db 0x0a
      00509D 0D                    4312 	.db 0x0d
      00509E 00                    4313 	.db 0x00
                                   4314 	.area CSEG    (CODE)
                                   4315 	.area CONST   (CODE)
      00509F                       4316 ___str_39:
      00509F E2                    4317 	.db 0xe2
      0050A0 94                    4318 	.db 0x94
      0050A1 82                    4319 	.db 0x82
      0050A2 20 52 65 61 64 20 73  4320 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0050C4 E2                    4321 	.db 0xe2
      0050C5 94                    4322 	.db 0x94
      0050C6 82                    4323 	.db 0x82
      0050C7 0A                    4324 	.db 0x0a
      0050C8 0D                    4325 	.db 0x0d
      0050C9 00                    4326 	.db 0x00
                                   4327 	.area CSEG    (CODE)
                                   4328 	.area CONST   (CODE)
      0050CA                       4329 ___str_40:
      0050CA 41 43 4B 20 44 49 44  4330 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0050DC 0A                    4331 	.db 0x0a
      0050DD 0D                    4332 	.db 0x0d
      0050DE 00                    4333 	.db 0x00
                                   4334 	.area CSEG    (CODE)
                                   4335 	.area CONST   (CODE)
      0050DF                       4336 ___str_41:
      0050DF 57 72 69 74 69 6E 67  4337 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005104 0A                    4338 	.db 0x0a
      005105 0D                    4339 	.db 0x0d
      005106 00                    4340 	.db 0x00
                                   4341 	.area CSEG    (CODE)
                                   4342 	.area CONST   (CODE)
      005107                       4343 ___str_42:
      005107 52 65 61 64 20 62 61  4344 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00512C 0A                    4345 	.db 0x0a
      00512D 0D                    4346 	.db 0x0d
      00512E 00                    4347 	.db 0x00
                                   4348 	.area CSEG    (CODE)
                                   4349 	.area CONST   (CODE)
      00512F                       4350 ___str_43:
      00512F 4D 41 54 43 48 20 2D  4351 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      00514D 0A                    4352 	.db 0x0a
      00514E 0D                    4353 	.db 0x0d
      00514F 00                    4354 	.db 0x00
                                   4355 	.area CSEG    (CODE)
                                   4356 	.area CONST   (CODE)
      005150                       4357 ___str_44:
      005150 45 52 52 4F 52 20 2D  4358 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005166 0A                    4359 	.db 0x0a
      005167 0D                    4360 	.db 0x0d
      005168 00                    4361 	.db 0x00
                                   4362 	.area CSEG    (CODE)
                                   4363 	.area XINIT   (CODE)
      005174                       4364 __xinit__address_range_flag:
      005174 01 00                 4365 	.byte #0x01, #0x00	;  1
      005176                       4366 __xinit__data_range_flag:
      005176 01 00                 4367 	.byte #0x01, #0x00	;  1
      005178                       4368 __xinit__block:
      005178 00 00                 4369 	.byte #0x00, #0x00	; 0
                                   4370 	.area CABS    (ABS,CODE)
